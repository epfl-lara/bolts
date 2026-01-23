; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174466 () Bool)

(assert start!174466)

(declare-fun b!1762759 () Bool)

(declare-fun b_free!48711 () Bool)

(declare-fun b_next!49415 () Bool)

(assert (=> b!1762759 (= b_free!48711 (not b_next!49415))))

(declare-fun tp!500549 () Bool)

(declare-fun b_and!133147 () Bool)

(assert (=> b!1762759 (= tp!500549 b_and!133147)))

(declare-fun b_free!48713 () Bool)

(declare-fun b_next!49417 () Bool)

(assert (=> b!1762759 (= b_free!48713 (not b_next!49417))))

(declare-fun tp!500558 () Bool)

(declare-fun b_and!133149 () Bool)

(assert (=> b!1762759 (= tp!500558 b_and!133149)))

(declare-fun b!1762757 () Bool)

(declare-fun b_free!48715 () Bool)

(declare-fun b_next!49419 () Bool)

(assert (=> b!1762757 (= b_free!48715 (not b_next!49419))))

(declare-fun tp!500552 () Bool)

(declare-fun b_and!133151 () Bool)

(assert (=> b!1762757 (= tp!500552 b_and!133151)))

(declare-fun b_free!48717 () Bool)

(declare-fun b_next!49421 () Bool)

(assert (=> b!1762757 (= b_free!48717 (not b_next!49421))))

(declare-fun tp!500555 () Bool)

(declare-fun b_and!133153 () Bool)

(assert (=> b!1762757 (= tp!500555 b_and!133153)))

(declare-fun b!1762758 () Bool)

(declare-fun b_free!48719 () Bool)

(declare-fun b_next!49423 () Bool)

(assert (=> b!1762758 (= b_free!48719 (not b_next!49423))))

(declare-fun tp!500548 () Bool)

(declare-fun b_and!133155 () Bool)

(assert (=> b!1762758 (= tp!500548 b_and!133155)))

(declare-fun b_free!48721 () Bool)

(declare-fun b_next!49425 () Bool)

(assert (=> b!1762758 (= b_free!48721 (not b_next!49425))))

(declare-fun tp!500554 () Bool)

(declare-fun b_and!133157 () Bool)

(assert (=> b!1762758 (= tp!500554 b_and!133157)))

(declare-fun b!1762792 () Bool)

(declare-fun e!1128021 () Bool)

(assert (=> b!1762792 (= e!1128021 true)))

(declare-fun b!1762791 () Bool)

(declare-fun e!1128020 () Bool)

(assert (=> b!1762791 (= e!1128020 e!1128021)))

(declare-fun b!1762790 () Bool)

(declare-fun e!1128019 () Bool)

(assert (=> b!1762790 (= e!1128019 e!1128020)))

(declare-fun b!1762769 () Bool)

(assert (=> b!1762769 e!1128019))

(assert (= b!1762791 b!1762792))

(assert (= b!1762790 b!1762791))

(assert (= b!1762769 b!1762790))

(declare-fun lambda!70212 () Int)

(declare-datatypes ((List!19463 0))(
  ( (Nil!19393) (Cons!19393 (h!24794 (_ BitVec 16)) (t!164352 List!19463)) )
))
(declare-datatypes ((TokenValue!3555 0))(
  ( (FloatLiteralValue!7110 (text!25330 List!19463)) (TokenValueExt!3554 (__x!12412 Int)) (Broken!17775 (value!108399 List!19463)) (Object!3624) (End!3555) (Def!3555) (Underscore!3555) (Match!3555) (Else!3555) (Error!3555) (Case!3555) (If!3555) (Extends!3555) (Abstract!3555) (Class!3555) (Val!3555) (DelimiterValue!7110 (del!3615 List!19463)) (KeywordValue!3561 (value!108400 List!19463)) (CommentValue!7110 (value!108401 List!19463)) (WhitespaceValue!7110 (value!108402 List!19463)) (IndentationValue!3555 (value!108403 List!19463)) (String!22106) (Int32!3555) (Broken!17776 (value!108404 List!19463)) (Boolean!3556) (Unit!33578) (OperatorValue!3558 (op!3615 List!19463)) (IdentifierValue!7110 (value!108405 List!19463)) (IdentifierValue!7111 (value!108406 List!19463)) (WhitespaceValue!7111 (value!108407 List!19463)) (True!7110) (False!7110) (Broken!17777 (value!108408 List!19463)) (Broken!17778 (value!108409 List!19463)) (True!7111) (RightBrace!3555) (RightBracket!3555) (Colon!3555) (Null!3555) (Comma!3555) (LeftBracket!3555) (False!7111) (LeftBrace!3555) (ImaginaryLiteralValue!3555 (text!25331 List!19463)) (StringLiteralValue!10665 (value!108410 List!19463)) (EOFValue!3555 (value!108411 List!19463)) (IdentValue!3555 (value!108412 List!19463)) (DelimiterValue!7111 (value!108413 List!19463)) (DedentValue!3555 (value!108414 List!19463)) (NewLineValue!3555 (value!108415 List!19463)) (IntegerValue!10665 (value!108416 (_ BitVec 32)) (text!25332 List!19463)) (IntegerValue!10666 (value!108417 Int) (text!25333 List!19463)) (Times!3555) (Or!3555) (Equal!3555) (Minus!3555) (Broken!17779 (value!108418 List!19463)) (And!3555) (Div!3555) (LessEqual!3555) (Mod!3555) (Concat!8348) (Not!3555) (Plus!3555) (SpaceValue!3555 (value!108419 List!19463)) (IntegerValue!10667 (value!108420 Int) (text!25334 List!19463)) (StringLiteralValue!10666 (text!25335 List!19463)) (FloatLiteralValue!7111 (text!25336 List!19463)) (BytesLiteralValue!3555 (value!108421 List!19463)) (CommentValue!7111 (value!108422 List!19463)) (StringLiteralValue!10667 (value!108423 List!19463)) (ErrorTokenValue!3555 (msg!3616 List!19463)) )
))
(declare-datatypes ((C!9760 0))(
  ( (C!9761 (val!5476 Int)) )
))
(declare-datatypes ((List!19464 0))(
  ( (Nil!19394) (Cons!19394 (h!24795 C!9760) (t!164353 List!19464)) )
))
(declare-datatypes ((Regex!4793 0))(
  ( (ElementMatch!4793 (c!287262 C!9760)) (Concat!8349 (regOne!10098 Regex!4793) (regTwo!10098 Regex!4793)) (EmptyExpr!4793) (Star!4793 (reg!5122 Regex!4793)) (EmptyLang!4793) (Union!4793 (regOne!10099 Regex!4793) (regTwo!10099 Regex!4793)) )
))
(declare-datatypes ((String!22107 0))(
  ( (String!22108 (value!108424 String)) )
))
(declare-datatypes ((IArray!12907 0))(
  ( (IArray!12908 (innerList!6511 List!19464)) )
))
(declare-datatypes ((Conc!6451 0))(
  ( (Node!6451 (left!15525 Conc!6451) (right!15855 Conc!6451) (csize!13132 Int) (cheight!6662 Int)) (Leaf!9404 (xs!9327 IArray!12907) (csize!13133 Int)) (Empty!6451) )
))
(declare-datatypes ((BalanceConc!12846 0))(
  ( (BalanceConc!12847 (c!287263 Conc!6451)) )
))
(declare-datatypes ((TokenValueInjection!6770 0))(
  ( (TokenValueInjection!6771 (toValue!4988 Int) (toChars!4847 Int)) )
))
(declare-datatypes ((Rule!6730 0))(
  ( (Rule!6731 (regex!3465 Regex!4793) (tag!3833 String!22107) (isSeparator!3465 Bool) (transformation!3465 TokenValueInjection!6770)) )
))
(declare-datatypes ((Token!6496 0))(
  ( (Token!6497 (value!108425 TokenValue!3555) (rule!5485 Rule!6730) (size!15407 Int) (originalCharacters!4279 List!19464)) )
))
(declare-datatypes ((tuple2!19006 0))(
  ( (tuple2!19007 (_1!10905 Token!6496) (_2!10905 List!19464)) )
))
(declare-fun lt!681330 () tuple2!19006)

(declare-fun order!12299 () Int)

(declare-fun order!12301 () Int)

(declare-fun dynLambda!9347 (Int Int) Int)

(declare-fun dynLambda!9348 (Int Int) Int)

(assert (=> b!1762792 (< (dynLambda!9347 order!12299 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9348 order!12301 lambda!70212))))

(declare-fun order!12303 () Int)

(declare-fun dynLambda!9349 (Int Int) Int)

(assert (=> b!1762792 (< (dynLambda!9349 order!12303 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9348 order!12301 lambda!70212))))

(declare-fun b!1762753 () Bool)

(declare-fun e!1128003 () Bool)

(declare-fun e!1127990 () Bool)

(assert (=> b!1762753 (= e!1128003 e!1127990)))

(declare-fun res!793346 () Bool)

(assert (=> b!1762753 (=> (not res!793346) (not e!1127990))))

(declare-fun lt!681327 () tuple2!19006)

(declare-fun token!523 () Token!6496)

(assert (=> b!1762753 (= res!793346 (= (_1!10905 lt!681327) token!523))))

(declare-datatypes ((Option!3952 0))(
  ( (None!3951) (Some!3951 (v!25414 tuple2!19006)) )
))
(declare-fun lt!681331 () Option!3952)

(declare-fun get!5902 (Option!3952) tuple2!19006)

(assert (=> b!1762753 (= lt!681327 (get!5902 lt!681331))))

(declare-fun b!1762754 () Bool)

(declare-fun e!1128008 () Bool)

(declare-fun e!1128004 () Bool)

(assert (=> b!1762754 (= e!1128008 e!1128004)))

(declare-fun res!793343 () Bool)

(assert (=> b!1762754 (=> (not res!793343) (not e!1128004))))

(declare-fun lt!681317 () Rule!6730)

(declare-fun matchR!2266 (Regex!4793 List!19464) Bool)

(declare-fun list!7871 (BalanceConc!12846) List!19464)

(declare-fun charsOf!2114 (Token!6496) BalanceConc!12846)

(assert (=> b!1762754 (= res!793343 (matchR!2266 (regex!3465 lt!681317) (list!7871 (charsOf!2114 (_1!10905 lt!681330)))))))

(declare-datatypes ((Option!3953 0))(
  ( (None!3952) (Some!3952 (v!25415 Rule!6730)) )
))
(declare-fun lt!681315 () Option!3953)

(declare-fun get!5903 (Option!3953) Rule!6730)

(assert (=> b!1762754 (= lt!681317 (get!5903 lt!681315))))

(declare-fun b!1762755 () Bool)

(declare-fun res!793338 () Bool)

(assert (=> b!1762755 (=> (not res!793338) (not e!1127990))))

(declare-fun isEmpty!12240 (List!19464) Bool)

(assert (=> b!1762755 (= res!793338 (isEmpty!12240 (_2!10905 lt!681327)))))

(declare-fun b!1762756 () Bool)

(declare-fun e!1128009 () Bool)

(declare-fun tp_is_empty!7829 () Bool)

(declare-fun tp!500556 () Bool)

(assert (=> b!1762756 (= e!1128009 (and tp_is_empty!7829 tp!500556))))

(declare-fun e!1127997 () Bool)

(assert (=> b!1762757 (= e!1127997 (and tp!500552 tp!500555))))

(declare-fun e!1128007 () Bool)

(assert (=> b!1762758 (= e!1128007 (and tp!500548 tp!500554))))

(declare-fun e!1128011 () Bool)

(assert (=> b!1762759 (= e!1128011 (and tp!500549 tp!500558))))

(declare-fun b!1762760 () Bool)

(declare-fun e!1127991 () Bool)

(assert (=> b!1762760 (= e!1127991 e!1128003)))

(declare-fun res!793347 () Bool)

(assert (=> b!1762760 (=> (not res!793347) (not e!1128003))))

(declare-fun isDefined!3295 (Option!3952) Bool)

(assert (=> b!1762760 (= res!793347 (isDefined!3295 lt!681331))))

(declare-fun lt!681333 () List!19464)

(declare-datatypes ((LexerInterface!3094 0))(
  ( (LexerInterfaceExt!3091 (__x!12413 Int)) (Lexer!3092) )
))
(declare-fun thiss!24550 () LexerInterface!3094)

(declare-datatypes ((List!19465 0))(
  ( (Nil!19395) (Cons!19395 (h!24796 Rule!6730) (t!164354 List!19465)) )
))
(declare-fun rules!3447 () List!19465)

(declare-fun maxPrefix!1648 (LexerInterface!3094 List!19465 List!19464) Option!3952)

(assert (=> b!1762760 (= lt!681331 (maxPrefix!1648 thiss!24550 rules!3447 lt!681333))))

(assert (=> b!1762760 (= lt!681333 (list!7871 (charsOf!2114 token!523)))))

(declare-fun b!1762761 () Bool)

(declare-fun res!793335 () Bool)

(assert (=> b!1762761 (=> (not res!793335) (not e!1127991))))

(declare-fun rulesInvariant!2763 (LexerInterface!3094 List!19465) Bool)

(assert (=> b!1762761 (= res!793335 (rulesInvariant!2763 thiss!24550 rules!3447))))

(declare-fun b!1762762 () Bool)

(declare-fun e!1128000 () Bool)

(declare-fun e!1127995 () Bool)

(assert (=> b!1762762 (= e!1128000 e!1127995)))

(declare-fun res!793349 () Bool)

(assert (=> b!1762762 (=> res!793349 e!1127995)))

(declare-fun lt!681335 () List!19464)

(declare-fun lt!681313 () Option!3952)

(assert (=> b!1762762 (= res!793349 (or (not (= lt!681335 (_2!10905 lt!681330))) (not (= lt!681313 (Some!3951 (tuple2!19007 (_1!10905 lt!681330) lt!681335)))) (not (= lt!681331 (Some!3951 (tuple2!19007 token!523 Nil!19394))))))))

(assert (=> b!1762762 (= (_2!10905 lt!681330) lt!681335)))

(declare-datatypes ((Unit!33579 0))(
  ( (Unit!33580) )
))
(declare-fun lt!681328 () Unit!33579)

(declare-fun lt!681329 () List!19464)

(declare-fun lt!681320 () List!19464)

(declare-fun lemmaSamePrefixThenSameSuffix!816 (List!19464 List!19464 List!19464 List!19464 List!19464) Unit!33579)

(assert (=> b!1762762 (= lt!681328 (lemmaSamePrefixThenSameSuffix!816 lt!681320 (_2!10905 lt!681330) lt!681320 lt!681335 lt!681329))))

(declare-fun getSuffix!872 (List!19464 List!19464) List!19464)

(assert (=> b!1762762 (= lt!681335 (getSuffix!872 lt!681329 lt!681320))))

(declare-fun lt!681325 () Int)

(declare-fun lt!681326 () TokenValue!3555)

(assert (=> b!1762762 (= lt!681313 (Some!3951 (tuple2!19007 (Token!6497 lt!681326 (rule!5485 (_1!10905 lt!681330)) lt!681325 lt!681320) (_2!10905 lt!681330))))))

(declare-fun maxPrefixOneRule!1017 (LexerInterface!3094 Rule!6730 List!19464) Option!3952)

(assert (=> b!1762762 (= lt!681313 (maxPrefixOneRule!1017 thiss!24550 (rule!5485 (_1!10905 lt!681330)) lt!681329))))

(declare-fun size!15408 (List!19464) Int)

(assert (=> b!1762762 (= lt!681325 (size!15408 lt!681320))))

(declare-fun apply!5265 (TokenValueInjection!6770 BalanceConc!12846) TokenValue!3555)

(declare-fun seqFromList!2434 (List!19464) BalanceConc!12846)

(assert (=> b!1762762 (= lt!681326 (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) (seqFromList!2434 lt!681320)))))

(declare-fun lt!681336 () Unit!33579)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!395 (LexerInterface!3094 List!19465 List!19464 List!19464 List!19464 Rule!6730) Unit!33579)

(assert (=> b!1762762 (= lt!681336 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!395 thiss!24550 rules!3447 lt!681320 lt!681329 (_2!10905 lt!681330) (rule!5485 (_1!10905 lt!681330))))))

(declare-fun b!1762763 () Bool)

(declare-fun e!1127992 () Bool)

(assert (=> b!1762763 (= e!1127992 e!1128000)))

(declare-fun res!793344 () Bool)

(assert (=> b!1762763 (=> res!793344 e!1128000)))

(declare-fun lt!681314 () BalanceConc!12846)

(declare-fun lt!681324 () Option!3952)

(declare-fun size!15409 (BalanceConc!12846) Int)

(assert (=> b!1762763 (= res!793344 (not (= lt!681324 (Some!3951 (tuple2!19007 (Token!6497 (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314) (rule!5485 (_1!10905 lt!681330)) (size!15409 lt!681314) lt!681320) (_2!10905 lt!681330))))))))

(declare-fun lt!681316 () Unit!33579)

(declare-fun lemmaCharactersSize!523 (Token!6496) Unit!33579)

(assert (=> b!1762763 (= lt!681316 (lemmaCharactersSize!523 (_1!10905 lt!681330)))))

(declare-fun lt!681318 () Unit!33579)

(declare-fun lemmaEqSameImage!376 (TokenValueInjection!6770 BalanceConc!12846 BalanceConc!12846) Unit!33579)

(assert (=> b!1762763 (= lt!681318 (lemmaEqSameImage!376 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314 (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330)))))))

(declare-fun b!1762764 () Bool)

(declare-fun res!793331 () Bool)

(assert (=> b!1762764 (=> (not res!793331) (not e!1127991))))

(declare-fun rule!422 () Rule!6730)

(declare-fun contains!3495 (List!19465 Rule!6730) Bool)

(assert (=> b!1762764 (= res!793331 (contains!3495 rules!3447 rule!422))))

(declare-fun b!1762765 () Bool)

(declare-fun res!793348 () Bool)

(declare-fun e!1127996 () Bool)

(assert (=> b!1762765 (=> res!793348 e!1127996)))

(declare-fun suffix!1421 () List!19464)

(declare-fun prefixMatch!676 (Regex!4793 List!19464) Bool)

(declare-fun rulesRegex!821 (LexerInterface!3094 List!19465) Regex!4793)

(declare-fun ++!5289 (List!19464 List!19464) List!19464)

(declare-fun head!4082 (List!19464) C!9760)

(assert (=> b!1762765 (= res!793348 (prefixMatch!676 (rulesRegex!821 thiss!24550 rules!3447) (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394))))))

(declare-fun b!1762766 () Bool)

(declare-fun res!793339 () Bool)

(assert (=> b!1762766 (=> (not res!793339) (not e!1127991))))

(declare-fun isEmpty!12241 (List!19465) Bool)

(assert (=> b!1762766 (= res!793339 (not (isEmpty!12241 rules!3447)))))

(declare-fun tp!500557 () Bool)

(declare-fun e!1128002 () Bool)

(declare-fun b!1762767 () Bool)

(declare-fun inv!25181 (String!22107) Bool)

(declare-fun inv!25186 (TokenValueInjection!6770) Bool)

(assert (=> b!1762767 (= e!1128002 (and tp!500557 (inv!25181 (tag!3833 rule!422)) (inv!25186 (transformation!3465 rule!422)) e!1128007))))

(declare-fun b!1762768 () Bool)

(assert (=> b!1762768 (= e!1127995 (= lt!681333 (++!5289 lt!681333 Nil!19394)))))

(declare-fun res!793342 () Bool)

(assert (=> start!174466 (=> (not res!793342) (not e!1127991))))

(get-info :version)

(assert (=> start!174466 (= res!793342 ((_ is Lexer!3092) thiss!24550))))

(assert (=> start!174466 e!1127991))

(assert (=> start!174466 e!1128009))

(assert (=> start!174466 e!1128002))

(assert (=> start!174466 true))

(declare-fun e!1128005 () Bool)

(declare-fun inv!25187 (Token!6496) Bool)

(assert (=> start!174466 (and (inv!25187 token!523) e!1128005)))

(declare-fun e!1128001 () Bool)

(assert (=> start!174466 e!1128001))

(declare-fun e!1127999 () Bool)

(declare-fun e!1127993 () Bool)

(assert (=> b!1762769 (= e!1127999 e!1127993)))

(declare-fun res!793345 () Bool)

(assert (=> b!1762769 (=> res!793345 e!1127993)))

(declare-fun Forall!832 (Int) Bool)

(assert (=> b!1762769 (= res!793345 (not (Forall!832 lambda!70212)))))

(declare-fun lt!681321 () Unit!33579)

(declare-fun lemmaInv!664 (TokenValueInjection!6770) Unit!33579)

(assert (=> b!1762769 (= lt!681321 (lemmaInv!664 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun e!1128006 () Bool)

(declare-fun b!1762770 () Bool)

(declare-fun tp!500553 () Bool)

(assert (=> b!1762770 (= e!1128006 (and tp!500553 (inv!25181 (tag!3833 (h!24796 rules!3447))) (inv!25186 (transformation!3465 (h!24796 rules!3447))) e!1127997))))

(declare-fun b!1762771 () Bool)

(declare-fun res!793336 () Bool)

(assert (=> b!1762771 (=> res!793336 e!1127999)))

(assert (=> b!1762771 (= res!793336 (not (matchR!2266 (regex!3465 (rule!5485 (_1!10905 lt!681330))) lt!681320)))))

(declare-fun b!1762772 () Bool)

(declare-fun res!793337 () Bool)

(assert (=> b!1762772 (=> res!793337 e!1127996)))

(assert (=> b!1762772 (= res!793337 (isEmpty!12240 suffix!1421))))

(declare-fun b!1762773 () Bool)

(assert (=> b!1762773 (= e!1127990 (not e!1127996))))

(declare-fun res!793334 () Bool)

(assert (=> b!1762773 (=> res!793334 e!1127996)))

(assert (=> b!1762773 (= res!793334 (not (matchR!2266 (regex!3465 rule!422) lt!681333)))))

(declare-fun ruleValid!963 (LexerInterface!3094 Rule!6730) Bool)

(assert (=> b!1762773 (ruleValid!963 thiss!24550 rule!422)))

(declare-fun lt!681319 () Unit!33579)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!486 (LexerInterface!3094 Rule!6730 List!19465) Unit!33579)

(assert (=> b!1762773 (= lt!681319 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!486 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1762774 () Bool)

(declare-fun tp!500551 () Bool)

(declare-fun e!1127998 () Bool)

(assert (=> b!1762774 (= e!1127998 (and tp!500551 (inv!25181 (tag!3833 (rule!5485 token!523))) (inv!25186 (transformation!3465 (rule!5485 token!523))) e!1128011))))

(declare-fun b!1762775 () Bool)

(declare-fun res!793350 () Bool)

(assert (=> b!1762775 (=> (not res!793350) (not e!1127990))))

(assert (=> b!1762775 (= res!793350 (= (rule!5485 token!523) rule!422))))

(declare-fun b!1762776 () Bool)

(assert (=> b!1762776 (= e!1127993 e!1127992)))

(declare-fun res!793332 () Bool)

(assert (=> b!1762776 (=> res!793332 e!1127992)))

(declare-fun dynLambda!9350 (Int TokenValue!3555) BalanceConc!12846)

(declare-fun dynLambda!9351 (Int BalanceConc!12846) TokenValue!3555)

(assert (=> b!1762776 (= res!793332 (not (= (list!7871 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))) lt!681320)))))

(declare-fun lt!681332 () Unit!33579)

(declare-fun lemmaSemiInverse!603 (TokenValueInjection!6770 BalanceConc!12846) Unit!33579)

(assert (=> b!1762776 (= lt!681332 (lemmaSemiInverse!603 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314))))

(declare-fun b!1762777 () Bool)

(declare-fun tp!500547 () Bool)

(assert (=> b!1762777 (= e!1128001 (and e!1128006 tp!500547))))

(declare-fun b!1762778 () Bool)

(assert (=> b!1762778 (= e!1128004 (= (rule!5485 (_1!10905 lt!681330)) lt!681317))))

(declare-fun b!1762779 () Bool)

(declare-fun tp!500550 () Bool)

(declare-fun inv!21 (TokenValue!3555) Bool)

(assert (=> b!1762779 (= e!1128005 (and (inv!21 (value!108425 token!523)) e!1127998 tp!500550))))

(declare-fun b!1762780 () Bool)

(declare-fun res!793333 () Bool)

(assert (=> b!1762780 (=> res!793333 e!1127992)))

(assert (=> b!1762780 (= res!793333 (not (= lt!681314 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))))

(declare-fun b!1762781 () Bool)

(assert (=> b!1762781 (= e!1127996 e!1127999)))

(declare-fun res!793340 () Bool)

(assert (=> b!1762781 (=> res!793340 e!1127999)))

(declare-fun isPrefix!1705 (List!19464 List!19464) Bool)

(assert (=> b!1762781 (= res!793340 (not (isPrefix!1705 lt!681320 lt!681329)))))

(assert (=> b!1762781 (isPrefix!1705 lt!681320 (++!5289 lt!681320 (_2!10905 lt!681330)))))

(declare-fun lt!681323 () Unit!33579)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1214 (List!19464 List!19464) Unit!33579)

(assert (=> b!1762781 (= lt!681323 (lemmaConcatTwoListThenFirstIsPrefix!1214 lt!681320 (_2!10905 lt!681330)))))

(assert (=> b!1762781 (= lt!681320 (list!7871 lt!681314))))

(assert (=> b!1762781 (= lt!681314 (charsOf!2114 (_1!10905 lt!681330)))))

(assert (=> b!1762781 e!1128008))

(declare-fun res!793341 () Bool)

(assert (=> b!1762781 (=> (not res!793341) (not e!1128008))))

(declare-fun isDefined!3296 (Option!3953) Bool)

(assert (=> b!1762781 (= res!793341 (isDefined!3296 lt!681315))))

(declare-fun getRuleFromTag!513 (LexerInterface!3094 List!19465 String!22107) Option!3953)

(assert (=> b!1762781 (= lt!681315 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun lt!681322 () Unit!33579)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!513 (LexerInterface!3094 List!19465 List!19464 Token!6496) Unit!33579)

(assert (=> b!1762781 (= lt!681322 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!513 thiss!24550 rules!3447 lt!681329 (_1!10905 lt!681330)))))

(assert (=> b!1762781 (= lt!681330 (get!5902 lt!681324))))

(declare-fun lt!681312 () Unit!33579)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!616 (LexerInterface!3094 List!19465 List!19464 List!19464) Unit!33579)

(assert (=> b!1762781 (= lt!681312 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!616 thiss!24550 rules!3447 lt!681333 suffix!1421))))

