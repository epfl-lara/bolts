; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26946 () Bool)

(assert start!26946)

(declare-fun b!253297 () Bool)

(declare-fun b_free!9409 () Bool)

(declare-fun b_next!9409 () Bool)

(assert (=> b!253297 (= b_free!9409 (not b_next!9409))))

(declare-fun tp!97618 () Bool)

(declare-fun b_and!19253 () Bool)

(assert (=> b!253297 (= tp!97618 b_and!19253)))

(declare-fun b_free!9411 () Bool)

(declare-fun b_next!9411 () Bool)

(assert (=> b!253297 (= b_free!9411 (not b_next!9411))))

(declare-fun tp!97625 () Bool)

(declare-fun b_and!19255 () Bool)

(assert (=> b!253297 (= tp!97625 b_and!19255)))

(declare-fun b!253304 () Bool)

(declare-fun b_free!9413 () Bool)

(declare-fun b_next!9413 () Bool)

(assert (=> b!253304 (= b_free!9413 (not b_next!9413))))

(declare-fun tp!97620 () Bool)

(declare-fun b_and!19257 () Bool)

(assert (=> b!253304 (= tp!97620 b_and!19257)))

(declare-fun b_free!9415 () Bool)

(declare-fun b_next!9415 () Bool)

(assert (=> b!253304 (= b_free!9415 (not b_next!9415))))

(declare-fun tp!97623 () Bool)

(declare-fun b_and!19259 () Bool)

(assert (=> b!253304 (= tp!97623 b_and!19259)))

(declare-fun b!253302 () Bool)

(declare-fun b_free!9417 () Bool)

(declare-fun b_next!9417 () Bool)

(assert (=> b!253302 (= b_free!9417 (not b_next!9417))))

(declare-fun tp!97629 () Bool)

(declare-fun b_and!19261 () Bool)

(assert (=> b!253302 (= tp!97629 b_and!19261)))

(declare-fun b_free!9419 () Bool)

(declare-fun b_next!9419 () Bool)

(assert (=> b!253302 (= b_free!9419 (not b_next!9419))))

(declare-fun tp!97622 () Bool)

(declare-fun b_and!19263 () Bool)

(assert (=> b!253302 (= tp!97622 b_and!19263)))

(declare-fun b!253294 () Bool)

(declare-fun res!117341 () Bool)

(declare-fun e!157380 () Bool)

(assert (=> b!253294 (=> (not res!117341) (not e!157380))))

(declare-datatypes ((List!3705 0))(
  ( (Nil!3695) (Cons!3695 (h!9092 (_ BitVec 16)) (t!35875 List!3705)) )
))
(declare-datatypes ((TokenValue!725 0))(
  ( (FloatLiteralValue!1450 (text!5520 List!3705)) (TokenValueExt!724 (__x!2937 Int)) (Broken!3625 (value!24325 List!3705)) (Object!734) (End!725) (Def!725) (Underscore!725) (Match!725) (Else!725) (Error!725) (Case!725) (If!725) (Extends!725) (Abstract!725) (Class!725) (Val!725) (DelimiterValue!1450 (del!785 List!3705)) (KeywordValue!731 (value!24326 List!3705)) (CommentValue!1450 (value!24327 List!3705)) (WhitespaceValue!1450 (value!24328 List!3705)) (IndentationValue!725 (value!24329 List!3705)) (String!4704) (Int32!725) (Broken!3626 (value!24330 List!3705)) (Boolean!726) (Unit!4541) (OperatorValue!728 (op!785 List!3705)) (IdentifierValue!1450 (value!24331 List!3705)) (IdentifierValue!1451 (value!24332 List!3705)) (WhitespaceValue!1451 (value!24333 List!3705)) (True!1450) (False!1450) (Broken!3627 (value!24334 List!3705)) (Broken!3628 (value!24335 List!3705)) (True!1451) (RightBrace!725) (RightBracket!725) (Colon!725) (Null!725) (Comma!725) (LeftBracket!725) (False!1451) (LeftBrace!725) (ImaginaryLiteralValue!725 (text!5521 List!3705)) (StringLiteralValue!2175 (value!24336 List!3705)) (EOFValue!725 (value!24337 List!3705)) (IdentValue!725 (value!24338 List!3705)) (DelimiterValue!1451 (value!24339 List!3705)) (DedentValue!725 (value!24340 List!3705)) (NewLineValue!725 (value!24341 List!3705)) (IntegerValue!2175 (value!24342 (_ BitVec 32)) (text!5522 List!3705)) (IntegerValue!2176 (value!24343 Int) (text!5523 List!3705)) (Times!725) (Or!725) (Equal!725) (Minus!725) (Broken!3629 (value!24344 List!3705)) (And!725) (Div!725) (LessEqual!725) (Mod!725) (Concat!1652) (Not!725) (Plus!725) (SpaceValue!725 (value!24345 List!3705)) (IntegerValue!2177 (value!24346 Int) (text!5524 List!3705)) (StringLiteralValue!2176 (text!5525 List!3705)) (FloatLiteralValue!1451 (text!5526 List!3705)) (BytesLiteralValue!725 (value!24347 List!3705)) (CommentValue!1451 (value!24348 List!3705)) (StringLiteralValue!2177 (value!24349 List!3705)) (ErrorTokenValue!725 (msg!786 List!3705)) )
))
(declare-datatypes ((C!2776 0))(
  ( (C!2777 (val!1274 Int)) )
))
(declare-datatypes ((List!3706 0))(
  ( (Nil!3696) (Cons!3696 (h!9093 C!2776) (t!35876 List!3706)) )
))
(declare-datatypes ((IArray!2457 0))(
  ( (IArray!2458 (innerList!1286 List!3706)) )
))
(declare-datatypes ((Conc!1228 0))(
  ( (Node!1228 (left!3038 Conc!1228) (right!3368 Conc!1228) (csize!2686 Int) (cheight!1439 Int)) (Leaf!1919 (xs!3823 IArray!2457) (csize!2687 Int)) (Empty!1228) )
))
(declare-datatypes ((BalanceConc!2464 0))(
  ( (BalanceConc!2465 (c!48153 Conc!1228)) )
))
(declare-datatypes ((Regex!927 0))(
  ( (ElementMatch!927 (c!48154 C!2776)) (Concat!1653 (regOne!2366 Regex!927) (regTwo!2366 Regex!927)) (EmptyExpr!927) (Star!927 (reg!1256 Regex!927)) (EmptyLang!927) (Union!927 (regOne!2367 Regex!927) (regTwo!2367 Regex!927)) )
))
(declare-datatypes ((String!4705 0))(
  ( (String!4706 (value!24350 String)) )
))
(declare-datatypes ((TokenValueInjection!1222 0))(
  ( (TokenValueInjection!1223 (toValue!1410 Int) (toChars!1269 Int)) )
))
(declare-datatypes ((Rule!1206 0))(
  ( (Rule!1207 (regex!703 Regex!927) (tag!911 String!4705) (isSeparator!703 Bool) (transformation!703 TokenValueInjection!1222)) )
))
(declare-datatypes ((Token!1150 0))(
  ( (Token!1151 (value!24351 TokenValue!725) (rule!1284 Rule!1206) (size!2928 Int) (originalCharacters!746 List!3706)) )
))
(declare-datatypes ((List!3707 0))(
  ( (Nil!3697) (Cons!3697 (h!9094 Token!1150) (t!35877 List!3707)) )
))
(declare-fun tokens!465 () List!3707)

(declare-fun lambda!8420 () Int)

(declare-fun forall!877 (List!3707 Int) Bool)

(assert (=> b!253294 (= res!117341 (forall!877 tokens!465 lambda!8420))))

(declare-fun b!253295 () Bool)

(declare-fun res!117335 () Bool)

(assert (=> b!253295 (=> (not res!117335) (not e!157380))))

(declare-datatypes ((List!3708 0))(
  ( (Nil!3698) (Cons!3698 (h!9095 Rule!1206) (t!35878 List!3708)) )
))
(declare-fun rules!1920 () List!3708)

(declare-datatypes ((LexerInterface!589 0))(
  ( (LexerInterfaceExt!586 (__x!2938 Int)) (Lexer!587) )
))
(declare-fun thiss!17480 () LexerInterface!589)

(declare-fun separatorToken!170 () Token!1150)

(declare-fun rulesProduceIndividualToken!338 (LexerInterface!589 List!3708 Token!1150) Bool)

(assert (=> b!253295 (= res!117335 (rulesProduceIndividualToken!338 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!253296 () Bool)

(declare-fun res!117337 () Bool)

(declare-fun e!157377 () Bool)

(assert (=> b!253296 (=> (not res!117337) (not e!157377))))

(declare-fun rulesInvariant!555 (LexerInterface!589 List!3708) Bool)

(assert (=> b!253296 (= res!117337 (rulesInvariant!555 thiss!17480 rules!1920))))

(declare-fun e!157379 () Bool)

(assert (=> b!253297 (= e!157379 (and tp!97618 tp!97625))))

(declare-fun tp!97627 () Bool)

(declare-fun e!157378 () Bool)

(declare-fun b!253298 () Bool)

(declare-fun inv!4551 (String!4705) Bool)

(declare-fun inv!4554 (TokenValueInjection!1222) Bool)

(assert (=> b!253298 (= e!157378 (and tp!97627 (inv!4551 (tag!911 (rule!1284 separatorToken!170))) (inv!4554 (transformation!703 (rule!1284 separatorToken!170))) e!157379))))

(declare-fun b!253299 () Bool)

(declare-datatypes ((IArray!2459 0))(
  ( (IArray!2460 (innerList!1287 List!3707)) )
))
(declare-datatypes ((Conc!1229 0))(
  ( (Node!1229 (left!3039 Conc!1229) (right!3369 Conc!1229) (csize!2688 Int) (cheight!1440 Int)) (Leaf!1920 (xs!3824 IArray!2459) (csize!2689 Int)) (Empty!1229) )
))
(declare-datatypes ((BalanceConc!2466 0))(
  ( (BalanceConc!2467 (c!48155 Conc!1229)) )
))
(declare-fun lt!103752 () BalanceConc!2466)

(declare-fun size!2929 (BalanceConc!2466) Int)

(assert (=> b!253299 (= e!157380 (> 0 (size!2929 lt!103752)))))

(declare-fun b!253300 () Bool)

(declare-fun res!117339 () Bool)

(assert (=> b!253300 (=> (not res!117339) (not e!157380))))

(get-info :version)

(assert (=> b!253300 (= res!117339 (not ((_ is Cons!3697) tokens!465)))))

(declare-fun b!253301 () Bool)

(declare-fun e!157372 () Bool)

(declare-fun e!157381 () Bool)

(declare-fun tp!97617 () Bool)

(assert (=> b!253301 (= e!157372 (and e!157381 tp!97617))))

(declare-fun e!157371 () Bool)

(assert (=> b!253302 (= e!157371 (and tp!97629 tp!97622))))

(declare-fun b!253303 () Bool)

(declare-fun res!117336 () Bool)

(assert (=> b!253303 (=> (not res!117336) (not e!157380))))

(declare-fun sepAndNonSepRulesDisjointChars!292 (List!3708 List!3708) Bool)

(assert (=> b!253303 (= res!117336 (sepAndNonSepRulesDisjointChars!292 rules!1920 rules!1920))))

(declare-fun tp!97624 () Bool)

(declare-fun b!253305 () Bool)

(assert (=> b!253305 (= e!157381 (and tp!97624 (inv!4551 (tag!911 (h!9095 rules!1920))) (inv!4554 (transformation!703 (h!9095 rules!1920))) e!157371))))

(declare-fun b!253306 () Bool)

(declare-fun tp!97619 () Bool)

(declare-fun e!157374 () Bool)

(declare-fun e!157376 () Bool)

(declare-fun inv!21 (TokenValue!725) Bool)

(assert (=> b!253306 (= e!157374 (and (inv!21 (value!24351 (h!9094 tokens!465))) e!157376 tp!97619))))

(declare-fun e!157383 () Bool)

(declare-fun tp!97628 () Bool)

(declare-fun b!253307 () Bool)

(assert (=> b!253307 (= e!157376 (and tp!97628 (inv!4551 (tag!911 (rule!1284 (h!9094 tokens!465)))) (inv!4554 (transformation!703 (rule!1284 (h!9094 tokens!465)))) e!157383))))

(declare-fun b!253308 () Bool)

(declare-fun res!117338 () Bool)

(assert (=> b!253308 (=> (not res!117338) (not e!157380))))

(assert (=> b!253308 (= res!117338 (isSeparator!703 (rule!1284 separatorToken!170)))))

(declare-fun b!253309 () Bool)

(declare-fun tp!97621 () Bool)

(declare-fun e!157373 () Bool)

(assert (=> b!253309 (= e!157373 (and (inv!21 (value!24351 separatorToken!170)) e!157378 tp!97621))))

(declare-fun b!253310 () Bool)

(declare-fun res!117340 () Bool)

(assert (=> b!253310 (=> (not res!117340) (not e!157377))))

(declare-fun isEmpty!2300 (List!3708) Bool)

(assert (=> b!253310 (= res!117340 (not (isEmpty!2300 rules!1920)))))

(assert (=> b!253304 (= e!157383 (and tp!97620 tp!97623))))

(declare-fun res!117334 () Bool)

(assert (=> start!26946 (=> (not res!117334) (not e!157377))))

(assert (=> start!26946 (= res!117334 ((_ is Lexer!587) thiss!17480))))

(assert (=> start!26946 e!157377))

(assert (=> start!26946 true))

(assert (=> start!26946 e!157372))

(declare-fun inv!4555 (Token!1150) Bool)

(assert (=> start!26946 (and (inv!4555 separatorToken!170) e!157373)))

(declare-fun e!157385 () Bool)

(assert (=> start!26946 e!157385))

(declare-fun b!253311 () Bool)

(assert (=> b!253311 (= e!157377 e!157380)))

(declare-fun res!117342 () Bool)

(assert (=> b!253311 (=> (not res!117342) (not e!157380))))

(declare-fun rulesProduceEachTokenIndividually!381 (LexerInterface!589 List!3708 BalanceConc!2466) Bool)

(assert (=> b!253311 (= res!117342 (rulesProduceEachTokenIndividually!381 thiss!17480 rules!1920 lt!103752))))

(declare-fun seqFromList!782 (List!3707) BalanceConc!2466)

(assert (=> b!253311 (= lt!103752 (seqFromList!782 tokens!465))))

(declare-fun b!253312 () Bool)

(declare-fun tp!97626 () Bool)

(assert (=> b!253312 (= e!157385 (and (inv!4555 (h!9094 tokens!465)) e!157374 tp!97626))))

(assert (= (and start!26946 res!117334) b!253310))

(assert (= (and b!253310 res!117340) b!253296))

(assert (= (and b!253296 res!117337) b!253311))

(assert (= (and b!253311 res!117342) b!253295))

(assert (= (and b!253295 res!117335) b!253308))

(assert (= (and b!253308 res!117338) b!253294))

(assert (= (and b!253294 res!117341) b!253303))

(assert (= (and b!253303 res!117336) b!253300))

(assert (= (and b!253300 res!117339) b!253299))

(assert (= b!253305 b!253302))

(assert (= b!253301 b!253305))

(assert (= (and start!26946 ((_ is Cons!3698) rules!1920)) b!253301))

(assert (= b!253298 b!253297))

(assert (= b!253309 b!253298))

(assert (= start!26946 b!253309))

(assert (= b!253307 b!253304))

(assert (= b!253306 b!253307))

(assert (= b!253312 b!253306))

(assert (= (and start!26946 ((_ is Cons!3697) tokens!465)) b!253312))

(declare-fun m!312847 () Bool)

(assert (=> b!253307 m!312847))

(declare-fun m!312849 () Bool)

(assert (=> b!253307 m!312849))

(declare-fun m!312851 () Bool)

(assert (=> b!253305 m!312851))

(declare-fun m!312853 () Bool)

(assert (=> b!253305 m!312853))

(declare-fun m!312855 () Bool)

(assert (=> b!253299 m!312855))

(declare-fun m!312857 () Bool)

(assert (=> b!253311 m!312857))

(declare-fun m!312859 () Bool)

(assert (=> b!253311 m!312859))

(declare-fun m!312861 () Bool)

(assert (=> b!253298 m!312861))

(declare-fun m!312863 () Bool)

(assert (=> b!253298 m!312863))

(declare-fun m!312865 () Bool)

(assert (=> b!253309 m!312865))

(declare-fun m!312867 () Bool)

(assert (=> b!253310 m!312867))

(declare-fun m!312869 () Bool)

(assert (=> b!253306 m!312869))

(declare-fun m!312871 () Bool)

(assert (=> b!253303 m!312871))

(declare-fun m!312873 () Bool)

(assert (=> b!253296 m!312873))

(declare-fun m!312875 () Bool)

(assert (=> start!26946 m!312875))

(declare-fun m!312877 () Bool)

(assert (=> b!253312 m!312877))

(declare-fun m!312879 () Bool)

(assert (=> b!253294 m!312879))

(declare-fun m!312881 () Bool)

(assert (=> b!253295 m!312881))

(check-sat b_and!19255 (not b_next!9413) (not b!253294) (not b!253309) (not b!253298) (not b_next!9419) b_and!19261 b_and!19263 (not b_next!9417) (not b!253312) (not b!253311) b_and!19259 (not b!253301) (not b!253305) (not b!253296) (not b!253295) (not start!26946) (not b!253299) (not b!253303) (not b_next!9415) (not b!253310) (not b!253306) (not b!253307) b_and!19253 (not b_next!9409) b_and!19257 (not b_next!9411))
(check-sat b_and!19255 (not b_next!9413) (not b_next!9419) b_and!19261 b_and!19263 (not b_next!9417) (not b_next!9415) b_and!19259 b_and!19253 (not b_next!9409) b_and!19257 (not b_next!9411))
(get-model)

(declare-fun d!71747 () Bool)

(declare-fun res!117349 () Bool)

(declare-fun e!157388 () Bool)

(assert (=> d!71747 (=> (not res!117349) (not e!157388))))

(declare-fun rulesValid!205 (LexerInterface!589 List!3708) Bool)

(assert (=> d!71747 (= res!117349 (rulesValid!205 thiss!17480 rules!1920))))

(assert (=> d!71747 (= (rulesInvariant!555 thiss!17480 rules!1920) e!157388)))

(declare-fun b!253315 () Bool)

(declare-datatypes ((List!3710 0))(
  ( (Nil!3700) (Cons!3700 (h!9097 String!4705) (t!35930 List!3710)) )
))
(declare-fun noDuplicateTag!205 (LexerInterface!589 List!3708 List!3710) Bool)

(assert (=> b!253315 (= e!157388 (noDuplicateTag!205 thiss!17480 rules!1920 Nil!3700))))

(assert (= (and d!71747 res!117349) b!253315))

(declare-fun m!312883 () Bool)

(assert (=> d!71747 m!312883))

(declare-fun m!312885 () Bool)

(assert (=> b!253315 m!312885))

(assert (=> b!253296 d!71747))

(declare-fun d!71751 () Bool)

(declare-fun lt!103764 () Bool)

(declare-fun e!157413 () Bool)

(assert (=> d!71751 (= lt!103764 e!157413)))

(declare-fun res!117380 () Bool)

(assert (=> d!71751 (=> (not res!117380) (not e!157413))))

(declare-fun list!1476 (BalanceConc!2466) List!3707)

(declare-datatypes ((tuple2!4146 0))(
  ( (tuple2!4147 (_1!2289 BalanceConc!2466) (_2!2289 BalanceConc!2464)) )
))
(declare-fun lex!389 (LexerInterface!589 List!3708 BalanceConc!2464) tuple2!4146)

(declare-fun print!320 (LexerInterface!589 BalanceConc!2466) BalanceConc!2464)

(declare-fun singletonSeq!255 (Token!1150) BalanceConc!2466)

(assert (=> d!71751 (= res!117380 (= (list!1476 (_1!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))) (list!1476 (singletonSeq!255 separatorToken!170))))))

(declare-fun e!157414 () Bool)

(assert (=> d!71751 (= lt!103764 e!157414)))

(declare-fun res!117379 () Bool)

(assert (=> d!71751 (=> (not res!117379) (not e!157414))))

(declare-fun lt!103763 () tuple2!4146)

(assert (=> d!71751 (= res!117379 (= (size!2929 (_1!2289 lt!103763)) 1))))

(assert (=> d!71751 (= lt!103763 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))))

(assert (=> d!71751 (not (isEmpty!2300 rules!1920))))

(assert (=> d!71751 (= (rulesProduceIndividualToken!338 thiss!17480 rules!1920 separatorToken!170) lt!103764)))

(declare-fun b!253351 () Bool)

(declare-fun res!117381 () Bool)

(assert (=> b!253351 (=> (not res!117381) (not e!157414))))

(declare-fun apply!702 (BalanceConc!2466 Int) Token!1150)

(assert (=> b!253351 (= res!117381 (= (apply!702 (_1!2289 lt!103763) 0) separatorToken!170))))

(declare-fun b!253352 () Bool)

(declare-fun isEmpty!2303 (BalanceConc!2464) Bool)

(assert (=> b!253352 (= e!157414 (isEmpty!2303 (_2!2289 lt!103763)))))

(declare-fun b!253353 () Bool)

(assert (=> b!253353 (= e!157413 (isEmpty!2303 (_2!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))))))

