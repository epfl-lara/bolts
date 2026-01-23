; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175354 () Bool)

(assert start!175354)

(declare-fun b!1768237 () Bool)

(declare-fun b_free!48943 () Bool)

(declare-fun b_next!49647 () Bool)

(assert (=> b!1768237 (= b_free!48943 (not b_next!49647))))

(declare-fun tp!501732 () Bool)

(declare-fun b_and!134207 () Bool)

(assert (=> b!1768237 (= tp!501732 b_and!134207)))

(declare-fun b_free!48945 () Bool)

(declare-fun b_next!49649 () Bool)

(assert (=> b!1768237 (= b_free!48945 (not b_next!49649))))

(declare-fun tp!501736 () Bool)

(declare-fun b_and!134209 () Bool)

(assert (=> b!1768237 (= tp!501736 b_and!134209)))

(declare-fun b!1768235 () Bool)

(declare-fun b_free!48947 () Bool)

(declare-fun b_next!49651 () Bool)

(assert (=> b!1768235 (= b_free!48947 (not b_next!49651))))

(declare-fun tp!501733 () Bool)

(declare-fun b_and!134211 () Bool)

(assert (=> b!1768235 (= tp!501733 b_and!134211)))

(declare-fun b_free!48949 () Bool)

(declare-fun b_next!49653 () Bool)

(assert (=> b!1768235 (= b_free!48949 (not b_next!49653))))

(declare-fun tp!501730 () Bool)

(declare-fun b_and!134213 () Bool)

(assert (=> b!1768235 (= tp!501730 b_and!134213)))

(declare-fun b!1768223 () Bool)

(declare-fun b_free!48951 () Bool)

(declare-fun b_next!49655 () Bool)

(assert (=> b!1768223 (= b_free!48951 (not b_next!49655))))

(declare-fun tp!501735 () Bool)

(declare-fun b_and!134215 () Bool)

(assert (=> b!1768223 (= tp!501735 b_and!134215)))

(declare-fun b_free!48953 () Bool)

(declare-fun b_next!49657 () Bool)

(assert (=> b!1768223 (= b_free!48953 (not b_next!49657))))

(declare-fun tp!501727 () Bool)

(declare-fun b_and!134217 () Bool)

(assert (=> b!1768223 (= tp!501727 b_and!134217)))

(declare-fun b!1768254 () Bool)

(declare-fun e!1131581 () Bool)

(assert (=> b!1768254 (= e!1131581 true)))

(declare-fun b!1768253 () Bool)

(declare-fun e!1131580 () Bool)

(assert (=> b!1768253 (= e!1131580 e!1131581)))

(declare-fun b!1768252 () Bool)

(declare-fun e!1131579 () Bool)

(assert (=> b!1768252 (= e!1131579 e!1131580)))

(declare-fun b!1768240 () Bool)

(assert (=> b!1768240 e!1131579))

(assert (= b!1768253 b!1768254))

(assert (= b!1768252 b!1768253))

(assert (= b!1768240 b!1768252))

(declare-fun lambda!70350 () Int)

(declare-datatypes ((List!19541 0))(
  ( (Nil!19471) (Cons!19471 (h!24872 (_ BitVec 16)) (t!165018 List!19541)) )
))
(declare-datatypes ((TokenValue!3571 0))(
  ( (FloatLiteralValue!7142 (text!25442 List!19541)) (TokenValueExt!3570 (__x!12444 Int)) (Broken!17855 (value!108855 List!19541)) (Object!3640) (End!3571) (Def!3571) (Underscore!3571) (Match!3571) (Else!3571) (Error!3571) (Case!3571) (If!3571) (Extends!3571) (Abstract!3571) (Class!3571) (Val!3571) (DelimiterValue!7142 (del!3631 List!19541)) (KeywordValue!3577 (value!108856 List!19541)) (CommentValue!7142 (value!108857 List!19541)) (WhitespaceValue!7142 (value!108858 List!19541)) (IndentationValue!3571 (value!108859 List!19541)) (String!22186) (Int32!3571) (Broken!17856 (value!108860 List!19541)) (Boolean!3572) (Unit!33665) (OperatorValue!3574 (op!3631 List!19541)) (IdentifierValue!7142 (value!108861 List!19541)) (IdentifierValue!7143 (value!108862 List!19541)) (WhitespaceValue!7143 (value!108863 List!19541)) (True!7142) (False!7142) (Broken!17857 (value!108864 List!19541)) (Broken!17858 (value!108865 List!19541)) (True!7143) (RightBrace!3571) (RightBracket!3571) (Colon!3571) (Null!3571) (Comma!3571) (LeftBracket!3571) (False!7143) (LeftBrace!3571) (ImaginaryLiteralValue!3571 (text!25443 List!19541)) (StringLiteralValue!10713 (value!108866 List!19541)) (EOFValue!3571 (value!108867 List!19541)) (IdentValue!3571 (value!108868 List!19541)) (DelimiterValue!7143 (value!108869 List!19541)) (DedentValue!3571 (value!108870 List!19541)) (NewLineValue!3571 (value!108871 List!19541)) (IntegerValue!10713 (value!108872 (_ BitVec 32)) (text!25444 List!19541)) (IntegerValue!10714 (value!108873 Int) (text!25445 List!19541)) (Times!3571) (Or!3571) (Equal!3571) (Minus!3571) (Broken!17859 (value!108874 List!19541)) (And!3571) (Div!3571) (LessEqual!3571) (Mod!3571) (Concat!8380) (Not!3571) (Plus!3571) (SpaceValue!3571 (value!108875 List!19541)) (IntegerValue!10715 (value!108876 Int) (text!25446 List!19541)) (StringLiteralValue!10714 (text!25447 List!19541)) (FloatLiteralValue!7143 (text!25448 List!19541)) (BytesLiteralValue!3571 (value!108877 List!19541)) (CommentValue!7143 (value!108878 List!19541)) (StringLiteralValue!10715 (value!108879 List!19541)) (ErrorTokenValue!3571 (msg!3632 List!19541)) )
))
(declare-datatypes ((C!9792 0))(
  ( (C!9793 (val!5492 Int)) )
))
(declare-datatypes ((List!19542 0))(
  ( (Nil!19472) (Cons!19472 (h!24873 C!9792) (t!165019 List!19542)) )
))
(declare-datatypes ((Regex!4809 0))(
  ( (ElementMatch!4809 (c!287936 C!9792)) (Concat!8381 (regOne!10130 Regex!4809) (regTwo!10130 Regex!4809)) (EmptyExpr!4809) (Star!4809 (reg!5138 Regex!4809)) (EmptyLang!4809) (Union!4809 (regOne!10131 Regex!4809) (regTwo!10131 Regex!4809)) )
))
(declare-datatypes ((String!22187 0))(
  ( (String!22188 (value!108880 String)) )
))
(declare-datatypes ((IArray!12959 0))(
  ( (IArray!12960 (innerList!6537 List!19542)) )
))
(declare-datatypes ((Conc!6477 0))(
  ( (Node!6477 (left!15591 Conc!6477) (right!15921 Conc!6477) (csize!13184 Int) (cheight!6688 Int)) (Leaf!9438 (xs!9353 IArray!12959) (csize!13185 Int)) (Empty!6477) )
))
(declare-datatypes ((BalanceConc!12898 0))(
  ( (BalanceConc!12899 (c!287937 Conc!6477)) )
))
(declare-datatypes ((TokenValueInjection!6802 0))(
  ( (TokenValueInjection!6803 (toValue!5004 Int) (toChars!4863 Int)) )
))
(declare-datatypes ((Rule!6762 0))(
  ( (Rule!6763 (regex!3481 Regex!4809) (tag!3859 String!22187) (isSeparator!3481 Bool) (transformation!3481 TokenValueInjection!6802)) )
))
(declare-datatypes ((Token!6528 0))(
  ( (Token!6529 (value!108881 TokenValue!3571) (rule!5519 Rule!6762) (size!15464 Int) (originalCharacters!4295 List!19542)) )
))
(declare-datatypes ((tuple2!19078 0))(
  ( (tuple2!19079 (_1!10941 Token!6528) (_2!10941 List!19542)) )
))
(declare-fun lt!684376 () tuple2!19078)

