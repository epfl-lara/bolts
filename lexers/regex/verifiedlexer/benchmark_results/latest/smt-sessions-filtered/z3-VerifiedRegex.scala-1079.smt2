; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55360 () Bool)

(assert start!55360)

(declare-fun b!590887 () Bool)

(declare-fun b_free!16573 () Bool)

(declare-fun b_next!16589 () Bool)

(assert (=> b!590887 (= b_free!16573 (not b_next!16589))))

(declare-fun tp!184273 () Bool)

(declare-fun b_and!58219 () Bool)

(assert (=> b!590887 (= tp!184273 b_and!58219)))

(declare-fun b_free!16575 () Bool)

(declare-fun b_next!16591 () Bool)

(assert (=> b!590887 (= b_free!16575 (not b_next!16591))))

(declare-fun tp!184271 () Bool)

(declare-fun b_and!58221 () Bool)

(assert (=> b!590887 (= tp!184271 b_and!58221)))

(declare-fun b!590877 () Bool)

(declare-fun b_free!16577 () Bool)

(declare-fun b_next!16593 () Bool)

(assert (=> b!590877 (= b_free!16577 (not b_next!16593))))

(declare-fun tp!184270 () Bool)

(declare-fun b_and!58223 () Bool)

(assert (=> b!590877 (= tp!184270 b_and!58223)))

(declare-fun b_free!16579 () Bool)

(declare-fun b_next!16595 () Bool)

(assert (=> b!590877 (= b_free!16579 (not b_next!16595))))

(declare-fun tp!184267 () Bool)

(declare-fun b_and!58225 () Bool)

(assert (=> b!590877 (= tp!184267 b_and!58225)))

(declare-fun b!590875 () Bool)

(declare-fun e!357257 () Bool)

(declare-fun e!357258 () Bool)

(assert (=> b!590875 (= e!357257 e!357258)))

(declare-fun res!254704 () Bool)

(assert (=> b!590875 (=> (not res!254704) (not e!357258))))

(declare-datatypes ((C!3880 0))(
  ( (C!3881 (val!2166 Int)) )
))
(declare-datatypes ((Regex!1479 0))(
  ( (ElementMatch!1479 (c!110257 C!3880)) (Concat!2648 (regOne!3470 Regex!1479) (regTwo!3470 Regex!1479)) (EmptyExpr!1479) (Star!1479 (reg!1808 Regex!1479)) (EmptyLang!1479) (Union!1479 (regOne!3471 Regex!1479) (regTwo!3471 Regex!1479)) )
))
(declare-datatypes ((List!5842 0))(
  ( (Nil!5832) (Cons!5832 (h!11233 (_ BitVec 16)) (t!78957 List!5842)) )
))
(declare-datatypes ((List!5843 0))(
  ( (Nil!5833) (Cons!5833 (h!11234 C!3880) (t!78958 List!5843)) )
))
(declare-datatypes ((IArray!3725 0))(
  ( (IArray!3726 (innerList!1920 List!5843)) )
))
(declare-datatypes ((Conc!1862 0))(
  ( (Node!1862 (left!4743 Conc!1862) (right!5073 Conc!1862) (csize!3954 Int) (cheight!2073 Int)) (Leaf!2942 (xs!4499 IArray!3725) (csize!3955 Int)) (Empty!1862) )
))
(declare-datatypes ((BalanceConc!3732 0))(
  ( (BalanceConc!3733 (c!110258 Conc!1862)) )
))
(declare-datatypes ((TokenValue!1169 0))(
  ( (FloatLiteralValue!2338 (text!8628 List!5842)) (TokenValueExt!1168 (__x!4236 Int)) (Broken!5845 (value!37473 List!5842)) (Object!1178) (End!1169) (Def!1169) (Underscore!1169) (Match!1169) (Else!1169) (Error!1169) (Case!1169) (If!1169) (Extends!1169) (Abstract!1169) (Class!1169) (Val!1169) (DelimiterValue!2338 (del!1229 List!5842)) (KeywordValue!1175 (value!37474 List!5842)) (CommentValue!2338 (value!37475 List!5842)) (WhitespaceValue!2338 (value!37476 List!5842)) (IndentationValue!1169 (value!37477 List!5842)) (String!7588) (Int32!1169) (Broken!5846 (value!37478 List!5842)) (Boolean!1170) (Unit!10590) (OperatorValue!1172 (op!1229 List!5842)) (IdentifierValue!2338 (value!37479 List!5842)) (IdentifierValue!2339 (value!37480 List!5842)) (WhitespaceValue!2339 (value!37481 List!5842)) (True!2338) (False!2338) (Broken!5847 (value!37482 List!5842)) (Broken!5848 (value!37483 List!5842)) (True!2339) (RightBrace!1169) (RightBracket!1169) (Colon!1169) (Null!1169) (Comma!1169) (LeftBracket!1169) (False!2339) (LeftBrace!1169) (ImaginaryLiteralValue!1169 (text!8629 List!5842)) (StringLiteralValue!3507 (value!37484 List!5842)) (EOFValue!1169 (value!37485 List!5842)) (IdentValue!1169 (value!37486 List!5842)) (DelimiterValue!2339 (value!37487 List!5842)) (DedentValue!1169 (value!37488 List!5842)) (NewLineValue!1169 (value!37489 List!5842)) (IntegerValue!3507 (value!37490 (_ BitVec 32)) (text!8630 List!5842)) (IntegerValue!3508 (value!37491 Int) (text!8631 List!5842)) (Times!1169) (Or!1169) (Equal!1169) (Minus!1169) (Broken!5849 (value!37492 List!5842)) (And!1169) (Div!1169) (LessEqual!1169) (Mod!1169) (Concat!2649) (Not!1169) (Plus!1169) (SpaceValue!1169 (value!37493 List!5842)) (IntegerValue!3509 (value!37494 Int) (text!8632 List!5842)) (StringLiteralValue!3508 (text!8633 List!5842)) (FloatLiteralValue!2339 (text!8634 List!5842)) (BytesLiteralValue!1169 (value!37495 List!5842)) (CommentValue!2339 (value!37496 List!5842)) (StringLiteralValue!3509 (value!37497 List!5842)) (ErrorTokenValue!1169 (msg!1230 List!5842)) )
))
(declare-datatypes ((String!7589 0))(
  ( (String!7590 (value!37498 String)) )
))
(declare-datatypes ((TokenValueInjection!2106 0))(
  ( (TokenValueInjection!2107 (toValue!2032 Int) (toChars!1891 Int)) )
))
(declare-datatypes ((Rule!2090 0))(
  ( (Rule!2091 (regex!1145 Regex!1479) (tag!1407 String!7589) (isSeparator!1145 Bool) (transformation!1145 TokenValueInjection!2106)) )
))
(declare-datatypes ((Token!2026 0))(
  ( (Token!2027 (value!37499 TokenValue!1169) (rule!1913 Rule!2090) (size!4622 Int) (originalCharacters!1184 List!5843)) )
))
(declare-datatypes ((tuple2!6780 0))(
  ( (tuple2!6781 (_1!3654 Token!2026) (_2!3654 List!5843)) )
))
(declare-fun lt!250320 () tuple2!6780)

(declare-fun token!491 () Token!2026)

(declare-fun suffix!1342 () List!5843)

(assert (=> b!590875 (= res!254704 (and (= (_1!3654 lt!250320) token!491) (= (_2!3654 lt!250320) suffix!1342)))))

(declare-datatypes ((Option!1496 0))(
  ( (None!1495) (Some!1495 (v!16380 tuple2!6780)) )
))
(declare-fun lt!250330 () Option!1496)

(declare-fun get!2232 (Option!1496) tuple2!6780)

(assert (=> b!590875 (= lt!250320 (get!2232 lt!250330))))

(declare-fun b!590876 () Bool)

(declare-fun e!357255 () Bool)

(assert (=> b!590876 (= e!357258 e!357255)))

(declare-fun res!254706 () Bool)

(assert (=> b!590876 (=> (not res!254706) (not e!357255))))

(declare-fun lt!250324 () Option!1496)

(get-info :version)

(assert (=> b!590876 (= res!254706 ((_ is Some!1495) lt!250324))))

(declare-datatypes ((List!5844 0))(
  ( (Nil!5834) (Cons!5834 (h!11235 Rule!2090) (t!78959 List!5844)) )
))
(declare-fun rules!3103 () List!5844)

(declare-datatypes ((LexerInterface!1031 0))(
  ( (LexerInterfaceExt!1028 (__x!4237 Int)) (Lexer!1029) )
))
(declare-fun thiss!22590 () LexerInterface!1031)

(declare-fun input!2705 () List!5843)

(declare-fun maxPrefix!729 (LexerInterface!1031 List!5844 List!5843) Option!1496)

(assert (=> b!590876 (= lt!250324 (maxPrefix!729 thiss!22590 rules!3103 input!2705))))

(declare-fun e!357265 () Bool)

(assert (=> b!590877 (= e!357265 (and tp!184270 tp!184267))))

(declare-fun b!590878 () Bool)

(declare-fun e!357259 () Bool)

(declare-fun e!357253 () Bool)

(declare-fun tp!184268 () Bool)

(assert (=> b!590878 (= e!357259 (and e!357253 tp!184268))))

(declare-fun b!590879 () Bool)

(declare-fun tp!184266 () Bool)

(declare-fun e!357266 () Bool)

(declare-fun inv!7381 (String!7589) Bool)

(declare-fun inv!7384 (TokenValueInjection!2106) Bool)

(assert (=> b!590879 (= e!357266 (and tp!184266 (inv!7381 (tag!1407 (rule!1913 token!491))) (inv!7384 (transformation!1145 (rule!1913 token!491))) e!357265))))

(declare-fun b!590880 () Bool)

(declare-fun res!254708 () Bool)

(declare-fun e!357264 () Bool)

(assert (=> b!590880 (=> (not res!254708) (not e!357264))))

(declare-fun isEmpty!4211 (List!5843) Bool)

(assert (=> b!590880 (= res!254708 (not (isEmpty!4211 input!2705)))))

(declare-fun b!590881 () Bool)

(declare-fun e!357254 () Bool)

(assert (=> b!590881 (= e!357264 e!357254)))

(declare-fun res!254703 () Bool)

(assert (=> b!590881 (=> (not res!254703) (not e!357254))))

(declare-fun lt!250314 () List!5843)

(assert (=> b!590881 (= res!254703 (= lt!250314 input!2705))))

(declare-fun list!2440 (BalanceConc!3732) List!5843)

(declare-fun charsOf!774 (Token!2026) BalanceConc!3732)

(assert (=> b!590881 (= lt!250314 (list!2440 (charsOf!774 token!491)))))

(declare-fun b!590882 () Bool)

(declare-fun res!254705 () Bool)

(assert (=> b!590882 (=> (not res!254705) (not e!357264))))

(declare-fun isEmpty!4212 (List!5844) Bool)

(assert (=> b!590882 (= res!254705 (not (isEmpty!4212 rules!3103)))))

(declare-fun b!590883 () Bool)

(declare-fun e!357252 () Bool)

(declare-fun tp_is_empty!3313 () Bool)

(declare-fun tp!184265 () Bool)

(assert (=> b!590883 (= e!357252 (and tp_is_empty!3313 tp!184265))))

(declare-fun b!590884 () Bool)

(declare-datatypes ((Unit!10591 0))(
  ( (Unit!10592) )
))
(declare-fun e!357263 () Unit!10591)

(declare-fun Unit!10593 () Unit!10591)

(assert (=> b!590884 (= e!357263 Unit!10593)))

(assert (=> b!590884 false))

(declare-fun b!590885 () Bool)

(declare-fun res!254701 () Bool)

(assert (=> b!590885 (=> (not res!254701) (not e!357264))))

(declare-fun rulesInvariant!994 (LexerInterface!1031 List!5844) Bool)