(assert (=> b!1762781 (= lt!681324 (maxPrefix!1648 thiss!24550 rules!3447 lt!681329))))

(assert (=> b!1762781 (isPrefix!1705 lt!681333 lt!681329)))

(declare-fun lt!681334 () Unit!33579)

(assert (=> b!1762781 (= lt!681334 (lemmaConcatTwoListThenFirstIsPrefix!1214 lt!681333 suffix!1421))))

(assert (=> b!1762781 (= lt!681329 (++!5289 lt!681333 suffix!1421))))

(assert (= (and start!174466 res!793342) b!1762766))

(assert (= (and b!1762766 res!793339) b!1762761))

(assert (= (and b!1762761 res!793335) b!1762764))

(assert (= (and b!1762764 res!793331) b!1762760))

(assert (= (and b!1762760 res!793347) b!1762753))

(assert (= (and b!1762753 res!793346) b!1762755))

(assert (= (and b!1762755 res!793338) b!1762775))

(assert (= (and b!1762775 res!793350) b!1762773))

(assert (= (and b!1762773 (not res!793334)) b!1762772))

(assert (= (and b!1762772 (not res!793337)) b!1762765))

(assert (= (and b!1762765 (not res!793348)) b!1762781))

(assert (= (and b!1762781 res!793341) b!1762754))

(assert (= (and b!1762754 res!793343) b!1762778))

(assert (= (and b!1762781 (not res!793340)) b!1762771))

(assert (= (and b!1762771 (not res!793336)) b!1762769))

(assert (= (and b!1762769 (not res!793345)) b!1762776))

(assert (= (and b!1762776 (not res!793332)) b!1762780))

(assert (= (and b!1762780 (not res!793333)) b!1762763))

(assert (= (and b!1762763 (not res!793344)) b!1762762))

(assert (= (and b!1762762 (not res!793349)) b!1762768))

(assert (= (and start!174466 ((_ is Cons!19394) suffix!1421)) b!1762756))

(assert (= b!1762767 b!1762758))

(assert (= start!174466 b!1762767))

(assert (= b!1762774 b!1762759))

(assert (= b!1762779 b!1762774))

(assert (= start!174466 b!1762779))

(assert (= b!1762770 b!1762757))

(assert (= b!1762777 b!1762770))

(assert (= (and start!174466 ((_ is Cons!19395) rules!3447)) b!1762777))

(declare-fun b_lambda!57119 () Bool)

(assert (=> (not b_lambda!57119) (not b!1762776)))

(declare-fun t!164335 () Bool)

(declare-fun tb!106287 () Bool)

(assert (=> (and b!1762759 (= (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164335) tb!106287))

(declare-fun b!1762797 () Bool)

(declare-fun tp!500561 () Bool)

(declare-fun e!1128024 () Bool)

(declare-fun inv!25188 (Conc!6451) Bool)

(assert (=> b!1762797 (= e!1128024 (and (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))) tp!500561))))

(declare-fun result!127850 () Bool)

(declare-fun inv!25189 (BalanceConc!12846) Bool)

(assert (=> tb!106287 (= result!127850 (and (inv!25189 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))) e!1128024))))

(assert (= tb!106287 b!1762797))

(declare-fun m!2179347 () Bool)

(assert (=> b!1762797 m!2179347))

(declare-fun m!2179349 () Bool)

(assert (=> tb!106287 m!2179349))

(assert (=> b!1762776 t!164335))

(declare-fun b_and!133159 () Bool)

(assert (= b_and!133149 (and (=> t!164335 result!127850) b_and!133159)))

(declare-fun tb!106289 () Bool)

(declare-fun t!164337 () Bool)

(assert (=> (and b!1762757 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164337) tb!106289))

(declare-fun result!127854 () Bool)

(assert (= result!127854 result!127850))

(assert (=> b!1762776 t!164337))

(declare-fun b_and!133161 () Bool)

(assert (= b_and!133153 (and (=> t!164337 result!127854) b_and!133161)))

(declare-fun tb!106291 () Bool)

(declare-fun t!164339 () Bool)

(assert (=> (and b!1762758 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164339) tb!106291))

(declare-fun result!127856 () Bool)

(assert (= result!127856 result!127850))

(assert (=> b!1762776 t!164339))

(declare-fun b_and!133163 () Bool)

(assert (= b_and!133157 (and (=> t!164339 result!127856) b_and!133163)))

(declare-fun b_lambda!57121 () Bool)

(assert (=> (not b_lambda!57121) (not b!1762776)))

(declare-fun tb!106293 () Bool)

(declare-fun t!164341 () Bool)

(assert (=> (and b!1762759 (= (toValue!4988 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164341) tb!106293))

(declare-fun result!127858 () Bool)

(assert (=> tb!106293 (= result!127858 (inv!21 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(declare-fun m!2179351 () Bool)

(assert (=> tb!106293 m!2179351))

(assert (=> b!1762776 t!164341))

(declare-fun b_and!133165 () Bool)

(assert (= b_and!133147 (and (=> t!164341 result!127858) b_and!133165)))

(declare-fun t!164343 () Bool)

(declare-fun tb!106295 () Bool)

(assert (=> (and b!1762757 (= (toValue!4988 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164343) tb!106295))

(declare-fun result!127862 () Bool)

(assert (= result!127862 result!127858))

(assert (=> b!1762776 t!164343))

(declare-fun b_and!133167 () Bool)

(assert (= b_and!133151 (and (=> t!164343 result!127862) b_and!133167)))

(declare-fun tb!106297 () Bool)

(declare-fun t!164345 () Bool)

(assert (=> (and b!1762758 (= (toValue!4988 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164345) tb!106297))

(declare-fun result!127864 () Bool)

(assert (= result!127864 result!127858))

(assert (=> b!1762776 t!164345))

(declare-fun b_and!133169 () Bool)

(assert (= b_and!133155 (and (=> t!164345 result!127864) b_and!133169)))

(declare-fun b_lambda!57123 () Bool)

(assert (=> (not b_lambda!57123) (not b!1762780)))

(declare-fun t!164347 () Bool)

(declare-fun tb!106299 () Bool)

(assert (=> (and b!1762759 (= (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164347) tb!106299))

(declare-fun b!1762800 () Bool)

(declare-fun e!1128028 () Bool)

(declare-fun tp!500562 () Bool)

(assert (=> b!1762800 (= e!1128028 (and (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))) tp!500562))))

(declare-fun result!127866 () Bool)

(assert (=> tb!106299 (= result!127866 (and (inv!25189 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))) e!1128028))))

(assert (= tb!106299 b!1762800))

(declare-fun m!2179353 () Bool)

(assert (=> b!1762800 m!2179353))

(declare-fun m!2179355 () Bool)

(assert (=> tb!106299 m!2179355))

(assert (=> b!1762780 t!164347))

(declare-fun b_and!133171 () Bool)

(assert (= b_and!133159 (and (=> t!164347 result!127866) b_and!133171)))

(declare-fun t!164349 () Bool)

(declare-fun tb!106301 () Bool)

(assert (=> (and b!1762757 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164349) tb!106301))

(declare-fun result!127868 () Bool)

(assert (= result!127868 result!127866))

(assert (=> b!1762780 t!164349))

(declare-fun b_and!133173 () Bool)

(assert (= b_and!133161 (and (=> t!164349 result!127868) b_and!133173)))

(declare-fun tb!106303 () Bool)

(declare-fun t!164351 () Bool)

(assert (=> (and b!1762758 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164351) tb!106303))

(declare-fun result!127870 () Bool)

(assert (= result!127870 result!127866))

(assert (=> b!1762780 t!164351))

(declare-fun b_and!133175 () Bool)

(assert (= b_and!133163 (and (=> t!164351 result!127870) b_and!133175)))

(declare-fun m!2179357 () Bool)

(assert (=> b!1762754 m!2179357))

(assert (=> b!1762754 m!2179357))

(declare-fun m!2179359 () Bool)

(assert (=> b!1762754 m!2179359))

(assert (=> b!1762754 m!2179359))

(declare-fun m!2179361 () Bool)

(assert (=> b!1762754 m!2179361))

(declare-fun m!2179363 () Bool)

(assert (=> b!1762754 m!2179363))

(declare-fun m!2179365 () Bool)

(assert (=> b!1762779 m!2179365))

(declare-fun m!2179367 () Bool)

(assert (=> b!1762766 m!2179367))

(declare-fun m!2179369 () Bool)

(assert (=> b!1762781 m!2179369))

(declare-fun m!2179371 () Bool)

(assert (=> b!1762781 m!2179371))

(declare-fun m!2179373 () Bool)

(assert (=> b!1762781 m!2179373))

(declare-fun m!2179375 () Bool)

(assert (=> b!1762781 m!2179375))

(declare-fun m!2179377 () Bool)

(assert (=> b!1762781 m!2179377))

(declare-fun m!2179379 () Bool)

(assert (=> b!1762781 m!2179379))

(declare-fun m!2179381 () Bool)

(assert (=> b!1762781 m!2179381))

(declare-fun m!2179383 () Bool)

(assert (=> b!1762781 m!2179383))

(declare-fun m!2179385 () Bool)

(assert (=> b!1762781 m!2179385))

(declare-fun m!2179387 () Bool)

(assert (=> b!1762781 m!2179387))

(declare-fun m!2179389 () Bool)

(assert (=> b!1762781 m!2179389))

(declare-fun m!2179391 () Bool)

(assert (=> b!1762781 m!2179391))

(declare-fun m!2179393 () Bool)

(assert (=> b!1762781 m!2179393))

(assert (=> b!1762781 m!2179373))

(assert (=> b!1762781 m!2179357))

(declare-fun m!2179395 () Bool)

(assert (=> b!1762781 m!2179395))

(declare-fun m!2179397 () Bool)

(assert (=> b!1762753 m!2179397))

(declare-fun m!2179399 () Bool)

(assert (=> b!1762769 m!2179399))

(declare-fun m!2179401 () Bool)

(assert (=> b!1762769 m!2179401))

(declare-fun m!2179403 () Bool)

(assert (=> b!1762776 m!2179403))

(assert (=> b!1762776 m!2179403))

(declare-fun m!2179405 () Bool)

(assert (=> b!1762776 m!2179405))

(assert (=> b!1762776 m!2179405))

(declare-fun m!2179407 () Bool)

(assert (=> b!1762776 m!2179407))

(declare-fun m!2179409 () Bool)

(assert (=> b!1762776 m!2179409))

(declare-fun m!2179411 () Bool)

(assert (=> start!174466 m!2179411))

(declare-fun m!2179413 () Bool)

(assert (=> b!1762764 m!2179413))

(declare-fun m!2179415 () Bool)

(assert (=> b!1762767 m!2179415))

(declare-fun m!2179417 () Bool)

(assert (=> b!1762767 m!2179417))

(declare-fun m!2179419 () Bool)

(assert (=> b!1762755 m!2179419))

(declare-fun m!2179421 () Bool)

(assert (=> b!1762771 m!2179421))

(declare-fun m!2179423 () Bool)

(assert (=> b!1762774 m!2179423))

(declare-fun m!2179425 () Bool)

(assert (=> b!1762774 m!2179425))

(declare-fun m!2179427 () Bool)

(assert (=> b!1762760 m!2179427))

(declare-fun m!2179429 () Bool)

(assert (=> b!1762760 m!2179429))

(declare-fun m!2179431 () Bool)

(assert (=> b!1762760 m!2179431))

(assert (=> b!1762760 m!2179431))

(declare-fun m!2179433 () Bool)

(assert (=> b!1762760 m!2179433))

(declare-fun m!2179435 () Bool)

(assert (=> b!1762763 m!2179435))

(declare-fun m!2179437 () Bool)

(assert (=> b!1762763 m!2179437))

(declare-fun m!2179439 () Bool)

(assert (=> b!1762763 m!2179439))

(assert (=> b!1762763 m!2179435))

(declare-fun m!2179441 () Bool)

(assert (=> b!1762763 m!2179441))

(declare-fun m!2179443 () Bool)

(assert (=> b!1762763 m!2179443))

(declare-fun m!2179445 () Bool)

(assert (=> b!1762761 m!2179445))

(declare-fun m!2179447 () Bool)

(assert (=> b!1762780 m!2179447))

(declare-fun m!2179449 () Bool)

(assert (=> b!1762765 m!2179449))

(declare-fun m!2179451 () Bool)

(assert (=> b!1762765 m!2179451))

(declare-fun m!2179453 () Bool)

(assert (=> b!1762765 m!2179453))

(assert (=> b!1762765 m!2179449))

(assert (=> b!1762765 m!2179453))

(declare-fun m!2179455 () Bool)

(assert (=> b!1762765 m!2179455))

(declare-fun m!2179457 () Bool)

(assert (=> b!1762770 m!2179457))

(declare-fun m!2179459 () Bool)

(assert (=> b!1762770 m!2179459))

(declare-fun m!2179461 () Bool)

(assert (=> b!1762773 m!2179461))

(declare-fun m!2179463 () Bool)

(assert (=> b!1762773 m!2179463))

(declare-fun m!2179465 () Bool)

(assert (=> b!1762773 m!2179465))

(declare-fun m!2179467 () Bool)

(assert (=> b!1762768 m!2179467))

(declare-fun m!2179469 () Bool)

(assert (=> b!1762762 m!2179469))

(declare-fun m!2179471 () Bool)

(assert (=> b!1762762 m!2179471))

(declare-fun m!2179473 () Bool)

(assert (=> b!1762762 m!2179473))

(declare-fun m!2179475 () Bool)

(assert (=> b!1762762 m!2179475))

(assert (=> b!1762762 m!2179473))

(declare-fun m!2179477 () Bool)

(assert (=> b!1762762 m!2179477))

(declare-fun m!2179479 () Bool)

(assert (=> b!1762762 m!2179479))

(declare-fun m!2179481 () Bool)

(assert (=> b!1762762 m!2179481))

(declare-fun m!2179483 () Bool)

(assert (=> b!1762772 m!2179483))

(check-sat (not b!1762754) (not b!1762761) (not b!1762800) (not start!174466) (not b_next!49417) b_and!133173 (not b!1762774) (not b!1762769) (not b_lambda!57119) (not b!1762767) (not b!1762760) (not b!1762779) (not b!1762755) (not b!1762781) (not b!1762766) (not b_next!49425) (not b!1762763) (not tb!106287) (not tb!106299) (not b!1762770) b_and!133171 (not b!1762776) (not b_next!49423) (not b!1762797) (not b_next!49421) (not b!1762762) (not b_next!49419) b_and!133165 (not b!1762768) (not b!1762772) b_and!133169 (not tb!106293) (not b!1762771) (not b!1762753) b_and!133175 b_and!133167 (not b!1762764) (not b_next!49415) (not b!1762773) (not b!1762777) tp_is_empty!7829 (not b!1762756) (not b_lambda!57121) (not b!1762765) (not b_lambda!57123))
(check-sat (not b_next!49425) (not b_next!49417) b_and!133173 b_and!133165 b_and!133169 (not b_next!49415) b_and!133171 (not b_next!49423) (not b_next!49421) (not b_next!49419) b_and!133175 b_and!133167)
(get-model)

(declare-fun d!538729 () Bool)

(assert (=> d!538729 (= (isEmpty!12240 (_2!10905 lt!681327)) ((_ is Nil!19394) (_2!10905 lt!681327)))))

(assert (=> b!1762755 d!538729))

(declare-fun d!538733 () Bool)

(declare-fun e!1128128 () Bool)

(assert (=> d!538733 e!1128128))

(declare-fun c!287303 () Bool)

(assert (=> d!538733 (= c!287303 ((_ is EmptyExpr!4793) (regex!3465 lt!681317)))))

(declare-fun lt!681366 () Bool)

(declare-fun e!1128132 () Bool)

(assert (=> d!538733 (= lt!681366 e!1128132)))

(declare-fun c!287304 () Bool)

(assert (=> d!538733 (= c!287304 (isEmpty!12240 (list!7871 (charsOf!2114 (_1!10905 lt!681330)))))))

(declare-fun validRegex!1937 (Regex!4793) Bool)

(assert (=> d!538733 (validRegex!1937 (regex!3465 lt!681317))))

(assert (=> d!538733 (= (matchR!2266 (regex!3465 lt!681317) (list!7871 (charsOf!2114 (_1!10905 lt!681330)))) lt!681366)))

(declare-fun b!1762977 () Bool)

(declare-fun res!793444 () Bool)

(declare-fun e!1128131 () Bool)

(assert (=> b!1762977 (=> (not res!793444) (not e!1128131))))

(declare-fun call!110806 () Bool)

(assert (=> b!1762977 (= res!793444 (not call!110806))))

(declare-fun b!1762978 () Bool)

(declare-fun res!793446 () Bool)

(declare-fun e!1128130 () Bool)

(assert (=> b!1762978 (=> res!793446 e!1128130)))

(declare-fun tail!2637 (List!19464) List!19464)

(assert (=> b!1762978 (= res!793446 (not (isEmpty!12240 (tail!2637 (list!7871 (charsOf!2114 (_1!10905 lt!681330)))))))))

(declare-fun b!1762979 () Bool)

(declare-fun e!1128127 () Bool)

(assert (=> b!1762979 (= e!1128128 e!1128127)))

(declare-fun c!287302 () Bool)

(assert (=> b!1762979 (= c!287302 ((_ is EmptyLang!4793) (regex!3465 lt!681317)))))

(declare-fun b!1762980 () Bool)

(assert (=> b!1762980 (= e!1128127 (not lt!681366))))

(declare-fun b!1762981 () Bool)

(declare-fun derivativeStep!1232 (Regex!4793 C!9760) Regex!4793)

(assert (=> b!1762981 (= e!1128132 (matchR!2266 (derivativeStep!1232 (regex!3465 lt!681317) (head!4082 (list!7871 (charsOf!2114 (_1!10905 lt!681330))))) (tail!2637 (list!7871 (charsOf!2114 (_1!10905 lt!681330))))))))

(declare-fun b!1762982 () Bool)

(declare-fun res!793447 () Bool)

(declare-fun e!1128133 () Bool)

(assert (=> b!1762982 (=> res!793447 e!1128133)))

(assert (=> b!1762982 (= res!793447 (not ((_ is ElementMatch!4793) (regex!3465 lt!681317))))))

(assert (=> b!1762982 (= e!1128127 e!1128133)))

(declare-fun b!1762983 () Bool)

(declare-fun res!793449 () Bool)

(assert (=> b!1762983 (=> (not res!793449) (not e!1128131))))

(assert (=> b!1762983 (= res!793449 (isEmpty!12240 (tail!2637 (list!7871 (charsOf!2114 (_1!10905 lt!681330))))))))

(declare-fun b!1762984 () Bool)

(assert (=> b!1762984 (= e!1128128 (= lt!681366 call!110806))))

(declare-fun b!1762985 () Bool)

(declare-fun e!1128129 () Bool)

(assert (=> b!1762985 (= e!1128129 e!1128130)))

(declare-fun res!793445 () Bool)

(assert (=> b!1762985 (=> res!793445 e!1128130)))

(assert (=> b!1762985 (= res!793445 call!110806)))

(declare-fun b!1762986 () Bool)

(assert (=> b!1762986 (= e!1128131 (= (head!4082 (list!7871 (charsOf!2114 (_1!10905 lt!681330)))) (c!287262 (regex!3465 lt!681317))))))

(declare-fun b!1762987 () Bool)

(declare-fun res!793442 () Bool)

(assert (=> b!1762987 (=> res!793442 e!1128133)))

(assert (=> b!1762987 (= res!793442 e!1128131)))

(declare-fun res!793443 () Bool)

(assert (=> b!1762987 (=> (not res!793443) (not e!1128131))))

(assert (=> b!1762987 (= res!793443 lt!681366)))

(declare-fun b!1762988 () Bool)

(assert (=> b!1762988 (= e!1128133 e!1128129)))

(declare-fun res!793448 () Bool)

(assert (=> b!1762988 (=> (not res!793448) (not e!1128129))))

(assert (=> b!1762988 (= res!793448 (not lt!681366))))

(declare-fun b!1762989 () Bool)

(declare-fun nullable!1463 (Regex!4793) Bool)

(assert (=> b!1762989 (= e!1128132 (nullable!1463 (regex!3465 lt!681317)))))

(declare-fun b!1762990 () Bool)

(assert (=> b!1762990 (= e!1128130 (not (= (head!4082 (list!7871 (charsOf!2114 (_1!10905 lt!681330)))) (c!287262 (regex!3465 lt!681317)))))))

(declare-fun bm!110801 () Bool)

(assert (=> bm!110801 (= call!110806 (isEmpty!12240 (list!7871 (charsOf!2114 (_1!10905 lt!681330)))))))

(assert (= (and d!538733 c!287304) b!1762989))

(assert (= (and d!538733 (not c!287304)) b!1762981))

(assert (= (and d!538733 c!287303) b!1762984))

(assert (= (and d!538733 (not c!287303)) b!1762979))

(assert (= (and b!1762979 c!287302) b!1762980))

(assert (= (and b!1762979 (not c!287302)) b!1762982))

(assert (= (and b!1762982 (not res!793447)) b!1762987))

(assert (= (and b!1762987 res!793443) b!1762977))

(assert (= (and b!1762977 res!793444) b!1762983))

(assert (= (and b!1762983 res!793449) b!1762986))

(assert (= (and b!1762987 (not res!793442)) b!1762988))

(assert (= (and b!1762988 res!793448) b!1762985))

(assert (= (and b!1762985 (not res!793445)) b!1762978))

(assert (= (and b!1762978 (not res!793446)) b!1762990))

(assert (= (or b!1762984 b!1762977 b!1762985) bm!110801))

(assert (=> bm!110801 m!2179359))

(declare-fun m!2179641 () Bool)

(assert (=> bm!110801 m!2179641))

(assert (=> d!538733 m!2179359))

(assert (=> d!538733 m!2179641))

(declare-fun m!2179643 () Bool)

(assert (=> d!538733 m!2179643))

(assert (=> b!1762981 m!2179359))

(declare-fun m!2179645 () Bool)

(assert (=> b!1762981 m!2179645))

(assert (=> b!1762981 m!2179645))

(declare-fun m!2179647 () Bool)

(assert (=> b!1762981 m!2179647))

(assert (=> b!1762981 m!2179359))

(declare-fun m!2179649 () Bool)

(assert (=> b!1762981 m!2179649))

(assert (=> b!1762981 m!2179647))

(assert (=> b!1762981 m!2179649))

(declare-fun m!2179651 () Bool)

(assert (=> b!1762981 m!2179651))

(assert (=> b!1762978 m!2179359))

(assert (=> b!1762978 m!2179649))

(assert (=> b!1762978 m!2179649))

(declare-fun m!2179653 () Bool)

(assert (=> b!1762978 m!2179653))

(assert (=> b!1762983 m!2179359))

(assert (=> b!1762983 m!2179649))

(assert (=> b!1762983 m!2179649))

(assert (=> b!1762983 m!2179653))

(assert (=> b!1762990 m!2179359))

(assert (=> b!1762990 m!2179645))

(declare-fun m!2179655 () Bool)

(assert (=> b!1762989 m!2179655))

(assert (=> b!1762986 m!2179359))

(assert (=> b!1762986 m!2179645))

(assert (=> b!1762754 d!538733))

(declare-fun d!538759 () Bool)

(declare-fun list!7873 (Conc!6451) List!19464)

(assert (=> d!538759 (= (list!7871 (charsOf!2114 (_1!10905 lt!681330))) (list!7873 (c!287263 (charsOf!2114 (_1!10905 lt!681330)))))))

(declare-fun bs!404243 () Bool)

(assert (= bs!404243 d!538759))

(declare-fun m!2179657 () Bool)

(assert (=> bs!404243 m!2179657))

(assert (=> b!1762754 d!538759))

(declare-fun d!538761 () Bool)

(declare-fun lt!681369 () BalanceConc!12846)

(assert (=> d!538761 (= (list!7871 lt!681369) (originalCharacters!4279 (_1!10905 lt!681330)))))

(assert (=> d!538761 (= lt!681369 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))

(assert (=> d!538761 (= (charsOf!2114 (_1!10905 lt!681330)) lt!681369)))

(declare-fun b_lambda!57139 () Bool)

(assert (=> (not b_lambda!57139) (not d!538761)))

(assert (=> d!538761 t!164347))

(declare-fun b_and!133219 () Bool)

(assert (= b_and!133171 (and (=> t!164347 result!127866) b_and!133219)))

(assert (=> d!538761 t!164349))

(declare-fun b_and!133221 () Bool)

(assert (= b_and!133173 (and (=> t!164349 result!127868) b_and!133221)))

(assert (=> d!538761 t!164351))

(declare-fun b_and!133223 () Bool)

(assert (= b_and!133175 (and (=> t!164351 result!127870) b_and!133223)))

(declare-fun m!2179659 () Bool)

(assert (=> d!538761 m!2179659))

(assert (=> d!538761 m!2179447))

(assert (=> b!1762754 d!538761))

(declare-fun d!538763 () Bool)

(assert (=> d!538763 (= (get!5903 lt!681315) (v!25415 lt!681315))))

(assert (=> b!1762754 d!538763))

(declare-fun d!538765 () Bool)

(declare-fun isBalanced!2016 (Conc!6451) Bool)

(assert (=> d!538765 (= (inv!25189 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))) (isBalanced!2016 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))))

(declare-fun bs!404244 () Bool)

(assert (= bs!404244 d!538765))

(declare-fun m!2179661 () Bool)

(assert (=> bs!404244 m!2179661))

(assert (=> tb!106299 d!538765))

(declare-fun d!538767 () Bool)

(assert (=> d!538767 (= (list!7871 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))) (list!7873 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))))

(declare-fun bs!404245 () Bool)

(assert (= bs!404245 d!538767))

(declare-fun m!2179663 () Bool)

(assert (=> bs!404245 m!2179663))

(assert (=> b!1762776 d!538767))

(declare-fun bs!404246 () Bool)

(declare-fun d!538769 () Bool)

(assert (= bs!404246 (and d!538769 b!1762769)))

(declare-fun lambda!70224 () Int)

(assert (=> bs!404246 (= lambda!70224 lambda!70212)))

(declare-fun b!1763013 () Bool)

(declare-fun e!1128142 () Bool)

(assert (=> b!1763013 (= e!1128142 true)))

(assert (=> d!538769 e!1128142))

(assert (= d!538769 b!1763013))

(assert (=> b!1763013 (< (dynLambda!9347 order!12299 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9348 order!12301 lambda!70224))))

(assert (=> b!1763013 (< (dynLambda!9349 order!12303 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9348 order!12301 lambda!70224))))

(assert (=> d!538769 (= (list!7871 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))) (list!7871 lt!681314))))

(declare-fun lt!681382 () Unit!33579)

(declare-fun ForallOf!316 (Int BalanceConc!12846) Unit!33579)

(assert (=> d!538769 (= lt!681382 (ForallOf!316 lambda!70224 lt!681314))))

(assert (=> d!538769 (= (lemmaSemiInverse!603 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314) lt!681382)))

(declare-fun b_lambda!57141 () Bool)

(assert (=> (not b_lambda!57141) (not d!538769)))

(assert (=> d!538769 t!164335))

(declare-fun b_and!133225 () Bool)

(assert (= b_and!133219 (and (=> t!164335 result!127850) b_and!133225)))

(assert (=> d!538769 t!164337))

(declare-fun b_and!133227 () Bool)

(assert (= b_and!133221 (and (=> t!164337 result!127854) b_and!133227)))

(assert (=> d!538769 t!164339))

(declare-fun b_and!133229 () Bool)

(assert (= b_and!133223 (and (=> t!164339 result!127856) b_and!133229)))

(declare-fun b_lambda!57143 () Bool)

(assert (=> (not b_lambda!57143) (not d!538769)))

(assert (=> d!538769 t!164341))

(declare-fun b_and!133231 () Bool)

(assert (= b_and!133165 (and (=> t!164341 result!127858) b_and!133231)))

(assert (=> d!538769 t!164343))

(declare-fun b_and!133233 () Bool)

(assert (= b_and!133167 (and (=> t!164343 result!127862) b_and!133233)))

(assert (=> d!538769 t!164345))

(declare-fun b_and!133235 () Bool)

(assert (= b_and!133169 (and (=> t!164345 result!127864) b_and!133235)))

(assert (=> d!538769 m!2179379))

(assert (=> d!538769 m!2179403))

(assert (=> d!538769 m!2179405))

(assert (=> d!538769 m!2179407))

(assert (=> d!538769 m!2179403))

(assert (=> d!538769 m!2179405))

(declare-fun m!2179665 () Bool)

(assert (=> d!538769 m!2179665))

(assert (=> b!1762776 d!538769))

(declare-fun d!538771 () Bool)

(assert (=> d!538771 (= (inv!25181 (tag!3833 (rule!5485 token!523))) (= (mod (str.len (value!108424 (tag!3833 (rule!5485 token!523)))) 2) 0))))

(assert (=> b!1762774 d!538771))

(declare-fun d!538773 () Bool)

(declare-fun res!793477 () Bool)

(declare-fun e!1128152 () Bool)

(assert (=> d!538773 (=> (not res!793477) (not e!1128152))))

(declare-fun semiInverseModEq!1378 (Int Int) Bool)

(assert (=> d!538773 (= res!793477 (semiInverseModEq!1378 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 token!523)))))))