(declare-fun order!12417 () Int)

(declare-fun order!12415 () Int)

(declare-fun dynLambda!9436 (Int Int) Int)

(declare-fun dynLambda!9437 (Int Int) Int)

(assert (=> b!1768254 (< (dynLambda!9436 order!12415 (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) (dynLambda!9437 order!12417 lambda!70350))))

(declare-fun order!12419 () Int)

(declare-fun dynLambda!9438 (Int Int) Int)

(assert (=> b!1768254 (< (dynLambda!9438 order!12419 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) (dynLambda!9437 order!12417 lambda!70350))))

(declare-fun b!1768214 () Bool)

(declare-fun e!1131551 () Bool)

(declare-fun e!1131571 () Bool)

(assert (=> b!1768214 (= e!1131551 e!1131571)))

(declare-fun res!796210 () Bool)

(assert (=> b!1768214 (=> res!796210 e!1131571)))

(declare-fun suffix!1421 () List!19542)

(declare-fun lt!684380 () Regex!4809)

(declare-fun lt!684384 () List!19542)

(declare-fun prefixMatch!692 (Regex!4809 List!19542) Bool)

(declare-fun ++!5305 (List!19542 List!19542) List!19542)

(declare-fun head!4108 (List!19542) C!9792)

(assert (=> b!1768214 (= res!796210 (prefixMatch!692 lt!684380 (++!5305 lt!684384 (Cons!19472 (head!4108 suffix!1421) Nil!19472))))))

(declare-datatypes ((LexerInterface!3110 0))(
  ( (LexerInterfaceExt!3107 (__x!12445 Int)) (Lexer!3108) )
))
(declare-fun thiss!24550 () LexerInterface!3110)

(declare-datatypes ((List!19543 0))(
  ( (Nil!19473) (Cons!19473 (h!24874 Rule!6762) (t!165020 List!19543)) )
))
(declare-fun rules!3447 () List!19543)

(declare-fun rulesRegex!837 (LexerInterface!3110 List!19543) Regex!4809)

(assert (=> b!1768214 (= lt!684380 (rulesRegex!837 thiss!24550 rules!3447))))

(declare-fun b!1768215 () Bool)

(declare-fun res!796224 () Bool)

(declare-fun e!1131568 () Bool)

(assert (=> b!1768215 (=> (not res!796224) (not e!1131568))))

(declare-fun rulesInvariant!2779 (LexerInterface!3110 List!19543) Bool)

(assert (=> b!1768215 (= res!796224 (rulesInvariant!2779 thiss!24550 rules!3447))))

(declare-fun b!1768216 () Bool)

(declare-fun e!1131556 () Bool)

(declare-fun lt!684370 () Rule!6762)

(assert (=> b!1768216 (= e!1131556 (= (rule!5519 (_1!10941 lt!684376)) lt!684370))))

(declare-fun b!1768217 () Bool)

(declare-fun res!796223 () Bool)

(assert (=> b!1768217 (=> (not res!796223) (not e!1131568))))

(declare-fun isEmpty!12292 (List!19543) Bool)

(assert (=> b!1768217 (= res!796223 (not (isEmpty!12292 rules!3447)))))

(declare-fun b!1768218 () Bool)

(declare-fun e!1131549 () Bool)

(declare-fun e!1131564 () Bool)

(assert (=> b!1768218 (= e!1131549 e!1131564)))

(declare-fun res!796209 () Bool)

(assert (=> b!1768218 (=> (not res!796209) (not e!1131564))))

(declare-fun lt!684372 () tuple2!19078)

(declare-fun token!523 () Token!6528)

(assert (=> b!1768218 (= res!796209 (= (_1!10941 lt!684372) token!523))))

(declare-datatypes ((Option!3984 0))(
  ( (None!3983) (Some!3983 (v!25456 tuple2!19078)) )
))
(declare-fun lt!684361 () Option!3984)

(declare-fun get!5942 (Option!3984) tuple2!19078)

(assert (=> b!1768218 (= lt!684372 (get!5942 lt!684361))))

(declare-fun b!1768219 () Bool)

(declare-fun e!1131558 () Bool)

(declare-fun tp_is_empty!7861 () Bool)

(declare-fun tp!501729 () Bool)

(assert (=> b!1768219 (= e!1131558 (and tp_is_empty!7861 tp!501729))))

(declare-fun b!1768220 () Bool)

(declare-fun res!796213 () Bool)

(assert (=> b!1768220 (=> (not res!796213) (not e!1131564))))

(declare-fun rule!422 () Rule!6762)

(assert (=> b!1768220 (= res!796213 (= (rule!5519 token!523) rule!422))))

(declare-fun res!796204 () Bool)

(assert (=> start!175354 (=> (not res!796204) (not e!1131568))))

(get-info :version)

(assert (=> start!175354 (= res!796204 ((_ is Lexer!3108) thiss!24550))))

(assert (=> start!175354 e!1131568))

(assert (=> start!175354 e!1131558))

(declare-fun e!1131555 () Bool)

(assert (=> start!175354 e!1131555))

(assert (=> start!175354 true))

(declare-fun e!1131572 () Bool)

(declare-fun inv!25302 (Token!6528) Bool)

(assert (=> start!175354 (and (inv!25302 token!523) e!1131572)))

(declare-fun e!1131557 () Bool)

(assert (=> start!175354 e!1131557))

(declare-fun b!1768221 () Bool)

(declare-fun e!1131567 () Bool)

(assert (=> b!1768221 (= e!1131567 e!1131556)))

(declare-fun res!796218 () Bool)

(assert (=> b!1768221 (=> (not res!796218) (not e!1131556))))

(declare-fun matchR!2282 (Regex!4809 List!19542) Bool)

(declare-fun list!7907 (BalanceConc!12898) List!19542)

(declare-fun charsOf!2130 (Token!6528) BalanceConc!12898)

(assert (=> b!1768221 (= res!796218 (matchR!2282 (regex!3481 lt!684370) (list!7907 (charsOf!2130 (_1!10941 lt!684376)))))))

(declare-datatypes ((Option!3985 0))(
  ( (None!3984) (Some!3984 (v!25457 Rule!6762)) )
))
(declare-fun lt!684363 () Option!3985)

(declare-fun get!5943 (Option!3985) Rule!6762)

(assert (=> b!1768221 (= lt!684370 (get!5943 lt!684363))))

(declare-fun b!1768222 () Bool)

(assert (=> b!1768222 (= e!1131564 (not e!1131551))))

(declare-fun res!796216 () Bool)

(assert (=> b!1768222 (=> res!796216 e!1131551)))

(assert (=> b!1768222 (= res!796216 (not (matchR!2282 (regex!3481 rule!422) lt!684384)))))

(declare-fun ruleValid!979 (LexerInterface!3110 Rule!6762) Bool)

(assert (=> b!1768222 (ruleValid!979 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33666 0))(
  ( (Unit!33667) )
))
(declare-fun lt!684356 () Unit!33666)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!502 (LexerInterface!3110 Rule!6762 List!19543) Unit!33666)