(assert (= (and d!71751 res!117379) b!253351))

(assert (= (and b!253351 res!117381) b!253352))

(assert (= (and d!71751 res!117380) b!253353))

(declare-fun m!312937 () Bool)

(assert (=> d!71751 m!312937))

(declare-fun m!312939 () Bool)

(assert (=> d!71751 m!312939))

(assert (=> d!71751 m!312937))

(declare-fun m!312941 () Bool)

(assert (=> d!71751 m!312941))

(assert (=> d!71751 m!312867))

(assert (=> d!71751 m!312937))

(declare-fun m!312943 () Bool)

(assert (=> d!71751 m!312943))

(declare-fun m!312945 () Bool)

(assert (=> d!71751 m!312945))

(assert (=> d!71751 m!312943))

(declare-fun m!312947 () Bool)

(assert (=> d!71751 m!312947))

(declare-fun m!312949 () Bool)

(assert (=> b!253351 m!312949))

(declare-fun m!312951 () Bool)

(assert (=> b!253352 m!312951))

(assert (=> b!253353 m!312937))

(assert (=> b!253353 m!312937))

(assert (=> b!253353 m!312943))

(assert (=> b!253353 m!312943))

(assert (=> b!253353 m!312947))

(declare-fun m!312953 () Bool)

(assert (=> b!253353 m!312953))

(assert (=> b!253295 d!71751))

(declare-fun d!71765 () Bool)

(declare-fun c!48160 () Bool)

(assert (=> d!71765 (= c!48160 ((_ is IntegerValue!2175) (value!24351 (h!9094 tokens!465))))))

(declare-fun e!157421 () Bool)

(assert (=> d!71765 (= (inv!21 (value!24351 (h!9094 tokens!465))) e!157421)))

(declare-fun b!253364 () Bool)

(declare-fun e!157422 () Bool)

(declare-fun inv!15 (TokenValue!725) Bool)

(assert (=> b!253364 (= e!157422 (inv!15 (value!24351 (h!9094 tokens!465))))))

(declare-fun b!253365 () Bool)

(declare-fun e!157423 () Bool)

(declare-fun inv!17 (TokenValue!725) Bool)

(assert (=> b!253365 (= e!157423 (inv!17 (value!24351 (h!9094 tokens!465))))))

(declare-fun b!253366 () Bool)

(assert (=> b!253366 (= e!157421 e!157423)))

(declare-fun c!48161 () Bool)

(assert (=> b!253366 (= c!48161 ((_ is IntegerValue!2176) (value!24351 (h!9094 tokens!465))))))

(declare-fun b!253367 () Bool)

(declare-fun inv!16 (TokenValue!725) Bool)

(assert (=> b!253367 (= e!157421 (inv!16 (value!24351 (h!9094 tokens!465))))))

(declare-fun b!253368 () Bool)

(declare-fun res!117384 () Bool)

(assert (=> b!253368 (=> res!117384 e!157422)))

(assert (=> b!253368 (= res!117384 (not ((_ is IntegerValue!2177) (value!24351 (h!9094 tokens!465)))))))

(assert (=> b!253368 (= e!157423 e!157422)))

(assert (= (and d!71765 c!48160) b!253367))

(assert (= (and d!71765 (not c!48160)) b!253366))

(assert (= (and b!253366 c!48161) b!253365))

(assert (= (and b!253366 (not c!48161)) b!253368))

(assert (= (and b!253368 (not res!117384)) b!253364))

(declare-fun m!312955 () Bool)

(assert (=> b!253364 m!312955))

(declare-fun m!312957 () Bool)

(assert (=> b!253365 m!312957))

(declare-fun m!312959 () Bool)

(assert (=> b!253367 m!312959))

(assert (=> b!253306 d!71765))

(declare-fun d!71767 () Bool)

(assert (=> d!71767 (= (inv!4551 (tag!911 (h!9095 rules!1920))) (= (mod (str.len (value!24350 (tag!911 (h!9095 rules!1920)))) 2) 0))))

(assert (=> b!253305 d!71767))

(declare-fun d!71769 () Bool)

(declare-fun res!117387 () Bool)

(declare-fun e!157426 () Bool)

(assert (=> d!71769 (=> (not res!117387) (not e!157426))))

(declare-fun semiInverseModEq!239 (Int Int) Bool)

(assert (=> d!71769 (= res!117387 (semiInverseModEq!239 (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (h!9095 rules!1920)))))))

(assert (=> d!71769 (= (inv!4554 (transformation!703 (h!9095 rules!1920))) e!157426)))

(declare-fun b!253371 () Bool)

(declare-fun equivClasses!222 (Int Int) Bool)

(assert (=> b!253371 (= e!157426 (equivClasses!222 (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (h!9095 rules!1920)))))))

(assert (= (and d!71769 res!117387) b!253371))

(declare-fun m!312961 () Bool)

(assert (=> d!71769 m!312961))

(declare-fun m!312963 () Bool)

(assert (=> b!253371 m!312963))

(assert (=> b!253305 d!71769))

(declare-fun d!71771 () Bool)

(declare-fun res!117392 () Bool)

(declare-fun e!157431 () Bool)

(assert (=> d!71771 (=> res!117392 e!157431)))

(assert (=> d!71771 (= res!117392 ((_ is Nil!3697) tokens!465))))

(assert (=> d!71771 (= (forall!877 tokens!465 lambda!8420) e!157431)))

(declare-fun b!253376 () Bool)

(declare-fun e!157432 () Bool)

(assert (=> b!253376 (= e!157431 e!157432)))

(declare-fun res!117393 () Bool)

(assert (=> b!253376 (=> (not res!117393) (not e!157432))))

(declare-fun dynLambda!1831 (Int Token!1150) Bool)

(assert (=> b!253376 (= res!117393 (dynLambda!1831 lambda!8420 (h!9094 tokens!465)))))

(declare-fun b!253377 () Bool)

(assert (=> b!253377 (= e!157432 (forall!877 (t!35877 tokens!465) lambda!8420))))

(assert (= (and d!71771 (not res!117392)) b!253376))

(assert (= (and b!253376 res!117393) b!253377))

(declare-fun b_lambda!7551 () Bool)

(assert (=> (not b_lambda!7551) (not b!253376)))

(declare-fun m!312965 () Bool)

(assert (=> b!253376 m!312965))

(declare-fun m!312967 () Bool)

(assert (=> b!253377 m!312967))

(assert (=> b!253294 d!71771))

(declare-fun d!71773 () Bool)

(declare-fun res!117398 () Bool)

(declare-fun e!157437 () Bool)

(assert (=> d!71773 (=> res!117398 e!157437)))

(assert (=> d!71773 (= res!117398 (not ((_ is Cons!3698) rules!1920)))))

(assert (=> d!71773 (= (sepAndNonSepRulesDisjointChars!292 rules!1920 rules!1920) e!157437)))

(declare-fun b!253382 () Bool)

(declare-fun e!157438 () Bool)

(assert (=> b!253382 (= e!157437 e!157438)))

(declare-fun res!117399 () Bool)

(assert (=> b!253382 (=> (not res!117399) (not e!157438))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!98 (Rule!1206 List!3708) Bool)

(assert (=> b!253382 (= res!117399 (ruleDisjointCharsFromAllFromOtherType!98 (h!9095 rules!1920) rules!1920))))

(declare-fun b!253383 () Bool)

(assert (=> b!253383 (= e!157438 (sepAndNonSepRulesDisjointChars!292 rules!1920 (t!35878 rules!1920)))))

(assert (= (and d!71773 (not res!117398)) b!253382))

(assert (= (and b!253382 res!117399) b!253383))

(declare-fun m!312969 () Bool)

(assert (=> b!253382 m!312969))

(declare-fun m!312971 () Bool)

(assert (=> b!253383 m!312971))

(assert (=> b!253303 d!71773))

(declare-fun d!71775 () Bool)

(declare-fun res!117404 () Bool)

(declare-fun e!157441 () Bool)

(assert (=> d!71775 (=> (not res!117404) (not e!157441))))

(declare-fun isEmpty!2304 (List!3706) Bool)

(assert (=> d!71775 (= res!117404 (not (isEmpty!2304 (originalCharacters!746 (h!9094 tokens!465)))))))

(assert (=> d!71775 (= (inv!4555 (h!9094 tokens!465)) e!157441)))

(declare-fun b!253388 () Bool)

(declare-fun res!117405 () Bool)

(assert (=> b!253388 (=> (not res!117405) (not e!157441))))

(declare-fun list!1477 (BalanceConc!2464) List!3706)

(declare-fun dynLambda!1832 (Int TokenValue!725) BalanceConc!2464)

(assert (=> b!253388 (= res!117405 (= (originalCharacters!746 (h!9094 tokens!465)) (list!1477 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(declare-fun b!253389 () Bool)

(declare-fun size!2933 (List!3706) Int)

(assert (=> b!253389 (= e!157441 (= (size!2928 (h!9094 tokens!465)) (size!2933 (originalCharacters!746 (h!9094 tokens!465)))))))

(assert (= (and d!71775 res!117404) b!253388))

(assert (= (and b!253388 res!117405) b!253389))

(declare-fun b_lambda!7553 () Bool)

(assert (=> (not b_lambda!7553) (not b!253388)))

(declare-fun tb!13201 () Bool)

(declare-fun t!35896 () Bool)

(assert (=> (and b!253297 (= (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35896) tb!13201))

(declare-fun b!253394 () Bool)

(declare-fun e!157444 () Bool)

(declare-fun tp!97636 () Bool)

(declare-fun inv!4558 (Conc!1228) Bool)

(assert (=> b!253394 (= e!157444 (and (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))) tp!97636))))

(declare-fun result!16574 () Bool)

(declare-fun inv!4559 (BalanceConc!2464) Bool)

(assert (=> tb!13201 (= result!16574 (and (inv!4559 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))) e!157444))))

(assert (= tb!13201 b!253394))

(declare-fun m!312973 () Bool)

(assert (=> b!253394 m!312973))

(declare-fun m!312975 () Bool)

(assert (=> tb!13201 m!312975))

(assert (=> b!253388 t!35896))

(declare-fun b_and!19277 () Bool)

(assert (= b_and!19255 (and (=> t!35896 result!16574) b_and!19277)))

(declare-fun t!35898 () Bool)

(declare-fun tb!13203 () Bool)

(assert (=> (and b!253304 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35898) tb!13203))

(declare-fun result!16578 () Bool)

(assert (= result!16578 result!16574))

(assert (=> b!253388 t!35898))

(declare-fun b_and!19279 () Bool)

(assert (= b_and!19259 (and (=> t!35898 result!16578) b_and!19279)))

(declare-fun t!35900 () Bool)

(declare-fun tb!13205 () Bool)

(assert (=> (and b!253302 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35900) tb!13205))

(declare-fun result!16580 () Bool)

(assert (= result!16580 result!16574))

(assert (=> b!253388 t!35900))

(declare-fun b_and!19281 () Bool)

(assert (= b_and!19263 (and (=> t!35900 result!16580) b_and!19281)))

(declare-fun m!312977 () Bool)

(assert (=> d!71775 m!312977))

(declare-fun m!312979 () Bool)

(assert (=> b!253388 m!312979))

(assert (=> b!253388 m!312979))

(declare-fun m!312981 () Bool)

(assert (=> b!253388 m!312981))

(declare-fun m!312983 () Bool)

(assert (=> b!253389 m!312983))

(assert (=> b!253312 d!71775))

(declare-fun bs!27415 () Bool)

(declare-fun d!71777 () Bool)

(assert (= bs!27415 (and d!71777 b!253294)))

(declare-fun lambda!8430 () Int)

(assert (=> bs!27415 (not (= lambda!8430 lambda!8420))))

(declare-fun b!253511 () Bool)

(declare-fun e!157533 () Bool)

(assert (=> b!253511 (= e!157533 true)))

(declare-fun b!253510 () Bool)

(declare-fun e!157532 () Bool)

(assert (=> b!253510 (= e!157532 e!157533)))

(declare-fun b!253509 () Bool)

(declare-fun e!157531 () Bool)

(assert (=> b!253509 (= e!157531 e!157532)))

(assert (=> d!71777 e!157531))

(assert (= b!253510 b!253511))

(assert (= b!253509 b!253510))

(assert (= (and d!71777 ((_ is Cons!3698) rules!1920)) b!253509))

(declare-fun order!2767 () Int)

(declare-fun order!2765 () Int)

(declare-fun dynLambda!1833 (Int Int) Int)

(declare-fun dynLambda!1834 (Int Int) Int)

(assert (=> b!253511 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1834 order!2767 lambda!8430))))

(declare-fun order!2769 () Int)

(declare-fun dynLambda!1835 (Int Int) Int)

(assert (=> b!253511 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1834 order!2767 lambda!8430))))

(assert (=> d!71777 true))

(declare-fun e!157524 () Bool)

(assert (=> d!71777 e!157524))

(declare-fun res!117429 () Bool)

(assert (=> d!71777 (=> (not res!117429) (not e!157524))))

(declare-fun lt!103773 () Bool)

(assert (=> d!71777 (= res!117429 (= lt!103773 (forall!877 (list!1476 lt!103752) lambda!8430)))))

(declare-fun forall!879 (BalanceConc!2466 Int) Bool)

(assert (=> d!71777 (= lt!103773 (forall!879 lt!103752 lambda!8430))))

(assert (=> d!71777 (not (isEmpty!2300 rules!1920))))

(assert (=> d!71777 (= (rulesProduceEachTokenIndividually!381 thiss!17480 rules!1920 lt!103752) lt!103773)))

(declare-fun b!253500 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!209 (LexerInterface!589 List!3708 List!3707) Bool)

(assert (=> b!253500 (= e!157524 (= lt!103773 (rulesProduceEachTokenIndividuallyList!209 thiss!17480 rules!1920 (list!1476 lt!103752))))))

(assert (= (and d!71777 res!117429) b!253500))

(declare-fun m!313039 () Bool)

(assert (=> d!71777 m!313039))

(assert (=> d!71777 m!313039))

(declare-fun m!313041 () Bool)

(assert (=> d!71777 m!313041))

(declare-fun m!313043 () Bool)

(assert (=> d!71777 m!313043))

(assert (=> d!71777 m!312867))

(assert (=> b!253500 m!313039))

(assert (=> b!253500 m!313039))

(declare-fun m!313045 () Bool)

(assert (=> b!253500 m!313045))

(assert (=> b!253311 d!71777))

(declare-fun d!71803 () Bool)

(declare-fun fromListB!283 (List!3707) BalanceConc!2466)

(assert (=> d!71803 (= (seqFromList!782 tokens!465) (fromListB!283 tokens!465))))

(declare-fun bs!27416 () Bool)

(assert (= bs!27416 d!71803))

(declare-fun m!313047 () Bool)

(assert (=> bs!27416 m!313047))

(assert (=> b!253311 d!71803))

(declare-fun d!71805 () Bool)

(declare-fun lt!103776 () Int)

(declare-fun size!2934 (List!3707) Int)

(assert (=> d!71805 (= lt!103776 (size!2934 (list!1476 lt!103752)))))

(declare-fun size!2935 (Conc!1229) Int)

(assert (=> d!71805 (= lt!103776 (size!2935 (c!48155 lt!103752)))))

(assert (=> d!71805 (= (size!2929 lt!103752) lt!103776)))

(declare-fun bs!27417 () Bool)

(assert (= bs!27417 d!71805))

(assert (=> bs!27417 m!313039))

(assert (=> bs!27417 m!313039))

(declare-fun m!313049 () Bool)

(assert (=> bs!27417 m!313049))

(declare-fun m!313051 () Bool)