(assert (=> d!538773 (= (inv!25186 (transformation!3465 (rule!5485 token!523))) e!1128152)))

(declare-fun b!1763029 () Bool)

(declare-fun equivClasses!1319 (Int Int) Bool)

(assert (=> b!1763029 (= e!1128152 (equivClasses!1319 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 token!523)))))))

(assert (= (and d!538773 res!793477) b!1763029))

(declare-fun m!2179703 () Bool)

(assert (=> d!538773 m!2179703))

(declare-fun m!2179705 () Bool)

(assert (=> b!1763029 m!2179705))

(assert (=> b!1762774 d!538773))

(declare-fun d!538783 () Bool)

(assert (=> d!538783 (= (get!5902 lt!681331) (v!25414 lt!681331))))

(assert (=> b!1762753 d!538783))

(declare-fun d!538787 () Bool)

(declare-fun c!287314 () Bool)

(assert (=> d!538787 (= c!287314 ((_ is Node!6451) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))))

(declare-fun e!1128165 () Bool)

(assert (=> d!538787 (= (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))) e!1128165)))

(declare-fun b!1763047 () Bool)

(declare-fun inv!25192 (Conc!6451) Bool)

(assert (=> b!1763047 (= e!1128165 (inv!25192 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))))

(declare-fun b!1763048 () Bool)

(declare-fun e!1128166 () Bool)

(assert (=> b!1763048 (= e!1128165 e!1128166)))

(declare-fun res!793485 () Bool)

(assert (=> b!1763048 (= res!793485 (not ((_ is Leaf!9404) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))))))

(assert (=> b!1763048 (=> res!793485 e!1128166)))

(declare-fun b!1763049 () Bool)

(declare-fun inv!25193 (Conc!6451) Bool)

(assert (=> b!1763049 (= e!1128166 (inv!25193 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))))

(assert (= (and d!538787 c!287314) b!1763047))

(assert (= (and d!538787 (not c!287314)) b!1763048))

(assert (= (and b!1763048 (not res!793485)) b!1763049))

(declare-fun m!2179729 () Bool)

(assert (=> b!1763047 m!2179729))

(declare-fun m!2179731 () Bool)

(assert (=> b!1763049 m!2179731))

(assert (=> b!1762797 d!538787))

(declare-fun d!538795 () Bool)

(declare-fun e!1128169 () Bool)

(assert (=> d!538795 e!1128169))

(declare-fun c!287316 () Bool)

(assert (=> d!538795 (= c!287316 ((_ is EmptyExpr!4793) (regex!3465 rule!422)))))

(declare-fun lt!681395 () Bool)

(declare-fun e!1128173 () Bool)

(assert (=> d!538795 (= lt!681395 e!1128173)))

(declare-fun c!287317 () Bool)

(assert (=> d!538795 (= c!287317 (isEmpty!12240 lt!681333))))

(assert (=> d!538795 (validRegex!1937 (regex!3465 rule!422))))

(assert (=> d!538795 (= (matchR!2266 (regex!3465 rule!422) lt!681333) lt!681395)))

(declare-fun b!1763050 () Bool)

(declare-fun res!793488 () Bool)

(declare-fun e!1128172 () Bool)

(assert (=> b!1763050 (=> (not res!793488) (not e!1128172))))

(declare-fun call!110810 () Bool)

(assert (=> b!1763050 (= res!793488 (not call!110810))))

(declare-fun b!1763051 () Bool)

(declare-fun res!793490 () Bool)

(declare-fun e!1128171 () Bool)

(assert (=> b!1763051 (=> res!793490 e!1128171)))

(assert (=> b!1763051 (= res!793490 (not (isEmpty!12240 (tail!2637 lt!681333))))))

(declare-fun b!1763052 () Bool)

(declare-fun e!1128168 () Bool)

(assert (=> b!1763052 (= e!1128169 e!1128168)))

(declare-fun c!287315 () Bool)

(assert (=> b!1763052 (= c!287315 ((_ is EmptyLang!4793) (regex!3465 rule!422)))))

(declare-fun b!1763053 () Bool)

(assert (=> b!1763053 (= e!1128168 (not lt!681395))))

(declare-fun b!1763054 () Bool)

(assert (=> b!1763054 (= e!1128173 (matchR!2266 (derivativeStep!1232 (regex!3465 rule!422) (head!4082 lt!681333)) (tail!2637 lt!681333)))))

(declare-fun b!1763055 () Bool)

(declare-fun res!793491 () Bool)

(declare-fun e!1128174 () Bool)

(assert (=> b!1763055 (=> res!793491 e!1128174)))

(assert (=> b!1763055 (= res!793491 (not ((_ is ElementMatch!4793) (regex!3465 rule!422))))))

(assert (=> b!1763055 (= e!1128168 e!1128174)))

(declare-fun b!1763056 () Bool)

(declare-fun res!793493 () Bool)

(assert (=> b!1763056 (=> (not res!793493) (not e!1128172))))

(assert (=> b!1763056 (= res!793493 (isEmpty!12240 (tail!2637 lt!681333)))))

(declare-fun b!1763057 () Bool)

(assert (=> b!1763057 (= e!1128169 (= lt!681395 call!110810))))

(declare-fun b!1763058 () Bool)

(declare-fun e!1128170 () Bool)

(assert (=> b!1763058 (= e!1128170 e!1128171)))

(declare-fun res!793489 () Bool)

(assert (=> b!1763058 (=> res!793489 e!1128171)))

(assert (=> b!1763058 (= res!793489 call!110810)))

(declare-fun b!1763059 () Bool)

(assert (=> b!1763059 (= e!1128172 (= (head!4082 lt!681333) (c!287262 (regex!3465 rule!422))))))

(declare-fun b!1763060 () Bool)

(declare-fun res!793486 () Bool)

(assert (=> b!1763060 (=> res!793486 e!1128174)))

(assert (=> b!1763060 (= res!793486 e!1128172)))

(declare-fun res!793487 () Bool)

(assert (=> b!1763060 (=> (not res!793487) (not e!1128172))))

(assert (=> b!1763060 (= res!793487 lt!681395)))

(declare-fun b!1763061 () Bool)

(assert (=> b!1763061 (= e!1128174 e!1128170)))

(declare-fun res!793492 () Bool)

(assert (=> b!1763061 (=> (not res!793492) (not e!1128170))))

(assert (=> b!1763061 (= res!793492 (not lt!681395))))

(declare-fun b!1763062 () Bool)

(assert (=> b!1763062 (= e!1128173 (nullable!1463 (regex!3465 rule!422)))))

(declare-fun b!1763063 () Bool)

(assert (=> b!1763063 (= e!1128171 (not (= (head!4082 lt!681333) (c!287262 (regex!3465 rule!422)))))))

(declare-fun bm!110805 () Bool)

(assert (=> bm!110805 (= call!110810 (isEmpty!12240 lt!681333))))

(assert (= (and d!538795 c!287317) b!1763062))

(assert (= (and d!538795 (not c!287317)) b!1763054))

(assert (= (and d!538795 c!287316) b!1763057))

(assert (= (and d!538795 (not c!287316)) b!1763052))

(assert (= (and b!1763052 c!287315) b!1763053))

(assert (= (and b!1763052 (not c!287315)) b!1763055))

(assert (= (and b!1763055 (not res!793491)) b!1763060))

(assert (= (and b!1763060 res!793487) b!1763050))

(assert (= (and b!1763050 res!793488) b!1763056))

(assert (= (and b!1763056 res!793493) b!1763059))

(assert (= (and b!1763060 (not res!793486)) b!1763061))

(assert (= (and b!1763061 res!793492) b!1763058))

(assert (= (and b!1763058 (not res!793489)) b!1763051))

(assert (= (and b!1763051 (not res!793490)) b!1763063))

(assert (= (or b!1763057 b!1763050 b!1763058) bm!110805))

(declare-fun m!2179735 () Bool)

(assert (=> bm!110805 m!2179735))

(assert (=> d!538795 m!2179735))

(declare-fun m!2179737 () Bool)

(assert (=> d!538795 m!2179737))

(declare-fun m!2179739 () Bool)

(assert (=> b!1763054 m!2179739))

(assert (=> b!1763054 m!2179739))

(declare-fun m!2179741 () Bool)

(assert (=> b!1763054 m!2179741))

(declare-fun m!2179743 () Bool)

(assert (=> b!1763054 m!2179743))

(assert (=> b!1763054 m!2179741))

(assert (=> b!1763054 m!2179743))

(declare-fun m!2179745 () Bool)

(assert (=> b!1763054 m!2179745))

(assert (=> b!1763051 m!2179743))

(assert (=> b!1763051 m!2179743))

(declare-fun m!2179747 () Bool)

(assert (=> b!1763051 m!2179747))

(assert (=> b!1763056 m!2179743))

(assert (=> b!1763056 m!2179743))

(assert (=> b!1763056 m!2179747))

(assert (=> b!1763063 m!2179739))

(declare-fun m!2179749 () Bool)

(assert (=> b!1763062 m!2179749))

(assert (=> b!1763059 m!2179739))

(assert (=> b!1762773 d!538795))

(declare-fun d!538799 () Bool)

(declare-fun res!793498 () Bool)

(declare-fun e!1128180 () Bool)

(assert (=> d!538799 (=> (not res!793498) (not e!1128180))))

(assert (=> d!538799 (= res!793498 (validRegex!1937 (regex!3465 rule!422)))))

(assert (=> d!538799 (= (ruleValid!963 thiss!24550 rule!422) e!1128180)))

(declare-fun b!1763074 () Bool)

(declare-fun res!793499 () Bool)

(assert (=> b!1763074 (=> (not res!793499) (not e!1128180))))

(assert (=> b!1763074 (= res!793499 (not (nullable!1463 (regex!3465 rule!422))))))

(declare-fun b!1763075 () Bool)

(assert (=> b!1763075 (= e!1128180 (not (= (tag!3833 rule!422) (String!22108 ""))))))

(assert (= (and d!538799 res!793498) b!1763074))

(assert (= (and b!1763074 res!793499) b!1763075))

(assert (=> d!538799 m!2179737))

(assert (=> b!1763074 m!2179749))

(assert (=> b!1762773 d!538799))

(declare-fun d!538807 () Bool)

(assert (=> d!538807 (ruleValid!963 thiss!24550 rule!422)))

(declare-fun lt!681404 () Unit!33579)

(declare-fun choose!10923 (LexerInterface!3094 Rule!6730 List!19465) Unit!33579)

(assert (=> d!538807 (= lt!681404 (choose!10923 thiss!24550 rule!422 rules!3447))))

(assert (=> d!538807 (contains!3495 rules!3447 rule!422)))

(assert (=> d!538807 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!486 thiss!24550 rule!422 rules!3447) lt!681404)))

(declare-fun bs!404251 () Bool)

(assert (= bs!404251 d!538807))

(assert (=> bs!404251 m!2179463))

(declare-fun m!2179757 () Bool)

(assert (=> bs!404251 m!2179757))

(assert (=> bs!404251 m!2179413))

(assert (=> b!1762773 d!538807))

(declare-fun d!538809 () Bool)

(declare-fun res!793502 () Bool)

(declare-fun e!1128183 () Bool)

(assert (=> d!538809 (=> (not res!793502) (not e!1128183))))

(declare-fun rulesValid!1303 (LexerInterface!3094 List!19465) Bool)

(assert (=> d!538809 (= res!793502 (rulesValid!1303 thiss!24550 rules!3447))))

(assert (=> d!538809 (= (rulesInvariant!2763 thiss!24550 rules!3447) e!1128183)))

(declare-fun b!1763078 () Bool)

(declare-datatypes ((List!19467 0))(
  ( (Nil!19397) (Cons!19397 (h!24798 String!22107) (t!164416 List!19467)) )
))
(declare-fun noDuplicateTag!1303 (LexerInterface!3094 List!19465 List!19467) Bool)

(assert (=> b!1763078 (= e!1128183 (noDuplicateTag!1303 thiss!24550 rules!3447 Nil!19397))))

(assert (= (and d!538809 res!793502) b!1763078))

(declare-fun m!2179759 () Bool)

(assert (=> d!538809 m!2179759))

(declare-fun m!2179761 () Bool)

(assert (=> b!1763078 m!2179761))

(assert (=> b!1762761 d!538809))

(declare-fun d!538811 () Bool)

(declare-fun c!287321 () Bool)

(assert (=> d!538811 (= c!287321 ((_ is Node!6451) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))))

(declare-fun e!1128184 () Bool)

(assert (=> d!538811 (= (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))) e!1128184)))

(declare-fun b!1763079 () Bool)

(assert (=> b!1763079 (= e!1128184 (inv!25192 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))))

(declare-fun b!1763080 () Bool)

(declare-fun e!1128185 () Bool)

(assert (=> b!1763080 (= e!1128184 e!1128185)))

(declare-fun res!793503 () Bool)

(assert (=> b!1763080 (= res!793503 (not ((_ is Leaf!9404) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))))))

(assert (=> b!1763080 (=> res!793503 e!1128185)))

(declare-fun b!1763081 () Bool)

(assert (=> b!1763081 (= e!1128185 (inv!25193 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))))))

(assert (= (and d!538811 c!287321) b!1763079))

(assert (= (and d!538811 (not c!287321)) b!1763080))

(assert (= (and b!1763080 (not res!793503)) b!1763081))

(declare-fun m!2179763 () Bool)

(assert (=> b!1763079 m!2179763))

(declare-fun m!2179765 () Bool)

(assert (=> b!1763081 m!2179765))

(assert (=> b!1762800 d!538811))

(declare-fun b!1763091 () Bool)

(declare-fun e!1128190 () List!19464)

(assert (=> b!1763091 (= e!1128190 (Cons!19394 (h!24795 lt!681333) (++!5289 (t!164353 lt!681333) suffix!1421)))))

(declare-fun b!1763090 () Bool)

(assert (=> b!1763090 (= e!1128190 suffix!1421)))

(declare-fun b!1763092 () Bool)

(declare-fun res!793509 () Bool)

(declare-fun e!1128191 () Bool)

(assert (=> b!1763092 (=> (not res!793509) (not e!1128191))))

(declare-fun lt!681410 () List!19464)

(assert (=> b!1763092 (= res!793509 (= (size!15408 lt!681410) (+ (size!15408 lt!681333) (size!15408 suffix!1421))))))

(declare-fun b!1763093 () Bool)

(assert (=> b!1763093 (= e!1128191 (or (not (= suffix!1421 Nil!19394)) (= lt!681410 lt!681333)))))

(declare-fun d!538813 () Bool)

(assert (=> d!538813 e!1128191))

(declare-fun res!793508 () Bool)