(assert (=> b!1768222 (= lt!684356 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!502 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1131562 () Bool)

(assert (=> b!1768223 (= e!1131562 (and tp!501735 tp!501727))))

(declare-fun b!1768224 () Bool)

(declare-fun res!796212 () Bool)

(declare-fun e!1131561 () Bool)

(assert (=> b!1768224 (=> res!796212 e!1131561)))

(declare-fun lt!684366 () List!19542)

(assert (=> b!1768224 (= res!796212 (not (matchR!2282 (regex!3481 (rule!5519 (_1!10941 lt!684376))) lt!684366)))))

(declare-fun b!1768225 () Bool)

(assert (=> b!1768225 (= e!1131568 e!1131549)))

(declare-fun res!796219 () Bool)

(assert (=> b!1768225 (=> (not res!796219) (not e!1131549))))

(declare-fun isDefined!3327 (Option!3984) Bool)

(assert (=> b!1768225 (= res!796219 (isDefined!3327 lt!684361))))

(declare-fun maxPrefix!1664 (LexerInterface!3110 List!19543 List!19542) Option!3984)

(assert (=> b!1768225 (= lt!684361 (maxPrefix!1664 thiss!24550 rules!3447 lt!684384))))

(declare-fun lt!684359 () BalanceConc!12898)

(assert (=> b!1768225 (= lt!684384 (list!7907 lt!684359))))

(assert (=> b!1768225 (= lt!684359 (charsOf!2130 token!523))))

(declare-fun b!1768226 () Bool)

(declare-fun e!1131559 () Bool)

(declare-fun e!1131552 () Bool)

(assert (=> b!1768226 (= e!1131559 e!1131552)))

(declare-fun res!796215 () Bool)

(assert (=> b!1768226 (=> res!796215 e!1131552)))

(declare-fun lt!684382 () Option!3984)

(declare-fun lt!684360 () TokenValue!3571)

(declare-fun lt!684352 () Int)

(assert (=> b!1768226 (= res!796215 (not (= lt!684382 (Some!3983 (tuple2!19079 (Token!6529 lt!684360 (rule!5519 (_1!10941 lt!684376)) lt!684352 lt!684366) (_2!10941 lt!684376))))))))

(declare-fun lt!684354 () BalanceConc!12898)

(declare-fun size!15465 (BalanceConc!12898) Int)

(assert (=> b!1768226 (= lt!684352 (size!15465 lt!684354))))

(declare-fun apply!5281 (TokenValueInjection!6802 BalanceConc!12898) TokenValue!3571)

(assert (=> b!1768226 (= lt!684360 (apply!5281 (transformation!3481 (rule!5519 (_1!10941 lt!684376))) lt!684354))))

(declare-fun lt!684358 () Unit!33666)

(declare-fun lemmaCharactersSize!539 (Token!6528) Unit!33666)

(assert (=> b!1768226 (= lt!684358 (lemmaCharactersSize!539 (_1!10941 lt!684376)))))

(declare-fun lt!684355 () Unit!33666)

(declare-fun lemmaEqSameImage!392 (TokenValueInjection!6802 BalanceConc!12898 BalanceConc!12898) Unit!33666)

(declare-fun seqFromList!2450 (List!19542) BalanceConc!12898)

(assert (=> b!1768226 (= lt!684355 (lemmaEqSameImage!392 (transformation!3481 (rule!5519 (_1!10941 lt!684376))) lt!684354 (seqFromList!2450 (originalCharacters!4295 (_1!10941 lt!684376)))))))

(declare-fun b!1768227 () Bool)

(declare-fun e!1131565 () Bool)

(declare-fun tp!501734 () Bool)

(assert (=> b!1768227 (= e!1131557 (and e!1131565 tp!501734))))

(declare-fun b!1768228 () Bool)

(declare-fun res!796217 () Bool)

(assert (=> b!1768228 (=> (not res!796217) (not e!1131568))))

(declare-fun contains!3511 (List!19543 Rule!6762) Bool)

(assert (=> b!1768228 (= res!796217 (contains!3511 rules!3447 rule!422))))

(declare-fun b!1768229 () Bool)

(declare-fun res!796222 () Bool)

(assert (=> b!1768229 (=> (not res!796222) (not e!1131564))))

(declare-fun isEmpty!12293 (List!19542) Bool)

(assert (=> b!1768229 (= res!796222 (isEmpty!12293 (_2!10941 lt!684372)))))

(declare-fun b!1768230 () Bool)

(declare-fun e!1131563 () Bool)

(assert (=> b!1768230 (= e!1131552 e!1131563)))

(declare-fun res!796206 () Bool)

(assert (=> b!1768230 (=> res!796206 e!1131563)))

(declare-fun lt!684357 () Option!3984)

(declare-fun lt!684369 () List!19542)

(assert (=> b!1768230 (= res!796206 (or (not (= lt!684369 (_2!10941 lt!684376))) (not (= lt!684357 (Some!3983 (tuple2!19079 (_1!10941 lt!684376) lt!684369))))))))

(assert (=> b!1768230 (= (_2!10941 lt!684376) lt!684369)))

(declare-fun lt!684365 () Unit!33666)

(declare-fun lt!684373 () List!19542)

(declare-fun lemmaSamePrefixThenSameSuffix!832 (List!19542 List!19542 List!19542 List!19542 List!19542) Unit!33666)

(assert (=> b!1768230 (= lt!684365 (lemmaSamePrefixThenSameSuffix!832 lt!684366 (_2!10941 lt!684376) lt!684366 lt!684369 lt!684373))))

(declare-fun getSuffix!888 (List!19542 List!19542) List!19542)

(assert (=> b!1768230 (= lt!684369 (getSuffix!888 lt!684373 lt!684366))))

(declare-fun lt!684383 () TokenValue!3571)

(declare-fun lt!684362 () Int)

(assert (=> b!1768230 (= lt!684357 (Some!3983 (tuple2!19079 (Token!6529 lt!684383 (rule!5519 (_1!10941 lt!684376)) lt!684362 lt!684366) (_2!10941 lt!684376))))))

(declare-fun maxPrefixOneRule!1033 (LexerInterface!3110 Rule!6762 List!19542) Option!3984)

(assert (=> b!1768230 (= lt!684357 (maxPrefixOneRule!1033 thiss!24550 (rule!5519 (_1!10941 lt!684376)) lt!684373))))

(declare-fun size!15466 (List!19542) Int)

(assert (=> b!1768230 (= lt!684362 (size!15466 lt!684366))))

(assert (=> b!1768230 (= lt!684383 (apply!5281 (transformation!3481 (rule!5519 (_1!10941 lt!684376))) (seqFromList!2450 lt!684366)))))

(declare-fun lt!684378 () Unit!33666)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!411 (LexerInterface!3110 List!19543 List!19542 List!19542 List!19542 Rule!6762) Unit!33666)

(assert (=> b!1768230 (= lt!684378 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!411 thiss!24550 rules!3447 lt!684366 lt!684373 (_2!10941 lt!684376) (rule!5519 (_1!10941 lt!684376))))))

