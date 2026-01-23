; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271624 () Bool)

(assert start!271624)

(declare-fun b!2807827 () Bool)

(declare-fun b_free!79985 () Bool)

(declare-fun b_next!80689 () Bool)

(assert (=> b!2807827 (= b_free!79985 (not b_next!80689))))

(declare-fun tp!896095 () Bool)

(declare-fun b_and!205027 () Bool)

(assert (=> b!2807827 (= tp!896095 b_and!205027)))

(declare-fun b_free!79987 () Bool)

(declare-fun b_next!80691 () Bool)

(assert (=> b!2807827 (= b_free!79987 (not b_next!80691))))

(declare-fun tp!896094 () Bool)

(declare-fun b_and!205029 () Bool)

(assert (=> b!2807827 (= tp!896094 b_and!205029)))

(declare-fun b!2807823 () Bool)

(declare-fun b_free!79989 () Bool)

(declare-fun b_next!80693 () Bool)

(assert (=> b!2807823 (= b_free!79989 (not b_next!80693))))

(declare-fun tp!896088 () Bool)

(declare-fun b_and!205031 () Bool)

(assert (=> b!2807823 (= tp!896088 b_and!205031)))

(declare-fun b_free!79991 () Bool)

(declare-fun b_next!80695 () Bool)

(assert (=> b!2807823 (= b_free!79991 (not b_next!80695))))

(declare-fun tp!896093 () Bool)

(declare-fun b_and!205033 () Bool)

(assert (=> b!2807823 (= tp!896093 b_and!205033)))

(declare-fun b!2807815 () Bool)

(declare-fun b_free!79993 () Bool)

(declare-fun b_next!80697 () Bool)

(assert (=> b!2807815 (= b_free!79993 (not b_next!80697))))

(declare-fun tp!896096 () Bool)

(declare-fun b_and!205035 () Bool)

(assert (=> b!2807815 (= tp!896096 b_and!205035)))

(declare-fun b_free!79995 () Bool)

(declare-fun b_next!80699 () Bool)

(assert (=> b!2807815 (= b_free!79995 (not b_next!80699))))

(declare-fun tp!896092 () Bool)

(declare-fun b_and!205037 () Bool)

(assert (=> b!2807815 (= tp!896092 b_and!205037)))

(declare-fun e!1775262 () Bool)

(assert (=> b!2807815 (= e!1775262 (and tp!896096 tp!896092))))

(declare-fun b!2807816 () Bool)

(declare-fun res!1169586 () Bool)

(declare-fun e!1775269 () Bool)

(assert (=> b!2807816 (=> (not res!1169586) (not e!1775269))))

(declare-datatypes ((List!32838 0))(
  ( (Nil!32738) (Cons!32738 (h!38158 (_ BitVec 16)) (t!229472 List!32838)) )
))
(declare-datatypes ((TokenValue!5117 0))(
  ( (FloatLiteralValue!10234 (text!36264 List!32838)) (TokenValueExt!5116 (__x!21891 Int)) (Broken!25585 (value!157391 List!32838)) (Object!5216) (End!5117) (Def!5117) (Underscore!5117) (Match!5117) (Else!5117) (Error!5117) (Case!5117) (If!5117) (Extends!5117) (Abstract!5117) (Class!5117) (Val!5117) (DelimiterValue!10234 (del!5177 List!32838)) (KeywordValue!5123 (value!157392 List!32838)) (CommentValue!10234 (value!157393 List!32838)) (WhitespaceValue!10234 (value!157394 List!32838)) (IndentationValue!5117 (value!157395 List!32838)) (String!35920) (Int32!5117) (Broken!25586 (value!157396 List!32838)) (Boolean!5118) (Unit!46787) (OperatorValue!5120 (op!5177 List!32838)) (IdentifierValue!10234 (value!157397 List!32838)) (IdentifierValue!10235 (value!157398 List!32838)) (WhitespaceValue!10235 (value!157399 List!32838)) (True!10234) (False!10234) (Broken!25587 (value!157400 List!32838)) (Broken!25588 (value!157401 List!32838)) (True!10235) (RightBrace!5117) (RightBracket!5117) (Colon!5117) (Null!5117) (Comma!5117) (LeftBracket!5117) (False!10235) (LeftBrace!5117) (ImaginaryLiteralValue!5117 (text!36265 List!32838)) (StringLiteralValue!15351 (value!157402 List!32838)) (EOFValue!5117 (value!157403 List!32838)) (IdentValue!5117 (value!157404 List!32838)) (DelimiterValue!10235 (value!157405 List!32838)) (DedentValue!5117 (value!157406 List!32838)) (NewLineValue!5117 (value!157407 List!32838)) (IntegerValue!15351 (value!157408 (_ BitVec 32)) (text!36266 List!32838)) (IntegerValue!15352 (value!157409 Int) (text!36267 List!32838)) (Times!5117) (Or!5117) (Equal!5117) (Minus!5117) (Broken!25589 (value!157410 List!32838)) (And!5117) (Div!5117) (LessEqual!5117) (Mod!5117) (Concat!13382) (Not!5117) (Plus!5117) (SpaceValue!5117 (value!157411 List!32838)) (IntegerValue!15353 (value!157412 Int) (text!36268 List!32838)) (StringLiteralValue!15352 (text!36269 List!32838)) (FloatLiteralValue!10235 (text!36270 List!32838)) (BytesLiteralValue!5117 (value!157413 List!32838)) (CommentValue!10235 (value!157414 List!32838)) (StringLiteralValue!15353 (value!157415 List!32838)) (ErrorTokenValue!5117 (msg!5178 List!32838)) )
))
(declare-datatypes ((C!16688 0))(
  ( (C!16689 (val!10278 Int)) )
))
(declare-datatypes ((List!32839 0))(
  ( (Nil!32739) (Cons!32739 (h!38159 C!16688) (t!229473 List!32839)) )
))
(declare-datatypes ((IArray!20269 0))(
  ( (IArray!20270 (innerList!10192 List!32839)) )
))
(declare-datatypes ((Conc!10132 0))(
  ( (Node!10132 (left!24710 Conc!10132) (right!25040 Conc!10132) (csize!20494 Int) (cheight!10343 Int)) (Leaf!15433 (xs!13244 IArray!20269) (csize!20495 Int)) (Empty!10132) )
))
(declare-datatypes ((BalanceConc!19878 0))(
  ( (BalanceConc!19879 (c!454838 Conc!10132)) )
))
(declare-datatypes ((TokenValueInjection!9674 0))(
  ( (TokenValueInjection!9675 (toValue!6897 Int) (toChars!6756 Int)) )
))
(declare-datatypes ((Regex!8265 0))(
  ( (ElementMatch!8265 (c!454839 C!16688)) (Concat!13383 (regOne!17042 Regex!8265) (regTwo!17042 Regex!8265)) (EmptyExpr!8265) (Star!8265 (reg!8594 Regex!8265)) (EmptyLang!8265) (Union!8265 (regOne!17043 Regex!8265) (regTwo!17043 Regex!8265)) )
))
(declare-datatypes ((String!35921 0))(
  ( (String!35922 (value!157416 String)) )
))
(declare-datatypes ((Rule!9590 0))(
  ( (Rule!9591 (regex!4895 Regex!8265) (tag!5399 String!35921) (isSeparator!4895 Bool) (transformation!4895 TokenValueInjection!9674)) )
))
(declare-datatypes ((Token!9192 0))(
  ( (Token!9193 (value!157417 TokenValue!5117) (rule!7323 Rule!9590) (size!25534 Int) (originalCharacters!5627 List!32839)) )
))
(declare-fun separatorToken!283 () Token!9192)

(declare-datatypes ((List!32840 0))(
  ( (Nil!32740) (Cons!32740 (h!38160 Token!9192) (t!229474 List!32840)) )
))
(declare-fun l!5055 () List!32840)

(get-info :version)

(assert (=> b!2807816 (= res!1169586 (and (isSeparator!4895 (rule!7323 separatorToken!283)) (not ((_ is Cons!32740) l!5055))))))

(declare-datatypes ((List!32841 0))(
  ( (Nil!32741) (Cons!32741 (h!38161 Rule!9590) (t!229475 List!32841)) )
))
(declare-fun rules!2540 () List!32841)

(declare-fun e!1775261 () Bool)

(declare-fun e!1775271 () Bool)

(declare-fun b!2807817 () Bool)

(declare-fun tp!896090 () Bool)

(declare-fun inv!44419 (String!35921) Bool)

(declare-fun inv!44422 (TokenValueInjection!9674) Bool)

(assert (=> b!2807817 (= e!1775271 (and tp!896090 (inv!44419 (tag!5399 (h!38161 rules!2540))) (inv!44422 (transformation!4895 (h!38161 rules!2540))) e!1775261))))