(assert (=> d!538813 (=> (not res!793508) (not e!1128191))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2803 (List!19464) (InoxSet C!9760))

(assert (=> d!538813 (= res!793508 (= (content!2803 lt!681410) ((_ map or) (content!2803 lt!681333) (content!2803 suffix!1421))))))

(assert (=> d!538813 (= lt!681410 e!1128190)))

(declare-fun c!287324 () Bool)

(assert (=> d!538813 (= c!287324 ((_ is Nil!19394) lt!681333))))

(assert (=> d!538813 (= (++!5289 lt!681333 suffix!1421) lt!681410)))

(assert (= (and d!538813 c!287324) b!1763090))

(assert (= (and d!538813 (not c!287324)) b!1763091))

(assert (= (and d!538813 res!793508) b!1763092))

(assert (= (and b!1763092 res!793509) b!1763093))

(declare-fun m!2179769 () Bool)

(assert (=> b!1763091 m!2179769))

(declare-fun m!2179771 () Bool)

(assert (=> b!1763092 m!2179771))

(declare-fun m!2179773 () Bool)

(assert (=> b!1763092 m!2179773))

(declare-fun m!2179775 () Bool)

(assert (=> b!1763092 m!2179775))

(declare-fun m!2179777 () Bool)

(assert (=> d!538813 m!2179777))

(declare-fun m!2179779 () Bool)

(assert (=> d!538813 m!2179779))

(declare-fun m!2179781 () Bool)

(assert (=> d!538813 m!2179781))

(assert (=> b!1762781 d!538813))

(declare-fun d!538817 () Bool)

(declare-fun e!1128200 () Bool)

(assert (=> d!538817 e!1128200))

(declare-fun res!793520 () Bool)

(assert (=> d!538817 (=> res!793520 e!1128200)))

(declare-fun lt!681413 () Bool)

(assert (=> d!538817 (= res!793520 (not lt!681413))))

(declare-fun e!1128199 () Bool)

(assert (=> d!538817 (= lt!681413 e!1128199)))

(declare-fun res!793521 () Bool)

(assert (=> d!538817 (=> res!793521 e!1128199)))

(assert (=> d!538817 (= res!793521 ((_ is Nil!19394) lt!681333))))

(assert (=> d!538817 (= (isPrefix!1705 lt!681333 lt!681329) lt!681413)))

(declare-fun b!1763104 () Bool)

(declare-fun e!1128198 () Bool)

(assert (=> b!1763104 (= e!1128198 (isPrefix!1705 (tail!2637 lt!681333) (tail!2637 lt!681329)))))

(declare-fun b!1763102 () Bool)

(assert (=> b!1763102 (= e!1128199 e!1128198)))

(declare-fun res!793518 () Bool)

(assert (=> b!1763102 (=> (not res!793518) (not e!1128198))))

(assert (=> b!1763102 (= res!793518 (not ((_ is Nil!19394) lt!681329)))))

(declare-fun b!1763103 () Bool)

(declare-fun res!793519 () Bool)

(assert (=> b!1763103 (=> (not res!793519) (not e!1128198))))

(assert (=> b!1763103 (= res!793519 (= (head!4082 lt!681333) (head!4082 lt!681329)))))

(declare-fun b!1763105 () Bool)

(assert (=> b!1763105 (= e!1128200 (>= (size!15408 lt!681329) (size!15408 lt!681333)))))

(assert (= (and d!538817 (not res!793521)) b!1763102))

(assert (= (and b!1763102 res!793518) b!1763103))

(assert (= (and b!1763103 res!793519) b!1763104))

(assert (= (and d!538817 (not res!793520)) b!1763105))

(assert (=> b!1763104 m!2179743))

(declare-fun m!2179783 () Bool)

(assert (=> b!1763104 m!2179783))

(assert (=> b!1763104 m!2179743))

(assert (=> b!1763104 m!2179783))

(declare-fun m!2179785 () Bool)

(assert (=> b!1763104 m!2179785))

(assert (=> b!1763103 m!2179739))

(declare-fun m!2179787 () Bool)

(assert (=> b!1763103 m!2179787))

(declare-fun m!2179789 () Bool)

(assert (=> b!1763105 m!2179789))

(assert (=> b!1763105 m!2179773))

(assert (=> b!1762781 d!538817))

(declare-fun d!538819 () Bool)

(declare-fun isEmpty!12243 (Option!3953) Bool)

(assert (=> d!538819 (= (isDefined!3296 lt!681315) (not (isEmpty!12243 lt!681315)))))

(declare-fun bs!404253 () Bool)

(assert (= bs!404253 d!538819))

(declare-fun m!2179791 () Bool)

(assert (=> bs!404253 m!2179791))

(assert (=> b!1762781 d!538819))

(declare-fun b!1763118 () Bool)

(declare-fun e!1128209 () Bool)

(declare-fun e!1128210 () Bool)

(assert (=> b!1763118 (= e!1128209 e!1128210)))

(declare-fun res!793526 () Bool)

(assert (=> b!1763118 (=> (not res!793526) (not e!1128210))))

(declare-fun lt!681421 () Option!3953)

(assert (=> b!1763118 (= res!793526 (contains!3495 rules!3447 (get!5903 lt!681421)))))

(declare-fun d!538821 () Bool)

(assert (=> d!538821 e!1128209))

(declare-fun res!793527 () Bool)

(assert (=> d!538821 (=> res!793527 e!1128209)))

(assert (=> d!538821 (= res!793527 (isEmpty!12243 lt!681421))))

(declare-fun e!1128211 () Option!3953)

(assert (=> d!538821 (= lt!681421 e!1128211)))

(declare-fun c!287329 () Bool)

(assert (=> d!538821 (= c!287329 (and ((_ is Cons!19395) rules!3447) (= (tag!3833 (h!24796 rules!3447)) (tag!3833 (rule!5485 (_1!10905 lt!681330))))))))

(assert (=> d!538821 (rulesInvariant!2763 thiss!24550 rules!3447)))

(assert (=> d!538821 (= (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 (_1!10905 lt!681330)))) lt!681421)))

(declare-fun b!1763119 () Bool)

(declare-fun e!1128212 () Option!3953)

(assert (=> b!1763119 (= e!1128211 e!1128212)))

(declare-fun c!287330 () Bool)

(assert (=> b!1763119 (= c!287330 (and ((_ is Cons!19395) rules!3447) (not (= (tag!3833 (h!24796 rules!3447)) (tag!3833 (rule!5485 (_1!10905 lt!681330)))))))))

(declare-fun b!1763120 () Bool)

(declare-fun lt!681420 () Unit!33579)

(declare-fun lt!681422 () Unit!33579)

(assert (=> b!1763120 (= lt!681420 lt!681422)))

(assert (=> b!1763120 (rulesInvariant!2763 thiss!24550 (t!164354 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!191 (LexerInterface!3094 Rule!6730 List!19465) Unit!33579)

(assert (=> b!1763120 (= lt!681422 (lemmaInvariantOnRulesThenOnTail!191 thiss!24550 (h!24796 rules!3447) (t!164354 rules!3447)))))

(assert (=> b!1763120 (= e!1128212 (getRuleFromTag!513 thiss!24550 (t!164354 rules!3447) (tag!3833 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun b!1763121 () Bool)

(assert (=> b!1763121 (= e!1128211 (Some!3952 (h!24796 rules!3447)))))

(declare-fun b!1763122 () Bool)

(assert (=> b!1763122 (= e!1128210 (= (tag!3833 (get!5903 lt!681421)) (tag!3833 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun b!1763123 () Bool)

(assert (=> b!1763123 (= e!1128212 None!3952)))

(assert (= (and d!538821 c!287329) b!1763121))

(assert (= (and d!538821 (not c!287329)) b!1763119))

(assert (= (and b!1763119 c!287330) b!1763120))

(assert (= (and b!1763119 (not c!287330)) b!1763123))

(assert (= (and d!538821 (not res!793527)) b!1763118))

(assert (= (and b!1763118 res!793526) b!1763122))

(declare-fun m!2179793 () Bool)

(assert (=> b!1763118 m!2179793))

(assert (=> b!1763118 m!2179793))

(declare-fun m!2179795 () Bool)

(assert (=> b!1763118 m!2179795))

(declare-fun m!2179797 () Bool)

(assert (=> d!538821 m!2179797))

(assert (=> d!538821 m!2179445))

(declare-fun m!2179799 () Bool)

(assert (=> b!1763120 m!2179799))

(declare-fun m!2179801 () Bool)

(assert (=> b!1763120 m!2179801))

(declare-fun m!2179803 () Bool)

(assert (=> b!1763120 m!2179803))

(assert (=> b!1763122 m!2179793))

(assert (=> b!1762781 d!538821))

(declare-fun d!538823 () Bool)

(assert (=> d!538823 (= (get!5902 lt!681324) (v!25414 lt!681324))))

(assert (=> b!1762781 d!538823))

(declare-fun b!1763197 () Bool)

(declare-fun res!793577 () Bool)

(declare-fun e!1128255 () Bool)

(assert (=> b!1763197 (=> (not res!793577) (not e!1128255))))

(declare-fun lt!681504 () Token!6496)

(assert (=> b!1763197 (= res!793577 (matchR!2266 (regex!3465 (get!5903 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 lt!681504))))) (list!7871 (charsOf!2114 lt!681504))))))

(declare-fun d!538825 () Bool)

(assert (=> d!538825 (isDefined!3295 (maxPrefix!1648 thiss!24550 rules!3447 (++!5289 lt!681333 suffix!1421)))))

(declare-fun lt!681496 () Unit!33579)

(declare-fun e!1128256 () Unit!33579)

(assert (=> d!538825 (= lt!681496 e!1128256)))

(declare-fun c!287343 () Bool)

(declare-fun isEmpty!12244 (Option!3952) Bool)

(assert (=> d!538825 (= c!287343 (isEmpty!12244 (maxPrefix!1648 thiss!24550 rules!3447 (++!5289 lt!681333 suffix!1421))))))

(declare-fun lt!681500 () Unit!33579)

(declare-fun lt!681506 () Unit!33579)

(assert (=> d!538825 (= lt!681500 lt!681506)))

(assert (=> d!538825 e!1128255))

(declare-fun res!793578 () Bool)

(assert (=> d!538825 (=> (not res!793578) (not e!1128255))))

(assert (=> d!538825 (= res!793578 (isDefined!3296 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 lt!681504)))))))

(assert (=> d!538825 (= lt!681506 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!513 thiss!24550 rules!3447 lt!681333 lt!681504))))

(declare-fun lt!681505 () Unit!33579)

(declare-fun lt!681490 () Unit!33579)

(assert (=> d!538825 (= lt!681505 lt!681490)))

(declare-fun lt!681501 () List!19464)

(assert (=> d!538825 (isPrefix!1705 lt!681501 (++!5289 lt!681333 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!312 (List!19464 List!19464 List!19464) Unit!33579)

(assert (=> d!538825 (= lt!681490 (lemmaPrefixStaysPrefixWhenAddingToSuffix!312 lt!681501 lt!681333 suffix!1421))))

(assert (=> d!538825 (= lt!681501 (list!7871 (charsOf!2114 lt!681504)))))

(declare-fun lt!681498 () Unit!33579)

(declare-fun lt!681495 () Unit!33579)

(assert (=> d!538825 (= lt!681498 lt!681495)))

(declare-fun lt!681491 () List!19464)

(declare-fun lt!681494 () List!19464)

(assert (=> d!538825 (isPrefix!1705 lt!681491 (++!5289 lt!681491 lt!681494))))

(assert (=> d!538825 (= lt!681495 (lemmaConcatTwoListThenFirstIsPrefix!1214 lt!681491 lt!681494))))

(assert (=> d!538825 (= lt!681494 (_2!10905 (get!5902 (maxPrefix!1648 thiss!24550 rules!3447 lt!681333))))))

(assert (=> d!538825 (= lt!681491 (list!7871 (charsOf!2114 lt!681504)))))

(declare-datatypes ((List!19469 0))(
  ( (Nil!19399) (Cons!19399 (h!24800 Token!6496) (t!164418 List!19469)) )
))
(declare-fun head!4083 (List!19469) Token!6496)

(declare-datatypes ((IArray!12909 0))(
  ( (IArray!12910 (innerList!6512 List!19469)) )
))
(declare-datatypes ((Conc!6452 0))(
  ( (Node!6452 (left!15526 Conc!6452) (right!15856 Conc!6452) (csize!13134 Int) (cheight!6663 Int)) (Leaf!9405 (xs!9328 IArray!12909) (csize!13135 Int)) (Empty!6452) )
))
(declare-datatypes ((BalanceConc!12848 0))(
  ( (BalanceConc!12849 (c!287382 Conc!6452)) )
))
(declare-fun list!7874 (BalanceConc!12848) List!19469)

(declare-datatypes ((tuple2!19010 0))(
  ( (tuple2!19011 (_1!10907 BalanceConc!12848) (_2!10907 BalanceConc!12846)) )
))
(declare-fun lex!1451 (LexerInterface!3094 List!19465 BalanceConc!12846) tuple2!19010)

(assert (=> d!538825 (= lt!681504 (head!4083 (list!7874 (_1!10907 (lex!1451 thiss!24550 rules!3447 (seqFromList!2434 lt!681333))))))))

(assert (=> d!538825 (not (isEmpty!12241 rules!3447))))

(assert (=> d!538825 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!616 thiss!24550 rules!3447 lt!681333 suffix!1421) lt!681496)))

(declare-fun b!1763200 () Bool)

(declare-fun Unit!33583 () Unit!33579)

(assert (=> b!1763200 (= e!1128256 Unit!33583)))

(declare-fun b!1763198 () Bool)

(assert (=> b!1763198 (= e!1128255 (= (rule!5485 lt!681504) (get!5903 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 lt!681504))))))))

(declare-fun b!1763199 () Bool)

(declare-fun Unit!33584 () Unit!33579)

(assert (=> b!1763199 (= e!1128256 Unit!33584)))

(declare-fun lt!681497 () List!19464)

(assert (=> b!1763199 (= lt!681497 (++!5289 lt!681333 suffix!1421))))

(declare-fun lt!681492 () Unit!33579)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!320 (LexerInterface!3094 Rule!6730 List!19465 List!19464) Unit!33579)

(assert (=> b!1763199 (= lt!681492 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!320 thiss!24550 (rule!5485 lt!681504) rules!3447 lt!681497))))

(assert (=> b!1763199 (isEmpty!12244 (maxPrefixOneRule!1017 thiss!24550 (rule!5485 lt!681504) lt!681497))))

(declare-fun lt!681502 () Unit!33579)

(assert (=> b!1763199 (= lt!681502 lt!681492)))

(declare-fun lt!681503 () List!19464)

(assert (=> b!1763199 (= lt!681503 (list!7871 (charsOf!2114 lt!681504)))))

(declare-fun lt!681493 () Unit!33579)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!316 (LexerInterface!3094 Rule!6730 List!19464 List!19464) Unit!33579)

(assert (=> b!1763199 (= lt!681493 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!316 thiss!24550 (rule!5485 lt!681504) lt!681503 (++!5289 lt!681333 suffix!1421)))))

(assert (=> b!1763199 (not (matchR!2266 (regex!3465 (rule!5485 lt!681504)) lt!681503))))

(declare-fun lt!681499 () Unit!33579)

(assert (=> b!1763199 (= lt!681499 lt!681493)))

(assert (=> b!1763199 false))

(assert (= (and d!538825 res!793578) b!1763197))

(assert (= (and b!1763197 res!793577) b!1763198))

(assert (= (and d!538825 c!287343) b!1763199))

(assert (= (and d!538825 (not c!287343)) b!1763200))

(declare-fun m!2179891 () Bool)

(assert (=> b!1763197 m!2179891))

(assert (=> b!1763197 m!2179891))

(declare-fun m!2179893 () Bool)

(assert (=> b!1763197 m!2179893))

(assert (=> b!1763197 m!2179893))

(declare-fun m!2179895 () Bool)

(assert (=> b!1763197 m!2179895))

(declare-fun m!2179897 () Bool)

(assert (=> b!1763197 m!2179897))

(assert (=> b!1763197 m!2179897))

(declare-fun m!2179899 () Bool)

(assert (=> b!1763197 m!2179899))

(assert (=> d!538825 m!2179891))

(assert (=> d!538825 m!2179891))

(assert (=> d!538825 m!2179893))

(declare-fun m!2179901 () Bool)

(assert (=> d!538825 m!2179901))

(declare-fun m!2179903 () Bool)

(assert (=> d!538825 m!2179903))

(declare-fun m!2179905 () Bool)

(assert (=> d!538825 m!2179905))

(declare-fun m!2179907 () Bool)

(assert (=> d!538825 m!2179907))

(declare-fun m!2179909 () Bool)

(assert (=> d!538825 m!2179909))

(assert (=> d!538825 m!2179393))

(declare-fun m!2179911 () Bool)

(assert (=> d!538825 m!2179911))

(declare-fun m!2179913 () Bool)

(assert (=> d!538825 m!2179913))

(declare-fun m!2179915 () Bool)

(assert (=> d!538825 m!2179915))

(assert (=> d!538825 m!2179429))

(declare-fun m!2179917 () Bool)

(assert (=> d!538825 m!2179917))

(assert (=> d!538825 m!2179429))

(declare-fun m!2179919 () Bool)

(assert (=> d!538825 m!2179919))

(assert (=> d!538825 m!2179901))

(assert (=> d!538825 m!2179897))

(assert (=> d!538825 m!2179919))

(declare-fun m!2179921 () Bool)

(assert (=> d!538825 m!2179921))

(assert (=> d!538825 m!2179907))

(declare-fun m!2179923 () Bool)

(assert (=> d!538825 m!2179923))

(assert (=> d!538825 m!2179367))

(assert (=> d!538825 m!2179393))

(assert (=> d!538825 m!2179907))

(assert (=> d!538825 m!2179393))

(declare-fun m!2179925 () Bool)

(assert (=> d!538825 m!2179925))

(assert (=> d!538825 m!2179897))

(declare-fun m!2179927 () Bool)

(assert (=> d!538825 m!2179927))

(assert (=> d!538825 m!2179925))

(declare-fun m!2179929 () Bool)

(assert (=> d!538825 m!2179929))

(assert (=> b!1763198 m!2179897))

(assert (=> b!1763198 m!2179897))

(assert (=> b!1763198 m!2179899))

(assert (=> b!1763199 m!2179891))

(assert (=> b!1763199 m!2179891))

(assert (=> b!1763199 m!2179893))

(declare-fun m!2179931 () Bool)

(assert (=> b!1763199 m!2179931))

(declare-fun m!2179933 () Bool)

(assert (=> b!1763199 m!2179933))

(assert (=> b!1763199 m!2179393))

(declare-fun m!2179935 () Bool)

(assert (=> b!1763199 m!2179935))

(assert (=> b!1763199 m!2179931))

(declare-fun m!2179937 () Bool)

(assert (=> b!1763199 m!2179937))

(declare-fun m!2179939 () Bool)

(assert (=> b!1763199 m!2179939))

(assert (=> b!1763199 m!2179393))

(assert (=> b!1762781 d!538825))

(declare-fun d!538847 () Bool)

(assert (=> d!538847 (isPrefix!1705 lt!681333 (++!5289 lt!681333 suffix!1421))))

(declare-fun lt!681509 () Unit!33579)

(declare-fun choose!10926 (List!19464 List!19464) Unit!33579)

(assert (=> d!538847 (= lt!681509 (choose!10926 lt!681333 suffix!1421))))

(assert (=> d!538847 (= (lemmaConcatTwoListThenFirstIsPrefix!1214 lt!681333 suffix!1421) lt!681509)))

(declare-fun bs!404257 () Bool)

(assert (= bs!404257 d!538847))

(assert (=> bs!404257 m!2179393))

(assert (=> bs!404257 m!2179393))

(declare-fun m!2179941 () Bool)

(assert (=> bs!404257 m!2179941))

(declare-fun m!2179943 () Bool)

(assert (=> bs!404257 m!2179943))

(assert (=> b!1762781 d!538847))

(declare-fun b!1763202 () Bool)

(declare-fun e!1128257 () List!19464)

(assert (=> b!1763202 (= e!1128257 (Cons!19394 (h!24795 lt!681320) (++!5289 (t!164353 lt!681320) (_2!10905 lt!681330))))))

(declare-fun b!1763201 () Bool)

(assert (=> b!1763201 (= e!1128257 (_2!10905 lt!681330))))

(declare-fun b!1763203 () Bool)

(declare-fun res!793580 () Bool)

(declare-fun e!1128258 () Bool)

(assert (=> b!1763203 (=> (not res!793580) (not e!1128258))))

(declare-fun lt!681510 () List!19464)

(assert (=> b!1763203 (= res!793580 (= (size!15408 lt!681510) (+ (size!15408 lt!681320) (size!15408 (_2!10905 lt!681330)))))))

(declare-fun b!1763204 () Bool)

(assert (=> b!1763204 (= e!1128258 (or (not (= (_2!10905 lt!681330) Nil!19394)) (= lt!681510 lt!681320)))))

(declare-fun d!538849 () Bool)

(assert (=> d!538849 e!1128258))

(declare-fun res!793579 () Bool)

(assert (=> d!538849 (=> (not res!793579) (not e!1128258))))

(assert (=> d!538849 (= res!793579 (= (content!2803 lt!681510) ((_ map or) (content!2803 lt!681320) (content!2803 (_2!10905 lt!681330)))))))

(assert (=> d!538849 (= lt!681510 e!1128257)))

(declare-fun c!287344 () Bool)

(assert (=> d!538849 (= c!287344 ((_ is Nil!19394) lt!681320))))

(assert (=> d!538849 (= (++!5289 lt!681320 (_2!10905 lt!681330)) lt!681510)))

(assert (= (and d!538849 c!287344) b!1763201))

(assert (= (and d!538849 (not c!287344)) b!1763202))

(assert (= (and d!538849 res!793579) b!1763203))

(assert (= (and b!1763203 res!793580) b!1763204))

(declare-fun m!2179945 () Bool)

(assert (=> b!1763202 m!2179945))

(declare-fun m!2179947 () Bool)

(assert (=> b!1763203 m!2179947))

(assert (=> b!1763203 m!2179469))

(declare-fun m!2179949 () Bool)

(assert (=> b!1763203 m!2179949))

(declare-fun m!2179951 () Bool)

(assert (=> d!538849 m!2179951))

(declare-fun m!2179953 () Bool)

(assert (=> d!538849 m!2179953))

(declare-fun m!2179955 () Bool)

(assert (=> d!538849 m!2179955))

(assert (=> b!1762781 d!538849))

(declare-fun d!538851 () Bool)

(declare-fun e!1128261 () Bool)

(assert (=> d!538851 e!1128261))

(declare-fun res!793583 () Bool)

(assert (=> d!538851 (=> res!793583 e!1128261)))

(declare-fun lt!681511 () Bool)

(assert (=> d!538851 (= res!793583 (not lt!681511))))

(declare-fun e!1128260 () Bool)

(assert (=> d!538851 (= lt!681511 e!1128260)))

(declare-fun res!793584 () Bool)

(assert (=> d!538851 (=> res!793584 e!1128260)))

(assert (=> d!538851 (= res!793584 ((_ is Nil!19394) lt!681320))))

(assert (=> d!538851 (= (isPrefix!1705 lt!681320 lt!681329) lt!681511)))

(declare-fun b!1763207 () Bool)

(declare-fun e!1128259 () Bool)

(assert (=> b!1763207 (= e!1128259 (isPrefix!1705 (tail!2637 lt!681320) (tail!2637 lt!681329)))))

(declare-fun b!1763205 () Bool)

(assert (=> b!1763205 (= e!1128260 e!1128259)))

(declare-fun res!793581 () Bool)

(assert (=> b!1763205 (=> (not res!793581) (not e!1128259))))

(assert (=> b!1763205 (= res!793581 (not ((_ is Nil!19394) lt!681329)))))

(declare-fun b!1763206 () Bool)

(declare-fun res!793582 () Bool)

(assert (=> b!1763206 (=> (not res!793582) (not e!1128259))))

(assert (=> b!1763206 (= res!793582 (= (head!4082 lt!681320) (head!4082 lt!681329)))))

(declare-fun b!1763208 () Bool)

(assert (=> b!1763208 (= e!1128261 (>= (size!15408 lt!681329) (size!15408 lt!681320)))))

(assert (= (and d!538851 (not res!793584)) b!1763205))

(assert (= (and b!1763205 res!793581) b!1763206))

(assert (= (and b!1763206 res!793582) b!1763207))

(assert (= (and d!538851 (not res!793583)) b!1763208))

