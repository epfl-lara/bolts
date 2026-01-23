; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362912 () Bool)

(assert start!362912)

(declare-fun b!3868493 () Bool)

(declare-fun b_free!104365 () Bool)

(declare-fun b_next!105069 () Bool)

(assert (=> b!3868493 (= b_free!104365 (not b_next!105069))))

(declare-fun tp!1172963 () Bool)

(declare-fun b_and!289875 () Bool)

(assert (=> b!3868493 (= tp!1172963 b_and!289875)))

(declare-fun b_free!104367 () Bool)

(declare-fun b_next!105071 () Bool)

(assert (=> b!3868493 (= b_free!104367 (not b_next!105071))))

(declare-fun tp!1172970 () Bool)

(declare-fun b_and!289877 () Bool)

(assert (=> b!3868493 (= tp!1172970 b_and!289877)))

(declare-fun b!3868457 () Bool)

(declare-fun b_free!104369 () Bool)

(declare-fun b_next!105073 () Bool)

(assert (=> b!3868457 (= b_free!104369 (not b_next!105073))))

(declare-fun tp!1172969 () Bool)

(declare-fun b_and!289879 () Bool)

(assert (=> b!3868457 (= tp!1172969 b_and!289879)))

(declare-fun b_free!104371 () Bool)

(declare-fun b_next!105075 () Bool)

(assert (=> b!3868457 (= b_free!104371 (not b_next!105075))))

(declare-fun tp!1172964 () Bool)

(declare-fun b_and!289881 () Bool)

(assert (=> b!3868457 (= tp!1172964 b_and!289881)))

(declare-fun b!3868461 () Bool)

(declare-fun b_free!104373 () Bool)

(declare-fun b_next!105077 () Bool)

(assert (=> b!3868461 (= b_free!104373 (not b_next!105077))))

(declare-fun tp!1172968 () Bool)

(declare-fun b_and!289883 () Bool)

(assert (=> b!3868461 (= tp!1172968 b_and!289883)))

(declare-fun b_free!104375 () Bool)

(declare-fun b_next!105079 () Bool)

(assert (=> b!3868461 (= b_free!104375 (not b_next!105079))))

(declare-fun tp!1172974 () Bool)

(declare-fun b_and!289885 () Bool)

(assert (=> b!3868461 (= tp!1172974 b_and!289885)))

(declare-fun e!2392520 () Bool)

(declare-fun e!2392490 () Bool)

(declare-fun b!3868451 () Bool)

(declare-datatypes ((List!41208 0))(
  ( (Nil!41084) (Cons!41084 (h!46504 (_ BitVec 16)) (t!314179 List!41208)) )
))
(declare-datatypes ((TokenValue!6600 0))(
  ( (FloatLiteralValue!13200 (text!46645 List!41208)) (TokenValueExt!6599 (__x!25417 Int)) (Broken!33000 (value!202153 List!41208)) (Object!6723) (End!6600) (Def!6600) (Underscore!6600) (Match!6600) (Else!6600) (Error!6600) (Case!6600) (If!6600) (Extends!6600) (Abstract!6600) (Class!6600) (Val!6600) (DelimiterValue!13200 (del!6660 List!41208)) (KeywordValue!6606 (value!202154 List!41208)) (CommentValue!13200 (value!202155 List!41208)) (WhitespaceValue!13200 (value!202156 List!41208)) (IndentationValue!6600 (value!202157 List!41208)) (String!46717) (Int32!6600) (Broken!33001 (value!202158 List!41208)) (Boolean!6601) (Unit!58862) (OperatorValue!6603 (op!6660 List!41208)) (IdentifierValue!13200 (value!202159 List!41208)) (IdentifierValue!13201 (value!202160 List!41208)) (WhitespaceValue!13201 (value!202161 List!41208)) (True!13200) (False!13200) (Broken!33002 (value!202162 List!41208)) (Broken!33003 (value!202163 List!41208)) (True!13201) (RightBrace!6600) (RightBracket!6600) (Colon!6600) (Null!6600) (Comma!6600) (LeftBracket!6600) (False!13201) (LeftBrace!6600) (ImaginaryLiteralValue!6600 (text!46646 List!41208)) (StringLiteralValue!19800 (value!202164 List!41208)) (EOFValue!6600 (value!202165 List!41208)) (IdentValue!6600 (value!202166 List!41208)) (DelimiterValue!13201 (value!202167 List!41208)) (DedentValue!6600 (value!202168 List!41208)) (NewLineValue!6600 (value!202169 List!41208)) (IntegerValue!19800 (value!202170 (_ BitVec 32)) (text!46647 List!41208)) (IntegerValue!19801 (value!202171 Int) (text!46648 List!41208)) (Times!6600) (Or!6600) (Equal!6600) (Minus!6600) (Broken!33004 (value!202172 List!41208)) (And!6600) (Div!6600) (LessEqual!6600) (Mod!6600) (Concat!17875) (Not!6600) (Plus!6600) (SpaceValue!6600 (value!202173 List!41208)) (IntegerValue!19802 (value!202174 Int) (text!46649 List!41208)) (StringLiteralValue!19801 (text!46650 List!41208)) (FloatLiteralValue!13201 (text!46651 List!41208)) (BytesLiteralValue!6600 (value!202175 List!41208)) (CommentValue!13201 (value!202176 List!41208)) (StringLiteralValue!19802 (value!202177 List!41208)) (ErrorTokenValue!6600 (msg!6661 List!41208)) )
))
(declare-datatypes ((C!22736 0))(
  ( (C!22737 (val!13462 Int)) )
))
(declare-datatypes ((Regex!11275 0))(
  ( (ElementMatch!11275 (c!673228 C!22736)) (Concat!17876 (regOne!23062 Regex!11275) (regTwo!23062 Regex!11275)) (EmptyExpr!11275) (Star!11275 (reg!11604 Regex!11275)) (EmptyLang!11275) (Union!11275 (regOne!23063 Regex!11275) (regTwo!23063 Regex!11275)) )
))
(declare-datatypes ((String!46718 0))(
  ( (String!46719 (value!202178 String)) )
))
(declare-datatypes ((List!41209 0))(
  ( (Nil!41085) (Cons!41085 (h!46505 C!22736) (t!314180 List!41209)) )
))
(declare-datatypes ((IArray!25167 0))(
  ( (IArray!25168 (innerList!12641 List!41209)) )
))
(declare-datatypes ((Conc!12581 0))(
  ( (Node!12581 (left!31584 Conc!12581) (right!31914 Conc!12581) (csize!25392 Int) (cheight!12792 Int)) (Leaf!19473 (xs!15887 IArray!25167) (csize!25393 Int)) (Empty!12581) )
))
(declare-datatypes ((BalanceConc!24756 0))(
  ( (BalanceConc!24757 (c!673229 Conc!12581)) )
))
(declare-datatypes ((TokenValueInjection!12628 0))(
  ( (TokenValueInjection!12629 (toValue!8798 Int) (toChars!8657 Int)) )
))
(declare-datatypes ((Rule!12540 0))(
  ( (Rule!12541 (regex!6370 Regex!11275) (tag!7230 String!46718) (isSeparator!6370 Bool) (transformation!6370 TokenValueInjection!12628)) )
))
(declare-datatypes ((Token!11878 0))(
  ( (Token!11879 (value!202179 TokenValue!6600) (rule!9252 Rule!12540) (size!30881 Int) (originalCharacters!6970 List!41209)) )
))
(declare-datatypes ((List!41210 0))(
  ( (Nil!41086) (Cons!41086 (h!46506 Token!11878) (t!314181 List!41210)) )
))
(declare-fun suffixTokens!72 () List!41210)

(declare-fun tp!1172966 () Bool)

(declare-fun inv!21 (TokenValue!6600) Bool)

(assert (=> b!3868451 (= e!2392490 (and (inv!21 (value!202179 (h!46506 suffixTokens!72))) e!2392520 tp!1172966))))

(declare-fun b!3868452 () Bool)

(declare-fun e!2392508 () Bool)

(declare-fun tp_is_empty!19521 () Bool)

(declare-fun tp!1172961 () Bool)

(assert (=> b!3868452 (= e!2392508 (and tp_is_empty!19521 tp!1172961))))

(declare-fun b!3868454 () Bool)

(declare-fun e!2392506 () Bool)

(declare-fun e!2392491 () Bool)

(assert (=> b!3868454 (= e!2392506 e!2392491)))

(declare-fun res!1566782 () Bool)

(assert (=> b!3868454 (=> (not res!1566782) (not e!2392491))))

(declare-datatypes ((tuple2!40302 0))(
  ( (tuple2!40303 (_1!23285 Token!11878) (_2!23285 List!41209)) )
))
(declare-datatypes ((Option!8788 0))(
  ( (None!8787) (Some!8787 (v!39085 tuple2!40302)) )
))
(declare-fun lt!1345915 () Option!8788)

(get-info :version)

(assert (=> b!3868454 (= res!1566782 ((_ is Some!8787) lt!1345915))))

(declare-datatypes ((LexerInterface!5959 0))(
  ( (LexerInterfaceExt!5956 (__x!25418 Int)) (Lexer!5957) )
))
(declare-fun thiss!20629 () LexerInterface!5959)

(declare-datatypes ((List!41211 0))(
  ( (Nil!41087) (Cons!41087 (h!46507 Rule!12540) (t!314182 List!41211)) )
))
(declare-fun rules!2768 () List!41211)

(declare-fun lt!1345942 () List!41209)

(declare-fun maxPrefix!3263 (LexerInterface!5959 List!41211 List!41209) Option!8788)

(assert (=> b!3868454 (= lt!1345915 (maxPrefix!3263 thiss!20629 rules!2768 lt!1345942))))

(declare-fun tp!1172973 () Bool)

(declare-fun b!3868455 () Bool)

(declare-fun e!2392497 () Bool)

(declare-fun inv!55240 (String!46718) Bool)

(declare-fun inv!55243 (TokenValueInjection!12628) Bool)

(assert (=> b!3868455 (= e!2392520 (and tp!1172973 (inv!55240 (tag!7230 (rule!9252 (h!46506 suffixTokens!72)))) (inv!55243 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) e!2392497))))

(declare-fun b!3868456 () Bool)

(declare-fun e!2392500 () Bool)

(assert (=> b!3868456 (= e!2392491 (not e!2392500))))

(declare-fun res!1566777 () Bool)

(assert (=> b!3868456 (=> res!1566777 e!2392500)))

(declare-fun lt!1345921 () List!41209)

(assert (=> b!3868456 (= res!1566777 (not (= lt!1345921 lt!1345942)))))

(declare-datatypes ((tuple2!40304 0))(
  ( (tuple2!40305 (_1!23286 List!41210) (_2!23286 List!41209)) )
))
(declare-fun lt!1345913 () tuple2!40304)

(declare-fun lexList!1727 (LexerInterface!5959 List!41211 List!41209) tuple2!40304)

(assert (=> b!3868456 (= lt!1345913 (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun lt!1345941 () List!41209)

(declare-fun lt!1345949 () TokenValue!6600)

(declare-fun lt!1345911 () Int)

(declare-fun lt!1345938 () List!41209)

(assert (=> b!3868456 (and (= (size!30881 (_1!23285 (v!39085 lt!1345915))) lt!1345911) (= (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915))) lt!1345938) (= (v!39085 lt!1345915) (tuple2!40303 (Token!11879 lt!1345949 (rule!9252 (_1!23285 (v!39085 lt!1345915))) lt!1345911 lt!1345938) lt!1345941)))))

(declare-fun size!30882 (List!41209) Int)

(assert (=> b!3868456 (= lt!1345911 (size!30882 lt!1345938))))

(declare-fun e!2392509 () Bool)

(assert (=> b!3868456 e!2392509))

(declare-fun res!1566770 () Bool)

(assert (=> b!3868456 (=> (not res!1566770) (not e!2392509))))

(assert (=> b!3868456 (= res!1566770 (= (value!202179 (_1!23285 (v!39085 lt!1345915))) lt!1345949))))

(declare-fun apply!9613 (TokenValueInjection!12628 BalanceConc!24756) TokenValue!6600)

(declare-fun seqFromList!4641 (List!41209) BalanceConc!24756)

(assert (=> b!3868456 (= lt!1345949 (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (seqFromList!4641 lt!1345938)))))

(assert (=> b!3868456 (= (_2!23285 (v!39085 lt!1345915)) lt!1345941)))

(declare-datatypes ((Unit!58863 0))(
  ( (Unit!58864) )
))
(declare-fun lt!1345916 () Unit!58863)

(declare-fun lemmaSamePrefixThenSameSuffix!1690 (List!41209 List!41209 List!41209 List!41209 List!41209) Unit!58863)

(assert (=> b!3868456 (= lt!1345916 (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345941 lt!1345942))))

(declare-fun getSuffix!1924 (List!41209 List!41209) List!41209)

(assert (=> b!3868456 (= lt!1345941 (getSuffix!1924 lt!1345942 lt!1345938))))

(declare-fun isPrefix!3469 (List!41209 List!41209) Bool)

(assert (=> b!3868456 (isPrefix!3469 lt!1345938 lt!1345921)))

(declare-fun ++!10497 (List!41209 List!41209) List!41209)

(assert (=> b!3868456 (= lt!1345921 (++!10497 lt!1345938 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun lt!1345919 () Unit!58863)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2332 (List!41209 List!41209) Unit!58863)

(assert (=> b!3868456 (= lt!1345919 (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345938 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun list!15284 (BalanceConc!24756) List!41209)

(declare-fun charsOf!4198 (Token!11878) BalanceConc!24756)

(assert (=> b!3868456 (= lt!1345938 (list!15284 (charsOf!4198 (_1!23285 (v!39085 lt!1345915)))))))

(declare-fun ruleValid!2322 (LexerInterface!5959 Rule!12540) Bool)

(assert (=> b!3868456 (ruleValid!2322 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))))))

(declare-fun lt!1345943 () Unit!58863)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1402 (LexerInterface!5959 Rule!12540 List!41211) Unit!58863)

(assert (=> b!3868456 (= lt!1345943 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1402 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) rules!2768))))

(declare-fun lt!1345935 () Unit!58863)

(declare-fun lemmaCharactersSize!1031 (Token!11878) Unit!58863)

(assert (=> b!3868456 (= lt!1345935 (lemmaCharactersSize!1031 (_1!23285 (v!39085 lt!1345915))))))

(declare-fun e!2392485 () Bool)

(assert (=> b!3868457 (= e!2392485 (and tp!1172969 tp!1172964))))

(declare-fun b!3868458 () Bool)

(declare-fun e!2392501 () Bool)

(declare-fun e!2392511 () Bool)

(declare-fun tp!1172960 () Bool)

(assert (=> b!3868458 (= e!2392501 (and e!2392511 tp!1172960))))

(declare-fun b!3868459 () Bool)

(declare-fun e!2392512 () Bool)

(declare-fun e!2392519 () Bool)

(assert (=> b!3868459 (= e!2392512 e!2392519)))

(declare-fun res!1566769 () Bool)

(assert (=> b!3868459 (=> (not res!1566769) (not e!2392519))))

(declare-fun lt!1345940 () List!41210)

(declare-fun suffixResult!91 () List!41209)

(declare-fun lt!1345939 () tuple2!40304)

(assert (=> b!3868459 (= res!1566769 (= lt!1345939 (tuple2!40305 lt!1345940 suffixResult!91)))))

(assert (=> b!3868459 (= lt!1345939 (lexList!1727 thiss!20629 rules!2768 lt!1345942))))

(declare-fun prefixTokens!80 () List!41210)

(declare-fun ++!10498 (List!41210 List!41210) List!41210)

(assert (=> b!3868459 (= lt!1345940 (++!10498 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41209)

(declare-fun suffix!1176 () List!41209)

(assert (=> b!3868459 (= lt!1345942 (++!10497 prefix!426 suffix!1176))))

(declare-fun b!3868460 () Bool)

(declare-fun e!2392488 () Unit!58863)

(declare-fun Unit!58865 () Unit!58863)

(assert (=> b!3868460 (= e!2392488 Unit!58865)))

(declare-fun lt!1345920 () tuple2!40302)

(declare-fun lt!1345917 () Unit!58863)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!454 (List!41209 List!41209 List!41209 List!41209) Unit!58863)

(assert (=> b!3868460 (= lt!1345917 (lemmaConcatSameAndSameSizesThenSameLists!454 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 (_2!23285 lt!1345920)))))

(assert (=> b!3868460 (= (_2!23285 (v!39085 lt!1345915)) (_2!23285 lt!1345920))))

(declare-fun lt!1345923 () Unit!58863)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!30 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41210 List!41209) Unit!58863)

(assert (=> b!3868460 (= lt!1345923 (lemmaLexWithSmallerInputCannotProduceSameResults!30 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91))))

(declare-fun res!1566763 () Bool)

(declare-fun call!282690 () tuple2!40304)

(declare-fun lt!1345948 () tuple2!40304)

(assert (=> b!3868460 (= res!1566763 (not (= call!282690 lt!1345948)))))

(declare-fun e!2392503 () Bool)

(assert (=> b!3868460 (=> (not res!1566763) (not e!2392503))))

(assert (=> b!3868460 e!2392503))

(declare-fun e!2392518 () Bool)

(assert (=> b!3868461 (= e!2392518 (and tp!1172968 tp!1172974))))

(declare-fun b!3868462 () Bool)

(declare-fun e!2392489 () Bool)

(declare-fun tp!1172971 () Bool)

(assert (=> b!3868462 (= e!2392489 (and tp_is_empty!19521 tp!1172971))))

(declare-fun e!2392507 () Bool)

(declare-fun tp!1172962 () Bool)

(declare-fun b!3868463 () Bool)

(assert (=> b!3868463 (= e!2392507 (and tp!1172962 (inv!55240 (tag!7230 (rule!9252 (h!46506 prefixTokens!80)))) (inv!55243 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) e!2392485))))

(declare-fun b!3868464 () Bool)

(declare-fun res!1566772 () Bool)

(assert (=> b!3868464 (=> res!1566772 e!2392500)))

(assert (=> b!3868464 (= res!1566772 (not (= lt!1345939 (tuple2!40305 (++!10498 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086) (_1!23286 lt!1345913)) (_2!23286 lt!1345913)))))))

(declare-fun b!3868465 () Bool)

(declare-fun e!2392502 () Unit!58863)

(declare-fun Unit!58866 () Unit!58863)

(assert (=> b!3868465 (= e!2392502 Unit!58866)))

(declare-fun tp!1172965 () Bool)

(declare-fun b!3868466 () Bool)

(declare-fun e!2392493 () Bool)

(declare-fun inv!55244 (Token!11878) Bool)

(assert (=> b!3868466 (= e!2392493 (and (inv!55244 (h!46506 suffixTokens!72)) e!2392490 tp!1172965))))

(declare-fun b!3868467 () Bool)

(declare-fun e!2392522 () Bool)

(declare-fun tp!1172975 () Bool)

(assert (=> b!3868467 (= e!2392522 (and tp_is_empty!19521 tp!1172975))))

(declare-fun b!3868468 () Bool)

(declare-fun res!1566781 () Bool)

(assert (=> b!3868468 (=> (not res!1566781) (not e!2392512))))

(declare-fun isEmpty!24366 (List!41210) Bool)

(assert (=> b!3868468 (= res!1566781 (not (isEmpty!24366 prefixTokens!80)))))

(declare-fun b!3868469 () Bool)

(declare-fun c!673225 () Bool)

(declare-fun lt!1345934 () List!41210)

(assert (=> b!3868469 (= c!673225 (isEmpty!24366 lt!1345934))))

(declare-fun tail!5899 (List!41210) List!41210)

(assert (=> b!3868469 (= lt!1345934 (tail!5899 prefixTokens!80))))

(declare-fun e!2392516 () Unit!58863)

(assert (=> b!3868469 (= e!2392516 e!2392488)))

(declare-fun b!3868470 () Bool)

(declare-fun Unit!58867 () Unit!58863)

(assert (=> b!3868470 (= e!2392516 Unit!58867)))

(declare-fun b!3868471 () Bool)

(declare-fun e!2392514 () Bool)

(assert (=> b!3868471 (= e!2392514 false)))

(declare-fun b!3868472 () Bool)

(assert (=> b!3868472 (= e!2392503 false)))

(declare-fun b!3868473 () Bool)

(declare-fun e!2392504 () Unit!58863)

(declare-fun Unit!58868 () Unit!58863)

(assert (=> b!3868473 (= e!2392504 Unit!58868)))

(declare-fun b!3868474 () Bool)

(declare-fun res!1566776 () Bool)

(assert (=> b!3868474 (=> (not res!1566776) (not e!2392512))))

(declare-fun rulesInvariant!5302 (LexerInterface!5959 List!41211) Bool)

(assert (=> b!3868474 (= res!1566776 (rulesInvariant!5302 thiss!20629 rules!2768))))

(declare-fun b!3868475 () Bool)

(declare-fun e!2392517 () Bool)

(declare-fun e!2392494 () Bool)

(assert (=> b!3868475 (= e!2392517 e!2392494)))

(declare-fun res!1566761 () Bool)

(assert (=> b!3868475 (=> res!1566761 e!2392494)))

(declare-fun lt!1345946 () List!41209)

(assert (=> b!3868475 (= res!1566761 (or (not (= lt!1345946 lt!1345942)) (not (= lt!1345946 lt!1345921))))))

(declare-fun lt!1345929 () List!41209)

(assert (=> b!3868475 (= lt!1345946 (++!10497 lt!1345929 suffix!1176))))

(declare-fun res!1566773 () Bool)

(assert (=> start!362912 (=> (not res!1566773) (not e!2392512))))

(assert (=> start!362912 (= res!1566773 ((_ is Lexer!5957) thiss!20629))))

(assert (=> start!362912 e!2392512))

(assert (=> start!362912 e!2392508))

(assert (=> start!362912 true))

(assert (=> start!362912 e!2392522))

(assert (=> start!362912 e!2392501))

(declare-fun e!2392487 () Bool)

(assert (=> start!362912 e!2392487))

(assert (=> start!362912 e!2392493))

(assert (=> start!362912 e!2392489))

(declare-fun b!3868453 () Bool)

(declare-fun Unit!58869 () Unit!58863)

(assert (=> b!3868453 (= e!2392504 Unit!58869)))

(declare-fun lt!1345914 () Unit!58863)

(assert (=> b!3868453 (= lt!1345914 (lemmaConcatTwoListThenFirstIsPrefix!2332 prefix!426 suffix!1176))))

(assert (=> b!3868453 (isPrefix!3469 prefix!426 lt!1345942)))

(declare-fun lt!1345925 () Unit!58863)

(declare-fun lemmaIsPrefixSameLengthThenSameList!721 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> b!3868453 (= lt!1345925 (lemmaIsPrefixSameLengthThenSameList!721 lt!1345938 prefix!426 lt!1345942))))

(assert (=> b!3868453 (= lt!1345938 prefix!426)))

(declare-fun lt!1345931 () Unit!58863)

(assert (=> b!3868453 (= lt!1345931 (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) prefix!426 suffix!1176 lt!1345942))))

(assert (=> b!3868453 false))

(declare-fun b!3868476 () Bool)

(declare-fun e!2392510 () Bool)

(declare-fun e!2392496 () Bool)

(assert (=> b!3868476 (= e!2392510 e!2392496)))

(declare-fun res!1566778 () Bool)

(assert (=> b!3868476 (=> res!1566778 e!2392496)))

(declare-fun lt!1345945 () List!41209)

(assert (=> b!3868476 (= res!1566778 (not (= lt!1345945 (_2!23285 (v!39085 lt!1345915)))))))

(assert (=> b!3868476 (= (_2!23285 (v!39085 lt!1345915)) lt!1345945)))