(declare-fun b!2807818 () Bool)

(declare-fun res!1169587 () Bool)

(assert (=> b!2807818 (=> (not res!1169587) (not e!1775269))))

(declare-datatypes ((LexerInterface!4486 0))(
  ( (LexerInterfaceExt!4483 (__x!21892 Int)) (Lexer!4484) )
))
(declare-fun thiss!19710 () LexerInterface!4486)

(declare-fun rulesInvariant!3926 (LexerInterface!4486 List!32841) Bool)

(assert (=> b!2807818 (= res!1169587 (rulesInvariant!3926 thiss!19710 rules!2540))))

(declare-fun b!2807819 () Bool)

(declare-fun e!1775273 () Bool)

(declare-fun tp!896089 () Bool)

(declare-fun e!1775274 () Bool)

(assert (=> b!2807819 (= e!1775273 (and tp!896089 (inv!44419 (tag!5399 (rule!7323 (h!38160 l!5055)))) (inv!44422 (transformation!4895 (rule!7323 (h!38160 l!5055)))) e!1775274))))

(declare-fun e!1775265 () Bool)

(declare-fun e!1775267 () Bool)

(declare-fun b!2807820 () Bool)

(declare-fun tp!896086 () Bool)

(declare-fun inv!44423 (Token!9192) Bool)

(assert (=> b!2807820 (= e!1775267 (and (inv!44423 (h!38160 l!5055)) e!1775265 tp!896086))))

(declare-fun b!2807821 () Bool)

(declare-fun res!1169585 () Bool)

(assert (=> b!2807821 (=> (not res!1169585) (not e!1775269))))

(declare-fun rulesProduceEachTokenIndividuallyList!1560 (LexerInterface!4486 List!32841 List!32840) Bool)

(assert (=> b!2807821 (= res!1169585 (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 l!5055))))

(assert (=> b!2807823 (= e!1775261 (and tp!896088 tp!896093))))

(declare-fun b!2807824 () Bool)

(declare-fun res!1169589 () Bool)

(assert (=> b!2807824 (=> (not res!1169589) (not e!1775269))))

(declare-fun rulesProduceIndividualToken!2050 (LexerInterface!4486 List!32841 Token!9192) Bool)

(assert (=> b!2807824 (= res!1169589 (rulesProduceIndividualToken!2050 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun tp!896087 () Bool)

(declare-fun b!2807825 () Bool)

(declare-fun e!1775276 () Bool)

(assert (=> b!2807825 (= e!1775276 (and tp!896087 (inv!44419 (tag!5399 (rule!7323 separatorToken!283))) (inv!44422 (transformation!4895 (rule!7323 separatorToken!283))) e!1775262))))

(declare-fun tp!896084 () Bool)

(declare-fun b!2807826 () Bool)

(declare-fun e!1775272 () Bool)

(declare-fun inv!21 (TokenValue!5117) Bool)

(assert (=> b!2807826 (= e!1775272 (and (inv!21 (value!157417 separatorToken!283)) e!1775276 tp!896084))))

(assert (=> b!2807827 (= e!1775274 (and tp!896095 tp!896094))))

(declare-fun b!2807828 () Bool)

(declare-fun res!1169588 () Bool)

(assert (=> b!2807828 (=> (not res!1169588) (not e!1775269))))

(declare-fun isEmpty!18198 (List!32841) Bool)

(assert (=> b!2807828 (= res!1169588 (not (isEmpty!18198 rules!2540)))))

(declare-fun b!2807822 () Bool)

(declare-fun withSeparatorTokenList!134 (LexerInterface!4486 List!32840 Token!9192) List!32840)

(assert (=> b!2807822 (= e!1775269 (not (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283))))))

(declare-fun res!1169584 () Bool)

(assert (=> start!271624 (=> (not res!1169584) (not e!1775269))))

(assert (=> start!271624 (= res!1169584 ((_ is Lexer!4484) thiss!19710))))

(assert (=> start!271624 e!1775269))

(assert (=> start!271624 true))

(declare-fun e!1775270 () Bool)

(assert (=> start!271624 e!1775270))

(assert (=> start!271624 e!1775267))

(assert (=> start!271624 (and (inv!44423 separatorToken!283) e!1775272)))

(declare-fun tp!896091 () Bool)

(declare-fun b!2807829 () Bool)

(assert (=> b!2807829 (= e!1775265 (and (inv!21 (value!157417 (h!38160 l!5055))) e!1775273 tp!896091))))

(declare-fun b!2807830 () Bool)

(declare-fun tp!896085 () Bool)

(assert (=> b!2807830 (= e!1775270 (and e!1775271 tp!896085))))

(assert (= (and start!271624 res!1169584) b!2807828))

(assert (= (and b!2807828 res!1169588) b!2807818))

(assert (= (and b!2807818 res!1169587) b!2807821))

(assert (= (and b!2807821 res!1169585) b!2807824))

(assert (= (and b!2807824 res!1169589) b!2807816))

(assert (= (and b!2807816 res!1169586) b!2807822))

(assert (= b!2807817 b!2807823))

(assert (= b!2807830 b!2807817))

(assert (= (and start!271624 ((_ is Cons!32741) rules!2540)) b!2807830))

(assert (= b!2807819 b!2807827))

(assert (= b!2807829 b!2807819))

(assert (= b!2807820 b!2807829))

(assert (= (and start!271624 ((_ is Cons!32740) l!5055)) b!2807820))

(assert (= b!2807825 b!2807815))

(assert (= b!2807826 b!2807825))

(assert (= start!271624 b!2807826))

(declare-fun m!3237353 () Bool)

(assert (=> b!2807818 m!3237353))

(declare-fun m!3237355 () Bool)

(assert (=> b!2807820 m!3237355))

(declare-fun m!3237357 () Bool)

(assert (=> b!2807822 m!3237357))

(assert (=> b!2807822 m!3237357))

(declare-fun m!3237359 () Bool)

(assert (=> b!2807822 m!3237359))

(declare-fun m!3237361 () Bool)

(assert (=> b!2807819 m!3237361))

(declare-fun m!3237363 () Bool)

(assert (=> b!2807819 m!3237363))

(declare-fun m!3237365 () Bool)

(assert (=> b!2807821 m!3237365))

(declare-fun m!3237367 () Bool)

(assert (=> b!2807825 m!3237367))

(declare-fun m!3237369 () Bool)

(assert (=> b!2807825 m!3237369))

(declare-fun m!3237371 () Bool)

(assert (=> b!2807829 m!3237371))

(declare-fun m!3237373 () Bool)

(assert (=> b!2807817 m!3237373))

(declare-fun m!3237375 () Bool)

(assert (=> b!2807817 m!3237375))

(declare-fun m!3237377 () Bool)

(assert (=> b!2807824 m!3237377))

(declare-fun m!3237379 () Bool)

(assert (=> b!2807828 m!3237379))

(declare-fun m!3237381 () Bool)

(assert (=> b!2807826 m!3237381))

(declare-fun m!3237383 () Bool)

(assert (=> start!271624 m!3237383))

(check-sat (not b_next!80697) (not b_next!80699) (not b!2807817) b_and!205027 b_and!205037 (not b_next!80693) (not b!2807826) b_and!205031 (not b!2807822) (not start!271624) (not b!2807820) (not b!2807828) (not b_next!80695) b_and!205035 (not b!2807829) (not b_next!80691) (not b_next!80689) (not b!2807824) (not b!2807821) (not b!2807819) b_and!205033 b_and!205029 (not b!2807818) (not b!2807830) (not b!2807825))
(check-sat (not b_next!80697) (not b_next!80699) b_and!205027 b_and!205037 (not b_next!80693) b_and!205031 (not b_next!80695) b_and!205035 (not b_next!80689) (not b_next!80691) b_and!205033 b_and!205029)
(get-model)

(declare-fun d!815185 () Bool)

(declare-fun res!1169598 () Bool)

(declare-fun e!1775279 () Bool)

(assert (=> d!815185 (=> (not res!1169598) (not e!1775279))))

(declare-fun isEmpty!18199 (List!32839) Bool)

(assert (=> d!815185 (= res!1169598 (not (isEmpty!18199 (originalCharacters!5627 separatorToken!283))))))

(assert (=> d!815185 (= (inv!44423 separatorToken!283) e!1775279)))

(declare-fun b!2807835 () Bool)

(declare-fun res!1169599 () Bool)

(assert (=> b!2807835 (=> (not res!1169599) (not e!1775279))))

(declare-fun list!12258 (BalanceConc!19878) List!32839)

(declare-fun dynLambda!13715 (Int TokenValue!5117) BalanceConc!19878)

(assert (=> b!2807835 (= res!1169599 (= (originalCharacters!5627 separatorToken!283) (list!12258 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (value!157417 separatorToken!283)))))))

(declare-fun b!2807836 () Bool)

(declare-fun size!25535 (List!32839) Int)

(assert (=> b!2807836 (= e!1775279 (= (size!25534 separatorToken!283) (size!25535 (originalCharacters!5627 separatorToken!283))))))

(assert (= (and d!815185 res!1169598) b!2807835))

(assert (= (and b!2807835 res!1169599) b!2807836))

(declare-fun b_lambda!83979 () Bool)

(assert (=> (not b_lambda!83979) (not b!2807835)))

(declare-fun tb!153369 () Bool)

(declare-fun t!229477 () Bool)

(assert (=> (and b!2807827 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283)))) t!229477) tb!153369))