(assert (=> b!590885 (= res!254701 (rulesInvariant!994 thiss!22590 rules!3103))))

(declare-fun b!590886 () Bool)

(declare-fun size!4623 (List!5843) Int)

(assert (=> b!590886 (= e!357255 (not (= (size!4622 (_1!3654 (v!16380 lt!250324))) (size!4623 (originalCharacters!1184 (_1!3654 (v!16380 lt!250324)))))))))

(declare-fun lt!250328 () List!5843)

(declare-fun apply!1398 (TokenValueInjection!2106 BalanceConc!3732) TokenValue!1169)

(declare-fun seqFromList!1321 (List!5843) BalanceConc!3732)

(assert (=> b!590886 (= (value!37499 (_1!3654 (v!16380 lt!250324))) (apply!1398 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))) (seqFromList!1321 lt!250328)))))

(declare-fun lt!250316 () Unit!10591)

(declare-fun lemmaInv!253 (TokenValueInjection!2106) Unit!10591)

(assert (=> b!590886 (= lt!250316 (lemmaInv!253 (transformation!1145 (rule!1913 token!491))))))

(declare-fun lt!250325 () Unit!10591)

(assert (=> b!590886 (= lt!250325 (lemmaInv!253 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))))))

(declare-fun ruleValid!343 (LexerInterface!1031 Rule!2090) Bool)

(assert (=> b!590886 (ruleValid!343 thiss!22590 (rule!1913 token!491))))

(declare-fun lt!250323 () Unit!10591)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!190 (LexerInterface!1031 Rule!2090 List!5844) Unit!10591)

(assert (=> b!590886 (= lt!250323 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!190 thiss!22590 (rule!1913 token!491) rules!3103))))

(assert (=> b!590886 (ruleValid!343 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324))))))

(declare-fun lt!250319 () Unit!10591)

(assert (=> b!590886 (= lt!250319 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!190 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324))) rules!3103))))

(declare-fun isPrefix!773 (List!5843 List!5843) Bool)

(assert (=> b!590886 (isPrefix!773 input!2705 input!2705)))

(declare-fun lt!250329 () Unit!10591)

(declare-fun lemmaIsPrefixRefl!509 (List!5843 List!5843) Unit!10591)

(assert (=> b!590886 (= lt!250329 (lemmaIsPrefixRefl!509 input!2705 input!2705))))

(declare-fun lt!250313 () List!5843)

(assert (=> b!590886 (= (_2!3654 (v!16380 lt!250324)) lt!250313)))

(declare-fun lt!250315 () Unit!10591)

(declare-fun lemmaSamePrefixThenSameSuffix!486 (List!5843 List!5843 List!5843 List!5843 List!5843) Unit!10591)

(assert (=> b!590886 (= lt!250315 (lemmaSamePrefixThenSameSuffix!486 lt!250328 (_2!3654 (v!16380 lt!250324)) lt!250328 lt!250313 input!2705))))

(declare-fun getSuffix!290 (List!5843 List!5843) List!5843)

(assert (=> b!590886 (= lt!250313 (getSuffix!290 input!2705 lt!250328))))

(declare-fun ++!1633 (List!5843 List!5843) List!5843)

(assert (=> b!590886 (isPrefix!773 lt!250328 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))))))

(declare-fun lt!250322 () Unit!10591)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!618 (List!5843 List!5843) Unit!10591)

(assert (=> b!590886 (= lt!250322 (lemmaConcatTwoListThenFirstIsPrefix!618 lt!250328 (_2!3654 (v!16380 lt!250324))))))

(declare-fun lt!250318 () Unit!10591)

(declare-fun lemmaCharactersSize!204 (Token!2026) Unit!10591)

(assert (=> b!590886 (= lt!250318 (lemmaCharactersSize!204 token!491))))

(declare-fun lt!250317 () Unit!10591)

(assert (=> b!590886 (= lt!250317 (lemmaCharactersSize!204 (_1!3654 (v!16380 lt!250324))))))

(declare-fun lt!250326 () Unit!10591)

(assert (=> b!590886 (= lt!250326 e!357263)))

(declare-fun c!110256 () Bool)

(assert (=> b!590886 (= c!110256 (> (size!4623 lt!250328) (size!4623 lt!250314)))))

(assert (=> b!590886 (= lt!250328 (list!2440 (charsOf!774 (_1!3654 (v!16380 lt!250324)))))))

(assert (=> b!590886 (= lt!250324 (Some!1495 (v!16380 lt!250324)))))

(declare-fun lt!250321 () Unit!10591)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!218 (List!5843 List!5843 List!5843 List!5843) Unit!10591)

(assert (=> b!590886 (= lt!250321 (lemmaConcatSameAndSameSizesThenSameLists!218 lt!250314 suffix!1342 input!2705 suffix!1342))))

(declare-fun e!357262 () Bool)

(assert (=> b!590887 (= e!357262 (and tp!184273 tp!184271))))

(declare-fun b!590889 () Bool)

(declare-fun e!357251 () Bool)

(declare-fun tp!184272 () Bool)

(declare-fun inv!21 (TokenValue!1169) Bool)

(assert (=> b!590889 (= e!357251 (and (inv!21 (value!37499 token!491)) e!357266 tp!184272))))

(declare-fun b!590890 () Bool)

(declare-fun res!254700 () Bool)

(assert (=> b!590890 (=> (not res!254700) (not e!357255))))

(declare-fun lt!250327 () List!5843)

(assert (=> b!590890 (= res!254700 (= (++!1633 lt!250314 suffix!1342) lt!250327))))

(declare-fun b!590891 () Bool)

(assert (=> b!590891 (= e!357254 e!357257)))

(declare-fun res!254702 () Bool)

(assert (=> b!590891 (=> (not res!254702) (not e!357257))))

(declare-fun isDefined!1307 (Option!1496) Bool)

(assert (=> b!590891 (= res!254702 (isDefined!1307 lt!250330))))

(assert (=> b!590891 (= lt!250330 (maxPrefix!729 thiss!22590 rules!3103 lt!250327))))

(assert (=> b!590891 (= lt!250327 (++!1633 input!2705 suffix!1342))))

(declare-fun b!590892 () Bool)

(declare-fun e!357260 () Bool)

(declare-fun tp!184274 () Bool)

(assert (=> b!590892 (= e!357260 (and tp_is_empty!3313 tp!184274))))

(declare-fun tp!184269 () Bool)

(declare-fun b!590893 () Bool)

(assert (=> b!590893 (= e!357253 (and tp!184269 (inv!7381 (tag!1407 (h!11235 rules!3103))) (inv!7384 (transformation!1145 (h!11235 rules!3103))) e!357262))))

(declare-fun res!254707 () Bool)

(assert (=> start!55360 (=> (not res!254707) (not e!357264))))

(assert (=> start!55360 (= res!254707 ((_ is Lexer!1029) thiss!22590))))

(assert (=> start!55360 e!357264))

(assert (=> start!55360 e!357260))

(assert (=> start!55360 e!357259))

(declare-fun inv!7385 (Token!2026) Bool)

(assert (=> start!55360 (and (inv!7385 token!491) e!357251)))

(assert (=> start!55360 true))

(assert (=> start!55360 e!357252))

(declare-fun b!590888 () Bool)

(declare-fun Unit!10594 () Unit!10591)

(assert (=> b!590888 (= e!357263 Unit!10594)))

(assert (= (and start!55360 res!254707) b!590882))

(assert (= (and b!590882 res!254705) b!590885))

(assert (= (and b!590885 res!254701) b!590880))

(assert (= (and b!590880 res!254708) b!590881))

(assert (= (and b!590881 res!254703) b!590891))

(assert (= (and b!590891 res!254702) b!590875))

(assert (= (and b!590875 res!254704) b!590876))

(assert (= (and b!590876 res!254706) b!590890))

(assert (= (and b!590890 res!254700) b!590886))

(assert (= (and b!590886 c!110256) b!590884))

(assert (= (and b!590886 (not c!110256)) b!590888))

(assert (= (and start!55360 ((_ is Cons!5833) suffix!1342)) b!590892))

(assert (= b!590893 b!590887))

(assert (= b!590878 b!590893))

(assert (= (and start!55360 ((_ is Cons!5834) rules!3103)) b!590878))

(assert (= b!590879 b!590877))

(assert (= b!590889 b!590879))

(assert (= start!55360 b!590889))

(assert (= (and start!55360 ((_ is Cons!5833) input!2705)) b!590883))

(declare-fun m!852017 () Bool)

(assert (=> b!590881 m!852017))

(assert (=> b!590881 m!852017))

(declare-fun m!852019 () Bool)

(assert (=> b!590881 m!852019))

(declare-fun m!852021 () Bool)

(assert (=> b!590875 m!852021))

(declare-fun m!852023 () Bool)

(assert (=> b!590886 m!852023))

(declare-fun m!852025 () Bool)

(assert (=> b!590886 m!852025))

(declare-fun m!852027 () Bool)

(assert (=> b!590886 m!852027))

(declare-fun m!852029 () Bool)

(assert (=> b!590886 m!852029))

(declare-fun m!852031 () Bool)

(assert (=> b!590886 m!852031))

(declare-fun m!852033 () Bool)

(assert (=> b!590886 m!852033))

(declare-fun m!852035 () Bool)

(assert (=> b!590886 m!852035))

(declare-fun m!852037 () Bool)

(assert (=> b!590886 m!852037))

(declare-fun m!852039 () Bool)

(assert (=> b!590886 m!852039))

(declare-fun m!852041 () Bool)

(assert (=> b!590886 m!852041))

(declare-fun m!852043 () Bool)

(assert (=> b!590886 m!852043))

(declare-fun m!852045 () Bool)

(assert (=> b!590886 m!852045))

(declare-fun m!852047 () Bool)

(assert (=> b!590886 m!852047))

(declare-fun m!852049 () Bool)

(assert (=> b!590886 m!852049))

(declare-fun m!852051 () Bool)

(assert (=> b!590886 m!852051))

(declare-fun m!852053 () Bool)

(assert (=> b!590886 m!852053))

(assert (=> b!590886 m!852027))

(declare-fun m!852055 () Bool)

(assert (=> b!590886 m!852055))

(declare-fun m!852057 () Bool)

(assert (=> b!590886 m!852057))

(declare-fun m!852059 () Bool)

(assert (=> b!590886 m!852059))

(assert (=> b!590886 m!852025))

(declare-fun m!852061 () Bool)

(assert (=> b!590886 m!852061))

(declare-fun m!852063 () Bool)

(assert (=> b!590886 m!852063))

(declare-fun m!852065 () Bool)

(assert (=> b!590886 m!852065))

(assert (=> b!590886 m!852039))

(declare-fun m!852067 () Bool)

(assert (=> b!590886 m!852067))

(declare-fun m!852069 () Bool)

(assert (=> b!590880 m!852069))

(declare-fun m!852071 () Bool)

(assert (=> b!590893 m!852071))

(declare-fun m!852073 () Bool)

(assert (=> b!590893 m!852073))

(declare-fun m!852075 () Bool)

(assert (=> start!55360 m!852075))

(declare-fun m!852077 () Bool)

(assert (=> b!590889 m!852077))

(declare-fun m!852079 () Bool)

(assert (=> b!590891 m!852079))

(declare-fun m!852081 () Bool)

(assert (=> b!590891 m!852081))

(declare-fun m!852083 () Bool)

(assert (=> b!590891 m!852083))

(declare-fun m!852085 () Bool)

(assert (=> b!590876 m!852085))

(declare-fun m!852087 () Bool)

(assert (=> b!590879 m!852087))

(declare-fun m!852089 () Bool)

(assert (=> b!590879 m!852089))

(declare-fun m!852091 () Bool)

(assert (=> b!590890 m!852091))

(declare-fun m!852093 () Bool)