(declare-fun lt!1345912 () Unit!58863)

(assert (=> b!3868476 (= lt!1345912 (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345945 lt!1345942))))

(declare-fun lt!1345924 () List!41209)

(assert (=> b!3868476 (isPrefix!3469 lt!1345938 lt!1345924)))

(declare-fun lt!1345926 () Unit!58863)

(assert (=> b!3868476 (= lt!1345926 (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345938 lt!1345945))))

(declare-fun b!3868477 () Bool)

(assert (=> b!3868477 (= e!2392494 e!2392510)))

(declare-fun res!1566771 () Bool)

(assert (=> b!3868477 (=> res!1566771 e!2392510)))

(assert (=> b!3868477 (= res!1566771 (or (not (= lt!1345942 lt!1345946)) (not (= lt!1345942 lt!1345924)) (not (= lt!1345921 lt!1345924))))))

(assert (=> b!3868477 (= lt!1345946 lt!1345924)))

(assert (=> b!3868477 (= lt!1345924 (++!10497 lt!1345938 lt!1345945))))

(declare-fun lt!1345930 () List!41209)

(assert (=> b!3868477 (= lt!1345945 (++!10497 lt!1345930 suffix!1176))))

(declare-fun lt!1345922 () Unit!58863)

(declare-fun lemmaConcatAssociativity!2216 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> b!3868477 (= lt!1345922 (lemmaConcatAssociativity!2216 lt!1345938 lt!1345930 suffix!1176))))

(declare-fun b!3868478 () Bool)

(declare-fun tp!1172967 () Bool)

(declare-fun e!2392505 () Bool)

(assert (=> b!3868478 (= e!2392505 (and (inv!21 (value!202179 (h!46506 prefixTokens!80))) e!2392507 tp!1172967))))

(declare-fun b!3868479 () Bool)

(declare-fun e!2392492 () Bool)

(assert (=> b!3868479 (= e!2392492 e!2392517)))

(declare-fun res!1566764 () Bool)

(assert (=> b!3868479 (=> res!1566764 e!2392517)))

(assert (=> b!3868479 (= res!1566764 (not (= lt!1345929 prefix!426)))))

(assert (=> b!3868479 (= lt!1345929 (++!10497 lt!1345938 lt!1345930))))

(assert (=> b!3868479 (= lt!1345930 (getSuffix!1924 prefix!426 lt!1345938))))

(declare-fun b!3868480 () Bool)

(declare-fun res!1566768 () Bool)

(assert (=> b!3868480 (=> (not res!1566768) (not e!2392512))))

(declare-fun isEmpty!24367 (List!41211) Bool)

(assert (=> b!3868480 (= res!1566768 (not (isEmpty!24367 rules!2768)))))

(declare-fun b!3868481 () Bool)

(assert (=> b!3868481 (= e!2392519 e!2392506)))

(declare-fun res!1566767 () Bool)

(assert (=> b!3868481 (=> (not res!1566767) (not e!2392506))))

(assert (=> b!3868481 (= res!1566767 (= (lexList!1727 thiss!20629 rules!2768 suffix!1176) lt!1345948))))

(assert (=> b!3868481 (= lt!1345948 (tuple2!40305 suffixTokens!72 suffixResult!91))))

(declare-fun b!3868482 () Bool)

(declare-fun e!2392499 () Bool)

(assert (=> b!3868482 (= e!2392500 e!2392499)))

(declare-fun res!1566762 () Bool)

(assert (=> b!3868482 (=> res!1566762 e!2392499)))

(declare-fun lt!1345928 () Int)

(declare-fun lt!1345936 () Int)

(assert (=> b!3868482 (= res!1566762 (<= lt!1345928 lt!1345936))))

(declare-fun lt!1345909 () Unit!58863)

(assert (=> b!3868482 (= lt!1345909 e!2392504)))

(declare-fun c!673227 () Bool)

(assert (=> b!3868482 (= c!673227 (= lt!1345928 lt!1345936))))

(declare-fun lt!1345910 () Unit!58863)

(assert (=> b!3868482 (= lt!1345910 e!2392502)))

(declare-fun c!673224 () Bool)

(assert (=> b!3868482 (= c!673224 (< lt!1345928 lt!1345936))))

(assert (=> b!3868482 (= lt!1345936 (size!30882 suffix!1176))))

(assert (=> b!3868482 (= lt!1345928 (size!30882 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun b!3868483 () Bool)

(assert (=> b!3868483 (= e!2392509 (= (size!30881 (_1!23285 (v!39085 lt!1345915))) (size!30882 (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915))))))))

(declare-fun b!3868484 () Bool)

(declare-fun e!2392515 () Bool)

(assert (=> b!3868484 (= e!2392496 e!2392515)))

(declare-fun res!1566765 () Bool)

(assert (=> b!3868484 (=> res!1566765 e!2392515)))

(assert (=> b!3868484 (= res!1566765 (not (= lt!1345913 (tuple2!40305 (++!10498 (tail!5899 prefixTokens!80) suffixTokens!72) suffixResult!91))))))

(assert (=> b!3868484 (isPrefix!3469 lt!1345930 lt!1345945)))

(declare-fun lt!1345932 () Unit!58863)

(assert (=> b!3868484 (= lt!1345932 (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345930 suffix!1176))))

(declare-fun b!3868485 () Bool)

(assert (=> b!3868485 (= e!2392499 e!2392492)))

(declare-fun res!1566780 () Bool)

(assert (=> b!3868485 (=> res!1566780 e!2392492)))

(assert (=> b!3868485 (= res!1566780 (>= lt!1345911 (size!30882 prefix!426)))))

(assert (=> b!3868485 (isPrefix!3469 lt!1345938 prefix!426)))

(declare-fun lt!1345937 () Unit!58863)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!219 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> b!3868485 (= lt!1345937 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!219 prefix!426 lt!1345938 lt!1345942))))

(assert (=> b!3868485 (isPrefix!3469 prefix!426 lt!1345942)))

(declare-fun lt!1345927 () Unit!58863)

(assert (=> b!3868485 (= lt!1345927 (lemmaConcatTwoListThenFirstIsPrefix!2332 prefix!426 suffix!1176))))

(declare-fun b!3868486 () Bool)

(assert (=> b!3868486 (= e!2392515 (not (= prefixTokens!80 Nil!41086)))))

(declare-fun b!3868487 () Bool)

(declare-fun Unit!58870 () Unit!58863)

(assert (=> b!3868487 (= e!2392502 Unit!58870)))

(declare-fun lt!1345933 () Int)

(assert (=> b!3868487 (= lt!1345933 (size!30882 lt!1345942))))

(declare-fun lt!1345944 () Unit!58863)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1243 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41209 Rule!12540) Unit!58863)

(assert (=> b!3868487 (= lt!1345944 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1243 thiss!20629 rules!2768 lt!1345938 lt!1345942 (_2!23285 (v!39085 lt!1345915)) (rule!9252 (_1!23285 (v!39085 lt!1345915)))))))

(declare-fun maxPrefixOneRule!2345 (LexerInterface!5959 Rule!12540 List!41209) Option!8788)

(assert (=> b!3868487 (= (maxPrefixOneRule!2345 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) lt!1345942) (Some!8787 (tuple2!40303 (Token!11879 lt!1345949 (rule!9252 (_1!23285 (v!39085 lt!1345915))) lt!1345911 lt!1345938) (_2!23285 (v!39085 lt!1345915)))))))

(declare-fun get!13595 (Option!8788) tuple2!40302)

(assert (=> b!3868487 (= lt!1345920 (get!13595 lt!1345915))))

(declare-fun c!673226 () Bool)

(assert (=> b!3868487 (= c!673226 (< (size!30882 (_2!23285 lt!1345920)) lt!1345936))))

(declare-fun lt!1345918 () Unit!58863)

(assert (=> b!3868487 (= lt!1345918 e!2392516)))

(assert (=> b!3868487 false))

(declare-fun bm!282685 () Bool)

(assert (=> bm!282685 (= call!282690 (lexList!1727 thiss!20629 rules!2768 (_2!23285 lt!1345920)))))

(declare-fun b!3868488 () Bool)

(declare-fun res!1566774 () Bool)

(assert (=> b!3868488 (=> res!1566774 e!2392499)))

(declare-fun head!8182 (List!41210) Token!11878)

(assert (=> b!3868488 (= res!1566774 (not (= (head!8182 prefixTokens!80) (_1!23285 (v!39085 lt!1345915)))))))

(declare-fun b!3868489 () Bool)

(declare-fun res!1566775 () Bool)

(assert (=> b!3868489 (=> res!1566775 e!2392500)))

(assert (=> b!3868489 (= res!1566775 (or (not (= lt!1345913 (tuple2!40305 (_1!23286 lt!1345913) (_2!23286 lt!1345913)))) (= (_2!23285 (v!39085 lt!1345915)) suffix!1176)))))

(declare-fun b!3868490 () Bool)

(declare-fun Unit!58871 () Unit!58863)

(assert (=> b!3868490 (= e!2392488 Unit!58871)))

(declare-fun lt!1345947 () Unit!58863)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!30 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41210 List!41209 List!41210) Unit!58863)

(assert (=> b!3868490 (= lt!1345947 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!30 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91 lt!1345934))))

(declare-fun res!1566779 () Bool)