(declare-fun b!2807843 () Bool)

(declare-fun e!1775284 () Bool)

(declare-fun tp!896099 () Bool)

(declare-fun inv!44424 (Conc!10132) Bool)

(assert (=> b!2807843 (= e!1775284 (and (inv!44424 (c!454838 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (value!157417 separatorToken!283)))) tp!896099))))

(declare-fun result!190588 () Bool)

(declare-fun inv!44425 (BalanceConc!19878) Bool)

(assert (=> tb!153369 (= result!190588 (and (inv!44425 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (value!157417 separatorToken!283))) e!1775284))))

(assert (= tb!153369 b!2807843))

(declare-fun m!3237385 () Bool)

(assert (=> b!2807843 m!3237385))

(declare-fun m!3237387 () Bool)

(assert (=> tb!153369 m!3237387))

(assert (=> b!2807835 t!229477))

(declare-fun b_and!205039 () Bool)

(assert (= b_and!205029 (and (=> t!229477 result!190588) b_and!205039)))

(declare-fun t!229479 () Bool)

(declare-fun tb!153371 () Bool)

(assert (=> (and b!2807823 (= (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283)))) t!229479) tb!153371))

(declare-fun result!190592 () Bool)

(assert (= result!190592 result!190588))

(assert (=> b!2807835 t!229479))

(declare-fun b_and!205041 () Bool)

(assert (= b_and!205033 (and (=> t!229479 result!190592) b_and!205041)))

(declare-fun t!229481 () Bool)

(declare-fun tb!153373 () Bool)

(assert (=> (and b!2807815 (= (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283)))) t!229481) tb!153373))

(declare-fun result!190594 () Bool)

(assert (= result!190594 result!190588))

(assert (=> b!2807835 t!229481))

(declare-fun b_and!205043 () Bool)

(assert (= b_and!205037 (and (=> t!229481 result!190594) b_and!205043)))

(declare-fun m!3237389 () Bool)

(assert (=> d!815185 m!3237389))

(declare-fun m!3237395 () Bool)

(assert (=> b!2807835 m!3237395))

(assert (=> b!2807835 m!3237395))

(declare-fun m!3237397 () Bool)

(assert (=> b!2807835 m!3237397))

(declare-fun m!3237399 () Bool)

(assert (=> b!2807836 m!3237399))

(assert (=> start!271624 d!815185))

(declare-fun d!815191 () Bool)

(declare-fun c!454845 () Bool)

(assert (=> d!815191 (= c!454845 ((_ is IntegerValue!15351) (value!157417 separatorToken!283)))))

(declare-fun e!1775295 () Bool)

(assert (=> d!815191 (= (inv!21 (value!157417 separatorToken!283)) e!1775295)))

(declare-fun b!2807858 () Bool)

(declare-fun res!1169608 () Bool)

(declare-fun e!1775297 () Bool)

(assert (=> b!2807858 (=> res!1169608 e!1775297)))

(assert (=> b!2807858 (= res!1169608 (not ((_ is IntegerValue!15353) (value!157417 separatorToken!283))))))

(declare-fun e!1775296 () Bool)

(assert (=> b!2807858 (= e!1775296 e!1775297)))

(declare-fun b!2807859 () Bool)

(declare-fun inv!16 (TokenValue!5117) Bool)

(assert (=> b!2807859 (= e!1775295 (inv!16 (value!157417 separatorToken!283)))))

(declare-fun b!2807860 () Bool)

(assert (=> b!2807860 (= e!1775295 e!1775296)))

(declare-fun c!454844 () Bool)

(assert (=> b!2807860 (= c!454844 ((_ is IntegerValue!15352) (value!157417 separatorToken!283)))))

(declare-fun b!2807861 () Bool)

(declare-fun inv!17 (TokenValue!5117) Bool)

(assert (=> b!2807861 (= e!1775296 (inv!17 (value!157417 separatorToken!283)))))

(declare-fun b!2807862 () Bool)

(declare-fun inv!15 (TokenValue!5117) Bool)

(assert (=> b!2807862 (= e!1775297 (inv!15 (value!157417 separatorToken!283)))))

(assert (= (and d!815191 c!454845) b!2807859))

(assert (= (and d!815191 (not c!454845)) b!2807860))

(assert (= (and b!2807860 c!454844) b!2807861))

(assert (= (and b!2807860 (not c!454844)) b!2807858))

(assert (= (and b!2807858 (not res!1169608)) b!2807862))

(declare-fun m!3237405 () Bool)

(assert (=> b!2807859 m!3237405))

(declare-fun m!3237407 () Bool)

(assert (=> b!2807861 m!3237407))

(declare-fun m!3237409 () Bool)

(assert (=> b!2807862 m!3237409))

(assert (=> b!2807826 d!815191))

(declare-fun d!815197 () Bool)

(assert (=> d!815197 (= (inv!44419 (tag!5399 (rule!7323 separatorToken!283))) (= (mod (str.len (value!157416 (tag!5399 (rule!7323 separatorToken!283)))) 2) 0))))

(assert (=> b!2807825 d!815197))

(declare-fun d!815199 () Bool)

(declare-fun res!1169611 () Bool)

(declare-fun e!1775300 () Bool)

(assert (=> d!815199 (=> (not res!1169611) (not e!1775300))))

(declare-fun semiInverseModEq!2022 (Int Int) Bool)