(assert (=> b!590882 m!852093))

(declare-fun m!852095 () Bool)

(assert (=> b!590885 m!852095))

(check-sat (not start!55360) (not b!590891) b_and!58223 (not b!590890) (not b!590876) (not b_next!16593) b_and!58219 tp_is_empty!3313 (not b!590886) (not b!590889) (not b!590883) b_and!58225 (not b!590881) (not b_next!16589) (not b_next!16595) (not b!590875) (not b!590892) b_and!58221 (not b!590880) (not b_next!16591) (not b!590879) (not b!590882) (not b!590893) (not b!590878) (not b!590885))
(check-sat (not b_next!16589) b_and!58223 (not b_next!16593) (not b_next!16595) b_and!58219 b_and!58221 (not b_next!16591) b_and!58225)
(get-model)

(declare-fun b!590969 () Bool)

(declare-fun e!357314 () Option!1496)

(declare-fun lt!250360 () Option!1496)

(declare-fun lt!250362 () Option!1496)

(assert (=> b!590969 (= e!357314 (ite (and ((_ is None!1495) lt!250360) ((_ is None!1495) lt!250362)) None!1495 (ite ((_ is None!1495) lt!250362) lt!250360 (ite ((_ is None!1495) lt!250360) lt!250362 (ite (>= (size!4622 (_1!3654 (v!16380 lt!250360))) (size!4622 (_1!3654 (v!16380 lt!250362)))) lt!250360 lt!250362)))))))

(declare-fun call!40316 () Option!1496)

(assert (=> b!590969 (= lt!250360 call!40316)))

(assert (=> b!590969 (= lt!250362 (maxPrefix!729 thiss!22590 (t!78959 rules!3103) input!2705))))

(declare-fun b!590970 () Bool)

(declare-fun res!254769 () Bool)

(declare-fun e!357313 () Bool)

(assert (=> b!590970 (=> (not res!254769) (not e!357313))))

(declare-fun lt!250361 () Option!1496)

(assert (=> b!590970 (= res!254769 (= (value!37499 (_1!3654 (get!2232 lt!250361))) (apply!1398 (transformation!1145 (rule!1913 (_1!3654 (get!2232 lt!250361)))) (seqFromList!1321 (originalCharacters!1184 (_1!3654 (get!2232 lt!250361)))))))))

(declare-fun d!207872 () Bool)

(declare-fun e!357312 () Bool)

(assert (=> d!207872 e!357312))

(declare-fun res!254772 () Bool)

(assert (=> d!207872 (=> res!254772 e!357312)))

(declare-fun isEmpty!4213 (Option!1496) Bool)

(assert (=> d!207872 (= res!254772 (isEmpty!4213 lt!250361))))

(assert (=> d!207872 (= lt!250361 e!357314)))

(declare-fun c!110268 () Bool)

(assert (=> d!207872 (= c!110268 (and ((_ is Cons!5834) rules!3103) ((_ is Nil!5834) (t!78959 rules!3103))))))

(declare-fun lt!250363 () Unit!10591)

(declare-fun lt!250359 () Unit!10591)

(assert (=> d!207872 (= lt!250363 lt!250359)))

(assert (=> d!207872 (isPrefix!773 input!2705 input!2705)))

(assert (=> d!207872 (= lt!250359 (lemmaIsPrefixRefl!509 input!2705 input!2705))))

(declare-fun rulesValidInductive!419 (LexerInterface!1031 List!5844) Bool)

(assert (=> d!207872 (rulesValidInductive!419 thiss!22590 rules!3103)))

(assert (=> d!207872 (= (maxPrefix!729 thiss!22590 rules!3103 input!2705) lt!250361)))

(declare-fun b!590971 () Bool)

(assert (=> b!590971 (= e!357314 call!40316)))

(declare-fun b!590972 () Bool)

(declare-fun res!254775 () Bool)

(assert (=> b!590972 (=> (not res!254775) (not e!357313))))

(assert (=> b!590972 (= res!254775 (= (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250361)))) (originalCharacters!1184 (_1!3654 (get!2232 lt!250361)))))))

(declare-fun b!590973 () Bool)

(declare-fun res!254774 () Bool)

(assert (=> b!590973 (=> (not res!254774) (not e!357313))))

(assert (=> b!590973 (= res!254774 (< (size!4623 (_2!3654 (get!2232 lt!250361))) (size!4623 input!2705)))))

(declare-fun b!590974 () Bool)

(assert (=> b!590974 (= e!357312 e!357313)))

(declare-fun res!254771 () Bool)

(assert (=> b!590974 (=> (not res!254771) (not e!357313))))

(assert (=> b!590974 (= res!254771 (isDefined!1307 lt!250361))))

(declare-fun b!590975 () Bool)

(declare-fun res!254770 () Bool)

(assert (=> b!590975 (=> (not res!254770) (not e!357313))))

(declare-fun matchR!611 (Regex!1479 List!5843) Bool)

(assert (=> b!590975 (= res!254770 (matchR!611 (regex!1145 (rule!1913 (_1!3654 (get!2232 lt!250361)))) (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250361))))))))

(declare-fun bm!40311 () Bool)

(declare-fun maxPrefixOneRule!415 (LexerInterface!1031 Rule!2090 List!5843) Option!1496)

(assert (=> bm!40311 (= call!40316 (maxPrefixOneRule!415 thiss!22590 (h!11235 rules!3103) input!2705))))

(declare-fun b!590976 () Bool)

(declare-fun contains!1375 (List!5844 Rule!2090) Bool)

(assert (=> b!590976 (= e!357313 (contains!1375 rules!3103 (rule!1913 (_1!3654 (get!2232 lt!250361)))))))

(declare-fun b!590977 () Bool)

(declare-fun res!254773 () Bool)

(assert (=> b!590977 (=> (not res!254773) (not e!357313))))

(assert (=> b!590977 (= res!254773 (= (++!1633 (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250361)))) (_2!3654 (get!2232 lt!250361))) input!2705))))

(assert (= (and d!207872 c!110268) b!590971))

(assert (= (and d!207872 (not c!110268)) b!590969))

(assert (= (or b!590971 b!590969) bm!40311))

(assert (= (and d!207872 (not res!254772)) b!590974))

(assert (= (and b!590974 res!254771) b!590972))

(assert (= (and b!590972 res!254775) b!590973))

(assert (= (and b!590973 res!254774) b!590977))

(assert (= (and b!590977 res!254773) b!590970))

(assert (= (and b!590970 res!254769) b!590975))

(assert (= (and b!590975 res!254770) b!590976))

(declare-fun m!852187 () Bool)

(assert (=> b!590973 m!852187))

(declare-fun m!852193 () Bool)

(assert (=> b!590973 m!852193))

(declare-fun m!852195 () Bool)

(assert (=> b!590973 m!852195))

(assert (=> b!590975 m!852187))

(declare-fun m!852197 () Bool)

(assert (=> b!590975 m!852197))

(assert (=> b!590975 m!852197))

(declare-fun m!852203 () Bool)

(assert (=> b!590975 m!852203))

(assert (=> b!590975 m!852203))

(declare-fun m!852205 () Bool)

(assert (=> b!590975 m!852205))

(declare-fun m!852207 () Bool)

(assert (=> d!207872 m!852207))

(assert (=> d!207872 m!852067))

(assert (=> d!207872 m!852045))

(declare-fun m!852209 () Bool)

(assert (=> d!207872 m!852209))

(assert (=> b!590972 m!852187))

(assert (=> b!590972 m!852197))

(assert (=> b!590972 m!852197))

(assert (=> b!590972 m!852203))

(declare-fun m!852211 () Bool)

(assert (=> b!590974 m!852211))

(declare-fun m!852213 () Bool)

(assert (=> bm!40311 m!852213))

(declare-fun m!852215 () Bool)

(assert (=> b!590969 m!852215))

(assert (=> b!590970 m!852187))

(declare-fun m!852217 () Bool)

(assert (=> b!590970 m!852217))

(assert (=> b!590970 m!852217))

(declare-fun m!852219 () Bool)

(assert (=> b!590970 m!852219))

(assert (=> b!590976 m!852187))

(declare-fun m!852221 () Bool)

(assert (=> b!590976 m!852221))

(assert (=> b!590977 m!852187))

(assert (=> b!590977 m!852197))

(assert (=> b!590977 m!852197))

(assert (=> b!590977 m!852203))

(assert (=> b!590977 m!852203))

(declare-fun m!852227 () Bool)

(assert (=> b!590977 m!852227))

(assert (=> b!590876 d!207872))

(declare-fun d!207926 () Bool)

(declare-fun lt!250375 () Int)

(assert (=> d!207926 (>= lt!250375 0)))

(declare-fun e!357327 () Int)

(assert (=> d!207926 (= lt!250375 e!357327)))

(declare-fun c!110275 () Bool)

(assert (=> d!207926 (= c!110275 ((_ is Nil!5833) (originalCharacters!1184 (_1!3654 (v!16380 lt!250324)))))))

(assert (=> d!207926 (= (size!4623 (originalCharacters!1184 (_1!3654 (v!16380 lt!250324)))) lt!250375)))

(declare-fun b!591001 () Bool)

(assert (=> b!591001 (= e!357327 0)))

(declare-fun b!591002 () Bool)

(assert (=> b!591002 (= e!357327 (+ 1 (size!4623 (t!78958 (originalCharacters!1184 (_1!3654 (v!16380 lt!250324)))))))))

(assert (= (and d!207926 c!110275) b!591001))

(assert (= (and d!207926 (not c!110275)) b!591002))

(declare-fun m!852233 () Bool)

(assert (=> b!591002 m!852233))

(assert (=> b!590886 d!207926))

(declare-fun d!207932 () Bool)

(declare-fun e!357339 () Bool)

(assert (=> d!207932 e!357339))

(declare-fun res!254798 () Bool)

(assert (=> d!207932 (=> res!254798 e!357339)))

(declare-fun lt!250386 () Bool)

(assert (=> d!207932 (= res!254798 (not lt!250386))))

(declare-fun e!357340 () Bool)

(assert (=> d!207932 (= lt!250386 e!357340)))

(declare-fun res!254797 () Bool)

(assert (=> d!207932 (=> res!254797 e!357340)))

(assert (=> d!207932 (= res!254797 ((_ is Nil!5833) lt!250328))))

(assert (=> d!207932 (= (isPrefix!773 lt!250328 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324)))) lt!250386)))

(declare-fun b!591016 () Bool)

(declare-fun e!357341 () Bool)

(assert (=> b!591016 (= e!357340 e!357341)))

(declare-fun res!254796 () Bool)

(assert (=> b!591016 (=> (not res!254796) (not e!357341))))

(assert (=> b!591016 (= res!254796 (not ((_ is Nil!5833) (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))))))))

(declare-fun b!591018 () Bool)

(declare-fun tail!779 (List!5843) List!5843)

(assert (=> b!591018 (= e!357341 (isPrefix!773 (tail!779 lt!250328) (tail!779 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))))))))

(declare-fun b!591019 () Bool)

(assert (=> b!591019 (= e!357339 (>= (size!4623 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324)))) (size!4623 lt!250328)))))

(declare-fun b!591017 () Bool)

(declare-fun res!254795 () Bool)

(assert (=> b!591017 (=> (not res!254795) (not e!357341))))

(declare-fun head!1250 (List!5843) C!3880)

(assert (=> b!591017 (= res!254795 (= (head!1250 lt!250328) (head!1250 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))))))))

(assert (= (and d!207932 (not res!254797)) b!591016))

(assert (= (and b!591016 res!254796) b!591017))

(assert (= (and b!591017 res!254795) b!591018))

(assert (= (and d!207932 (not res!254798)) b!591019))

(declare-fun m!852253 () Bool)

(assert (=> b!591018 m!852253))

(assert (=> b!591018 m!852027))