(declare-fun m!2179957 () Bool)

(assert (=> b!1763207 m!2179957))

(assert (=> b!1763207 m!2179783))

(assert (=> b!1763207 m!2179957))

(assert (=> b!1763207 m!2179783))

(declare-fun m!2179959 () Bool)

(assert (=> b!1763207 m!2179959))

(declare-fun m!2179961 () Bool)

(assert (=> b!1763206 m!2179961))

(assert (=> b!1763206 m!2179787))

(assert (=> b!1763208 m!2179789))

(assert (=> b!1763208 m!2179469))

(assert (=> b!1762781 d!538851))

(assert (=> b!1762781 d!538761))

(declare-fun d!538853 () Bool)

(assert (=> d!538853 (= (list!7871 lt!681314) (list!7873 (c!287263 lt!681314)))))

(declare-fun bs!404258 () Bool)

(assert (= bs!404258 d!538853))

(declare-fun m!2179963 () Bool)

(assert (=> bs!404258 m!2179963))

(assert (=> b!1762781 d!538853))

(declare-fun d!538855 () Bool)

(declare-fun e!1128264 () Bool)

(assert (=> d!538855 e!1128264))

(declare-fun res!793589 () Bool)

(assert (=> d!538855 (=> (not res!793589) (not e!1128264))))

(assert (=> d!538855 (= res!793589 (isDefined!3296 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 (_1!10905 lt!681330))))))))

(declare-fun lt!681514 () Unit!33579)

(declare-fun choose!10928 (LexerInterface!3094 List!19465 List!19464 Token!6496) Unit!33579)

(assert (=> d!538855 (= lt!681514 (choose!10928 thiss!24550 rules!3447 lt!681329 (_1!10905 lt!681330)))))

(assert (=> d!538855 (rulesInvariant!2763 thiss!24550 rules!3447)))

(assert (=> d!538855 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!513 thiss!24550 rules!3447 lt!681329 (_1!10905 lt!681330)) lt!681514)))

(declare-fun b!1763213 () Bool)

(declare-fun res!793590 () Bool)

(assert (=> b!1763213 (=> (not res!793590) (not e!1128264))))

(assert (=> b!1763213 (= res!793590 (matchR!2266 (regex!3465 (get!5903 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 (_1!10905 lt!681330)))))) (list!7871 (charsOf!2114 (_1!10905 lt!681330)))))))

(declare-fun b!1763214 () Bool)

(assert (=> b!1763214 (= e!1128264 (= (rule!5485 (_1!10905 lt!681330)) (get!5903 (getRuleFromTag!513 thiss!24550 rules!3447 (tag!3833 (rule!5485 (_1!10905 lt!681330)))))))))

(assert (= (and d!538855 res!793589) b!1763213))

(assert (= (and b!1763213 res!793590) b!1763214))

(assert (=> d!538855 m!2179377))

(assert (=> d!538855 m!2179377))

(declare-fun m!2179965 () Bool)

(assert (=> d!538855 m!2179965))

(declare-fun m!2179967 () Bool)

(assert (=> d!538855 m!2179967))

(assert (=> d!538855 m!2179445))

(assert (=> b!1763213 m!2179377))

(declare-fun m!2179969 () Bool)

(assert (=> b!1763213 m!2179969))

(assert (=> b!1763213 m!2179357))

(assert (=> b!1763213 m!2179357))

(assert (=> b!1763213 m!2179359))

(assert (=> b!1763213 m!2179359))

(declare-fun m!2179971 () Bool)

(assert (=> b!1763213 m!2179971))

(assert (=> b!1763213 m!2179377))

(assert (=> b!1763214 m!2179377))

(assert (=> b!1763214 m!2179377))

(assert (=> b!1763214 m!2179969))

(assert (=> b!1762781 d!538855))

(declare-fun b!1763245 () Bool)

(declare-fun e!1128278 () Option!3952)

(declare-fun lt!681579 () Option!3952)

(declare-fun lt!681578 () Option!3952)

(assert (=> b!1763245 (= e!1128278 (ite (and ((_ is None!3951) lt!681579) ((_ is None!3951) lt!681578)) None!3951 (ite ((_ is None!3951) lt!681578) lt!681579 (ite ((_ is None!3951) lt!681579) lt!681578 (ite (>= (size!15407 (_1!10905 (v!25414 lt!681579))) (size!15407 (_1!10905 (v!25414 lt!681578)))) lt!681579 lt!681578)))))))

(declare-fun call!110813 () Option!3952)

(assert (=> b!1763245 (= lt!681579 call!110813)))

(assert (=> b!1763245 (= lt!681578 (maxPrefix!1648 thiss!24550 (t!164354 rules!3447) lt!681329))))

(declare-fun b!1763246 () Bool)

(declare-fun e!1128277 () Bool)

(declare-fun e!1128279 () Bool)

(assert (=> b!1763246 (= e!1128277 e!1128279)))

(declare-fun res!793616 () Bool)

(assert (=> b!1763246 (=> (not res!793616) (not e!1128279))))

(declare-fun lt!681576 () Option!3952)

(assert (=> b!1763246 (= res!793616 (isDefined!3295 lt!681576))))

(declare-fun b!1763247 () Bool)

(assert (=> b!1763247 (= e!1128279 (contains!3495 rules!3447 (rule!5485 (_1!10905 (get!5902 lt!681576)))))))

(declare-fun b!1763248 () Bool)

(declare-fun res!793617 () Bool)

(assert (=> b!1763248 (=> (not res!793617) (not e!1128279))))

(assert (=> b!1763248 (= res!793617 (< (size!15408 (_2!10905 (get!5902 lt!681576))) (size!15408 lt!681329)))))

(declare-fun b!1763249 () Bool)

(declare-fun res!793611 () Bool)

(assert (=> b!1763249 (=> (not res!793611) (not e!1128279))))

(assert (=> b!1763249 (= res!793611 (matchR!2266 (regex!3465 (rule!5485 (_1!10905 (get!5902 lt!681576)))) (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681576))))))))

(declare-fun b!1763250 () Bool)

(assert (=> b!1763250 (= e!1128278 call!110813)))

(declare-fun b!1763251 () Bool)

(declare-fun res!793613 () Bool)

(assert (=> b!1763251 (=> (not res!793613) (not e!1128279))))

(assert (=> b!1763251 (= res!793613 (= (++!5289 (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681576)))) (_2!10905 (get!5902 lt!681576))) lt!681329))))

(declare-fun b!1763252 () Bool)

(declare-fun res!793614 () Bool)

(assert (=> b!1763252 (=> (not res!793614) (not e!1128279))))

(assert (=> b!1763252 (= res!793614 (= (value!108425 (_1!10905 (get!5902 lt!681576))) (apply!5265 (transformation!3465 (rule!5485 (_1!10905 (get!5902 lt!681576)))) (seqFromList!2434 (originalCharacters!4279 (_1!10905 (get!5902 lt!681576)))))))))

(declare-fun d!538857 () Bool)

(assert (=> d!538857 e!1128277))

(declare-fun res!793612 () Bool)

(assert (=> d!538857 (=> res!793612 e!1128277)))

(assert (=> d!538857 (= res!793612 (isEmpty!12244 lt!681576))))

(assert (=> d!538857 (= lt!681576 e!1128278)))

(declare-fun c!287350 () Bool)

(assert (=> d!538857 (= c!287350 (and ((_ is Cons!19395) rules!3447) ((_ is Nil!19395) (t!164354 rules!3447))))))

(declare-fun lt!681577 () Unit!33579)

(declare-fun lt!681580 () Unit!33579)

(assert (=> d!538857 (= lt!681577 lt!681580)))

(assert (=> d!538857 (isPrefix!1705 lt!681329 lt!681329)))

(declare-fun lemmaIsPrefixRefl!1130 (List!19464 List!19464) Unit!33579)

(assert (=> d!538857 (= lt!681580 (lemmaIsPrefixRefl!1130 lt!681329 lt!681329))))

(declare-fun rulesValidInductive!1168 (LexerInterface!3094 List!19465) Bool)

(assert (=> d!538857 (rulesValidInductive!1168 thiss!24550 rules!3447)))

(assert (=> d!538857 (= (maxPrefix!1648 thiss!24550 rules!3447 lt!681329) lt!681576)))

(declare-fun b!1763253 () Bool)

(declare-fun res!793615 () Bool)

(assert (=> b!1763253 (=> (not res!793615) (not e!1128279))))

(assert (=> b!1763253 (= res!793615 (= (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681576)))) (originalCharacters!4279 (_1!10905 (get!5902 lt!681576)))))))

(declare-fun bm!110808 () Bool)

(assert (=> bm!110808 (= call!110813 (maxPrefixOneRule!1017 thiss!24550 (h!24796 rules!3447) lt!681329))))

(assert (= (and d!538857 c!287350) b!1763250))

(assert (= (and d!538857 (not c!287350)) b!1763245))

(assert (= (or b!1763250 b!1763245) bm!110808))

(assert (= (and d!538857 (not res!793612)) b!1763246))

(assert (= (and b!1763246 res!793616) b!1763253))

(assert (= (and b!1763253 res!793615) b!1763248))

(assert (= (and b!1763248 res!793617) b!1763251))

(assert (= (and b!1763251 res!793613) b!1763252))

(assert (= (and b!1763252 res!793614) b!1763249))

(assert (= (and b!1763249 res!793611) b!1763247))

(declare-fun m!2180005 () Bool)

(assert (=> b!1763248 m!2180005))

(declare-fun m!2180011 () Bool)

(assert (=> b!1763248 m!2180011))

(assert (=> b!1763248 m!2179789))

(assert (=> b!1763253 m!2180005))

(declare-fun m!2180013 () Bool)

(assert (=> b!1763253 m!2180013))

(assert (=> b!1763253 m!2180013))

(declare-fun m!2180017 () Bool)

(assert (=> b!1763253 m!2180017))

(declare-fun m!2180021 () Bool)

(assert (=> b!1763246 m!2180021))

(declare-fun m!2180023 () Bool)

(assert (=> d!538857 m!2180023))

(declare-fun m!2180027 () Bool)

(assert (=> d!538857 m!2180027))

(declare-fun m!2180029 () Bool)

(assert (=> d!538857 m!2180029))

(declare-fun m!2180033 () Bool)

(assert (=> d!538857 m!2180033))

(declare-fun m!2180035 () Bool)

(assert (=> b!1763245 m!2180035))

(assert (=> b!1763251 m!2180005))

(assert (=> b!1763251 m!2180013))

(assert (=> b!1763251 m!2180013))

(assert (=> b!1763251 m!2180017))

(assert (=> b!1763251 m!2180017))

(declare-fun m!2180043 () Bool)

(assert (=> b!1763251 m!2180043))

(assert (=> b!1763247 m!2180005))

(declare-fun m!2180045 () Bool)

(assert (=> b!1763247 m!2180045))

(assert (=> b!1763252 m!2180005))

(declare-fun m!2180047 () Bool)

(assert (=> b!1763252 m!2180047))

(assert (=> b!1763252 m!2180047))

(declare-fun m!2180049 () Bool)

(assert (=> b!1763252 m!2180049))

(assert (=> b!1763249 m!2180005))

(assert (=> b!1763249 m!2180013))

(assert (=> b!1763249 m!2180013))

(assert (=> b!1763249 m!2180017))

(assert (=> b!1763249 m!2180017))

(declare-fun m!2180051 () Bool)

(assert (=> b!1763249 m!2180051))

(declare-fun m!2180053 () Bool)

(assert (=> bm!110808 m!2180053))

(assert (=> b!1762781 d!538857))

(declare-fun d!538861 () Bool)

(declare-fun e!1128285 () Bool)

(assert (=> d!538861 e!1128285))

(declare-fun res!793624 () Bool)

(assert (=> d!538861 (=> res!793624 e!1128285)))

(declare-fun lt!681582 () Bool)

(assert (=> d!538861 (= res!793624 (not lt!681582))))

(declare-fun e!1128284 () Bool)

(assert (=> d!538861 (= lt!681582 e!1128284)))

(declare-fun res!793625 () Bool)

(assert (=> d!538861 (=> res!793625 e!1128284)))

(assert (=> d!538861 (= res!793625 ((_ is Nil!19394) lt!681320))))

(assert (=> d!538861 (= (isPrefix!1705 lt!681320 (++!5289 lt!681320 (_2!10905 lt!681330))) lt!681582)))

(declare-fun b!1763260 () Bool)

(declare-fun e!1128283 () Bool)

(assert (=> b!1763260 (= e!1128283 (isPrefix!1705 (tail!2637 lt!681320) (tail!2637 (++!5289 lt!681320 (_2!10905 lt!681330)))))))

(declare-fun b!1763258 () Bool)

(assert (=> b!1763258 (= e!1128284 e!1128283)))

(declare-fun res!793622 () Bool)

(assert (=> b!1763258 (=> (not res!793622) (not e!1128283))))

(assert (=> b!1763258 (= res!793622 (not ((_ is Nil!19394) (++!5289 lt!681320 (_2!10905 lt!681330)))))))

(declare-fun b!1763259 () Bool)

(declare-fun res!793623 () Bool)

(assert (=> b!1763259 (=> (not res!793623) (not e!1128283))))

(assert (=> b!1763259 (= res!793623 (= (head!4082 lt!681320) (head!4082 (++!5289 lt!681320 (_2!10905 lt!681330)))))))

(declare-fun b!1763261 () Bool)

(assert (=> b!1763261 (= e!1128285 (>= (size!15408 (++!5289 lt!681320 (_2!10905 lt!681330))) (size!15408 lt!681320)))))

(assert (= (and d!538861 (not res!793625)) b!1763258))

(assert (= (and b!1763258 res!793622) b!1763259))

(assert (= (and b!1763259 res!793623) b!1763260))

(assert (= (and d!538861 (not res!793624)) b!1763261))

(assert (=> b!1763260 m!2179957))

(assert (=> b!1763260 m!2179373))

(declare-fun m!2180057 () Bool)

(assert (=> b!1763260 m!2180057))

(assert (=> b!1763260 m!2179957))

(assert (=> b!1763260 m!2180057))

(declare-fun m!2180059 () Bool)

(assert (=> b!1763260 m!2180059))

(assert (=> b!1763259 m!2179961))

(assert (=> b!1763259 m!2179373))

(declare-fun m!2180061 () Bool)

(assert (=> b!1763259 m!2180061))

(assert (=> b!1763261 m!2179373))

(declare-fun m!2180063 () Bool)

(assert (=> b!1763261 m!2180063))

(assert (=> b!1763261 m!2179469))

(assert (=> b!1762781 d!538861))

(declare-fun d!538865 () Bool)

(assert (=> d!538865 (isPrefix!1705 lt!681320 (++!5289 lt!681320 (_2!10905 lt!681330)))))

(declare-fun lt!681588 () Unit!33579)

(assert (=> d!538865 (= lt!681588 (choose!10926 lt!681320 (_2!10905 lt!681330)))))

(assert (=> d!538865 (= (lemmaConcatTwoListThenFirstIsPrefix!1214 lt!681320 (_2!10905 lt!681330)) lt!681588)))

(declare-fun bs!404259 () Bool)

(assert (= bs!404259 d!538865))

(assert (=> bs!404259 m!2179373))

(assert (=> bs!404259 m!2179373))

(assert (=> bs!404259 m!2179375))

(declare-fun m!2180065 () Bool)

(assert (=> bs!404259 m!2180065))

(assert (=> b!1762781 d!538865))

(declare-fun b!1763285 () Bool)

(declare-fun e!1128299 () Bool)

(declare-fun inv!17 (TokenValue!3555) Bool)

(assert (=> b!1763285 (= e!1128299 (inv!17 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(declare-fun b!1763286 () Bool)

(declare-fun e!1128297 () Bool)

(declare-fun inv!15 (TokenValue!3555) Bool)

(assert (=> b!1763286 (= e!1128297 (inv!15 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(declare-fun b!1763287 () Bool)

(declare-fun e!1128298 () Bool)

(assert (=> b!1763287 (= e!1128298 e!1128299)))

(declare-fun c!287357 () Bool)

(assert (=> b!1763287 (= c!287357 ((_ is IntegerValue!10666) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(declare-fun b!1763288 () Bool)

(declare-fun res!793637 () Bool)

(assert (=> b!1763288 (=> res!793637 e!1128297)))

(assert (=> b!1763288 (= res!793637 (not ((_ is IntegerValue!10667) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))))

(assert (=> b!1763288 (= e!1128299 e!1128297)))

(declare-fun b!1763289 () Bool)

(declare-fun inv!16 (TokenValue!3555) Bool)

(assert (=> b!1763289 (= e!1128298 (inv!16 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(declare-fun d!538867 () Bool)

(declare-fun c!287358 () Bool)

(assert (=> d!538867 (= c!287358 ((_ is IntegerValue!10665) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))

(assert (=> d!538867 (= (inv!21 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)) e!1128298)))

(assert (= (and d!538867 c!287358) b!1763289))

(assert (= (and d!538867 (not c!287358)) b!1763287))

(assert (= (and b!1763287 c!287357) b!1763285))

(assert (= (and b!1763287 (not c!287357)) b!1763288))

(assert (= (and b!1763288 (not res!793637)) b!1763286))

(declare-fun m!2180107 () Bool)

(assert (=> b!1763285 m!2180107))

(declare-fun m!2180109 () Bool)

(assert (=> b!1763286 m!2180109))

(declare-fun m!2180111 () Bool)

(assert (=> b!1763289 m!2180111))

(assert (=> tb!106293 d!538867))

(declare-fun d!538873 () Bool)

(assert (=> d!538873 (= (isDefined!3295 lt!681331) (not (isEmpty!12244 lt!681331)))))

(declare-fun bs!404260 () Bool)

(assert (= bs!404260 d!538873))

(declare-fun m!2180113 () Bool)

(assert (=> bs!404260 m!2180113))

(assert (=> b!1762760 d!538873))

(declare-fun b!1763290 () Bool)

(declare-fun e!1128301 () Option!3952)

(declare-fun lt!681593 () Option!3952)

(declare-fun lt!681592 () Option!3952)

(assert (=> b!1763290 (= e!1128301 (ite (and ((_ is None!3951) lt!681593) ((_ is None!3951) lt!681592)) None!3951 (ite ((_ is None!3951) lt!681592) lt!681593 (ite ((_ is None!3951) lt!681593) lt!681592 (ite (>= (size!15407 (_1!10905 (v!25414 lt!681593))) (size!15407 (_1!10905 (v!25414 lt!681592)))) lt!681593 lt!681592)))))))

(declare-fun call!110815 () Option!3952)

(assert (=> b!1763290 (= lt!681593 call!110815)))

(assert (=> b!1763290 (= lt!681592 (maxPrefix!1648 thiss!24550 (t!164354 rules!3447) lt!681333))))

(declare-fun b!1763291 () Bool)

(declare-fun e!1128300 () Bool)

(declare-fun e!1128302 () Bool)

(assert (=> b!1763291 (= e!1128300 e!1128302)))

(declare-fun res!793643 () Bool)

(assert (=> b!1763291 (=> (not res!793643) (not e!1128302))))

(declare-fun lt!681590 () Option!3952)

(assert (=> b!1763291 (= res!793643 (isDefined!3295 lt!681590))))

(declare-fun b!1763292 () Bool)

(assert (=> b!1763292 (= e!1128302 (contains!3495 rules!3447 (rule!5485 (_1!10905 (get!5902 lt!681590)))))))

(declare-fun b!1763293 () Bool)

(declare-fun res!793644 () Bool)

(assert (=> b!1763293 (=> (not res!793644) (not e!1128302))))

(assert (=> b!1763293 (= res!793644 (< (size!15408 (_2!10905 (get!5902 lt!681590))) (size!15408 lt!681333)))))

(declare-fun b!1763294 () Bool)

(declare-fun res!793638 () Bool)

(assert (=> b!1763294 (=> (not res!793638) (not e!1128302))))

(assert (=> b!1763294 (= res!793638 (matchR!2266 (regex!3465 (rule!5485 (_1!10905 (get!5902 lt!681590)))) (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681590))))))))

(declare-fun b!1763295 () Bool)

(assert (=> b!1763295 (= e!1128301 call!110815)))

(declare-fun b!1763296 () Bool)

(declare-fun res!793640 () Bool)

(assert (=> b!1763296 (=> (not res!793640) (not e!1128302))))

(assert (=> b!1763296 (= res!793640 (= (++!5289 (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681590)))) (_2!10905 (get!5902 lt!681590))) lt!681333))))

(declare-fun b!1763297 () Bool)

(declare-fun res!793641 () Bool)

(assert (=> b!1763297 (=> (not res!793641) (not e!1128302))))

(assert (=> b!1763297 (= res!793641 (= (value!108425 (_1!10905 (get!5902 lt!681590))) (apply!5265 (transformation!3465 (rule!5485 (_1!10905 (get!5902 lt!681590)))) (seqFromList!2434 (originalCharacters!4279 (_1!10905 (get!5902 lt!681590)))))))))

(declare-fun d!538875 () Bool)

(assert (=> d!538875 e!1128300))

(declare-fun res!793639 () Bool)

(assert (=> d!538875 (=> res!793639 e!1128300)))

(assert (=> d!538875 (= res!793639 (isEmpty!12244 lt!681590))))

(assert (=> d!538875 (= lt!681590 e!1128301)))

(declare-fun c!287359 () Bool)

(assert (=> d!538875 (= c!287359 (and ((_ is Cons!19395) rules!3447) ((_ is Nil!19395) (t!164354 rules!3447))))))

(declare-fun lt!681591 () Unit!33579)

(declare-fun lt!681594 () Unit!33579)

(assert (=> d!538875 (= lt!681591 lt!681594)))

(assert (=> d!538875 (isPrefix!1705 lt!681333 lt!681333)))

(assert (=> d!538875 (= lt!681594 (lemmaIsPrefixRefl!1130 lt!681333 lt!681333))))

(assert (=> d!538875 (rulesValidInductive!1168 thiss!24550 rules!3447)))

(assert (=> d!538875 (= (maxPrefix!1648 thiss!24550 rules!3447 lt!681333) lt!681590)))

(declare-fun b!1763298 () Bool)

(declare-fun res!793642 () Bool)

(assert (=> b!1763298 (=> (not res!793642) (not e!1128302))))

(assert (=> b!1763298 (= res!793642 (= (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681590)))) (originalCharacters!4279 (_1!10905 (get!5902 lt!681590)))))))

(declare-fun bm!110810 () Bool)

(assert (=> bm!110810 (= call!110815 (maxPrefixOneRule!1017 thiss!24550 (h!24796 rules!3447) lt!681333))))

(assert (= (and d!538875 c!287359) b!1763295))

(assert (= (and d!538875 (not c!287359)) b!1763290))

(assert (= (or b!1763295 b!1763290) bm!110810))

(assert (= (and d!538875 (not res!793639)) b!1763291))

(assert (= (and b!1763291 res!793643) b!1763298))

(assert (= (and b!1763298 res!793642) b!1763293))

(assert (= (and b!1763293 res!793644) b!1763296))

(assert (= (and b!1763296 res!793640) b!1763297))

(assert (= (and b!1763297 res!793641) b!1763294))

(assert (= (and b!1763294 res!793638) b!1763292))

(declare-fun m!2180115 () Bool)

(assert (=> b!1763293 m!2180115))

(declare-fun m!2180117 () Bool)

(assert (=> b!1763293 m!2180117))

(assert (=> b!1763293 m!2179773))

(assert (=> b!1763298 m!2180115))

(declare-fun m!2180119 () Bool)

(assert (=> b!1763298 m!2180119))

(assert (=> b!1763298 m!2180119))

(declare-fun m!2180121 () Bool)

(assert (=> b!1763298 m!2180121))

(declare-fun m!2180123 () Bool)

(assert (=> b!1763291 m!2180123))

(declare-fun m!2180125 () Bool)

(assert (=> d!538875 m!2180125))

(declare-fun m!2180127 () Bool)

(assert (=> d!538875 m!2180127))

(declare-fun m!2180129 () Bool)

(assert (=> d!538875 m!2180129))

(assert (=> d!538875 m!2180033))

(declare-fun m!2180131 () Bool)

(assert (=> b!1763290 m!2180131))

(assert (=> b!1763296 m!2180115))

(assert (=> b!1763296 m!2180119))

(assert (=> b!1763296 m!2180119))

(assert (=> b!1763296 m!2180121))

(assert (=> b!1763296 m!2180121))

(declare-fun m!2180133 () Bool)

(assert (=> b!1763296 m!2180133))

(assert (=> b!1763292 m!2180115))

(declare-fun m!2180135 () Bool)

(assert (=> b!1763292 m!2180135))

(assert (=> b!1763297 m!2180115))

(declare-fun m!2180137 () Bool)

(assert (=> b!1763297 m!2180137))

(assert (=> b!1763297 m!2180137))

(declare-fun m!2180139 () Bool)

(assert (=> b!1763297 m!2180139))

(assert (=> b!1763294 m!2180115))

(assert (=> b!1763294 m!2180119))

(assert (=> b!1763294 m!2180119))

(assert (=> b!1763294 m!2180121))

(assert (=> b!1763294 m!2180121))

(declare-fun m!2180141 () Bool)

(assert (=> b!1763294 m!2180141))

(declare-fun m!2180143 () Bool)

(assert (=> bm!110810 m!2180143))

(assert (=> b!1762760 d!538875))

(declare-fun d!538877 () Bool)

(assert (=> d!538877 (= (list!7871 (charsOf!2114 token!523)) (list!7873 (c!287263 (charsOf!2114 token!523))))))

(declare-fun bs!404261 () Bool)

(assert (= bs!404261 d!538877))

(declare-fun m!2180145 () Bool)

(assert (=> bs!404261 m!2180145))

(assert (=> b!1762760 d!538877))

(declare-fun d!538879 () Bool)

(declare-fun lt!681595 () BalanceConc!12846)

(assert (=> d!538879 (= (list!7871 lt!681595) (originalCharacters!4279 token!523))))

(assert (=> d!538879 (= lt!681595 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (value!108425 token!523)))))

(assert (=> d!538879 (= (charsOf!2114 token!523) lt!681595)))

(declare-fun b_lambda!57149 () Bool)

(assert (=> (not b_lambda!57149) (not d!538879)))

(declare-fun t!164374 () Bool)

(declare-fun tb!106323 () Bool)

(assert (=> (and b!1762759 (= (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toChars!4847 (transformation!3465 (rule!5485 token!523)))) t!164374) tb!106323))

(declare-fun b!1763299 () Bool)

(declare-fun e!1128303 () Bool)

(declare-fun tp!500564 () Bool)

(assert (=> b!1763299 (= e!1128303 (and (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (value!108425 token!523)))) tp!500564))))

(declare-fun result!127890 () Bool)

(assert (=> tb!106323 (= result!127890 (and (inv!25189 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (value!108425 token!523))) e!1128303))))

(assert (= tb!106323 b!1763299))

(declare-fun m!2180147 () Bool)

(assert (=> b!1763299 m!2180147))

(declare-fun m!2180149 () Bool)

(assert (=> tb!106323 m!2180149))

(assert (=> d!538879 t!164374))

(declare-fun b_and!133249 () Bool)

(assert (= b_and!133225 (and (=> t!164374 result!127890) b_and!133249)))

(declare-fun t!164376 () Bool)

(declare-fun tb!106325 () Bool)

(assert (=> (and b!1762757 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 token!523)))) t!164376) tb!106325))

(declare-fun result!127892 () Bool)

(assert (= result!127892 result!127890))

(assert (=> d!538879 t!164376))

(declare-fun b_and!133251 () Bool)

(assert (= b_and!133227 (and (=> t!164376 result!127892) b_and!133251)))

(declare-fun tb!106327 () Bool)

(declare-fun t!164378 () Bool)

(assert (=> (and b!1762758 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 token!523)))) t!164378) tb!106327))