(assert (=> b!3868490 (= res!1566779 (not (= call!282690 (tuple2!40305 (++!10498 lt!1345934 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3868490 (=> (not res!1566779) (not e!2392514))))

(assert (=> b!3868490 e!2392514))

(declare-fun b!3868491 () Bool)

(declare-fun res!1566766 () Bool)

(assert (=> b!3868491 (=> (not res!1566766) (not e!2392512))))

(declare-fun isEmpty!24368 (List!41209) Bool)

(assert (=> b!3868491 (= res!1566766 (not (isEmpty!24368 prefix!426)))))

(declare-fun b!3868492 () Bool)

(declare-fun tp!1172976 () Bool)

(assert (=> b!3868492 (= e!2392487 (and (inv!55244 (h!46506 prefixTokens!80)) e!2392505 tp!1172976))))

(assert (=> b!3868493 (= e!2392497 (and tp!1172963 tp!1172970))))

(declare-fun b!3868494 () Bool)

(declare-fun tp!1172972 () Bool)

(assert (=> b!3868494 (= e!2392511 (and tp!1172972 (inv!55240 (tag!7230 (h!46507 rules!2768))) (inv!55243 (transformation!6370 (h!46507 rules!2768))) e!2392518))))

(assert (= (and start!362912 res!1566773) b!3868480))

(assert (= (and b!3868480 res!1566768) b!3868474))

(assert (= (and b!3868474 res!1566776) b!3868468))

(assert (= (and b!3868468 res!1566781) b!3868491))

(assert (= (and b!3868491 res!1566766) b!3868459))

(assert (= (and b!3868459 res!1566769) b!3868481))

(assert (= (and b!3868481 res!1566767) b!3868454))

(assert (= (and b!3868454 res!1566782) b!3868456))

(assert (= (and b!3868456 res!1566770) b!3868483))

(assert (= (and b!3868456 (not res!1566777)) b!3868464))

(assert (= (and b!3868464 (not res!1566772)) b!3868489))

(assert (= (and b!3868489 (not res!1566775)) b!3868482))

(assert (= (and b!3868482 c!673224) b!3868487))

(assert (= (and b!3868482 (not c!673224)) b!3868465))

(assert (= (and b!3868487 c!673226) b!3868469))

(assert (= (and b!3868487 (not c!673226)) b!3868470))

(assert (= (and b!3868469 c!673225) b!3868460))

(assert (= (and b!3868469 (not c!673225)) b!3868490))

(assert (= (and b!3868460 res!1566763) b!3868472))

(assert (= (and b!3868490 res!1566779) b!3868471))

(assert (= (or b!3868460 b!3868490) bm!282685))

(assert (= (and b!3868482 c!673227) b!3868453))

(assert (= (and b!3868482 (not c!673227)) b!3868473))

(assert (= (and b!3868482 (not res!1566762)) b!3868488))

(assert (= (and b!3868488 (not res!1566774)) b!3868485))

(assert (= (and b!3868485 (not res!1566780)) b!3868479))

(assert (= (and b!3868479 (not res!1566764)) b!3868475))

(assert (= (and b!3868475 (not res!1566761)) b!3868477))

(assert (= (and b!3868477 (not res!1566771)) b!3868476))

(assert (= (and b!3868476 (not res!1566778)) b!3868484))

(assert (= (and b!3868484 (not res!1566765)) b!3868486))

(assert (= (and start!362912 ((_ is Cons!41085) suffixResult!91)) b!3868452))

(assert (= (and start!362912 ((_ is Cons!41085) suffix!1176)) b!3868467))

(assert (= b!3868494 b!3868461))

(assert (= b!3868458 b!3868494))

(assert (= (and start!362912 ((_ is Cons!41087) rules!2768)) b!3868458))

(assert (= b!3868463 b!3868457))

(assert (= b!3868478 b!3868463))

(assert (= b!3868492 b!3868478))

(assert (= (and start!362912 ((_ is Cons!41086) prefixTokens!80)) b!3868492))

(assert (= b!3868455 b!3868493))

(assert (= b!3868451 b!3868455))

(assert (= b!3868466 b!3868451))

(assert (= (and start!362912 ((_ is Cons!41086) suffixTokens!72)) b!3868466))

(assert (= (and start!362912 ((_ is Cons!41085) prefix!426)) b!3868462))

(declare-fun m!4424275 () Bool)

(assert (=> b!3868481 m!4424275))

(declare-fun m!4424277 () Bool)

(assert (=> b!3868479 m!4424277))

(declare-fun m!4424279 () Bool)

(assert (=> b!3868479 m!4424279))

(declare-fun m!4424281 () Bool)

(assert (=> b!3868463 m!4424281))

(declare-fun m!4424283 () Bool)

(assert (=> b!3868463 m!4424283))

(declare-fun m!4424285 () Bool)

(assert (=> b!3868476 m!4424285))

(declare-fun m!4424287 () Bool)

(assert (=> b!3868476 m!4424287))

(declare-fun m!4424289 () Bool)

(assert (=> b!3868476 m!4424289))

(declare-fun m!4424291 () Bool)

(assert (=> b!3868453 m!4424291))

(declare-fun m!4424293 () Bool)

(assert (=> b!3868453 m!4424293))

(declare-fun m!4424295 () Bool)

(assert (=> b!3868453 m!4424295))

(declare-fun m!4424297 () Bool)

(assert (=> b!3868453 m!4424297))

(declare-fun m!4424299 () Bool)

(assert (=> b!3868455 m!4424299))

(declare-fun m!4424301 () Bool)

(assert (=> b!3868455 m!4424301))

(declare-fun m!4424303 () Bool)

(assert (=> b!3868475 m!4424303))

(declare-fun m!4424305 () Bool)

(assert (=> b!3868480 m!4424305))

(declare-fun m!4424307 () Bool)

(assert (=> b!3868474 m!4424307))

(declare-fun m!4424309 () Bool)

(assert (=> b!3868451 m!4424309))

(declare-fun m!4424311 () Bool)

(assert (=> b!3868483 m!4424311))

(declare-fun m!4424313 () Bool)

(assert (=> b!3868494 m!4424313))

(declare-fun m!4424315 () Bool)

(assert (=> b!3868494 m!4424315))

(declare-fun m!4424317 () Bool)

(assert (=> b!3868459 m!4424317))

(declare-fun m!4424319 () Bool)

(assert (=> b!3868459 m!4424319))

(declare-fun m!4424321 () Bool)

(assert (=> b!3868459 m!4424321))

(declare-fun m!4424323 () Bool)

(assert (=> b!3868487 m!4424323))

(declare-fun m!4424325 () Bool)

(assert (=> b!3868487 m!4424325))

(declare-fun m!4424327 () Bool)

(assert (=> b!3868487 m!4424327))

(declare-fun m!4424329 () Bool)

(assert (=> b!3868487 m!4424329))

(declare-fun m!4424331 () Bool)

(assert (=> b!3868487 m!4424331))

(declare-fun m!4424333 () Bool)

(assert (=> b!3868477 m!4424333))

(declare-fun m!4424335 () Bool)

(assert (=> b!3868477 m!4424335))

(declare-fun m!4424337 () Bool)

(assert (=> b!3868477 m!4424337))

(declare-fun m!4424339 () Bool)

(assert (=> b!3868460 m!4424339))

(declare-fun m!4424341 () Bool)

(assert (=> b!3868460 m!4424341))

(declare-fun m!4424343 () Bool)

(assert (=> b!3868492 m!4424343))

(declare-fun m!4424345 () Bool)

(assert (=> b!3868482 m!4424345))

(declare-fun m!4424347 () Bool)

(assert (=> b!3868482 m!4424347))

(assert (=> b!3868485 m!4424293))

(declare-fun m!4424349 () Bool)

(assert (=> b!3868485 m!4424349))

(declare-fun m!4424351 () Bool)

(assert (=> b!3868485 m!4424351))

(assert (=> b!3868485 m!4424291))

(declare-fun m!4424353 () Bool)

(assert (=> b!3868485 m!4424353))

(declare-fun m!4424355 () Bool)

(assert (=> bm!282685 m!4424355))

(declare-fun m!4424357 () Bool)

(assert (=> b!3868484 m!4424357))

(assert (=> b!3868484 m!4424357))

(declare-fun m!4424359 () Bool)

(assert (=> b!3868484 m!4424359))

(declare-fun m!4424361 () Bool)

(assert (=> b!3868484 m!4424361))

(declare-fun m!4424363 () Bool)

(assert (=> b!3868484 m!4424363))

(declare-fun m!4424365 () Bool)

(assert (=> b!3868454 m!4424365))

(declare-fun m!4424367 () Bool)

(assert (=> b!3868488 m!4424367))

(declare-fun m!4424369 () Bool)

(assert (=> b!3868464 m!4424369))

(declare-fun m!4424371 () Bool)

(assert (=> b!3868490 m!4424371))

(declare-fun m!4424373 () Bool)

(assert (=> b!3868490 m!4424373))

(declare-fun m!4424375 () Bool)

(assert (=> b!3868468 m!4424375))

(declare-fun m!4424377 () Bool)

(assert (=> b!3868466 m!4424377))

(declare-fun m!4424379 () Bool)

(assert (=> b!3868469 m!4424379))

(assert (=> b!3868469 m!4424357))

(declare-fun m!4424381 () Bool)

(assert (=> b!3868456 m!4424381))

(declare-fun m!4424383 () Bool)

(assert (=> b!3868456 m!4424383))

(declare-fun m!4424385 () Bool)

(assert (=> b!3868456 m!4424385))

(declare-fun m!4424387 () Bool)

(assert (=> b!3868456 m!4424387))

(declare-fun m!4424389 () Bool)

(assert (=> b!3868456 m!4424389))

(declare-fun m!4424391 () Bool)

(assert (=> b!3868456 m!4424391))

(declare-fun m!4424393 () Bool)

(assert (=> b!3868456 m!4424393))

(declare-fun m!4424395 () Bool)

(assert (=> b!3868456 m!4424395))

(declare-fun m!4424397 () Bool)

(assert (=> b!3868456 m!4424397))

(declare-fun m!4424399 () Bool)

(assert (=> b!3868456 m!4424399))

(declare-fun m!4424401 () Bool)

(assert (=> b!3868456 m!4424401))

(declare-fun m!4424403 () Bool)

(assert (=> b!3868456 m!4424403))

(assert (=> b!3868456 m!4424389))

(assert (=> b!3868456 m!4424385))

(declare-fun m!4424405 () Bool)

(assert (=> b!3868456 m!4424405))

(declare-fun m!4424407 () Bool)

(assert (=> b!3868456 m!4424407))

(declare-fun m!4424409 () Bool)

(assert (=> b!3868491 m!4424409))

(declare-fun m!4424411 () Bool)

(assert (=> b!3868478 m!4424411))

(check-sat (not b!3868480) (not b!3868476) (not b!3868455) (not b!3868459) b_and!289879 b_and!289877 (not b!3868456) (not b!3868492) (not b_next!105071) b_and!289881 (not b!3868451) (not b!3868477) (not b_next!105073) (not b!3868469) (not b!3868463) (not b!3868458) (not b!3868453) b_and!289875 (not b!3868478) (not b!3868483) (not b!3868460) (not b!3868490) (not b!3868466) (not b!3868482) (not b_next!105075) (not b!3868484) (not b!3868487) (not b!3868467) (not b!3868468) (not b!3868485) b_and!289883 (not b!3868491) (not b!3868475) (not b_next!105079) (not b_next!105069) tp_is_empty!19521 (not b!3868464) (not b!3868481) (not b!3868488) (not b!3868462) (not b!3868479) (not b!3868454) (not bm!282685) (not b!3868452) b_and!289885 (not b!3868494) (not b_next!105077) (not b!3868474))
(check-sat b_and!289881 (not b_next!105073) b_and!289875 (not b_next!105075) b_and!289879 b_and!289883 b_and!289877 b_and!289885 (not b_next!105077) (not b_next!105071) (not b_next!105079) (not b_next!105069))
(get-model)

(declare-fun b!3868505 () Bool)

(declare-fun res!1566791 () Bool)

(declare-fun e!2392529 () Bool)

(assert (=> b!3868505 (=> res!1566791 e!2392529)))

(assert (=> b!3868505 (= res!1566791 (not ((_ is IntegerValue!19802) (value!202179 (h!46506 suffixTokens!72)))))))

(declare-fun e!2392531 () Bool)

(assert (=> b!3868505 (= e!2392531 e!2392529)))

(declare-fun b!3868506 () Bool)

(declare-fun inv!17 (TokenValue!6600) Bool)

(assert (=> b!3868506 (= e!2392531 (inv!17 (value!202179 (h!46506 suffixTokens!72))))))

(declare-fun b!3868507 () Bool)

(declare-fun inv!15 (TokenValue!6600) Bool)

(assert (=> b!3868507 (= e!2392529 (inv!15 (value!202179 (h!46506 suffixTokens!72))))))

(declare-fun d!1145748 () Bool)

(declare-fun c!673235 () Bool)

(assert (=> d!1145748 (= c!673235 ((_ is IntegerValue!19800) (value!202179 (h!46506 suffixTokens!72))))))

(declare-fun e!2392530 () Bool)

(assert (=> d!1145748 (= (inv!21 (value!202179 (h!46506 suffixTokens!72))) e!2392530)))

(declare-fun b!3868508 () Bool)

(assert (=> b!3868508 (= e!2392530 e!2392531)))

(declare-fun c!673234 () Bool)

(assert (=> b!3868508 (= c!673234 ((_ is IntegerValue!19801) (value!202179 (h!46506 suffixTokens!72))))))

(declare-fun b!3868509 () Bool)

(declare-fun inv!16 (TokenValue!6600) Bool)

(assert (=> b!3868509 (= e!2392530 (inv!16 (value!202179 (h!46506 suffixTokens!72))))))

(assert (= (and d!1145748 c!673235) b!3868509))

(assert (= (and d!1145748 (not c!673235)) b!3868508))

(assert (= (and b!3868508 c!673234) b!3868506))

(assert (= (and b!3868508 (not c!673234)) b!3868505))

(assert (= (and b!3868505 (not res!1566791)) b!3868507))

(declare-fun m!4424413 () Bool)

(assert (=> b!3868506 m!4424413))

(declare-fun m!4424415 () Bool)

(assert (=> b!3868507 m!4424415))

(declare-fun m!4424417 () Bool)

(assert (=> b!3868509 m!4424417))

(assert (=> b!3868451 d!1145748))

(declare-fun d!1145750 () Bool)

(assert (=> d!1145750 (isPrefix!3469 prefix!426 (++!10497 prefix!426 suffix!1176))))

(declare-fun lt!1345952 () Unit!58863)

(declare-fun choose!22829 (List!41209 List!41209) Unit!58863)

(assert (=> d!1145750 (= lt!1345952 (choose!22829 prefix!426 suffix!1176))))

(assert (=> d!1145750 (= (lemmaConcatTwoListThenFirstIsPrefix!2332 prefix!426 suffix!1176) lt!1345952)))

(declare-fun bs!583357 () Bool)

(assert (= bs!583357 d!1145750))

(assert (=> bs!583357 m!4424321))

(assert (=> bs!583357 m!4424321))

(declare-fun m!4424419 () Bool)

(assert (=> bs!583357 m!4424419))

(declare-fun m!4424421 () Bool)

(assert (=> bs!583357 m!4424421))

(assert (=> b!3868453 d!1145750))

(declare-fun b!3868519 () Bool)

(declare-fun res!1566800 () Bool)

(declare-fun e!2392538 () Bool)

(assert (=> b!3868519 (=> (not res!1566800) (not e!2392538))))

(declare-fun head!8184 (List!41209) C!22736)

(assert (=> b!3868519 (= res!1566800 (= (head!8184 prefix!426) (head!8184 lt!1345942)))))

(declare-fun d!1145752 () Bool)

(declare-fun e!2392539 () Bool)

(assert (=> d!1145752 e!2392539))

(declare-fun res!1566801 () Bool)

(assert (=> d!1145752 (=> res!1566801 e!2392539)))

(declare-fun lt!1345955 () Bool)

(assert (=> d!1145752 (= res!1566801 (not lt!1345955))))

(declare-fun e!2392540 () Bool)

(assert (=> d!1145752 (= lt!1345955 e!2392540)))

(declare-fun res!1566803 () Bool)

(assert (=> d!1145752 (=> res!1566803 e!2392540)))

(assert (=> d!1145752 (= res!1566803 ((_ is Nil!41085) prefix!426))))

(assert (=> d!1145752 (= (isPrefix!3469 prefix!426 lt!1345942) lt!1345955)))

(declare-fun b!3868518 () Bool)

(assert (=> b!3868518 (= e!2392540 e!2392538)))

(declare-fun res!1566802 () Bool)

(assert (=> b!3868518 (=> (not res!1566802) (not e!2392538))))

(assert (=> b!3868518 (= res!1566802 (not ((_ is Nil!41085) lt!1345942)))))

(declare-fun b!3868520 () Bool)

(declare-fun tail!5901 (List!41209) List!41209)

(assert (=> b!3868520 (= e!2392538 (isPrefix!3469 (tail!5901 prefix!426) (tail!5901 lt!1345942)))))

(declare-fun b!3868521 () Bool)

(assert (=> b!3868521 (= e!2392539 (>= (size!30882 lt!1345942) (size!30882 prefix!426)))))

(assert (= (and d!1145752 (not res!1566803)) b!3868518))

(assert (= (and b!3868518 res!1566802) b!3868519))

(assert (= (and b!3868519 res!1566800) b!3868520))

(assert (= (and d!1145752 (not res!1566801)) b!3868521))

(declare-fun m!4424423 () Bool)

(assert (=> b!3868519 m!4424423))

(declare-fun m!4424425 () Bool)

(assert (=> b!3868519 m!4424425))

(declare-fun m!4424427 () Bool)

(assert (=> b!3868520 m!4424427))

(declare-fun m!4424429 () Bool)

(assert (=> b!3868520 m!4424429))

(assert (=> b!3868520 m!4424427))

(assert (=> b!3868520 m!4424429))

(declare-fun m!4424431 () Bool)

(assert (=> b!3868520 m!4424431))

(assert (=> b!3868521 m!4424331))

(assert (=> b!3868521 m!4424351))

(assert (=> b!3868453 d!1145752))

(declare-fun d!1145754 () Bool)

(assert (=> d!1145754 (= lt!1345938 prefix!426)))

(declare-fun lt!1345958 () Unit!58863)

(declare-fun choose!22830 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> d!1145754 (= lt!1345958 (choose!22830 lt!1345938 prefix!426 lt!1345942))))

(assert (=> d!1145754 (isPrefix!3469 lt!1345938 lt!1345942)))

(assert (=> d!1145754 (= (lemmaIsPrefixSameLengthThenSameList!721 lt!1345938 prefix!426 lt!1345942) lt!1345958)))

(declare-fun bs!583358 () Bool)

(assert (= bs!583358 d!1145754))

(declare-fun m!4424433 () Bool)

(assert (=> bs!583358 m!4424433))

(declare-fun m!4424435 () Bool)

(assert (=> bs!583358 m!4424435))

(assert (=> b!3868453 d!1145754))

(declare-fun d!1145756 () Bool)

(assert (=> d!1145756 (= (_2!23285 (v!39085 lt!1345915)) suffix!1176)))

(declare-fun lt!1345961 () Unit!58863)

(declare-fun choose!22831 (List!41209 List!41209 List!41209 List!41209 List!41209) Unit!58863)

(assert (=> d!1145756 (= lt!1345961 (choose!22831 lt!1345938 (_2!23285 (v!39085 lt!1345915)) prefix!426 suffix!1176 lt!1345942))))

(assert (=> d!1145756 (isPrefix!3469 lt!1345938 lt!1345942)))

(assert (=> d!1145756 (= (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) prefix!426 suffix!1176 lt!1345942) lt!1345961)))

(declare-fun bs!583359 () Bool)

(assert (= bs!583359 d!1145756))

(declare-fun m!4424437 () Bool)

(assert (=> bs!583359 m!4424437))

(assert (=> bs!583359 m!4424435))

(assert (=> b!3868453 d!1145756))

(declare-fun d!1145758 () Bool)

(declare-fun res!1566809 () Bool)

(declare-fun e!2392543 () Bool)

(assert (=> d!1145758 (=> (not res!1566809) (not e!2392543))))

(declare-fun rulesValid!2465 (LexerInterface!5959 List!41211) Bool)

(assert (=> d!1145758 (= res!1566809 (rulesValid!2465 thiss!20629 rules!2768))))

(assert (=> d!1145758 (= (rulesInvariant!5302 thiss!20629 rules!2768) e!2392543)))

(declare-fun b!3868524 () Bool)

(declare-datatypes ((List!41212 0))(
  ( (Nil!41088) (Cons!41088 (h!46508 String!46718) (t!314279 List!41212)) )
))
(declare-fun noDuplicateTag!2466 (LexerInterface!5959 List!41211 List!41212) Bool)

(assert (=> b!3868524 (= e!2392543 (noDuplicateTag!2466 thiss!20629 rules!2768 Nil!41088))))

(assert (= (and d!1145758 res!1566809) b!3868524))

(declare-fun m!4424443 () Bool)

(assert (=> d!1145758 m!4424443))

(declare-fun m!4424445 () Bool)

(assert (=> b!3868524 m!4424445))

(assert (=> b!3868474 d!1145758))

(declare-fun d!1145764 () Bool)

(assert (=> d!1145764 (= (inv!55240 (tag!7230 (h!46507 rules!2768))) (= (mod (str.len (value!202178 (tag!7230 (h!46507 rules!2768)))) 2) 0))))

(assert (=> b!3868494 d!1145764))

(declare-fun d!1145766 () Bool)

(declare-fun res!1566824 () Bool)

(declare-fun e!2392555 () Bool)

(assert (=> d!1145766 (=> (not res!1566824) (not e!2392555))))

(declare-fun semiInverseModEq!2731 (Int Int) Bool)

(assert (=> d!1145766 (= res!1566824 (semiInverseModEq!2731 (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toValue!8798 (transformation!6370 (h!46507 rules!2768)))))))

(assert (=> d!1145766 (= (inv!55243 (transformation!6370 (h!46507 rules!2768))) e!2392555)))

(declare-fun b!3868539 () Bool)

(declare-fun equivClasses!2630 (Int Int) Bool)

(assert (=> b!3868539 (= e!2392555 (equivClasses!2630 (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toValue!8798 (transformation!6370 (h!46507 rules!2768)))))))

(assert (= (and d!1145766 res!1566824) b!3868539))

(declare-fun m!4424463 () Bool)

(assert (=> d!1145766 m!4424463))

(declare-fun m!4424465 () Bool)

(assert (=> b!3868539 m!4424465))

(assert (=> b!3868494 d!1145766))

(declare-fun d!1145774 () Bool)

(assert (=> d!1145774 (= (isEmpty!24368 prefix!426) ((_ is Nil!41085) prefix!426))))

(assert (=> b!3868491 d!1145774))

(declare-fun d!1145776 () Bool)

(assert (=> d!1145776 (not (= (lexList!1727 thiss!20629 rules!2768 (_2!23285 lt!1345920)) (tuple2!40305 (++!10498 lt!1345934 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1345995 () Unit!58863)

(declare-fun choose!22832 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41210 List!41209 List!41210) Unit!58863)

(assert (=> d!1145776 (= lt!1345995 (choose!22832 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91 lt!1345934))))

(assert (=> d!1145776 (not (isEmpty!24367 rules!2768))))

(assert (=> d!1145776 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!30 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91 lt!1345934) lt!1345995)))

(declare-fun bs!583367 () Bool)

(assert (= bs!583367 d!1145776))

(assert (=> bs!583367 m!4424355))

(assert (=> bs!583367 m!4424373))

(declare-fun m!4424527 () Bool)

(assert (=> bs!583367 m!4424527))

(assert (=> bs!583367 m!4424305))

(assert (=> b!3868490 d!1145776))

(declare-fun b!3868591 () Bool)

(declare-fun e!2392586 () List!41210)

(assert (=> b!3868591 (= e!2392586 suffixTokens!72)))

(declare-fun b!3868592 () Bool)

(assert (=> b!3868592 (= e!2392586 (Cons!41086 (h!46506 lt!1345934) (++!10498 (t!314181 lt!1345934) suffixTokens!72)))))

(declare-fun e!2392587 () Bool)

(declare-fun lt!1346004 () List!41210)

(declare-fun b!3868594 () Bool)

(assert (=> b!3868594 (= e!2392587 (or (not (= suffixTokens!72 Nil!41086)) (= lt!1346004 lt!1345934)))))

(declare-fun d!1145802 () Bool)

(assert (=> d!1145802 e!2392587))

(declare-fun res!1566850 () Bool)

(assert (=> d!1145802 (=> (not res!1566850) (not e!2392587))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6131 (List!41210) (InoxSet Token!11878))

(assert (=> d!1145802 (= res!1566850 (= (content!6131 lt!1346004) ((_ map or) (content!6131 lt!1345934) (content!6131 suffixTokens!72))))))

(assert (=> d!1145802 (= lt!1346004 e!2392586)))

(declare-fun c!673249 () Bool)

(assert (=> d!1145802 (= c!673249 ((_ is Nil!41086) lt!1345934))))

(assert (=> d!1145802 (= (++!10498 lt!1345934 suffixTokens!72) lt!1346004)))

(declare-fun b!3868593 () Bool)

(declare-fun res!1566851 () Bool)

(assert (=> b!3868593 (=> (not res!1566851) (not e!2392587))))

(declare-fun size!30884 (List!41210) Int)

(assert (=> b!3868593 (= res!1566851 (= (size!30884 lt!1346004) (+ (size!30884 lt!1345934) (size!30884 suffixTokens!72))))))

(assert (= (and d!1145802 c!673249) b!3868591))

(assert (= (and d!1145802 (not c!673249)) b!3868592))

(assert (= (and d!1145802 res!1566850) b!3868593))

(assert (= (and b!3868593 res!1566851) b!3868594))

(declare-fun m!4424529 () Bool)

(assert (=> b!3868592 m!4424529))

(declare-fun m!4424531 () Bool)

(assert (=> d!1145802 m!4424531))

(declare-fun m!4424533 () Bool)

(assert (=> d!1145802 m!4424533))

(declare-fun m!4424535 () Bool)

(assert (=> d!1145802 m!4424535))

(declare-fun m!4424537 () Bool)

(assert (=> b!3868593 m!4424537))

(declare-fun m!4424539 () Bool)

(assert (=> b!3868593 m!4424539))

(declare-fun m!4424541 () Bool)

(assert (=> b!3868593 m!4424541))

(assert (=> b!3868490 d!1145802))

(declare-fun d!1145804 () Bool)

(declare-fun res!1566857 () Bool)

(declare-fun e!2392593 () Bool)

(assert (=> d!1145804 (=> (not res!1566857) (not e!2392593))))

(assert (=> d!1145804 (= res!1566857 (not (isEmpty!24368 (originalCharacters!6970 (h!46506 prefixTokens!80)))))))

(assert (=> d!1145804 (= (inv!55244 (h!46506 prefixTokens!80)) e!2392593)))

(declare-fun b!3868604 () Bool)

(declare-fun res!1566858 () Bool)

(assert (=> b!3868604 (=> (not res!1566858) (not e!2392593))))

(declare-fun dynLambda!17683 (Int TokenValue!6600) BalanceConc!24756)

(assert (=> b!3868604 (= res!1566858 (= (originalCharacters!6970 (h!46506 prefixTokens!80)) (list!15284 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (value!202179 (h!46506 prefixTokens!80))))))))

(declare-fun b!3868605 () Bool)

(assert (=> b!3868605 (= e!2392593 (= (size!30881 (h!46506 prefixTokens!80)) (size!30882 (originalCharacters!6970 (h!46506 prefixTokens!80)))))))

(assert (= (and d!1145804 res!1566857) b!3868604))

(assert (= (and b!3868604 res!1566858) b!3868605))

(declare-fun b_lambda!113007 () Bool)

(assert (=> (not b_lambda!113007) (not b!3868604)))

(declare-fun tb!224273 () Bool)

(declare-fun t!314184 () Bool)

(assert (=> (and b!3868493 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314184) tb!224273))

(declare-fun b!3868610 () Bool)

(declare-fun e!2392596 () Bool)

(declare-fun tp!1172979 () Bool)

(declare-fun inv!55245 (Conc!12581) Bool)

(assert (=> b!3868610 (= e!2392596 (and (inv!55245 (c!673229 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (value!202179 (h!46506 prefixTokens!80))))) tp!1172979))))

(declare-fun result!273154 () Bool)

(declare-fun inv!55246 (BalanceConc!24756) Bool)

(assert (=> tb!224273 (= result!273154 (and (inv!55246 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (value!202179 (h!46506 prefixTokens!80)))) e!2392596))))

(assert (= tb!224273 b!3868610))

(declare-fun m!4424553 () Bool)

(assert (=> b!3868610 m!4424553))

(declare-fun m!4424555 () Bool)

(assert (=> tb!224273 m!4424555))

(assert (=> b!3868604 t!314184))

(declare-fun b_and!289887 () Bool)

(assert (= b_and!289877 (and (=> t!314184 result!273154) b_and!289887)))

(declare-fun t!314186 () Bool)

(declare-fun tb!224275 () Bool)

(assert (=> (and b!3868457 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314186) tb!224275))

(declare-fun result!273158 () Bool)

(assert (= result!273158 result!273154))

(assert (=> b!3868604 t!314186))

(declare-fun b_and!289889 () Bool)

(assert (= b_and!289881 (and (=> t!314186 result!273158) b_and!289889)))

(declare-fun tb!224277 () Bool)

(declare-fun t!314188 () Bool)

(assert (=> (and b!3868461 (= (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314188) tb!224277))

(declare-fun result!273160 () Bool)

(assert (= result!273160 result!273154))

(assert (=> b!3868604 t!314188))

(declare-fun b_and!289891 () Bool)

(assert (= b_and!289885 (and (=> t!314188 result!273160) b_and!289891)))

(declare-fun m!4424557 () Bool)

(assert (=> d!1145804 m!4424557))

(declare-fun m!4424559 () Bool)

(assert (=> b!3868604 m!4424559))

(assert (=> b!3868604 m!4424559))

(declare-fun m!4424561 () Bool)

(assert (=> b!3868604 m!4424561))

(declare-fun m!4424563 () Bool)

(assert (=> b!3868605 m!4424563))

(assert (=> b!3868492 d!1145804))

(declare-fun b!3868611 () Bool)

(declare-fun res!1566859 () Bool)

(declare-fun e!2392597 () Bool)

(assert (=> b!3868611 (=> res!1566859 e!2392597)))

(assert (=> b!3868611 (= res!1566859 (not ((_ is IntegerValue!19802) (value!202179 (h!46506 prefixTokens!80)))))))

(declare-fun e!2392599 () Bool)

(assert (=> b!3868611 (= e!2392599 e!2392597)))

(declare-fun b!3868612 () Bool)

(assert (=> b!3868612 (= e!2392599 (inv!17 (value!202179 (h!46506 prefixTokens!80))))))

(declare-fun b!3868613 () Bool)

(assert (=> b!3868613 (= e!2392597 (inv!15 (value!202179 (h!46506 prefixTokens!80))))))

(declare-fun d!1145810 () Bool)

(declare-fun c!673253 () Bool)

(assert (=> d!1145810 (= c!673253 ((_ is IntegerValue!19800) (value!202179 (h!46506 prefixTokens!80))))))

(declare-fun e!2392598 () Bool)

(assert (=> d!1145810 (= (inv!21 (value!202179 (h!46506 prefixTokens!80))) e!2392598)))

(declare-fun b!3868614 () Bool)

(assert (=> b!3868614 (= e!2392598 e!2392599)))

(declare-fun c!673252 () Bool)

(assert (=> b!3868614 (= c!673252 ((_ is IntegerValue!19801) (value!202179 (h!46506 prefixTokens!80))))))

(declare-fun b!3868615 () Bool)

(assert (=> b!3868615 (= e!2392598 (inv!16 (value!202179 (h!46506 prefixTokens!80))))))

(assert (= (and d!1145810 c!673253) b!3868615))

(assert (= (and d!1145810 (not c!673253)) b!3868614))

(assert (= (and b!3868614 c!673252) b!3868612))

(assert (= (and b!3868614 (not c!673252)) b!3868611))

(assert (= (and b!3868611 (not res!1566859)) b!3868613))

(declare-fun m!4424565 () Bool)

(assert (=> b!3868612 m!4424565))

(declare-fun m!4424567 () Bool)

(assert (=> b!3868613 m!4424567))

(declare-fun m!4424569 () Bool)

(assert (=> b!3868615 m!4424569))

(assert (=> b!3868478 d!1145810))

(declare-fun d!1145812 () Bool)

(assert (=> d!1145812 (= (isEmpty!24367 rules!2768) ((_ is Nil!41087) rules!2768))))

(assert (=> b!3868480 d!1145812))

(declare-fun b!3868624 () Bool)

(declare-fun e!2392604 () List!41209)

(assert (=> b!3868624 (= e!2392604 lt!1345930)))

(declare-fun b!3868625 () Bool)

(assert (=> b!3868625 (= e!2392604 (Cons!41085 (h!46505 lt!1345938) (++!10497 (t!314180 lt!1345938) lt!1345930)))))

(declare-fun d!1145814 () Bool)

(declare-fun e!2392605 () Bool)

(assert (=> d!1145814 e!2392605))

(declare-fun res!1566864 () Bool)

(assert (=> d!1145814 (=> (not res!1566864) (not e!2392605))))

(declare-fun lt!1346010 () List!41209)

(declare-fun content!6132 (List!41209) (InoxSet C!22736))

(assert (=> d!1145814 (= res!1566864 (= (content!6132 lt!1346010) ((_ map or) (content!6132 lt!1345938) (content!6132 lt!1345930))))))

(assert (=> d!1145814 (= lt!1346010 e!2392604)))

(declare-fun c!673256 () Bool)

(assert (=> d!1145814 (= c!673256 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145814 (= (++!10497 lt!1345938 lt!1345930) lt!1346010)))

(declare-fun b!3868626 () Bool)

(declare-fun res!1566865 () Bool)

(assert (=> b!3868626 (=> (not res!1566865) (not e!2392605))))

(assert (=> b!3868626 (= res!1566865 (= (size!30882 lt!1346010) (+ (size!30882 lt!1345938) (size!30882 lt!1345930))))))

(declare-fun b!3868627 () Bool)

(assert (=> b!3868627 (= e!2392605 (or (not (= lt!1345930 Nil!41085)) (= lt!1346010 lt!1345938)))))

(assert (= (and d!1145814 c!673256) b!3868624))

(assert (= (and d!1145814 (not c!673256)) b!3868625))

(assert (= (and d!1145814 res!1566864) b!3868626))

(assert (= (and b!3868626 res!1566865) b!3868627))

(declare-fun m!4424571 () Bool)

(assert (=> b!3868625 m!4424571))

(declare-fun m!4424573 () Bool)

(assert (=> d!1145814 m!4424573))

(declare-fun m!4424575 () Bool)

(assert (=> d!1145814 m!4424575))

(declare-fun m!4424577 () Bool)

(assert (=> d!1145814 m!4424577))

(declare-fun m!4424579 () Bool)

(assert (=> b!3868626 m!4424579))

(assert (=> b!3868626 m!4424395))

(declare-fun m!4424581 () Bool)

(assert (=> b!3868626 m!4424581))

(assert (=> b!3868479 d!1145814))

(declare-fun d!1145816 () Bool)

(declare-fun lt!1346019 () List!41209)

(assert (=> d!1145816 (= (++!10497 lt!1345938 lt!1346019) prefix!426)))

(declare-fun e!2392610 () List!41209)

(assert (=> d!1145816 (= lt!1346019 e!2392610)))

(declare-fun c!673261 () Bool)

(assert (=> d!1145816 (= c!673261 ((_ is Cons!41085) lt!1345938))))

(assert (=> d!1145816 (>= (size!30882 prefix!426) (size!30882 lt!1345938))))

(assert (=> d!1145816 (= (getSuffix!1924 prefix!426 lt!1345938) lt!1346019)))

(declare-fun b!3868636 () Bool)

(assert (=> b!3868636 (= e!2392610 (getSuffix!1924 (tail!5901 prefix!426) (t!314180 lt!1345938)))))

(declare-fun b!3868637 () Bool)

(assert (=> b!3868637 (= e!2392610 prefix!426)))

(assert (= (and d!1145816 c!673261) b!3868636))

(assert (= (and d!1145816 (not c!673261)) b!3868637))

(declare-fun m!4424583 () Bool)

(assert (=> d!1145816 m!4424583))

(assert (=> d!1145816 m!4424351))

(assert (=> d!1145816 m!4424395))

(assert (=> b!3868636 m!4424427))

(assert (=> b!3868636 m!4424427))

(declare-fun m!4424585 () Bool)

(assert (=> b!3868636 m!4424585))

(assert (=> b!3868479 d!1145816))

(declare-fun d!1145818 () Bool)

(assert (=> d!1145818 (= (_2!23285 (v!39085 lt!1345915)) lt!1345945)))

(declare-fun lt!1346024 () Unit!58863)

(assert (=> d!1145818 (= lt!1346024 (choose!22831 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345945 lt!1345942))))

(assert (=> d!1145818 (isPrefix!3469 lt!1345938 lt!1345942)))

(assert (=> d!1145818 (= (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345945 lt!1345942) lt!1346024)))

(declare-fun bs!583368 () Bool)

(assert (= bs!583368 d!1145818))

(declare-fun m!4424587 () Bool)

(assert (=> bs!583368 m!4424587))

(assert (=> bs!583368 m!4424435))

(assert (=> b!3868476 d!1145818))

(declare-fun b!3868649 () Bool)

(declare-fun res!1566876 () Bool)

(declare-fun e!2392615 () Bool)

(assert (=> b!3868649 (=> (not res!1566876) (not e!2392615))))

(assert (=> b!3868649 (= res!1566876 (= (head!8184 lt!1345938) (head!8184 lt!1345924)))))

(declare-fun d!1145820 () Bool)

(declare-fun e!2392616 () Bool)

(assert (=> d!1145820 e!2392616))

(declare-fun res!1566877 () Bool)

(assert (=> d!1145820 (=> res!1566877 e!2392616)))

(declare-fun lt!1346025 () Bool)

(assert (=> d!1145820 (= res!1566877 (not lt!1346025))))

(declare-fun e!2392617 () Bool)

(assert (=> d!1145820 (= lt!1346025 e!2392617)))

(declare-fun res!1566879 () Bool)

(assert (=> d!1145820 (=> res!1566879 e!2392617)))

(assert (=> d!1145820 (= res!1566879 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145820 (= (isPrefix!3469 lt!1345938 lt!1345924) lt!1346025)))

(declare-fun b!3868648 () Bool)

(assert (=> b!3868648 (= e!2392617 e!2392615)))

(declare-fun res!1566878 () Bool)

(assert (=> b!3868648 (=> (not res!1566878) (not e!2392615))))

(assert (=> b!3868648 (= res!1566878 (not ((_ is Nil!41085) lt!1345924)))))

(declare-fun b!3868650 () Bool)

(assert (=> b!3868650 (= e!2392615 (isPrefix!3469 (tail!5901 lt!1345938) (tail!5901 lt!1345924)))))

(declare-fun b!3868651 () Bool)

(assert (=> b!3868651 (= e!2392616 (>= (size!30882 lt!1345924) (size!30882 lt!1345938)))))

(assert (= (and d!1145820 (not res!1566879)) b!3868648))

(assert (= (and b!3868648 res!1566878) b!3868649))

(assert (= (and b!3868649 res!1566876) b!3868650))

(assert (= (and d!1145820 (not res!1566877)) b!3868651))

(declare-fun m!4424589 () Bool)

(assert (=> b!3868649 m!4424589))

(declare-fun m!4424591 () Bool)

(assert (=> b!3868649 m!4424591))

(declare-fun m!4424593 () Bool)

(assert (=> b!3868650 m!4424593))

(declare-fun m!4424595 () Bool)

(assert (=> b!3868650 m!4424595))

(assert (=> b!3868650 m!4424593))

(assert (=> b!3868650 m!4424595))

(declare-fun m!4424597 () Bool)

(assert (=> b!3868650 m!4424597))

(declare-fun m!4424599 () Bool)

(assert (=> b!3868651 m!4424599))

(assert (=> b!3868651 m!4424395))

(assert (=> b!3868476 d!1145820))

(declare-fun d!1145822 () Bool)

(assert (=> d!1145822 (isPrefix!3469 lt!1345938 (++!10497 lt!1345938 lt!1345945))))

(declare-fun lt!1346026 () Unit!58863)

(assert (=> d!1145822 (= lt!1346026 (choose!22829 lt!1345938 lt!1345945))))

(assert (=> d!1145822 (= (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345938 lt!1345945) lt!1346026)))

(declare-fun bs!583369 () Bool)

(assert (= bs!583369 d!1145822))

(assert (=> bs!583369 m!4424333))

(assert (=> bs!583369 m!4424333))

(declare-fun m!4424601 () Bool)

(assert (=> bs!583369 m!4424601))

(declare-fun m!4424603 () Bool)

(assert (=> bs!583369 m!4424603))

(assert (=> b!3868476 d!1145822))

(declare-fun b!3868760 () Bool)

(declare-fun e!2392674 () Bool)

(declare-fun e!2392672 () Bool)

(assert (=> b!3868760 (= e!2392674 e!2392672)))

(declare-fun res!1566936 () Bool)

(assert (=> b!3868760 (=> (not res!1566936) (not e!2392672))))

(declare-fun lt!1346073 () Option!8788)

(declare-fun isDefined!6879 (Option!8788) Bool)

(assert (=> b!3868760 (= res!1566936 (isDefined!6879 lt!1346073))))

(declare-fun b!3868761 () Bool)

(declare-fun res!1566940 () Bool)

(assert (=> b!3868761 (=> (not res!1566940) (not e!2392672))))

(assert (=> b!3868761 (= res!1566940 (< (size!30882 (_2!23285 (get!13595 lt!1346073))) (size!30882 lt!1345942)))))

(declare-fun d!1145824 () Bool)

(assert (=> d!1145824 e!2392674))

(declare-fun res!1566942 () Bool)

(assert (=> d!1145824 (=> res!1566942 e!2392674)))

(declare-fun isEmpty!24370 (Option!8788) Bool)

(assert (=> d!1145824 (= res!1566942 (isEmpty!24370 lt!1346073))))

(declare-fun e!2392673 () Option!8788)

(assert (=> d!1145824 (= lt!1346073 e!2392673)))

(declare-fun c!673284 () Bool)

(assert (=> d!1145824 (= c!673284 (and ((_ is Cons!41087) rules!2768) ((_ is Nil!41087) (t!314182 rules!2768))))))

(declare-fun lt!1346072 () Unit!58863)

(declare-fun lt!1346069 () Unit!58863)

(assert (=> d!1145824 (= lt!1346072 lt!1346069)))

(assert (=> d!1145824 (isPrefix!3469 lt!1345942 lt!1345942)))

(declare-fun lemmaIsPrefixRefl!2202 (List!41209 List!41209) Unit!58863)

(assert (=> d!1145824 (= lt!1346069 (lemmaIsPrefixRefl!2202 lt!1345942 lt!1345942))))

(declare-fun rulesValidInductive!2276 (LexerInterface!5959 List!41211) Bool)

(assert (=> d!1145824 (rulesValidInductive!2276 thiss!20629 rules!2768)))

(assert (=> d!1145824 (= (maxPrefix!3263 thiss!20629 rules!2768 lt!1345942) lt!1346073)))

(declare-fun b!3868762 () Bool)

(declare-fun call!282696 () Option!8788)

(assert (=> b!3868762 (= e!2392673 call!282696)))

(declare-fun b!3868763 () Bool)

(declare-fun res!1566941 () Bool)

(assert (=> b!3868763 (=> (not res!1566941) (not e!2392672))))

(assert (=> b!3868763 (= res!1566941 (= (++!10497 (list!15284 (charsOf!4198 (_1!23285 (get!13595 lt!1346073)))) (_2!23285 (get!13595 lt!1346073))) lt!1345942))))

(declare-fun b!3868764 () Bool)

(declare-fun res!1566938 () Bool)

(assert (=> b!3868764 (=> (not res!1566938) (not e!2392672))))

(assert (=> b!3868764 (= res!1566938 (= (list!15284 (charsOf!4198 (_1!23285 (get!13595 lt!1346073)))) (originalCharacters!6970 (_1!23285 (get!13595 lt!1346073)))))))

(declare-fun b!3868765 () Bool)

(declare-fun lt!1346071 () Option!8788)

(declare-fun lt!1346070 () Option!8788)

(assert (=> b!3868765 (= e!2392673 (ite (and ((_ is None!8787) lt!1346071) ((_ is None!8787) lt!1346070)) None!8787 (ite ((_ is None!8787) lt!1346070) lt!1346071 (ite ((_ is None!8787) lt!1346071) lt!1346070 (ite (>= (size!30881 (_1!23285 (v!39085 lt!1346071))) (size!30881 (_1!23285 (v!39085 lt!1346070)))) lt!1346071 lt!1346070)))))))

(assert (=> b!3868765 (= lt!1346071 call!282696)))

(assert (=> b!3868765 (= lt!1346070 (maxPrefix!3263 thiss!20629 (t!314182 rules!2768) lt!1345942))))

(declare-fun bm!282691 () Bool)

(assert (=> bm!282691 (= call!282696 (maxPrefixOneRule!2345 thiss!20629 (h!46507 rules!2768) lt!1345942))))

(declare-fun b!3868766 () Bool)

(declare-fun res!1566939 () Bool)

(assert (=> b!3868766 (=> (not res!1566939) (not e!2392672))))

(declare-fun matchR!5408 (Regex!11275 List!41209) Bool)

(assert (=> b!3868766 (= res!1566939 (matchR!5408 (regex!6370 (rule!9252 (_1!23285 (get!13595 lt!1346073)))) (list!15284 (charsOf!4198 (_1!23285 (get!13595 lt!1346073))))))))

(declare-fun b!3868767 () Bool)

(declare-fun res!1566937 () Bool)

(assert (=> b!3868767 (=> (not res!1566937) (not e!2392672))))

(assert (=> b!3868767 (= res!1566937 (= (value!202179 (_1!23285 (get!13595 lt!1346073))) (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (get!13595 lt!1346073)))) (seqFromList!4641 (originalCharacters!6970 (_1!23285 (get!13595 lt!1346073)))))))))

(declare-fun b!3868768 () Bool)

(declare-fun contains!8283 (List!41211 Rule!12540) Bool)

(assert (=> b!3868768 (= e!2392672 (contains!8283 rules!2768 (rule!9252 (_1!23285 (get!13595 lt!1346073)))))))

(assert (= (and d!1145824 c!673284) b!3868762))

(assert (= (and d!1145824 (not c!673284)) b!3868765))

(assert (= (or b!3868762 b!3868765) bm!282691))

(assert (= (and d!1145824 (not res!1566942)) b!3868760))

(assert (= (and b!3868760 res!1566936) b!3868764))

(assert (= (and b!3868764 res!1566938) b!3868761))

(assert (= (and b!3868761 res!1566940) b!3868763))

(assert (= (and b!3868763 res!1566941) b!3868767))

(assert (= (and b!3868767 res!1566937) b!3868766))

(assert (= (and b!3868766 res!1566939) b!3868768))

(declare-fun m!4424751 () Bool)

(assert (=> b!3868763 m!4424751))

(declare-fun m!4424753 () Bool)

(assert (=> b!3868763 m!4424753))

(assert (=> b!3868763 m!4424753))

(declare-fun m!4424755 () Bool)

(assert (=> b!3868763 m!4424755))

(assert (=> b!3868763 m!4424755))

(declare-fun m!4424757 () Bool)

(assert (=> b!3868763 m!4424757))

(assert (=> b!3868768 m!4424751))

(declare-fun m!4424759 () Bool)

(assert (=> b!3868768 m!4424759))

(declare-fun m!4424761 () Bool)

(assert (=> b!3868760 m!4424761))

(declare-fun m!4424763 () Bool)

(assert (=> d!1145824 m!4424763))

(declare-fun m!4424765 () Bool)

(assert (=> d!1145824 m!4424765))

(declare-fun m!4424767 () Bool)

(assert (=> d!1145824 m!4424767))

(declare-fun m!4424769 () Bool)

(assert (=> d!1145824 m!4424769))

(assert (=> b!3868761 m!4424751))

(declare-fun m!4424771 () Bool)

(assert (=> b!3868761 m!4424771))

(assert (=> b!3868761 m!4424331))

(assert (=> b!3868766 m!4424751))

(assert (=> b!3868766 m!4424753))

(assert (=> b!3868766 m!4424753))

(assert (=> b!3868766 m!4424755))

(assert (=> b!3868766 m!4424755))

(declare-fun m!4424773 () Bool)

(assert (=> b!3868766 m!4424773))

(assert (=> b!3868767 m!4424751))

(declare-fun m!4424775 () Bool)

(assert (=> b!3868767 m!4424775))

(assert (=> b!3868767 m!4424775))

(declare-fun m!4424777 () Bool)

(assert (=> b!3868767 m!4424777))

(declare-fun m!4424779 () Bool)

(assert (=> bm!282691 m!4424779))

(declare-fun m!4424781 () Bool)

(assert (=> b!3868765 m!4424781))

(assert (=> b!3868764 m!4424751))

(assert (=> b!3868764 m!4424753))

(assert (=> b!3868764 m!4424753))

(assert (=> b!3868764 m!4424755))

(assert (=> b!3868454 d!1145824))

(declare-fun b!3868769 () Bool)

(declare-fun e!2392675 () List!41209)

(assert (=> b!3868769 (= e!2392675 suffix!1176)))

(declare-fun b!3868770 () Bool)

(assert (=> b!3868770 (= e!2392675 (Cons!41085 (h!46505 lt!1345929) (++!10497 (t!314180 lt!1345929) suffix!1176)))))

(declare-fun d!1145880 () Bool)

(declare-fun e!2392676 () Bool)

(assert (=> d!1145880 e!2392676))

(declare-fun res!1566943 () Bool)

(assert (=> d!1145880 (=> (not res!1566943) (not e!2392676))))

(declare-fun lt!1346074 () List!41209)

(assert (=> d!1145880 (= res!1566943 (= (content!6132 lt!1346074) ((_ map or) (content!6132 lt!1345929) (content!6132 suffix!1176))))))

(assert (=> d!1145880 (= lt!1346074 e!2392675)))

(declare-fun c!673285 () Bool)

(assert (=> d!1145880 (= c!673285 ((_ is Nil!41085) lt!1345929))))

(assert (=> d!1145880 (= (++!10497 lt!1345929 suffix!1176) lt!1346074)))

(declare-fun b!3868771 () Bool)

(declare-fun res!1566944 () Bool)

(assert (=> b!3868771 (=> (not res!1566944) (not e!2392676))))

(assert (=> b!3868771 (= res!1566944 (= (size!30882 lt!1346074) (+ (size!30882 lt!1345929) (size!30882 suffix!1176))))))

(declare-fun b!3868772 () Bool)

(assert (=> b!3868772 (= e!2392676 (or (not (= suffix!1176 Nil!41085)) (= lt!1346074 lt!1345929)))))

(assert (= (and d!1145880 c!673285) b!3868769))

(assert (= (and d!1145880 (not c!673285)) b!3868770))

(assert (= (and d!1145880 res!1566943) b!3868771))

(assert (= (and b!3868771 res!1566944) b!3868772))

(declare-fun m!4424783 () Bool)

(assert (=> b!3868770 m!4424783))

(declare-fun m!4424785 () Bool)

(assert (=> d!1145880 m!4424785))

(declare-fun m!4424787 () Bool)

(assert (=> d!1145880 m!4424787))

(declare-fun m!4424789 () Bool)

(assert (=> d!1145880 m!4424789))

(declare-fun m!4424791 () Bool)

(assert (=> b!3868771 m!4424791))

(declare-fun m!4424793 () Bool)

(assert (=> b!3868771 m!4424793))

(assert (=> b!3868771 m!4424345))

(assert (=> b!3868475 d!1145880))

(declare-fun b!3868783 () Bool)

(declare-fun e!2392683 () tuple2!40304)

(declare-fun lt!1346082 () Option!8788)

(declare-fun lt!1346083 () tuple2!40304)

(assert (=> b!3868783 (= e!2392683 (tuple2!40305 (Cons!41086 (_1!23285 (v!39085 lt!1346082)) (_1!23286 lt!1346083)) (_2!23286 lt!1346083)))))

(assert (=> b!3868783 (= lt!1346083 (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1346082))))))

(declare-fun b!3868784 () Bool)

(declare-fun e!2392685 () Bool)

(declare-fun lt!1346081 () tuple2!40304)

(assert (=> b!3868784 (= e!2392685 (not (isEmpty!24366 (_1!23286 lt!1346081))))))

(declare-fun b!3868785 () Bool)

(declare-fun e!2392684 () Bool)

(assert (=> b!3868785 (= e!2392684 (= (_2!23286 lt!1346081) (_2!23285 (v!39085 lt!1345915))))))

(declare-fun b!3868786 () Bool)

(assert (=> b!3868786 (= e!2392684 e!2392685)))

(declare-fun res!1566947 () Bool)

(assert (=> b!3868786 (= res!1566947 (< (size!30882 (_2!23286 lt!1346081)) (size!30882 (_2!23285 (v!39085 lt!1345915)))))))

(assert (=> b!3868786 (=> (not res!1566947) (not e!2392685))))

(declare-fun b!3868787 () Bool)

(assert (=> b!3868787 (= e!2392683 (tuple2!40305 Nil!41086 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun d!1145882 () Bool)

(assert (=> d!1145882 e!2392684))

(declare-fun c!673290 () Bool)

(assert (=> d!1145882 (= c!673290 (> (size!30884 (_1!23286 lt!1346081)) 0))))

(assert (=> d!1145882 (= lt!1346081 e!2392683)))

(declare-fun c!673291 () Bool)

(assert (=> d!1145882 (= c!673291 ((_ is Some!8787) lt!1346082))))

(assert (=> d!1145882 (= lt!1346082 (maxPrefix!3263 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1345915))))))

(assert (=> d!1145882 (= (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1345915))) lt!1346081)))

(assert (= (and d!1145882 c!673291) b!3868783))

(assert (= (and d!1145882 (not c!673291)) b!3868787))

(assert (= (and d!1145882 c!673290) b!3868786))

(assert (= (and d!1145882 (not c!673290)) b!3868785))

(assert (= (and b!3868786 res!1566947) b!3868784))

(declare-fun m!4424795 () Bool)

(assert (=> b!3868783 m!4424795))

(declare-fun m!4424797 () Bool)

(assert (=> b!3868784 m!4424797))

(declare-fun m!4424799 () Bool)

(assert (=> b!3868786 m!4424799))

(assert (=> b!3868786 m!4424347))

(declare-fun m!4424801 () Bool)

(assert (=> d!1145882 m!4424801))

(declare-fun m!4424803 () Bool)

(assert (=> d!1145882 m!4424803))

(assert (=> b!3868456 d!1145882))

(declare-fun d!1145884 () Bool)

(assert (=> d!1145884 (isPrefix!3469 lt!1345938 (++!10497 lt!1345938 (_2!23285 (v!39085 lt!1345915))))))

(declare-fun lt!1346084 () Unit!58863)

(assert (=> d!1145884 (= lt!1346084 (choose!22829 lt!1345938 (_2!23285 (v!39085 lt!1345915))))))

(assert (=> d!1145884 (= (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345938 (_2!23285 (v!39085 lt!1345915))) lt!1346084)))

(declare-fun bs!583378 () Bool)

(assert (= bs!583378 d!1145884))

(assert (=> bs!583378 m!4424407))

(assert (=> bs!583378 m!4424407))

(declare-fun m!4424805 () Bool)

(assert (=> bs!583378 m!4424805))

(declare-fun m!4424807 () Bool)

(assert (=> bs!583378 m!4424807))

(assert (=> b!3868456 d!1145884))

(declare-fun d!1145886 () Bool)

(declare-fun dynLambda!17686 (Int BalanceConc!24756) TokenValue!6600)

(assert (=> d!1145886 (= (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (seqFromList!4641 lt!1345938)) (dynLambda!17686 (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))) (seqFromList!4641 lt!1345938)))))