(declare-fun tp!501737 () Bool)

(declare-fun b!1768231 () Bool)

(declare-fun e!1131553 () Bool)

(declare-fun inv!21 (TokenValue!3571) Bool)

(assert (=> b!1768231 (= e!1131572 (and (inv!21 (value!108881 token!523)) e!1131553 tp!501737))))

(declare-fun b!1768232 () Bool)

(declare-fun e!1131547 () Bool)

(assert (=> b!1768232 (= e!1131547 e!1131559)))

(declare-fun res!796207 () Bool)

(assert (=> b!1768232 (=> res!796207 e!1131559)))

(declare-fun dynLambda!9439 (Int TokenValue!3571) BalanceConc!12898)

(declare-fun dynLambda!9440 (Int BalanceConc!12898) TokenValue!3571)

(assert (=> b!1768232 (= res!796207 (not (= (list!7907 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (dynLambda!9440 (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) lt!684354))) lt!684366)))))

(declare-fun lt!684381 () Unit!33666)

(declare-fun lemmaSemiInverse!619 (TokenValueInjection!6802 BalanceConc!12898) Unit!33666)

(assert (=> b!1768232 (= lt!684381 (lemmaSemiInverse!619 (transformation!3481 (rule!5519 (_1!10941 lt!684376))) lt!684354))))