(assert (=> d!815199 (= res!1169611 (semiInverseModEq!2022 (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (toValue!6897 (transformation!4895 (rule!7323 separatorToken!283)))))))

(assert (=> d!815199 (= (inv!44422 (transformation!4895 (rule!7323 separatorToken!283))) e!1775300)))

(declare-fun b!2807865 () Bool)

(declare-fun equivClasses!1923 (Int Int) Bool)

(assert (=> b!2807865 (= e!1775300 (equivClasses!1923 (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (toValue!6897 (transformation!4895 (rule!7323 separatorToken!283)))))))

(assert (= (and d!815199 res!1169611) b!2807865))

(declare-fun m!3237411 () Bool)

(assert (=> d!815199 m!3237411))

(declare-fun m!3237413 () Bool)

(assert (=> b!2807865 m!3237413))

(assert (=> b!2807825 d!815199))

(declare-fun d!815201 () Bool)

(assert (=> d!815201 (= (inv!44419 (tag!5399 (rule!7323 (h!38160 l!5055)))) (= (mod (str.len (value!157416 (tag!5399 (rule!7323 (h!38160 l!5055))))) 2) 0))))

(assert (=> b!2807819 d!815201))

(declare-fun d!815203 () Bool)

(declare-fun res!1169612 () Bool)

(declare-fun e!1775301 () Bool)

(assert (=> d!815203 (=> (not res!1169612) (not e!1775301))))

(assert (=> d!815203 (= res!1169612 (semiInverseModEq!2022 (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (toValue!6897 (transformation!4895 (rule!7323 (h!38160 l!5055))))))))

(assert (=> d!815203 (= (inv!44422 (transformation!4895 (rule!7323 (h!38160 l!5055)))) e!1775301)))

(declare-fun b!2807866 () Bool)

(assert (=> b!2807866 (= e!1775301 (equivClasses!1923 (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (toValue!6897 (transformation!4895 (rule!7323 (h!38160 l!5055))))))))

(assert (= (and d!815203 res!1169612) b!2807866))

(declare-fun m!3237415 () Bool)

(assert (=> d!815203 m!3237415))

(declare-fun m!3237417 () Bool)

(assert (=> b!2807866 m!3237417))

(assert (=> b!2807819 d!815203))

(declare-fun d!815205 () Bool)

(declare-fun c!454847 () Bool)

(assert (=> d!815205 (= c!454847 ((_ is IntegerValue!15351) (value!157417 (h!38160 l!5055))))))

(declare-fun e!1775302 () Bool)

(assert (=> d!815205 (= (inv!21 (value!157417 (h!38160 l!5055))) e!1775302)))

(declare-fun b!2807867 () Bool)

(declare-fun res!1169613 () Bool)

(declare-fun e!1775304 () Bool)

(assert (=> b!2807867 (=> res!1169613 e!1775304)))

(assert (=> b!2807867 (= res!1169613 (not ((_ is IntegerValue!15353) (value!157417 (h!38160 l!5055)))))))

(declare-fun e!1775303 () Bool)

(assert (=> b!2807867 (= e!1775303 e!1775304)))

(declare-fun b!2807868 () Bool)

(assert (=> b!2807868 (= e!1775302 (inv!16 (value!157417 (h!38160 l!5055))))))

(declare-fun b!2807869 () Bool)

(assert (=> b!2807869 (= e!1775302 e!1775303)))

(declare-fun c!454846 () Bool)

(assert (=> b!2807869 (= c!454846 ((_ is IntegerValue!15352) (value!157417 (h!38160 l!5055))))))

(declare-fun b!2807870 () Bool)

(assert (=> b!2807870 (= e!1775303 (inv!17 (value!157417 (h!38160 l!5055))))))

(declare-fun b!2807871 () Bool)

(assert (=> b!2807871 (= e!1775304 (inv!15 (value!157417 (h!38160 l!5055))))))

(assert (= (and d!815205 c!454847) b!2807868))

(assert (= (and d!815205 (not c!454847)) b!2807869))

(assert (= (and b!2807869 c!454846) b!2807870))

(assert (= (and b!2807869 (not c!454846)) b!2807867))

(assert (= (and b!2807867 (not res!1169613)) b!2807871))

(declare-fun m!3237419 () Bool)

(assert (=> b!2807868 m!3237419))

(declare-fun m!3237421 () Bool)

(assert (=> b!2807870 m!3237421))

(declare-fun m!3237423 () Bool)

(assert (=> b!2807871 m!3237423))

(assert (=> b!2807829 d!815205))

(declare-fun d!815207 () Bool)

(declare-fun res!1169616 () Bool)

(declare-fun e!1775307 () Bool)

(assert (=> d!815207 (=> (not res!1169616) (not e!1775307))))

(declare-fun rulesValid!1810 (LexerInterface!4486 List!32841) Bool)

(assert (=> d!815207 (= res!1169616 (rulesValid!1810 thiss!19710 rules!2540))))

(assert (=> d!815207 (= (rulesInvariant!3926 thiss!19710 rules!2540) e!1775307)))

(declare-fun b!2807874 () Bool)

(declare-datatypes ((List!32843 0))(
  ( (Nil!32743) (Cons!32743 (h!38163 String!35921) (t!229523 List!32843)) )
))
(declare-fun noDuplicateTag!1806 (LexerInterface!4486 List!32841 List!32843) Bool)

(assert (=> b!2807874 (= e!1775307 (noDuplicateTag!1806 thiss!19710 rules!2540 Nil!32743))))

(assert (= (and d!815207 res!1169616) b!2807874))

(declare-fun m!3237425 () Bool)

(assert (=> d!815207 m!3237425))

(declare-fun m!3237427 () Bool)

(assert (=> b!2807874 m!3237427))

(assert (=> b!2807818 d!815207))

(declare-fun d!815209 () Bool)

(assert (=> d!815209 (= (inv!44419 (tag!5399 (h!38161 rules!2540))) (= (mod (str.len (value!157416 (tag!5399 (h!38161 rules!2540)))) 2) 0))))

(assert (=> b!2807817 d!815209))

(declare-fun d!815211 () Bool)

(declare-fun res!1169617 () Bool)

(declare-fun e!1775308 () Bool)

(assert (=> d!815211 (=> (not res!1169617) (not e!1775308))))

(assert (=> d!815211 (= res!1169617 (semiInverseModEq!2022 (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toValue!6897 (transformation!4895 (h!38161 rules!2540)))))))

(assert (=> d!815211 (= (inv!44422 (transformation!4895 (h!38161 rules!2540))) e!1775308)))

(declare-fun b!2807875 () Bool)

(assert (=> b!2807875 (= e!1775308 (equivClasses!1923 (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toValue!6897 (transformation!4895 (h!38161 rules!2540)))))))

(assert (= (and d!815211 res!1169617) b!2807875))

(declare-fun m!3237429 () Bool)

(assert (=> d!815211 m!3237429))

(declare-fun m!3237431 () Bool)

(assert (=> b!2807875 m!3237431))

(assert (=> b!2807817 d!815211))

(declare-fun d!815213 () Bool)

(assert (=> d!815213 (= (isEmpty!18198 rules!2540) ((_ is Nil!32741) rules!2540))))

(assert (=> b!2807828 d!815213))

(declare-fun b!2807931 () Bool)

(declare-fun e!1775350 () Bool)

(assert (=> b!2807931 (= e!1775350 true)))

(declare-fun b!2807930 () Bool)

(declare-fun e!1775349 () Bool)

(assert (=> b!2807930 (= e!1775349 e!1775350)))

(declare-fun b!2807929 () Bool)

(declare-fun e!1775348 () Bool)

(assert (=> b!2807929 (= e!1775348 e!1775349)))

(declare-fun d!815215 () Bool)

(assert (=> d!815215 e!1775348))

(assert (= b!2807930 b!2807931))

(assert (= b!2807929 b!2807930))

(assert (= (and d!815215 ((_ is Cons!32741) rules!2540)) b!2807929))

(declare-fun lambda!103147 () Int)

(declare-fun order!17401 () Int)

(declare-fun order!17399 () Int)

(declare-fun dynLambda!13717 (Int Int) Int)

(declare-fun dynLambda!13718 (Int Int) Int)

(assert (=> b!2807931 (< (dynLambda!13717 order!17399 (toValue!6897 (transformation!4895 (h!38161 rules!2540)))) (dynLambda!13718 order!17401 lambda!103147))))

(declare-fun order!17403 () Int)

(declare-fun dynLambda!13719 (Int Int) Int)

(assert (=> b!2807931 (< (dynLambda!13719 order!17403 (toChars!6756 (transformation!4895 (h!38161 rules!2540)))) (dynLambda!13718 order!17401 lambda!103147))))

(assert (=> d!815215 true))

(declare-fun lt!1003386 () Bool)

(declare-fun forall!6734 (List!32840 Int) Bool)

(assert (=> d!815215 (= lt!1003386 (forall!6734 (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283) lambda!103147))))

(declare-fun e!1775339 () Bool)

(assert (=> d!815215 (= lt!1003386 e!1775339)))

(declare-fun res!1169636 () Bool)

(assert (=> d!815215 (=> res!1169636 e!1775339)))

(assert (=> d!815215 (= res!1169636 (not ((_ is Cons!32740) (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283))))))

(assert (=> d!815215 (not (isEmpty!18198 rules!2540))))

(assert (=> d!815215 (= (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283)) lt!1003386)))

(declare-fun b!2807915 () Bool)

(declare-fun e!1775338 () Bool)

(assert (=> b!2807915 (= e!1775339 e!1775338)))

(declare-fun res!1169637 () Bool)

(assert (=> b!2807915 (=> (not res!1169637) (not e!1775338))))

(assert (=> b!2807915 (= res!1169637 (rulesProduceIndividualToken!2050 thiss!19710 rules!2540 (h!38160 (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283))))))

(declare-fun b!2807916 () Bool)

(assert (=> b!2807916 (= e!1775338 (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 (t!229474 (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283))))))

(assert (= (and d!815215 (not res!1169636)) b!2807915))

(assert (= (and b!2807915 res!1169637) b!2807916))

(assert (=> d!815215 m!3237357))

(declare-fun m!3237439 () Bool)

(assert (=> d!815215 m!3237439))

(assert (=> d!815215 m!3237379))

(declare-fun m!3237441 () Bool)

(assert (=> b!2807915 m!3237441))

(declare-fun m!3237443 () Bool)

(assert (=> b!2807916 m!3237443))

(assert (=> b!2807822 d!815215))

(declare-fun d!815219 () Bool)

(declare-fun lt!1003426 () List!32840)

(declare-fun printList!1200 (LexerInterface!4486 List!32840) List!32839)

(declare-fun printWithSeparatorTokenList!76 (LexerInterface!4486 List!32840 Token!9192) List!32839)

(assert (=> d!815219 (= (printList!1200 thiss!19710 lt!1003426) (printWithSeparatorTokenList!76 thiss!19710 l!5055 separatorToken!283))))

(declare-fun e!1775383 () List!32840)

(assert (=> d!815219 (= lt!1003426 e!1775383)))

(declare-fun c!454864 () Bool)

(assert (=> d!815219 (= c!454864 ((_ is Cons!32740) l!5055))))

(declare-fun e!1775387 () Bool)

(assert (=> d!815219 e!1775387))

(declare-fun res!1169660 () Bool)

(assert (=> d!815219 (=> (not res!1169660) (not e!1775387))))

(assert (=> d!815219 (= res!1169660 (isSeparator!4895 (rule!7323 separatorToken!283)))))

(assert (=> d!815219 (= (withSeparatorTokenList!134 thiss!19710 l!5055 separatorToken!283) lt!1003426)))

(declare-fun b!2807983 () Bool)

(declare-fun e!1775382 () Bool)

(assert (=> b!2807983 (= e!1775387 e!1775382)))

(declare-fun res!1169662 () Bool)

(assert (=> b!2807983 (=> res!1169662 e!1775382)))

(assert (=> b!2807983 (= res!1169662 (not ((_ is Cons!32740) l!5055)))))

(declare-fun b!2807984 () Bool)

(declare-fun $colon$colon!548 (List!32840 Token!9192) List!32840)

(assert (=> b!2807984 (= e!1775383 ($colon$colon!548 ($colon$colon!548 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283) separatorToken!283) (h!38160 l!5055)))))

(declare-fun lt!1003424 () List!32839)

(declare-fun charsOf!3040 (Token!9192) BalanceConc!19878)

(assert (=> b!2807984 (= lt!1003424 (list!12258 (charsOf!3040 (h!38160 l!5055))))))

(declare-fun lt!1003428 () List!32839)

(assert (=> b!2807984 (= lt!1003428 (list!12258 (charsOf!3040 separatorToken!283)))))

(declare-fun lt!1003429 () List!32839)

(assert (=> b!2807984 (= lt!1003429 (printList!1200 thiss!19710 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283)))))

(declare-datatypes ((Unit!46790 0))(
  ( (Unit!46791) )
))
(declare-fun lt!1003427 () Unit!46790)

(declare-fun lemmaConcatAssociativity!1656 (List!32839 List!32839 List!32839) Unit!46790)

(assert (=> b!2807984 (= lt!1003427 (lemmaConcatAssociativity!1656 lt!1003424 lt!1003428 lt!1003429))))

(declare-fun ++!8041 (List!32839 List!32839) List!32839)

(assert (=> b!2807984 (= (++!8041 (++!8041 lt!1003424 lt!1003428) lt!1003429) (++!8041 lt!1003424 (++!8041 lt!1003428 lt!1003429)))))

(declare-fun lt!1003431 () Unit!46790)

(assert (=> b!2807984 (= lt!1003431 lt!1003427)))

(declare-fun b!2807985 () Bool)

(declare-fun res!1169661 () Bool)

(assert (=> b!2807985 (=> (not res!1169661) (not e!1775387))))

(declare-fun e!1775384 () Bool)

(assert (=> b!2807985 (= res!1169661 e!1775384)))

(declare-fun res!1169663 () Bool)

(assert (=> b!2807985 (=> res!1169663 e!1775384)))

(assert (=> b!2807985 (= res!1169663 (not ((_ is Cons!32740) l!5055)))))

(declare-fun b!2807986 () Bool)

(declare-fun e!1775386 () List!32839)

(declare-fun lt!1003425 () List!32840)

(assert (=> b!2807986 (= e!1775386 (++!8041 (list!12258 (charsOf!3040 (h!38160 lt!1003425))) (printList!1200 thiss!19710 (t!229474 lt!1003425))))))

(declare-fun b!2807987 () Bool)

(declare-fun e!1775385 () List!32839)

(assert (=> b!2807987 (= e!1775385 Nil!32739)))

(declare-fun b!2807988 () Bool)

(assert (=> b!2807988 (= e!1775383 Nil!32740)))

(declare-fun b!2807989 () Bool)

(declare-fun lt!1003430 () List!32840)

(assert (=> b!2807989 (= e!1775385 (++!8041 (list!12258 (charsOf!3040 (h!38160 lt!1003430))) (printList!1200 thiss!19710 (t!229474 lt!1003430))))))

(declare-fun b!2807990 () Bool)

(assert (=> b!2807990 (= e!1775384 (= (printList!1200 thiss!19710 ($colon$colon!548 ($colon$colon!548 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283) separatorToken!283) (h!38160 l!5055))) e!1775386))))