(declare-fun b_lambda!113015 () Bool)

(assert (=> (not b_lambda!113015) (not d!1145886)))

(declare-fun t!314208 () Bool)

(declare-fun tb!224297 () Bool)

(assert (=> (and b!3868493 (= (toValue!8798 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314208) tb!224297))

(declare-fun result!273184 () Bool)

(assert (=> tb!224297 (= result!273184 (inv!21 (dynLambda!17686 (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))) (seqFromList!4641 lt!1345938))))))

(declare-fun m!4424809 () Bool)

(assert (=> tb!224297 m!4424809))

(assert (=> d!1145886 t!314208))

(declare-fun b_and!289911 () Bool)

(assert (= b_and!289875 (and (=> t!314208 result!273184) b_and!289911)))

(declare-fun tb!224299 () Bool)

(declare-fun t!314210 () Bool)

(assert (=> (and b!3868457 (= (toValue!8798 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314210) tb!224299))

(declare-fun result!273188 () Bool)

(assert (= result!273188 result!273184))

(assert (=> d!1145886 t!314210))

(declare-fun b_and!289913 () Bool)

(assert (= b_and!289879 (and (=> t!314210 result!273188) b_and!289913)))

(declare-fun t!314212 () Bool)

(declare-fun tb!224301 () Bool)

(assert (=> (and b!3868461 (= (toValue!8798 (transformation!6370 (h!46507 rules!2768))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314212) tb!224301))

(declare-fun result!273190 () Bool)

(assert (= result!273190 result!273184))

(assert (=> d!1145886 t!314212))

(declare-fun b_and!289915 () Bool)

(assert (= b_and!289883 (and (=> t!314212 result!273190) b_and!289915)))

(assert (=> d!1145886 m!4424385))

(declare-fun m!4424811 () Bool)

(assert (=> d!1145886 m!4424811))

(assert (=> b!3868456 d!1145886))

(declare-fun b!3868791 () Bool)

(declare-fun res!1566948 () Bool)

(declare-fun e!2392689 () Bool)

(assert (=> b!3868791 (=> (not res!1566948) (not e!2392689))))

(assert (=> b!3868791 (= res!1566948 (= (head!8184 lt!1345938) (head!8184 lt!1345921)))))

(declare-fun d!1145888 () Bool)

(declare-fun e!2392690 () Bool)

(assert (=> d!1145888 e!2392690))

(declare-fun res!1566949 () Bool)

(assert (=> d!1145888 (=> res!1566949 e!2392690)))

(declare-fun lt!1346085 () Bool)

(assert (=> d!1145888 (= res!1566949 (not lt!1346085))))

(declare-fun e!2392691 () Bool)

(assert (=> d!1145888 (= lt!1346085 e!2392691)))

(declare-fun res!1566951 () Bool)

(assert (=> d!1145888 (=> res!1566951 e!2392691)))

(assert (=> d!1145888 (= res!1566951 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145888 (= (isPrefix!3469 lt!1345938 lt!1345921) lt!1346085)))

(declare-fun b!3868790 () Bool)

(assert (=> b!3868790 (= e!2392691 e!2392689)))

(declare-fun res!1566950 () Bool)

(assert (=> b!3868790 (=> (not res!1566950) (not e!2392689))))

(assert (=> b!3868790 (= res!1566950 (not ((_ is Nil!41085) lt!1345921)))))

(declare-fun b!3868792 () Bool)

(assert (=> b!3868792 (= e!2392689 (isPrefix!3469 (tail!5901 lt!1345938) (tail!5901 lt!1345921)))))

(declare-fun b!3868793 () Bool)

(assert (=> b!3868793 (= e!2392690 (>= (size!30882 lt!1345921) (size!30882 lt!1345938)))))

(assert (= (and d!1145888 (not res!1566951)) b!3868790))

(assert (= (and b!3868790 res!1566950) b!3868791))

(assert (= (and b!3868791 res!1566948) b!3868792))

(assert (= (and d!1145888 (not res!1566949)) b!3868793))

(assert (=> b!3868791 m!4424589))

(declare-fun m!4424813 () Bool)

(assert (=> b!3868791 m!4424813))

(assert (=> b!3868792 m!4424593))

(declare-fun m!4424815 () Bool)

(assert (=> b!3868792 m!4424815))

(assert (=> b!3868792 m!4424593))

(assert (=> b!3868792 m!4424815))

(declare-fun m!4424817 () Bool)

(assert (=> b!3868792 m!4424817))

(declare-fun m!4424819 () Bool)

(assert (=> b!3868793 m!4424819))

(assert (=> b!3868793 m!4424395))

(assert (=> b!3868456 d!1145888))

(declare-fun d!1145890 () Bool)

(declare-fun lt!1346088 () BalanceConc!24756)

(assert (=> d!1145890 (= (list!15284 lt!1346088) (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915))))))

(assert (=> d!1145890 (= lt!1346088 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))) (value!202179 (_1!23285 (v!39085 lt!1345915)))))))

(assert (=> d!1145890 (= (charsOf!4198 (_1!23285 (v!39085 lt!1345915))) lt!1346088)))

(declare-fun b_lambda!113017 () Bool)

(assert (=> (not b_lambda!113017) (not d!1145890)))