(declare-fun result!127894 () Bool)

(assert (= result!127894 result!127890))

(assert (=> d!538879 t!164378))

(declare-fun b_and!133253 () Bool)

(assert (= b_and!133229 (and (=> t!164378 result!127894) b_and!133253)))

(declare-fun m!2180151 () Bool)

(assert (=> d!538879 m!2180151))

(declare-fun m!2180153 () Bool)

(assert (=> d!538879 m!2180153))

(assert (=> b!1762760 d!538879))

(declare-fun b!1763300 () Bool)

(declare-fun e!1128306 () Bool)

(assert (=> b!1763300 (= e!1128306 (inv!17 (value!108425 token!523)))))

(declare-fun b!1763301 () Bool)

(declare-fun e!1128304 () Bool)

(assert (=> b!1763301 (= e!1128304 (inv!15 (value!108425 token!523)))))

(declare-fun b!1763302 () Bool)

(declare-fun e!1128305 () Bool)

(assert (=> b!1763302 (= e!1128305 e!1128306)))

(declare-fun c!287360 () Bool)

(assert (=> b!1763302 (= c!287360 ((_ is IntegerValue!10666) (value!108425 token!523)))))

(declare-fun b!1763303 () Bool)

(declare-fun res!793645 () Bool)

(assert (=> b!1763303 (=> res!793645 e!1128304)))

(assert (=> b!1763303 (= res!793645 (not ((_ is IntegerValue!10667) (value!108425 token!523))))))

(assert (=> b!1763303 (= e!1128306 e!1128304)))

(declare-fun b!1763304 () Bool)

(assert (=> b!1763304 (= e!1128305 (inv!16 (value!108425 token!523)))))

(declare-fun d!538881 () Bool)

(declare-fun c!287361 () Bool)

(assert (=> d!538881 (= c!287361 ((_ is IntegerValue!10665) (value!108425 token!523)))))

(assert (=> d!538881 (= (inv!21 (value!108425 token!523)) e!1128305)))

(assert (= (and d!538881 c!287361) b!1763304))

(assert (= (and d!538881 (not c!287361)) b!1763302))

(assert (= (and b!1763302 c!287360) b!1763300))

(assert (= (and b!1763302 (not c!287360)) b!1763303))

(assert (= (and b!1763303 (not res!793645)) b!1763301))

(declare-fun m!2180155 () Bool)

(assert (=> b!1763300 m!2180155))

(declare-fun m!2180157 () Bool)

(assert (=> b!1763301 m!2180157))

(declare-fun m!2180159 () Bool)

(assert (=> b!1763304 m!2180159))

(assert (=> b!1762779 d!538881))

(declare-fun d!538883 () Bool)

(declare-fun res!793656 () Bool)

(declare-fun e!1128312 () Bool)

(assert (=> d!538883 (=> (not res!793656) (not e!1128312))))

(assert (=> d!538883 (= res!793656 (not (isEmpty!12240 (originalCharacters!4279 token!523))))))

(assert (=> d!538883 (= (inv!25187 token!523) e!1128312)))

(declare-fun b!1763315 () Bool)

(declare-fun res!793657 () Bool)

(assert (=> b!1763315 (=> (not res!793657) (not e!1128312))))

(assert (=> b!1763315 (= res!793657 (= (originalCharacters!4279 token!523) (list!7871 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 token!523))) (value!108425 token!523)))))))

(declare-fun b!1763316 () Bool)

(assert (=> b!1763316 (= e!1128312 (= (size!15407 token!523) (size!15408 (originalCharacters!4279 token!523))))))

(assert (= (and d!538883 res!793656) b!1763315))

(assert (= (and b!1763315 res!793657) b!1763316))

(declare-fun b_lambda!57151 () Bool)

(assert (=> (not b_lambda!57151) (not b!1763315)))

(assert (=> b!1763315 t!164374))

(declare-fun b_and!133255 () Bool)

(assert (= b_and!133249 (and (=> t!164374 result!127890) b_and!133255)))

(assert (=> b!1763315 t!164376))

(declare-fun b_and!133257 () Bool)

(assert (= b_and!133251 (and (=> t!164376 result!127892) b_and!133257)))

(assert (=> b!1763315 t!164378))

(declare-fun b_and!133259 () Bool)

(assert (= b_and!133253 (and (=> t!164378 result!127894) b_and!133259)))

(declare-fun m!2180171 () Bool)

(assert (=> d!538883 m!2180171))

(assert (=> b!1763315 m!2180153))

(assert (=> b!1763315 m!2180153))

(declare-fun m!2180173 () Bool)

(assert (=> b!1763315 m!2180173))

(declare-fun m!2180175 () Bool)

(assert (=> b!1763316 m!2180175))

(assert (=> start!174466 d!538883))

(declare-fun d!538891 () Bool)

(assert (=> d!538891 (= (inv!25189 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))) (isBalanced!2016 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))))))

(declare-fun bs!404263 () Bool)

(assert (= bs!404263 d!538891))

(declare-fun m!2180177 () Bool)

(assert (=> bs!404263 m!2180177))

(assert (=> tb!106287 d!538891))

(declare-fun d!538893 () Bool)

(assert (=> d!538893 (= (isEmpty!12241 rules!3447) ((_ is Nil!19395) rules!3447))))

(assert (=> b!1762766 d!538893))

(declare-fun d!538897 () Bool)

(declare-fun c!287367 () Bool)

(assert (=> d!538897 (= c!287367 (isEmpty!12240 (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394))))))

(declare-fun e!1128331 () Bool)

(assert (=> d!538897 (= (prefixMatch!676 (rulesRegex!821 thiss!24550 rules!3447) (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394))) e!1128331)))

(declare-fun b!1763357 () Bool)

(declare-fun lostCause!574 (Regex!4793) Bool)

(assert (=> b!1763357 (= e!1128331 (not (lostCause!574 (rulesRegex!821 thiss!24550 rules!3447))))))

(declare-fun b!1763358 () Bool)

(assert (=> b!1763358 (= e!1128331 (prefixMatch!676 (derivativeStep!1232 (rulesRegex!821 thiss!24550 rules!3447) (head!4082 (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394)))) (tail!2637 (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394)))))))

(assert (= (and d!538897 c!287367) b!1763357))

(assert (= (and d!538897 (not c!287367)) b!1763358))

(assert (=> d!538897 m!2179453))

(declare-fun m!2180193 () Bool)

(assert (=> d!538897 m!2180193))

(assert (=> b!1763357 m!2179449))

(declare-fun m!2180195 () Bool)

(assert (=> b!1763357 m!2180195))

(assert (=> b!1763358 m!2179453))

(declare-fun m!2180197 () Bool)

(assert (=> b!1763358 m!2180197))

(assert (=> b!1763358 m!2179449))

(assert (=> b!1763358 m!2180197))

(declare-fun m!2180199 () Bool)

(assert (=> b!1763358 m!2180199))

(assert (=> b!1763358 m!2179453))

(declare-fun m!2180201 () Bool)

(assert (=> b!1763358 m!2180201))

(assert (=> b!1763358 m!2180199))

(assert (=> b!1763358 m!2180201))

(declare-fun m!2180203 () Bool)

(assert (=> b!1763358 m!2180203))

(assert (=> b!1762765 d!538897))

(declare-fun d!538905 () Bool)

(declare-fun lt!681601 () Unit!33579)

(declare-fun lemma!387 (List!19465 LexerInterface!3094 List!19465) Unit!33579)

(assert (=> d!538905 (= lt!681601 (lemma!387 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70227 () Int)

(declare-datatypes ((List!19471 0))(
  ( (Nil!19401) (Cons!19401 (h!24802 Regex!4793) (t!164420 List!19471)) )
))
(declare-fun generalisedUnion!395 (List!19471) Regex!4793)

(declare-fun map!3999 (List!19465 Int) List!19471)

(assert (=> d!538905 (= (rulesRegex!821 thiss!24550 rules!3447) (generalisedUnion!395 (map!3999 rules!3447 lambda!70227)))))

(declare-fun bs!404264 () Bool)

(assert (= bs!404264 d!538905))

(declare-fun m!2180217 () Bool)

(assert (=> bs!404264 m!2180217))

(declare-fun m!2180219 () Bool)

(assert (=> bs!404264 m!2180219))

(assert (=> bs!404264 m!2180219))

(declare-fun m!2180221 () Bool)

(assert (=> bs!404264 m!2180221))

(assert (=> b!1762765 d!538905))

(declare-fun b!1763378 () Bool)

(declare-fun e!1128349 () List!19464)

(assert (=> b!1763378 (= e!1128349 (Cons!19394 (h!24795 lt!681333) (++!5289 (t!164353 lt!681333) (Cons!19394 (head!4082 suffix!1421) Nil!19394))))))

(declare-fun b!1763377 () Bool)

(assert (=> b!1763377 (= e!1128349 (Cons!19394 (head!4082 suffix!1421) Nil!19394))))

(declare-fun b!1763379 () Bool)

(declare-fun res!793662 () Bool)

(declare-fun e!1128350 () Bool)

(assert (=> b!1763379 (=> (not res!793662) (not e!1128350))))

(declare-fun lt!681602 () List!19464)

(assert (=> b!1763379 (= res!793662 (= (size!15408 lt!681602) (+ (size!15408 lt!681333) (size!15408 (Cons!19394 (head!4082 suffix!1421) Nil!19394)))))))

(declare-fun b!1763380 () Bool)

(assert (=> b!1763380 (= e!1128350 (or (not (= (Cons!19394 (head!4082 suffix!1421) Nil!19394) Nil!19394)) (= lt!681602 lt!681333)))))

(declare-fun d!538907 () Bool)

(assert (=> d!538907 e!1128350))

(declare-fun res!793661 () Bool)

(assert (=> d!538907 (=> (not res!793661) (not e!1128350))))

(assert (=> d!538907 (= res!793661 (= (content!2803 lt!681602) ((_ map or) (content!2803 lt!681333) (content!2803 (Cons!19394 (head!4082 suffix!1421) Nil!19394)))))))

(assert (=> d!538907 (= lt!681602 e!1128349)))

(declare-fun c!287368 () Bool)

(assert (=> d!538907 (= c!287368 ((_ is Nil!19394) lt!681333))))

(assert (=> d!538907 (= (++!5289 lt!681333 (Cons!19394 (head!4082 suffix!1421) Nil!19394)) lt!681602)))

(assert (= (and d!538907 c!287368) b!1763377))

(assert (= (and d!538907 (not c!287368)) b!1763378))

(assert (= (and d!538907 res!793661) b!1763379))

(assert (= (and b!1763379 res!793662) b!1763380))

(declare-fun m!2180223 () Bool)

(assert (=> b!1763378 m!2180223))

(declare-fun m!2180225 () Bool)

(assert (=> b!1763379 m!2180225))

(assert (=> b!1763379 m!2179773))

(declare-fun m!2180227 () Bool)

(assert (=> b!1763379 m!2180227))

(declare-fun m!2180229 () Bool)

(assert (=> d!538907 m!2180229))

(assert (=> d!538907 m!2179779))

(declare-fun m!2180231 () Bool)

(assert (=> d!538907 m!2180231))

(assert (=> b!1762765 d!538907))

(declare-fun d!538909 () Bool)

(assert (=> d!538909 (= (head!4082 suffix!1421) (h!24795 suffix!1421))))

(assert (=> b!1762765 d!538909))

(declare-fun d!538911 () Bool)

(declare-fun fromListB!1112 (List!19464) BalanceConc!12846)

(assert (=> d!538911 (= (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330))) (fromListB!1112 (originalCharacters!4279 (_1!10905 lt!681330))))))

(declare-fun bs!404265 () Bool)

(assert (= bs!404265 d!538911))

(declare-fun m!2180237 () Bool)

(assert (=> bs!404265 m!2180237))

(assert (=> b!1762763 d!538911))

(declare-fun d!538913 () Bool)

(assert (=> d!538913 (= (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))

(declare-fun b_lambda!57163 () Bool)

(assert (=> (not b_lambda!57163) (not d!538913)))

(assert (=> d!538913 t!164341))

(declare-fun b_and!133265 () Bool)

(assert (= b_and!133231 (and (=> t!164341 result!127858) b_and!133265)))

(assert (=> d!538913 t!164343))

(declare-fun b_and!133267 () Bool)

(assert (= b_and!133233 (and (=> t!164343 result!127862) b_and!133267)))

(assert (=> d!538913 t!164345))

(declare-fun b_and!133269 () Bool)

(assert (= b_and!133235 (and (=> t!164345 result!127864) b_and!133269)))

(assert (=> d!538913 m!2179403))

(assert (=> b!1762763 d!538913))

(declare-fun d!538915 () Bool)

(assert (=> d!538915 (= (size!15407 (_1!10905 lt!681330)) (size!15408 (originalCharacters!4279 (_1!10905 lt!681330))))))

(declare-fun Unit!33587 () Unit!33579)

(assert (=> d!538915 (= (lemmaCharactersSize!523 (_1!10905 lt!681330)) Unit!33587)))

(declare-fun bs!404266 () Bool)

(assert (= bs!404266 d!538915))

(declare-fun m!2180239 () Bool)

(assert (=> bs!404266 m!2180239))

(assert (=> b!1762763 d!538915))

(declare-fun b!1763395 () Bool)

(declare-fun e!1128357 () Bool)

(assert (=> b!1763395 (= e!1128357 true)))

(declare-fun d!538917 () Bool)

(assert (=> d!538917 e!1128357))

(assert (= d!538917 b!1763395))

(declare-fun order!12307 () Int)

(declare-fun lambda!70230 () Int)

(declare-fun dynLambda!9353 (Int Int) Int)

(assert (=> b!1763395 (< (dynLambda!9347 order!12299 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9353 order!12307 lambda!70230))))

(assert (=> b!1763395 (< (dynLambda!9349 order!12303 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) (dynLambda!9353 order!12307 lambda!70230))))

(assert (=> d!538917 (= (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330)))))))

(declare-fun lt!681605 () Unit!33579)

(declare-fun Forall2of!125 (Int BalanceConc!12846 BalanceConc!12846) Unit!33579)

(assert (=> d!538917 (= lt!681605 (Forall2of!125 lambda!70230 lt!681314 (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330)))))))

(assert (=> d!538917 (= (list!7871 lt!681314) (list!7871 (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330)))))))

(assert (=> d!538917 (= (lemmaEqSameImage!376 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) lt!681314 (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330)))) lt!681605)))

(declare-fun b_lambda!57165 () Bool)

(assert (=> (not b_lambda!57165) (not d!538917)))

(assert (=> d!538917 t!164341))

(declare-fun b_and!133271 () Bool)

(assert (= b_and!133265 (and (=> t!164341 result!127858) b_and!133271)))

(assert (=> d!538917 t!164343))

(declare-fun b_and!133273 () Bool)

(assert (= b_and!133267 (and (=> t!164343 result!127862) b_and!133273)))

(assert (=> d!538917 t!164345))

(declare-fun b_and!133275 () Bool)

(assert (= b_and!133269 (and (=> t!164345 result!127864) b_and!133275)))

(declare-fun b_lambda!57167 () Bool)

(assert (=> (not b_lambda!57167) (not d!538917)))

(declare-fun t!164392 () Bool)

(declare-fun tb!106341 () Bool)