(declare-fun c!454865 () Bool)

(assert (=> b!2807990 (= c!454865 ((_ is Cons!32740) lt!1003425))))

(assert (=> b!2807990 (= lt!1003425 ($colon$colon!548 ($colon$colon!548 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283) separatorToken!283) (h!38160 l!5055)))))

(declare-fun b!2807991 () Bool)

(assert (=> b!2807991 (= e!1775386 Nil!32739)))

(declare-fun b!2807992 () Bool)

(assert (=> b!2807992 (= e!1775382 (= (printList!1200 thiss!19710 ($colon$colon!548 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283) separatorToken!283)) e!1775385))))

(declare-fun c!454863 () Bool)

(assert (=> b!2807992 (= c!454863 ((_ is Cons!32740) lt!1003430))))

(assert (=> b!2807992 (= lt!1003430 ($colon$colon!548 (withSeparatorTokenList!134 thiss!19710 (t!229474 l!5055) separatorToken!283) separatorToken!283))))

(assert (= (and d!815219 res!1169660) b!2807985))

(assert (= (and b!2807985 (not res!1169663)) b!2807990))

(assert (= (and b!2807990 c!454865) b!2807986))

(assert (= (and b!2807990 (not c!454865)) b!2807991))

(assert (= (and b!2807985 res!1169661) b!2807983))

(assert (= (and b!2807983 (not res!1169662)) b!2807992))

(assert (= (and b!2807992 c!454863) b!2807989))

(assert (= (and b!2807992 (not c!454863)) b!2807987))

(assert (= (and d!815219 c!454864) b!2807984))

(assert (= (and d!815219 (not c!454864)) b!2807988))

(declare-fun m!3237525 () Bool)

(assert (=> b!2807984 m!3237525))

(declare-fun m!3237527 () Bool)

(assert (=> b!2807984 m!3237527))

(declare-fun m!3237529 () Bool)

(assert (=> b!2807984 m!3237529))

(assert (=> b!2807984 m!3237527))

(declare-fun m!3237531 () Bool)

(assert (=> b!2807984 m!3237531))

(declare-fun m!3237533 () Bool)

(assert (=> b!2807984 m!3237533))

(declare-fun m!3237535 () Bool)

(assert (=> b!2807984 m!3237535))

(declare-fun m!3237537 () Bool)

(assert (=> b!2807984 m!3237537))

(assert (=> b!2807984 m!3237531))

(declare-fun m!3237539 () Bool)

(assert (=> b!2807984 m!3237539))

(declare-fun m!3237541 () Bool)

(assert (=> b!2807984 m!3237541))

(assert (=> b!2807984 m!3237533))

(declare-fun m!3237543 () Bool)

(assert (=> b!2807984 m!3237543))

(declare-fun m!3237545 () Bool)

(assert (=> b!2807984 m!3237545))

(declare-fun m!3237547 () Bool)

(assert (=> b!2807984 m!3237547))

(assert (=> b!2807984 m!3237527))

(assert (=> b!2807984 m!3237541))

(declare-fun m!3237549 () Bool)

(assert (=> b!2807984 m!3237549))

(assert (=> b!2807984 m!3237535))

(assert (=> b!2807984 m!3237545))

(assert (=> b!2807990 m!3237527))

(assert (=> b!2807990 m!3237527))

(assert (=> b!2807990 m!3237531))

(assert (=> b!2807990 m!3237531))

(assert (=> b!2807990 m!3237539))

(assert (=> b!2807990 m!3237539))

(declare-fun m!3237551 () Bool)

(assert (=> b!2807990 m!3237551))

(assert (=> b!2807992 m!3237527))

(assert (=> b!2807992 m!3237527))

(assert (=> b!2807992 m!3237531))

(assert (=> b!2807992 m!3237531))

(declare-fun m!3237553 () Bool)

(assert (=> b!2807992 m!3237553))

(declare-fun m!3237555 () Bool)

(assert (=> b!2807989 m!3237555))

(assert (=> b!2807989 m!3237555))

(declare-fun m!3237557 () Bool)

(assert (=> b!2807989 m!3237557))

(declare-fun m!3237559 () Bool)

(assert (=> b!2807989 m!3237559))

(assert (=> b!2807989 m!3237557))

(assert (=> b!2807989 m!3237559))

(declare-fun m!3237561 () Bool)

(assert (=> b!2807989 m!3237561))

(declare-fun m!3237563 () Bool)

(assert (=> d!815219 m!3237563))

(declare-fun m!3237565 () Bool)

(assert (=> d!815219 m!3237565))

(declare-fun m!3237567 () Bool)

(assert (=> b!2807986 m!3237567))

(assert (=> b!2807986 m!3237567))

(declare-fun m!3237569 () Bool)

(assert (=> b!2807986 m!3237569))

(declare-fun m!3237571 () Bool)

(assert (=> b!2807986 m!3237571))

(assert (=> b!2807986 m!3237569))

(assert (=> b!2807986 m!3237571))