(assert (=> bs!27417 m!313051))

(assert (=> b!253299 d!71805))

(declare-fun d!71807 () Bool)

(assert (=> d!71807 (= (isEmpty!2300 rules!1920) ((_ is Nil!3698) rules!1920))))

(assert (=> b!253310 d!71807))

(declare-fun d!71809 () Bool)

(declare-fun c!48170 () Bool)

(assert (=> d!71809 (= c!48170 ((_ is IntegerValue!2175) (value!24351 separatorToken!170)))))

(declare-fun e!157534 () Bool)

(assert (=> d!71809 (= (inv!21 (value!24351 separatorToken!170)) e!157534)))

(declare-fun b!253514 () Bool)

(declare-fun e!157535 () Bool)

(assert (=> b!253514 (= e!157535 (inv!15 (value!24351 separatorToken!170)))))

(declare-fun b!253515 () Bool)

(declare-fun e!157536 () Bool)

(assert (=> b!253515 (= e!157536 (inv!17 (value!24351 separatorToken!170)))))

(declare-fun b!253516 () Bool)

(assert (=> b!253516 (= e!157534 e!157536)))

(declare-fun c!48171 () Bool)

(assert (=> b!253516 (= c!48171 ((_ is IntegerValue!2176) (value!24351 separatorToken!170)))))

(declare-fun b!253517 () Bool)

(assert (=> b!253517 (= e!157534 (inv!16 (value!24351 separatorToken!170)))))

(declare-fun b!253518 () Bool)

(declare-fun res!117430 () Bool)

(assert (=> b!253518 (=> res!117430 e!157535)))

(assert (=> b!253518 (= res!117430 (not ((_ is IntegerValue!2177) (value!24351 separatorToken!170))))))

(assert (=> b!253518 (= e!157536 e!157535)))

(assert (= (and d!71809 c!48170) b!253517))

(assert (= (and d!71809 (not c!48170)) b!253516))

(assert (= (and b!253516 c!48171) b!253515))

(assert (= (and b!253516 (not c!48171)) b!253518))

(assert (= (and b!253518 (not res!117430)) b!253514))

(declare-fun m!313053 () Bool)

(assert (=> b!253514 m!313053))

(declare-fun m!313055 () Bool)

(assert (=> b!253515 m!313055))

(declare-fun m!313057 () Bool)

(assert (=> b!253517 m!313057))

(assert (=> b!253309 d!71809))

(declare-fun d!71811 () Bool)

(assert (=> d!71811 (= (inv!4551 (tag!911 (rule!1284 separatorToken!170))) (= (mod (str.len (value!24350 (tag!911 (rule!1284 separatorToken!170)))) 2) 0))))

(assert (=> b!253298 d!71811))

(declare-fun d!71813 () Bool)

(declare-fun res!117431 () Bool)

(declare-fun e!157537 () Bool)

(assert (=> d!71813 (=> (not res!117431) (not e!157537))))

(assert (=> d!71813 (= res!117431 (semiInverseModEq!239 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))))))

(assert (=> d!71813 (= (inv!4554 (transformation!703 (rule!1284 separatorToken!170))) e!157537)))

(declare-fun b!253519 () Bool)

(assert (=> b!253519 (= e!157537 (equivClasses!222 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))))))

(assert (= (and d!71813 res!117431) b!253519))

(declare-fun m!313059 () Bool)

(assert (=> d!71813 m!313059))

(declare-fun m!313061 () Bool)

(assert (=> b!253519 m!313061))

(assert (=> b!253298 d!71813))

(declare-fun d!71815 () Bool)

(assert (=> d!71815 (= (inv!4551 (tag!911 (rule!1284 (h!9094 tokens!465)))) (= (mod (str.len (value!24350 (tag!911 (rule!1284 (h!9094 tokens!465))))) 2) 0))))

(assert (=> b!253307 d!71815))

(declare-fun d!71817 () Bool)

(declare-fun res!117432 () Bool)

(declare-fun e!157538 () Bool)

(assert (=> d!71817 (=> (not res!117432) (not e!157538))))

(assert (=> d!71817 (= res!117432 (semiInverseModEq!239 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))))))

(assert (=> d!71817 (= (inv!4554 (transformation!703 (rule!1284 (h!9094 tokens!465)))) e!157538)))

(declare-fun b!253520 () Bool)

(assert (=> b!253520 (= e!157538 (equivClasses!222 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))))))

(assert (= (and d!71817 res!117432) b!253520))

(declare-fun m!313063 () Bool)

(assert (=> d!71817 m!313063))

(declare-fun m!313065 () Bool)

(assert (=> b!253520 m!313065))

(assert (=> b!253307 d!71817))

(declare-fun d!71819 () Bool)

(declare-fun res!117433 () Bool)

(declare-fun e!157539 () Bool)

(assert (=> d!71819 (=> (not res!117433) (not e!157539))))

(assert (=> d!71819 (= res!117433 (not (isEmpty!2304 (originalCharacters!746 separatorToken!170))))))

(assert (=> d!71819 (= (inv!4555 separatorToken!170) e!157539)))

(declare-fun b!253521 () Bool)

(declare-fun res!117434 () Bool)

(assert (=> b!253521 (=> (not res!117434) (not e!157539))))

(assert (=> b!253521 (= res!117434 (= (originalCharacters!746 separatorToken!170) (list!1477 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(declare-fun b!253522 () Bool)

(assert (=> b!253522 (= e!157539 (= (size!2928 separatorToken!170) (size!2933 (originalCharacters!746 separatorToken!170))))))

(assert (= (and d!71819 res!117433) b!253521))

(assert (= (and b!253521 res!117434) b!253522))

(declare-fun b_lambda!7563 () Bool)

(assert (=> (not b_lambda!7563) (not b!253521)))

(declare-fun t!35917 () Bool)

(declare-fun tb!13215 () Bool)

(assert (=> (and b!253297 (= (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35917) tb!13215))

(declare-fun b!253523 () Bool)

(declare-fun e!157540 () Bool)

(declare-fun tp!97693 () Bool)

(assert (=> b!253523 (= e!157540 (and (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))) tp!97693))))

(declare-fun result!16598 () Bool)

(assert (=> tb!13215 (= result!16598 (and (inv!4559 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))) e!157540))))

(assert (= tb!13215 b!253523))

(declare-fun m!313067 () Bool)

(assert (=> b!253523 m!313067))

(declare-fun m!313069 () Bool)

(assert (=> tb!13215 m!313069))

(assert (=> b!253521 t!35917))

(declare-fun b_and!19291 () Bool)

(assert (= b_and!19277 (and (=> t!35917 result!16598) b_and!19291)))

(declare-fun tb!13217 () Bool)

(declare-fun t!35919 () Bool)

(assert (=> (and b!253304 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35919) tb!13217))

(declare-fun result!16600 () Bool)

(assert (= result!16600 result!16598))

(assert (=> b!253521 t!35919))

(declare-fun b_and!19293 () Bool)

(assert (= b_and!19279 (and (=> t!35919 result!16600) b_and!19293)))

(declare-fun tb!13219 () Bool)

(declare-fun t!35921 () Bool)

(assert (=> (and b!253302 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35921) tb!13219))

(declare-fun result!16602 () Bool)

(assert (= result!16602 result!16598))

(assert (=> b!253521 t!35921))

(declare-fun b_and!19295 () Bool)

(assert (= b_and!19281 (and (=> t!35921 result!16602) b_and!19295)))

(declare-fun m!313071 () Bool)

(assert (=> d!71819 m!313071))

(declare-fun m!313073 () Bool)

(assert (=> b!253521 m!313073))

(assert (=> b!253521 m!313073))

(declare-fun m!313075 () Bool)

(assert (=> b!253521 m!313075))

(declare-fun m!313077 () Bool)

(assert (=> b!253522 m!313077))

(assert (=> start!26946 d!71819))

(declare-fun b!253534 () Bool)

(declare-fun b_free!9429 () Bool)

(declare-fun b_next!9429 () Bool)

(assert (=> b!253534 (= b_free!9429 (not b_next!9429))))

(declare-fun tp!97702 () Bool)

(declare-fun b_and!19297 () Bool)

(assert (=> b!253534 (= tp!97702 b_and!19297)))

(declare-fun b_free!9431 () Bool)

(declare-fun b_next!9431 () Bool)

(assert (=> b!253534 (= b_free!9431 (not b_next!9431))))

(declare-fun t!35923 () Bool)

(declare-fun tb!13221 () Bool)

(assert (=> (and b!253534 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35923) tb!13221))

(declare-fun result!16606 () Bool)

(assert (= result!16606 result!16574))

(assert (=> b!253388 t!35923))

(declare-fun t!35925 () Bool)

(declare-fun tb!13223 () Bool)

(assert (=> (and b!253534 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35925) tb!13223))

(declare-fun result!16608 () Bool)

(assert (= result!16608 result!16598))

(assert (=> b!253521 t!35925))

(declare-fun b_and!19299 () Bool)

(declare-fun tp!97703 () Bool)

(assert (=> b!253534 (= tp!97703 (and (=> t!35923 result!16606) (=> t!35925 result!16608) b_and!19299))))

(declare-fun e!157551 () Bool)

(assert (=> b!253534 (= e!157551 (and tp!97702 tp!97703))))

(declare-fun e!157549 () Bool)

(declare-fun b!253533 () Bool)

(declare-fun tp!97705 () Bool)

(assert (=> b!253533 (= e!157549 (and tp!97705 (inv!4551 (tag!911 (h!9095 (t!35878 rules!1920)))) (inv!4554 (transformation!703 (h!9095 (t!35878 rules!1920)))) e!157551))))

(declare-fun b!253532 () Bool)

(declare-fun e!157552 () Bool)

(declare-fun tp!97704 () Bool)

(assert (=> b!253532 (= e!157552 (and e!157549 tp!97704))))

(assert (=> b!253301 (= tp!97617 e!157552)))

(assert (= b!253533 b!253534))

(assert (= b!253532 b!253533))

(assert (= (and b!253301 ((_ is Cons!3698) (t!35878 rules!1920))) b!253532))

(declare-fun m!313079 () Bool)

(assert (=> b!253533 m!313079))

(declare-fun m!313081 () Bool)

(assert (=> b!253533 m!313081))

(declare-fun b!253548 () Bool)

(declare-fun b_free!9433 () Bool)

(declare-fun b_next!9433 () Bool)

(assert (=> b!253548 (= b_free!9433 (not b_next!9433))))

(declare-fun tp!97717 () Bool)

(declare-fun b_and!19301 () Bool)

(assert (=> b!253548 (= tp!97717 b_and!19301)))

(declare-fun b_free!9435 () Bool)

(declare-fun b_next!9435 () Bool)

(assert (=> b!253548 (= b_free!9435 (not b_next!9435))))

(declare-fun t!35927 () Bool)

(declare-fun tb!13225 () Bool)

(assert (=> (and b!253548 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35927) tb!13225))

(declare-fun result!16612 () Bool)

(assert (= result!16612 result!16574))

(assert (=> b!253388 t!35927))

(declare-fun tb!13227 () Bool)

(declare-fun t!35929 () Bool)

(assert (=> (and b!253548 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35929) tb!13227))

(declare-fun result!16614 () Bool)

(assert (= result!16614 result!16598))

(assert (=> b!253521 t!35929))

(declare-fun b_and!19303 () Bool)

(declare-fun tp!97720 () Bool)

(assert (=> b!253548 (= tp!97720 (and (=> t!35927 result!16612) (=> t!35929 result!16614) b_and!19303))))

(declare-fun tp!97718 () Bool)

(declare-fun b!253547 () Bool)

(declare-fun e!157570 () Bool)

(declare-fun e!157569 () Bool)

(assert (=> b!253547 (= e!157569 (and tp!97718 (inv!4551 (tag!911 (rule!1284 (h!9094 (t!35877 tokens!465))))) (inv!4554 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) e!157570))))

(assert (=> b!253548 (= e!157570 (and tp!97717 tp!97720))))

(declare-fun e!157565 () Bool)

(declare-fun b!253545 () Bool)

(declare-fun e!157567 () Bool)

(declare-fun tp!97716 () Bool)

(assert (=> b!253545 (= e!157565 (and (inv!4555 (h!9094 (t!35877 tokens!465))) e!157567 tp!97716))))

(assert (=> b!253312 (= tp!97626 e!157565)))

(declare-fun b!253546 () Bool)

(declare-fun tp!97719 () Bool)

(assert (=> b!253546 (= e!157567 (and (inv!21 (value!24351 (h!9094 (t!35877 tokens!465)))) e!157569 tp!97719))))

(assert (= b!253547 b!253548))

(assert (= b!253546 b!253547))

(assert (= b!253545 b!253546))

(assert (= (and b!253312 ((_ is Cons!3697) (t!35877 tokens!465))) b!253545))

(declare-fun m!313083 () Bool)

(assert (=> b!253547 m!313083))

(declare-fun m!313085 () Bool)

(assert (=> b!253547 m!313085))

(declare-fun m!313087 () Bool)

(assert (=> b!253545 m!313087))

(declare-fun m!313089 () Bool)

(assert (=> b!253546 m!313089))

(declare-fun b!253553 () Bool)

(declare-fun e!157573 () Bool)

(declare-fun tp_is_empty!1775 () Bool)

(declare-fun tp!97723 () Bool)

(assert (=> b!253553 (= e!157573 (and tp_is_empty!1775 tp!97723))))

(assert (=> b!253306 (= tp!97619 e!157573)))

(assert (= (and b!253306 ((_ is Cons!3696) (originalCharacters!746 (h!9094 tokens!465)))) b!253553))

(declare-fun b!253566 () Bool)

(declare-fun e!157576 () Bool)

(declare-fun tp!97734 () Bool)

(assert (=> b!253566 (= e!157576 tp!97734)))

(declare-fun b!253565 () Bool)

(declare-fun tp!97735 () Bool)

(declare-fun tp!97738 () Bool)

(assert (=> b!253565 (= e!157576 (and tp!97735 tp!97738))))

(declare-fun b!253567 () Bool)

(declare-fun tp!97736 () Bool)

(declare-fun tp!97737 () Bool)

(assert (=> b!253567 (= e!157576 (and tp!97736 tp!97737))))

(declare-fun b!253564 () Bool)

(assert (=> b!253564 (= e!157576 tp_is_empty!1775)))

(assert (=> b!253305 (= tp!97624 e!157576)))

(assert (= (and b!253305 ((_ is ElementMatch!927) (regex!703 (h!9095 rules!1920)))) b!253564))

(assert (= (and b!253305 ((_ is Concat!1653) (regex!703 (h!9095 rules!1920)))) b!253565))

(assert (= (and b!253305 ((_ is Star!927) (regex!703 (h!9095 rules!1920)))) b!253566))

(assert (= (and b!253305 ((_ is Union!927) (regex!703 (h!9095 rules!1920)))) b!253567))

(declare-fun b!253568 () Bool)

(declare-fun e!157577 () Bool)

(declare-fun tp!97739 () Bool)

(assert (=> b!253568 (= e!157577 (and tp_is_empty!1775 tp!97739))))

(assert (=> b!253309 (= tp!97621 e!157577)))

(assert (= (and b!253309 ((_ is Cons!3696) (originalCharacters!746 separatorToken!170))) b!253568))

(declare-fun b!253571 () Bool)

(declare-fun e!157578 () Bool)

(declare-fun tp!97740 () Bool)

(assert (=> b!253571 (= e!157578 tp!97740)))

(declare-fun b!253570 () Bool)

(declare-fun tp!97741 () Bool)

(declare-fun tp!97744 () Bool)

(assert (=> b!253570 (= e!157578 (and tp!97741 tp!97744))))

(declare-fun b!253572 () Bool)

(declare-fun tp!97742 () Bool)

(declare-fun tp!97743 () Bool)

(assert (=> b!253572 (= e!157578 (and tp!97742 tp!97743))))

(declare-fun b!253569 () Bool)

(assert (=> b!253569 (= e!157578 tp_is_empty!1775)))

(assert (=> b!253298 (= tp!97627 e!157578)))

(assert (= (and b!253298 ((_ is ElementMatch!927) (regex!703 (rule!1284 separatorToken!170)))) b!253569))

(assert (= (and b!253298 ((_ is Concat!1653) (regex!703 (rule!1284 separatorToken!170)))) b!253570))

(assert (= (and b!253298 ((_ is Star!927) (regex!703 (rule!1284 separatorToken!170)))) b!253571))

(assert (= (and b!253298 ((_ is Union!927) (regex!703 (rule!1284 separatorToken!170)))) b!253572))

(declare-fun b!253575 () Bool)

(declare-fun e!157579 () Bool)

(declare-fun tp!97745 () Bool)

(assert (=> b!253575 (= e!157579 tp!97745)))

(declare-fun b!253574 () Bool)

(declare-fun tp!97746 () Bool)

(declare-fun tp!97749 () Bool)

(assert (=> b!253574 (= e!157579 (and tp!97746 tp!97749))))

(declare-fun b!253576 () Bool)

(declare-fun tp!97747 () Bool)

(declare-fun tp!97748 () Bool)

(assert (=> b!253576 (= e!157579 (and tp!97747 tp!97748))))

(declare-fun b!253573 () Bool)

(assert (=> b!253573 (= e!157579 tp_is_empty!1775)))

(assert (=> b!253307 (= tp!97628 e!157579)))

(assert (= (and b!253307 ((_ is ElementMatch!927) (regex!703 (rule!1284 (h!9094 tokens!465))))) b!253573))

(assert (= (and b!253307 ((_ is Concat!1653) (regex!703 (rule!1284 (h!9094 tokens!465))))) b!253574))

(assert (= (and b!253307 ((_ is Star!927) (regex!703 (rule!1284 (h!9094 tokens!465))))) b!253575))

(assert (= (and b!253307 ((_ is Union!927) (regex!703 (rule!1284 (h!9094 tokens!465))))) b!253576))

(declare-fun b_lambda!7565 () Bool)

(assert (= b_lambda!7553 (or (and b!253534 b_free!9431 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))))) (and b!253548 b_free!9435 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))))) (and b!253304 b_free!9415) (and b!253297 b_free!9411 (= (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))))) (and b!253302 b_free!9419 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))))) b_lambda!7565)))

(declare-fun b_lambda!7567 () Bool)

(assert (= b_lambda!7551 (or b!253294 b_lambda!7567)))

(declare-fun bs!27418 () Bool)

(declare-fun d!71821 () Bool)

(assert (= bs!27418 (and d!71821 b!253294)))