(declare-fun tb!224303 () Bool)

(declare-fun t!314214 () Bool)

(assert (=> (and b!3868493 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314214) tb!224303))

(declare-fun b!3868794 () Bool)

(declare-fun e!2392692 () Bool)

(declare-fun tp!1172984 () Bool)

(assert (=> b!3868794 (= e!2392692 (and (inv!55245 (c!673229 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))) (value!202179 (_1!23285 (v!39085 lt!1345915)))))) tp!1172984))))

(declare-fun result!273192 () Bool)

(assert (=> tb!224303 (= result!273192 (and (inv!55246 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))) (value!202179 (_1!23285 (v!39085 lt!1345915))))) e!2392692))))

(assert (= tb!224303 b!3868794))

(declare-fun m!4424821 () Bool)

(assert (=> b!3868794 m!4424821))

(declare-fun m!4424823 () Bool)

(assert (=> tb!224303 m!4424823))

(assert (=> d!1145890 t!314214))

(declare-fun b_and!289917 () Bool)

(assert (= b_and!289887 (and (=> t!314214 result!273192) b_and!289917)))

(declare-fun tb!224305 () Bool)

(declare-fun t!314216 () Bool)

(assert (=> (and b!3868457 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314216) tb!224305))

(declare-fun result!273194 () Bool)

(assert (= result!273194 result!273192))

(assert (=> d!1145890 t!314216))

(declare-fun b_and!289919 () Bool)

(assert (= b_and!289889 (and (=> t!314216 result!273194) b_and!289919)))

(declare-fun tb!224307 () Bool)

(declare-fun t!314218 () Bool)

(assert (=> (and b!3868461 (= (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314218) tb!224307))

(declare-fun result!273196 () Bool)

(assert (= result!273196 result!273192))

(assert (=> d!1145890 t!314218))

(declare-fun b_and!289921 () Bool)

(assert (= b_and!289891 (and (=> t!314218 result!273196) b_and!289921)))

(declare-fun m!4424825 () Bool)

(assert (=> d!1145890 m!4424825))

(declare-fun m!4424827 () Bool)

(assert (=> d!1145890 m!4424827))

(assert (=> b!3868456 d!1145890))

(declare-fun d!1145892 () Bool)

(declare-fun res!1566956 () Bool)

(declare-fun e!2392695 () Bool)

(assert (=> d!1145892 (=> (not res!1566956) (not e!2392695))))

(declare-fun validRegex!5130 (Regex!11275) Bool)

(assert (=> d!1145892 (= res!1566956 (validRegex!5130 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915))))))))

(assert (=> d!1145892 (= (ruleValid!2322 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) e!2392695)))

(declare-fun b!3868799 () Bool)

(declare-fun res!1566957 () Bool)

(assert (=> b!3868799 (=> (not res!1566957) (not e!2392695))))

(declare-fun nullable!3931 (Regex!11275) Bool)

(assert (=> b!3868799 (= res!1566957 (not (nullable!3931 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))))))

(declare-fun b!3868800 () Bool)

(assert (=> b!3868800 (= e!2392695 (not (= (tag!7230 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (String!46719 ""))))))

(assert (= (and d!1145892 res!1566956) b!3868799))

(assert (= (and b!3868799 res!1566957) b!3868800))

(declare-fun m!4424829 () Bool)

(assert (=> d!1145892 m!4424829))

(declare-fun m!4424831 () Bool)

(assert (=> b!3868799 m!4424831))

(assert (=> b!3868456 d!1145892))

(declare-fun d!1145894 () Bool)

(assert (=> d!1145894 (= (_2!23285 (v!39085 lt!1345915)) lt!1345941)))

(declare-fun lt!1346089 () Unit!58863)

(assert (=> d!1145894 (= lt!1346089 (choose!22831 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345941 lt!1345942))))

(assert (=> d!1145894 (isPrefix!3469 lt!1345938 lt!1345942)))

(assert (=> d!1145894 (= (lemmaSamePrefixThenSameSuffix!1690 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 lt!1345941 lt!1345942) lt!1346089)))

(declare-fun bs!583379 () Bool)

(assert (= bs!583379 d!1145894))

(declare-fun m!4424833 () Bool)

(assert (=> bs!583379 m!4424833))

(assert (=> bs!583379 m!4424435))

(assert (=> b!3868456 d!1145894))

(declare-fun d!1145896 () Bool)

(declare-fun fromListB!2141 (List!41209) BalanceConc!24756)

(assert (=> d!1145896 (= (seqFromList!4641 lt!1345938) (fromListB!2141 lt!1345938))))

(declare-fun bs!583380 () Bool)

(assert (= bs!583380 d!1145896))

(declare-fun m!4424835 () Bool)

(assert (=> bs!583380 m!4424835))

(assert (=> b!3868456 d!1145896))

(declare-fun d!1145898 () Bool)

(assert (=> d!1145898 (ruleValid!2322 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))))))

(declare-fun lt!1346092 () Unit!58863)

(declare-fun choose!22835 (LexerInterface!5959 Rule!12540 List!41211) Unit!58863)

(assert (=> d!1145898 (= lt!1346092 (choose!22835 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) rules!2768))))

(assert (=> d!1145898 (contains!8283 rules!2768 (rule!9252 (_1!23285 (v!39085 lt!1345915))))))

(assert (=> d!1145898 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1402 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) rules!2768) lt!1346092)))

(declare-fun bs!583381 () Bool)

(assert (= bs!583381 d!1145898))

(assert (=> bs!583381 m!4424399))

(declare-fun m!4424837 () Bool)

(assert (=> bs!583381 m!4424837))

(declare-fun m!4424839 () Bool)

(assert (=> bs!583381 m!4424839))

(assert (=> b!3868456 d!1145898))

(declare-fun d!1145900 () Bool)

(declare-fun list!15286 (Conc!12581) List!41209)

(assert (=> d!1145900 (= (list!15284 (charsOf!4198 (_1!23285 (v!39085 lt!1345915)))) (list!15286 (c!673229 (charsOf!4198 (_1!23285 (v!39085 lt!1345915))))))))

(declare-fun bs!583382 () Bool)

(assert (= bs!583382 d!1145900))

(declare-fun m!4424841 () Bool)

(assert (=> bs!583382 m!4424841))

(assert (=> b!3868456 d!1145900))

(declare-fun d!1145902 () Bool)

(declare-fun lt!1346093 () List!41209)

(assert (=> d!1145902 (= (++!10497 lt!1345938 lt!1346093) lt!1345942)))

(declare-fun e!2392696 () List!41209)

(assert (=> d!1145902 (= lt!1346093 e!2392696)))

(declare-fun c!673292 () Bool)

(assert (=> d!1145902 (= c!673292 ((_ is Cons!41085) lt!1345938))))

(assert (=> d!1145902 (>= (size!30882 lt!1345942) (size!30882 lt!1345938))))

(assert (=> d!1145902 (= (getSuffix!1924 lt!1345942 lt!1345938) lt!1346093)))

(declare-fun b!3868801 () Bool)

(assert (=> b!3868801 (= e!2392696 (getSuffix!1924 (tail!5901 lt!1345942) (t!314180 lt!1345938)))))

(declare-fun b!3868802 () Bool)

(assert (=> b!3868802 (= e!2392696 lt!1345942)))

(assert (= (and d!1145902 c!673292) b!3868801))

(assert (= (and d!1145902 (not c!673292)) b!3868802))

(declare-fun m!4424843 () Bool)

(assert (=> d!1145902 m!4424843))

(assert (=> d!1145902 m!4424331))

(assert (=> d!1145902 m!4424395))

(assert (=> b!3868801 m!4424429))

(assert (=> b!3868801 m!4424429))

(declare-fun m!4424845 () Bool)

(assert (=> b!3868801 m!4424845))

(assert (=> b!3868456 d!1145902))

(declare-fun d!1145904 () Bool)

(declare-fun lt!1346100 () Int)

(assert (=> d!1145904 (>= lt!1346100 0)))

(declare-fun e!2392701 () Int)

(assert (=> d!1145904 (= lt!1346100 e!2392701)))

(declare-fun c!673297 () Bool)

(assert (=> d!1145904 (= c!673297 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145904 (= (size!30882 lt!1345938) lt!1346100)))

(declare-fun b!3868811 () Bool)

(assert (=> b!3868811 (= e!2392701 0)))

(declare-fun b!3868812 () Bool)

(assert (=> b!3868812 (= e!2392701 (+ 1 (size!30882 (t!314180 lt!1345938))))))

(assert (= (and d!1145904 c!673297) b!3868811))

(assert (= (and d!1145904 (not c!673297)) b!3868812))

(declare-fun m!4424847 () Bool)

(assert (=> b!3868812 m!4424847))

(assert (=> b!3868456 d!1145904))

(declare-fun d!1145906 () Bool)

(assert (=> d!1145906 (= (size!30881 (_1!23285 (v!39085 lt!1345915))) (size!30882 (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915)))))))

(declare-fun Unit!58873 () Unit!58863)

(assert (=> d!1145906 (= (lemmaCharactersSize!1031 (_1!23285 (v!39085 lt!1345915))) Unit!58873)))

(declare-fun bs!583383 () Bool)

(assert (= bs!583383 d!1145906))

(assert (=> bs!583383 m!4424311))

(assert (=> b!3868456 d!1145906))

(declare-fun b!3868825 () Bool)

(declare-fun e!2392708 () List!41209)

(assert (=> b!3868825 (= e!2392708 (_2!23285 (v!39085 lt!1345915)))))

(declare-fun b!3868828 () Bool)

(assert (=> b!3868828 (= e!2392708 (Cons!41085 (h!46505 lt!1345938) (++!10497 (t!314180 lt!1345938) (_2!23285 (v!39085 lt!1345915)))))))

(declare-fun d!1145908 () Bool)

(declare-fun e!2392709 () Bool)

(assert (=> d!1145908 e!2392709))

(declare-fun res!1566972 () Bool)

(assert (=> d!1145908 (=> (not res!1566972) (not e!2392709))))

(declare-fun lt!1346107 () List!41209)

(assert (=> d!1145908 (= res!1566972 (= (content!6132 lt!1346107) ((_ map or) (content!6132 lt!1345938) (content!6132 (_2!23285 (v!39085 lt!1345915))))))))

(assert (=> d!1145908 (= lt!1346107 e!2392708)))

(declare-fun c!673298 () Bool)

(assert (=> d!1145908 (= c!673298 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145908 (= (++!10497 lt!1345938 (_2!23285 (v!39085 lt!1345915))) lt!1346107)))

(declare-fun b!3868829 () Bool)

(declare-fun res!1566973 () Bool)

(assert (=> b!3868829 (=> (not res!1566973) (not e!2392709))))

(assert (=> b!3868829 (= res!1566973 (= (size!30882 lt!1346107) (+ (size!30882 lt!1345938) (size!30882 (_2!23285 (v!39085 lt!1345915))))))))

(declare-fun b!3868830 () Bool)

(assert (=> b!3868830 (= e!2392709 (or (not (= (_2!23285 (v!39085 lt!1345915)) Nil!41085)) (= lt!1346107 lt!1345938)))))

(assert (= (and d!1145908 c!673298) b!3868825))

(assert (= (and d!1145908 (not c!673298)) b!3868828))

(assert (= (and d!1145908 res!1566972) b!3868829))

(assert (= (and b!3868829 res!1566973) b!3868830))

(declare-fun m!4424849 () Bool)

(assert (=> b!3868828 m!4424849))

(declare-fun m!4424851 () Bool)

(assert (=> d!1145908 m!4424851))

(assert (=> d!1145908 m!4424575))

(declare-fun m!4424853 () Bool)

(assert (=> d!1145908 m!4424853))

(declare-fun m!4424855 () Bool)

(assert (=> b!3868829 m!4424855))

(assert (=> b!3868829 m!4424395))

(assert (=> b!3868829 m!4424347))

(assert (=> b!3868456 d!1145908))

(declare-fun b!3868831 () Bool)

(declare-fun e!2392710 () List!41209)

(assert (=> b!3868831 (= e!2392710 lt!1345945)))

(declare-fun b!3868832 () Bool)

(assert (=> b!3868832 (= e!2392710 (Cons!41085 (h!46505 lt!1345938) (++!10497 (t!314180 lt!1345938) lt!1345945)))))

(declare-fun d!1145910 () Bool)

(declare-fun e!2392711 () Bool)

(assert (=> d!1145910 e!2392711))

(declare-fun res!1566974 () Bool)

(assert (=> d!1145910 (=> (not res!1566974) (not e!2392711))))

(declare-fun lt!1346108 () List!41209)

(assert (=> d!1145910 (= res!1566974 (= (content!6132 lt!1346108) ((_ map or) (content!6132 lt!1345938) (content!6132 lt!1345945))))))

(assert (=> d!1145910 (= lt!1346108 e!2392710)))

(declare-fun c!673299 () Bool)

(assert (=> d!1145910 (= c!673299 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145910 (= (++!10497 lt!1345938 lt!1345945) lt!1346108)))

(declare-fun b!3868833 () Bool)

(declare-fun res!1566975 () Bool)

(assert (=> b!3868833 (=> (not res!1566975) (not e!2392711))))

(assert (=> b!3868833 (= res!1566975 (= (size!30882 lt!1346108) (+ (size!30882 lt!1345938) (size!30882 lt!1345945))))))

(declare-fun b!3868834 () Bool)

(assert (=> b!3868834 (= e!2392711 (or (not (= lt!1345945 Nil!41085)) (= lt!1346108 lt!1345938)))))

(assert (= (and d!1145910 c!673299) b!3868831))

(assert (= (and d!1145910 (not c!673299)) b!3868832))

(assert (= (and d!1145910 res!1566974) b!3868833))

(assert (= (and b!3868833 res!1566975) b!3868834))

(declare-fun m!4424857 () Bool)

(assert (=> b!3868832 m!4424857))

(declare-fun m!4424859 () Bool)

(assert (=> d!1145910 m!4424859))

(assert (=> d!1145910 m!4424575))

(declare-fun m!4424861 () Bool)

(assert (=> d!1145910 m!4424861))

(declare-fun m!4424863 () Bool)

(assert (=> b!3868833 m!4424863))

(assert (=> b!3868833 m!4424395))

(declare-fun m!4424865 () Bool)

(assert (=> b!3868833 m!4424865))

(assert (=> b!3868477 d!1145910))

(declare-fun b!3868835 () Bool)

(declare-fun e!2392712 () List!41209)

(assert (=> b!3868835 (= e!2392712 suffix!1176)))

(declare-fun b!3868836 () Bool)

(assert (=> b!3868836 (= e!2392712 (Cons!41085 (h!46505 lt!1345930) (++!10497 (t!314180 lt!1345930) suffix!1176)))))

(declare-fun d!1145912 () Bool)

(declare-fun e!2392713 () Bool)

(assert (=> d!1145912 e!2392713))

(declare-fun res!1566976 () Bool)

(assert (=> d!1145912 (=> (not res!1566976) (not e!2392713))))

(declare-fun lt!1346109 () List!41209)

(assert (=> d!1145912 (= res!1566976 (= (content!6132 lt!1346109) ((_ map or) (content!6132 lt!1345930) (content!6132 suffix!1176))))))

(assert (=> d!1145912 (= lt!1346109 e!2392712)))

(declare-fun c!673300 () Bool)

(assert (=> d!1145912 (= c!673300 ((_ is Nil!41085) lt!1345930))))

(assert (=> d!1145912 (= (++!10497 lt!1345930 suffix!1176) lt!1346109)))

(declare-fun b!3868837 () Bool)

(declare-fun res!1566977 () Bool)

(assert (=> b!3868837 (=> (not res!1566977) (not e!2392713))))

(assert (=> b!3868837 (= res!1566977 (= (size!30882 lt!1346109) (+ (size!30882 lt!1345930) (size!30882 suffix!1176))))))

(declare-fun b!3868838 () Bool)

(assert (=> b!3868838 (= e!2392713 (or (not (= suffix!1176 Nil!41085)) (= lt!1346109 lt!1345930)))))

(assert (= (and d!1145912 c!673300) b!3868835))

(assert (= (and d!1145912 (not c!673300)) b!3868836))

(assert (= (and d!1145912 res!1566976) b!3868837))

(assert (= (and b!3868837 res!1566977) b!3868838))

(declare-fun m!4424867 () Bool)

(assert (=> b!3868836 m!4424867))

(declare-fun m!4424869 () Bool)

(assert (=> d!1145912 m!4424869))

(assert (=> d!1145912 m!4424577))

(assert (=> d!1145912 m!4424789))

(declare-fun m!4424871 () Bool)

(assert (=> b!3868837 m!4424871))

(assert (=> b!3868837 m!4424581))

(assert (=> b!3868837 m!4424345))

(assert (=> b!3868477 d!1145912))

(declare-fun d!1145914 () Bool)

(assert (=> d!1145914 (= (++!10497 (++!10497 lt!1345938 lt!1345930) suffix!1176) (++!10497 lt!1345938 (++!10497 lt!1345930 suffix!1176)))))

(declare-fun lt!1346112 () Unit!58863)

(declare-fun choose!22836 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> d!1145914 (= lt!1346112 (choose!22836 lt!1345938 lt!1345930 suffix!1176))))

(assert (=> d!1145914 (= (lemmaConcatAssociativity!2216 lt!1345938 lt!1345930 suffix!1176) lt!1346112)))

(declare-fun bs!583384 () Bool)

(assert (= bs!583384 d!1145914))

(assert (=> bs!583384 m!4424335))

(declare-fun m!4424873 () Bool)

(assert (=> bs!583384 m!4424873))

(assert (=> bs!583384 m!4424277))

(assert (=> bs!583384 m!4424335))

(declare-fun m!4424875 () Bool)

(assert (=> bs!583384 m!4424875))

(assert (=> bs!583384 m!4424277))

(declare-fun m!4424877 () Bool)

(assert (=> bs!583384 m!4424877))

(assert (=> b!3868477 d!1145914))

(declare-fun d!1145916 () Bool)

(assert (=> d!1145916 (= (inv!55240 (tag!7230 (rule!9252 (h!46506 suffixTokens!72)))) (= (mod (str.len (value!202178 (tag!7230 (rule!9252 (h!46506 suffixTokens!72))))) 2) 0))))

(assert (=> b!3868455 d!1145916))

(declare-fun d!1145918 () Bool)

(declare-fun res!1566978 () Bool)

(declare-fun e!2392714 () Bool)

(assert (=> d!1145918 (=> (not res!1566978) (not e!2392714))))

(assert (=> d!1145918 (= res!1566978 (semiInverseModEq!2731 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toValue!8798 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))))))

(assert (=> d!1145918 (= (inv!55243 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) e!2392714)))

(declare-fun b!3868839 () Bool)

(assert (=> b!3868839 (= e!2392714 (equivClasses!2630 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toValue!8798 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))))))

(assert (= (and d!1145918 res!1566978) b!3868839))

(declare-fun m!4424879 () Bool)

(assert (=> d!1145918 m!4424879))

(declare-fun m!4424881 () Bool)

(assert (=> b!3868839 m!4424881))

(assert (=> b!3868455 d!1145918))

(declare-fun b!3868840 () Bool)

(declare-fun e!2392715 () List!41210)

(assert (=> b!3868840 (= e!2392715 suffixTokens!72)))

(declare-fun b!3868841 () Bool)

(assert (=> b!3868841 (= e!2392715 (Cons!41086 (h!46506 (tail!5899 prefixTokens!80)) (++!10498 (t!314181 (tail!5899 prefixTokens!80)) suffixTokens!72)))))

(declare-fun lt!1346113 () List!41210)

(declare-fun b!3868843 () Bool)

(declare-fun e!2392716 () Bool)

(assert (=> b!3868843 (= e!2392716 (or (not (= suffixTokens!72 Nil!41086)) (= lt!1346113 (tail!5899 prefixTokens!80))))))

(declare-fun d!1145920 () Bool)

(assert (=> d!1145920 e!2392716))

(declare-fun res!1566979 () Bool)

(assert (=> d!1145920 (=> (not res!1566979) (not e!2392716))))

(assert (=> d!1145920 (= res!1566979 (= (content!6131 lt!1346113) ((_ map or) (content!6131 (tail!5899 prefixTokens!80)) (content!6131 suffixTokens!72))))))

(assert (=> d!1145920 (= lt!1346113 e!2392715)))

(declare-fun c!673301 () Bool)

(assert (=> d!1145920 (= c!673301 ((_ is Nil!41086) (tail!5899 prefixTokens!80)))))

(assert (=> d!1145920 (= (++!10498 (tail!5899 prefixTokens!80) suffixTokens!72) lt!1346113)))

(declare-fun b!3868842 () Bool)

(declare-fun res!1566980 () Bool)

(assert (=> b!3868842 (=> (not res!1566980) (not e!2392716))))

(assert (=> b!3868842 (= res!1566980 (= (size!30884 lt!1346113) (+ (size!30884 (tail!5899 prefixTokens!80)) (size!30884 suffixTokens!72))))))

(assert (= (and d!1145920 c!673301) b!3868840))

(assert (= (and d!1145920 (not c!673301)) b!3868841))

(assert (= (and d!1145920 res!1566979) b!3868842))

(assert (= (and b!3868842 res!1566980) b!3868843))

(declare-fun m!4424883 () Bool)

(assert (=> b!3868841 m!4424883))

(declare-fun m!4424885 () Bool)

(assert (=> d!1145920 m!4424885))

(assert (=> d!1145920 m!4424357))

(declare-fun m!4424887 () Bool)

(assert (=> d!1145920 m!4424887))

(assert (=> d!1145920 m!4424535))

(declare-fun m!4424889 () Bool)

(assert (=> b!3868842 m!4424889))

(assert (=> b!3868842 m!4424357))

(declare-fun m!4424891 () Bool)

(assert (=> b!3868842 m!4424891))

(assert (=> b!3868842 m!4424541))

(assert (=> b!3868484 d!1145920))

(declare-fun d!1145922 () Bool)

(assert (=> d!1145922 (= (tail!5899 prefixTokens!80) (t!314181 prefixTokens!80))))

(assert (=> b!3868484 d!1145922))

(declare-fun b!3868845 () Bool)

(declare-fun res!1566981 () Bool)

(declare-fun e!2392717 () Bool)

(assert (=> b!3868845 (=> (not res!1566981) (not e!2392717))))

(assert (=> b!3868845 (= res!1566981 (= (head!8184 lt!1345930) (head!8184 lt!1345945)))))

(declare-fun d!1145924 () Bool)

(declare-fun e!2392718 () Bool)

(assert (=> d!1145924 e!2392718))

(declare-fun res!1566982 () Bool)

(assert (=> d!1145924 (=> res!1566982 e!2392718)))

(declare-fun lt!1346114 () Bool)

(assert (=> d!1145924 (= res!1566982 (not lt!1346114))))

(declare-fun e!2392719 () Bool)

(assert (=> d!1145924 (= lt!1346114 e!2392719)))

(declare-fun res!1566984 () Bool)

(assert (=> d!1145924 (=> res!1566984 e!2392719)))

(assert (=> d!1145924 (= res!1566984 ((_ is Nil!41085) lt!1345930))))

(assert (=> d!1145924 (= (isPrefix!3469 lt!1345930 lt!1345945) lt!1346114)))

(declare-fun b!3868844 () Bool)

(assert (=> b!3868844 (= e!2392719 e!2392717)))

(declare-fun res!1566983 () Bool)

(assert (=> b!3868844 (=> (not res!1566983) (not e!2392717))))

(assert (=> b!3868844 (= res!1566983 (not ((_ is Nil!41085) lt!1345945)))))

(declare-fun b!3868846 () Bool)