(declare-fun b!1768233 () Bool)

(declare-fun tp!501738 () Bool)

(declare-fun inv!25297 (String!22187) Bool)

(declare-fun inv!25303 (TokenValueInjection!6802) Bool)

(assert (=> b!1768233 (= e!1131553 (and tp!501738 (inv!25297 (tag!3859 (rule!5519 token!523))) (inv!25303 (transformation!3481 (rule!5519 token!523))) e!1131562))))

(declare-fun e!1131570 () Bool)

(declare-fun b!1768234 () Bool)

(declare-fun tp!501728 () Bool)

(assert (=> b!1768234 (= e!1131555 (and tp!501728 (inv!25297 (tag!3859 rule!422)) (inv!25303 (transformation!3481 rule!422)) e!1131570))))

(declare-fun e!1131548 () Bool)

(assert (=> b!1768235 (= e!1131548 (and tp!501733 tp!501730))))

(declare-fun b!1768236 () Bool)

(declare-fun e!1131554 () Bool)

(assert (=> b!1768236 (= e!1131563 e!1131554)))

(declare-fun res!796211 () Bool)

(assert (=> b!1768236 (=> res!796211 e!1131554)))

(assert (=> b!1768236 (= res!796211 (<= lt!684352 (size!15465 lt!684359)))))

(assert (=> b!1768236 (matchR!2282 lt!684380 lt!684384)))

(declare-fun lt!684379 () Unit!33666)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!188 (LexerInterface!3110 List!19543 List!19542 Token!6528 Rule!6762 List!19542) Unit!33666)

(assert (=> b!1768236 (= lt!684379 (lemmaMaxPrefixThenMatchesRulesRegex!188 thiss!24550 rules!3447 lt!684384 token!523 rule!422 Nil!19472))))

(assert (=> b!1768237 (= e!1131570 (and tp!501732 tp!501736))))

(declare-fun tp!501731 () Bool)

(declare-fun b!1768238 () Bool)

(assert (=> b!1768238 (= e!1131565 (and tp!501731 (inv!25297 (tag!3859 (h!24874 rules!3447))) (inv!25303 (transformation!3481 (h!24874 rules!3447))) e!1131548))))

(declare-fun b!1768239 () Bool)

(declare-fun res!796220 () Bool)

(assert (=> b!1768239 (=> res!796220 e!1131551)))

(assert (=> b!1768239 (= res!796220 (isEmpty!12293 suffix!1421))))

(assert (=> b!1768240 (= e!1131561 e!1131547)))

(declare-fun res!796214 () Bool)

(assert (=> b!1768240 (=> res!796214 e!1131547)))

(declare-fun Forall!848 (Int) Bool)

(assert (=> b!1768240 (= res!796214 (not (Forall!848 lambda!70350)))))

(declare-fun lt!684353 () Unit!33666)

(declare-fun lemmaInv!680 (TokenValueInjection!6802) Unit!33666)

(assert (=> b!1768240 (= lt!684353 (lemmaInv!680 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))))))

(declare-fun b!1768241 () Bool)

(assert (=> b!1768241 (= e!1131554 true)))

(declare-fun lt!684367 () List!19542)

(assert (=> b!1768241 (= suffix!1421 lt!684367)))

(declare-fun lt!684371 () Unit!33666)

(assert (=> b!1768241 (= lt!684371 (lemmaSamePrefixThenSameSuffix!832 lt!684384 suffix!1421 lt!684384 lt!684367 lt!684373))))

(assert (=> b!1768241 (= lt!684367 (getSuffix!888 lt!684373 lt!684384))))

(assert (=> b!1768241 (matchR!2282 lt!684380 lt!684366)))

(declare-fun lt!684375 () Unit!33666)

(assert (=> b!1768241 (= lt!684375 (lemmaMaxPrefixThenMatchesRulesRegex!188 thiss!24550 rules!3447 lt!684373 (_1!10941 lt!684376) (rule!5519 (_1!10941 lt!684376)) (_2!10941 lt!684376)))))

(declare-fun b!1768242 () Bool)

(assert (=> b!1768242 (= e!1131571 e!1131561)))

(declare-fun res!796208 () Bool)

(assert (=> b!1768242 (=> res!796208 e!1131561)))

(declare-fun isPrefix!1721 (List!19542 List!19542) Bool)

(assert (=> b!1768242 (= res!796208 (not (isPrefix!1721 lt!684366 lt!684373)))))

(assert (=> b!1768242 (isPrefix!1721 lt!684366 (++!5305 lt!684366 (_2!10941 lt!684376)))))

(declare-fun lt!684374 () Unit!33666)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1230 (List!19542 List!19542) Unit!33666)

(assert (=> b!1768242 (= lt!684374 (lemmaConcatTwoListThenFirstIsPrefix!1230 lt!684366 (_2!10941 lt!684376)))))

(assert (=> b!1768242 (= lt!684366 (list!7907 lt!684354))))

(assert (=> b!1768242 (= lt!684354 (charsOf!2130 (_1!10941 lt!684376)))))

(assert (=> b!1768242 e!1131567))

(declare-fun res!796205 () Bool)

(assert (=> b!1768242 (=> (not res!796205) (not e!1131567))))

(declare-fun isDefined!3328 (Option!3985) Bool)

(assert (=> b!1768242 (= res!796205 (isDefined!3328 lt!684363))))

(declare-fun getRuleFromTag!529 (LexerInterface!3110 List!19543 String!22187) Option!3985)

(assert (=> b!1768242 (= lt!684363 (getRuleFromTag!529 thiss!24550 rules!3447 (tag!3859 (rule!5519 (_1!10941 lt!684376)))))))

(declare-fun lt!684364 () Unit!33666)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!529 (LexerInterface!3110 List!19543 List!19542 Token!6528) Unit!33666)