(assert (=> bs!27418 (= (dynLambda!1831 lambda!8420 (h!9094 tokens!465)) (not (isSeparator!703 (rule!1284 (h!9094 tokens!465)))))))

(assert (=> b!253376 d!71821))

(declare-fun b_lambda!7569 () Bool)

(assert (= b_lambda!7563 (or (and b!253534 b_free!9431 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))))) (and b!253548 b_free!9435 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))))) (and b!253302 b_free!9419 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))))) (and b!253304 b_free!9415 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))))) (and b!253297 b_free!9411) b_lambda!7569)))

(check-sat (not d!71803) (not b_next!9435) (not b_lambda!7567) (not b!253576) (not b_next!9429) (not b!253522) (not b!253383) (not d!71813) (not b!253389) (not b!253365) (not b_next!9413) b_and!19291 b_and!19295 (not d!71777) (not b!253382) (not b!253352) (not b!253570) b_and!19293 (not b!253351) (not b!253572) (not b!253532) (not b!253367) (not d!71751) (not b_next!9419) (not b!253517) b_and!19303 (not b!253353) (not b!253568) (not b!253514) (not b!253547) b_and!19261 (not d!71817) b_and!19301 (not b!253371) (not b!253500) (not b!253546) (not d!71747) (not d!71769) (not b_next!9433) (not b!253377) (not b_lambda!7565) (not b_next!9417) (not b!253515) (not b!253364) (not b!253520) (not b!253571) (not b_next!9415) (not b!253575) (not b!253521) (not b!253565) (not b!253394) (not b_lambda!7569) (not b!253533) (not b!253388) (not b_next!9431) b_and!19299 (not b!253566) (not b!253553) (not b!253315) tp_is_empty!1775 (not d!71805) (not b!253567) b_and!19297 (not tb!13201) b_and!19253 (not b_next!9409) (not b!253545) (not tb!13215) b_and!19257 (not b_next!9411) (not b!253509) (not d!71819) (not b!253519) (not d!71775) (not b!253523) (not b!253574))
(check-sat (not b_next!9435) b_and!19293 (not b_next!9419) b_and!19303 b_and!19261 b_and!19301 (not b_next!9433) (not b_next!9417) (not b_next!9415) (not b_next!9429) b_and!19297 (not b_next!9413) b_and!19291 b_and!19295 (not b_next!9431) b_and!19299 b_and!19253 (not b_next!9409) b_and!19257 (not b_next!9411))
(get-model)

(declare-fun d!71851 () Bool)

(declare-fun lt!103786 () Bool)

(assert (=> d!71851 (= lt!103786 (isEmpty!2304 (list!1477 (_2!2289 lt!103763))))))

(declare-fun isEmpty!2305 (Conc!1228) Bool)

(assert (=> d!71851 (= lt!103786 (isEmpty!2305 (c!48153 (_2!2289 lt!103763))))))

(assert (=> d!71851 (= (isEmpty!2303 (_2!2289 lt!103763)) lt!103786)))

(declare-fun bs!27427 () Bool)

(assert (= bs!27427 d!71851))

(declare-fun m!313137 () Bool)

(assert (=> bs!27427 m!313137))

(assert (=> bs!27427 m!313137))

(declare-fun m!313139 () Bool)

(assert (=> bs!27427 m!313139))

(declare-fun m!313141 () Bool)

(assert (=> bs!27427 m!313141))

(assert (=> b!253352 d!71851))

(declare-fun d!71857 () Bool)

(assert (=> d!71857 (= (inv!4551 (tag!911 (h!9095 (t!35878 rules!1920)))) (= (mod (str.len (value!24350 (tag!911 (h!9095 (t!35878 rules!1920))))) 2) 0))))

(assert (=> b!253533 d!71857))

(declare-fun d!71859 () Bool)

(declare-fun res!117446 () Bool)

(declare-fun e!157593 () Bool)

(assert (=> d!71859 (=> (not res!117446) (not e!157593))))

(assert (=> d!71859 (= res!117446 (semiInverseModEq!239 (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toValue!1410 (transformation!703 (h!9095 (t!35878 rules!1920))))))))

(assert (=> d!71859 (= (inv!4554 (transformation!703 (h!9095 (t!35878 rules!1920)))) e!157593)))

(declare-fun b!253605 () Bool)

(assert (=> b!253605 (= e!157593 (equivClasses!222 (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toValue!1410 (transformation!703 (h!9095 (t!35878 rules!1920))))))))

(assert (= (and d!71859 res!117446) b!253605))

(declare-fun m!313143 () Bool)

(assert (=> d!71859 m!313143))

(declare-fun m!313145 () Bool)

(assert (=> b!253605 m!313145))

(assert (=> b!253533 d!71859))

(declare-fun d!71861 () Bool)

(declare-fun res!117447 () Bool)

(declare-fun e!157594 () Bool)

(assert (=> d!71861 (=> res!117447 e!157594)))

(assert (=> d!71861 (= res!117447 (not ((_ is Cons!3698) (t!35878 rules!1920))))))

(assert (=> d!71861 (= (sepAndNonSepRulesDisjointChars!292 rules!1920 (t!35878 rules!1920)) e!157594)))

(declare-fun b!253606 () Bool)

(declare-fun e!157595 () Bool)

(assert (=> b!253606 (= e!157594 e!157595)))

(declare-fun res!117448 () Bool)

(assert (=> b!253606 (=> (not res!117448) (not e!157595))))

(assert (=> b!253606 (= res!117448 (ruleDisjointCharsFromAllFromOtherType!98 (h!9095 (t!35878 rules!1920)) rules!1920))))

(declare-fun b!253607 () Bool)

(assert (=> b!253607 (= e!157595 (sepAndNonSepRulesDisjointChars!292 rules!1920 (t!35878 (t!35878 rules!1920))))))

(assert (= (and d!71861 (not res!117447)) b!253606))

(assert (= (and b!253606 res!117448) b!253607))

(declare-fun m!313147 () Bool)

(assert (=> b!253606 m!313147))

(declare-fun m!313149 () Bool)

(assert (=> b!253607 m!313149))

(assert (=> b!253383 d!71861))

(declare-fun b!253625 () Bool)

(declare-fun e!157610 () Bool)

(declare-fun call!13433 () Bool)

(assert (=> b!253625 (= e!157610 call!13433)))

(declare-fun b!253626 () Bool)

(declare-fun e!157608 () Bool)

(assert (=> b!253626 (= e!157608 call!13433)))

(declare-fun bm!13428 () Bool)

(assert (=> bm!13428 (= call!13433 (ruleDisjointCharsFromAllFromOtherType!98 (h!9095 rules!1920) (t!35878 rules!1920)))))

(declare-fun b!253627 () Bool)

(declare-fun e!157609 () Bool)

(assert (=> b!253627 (= e!157609 e!157610)))

(declare-fun res!117456 () Bool)

(assert (=> b!253627 (= res!117456 (not ((_ is Cons!3698) rules!1920)))))

(assert (=> b!253627 (=> res!117456 e!157610)))

(declare-fun b!253628 () Bool)

(assert (=> b!253628 (= e!157609 e!157608)))

(declare-fun res!117457 () Bool)

(declare-fun rulesUseDisjointChars!47 (Rule!1206 Rule!1206) Bool)

(assert (=> b!253628 (= res!117457 (rulesUseDisjointChars!47 (h!9095 rules!1920) (h!9095 rules!1920)))))

(assert (=> b!253628 (=> (not res!117457) (not e!157608))))

(declare-fun d!71863 () Bool)

(declare-fun c!48183 () Bool)

(assert (=> d!71863 (= c!48183 (and ((_ is Cons!3698) rules!1920) (not (= (isSeparator!703 (h!9095 rules!1920)) (isSeparator!703 (h!9095 rules!1920))))))))

(assert (=> d!71863 (= (ruleDisjointCharsFromAllFromOtherType!98 (h!9095 rules!1920) rules!1920) e!157609)))

(assert (= (and d!71863 c!48183) b!253628))

(assert (= (and d!71863 (not c!48183)) b!253627))

(assert (= (and b!253628 res!117457) b!253626))

(assert (= (and b!253627 (not res!117456)) b!253625))

(assert (= (or b!253626 b!253625) bm!13428))

(declare-fun m!313159 () Bool)

(assert (=> bm!13428 m!313159))

(declare-fun m!313161 () Bool)

(assert (=> b!253628 m!313161))

(assert (=> b!253382 d!71863))

(declare-fun d!71871 () Bool)

(declare-fun charsToBigInt!1 (List!3705) Int)

(assert (=> d!71871 (= (inv!17 (value!24351 (h!9094 tokens!465))) (= (charsToBigInt!1 (text!5523 (value!24351 (h!9094 tokens!465)))) (value!24343 (value!24351 (h!9094 tokens!465)))))))

(declare-fun bs!27431 () Bool)

(assert (= bs!27431 d!71871))

(declare-fun m!313163 () Bool)

(assert (=> bs!27431 m!313163))

(assert (=> b!253365 d!71871))

(declare-fun d!71873 () Bool)

(declare-fun lt!103789 () Token!1150)

(declare-fun apply!703 (List!3707 Int) Token!1150)

(assert (=> d!71873 (= lt!103789 (apply!703 (list!1476 (_1!2289 lt!103763)) 0))))

(declare-fun apply!704 (Conc!1229 Int) Token!1150)

(assert (=> d!71873 (= lt!103789 (apply!704 (c!48155 (_1!2289 lt!103763)) 0))))

(declare-fun e!157613 () Bool)

(assert (=> d!71873 e!157613))

(declare-fun res!117460 () Bool)

(assert (=> d!71873 (=> (not res!117460) (not e!157613))))

(assert (=> d!71873 (= res!117460 (<= 0 0))))

(assert (=> d!71873 (= (apply!702 (_1!2289 lt!103763) 0) lt!103789)))

(declare-fun b!253631 () Bool)

(assert (=> b!253631 (= e!157613 (< 0 (size!2929 (_1!2289 lt!103763))))))

(assert (= (and d!71873 res!117460) b!253631))

(declare-fun m!313165 () Bool)

(assert (=> d!71873 m!313165))

(assert (=> d!71873 m!313165))

(declare-fun m!313167 () Bool)

(assert (=> d!71873 m!313167))

(declare-fun m!313169 () Bool)

(assert (=> d!71873 m!313169))

(assert (=> b!253631 m!312945))

(assert (=> b!253351 d!71873))

(declare-fun d!71875 () Bool)

(declare-fun res!117465 () Bool)

(declare-fun e!157618 () Bool)

(assert (=> d!71875 (=> res!117465 e!157618)))

(assert (=> d!71875 (= res!117465 ((_ is Nil!3698) rules!1920))))

(assert (=> d!71875 (= (noDuplicateTag!205 thiss!17480 rules!1920 Nil!3700) e!157618)))

(declare-fun b!253636 () Bool)

(declare-fun e!157619 () Bool)

(assert (=> b!253636 (= e!157618 e!157619)))

(declare-fun res!117466 () Bool)

(assert (=> b!253636 (=> (not res!117466) (not e!157619))))

(declare-fun contains!683 (List!3710 String!4705) Bool)

(assert (=> b!253636 (= res!117466 (not (contains!683 Nil!3700 (tag!911 (h!9095 rules!1920)))))))

(declare-fun b!253637 () Bool)

(assert (=> b!253637 (= e!157619 (noDuplicateTag!205 thiss!17480 (t!35878 rules!1920) (Cons!3700 (tag!911 (h!9095 rules!1920)) Nil!3700)))))

(assert (= (and d!71875 (not res!117465)) b!253636))

(assert (= (and b!253636 res!117466) b!253637))

(declare-fun m!313171 () Bool)

(assert (=> b!253636 m!313171))

(declare-fun m!313173 () Bool)

(assert (=> b!253637 m!313173))

(assert (=> b!253315 d!71875))

(declare-fun d!71877 () Bool)

(declare-fun e!157622 () Bool)

(assert (=> d!71877 e!157622))

(declare-fun res!117469 () Bool)

(assert (=> d!71877 (=> (not res!117469) (not e!157622))))

(declare-fun lt!103792 () BalanceConc!2466)

(assert (=> d!71877 (= res!117469 (= (list!1476 lt!103792) tokens!465))))

(declare-fun fromList!152 (List!3707) Conc!1229)

(assert (=> d!71877 (= lt!103792 (BalanceConc!2467 (fromList!152 tokens!465)))))

(assert (=> d!71877 (= (fromListB!283 tokens!465) lt!103792)))

(declare-fun b!253640 () Bool)

(declare-fun isBalanced!319 (Conc!1229) Bool)

(assert (=> b!253640 (= e!157622 (isBalanced!319 (fromList!152 tokens!465)))))

(assert (= (and d!71877 res!117469) b!253640))

(declare-fun m!313175 () Bool)

(assert (=> d!71877 m!313175))

(declare-fun m!313177 () Bool)

(assert (=> d!71877 m!313177))

(assert (=> b!253640 m!313177))

(assert (=> b!253640 m!313177))

(declare-fun m!313179 () Bool)

(assert (=> b!253640 m!313179))

(assert (=> d!71803 d!71877))

(declare-fun d!71879 () Bool)

(declare-fun charsToBigInt!0 (List!3705 Int) Int)

(assert (=> d!71879 (= (inv!15 (value!24351 (h!9094 tokens!465))) (= (charsToBigInt!0 (text!5524 (value!24351 (h!9094 tokens!465))) 0) (value!24346 (value!24351 (h!9094 tokens!465)))))))

(declare-fun bs!27432 () Bool)

(assert (= bs!27432 d!71879))

(declare-fun m!313181 () Bool)

(assert (=> bs!27432 m!313181))

(assert (=> b!253364 d!71879))

(declare-fun d!71881 () Bool)

(declare-fun c!48187 () Bool)