(assert (=> b!3868846 (= e!2392717 (isPrefix!3469 (tail!5901 lt!1345930) (tail!5901 lt!1345945)))))

(declare-fun b!3868847 () Bool)

(assert (=> b!3868847 (= e!2392718 (>= (size!30882 lt!1345945) (size!30882 lt!1345930)))))

(assert (= (and d!1145924 (not res!1566984)) b!3868844))

(assert (= (and b!3868844 res!1566983) b!3868845))

(assert (= (and b!3868845 res!1566981) b!3868846))

(assert (= (and d!1145924 (not res!1566982)) b!3868847))

(declare-fun m!4424893 () Bool)

(assert (=> b!3868845 m!4424893))

(declare-fun m!4424895 () Bool)

(assert (=> b!3868845 m!4424895))

(declare-fun m!4424897 () Bool)

(assert (=> b!3868846 m!4424897))

(declare-fun m!4424899 () Bool)

(assert (=> b!3868846 m!4424899))

(assert (=> b!3868846 m!4424897))

(assert (=> b!3868846 m!4424899))

(declare-fun m!4424901 () Bool)

(assert (=> b!3868846 m!4424901))

(assert (=> b!3868847 m!4424865))

(assert (=> b!3868847 m!4424581))

(assert (=> b!3868484 d!1145924))

(declare-fun d!1145926 () Bool)

(assert (=> d!1145926 (isPrefix!3469 lt!1345930 (++!10497 lt!1345930 suffix!1176))))

(declare-fun lt!1346115 () Unit!58863)

(assert (=> d!1145926 (= lt!1346115 (choose!22829 lt!1345930 suffix!1176))))

(assert (=> d!1145926 (= (lemmaConcatTwoListThenFirstIsPrefix!2332 lt!1345930 suffix!1176) lt!1346115)))

(declare-fun bs!583385 () Bool)

(assert (= bs!583385 d!1145926))

(assert (=> bs!583385 m!4424335))

(assert (=> bs!583385 m!4424335))

(declare-fun m!4424903 () Bool)

(assert (=> bs!583385 m!4424903))

(declare-fun m!4424905 () Bool)

(assert (=> bs!583385 m!4424905))

(assert (=> b!3868484 d!1145926))

(declare-fun d!1145928 () Bool)

(declare-fun lt!1346116 () Int)

(assert (=> d!1145928 (>= lt!1346116 0)))

(declare-fun e!2392720 () Int)

(assert (=> d!1145928 (= lt!1346116 e!2392720)))

(declare-fun c!673302 () Bool)

(assert (=> d!1145928 (= c!673302 ((_ is Nil!41085) (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915)))))))

(assert (=> d!1145928 (= (size!30882 (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915)))) lt!1346116)))

(declare-fun b!3868848 () Bool)

(assert (=> b!3868848 (= e!2392720 0)))

(declare-fun b!3868849 () Bool)

(assert (=> b!3868849 (= e!2392720 (+ 1 (size!30882 (t!314180 (originalCharacters!6970 (_1!23285 (v!39085 lt!1345915)))))))))

(assert (= (and d!1145928 c!673302) b!3868848))

(assert (= (and d!1145928 (not c!673302)) b!3868849))

(declare-fun m!4424907 () Bool)

(assert (=> b!3868849 m!4424907))

(assert (=> b!3868483 d!1145928))

(declare-fun b!3868859 () Bool)

(declare-fun e!2392725 () List!41210)

(assert (=> b!3868859 (= e!2392725 (_1!23286 lt!1345913))))

(declare-fun b!3868860 () Bool)

(assert (=> b!3868860 (= e!2392725 (Cons!41086 (h!46506 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086)) (++!10498 (t!314181 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086)) (_1!23286 lt!1345913))))))

(declare-fun b!3868862 () Bool)

(declare-fun lt!1346122 () List!41210)

(declare-fun e!2392726 () Bool)

(assert (=> b!3868862 (= e!2392726 (or (not (= (_1!23286 lt!1345913) Nil!41086)) (= lt!1346122 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086))))))

(declare-fun d!1145930 () Bool)

(assert (=> d!1145930 e!2392726))

(declare-fun res!1566992 () Bool)

(assert (=> d!1145930 (=> (not res!1566992) (not e!2392726))))

(assert (=> d!1145930 (= res!1566992 (= (content!6131 lt!1346122) ((_ map or) (content!6131 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086)) (content!6131 (_1!23286 lt!1345913)))))))

(assert (=> d!1145930 (= lt!1346122 e!2392725)))

(declare-fun c!673304 () Bool)

(assert (=> d!1145930 (= c!673304 ((_ is Nil!41086) (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086)))))

(assert (=> d!1145930 (= (++!10498 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086) (_1!23286 lt!1345913)) lt!1346122)))

(declare-fun b!3868861 () Bool)

(declare-fun res!1566993 () Bool)

(assert (=> b!3868861 (=> (not res!1566993) (not e!2392726))))

(assert (=> b!3868861 (= res!1566993 (= (size!30884 lt!1346122) (+ (size!30884 (Cons!41086 (_1!23285 (v!39085 lt!1345915)) Nil!41086)) (size!30884 (_1!23286 lt!1345913)))))))

(assert (= (and d!1145930 c!673304) b!3868859))

(assert (= (and d!1145930 (not c!673304)) b!3868860))

(assert (= (and d!1145930 res!1566992) b!3868861))

(assert (= (and b!3868861 res!1566993) b!3868862))

(declare-fun m!4424909 () Bool)

(assert (=> b!3868860 m!4424909))

(declare-fun m!4424911 () Bool)

(assert (=> d!1145930 m!4424911))

(declare-fun m!4424913 () Bool)

(assert (=> d!1145930 m!4424913))

(declare-fun m!4424915 () Bool)

(assert (=> d!1145930 m!4424915))

(declare-fun m!4424917 () Bool)

(assert (=> b!3868861 m!4424917))

(declare-fun m!4424919 () Bool)

(assert (=> b!3868861 m!4424919))

(declare-fun m!4424921 () Bool)

(assert (=> b!3868861 m!4424921))

(assert (=> b!3868464 d!1145930))

(declare-fun b!3868864 () Bool)

(declare-fun res!1566994 () Bool)

(declare-fun e!2392727 () Bool)

(assert (=> b!3868864 (=> (not res!1566994) (not e!2392727))))

(assert (=> b!3868864 (= res!1566994 (= (head!8184 lt!1345938) (head!8184 prefix!426)))))

(declare-fun d!1145932 () Bool)

(declare-fun e!2392728 () Bool)

(assert (=> d!1145932 e!2392728))

(declare-fun res!1566995 () Bool)

(assert (=> d!1145932 (=> res!1566995 e!2392728)))

(declare-fun lt!1346123 () Bool)

(assert (=> d!1145932 (= res!1566995 (not lt!1346123))))

(declare-fun e!2392729 () Bool)

(assert (=> d!1145932 (= lt!1346123 e!2392729)))

(declare-fun res!1566997 () Bool)

(assert (=> d!1145932 (=> res!1566997 e!2392729)))

(assert (=> d!1145932 (= res!1566997 ((_ is Nil!41085) lt!1345938))))

(assert (=> d!1145932 (= (isPrefix!3469 lt!1345938 prefix!426) lt!1346123)))

(declare-fun b!3868863 () Bool)

(assert (=> b!3868863 (= e!2392729 e!2392727)))

(declare-fun res!1566996 () Bool)

(assert (=> b!3868863 (=> (not res!1566996) (not e!2392727))))

(assert (=> b!3868863 (= res!1566996 (not ((_ is Nil!41085) prefix!426)))))

(declare-fun b!3868865 () Bool)

(assert (=> b!3868865 (= e!2392727 (isPrefix!3469 (tail!5901 lt!1345938) (tail!5901 prefix!426)))))

(declare-fun b!3868866 () Bool)

(assert (=> b!3868866 (= e!2392728 (>= (size!30882 prefix!426) (size!30882 lt!1345938)))))

(assert (= (and d!1145932 (not res!1566997)) b!3868863))

(assert (= (and b!3868863 res!1566996) b!3868864))

(assert (= (and b!3868864 res!1566994) b!3868865))

(assert (= (and d!1145932 (not res!1566995)) b!3868866))

(assert (=> b!3868864 m!4424589))

(assert (=> b!3868864 m!4424423))

(assert (=> b!3868865 m!4424593))

(assert (=> b!3868865 m!4424427))

(assert (=> b!3868865 m!4424593))

(assert (=> b!3868865 m!4424427))

(declare-fun m!4424923 () Bool)

(assert (=> b!3868865 m!4424923))

(assert (=> b!3868866 m!4424351))

(assert (=> b!3868866 m!4424395))

(assert (=> b!3868485 d!1145932))

(assert (=> b!3868485 d!1145750))

(declare-fun d!1145934 () Bool)

(assert (=> d!1145934 (isPrefix!3469 lt!1345938 prefix!426)))

(declare-fun lt!1346126 () Unit!58863)

(declare-fun choose!22838 (List!41209 List!41209 List!41209) Unit!58863)

(assert (=> d!1145934 (= lt!1346126 (choose!22838 prefix!426 lt!1345938 lt!1345942))))

(assert (=> d!1145934 (isPrefix!3469 prefix!426 lt!1345942)))

(assert (=> d!1145934 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!219 prefix!426 lt!1345938 lt!1345942) lt!1346126)))

(declare-fun bs!583386 () Bool)

(assert (= bs!583386 d!1145934))

(assert (=> bs!583386 m!4424353))

(declare-fun m!4424953 () Bool)

(assert (=> bs!583386 m!4424953))

(assert (=> bs!583386 m!4424293))

(assert (=> b!3868485 d!1145934))

(assert (=> b!3868485 d!1145752))

(declare-fun d!1145936 () Bool)

(declare-fun lt!1346127 () Int)

(assert (=> d!1145936 (>= lt!1346127 0)))

(declare-fun e!2392730 () Int)

(assert (=> d!1145936 (= lt!1346127 e!2392730)))

(declare-fun c!673305 () Bool)

(assert (=> d!1145936 (= c!673305 ((_ is Nil!41085) prefix!426))))

(assert (=> d!1145936 (= (size!30882 prefix!426) lt!1346127)))

(declare-fun b!3868867 () Bool)

(assert (=> b!3868867 (= e!2392730 0)))

(declare-fun b!3868868 () Bool)

(assert (=> b!3868868 (= e!2392730 (+ 1 (size!30882 (t!314180 prefix!426))))))

(assert (= (and d!1145936 c!673305) b!3868867))

(assert (= (and d!1145936 (not c!673305)) b!3868868))

(declare-fun m!4424961 () Bool)

(assert (=> b!3868868 m!4424961))

(assert (=> b!3868485 d!1145936))

(declare-fun d!1145938 () Bool)

(assert (=> d!1145938 (= (inv!55240 (tag!7230 (rule!9252 (h!46506 prefixTokens!80)))) (= (mod (str.len (value!202178 (tag!7230 (rule!9252 (h!46506 prefixTokens!80))))) 2) 0))))

(assert (=> b!3868463 d!1145938))

(declare-fun d!1145940 () Bool)

(declare-fun res!1566998 () Bool)

(declare-fun e!2392731 () Bool)

(assert (=> d!1145940 (=> (not res!1566998) (not e!2392731))))

(assert (=> d!1145940 (= res!1566998 (semiInverseModEq!2731 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toValue!8798 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))))))

(assert (=> d!1145940 (= (inv!55243 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) e!2392731)))

(declare-fun b!3868869 () Bool)

(assert (=> b!3868869 (= e!2392731 (equivClasses!2630 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toValue!8798 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))))))

(assert (= (and d!1145940 res!1566998) b!3868869))

(declare-fun m!4424971 () Bool)

(assert (=> d!1145940 m!4424971))

(declare-fun m!4424973 () Bool)

(assert (=> b!3868869 m!4424973))

(assert (=> b!3868463 d!1145940))

(declare-fun d!1145944 () Bool)

(assert (=> d!1145944 (and (= lt!1345938 lt!1345938) (= (_2!23285 (v!39085 lt!1345915)) (_2!23285 lt!1345920)))))

(declare-fun lt!1346130 () Unit!58863)

(declare-fun choose!22839 (List!41209 List!41209 List!41209 List!41209) Unit!58863)

(assert (=> d!1145944 (= lt!1346130 (choose!22839 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 (_2!23285 lt!1345920)))))

(assert (=> d!1145944 (= (++!10497 lt!1345938 (_2!23285 (v!39085 lt!1345915))) (++!10497 lt!1345938 (_2!23285 lt!1345920)))))

(assert (=> d!1145944 (= (lemmaConcatSameAndSameSizesThenSameLists!454 lt!1345938 (_2!23285 (v!39085 lt!1345915)) lt!1345938 (_2!23285 lt!1345920)) lt!1346130)))

(declare-fun bs!583387 () Bool)

(assert (= bs!583387 d!1145944))

(declare-fun m!4424975 () Bool)

(assert (=> bs!583387 m!4424975))

(assert (=> bs!583387 m!4424407))

(declare-fun m!4424977 () Bool)

(assert (=> bs!583387 m!4424977))

(assert (=> b!3868460 d!1145944))

(declare-fun d!1145946 () Bool)

(assert (=> d!1145946 (not (= (lexList!1727 thiss!20629 rules!2768 (_2!23285 lt!1345920)) (tuple2!40305 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1346138 () Unit!58863)

(declare-fun choose!22840 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41210 List!41209) Unit!58863)

(assert (=> d!1145946 (= lt!1346138 (choose!22840 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91))))

(assert (=> d!1145946 (not (isEmpty!24367 rules!2768))))

(assert (=> d!1145946 (= (lemmaLexWithSmallerInputCannotProduceSameResults!30 thiss!20629 rules!2768 suffix!1176 (_2!23285 lt!1345920) suffixTokens!72 suffixResult!91) lt!1346138)))

(declare-fun bs!583389 () Bool)

(assert (= bs!583389 d!1145946))

(assert (=> bs!583389 m!4424355))

(declare-fun m!4424993 () Bool)

(assert (=> bs!583389 m!4424993))

(assert (=> bs!583389 m!4424305))

(assert (=> b!3868460 d!1145946))

(declare-fun b!3868880 () Bool)

(declare-fun e!2392739 () tuple2!40304)

(declare-fun lt!1346140 () Option!8788)

(declare-fun lt!1346141 () tuple2!40304)

(assert (=> b!3868880 (= e!2392739 (tuple2!40305 (Cons!41086 (_1!23285 (v!39085 lt!1346140)) (_1!23286 lt!1346141)) (_2!23286 lt!1346141)))))

(assert (=> b!3868880 (= lt!1346141 (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1346140))))))

(declare-fun b!3868881 () Bool)

(declare-fun e!2392741 () Bool)

(declare-fun lt!1346139 () tuple2!40304)

(assert (=> b!3868881 (= e!2392741 (not (isEmpty!24366 (_1!23286 lt!1346139))))))

(declare-fun b!3868882 () Bool)

(declare-fun e!2392740 () Bool)

(assert (=> b!3868882 (= e!2392740 (= (_2!23286 lt!1346139) suffix!1176))))

(declare-fun b!3868883 () Bool)

(assert (=> b!3868883 (= e!2392740 e!2392741)))

(declare-fun res!1567004 () Bool)

(assert (=> b!3868883 (= res!1567004 (< (size!30882 (_2!23286 lt!1346139)) (size!30882 suffix!1176)))))

(assert (=> b!3868883 (=> (not res!1567004) (not e!2392741))))

(declare-fun b!3868884 () Bool)

(assert (=> b!3868884 (= e!2392739 (tuple2!40305 Nil!41086 suffix!1176))))

(declare-fun d!1145958 () Bool)

(assert (=> d!1145958 e!2392740))

(declare-fun c!673308 () Bool)

(assert (=> d!1145958 (= c!673308 (> (size!30884 (_1!23286 lt!1346139)) 0))))

(assert (=> d!1145958 (= lt!1346139 e!2392739)))

(declare-fun c!673309 () Bool)

(assert (=> d!1145958 (= c!673309 ((_ is Some!8787) lt!1346140))))

(assert (=> d!1145958 (= lt!1346140 (maxPrefix!3263 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1145958 (= (lexList!1727 thiss!20629 rules!2768 suffix!1176) lt!1346139)))

(assert (= (and d!1145958 c!673309) b!3868880))

(assert (= (and d!1145958 (not c!673309)) b!3868884))

(assert (= (and d!1145958 c!673308) b!3868883))

(assert (= (and d!1145958 (not c!673308)) b!3868882))

(assert (= (and b!3868883 res!1567004) b!3868881))

(declare-fun m!4425003 () Bool)

(assert (=> b!3868880 m!4425003))

(declare-fun m!4425009 () Bool)

(assert (=> b!3868881 m!4425009))

(declare-fun m!4425013 () Bool)

(assert (=> b!3868883 m!4425013))

(assert (=> b!3868883 m!4424345))

(declare-fun m!4425015 () Bool)

(assert (=> d!1145958 m!4425015))

(declare-fun m!4425017 () Bool)

(assert (=> d!1145958 m!4425017))

(assert (=> b!3868481 d!1145958))

(declare-fun b!3868892 () Bool)

(declare-fun e!2392746 () tuple2!40304)

(declare-fun lt!1346144 () Option!8788)

(declare-fun lt!1346145 () tuple2!40304)

(assert (=> b!3868892 (= e!2392746 (tuple2!40305 (Cons!41086 (_1!23285 (v!39085 lt!1346144)) (_1!23286 lt!1346145)) (_2!23286 lt!1346145)))))

(assert (=> b!3868892 (= lt!1346145 (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1346144))))))

(declare-fun b!3868893 () Bool)

(declare-fun e!2392748 () Bool)

(declare-fun lt!1346143 () tuple2!40304)

(assert (=> b!3868893 (= e!2392748 (not (isEmpty!24366 (_1!23286 lt!1346143))))))

(declare-fun b!3868894 () Bool)

(declare-fun e!2392747 () Bool)

(assert (=> b!3868894 (= e!2392747 (= (_2!23286 lt!1346143) lt!1345942))))

(declare-fun b!3868895 () Bool)

(assert (=> b!3868895 (= e!2392747 e!2392748)))

(declare-fun res!1567006 () Bool)

(assert (=> b!3868895 (= res!1567006 (< (size!30882 (_2!23286 lt!1346143)) (size!30882 lt!1345942)))))

(assert (=> b!3868895 (=> (not res!1567006) (not e!2392748))))

(declare-fun b!3868896 () Bool)

(assert (=> b!3868896 (= e!2392746 (tuple2!40305 Nil!41086 lt!1345942))))

(declare-fun d!1145964 () Bool)

(assert (=> d!1145964 e!2392747))

(declare-fun c!673313 () Bool)

(assert (=> d!1145964 (= c!673313 (> (size!30884 (_1!23286 lt!1346143)) 0))))

(assert (=> d!1145964 (= lt!1346143 e!2392746)))

(declare-fun c!673314 () Bool)

(assert (=> d!1145964 (= c!673314 ((_ is Some!8787) lt!1346144))))

(assert (=> d!1145964 (= lt!1346144 (maxPrefix!3263 thiss!20629 rules!2768 lt!1345942))))

(assert (=> d!1145964 (= (lexList!1727 thiss!20629 rules!2768 lt!1345942) lt!1346143)))

(assert (= (and d!1145964 c!673314) b!3868892))

(assert (= (and d!1145964 (not c!673314)) b!3868896))

(assert (= (and d!1145964 c!673313) b!3868895))

(assert (= (and d!1145964 (not c!673313)) b!3868894))

(assert (= (and b!3868895 res!1567006) b!3868893))

(declare-fun m!4425023 () Bool)

(assert (=> b!3868892 m!4425023))

(declare-fun m!4425025 () Bool)

(assert (=> b!3868893 m!4425025))

(declare-fun m!4425027 () Bool)

(assert (=> b!3868895 m!4425027))

(assert (=> b!3868895 m!4424331))

(declare-fun m!4425029 () Bool)

(assert (=> d!1145964 m!4425029))

(assert (=> d!1145964 m!4424365))

(assert (=> b!3868459 d!1145964))

(declare-fun b!3868903 () Bool)

(declare-fun e!2392752 () List!41210)

(assert (=> b!3868903 (= e!2392752 suffixTokens!72)))

(declare-fun b!3868904 () Bool)

(assert (=> b!3868904 (= e!2392752 (Cons!41086 (h!46506 prefixTokens!80) (++!10498 (t!314181 prefixTokens!80) suffixTokens!72)))))

(declare-fun lt!1346148 () List!41210)

(declare-fun e!2392753 () Bool)

(declare-fun b!3868906 () Bool)

(assert (=> b!3868906 (= e!2392753 (or (not (= suffixTokens!72 Nil!41086)) (= lt!1346148 prefixTokens!80)))))

(declare-fun d!1145970 () Bool)

(assert (=> d!1145970 e!2392753))

(declare-fun res!1567009 () Bool)

(assert (=> d!1145970 (=> (not res!1567009) (not e!2392753))))

(assert (=> d!1145970 (= res!1567009 (= (content!6131 lt!1346148) ((_ map or) (content!6131 prefixTokens!80) (content!6131 suffixTokens!72))))))

(assert (=> d!1145970 (= lt!1346148 e!2392752)))

(declare-fun c!673317 () Bool)

(assert (=> d!1145970 (= c!673317 ((_ is Nil!41086) prefixTokens!80))))

(assert (=> d!1145970 (= (++!10498 prefixTokens!80 suffixTokens!72) lt!1346148)))

(declare-fun b!3868905 () Bool)

(declare-fun res!1567010 () Bool)

(assert (=> b!3868905 (=> (not res!1567010) (not e!2392753))))

(assert (=> b!3868905 (= res!1567010 (= (size!30884 lt!1346148) (+ (size!30884 prefixTokens!80) (size!30884 suffixTokens!72))))))

(assert (= (and d!1145970 c!673317) b!3868903))

(assert (= (and d!1145970 (not c!673317)) b!3868904))

(assert (= (and d!1145970 res!1567009) b!3868905))

(assert (= (and b!3868905 res!1567010) b!3868906))

(declare-fun m!4425045 () Bool)

(assert (=> b!3868904 m!4425045))

(declare-fun m!4425047 () Bool)

(assert (=> d!1145970 m!4425047))

(declare-fun m!4425049 () Bool)

(assert (=> d!1145970 m!4425049))

(assert (=> d!1145970 m!4424535))

(declare-fun m!4425051 () Bool)

(assert (=> b!3868905 m!4425051))

(declare-fun m!4425053 () Bool)

(assert (=> b!3868905 m!4425053))

(assert (=> b!3868905 m!4424541))

(assert (=> b!3868459 d!1145970))

(declare-fun b!3868907 () Bool)

(declare-fun e!2392754 () List!41209)

(assert (=> b!3868907 (= e!2392754 suffix!1176)))

(declare-fun b!3868908 () Bool)

(assert (=> b!3868908 (= e!2392754 (Cons!41085 (h!46505 prefix!426) (++!10497 (t!314180 prefix!426) suffix!1176)))))

(declare-fun d!1145974 () Bool)

(declare-fun e!2392755 () Bool)

(assert (=> d!1145974 e!2392755))

(declare-fun res!1567011 () Bool)

(assert (=> d!1145974 (=> (not res!1567011) (not e!2392755))))

(declare-fun lt!1346149 () List!41209)

(assert (=> d!1145974 (= res!1567011 (= (content!6132 lt!1346149) ((_ map or) (content!6132 prefix!426) (content!6132 suffix!1176))))))

(assert (=> d!1145974 (= lt!1346149 e!2392754)))

(declare-fun c!673318 () Bool)

(assert (=> d!1145974 (= c!673318 ((_ is Nil!41085) prefix!426))))

(assert (=> d!1145974 (= (++!10497 prefix!426 suffix!1176) lt!1346149)))

(declare-fun b!3868909 () Bool)

(declare-fun res!1567012 () Bool)

(assert (=> b!3868909 (=> (not res!1567012) (not e!2392755))))

(assert (=> b!3868909 (= res!1567012 (= (size!30882 lt!1346149) (+ (size!30882 prefix!426) (size!30882 suffix!1176))))))

(declare-fun b!3868910 () Bool)

(assert (=> b!3868910 (= e!2392755 (or (not (= suffix!1176 Nil!41085)) (= lt!1346149 prefix!426)))))

(assert (= (and d!1145974 c!673318) b!3868907))

(assert (= (and d!1145974 (not c!673318)) b!3868908))

(assert (= (and d!1145974 res!1567011) b!3868909))

(assert (= (and b!3868909 res!1567012) b!3868910))

(declare-fun m!4425055 () Bool)

(assert (=> b!3868908 m!4425055))

(declare-fun m!4425057 () Bool)

(assert (=> d!1145974 m!4425057))

(declare-fun m!4425059 () Bool)

(assert (=> d!1145974 m!4425059))

(assert (=> d!1145974 m!4424789))

(declare-fun m!4425061 () Bool)

(assert (=> b!3868909 m!4425061))

(assert (=> b!3868909 m!4424351))

(assert (=> b!3868909 m!4424345))

(assert (=> b!3868459 d!1145974))

(declare-fun d!1145978 () Bool)

(declare-fun lt!1346151 () Int)

(assert (=> d!1145978 (>= lt!1346151 0)))

(declare-fun e!2392759 () Int)

(assert (=> d!1145978 (= lt!1346151 e!2392759)))

(declare-fun c!673319 () Bool)

(assert (=> d!1145978 (= c!673319 ((_ is Nil!41085) suffix!1176))))

(assert (=> d!1145978 (= (size!30882 suffix!1176) lt!1346151)))

(declare-fun b!3868915 () Bool)

(assert (=> b!3868915 (= e!2392759 0)))

(declare-fun b!3868916 () Bool)

(assert (=> b!3868916 (= e!2392759 (+ 1 (size!30882 (t!314180 suffix!1176))))))

(assert (= (and d!1145978 c!673319) b!3868915))

(assert (= (and d!1145978 (not c!673319)) b!3868916))

(declare-fun m!4425065 () Bool)

(assert (=> b!3868916 m!4425065))

(assert (=> b!3868482 d!1145978))

(declare-fun d!1145980 () Bool)

(declare-fun lt!1346152 () Int)

(assert (=> d!1145980 (>= lt!1346152 0)))

(declare-fun e!2392760 () Int)

(assert (=> d!1145980 (= lt!1346152 e!2392760)))

(declare-fun c!673320 () Bool)

(assert (=> d!1145980 (= c!673320 ((_ is Nil!41085) (_2!23285 (v!39085 lt!1345915))))))

(assert (=> d!1145980 (= (size!30882 (_2!23285 (v!39085 lt!1345915))) lt!1346152)))

(declare-fun b!3868917 () Bool)

(assert (=> b!3868917 (= e!2392760 0)))

(declare-fun b!3868918 () Bool)

(assert (=> b!3868918 (= e!2392760 (+ 1 (size!30882 (t!314180 (_2!23285 (v!39085 lt!1345915))))))))

(assert (= (and d!1145980 c!673320) b!3868917))

(assert (= (and d!1145980 (not c!673320)) b!3868918))

(declare-fun m!4425075 () Bool)

(assert (=> b!3868918 m!4425075))

(assert (=> b!3868482 d!1145980))

(declare-fun d!1145984 () Bool)

(assert (=> d!1145984 (= (isEmpty!24366 prefixTokens!80) ((_ is Nil!41086) prefixTokens!80))))

(assert (=> b!3868468 d!1145984))

(declare-fun d!1145988 () Bool)

(assert (=> d!1145988 (= (head!8182 prefixTokens!80) (h!46506 prefixTokens!80))))

(assert (=> b!3868488 d!1145988))

(declare-fun d!1145992 () Bool)

(assert (=> d!1145992 (= (isEmpty!24366 lt!1345934) ((_ is Nil!41086) lt!1345934))))

(assert (=> b!3868469 d!1145992))

(assert (=> b!3868469 d!1145922))

(declare-fun b!3868928 () Bool)

(declare-fun e!2392766 () tuple2!40304)

(declare-fun lt!1346159 () Option!8788)

(declare-fun lt!1346160 () tuple2!40304)

(assert (=> b!3868928 (= e!2392766 (tuple2!40305 (Cons!41086 (_1!23285 (v!39085 lt!1346159)) (_1!23286 lt!1346160)) (_2!23286 lt!1346160)))))

(assert (=> b!3868928 (= lt!1346160 (lexList!1727 thiss!20629 rules!2768 (_2!23285 (v!39085 lt!1346159))))))

(declare-fun b!3868929 () Bool)

(declare-fun e!2392768 () Bool)

(declare-fun lt!1346158 () tuple2!40304)

(assert (=> b!3868929 (= e!2392768 (not (isEmpty!24366 (_1!23286 lt!1346158))))))

(declare-fun b!3868930 () Bool)

(declare-fun e!2392767 () Bool)

(assert (=> b!3868930 (= e!2392767 (= (_2!23286 lt!1346158) (_2!23285 lt!1345920)))))

(declare-fun b!3868931 () Bool)

(assert (=> b!3868931 (= e!2392767 e!2392768)))

(declare-fun res!1567020 () Bool)

(assert (=> b!3868931 (= res!1567020 (< (size!30882 (_2!23286 lt!1346158)) (size!30882 (_2!23285 lt!1345920))))))

(assert (=> b!3868931 (=> (not res!1567020) (not e!2392768))))

(declare-fun b!3868932 () Bool)

(assert (=> b!3868932 (= e!2392766 (tuple2!40305 Nil!41086 (_2!23285 lt!1345920)))))

(declare-fun d!1145994 () Bool)

(assert (=> d!1145994 e!2392767))

(declare-fun c!673324 () Bool)

(assert (=> d!1145994 (= c!673324 (> (size!30884 (_1!23286 lt!1346158)) 0))))

(assert (=> d!1145994 (= lt!1346158 e!2392766)))

(declare-fun c!673325 () Bool)

(assert (=> d!1145994 (= c!673325 ((_ is Some!8787) lt!1346159))))

(assert (=> d!1145994 (= lt!1346159 (maxPrefix!3263 thiss!20629 rules!2768 (_2!23285 lt!1345920)))))

(assert (=> d!1145994 (= (lexList!1727 thiss!20629 rules!2768 (_2!23285 lt!1345920)) lt!1346158)))

(assert (= (and d!1145994 c!673325) b!3868928))

(assert (= (and d!1145994 (not c!673325)) b!3868932))

(assert (= (and d!1145994 c!673324) b!3868931))

(assert (= (and d!1145994 (not c!673324)) b!3868930))

(assert (= (and b!3868931 res!1567020) b!3868929))

(declare-fun m!4425101 () Bool)

(assert (=> b!3868928 m!4425101))

(declare-fun m!4425103 () Bool)

(assert (=> b!3868929 m!4425103))

(declare-fun m!4425105 () Bool)

(assert (=> b!3868931 m!4425105))

(assert (=> b!3868931 m!4424325))

(declare-fun m!4425107 () Bool)

(assert (=> d!1145994 m!4425107))

(declare-fun m!4425109 () Bool)

(assert (=> d!1145994 m!4425109))

(assert (=> bm!282685 d!1145994))

(declare-fun d!1145998 () Bool)

(declare-fun res!1567021 () Bool)

(declare-fun e!2392769 () Bool)

(assert (=> d!1145998 (=> (not res!1567021) (not e!2392769))))

(assert (=> d!1145998 (= res!1567021 (not (isEmpty!24368 (originalCharacters!6970 (h!46506 suffixTokens!72)))))))

(assert (=> d!1145998 (= (inv!55244 (h!46506 suffixTokens!72)) e!2392769)))

(declare-fun b!3868933 () Bool)

(declare-fun res!1567022 () Bool)

(assert (=> b!3868933 (=> (not res!1567022) (not e!2392769))))

(assert (=> b!3868933 (= res!1567022 (= (originalCharacters!6970 (h!46506 suffixTokens!72)) (list!15284 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (value!202179 (h!46506 suffixTokens!72))))))))