(declare-fun m!3237573 () Bool)

(assert (=> b!2807986 m!3237573))

(assert (=> b!2807822 d!815219))

(declare-fun bs!516294 () Bool)

(declare-fun d!815229 () Bool)

(assert (= bs!516294 (and d!815229 d!815215)))

(declare-fun lambda!103149 () Int)

(assert (=> bs!516294 (= lambda!103149 lambda!103147)))

(declare-fun b!2807997 () Bool)

(declare-fun e!1775392 () Bool)

(assert (=> b!2807997 (= e!1775392 true)))

(declare-fun b!2807996 () Bool)

(declare-fun e!1775391 () Bool)

(assert (=> b!2807996 (= e!1775391 e!1775392)))

(declare-fun b!2807995 () Bool)

(declare-fun e!1775390 () Bool)

(assert (=> b!2807995 (= e!1775390 e!1775391)))

(assert (=> d!815229 e!1775390))

(assert (= b!2807996 b!2807997))

(assert (= b!2807995 b!2807996))

(assert (= (and d!815229 ((_ is Cons!32741) rules!2540)) b!2807995))

(assert (=> b!2807997 (< (dynLambda!13717 order!17399 (toValue!6897 (transformation!4895 (h!38161 rules!2540)))) (dynLambda!13718 order!17401 lambda!103149))))

(assert (=> b!2807997 (< (dynLambda!13719 order!17403 (toChars!6756 (transformation!4895 (h!38161 rules!2540)))) (dynLambda!13718 order!17401 lambda!103149))))

(assert (=> d!815229 true))

(declare-fun lt!1003432 () Bool)

(assert (=> d!815229 (= lt!1003432 (forall!6734 l!5055 lambda!103149))))

(declare-fun e!1775389 () Bool)

(assert (=> d!815229 (= lt!1003432 e!1775389)))

(declare-fun res!1169664 () Bool)

(assert (=> d!815229 (=> res!1169664 e!1775389)))

(assert (=> d!815229 (= res!1169664 (not ((_ is Cons!32740) l!5055)))))

(assert (=> d!815229 (not (isEmpty!18198 rules!2540))))

(assert (=> d!815229 (= (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 l!5055) lt!1003432)))

(declare-fun b!2807993 () Bool)

(declare-fun e!1775388 () Bool)

(assert (=> b!2807993 (= e!1775389 e!1775388)))

(declare-fun res!1169665 () Bool)

(assert (=> b!2807993 (=> (not res!1169665) (not e!1775388))))

(assert (=> b!2807993 (= res!1169665 (rulesProduceIndividualToken!2050 thiss!19710 rules!2540 (h!38160 l!5055)))))

(declare-fun b!2807994 () Bool)

(assert (=> b!2807994 (= e!1775388 (rulesProduceEachTokenIndividuallyList!1560 thiss!19710 rules!2540 (t!229474 l!5055)))))

(assert (= (and d!815229 (not res!1169664)) b!2807993))

(assert (= (and b!2807993 res!1169665) b!2807994))

(declare-fun m!3237575 () Bool)

(assert (=> d!815229 m!3237575))

(assert (=> d!815229 m!3237379))

(declare-fun m!3237577 () Bool)

(assert (=> b!2807993 m!3237577))

(declare-fun m!3237579 () Bool)

(assert (=> b!2807994 m!3237579))

(assert (=> b!2807821 d!815229))

(declare-fun d!815231 () Bool)

(declare-fun res!1169666 () Bool)

(declare-fun e!1775393 () Bool)

(assert (=> d!815231 (=> (not res!1169666) (not e!1775393))))

(assert (=> d!815231 (= res!1169666 (not (isEmpty!18199 (originalCharacters!5627 (h!38160 l!5055)))))))

(assert (=> d!815231 (= (inv!44423 (h!38160 l!5055)) e!1775393)))

(declare-fun b!2807998 () Bool)

(declare-fun res!1169667 () Bool)

(assert (=> b!2807998 (=> (not res!1169667) (not e!1775393))))

(assert (=> b!2807998 (= res!1169667 (= (originalCharacters!5627 (h!38160 l!5055)) (list!12258 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (value!157417 (h!38160 l!5055))))))))

(declare-fun b!2807999 () Bool)

(assert (=> b!2807999 (= e!1775393 (= (size!25534 (h!38160 l!5055)) (size!25535 (originalCharacters!5627 (h!38160 l!5055)))))))

(assert (= (and d!815231 res!1169666) b!2807998))

(assert (= (and b!2807998 res!1169667) b!2807999))

(declare-fun b_lambda!83985 () Bool)

(assert (=> (not b_lambda!83985) (not b!2807998)))

(declare-fun t!229499 () Bool)

(declare-fun tb!153387 () Bool)

(assert (=> (and b!2807827 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055))))) t!229499) tb!153387))

(declare-fun b!2808000 () Bool)

(declare-fun e!1775394 () Bool)

(declare-fun tp!896104 () Bool)

(assert (=> b!2808000 (= e!1775394 (and (inv!44424 (c!454838 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (value!157417 (h!38160 l!5055))))) tp!896104))))

(declare-fun result!190610 () Bool)

(assert (=> tb!153387 (= result!190610 (and (inv!44425 (dynLambda!13715 (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (value!157417 (h!38160 l!5055)))) e!1775394))))

(assert (= tb!153387 b!2808000))

(declare-fun m!3237581 () Bool)

(assert (=> b!2808000 m!3237581))

(declare-fun m!3237583 () Bool)

(assert (=> tb!153387 m!3237583))

(assert (=> b!2807998 t!229499))

(declare-fun b_and!205057 () Bool)

(assert (= b_and!205039 (and (=> t!229499 result!190610) b_and!205057)))

(declare-fun tb!153389 () Bool)

(declare-fun t!229501 () Bool)

(assert (=> (and b!2807823 (= (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055))))) t!229501) tb!153389))

(declare-fun result!190612 () Bool)

(assert (= result!190612 result!190610))

(assert (=> b!2807998 t!229501))

(declare-fun b_and!205059 () Bool)

(assert (= b_and!205041 (and (=> t!229501 result!190612) b_and!205059)))

(declare-fun tb!153391 () Bool)

(declare-fun t!229503 () Bool)

(assert (=> (and b!2807815 (= (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055))))) t!229503) tb!153391))

(declare-fun result!190614 () Bool)

(assert (= result!190614 result!190610))

(assert (=> b!2807998 t!229503))

(declare-fun b_and!205061 () Bool)

(assert (= b_and!205043 (and (=> t!229503 result!190614) b_and!205061)))

(declare-fun m!3237585 () Bool)

(assert (=> d!815231 m!3237585))

(declare-fun m!3237587 () Bool)

(assert (=> b!2807998 m!3237587))

(assert (=> b!2807998 m!3237587))

(declare-fun m!3237589 () Bool)

(assert (=> b!2807998 m!3237589))

(declare-fun m!3237591 () Bool)

(assert (=> b!2807999 m!3237591))

(assert (=> b!2807820 d!815231))

(declare-fun d!815233 () Bool)

(declare-fun lt!1003444 () Bool)

(declare-fun e!1775446 () Bool)

(assert (=> d!815233 (= lt!1003444 e!1775446)))

(declare-fun res!1169691 () Bool)

(assert (=> d!815233 (=> (not res!1169691) (not e!1775446))))

(declare-datatypes ((IArray!20273 0))(
  ( (IArray!20274 (innerList!10194 List!32840)) )
))
(declare-datatypes ((Conc!10134 0))(
  ( (Node!10134 (left!24716 Conc!10134) (right!25046 Conc!10134) (csize!20498 Int) (cheight!10345 Int)) (Leaf!15435 (xs!13246 IArray!20273) (csize!20499 Int)) (Empty!10134) )
))
(declare-datatypes ((BalanceConc!19882 0))(
  ( (BalanceConc!19883 (c!454875 Conc!10134)) )
))
(declare-fun list!12261 (BalanceConc!19882) List!32840)

(declare-datatypes ((tuple2!33320 0))(
  ( (tuple2!33321 (_1!19753 BalanceConc!19882) (_2!19753 BalanceConc!19878)) )
))
(declare-fun lex!1978 (LexerInterface!4486 List!32841 BalanceConc!19878) tuple2!33320)

(declare-fun print!1697 (LexerInterface!4486 BalanceConc!19882) BalanceConc!19878)

(declare-fun singletonSeq!2118 (Token!9192) BalanceConc!19882)

(assert (=> d!815233 (= res!1169691 (= (list!12261 (_1!19753 (lex!1978 thiss!19710 rules!2540 (print!1697 thiss!19710 (singletonSeq!2118 separatorToken!283))))) (list!12261 (singletonSeq!2118 separatorToken!283))))))

(declare-fun e!1775447 () Bool)