(assert (=> d!71881 (= c!48187 ((_ is Node!1228) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(declare-fun e!157627 () Bool)

(assert (=> d!71881 (= (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))) e!157627)))

(declare-fun b!253647 () Bool)

(declare-fun inv!4561 (Conc!1228) Bool)

(assert (=> b!253647 (= e!157627 (inv!4561 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(declare-fun b!253648 () Bool)

(declare-fun e!157628 () Bool)

(assert (=> b!253648 (= e!157627 e!157628)))

(declare-fun res!117472 () Bool)

(assert (=> b!253648 (= res!117472 (not ((_ is Leaf!1919) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))))))

(assert (=> b!253648 (=> res!117472 e!157628)))

(declare-fun b!253649 () Bool)

(declare-fun inv!4563 (Conc!1228) Bool)

(assert (=> b!253649 (= e!157628 (inv!4563 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(assert (= (and d!71881 c!48187) b!253647))

(assert (= (and d!71881 (not c!48187)) b!253648))

(assert (= (and b!253648 (not res!117472)) b!253649))

(declare-fun m!313183 () Bool)

(assert (=> b!253647 m!313183))

(declare-fun m!313185 () Bool)

(assert (=> b!253649 m!313185))

(assert (=> b!253523 d!71881))

(declare-fun d!71883 () Bool)

(assert (=> d!71883 true))

(declare-fun lambda!8444 () Int)

(declare-fun order!2775 () Int)

(declare-fun dynLambda!1838 (Int Int) Int)

(assert (=> d!71883 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (dynLambda!1838 order!2775 lambda!8444))))

(declare-fun Forall2!134 (Int) Bool)

(assert (=> d!71883 (= (equivClasses!222 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (Forall2!134 lambda!8444))))

(declare-fun bs!27433 () Bool)

(assert (= bs!27433 d!71883))

(declare-fun m!313187 () Bool)

(assert (=> bs!27433 m!313187))

(assert (=> b!253519 d!71883))

(declare-fun d!71885 () Bool)

(declare-fun list!1479 (Conc!1228) List!3706)

(assert (=> d!71885 (= (list!1477 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))) (list!1479 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(declare-fun bs!27434 () Bool)

(assert (= bs!27434 d!71885))

(declare-fun m!313189 () Bool)

(assert (=> bs!27434 m!313189))

(assert (=> b!253521 d!71885))

(declare-fun d!71887 () Bool)

(declare-fun lt!103795 () Int)

(assert (=> d!71887 (>= lt!103795 0)))

(declare-fun e!157633 () Int)

(assert (=> d!71887 (= lt!103795 e!157633)))

(declare-fun c!48190 () Bool)

(assert (=> d!71887 (= c!48190 ((_ is Nil!3696) (originalCharacters!746 separatorToken!170)))))

(assert (=> d!71887 (= (size!2933 (originalCharacters!746 separatorToken!170)) lt!103795)))

(declare-fun b!253658 () Bool)

(assert (=> b!253658 (= e!157633 0)))

(declare-fun b!253659 () Bool)

(assert (=> b!253659 (= e!157633 (+ 1 (size!2933 (t!35876 (originalCharacters!746 separatorToken!170)))))))

(assert (= (and d!71887 c!48190) b!253658))

(assert (= (and d!71887 (not c!48190)) b!253659))

(declare-fun m!313191 () Bool)

(assert (=> b!253659 m!313191))

(assert (=> b!253522 d!71887))

(declare-fun d!71889 () Bool)

(declare-fun lt!103798 () Int)

(assert (=> d!71889 (>= lt!103798 0)))

(declare-fun e!157636 () Int)

(assert (=> d!71889 (= lt!103798 e!157636)))

(declare-fun c!48193 () Bool)

(assert (=> d!71889 (= c!48193 ((_ is Nil!3697) (list!1476 lt!103752)))))

(assert (=> d!71889 (= (size!2934 (list!1476 lt!103752)) lt!103798)))

(declare-fun b!253664 () Bool)

(assert (=> b!253664 (= e!157636 0)))

(declare-fun b!253665 () Bool)

(assert (=> b!253665 (= e!157636 (+ 1 (size!2934 (t!35877 (list!1476 lt!103752)))))))

(assert (= (and d!71889 c!48193) b!253664))

(assert (= (and d!71889 (not c!48193)) b!253665))

(declare-fun m!313193 () Bool)

(assert (=> b!253665 m!313193))

(assert (=> d!71805 d!71889))

(declare-fun d!71891 () Bool)

(declare-fun list!1480 (Conc!1229) List!3707)

(assert (=> d!71891 (= (list!1476 lt!103752) (list!1480 (c!48155 lt!103752)))))

(declare-fun bs!27435 () Bool)

(assert (= bs!27435 d!71891))

(declare-fun m!313195 () Bool)

(assert (=> bs!27435 m!313195))

(assert (=> d!71805 d!71891))

(declare-fun d!71893 () Bool)

(declare-fun lt!103801 () Int)

(assert (=> d!71893 (= lt!103801 (size!2934 (list!1480 (c!48155 lt!103752))))))

(assert (=> d!71893 (= lt!103801 (ite ((_ is Empty!1229) (c!48155 lt!103752)) 0 (ite ((_ is Leaf!1920) (c!48155 lt!103752)) (csize!2689 (c!48155 lt!103752)) (csize!2688 (c!48155 lt!103752)))))))

(assert (=> d!71893 (= (size!2935 (c!48155 lt!103752)) lt!103801)))

(declare-fun bs!27436 () Bool)

(assert (= bs!27436 d!71893))

(assert (=> bs!27436 m!313195))

(assert (=> bs!27436 m!313195))

(declare-fun m!313197 () Bool)

(assert (=> bs!27436 m!313197))

(assert (=> d!71805 d!71893))

(declare-fun d!71895 () Bool)

(assert (=> d!71895 (= (isEmpty!2304 (originalCharacters!746 (h!9094 tokens!465))) ((_ is Nil!3696) (originalCharacters!746 (h!9094 tokens!465))))))

(assert (=> d!71775 d!71895))

(declare-fun bs!27437 () Bool)

(declare-fun d!71897 () Bool)

(assert (= bs!27437 (and d!71897 d!71883)))

(declare-fun lambda!8445 () Int)

(assert (=> bs!27437 (= (= (toValue!1410 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (= lambda!8445 lambda!8444))))

(assert (=> d!71897 true))

(assert (=> d!71897 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1838 order!2775 lambda!8445))))

(assert (=> d!71897 (= (equivClasses!222 (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (Forall2!134 lambda!8445))))

(declare-fun bs!27438 () Bool)

(assert (= bs!27438 d!71897))

(declare-fun m!313199 () Bool)

(assert (=> bs!27438 m!313199))

(assert (=> b!253371 d!71897))

(declare-fun bs!27443 () Bool)

(declare-fun d!71899 () Bool)

(assert (= bs!27443 (and d!71899 b!253294)))

(declare-fun lambda!8451 () Int)

(assert (=> bs!27443 (not (= lambda!8451 lambda!8420))))

(declare-fun bs!27444 () Bool)

(assert (= bs!27444 (and d!71899 d!71777)))

(assert (=> bs!27444 (= lambda!8451 lambda!8430)))

(declare-fun b!253689 () Bool)

(declare-fun e!157660 () Bool)

(assert (=> b!253689 (= e!157660 true)))

(declare-fun b!253688 () Bool)

(declare-fun e!157659 () Bool)

(assert (=> b!253688 (= e!157659 e!157660)))

(declare-fun b!253687 () Bool)

(declare-fun e!157658 () Bool)

(assert (=> b!253687 (= e!157658 e!157659)))

(assert (=> d!71899 e!157658))

(assert (= b!253688 b!253689))

(assert (= b!253687 b!253688))

(assert (= (and d!71899 ((_ is Cons!3698) rules!1920)) b!253687))

(assert (=> b!253689 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1834 order!2767 lambda!8451))))

(assert (=> b!253689 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1834 order!2767 lambda!8451))))

(assert (=> d!71899 true))

(declare-fun lt!103810 () Bool)

(assert (=> d!71899 (= lt!103810 (forall!877 (list!1476 lt!103752) lambda!8451))))

(declare-fun e!157657 () Bool)

(assert (=> d!71899 (= lt!103810 e!157657)))

(declare-fun res!117492 () Bool)

(assert (=> d!71899 (=> res!117492 e!157657)))

(assert (=> d!71899 (= res!117492 (not ((_ is Cons!3697) (list!1476 lt!103752))))))

(assert (=> d!71899 (not (isEmpty!2300 rules!1920))))

(assert (=> d!71899 (= (rulesProduceEachTokenIndividuallyList!209 thiss!17480 rules!1920 (list!1476 lt!103752)) lt!103810)))

(declare-fun b!253685 () Bool)

(declare-fun e!157656 () Bool)

(assert (=> b!253685 (= e!157657 e!157656)))

(declare-fun res!117491 () Bool)

(assert (=> b!253685 (=> (not res!117491) (not e!157656))))

(assert (=> b!253685 (= res!117491 (rulesProduceIndividualToken!338 thiss!17480 rules!1920 (h!9094 (list!1476 lt!103752))))))

(declare-fun b!253686 () Bool)

(assert (=> b!253686 (= e!157656 (rulesProduceEachTokenIndividuallyList!209 thiss!17480 rules!1920 (t!35877 (list!1476 lt!103752))))))

(assert (= (and d!71899 (not res!117492)) b!253685))

(assert (= (and b!253685 res!117491) b!253686))

(assert (=> d!71899 m!313039))

(declare-fun m!313219 () Bool)

(assert (=> d!71899 m!313219))

(assert (=> d!71899 m!312867))

(declare-fun m!313221 () Bool)

(assert (=> b!253685 m!313221))

(declare-fun m!313223 () Bool)

(assert (=> b!253686 m!313223))

(assert (=> b!253500 d!71899))

(assert (=> b!253500 d!71891))

(declare-fun d!71909 () Bool)

(declare-fun c!48194 () Bool)

(assert (=> d!71909 (= c!48194 ((_ is Node!1228) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(declare-fun e!157661 () Bool)

(assert (=> d!71909 (= (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))) e!157661)))

(declare-fun b!253690 () Bool)

(assert (=> b!253690 (= e!157661 (inv!4561 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(declare-fun b!253691 () Bool)

(declare-fun e!157662 () Bool)

(assert (=> b!253691 (= e!157661 e!157662)))

(declare-fun res!117493 () Bool)

(assert (=> b!253691 (= res!117493 (not ((_ is Leaf!1919) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))))))

(assert (=> b!253691 (=> res!117493 e!157662)))

(declare-fun b!253692 () Bool)

(assert (=> b!253692 (= e!157662 (inv!4563 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(assert (= (and d!71909 c!48194) b!253690))

(assert (= (and d!71909 (not c!48194)) b!253691))

(assert (= (and b!253691 (not res!117493)) b!253692))

(declare-fun m!313225 () Bool)

(assert (=> b!253690 m!313225))

(declare-fun m!313227 () Bool)

(assert (=> b!253692 m!313227))

(assert (=> b!253394 d!71909))

(declare-fun d!71911 () Bool)

(declare-fun e!157665 () Bool)

(assert (=> d!71911 e!157665))

(declare-fun res!117496 () Bool)

(assert (=> d!71911 (=> (not res!117496) (not e!157665))))

(declare-fun lt!103813 () BalanceConc!2466)

(assert (=> d!71911 (= res!117496 (= (list!1476 lt!103813) (Cons!3697 separatorToken!170 Nil!3697)))))

(declare-fun singleton!96 (Token!1150) BalanceConc!2466)

(assert (=> d!71911 (= lt!103813 (singleton!96 separatorToken!170))))

(assert (=> d!71911 (= (singletonSeq!255 separatorToken!170) lt!103813)))

(declare-fun b!253695 () Bool)

(assert (=> b!253695 (= e!157665 (isBalanced!319 (c!48155 lt!103813)))))

(assert (= (and d!71911 res!117496) b!253695))

(declare-fun m!313229 () Bool)

(assert (=> d!71911 m!313229))

(declare-fun m!313231 () Bool)

(assert (=> d!71911 m!313231))

(declare-fun m!313233 () Bool)

(assert (=> b!253695 m!313233))

(assert (=> d!71751 d!71911))

(declare-fun d!71913 () Bool)

(assert (=> d!71913 (= (list!1476 (_1!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))) (list!1480 (c!48155 (_1!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))))

(declare-fun bs!27445 () Bool)

(assert (= bs!27445 d!71913))

(declare-fun m!313235 () Bool)

(assert (=> bs!27445 m!313235))

(assert (=> d!71751 d!71913))

(declare-fun b!253743 () Bool)

(declare-fun e!157701 () Bool)

(declare-fun lt!103829 () tuple2!4146)

(declare-datatypes ((tuple2!4150 0))(
  ( (tuple2!4151 (_1!2291 List!3707) (_2!2291 List!3706)) )
))
(declare-fun lexList!193 (LexerInterface!589 List!3708 List!3706) tuple2!4150)

(assert (=> b!253743 (= e!157701 (= (list!1477 (_2!2289 lt!103829)) (_2!2291 (lexList!193 thiss!17480 rules!1920 (list!1477 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))))

(declare-fun b!253744 () Bool)

(declare-fun e!157700 () Bool)

(declare-fun e!157699 () Bool)

(assert (=> b!253744 (= e!157700 e!157699)))

(declare-fun res!117528 () Bool)

(declare-fun size!2937 (BalanceConc!2464) Int)

(assert (=> b!253744 (= res!117528 (< (size!2937 (_2!2289 lt!103829)) (size!2937 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))

(assert (=> b!253744 (=> (not res!117528) (not e!157699))))

(declare-fun b!253745 () Bool)

(assert (=> b!253745 (= e!157700 (= (_2!2289 lt!103829) (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))))

(declare-fun d!71915 () Bool)

(assert (=> d!71915 e!157701))

(declare-fun res!117526 () Bool)

(assert (=> d!71915 (=> (not res!117526) (not e!157701))))

(assert (=> d!71915 (= res!117526 e!157700)))

(declare-fun c!48204 () Bool)

(assert (=> d!71915 (= c!48204 (> (size!2929 (_1!2289 lt!103829)) 0))))

(declare-fun lexTailRecV2!160 (LexerInterface!589 List!3708 BalanceConc!2464 BalanceConc!2464 BalanceConc!2464 BalanceConc!2466) tuple2!4146)

(assert (=> d!71915 (= lt!103829 (lexTailRecV2!160 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)) (BalanceConc!2465 Empty!1228) (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)) (BalanceConc!2467 Empty!1229)))))

(assert (=> d!71915 (= (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))) lt!103829)))

(declare-fun b!253746 () Bool)

(declare-fun res!117527 () Bool)

(assert (=> b!253746 (=> (not res!117527) (not e!157701))))

(assert (=> b!253746 (= res!117527 (= (list!1476 (_1!2289 lt!103829)) (_1!2291 (lexList!193 thiss!17480 rules!1920 (list!1477 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))))

(declare-fun b!253747 () Bool)

(declare-fun isEmpty!2308 (BalanceConc!2466) Bool)

(assert (=> b!253747 (= e!157699 (not (isEmpty!2308 (_1!2289 lt!103829))))))

(assert (= (and d!71915 c!48204) b!253744))

(assert (= (and d!71915 (not c!48204)) b!253745))

(assert (= (and b!253744 res!117528) b!253747))

(assert (= (and d!71915 res!117526) b!253746))

(assert (= (and b!253746 res!117527) b!253743))

(declare-fun m!313293 () Bool)

(assert (=> b!253743 m!313293))

(assert (=> b!253743 m!312943))

(declare-fun m!313295 () Bool)

(assert (=> b!253743 m!313295))

(assert (=> b!253743 m!313295))

(declare-fun m!313297 () Bool)

(assert (=> b!253743 m!313297))

(declare-fun m!313299 () Bool)

(assert (=> d!71915 m!313299))

(assert (=> d!71915 m!312943))

(assert (=> d!71915 m!312943))

(declare-fun m!313301 () Bool)

(assert (=> d!71915 m!313301))

(declare-fun m!313303 () Bool)

(assert (=> b!253747 m!313303))

(declare-fun m!313305 () Bool)

(assert (=> b!253744 m!313305))

(assert (=> b!253744 m!312943))

(declare-fun m!313307 () Bool)

(assert (=> b!253744 m!313307))

(declare-fun m!313309 () Bool)

(assert (=> b!253746 m!313309))

(assert (=> b!253746 m!312943))

(assert (=> b!253746 m!313295))

(assert (=> b!253746 m!313295))

(assert (=> b!253746 m!313297))

(assert (=> d!71751 d!71915))

(declare-fun d!71937 () Bool)

(assert (=> d!71937 (= (list!1476 (singletonSeq!255 separatorToken!170)) (list!1480 (c!48155 (singletonSeq!255 separatorToken!170))))))

(declare-fun bs!27452 () Bool)

(assert (= bs!27452 d!71937))

(declare-fun m!313311 () Bool)

(assert (=> bs!27452 m!313311))

(assert (=> d!71751 d!71937))

(declare-fun d!71939 () Bool)

(declare-fun lt!103842 () BalanceConc!2464)

(declare-fun printList!273 (LexerInterface!589 List!3707) List!3706)

(assert (=> d!71939 (= (list!1477 lt!103842) (printList!273 thiss!17480 (list!1476 (singletonSeq!255 separatorToken!170))))))

(declare-fun printTailRec!283 (LexerInterface!589 BalanceConc!2466 Int BalanceConc!2464) BalanceConc!2464)

(assert (=> d!71939 (= lt!103842 (printTailRec!283 thiss!17480 (singletonSeq!255 separatorToken!170) 0 (BalanceConc!2465 Empty!1228)))))

(assert (=> d!71939 (= (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)) lt!103842)))

(declare-fun bs!27461 () Bool)

(assert (= bs!27461 d!71939))

(declare-fun m!313349 () Bool)

(assert (=> bs!27461 m!313349))

(assert (=> bs!27461 m!312937))

(assert (=> bs!27461 m!312941))

(assert (=> bs!27461 m!312941))

(declare-fun m!313351 () Bool)

(assert (=> bs!27461 m!313351))

(assert (=> bs!27461 m!312937))

(declare-fun m!313353 () Bool)

(assert (=> bs!27461 m!313353))

(assert (=> d!71751 d!71939))

(assert (=> d!71751 d!71807))

(declare-fun d!71969 () Bool)

(declare-fun lt!103843 () Int)

(assert (=> d!71969 (= lt!103843 (size!2934 (list!1476 (_1!2289 lt!103763))))))

(assert (=> d!71969 (= lt!103843 (size!2935 (c!48155 (_1!2289 lt!103763))))))

(assert (=> d!71969 (= (size!2929 (_1!2289 lt!103763)) lt!103843)))

(declare-fun bs!27462 () Bool)

(assert (= bs!27462 d!71969))

(assert (=> bs!27462 m!313165))

(assert (=> bs!27462 m!313165))

(declare-fun m!313355 () Bool)

(assert (=> bs!27462 m!313355))

(declare-fun m!313357 () Bool)

(assert (=> bs!27462 m!313357))

(assert (=> d!71751 d!71969))

(declare-fun d!71971 () Bool)

(assert (=> d!71971 true))

(declare-fun lambda!8456 () Int)

(declare-fun order!2777 () Int)

(declare-fun dynLambda!1839 (Int Int) Int)

(assert (=> d!71971 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) (dynLambda!1839 order!2777 lambda!8456))))

(assert (=> d!71971 true))

(assert (=> d!71971 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (dynLambda!1839 order!2777 lambda!8456))))

(declare-fun Forall!158 (Int) Bool)

(assert (=> d!71971 (= (semiInverseModEq!239 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (Forall!158 lambda!8456))))

(declare-fun bs!27468 () Bool)

(assert (= bs!27468 d!71971))

(declare-fun m!313365 () Bool)

(assert (=> bs!27468 m!313365))

(assert (=> d!71813 d!71971))

(declare-fun d!71977 () Bool)

(declare-fun lt!103847 () Int)

(assert (=> d!71977 (>= lt!103847 0)))

(declare-fun e!157722 () Int)

(assert (=> d!71977 (= lt!103847 e!157722)))

(declare-fun c!48209 () Bool)

(assert (=> d!71977 (= c!48209 ((_ is Nil!3696) (originalCharacters!746 (h!9094 tokens!465))))))

(assert (=> d!71977 (= (size!2933 (originalCharacters!746 (h!9094 tokens!465))) lt!103847)))

(declare-fun b!253789 () Bool)

(assert (=> b!253789 (= e!157722 0)))

(declare-fun b!253790 () Bool)

(assert (=> b!253790 (= e!157722 (+ 1 (size!2933 (t!35876 (originalCharacters!746 (h!9094 tokens!465))))))))

(assert (= (and d!71977 c!48209) b!253789))

(assert (= (and d!71977 (not c!48209)) b!253790))

(declare-fun m!313367 () Bool)

(assert (=> b!253790 m!313367))

(assert (=> b!253389 d!71977))

(declare-fun d!71979 () Bool)

(assert (=> d!71979 (= (list!1477 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))) (list!1479 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(declare-fun bs!27469 () Bool)

(assert (= bs!27469 d!71979))

(declare-fun m!313369 () Bool)

(assert (=> bs!27469 m!313369))

(assert (=> b!253388 d!71979))

(declare-fun d!71981 () Bool)

(assert (=> d!71981 (= (isEmpty!2304 (originalCharacters!746 separatorToken!170)) ((_ is Nil!3696) (originalCharacters!746 separatorToken!170)))))

(assert (=> d!71819 d!71981))

(declare-fun d!71983 () Bool)

(declare-fun charsToInt!0 (List!3705) (_ BitVec 32))

(assert (=> d!71983 (= (inv!16 (value!24351 (h!9094 tokens!465))) (= (charsToInt!0 (text!5522 (value!24351 (h!9094 tokens!465)))) (value!24342 (value!24351 (h!9094 tokens!465)))))))

(declare-fun bs!27470 () Bool)

(assert (= bs!27470 d!71983))

(declare-fun m!313371 () Bool)

(assert (=> bs!27470 m!313371))

(assert (=> b!253367 d!71983))

(declare-fun lt!103848 () Bool)

(declare-fun d!71985 () Bool)

(assert (=> d!71985 (= lt!103848 (isEmpty!2304 (list!1477 (_2!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))))

(assert (=> d!71985 (= lt!103848 (isEmpty!2305 (c!48153 (_2!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170)))))))))

(assert (=> d!71985 (= (isEmpty!2303 (_2!2289 (lex!389 thiss!17480 rules!1920 (print!320 thiss!17480 (singletonSeq!255 separatorToken!170))))) lt!103848)))

(declare-fun bs!27471 () Bool)

(assert (= bs!27471 d!71985))

(declare-fun m!313379 () Bool)

(assert (=> bs!27471 m!313379))

(assert (=> bs!27471 m!313379))

(declare-fun m!313381 () Bool)

(assert (=> bs!27471 m!313381))

(declare-fun m!313383 () Bool)

(assert (=> bs!27471 m!313383))

(assert (=> b!253353 d!71985))

(assert (=> b!253353 d!71915))

(assert (=> b!253353 d!71939))

(assert (=> b!253353 d!71911))

(declare-fun d!71987 () Bool)

(assert (=> d!71987 (= (inv!17 (value!24351 separatorToken!170)) (= (charsToBigInt!1 (text!5523 (value!24351 separatorToken!170))) (value!24343 (value!24351 separatorToken!170))))))

(declare-fun bs!27472 () Bool)

(assert (= bs!27472 d!71987))

(declare-fun m!313385 () Bool)

(assert (=> bs!27472 m!313385))

(assert (=> b!253515 d!71987))

(declare-fun d!71989 () Bool)

(assert (=> d!71989 (= (inv!15 (value!24351 separatorToken!170)) (= (charsToBigInt!0 (text!5524 (value!24351 separatorToken!170)) 0) (value!24346 (value!24351 separatorToken!170))))))

(declare-fun bs!27473 () Bool)

(assert (= bs!27473 d!71989))

(declare-fun m!313387 () Bool)

(assert (=> bs!27473 m!313387))

(assert (=> b!253514 d!71989))

(declare-fun d!71991 () Bool)

(declare-fun isBalanced!322 (Conc!1228) Bool)

(assert (=> d!71991 (= (inv!4559 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))) (isBalanced!322 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))))))

(declare-fun bs!27474 () Bool)

(assert (= bs!27474 d!71991))

(declare-fun m!313397 () Bool)

(assert (=> bs!27474 m!313397))

(assert (=> tb!13201 d!71991))

(declare-fun d!71993 () Bool)

(assert (=> d!71993 true))

(declare-fun lt!103851 () Bool)

(declare-fun rulesValidInductive!188 (LexerInterface!589 List!3708) Bool)

(assert (=> d!71993 (= lt!103851 (rulesValidInductive!188 thiss!17480 rules!1920))))

(declare-fun lambda!8459 () Int)

(declare-fun forall!882 (List!3708 Int) Bool)

(assert (=> d!71993 (= lt!103851 (forall!882 rules!1920 lambda!8459))))

(assert (=> d!71993 (= (rulesValid!205 thiss!17480 rules!1920) lt!103851)))

(declare-fun bs!27475 () Bool)

(assert (= bs!27475 d!71993))

(declare-fun m!313409 () Bool)

(assert (=> bs!27475 m!313409))

(declare-fun m!313411 () Bool)

(assert (=> bs!27475 m!313411))

(assert (=> d!71747 d!71993))

(declare-fun bs!27478 () Bool)

(declare-fun d!71995 () Bool)

(assert (= bs!27478 (and d!71995 d!71883)))

(declare-fun lambda!8460 () Int)

(assert (=> bs!27478 (= (= (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170)))) (= lambda!8460 lambda!8444))))

(declare-fun bs!27479 () Bool)

(assert (= bs!27479 (and d!71995 d!71897)))

(assert (=> bs!27479 (= (= (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (= lambda!8460 lambda!8445))))

(assert (=> d!71995 true))

(assert (=> d!71995 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))) (dynLambda!1838 order!2775 lambda!8460))))

(assert (=> d!71995 (= (equivClasses!222 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))) (Forall2!134 lambda!8460))))

(declare-fun bs!27480 () Bool)

(assert (= bs!27480 d!71995))

(declare-fun m!313413 () Bool)

(assert (=> bs!27480 m!313413))

(assert (=> b!253520 d!71995))

(declare-fun d!72001 () Bool)

(declare-fun res!117537 () Bool)

(declare-fun e!157755 () Bool)

(assert (=> d!72001 (=> res!117537 e!157755)))

(assert (=> d!72001 (= res!117537 ((_ is Nil!3697) (list!1476 lt!103752)))))

(assert (=> d!72001 (= (forall!877 (list!1476 lt!103752) lambda!8430) e!157755)))

(declare-fun b!253865 () Bool)

(declare-fun e!157756 () Bool)

(assert (=> b!253865 (= e!157755 e!157756)))

(declare-fun res!117538 () Bool)

(assert (=> b!253865 (=> (not res!117538) (not e!157756))))

(assert (=> b!253865 (= res!117538 (dynLambda!1831 lambda!8430 (h!9094 (list!1476 lt!103752))))))

(declare-fun b!253866 () Bool)

(assert (=> b!253866 (= e!157756 (forall!877 (t!35877 (list!1476 lt!103752)) lambda!8430))))

(assert (= (and d!72001 (not res!117537)) b!253865))

(assert (= (and b!253865 res!117538) b!253866))

(declare-fun b_lambda!7583 () Bool)

(assert (=> (not b_lambda!7583) (not b!253865)))

(declare-fun m!313415 () Bool)

(assert (=> b!253865 m!313415))

(declare-fun m!313417 () Bool)

(assert (=> b!253866 m!313417))

(assert (=> d!71777 d!72001))

(assert (=> d!71777 d!71891))

(declare-fun d!72003 () Bool)

(declare-fun lt!103854 () Bool)

(assert (=> d!72003 (= lt!103854 (forall!877 (list!1476 lt!103752) lambda!8430))))

(declare-fun forall!883 (Conc!1229 Int) Bool)

(assert (=> d!72003 (= lt!103854 (forall!883 (c!48155 lt!103752) lambda!8430))))

(assert (=> d!72003 (= (forall!879 lt!103752 lambda!8430) lt!103854)))

(declare-fun bs!27481 () Bool)

(assert (= bs!27481 d!72003))

(assert (=> bs!27481 m!313039))

(assert (=> bs!27481 m!313039))

(assert (=> bs!27481 m!313041))

(declare-fun m!313419 () Bool)

(assert (=> bs!27481 m!313419))

(assert (=> d!71777 d!72003))

(assert (=> d!71777 d!71807))

(declare-fun d!72005 () Bool)

(assert (=> d!72005 (= (inv!4551 (tag!911 (rule!1284 (h!9094 (t!35877 tokens!465))))) (= (mod (str.len (value!24350 (tag!911 (rule!1284 (h!9094 (t!35877 tokens!465)))))) 2) 0))))

(assert (=> b!253547 d!72005))

(declare-fun d!72007 () Bool)

(declare-fun res!117539 () Bool)

(declare-fun e!157757 () Bool)

(assert (=> d!72007 (=> (not res!117539) (not e!157757))))

(assert (=> d!72007 (= res!117539 (semiInverseModEq!239 (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))))))

(assert (=> d!72007 (= (inv!4554 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) e!157757)))

(declare-fun b!253867 () Bool)

(assert (=> b!253867 (= e!157757 (equivClasses!222 (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))))))

(assert (= (and d!72007 res!117539) b!253867))

(declare-fun m!313421 () Bool)

(assert (=> d!72007 m!313421))

(declare-fun m!313423 () Bool)

(assert (=> b!253867 m!313423))

(assert (=> b!253547 d!72007))

(declare-fun bs!27482 () Bool)

(declare-fun d!72009 () Bool)

(assert (= bs!27482 (and d!72009 d!71971)))

(declare-fun lambda!8461 () Int)

(assert (=> bs!27482 (= (and (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) (= (toValue!1410 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170))))) (= lambda!8461 lambda!8456))))

(assert (=> d!72009 true))

(assert (=> d!72009 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1839 order!2777 lambda!8461))))

(assert (=> d!72009 true))

(assert (=> d!72009 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (dynLambda!1839 order!2777 lambda!8461))))

(assert (=> d!72009 (= (semiInverseModEq!239 (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toValue!1410 (transformation!703 (h!9095 rules!1920)))) (Forall!158 lambda!8461))))

(declare-fun bs!27483 () Bool)

(assert (= bs!27483 d!72009))

(declare-fun m!313425 () Bool)

(assert (=> bs!27483 m!313425))

(assert (=> d!71769 d!72009))

(declare-fun bs!27484 () Bool)

(declare-fun d!72011 () Bool)

(assert (= bs!27484 (and d!72011 d!71971)))

(declare-fun lambda!8462 () Int)

(assert (=> bs!27484 (= (and (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) (= (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 separatorToken!170))))) (= lambda!8462 lambda!8456))))

(declare-fun bs!27485 () Bool)

(assert (= bs!27485 (and d!72011 d!72009)))

(assert (=> bs!27485 (= (and (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (h!9095 rules!1920)))) (= (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (h!9095 rules!1920))))) (= lambda!8462 lambda!8461))))