(assert (=> b!1768242 (= lt!684364 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!529 thiss!24550 rules!3447 lt!684373 (_1!10941 lt!684376)))))

(assert (=> b!1768242 (= lt!684376 (get!5942 lt!684382))))

(declare-fun lt!684377 () Unit!33666)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!632 (LexerInterface!3110 List!19543 List!19542 List!19542) Unit!33666)

(assert (=> b!1768242 (= lt!684377 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!632 thiss!24550 rules!3447 lt!684384 suffix!1421))))

(assert (=> b!1768242 (= lt!684382 (maxPrefix!1664 thiss!24550 rules!3447 lt!684373))))

(assert (=> b!1768242 (isPrefix!1721 lt!684384 lt!684373)))

(declare-fun lt!684368 () Unit!33666)

(assert (=> b!1768242 (= lt!684368 (lemmaConcatTwoListThenFirstIsPrefix!1230 lt!684384 suffix!1421))))

(assert (=> b!1768242 (= lt!684373 (++!5305 lt!684384 suffix!1421))))

(declare-fun b!1768243 () Bool)

(declare-fun res!796221 () Bool)

(assert (=> b!1768243 (=> res!796221 e!1131559)))

(assert (=> b!1768243 (= res!796221 (not (= lt!684354 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (value!108881 (_1!10941 lt!684376))))))))

(assert (= (and start!175354 res!796204) b!1768217))

(assert (= (and b!1768217 res!796223) b!1768215))

(assert (= (and b!1768215 res!796224) b!1768228))

(assert (= (and b!1768228 res!796217) b!1768225))

(assert (= (and b!1768225 res!796219) b!1768218))

(assert (= (and b!1768218 res!796209) b!1768229))

(assert (= (and b!1768229 res!796222) b!1768220))

(assert (= (and b!1768220 res!796213) b!1768222))

(assert (= (and b!1768222 (not res!796216)) b!1768239))

(assert (= (and b!1768239 (not res!796220)) b!1768214))

(assert (= (and b!1768214 (not res!796210)) b!1768242))

(assert (= (and b!1768242 res!796205) b!1768221))

(assert (= (and b!1768221 res!796218) b!1768216))

(assert (= (and b!1768242 (not res!796208)) b!1768224))

(assert (= (and b!1768224 (not res!796212)) b!1768240))

(assert (= (and b!1768240 (not res!796214)) b!1768232))

(assert (= (and b!1768232 (not res!796207)) b!1768243))

(assert (= (and b!1768243 (not res!796221)) b!1768226))

(assert (= (and b!1768226 (not res!796215)) b!1768230))

(assert (= (and b!1768230 (not res!796206)) b!1768236))

(assert (= (and b!1768236 (not res!796211)) b!1768241))

(assert (= (and start!175354 ((_ is Cons!19472) suffix!1421)) b!1768219))

(assert (= b!1768234 b!1768237))

(assert (= start!175354 b!1768234))

(assert (= b!1768233 b!1768223))

(assert (= b!1768231 b!1768233))

(assert (= start!175354 b!1768231))

(assert (= b!1768238 b!1768235))

(assert (= b!1768227 b!1768238))

(assert (= (and start!175354 ((_ is Cons!19473) rules!3447)) b!1768227))

(declare-fun b_lambda!57495 () Bool)

(assert (=> (not b_lambda!57495) (not b!1768232)))

(declare-fun tb!106875 () Bool)

(declare-fun t!165001 () Bool)

(assert (=> (and b!1768237 (= (toChars!4863 (transformation!3481 rule!422)) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165001) tb!106875))

(declare-fun e!1131584 () Bool)

(declare-fun tp!501741 () Bool)

(declare-fun b!1768259 () Bool)

(declare-fun inv!25304 (Conc!6477) Bool)

(assert (=> b!1768259 (= e!1131584 (and (inv!25304 (c!287937 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (dynLambda!9440 (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) lt!684354)))) tp!501741))))

(declare-fun result!128582 () Bool)

(declare-fun inv!25305 (BalanceConc!12898) Bool)

(assert (=> tb!106875 (= result!128582 (and (inv!25305 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (dynLambda!9440 (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) lt!684354))) e!1131584))))

(assert (= tb!106875 b!1768259))

(declare-fun m!2186239 () Bool)

(assert (=> b!1768259 m!2186239))

(declare-fun m!2186241 () Bool)

(assert (=> tb!106875 m!2186241))

(assert (=> b!1768232 t!165001))

(declare-fun b_and!134219 () Bool)

(assert (= b_and!134209 (and (=> t!165001 result!128582) b_and!134219)))

(declare-fun tb!106877 () Bool)

(declare-fun t!165003 () Bool)