(declare-fun m!852255 () Bool)

(assert (=> b!591018 m!852255))

(assert (=> b!591018 m!852253))

(assert (=> b!591018 m!852255))

(declare-fun m!852257 () Bool)

(assert (=> b!591018 m!852257))

(assert (=> b!591019 m!852027))

(declare-fun m!852259 () Bool)

(assert (=> b!591019 m!852259))

(assert (=> b!591019 m!852051))

(declare-fun m!852261 () Bool)

(assert (=> b!591017 m!852261))

(assert (=> b!591017 m!852027))

(declare-fun m!852263 () Bool)

(assert (=> b!591017 m!852263))

(assert (=> b!590886 d!207932))

(declare-fun d!207944 () Bool)

(declare-fun lt!250389 () List!5843)

(assert (=> d!207944 (= (++!1633 lt!250328 lt!250389) input!2705)))

(declare-fun e!357344 () List!5843)

(assert (=> d!207944 (= lt!250389 e!357344)))

(declare-fun c!110279 () Bool)

(assert (=> d!207944 (= c!110279 ((_ is Cons!5833) lt!250328))))

(assert (=> d!207944 (>= (size!4623 input!2705) (size!4623 lt!250328))))

(assert (=> d!207944 (= (getSuffix!290 input!2705 lt!250328) lt!250389)))

(declare-fun b!591024 () Bool)

(assert (=> b!591024 (= e!357344 (getSuffix!290 (tail!779 input!2705) (t!78958 lt!250328)))))

(declare-fun b!591025 () Bool)

(assert (=> b!591025 (= e!357344 input!2705)))

(assert (= (and d!207944 c!110279) b!591024))

(assert (= (and d!207944 (not c!110279)) b!591025))

(declare-fun m!852265 () Bool)

(assert (=> d!207944 m!852265))

(assert (=> d!207944 m!852195))

(assert (=> d!207944 m!852051))

(declare-fun m!852267 () Bool)

(assert (=> b!591024 m!852267))

(assert (=> b!591024 m!852267))

(declare-fun m!852269 () Bool)

(assert (=> b!591024 m!852269))

(assert (=> b!590886 d!207944))

(declare-fun d!207946 () Bool)

(declare-fun e!357347 () Bool)

(assert (=> d!207946 e!357347))

(declare-fun res!254801 () Bool)

(assert (=> d!207946 (=> (not res!254801) (not e!357347))))

(declare-fun semiInverseModEq!451 (Int Int) Bool)

(assert (=> d!207946 (= res!254801 (semiInverseModEq!451 (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))))))

(declare-fun Unit!10599 () Unit!10591)

(assert (=> d!207946 (= (lemmaInv!253 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) Unit!10599)))

(declare-fun b!591028 () Bool)

(declare-fun equivClasses!434 (Int Int) Bool)

(assert (=> b!591028 (= e!357347 (equivClasses!434 (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))))))

(assert (= (and d!207946 res!254801) b!591028))

(declare-fun m!852271 () Bool)

(assert (=> d!207946 m!852271))

(declare-fun m!852273 () Bool)

(assert (=> b!591028 m!852273))

(assert (=> b!590886 d!207946))

(declare-fun d!207948 () Bool)

(assert (=> d!207948 (isPrefix!773 lt!250328 (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))))))

(declare-fun lt!250402 () Unit!10591)

(declare-fun choose!4263 (List!5843 List!5843) Unit!10591)

(assert (=> d!207948 (= lt!250402 (choose!4263 lt!250328 (_2!3654 (v!16380 lt!250324))))))

(assert (=> d!207948 (= (lemmaConcatTwoListThenFirstIsPrefix!618 lt!250328 (_2!3654 (v!16380 lt!250324))) lt!250402)))

(declare-fun bs!70336 () Bool)

(assert (= bs!70336 d!207948))

(assert (=> bs!70336 m!852027))

(assert (=> bs!70336 m!852027))

(assert (=> bs!70336 m!852029))

(declare-fun m!852275 () Bool)

(assert (=> bs!70336 m!852275))

(assert (=> b!590886 d!207948))

(declare-fun d!207950 () Bool)

(declare-fun fromListB!578 (List!5843) BalanceConc!3732)

(assert (=> d!207950 (= (seqFromList!1321 lt!250328) (fromListB!578 lt!250328))))

(declare-fun bs!70337 () Bool)

(assert (= bs!70337 d!207950))

(declare-fun m!852277 () Bool)

(assert (=> bs!70337 m!852277))

(assert (=> b!590886 d!207950))

(declare-fun d!207952 () Bool)

(declare-fun res!254827 () Bool)

(declare-fun e!357359 () Bool)

(assert (=> d!207952 (=> (not res!254827) (not e!357359))))

(declare-fun validRegex!504 (Regex!1479) Bool)

(assert (=> d!207952 (= res!254827 (validRegex!504 (regex!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))))))

(assert (=> d!207952 (= (ruleValid!343 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324)))) e!357359)))

(declare-fun b!591060 () Bool)

(declare-fun res!254828 () Bool)

(assert (=> b!591060 (=> (not res!254828) (not e!357359))))

(declare-fun nullable!409 (Regex!1479) Bool)

(assert (=> b!591060 (= res!254828 (not (nullable!409 (regex!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))))))

(declare-fun b!591061 () Bool)

(assert (=> b!591061 (= e!357359 (not (= (tag!1407 (rule!1913 (_1!3654 (v!16380 lt!250324)))) (String!7590 ""))))))

(assert (= (and d!207952 res!254827) b!591060))

(assert (= (and b!591060 res!254828) b!591061))

(declare-fun m!852289 () Bool)

(assert (=> d!207952 m!852289))

(declare-fun m!852293 () Bool)

(assert (=> b!591060 m!852293))

(assert (=> b!590886 d!207952))

(declare-fun d!207954 () Bool)

(declare-fun lt!250408 () Int)

(assert (=> d!207954 (>= lt!250408 0)))

(declare-fun e!357360 () Int)

(assert (=> d!207954 (= lt!250408 e!357360)))

(declare-fun c!110283 () Bool)

(assert (=> d!207954 (= c!110283 ((_ is Nil!5833) lt!250314))))

(assert (=> d!207954 (= (size!4623 lt!250314) lt!250408)))

(declare-fun b!591062 () Bool)

(assert (=> b!591062 (= e!357360 0)))

(declare-fun b!591063 () Bool)

(assert (=> b!591063 (= e!357360 (+ 1 (size!4623 (t!78958 lt!250314))))))

(assert (= (and d!207954 c!110283) b!591062))

(assert (= (and d!207954 (not c!110283)) b!591063))

(declare-fun m!852303 () Bool)

(assert (=> b!591063 m!852303))

(assert (=> b!590886 d!207954))

(declare-fun d!207956 () Bool)

(assert (=> d!207956 (= (size!4622 (_1!3654 (v!16380 lt!250324))) (size!4623 (originalCharacters!1184 (_1!3654 (v!16380 lt!250324)))))))

(declare-fun Unit!10600 () Unit!10591)

(assert (=> d!207956 (= (lemmaCharactersSize!204 (_1!3654 (v!16380 lt!250324))) Unit!10600)))

(declare-fun bs!70339 () Bool)

(assert (= bs!70339 d!207956))

(assert (=> bs!70339 m!852059))

(assert (=> b!590886 d!207956))

(declare-fun d!207964 () Bool)

(assert (=> d!207964 (ruleValid!343 thiss!22590 (rule!1913 token!491))))

(declare-fun lt!250417 () Unit!10591)

(declare-fun choose!4264 (LexerInterface!1031 Rule!2090 List!5844) Unit!10591)

(assert (=> d!207964 (= lt!250417 (choose!4264 thiss!22590 (rule!1913 token!491) rules!3103))))

(assert (=> d!207964 (contains!1375 rules!3103 (rule!1913 token!491))))

(assert (=> d!207964 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!190 thiss!22590 (rule!1913 token!491) rules!3103) lt!250417)))

(declare-fun bs!70341 () Bool)

(assert (= bs!70341 d!207964))

(assert (=> bs!70341 m!852057))

(declare-fun m!852325 () Bool)

(assert (=> bs!70341 m!852325))

(declare-fun m!852327 () Bool)

(assert (=> bs!70341 m!852327))

(assert (=> b!590886 d!207964))

(declare-fun d!207972 () Bool)

(declare-fun res!254839 () Bool)

(declare-fun e!357373 () Bool)

(assert (=> d!207972 (=> (not res!254839) (not e!357373))))

(assert (=> d!207972 (= res!254839 (validRegex!504 (regex!1145 (rule!1913 token!491))))))

(assert (=> d!207972 (= (ruleValid!343 thiss!22590 (rule!1913 token!491)) e!357373)))

(declare-fun b!591088 () Bool)

(declare-fun res!254840 () Bool)

(assert (=> b!591088 (=> (not res!254840) (not e!357373))))

(assert (=> b!591088 (= res!254840 (not (nullable!409 (regex!1145 (rule!1913 token!491)))))))

(declare-fun b!591089 () Bool)

(assert (=> b!591089 (= e!357373 (not (= (tag!1407 (rule!1913 token!491)) (String!7590 ""))))))

(assert (= (and d!207972 res!254839) b!591088))

(assert (= (and b!591088 res!254840) b!591089))

(declare-fun m!852329 () Bool)

(assert (=> d!207972 m!852329))

(declare-fun m!852331 () Bool)

(assert (=> b!591088 m!852331))

(assert (=> b!590886 d!207972))

(declare-fun d!207974 () Bool)

(assert (=> d!207974 (ruleValid!343 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324))))))

(declare-fun lt!250418 () Unit!10591)

(assert (=> d!207974 (= lt!250418 (choose!4264 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324))) rules!3103))))

(assert (=> d!207974 (contains!1375 rules!3103 (rule!1913 (_1!3654 (v!16380 lt!250324))))))

(assert (=> d!207974 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!190 thiss!22590 (rule!1913 (_1!3654 (v!16380 lt!250324))) rules!3103) lt!250418)))

(declare-fun bs!70342 () Bool)

(assert (= bs!70342 d!207974))

(assert (=> bs!70342 m!852035))

(declare-fun m!852333 () Bool)

(assert (=> bs!70342 m!852333))

(declare-fun m!852335 () Bool)

(assert (=> bs!70342 m!852335))

(assert (=> b!590886 d!207974))

(declare-fun d!207976 () Bool)

(declare-fun dynLambda!3403 (Int BalanceConc!3732) TokenValue!1169)

(assert (=> d!207976 (= (apply!1398 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))) (seqFromList!1321 lt!250328)) (dynLambda!3403 (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (seqFromList!1321 lt!250328)))))

(declare-fun b_lambda!23273 () Bool)

(assert (=> (not b_lambda!23273) (not d!207976)))

(declare-fun t!78973 () Bool)

(declare-fun tb!51667 () Bool)