(assert (=> d!72011 true))

(assert (=> d!72011 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) (dynLambda!1839 order!2777 lambda!8462))))

(assert (=> d!72011 true))

(assert (=> d!72011 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))) (dynLambda!1839 order!2777 lambda!8462))))

(assert (=> d!72011 (= (semiInverseModEq!239 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toValue!1410 (transformation!703 (rule!1284 (h!9094 tokens!465))))) (Forall!158 lambda!8462))))

(declare-fun bs!27486 () Bool)

(assert (= bs!27486 d!72011))

(declare-fun m!313427 () Bool)

(assert (=> bs!27486 m!313427))

(assert (=> d!71817 d!72011))

(declare-fun d!72013 () Bool)

(declare-fun c!48210 () Bool)

(assert (=> d!72013 (= c!48210 ((_ is IntegerValue!2175) (value!24351 (h!9094 (t!35877 tokens!465)))))))

(declare-fun e!157758 () Bool)

(assert (=> d!72013 (= (inv!21 (value!24351 (h!9094 (t!35877 tokens!465)))) e!157758)))

(declare-fun b!253868 () Bool)

(declare-fun e!157759 () Bool)

(assert (=> b!253868 (= e!157759 (inv!15 (value!24351 (h!9094 (t!35877 tokens!465)))))))

(declare-fun b!253869 () Bool)

(declare-fun e!157760 () Bool)

(assert (=> b!253869 (= e!157760 (inv!17 (value!24351 (h!9094 (t!35877 tokens!465)))))))

(declare-fun b!253870 () Bool)

(assert (=> b!253870 (= e!157758 e!157760)))

(declare-fun c!48211 () Bool)

(assert (=> b!253870 (= c!48211 ((_ is IntegerValue!2176) (value!24351 (h!9094 (t!35877 tokens!465)))))))

(declare-fun b!253871 () Bool)

(assert (=> b!253871 (= e!157758 (inv!16 (value!24351 (h!9094 (t!35877 tokens!465)))))))

(declare-fun b!253872 () Bool)

(declare-fun res!117540 () Bool)

(assert (=> b!253872 (=> res!117540 e!157759)))

(assert (=> b!253872 (= res!117540 (not ((_ is IntegerValue!2177) (value!24351 (h!9094 (t!35877 tokens!465))))))))

(assert (=> b!253872 (= e!157760 e!157759)))

(assert (= (and d!72013 c!48210) b!253871))

(assert (= (and d!72013 (not c!48210)) b!253870))

(assert (= (and b!253870 c!48211) b!253869))

(assert (= (and b!253870 (not c!48211)) b!253872))

(assert (= (and b!253872 (not res!117540)) b!253868))

(declare-fun m!313429 () Bool)

(assert (=> b!253868 m!313429))

(declare-fun m!313431 () Bool)

(assert (=> b!253869 m!313431))

(declare-fun m!313433 () Bool)

(assert (=> b!253871 m!313433))

(assert (=> b!253546 d!72013))

(declare-fun d!72015 () Bool)

(assert (=> d!72015 (= (inv!4559 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))) (isBalanced!322 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))))))

(declare-fun bs!27487 () Bool)

(assert (= bs!27487 d!72015))

(declare-fun m!313435 () Bool)

(assert (=> bs!27487 m!313435))

(assert (=> tb!13215 d!72015))

(declare-fun d!72017 () Bool)

(assert (=> d!72017 (= (inv!16 (value!24351 separatorToken!170)) (= (charsToInt!0 (text!5522 (value!24351 separatorToken!170))) (value!24342 (value!24351 separatorToken!170))))))

(declare-fun bs!27488 () Bool)

(assert (= bs!27488 d!72017))

(declare-fun m!313437 () Bool)

(assert (=> bs!27488 m!313437))

(assert (=> b!253517 d!72017))

(declare-fun d!72019 () Bool)

(declare-fun res!117541 () Bool)

(declare-fun e!157761 () Bool)

(assert (=> d!72019 (=> res!117541 e!157761)))

(assert (=> d!72019 (= res!117541 ((_ is Nil!3697) (t!35877 tokens!465)))))

(assert (=> d!72019 (= (forall!877 (t!35877 tokens!465) lambda!8420) e!157761)))

(declare-fun b!253873 () Bool)

(declare-fun e!157762 () Bool)

(assert (=> b!253873 (= e!157761 e!157762)))

(declare-fun res!117542 () Bool)

(assert (=> b!253873 (=> (not res!117542) (not e!157762))))

(assert (=> b!253873 (= res!117542 (dynLambda!1831 lambda!8420 (h!9094 (t!35877 tokens!465))))))

(declare-fun b!253874 () Bool)

(assert (=> b!253874 (= e!157762 (forall!877 (t!35877 (t!35877 tokens!465)) lambda!8420))))

(assert (= (and d!72019 (not res!117541)) b!253873))

(assert (= (and b!253873 res!117542) b!253874))

(declare-fun b_lambda!7585 () Bool)

(assert (=> (not b_lambda!7585) (not b!253873)))

(declare-fun m!313439 () Bool)

(assert (=> b!253873 m!313439))

(declare-fun m!313441 () Bool)

(assert (=> b!253874 m!313441))

(assert (=> b!253377 d!72019))

(declare-fun d!72021 () Bool)

(declare-fun res!117543 () Bool)

(declare-fun e!157763 () Bool)

(assert (=> d!72021 (=> (not res!117543) (not e!157763))))

(assert (=> d!72021 (= res!117543 (not (isEmpty!2304 (originalCharacters!746 (h!9094 (t!35877 tokens!465))))))))

(assert (=> d!72021 (= (inv!4555 (h!9094 (t!35877 tokens!465))) e!157763)))

(declare-fun b!253875 () Bool)

(declare-fun res!117544 () Bool)

(assert (=> b!253875 (=> (not res!117544) (not e!157763))))

(assert (=> b!253875 (= res!117544 (= (originalCharacters!746 (h!9094 (t!35877 tokens!465))) (list!1477 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (value!24351 (h!9094 (t!35877 tokens!465)))))))))

(declare-fun b!253876 () Bool)

(assert (=> b!253876 (= e!157763 (= (size!2928 (h!9094 (t!35877 tokens!465))) (size!2933 (originalCharacters!746 (h!9094 (t!35877 tokens!465))))))))

(assert (= (and d!72021 res!117543) b!253875))

(assert (= (and b!253875 res!117544) b!253876))

(declare-fun b_lambda!7587 () Bool)

(assert (=> (not b_lambda!7587) (not b!253875)))

(declare-fun t!35962 () Bool)

(declare-fun tb!13251 () Bool)

(assert (=> (and b!253297 (= (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35962) tb!13251))

(declare-fun b!253877 () Bool)

(declare-fun e!157764 () Bool)

(declare-fun tp!97860 () Bool)

(assert (=> b!253877 (= e!157764 (and (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (value!24351 (h!9094 (t!35877 tokens!465)))))) tp!97860))))

(declare-fun result!16644 () Bool)

(assert (=> tb!13251 (= result!16644 (and (inv!4559 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (value!24351 (h!9094 (t!35877 tokens!465))))) e!157764))))

(assert (= tb!13251 b!253877))

(declare-fun m!313443 () Bool)

(assert (=> b!253877 m!313443))

(declare-fun m!313445 () Bool)

(assert (=> tb!13251 m!313445))

(assert (=> b!253875 t!35962))

(declare-fun b_and!19323 () Bool)

(assert (= b_and!19291 (and (=> t!35962 result!16644) b_and!19323)))

(declare-fun t!35964 () Bool)

(declare-fun tb!13253 () Bool)

(assert (=> (and b!253548 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35964) tb!13253))

(declare-fun result!16646 () Bool)

(assert (= result!16646 result!16644))

(assert (=> b!253875 t!35964))

(declare-fun b_and!19325 () Bool)

(assert (= b_and!19303 (and (=> t!35964 result!16646) b_and!19325)))

(declare-fun t!35966 () Bool)

(declare-fun tb!13255 () Bool)

(assert (=> (and b!253304 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35966) tb!13255))

(declare-fun result!16648 () Bool)

(assert (= result!16648 result!16644))

(assert (=> b!253875 t!35966))

(declare-fun b_and!19327 () Bool)

(assert (= b_and!19293 (and (=> t!35966 result!16648) b_and!19327)))

(declare-fun t!35968 () Bool)

(declare-fun tb!13257 () Bool)

(assert (=> (and b!253302 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35968) tb!13257))

(declare-fun result!16650 () Bool)

(assert (= result!16650 result!16644))

(assert (=> b!253875 t!35968))

(declare-fun b_and!19329 () Bool)

(assert (= b_and!19295 (and (=> t!35968 result!16650) b_and!19329)))

(declare-fun t!35970 () Bool)

(declare-fun tb!13259 () Bool)

(assert (=> (and b!253534 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35970) tb!13259))

(declare-fun result!16652 () Bool)

(assert (= result!16652 result!16644))

(assert (=> b!253875 t!35970))

(declare-fun b_and!19331 () Bool)

(assert (= b_and!19299 (and (=> t!35970 result!16652) b_and!19331)))

(declare-fun m!313447 () Bool)

(assert (=> d!72021 m!313447))

(declare-fun m!313449 () Bool)

(assert (=> b!253875 m!313449))

(assert (=> b!253875 m!313449))

(declare-fun m!313451 () Bool)

(assert (=> b!253875 m!313451))

(declare-fun m!313453 () Bool)

(assert (=> b!253876 m!313453))

(assert (=> b!253545 d!72021))

(declare-fun b!253880 () Bool)

(declare-fun e!157765 () Bool)

(declare-fun tp!97861 () Bool)

(assert (=> b!253880 (= e!157765 tp!97861)))

(declare-fun b!253879 () Bool)

(declare-fun tp!97862 () Bool)

(declare-fun tp!97865 () Bool)

(assert (=> b!253879 (= e!157765 (and tp!97862 tp!97865))))

(declare-fun b!253881 () Bool)

(declare-fun tp!97863 () Bool)

(declare-fun tp!97864 () Bool)

(assert (=> b!253881 (= e!157765 (and tp!97863 tp!97864))))

(declare-fun b!253878 () Bool)

(assert (=> b!253878 (= e!157765 tp_is_empty!1775)))

(assert (=> b!253533 (= tp!97705 e!157765)))