(declare-fun b!3868934 () Bool)

(assert (=> b!3868934 (= e!2392769 (= (size!30881 (h!46506 suffixTokens!72)) (size!30882 (originalCharacters!6970 (h!46506 suffixTokens!72)))))))

(assert (= (and d!1145998 res!1567021) b!3868933))

(assert (= (and b!3868933 res!1567022) b!3868934))

(declare-fun b_lambda!113021 () Bool)

(assert (=> (not b_lambda!113021) (not b!3868933)))

(declare-fun t!314226 () Bool)

(declare-fun tb!224315 () Bool)

(assert (=> (and b!3868493 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314226) tb!224315))

(declare-fun b!3868935 () Bool)

(declare-fun e!2392770 () Bool)

(declare-fun tp!1172986 () Bool)

(assert (=> b!3868935 (= e!2392770 (and (inv!55245 (c!673229 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (value!202179 (h!46506 suffixTokens!72))))) tp!1172986))))

(declare-fun result!273204 () Bool)

(assert (=> tb!224315 (= result!273204 (and (inv!55246 (dynLambda!17683 (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (value!202179 (h!46506 suffixTokens!72)))) e!2392770))))

(assert (= tb!224315 b!3868935))

(declare-fun m!4425111 () Bool)

(assert (=> b!3868935 m!4425111))

(declare-fun m!4425113 () Bool)

(assert (=> tb!224315 m!4425113))

(assert (=> b!3868933 t!314226))

(declare-fun b_and!289929 () Bool)

(assert (= b_and!289917 (and (=> t!314226 result!273204) b_and!289929)))

(declare-fun tb!224317 () Bool)

(declare-fun t!314228 () Bool)

(assert (=> (and b!3868457 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314228) tb!224317))

(declare-fun result!273206 () Bool)

(assert (= result!273206 result!273204))

(assert (=> b!3868933 t!314228))

(declare-fun b_and!289931 () Bool)

(assert (= b_and!289919 (and (=> t!314228 result!273206) b_and!289931)))

(declare-fun tb!224319 () Bool)

(declare-fun t!314230 () Bool)

(assert (=> (and b!3868461 (= (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314230) tb!224319))

(declare-fun result!273208 () Bool)

(assert (= result!273208 result!273204))

(assert (=> b!3868933 t!314230))

(declare-fun b_and!289933 () Bool)

(assert (= b_and!289921 (and (=> t!314230 result!273208) b_and!289933)))

(declare-fun m!4425115 () Bool)

(assert (=> d!1145998 m!4425115))

(declare-fun m!4425117 () Bool)

(assert (=> b!3868933 m!4425117))

(assert (=> b!3868933 m!4425117))

(declare-fun m!4425119 () Bool)

(assert (=> b!3868933 m!4425119))

(declare-fun m!4425121 () Bool)

(assert (=> b!3868934 m!4425121))

(assert (=> b!3868466 d!1145998))

(declare-fun d!1146000 () Bool)

(declare-fun lt!1346161 () Int)

(assert (=> d!1146000 (>= lt!1346161 0)))

(declare-fun e!2392771 () Int)

(assert (=> d!1146000 (= lt!1346161 e!2392771)))

(declare-fun c!673326 () Bool)

(assert (=> d!1146000 (= c!673326 ((_ is Nil!41085) (_2!23285 lt!1345920)))))

(assert (=> d!1146000 (= (size!30882 (_2!23285 lt!1345920)) lt!1346161)))

(declare-fun b!3868936 () Bool)

(assert (=> b!3868936 (= e!2392771 0)))

(declare-fun b!3868937 () Bool)

(assert (=> b!3868937 (= e!2392771 (+ 1 (size!30882 (t!314180 (_2!23285 lt!1345920)))))))

(assert (= (and d!1146000 c!673326) b!3868936))

(assert (= (and d!1146000 (not c!673326)) b!3868937))

(declare-fun m!4425123 () Bool)

(assert (=> b!3868937 m!4425123))

(assert (=> b!3868487 d!1146000))

(declare-fun d!1146002 () Bool)

(declare-fun lt!1346162 () Int)

(assert (=> d!1146002 (>= lt!1346162 0)))

(declare-fun e!2392772 () Int)

(assert (=> d!1146002 (= lt!1346162 e!2392772)))

(declare-fun c!673327 () Bool)

(assert (=> d!1146002 (= c!673327 ((_ is Nil!41085) lt!1345942))))

(assert (=> d!1146002 (= (size!30882 lt!1345942) lt!1346162)))

(declare-fun b!3868938 () Bool)

(assert (=> b!3868938 (= e!2392772 0)))

(declare-fun b!3868939 () Bool)

(assert (=> b!3868939 (= e!2392772 (+ 1 (size!30882 (t!314180 lt!1345942))))))

(assert (= (and d!1146002 c!673327) b!3868938))

(assert (= (and d!1146002 (not c!673327)) b!3868939))

(declare-fun m!4425125 () Bool)

(assert (=> b!3868939 m!4425125))

(assert (=> b!3868487 d!1146002))

(declare-fun b!3869036 () Bool)

(declare-fun res!1567045 () Bool)

(declare-fun e!2392839 () Bool)

(assert (=> b!3869036 (=> (not res!1567045) (not e!2392839))))

(declare-fun lt!1346183 () Option!8788)

(assert (=> b!3869036 (= res!1567045 (= (value!202179 (_1!23285 (get!13595 lt!1346183))) (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (get!13595 lt!1346183)))) (seqFromList!4641 (originalCharacters!6970 (_1!23285 (get!13595 lt!1346183)))))))))

(declare-fun b!3869037 () Bool)

(declare-fun res!1567046 () Bool)

(assert (=> b!3869037 (=> (not res!1567046) (not e!2392839))))

(assert (=> b!3869037 (= res!1567046 (< (size!30882 (_2!23285 (get!13595 lt!1346183))) (size!30882 lt!1345942)))))

(declare-fun d!1146004 () Bool)

(declare-fun e!2392841 () Bool)

(assert (=> d!1146004 e!2392841))

(declare-fun res!1567047 () Bool)

(assert (=> d!1146004 (=> res!1567047 e!2392841)))

(assert (=> d!1146004 (= res!1567047 (isEmpty!24370 lt!1346183))))

(declare-fun e!2392842 () Option!8788)

(assert (=> d!1146004 (= lt!1346183 e!2392842)))

(declare-fun c!673335 () Bool)

(declare-datatypes ((tuple2!40308 0))(
  ( (tuple2!40309 (_1!23288 List!41209) (_2!23288 List!41209)) )
))
(declare-fun lt!1346184 () tuple2!40308)

(assert (=> d!1146004 (= c!673335 (isEmpty!24368 (_1!23288 lt!1346184)))))

(declare-fun findLongestMatch!1111 (Regex!11275 List!41209) tuple2!40308)

(assert (=> d!1146004 (= lt!1346184 (findLongestMatch!1111 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) lt!1345942))))

(assert (=> d!1146004 (ruleValid!2322 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))))))

(assert (=> d!1146004 (= (maxPrefixOneRule!2345 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) lt!1345942) lt!1346183)))

(declare-fun b!3869038 () Bool)

(declare-fun e!2392840 () Bool)

(declare-fun findLongestMatchInner!1198 (Regex!11275 List!41209 Int List!41209 List!41209 Int) tuple2!40308)

(assert (=> b!3869038 (= e!2392840 (matchR!5408 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (_1!23288 (findLongestMatchInner!1198 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) Nil!41085 (size!30882 Nil!41085) lt!1345942 lt!1345942 (size!30882 lt!1345942)))))))

(declare-fun b!3869039 () Bool)

(assert (=> b!3869039 (= e!2392841 e!2392839)))

(declare-fun res!1567049 () Bool)

(assert (=> b!3869039 (=> (not res!1567049) (not e!2392839))))

(assert (=> b!3869039 (= res!1567049 (matchR!5408 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (list!15284 (charsOf!4198 (_1!23285 (get!13595 lt!1346183))))))))

(declare-fun b!3869040 () Bool)

(declare-fun res!1567050 () Bool)

(assert (=> b!3869040 (=> (not res!1567050) (not e!2392839))))

(assert (=> b!3869040 (= res!1567050 (= (rule!9252 (_1!23285 (get!13595 lt!1346183))) (rule!9252 (_1!23285 (v!39085 lt!1345915)))))))

(declare-fun b!3869041 () Bool)

(assert (=> b!3869041 (= e!2392842 None!8787)))

(declare-fun b!3869042 () Bool)

(assert (=> b!3869042 (= e!2392839 (= (size!30881 (_1!23285 (get!13595 lt!1346183))) (size!30882 (originalCharacters!6970 (_1!23285 (get!13595 lt!1346183))))))))

(declare-fun b!3869043 () Bool)

(declare-fun res!1567048 () Bool)

(assert (=> b!3869043 (=> (not res!1567048) (not e!2392839))))

(assert (=> b!3869043 (= res!1567048 (= (++!10497 (list!15284 (charsOf!4198 (_1!23285 (get!13595 lt!1346183)))) (_2!23285 (get!13595 lt!1346183))) lt!1345942))))

(declare-fun b!3869044 () Bool)

(declare-fun size!30886 (BalanceConc!24756) Int)

(assert (=> b!3869044 (= e!2392842 (Some!8787 (tuple2!40303 (Token!11879 (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (seqFromList!4641 (_1!23288 lt!1346184))) (rule!9252 (_1!23285 (v!39085 lt!1345915))) (size!30886 (seqFromList!4641 (_1!23288 lt!1346184))) (_1!23288 lt!1346184)) (_2!23288 lt!1346184))))))

(declare-fun lt!1346182 () Unit!58863)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1171 (Regex!11275 List!41209) Unit!58863)

(assert (=> b!3869044 (= lt!1346182 (longestMatchIsAcceptedByMatchOrIsEmpty!1171 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) lt!1345942))))

(declare-fun res!1567051 () Bool)

(assert (=> b!3869044 (= res!1567051 (isEmpty!24368 (_1!23288 (findLongestMatchInner!1198 (regex!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) Nil!41085 (size!30882 Nil!41085) lt!1345942 lt!1345942 (size!30882 lt!1345942)))))))

(assert (=> b!3869044 (=> res!1567051 e!2392840)))

(assert (=> b!3869044 e!2392840))

(declare-fun lt!1346185 () Unit!58863)

(assert (=> b!3869044 (= lt!1346185 lt!1346182)))

(declare-fun lt!1346186 () Unit!58863)

(declare-fun lemmaSemiInverse!1704 (TokenValueInjection!12628 BalanceConc!24756) Unit!58863)

(assert (=> b!3869044 (= lt!1346186 (lemmaSemiInverse!1704 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (seqFromList!4641 (_1!23288 lt!1346184))))))

(assert (= (and d!1146004 c!673335) b!3869041))

(assert (= (and d!1146004 (not c!673335)) b!3869044))

(assert (= (and b!3869044 (not res!1567051)) b!3869038))

(assert (= (and d!1146004 (not res!1567047)) b!3869039))

(assert (= (and b!3869039 res!1567049) b!3869043))

(assert (= (and b!3869043 res!1567048) b!3869037))

(assert (= (and b!3869037 res!1567046) b!3869040))

(assert (= (and b!3869040 res!1567050) b!3869036))

(assert (= (and b!3869036 res!1567045) b!3869042))

(declare-fun m!4425189 () Bool)

(assert (=> b!3869036 m!4425189))

(declare-fun m!4425191 () Bool)

(assert (=> b!3869036 m!4425191))

(assert (=> b!3869036 m!4425191))

(declare-fun m!4425193 () Bool)

(assert (=> b!3869036 m!4425193))

(declare-fun m!4425195 () Bool)

(assert (=> b!3869038 m!4425195))

(assert (=> b!3869038 m!4424331))

(assert (=> b!3869038 m!4425195))

(assert (=> b!3869038 m!4424331))

(declare-fun m!4425197 () Bool)

(assert (=> b!3869038 m!4425197))

(declare-fun m!4425199 () Bool)

(assert (=> b!3869038 m!4425199))

(declare-fun m!4425201 () Bool)

(assert (=> b!3869044 m!4425201))

(declare-fun m!4425203 () Bool)

(assert (=> b!3869044 m!4425203))

(assert (=> b!3869044 m!4425195))

(assert (=> b!3869044 m!4425201))

(assert (=> b!3869044 m!4425195))

(assert (=> b!3869044 m!4424331))

(assert (=> b!3869044 m!4425197))

(assert (=> b!3869044 m!4425201))

(declare-fun m!4425205 () Bool)

(assert (=> b!3869044 m!4425205))

(declare-fun m!4425207 () Bool)

(assert (=> b!3869044 m!4425207))

(assert (=> b!3869044 m!4424331))

(assert (=> b!3869044 m!4425201))

(declare-fun m!4425209 () Bool)

(assert (=> b!3869044 m!4425209))

(declare-fun m!4425211 () Bool)

(assert (=> b!3869044 m!4425211))

(assert (=> b!3869039 m!4425189))

(declare-fun m!4425213 () Bool)

(assert (=> b!3869039 m!4425213))

(assert (=> b!3869039 m!4425213))

(declare-fun m!4425215 () Bool)

(assert (=> b!3869039 m!4425215))

(assert (=> b!3869039 m!4425215))

(declare-fun m!4425217 () Bool)

(assert (=> b!3869039 m!4425217))

(declare-fun m!4425219 () Bool)

(assert (=> d!1146004 m!4425219))

(declare-fun m!4425221 () Bool)

(assert (=> d!1146004 m!4425221))

(declare-fun m!4425223 () Bool)

(assert (=> d!1146004 m!4425223))

(assert (=> d!1146004 m!4424399))

(assert (=> b!3869037 m!4425189))

(declare-fun m!4425225 () Bool)

(assert (=> b!3869037 m!4425225))

(assert (=> b!3869037 m!4424331))

(assert (=> b!3869043 m!4425189))

(assert (=> b!3869043 m!4425213))

(assert (=> b!3869043 m!4425213))

(assert (=> b!3869043 m!4425215))

(assert (=> b!3869043 m!4425215))

(declare-fun m!4425227 () Bool)

(assert (=> b!3869043 m!4425227))

(assert (=> b!3869042 m!4425189))

(declare-fun m!4425229 () Bool)

(assert (=> b!3869042 m!4425229))

(assert (=> b!3869040 m!4425189))

(assert (=> b!3868487 d!1146004))

(declare-fun d!1146020 () Bool)

(assert (=> d!1146020 (= (get!13595 lt!1345915) (v!39085 lt!1345915))))

(assert (=> b!3868487 d!1146020))

(declare-fun d!1146022 () Bool)

(assert (=> d!1146022 (= (maxPrefixOneRule!2345 thiss!20629 (rule!9252 (_1!23285 (v!39085 lt!1345915))) lt!1345942) (Some!8787 (tuple2!40303 (Token!11879 (apply!9613 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))) (seqFromList!4641 lt!1345938)) (rule!9252 (_1!23285 (v!39085 lt!1345915))) (size!30882 lt!1345938) lt!1345938) (_2!23285 (v!39085 lt!1345915)))))))

(declare-fun lt!1346189 () Unit!58863)

(declare-fun choose!22842 (LexerInterface!5959 List!41211 List!41209 List!41209 List!41209 Rule!12540) Unit!58863)