(assert (=> (and b!590887 (= (toValue!2032 (transformation!1145 (h!11235 rules!3103))) (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78973) tb!51667))

(declare-fun result!57950 () Bool)

(assert (=> tb!51667 (= result!57950 (inv!21 (dynLambda!3403 (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (seqFromList!1321 lt!250328))))))

(declare-fun m!852377 () Bool)

(assert (=> tb!51667 m!852377))

(assert (=> d!207976 t!78973))

(declare-fun b_and!58243 () Bool)

(assert (= b_and!58219 (and (=> t!78973 result!57950) b_and!58243)))

(declare-fun t!78975 () Bool)

(declare-fun tb!51669 () Bool)

(assert (=> (and b!590877 (= (toValue!2032 (transformation!1145 (rule!1913 token!491))) (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78975) tb!51669))

(declare-fun result!57956 () Bool)

(assert (= result!57956 result!57950))

(assert (=> d!207976 t!78975))

(declare-fun b_and!58245 () Bool)

(assert (= b_and!58223 (and (=> t!78975 result!57956) b_and!58245)))

(assert (=> d!207976 m!852039))

(declare-fun m!852379 () Bool)

(assert (=> d!207976 m!852379))

(assert (=> b!590886 d!207976))

(declare-fun d!207980 () Bool)

(assert (=> d!207980 (= (_2!3654 (v!16380 lt!250324)) lt!250313)))

(declare-fun lt!250422 () Unit!10591)

(declare-fun choose!4265 (List!5843 List!5843 List!5843 List!5843 List!5843) Unit!10591)

(assert (=> d!207980 (= lt!250422 (choose!4265 lt!250328 (_2!3654 (v!16380 lt!250324)) lt!250328 lt!250313 input!2705))))

(assert (=> d!207980 (isPrefix!773 lt!250328 input!2705)))

(assert (=> d!207980 (= (lemmaSamePrefixThenSameSuffix!486 lt!250328 (_2!3654 (v!16380 lt!250324)) lt!250328 lt!250313 input!2705) lt!250422)))

(declare-fun bs!70343 () Bool)

(assert (= bs!70343 d!207980))

(declare-fun m!852385 () Bool)

(assert (=> bs!70343 m!852385))

(declare-fun m!852387 () Bool)

(assert (=> bs!70343 m!852387))

(assert (=> b!590886 d!207980))

(declare-fun d!207982 () Bool)

(assert (=> d!207982 (= (size!4622 token!491) (size!4623 (originalCharacters!1184 token!491)))))

(declare-fun Unit!10601 () Unit!10591)

(assert (=> d!207982 (= (lemmaCharactersSize!204 token!491) Unit!10601)))

(declare-fun bs!70344 () Bool)

(assert (= bs!70344 d!207982))

(declare-fun m!852389 () Bool)

(assert (=> bs!70344 m!852389))

(assert (=> b!590886 d!207982))

(declare-fun d!207984 () Bool)

(declare-fun lt!250425 () BalanceConc!3732)

(assert (=> d!207984 (= (list!2440 lt!250425) (originalCharacters!1184 (_1!3654 (v!16380 lt!250324))))))

(declare-fun dynLambda!3404 (Int TokenValue!1169) BalanceConc!3732)

(assert (=> d!207984 (= lt!250425 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (value!37499 (_1!3654 (v!16380 lt!250324)))))))

(assert (=> d!207984 (= (charsOf!774 (_1!3654 (v!16380 lt!250324))) lt!250425)))

(declare-fun b_lambda!23279 () Bool)

(assert (=> (not b_lambda!23279) (not d!207984)))

(declare-fun tb!51677 () Bool)

(declare-fun t!78983 () Bool)

(assert (=> (and b!590887 (= (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78983) tb!51677))

(declare-fun b!591136 () Bool)

(declare-fun e!357402 () Bool)

(declare-fun tp!184318 () Bool)

(declare-fun inv!7388 (Conc!1862) Bool)

(assert (=> b!591136 (= e!357402 (and (inv!7388 (c!110258 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (value!37499 (_1!3654 (v!16380 lt!250324)))))) tp!184318))))

(declare-fun result!57968 () Bool)

(declare-fun inv!7389 (BalanceConc!3732) Bool)

(assert (=> tb!51677 (= result!57968 (and (inv!7389 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324))))) (value!37499 (_1!3654 (v!16380 lt!250324))))) e!357402))))

(assert (= tb!51677 b!591136))

(declare-fun m!852391 () Bool)

(assert (=> b!591136 m!852391))

(declare-fun m!852393 () Bool)

(assert (=> tb!51677 m!852393))

(assert (=> d!207984 t!78983))

(declare-fun b_and!58251 () Bool)

(assert (= b_and!58221 (and (=> t!78983 result!57968) b_and!58251)))

(declare-fun tb!51679 () Bool)

(declare-fun t!78985 () Bool)