(assert (= (and b!253533 ((_ is ElementMatch!927) (regex!703 (h!9095 (t!35878 rules!1920))))) b!253878))

(assert (= (and b!253533 ((_ is Concat!1653) (regex!703 (h!9095 (t!35878 rules!1920))))) b!253879))

(assert (= (and b!253533 ((_ is Star!927) (regex!703 (h!9095 (t!35878 rules!1920))))) b!253880))

(assert (= (and b!253533 ((_ is Union!927) (regex!703 (h!9095 (t!35878 rules!1920))))) b!253881))

(declare-fun b!253884 () Bool)

(declare-fun e!157768 () Bool)

(assert (=> b!253884 (= e!157768 true)))

(declare-fun b!253883 () Bool)

(declare-fun e!157767 () Bool)

(assert (=> b!253883 (= e!157767 e!157768)))

(declare-fun b!253882 () Bool)

(declare-fun e!157766 () Bool)

(assert (=> b!253882 (= e!157766 e!157767)))

(assert (=> b!253509 e!157766))

(assert (= b!253883 b!253884))

(assert (= b!253882 b!253883))

(assert (= (and b!253509 ((_ is Cons!3698) (t!35878 rules!1920))) b!253882))

(assert (=> b!253884 (< (dynLambda!1833 order!2765 (toValue!1410 (transformation!703 (h!9095 (t!35878 rules!1920))))) (dynLambda!1834 order!2767 lambda!8430))))

(assert (=> b!253884 (< (dynLambda!1835 order!2769 (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920))))) (dynLambda!1834 order!2767 lambda!8430))))

(declare-fun b!253885 () Bool)

(declare-fun e!157769 () Bool)

(declare-fun tp!97866 () Bool)

(assert (=> b!253885 (= e!157769 (and tp_is_empty!1775 tp!97866))))

(assert (=> b!253553 (= tp!97723 e!157769)))

(assert (= (and b!253553 ((_ is Cons!3696) (t!35876 (originalCharacters!746 (h!9094 tokens!465))))) b!253885))

(declare-fun b!253888 () Bool)

(declare-fun b_free!9445 () Bool)

(declare-fun b_next!9445 () Bool)

(assert (=> b!253888 (= b_free!9445 (not b_next!9445))))

(declare-fun tp!97867 () Bool)

(declare-fun b_and!19333 () Bool)

(assert (=> b!253888 (= tp!97867 b_and!19333)))

(declare-fun b_free!9447 () Bool)

(declare-fun b_next!9447 () Bool)

(assert (=> b!253888 (= b_free!9447 (not b_next!9447))))

(declare-fun t!35972 () Bool)

(declare-fun tb!13261 () Bool)

(assert (=> (and b!253888 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 (t!35878 rules!1920))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35972) tb!13261))

(declare-fun result!16654 () Bool)

(assert (= result!16654 result!16574))

(assert (=> b!253388 t!35972))

(declare-fun t!35974 () Bool)

(declare-fun tb!13263 () Bool)

(assert (=> (and b!253888 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 (t!35878 rules!1920))))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35974) tb!13263))

(declare-fun result!16656 () Bool)

(assert (= result!16656 result!16598))

(assert (=> b!253521 t!35974))

(declare-fun t!35976 () Bool)

(declare-fun tb!13265 () Bool)

(assert (=> (and b!253888 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 (t!35878 rules!1920))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35976) tb!13265))

(declare-fun result!16658 () Bool)

(assert (= result!16658 result!16644))

(assert (=> b!253875 t!35976))

(declare-fun b_and!19335 () Bool)

(declare-fun tp!97868 () Bool)

(assert (=> b!253888 (= tp!97868 (and (=> t!35972 result!16654) (=> t!35974 result!16656) (=> t!35976 result!16658) b_and!19335))))

(declare-fun e!157772 () Bool)

(assert (=> b!253888 (= e!157772 (and tp!97867 tp!97868))))

(declare-fun b!253887 () Bool)

(declare-fun tp!97870 () Bool)

(declare-fun e!157770 () Bool)

(assert (=> b!253887 (= e!157770 (and tp!97870 (inv!4551 (tag!911 (h!9095 (t!35878 (t!35878 rules!1920))))) (inv!4554 (transformation!703 (h!9095 (t!35878 (t!35878 rules!1920))))) e!157772))))

(declare-fun b!253886 () Bool)

(declare-fun e!157773 () Bool)

(declare-fun tp!97869 () Bool)

(assert (=> b!253886 (= e!157773 (and e!157770 tp!97869))))

(assert (=> b!253532 (= tp!97704 e!157773)))

(assert (= b!253887 b!253888))

(assert (= b!253886 b!253887))

(assert (= (and b!253532 ((_ is Cons!3698) (t!35878 (t!35878 rules!1920)))) b!253886))

(declare-fun m!313455 () Bool)

(assert (=> b!253887 m!313455))

(declare-fun m!313457 () Bool)

(assert (=> b!253887 m!313457))

(declare-fun b!253889 () Bool)

(declare-fun e!157774 () Bool)

(declare-fun tp!97871 () Bool)

(assert (=> b!253889 (= e!157774 (and tp_is_empty!1775 tp!97871))))

(assert (=> b!253568 (= tp!97739 e!157774)))

(assert (= (and b!253568 ((_ is Cons!3696) (t!35876 (originalCharacters!746 separatorToken!170)))) b!253889))

(declare-fun b!253892 () Bool)

(declare-fun e!157775 () Bool)

(declare-fun tp!97872 () Bool)

(assert (=> b!253892 (= e!157775 tp!97872)))

(declare-fun b!253891 () Bool)

(declare-fun tp!97873 () Bool)

(declare-fun tp!97876 () Bool)

(assert (=> b!253891 (= e!157775 (and tp!97873 tp!97876))))

(declare-fun b!253893 () Bool)

(declare-fun tp!97874 () Bool)

(declare-fun tp!97875 () Bool)

(assert (=> b!253893 (= e!157775 (and tp!97874 tp!97875))))

(declare-fun b!253890 () Bool)

(assert (=> b!253890 (= e!157775 tp_is_empty!1775)))

(assert (=> b!253576 (= tp!97747 e!157775)))