(assert (=> (and b!1768235 (= (toChars!4863 (transformation!3481 (h!24874 rules!3447))) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165003) tb!106877))

(declare-fun result!128586 () Bool)

(assert (= result!128586 result!128582))

(assert (=> b!1768232 t!165003))

(declare-fun b_and!134221 () Bool)

(assert (= b_and!134213 (and (=> t!165003 result!128586) b_and!134221)))

(declare-fun tb!106879 () Bool)

(declare-fun t!165005 () Bool)

(assert (=> (and b!1768223 (= (toChars!4863 (transformation!3481 (rule!5519 token!523))) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165005) tb!106879))

(declare-fun result!128588 () Bool)

(assert (= result!128588 result!128582))

(assert (=> b!1768232 t!165005))

(declare-fun b_and!134223 () Bool)

(assert (= b_and!134217 (and (=> t!165005 result!128588) b_and!134223)))

(declare-fun b_lambda!57497 () Bool)

(assert (=> (not b_lambda!57497) (not b!1768232)))

(declare-fun tb!106881 () Bool)

(declare-fun t!165007 () Bool)

(assert (=> (and b!1768237 (= (toValue!5004 (transformation!3481 rule!422)) (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165007) tb!106881))

(declare-fun result!128590 () Bool)

(assert (=> tb!106881 (= result!128590 (inv!21 (dynLambda!9440 (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) lt!684354)))))

(declare-fun m!2186243 () Bool)

(assert (=> tb!106881 m!2186243))

(assert (=> b!1768232 t!165007))

(declare-fun b_and!134225 () Bool)

(assert (= b_and!134207 (and (=> t!165007 result!128590) b_and!134225)))

(declare-fun t!165009 () Bool)

(declare-fun tb!106883 () Bool)

(assert (=> (and b!1768235 (= (toValue!5004 (transformation!3481 (h!24874 rules!3447))) (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165009) tb!106883))

(declare-fun result!128594 () Bool)

(assert (= result!128594 result!128590))

(assert (=> b!1768232 t!165009))

(declare-fun b_and!134227 () Bool)

(assert (= b_and!134211 (and (=> t!165009 result!128594) b_and!134227)))

(declare-fun t!165011 () Bool)

(declare-fun tb!106885 () Bool)

(assert (=> (and b!1768223 (= (toValue!5004 (transformation!3481 (rule!5519 token!523))) (toValue!5004 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165011) tb!106885))

(declare-fun result!128596 () Bool)

(assert (= result!128596 result!128590))

(assert (=> b!1768232 t!165011))

(declare-fun b_and!134229 () Bool)

(assert (= b_and!134215 (and (=> t!165011 result!128596) b_and!134229)))

(declare-fun b_lambda!57499 () Bool)

(assert (=> (not b_lambda!57499) (not b!1768243)))

(declare-fun tb!106887 () Bool)

(declare-fun t!165013 () Bool)

(assert (=> (and b!1768237 (= (toChars!4863 (transformation!3481 rule!422)) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165013) tb!106887))

(declare-fun b!1768262 () Bool)

(declare-fun e!1131588 () Bool)

(declare-fun tp!501742 () Bool)

(assert (=> b!1768262 (= e!1131588 (and (inv!25304 (c!287937 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (value!108881 (_1!10941 lt!684376))))) tp!501742))))

(declare-fun result!128598 () Bool)

(assert (=> tb!106887 (= result!128598 (and (inv!25305 (dynLambda!9439 (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376)))) (value!108881 (_1!10941 lt!684376)))) e!1131588))))

(assert (= tb!106887 b!1768262))

(declare-fun m!2186245 () Bool)

(assert (=> b!1768262 m!2186245))

(declare-fun m!2186247 () Bool)

(assert (=> tb!106887 m!2186247))

(assert (=> b!1768243 t!165013))

(declare-fun b_and!134231 () Bool)

(assert (= b_and!134219 (and (=> t!165013 result!128598) b_and!134231)))

(declare-fun t!165015 () Bool)

(declare-fun tb!106889 () Bool)

(assert (=> (and b!1768235 (= (toChars!4863 (transformation!3481 (h!24874 rules!3447))) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165015) tb!106889))

(declare-fun result!128600 () Bool)

(assert (= result!128600 result!128598))

(assert (=> b!1768243 t!165015))

(declare-fun b_and!134233 () Bool)

(assert (= b_and!134221 (and (=> t!165015 result!128600) b_and!134233)))

(declare-fun tb!106891 () Bool)

(declare-fun t!165017 () Bool)

(assert (=> (and b!1768223 (= (toChars!4863 (transformation!3481 (rule!5519 token!523))) (toChars!4863 (transformation!3481 (rule!5519 (_1!10941 lt!684376))))) t!165017) tb!106891))

(declare-fun result!128602 () Bool)

(assert (= result!128602 result!128598))

(assert (=> b!1768243 t!165017))

(declare-fun b_and!134235 () Bool)

(assert (= b_and!134223 (and (=> t!165017 result!128602) b_and!134235)))

(declare-fun m!2186249 () Bool)

(assert (=> b!1768215 m!2186249))

(declare-fun m!2186251 () Bool)

(assert (=> b!1768243 m!2186251))

(declare-fun m!2186253 () Bool)

(assert (=> b!1768217 m!2186253))

(declare-fun m!2186255 () Bool)

(assert (=> b!1768241 m!2186255))

(declare-fun m!2186257 () Bool)

(assert (=> b!1768241 m!2186257))

(declare-fun m!2186259 () Bool)

(assert (=> b!1768241 m!2186259))

(declare-fun m!2186261 () Bool)

(assert (=> b!1768241 m!2186261))

(declare-fun m!2186263 () Bool)

(assert (=> b!1768231 m!2186263))

(declare-fun m!2186265 () Bool)

(assert (=> b!1768228 m!2186265))

(declare-fun m!2186267 () Bool)

(assert (=> b!1768236 m!2186267))

(declare-fun m!2186269 () Bool)

(assert (=> b!1768236 m!2186269))

(declare-fun m!2186271 () Bool)

(assert (=> b!1768236 m!2186271))

(declare-fun m!2186273 () Bool)

(assert (=> b!1768225 m!2186273))

(declare-fun m!2186275 () Bool)

(assert (=> b!1768225 m!2186275))

(declare-fun m!2186277 () Bool)

(assert (=> b!1768225 m!2186277))

(declare-fun m!2186279 () Bool)

(assert (=> b!1768225 m!2186279))

(declare-fun m!2186281 () Bool)

(assert (=> start!175354 m!2186281))

(declare-fun m!2186283 () Bool)

(assert (=> b!1768218 m!2186283))

(declare-fun m!2186285 () Bool)

(assert (=> b!1768214 m!2186285))

(declare-fun m!2186287 () Bool)

(assert (=> b!1768214 m!2186287))

(assert (=> b!1768214 m!2186287))

(declare-fun m!2186289 () Bool)

(assert (=> b!1768214 m!2186289))

(declare-fun m!2186291 () Bool)

(assert (=> b!1768214 m!2186291))

(declare-fun m!2186293 () Bool)

(assert (=> b!1768229 m!2186293))

(declare-fun m!2186295 () Bool)

(assert (=> b!1768221 m!2186295))

(assert (=> b!1768221 m!2186295))

(declare-fun m!2186297 () Bool)

(assert (=> b!1768221 m!2186297))

(assert (=> b!1768221 m!2186297))

(declare-fun m!2186299 () Bool)

(assert (=> b!1768221 m!2186299))

(declare-fun m!2186301 () Bool)

(assert (=> b!1768221 m!2186301))

(declare-fun m!2186303 () Bool)

(assert (=> b!1768222 m!2186303))

(declare-fun m!2186305 () Bool)

(assert (=> b!1768222 m!2186305))

(declare-fun m!2186307 () Bool)

(assert (=> b!1768222 m!2186307))

(declare-fun m!2186309 () Bool)

(assert (=> b!1768239 m!2186309))

(declare-fun m!2186311 () Bool)

(assert (=> b!1768234 m!2186311))

(declare-fun m!2186313 () Bool)

(assert (=> b!1768234 m!2186313))

(declare-fun m!2186315 () Bool)

(assert (=> b!1768233 m!2186315))

(declare-fun m!2186317 () Bool)

(assert (=> b!1768233 m!2186317))

(declare-fun m!2186319 () Bool)

(assert (=> b!1768230 m!2186319))

(declare-fun m!2186321 () Bool)

(assert (=> b!1768230 m!2186321))

(declare-fun m!2186323 () Bool)

(assert (=> b!1768230 m!2186323))

(declare-fun m!2186325 () Bool)

(assert (=> b!1768230 m!2186325))

(declare-fun m!2186327 () Bool)

(assert (=> b!1768230 m!2186327))

(declare-fun m!2186329 () Bool)

(assert (=> b!1768230 m!2186329))

(declare-fun m!2186331 () Bool)

(assert (=> b!1768230 m!2186331))

(assert (=> b!1768230 m!2186329))

(declare-fun m!2186333 () Bool)

(assert (=> b!1768240 m!2186333))

(declare-fun m!2186335 () Bool)

(assert (=> b!1768240 m!2186335))

(declare-fun m!2186337 () Bool)

(assert (=> b!1768238 m!2186337))

(declare-fun m!2186339 () Bool)

(assert (=> b!1768238 m!2186339))

(declare-fun m!2186341 () Bool)

(assert (=> b!1768224 m!2186341))

(declare-fun m!2186343 () Bool)

(assert (=> b!1768226 m!2186343))

(declare-fun m!2186345 () Bool)

(assert (=> b!1768226 m!2186345))

(declare-fun m!2186347 () Bool)

(assert (=> b!1768226 m!2186347))

(declare-fun m!2186349 () Bool)

(assert (=> b!1768226 m!2186349))

(assert (=> b!1768226 m!2186347))

(declare-fun m!2186351 () Bool)

(assert (=> b!1768226 m!2186351))

(declare-fun m!2186353 () Bool)

(assert (=> b!1768232 m!2186353))

(assert (=> b!1768232 m!2186353))

(declare-fun m!2186355 () Bool)

(assert (=> b!1768232 m!2186355))

(assert (=> b!1768232 m!2186355))

(declare-fun m!2186357 () Bool)

(assert (=> b!1768232 m!2186357))

(declare-fun m!2186359 () Bool)

(assert (=> b!1768232 m!2186359))

(declare-fun m!2186361 () Bool)

(assert (=> b!1768242 m!2186361))

(declare-fun m!2186363 () Bool)

(assert (=> b!1768242 m!2186363))

(declare-fun m!2186365 () Bool)

(assert (=> b!1768242 m!2186365))

(declare-fun m!2186367 () Bool)

(assert (=> b!1768242 m!2186367))

(declare-fun m!2186369 () Bool)

(assert (=> b!1768242 m!2186369))

(assert (=> b!1768242 m!2186295))

(declare-fun m!2186371 () Bool)

(assert (=> b!1768242 m!2186371))

(assert (=> b!1768242 m!2186369))

(declare-fun m!2186373 () Bool)

(assert (=> b!1768242 m!2186373))

(declare-fun m!2186375 () Bool)

(assert (=> b!1768242 m!2186375))

(declare-fun m!2186377 () Bool)

(assert (=> b!1768242 m!2186377))

(declare-fun m!2186379 () Bool)

(assert (=> b!1768242 m!2186379))

(declare-fun m!2186381 () Bool)

(assert (=> b!1768242 m!2186381))

(declare-fun m!2186383 () Bool)

(assert (=> b!1768242 m!2186383))

(declare-fun m!2186385 () Bool)

(assert (=> b!1768242 m!2186385))

(declare-fun m!2186387 () Bool)

(assert (=> b!1768242 m!2186387))

(check-sat b_and!134231 (not b!1768230) tp_is_empty!7861 (not b_next!49647) (not b!1768262) (not b!1768240) (not b!1768242) (not b_next!49649) b_and!134233 (not b!1768218) (not b_next!49657) b_and!134235 (not tb!106887) (not b!1768233) (not b!1768214) b_and!134229 (not b_next!49651) (not b!1768219) (not b!1768221) (not b!1768239) (not b!1768217) (not b_lambda!57497) (not b!1768228) (not b!1768222) b_and!134227 (not b!1768236) (not tb!106881) (not b!1768224) (not b!1768231) (not b_lambda!57499) (not b!1768227) (not b_lambda!57495) (not b!1768238) (not start!175354) (not b_next!49653) (not b!1768226) (not b!1768232) (not b!1768234) (not b!1768229) (not b!1768215) b_and!134225 (not b!1768259) (not b_next!49655) (not tb!106875) (not b!1768241) (not b!1768225))
(check-sat b_and!134235 b_and!134231 b_and!134227 (not b_next!49653) (not b_next!49647) b_and!134225 (not b_next!49655) (not b_next!49649) b_and!134233 (not b_next!49657) b_and!134229 (not b_next!49651))