(assert (=> (and b!590877 (= (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78985) tb!51679))

(declare-fun result!57972 () Bool)

(assert (= result!57972 result!57968))

(assert (=> d!207984 t!78985))

(declare-fun b_and!58253 () Bool)

(assert (= b_and!58225 (and (=> t!78985 result!57972) b_and!58253)))

(declare-fun m!852395 () Bool)

(assert (=> d!207984 m!852395))

(declare-fun m!852397 () Bool)

(assert (=> d!207984 m!852397))

(assert (=> b!590886 d!207984))

(declare-fun d!207986 () Bool)

(declare-fun e!357403 () Bool)

(assert (=> d!207986 e!357403))

(declare-fun res!254846 () Bool)

(assert (=> d!207986 (=> res!254846 e!357403)))

(declare-fun lt!250426 () Bool)

(assert (=> d!207986 (= res!254846 (not lt!250426))))

(declare-fun e!357404 () Bool)

(assert (=> d!207986 (= lt!250426 e!357404)))

(declare-fun res!254845 () Bool)

(assert (=> d!207986 (=> res!254845 e!357404)))

(assert (=> d!207986 (= res!254845 ((_ is Nil!5833) input!2705))))

(assert (=> d!207986 (= (isPrefix!773 input!2705 input!2705) lt!250426)))

(declare-fun b!591137 () Bool)

(declare-fun e!357405 () Bool)

(assert (=> b!591137 (= e!357404 e!357405)))

(declare-fun res!254844 () Bool)

(assert (=> b!591137 (=> (not res!254844) (not e!357405))))

(assert (=> b!591137 (= res!254844 (not ((_ is Nil!5833) input!2705)))))

(declare-fun b!591139 () Bool)

(assert (=> b!591139 (= e!357405 (isPrefix!773 (tail!779 input!2705) (tail!779 input!2705)))))

(declare-fun b!591140 () Bool)

(assert (=> b!591140 (= e!357403 (>= (size!4623 input!2705) (size!4623 input!2705)))))

(declare-fun b!591138 () Bool)

(declare-fun res!254843 () Bool)

(assert (=> b!591138 (=> (not res!254843) (not e!357405))))

(assert (=> b!591138 (= res!254843 (= (head!1250 input!2705) (head!1250 input!2705)))))

(assert (= (and d!207986 (not res!254845)) b!591137))

(assert (= (and b!591137 res!254844) b!591138))

(assert (= (and b!591138 res!254843) b!591139))

(assert (= (and d!207986 (not res!254846)) b!591140))

(assert (=> b!591139 m!852267))

(assert (=> b!591139 m!852267))

(assert (=> b!591139 m!852267))

(assert (=> b!591139 m!852267))

(declare-fun m!852399 () Bool)

(assert (=> b!591139 m!852399))

(assert (=> b!591140 m!852195))

(assert (=> b!591140 m!852195))

(declare-fun m!852401 () Bool)

(assert (=> b!591138 m!852401))

(assert (=> b!591138 m!852401))

(assert (=> b!590886 d!207986))

(declare-fun d!207988 () Bool)

(declare-fun list!2442 (Conc!1862) List!5843)

(assert (=> d!207988 (= (list!2440 (charsOf!774 (_1!3654 (v!16380 lt!250324)))) (list!2442 (c!110258 (charsOf!774 (_1!3654 (v!16380 lt!250324))))))))

(declare-fun bs!70345 () Bool)

(assert (= bs!70345 d!207988))

(declare-fun m!852403 () Bool)

(assert (=> bs!70345 m!852403))

(assert (=> b!590886 d!207988))

(declare-fun b!591151 () Bool)

(declare-fun res!254852 () Bool)

(declare-fun e!357410 () Bool)

(assert (=> b!591151 (=> (not res!254852) (not e!357410))))

(declare-fun lt!250429 () List!5843)

(assert (=> b!591151 (= res!254852 (= (size!4623 lt!250429) (+ (size!4623 lt!250328) (size!4623 (_2!3654 (v!16380 lt!250324))))))))

(declare-fun d!207990 () Bool)

(assert (=> d!207990 e!357410))

(declare-fun res!254851 () Bool)

(assert (=> d!207990 (=> (not res!254851) (not e!357410))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1051 (List!5843) (InoxSet C!3880))

(assert (=> d!207990 (= res!254851 (= (content!1051 lt!250429) ((_ map or) (content!1051 lt!250328) (content!1051 (_2!3654 (v!16380 lt!250324))))))))

(declare-fun e!357411 () List!5843)

(assert (=> d!207990 (= lt!250429 e!357411)))

(declare-fun c!110294 () Bool)

(assert (=> d!207990 (= c!110294 ((_ is Nil!5833) lt!250328))))

(assert (=> d!207990 (= (++!1633 lt!250328 (_2!3654 (v!16380 lt!250324))) lt!250429)))

(declare-fun b!591152 () Bool)

(assert (=> b!591152 (= e!357410 (or (not (= (_2!3654 (v!16380 lt!250324)) Nil!5833)) (= lt!250429 lt!250328)))))

(declare-fun b!591149 () Bool)

(assert (=> b!591149 (= e!357411 (_2!3654 (v!16380 lt!250324)))))

(declare-fun b!591150 () Bool)

(assert (=> b!591150 (= e!357411 (Cons!5833 (h!11234 lt!250328) (++!1633 (t!78958 lt!250328) (_2!3654 (v!16380 lt!250324)))))))

(assert (= (and d!207990 c!110294) b!591149))

(assert (= (and d!207990 (not c!110294)) b!591150))

(assert (= (and d!207990 res!254851) b!591151))

(assert (= (and b!591151 res!254852) b!591152))

(declare-fun m!852405 () Bool)

(assert (=> b!591151 m!852405))

(assert (=> b!591151 m!852051))

(declare-fun m!852407 () Bool)

(assert (=> b!591151 m!852407))

(declare-fun m!852409 () Bool)

(assert (=> d!207990 m!852409))

(declare-fun m!852411 () Bool)

(assert (=> d!207990 m!852411))

(declare-fun m!852413 () Bool)

(assert (=> d!207990 m!852413))

(declare-fun m!852415 () Bool)

(assert (=> b!591150 m!852415))

(assert (=> b!590886 d!207990))

(declare-fun d!207992 () Bool)

(assert (=> d!207992 (and (= lt!250314 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!250432 () Unit!10591)

(declare-fun choose!4266 (List!5843 List!5843 List!5843 List!5843) Unit!10591)

(assert (=> d!207992 (= lt!250432 (choose!4266 lt!250314 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!207992 (= (++!1633 lt!250314 suffix!1342) (++!1633 input!2705 suffix!1342))))

(assert (=> d!207992 (= (lemmaConcatSameAndSameSizesThenSameLists!218 lt!250314 suffix!1342 input!2705 suffix!1342) lt!250432)))

(declare-fun bs!70346 () Bool)

(assert (= bs!70346 d!207992))

(declare-fun m!852417 () Bool)

(assert (=> bs!70346 m!852417))

(assert (=> bs!70346 m!852091))

(assert (=> bs!70346 m!852083))

(assert (=> b!590886 d!207992))

(declare-fun d!207994 () Bool)

(assert (=> d!207994 (isPrefix!773 input!2705 input!2705)))

(declare-fun lt!250435 () Unit!10591)

(declare-fun choose!4267 (List!5843 List!5843) Unit!10591)

(assert (=> d!207994 (= lt!250435 (choose!4267 input!2705 input!2705))))

(assert (=> d!207994 (= (lemmaIsPrefixRefl!509 input!2705 input!2705) lt!250435)))

(declare-fun bs!70347 () Bool)

(assert (= bs!70347 d!207994))

(assert (=> bs!70347 m!852067))

(declare-fun m!852419 () Bool)

(assert (=> bs!70347 m!852419))

(assert (=> b!590886 d!207994))

(declare-fun d!207996 () Bool)

(declare-fun lt!250436 () Int)

(assert (=> d!207996 (>= lt!250436 0)))

(declare-fun e!357412 () Int)

(assert (=> d!207996 (= lt!250436 e!357412)))

(declare-fun c!110295 () Bool)

(assert (=> d!207996 (= c!110295 ((_ is Nil!5833) lt!250328))))

(assert (=> d!207996 (= (size!4623 lt!250328) lt!250436)))

(declare-fun b!591153 () Bool)

(assert (=> b!591153 (= e!357412 0)))

(declare-fun b!591154 () Bool)

(assert (=> b!591154 (= e!357412 (+ 1 (size!4623 (t!78958 lt!250328))))))

(assert (= (and d!207996 c!110295) b!591153))

(assert (= (and d!207996 (not c!110295)) b!591154))

(declare-fun m!852421 () Bool)

(assert (=> b!591154 m!852421))

(assert (=> b!590886 d!207996))

(declare-fun d!207998 () Bool)

(declare-fun e!357413 () Bool)

(assert (=> d!207998 e!357413))

(declare-fun res!254853 () Bool)

(assert (=> d!207998 (=> (not res!254853) (not e!357413))))

(assert (=> d!207998 (= res!254853 (semiInverseModEq!451 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toValue!2032 (transformation!1145 (rule!1913 token!491)))))))

(declare-fun Unit!10602 () Unit!10591)

(assert (=> d!207998 (= (lemmaInv!253 (transformation!1145 (rule!1913 token!491))) Unit!10602)))

(declare-fun b!591155 () Bool)

(assert (=> b!591155 (= e!357413 (equivClasses!434 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toValue!2032 (transformation!1145 (rule!1913 token!491)))))))

(assert (= (and d!207998 res!254853) b!591155))

(declare-fun m!852423 () Bool)

(assert (=> d!207998 m!852423))

(declare-fun m!852425 () Bool)

(assert (=> b!591155 m!852425))

(assert (=> b!590886 d!207998))

(declare-fun d!208000 () Bool)

(assert (=> d!208000 (= (get!2232 lt!250330) (v!16380 lt!250330))))

(assert (=> b!590875 d!208000))

(declare-fun b!591158 () Bool)

(declare-fun res!254855 () Bool)

(declare-fun e!357414 () Bool)

(assert (=> b!591158 (=> (not res!254855) (not e!357414))))

(declare-fun lt!250437 () List!5843)

(assert (=> b!591158 (= res!254855 (= (size!4623 lt!250437) (+ (size!4623 lt!250314) (size!4623 suffix!1342))))))

(declare-fun d!208002 () Bool)

(assert (=> d!208002 e!357414))

(declare-fun res!254854 () Bool)

(assert (=> d!208002 (=> (not res!254854) (not e!357414))))

(assert (=> d!208002 (= res!254854 (= (content!1051 lt!250437) ((_ map or) (content!1051 lt!250314) (content!1051 suffix!1342))))))

(declare-fun e!357415 () List!5843)

(assert (=> d!208002 (= lt!250437 e!357415)))

(declare-fun c!110296 () Bool)

(assert (=> d!208002 (= c!110296 ((_ is Nil!5833) lt!250314))))

(assert (=> d!208002 (= (++!1633 lt!250314 suffix!1342) lt!250437)))

(declare-fun b!591159 () Bool)

(assert (=> b!591159 (= e!357414 (or (not (= suffix!1342 Nil!5833)) (= lt!250437 lt!250314)))))

(declare-fun b!591156 () Bool)

(assert (=> b!591156 (= e!357415 suffix!1342)))

(declare-fun b!591157 () Bool)

(assert (=> b!591157 (= e!357415 (Cons!5833 (h!11234 lt!250314) (++!1633 (t!78958 lt!250314) suffix!1342)))))

(assert (= (and d!208002 c!110296) b!591156))

(assert (= (and d!208002 (not c!110296)) b!591157))

(assert (= (and d!208002 res!254854) b!591158))

(assert (= (and b!591158 res!254855) b!591159))

(declare-fun m!852427 () Bool)

(assert (=> b!591158 m!852427))

(assert (=> b!591158 m!852055))

(declare-fun m!852429 () Bool)

(assert (=> b!591158 m!852429))

(declare-fun m!852431 () Bool)

(assert (=> d!208002 m!852431))

(declare-fun m!852433 () Bool)

(assert (=> d!208002 m!852433))

(declare-fun m!852435 () Bool)

(assert (=> d!208002 m!852435))

(declare-fun m!852437 () Bool)

(assert (=> b!591157 m!852437))

(assert (=> b!590890 d!208002))

(declare-fun d!208004 () Bool)

(assert (=> d!208004 (= (inv!7381 (tag!1407 (rule!1913 token!491))) (= (mod (str.len (value!37498 (tag!1407 (rule!1913 token!491)))) 2) 0))))

(assert (=> b!590879 d!208004))

(declare-fun d!208006 () Bool)

(declare-fun res!254858 () Bool)

(declare-fun e!357418 () Bool)

(assert (=> d!208006 (=> (not res!254858) (not e!357418))))

(assert (=> d!208006 (= res!254858 (semiInverseModEq!451 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toValue!2032 (transformation!1145 (rule!1913 token!491)))))))

(assert (=> d!208006 (= (inv!7384 (transformation!1145 (rule!1913 token!491))) e!357418)))

(declare-fun b!591162 () Bool)

(assert (=> b!591162 (= e!357418 (equivClasses!434 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toValue!2032 (transformation!1145 (rule!1913 token!491)))))))

(assert (= (and d!208006 res!254858) b!591162))

(assert (=> d!208006 m!852423))

(assert (=> b!591162 m!852425))

(assert (=> b!590879 d!208006))

(declare-fun b!591173 () Bool)

(declare-fun e!357427 () Bool)

(declare-fun inv!15 (TokenValue!1169) Bool)

(assert (=> b!591173 (= e!357427 (inv!15 (value!37499 token!491)))))

(declare-fun d!208008 () Bool)

(declare-fun c!110302 () Bool)

(assert (=> d!208008 (= c!110302 ((_ is IntegerValue!3507) (value!37499 token!491)))))

(declare-fun e!357426 () Bool)

(assert (=> d!208008 (= (inv!21 (value!37499 token!491)) e!357426)))

(declare-fun b!591174 () Bool)

(declare-fun e!357425 () Bool)

(assert (=> b!591174 (= e!357426 e!357425)))

(declare-fun c!110301 () Bool)

(assert (=> b!591174 (= c!110301 ((_ is IntegerValue!3508) (value!37499 token!491)))))

(declare-fun b!591175 () Bool)

(declare-fun res!254861 () Bool)

(assert (=> b!591175 (=> res!254861 e!357427)))

(assert (=> b!591175 (= res!254861 (not ((_ is IntegerValue!3509) (value!37499 token!491))))))

(assert (=> b!591175 (= e!357425 e!357427)))

(declare-fun b!591176 () Bool)

(declare-fun inv!17 (TokenValue!1169) Bool)

(assert (=> b!591176 (= e!357425 (inv!17 (value!37499 token!491)))))

(declare-fun b!591177 () Bool)

(declare-fun inv!16 (TokenValue!1169) Bool)

(assert (=> b!591177 (= e!357426 (inv!16 (value!37499 token!491)))))

(assert (= (and d!208008 c!110302) b!591177))

(assert (= (and d!208008 (not c!110302)) b!591174))

(assert (= (and b!591174 c!110301) b!591176))

(assert (= (and b!591174 (not c!110301)) b!591175))

(assert (= (and b!591175 (not res!254861)) b!591173))

(declare-fun m!852439 () Bool)

(assert (=> b!591173 m!852439))

(declare-fun m!852441 () Bool)

(assert (=> b!591176 m!852441))

(declare-fun m!852443 () Bool)

(assert (=> b!591177 m!852443))

(assert (=> b!590889 d!208008))

(declare-fun d!208010 () Bool)

(assert (=> d!208010 (= (inv!7381 (tag!1407 (h!11235 rules!3103))) (= (mod (str.len (value!37498 (tag!1407 (h!11235 rules!3103)))) 2) 0))))

(assert (=> b!590893 d!208010))

(declare-fun d!208012 () Bool)

(declare-fun res!254862 () Bool)

(declare-fun e!357428 () Bool)

(assert (=> d!208012 (=> (not res!254862) (not e!357428))))

(assert (=> d!208012 (= res!254862 (semiInverseModEq!451 (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toValue!2032 (transformation!1145 (h!11235 rules!3103)))))))

(assert (=> d!208012 (= (inv!7384 (transformation!1145 (h!11235 rules!3103))) e!357428)))

(declare-fun b!591178 () Bool)

(assert (=> b!591178 (= e!357428 (equivClasses!434 (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toValue!2032 (transformation!1145 (h!11235 rules!3103)))))))

(assert (= (and d!208012 res!254862) b!591178))

(declare-fun m!852445 () Bool)

(assert (=> d!208012 m!852445))

(declare-fun m!852447 () Bool)

(assert (=> b!591178 m!852447))

(assert (=> b!590893 d!208012))

(declare-fun d!208014 () Bool)

(assert (=> d!208014 (= (isEmpty!4212 rules!3103) ((_ is Nil!5834) rules!3103))))

(assert (=> b!590882 d!208014))

(declare-fun d!208016 () Bool)

(declare-fun res!254867 () Bool)

(declare-fun e!357431 () Bool)

(assert (=> d!208016 (=> (not res!254867) (not e!357431))))

(assert (=> d!208016 (= res!254867 (not (isEmpty!4211 (originalCharacters!1184 token!491))))))

(assert (=> d!208016 (= (inv!7385 token!491) e!357431)))

(declare-fun b!591183 () Bool)

(declare-fun res!254868 () Bool)

(assert (=> b!591183 (=> (not res!254868) (not e!357431))))

(assert (=> b!591183 (= res!254868 (= (originalCharacters!1184 token!491) (list!2440 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (value!37499 token!491)))))))

(declare-fun b!591184 () Bool)

(assert (=> b!591184 (= e!357431 (= (size!4622 token!491) (size!4623 (originalCharacters!1184 token!491))))))

(assert (= (and d!208016 res!254867) b!591183))

(assert (= (and b!591183 res!254868) b!591184))

(declare-fun b_lambda!23281 () Bool)

(assert (=> (not b_lambda!23281) (not b!591183)))

(declare-fun tb!51681 () Bool)

(declare-fun t!78988 () Bool)

(assert (=> (and b!590887 (= (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toChars!1891 (transformation!1145 (rule!1913 token!491)))) t!78988) tb!51681))

(declare-fun b!591185 () Bool)

(declare-fun e!357432 () Bool)

(declare-fun tp!184319 () Bool)

(assert (=> b!591185 (= e!357432 (and (inv!7388 (c!110258 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (value!37499 token!491)))) tp!184319))))

(declare-fun result!57974 () Bool)

(assert (=> tb!51681 (= result!57974 (and (inv!7389 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (value!37499 token!491))) e!357432))))

(assert (= tb!51681 b!591185))

(declare-fun m!852449 () Bool)

(assert (=> b!591185 m!852449))

(declare-fun m!852451 () Bool)

(assert (=> tb!51681 m!852451))

(assert (=> b!591183 t!78988))

(declare-fun b_and!58255 () Bool)

(assert (= b_and!58251 (and (=> t!78988 result!57974) b_and!58255)))

(declare-fun t!78990 () Bool)

(declare-fun tb!51683 () Bool)

(assert (=> (and b!590877 (= (toChars!1891 (transformation!1145 (rule!1913 token!491))) (toChars!1891 (transformation!1145 (rule!1913 token!491)))) t!78990) tb!51683))

(declare-fun result!57976 () Bool)

(assert (= result!57976 result!57974))

(assert (=> b!591183 t!78990))

(declare-fun b_and!58257 () Bool)

(assert (= b_and!58253 (and (=> t!78990 result!57976) b_and!58257)))

(declare-fun m!852453 () Bool)

(assert (=> d!208016 m!852453))

(declare-fun m!852455 () Bool)

(assert (=> b!591183 m!852455))

(assert (=> b!591183 m!852455))

(declare-fun m!852457 () Bool)

(assert (=> b!591183 m!852457))

(assert (=> b!591184 m!852389))

(assert (=> start!55360 d!208016))

(declare-fun d!208018 () Bool)

(assert (=> d!208018 (= (list!2440 (charsOf!774 token!491)) (list!2442 (c!110258 (charsOf!774 token!491))))))

(declare-fun bs!70348 () Bool)

(assert (= bs!70348 d!208018))

(declare-fun m!852459 () Bool)

(assert (=> bs!70348 m!852459))

(assert (=> b!590881 d!208018))

(declare-fun d!208020 () Bool)

(declare-fun lt!250438 () BalanceConc!3732)

(assert (=> d!208020 (= (list!2440 lt!250438) (originalCharacters!1184 token!491))))

(assert (=> d!208020 (= lt!250438 (dynLambda!3404 (toChars!1891 (transformation!1145 (rule!1913 token!491))) (value!37499 token!491)))))

(assert (=> d!208020 (= (charsOf!774 token!491) lt!250438)))

(declare-fun b_lambda!23283 () Bool)

(assert (=> (not b_lambda!23283) (not d!208020)))

(assert (=> d!208020 t!78988))

(declare-fun b_and!58259 () Bool)

(assert (= b_and!58255 (and (=> t!78988 result!57974) b_and!58259)))

(assert (=> d!208020 t!78990))

(declare-fun b_and!58261 () Bool)

(assert (= b_and!58257 (and (=> t!78990 result!57976) b_and!58261)))

(declare-fun m!852461 () Bool)

(assert (=> d!208020 m!852461))

(assert (=> d!208020 m!852455))

(assert (=> b!590881 d!208020))

(declare-fun d!208022 () Bool)

(assert (=> d!208022 (= (isDefined!1307 lt!250330) (not (isEmpty!4213 lt!250330)))))

(declare-fun bs!70349 () Bool)

(assert (= bs!70349 d!208022))

(declare-fun m!852463 () Bool)

(assert (=> bs!70349 m!852463))

(assert (=> b!590891 d!208022))

(declare-fun b!591186 () Bool)

(declare-fun e!357435 () Option!1496)

(declare-fun lt!250440 () Option!1496)

(declare-fun lt!250442 () Option!1496)

(assert (=> b!591186 (= e!357435 (ite (and ((_ is None!1495) lt!250440) ((_ is None!1495) lt!250442)) None!1495 (ite ((_ is None!1495) lt!250442) lt!250440 (ite ((_ is None!1495) lt!250440) lt!250442 (ite (>= (size!4622 (_1!3654 (v!16380 lt!250440))) (size!4622 (_1!3654 (v!16380 lt!250442)))) lt!250440 lt!250442)))))))

(declare-fun call!40321 () Option!1496)

(assert (=> b!591186 (= lt!250440 call!40321)))

(assert (=> b!591186 (= lt!250442 (maxPrefix!729 thiss!22590 (t!78959 rules!3103) lt!250327))))

(declare-fun b!591187 () Bool)

(declare-fun res!254869 () Bool)

(declare-fun e!357434 () Bool)

(assert (=> b!591187 (=> (not res!254869) (not e!357434))))

(declare-fun lt!250441 () Option!1496)

(assert (=> b!591187 (= res!254869 (= (value!37499 (_1!3654 (get!2232 lt!250441))) (apply!1398 (transformation!1145 (rule!1913 (_1!3654 (get!2232 lt!250441)))) (seqFromList!1321 (originalCharacters!1184 (_1!3654 (get!2232 lt!250441)))))))))

(declare-fun d!208024 () Bool)

(declare-fun e!357433 () Bool)

(assert (=> d!208024 e!357433))

(declare-fun res!254872 () Bool)

(assert (=> d!208024 (=> res!254872 e!357433)))

(assert (=> d!208024 (= res!254872 (isEmpty!4213 lt!250441))))

(assert (=> d!208024 (= lt!250441 e!357435)))

(declare-fun c!110303 () Bool)

(assert (=> d!208024 (= c!110303 (and ((_ is Cons!5834) rules!3103) ((_ is Nil!5834) (t!78959 rules!3103))))))

(declare-fun lt!250443 () Unit!10591)

(declare-fun lt!250439 () Unit!10591)

(assert (=> d!208024 (= lt!250443 lt!250439)))

(assert (=> d!208024 (isPrefix!773 lt!250327 lt!250327)))

(assert (=> d!208024 (= lt!250439 (lemmaIsPrefixRefl!509 lt!250327 lt!250327))))

(assert (=> d!208024 (rulesValidInductive!419 thiss!22590 rules!3103)))

(assert (=> d!208024 (= (maxPrefix!729 thiss!22590 rules!3103 lt!250327) lt!250441)))

(declare-fun b!591188 () Bool)

(assert (=> b!591188 (= e!357435 call!40321)))

(declare-fun b!591189 () Bool)

(declare-fun res!254875 () Bool)

(assert (=> b!591189 (=> (not res!254875) (not e!357434))))

(assert (=> b!591189 (= res!254875 (= (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250441)))) (originalCharacters!1184 (_1!3654 (get!2232 lt!250441)))))))