(assert (=> d!815233 (= lt!1003444 e!1775447)))

(declare-fun res!1169690 () Bool)

(assert (=> d!815233 (=> (not res!1169690) (not e!1775447))))

(declare-fun lt!1003443 () tuple2!33320)

(declare-fun size!25538 (BalanceConc!19882) Int)

(assert (=> d!815233 (= res!1169690 (= (size!25538 (_1!19753 lt!1003443)) 1))))

(assert (=> d!815233 (= lt!1003443 (lex!1978 thiss!19710 rules!2540 (print!1697 thiss!19710 (singletonSeq!2118 separatorToken!283))))))

(assert (=> d!815233 (not (isEmpty!18198 rules!2540))))

(assert (=> d!815233 (= (rulesProduceIndividualToken!2050 thiss!19710 rules!2540 separatorToken!283) lt!1003444)))

(declare-fun b!2808080 () Bool)

(declare-fun res!1169689 () Bool)

(assert (=> b!2808080 (=> (not res!1169689) (not e!1775447))))

(declare-fun apply!7649 (BalanceConc!19882 Int) Token!9192)

(assert (=> b!2808080 (= res!1169689 (= (apply!7649 (_1!19753 lt!1003443) 0) separatorToken!283))))

(declare-fun b!2808081 () Bool)

(declare-fun isEmpty!18202 (BalanceConc!19878) Bool)

(assert (=> b!2808081 (= e!1775447 (isEmpty!18202 (_2!19753 lt!1003443)))))

(declare-fun b!2808082 () Bool)

(assert (=> b!2808082 (= e!1775446 (isEmpty!18202 (_2!19753 (lex!1978 thiss!19710 rules!2540 (print!1697 thiss!19710 (singletonSeq!2118 separatorToken!283))))))))

(assert (= (and d!815233 res!1169690) b!2808080))

(assert (= (and b!2808080 res!1169689) b!2808081))

(assert (= (and d!815233 res!1169691) b!2808082))

(declare-fun m!3237639 () Bool)

(assert (=> d!815233 m!3237639))

(declare-fun m!3237641 () Bool)

(assert (=> d!815233 m!3237641))

(declare-fun m!3237643 () Bool)

(assert (=> d!815233 m!3237643))

(assert (=> d!815233 m!3237379))

(assert (=> d!815233 m!3237639))

(declare-fun m!3237645 () Bool)

(assert (=> d!815233 m!3237645))

(assert (=> d!815233 m!3237639))

(declare-fun m!3237647 () Bool)

(assert (=> d!815233 m!3237647))

(assert (=> d!815233 m!3237647))

(declare-fun m!3237649 () Bool)

(assert (=> d!815233 m!3237649))

(declare-fun m!3237651 () Bool)

(assert (=> b!2808080 m!3237651))

(declare-fun m!3237653 () Bool)

(assert (=> b!2808081 m!3237653))

(assert (=> b!2808082 m!3237639))

(assert (=> b!2808082 m!3237639))

(assert (=> b!2808082 m!3237647))

(assert (=> b!2808082 m!3237647))

(assert (=> b!2808082 m!3237649))

(declare-fun m!3237655 () Bool)

(assert (=> b!2808082 m!3237655))

(assert (=> b!2807824 d!815233))

(declare-fun b!2808095 () Bool)

(declare-fun e!1775458 () Bool)

(declare-fun tp_is_empty!14311 () Bool)

(declare-fun tp!896159 () Bool)

(assert (=> b!2808095 (= e!1775458 (and tp_is_empty!14311 tp!896159))))

(assert (=> b!2807826 (= tp!896084 e!1775458)))

(assert (= (and b!2807826 ((_ is Cons!32739) (originalCharacters!5627 separatorToken!283))) b!2808095))

(declare-fun b!2808111 () Bool)

(declare-fun e!1775465 () Bool)

(declare-fun tp!896177 () Bool)

(assert (=> b!2808111 (= e!1775465 tp!896177)))

(declare-fun b!2808109 () Bool)

(assert (=> b!2808109 (= e!1775465 tp_is_empty!14311)))

(declare-fun b!2808110 () Bool)

(declare-fun tp!896178 () Bool)

(declare-fun tp!896175 () Bool)

(assert (=> b!2808110 (= e!1775465 (and tp!896178 tp!896175))))

(declare-fun b!2808112 () Bool)

(declare-fun tp!896174 () Bool)

(declare-fun tp!896176 () Bool)

(assert (=> b!2808112 (= e!1775465 (and tp!896174 tp!896176))))

(assert (=> b!2807825 (= tp!896087 e!1775465)))

(assert (= (and b!2807825 ((_ is ElementMatch!8265) (regex!4895 (rule!7323 separatorToken!283)))) b!2808109))

(assert (= (and b!2807825 ((_ is Concat!13383) (regex!4895 (rule!7323 separatorToken!283)))) b!2808110))

(assert (= (and b!2807825 ((_ is Star!8265) (regex!4895 (rule!7323 separatorToken!283)))) b!2808111))

(assert (= (and b!2807825 ((_ is Union!8265) (regex!4895 (rule!7323 separatorToken!283)))) b!2808112))

(declare-fun b!2808126 () Bool)

(declare-fun b_free!80005 () Bool)

(declare-fun b_next!80709 () Bool)

(assert (=> b!2808126 (= b_free!80005 (not b_next!80709))))

(declare-fun tp!896191 () Bool)

(declare-fun b_and!205071 () Bool)

(assert (=> b!2808126 (= tp!896191 b_and!205071)))

(declare-fun b_free!80007 () Bool)

(declare-fun b_next!80711 () Bool)

(assert (=> b!2808126 (= b_free!80007 (not b_next!80711))))

(declare-fun t!229516 () Bool)

(declare-fun tb!153401 () Bool)

(assert (=> (and b!2808126 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 (t!229474 l!5055))))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283)))) t!229516) tb!153401))

(declare-fun result!190638 () Bool)

(assert (= result!190638 result!190588))

(assert (=> b!2807835 t!229516))

(declare-fun t!229518 () Bool)

(declare-fun tb!153403 () Bool)

(assert (=> (and b!2808126 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 (t!229474 l!5055))))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055))))) t!229518) tb!153403))

(declare-fun result!190640 () Bool)

(assert (= result!190640 result!190610))

(assert (=> b!2807998 t!229518))

(declare-fun tp!896189 () Bool)

(declare-fun b_and!205073 () Bool)

(assert (=> b!2808126 (= tp!896189 (and (=> t!229516 result!190638) (=> t!229518 result!190640) b_and!205073))))

(declare-fun e!1775480 () Bool)

(assert (=> b!2808126 (= e!1775480 (and tp!896191 tp!896189))))

(declare-fun b!2808123 () Bool)

(declare-fun e!1775479 () Bool)

(declare-fun e!1775481 () Bool)

(declare-fun tp!896193 () Bool)

(assert (=> b!2808123 (= e!1775479 (and (inv!44423 (h!38160 (t!229474 l!5055))) e!1775481 tp!896193))))

(assert (=> b!2807820 (= tp!896086 e!1775479)))

(declare-fun b!2808125 () Bool)

(declare-fun e!1775482 () Bool)

(declare-fun tp!896192 () Bool)

(assert (=> b!2808125 (= e!1775482 (and tp!896192 (inv!44419 (tag!5399 (rule!7323 (h!38160 (t!229474 l!5055))))) (inv!44422 (transformation!4895 (rule!7323 (h!38160 (t!229474 l!5055))))) e!1775480))))

(declare-fun tp!896190 () Bool)

(declare-fun b!2808124 () Bool)

(assert (=> b!2808124 (= e!1775481 (and (inv!21 (value!157417 (h!38160 (t!229474 l!5055)))) e!1775482 tp!896190))))

(assert (= b!2808125 b!2808126))

(assert (= b!2808124 b!2808125))

(assert (= b!2808123 b!2808124))

(assert (= (and b!2807820 ((_ is Cons!32740) (t!229474 l!5055))) b!2808123))

(declare-fun m!3237661 () Bool)

(assert (=> b!2808123 m!3237661))

(declare-fun m!3237663 () Bool)

(assert (=> b!2808125 m!3237663))

(declare-fun m!3237665 () Bool)

(assert (=> b!2808125 m!3237665))

(declare-fun m!3237667 () Bool)

(assert (=> b!2808124 m!3237667))

(declare-fun b!2808129 () Bool)

(declare-fun e!1775484 () Bool)

(declare-fun tp!896197 () Bool)

(assert (=> b!2808129 (= e!1775484 tp!896197)))

(declare-fun b!2808127 () Bool)

(assert (=> b!2808127 (= e!1775484 tp_is_empty!14311)))

(declare-fun b!2808128 () Bool)

(declare-fun tp!896198 () Bool)

(declare-fun tp!896195 () Bool)