(assert (=> d!1146022 (= lt!1346189 (choose!22842 thiss!20629 rules!2768 lt!1345938 lt!1345942 (_2!23285 (v!39085 lt!1345915)) (rule!9252 (_1!23285 (v!39085 lt!1345915)))))))

(assert (=> d!1146022 (not (isEmpty!24367 rules!2768))))

(assert (=> d!1146022 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1243 thiss!20629 rules!2768 lt!1345938 lt!1345942 (_2!23285 (v!39085 lt!1345915)) (rule!9252 (_1!23285 (v!39085 lt!1345915)))) lt!1346189)))

(declare-fun bs!583392 () Bool)

(assert (= bs!583392 d!1146022))

(assert (=> bs!583392 m!4424385))

(assert (=> bs!583392 m!4424387))

(assert (=> bs!583392 m!4424327))

(assert (=> bs!583392 m!4424305))

(assert (=> bs!583392 m!4424385))

(assert (=> bs!583392 m!4424395))

(declare-fun m!4425231 () Bool)

(assert (=> bs!583392 m!4425231))

(assert (=> b!3868487 d!1146022))

(declare-fun b!3869049 () Bool)

(declare-fun e!2392845 () Bool)

(declare-fun tp!1173053 () Bool)

(assert (=> b!3869049 (= e!2392845 (and tp_is_empty!19521 tp!1173053))))

(assert (=> b!3868452 (= tp!1172961 e!2392845)))

(assert (= (and b!3868452 ((_ is Cons!41085) (t!314180 suffixResult!91))) b!3869049))

(declare-fun b!3869050 () Bool)

(declare-fun e!2392846 () Bool)

(declare-fun tp!1173054 () Bool)

(assert (=> b!3869050 (= e!2392846 (and tp_is_empty!19521 tp!1173054))))

(assert (=> b!3868462 (= tp!1172971 e!2392846)))

(assert (= (and b!3868462 ((_ is Cons!41085) (t!314180 prefix!426))) b!3869050))

(declare-fun b!3869051 () Bool)

(declare-fun e!2392847 () Bool)

(declare-fun tp!1173055 () Bool)

(assert (=> b!3869051 (= e!2392847 (and tp_is_empty!19521 tp!1173055))))

(assert (=> b!3868451 (= tp!1172966 e!2392847)))

(assert (= (and b!3868451 ((_ is Cons!41085) (originalCharacters!6970 (h!46506 suffixTokens!72)))) b!3869051))

(declare-fun b!3869062 () Bool)

(declare-fun e!2392850 () Bool)

(assert (=> b!3869062 (= e!2392850 tp_is_empty!19521)))

(declare-fun b!3869065 () Bool)

(declare-fun tp!1173070 () Bool)

(declare-fun tp!1173066 () Bool)

(assert (=> b!3869065 (= e!2392850 (and tp!1173070 tp!1173066))))

(assert (=> b!3868463 (= tp!1172962 e!2392850)))

(declare-fun b!3869064 () Bool)

(declare-fun tp!1173068 () Bool)

(assert (=> b!3869064 (= e!2392850 tp!1173068)))

(declare-fun b!3869063 () Bool)

(declare-fun tp!1173067 () Bool)

(declare-fun tp!1173069 () Bool)

(assert (=> b!3869063 (= e!2392850 (and tp!1173067 tp!1173069))))

(assert (= (and b!3868463 ((_ is ElementMatch!11275) (regex!6370 (rule!9252 (h!46506 prefixTokens!80))))) b!3869062))

(assert (= (and b!3868463 ((_ is Concat!17876) (regex!6370 (rule!9252 (h!46506 prefixTokens!80))))) b!3869063))

(assert (= (and b!3868463 ((_ is Star!11275) (regex!6370 (rule!9252 (h!46506 prefixTokens!80))))) b!3869064))

(assert (= (and b!3868463 ((_ is Union!11275) (regex!6370 (rule!9252 (h!46506 prefixTokens!80))))) b!3869065))

(declare-fun b!3869066 () Bool)

(declare-fun e!2392851 () Bool)

(assert (=> b!3869066 (= e!2392851 tp_is_empty!19521)))

(declare-fun b!3869069 () Bool)

(declare-fun tp!1173075 () Bool)

(declare-fun tp!1173071 () Bool)

(assert (=> b!3869069 (= e!2392851 (and tp!1173075 tp!1173071))))

(assert (=> b!3868494 (= tp!1172972 e!2392851)))

(declare-fun b!3869068 () Bool)

(declare-fun tp!1173073 () Bool)

(assert (=> b!3869068 (= e!2392851 tp!1173073)))

(declare-fun b!3869067 () Bool)

(declare-fun tp!1173072 () Bool)

(declare-fun tp!1173074 () Bool)

(assert (=> b!3869067 (= e!2392851 (and tp!1173072 tp!1173074))))

(assert (= (and b!3868494 ((_ is ElementMatch!11275) (regex!6370 (h!46507 rules!2768)))) b!3869066))

(assert (= (and b!3868494 ((_ is Concat!17876) (regex!6370 (h!46507 rules!2768)))) b!3869067))

(assert (= (and b!3868494 ((_ is Star!11275) (regex!6370 (h!46507 rules!2768)))) b!3869068))

(assert (= (and b!3868494 ((_ is Union!11275) (regex!6370 (h!46507 rules!2768)))) b!3869069))

(declare-fun b!3869083 () Bool)

(declare-fun b_free!104389 () Bool)

(declare-fun b_next!105093 () Bool)

(assert (=> b!3869083 (= b_free!104389 (not b_next!105093))))

(declare-fun t!314256 () Bool)

(declare-fun tb!224345 () Bool)

(assert (=> (and b!3869083 (= (toValue!8798 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314256) tb!224345))

(declare-fun result!273248 () Bool)

(assert (= result!273248 result!273184))

(assert (=> d!1145886 t!314256))

(declare-fun tp!1173090 () Bool)

(declare-fun b_and!289947 () Bool)

(assert (=> b!3869083 (= tp!1173090 (and (=> t!314256 result!273248) b_and!289947))))

(declare-fun b_free!104391 () Bool)

(declare-fun b_next!105095 () Bool)

(assert (=> b!3869083 (= b_free!104391 (not b_next!105095))))

(declare-fun t!314258 () Bool)

(declare-fun tb!224347 () Bool)

(assert (=> (and b!3869083 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314258) tb!224347))

(declare-fun result!273250 () Bool)

(assert (= result!273250 result!273154))

(assert (=> b!3868604 t!314258))

(declare-fun t!314260 () Bool)

(declare-fun tb!224349 () Bool)

(assert (=> (and b!3869083 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314260) tb!224349))

(declare-fun result!273252 () Bool)

(assert (= result!273252 result!273192))

(assert (=> d!1145890 t!314260))

(declare-fun tb!224351 () Bool)

(declare-fun t!314262 () Bool)

(assert (=> (and b!3869083 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314262) tb!224351))

(declare-fun result!273254 () Bool)

(assert (= result!273254 result!273204))

(assert (=> b!3868933 t!314262))

(declare-fun b_and!289949 () Bool)

(declare-fun tp!1173088 () Bool)

(assert (=> b!3869083 (= tp!1173088 (and (=> t!314258 result!273250) (=> t!314260 result!273252) (=> t!314262 result!273254) b_and!289949))))

(declare-fun e!2392868 () Bool)

(assert (=> b!3869083 (= e!2392868 (and tp!1173090 tp!1173088))))

(declare-fun e!2392866 () Bool)

(assert (=> b!3868492 (= tp!1172976 e!2392866)))

(declare-fun b!3869082 () Bool)

(declare-fun tp!1173087 () Bool)

(declare-fun e!2392869 () Bool)

(assert (=> b!3869082 (= e!2392869 (and tp!1173087 (inv!55240 (tag!7230 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (inv!55243 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) e!2392868))))

(declare-fun e!2392867 () Bool)

(declare-fun b!3869080 () Bool)

(declare-fun tp!1173086 () Bool)

(assert (=> b!3869080 (= e!2392866 (and (inv!55244 (h!46506 (t!314181 prefixTokens!80))) e!2392867 tp!1173086))))

(declare-fun tp!1173089 () Bool)

(declare-fun b!3869081 () Bool)

(assert (=> b!3869081 (= e!2392867 (and (inv!21 (value!202179 (h!46506 (t!314181 prefixTokens!80)))) e!2392869 tp!1173089))))

(assert (= b!3869082 b!3869083))

(assert (= b!3869081 b!3869082))

(assert (= b!3869080 b!3869081))

(assert (= (and b!3868492 ((_ is Cons!41086) (t!314181 prefixTokens!80))) b!3869080))

(declare-fun m!4425233 () Bool)

(assert (=> b!3869082 m!4425233))

(declare-fun m!4425235 () Bool)

(assert (=> b!3869082 m!4425235))

(declare-fun m!4425237 () Bool)

(assert (=> b!3869080 m!4425237))

(declare-fun m!4425239 () Bool)

(assert (=> b!3869081 m!4425239))

(declare-fun b!3869084 () Bool)

(declare-fun e!2392870 () Bool)

(declare-fun tp!1173091 () Bool)

(assert (=> b!3869084 (= e!2392870 (and tp_is_empty!19521 tp!1173091))))

(assert (=> b!3868478 (= tp!1172967 e!2392870)))

(assert (= (and b!3868478 ((_ is Cons!41085) (originalCharacters!6970 (h!46506 prefixTokens!80)))) b!3869084))

(declare-fun b!3869085 () Bool)

(declare-fun e!2392871 () Bool)

(declare-fun tp!1173092 () Bool)

(assert (=> b!3869085 (= e!2392871 (and tp_is_empty!19521 tp!1173092))))

(assert (=> b!3868467 (= tp!1172975 e!2392871)))

(assert (= (and b!3868467 ((_ is Cons!41085) (t!314180 suffix!1176))) b!3869085))

(declare-fun b!3869096 () Bool)

(declare-fun b_free!104393 () Bool)

(declare-fun b_next!105097 () Bool)

(assert (=> b!3869096 (= b_free!104393 (not b_next!105097))))

(declare-fun tb!224353 () Bool)

(declare-fun t!314264 () Bool)

(assert (=> (and b!3869096 (= (toValue!8798 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314264) tb!224353))

(declare-fun result!273258 () Bool)

(assert (= result!273258 result!273184))

(assert (=> d!1145886 t!314264))

(declare-fun b_and!289951 () Bool)

(declare-fun tp!1173102 () Bool)

(assert (=> b!3869096 (= tp!1173102 (and (=> t!314264 result!273258) b_and!289951))))

(declare-fun b_free!104395 () Bool)

(declare-fun b_next!105099 () Bool)

(assert (=> b!3869096 (= b_free!104395 (not b_next!105099))))

(declare-fun tb!224355 () Bool)

(declare-fun t!314266 () Bool)

(assert (=> (and b!3869096 (= (toChars!8657 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314266) tb!224355))

(declare-fun result!273260 () Bool)

(assert (= result!273260 result!273154))

(assert (=> b!3868604 t!314266))

(declare-fun tb!224357 () Bool)

(declare-fun t!314268 () Bool)

(assert (=> (and b!3869096 (= (toChars!8657 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314268) tb!224357))

(declare-fun result!273262 () Bool)

(assert (= result!273262 result!273192))

(assert (=> d!1145890 t!314268))

(declare-fun tb!224359 () Bool)

(declare-fun t!314270 () Bool)

(assert (=> (and b!3869096 (= (toChars!8657 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314270) tb!224359))

(declare-fun result!273264 () Bool)

(assert (= result!273264 result!273204))

(assert (=> b!3868933 t!314270))

(declare-fun tp!1173103 () Bool)

(declare-fun b_and!289953 () Bool)

(assert (=> b!3869096 (= tp!1173103 (and (=> t!314266 result!273260) (=> t!314268 result!273262) (=> t!314270 result!273264) b_and!289953))))

(declare-fun e!2392880 () Bool)

(assert (=> b!3869096 (= e!2392880 (and tp!1173102 tp!1173103))))

(declare-fun e!2392883 () Bool)

(declare-fun tp!1173104 () Bool)

(declare-fun b!3869095 () Bool)

(assert (=> b!3869095 (= e!2392883 (and tp!1173104 (inv!55240 (tag!7230 (h!46507 (t!314182 rules!2768)))) (inv!55243 (transformation!6370 (h!46507 (t!314182 rules!2768)))) e!2392880))))

(declare-fun b!3869094 () Bool)

(declare-fun e!2392881 () Bool)

(declare-fun tp!1173101 () Bool)

(assert (=> b!3869094 (= e!2392881 (and e!2392883 tp!1173101))))

(assert (=> b!3868458 (= tp!1172960 e!2392881)))

(assert (= b!3869095 b!3869096))

(assert (= b!3869094 b!3869095))

(assert (= (and b!3868458 ((_ is Cons!41087) (t!314182 rules!2768))) b!3869094))

(declare-fun m!4425241 () Bool)

(assert (=> b!3869095 m!4425241))

(declare-fun m!4425243 () Bool)

(assert (=> b!3869095 m!4425243))

(declare-fun b!3869100 () Bool)

(declare-fun b_free!104397 () Bool)

(declare-fun b_next!105101 () Bool)

(assert (=> b!3869100 (= b_free!104397 (not b_next!105101))))

(declare-fun t!314272 () Bool)

(declare-fun tb!224361 () Bool)

(assert (=> (and b!3869100 (= (toValue!8798 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toValue!8798 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314272) tb!224361))

(declare-fun result!273266 () Bool)

(assert (= result!273266 result!273184))

(assert (=> d!1145886 t!314272))

(declare-fun tp!1173109 () Bool)

(declare-fun b_and!289955 () Bool)

(assert (=> b!3869100 (= tp!1173109 (and (=> t!314272 result!273266) b_and!289955))))

(declare-fun b_free!104399 () Bool)

(declare-fun b_next!105103 () Bool)

(assert (=> b!3869100 (= b_free!104399 (not b_next!105103))))

(declare-fun tb!224363 () Bool)

(declare-fun t!314274 () Bool)

(assert (=> (and b!3869100 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80))))) t!314274) tb!224363))

(declare-fun result!273268 () Bool)

(assert (= result!273268 result!273154))

(assert (=> b!3868604 t!314274))

(declare-fun tb!224365 () Bool)

(declare-fun t!314276 () Bool)

(assert (=> (and b!3869100 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toChars!8657 (transformation!6370 (rule!9252 (_1!23285 (v!39085 lt!1345915)))))) t!314276) tb!224365))

(declare-fun result!273270 () Bool)

(assert (= result!273270 result!273192))

(assert (=> d!1145890 t!314276))

(declare-fun t!314278 () Bool)

(declare-fun tb!224367 () Bool)

(assert (=> (and b!3869100 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72))))) t!314278) tb!224367))

(declare-fun result!273272 () Bool)

(assert (= result!273272 result!273204))

(assert (=> b!3868933 t!314278))

(declare-fun tp!1173107 () Bool)

(declare-fun b_and!289957 () Bool)

(assert (=> b!3869100 (= tp!1173107 (and (=> t!314274 result!273268) (=> t!314276 result!273270) (=> t!314278 result!273272) b_and!289957))))

(declare-fun e!2392888 () Bool)

(assert (=> b!3869100 (= e!2392888 (and tp!1173109 tp!1173107))))

(declare-fun e!2392886 () Bool)

(assert (=> b!3868466 (= tp!1172965 e!2392886)))

(declare-fun tp!1173106 () Bool)

(declare-fun b!3869099 () Bool)

(declare-fun e!2392889 () Bool)

(assert (=> b!3869099 (= e!2392889 (and tp!1173106 (inv!55240 (tag!7230 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (inv!55243 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) e!2392888))))

(declare-fun tp!1173105 () Bool)

(declare-fun e!2392887 () Bool)

(declare-fun b!3869097 () Bool)

(assert (=> b!3869097 (= e!2392886 (and (inv!55244 (h!46506 (t!314181 suffixTokens!72))) e!2392887 tp!1173105))))

(declare-fun b!3869098 () Bool)

(declare-fun tp!1173108 () Bool)

(assert (=> b!3869098 (= e!2392887 (and (inv!21 (value!202179 (h!46506 (t!314181 suffixTokens!72)))) e!2392889 tp!1173108))))

(assert (= b!3869099 b!3869100))

(assert (= b!3869098 b!3869099))

(assert (= b!3869097 b!3869098))

(assert (= (and b!3868466 ((_ is Cons!41086) (t!314181 suffixTokens!72))) b!3869097))

(declare-fun m!4425245 () Bool)

(assert (=> b!3869099 m!4425245))

(declare-fun m!4425247 () Bool)

(assert (=> b!3869099 m!4425247))

(declare-fun m!4425249 () Bool)

(assert (=> b!3869097 m!4425249))

(declare-fun m!4425251 () Bool)

(assert (=> b!3869098 m!4425251))

(declare-fun b!3869101 () Bool)

(declare-fun e!2392890 () Bool)

(assert (=> b!3869101 (= e!2392890 tp_is_empty!19521)))

(declare-fun b!3869104 () Bool)

(declare-fun tp!1173114 () Bool)

(declare-fun tp!1173110 () Bool)

(assert (=> b!3869104 (= e!2392890 (and tp!1173114 tp!1173110))))

(assert (=> b!3868455 (= tp!1172973 e!2392890)))

(declare-fun b!3869103 () Bool)

(declare-fun tp!1173112 () Bool)

(assert (=> b!3869103 (= e!2392890 tp!1173112)))

(declare-fun b!3869102 () Bool)

(declare-fun tp!1173111 () Bool)

(declare-fun tp!1173113 () Bool)

(assert (=> b!3869102 (= e!2392890 (and tp!1173111 tp!1173113))))

(assert (= (and b!3868455 ((_ is ElementMatch!11275) (regex!6370 (rule!9252 (h!46506 suffixTokens!72))))) b!3869101))

(assert (= (and b!3868455 ((_ is Concat!17876) (regex!6370 (rule!9252 (h!46506 suffixTokens!72))))) b!3869102))

(assert (= (and b!3868455 ((_ is Star!11275) (regex!6370 (rule!9252 (h!46506 suffixTokens!72))))) b!3869103))

(assert (= (and b!3868455 ((_ is Union!11275) (regex!6370 (rule!9252 (h!46506 suffixTokens!72))))) b!3869104))

(declare-fun b_lambda!113027 () Bool)

(assert (= b_lambda!113021 (or (and b!3868493 b_free!104367) (and b!3869083 b_free!104391 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))))) (and b!3869096 b_free!104395 (= (toChars!8657 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))))) (and b!3869100 b_free!104399 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))))) (and b!3868457 b_free!104371 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))))) (and b!3868461 b_free!104375 (= (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))))) b_lambda!113027)))

(declare-fun b_lambda!113029 () Bool)

(assert (= b_lambda!113007 (or (and b!3869096 b_free!104395 (= (toChars!8657 (transformation!6370 (h!46507 (t!314182 rules!2768)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))))) (and b!3869083 b_free!104391 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 prefixTokens!80))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))))) (and b!3868493 b_free!104367 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 suffixTokens!72)))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))))) (and b!3869100 b_free!104399 (= (toChars!8657 (transformation!6370 (rule!9252 (h!46506 (t!314181 suffixTokens!72))))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))))) (and b!3868461 b_free!104375 (= (toChars!8657 (transformation!6370 (h!46507 rules!2768))) (toChars!8657 (transformation!6370 (rule!9252 (h!46506 prefixTokens!80)))))) (and b!3868457 b_free!104371) b_lambda!113029)))

(check-sat (not b!3868801) (not b!3869064) (not b!3868763) (not d!1145998) (not b!3868625) (not b!3868651) (not d!1145754) (not b!3869069) (not d!1145896) (not b!3868933) (not b!3868908) (not b!3869043) (not b_next!105097) (not d!1145804) (not b!3869097) (not b!3868833) (not b!3868935) (not b!3869082) (not d!1145890) (not b!3868909) (not d!1145974) (not d!1145970) (not b!3868604) (not b_lambda!113017) (not b!3869049) (not b!3868869) (not b!3869067) (not d!1145892) (not b_next!105099) (not d!1145898) (not b_next!105073) (not d!1145802) b_and!289931 (not b!3868812) (not d!1145894) (not b!3868539) (not b!3868786) (not b_next!105095) (not b!3868829) (not b!3869102) (not d!1145824) (not d!1145880) (not d!1145900) (not b!3868883) b_and!289913 b_and!289933 (not d!1145818) (not b!3868521) (not b!3868768) (not b!3868868) (not b_lambda!113015) (not b!3869037) (not b!3868861) (not b!3868506) (not b!3868832) (not d!1145994) b_and!289947 (not d!1145964) (not b!3868520) (not b!3868837) (not d!1145814) (not d!1145908) (not b!3868626) b_and!289929 (not b!3868799) (not b!3868895) (not b!3869080) (not b!3868880) (not b!3869038) (not b!3868893) (not d!1145920) (not b!3868761) (not b!3868928) (not b!3868524) (not b_next!105101) (not b!3868881) (not b_lambda!113029) (not d!1145958) (not b_next!105075) (not b!3868764) b_and!289949 (not b!3869051) b_and!289951 (not b!3868939) (not b!3868613) (not d!1145946) (not b!3869098) (not d!1145906) (not b!3868934) (not d!1145930) (not b!3868765) (not b!3868760) (not d!1145926) (not b!3868766) (not d!1145918) (not b!3868649) (not b_lambda!113027) (not b!3868592) (not d!1145766) (not d!1145934) b_and!289955 (not d!1145756) (not b!3868593) (not b!3868937) b_and!289957 (not b!3868767) (not b!3868783) (not b!3868793) (not tb!224273) (not b!3869104) (not b!3868904) (not d!1145902) (not tb!224297) b_and!289911 (not d!1145884) (not b!3869039) (not b!3868650) (not b!3869042) (not b!3868839) (not b!3868509) (not b!3868605) (not b_next!105103) (not b!3868842) (not b_next!105079) (not b_next!105069) (not d!1145914) (not d!1145750) (not b!3868794) tp_is_empty!19521 (not b!3869099) (not b!3868845) (not b!3868905) (not d!1145822) (not b!3869040) (not b!3868828) (not b!3869081) (not d!1145940) (not tb!224303) (not b!3868865) (not b!3868849) (not b!3869094) (not b!3868519) (not b!3868792) (not b!3868615) (not b!3869063) (not b!3868892) (not tb!224315) b_and!289915 (not b!3868784) (not b!3869103) (not b!3868929) (not b!3869036) (not d!1145758) (not d!1145912) (not b!3868916) (not b!3868866) (not b!3868636) (not b!3868770) (not b!3868841) (not d!1145816) (not d!1146004) (not b!3869095) (not b!3868918) (not b!3869085) (not b_next!105093) (not b!3868791) (not b!3869065) (not b!3869044) (not b!3869084) (not b!3869068) (not d!1145910) (not b!3868612) (not b!3868771) (not d!1145882) (not b!3868507) (not b!3868847) (not d!1146022) (not b!3868610) (not bm!282691) (not b!3868846) (not b!3869050) (not d!1145776) (not b!3868864) (not d!1145944) (not b_next!105077) (not b!3868931) (not b_next!105071) b_and!289953 (not b!3868836) (not b!3868860))
(check-sat (not b_next!105097) b_and!289947 b_and!289929 (not b_next!105101) (not b_next!105075) b_and!289949 b_and!289951 b_and!289955 b_and!289957 b_and!289911 (not b_next!105103) b_and!289915 (not b_next!105093) (not b_next!105077) (not b_next!105099) (not b_next!105073) b_and!289931 (not b_next!105095) b_and!289913 b_and!289933 (not b_next!105079) (not b_next!105069) (not b_next!105071) b_and!289953)