(declare-fun b!591190 () Bool)

(declare-fun res!254874 () Bool)

(assert (=> b!591190 (=> (not res!254874) (not e!357434))))

(assert (=> b!591190 (= res!254874 (< (size!4623 (_2!3654 (get!2232 lt!250441))) (size!4623 lt!250327)))))

(declare-fun b!591191 () Bool)

(assert (=> b!591191 (= e!357433 e!357434)))

(declare-fun res!254871 () Bool)

(assert (=> b!591191 (=> (not res!254871) (not e!357434))))

(assert (=> b!591191 (= res!254871 (isDefined!1307 lt!250441))))

(declare-fun b!591192 () Bool)

(declare-fun res!254870 () Bool)

(assert (=> b!591192 (=> (not res!254870) (not e!357434))))

(assert (=> b!591192 (= res!254870 (matchR!611 (regex!1145 (rule!1913 (_1!3654 (get!2232 lt!250441)))) (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250441))))))))

(declare-fun bm!40316 () Bool)

(assert (=> bm!40316 (= call!40321 (maxPrefixOneRule!415 thiss!22590 (h!11235 rules!3103) lt!250327))))

(declare-fun b!591193 () Bool)

(assert (=> b!591193 (= e!357434 (contains!1375 rules!3103 (rule!1913 (_1!3654 (get!2232 lt!250441)))))))

(declare-fun b!591194 () Bool)

(declare-fun res!254873 () Bool)

(assert (=> b!591194 (=> (not res!254873) (not e!357434))))

(assert (=> b!591194 (= res!254873 (= (++!1633 (list!2440 (charsOf!774 (_1!3654 (get!2232 lt!250441)))) (_2!3654 (get!2232 lt!250441))) lt!250327))))

(assert (= (and d!208024 c!110303) b!591188))

(assert (= (and d!208024 (not c!110303)) b!591186))

(assert (= (or b!591188 b!591186) bm!40316))

(assert (= (and d!208024 (not res!254872)) b!591191))

(assert (= (and b!591191 res!254871) b!591189))

(assert (= (and b!591189 res!254875) b!591190))

(assert (= (and b!591190 res!254874) b!591194))

(assert (= (and b!591194 res!254873) b!591187))

(assert (= (and b!591187 res!254869) b!591192))

(assert (= (and b!591192 res!254870) b!591193))

(declare-fun m!852465 () Bool)

(assert (=> b!591190 m!852465))

(declare-fun m!852467 () Bool)

(assert (=> b!591190 m!852467))

(declare-fun m!852469 () Bool)

(assert (=> b!591190 m!852469))

(assert (=> b!591192 m!852465))

(declare-fun m!852471 () Bool)

(assert (=> b!591192 m!852471))

(assert (=> b!591192 m!852471))

(declare-fun m!852473 () Bool)

(assert (=> b!591192 m!852473))

(assert (=> b!591192 m!852473))

(declare-fun m!852475 () Bool)

(assert (=> b!591192 m!852475))

(declare-fun m!852477 () Bool)

(assert (=> d!208024 m!852477))

(declare-fun m!852479 () Bool)

(assert (=> d!208024 m!852479))

(declare-fun m!852481 () Bool)

(assert (=> d!208024 m!852481))

(assert (=> d!208024 m!852209))

(assert (=> b!591189 m!852465))

(assert (=> b!591189 m!852471))

(assert (=> b!591189 m!852471))

(assert (=> b!591189 m!852473))

(declare-fun m!852483 () Bool)

(assert (=> b!591191 m!852483))

(declare-fun m!852485 () Bool)

(assert (=> bm!40316 m!852485))

(declare-fun m!852487 () Bool)

(assert (=> b!591186 m!852487))

(assert (=> b!591187 m!852465))

(declare-fun m!852489 () Bool)

(assert (=> b!591187 m!852489))

(assert (=> b!591187 m!852489))

(declare-fun m!852491 () Bool)

(assert (=> b!591187 m!852491))

(assert (=> b!591193 m!852465))

(declare-fun m!852493 () Bool)

(assert (=> b!591193 m!852493))

(assert (=> b!591194 m!852465))

(assert (=> b!591194 m!852471))

(assert (=> b!591194 m!852471))

(assert (=> b!591194 m!852473))

(assert (=> b!591194 m!852473))

(declare-fun m!852495 () Bool)

(assert (=> b!591194 m!852495))

(assert (=> b!590891 d!208024))

(declare-fun b!591197 () Bool)

(declare-fun res!254877 () Bool)

(declare-fun e!357436 () Bool)

(assert (=> b!591197 (=> (not res!254877) (not e!357436))))

(declare-fun lt!250444 () List!5843)

(assert (=> b!591197 (= res!254877 (= (size!4623 lt!250444) (+ (size!4623 input!2705) (size!4623 suffix!1342))))))

(declare-fun d!208026 () Bool)

(assert (=> d!208026 e!357436))

(declare-fun res!254876 () Bool)

(assert (=> d!208026 (=> (not res!254876) (not e!357436))))

(assert (=> d!208026 (= res!254876 (= (content!1051 lt!250444) ((_ map or) (content!1051 input!2705) (content!1051 suffix!1342))))))

(declare-fun e!357437 () List!5843)

(assert (=> d!208026 (= lt!250444 e!357437)))

(declare-fun c!110304 () Bool)

(assert (=> d!208026 (= c!110304 ((_ is Nil!5833) input!2705))))

(assert (=> d!208026 (= (++!1633 input!2705 suffix!1342) lt!250444)))

(declare-fun b!591198 () Bool)

(assert (=> b!591198 (= e!357436 (or (not (= suffix!1342 Nil!5833)) (= lt!250444 input!2705)))))

(declare-fun b!591195 () Bool)

(assert (=> b!591195 (= e!357437 suffix!1342)))

(declare-fun b!591196 () Bool)

(assert (=> b!591196 (= e!357437 (Cons!5833 (h!11234 input!2705) (++!1633 (t!78958 input!2705) suffix!1342)))))

(assert (= (and d!208026 c!110304) b!591195))

(assert (= (and d!208026 (not c!110304)) b!591196))

(assert (= (and d!208026 res!254876) b!591197))

(assert (= (and b!591197 res!254877) b!591198))

(declare-fun m!852497 () Bool)

(assert (=> b!591197 m!852497))

(assert (=> b!591197 m!852195))

(assert (=> b!591197 m!852429))

(declare-fun m!852499 () Bool)

(assert (=> d!208026 m!852499))

(declare-fun m!852501 () Bool)

(assert (=> d!208026 m!852501))