(assert (= (and b!253576 ((_ is ElementMatch!927) (regOne!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253890))

(assert (= (and b!253576 ((_ is Concat!1653) (regOne!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253891))

(assert (= (and b!253576 ((_ is Star!927) (regOne!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253892))

(assert (= (and b!253576 ((_ is Union!927) (regOne!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253893))

(declare-fun b!253896 () Bool)

(declare-fun e!157776 () Bool)

(declare-fun tp!97877 () Bool)

(assert (=> b!253896 (= e!157776 tp!97877)))

(declare-fun b!253895 () Bool)

(declare-fun tp!97878 () Bool)

(declare-fun tp!97881 () Bool)

(assert (=> b!253895 (= e!157776 (and tp!97878 tp!97881))))

(declare-fun b!253897 () Bool)

(declare-fun tp!97879 () Bool)

(declare-fun tp!97880 () Bool)

(assert (=> b!253897 (= e!157776 (and tp!97879 tp!97880))))

(declare-fun b!253894 () Bool)

(assert (=> b!253894 (= e!157776 tp_is_empty!1775)))

(assert (=> b!253576 (= tp!97748 e!157776)))

(assert (= (and b!253576 ((_ is ElementMatch!927) (regTwo!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253894))

(assert (= (and b!253576 ((_ is Concat!1653) (regTwo!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253895))

(assert (= (and b!253576 ((_ is Star!927) (regTwo!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253896))

(assert (= (and b!253576 ((_ is Union!927) (regTwo!2367 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253897))

(declare-fun tp!97888 () Bool)

(declare-fun b!253906 () Bool)

(declare-fun tp!97889 () Bool)

(declare-fun e!157782 () Bool)

(assert (=> b!253906 (= e!157782 (and (inv!4558 (left!3038 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))) tp!97889 (inv!4558 (right!3368 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))) tp!97888))))

(declare-fun b!253908 () Bool)

(declare-fun e!157781 () Bool)

(declare-fun tp!97890 () Bool)

(assert (=> b!253908 (= e!157781 tp!97890)))

(declare-fun b!253907 () Bool)

(declare-fun inv!4565 (IArray!2457) Bool)

(assert (=> b!253907 (= e!157782 (and (inv!4565 (xs!3823 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))) e!157781))))

(assert (=> b!253523 (= tp!97693 (and (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170)))) e!157782))))

(assert (= (and b!253523 ((_ is Node!1228) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))) b!253906))

(assert (= b!253907 b!253908))

(assert (= (and b!253523 ((_ is Leaf!1919) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (value!24351 separatorToken!170))))) b!253907))

(declare-fun m!313459 () Bool)

(assert (=> b!253906 m!313459))

(declare-fun m!313461 () Bool)

(assert (=> b!253906 m!313461))

(declare-fun m!313463 () Bool)

(assert (=> b!253907 m!313463))

(assert (=> b!253523 m!313067))

(declare-fun b!253911 () Bool)

(declare-fun e!157783 () Bool)

(declare-fun tp!97891 () Bool)

(assert (=> b!253911 (= e!157783 tp!97891)))

(declare-fun b!253910 () Bool)

(declare-fun tp!97892 () Bool)

(declare-fun tp!97895 () Bool)

(assert (=> b!253910 (= e!157783 (and tp!97892 tp!97895))))

(declare-fun b!253912 () Bool)

(declare-fun tp!97893 () Bool)

(declare-fun tp!97894 () Bool)

(assert (=> b!253912 (= e!157783 (and tp!97893 tp!97894))))

(declare-fun b!253909 () Bool)

(assert (=> b!253909 (= e!157783 tp_is_empty!1775)))

(assert (=> b!253572 (= tp!97742 e!157783)))

(assert (= (and b!253572 ((_ is ElementMatch!927) (regOne!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253909))

(assert (= (and b!253572 ((_ is Concat!1653) (regOne!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253910))

(assert (= (and b!253572 ((_ is Star!927) (regOne!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253911))

(assert (= (and b!253572 ((_ is Union!927) (regOne!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253912))

(declare-fun b!253915 () Bool)

(declare-fun e!157784 () Bool)

(declare-fun tp!97896 () Bool)

(assert (=> b!253915 (= e!157784 tp!97896)))

(declare-fun b!253914 () Bool)

(declare-fun tp!97897 () Bool)

(declare-fun tp!97900 () Bool)

(assert (=> b!253914 (= e!157784 (and tp!97897 tp!97900))))

(declare-fun b!253916 () Bool)

(declare-fun tp!97898 () Bool)

(declare-fun tp!97899 () Bool)

(assert (=> b!253916 (= e!157784 (and tp!97898 tp!97899))))

(declare-fun b!253913 () Bool)

(assert (=> b!253913 (= e!157784 tp_is_empty!1775)))

(assert (=> b!253572 (= tp!97743 e!157784)))

(assert (= (and b!253572 ((_ is ElementMatch!927) (regTwo!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253913))

(assert (= (and b!253572 ((_ is Concat!1653) (regTwo!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253914))

(assert (= (and b!253572 ((_ is Star!927) (regTwo!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253915))

(assert (= (and b!253572 ((_ is Union!927) (regTwo!2367 (regex!703 (rule!1284 separatorToken!170))))) b!253916))

(declare-fun b!253919 () Bool)

(declare-fun e!157785 () Bool)

(declare-fun tp!97901 () Bool)

(assert (=> b!253919 (= e!157785 tp!97901)))

(declare-fun b!253918 () Bool)

(declare-fun tp!97902 () Bool)

(declare-fun tp!97905 () Bool)

(assert (=> b!253918 (= e!157785 (and tp!97902 tp!97905))))

(declare-fun b!253920 () Bool)

(declare-fun tp!97903 () Bool)

(declare-fun tp!97904 () Bool)

(assert (=> b!253920 (= e!157785 (and tp!97903 tp!97904))))

(declare-fun b!253917 () Bool)

(assert (=> b!253917 (= e!157785 tp_is_empty!1775)))

(assert (=> b!253570 (= tp!97741 e!157785)))

(assert (= (and b!253570 ((_ is ElementMatch!927) (regOne!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253917))

(assert (= (and b!253570 ((_ is Concat!1653) (regOne!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253918))

(assert (= (and b!253570 ((_ is Star!927) (regOne!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253919))

(assert (= (and b!253570 ((_ is Union!927) (regOne!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253920))

(declare-fun b!253923 () Bool)

(declare-fun e!157786 () Bool)

(declare-fun tp!97906 () Bool)

(assert (=> b!253923 (= e!157786 tp!97906)))

(declare-fun b!253922 () Bool)

(declare-fun tp!97907 () Bool)

(declare-fun tp!97910 () Bool)

(assert (=> b!253922 (= e!157786 (and tp!97907 tp!97910))))

(declare-fun b!253924 () Bool)

(declare-fun tp!97908 () Bool)

(declare-fun tp!97909 () Bool)

(assert (=> b!253924 (= e!157786 (and tp!97908 tp!97909))))

(declare-fun b!253921 () Bool)

(assert (=> b!253921 (= e!157786 tp_is_empty!1775)))

(assert (=> b!253570 (= tp!97744 e!157786)))

(assert (= (and b!253570 ((_ is ElementMatch!927) (regTwo!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253921))

(assert (= (and b!253570 ((_ is Concat!1653) (regTwo!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253922))

(assert (= (and b!253570 ((_ is Star!927) (regTwo!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253923))

(assert (= (and b!253570 ((_ is Union!927) (regTwo!2366 (regex!703 (rule!1284 separatorToken!170))))) b!253924))

(declare-fun b!253927 () Bool)

(declare-fun e!157787 () Bool)

(declare-fun tp!97911 () Bool)

(assert (=> b!253927 (= e!157787 tp!97911)))

(declare-fun b!253926 () Bool)

(declare-fun tp!97912 () Bool)

(declare-fun tp!97915 () Bool)

(assert (=> b!253926 (= e!157787 (and tp!97912 tp!97915))))

(declare-fun b!253928 () Bool)

(declare-fun tp!97913 () Bool)

(declare-fun tp!97914 () Bool)

(assert (=> b!253928 (= e!157787 (and tp!97913 tp!97914))))

(declare-fun b!253925 () Bool)

(assert (=> b!253925 (= e!157787 tp_is_empty!1775)))

(assert (=> b!253575 (= tp!97745 e!157787)))

(assert (= (and b!253575 ((_ is ElementMatch!927) (reg!1256 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253925))

(assert (= (and b!253575 ((_ is Concat!1653) (reg!1256 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253926))

(assert (= (and b!253575 ((_ is Star!927) (reg!1256 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253927))

(assert (= (and b!253575 ((_ is Union!927) (reg!1256 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253928))

(declare-fun b!253931 () Bool)

(declare-fun e!157788 () Bool)

(declare-fun tp!97916 () Bool)

(assert (=> b!253931 (= e!157788 tp!97916)))

(declare-fun b!253930 () Bool)

(declare-fun tp!97917 () Bool)

(declare-fun tp!97920 () Bool)

(assert (=> b!253930 (= e!157788 (and tp!97917 tp!97920))))

(declare-fun b!253932 () Bool)

(declare-fun tp!97918 () Bool)

(declare-fun tp!97919 () Bool)

(assert (=> b!253932 (= e!157788 (and tp!97918 tp!97919))))

(declare-fun b!253929 () Bool)

(assert (=> b!253929 (= e!157788 tp_is_empty!1775)))

(assert (=> b!253571 (= tp!97740 e!157788)))

(assert (= (and b!253571 ((_ is ElementMatch!927) (reg!1256 (regex!703 (rule!1284 separatorToken!170))))) b!253929))

(assert (= (and b!253571 ((_ is Concat!1653) (reg!1256 (regex!703 (rule!1284 separatorToken!170))))) b!253930))

(assert (= (and b!253571 ((_ is Star!927) (reg!1256 (regex!703 (rule!1284 separatorToken!170))))) b!253931))

(assert (= (and b!253571 ((_ is Union!927) (reg!1256 (regex!703 (rule!1284 separatorToken!170))))) b!253932))

(declare-fun b!253933 () Bool)

(declare-fun tp!97922 () Bool)

(declare-fun e!157790 () Bool)

(declare-fun tp!97921 () Bool)

(assert (=> b!253933 (= e!157790 (and (inv!4558 (left!3038 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))) tp!97922 (inv!4558 (right!3368 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))) tp!97921))))

(declare-fun b!253935 () Bool)

(declare-fun e!157789 () Bool)

(declare-fun tp!97923 () Bool)

(assert (=> b!253935 (= e!157789 tp!97923)))

(declare-fun b!253934 () Bool)

(assert (=> b!253934 (= e!157790 (and (inv!4565 (xs!3823 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))) e!157789))))

(assert (=> b!253394 (= tp!97636 (and (inv!4558 (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465))))) e!157790))))

(assert (= (and b!253394 ((_ is Node!1228) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))) b!253933))

(assert (= b!253934 b!253935))

(assert (= (and b!253394 ((_ is Leaf!1919) (c!48153 (dynLambda!1832 (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (value!24351 (h!9094 tokens!465)))))) b!253934))

(declare-fun m!313465 () Bool)

(assert (=> b!253933 m!313465))

(declare-fun m!313467 () Bool)

(assert (=> b!253933 m!313467))

(declare-fun m!313469 () Bool)

(assert (=> b!253934 m!313469))

(assert (=> b!253394 m!312973))

(declare-fun b!253938 () Bool)

(declare-fun e!157791 () Bool)

(declare-fun tp!97924 () Bool)

(assert (=> b!253938 (= e!157791 tp!97924)))

(declare-fun b!253937 () Bool)

(declare-fun tp!97925 () Bool)

(declare-fun tp!97928 () Bool)

(assert (=> b!253937 (= e!157791 (and tp!97925 tp!97928))))

(declare-fun b!253939 () Bool)

(declare-fun tp!97926 () Bool)

(declare-fun tp!97927 () Bool)

(assert (=> b!253939 (= e!157791 (and tp!97926 tp!97927))))

(declare-fun b!253936 () Bool)

(assert (=> b!253936 (= e!157791 tp_is_empty!1775)))

(assert (=> b!253566 (= tp!97734 e!157791)))

(assert (= (and b!253566 ((_ is ElementMatch!927) (reg!1256 (regex!703 (h!9095 rules!1920))))) b!253936))

(assert (= (and b!253566 ((_ is Concat!1653) (reg!1256 (regex!703 (h!9095 rules!1920))))) b!253937))

(assert (= (and b!253566 ((_ is Star!927) (reg!1256 (regex!703 (h!9095 rules!1920))))) b!253938))

(assert (= (and b!253566 ((_ is Union!927) (reg!1256 (regex!703 (h!9095 rules!1920))))) b!253939))

(declare-fun b!253942 () Bool)

(declare-fun e!157792 () Bool)

(declare-fun tp!97929 () Bool)

(assert (=> b!253942 (= e!157792 tp!97929)))

(declare-fun b!253941 () Bool)

(declare-fun tp!97930 () Bool)

(declare-fun tp!97933 () Bool)

(assert (=> b!253941 (= e!157792 (and tp!97930 tp!97933))))

(declare-fun b!253943 () Bool)

(declare-fun tp!97931 () Bool)

(declare-fun tp!97932 () Bool)

(assert (=> b!253943 (= e!157792 (and tp!97931 tp!97932))))

(declare-fun b!253940 () Bool)

(assert (=> b!253940 (= e!157792 tp_is_empty!1775)))

(assert (=> b!253547 (= tp!97718 e!157792)))

(assert (= (and b!253547 ((_ is ElementMatch!927) (regex!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) b!253940))

(assert (= (and b!253547 ((_ is Concat!1653) (regex!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) b!253941))

(assert (= (and b!253547 ((_ is Star!927) (regex!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) b!253942))

(assert (= (and b!253547 ((_ is Union!927) (regex!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) b!253943))

(declare-fun b!253946 () Bool)

(declare-fun e!157793 () Bool)

(declare-fun tp!97934 () Bool)

(assert (=> b!253946 (= e!157793 tp!97934)))

(declare-fun b!253945 () Bool)

(declare-fun tp!97935 () Bool)

(declare-fun tp!97938 () Bool)

(assert (=> b!253945 (= e!157793 (and tp!97935 tp!97938))))

(declare-fun b!253947 () Bool)

(declare-fun tp!97936 () Bool)

(declare-fun tp!97937 () Bool)

(assert (=> b!253947 (= e!157793 (and tp!97936 tp!97937))))

(declare-fun b!253944 () Bool)

(assert (=> b!253944 (= e!157793 tp_is_empty!1775)))

(assert (=> b!253574 (= tp!97746 e!157793)))

(assert (= (and b!253574 ((_ is ElementMatch!927) (regOne!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253944))

(assert (= (and b!253574 ((_ is Concat!1653) (regOne!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253945))

(assert (= (and b!253574 ((_ is Star!927) (regOne!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253946))

(assert (= (and b!253574 ((_ is Union!927) (regOne!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253947))

(declare-fun b!253950 () Bool)

(declare-fun e!157794 () Bool)

(declare-fun tp!97939 () Bool)

(assert (=> b!253950 (= e!157794 tp!97939)))

(declare-fun b!253949 () Bool)

(declare-fun tp!97940 () Bool)

(declare-fun tp!97943 () Bool)

(assert (=> b!253949 (= e!157794 (and tp!97940 tp!97943))))

(declare-fun b!253951 () Bool)

(declare-fun tp!97941 () Bool)

(declare-fun tp!97942 () Bool)

(assert (=> b!253951 (= e!157794 (and tp!97941 tp!97942))))

(declare-fun b!253948 () Bool)

(assert (=> b!253948 (= e!157794 tp_is_empty!1775)))

(assert (=> b!253574 (= tp!97749 e!157794)))

(assert (= (and b!253574 ((_ is ElementMatch!927) (regTwo!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253948))

(assert (= (and b!253574 ((_ is Concat!1653) (regTwo!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253949))

(assert (= (and b!253574 ((_ is Star!927) (regTwo!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253950))

(assert (= (and b!253574 ((_ is Union!927) (regTwo!2366 (regex!703 (rule!1284 (h!9094 tokens!465)))))) b!253951))

(declare-fun b!253954 () Bool)

(declare-fun e!157795 () Bool)

(declare-fun tp!97944 () Bool)

(assert (=> b!253954 (= e!157795 tp!97944)))

(declare-fun b!253953 () Bool)

(declare-fun tp!97945 () Bool)

(declare-fun tp!97948 () Bool)

(assert (=> b!253953 (= e!157795 (and tp!97945 tp!97948))))

(declare-fun b!253955 () Bool)

(declare-fun tp!97946 () Bool)

(declare-fun tp!97947 () Bool)

(assert (=> b!253955 (= e!157795 (and tp!97946 tp!97947))))

(declare-fun b!253952 () Bool)

(assert (=> b!253952 (= e!157795 tp_is_empty!1775)))

(assert (=> b!253567 (= tp!97736 e!157795)))

(assert (= (and b!253567 ((_ is ElementMatch!927) (regOne!2367 (regex!703 (h!9095 rules!1920))))) b!253952))

(assert (= (and b!253567 ((_ is Concat!1653) (regOne!2367 (regex!703 (h!9095 rules!1920))))) b!253953))

(assert (= (and b!253567 ((_ is Star!927) (regOne!2367 (regex!703 (h!9095 rules!1920))))) b!253954))

(assert (= (and b!253567 ((_ is Union!927) (regOne!2367 (regex!703 (h!9095 rules!1920))))) b!253955))

(declare-fun b!253958 () Bool)

(declare-fun e!157796 () Bool)

(declare-fun tp!97949 () Bool)

(assert (=> b!253958 (= e!157796 tp!97949)))

(declare-fun b!253957 () Bool)

(declare-fun tp!97950 () Bool)

(declare-fun tp!97953 () Bool)

(assert (=> b!253957 (= e!157796 (and tp!97950 tp!97953))))

(declare-fun b!253959 () Bool)

(declare-fun tp!97951 () Bool)

(declare-fun tp!97952 () Bool)

(assert (=> b!253959 (= e!157796 (and tp!97951 tp!97952))))

(declare-fun b!253956 () Bool)

(assert (=> b!253956 (= e!157796 tp_is_empty!1775)))

(assert (=> b!253567 (= tp!97737 e!157796)))

(assert (= (and b!253567 ((_ is ElementMatch!927) (regTwo!2367 (regex!703 (h!9095 rules!1920))))) b!253956))

(assert (= (and b!253567 ((_ is Concat!1653) (regTwo!2367 (regex!703 (h!9095 rules!1920))))) b!253957))

(assert (= (and b!253567 ((_ is Star!927) (regTwo!2367 (regex!703 (h!9095 rules!1920))))) b!253958))

(assert (= (and b!253567 ((_ is Union!927) (regTwo!2367 (regex!703 (h!9095 rules!1920))))) b!253959))

(declare-fun b!253962 () Bool)

(declare-fun e!157797 () Bool)

(declare-fun tp!97954 () Bool)

(assert (=> b!253962 (= e!157797 tp!97954)))

(declare-fun b!253961 () Bool)

(declare-fun tp!97955 () Bool)

(declare-fun tp!97958 () Bool)

(assert (=> b!253961 (= e!157797 (and tp!97955 tp!97958))))

(declare-fun b!253963 () Bool)

(declare-fun tp!97956 () Bool)

(declare-fun tp!97957 () Bool)

(assert (=> b!253963 (= e!157797 (and tp!97956 tp!97957))))

(declare-fun b!253960 () Bool)

(assert (=> b!253960 (= e!157797 tp_is_empty!1775)))

(assert (=> b!253565 (= tp!97735 e!157797)))

(assert (= (and b!253565 ((_ is ElementMatch!927) (regOne!2366 (regex!703 (h!9095 rules!1920))))) b!253960))

(assert (= (and b!253565 ((_ is Concat!1653) (regOne!2366 (regex!703 (h!9095 rules!1920))))) b!253961))

(assert (= (and b!253565 ((_ is Star!927) (regOne!2366 (regex!703 (h!9095 rules!1920))))) b!253962))

(assert (= (and b!253565 ((_ is Union!927) (regOne!2366 (regex!703 (h!9095 rules!1920))))) b!253963))

(declare-fun b!253966 () Bool)

(declare-fun e!157798 () Bool)

(declare-fun tp!97959 () Bool)

(assert (=> b!253966 (= e!157798 tp!97959)))

(declare-fun b!253965 () Bool)

(declare-fun tp!97960 () Bool)

(declare-fun tp!97963 () Bool)

(assert (=> b!253965 (= e!157798 (and tp!97960 tp!97963))))

(declare-fun b!253967 () Bool)

(declare-fun tp!97961 () Bool)

(declare-fun tp!97962 () Bool)

(assert (=> b!253967 (= e!157798 (and tp!97961 tp!97962))))

(declare-fun b!253964 () Bool)

(assert (=> b!253964 (= e!157798 tp_is_empty!1775)))

(assert (=> b!253565 (= tp!97738 e!157798)))

(assert (= (and b!253565 ((_ is ElementMatch!927) (regTwo!2366 (regex!703 (h!9095 rules!1920))))) b!253964))

(assert (= (and b!253565 ((_ is Concat!1653) (regTwo!2366 (regex!703 (h!9095 rules!1920))))) b!253965))

(assert (= (and b!253565 ((_ is Star!927) (regTwo!2366 (regex!703 (h!9095 rules!1920))))) b!253966))

(assert (= (and b!253565 ((_ is Union!927) (regTwo!2366 (regex!703 (h!9095 rules!1920))))) b!253967))

(declare-fun b!253968 () Bool)

(declare-fun e!157799 () Bool)

(declare-fun tp!97964 () Bool)

(assert (=> b!253968 (= e!157799 (and tp_is_empty!1775 tp!97964))))

(assert (=> b!253546 (= tp!97719 e!157799)))

(assert (= (and b!253546 ((_ is Cons!3696) (originalCharacters!746 (h!9094 (t!35877 tokens!465))))) b!253968))

(declare-fun b!253972 () Bool)

(declare-fun b_free!9449 () Bool)

(declare-fun b_next!9449 () Bool)

(assert (=> b!253972 (= b_free!9449 (not b_next!9449))))

(declare-fun tp!97966 () Bool)

(declare-fun b_and!19337 () Bool)

(assert (=> b!253972 (= tp!97966 b_and!19337)))

(declare-fun b_free!9451 () Bool)

(declare-fun b_next!9451 () Bool)

(assert (=> b!253972 (= b_free!9451 (not b_next!9451))))

(declare-fun t!35978 () Bool)

(declare-fun tb!13267 () Bool)

(assert (=> (and b!253972 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465))))) t!35978) tb!13267))

(declare-fun result!16662 () Bool)

(assert (= result!16662 result!16574))

(assert (=> b!253388 t!35978))

(declare-fun tb!13269 () Bool)

(declare-fun t!35980 () Bool)

(assert (=> (and b!253972 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) (toChars!1269 (transformation!703 (rule!1284 separatorToken!170)))) t!35980) tb!13269))

(declare-fun result!16664 () Bool)

(assert (= result!16664 result!16598))

(assert (=> b!253521 t!35980))

(declare-fun t!35982 () Bool)

(declare-fun tb!13271 () Bool)

(assert (=> (and b!253972 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465)))))) t!35982) tb!13271))

(declare-fun result!16666 () Bool)

(assert (= result!16666 result!16644))

(assert (=> b!253875 t!35982))

(declare-fun tp!97969 () Bool)

(declare-fun b_and!19339 () Bool)

(assert (=> b!253972 (= tp!97969 (and (=> t!35978 result!16662) (=> t!35980 result!16664) (=> t!35982 result!16666) b_and!19339))))

(declare-fun e!157805 () Bool)

(declare-fun tp!97967 () Bool)

(declare-fun b!253971 () Bool)

(declare-fun e!157804 () Bool)

(assert (=> b!253971 (= e!157804 (and tp!97967 (inv!4551 (tag!911 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) (inv!4554 (transformation!703 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) e!157805))))

(assert (=> b!253972 (= e!157805 (and tp!97966 tp!97969))))

(declare-fun tp!97965 () Bool)

(declare-fun e!157800 () Bool)

(declare-fun b!253969 () Bool)

(declare-fun e!157802 () Bool)

(assert (=> b!253969 (= e!157800 (and (inv!4555 (h!9094 (t!35877 (t!35877 tokens!465)))) e!157802 tp!97965))))

(assert (=> b!253545 (= tp!97716 e!157800)))

(declare-fun tp!97968 () Bool)

(declare-fun b!253970 () Bool)

(assert (=> b!253970 (= e!157802 (and (inv!21 (value!24351 (h!9094 (t!35877 (t!35877 tokens!465))))) e!157804 tp!97968))))

(assert (= b!253971 b!253972))

(assert (= b!253970 b!253971))

(assert (= b!253969 b!253970))

(assert (= (and b!253545 ((_ is Cons!3697) (t!35877 (t!35877 tokens!465)))) b!253969))

(declare-fun m!313471 () Bool)

(assert (=> b!253971 m!313471))

(declare-fun m!313473 () Bool)

(assert (=> b!253971 m!313473))

(declare-fun m!313475 () Bool)

(assert (=> b!253969 m!313475))

(declare-fun m!313477 () Bool)

(assert (=> b!253970 m!313477))

(declare-fun b_lambda!7589 () Bool)

(assert (= b_lambda!7585 (or b!253294 b_lambda!7589)))

(declare-fun bs!27489 () Bool)

(declare-fun d!72023 () Bool)

(assert (= bs!27489 (and d!72023 b!253294)))

(assert (=> bs!27489 (= (dynLambda!1831 lambda!8420 (h!9094 (t!35877 tokens!465))) (not (isSeparator!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))))

(assert (=> b!253873 d!72023))

(declare-fun b_lambda!7591 () Bool)

(assert (= b_lambda!7583 (or d!71777 b_lambda!7591)))

(declare-fun bs!27490 () Bool)

(declare-fun d!72025 () Bool)

(assert (= bs!27490 (and d!72025 d!71777)))

(assert (=> bs!27490 (= (dynLambda!1831 lambda!8430 (h!9094 (list!1476 lt!103752))) (rulesProduceIndividualToken!338 thiss!17480 rules!1920 (h!9094 (list!1476 lt!103752))))))

(assert (=> bs!27490 m!313221))

(assert (=> b!253865 d!72025))

(declare-fun b_lambda!7593 () Bool)

(assert (= b_lambda!7587 (or (and b!253304 b_free!9415 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 tokens!465)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) (and b!253548 b_free!9435) (and b!253534 b_free!9431 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 rules!1920)))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) (and b!253297 b_free!9411 (= (toChars!1269 (transformation!703 (rule!1284 separatorToken!170))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) (and b!253888 b_free!9447 (= (toChars!1269 (transformation!703 (h!9095 (t!35878 (t!35878 rules!1920))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) (and b!253972 b_free!9451 (= (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 (t!35877 tokens!465)))))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) (and b!253302 b_free!9419 (= (toChars!1269 (transformation!703 (h!9095 rules!1920))) (toChars!1269 (transformation!703 (rule!1284 (h!9094 (t!35877 tokens!465))))))) b_lambda!7593)))

(check-sat (not b_next!9445) (not d!72015) (not b!253959) (not b!253934) (not b!253955) (not b_lambda!7589) (not b!253881) (not b!253607) (not b!253919) (not b!253958) (not d!71971) (not d!71913) (not b!253647) (not b!253685) (not d!71877) (not b!253687) (not b_next!9413) (not b_next!9451) (not b!253606) (not b!253628) (not b!253889) (not b!253971) (not b!253970) (not d!71915) b_and!19335 (not b!253869) (not b_next!9449) (not b!253636) (not b!253743) (not b!253871) (not b!253930) (not b_next!9447) (not b_next!9435) (not b!253910) b_and!19337 (not b!253945) (not b!253885) b_and!19329 (not b!253968) (not b!253879) (not d!71883) (not b!253866) (not b_lambda!7567) (not d!71885) (not b!253897) (not b!253918) (not b!253692) (not b_lambda!7593) (not d!71899) (not b!253966) (not b!253949) (not b!253933) (not b!253665) (not d!71873) (not d!71993) (not b!253893) (not d!71969) (not b!253908) (not b!253954) b_and!19333 (not b!253962) (not d!72021) (not b_next!9419) (not b!253690) (not d!71911) b_and!19325 b_and!19261 (not tb!13251) (not b!253747) (not b!253943) (not b!253916) (not b_lambda!7591) b_and!19301 (not b!253941) (not b!253907) (not d!72009) (not d!71937) (not b!253912) (not b!253880) (not d!72011) (not b!253874) (not d!71859) (not b_next!9433) (not b!253965) (not b!253937) (not b!253935) (not b_lambda!7565) (not b!253927) (not b_next!9417) (not d!71939) (not b!253887) (not b!253631) b_and!19331 (not b!253875) (not b!253746) (not d!71879) (not d!72007) (not b_next!9415) (not b!253923) (not b!253969) (not b!253605) (not b!253967) (not b!253928) (not d!71871) (not d!71851) (not b!253659) (not b!253877) (not d!71983) (not b!253394) (not d!71897) (not b!253892) (not d!71891) (not b!253932) (not b!253790) b_and!19323 (not d!71893) (not b_lambda!7569) (not b!253939) (not b_next!9431) (not d!71989) (not d!71979) (not b!253640) (not bs!27490) (not bm!13428) (not b!253886) b_and!19327 (not b!253911) (not b!253961) (not b_next!9429) (not b!253947) (not b!253882) (not b!253951) (not b!253915) (not b!253931) (not b!253868) tp_is_empty!1775 (not d!72017) (not d!71985) (not b!253957) (not b!253876) (not b!253896) (not b!253922) (not b!253695) (not b!253963) (not b!253924) b_and!19297 (not b!253914) (not b_next!9409) (not b!253946) b_and!19253 (not d!72003) (not b!253950) (not b!253891) (not b!253926) b_and!19257 (not b_next!9411) (not d!71987) (not b!253637) (not b!253942) (not b!253867) (not b!253906) (not d!71991) (not b!253938) (not b!253895) (not d!71995) (not b!253744) b_and!19339 (not b!253686) (not b!253953) (not b!253649) (not b!253523) (not b!253920))
(check-sat (not b_next!9445) b_and!19325 b_and!19261 b_and!19301 (not b_next!9433) (not b_next!9417) b_and!19331 (not b_next!9415) b_and!19323 (not b_next!9429) b_and!19297 b_and!19339 (not b_next!9413) (not b_next!9451) b_and!19335 (not b_next!9449) (not b_next!9447) (not b_next!9435) b_and!19337 b_and!19329 b_and!19333 (not b_next!9419) (not b_next!9431) b_and!19327 b_and!19253 (not b_next!9409) b_and!19257 (not b_next!9411))