(assert (=> b!2808128 (= e!1775484 (and tp!896198 tp!896195))))

(declare-fun b!2808130 () Bool)

(declare-fun tp!896194 () Bool)

(declare-fun tp!896196 () Bool)

(assert (=> b!2808130 (= e!1775484 (and tp!896194 tp!896196))))

(assert (=> b!2807819 (= tp!896089 e!1775484)))

(assert (= (and b!2807819 ((_ is ElementMatch!8265) (regex!4895 (rule!7323 (h!38160 l!5055))))) b!2808127))

(assert (= (and b!2807819 ((_ is Concat!13383) (regex!4895 (rule!7323 (h!38160 l!5055))))) b!2808128))

(assert (= (and b!2807819 ((_ is Star!8265) (regex!4895 (rule!7323 (h!38160 l!5055))))) b!2808129))

(assert (= (and b!2807819 ((_ is Union!8265) (regex!4895 (rule!7323 (h!38160 l!5055))))) b!2808130))

(declare-fun b!2808141 () Bool)

(declare-fun b_free!80009 () Bool)

(declare-fun b_next!80713 () Bool)

(assert (=> b!2808141 (= b_free!80009 (not b_next!80713))))

(declare-fun tp!896208 () Bool)

(declare-fun b_and!205075 () Bool)

(assert (=> b!2808141 (= tp!896208 b_and!205075)))

(declare-fun b_free!80011 () Bool)

(declare-fun b_next!80715 () Bool)

(assert (=> b!2808141 (= b_free!80011 (not b_next!80715))))

(declare-fun tb!153405 () Bool)

(declare-fun t!229520 () Bool)

(assert (=> (and b!2808141 (= (toChars!6756 (transformation!4895 (h!38161 (t!229475 rules!2540)))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283)))) t!229520) tb!153405))

(declare-fun result!190644 () Bool)

(assert (= result!190644 result!190588))

(assert (=> b!2807835 t!229520))

(declare-fun tb!153407 () Bool)

(declare-fun t!229522 () Bool)

(assert (=> (and b!2808141 (= (toChars!6756 (transformation!4895 (h!38161 (t!229475 rules!2540)))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055))))) t!229522) tb!153407))

(declare-fun result!190646 () Bool)

(assert (= result!190646 result!190610))

(assert (=> b!2807998 t!229522))

(declare-fun b_and!205077 () Bool)

(declare-fun tp!896207 () Bool)

(assert (=> b!2808141 (= tp!896207 (and (=> t!229520 result!190644) (=> t!229522 result!190646) b_and!205077))))

(declare-fun e!1775493 () Bool)

(assert (=> b!2808141 (= e!1775493 (and tp!896208 tp!896207))))

(declare-fun b!2808140 () Bool)

(declare-fun tp!896210 () Bool)

(declare-fun e!1775495 () Bool)

(assert (=> b!2808140 (= e!1775495 (and tp!896210 (inv!44419 (tag!5399 (h!38161 (t!229475 rules!2540)))) (inv!44422 (transformation!4895 (h!38161 (t!229475 rules!2540)))) e!1775493))))

(declare-fun b!2808139 () Bool)

(declare-fun e!1775494 () Bool)

(declare-fun tp!896209 () Bool)

(assert (=> b!2808139 (= e!1775494 (and e!1775495 tp!896209))))

(assert (=> b!2807830 (= tp!896085 e!1775494)))

(assert (= b!2808140 b!2808141))

(assert (= b!2808139 b!2808140))

(assert (= (and b!2807830 ((_ is Cons!32741) (t!229475 rules!2540))) b!2808139))

(declare-fun m!3237669 () Bool)

(assert (=> b!2808140 m!3237669))

(declare-fun m!3237671 () Bool)

(assert (=> b!2808140 m!3237671))

(declare-fun b!2808142 () Bool)

(declare-fun e!1775497 () Bool)

(declare-fun tp!896211 () Bool)

(assert (=> b!2808142 (= e!1775497 (and tp_is_empty!14311 tp!896211))))

(assert (=> b!2807829 (= tp!896091 e!1775497)))

(assert (= (and b!2807829 ((_ is Cons!32739) (originalCharacters!5627 (h!38160 l!5055)))) b!2808142))

(declare-fun b!2808145 () Bool)

(declare-fun e!1775498 () Bool)

(declare-fun tp!896215 () Bool)

(assert (=> b!2808145 (= e!1775498 tp!896215)))

(declare-fun b!2808143 () Bool)

(assert (=> b!2808143 (= e!1775498 tp_is_empty!14311)))

(declare-fun b!2808144 () Bool)

(declare-fun tp!896216 () Bool)

(declare-fun tp!896213 () Bool)

(assert (=> b!2808144 (= e!1775498 (and tp!896216 tp!896213))))

(declare-fun b!2808146 () Bool)

(declare-fun tp!896212 () Bool)

(declare-fun tp!896214 () Bool)

(assert (=> b!2808146 (= e!1775498 (and tp!896212 tp!896214))))

(assert (=> b!2807817 (= tp!896090 e!1775498)))

(assert (= (and b!2807817 ((_ is ElementMatch!8265) (regex!4895 (h!38161 rules!2540)))) b!2808143))

(assert (= (and b!2807817 ((_ is Concat!13383) (regex!4895 (h!38161 rules!2540)))) b!2808144))

(assert (= (and b!2807817 ((_ is Star!8265) (regex!4895 (h!38161 rules!2540)))) b!2808145))

(assert (= (and b!2807817 ((_ is Union!8265) (regex!4895 (h!38161 rules!2540)))) b!2808146))

(declare-fun b_lambda!83991 () Bool)

(assert (= b_lambda!83985 (or (and b!2807827 b_free!79987) (and b!2808126 b_free!80007 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 (t!229474 l!5055))))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))))) (and b!2807815 b_free!79995 (= (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))))) (and b!2807823 b_free!79991 (= (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))))) (and b!2808141 b_free!80011 (= (toChars!6756 (transformation!4895 (h!38161 (t!229475 rules!2540)))) (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))))) b_lambda!83991)))

(declare-fun b_lambda!83993 () Bool)

(assert (= b_lambda!83979 (or (and b!2807823 b_free!79991 (= (toChars!6756 (transformation!4895 (h!38161 rules!2540))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))))) (and b!2807827 b_free!79987 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 l!5055)))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))))) (and b!2808141 b_free!80011 (= (toChars!6756 (transformation!4895 (h!38161 (t!229475 rules!2540)))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))))) (and b!2808126 b_free!80007 (= (toChars!6756 (transformation!4895 (rule!7323 (h!38160 (t!229474 l!5055))))) (toChars!6756 (transformation!4895 (rule!7323 separatorToken!283))))) (and b!2807815 b_free!79995) b_lambda!83993)))

(check-sat b_and!205061 (not b!2807836) (not b!2807874) (not b!2807995) (not b!2808139) (not b!2807999) (not tb!153369) (not b!2807994) b_and!205071 (not b!2808140) (not b!2807843) (not b!2808125) b_and!205073 tp_is_empty!14311 (not b!2808095) (not b!2808110) (not b!2807835) (not b_next!80695) b_and!205035 (not d!815199) (not b_next!80697) (not d!815207) (not b_next!80699) (not b!2808129) (not b!2808082) b_and!205077 (not b_lambda!83991) (not b!2808130) (not b!2807916) (not b!2807859) (not b!2808124) (not b!2808144) (not b!2807990) (not b_next!80711) (not b!2807998) (not b!2808142) (not d!815229) (not b!2807865) (not b!2807915) (not b!2807862) (not b!2807929) (not b!2808128) (not b!2807871) (not tb!153387) (not b!2808145) (not b!2807875) (not b!2808112) (not d!815211) b_and!205027 (not b!2808081) (not b!2808123) (not b_lambda!83993) (not b!2807861) b_and!205057 (not b_next!80691) (not b_next!80689) (not b!2808000) (not b_next!80709) (not d!815215) (not d!815233) (not b!2807870) (not d!815219) (not b!2807984) b_and!205059 (not b!2807868) (not b!2807989) (not b_next!80693) (not d!815185) (not b!2807992) b_and!205031 (not b!2808146) (not d!815203) (not b!2807986) (not b_next!80713) (not b!2808080) b_and!205075 (not b!2807993) (not b!2808111) (not d!815231) (not b!2807866) (not b_next!80715))
(check-sat b_and!205071 b_and!205061 b_and!205073 (not b_next!80697) (not b_next!80699) b_and!205077 (not b_next!80711) b_and!205027 (not b_next!80709) b_and!205059 (not b_next!80693) b_and!205031 (not b_next!80715) (not b_next!80695) b_and!205035 (not b_next!80689) b_and!205057 (not b_next!80691) (not b_next!80713) b_and!205075)