(assert (=> d!208026 m!852435))

(declare-fun m!852503 () Bool)

(assert (=> b!591196 m!852503))

(assert (=> b!590891 d!208026))

(declare-fun d!208028 () Bool)

(assert (=> d!208028 (= (isEmpty!4211 input!2705) ((_ is Nil!5833) input!2705))))

(assert (=> b!590880 d!208028))

(declare-fun d!208030 () Bool)

(declare-fun res!254880 () Bool)

(declare-fun e!357440 () Bool)

(assert (=> d!208030 (=> (not res!254880) (not e!357440))))

(declare-fun rulesValid!415 (LexerInterface!1031 List!5844) Bool)

(assert (=> d!208030 (= res!254880 (rulesValid!415 thiss!22590 rules!3103))))

(assert (=> d!208030 (= (rulesInvariant!994 thiss!22590 rules!3103) e!357440)))

(declare-fun b!591201 () Bool)

(declare-datatypes ((List!5846 0))(
  ( (Nil!5836) (Cons!5836 (h!11237 String!7589) (t!78997 List!5846)) )
))
(declare-fun noDuplicateTag!415 (LexerInterface!1031 List!5844 List!5846) Bool)

(assert (=> b!591201 (= e!357440 (noDuplicateTag!415 thiss!22590 rules!3103 Nil!5836))))

(assert (= (and d!208030 res!254880) b!591201))

(declare-fun m!852505 () Bool)

(assert (=> d!208030 m!852505))

(declare-fun m!852507 () Bool)

(assert (=> b!591201 m!852507))

(assert (=> b!590885 d!208030))

(declare-fun b!591212 () Bool)

(declare-fun e!357443 () Bool)

(assert (=> b!591212 (= e!357443 tp_is_empty!3313)))

(assert (=> b!590893 (= tp!184269 e!357443)))

(declare-fun b!591213 () Bool)

(declare-fun tp!184331 () Bool)

(declare-fun tp!184333 () Bool)

(assert (=> b!591213 (= e!357443 (and tp!184331 tp!184333))))

(declare-fun b!591215 () Bool)

(declare-fun tp!184334 () Bool)

(declare-fun tp!184330 () Bool)

(assert (=> b!591215 (= e!357443 (and tp!184334 tp!184330))))

(declare-fun b!591214 () Bool)

(declare-fun tp!184332 () Bool)

(assert (=> b!591214 (= e!357443 tp!184332)))

(assert (= (and b!590893 ((_ is ElementMatch!1479) (regex!1145 (h!11235 rules!3103)))) b!591212))

(assert (= (and b!590893 ((_ is Concat!2648) (regex!1145 (h!11235 rules!3103)))) b!591213))

(assert (= (and b!590893 ((_ is Star!1479) (regex!1145 (h!11235 rules!3103)))) b!591214))

(assert (= (and b!590893 ((_ is Union!1479) (regex!1145 (h!11235 rules!3103)))) b!591215))

(declare-fun b!591220 () Bool)

(declare-fun e!357446 () Bool)

(declare-fun tp!184337 () Bool)

(assert (=> b!591220 (= e!357446 (and tp_is_empty!3313 tp!184337))))

(assert (=> b!590892 (= tp!184274 e!357446)))

(assert (= (and b!590892 ((_ is Cons!5833) (t!78958 suffix!1342))) b!591220))

(declare-fun b!591221 () Bool)

(declare-fun e!357447 () Bool)

(assert (=> b!591221 (= e!357447 tp_is_empty!3313)))

(assert (=> b!590879 (= tp!184266 e!357447)))

(declare-fun b!591222 () Bool)

(declare-fun tp!184339 () Bool)

(declare-fun tp!184341 () Bool)

(assert (=> b!591222 (= e!357447 (and tp!184339 tp!184341))))

(declare-fun b!591224 () Bool)

(declare-fun tp!184342 () Bool)

(declare-fun tp!184338 () Bool)

(assert (=> b!591224 (= e!357447 (and tp!184342 tp!184338))))

(declare-fun b!591223 () Bool)

(declare-fun tp!184340 () Bool)

(assert (=> b!591223 (= e!357447 tp!184340)))

(assert (= (and b!590879 ((_ is ElementMatch!1479) (regex!1145 (rule!1913 token!491)))) b!591221))

(assert (= (and b!590879 ((_ is Concat!2648) (regex!1145 (rule!1913 token!491)))) b!591222))

(assert (= (and b!590879 ((_ is Star!1479) (regex!1145 (rule!1913 token!491)))) b!591223))

(assert (= (and b!590879 ((_ is Union!1479) (regex!1145 (rule!1913 token!491)))) b!591224))

(declare-fun b!591225 () Bool)

(declare-fun e!357448 () Bool)

(declare-fun tp!184343 () Bool)

(assert (=> b!591225 (= e!357448 (and tp_is_empty!3313 tp!184343))))

(assert (=> b!590889 (= tp!184272 e!357448)))

(assert (= (and b!590889 ((_ is Cons!5833) (originalCharacters!1184 token!491))) b!591225))

(declare-fun b!591236 () Bool)

(declare-fun b_free!16585 () Bool)

(declare-fun b_next!16601 () Bool)

(assert (=> b!591236 (= b_free!16585 (not b_next!16601))))

(declare-fun tb!51685 () Bool)

(declare-fun t!78992 () Bool)

(assert (=> (and b!591236 (= (toValue!2032 (transformation!1145 (h!11235 (t!78959 rules!3103)))) (toValue!2032 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78992) tb!51685))

(declare-fun result!57984 () Bool)

(assert (= result!57984 result!57950))

(assert (=> d!207976 t!78992))

(declare-fun tp!184352 () Bool)

(declare-fun b_and!58263 () Bool)

(assert (=> b!591236 (= tp!184352 (and (=> t!78992 result!57984) b_and!58263))))

(declare-fun b_free!16587 () Bool)

(declare-fun b_next!16603 () Bool)

(assert (=> b!591236 (= b_free!16587 (not b_next!16603))))

(declare-fun tb!51687 () Bool)

(declare-fun t!78994 () Bool)

(assert (=> (and b!591236 (= (toChars!1891 (transformation!1145 (h!11235 (t!78959 rules!3103)))) (toChars!1891 (transformation!1145 (rule!1913 (_1!3654 (v!16380 lt!250324)))))) t!78994) tb!51687))

(declare-fun result!57986 () Bool)

(assert (= result!57986 result!57968))

(assert (=> d!207984 t!78994))

(declare-fun t!78996 () Bool)

(declare-fun tb!51689 () Bool)

(assert (=> (and b!591236 (= (toChars!1891 (transformation!1145 (h!11235 (t!78959 rules!3103)))) (toChars!1891 (transformation!1145 (rule!1913 token!491)))) t!78996) tb!51689))

(declare-fun result!57988 () Bool)

(assert (= result!57988 result!57974))

(assert (=> b!591183 t!78996))

(assert (=> d!208020 t!78996))

(declare-fun b_and!58265 () Bool)

(declare-fun tp!184354 () Bool)

(assert (=> b!591236 (= tp!184354 (and (=> t!78994 result!57986) (=> t!78996 result!57988) b_and!58265))))

(declare-fun e!357459 () Bool)

(assert (=> b!591236 (= e!357459 (and tp!184352 tp!184354))))

(declare-fun b!591235 () Bool)

(declare-fun tp!184355 () Bool)

(declare-fun e!357460 () Bool)

(assert (=> b!591235 (= e!357460 (and tp!184355 (inv!7381 (tag!1407 (h!11235 (t!78959 rules!3103)))) (inv!7384 (transformation!1145 (h!11235 (t!78959 rules!3103)))) e!357459))))

(declare-fun b!591234 () Bool)

(declare-fun e!357457 () Bool)

(declare-fun tp!184353 () Bool)

(assert (=> b!591234 (= e!357457 (and e!357460 tp!184353))))

(assert (=> b!590878 (= tp!184268 e!357457)))

(assert (= b!591235 b!591236))

(assert (= b!591234 b!591235))

(assert (= (and b!590878 ((_ is Cons!5834) (t!78959 rules!3103))) b!591234))

(declare-fun m!852509 () Bool)

(assert (=> b!591235 m!852509))

(declare-fun m!852511 () Bool)

(assert (=> b!591235 m!852511))

(declare-fun b!591237 () Bool)

(declare-fun e!357461 () Bool)

(declare-fun tp!184356 () Bool)

(assert (=> b!591237 (= e!357461 (and tp_is_empty!3313 tp!184356))))

(assert (=> b!590883 (= tp!184265 e!357461)))

(assert (= (and b!590883 ((_ is Cons!5833) (t!78958 input!2705))) b!591237))

(declare-fun b_lambda!23285 () Bool)

(assert (= b_lambda!23281 (or (and b!590887 b_free!16575 (= (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toChars!1891 (transformation!1145 (rule!1913 token!491))))) (and b!590877 b_free!16579) (and b!591236 b_free!16587 (= (toChars!1891 (transformation!1145 (h!11235 (t!78959 rules!3103)))) (toChars!1891 (transformation!1145 (rule!1913 token!491))))) b_lambda!23285)))

(declare-fun b_lambda!23287 () Bool)

(assert (= b_lambda!23283 (or (and b!590887 b_free!16575 (= (toChars!1891 (transformation!1145 (h!11235 rules!3103))) (toChars!1891 (transformation!1145 (rule!1913 token!491))))) (and b!590877 b_free!16579) (and b!591236 b_free!16587 (= (toChars!1891 (transformation!1145 (h!11235 (t!78959 rules!3103)))) (toChars!1891 (transformation!1145 (rule!1913 token!491))))) b_lambda!23287)))

(check-sat (not b!591220) (not b!591173) (not b!591151) (not b!591019) (not d!208012) (not b!591234) (not tb!51677) (not b!591196) (not tb!51667) (not b!591214) (not d!207964) (not d!207984) (not b!591224) (not bm!40311) (not d!207998) (not b!591002) (not b_lambda!23285) (not b!591185) (not bm!40316) (not d!207992) (not d!208002) b_and!58265 (not d!207990) (not b_next!16589) (not d!208024) (not b!591184) (not d!207944) (not b!591187) b_and!58245 (not d!207872) (not d!207980) (not b!591178) (not b!591017) (not b_lambda!23279) b_and!58263 (not b!591191) (not b!591157) (not d!207956) (not b!590974) (not b!591190) (not b_lambda!23287) (not d!207994) (not b_next!16593) (not b!590972) (not b_next!16595) (not b!591222) (not b!591215) (not b!591063) (not d!207950) (not b!591183) (not d!207952) (not b!591176) (not b!591197) (not d!208006) (not d!207974) (not b!590975) (not b!591158) b_and!58261 (not d!207946) (not b!591028) (not b!591225) (not b!591201) (not b!591177) (not b!591162) (not b!591154) (not b!591155) b_and!58243 (not d!208020) (not b_next!16603) tp_is_empty!3313 (not b!591186) (not b!591138) (not d!208022) (not b!591088) (not d!208018) (not b!590970) (not tb!51681) (not b!590976) (not b_next!16591) (not b!591060) (not b!591192) (not d!208026) (not b!591018) (not b!591024) (not b!591193) (not b!591223) (not b!591235) (not d!208016) (not b!591140) (not b!591189) b_and!58259 (not d!207972) (not b!590977) (not b_lambda!23273) (not b!591194) (not b!591136) (not b!591213) (not b!591139) (not d!208030) (not d!207988) (not d!207948) (not b!591237) (not b!590973) (not b!590969) (not d!207982) (not b_next!16601) (not b!591150))
(check-sat b_and!58265 (not b_next!16589) b_and!58245 b_and!58263 (not b_next!16593) (not b_next!16595) b_and!58261 b_and!58243 (not b_next!16603) (not b_next!16591) b_and!58259 (not b_next!16601))