(assert (=> (and b!1762759 (= (toValue!4988 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164392) tb!106341))

(declare-fun result!127916 () Bool)

(assert (=> tb!106341 (= result!127916 (inv!21 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (seqFromList!2434 (originalCharacters!4279 (_1!10905 lt!681330))))))))

(declare-fun m!2180241 () Bool)

(assert (=> tb!106341 m!2180241))

(assert (=> d!538917 t!164392))

(declare-fun b_and!133277 () Bool)

(assert (= b_and!133271 (and (=> t!164392 result!127916) b_and!133277)))

(declare-fun tb!106343 () Bool)

(declare-fun t!164394 () Bool)

(assert (=> (and b!1762757 (= (toValue!4988 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164394) tb!106343))

(declare-fun result!127918 () Bool)

(assert (= result!127918 result!127916))

(assert (=> d!538917 t!164394))

(declare-fun b_and!133279 () Bool)

(assert (= b_and!133273 (and (=> t!164394 result!127918) b_and!133279)))

(declare-fun tb!106345 () Bool)

(declare-fun t!164396 () Bool)

(assert (=> (and b!1762758 (= (toValue!4988 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164396) tb!106345))

(declare-fun result!127920 () Bool)

(assert (= result!127920 result!127916))

(assert (=> d!538917 t!164396))

(declare-fun b_and!133281 () Bool)

(assert (= b_and!133275 (and (=> t!164396 result!127920) b_and!133281)))

(assert (=> d!538917 m!2179403))

(assert (=> d!538917 m!2179435))

(declare-fun m!2180243 () Bool)

(assert (=> d!538917 m!2180243))

(assert (=> d!538917 m!2179435))

(declare-fun m!2180245 () Bool)

(assert (=> d!538917 m!2180245))

(assert (=> d!538917 m!2179435))

(declare-fun m!2180247 () Bool)

(assert (=> d!538917 m!2180247))

(assert (=> d!538917 m!2179379))

(assert (=> b!1762763 d!538917))

(declare-fun d!538919 () Bool)

(declare-fun lt!681608 () Int)

(assert (=> d!538919 (= lt!681608 (size!15408 (list!7871 lt!681314)))))

(declare-fun size!15411 (Conc!6451) Int)

(assert (=> d!538919 (= lt!681608 (size!15411 (c!287263 lt!681314)))))

(assert (=> d!538919 (= (size!15409 lt!681314) lt!681608)))

(declare-fun bs!404267 () Bool)

(assert (= bs!404267 d!538919))

(assert (=> bs!404267 m!2179379))

(assert (=> bs!404267 m!2179379))

(declare-fun m!2180249 () Bool)

(assert (=> bs!404267 m!2180249))

(declare-fun m!2180251 () Bool)

(assert (=> bs!404267 m!2180251))

(assert (=> b!1762763 d!538919))

(declare-fun d!538921 () Bool)

(declare-fun lt!681611 () Bool)

(declare-fun content!2804 (List!19465) (InoxSet Rule!6730))

(assert (=> d!538921 (= lt!681611 (select (content!2804 rules!3447) rule!422))))

(declare-fun e!1128364 () Bool)

(assert (=> d!538921 (= lt!681611 e!1128364)))

(declare-fun res!793670 () Bool)

(assert (=> d!538921 (=> (not res!793670) (not e!1128364))))

(assert (=> d!538921 (= res!793670 ((_ is Cons!19395) rules!3447))))

(assert (=> d!538921 (= (contains!3495 rules!3447 rule!422) lt!681611)))

(declare-fun b!1763400 () Bool)

(declare-fun e!1128363 () Bool)

(assert (=> b!1763400 (= e!1128364 e!1128363)))

(declare-fun res!793669 () Bool)

(assert (=> b!1763400 (=> res!793669 e!1128363)))

(assert (=> b!1763400 (= res!793669 (= (h!24796 rules!3447) rule!422))))

(declare-fun b!1763401 () Bool)

(assert (=> b!1763401 (= e!1128363 (contains!3495 (t!164354 rules!3447) rule!422))))

(assert (= (and d!538921 res!793670) b!1763400))

(assert (= (and b!1763400 (not res!793669)) b!1763401))

(declare-fun m!2180253 () Bool)

(assert (=> d!538921 m!2180253))

(declare-fun m!2180255 () Bool)

(assert (=> d!538921 m!2180255))

(declare-fun m!2180257 () Bool)

(assert (=> b!1763401 m!2180257))

(assert (=> b!1762764 d!538921))

(declare-fun d!538923 () Bool)

(assert (=> d!538923 (= (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) (seqFromList!2434 lt!681320)) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (seqFromList!2434 lt!681320)))))

(declare-fun b_lambda!57169 () Bool)

(assert (=> (not b_lambda!57169) (not d!538923)))

(declare-fun t!164398 () Bool)

(declare-fun tb!106347 () Bool)

(assert (=> (and b!1762759 (= (toValue!4988 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164398) tb!106347))

(declare-fun result!127922 () Bool)

(assert (=> tb!106347 (= result!127922 (inv!21 (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (seqFromList!2434 lt!681320))))))

(declare-fun m!2180259 () Bool)

(assert (=> tb!106347 m!2180259))

(assert (=> d!538923 t!164398))

(declare-fun b_and!133283 () Bool)

(assert (= b_and!133277 (and (=> t!164398 result!127922) b_and!133283)))

(declare-fun tb!106349 () Bool)

(declare-fun t!164400 () Bool)

(assert (=> (and b!1762757 (= (toValue!4988 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164400) tb!106349))

(declare-fun result!127924 () Bool)

(assert (= result!127924 result!127922))

(assert (=> d!538923 t!164400))

(declare-fun b_and!133285 () Bool)

(assert (= b_and!133279 (and (=> t!164400 result!127924) b_and!133285)))

(declare-fun t!164402 () Bool)

(declare-fun tb!106351 () Bool)

(assert (=> (and b!1762758 (= (toValue!4988 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164402) tb!106351))

(declare-fun result!127926 () Bool)

(assert (= result!127926 result!127922))

(assert (=> d!538923 t!164402))

(declare-fun b_and!133287 () Bool)

(assert (= b_and!133281 (and (=> t!164402 result!127926) b_and!133287)))

(assert (=> d!538923 m!2179473))

(declare-fun m!2180261 () Bool)

(assert (=> d!538923 m!2180261))

(assert (=> b!1762762 d!538923))

(declare-fun d!538925 () Bool)

(assert (=> d!538925 (= (_2!10905 lt!681330) lt!681335)))

(declare-fun lt!681614 () Unit!33579)

(declare-fun choose!10930 (List!19464 List!19464 List!19464 List!19464 List!19464) Unit!33579)

(assert (=> d!538925 (= lt!681614 (choose!10930 lt!681320 (_2!10905 lt!681330) lt!681320 lt!681335 lt!681329))))

(assert (=> d!538925 (isPrefix!1705 lt!681320 lt!681329)))

(assert (=> d!538925 (= (lemmaSamePrefixThenSameSuffix!816 lt!681320 (_2!10905 lt!681330) lt!681320 lt!681335 lt!681329) lt!681614)))

(declare-fun bs!404268 () Bool)

(assert (= bs!404268 d!538925))

(declare-fun m!2180263 () Bool)

(assert (=> bs!404268 m!2180263))

(assert (=> bs!404268 m!2179387))

(assert (=> b!1762762 d!538925))

(declare-fun d!538927 () Bool)

(assert (=> d!538927 (= (maxPrefixOneRule!1017 thiss!24550 (rule!5485 (_1!10905 lt!681330)) lt!681329) (Some!3951 (tuple2!19007 (Token!6497 (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) (seqFromList!2434 lt!681320)) (rule!5485 (_1!10905 lt!681330)) (size!15408 lt!681320) lt!681320) (_2!10905 lt!681330))))))

(declare-fun lt!681617 () Unit!33579)

(declare-fun choose!10931 (LexerInterface!3094 List!19465 List!19464 List!19464 List!19464 Rule!6730) Unit!33579)

(assert (=> d!538927 (= lt!681617 (choose!10931 thiss!24550 rules!3447 lt!681320 lt!681329 (_2!10905 lt!681330) (rule!5485 (_1!10905 lt!681330))))))

(assert (=> d!538927 (not (isEmpty!12241 rules!3447))))

(assert (=> d!538927 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!395 thiss!24550 rules!3447 lt!681320 lt!681329 (_2!10905 lt!681330) (rule!5485 (_1!10905 lt!681330))) lt!681617)))

(declare-fun bs!404269 () Bool)

(assert (= bs!404269 d!538927))

(declare-fun m!2180265 () Bool)

(assert (=> bs!404269 m!2180265))

(assert (=> bs!404269 m!2179367))

(assert (=> bs!404269 m!2179473))

(assert (=> bs!404269 m!2179473))

(assert (=> bs!404269 m!2179477))

(assert (=> bs!404269 m!2179475))

(assert (=> bs!404269 m!2179469))

(assert (=> b!1762762 d!538927))

(declare-fun d!538929 () Bool)

(declare-fun lt!681620 () Int)

(assert (=> d!538929 (>= lt!681620 0)))

(declare-fun e!1128368 () Int)

(assert (=> d!538929 (= lt!681620 e!1128368)))

(declare-fun c!287371 () Bool)

(assert (=> d!538929 (= c!287371 ((_ is Nil!19394) lt!681320))))

(assert (=> d!538929 (= (size!15408 lt!681320) lt!681620)))

(declare-fun b!1763406 () Bool)

(assert (=> b!1763406 (= e!1128368 0)))

(declare-fun b!1763407 () Bool)

(assert (=> b!1763407 (= e!1128368 (+ 1 (size!15408 (t!164353 lt!681320))))))

(assert (= (and d!538929 c!287371) b!1763406))

(assert (= (and d!538929 (not c!287371)) b!1763407))

(declare-fun m!2180267 () Bool)

(assert (=> b!1763407 m!2180267))

(assert (=> b!1762762 d!538929))

(declare-fun d!538931 () Bool)

(declare-fun lt!681623 () List!19464)

(assert (=> d!538931 (= (++!5289 lt!681320 lt!681623) lt!681329)))

(declare-fun e!1128371 () List!19464)

(assert (=> d!538931 (= lt!681623 e!1128371)))

(declare-fun c!287374 () Bool)

(assert (=> d!538931 (= c!287374 ((_ is Cons!19394) lt!681320))))

(assert (=> d!538931 (>= (size!15408 lt!681329) (size!15408 lt!681320))))

(assert (=> d!538931 (= (getSuffix!872 lt!681329 lt!681320) lt!681623)))

(declare-fun b!1763412 () Bool)

(assert (=> b!1763412 (= e!1128371 (getSuffix!872 (tail!2637 lt!681329) (t!164353 lt!681320)))))

(declare-fun b!1763413 () Bool)

(assert (=> b!1763413 (= e!1128371 lt!681329)))

(assert (= (and d!538931 c!287374) b!1763412))

(assert (= (and d!538931 (not c!287374)) b!1763413))

(declare-fun m!2180269 () Bool)

(assert (=> d!538931 m!2180269))

(assert (=> d!538931 m!2179789))

(assert (=> d!538931 m!2179469))

(assert (=> b!1763412 m!2179783))

(assert (=> b!1763412 m!2179783))

(declare-fun m!2180271 () Bool)

(assert (=> b!1763412 m!2180271))

(assert (=> b!1762762 d!538931))

(declare-fun b!1763432 () Bool)

(declare-fun e!1128381 () Bool)

(declare-fun e!1128382 () Bool)

(assert (=> b!1763432 (= e!1128381 e!1128382)))

(declare-fun res!793686 () Bool)

(assert (=> b!1763432 (=> (not res!793686) (not e!1128382))))

(declare-fun lt!681636 () Option!3952)

(assert (=> b!1763432 (= res!793686 (matchR!2266 (regex!3465 (rule!5485 (_1!10905 lt!681330))) (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681636))))))))

(declare-fun d!538933 () Bool)

(assert (=> d!538933 e!1128381))

(declare-fun res!793688 () Bool)

(assert (=> d!538933 (=> res!793688 e!1128381)))

(assert (=> d!538933 (= res!793688 (isEmpty!12244 lt!681636))))

(declare-fun e!1128380 () Option!3952)

(assert (=> d!538933 (= lt!681636 e!1128380)))

(declare-fun c!287377 () Bool)

(declare-datatypes ((tuple2!19014 0))(
  ( (tuple2!19015 (_1!10909 List!19464) (_2!10909 List!19464)) )
))
(declare-fun lt!681634 () tuple2!19014)

(assert (=> d!538933 (= c!287377 (isEmpty!12240 (_1!10909 lt!681634)))))

(declare-fun findLongestMatch!368 (Regex!4793 List!19464) tuple2!19014)

(assert (=> d!538933 (= lt!681634 (findLongestMatch!368 (regex!3465 (rule!5485 (_1!10905 lt!681330))) lt!681329))))

(assert (=> d!538933 (ruleValid!963 thiss!24550 (rule!5485 (_1!10905 lt!681330)))))

(assert (=> d!538933 (= (maxPrefixOneRule!1017 thiss!24550 (rule!5485 (_1!10905 lt!681330)) lt!681329) lt!681636)))

(declare-fun b!1763433 () Bool)

(assert (=> b!1763433 (= e!1128380 None!3951)))

(declare-fun b!1763434 () Bool)

(declare-fun res!793687 () Bool)

(assert (=> b!1763434 (=> (not res!793687) (not e!1128382))))

(assert (=> b!1763434 (= res!793687 (= (++!5289 (list!7871 (charsOf!2114 (_1!10905 (get!5902 lt!681636)))) (_2!10905 (get!5902 lt!681636))) lt!681329))))

(declare-fun b!1763435 () Bool)

(declare-fun res!793690 () Bool)

(assert (=> b!1763435 (=> (not res!793690) (not e!1128382))))

(assert (=> b!1763435 (= res!793690 (= (value!108425 (_1!10905 (get!5902 lt!681636))) (apply!5265 (transformation!3465 (rule!5485 (_1!10905 (get!5902 lt!681636)))) (seqFromList!2434 (originalCharacters!4279 (_1!10905 (get!5902 lt!681636)))))))))

(declare-fun b!1763436 () Bool)

(declare-fun e!1128383 () Bool)

(declare-fun findLongestMatchInner!441 (Regex!4793 List!19464 Int List!19464 List!19464 Int) tuple2!19014)

(assert (=> b!1763436 (= e!1128383 (matchR!2266 (regex!3465 (rule!5485 (_1!10905 lt!681330))) (_1!10909 (findLongestMatchInner!441 (regex!3465 (rule!5485 (_1!10905 lt!681330))) Nil!19394 (size!15408 Nil!19394) lt!681329 lt!681329 (size!15408 lt!681329)))))))

(declare-fun b!1763437 () Bool)

(assert (=> b!1763437 (= e!1128380 (Some!3951 (tuple2!19007 (Token!6497 (apply!5265 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) (seqFromList!2434 (_1!10909 lt!681634))) (rule!5485 (_1!10905 lt!681330)) (size!15409 (seqFromList!2434 (_1!10909 lt!681634))) (_1!10909 lt!681634)) (_2!10909 lt!681634))))))

(declare-fun lt!681638 () Unit!33579)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!425 (Regex!4793 List!19464) Unit!33579)

(assert (=> b!1763437 (= lt!681638 (longestMatchIsAcceptedByMatchOrIsEmpty!425 (regex!3465 (rule!5485 (_1!10905 lt!681330))) lt!681329))))

(declare-fun res!793689 () Bool)

(assert (=> b!1763437 (= res!793689 (isEmpty!12240 (_1!10909 (findLongestMatchInner!441 (regex!3465 (rule!5485 (_1!10905 lt!681330))) Nil!19394 (size!15408 Nil!19394) lt!681329 lt!681329 (size!15408 lt!681329)))))))

(assert (=> b!1763437 (=> res!793689 e!1128383)))

(assert (=> b!1763437 e!1128383))

(declare-fun lt!681637 () Unit!33579)

(assert (=> b!1763437 (= lt!681637 lt!681638)))

(declare-fun lt!681635 () Unit!33579)

(assert (=> b!1763437 (= lt!681635 (lemmaSemiInverse!603 (transformation!3465 (rule!5485 (_1!10905 lt!681330))) (seqFromList!2434 (_1!10909 lt!681634))))))

(declare-fun b!1763438 () Bool)

(declare-fun res!793685 () Bool)

(assert (=> b!1763438 (=> (not res!793685) (not e!1128382))))

(assert (=> b!1763438 (= res!793685 (= (rule!5485 (_1!10905 (get!5902 lt!681636))) (rule!5485 (_1!10905 lt!681330))))))

(declare-fun b!1763439 () Bool)

(declare-fun res!793691 () Bool)

(assert (=> b!1763439 (=> (not res!793691) (not e!1128382))))

(assert (=> b!1763439 (= res!793691 (< (size!15408 (_2!10905 (get!5902 lt!681636))) (size!15408 lt!681329)))))

(declare-fun b!1763440 () Bool)

(assert (=> b!1763440 (= e!1128382 (= (size!15407 (_1!10905 (get!5902 lt!681636))) (size!15408 (originalCharacters!4279 (_1!10905 (get!5902 lt!681636))))))))

(assert (= (and d!538933 c!287377) b!1763433))

(assert (= (and d!538933 (not c!287377)) b!1763437))

(assert (= (and b!1763437 (not res!793689)) b!1763436))

(assert (= (and d!538933 (not res!793688)) b!1763432))

(assert (= (and b!1763432 res!793686) b!1763434))

(assert (= (and b!1763434 res!793687) b!1763439))

(assert (= (and b!1763439 res!793691) b!1763438))

(assert (= (and b!1763438 res!793685) b!1763435))

(assert (= (and b!1763435 res!793690) b!1763440))

(declare-fun m!2180273 () Bool)

(assert (=> b!1763434 m!2180273))

(declare-fun m!2180275 () Bool)

(assert (=> b!1763434 m!2180275))

(assert (=> b!1763434 m!2180275))

(declare-fun m!2180277 () Bool)

(assert (=> b!1763434 m!2180277))

(assert (=> b!1763434 m!2180277))

(declare-fun m!2180279 () Bool)

(assert (=> b!1763434 m!2180279))

(declare-fun m!2180281 () Bool)

(assert (=> d!538933 m!2180281))

(declare-fun m!2180283 () Bool)

(assert (=> d!538933 m!2180283))

(declare-fun m!2180285 () Bool)

(assert (=> d!538933 m!2180285))

(declare-fun m!2180287 () Bool)

(assert (=> d!538933 m!2180287))

(declare-fun m!2180289 () Bool)

(assert (=> b!1763436 m!2180289))

(assert (=> b!1763436 m!2179789))

(assert (=> b!1763436 m!2180289))

(assert (=> b!1763436 m!2179789))

(declare-fun m!2180291 () Bool)

(assert (=> b!1763436 m!2180291))

(declare-fun m!2180293 () Bool)

(assert (=> b!1763436 m!2180293))

(assert (=> b!1763438 m!2180273))

(assert (=> b!1763439 m!2180273))

(declare-fun m!2180295 () Bool)

(assert (=> b!1763439 m!2180295))

(assert (=> b!1763439 m!2179789))

(declare-fun m!2180297 () Bool)

(assert (=> b!1763437 m!2180297))

(declare-fun m!2180299 () Bool)

(assert (=> b!1763437 m!2180299))

(declare-fun m!2180301 () Bool)

(assert (=> b!1763437 m!2180301))

(assert (=> b!1763437 m!2180297))

(assert (=> b!1763437 m!2180289))

(assert (=> b!1763437 m!2179789))

(assert (=> b!1763437 m!2180291))

(declare-fun m!2180303 () Bool)

(assert (=> b!1763437 m!2180303))

(assert (=> b!1763437 m!2179789))

(assert (=> b!1763437 m!2180289))

(assert (=> b!1763437 m!2180297))

(declare-fun m!2180305 () Bool)

(assert (=> b!1763437 m!2180305))

(assert (=> b!1763437 m!2180297))

(declare-fun m!2180307 () Bool)

(assert (=> b!1763437 m!2180307))

(assert (=> b!1763435 m!2180273))

(declare-fun m!2180309 () Bool)

(assert (=> b!1763435 m!2180309))

(assert (=> b!1763435 m!2180309))

(declare-fun m!2180311 () Bool)

(assert (=> b!1763435 m!2180311))

(assert (=> b!1763440 m!2180273))

(declare-fun m!2180313 () Bool)

(assert (=> b!1763440 m!2180313))

(assert (=> b!1763432 m!2180273))

(assert (=> b!1763432 m!2180275))

(assert (=> b!1763432 m!2180275))

(assert (=> b!1763432 m!2180277))

(assert (=> b!1763432 m!2180277))

(declare-fun m!2180315 () Bool)

(assert (=> b!1763432 m!2180315))

(assert (=> b!1762762 d!538933))

(declare-fun d!538935 () Bool)

(assert (=> d!538935 (= (seqFromList!2434 lt!681320) (fromListB!1112 lt!681320))))

(declare-fun bs!404270 () Bool)

(assert (= bs!404270 d!538935))

(declare-fun m!2180317 () Bool)

(assert (=> bs!404270 m!2180317))

(assert (=> b!1762762 d!538935))

(declare-fun d!538937 () Bool)

(declare-fun e!1128385 () Bool)

(assert (=> d!538937 e!1128385))

(declare-fun c!287379 () Bool)

(assert (=> d!538937 (= c!287379 ((_ is EmptyExpr!4793) (regex!3465 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun lt!681639 () Bool)

(declare-fun e!1128389 () Bool)

(assert (=> d!538937 (= lt!681639 e!1128389)))

(declare-fun c!287380 () Bool)

(assert (=> d!538937 (= c!287380 (isEmpty!12240 lt!681320))))

(assert (=> d!538937 (validRegex!1937 (regex!3465 (rule!5485 (_1!10905 lt!681330))))))

(assert (=> d!538937 (= (matchR!2266 (regex!3465 (rule!5485 (_1!10905 lt!681330))) lt!681320) lt!681639)))

(declare-fun b!1763441 () Bool)

(declare-fun res!793694 () Bool)

(declare-fun e!1128388 () Bool)

(assert (=> b!1763441 (=> (not res!793694) (not e!1128388))))

(declare-fun call!110816 () Bool)

(assert (=> b!1763441 (= res!793694 (not call!110816))))

(declare-fun b!1763442 () Bool)

(declare-fun res!793696 () Bool)

(declare-fun e!1128387 () Bool)

(assert (=> b!1763442 (=> res!793696 e!1128387)))

(assert (=> b!1763442 (= res!793696 (not (isEmpty!12240 (tail!2637 lt!681320))))))

(declare-fun b!1763443 () Bool)

(declare-fun e!1128384 () Bool)

(assert (=> b!1763443 (= e!1128385 e!1128384)))

(declare-fun c!287378 () Bool)

(assert (=> b!1763443 (= c!287378 ((_ is EmptyLang!4793) (regex!3465 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun b!1763444 () Bool)

(assert (=> b!1763444 (= e!1128384 (not lt!681639))))

(declare-fun b!1763445 () Bool)

(assert (=> b!1763445 (= e!1128389 (matchR!2266 (derivativeStep!1232 (regex!3465 (rule!5485 (_1!10905 lt!681330))) (head!4082 lt!681320)) (tail!2637 lt!681320)))))

(declare-fun b!1763446 () Bool)

(declare-fun res!793697 () Bool)

(declare-fun e!1128390 () Bool)

(assert (=> b!1763446 (=> res!793697 e!1128390)))

(assert (=> b!1763446 (= res!793697 (not ((_ is ElementMatch!4793) (regex!3465 (rule!5485 (_1!10905 lt!681330))))))))

(assert (=> b!1763446 (= e!1128384 e!1128390)))

(declare-fun b!1763447 () Bool)

(declare-fun res!793699 () Bool)

(assert (=> b!1763447 (=> (not res!793699) (not e!1128388))))

(assert (=> b!1763447 (= res!793699 (isEmpty!12240 (tail!2637 lt!681320)))))

(declare-fun b!1763448 () Bool)

(assert (=> b!1763448 (= e!1128385 (= lt!681639 call!110816))))

(declare-fun b!1763449 () Bool)

(declare-fun e!1128386 () Bool)

(assert (=> b!1763449 (= e!1128386 e!1128387)))

(declare-fun res!793695 () Bool)

(assert (=> b!1763449 (=> res!793695 e!1128387)))

(assert (=> b!1763449 (= res!793695 call!110816)))

(declare-fun b!1763450 () Bool)

(assert (=> b!1763450 (= e!1128388 (= (head!4082 lt!681320) (c!287262 (regex!3465 (rule!5485 (_1!10905 lt!681330))))))))

(declare-fun b!1763451 () Bool)

(declare-fun res!793692 () Bool)

(assert (=> b!1763451 (=> res!793692 e!1128390)))

(assert (=> b!1763451 (= res!793692 e!1128388)))

(declare-fun res!793693 () Bool)

(assert (=> b!1763451 (=> (not res!793693) (not e!1128388))))

(assert (=> b!1763451 (= res!793693 lt!681639)))

(declare-fun b!1763452 () Bool)

(assert (=> b!1763452 (= e!1128390 e!1128386)))

(declare-fun res!793698 () Bool)

(assert (=> b!1763452 (=> (not res!793698) (not e!1128386))))

(assert (=> b!1763452 (= res!793698 (not lt!681639))))

(declare-fun b!1763453 () Bool)

(assert (=> b!1763453 (= e!1128389 (nullable!1463 (regex!3465 (rule!5485 (_1!10905 lt!681330)))))))

(declare-fun b!1763454 () Bool)

(assert (=> b!1763454 (= e!1128387 (not (= (head!4082 lt!681320) (c!287262 (regex!3465 (rule!5485 (_1!10905 lt!681330)))))))))

(declare-fun bm!110811 () Bool)

(assert (=> bm!110811 (= call!110816 (isEmpty!12240 lt!681320))))

(assert (= (and d!538937 c!287380) b!1763453))

(assert (= (and d!538937 (not c!287380)) b!1763445))

(assert (= (and d!538937 c!287379) b!1763448))

(assert (= (and d!538937 (not c!287379)) b!1763443))

(assert (= (and b!1763443 c!287378) b!1763444))

(assert (= (and b!1763443 (not c!287378)) b!1763446))

(assert (= (and b!1763446 (not res!793697)) b!1763451))

(assert (= (and b!1763451 res!793693) b!1763441))

(assert (= (and b!1763441 res!793694) b!1763447))

(assert (= (and b!1763447 res!793699) b!1763450))

(assert (= (and b!1763451 (not res!793692)) b!1763452))

(assert (= (and b!1763452 res!793698) b!1763449))

(assert (= (and b!1763449 (not res!793695)) b!1763442))

(assert (= (and b!1763442 (not res!793696)) b!1763454))

(assert (= (or b!1763448 b!1763441 b!1763449) bm!110811))

(declare-fun m!2180319 () Bool)

(assert (=> bm!110811 m!2180319))

(assert (=> d!538937 m!2180319))

(declare-fun m!2180321 () Bool)

(assert (=> d!538937 m!2180321))

(assert (=> b!1763445 m!2179961))

(assert (=> b!1763445 m!2179961))

(declare-fun m!2180323 () Bool)

(assert (=> b!1763445 m!2180323))

(assert (=> b!1763445 m!2179957))

(assert (=> b!1763445 m!2180323))

(assert (=> b!1763445 m!2179957))

(declare-fun m!2180325 () Bool)

(assert (=> b!1763445 m!2180325))

(assert (=> b!1763442 m!2179957))

(assert (=> b!1763442 m!2179957))

(declare-fun m!2180327 () Bool)

(assert (=> b!1763442 m!2180327))

(assert (=> b!1763447 m!2179957))

(assert (=> b!1763447 m!2179957))

(assert (=> b!1763447 m!2180327))

(assert (=> b!1763454 m!2179961))

(declare-fun m!2180329 () Bool)

(assert (=> b!1763453 m!2180329))

(assert (=> b!1763450 m!2179961))

(assert (=> b!1762771 d!538937))

(declare-fun d!538939 () Bool)

(assert (=> d!538939 (= (isEmpty!12240 suffix!1421) ((_ is Nil!19394) suffix!1421))))

(assert (=> b!1762772 d!538939))

(declare-fun d!538941 () Bool)

(assert (=> d!538941 (= (inv!25181 (tag!3833 (h!24796 rules!3447))) (= (mod (str.len (value!108424 (tag!3833 (h!24796 rules!3447)))) 2) 0))))

(assert (=> b!1762770 d!538941))

(declare-fun d!538943 () Bool)

(declare-fun res!793700 () Bool)

(declare-fun e!1128391 () Bool)

(assert (=> d!538943 (=> (not res!793700) (not e!1128391))))

(assert (=> d!538943 (= res!793700 (semiInverseModEq!1378 (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (h!24796 rules!3447)))))))

(assert (=> d!538943 (= (inv!25186 (transformation!3465 (h!24796 rules!3447))) e!1128391)))

(declare-fun b!1763455 () Bool)

(assert (=> b!1763455 (= e!1128391 (equivClasses!1319 (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (h!24796 rules!3447)))))))

(assert (= (and d!538943 res!793700) b!1763455))

(declare-fun m!2180331 () Bool)

(assert (=> d!538943 m!2180331))

(declare-fun m!2180333 () Bool)

(assert (=> b!1763455 m!2180333))

(assert (=> b!1762770 d!538943))

(declare-fun d!538945 () Bool)

(declare-fun choose!10932 (Int) Bool)

(assert (=> d!538945 (= (Forall!832 lambda!70212) (choose!10932 lambda!70212))))

(declare-fun bs!404271 () Bool)

(assert (= bs!404271 d!538945))

(declare-fun m!2180335 () Bool)

(assert (=> bs!404271 m!2180335))

(assert (=> b!1762769 d!538945))

(declare-fun d!538947 () Bool)

(declare-fun e!1128394 () Bool)

(assert (=> d!538947 e!1128394))

(declare-fun res!793703 () Bool)

(assert (=> d!538947 (=> (not res!793703) (not e!1128394))))

(assert (=> d!538947 (= res!793703 (semiInverseModEq!1378 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))))))

(declare-fun Unit!33588 () Unit!33579)

(assert (=> d!538947 (= (lemmaInv!664 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) Unit!33588)))

(declare-fun b!1763458 () Bool)

(assert (=> b!1763458 (= e!1128394 (equivClasses!1319 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))))))

(assert (= (and d!538947 res!793703) b!1763458))

(declare-fun m!2180337 () Bool)

(assert (=> d!538947 m!2180337))

(declare-fun m!2180339 () Bool)

(assert (=> b!1763458 m!2180339))

(assert (=> b!1762769 d!538947))

(declare-fun d!538949 () Bool)

(assert (=> d!538949 (= (inv!25181 (tag!3833 rule!422)) (= (mod (str.len (value!108424 (tag!3833 rule!422))) 2) 0))))

(assert (=> b!1762767 d!538949))

(declare-fun d!538951 () Bool)

(declare-fun res!793704 () Bool)

(declare-fun e!1128395 () Bool)

(assert (=> d!538951 (=> (not res!793704) (not e!1128395))))

(assert (=> d!538951 (= res!793704 (semiInverseModEq!1378 (toChars!4847 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 rule!422))))))

(assert (=> d!538951 (= (inv!25186 (transformation!3465 rule!422)) e!1128395)))

(declare-fun b!1763459 () Bool)

(assert (=> b!1763459 (= e!1128395 (equivClasses!1319 (toChars!4847 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 rule!422))))))

(assert (= (and d!538951 res!793704) b!1763459))

(declare-fun m!2180341 () Bool)

(assert (=> d!538951 m!2180341))

(declare-fun m!2180343 () Bool)

(assert (=> b!1763459 m!2180343))

(assert (=> b!1762767 d!538951))

(declare-fun b!1763461 () Bool)

(declare-fun e!1128396 () List!19464)

(assert (=> b!1763461 (= e!1128396 (Cons!19394 (h!24795 lt!681333) (++!5289 (t!164353 lt!681333) Nil!19394)))))

(declare-fun b!1763460 () Bool)

(assert (=> b!1763460 (= e!1128396 Nil!19394)))

(declare-fun b!1763462 () Bool)

(declare-fun res!793706 () Bool)

(declare-fun e!1128397 () Bool)

(assert (=> b!1763462 (=> (not res!793706) (not e!1128397))))

(declare-fun lt!681640 () List!19464)

(assert (=> b!1763462 (= res!793706 (= (size!15408 lt!681640) (+ (size!15408 lt!681333) (size!15408 Nil!19394))))))

(declare-fun b!1763463 () Bool)

(assert (=> b!1763463 (= e!1128397 (or (not (= Nil!19394 Nil!19394)) (= lt!681640 lt!681333)))))

(declare-fun d!538953 () Bool)

(assert (=> d!538953 e!1128397))

(declare-fun res!793705 () Bool)

(assert (=> d!538953 (=> (not res!793705) (not e!1128397))))

(assert (=> d!538953 (= res!793705 (= (content!2803 lt!681640) ((_ map or) (content!2803 lt!681333) (content!2803 Nil!19394))))))

(assert (=> d!538953 (= lt!681640 e!1128396)))

(declare-fun c!287381 () Bool)

(assert (=> d!538953 (= c!287381 ((_ is Nil!19394) lt!681333))))

(assert (=> d!538953 (= (++!5289 lt!681333 Nil!19394) lt!681640)))

(assert (= (and d!538953 c!287381) b!1763460))

(assert (= (and d!538953 (not c!287381)) b!1763461))

(assert (= (and d!538953 res!793705) b!1763462))

(assert (= (and b!1763462 res!793706) b!1763463))

(declare-fun m!2180345 () Bool)

(assert (=> b!1763461 m!2180345))

(declare-fun m!2180347 () Bool)

(assert (=> b!1763462 m!2180347))

(assert (=> b!1763462 m!2179773))

(assert (=> b!1763462 m!2180289))

(declare-fun m!2180349 () Bool)

(assert (=> d!538953 m!2180349))

(assert (=> d!538953 m!2179779))

(declare-fun m!2180351 () Bool)

(assert (=> d!538953 m!2180351))

(assert (=> b!1762768 d!538953))

(declare-fun b!1763474 () Bool)

(declare-fun b_free!48727 () Bool)

(declare-fun b_next!49431 () Bool)

(assert (=> b!1763474 (= b_free!48727 (not b_next!49431))))

(declare-fun t!164405 () Bool)

(declare-fun tb!106353 () Bool)

(assert (=> (and b!1763474 (= (toValue!4988 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164405) tb!106353))

(declare-fun result!127930 () Bool)

(assert (= result!127930 result!127922))

(assert (=> d!538923 t!164405))

(declare-fun tb!106355 () Bool)

(declare-fun t!164407 () Bool)

(assert (=> (and b!1763474 (= (toValue!4988 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164407) tb!106355))

(declare-fun result!127932 () Bool)

(assert (= result!127932 result!127858))

(assert (=> d!538913 t!164407))

(assert (=> d!538769 t!164407))

(declare-fun tb!106357 () Bool)

(declare-fun t!164409 () Bool)

(assert (=> (and b!1763474 (= (toValue!4988 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164409) tb!106357))

(declare-fun result!127934 () Bool)

(assert (= result!127934 result!127916))

(assert (=> d!538917 t!164409))

(assert (=> d!538917 t!164407))

(assert (=> b!1762776 t!164407))

(declare-fun b_and!133289 () Bool)

(declare-fun tp!500627 () Bool)

(assert (=> b!1763474 (= tp!500627 (and (=> t!164407 result!127932) (=> t!164409 result!127934) (=> t!164405 result!127930) b_and!133289))))

(declare-fun b_free!48729 () Bool)

(declare-fun b_next!49433 () Bool)

(assert (=> b!1763474 (= b_free!48729 (not b_next!49433))))

(declare-fun t!164411 () Bool)

(declare-fun tb!106359 () Bool)

(assert (=> (and b!1763474 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164411) tb!106359))

(declare-fun result!127936 () Bool)

(assert (= result!127936 result!127850))

(assert (=> b!1762776 t!164411))

(declare-fun tb!106361 () Bool)

(declare-fun t!164413 () Bool)

(assert (=> (and b!1763474 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330))))) t!164413) tb!106361))

(declare-fun result!127938 () Bool)

(assert (= result!127938 result!127866))

(assert (=> b!1762780 t!164413))

(declare-fun t!164415 () Bool)

(declare-fun tb!106363 () Bool)

(assert (=> (and b!1763474 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 token!523)))) t!164415) tb!106363))

(declare-fun result!127940 () Bool)

(assert (= result!127940 result!127890))

(assert (=> d!538879 t!164415))

(assert (=> d!538769 t!164411))

(assert (=> d!538761 t!164413))

(assert (=> b!1763315 t!164415))

(declare-fun b_and!133291 () Bool)

(declare-fun tp!500629 () Bool)

(assert (=> b!1763474 (= tp!500629 (and (=> t!164413 result!127938) (=> t!164411 result!127936) (=> t!164415 result!127940) b_and!133291))))

(declare-fun e!1128409 () Bool)

(assert (=> b!1763474 (= e!1128409 (and tp!500627 tp!500629))))

(declare-fun tp!500628 () Bool)

(declare-fun e!1128408 () Bool)

(declare-fun b!1763473 () Bool)

(assert (=> b!1763473 (= e!1128408 (and tp!500628 (inv!25181 (tag!3833 (h!24796 (t!164354 rules!3447)))) (inv!25186 (transformation!3465 (h!24796 (t!164354 rules!3447)))) e!1128409))))

(declare-fun b!1763472 () Bool)

(declare-fun e!1128407 () Bool)

(declare-fun tp!500626 () Bool)

(assert (=> b!1763472 (= e!1128407 (and e!1128408 tp!500626))))

(assert (=> b!1762777 (= tp!500547 e!1128407)))

(assert (= b!1763473 b!1763474))

(assert (= b!1763472 b!1763473))

(assert (= (and b!1762777 ((_ is Cons!19395) (t!164354 rules!3447))) b!1763472))

(declare-fun m!2180353 () Bool)

(assert (=> b!1763473 m!2180353))

(declare-fun m!2180355 () Bool)

(assert (=> b!1763473 m!2180355))

(declare-fun b!1763479 () Bool)

(declare-fun e!1128412 () Bool)

(declare-fun tp!500632 () Bool)

(assert (=> b!1763479 (= e!1128412 (and tp_is_empty!7829 tp!500632))))

(assert (=> b!1762756 (= tp!500556 e!1128412)))

(assert (= (and b!1762756 ((_ is Cons!19394) (t!164353 suffix!1421))) b!1763479))

(declare-fun b!1763488 () Bool)

(declare-fun e!1128417 () Bool)

(declare-fun tp!500639 () Bool)

(declare-fun tp!500640 () Bool)

(assert (=> b!1763488 (= e!1128417 (and (inv!25188 (left!15525 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))) tp!500640 (inv!25188 (right!15855 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))) tp!500639))))

(declare-fun b!1763490 () Bool)

(declare-fun e!1128418 () Bool)

(declare-fun tp!500641 () Bool)

(assert (=> b!1763490 (= e!1128418 tp!500641)))

(declare-fun b!1763489 () Bool)

(declare-fun inv!25195 (IArray!12907) Bool)

(assert (=> b!1763489 (= e!1128417 (and (inv!25195 (xs!9327 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))) e!1128418))))

(assert (=> b!1762800 (= tp!500562 (and (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330))))) e!1128417))))

(assert (= (and b!1762800 ((_ is Node!6451) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))) b!1763488))

(assert (= b!1763489 b!1763490))

(assert (= (and b!1762800 ((_ is Leaf!9404) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (value!108425 (_1!10905 lt!681330)))))) b!1763489))

(declare-fun m!2180357 () Bool)

(assert (=> b!1763488 m!2180357))

(declare-fun m!2180359 () Bool)

(assert (=> b!1763488 m!2180359))

(declare-fun m!2180361 () Bool)

(assert (=> b!1763489 m!2180361))

(assert (=> b!1762800 m!2179353))

(declare-fun e!1128421 () Bool)

(assert (=> b!1762770 (= tp!500553 e!1128421)))

(declare-fun b!1763503 () Bool)

(declare-fun tp!500654 () Bool)

(assert (=> b!1763503 (= e!1128421 tp!500654)))

(declare-fun b!1763501 () Bool)

(assert (=> b!1763501 (= e!1128421 tp_is_empty!7829)))

(declare-fun b!1763502 () Bool)

(declare-fun tp!500655 () Bool)

(declare-fun tp!500656 () Bool)

(assert (=> b!1763502 (= e!1128421 (and tp!500655 tp!500656))))

(declare-fun b!1763504 () Bool)

(declare-fun tp!500653 () Bool)

(declare-fun tp!500652 () Bool)

(assert (=> b!1763504 (= e!1128421 (and tp!500653 tp!500652))))

(assert (= (and b!1762770 ((_ is ElementMatch!4793) (regex!3465 (h!24796 rules!3447)))) b!1763501))

(assert (= (and b!1762770 ((_ is Concat!8349) (regex!3465 (h!24796 rules!3447)))) b!1763502))

(assert (= (and b!1762770 ((_ is Star!4793) (regex!3465 (h!24796 rules!3447)))) b!1763503))

(assert (= (and b!1762770 ((_ is Union!4793) (regex!3465 (h!24796 rules!3447)))) b!1763504))

(declare-fun b!1763505 () Bool)

(declare-fun e!1128422 () Bool)

(declare-fun tp!500657 () Bool)

(assert (=> b!1763505 (= e!1128422 (and tp_is_empty!7829 tp!500657))))

(assert (=> b!1762779 (= tp!500550 e!1128422)))

(assert (= (and b!1762779 ((_ is Cons!19394) (originalCharacters!4279 token!523))) b!1763505))

(declare-fun e!1128423 () Bool)

(assert (=> b!1762774 (= tp!500551 e!1128423)))

(declare-fun b!1763508 () Bool)

(declare-fun tp!500660 () Bool)

(assert (=> b!1763508 (= e!1128423 tp!500660)))

(declare-fun b!1763506 () Bool)

(assert (=> b!1763506 (= e!1128423 tp_is_empty!7829)))

(declare-fun b!1763507 () Bool)

(declare-fun tp!500661 () Bool)

(declare-fun tp!500662 () Bool)

(assert (=> b!1763507 (= e!1128423 (and tp!500661 tp!500662))))

(declare-fun b!1763509 () Bool)

(declare-fun tp!500659 () Bool)

(declare-fun tp!500658 () Bool)

(assert (=> b!1763509 (= e!1128423 (and tp!500659 tp!500658))))

(assert (= (and b!1762774 ((_ is ElementMatch!4793) (regex!3465 (rule!5485 token!523)))) b!1763506))

(assert (= (and b!1762774 ((_ is Concat!8349) (regex!3465 (rule!5485 token!523)))) b!1763507))

(assert (= (and b!1762774 ((_ is Star!4793) (regex!3465 (rule!5485 token!523)))) b!1763508))

(assert (= (and b!1762774 ((_ is Union!4793) (regex!3465 (rule!5485 token!523)))) b!1763509))

(declare-fun tp!500663 () Bool)

(declare-fun tp!500664 () Bool)

(declare-fun b!1763510 () Bool)

(declare-fun e!1128424 () Bool)

(assert (=> b!1763510 (= e!1128424 (and (inv!25188 (left!15525 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))) tp!500664 (inv!25188 (right!15855 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))) tp!500663))))

(declare-fun b!1763512 () Bool)

(declare-fun e!1128425 () Bool)

(declare-fun tp!500665 () Bool)

(assert (=> b!1763512 (= e!1128425 tp!500665)))

(declare-fun b!1763511 () Bool)

(assert (=> b!1763511 (= e!1128424 (and (inv!25195 (xs!9327 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))) e!1128425))))

(assert (=> b!1762797 (= tp!500561 (and (inv!25188 (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314)))) e!1128424))))

(assert (= (and b!1762797 ((_ is Node!6451) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))) b!1763510))

(assert (= b!1763511 b!1763512))

(assert (= (and b!1762797 ((_ is Leaf!9404) (c!287263 (dynLambda!9350 (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) (dynLambda!9351 (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))) lt!681314))))) b!1763511))

(declare-fun m!2180363 () Bool)

(assert (=> b!1763510 m!2180363))

(declare-fun m!2180365 () Bool)

(assert (=> b!1763510 m!2180365))

(declare-fun m!2180367 () Bool)

(assert (=> b!1763511 m!2180367))

(assert (=> b!1762797 m!2179347))

(declare-fun e!1128426 () Bool)

(assert (=> b!1762767 (= tp!500557 e!1128426)))

(declare-fun b!1763515 () Bool)

(declare-fun tp!500668 () Bool)

(assert (=> b!1763515 (= e!1128426 tp!500668)))

(declare-fun b!1763513 () Bool)

(assert (=> b!1763513 (= e!1128426 tp_is_empty!7829)))

(declare-fun b!1763514 () Bool)

(declare-fun tp!500669 () Bool)

(declare-fun tp!500670 () Bool)

(assert (=> b!1763514 (= e!1128426 (and tp!500669 tp!500670))))

(declare-fun b!1763516 () Bool)

(declare-fun tp!500667 () Bool)

(declare-fun tp!500666 () Bool)

(assert (=> b!1763516 (= e!1128426 (and tp!500667 tp!500666))))

(assert (= (and b!1762767 ((_ is ElementMatch!4793) (regex!3465 rule!422))) b!1763513))

(assert (= (and b!1762767 ((_ is Concat!8349) (regex!3465 rule!422))) b!1763514))

(assert (= (and b!1762767 ((_ is Star!4793) (regex!3465 rule!422))) b!1763515))

(assert (= (and b!1762767 ((_ is Union!4793) (regex!3465 rule!422))) b!1763516))

(declare-fun b_lambda!57171 () Bool)

(assert (= b_lambda!57121 (or (and b!1762759 b_free!48711 (= (toValue!4988 (transformation!3465 (rule!5485 token!523))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762757 b_free!48715 (= (toValue!4988 (transformation!3465 (h!24796 rules!3447))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762758 b_free!48719 (= (toValue!4988 (transformation!3465 rule!422)) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1763474 b_free!48727 (= (toValue!4988 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toValue!4988 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) b_lambda!57171)))

(declare-fun b_lambda!57173 () Bool)

(assert (= b_lambda!57149 (or (and b!1762759 b_free!48713) (and b!1762757 b_free!48717 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) (and b!1762758 b_free!48721 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) (and b!1763474 b_free!48729 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) b_lambda!57173)))

(declare-fun b_lambda!57175 () Bool)

(assert (= b_lambda!57123 (or (and b!1762759 b_free!48713 (= (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762757 b_free!48717 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762758 b_free!48721 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1763474 b_free!48729 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) b_lambda!57175)))

(declare-fun b_lambda!57177 () Bool)

(assert (= b_lambda!57119 (or (and b!1762759 b_free!48713 (= (toChars!4847 (transformation!3465 (rule!5485 token!523))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762757 b_free!48717 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1762758 b_free!48721 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) (and b!1763474 b_free!48729 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 (_1!10905 lt!681330)))))) b_lambda!57177)))

(declare-fun b_lambda!57179 () Bool)

(assert (= b_lambda!57151 (or (and b!1762759 b_free!48713) (and b!1762757 b_free!48717 (= (toChars!4847 (transformation!3465 (h!24796 rules!3447))) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) (and b!1762758 b_free!48721 (= (toChars!4847 (transformation!3465 rule!422)) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) (and b!1763474 b_free!48729 (= (toChars!4847 (transformation!3465 (h!24796 (t!164354 rules!3447)))) (toChars!4847 (transformation!3465 (rule!5485 token!523))))) b_lambda!57179)))

(check-sat (not b!1763207) (not b_lambda!57163) (not d!538931) (not d!538925) (not d!538855) (not b!1763412) b_and!133287 (not d!538917) (not b!1763316) (not b!1763489) (not b!1763105) (not b!1763300) (not b!1763461) (not b!1763509) (not tb!106323) (not b!1763294) (not b_lambda!57139) (not b!1763511) (not b!1763253) (not d!538953) (not d!538849) (not b!1763432) (not b!1763503) (not b!1763304) (not b!1762800) (not b!1763214) (not b!1763298) (not b_next!49433) (not b!1763081) (not b!1763078) b_and!133289 (not b!1763213) (not d!538911) (not d!538883) (not b!1763435) (not b!1763459) (not b!1763289) (not b!1763199) (not d!538875) (not b!1763505) (not d!538825) (not b!1763063) (not b!1763438) (not b!1763434) (not b!1763208) (not b!1763079) (not b!1763292) (not b!1763104) (not d!538799) (not b!1763092) (not b!1763120) (not b!1763401) (not b!1763458) (not b!1763479) (not b!1763504) (not b!1763437) b_and!133259 (not b_next!49425) (not b!1763515) (not bm!110805) (not b!1762990) (not b!1763378) (not b!1763299) (not b_lambda!57173) (not d!538935) (not b_next!49417) (not b!1763290) (not b!1763407) (not b_next!49431) (not b!1763507) (not d!538865) (not b!1762986) (not b!1763296) (not b!1763091) (not b!1763203) (not d!538765) (not b_lambda!57169) (not b_next!49423) (not b!1763436) (not b!1763358) (not b!1763252) (not b!1763029) (not bm!110810) (not b!1763454) (not d!538769) (not b!1763514) (not b!1763440) b_and!133255 (not b!1763062) (not b!1763445) (not b!1763453) (not b!1763245) (not b!1763291) (not b!1763261) (not b!1763059) (not d!538915) (not b!1763286) (not b!1763259) (not b!1762797) (not d!538947) (not b_next!49421) (not d!538891) b_and!133285 (not b!1763051) (not b_next!49419) (not d!538919) (not b!1763297) (not d!538767) (not d!538807) (not b!1763490) (not b!1763118) (not b!1763198) (not b_lambda!57171) (not b_lambda!57141) (not b!1762981) (not d!538951) (not d!538879) (not b!1763260) (not d!538873) (not tb!106347) (not b!1762978) (not b!1762983) (not d!538819) (not b!1763508) (not b!1763301) (not b!1763249) (not d!538853) (not d!538921) (not d!538857) (not b!1763246) (not d!538937) (not b!1763056) (not b!1763472) b_and!133291 (not b_lambda!57165) (not bm!110811) (not b!1763455) (not b!1763502) (not bm!110801) (not b!1763197) (not b!1763510) (not b!1763049) (not b!1763379) (not b!1763488) (not d!538813) (not b_next!49415) (not b!1763247) tp_is_empty!7829 (not b!1763293) (not b!1763251) (not b!1763248) (not b!1763462) (not d!538943) (not b!1763054) (not b!1763447) (not b_lambda!57177) (not d!538945) (not d!538773) (not d!538761) (not b!1763047) (not d!538847) (not b!1763122) b_and!133283 (not b!1762989) (not d!538733) (not d!538933) (not b!1763439) (not b!1763315) (not b!1763285) (not tb!106341) (not b!1763473) (not d!538927) (not b_lambda!57143) (not bm!110808) (not b!1763202) (not b!1763206) (not b!1763512) (not b!1763074) (not d!538877) (not d!538905) (not b_lambda!57179) (not b_lambda!57175) (not d!538821) b_and!133257 (not b!1763442) (not d!538809) (not b_lambda!57167) (not d!538759) (not d!538907) (not d!538897) (not b!1763103) (not b!1763357) (not b!1763450) (not b!1763516) (not d!538795))
(check-sat b_and!133287 (not b_next!49433) b_and!133289 (not b_next!49423) b_and!133255 b_and!133291 (not b_next!49415) b_and!133283 b_and!133257 b_and!133259 (not b_next!49425) (not b_next!49417) (not b_next!49431) (not b_next!49421) b_and!133285 (not b_next!49419))
