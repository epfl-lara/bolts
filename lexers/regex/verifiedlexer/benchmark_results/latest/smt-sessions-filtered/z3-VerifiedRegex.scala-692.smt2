; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27098 () Bool)

(assert start!27098)

(declare-fun b!254189 () Bool)

(declare-fun b_free!9489 () Bool)

(declare-fun b_next!9489 () Bool)

(assert (=> b!254189 (= b_free!9489 (not b_next!9489))))

(declare-fun tp!98119 () Bool)

(declare-fun b_and!19377 () Bool)

(assert (=> b!254189 (= tp!98119 b_and!19377)))

(declare-fun b_free!9491 () Bool)

(declare-fun b_next!9491 () Bool)

(assert (=> b!254189 (= b_free!9491 (not b_next!9491))))

(declare-fun tp!98118 () Bool)

(declare-fun b_and!19379 () Bool)

(assert (=> b!254189 (= tp!98118 b_and!19379)))

(declare-fun b!254199 () Bool)

(declare-fun b_free!9493 () Bool)

(declare-fun b_next!9493 () Bool)

(assert (=> b!254199 (= b_free!9493 (not b_next!9493))))

(declare-fun tp!98115 () Bool)

(declare-fun b_and!19381 () Bool)

(assert (=> b!254199 (= tp!98115 b_and!19381)))

(declare-fun b_free!9495 () Bool)

(declare-fun b_next!9495 () Bool)

(assert (=> b!254199 (= b_free!9495 (not b_next!9495))))

(declare-fun tp!98124 () Bool)

(declare-fun b_and!19383 () Bool)

(assert (=> b!254199 (= tp!98124 b_and!19383)))

(declare-fun b!254197 () Bool)

(declare-fun b_free!9497 () Bool)

(declare-fun b_next!9497 () Bool)

(assert (=> b!254197 (= b_free!9497 (not b_next!9497))))

(declare-fun tp!98120 () Bool)

(declare-fun b_and!19385 () Bool)

(assert (=> b!254197 (= tp!98120 b_and!19385)))

(declare-fun b_free!9499 () Bool)

(declare-fun b_next!9499 () Bool)

(assert (=> b!254197 (= b_free!9499 (not b_next!9499))))

(declare-fun tp!98122 () Bool)

(declare-fun b_and!19387 () Bool)

(assert (=> b!254197 (= tp!98122 b_and!19387)))

(declare-fun b!254187 () Bool)

(declare-fun res!117652 () Bool)

(declare-fun e!157996 () Bool)

(assert (=> b!254187 (=> (not res!117652) (not e!157996))))

(declare-datatypes ((List!3723 0))(
  ( (Nil!3713) (Cons!3713 (h!9110 (_ BitVec 16)) (t!35995 List!3723)) )
))
(declare-datatypes ((TokenValue!729 0))(
  ( (FloatLiteralValue!1458 (text!5548 List!3723)) (TokenValueExt!728 (__x!2945 Int)) (Broken!3645 (value!24439 List!3723)) (Object!738) (End!729) (Def!729) (Underscore!729) (Match!729) (Else!729) (Error!729) (Case!729) (If!729) (Extends!729) (Abstract!729) (Class!729) (Val!729) (DelimiterValue!1458 (del!789 List!3723)) (KeywordValue!735 (value!24440 List!3723)) (CommentValue!1458 (value!24441 List!3723)) (WhitespaceValue!1458 (value!24442 List!3723)) (IndentationValue!729 (value!24443 List!3723)) (String!4724) (Int32!729) (Broken!3646 (value!24444 List!3723)) (Boolean!730) (Unit!4545) (OperatorValue!732 (op!789 List!3723)) (IdentifierValue!1458 (value!24445 List!3723)) (IdentifierValue!1459 (value!24446 List!3723)) (WhitespaceValue!1459 (value!24447 List!3723)) (True!1458) (False!1458) (Broken!3647 (value!24448 List!3723)) (Broken!3648 (value!24449 List!3723)) (True!1459) (RightBrace!729) (RightBracket!729) (Colon!729) (Null!729) (Comma!729) (LeftBracket!729) (False!1459) (LeftBrace!729) (ImaginaryLiteralValue!729 (text!5549 List!3723)) (StringLiteralValue!2187 (value!24450 List!3723)) (EOFValue!729 (value!24451 List!3723)) (IdentValue!729 (value!24452 List!3723)) (DelimiterValue!1459 (value!24453 List!3723)) (DedentValue!729 (value!24454 List!3723)) (NewLineValue!729 (value!24455 List!3723)) (IntegerValue!2187 (value!24456 (_ BitVec 32)) (text!5550 List!3723)) (IntegerValue!2188 (value!24457 Int) (text!5551 List!3723)) (Times!729) (Or!729) (Equal!729) (Minus!729) (Broken!3649 (value!24458 List!3723)) (And!729) (Div!729) (LessEqual!729) (Mod!729) (Concat!1660) (Not!729) (Plus!729) (SpaceValue!729 (value!24459 List!3723)) (IntegerValue!2189 (value!24460 Int) (text!5552 List!3723)) (StringLiteralValue!2188 (text!5553 List!3723)) (FloatLiteralValue!1459 (text!5554 List!3723)) (BytesLiteralValue!729 (value!24461 List!3723)) (CommentValue!1459 (value!24462 List!3723)) (StringLiteralValue!2189 (value!24463 List!3723)) (ErrorTokenValue!729 (msg!790 List!3723)) )
))
(declare-datatypes ((C!2784 0))(
  ( (C!2785 (val!1278 Int)) )
))
(declare-datatypes ((List!3724 0))(
  ( (Nil!3714) (Cons!3714 (h!9111 C!2784) (t!35996 List!3724)) )
))
(declare-datatypes ((IArray!2473 0))(
  ( (IArray!2474 (innerList!1294 List!3724)) )
))
(declare-datatypes ((Conc!1236 0))(
  ( (Node!1236 (left!3052 Conc!1236) (right!3382 Conc!1236) (csize!2702 Int) (cheight!1447 Int)) (Leaf!1929 (xs!3831 IArray!2473) (csize!2703 Int)) (Empty!1236) )
))
(declare-datatypes ((BalanceConc!2480 0))(
  ( (BalanceConc!2481 (c!48225 Conc!1236)) )
))
(declare-datatypes ((Regex!931 0))(
  ( (ElementMatch!931 (c!48226 C!2784)) (Concat!1661 (regOne!2374 Regex!931) (regTwo!2374 Regex!931)) (EmptyExpr!931) (Star!931 (reg!1260 Regex!931)) (EmptyLang!931) (Union!931 (regOne!2375 Regex!931) (regTwo!2375 Regex!931)) )
))
(declare-datatypes ((String!4725 0))(
  ( (String!4726 (value!24464 String)) )
))
(declare-datatypes ((TokenValueInjection!1230 0))(
  ( (TokenValueInjection!1231 (toValue!1418 Int) (toChars!1277 Int)) )
))
(declare-datatypes ((Rule!1214 0))(
  ( (Rule!1215 (regex!707 Regex!931) (tag!915 String!4725) (isSeparator!707 Bool) (transformation!707 TokenValueInjection!1230)) )
))
(declare-datatypes ((Token!1158 0))(
  ( (Token!1159 (value!24465 TokenValue!729) (rule!1288 Rule!1214) (size!2944 Int) (originalCharacters!750 List!3724)) )
))
(declare-datatypes ((List!3725 0))(
  ( (Nil!3715) (Cons!3715 (h!9112 Token!1158) (t!35997 List!3725)) )
))
(declare-datatypes ((IArray!2475 0))(
  ( (IArray!2476 (innerList!1295 List!3725)) )
))
(declare-datatypes ((Conc!1237 0))(
  ( (Node!1237 (left!3053 Conc!1237) (right!3383 Conc!1237) (csize!2704 Int) (cheight!1448 Int)) (Leaf!1930 (xs!3832 IArray!2475) (csize!2705 Int)) (Empty!1237) )
))
(declare-datatypes ((BalanceConc!2482 0))(
  ( (BalanceConc!2483 (c!48227 Conc!1237)) )
))
(declare-fun lt!103872 () BalanceConc!2482)

(declare-fun size!2945 (BalanceConc!2482) Int)

(assert (=> b!254187 (= res!117652 (<= 0 (size!2945 lt!103872)))))

(declare-fun b!254188 () Bool)

(declare-fun e!158009 () Bool)

(declare-fun e!157997 () Bool)

(declare-fun tp!98117 () Bool)

(assert (=> b!254188 (= e!158009 (and e!157997 tp!98117))))

(declare-fun e!158000 () Bool)

(assert (=> b!254189 (= e!158000 (and tp!98119 tp!98118))))

(declare-fun b!254190 () Bool)

(declare-fun res!117653 () Bool)

(declare-fun e!158005 () Bool)

(assert (=> b!254190 (=> (not res!117653) (not e!158005))))

(declare-datatypes ((LexerInterface!593 0))(
  ( (LexerInterfaceExt!590 (__x!2946 Int)) (Lexer!591) )
))
(declare-fun thiss!17480 () LexerInterface!593)

(declare-datatypes ((List!3726 0))(
  ( (Nil!3716) (Cons!3716 (h!9113 Rule!1214) (t!35998 List!3726)) )
))
(declare-fun rules!1920 () List!3726)

(declare-fun rulesInvariant!559 (LexerInterface!593 List!3726) Bool)

(assert (=> b!254190 (= res!117653 (rulesInvariant!559 thiss!17480 rules!1920))))

(declare-fun b!254191 () Bool)

(declare-fun res!117657 () Bool)

(assert (=> b!254191 (=> (not res!117657) (not e!157996))))

(declare-fun tokens!465 () List!3725)

(declare-fun lambda!8478 () Int)

(declare-fun forall!888 (List!3725 Int) Bool)

(assert (=> b!254191 (= res!117657 (forall!888 tokens!465 lambda!8478))))

(declare-fun b!254192 () Bool)

(declare-fun forall!889 (BalanceConc!2482 Int) Bool)

(assert (=> b!254192 (= e!157996 (not (forall!889 lt!103872 lambda!8478)))))

(declare-fun b!254193 () Bool)

(declare-fun res!117655 () Bool)

(assert (=> b!254193 (=> (not res!117655) (not e!157996))))

(get-info :version)

(assert (=> b!254193 (= res!117655 (not ((_ is Cons!3715) tokens!465)))))

(declare-fun res!117658 () Bool)

(assert (=> start!27098 (=> (not res!117658) (not e!158005))))

(assert (=> start!27098 (= res!117658 ((_ is Lexer!591) thiss!17480))))

(assert (=> start!27098 e!158005))

(assert (=> start!27098 true))

(assert (=> start!27098 e!158009))

(declare-fun separatorToken!170 () Token!1158)

(declare-fun e!158003 () Bool)

(declare-fun inv!4578 (Token!1158) Bool)

(assert (=> start!27098 (and (inv!4578 separatorToken!170) e!158003)))

(declare-fun e!158008 () Bool)

(assert (=> start!27098 e!158008))

(declare-fun tp!98113 () Bool)

(declare-fun b!254194 () Bool)

(declare-fun e!158006 () Bool)

(declare-fun e!157998 () Bool)

(declare-fun inv!4575 (String!4725) Bool)

(declare-fun inv!4579 (TokenValueInjection!1230) Bool)

(assert (=> b!254194 (= e!158006 (and tp!98113 (inv!4575 (tag!915 (rule!1288 (h!9112 tokens!465)))) (inv!4579 (transformation!707 (rule!1288 (h!9112 tokens!465)))) e!157998))))

(declare-fun e!158002 () Bool)

(declare-fun tp!98123 () Bool)

(declare-fun e!157993 () Bool)

(declare-fun b!254195 () Bool)

(assert (=> b!254195 (= e!158002 (and tp!98123 (inv!4575 (tag!915 (rule!1288 separatorToken!170))) (inv!4579 (transformation!707 (rule!1288 separatorToken!170))) e!157993))))

(declare-fun tp!98125 () Bool)

(declare-fun b!254196 () Bool)

(assert (=> b!254196 (= e!157997 (and tp!98125 (inv!4575 (tag!915 (h!9113 rules!1920))) (inv!4579 (transformation!707 (h!9113 rules!1920))) e!158000))))

(assert (=> b!254197 (= e!157993 (and tp!98120 tp!98122))))

(declare-fun b!254198 () Bool)

(declare-fun res!117654 () Bool)

(assert (=> b!254198 (=> (not res!117654) (not e!157996))))

(declare-fun sepAndNonSepRulesDisjointChars!296 (List!3726 List!3726) Bool)

(assert (=> b!254198 (= res!117654 (sepAndNonSepRulesDisjointChars!296 rules!1920 rules!1920))))

(assert (=> b!254199 (= e!157998 (and tp!98115 tp!98124))))

(declare-fun tp!98114 () Bool)

(declare-fun e!157995 () Bool)

(declare-fun b!254200 () Bool)

(declare-fun inv!21 (TokenValue!729) Bool)

(assert (=> b!254200 (= e!157995 (and (inv!21 (value!24465 (h!9112 tokens!465))) e!158006 tp!98114))))

(declare-fun b!254201 () Bool)

(declare-fun res!117656 () Bool)

(assert (=> b!254201 (=> (not res!117656) (not e!157996))))

(assert (=> b!254201 (= res!117656 (isSeparator!707 (rule!1288 separatorToken!170)))))

(declare-fun b!254202 () Bool)

(declare-fun res!117649 () Bool)

(assert (=> b!254202 (=> (not res!117649) (not e!157996))))

(declare-fun rulesProduceIndividualToken!342 (LexerInterface!593 List!3726 Token!1158) Bool)

(assert (=> b!254202 (= res!117649 (rulesProduceIndividualToken!342 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!254203 () Bool)

(declare-fun res!117651 () Bool)

(assert (=> b!254203 (=> (not res!117651) (not e!158005))))

(declare-fun isEmpty!2312 (List!3726) Bool)

(assert (=> b!254203 (= res!117651 (not (isEmpty!2312 rules!1920)))))

(declare-fun tp!98121 () Bool)

(declare-fun b!254204 () Bool)

(assert (=> b!254204 (= e!158003 (and (inv!21 (value!24465 separatorToken!170)) e!158002 tp!98121))))

(declare-fun b!254205 () Bool)

(declare-fun tp!98116 () Bool)

(assert (=> b!254205 (= e!158008 (and (inv!4578 (h!9112 tokens!465)) e!157995 tp!98116))))

(declare-fun b!254206 () Bool)

(assert (=> b!254206 (= e!158005 e!157996)))

(declare-fun res!117650 () Bool)

(assert (=> b!254206 (=> (not res!117650) (not e!157996))))

(declare-fun rulesProduceEachTokenIndividually!385 (LexerInterface!593 List!3726 BalanceConc!2482) Bool)

(assert (=> b!254206 (= res!117650 (rulesProduceEachTokenIndividually!385 thiss!17480 rules!1920 lt!103872))))

(declare-fun seqFromList!786 (List!3725) BalanceConc!2482)

(assert (=> b!254206 (= lt!103872 (seqFromList!786 tokens!465))))

(assert (= (and start!27098 res!117658) b!254203))

(assert (= (and b!254203 res!117651) b!254190))

(assert (= (and b!254190 res!117653) b!254206))

(assert (= (and b!254206 res!117650) b!254202))

(assert (= (and b!254202 res!117649) b!254201))

(assert (= (and b!254201 res!117656) b!254191))

(assert (= (and b!254191 res!117657) b!254198))

(assert (= (and b!254198 res!117654) b!254193))

(assert (= (and b!254193 res!117655) b!254187))

(assert (= (and b!254187 res!117652) b!254192))

(assert (= b!254196 b!254189))

(assert (= b!254188 b!254196))

(assert (= (and start!27098 ((_ is Cons!3716) rules!1920)) b!254188))

(assert (= b!254195 b!254197))

(assert (= b!254204 b!254195))

(assert (= start!27098 b!254204))

(assert (= b!254194 b!254199))

(assert (= b!254200 b!254194))

(assert (= b!254205 b!254200))

(assert (= (and start!27098 ((_ is Cons!3715) tokens!465)) b!254205))

(declare-fun m!313589 () Bool)

(assert (=> b!254198 m!313589))

(declare-fun m!313591 () Bool)

(assert (=> b!254190 m!313591))

(declare-fun m!313593 () Bool)

(assert (=> b!254203 m!313593))

(declare-fun m!313595 () Bool)

(assert (=> b!254202 m!313595))

(declare-fun m!313597 () Bool)

(assert (=> b!254194 m!313597))

(declare-fun m!313599 () Bool)

(assert (=> b!254194 m!313599))

(declare-fun m!313601 () Bool)

(assert (=> b!254204 m!313601))

(declare-fun m!313603 () Bool)

(assert (=> b!254191 m!313603))

(declare-fun m!313605 () Bool)

(assert (=> b!254200 m!313605))

(declare-fun m!313607 () Bool)

(assert (=> b!254195 m!313607))

(declare-fun m!313609 () Bool)

(assert (=> b!254195 m!313609))

(declare-fun m!313611 () Bool)

(assert (=> b!254205 m!313611))

(declare-fun m!313613 () Bool)

(assert (=> b!254192 m!313613))

(declare-fun m!313615 () Bool)

(assert (=> b!254187 m!313615))

(declare-fun m!313617 () Bool)

(assert (=> b!254196 m!313617))

(declare-fun m!313619 () Bool)

(assert (=> b!254196 m!313619))

(declare-fun m!313621 () Bool)

(assert (=> b!254206 m!313621))

(declare-fun m!313623 () Bool)

(assert (=> b!254206 m!313623))

(declare-fun m!313625 () Bool)

(assert (=> start!27098 m!313625))

(check-sat (not b!254195) b_and!19377 (not b!254198) (not b_next!9491) (not b!254194) (not b_next!9495) (not b!254190) (not b!254203) (not b!254196) (not b!254204) (not b!254187) b_and!19379 b_and!19385 b_and!19383 (not b!254191) (not b!254202) (not b_next!9497) (not b!254206) (not start!27098) b_and!19381 (not b_next!9493) (not b_next!9489) (not b_next!9499) (not b!254188) (not b!254205) (not b!254192) b_and!19387 (not b!254200))
(check-sat b_and!19377 (not b_next!9497) (not b_next!9491) b_and!19381 (not b_next!9495) (not b_next!9499) b_and!19387 b_and!19379 b_and!19385 b_and!19383 (not b_next!9493) (not b_next!9489))
(get-model)

(declare-fun d!72029 () Bool)

(declare-fun c!48232 () Bool)

(assert (=> d!72029 (= c!48232 ((_ is IntegerValue!2187) (value!24465 separatorToken!170)))))

(declare-fun e!158016 () Bool)

(assert (=> d!72029 (= (inv!21 (value!24465 separatorToken!170)) e!158016)))

(declare-fun b!254217 () Bool)

(declare-fun res!117663 () Bool)

(declare-fun e!158018 () Bool)

(assert (=> b!254217 (=> res!117663 e!158018)))

(assert (=> b!254217 (= res!117663 (not ((_ is IntegerValue!2189) (value!24465 separatorToken!170))))))

(declare-fun e!158017 () Bool)

(assert (=> b!254217 (= e!158017 e!158018)))

(declare-fun b!254218 () Bool)

(assert (=> b!254218 (= e!158016 e!158017)))

(declare-fun c!48233 () Bool)

(assert (=> b!254218 (= c!48233 ((_ is IntegerValue!2188) (value!24465 separatorToken!170)))))

(declare-fun b!254219 () Bool)

(declare-fun inv!16 (TokenValue!729) Bool)

(assert (=> b!254219 (= e!158016 (inv!16 (value!24465 separatorToken!170)))))

(declare-fun b!254220 () Bool)

(declare-fun inv!15 (TokenValue!729) Bool)

(assert (=> b!254220 (= e!158018 (inv!15 (value!24465 separatorToken!170)))))

(declare-fun b!254221 () Bool)

(declare-fun inv!17 (TokenValue!729) Bool)

(assert (=> b!254221 (= e!158017 (inv!17 (value!24465 separatorToken!170)))))

(assert (= (and d!72029 c!48232) b!254219))

(assert (= (and d!72029 (not c!48232)) b!254218))

(assert (= (and b!254218 c!48233) b!254221))

(assert (= (and b!254218 (not c!48233)) b!254217))

(assert (= (and b!254217 (not res!117663)) b!254220))

(declare-fun m!313627 () Bool)

(assert (=> b!254219 m!313627))

(declare-fun m!313629 () Bool)

(assert (=> b!254220 m!313629))

(declare-fun m!313631 () Bool)

(assert (=> b!254221 m!313631))

(assert (=> b!254204 d!72029))

(declare-fun d!72031 () Bool)

(assert (=> d!72031 (= (inv!4575 (tag!915 (rule!1288 (h!9112 tokens!465)))) (= (mod (str.len (value!24464 (tag!915 (rule!1288 (h!9112 tokens!465))))) 2) 0))))

(assert (=> b!254194 d!72031))

(declare-fun d!72033 () Bool)

(declare-fun res!117666 () Bool)

(declare-fun e!158021 () Bool)

(assert (=> d!72033 (=> (not res!117666) (not e!158021))))

(declare-fun semiInverseModEq!240 (Int Int) Bool)

(assert (=> d!72033 (= res!117666 (semiInverseModEq!240 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))))))

(assert (=> d!72033 (= (inv!4579 (transformation!707 (rule!1288 (h!9112 tokens!465)))) e!158021)))

(declare-fun b!254224 () Bool)

(declare-fun equivClasses!223 (Int Int) Bool)

(assert (=> b!254224 (= e!158021 (equivClasses!223 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))))))

(assert (= (and d!72033 res!117666) b!254224))

(declare-fun m!313633 () Bool)

(assert (=> d!72033 m!313633))

(declare-fun m!313635 () Bool)

(assert (=> b!254224 m!313635))

(assert (=> b!254194 d!72033))

(declare-fun d!72035 () Bool)

(declare-fun res!117671 () Bool)

(declare-fun e!158024 () Bool)

(assert (=> d!72035 (=> (not res!117671) (not e!158024))))

(declare-fun isEmpty!2313 (List!3724) Bool)

(assert (=> d!72035 (= res!117671 (not (isEmpty!2313 (originalCharacters!750 (h!9112 tokens!465)))))))

(assert (=> d!72035 (= (inv!4578 (h!9112 tokens!465)) e!158024)))

(declare-fun b!254229 () Bool)

(declare-fun res!117672 () Bool)

(assert (=> b!254229 (=> (not res!117672) (not e!158024))))

(declare-fun list!1482 (BalanceConc!2480) List!3724)

(declare-fun dynLambda!1840 (Int TokenValue!729) BalanceConc!2480)

(assert (=> b!254229 (= res!117672 (= (originalCharacters!750 (h!9112 tokens!465)) (list!1482 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(declare-fun b!254230 () Bool)

(declare-fun size!2946 (List!3724) Int)

(assert (=> b!254230 (= e!158024 (= (size!2944 (h!9112 tokens!465)) (size!2946 (originalCharacters!750 (h!9112 tokens!465)))))))

(assert (= (and d!72035 res!117671) b!254229))

(assert (= (and b!254229 res!117672) b!254230))

(declare-fun b_lambda!7595 () Bool)

(assert (=> (not b_lambda!7595) (not b!254229)))

(declare-fun t!36000 () Bool)

(declare-fun tb!13273 () Bool)

(assert (=> (and b!254189 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36000) tb!13273))

(declare-fun b!254235 () Bool)

(declare-fun e!158027 () Bool)

(declare-fun tp!98128 () Bool)

(declare-fun inv!4580 (Conc!1236) Bool)

(assert (=> b!254235 (= e!158027 (and (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))) tp!98128))))

(declare-fun result!16668 () Bool)

(declare-fun inv!4581 (BalanceConc!2480) Bool)

(assert (=> tb!13273 (= result!16668 (and (inv!4581 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))) e!158027))))

(assert (= tb!13273 b!254235))

(declare-fun m!313637 () Bool)

(assert (=> b!254235 m!313637))

(declare-fun m!313639 () Bool)

(assert (=> tb!13273 m!313639))

(assert (=> b!254229 t!36000))

(declare-fun b_and!19389 () Bool)

(assert (= b_and!19379 (and (=> t!36000 result!16668) b_and!19389)))

(declare-fun t!36002 () Bool)

(declare-fun tb!13275 () Bool)

(assert (=> (and b!254199 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36002) tb!13275))

(declare-fun result!16672 () Bool)

(assert (= result!16672 result!16668))

(assert (=> b!254229 t!36002))

(declare-fun b_and!19391 () Bool)

(assert (= b_and!19383 (and (=> t!36002 result!16672) b_and!19391)))

(declare-fun t!36004 () Bool)

(declare-fun tb!13277 () Bool)

(assert (=> (and b!254197 (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36004) tb!13277))

(declare-fun result!16674 () Bool)

(assert (= result!16674 result!16668))

(assert (=> b!254229 t!36004))

(declare-fun b_and!19393 () Bool)

(assert (= b_and!19387 (and (=> t!36004 result!16674) b_and!19393)))

(declare-fun m!313641 () Bool)

(assert (=> d!72035 m!313641))

(declare-fun m!313643 () Bool)

(assert (=> b!254229 m!313643))

(assert (=> b!254229 m!313643))

(declare-fun m!313645 () Bool)

(assert (=> b!254229 m!313645))

(declare-fun m!313647 () Bool)

(assert (=> b!254230 m!313647))

(assert (=> b!254205 d!72035))

(declare-fun d!72037 () Bool)

(assert (=> d!72037 (= (inv!4575 (tag!915 (rule!1288 separatorToken!170))) (= (mod (str.len (value!24464 (tag!915 (rule!1288 separatorToken!170)))) 2) 0))))

(assert (=> b!254195 d!72037))

(declare-fun d!72039 () Bool)

(declare-fun res!117675 () Bool)

(declare-fun e!158028 () Bool)

(assert (=> d!72039 (=> (not res!117675) (not e!158028))))

(assert (=> d!72039 (= res!117675 (semiInverseModEq!240 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))))))

(assert (=> d!72039 (= (inv!4579 (transformation!707 (rule!1288 separatorToken!170))) e!158028)))

(declare-fun b!254236 () Bool)

(assert (=> b!254236 (= e!158028 (equivClasses!223 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))))))

(assert (= (and d!72039 res!117675) b!254236))

(declare-fun m!313649 () Bool)

(assert (=> d!72039 m!313649))

(declare-fun m!313651 () Bool)

(assert (=> b!254236 m!313651))

(assert (=> b!254195 d!72039))

(declare-fun d!72041 () Bool)

(declare-fun res!117678 () Bool)

(declare-fun e!158031 () Bool)

(assert (=> d!72041 (=> (not res!117678) (not e!158031))))

(declare-fun rulesValid!206 (LexerInterface!593 List!3726) Bool)

(assert (=> d!72041 (= res!117678 (rulesValid!206 thiss!17480 rules!1920))))

(assert (=> d!72041 (= (rulesInvariant!559 thiss!17480 rules!1920) e!158031)))

(declare-fun b!254239 () Bool)

(declare-datatypes ((List!3727 0))(
  ( (Nil!3717) (Cons!3717 (h!9114 String!4725) (t!36041 List!3727)) )
))
(declare-fun noDuplicateTag!206 (LexerInterface!593 List!3726 List!3727) Bool)

(assert (=> b!254239 (= e!158031 (noDuplicateTag!206 thiss!17480 rules!1920 Nil!3717))))

(assert (= (and d!72041 res!117678) b!254239))

(declare-fun m!313653 () Bool)

(assert (=> d!72041 m!313653))

(declare-fun m!313655 () Bool)

(assert (=> b!254239 m!313655))

(assert (=> b!254190 d!72041))

(declare-fun d!72043 () Bool)

(declare-fun res!117683 () Bool)

(declare-fun e!158036 () Bool)

(assert (=> d!72043 (=> res!117683 e!158036)))

(assert (=> d!72043 (= res!117683 ((_ is Nil!3715) tokens!465))))

(assert (=> d!72043 (= (forall!888 tokens!465 lambda!8478) e!158036)))

(declare-fun b!254244 () Bool)

(declare-fun e!158037 () Bool)

(assert (=> b!254244 (= e!158036 e!158037)))

(declare-fun res!117684 () Bool)

(assert (=> b!254244 (=> (not res!117684) (not e!158037))))

(declare-fun dynLambda!1841 (Int Token!1158) Bool)

(assert (=> b!254244 (= res!117684 (dynLambda!1841 lambda!8478 (h!9112 tokens!465)))))

(declare-fun b!254245 () Bool)

(assert (=> b!254245 (= e!158037 (forall!888 (t!35997 tokens!465) lambda!8478))))

(assert (= (and d!72043 (not res!117683)) b!254244))

(assert (= (and b!254244 res!117684) b!254245))

(declare-fun b_lambda!7597 () Bool)

(assert (=> (not b_lambda!7597) (not b!254244)))

(declare-fun m!313657 () Bool)

(assert (=> b!254244 m!313657))

(declare-fun m!313659 () Bool)

(assert (=> b!254245 m!313659))

(assert (=> b!254191 d!72043))

(declare-fun d!72047 () Bool)

(declare-fun lt!103877 () Bool)

(declare-fun e!158063 () Bool)

(assert (=> d!72047 (= lt!103877 e!158063)))

(declare-fun res!117705 () Bool)

(assert (=> d!72047 (=> (not res!117705) (not e!158063))))

(declare-fun list!1483 (BalanceConc!2482) List!3725)

(declare-datatypes ((tuple2!4152 0))(
  ( (tuple2!4153 (_1!2292 BalanceConc!2482) (_2!2292 BalanceConc!2480)) )
))
(declare-fun lex!390 (LexerInterface!593 List!3726 BalanceConc!2480) tuple2!4152)

(declare-fun print!321 (LexerInterface!593 BalanceConc!2482) BalanceConc!2480)

(declare-fun singletonSeq!256 (Token!1158) BalanceConc!2482)

(assert (=> d!72047 (= res!117705 (= (list!1483 (_1!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))) (list!1483 (singletonSeq!256 separatorToken!170))))))

(declare-fun e!158062 () Bool)

(assert (=> d!72047 (= lt!103877 e!158062)))

(declare-fun res!117707 () Bool)

(assert (=> d!72047 (=> (not res!117707) (not e!158062))))

(declare-fun lt!103878 () tuple2!4152)

(assert (=> d!72047 (= res!117707 (= (size!2945 (_1!2292 lt!103878)) 1))))

(assert (=> d!72047 (= lt!103878 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))))

(assert (=> d!72047 (not (isEmpty!2312 rules!1920))))

(assert (=> d!72047 (= (rulesProduceIndividualToken!342 thiss!17480 rules!1920 separatorToken!170) lt!103877)))

(declare-fun b!254278 () Bool)

(declare-fun res!117706 () Bool)

(assert (=> b!254278 (=> (not res!117706) (not e!158062))))

(declare-fun apply!707 (BalanceConc!2482 Int) Token!1158)

(assert (=> b!254278 (= res!117706 (= (apply!707 (_1!2292 lt!103878) 0) separatorToken!170))))

(declare-fun b!254279 () Bool)

(declare-fun isEmpty!2314 (BalanceConc!2480) Bool)

(assert (=> b!254279 (= e!158062 (isEmpty!2314 (_2!2292 lt!103878)))))

(declare-fun b!254280 () Bool)

(assert (=> b!254280 (= e!158063 (isEmpty!2314 (_2!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))))))

(assert (= (and d!72047 res!117707) b!254278))

(assert (= (and b!254278 res!117706) b!254279))

(assert (= (and d!72047 res!117705) b!254280))

(declare-fun m!313683 () Bool)

(assert (=> d!72047 m!313683))

(declare-fun m!313685 () Bool)

(assert (=> d!72047 m!313685))

(assert (=> d!72047 m!313685))

(declare-fun m!313687 () Bool)

(assert (=> d!72047 m!313687))

(assert (=> d!72047 m!313687))

(declare-fun m!313689 () Bool)

(assert (=> d!72047 m!313689))

(assert (=> d!72047 m!313593))

(declare-fun m!313691 () Bool)

(assert (=> d!72047 m!313691))

(assert (=> d!72047 m!313685))

(declare-fun m!313693 () Bool)

(assert (=> d!72047 m!313693))

(declare-fun m!313695 () Bool)

(assert (=> b!254278 m!313695))

(declare-fun m!313697 () Bool)

(assert (=> b!254279 m!313697))

(assert (=> b!254280 m!313685))

(assert (=> b!254280 m!313685))

(assert (=> b!254280 m!313687))

(assert (=> b!254280 m!313687))

(assert (=> b!254280 m!313689))

(declare-fun m!313699 () Bool)

(assert (=> b!254280 m!313699))

(assert (=> b!254202 d!72047))

(declare-fun d!72067 () Bool)

(declare-fun res!117708 () Bool)

(declare-fun e!158064 () Bool)

(assert (=> d!72067 (=> (not res!117708) (not e!158064))))

(assert (=> d!72067 (= res!117708 (not (isEmpty!2313 (originalCharacters!750 separatorToken!170))))))

(assert (=> d!72067 (= (inv!4578 separatorToken!170) e!158064)))

(declare-fun b!254281 () Bool)

(declare-fun res!117709 () Bool)

(assert (=> b!254281 (=> (not res!117709) (not e!158064))))

(assert (=> b!254281 (= res!117709 (= (originalCharacters!750 separatorToken!170) (list!1482 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(declare-fun b!254282 () Bool)

(assert (=> b!254282 (= e!158064 (= (size!2944 separatorToken!170) (size!2946 (originalCharacters!750 separatorToken!170))))))

(assert (= (and d!72067 res!117708) b!254281))

(assert (= (and b!254281 res!117709) b!254282))

(declare-fun b_lambda!7599 () Bool)

(assert (=> (not b_lambda!7599) (not b!254281)))

(declare-fun tb!13279 () Bool)

(declare-fun t!36007 () Bool)

(assert (=> (and b!254189 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36007) tb!13279))

(declare-fun b!254283 () Bool)

(declare-fun e!158065 () Bool)

(declare-fun tp!98129 () Bool)

(assert (=> b!254283 (= e!158065 (and (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))) tp!98129))))

(declare-fun result!16676 () Bool)

(assert (=> tb!13279 (= result!16676 (and (inv!4581 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))) e!158065))))

(assert (= tb!13279 b!254283))

(declare-fun m!313701 () Bool)

(assert (=> b!254283 m!313701))

(declare-fun m!313703 () Bool)

(assert (=> tb!13279 m!313703))

(assert (=> b!254281 t!36007))

(declare-fun b_and!19395 () Bool)

(assert (= b_and!19389 (and (=> t!36007 result!16676) b_and!19395)))

(declare-fun t!36009 () Bool)

(declare-fun tb!13281 () Bool)

(assert (=> (and b!254199 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36009) tb!13281))

(declare-fun result!16678 () Bool)

(assert (= result!16678 result!16676))

(assert (=> b!254281 t!36009))

(declare-fun b_and!19397 () Bool)

(assert (= b_and!19391 (and (=> t!36009 result!16678) b_and!19397)))

(declare-fun t!36011 () Bool)

(declare-fun tb!13283 () Bool)

(assert (=> (and b!254197 (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36011) tb!13283))

(declare-fun result!16680 () Bool)

(assert (= result!16680 result!16676))

(assert (=> b!254281 t!36011))

(declare-fun b_and!19399 () Bool)

(assert (= b_and!19393 (and (=> t!36011 result!16680) b_and!19399)))

(declare-fun m!313705 () Bool)

(assert (=> d!72067 m!313705))

(declare-fun m!313707 () Bool)

(assert (=> b!254281 m!313707))

(assert (=> b!254281 m!313707))

(declare-fun m!313709 () Bool)

(assert (=> b!254281 m!313709))

(declare-fun m!313711 () Bool)

(assert (=> b!254282 m!313711))

(assert (=> start!27098 d!72067))

(declare-fun d!72069 () Bool)

(declare-fun lt!103881 () Bool)

(assert (=> d!72069 (= lt!103881 (forall!888 (list!1483 lt!103872) lambda!8478))))

(declare-fun forall!890 (Conc!1237 Int) Bool)

(assert (=> d!72069 (= lt!103881 (forall!890 (c!48227 lt!103872) lambda!8478))))

(assert (=> d!72069 (= (forall!889 lt!103872 lambda!8478) lt!103881)))

(declare-fun bs!27495 () Bool)

(assert (= bs!27495 d!72069))

(declare-fun m!313713 () Bool)

(assert (=> bs!27495 m!313713))

(assert (=> bs!27495 m!313713))

(declare-fun m!313715 () Bool)

(assert (=> bs!27495 m!313715))

(declare-fun m!313717 () Bool)

(assert (=> bs!27495 m!313717))

(assert (=> b!254192 d!72069))

(declare-fun d!72071 () Bool)

(assert (=> d!72071 (= (isEmpty!2312 rules!1920) ((_ is Nil!3716) rules!1920))))

(assert (=> b!254203 d!72071))

(declare-fun d!72073 () Bool)

(declare-fun res!117714 () Bool)

(declare-fun e!158070 () Bool)

(assert (=> d!72073 (=> res!117714 e!158070)))

(assert (=> d!72073 (= res!117714 (not ((_ is Cons!3716) rules!1920)))))

(assert (=> d!72073 (= (sepAndNonSepRulesDisjointChars!296 rules!1920 rules!1920) e!158070)))

(declare-fun b!254288 () Bool)

(declare-fun e!158071 () Bool)

(assert (=> b!254288 (= e!158070 e!158071)))

(declare-fun res!117715 () Bool)

(assert (=> b!254288 (=> (not res!117715) (not e!158071))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!100 (Rule!1214 List!3726) Bool)

(assert (=> b!254288 (= res!117715 (ruleDisjointCharsFromAllFromOtherType!100 (h!9113 rules!1920) rules!1920))))

(declare-fun b!254289 () Bool)

(assert (=> b!254289 (= e!158071 (sepAndNonSepRulesDisjointChars!296 rules!1920 (t!35998 rules!1920)))))

(assert (= (and d!72073 (not res!117714)) b!254288))

(assert (= (and b!254288 res!117715) b!254289))

(declare-fun m!313719 () Bool)

(assert (=> b!254288 m!313719))

(declare-fun m!313721 () Bool)

(assert (=> b!254289 m!313721))

(assert (=> b!254198 d!72073))

(declare-fun d!72075 () Bool)

(declare-fun c!48240 () Bool)

(assert (=> d!72075 (= c!48240 ((_ is IntegerValue!2187) (value!24465 (h!9112 tokens!465))))))

(declare-fun e!158072 () Bool)

(assert (=> d!72075 (= (inv!21 (value!24465 (h!9112 tokens!465))) e!158072)))

(declare-fun b!254290 () Bool)

(declare-fun res!117716 () Bool)

(declare-fun e!158074 () Bool)

(assert (=> b!254290 (=> res!117716 e!158074)))

(assert (=> b!254290 (= res!117716 (not ((_ is IntegerValue!2189) (value!24465 (h!9112 tokens!465)))))))

(declare-fun e!158073 () Bool)

(assert (=> b!254290 (= e!158073 e!158074)))

(declare-fun b!254291 () Bool)

(assert (=> b!254291 (= e!158072 e!158073)))

(declare-fun c!48241 () Bool)

(assert (=> b!254291 (= c!48241 ((_ is IntegerValue!2188) (value!24465 (h!9112 tokens!465))))))

(declare-fun b!254292 () Bool)

(assert (=> b!254292 (= e!158072 (inv!16 (value!24465 (h!9112 tokens!465))))))

(declare-fun b!254293 () Bool)

(assert (=> b!254293 (= e!158074 (inv!15 (value!24465 (h!9112 tokens!465))))))

(declare-fun b!254294 () Bool)

(assert (=> b!254294 (= e!158073 (inv!17 (value!24465 (h!9112 tokens!465))))))

(assert (= (and d!72075 c!48240) b!254292))

(assert (= (and d!72075 (not c!48240)) b!254291))

(assert (= (and b!254291 c!48241) b!254294))

(assert (= (and b!254291 (not c!48241)) b!254290))

(assert (= (and b!254290 (not res!117716)) b!254293))

(declare-fun m!313723 () Bool)

(assert (=> b!254292 m!313723))

(declare-fun m!313725 () Bool)

(assert (=> b!254293 m!313725))

(declare-fun m!313727 () Bool)

(assert (=> b!254294 m!313727))

(assert (=> b!254200 d!72075))

(declare-fun bs!27498 () Bool)

(declare-fun d!72077 () Bool)

(assert (= bs!27498 (and d!72077 b!254191)))

(declare-fun lambda!8488 () Int)

(assert (=> bs!27498 (not (= lambda!8488 lambda!8478))))

(declare-fun b!254341 () Bool)

(declare-fun e!158109 () Bool)

(assert (=> b!254341 (= e!158109 true)))

(declare-fun b!254340 () Bool)

(declare-fun e!158108 () Bool)

(assert (=> b!254340 (= e!158108 e!158109)))

(declare-fun b!254339 () Bool)

(declare-fun e!158107 () Bool)

(assert (=> b!254339 (= e!158107 e!158108)))

(assert (=> d!72077 e!158107))

(assert (= b!254340 b!254341))

(assert (= b!254339 b!254340))

(assert (= (and d!72077 ((_ is Cons!3716) rules!1920)) b!254339))

(declare-fun order!2787 () Int)

(declare-fun order!2785 () Int)

(declare-fun dynLambda!1845 (Int Int) Int)

(declare-fun dynLambda!1846 (Int Int) Int)

(assert (=> b!254341 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1846 order!2787 lambda!8488))))

(declare-fun order!2789 () Int)

(declare-fun dynLambda!1847 (Int Int) Int)

(assert (=> b!254341 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1846 order!2787 lambda!8488))))

(assert (=> d!72077 true))

(declare-fun e!158100 () Bool)

(assert (=> d!72077 e!158100))

(declare-fun res!117733 () Bool)

(assert (=> d!72077 (=> (not res!117733) (not e!158100))))

(declare-fun lt!103887 () Bool)

(assert (=> d!72077 (= res!117733 (= lt!103887 (forall!888 (list!1483 lt!103872) lambda!8488)))))

(assert (=> d!72077 (= lt!103887 (forall!889 lt!103872 lambda!8488))))

(assert (=> d!72077 (not (isEmpty!2312 rules!1920))))

(assert (=> d!72077 (= (rulesProduceEachTokenIndividually!385 thiss!17480 rules!1920 lt!103872) lt!103887)))

(declare-fun b!254330 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!211 (LexerInterface!593 List!3726 List!3725) Bool)

(assert (=> b!254330 (= e!158100 (= lt!103887 (rulesProduceEachTokenIndividuallyList!211 thiss!17480 rules!1920 (list!1483 lt!103872))))))

(assert (= (and d!72077 res!117733) b!254330))

(assert (=> d!72077 m!313713))

(assert (=> d!72077 m!313713))

(declare-fun m!313767 () Bool)

(assert (=> d!72077 m!313767))

(declare-fun m!313769 () Bool)

(assert (=> d!72077 m!313769))

(assert (=> d!72077 m!313593))

(assert (=> b!254330 m!313713))

(assert (=> b!254330 m!313713))

(declare-fun m!313771 () Bool)

(assert (=> b!254330 m!313771))

(assert (=> b!254206 d!72077))

(declare-fun d!72089 () Bool)

(declare-fun fromListB!285 (List!3725) BalanceConc!2482)

(assert (=> d!72089 (= (seqFromList!786 tokens!465) (fromListB!285 tokens!465))))

(declare-fun bs!27499 () Bool)

(assert (= bs!27499 d!72089))

(declare-fun m!313773 () Bool)

(assert (=> bs!27499 m!313773))

(assert (=> b!254206 d!72089))

(declare-fun d!72091 () Bool)

(assert (=> d!72091 (= (inv!4575 (tag!915 (h!9113 rules!1920))) (= (mod (str.len (value!24464 (tag!915 (h!9113 rules!1920)))) 2) 0))))

(assert (=> b!254196 d!72091))

(declare-fun d!72093 () Bool)

(declare-fun res!117734 () Bool)

(declare-fun e!158110 () Bool)

(assert (=> d!72093 (=> (not res!117734) (not e!158110))))

(assert (=> d!72093 (= res!117734 (semiInverseModEq!240 (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toValue!1418 (transformation!707 (h!9113 rules!1920)))))))

(assert (=> d!72093 (= (inv!4579 (transformation!707 (h!9113 rules!1920))) e!158110)))

(declare-fun b!254344 () Bool)

(assert (=> b!254344 (= e!158110 (equivClasses!223 (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toValue!1418 (transformation!707 (h!9113 rules!1920)))))))

(assert (= (and d!72093 res!117734) b!254344))

(declare-fun m!313775 () Bool)

(assert (=> d!72093 m!313775))

(declare-fun m!313777 () Bool)

(assert (=> b!254344 m!313777))

(assert (=> b!254196 d!72093))

(declare-fun d!72095 () Bool)

(declare-fun lt!103890 () Int)

(declare-fun size!2948 (List!3725) Int)

(assert (=> d!72095 (= lt!103890 (size!2948 (list!1483 lt!103872)))))

(declare-fun size!2949 (Conc!1237) Int)

(assert (=> d!72095 (= lt!103890 (size!2949 (c!48227 lt!103872)))))

(assert (=> d!72095 (= (size!2945 lt!103872) lt!103890)))

(declare-fun bs!27500 () Bool)

(assert (= bs!27500 d!72095))

(assert (=> bs!27500 m!313713))

(assert (=> bs!27500 m!313713))

(declare-fun m!313779 () Bool)

(assert (=> bs!27500 m!313779))

(declare-fun m!313781 () Bool)

(assert (=> bs!27500 m!313781))

(assert (=> b!254187 d!72095))

(declare-fun b!254355 () Bool)

(declare-fun b_free!9501 () Bool)

(declare-fun b_next!9501 () Bool)

(assert (=> b!254355 (= b_free!9501 (not b_next!9501))))

(declare-fun tp!98145 () Bool)

(declare-fun b_and!19413 () Bool)

(assert (=> b!254355 (= tp!98145 b_and!19413)))

(declare-fun b_free!9503 () Bool)

(declare-fun b_next!9503 () Bool)

(assert (=> b!254355 (= b_free!9503 (not b_next!9503))))

(declare-fun tb!13297 () Bool)

(declare-fun t!36033 () Bool)

(assert (=> (and b!254355 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36033) tb!13297))

(declare-fun result!16698 () Bool)

(assert (= result!16698 result!16668))

(assert (=> b!254229 t!36033))

(declare-fun tb!13299 () Bool)

(declare-fun t!36035 () Bool)

(assert (=> (and b!254355 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36035) tb!13299))

(declare-fun result!16700 () Bool)

(assert (= result!16700 result!16676))

(assert (=> b!254281 t!36035))

(declare-fun b_and!19415 () Bool)

(declare-fun tp!98143 () Bool)

(assert (=> b!254355 (= tp!98143 (and (=> t!36033 result!16698) (=> t!36035 result!16700) b_and!19415))))

(declare-fun e!158119 () Bool)

(assert (=> b!254355 (= e!158119 (and tp!98145 tp!98143))))

(declare-fun tp!98144 () Bool)

(declare-fun e!158122 () Bool)

(declare-fun b!254354 () Bool)

(assert (=> b!254354 (= e!158122 (and tp!98144 (inv!4575 (tag!915 (h!9113 (t!35998 rules!1920)))) (inv!4579 (transformation!707 (h!9113 (t!35998 rules!1920)))) e!158119))))

(declare-fun b!254353 () Bool)

(declare-fun e!158121 () Bool)

(declare-fun tp!98142 () Bool)

(assert (=> b!254353 (= e!158121 (and e!158122 tp!98142))))

(assert (=> b!254188 (= tp!98117 e!158121)))

(assert (= b!254354 b!254355))

(assert (= b!254353 b!254354))

(assert (= (and b!254188 ((_ is Cons!3716) (t!35998 rules!1920))) b!254353))

(declare-fun m!313783 () Bool)

(assert (=> b!254354 m!313783))

(declare-fun m!313785 () Bool)

(assert (=> b!254354 m!313785))

(declare-fun b!254360 () Bool)

(declare-fun e!158125 () Bool)

(declare-fun tp_is_empty!1777 () Bool)

(declare-fun tp!98148 () Bool)

(assert (=> b!254360 (= e!158125 (and tp_is_empty!1777 tp!98148))))

(assert (=> b!254204 (= tp!98121 e!158125)))

(assert (= (and b!254204 ((_ is Cons!3714) (originalCharacters!750 separatorToken!170))) b!254360))

(declare-fun b!254372 () Bool)

(declare-fun e!158128 () Bool)

(declare-fun tp!98162 () Bool)

(declare-fun tp!98163 () Bool)

(assert (=> b!254372 (= e!158128 (and tp!98162 tp!98163))))

(declare-fun b!254374 () Bool)

(declare-fun tp!98160 () Bool)

(declare-fun tp!98159 () Bool)

(assert (=> b!254374 (= e!158128 (and tp!98160 tp!98159))))

(assert (=> b!254194 (= tp!98113 e!158128)))

(declare-fun b!254371 () Bool)

(assert (=> b!254371 (= e!158128 tp_is_empty!1777)))

(declare-fun b!254373 () Bool)

(declare-fun tp!98161 () Bool)

(assert (=> b!254373 (= e!158128 tp!98161)))

(assert (= (and b!254194 ((_ is ElementMatch!931) (regex!707 (rule!1288 (h!9112 tokens!465))))) b!254371))

(assert (= (and b!254194 ((_ is Concat!1661) (regex!707 (rule!1288 (h!9112 tokens!465))))) b!254372))

(assert (= (and b!254194 ((_ is Star!931) (regex!707 (rule!1288 (h!9112 tokens!465))))) b!254373))

(assert (= (and b!254194 ((_ is Union!931) (regex!707 (rule!1288 (h!9112 tokens!465))))) b!254374))

(declare-fun b!254388 () Bool)

(declare-fun b_free!9505 () Bool)

(declare-fun b_next!9505 () Bool)

(assert (=> b!254388 (= b_free!9505 (not b_next!9505))))

(declare-fun tp!98174 () Bool)

(declare-fun b_and!19417 () Bool)

(assert (=> b!254388 (= tp!98174 b_and!19417)))

(declare-fun b_free!9507 () Bool)

(declare-fun b_next!9507 () Bool)

(assert (=> b!254388 (= b_free!9507 (not b_next!9507))))

(declare-fun t!36037 () Bool)

(declare-fun tb!13301 () Bool)

(assert (=> (and b!254388 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36037) tb!13301))

(declare-fun result!16708 () Bool)

(assert (= result!16708 result!16668))

(assert (=> b!254229 t!36037))

(declare-fun t!36039 () Bool)

(declare-fun tb!13303 () Bool)

(assert (=> (and b!254388 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36039) tb!13303))

(declare-fun result!16710 () Bool)

(assert (= result!16710 result!16676))

(assert (=> b!254281 t!36039))

(declare-fun b_and!19419 () Bool)

(declare-fun tp!98175 () Bool)

(assert (=> b!254388 (= tp!98175 (and (=> t!36037 result!16708) (=> t!36039 result!16710) b_and!19419))))

(declare-fun b!254385 () Bool)

(declare-fun e!158143 () Bool)

(declare-fun tp!98178 () Bool)

(declare-fun e!158141 () Bool)

(assert (=> b!254385 (= e!158143 (and (inv!4578 (h!9112 (t!35997 tokens!465))) e!158141 tp!98178))))

(declare-fun b!254387 () Bool)

(declare-fun tp!98176 () Bool)

(declare-fun e!158146 () Bool)

(declare-fun e!158145 () Bool)

(assert (=> b!254387 (= e!158145 (and tp!98176 (inv!4575 (tag!915 (rule!1288 (h!9112 (t!35997 tokens!465))))) (inv!4579 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) e!158146))))

(assert (=> b!254388 (= e!158146 (and tp!98174 tp!98175))))

(assert (=> b!254205 (= tp!98116 e!158143)))

(declare-fun tp!98177 () Bool)

(declare-fun b!254386 () Bool)

(assert (=> b!254386 (= e!158141 (and (inv!21 (value!24465 (h!9112 (t!35997 tokens!465)))) e!158145 tp!98177))))

(assert (= b!254387 b!254388))

(assert (= b!254386 b!254387))

(assert (= b!254385 b!254386))

(assert (= (and b!254205 ((_ is Cons!3715) (t!35997 tokens!465))) b!254385))

(declare-fun m!313787 () Bool)

(assert (=> b!254385 m!313787))

(declare-fun m!313789 () Bool)

(assert (=> b!254387 m!313789))

(declare-fun m!313791 () Bool)

(assert (=> b!254387 m!313791))

(declare-fun m!313793 () Bool)

(assert (=> b!254386 m!313793))

(declare-fun b!254389 () Bool)

(declare-fun e!158147 () Bool)

(declare-fun tp!98179 () Bool)

(assert (=> b!254389 (= e!158147 (and tp_is_empty!1777 tp!98179))))

(assert (=> b!254200 (= tp!98114 e!158147)))

(assert (= (and b!254200 ((_ is Cons!3714) (originalCharacters!750 (h!9112 tokens!465)))) b!254389))

(declare-fun b!254391 () Bool)

(declare-fun e!158148 () Bool)

(declare-fun tp!98183 () Bool)

(declare-fun tp!98184 () Bool)

(assert (=> b!254391 (= e!158148 (and tp!98183 tp!98184))))

(declare-fun b!254393 () Bool)

(declare-fun tp!98181 () Bool)

(declare-fun tp!98180 () Bool)

(assert (=> b!254393 (= e!158148 (and tp!98181 tp!98180))))

(assert (=> b!254195 (= tp!98123 e!158148)))

(declare-fun b!254390 () Bool)

(assert (=> b!254390 (= e!158148 tp_is_empty!1777)))

(declare-fun b!254392 () Bool)

(declare-fun tp!98182 () Bool)

(assert (=> b!254392 (= e!158148 tp!98182)))

(assert (= (and b!254195 ((_ is ElementMatch!931) (regex!707 (rule!1288 separatorToken!170)))) b!254390))

(assert (= (and b!254195 ((_ is Concat!1661) (regex!707 (rule!1288 separatorToken!170)))) b!254391))

(assert (= (and b!254195 ((_ is Star!931) (regex!707 (rule!1288 separatorToken!170)))) b!254392))

(assert (= (and b!254195 ((_ is Union!931) (regex!707 (rule!1288 separatorToken!170)))) b!254393))

(declare-fun b!254395 () Bool)

(declare-fun e!158149 () Bool)

(declare-fun tp!98188 () Bool)

(declare-fun tp!98189 () Bool)

(assert (=> b!254395 (= e!158149 (and tp!98188 tp!98189))))

(declare-fun b!254397 () Bool)

(declare-fun tp!98186 () Bool)

(declare-fun tp!98185 () Bool)

(assert (=> b!254397 (= e!158149 (and tp!98186 tp!98185))))

(assert (=> b!254196 (= tp!98125 e!158149)))

(declare-fun b!254394 () Bool)

(assert (=> b!254394 (= e!158149 tp_is_empty!1777)))

(declare-fun b!254396 () Bool)

(declare-fun tp!98187 () Bool)

(assert (=> b!254396 (= e!158149 tp!98187)))

(assert (= (and b!254196 ((_ is ElementMatch!931) (regex!707 (h!9113 rules!1920)))) b!254394))

(assert (= (and b!254196 ((_ is Concat!1661) (regex!707 (h!9113 rules!1920)))) b!254395))

(assert (= (and b!254196 ((_ is Star!931) (regex!707 (h!9113 rules!1920)))) b!254396))

(assert (= (and b!254196 ((_ is Union!931) (regex!707 (h!9113 rules!1920)))) b!254397))

(declare-fun b_lambda!7605 () Bool)

(assert (= b_lambda!7597 (or b!254191 b_lambda!7605)))

(declare-fun bs!27501 () Bool)

(declare-fun d!72097 () Bool)

(assert (= bs!27501 (and d!72097 b!254191)))

(assert (=> bs!27501 (= (dynLambda!1841 lambda!8478 (h!9112 tokens!465)) (not (isSeparator!707 (rule!1288 (h!9112 tokens!465)))))))

(assert (=> b!254244 d!72097))

(declare-fun b_lambda!7607 () Bool)

(assert (= b_lambda!7599 (or (and b!254355 b_free!9503 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))))) (and b!254199 b_free!9495 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))))) (and b!254189 b_free!9491 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))))) (and b!254388 b_free!9507 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))))) (and b!254197 b_free!9499) b_lambda!7607)))

(declare-fun b_lambda!7609 () Bool)

(assert (= b_lambda!7595 (or (and b!254388 b_free!9507 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))))) (and b!254355 b_free!9503 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))))) (and b!254199 b_free!9495) (and b!254197 b_free!9499 (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))))) (and b!254189 b_free!9491 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))))) b_lambda!7609)))

(check-sat (not d!72093) (not b!254353) (not b!254385) (not d!72041) (not b_next!9495) (not b!254293) (not b_next!9499) (not b!254235) b_and!19385 b_and!19395 (not b_next!9507) (not b_next!9505) (not b_lambda!7605) (not d!72077) (not d!72047) (not b!254372) b_and!19377 (not b!254236) (not b!254374) (not b!254386) (not b!254224) (not b!254220) (not b!254395) (not d!72033) (not b!254330) (not b!254281) b_and!19415 (not b!254344) (not b_next!9497) (not b_lambda!7609) (not b!254245) (not b!254219) (not b!254393) (not b_next!9491) (not b!254373) (not b!254339) b_and!19381 (not d!72067) (not b!254294) (not d!72095) (not d!72039) (not b!254278) b_and!19419 (not b_next!9501) (not b_next!9493) (not b_next!9489) (not b!254283) (not b!254282) (not tb!13273) (not d!72089) (not d!72069) (not tb!13279) (not b!254292) tp_is_empty!1777 b_and!19413 (not b_lambda!7607) (not b!254397) (not d!72035) (not b_next!9503) (not b!254230) (not b!254354) (not b!254360) (not b!254288) (not b!254221) b_and!19397 b_and!19399 (not b!254392) (not b!254387) (not b!254389) (not b!254391) (not b!254239) (not b!254279) (not b!254280) (not b!254289) (not b!254229) (not b!254396) b_and!19417)
(check-sat b_and!19377 b_and!19415 (not b_next!9497) (not b_next!9491) b_and!19381 (not b_next!9495) (not b_next!9499) b_and!19413 (not b_next!9503) b_and!19417 b_and!19385 b_and!19395 (not b_next!9507) (not b_next!9505) b_and!19419 (not b_next!9501) (not b_next!9493) (not b_next!9489) b_and!19397 b_and!19399)
(get-model)

(declare-fun d!72109 () Bool)

(assert (=> d!72109 (= (isEmpty!2313 (originalCharacters!750 (h!9112 tokens!465))) ((_ is Nil!3714) (originalCharacters!750 (h!9112 tokens!465))))))

(assert (=> d!72035 d!72109))

(declare-fun d!72111 () Bool)

(declare-fun e!158206 () Bool)

(assert (=> d!72111 e!158206))

(declare-fun res!117756 () Bool)

(assert (=> d!72111 (=> (not res!117756) (not e!158206))))

(declare-fun lt!103905 () BalanceConc!2482)

(assert (=> d!72111 (= res!117756 (= (list!1483 lt!103905) tokens!465))))

(declare-fun fromList!154 (List!3725) Conc!1237)

(assert (=> d!72111 (= lt!103905 (BalanceConc!2483 (fromList!154 tokens!465)))))

(assert (=> d!72111 (= (fromListB!285 tokens!465) lt!103905)))

(declare-fun b!254473 () Bool)

(declare-fun isBalanced!323 (Conc!1237) Bool)

(assert (=> b!254473 (= e!158206 (isBalanced!323 (fromList!154 tokens!465)))))

(assert (= (and d!72111 res!117756) b!254473))

(declare-fun m!313843 () Bool)

(assert (=> d!72111 m!313843))

(declare-fun m!313845 () Bool)

(assert (=> d!72111 m!313845))

(assert (=> b!254473 m!313845))

(assert (=> b!254473 m!313845))

(declare-fun m!313847 () Bool)

(assert (=> b!254473 m!313847))

(assert (=> d!72089 d!72111))

(declare-fun d!72113 () Bool)

(declare-fun res!117757 () Bool)

(declare-fun e!158207 () Bool)

(assert (=> d!72113 (=> res!117757 e!158207)))

(assert (=> d!72113 (= res!117757 ((_ is Nil!3715) (list!1483 lt!103872)))))

(assert (=> d!72113 (= (forall!888 (list!1483 lt!103872) lambda!8488) e!158207)))

(declare-fun b!254474 () Bool)

(declare-fun e!158208 () Bool)

(assert (=> b!254474 (= e!158207 e!158208)))

(declare-fun res!117758 () Bool)

(assert (=> b!254474 (=> (not res!117758) (not e!158208))))

(assert (=> b!254474 (= res!117758 (dynLambda!1841 lambda!8488 (h!9112 (list!1483 lt!103872))))))

(declare-fun b!254475 () Bool)

(assert (=> b!254475 (= e!158208 (forall!888 (t!35997 (list!1483 lt!103872)) lambda!8488))))

(assert (= (and d!72113 (not res!117757)) b!254474))

(assert (= (and b!254474 res!117758) b!254475))

(declare-fun b_lambda!7619 () Bool)

(assert (=> (not b_lambda!7619) (not b!254474)))

(declare-fun m!313849 () Bool)

(assert (=> b!254474 m!313849))

(declare-fun m!313851 () Bool)

(assert (=> b!254475 m!313851))

(assert (=> d!72077 d!72113))

(declare-fun d!72115 () Bool)

(declare-fun list!1486 (Conc!1237) List!3725)

(assert (=> d!72115 (= (list!1483 lt!103872) (list!1486 (c!48227 lt!103872)))))

(declare-fun bs!27505 () Bool)

(assert (= bs!27505 d!72115))

(declare-fun m!313853 () Bool)

(assert (=> bs!27505 m!313853))

(assert (=> d!72077 d!72115))

(declare-fun d!72117 () Bool)

(declare-fun lt!103906 () Bool)

(assert (=> d!72117 (= lt!103906 (forall!888 (list!1483 lt!103872) lambda!8488))))

(assert (=> d!72117 (= lt!103906 (forall!890 (c!48227 lt!103872) lambda!8488))))

(assert (=> d!72117 (= (forall!889 lt!103872 lambda!8488) lt!103906)))

(declare-fun bs!27506 () Bool)

(assert (= bs!27506 d!72117))

(assert (=> bs!27506 m!313713))

(assert (=> bs!27506 m!313713))

(assert (=> bs!27506 m!313767))

(declare-fun m!313855 () Bool)

(assert (=> bs!27506 m!313855))

(assert (=> d!72077 d!72117))

(assert (=> d!72077 d!72071))

(declare-fun d!72119 () Bool)

(assert (=> d!72119 (= (inv!4575 (tag!915 (h!9113 (t!35998 rules!1920)))) (= (mod (str.len (value!24464 (tag!915 (h!9113 (t!35998 rules!1920))))) 2) 0))))

(assert (=> b!254354 d!72119))

(declare-fun d!72121 () Bool)

(declare-fun res!117759 () Bool)

(declare-fun e!158209 () Bool)

(assert (=> d!72121 (=> (not res!117759) (not e!158209))))

(assert (=> d!72121 (= res!117759 (semiInverseModEq!240 (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toValue!1418 (transformation!707 (h!9113 (t!35998 rules!1920))))))))

(assert (=> d!72121 (= (inv!4579 (transformation!707 (h!9113 (t!35998 rules!1920)))) e!158209)))

(declare-fun b!254476 () Bool)

(assert (=> b!254476 (= e!158209 (equivClasses!223 (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toValue!1418 (transformation!707 (h!9113 (t!35998 rules!1920))))))))

(assert (= (and d!72121 res!117759) b!254476))

(declare-fun m!313857 () Bool)

(assert (=> d!72121 m!313857))

(declare-fun m!313859 () Bool)

(assert (=> b!254476 m!313859))

(assert (=> b!254354 d!72121))

(declare-fun d!72123 () Bool)

(declare-fun list!1487 (Conc!1236) List!3724)

(assert (=> d!72123 (= (list!1482 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))) (list!1487 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(declare-fun bs!27507 () Bool)

(assert (= bs!27507 d!72123))

(declare-fun m!313861 () Bool)

(assert (=> bs!27507 m!313861))

(assert (=> b!254229 d!72123))

(declare-fun d!72125 () Bool)

(declare-fun isBalanced!324 (Conc!1236) Bool)

(assert (=> d!72125 (= (inv!4581 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))) (isBalanced!324 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(declare-fun bs!27508 () Bool)

(assert (= bs!27508 d!72125))

(declare-fun m!313863 () Bool)

(assert (=> bs!27508 m!313863))

(assert (=> tb!13279 d!72125))

(declare-fun d!72127 () Bool)

(declare-fun lt!103909 () Int)

(assert (=> d!72127 (>= lt!103909 0)))

(declare-fun e!158212 () Int)

(assert (=> d!72127 (= lt!103909 e!158212)))

(declare-fun c!48247 () Bool)

(assert (=> d!72127 (= c!48247 ((_ is Nil!3714) (originalCharacters!750 (h!9112 tokens!465))))))

(assert (=> d!72127 (= (size!2946 (originalCharacters!750 (h!9112 tokens!465))) lt!103909)))

(declare-fun b!254481 () Bool)

(assert (=> b!254481 (= e!158212 0)))

(declare-fun b!254482 () Bool)

(assert (=> b!254482 (= e!158212 (+ 1 (size!2946 (t!35996 (originalCharacters!750 (h!9112 tokens!465))))))))

(assert (= (and d!72127 c!48247) b!254481))

(assert (= (and d!72127 (not c!48247)) b!254482))

(declare-fun m!313865 () Bool)

(assert (=> b!254482 m!313865))

(assert (=> b!254230 d!72127))

(declare-fun d!72129 () Bool)

(declare-fun c!48248 () Bool)

(assert (=> d!72129 (= c!48248 ((_ is IntegerValue!2187) (value!24465 (h!9112 (t!35997 tokens!465)))))))

(declare-fun e!158213 () Bool)

(assert (=> d!72129 (= (inv!21 (value!24465 (h!9112 (t!35997 tokens!465)))) e!158213)))

(declare-fun b!254483 () Bool)

(declare-fun res!117760 () Bool)

(declare-fun e!158215 () Bool)

(assert (=> b!254483 (=> res!117760 e!158215)))

(assert (=> b!254483 (= res!117760 (not ((_ is IntegerValue!2189) (value!24465 (h!9112 (t!35997 tokens!465))))))))

(declare-fun e!158214 () Bool)

(assert (=> b!254483 (= e!158214 e!158215)))

(declare-fun b!254484 () Bool)

(assert (=> b!254484 (= e!158213 e!158214)))

(declare-fun c!48249 () Bool)

(assert (=> b!254484 (= c!48249 ((_ is IntegerValue!2188) (value!24465 (h!9112 (t!35997 tokens!465)))))))

(declare-fun b!254485 () Bool)

(assert (=> b!254485 (= e!158213 (inv!16 (value!24465 (h!9112 (t!35997 tokens!465)))))))

(declare-fun b!254486 () Bool)

(assert (=> b!254486 (= e!158215 (inv!15 (value!24465 (h!9112 (t!35997 tokens!465)))))))

(declare-fun b!254487 () Bool)

(assert (=> b!254487 (= e!158214 (inv!17 (value!24465 (h!9112 (t!35997 tokens!465)))))))

(assert (= (and d!72129 c!48248) b!254485))

(assert (= (and d!72129 (not c!48248)) b!254484))

(assert (= (and b!254484 c!48249) b!254487))

(assert (= (and b!254484 (not c!48249)) b!254483))

(assert (= (and b!254483 (not res!117760)) b!254486))

(declare-fun m!313867 () Bool)

(assert (=> b!254485 m!313867))

(declare-fun m!313869 () Bool)

(assert (=> b!254486 m!313869))

(declare-fun m!313871 () Bool)

(assert (=> b!254487 m!313871))

(assert (=> b!254386 d!72129))

(declare-fun d!72131 () Bool)

(assert (=> d!72131 true))

(declare-fun order!2791 () Int)

(declare-fun lambda!8491 () Int)

(declare-fun dynLambda!1850 (Int Int) Int)

(assert (=> d!72131 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (dynLambda!1850 order!2791 lambda!8491))))

(declare-fun Forall2!135 (Int) Bool)

(assert (=> d!72131 (= (equivClasses!223 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (Forall2!135 lambda!8491))))

(declare-fun bs!27509 () Bool)

(assert (= bs!27509 d!72131))

(declare-fun m!313873 () Bool)

(assert (=> bs!27509 m!313873))

(assert (=> b!254236 d!72131))

(declare-fun d!72133 () Bool)

(declare-fun res!117763 () Bool)

(declare-fun e!158218 () Bool)

(assert (=> d!72133 (=> (not res!117763) (not e!158218))))

(assert (=> d!72133 (= res!117763 (not (isEmpty!2313 (originalCharacters!750 (h!9112 (t!35997 tokens!465))))))))

(assert (=> d!72133 (= (inv!4578 (h!9112 (t!35997 tokens!465))) e!158218)))

(declare-fun b!254492 () Bool)

(declare-fun res!117764 () Bool)

(assert (=> b!254492 (=> (not res!117764) (not e!158218))))

(assert (=> b!254492 (= res!117764 (= (originalCharacters!750 (h!9112 (t!35997 tokens!465))) (list!1482 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (value!24465 (h!9112 (t!35997 tokens!465)))))))))

(declare-fun b!254493 () Bool)

(assert (=> b!254493 (= e!158218 (= (size!2944 (h!9112 (t!35997 tokens!465))) (size!2946 (originalCharacters!750 (h!9112 (t!35997 tokens!465))))))))

(assert (= (and d!72133 res!117763) b!254492))

(assert (= (and b!254492 res!117764) b!254493))

(declare-fun b_lambda!7621 () Bool)

(assert (=> (not b_lambda!7621) (not b!254492)))

(declare-fun t!36052 () Bool)

(declare-fun tb!13313 () Bool)

(assert (=> (and b!254197 (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36052) tb!13313))

(declare-fun b!254494 () Bool)

(declare-fun e!158219 () Bool)

(declare-fun tp!98246 () Bool)

(assert (=> b!254494 (= e!158219 (and (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (value!24465 (h!9112 (t!35997 tokens!465)))))) tp!98246))))

(declare-fun result!16728 () Bool)

(assert (=> tb!13313 (= result!16728 (and (inv!4581 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (value!24465 (h!9112 (t!35997 tokens!465))))) e!158219))))

(assert (= tb!13313 b!254494))

(declare-fun m!313875 () Bool)

(assert (=> b!254494 m!313875))

(declare-fun m!313877 () Bool)

(assert (=> tb!13313 m!313877))

(assert (=> b!254492 t!36052))

(declare-fun b_and!19429 () Bool)

(assert (= b_and!19399 (and (=> t!36052 result!16728) b_and!19429)))

(declare-fun t!36054 () Bool)

(declare-fun tb!13315 () Bool)

(assert (=> (and b!254189 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36054) tb!13315))

(declare-fun result!16730 () Bool)

(assert (= result!16730 result!16728))

(assert (=> b!254492 t!36054))

(declare-fun b_and!19431 () Bool)

(assert (= b_and!19395 (and (=> t!36054 result!16730) b_and!19431)))

(declare-fun t!36056 () Bool)

(declare-fun tb!13317 () Bool)

(assert (=> (and b!254388 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36056) tb!13317))

(declare-fun result!16732 () Bool)

(assert (= result!16732 result!16728))

(assert (=> b!254492 t!36056))

(declare-fun b_and!19433 () Bool)

(assert (= b_and!19419 (and (=> t!36056 result!16732) b_and!19433)))

(declare-fun t!36058 () Bool)

(declare-fun tb!13319 () Bool)

(assert (=> (and b!254199 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36058) tb!13319))

(declare-fun result!16734 () Bool)

(assert (= result!16734 result!16728))

(assert (=> b!254492 t!36058))

(declare-fun b_and!19435 () Bool)

(assert (= b_and!19397 (and (=> t!36058 result!16734) b_and!19435)))

(declare-fun t!36060 () Bool)

(declare-fun tb!13321 () Bool)

(assert (=> (and b!254355 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36060) tb!13321))

(declare-fun result!16736 () Bool)

(assert (= result!16736 result!16728))

(assert (=> b!254492 t!36060))

(declare-fun b_and!19437 () Bool)

(assert (= b_and!19415 (and (=> t!36060 result!16736) b_and!19437)))

(declare-fun m!313879 () Bool)

(assert (=> d!72133 m!313879))

(declare-fun m!313881 () Bool)

(assert (=> b!254492 m!313881))

(assert (=> b!254492 m!313881))

(declare-fun m!313883 () Bool)

(assert (=> b!254492 m!313883))

(declare-fun m!313885 () Bool)

(assert (=> b!254493 m!313885))

(assert (=> b!254385 d!72133))

(declare-fun d!72135 () Bool)

(declare-fun c!48252 () Bool)

(assert (=> d!72135 (= c!48252 ((_ is Node!1236) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(declare-fun e!158224 () Bool)

(assert (=> d!72135 (= (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))) e!158224)))

(declare-fun b!254501 () Bool)

(declare-fun inv!4584 (Conc!1236) Bool)

(assert (=> b!254501 (= e!158224 (inv!4584 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(declare-fun b!254502 () Bool)

(declare-fun e!158225 () Bool)

(assert (=> b!254502 (= e!158224 e!158225)))

(declare-fun res!117767 () Bool)

(assert (=> b!254502 (= res!117767 (not ((_ is Leaf!1929) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))))))

(assert (=> b!254502 (=> res!117767 e!158225)))

(declare-fun b!254503 () Bool)

(declare-fun inv!4585 (Conc!1236) Bool)

(assert (=> b!254503 (= e!158225 (inv!4585 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(assert (= (and d!72135 c!48252) b!254501))

(assert (= (and d!72135 (not c!48252)) b!254502))

(assert (= (and b!254502 (not res!117767)) b!254503))

(declare-fun m!313887 () Bool)

(assert (=> b!254501 m!313887))

(declare-fun m!313889 () Bool)

(assert (=> b!254503 m!313889))

(assert (=> b!254235 d!72135))

(declare-fun d!72137 () Bool)

(assert (=> d!72137 true))

(declare-fun order!2793 () Int)

(declare-fun lambda!8494 () Int)

(declare-fun dynLambda!1851 (Int Int) Int)

(assert (=> d!72137 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1851 order!2793 lambda!8494))))

(assert (=> d!72137 true))

(assert (=> d!72137 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1851 order!2793 lambda!8494))))

(declare-fun Forall!159 (Int) Bool)

(assert (=> d!72137 (= (semiInverseModEq!240 (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (Forall!159 lambda!8494))))

(declare-fun bs!27510 () Bool)

(assert (= bs!27510 d!72137))

(declare-fun m!313891 () Bool)

(assert (=> bs!27510 m!313891))

(assert (=> d!72093 d!72137))

(declare-fun d!72139 () Bool)

(declare-fun e!158228 () Bool)

(assert (=> d!72139 e!158228))

(declare-fun res!117770 () Bool)

(assert (=> d!72139 (=> (not res!117770) (not e!158228))))

(declare-fun lt!103912 () BalanceConc!2482)

(assert (=> d!72139 (= res!117770 (= (list!1483 lt!103912) (Cons!3715 separatorToken!170 Nil!3715)))))

(declare-fun singleton!98 (Token!1158) BalanceConc!2482)

(assert (=> d!72139 (= lt!103912 (singleton!98 separatorToken!170))))

(assert (=> d!72139 (= (singletonSeq!256 separatorToken!170) lt!103912)))

(declare-fun b!254510 () Bool)

(assert (=> b!254510 (= e!158228 (isBalanced!323 (c!48227 lt!103912)))))

(assert (= (and d!72139 res!117770) b!254510))

(declare-fun m!313893 () Bool)

(assert (=> d!72139 m!313893))

(declare-fun m!313895 () Bool)

(assert (=> d!72139 m!313895))

(declare-fun m!313897 () Bool)

(assert (=> b!254510 m!313897))

(assert (=> d!72047 d!72139))

(declare-fun d!72141 () Bool)

(assert (=> d!72141 (= (list!1483 (_1!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))) (list!1486 (c!48227 (_1!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))))

(declare-fun bs!27511 () Bool)

(assert (= bs!27511 d!72141))

(declare-fun m!313899 () Bool)

(assert (=> bs!27511 m!313899))

(assert (=> d!72047 d!72141))

(declare-fun d!72143 () Bool)

(declare-fun lt!103913 () Int)

(assert (=> d!72143 (= lt!103913 (size!2948 (list!1483 (_1!2292 lt!103878))))))

(assert (=> d!72143 (= lt!103913 (size!2949 (c!48227 (_1!2292 lt!103878))))))

(assert (=> d!72143 (= (size!2945 (_1!2292 lt!103878)) lt!103913)))

(declare-fun bs!27512 () Bool)

(assert (= bs!27512 d!72143))

(declare-fun m!313901 () Bool)

(assert (=> bs!27512 m!313901))

(assert (=> bs!27512 m!313901))

(declare-fun m!313903 () Bool)

(assert (=> bs!27512 m!313903))

(declare-fun m!313905 () Bool)

(assert (=> bs!27512 m!313905))

(assert (=> d!72047 d!72143))

(declare-fun b!254521 () Bool)

(declare-fun lt!103916 () tuple2!4152)

(declare-fun e!158236 () Bool)

(declare-datatypes ((tuple2!4156 0))(
  ( (tuple2!4157 (_1!2294 List!3725) (_2!2294 List!3724)) )
))
(declare-fun lexList!194 (LexerInterface!593 List!3726 List!3724) tuple2!4156)

(assert (=> b!254521 (= e!158236 (= (list!1482 (_2!2292 lt!103916)) (_2!2294 (lexList!194 thiss!17480 rules!1920 (list!1482 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))))

(declare-fun d!72145 () Bool)

(assert (=> d!72145 e!158236))

(declare-fun res!117779 () Bool)

(assert (=> d!72145 (=> (not res!117779) (not e!158236))))

(declare-fun e!158235 () Bool)

(assert (=> d!72145 (= res!117779 e!158235)))

(declare-fun c!48255 () Bool)

(assert (=> d!72145 (= c!48255 (> (size!2945 (_1!2292 lt!103916)) 0))))

(declare-fun lexTailRecV2!161 (LexerInterface!593 List!3726 BalanceConc!2480 BalanceConc!2480 BalanceConc!2480 BalanceConc!2482) tuple2!4152)

(assert (=> d!72145 (= lt!103916 (lexTailRecV2!161 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)) (BalanceConc!2481 Empty!1236) (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)) (BalanceConc!2483 Empty!1237)))))

(assert (=> d!72145 (= (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))) lt!103916)))

(declare-fun b!254522 () Bool)

(declare-fun res!117780 () Bool)

(assert (=> b!254522 (=> (not res!117780) (not e!158236))))

(assert (=> b!254522 (= res!117780 (= (list!1483 (_1!2292 lt!103916)) (_1!2294 (lexList!194 thiss!17480 rules!1920 (list!1482 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))))

(declare-fun b!254523 () Bool)

(declare-fun e!158237 () Bool)

(assert (=> b!254523 (= e!158235 e!158237)))

(declare-fun res!117778 () Bool)

(declare-fun size!2952 (BalanceConc!2480) Int)

(assert (=> b!254523 (= res!117778 (< (size!2952 (_2!2292 lt!103916)) (size!2952 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))

(assert (=> b!254523 (=> (not res!117778) (not e!158237))))

(declare-fun b!254524 () Bool)

(declare-fun isEmpty!2317 (BalanceConc!2482) Bool)

(assert (=> b!254524 (= e!158237 (not (isEmpty!2317 (_1!2292 lt!103916))))))

(declare-fun b!254525 () Bool)

(assert (=> b!254525 (= e!158235 (= (_2!2292 lt!103916) (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))))

(assert (= (and d!72145 c!48255) b!254523))

(assert (= (and d!72145 (not c!48255)) b!254525))

(assert (= (and b!254523 res!117778) b!254524))

(assert (= (and d!72145 res!117779) b!254522))

(assert (= (and b!254522 res!117780) b!254521))

(declare-fun m!313907 () Bool)

(assert (=> b!254523 m!313907))

(assert (=> b!254523 m!313687))

(declare-fun m!313909 () Bool)

(assert (=> b!254523 m!313909))

(declare-fun m!313911 () Bool)

(assert (=> b!254524 m!313911))

(declare-fun m!313913 () Bool)

(assert (=> b!254522 m!313913))

(assert (=> b!254522 m!313687))

(declare-fun m!313915 () Bool)

(assert (=> b!254522 m!313915))

(assert (=> b!254522 m!313915))

(declare-fun m!313917 () Bool)

(assert (=> b!254522 m!313917))

(declare-fun m!313919 () Bool)

(assert (=> d!72145 m!313919))

(assert (=> d!72145 m!313687))

(assert (=> d!72145 m!313687))

(declare-fun m!313921 () Bool)

(assert (=> d!72145 m!313921))

(declare-fun m!313923 () Bool)

(assert (=> b!254521 m!313923))

(assert (=> b!254521 m!313687))

(assert (=> b!254521 m!313915))

(assert (=> b!254521 m!313915))

(assert (=> b!254521 m!313917))

(assert (=> d!72047 d!72145))

(declare-fun d!72147 () Bool)

(assert (=> d!72147 (= (list!1483 (singletonSeq!256 separatorToken!170)) (list!1486 (c!48227 (singletonSeq!256 separatorToken!170))))))

(declare-fun bs!27513 () Bool)

(assert (= bs!27513 d!72147))

(declare-fun m!313925 () Bool)

(assert (=> bs!27513 m!313925))

(assert (=> d!72047 d!72147))

(declare-fun d!72149 () Bool)

(declare-fun lt!103919 () BalanceConc!2480)

(declare-fun printList!274 (LexerInterface!593 List!3725) List!3724)

(assert (=> d!72149 (= (list!1482 lt!103919) (printList!274 thiss!17480 (list!1483 (singletonSeq!256 separatorToken!170))))))

(declare-fun printTailRec!284 (LexerInterface!593 BalanceConc!2482 Int BalanceConc!2480) BalanceConc!2480)

(assert (=> d!72149 (= lt!103919 (printTailRec!284 thiss!17480 (singletonSeq!256 separatorToken!170) 0 (BalanceConc!2481 Empty!1236)))))

(assert (=> d!72149 (= (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)) lt!103919)))

(declare-fun bs!27514 () Bool)

(assert (= bs!27514 d!72149))

(declare-fun m!313927 () Bool)

(assert (=> bs!27514 m!313927))

(assert (=> bs!27514 m!313685))

(assert (=> bs!27514 m!313693))

(assert (=> bs!27514 m!313693))

(declare-fun m!313929 () Bool)

(assert (=> bs!27514 m!313929))

(assert (=> bs!27514 m!313685))

(declare-fun m!313931 () Bool)

(assert (=> bs!27514 m!313931))

(assert (=> d!72047 d!72149))

(assert (=> d!72047 d!72071))

(declare-fun bs!27515 () Bool)

(declare-fun d!72153 () Bool)

(assert (= bs!27515 (and d!72153 d!72137)))

(declare-fun lambda!8495 () Int)

(assert (=> bs!27515 (= (and (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (h!9113 rules!1920)))) (= (toValue!1418 (transformation!707 (rule!1288 separatorToken!170))) (toValue!1418 (transformation!707 (h!9113 rules!1920))))) (= lambda!8495 lambda!8494))))

(assert (=> d!72153 true))

(assert (=> d!72153 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) (dynLambda!1851 order!2793 lambda!8495))))

(assert (=> d!72153 true))

(assert (=> d!72153 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (dynLambda!1851 order!2793 lambda!8495))))

(assert (=> d!72153 (= (semiInverseModEq!240 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (Forall!159 lambda!8495))))

(declare-fun bs!27516 () Bool)

(assert (= bs!27516 d!72153))

(declare-fun m!313937 () Bool)

(assert (=> bs!27516 m!313937))

(assert (=> d!72039 d!72153))

(declare-fun d!72157 () Bool)

(declare-fun c!48259 () Bool)

(assert (=> d!72157 (= c!48259 ((_ is Node!1236) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(declare-fun e!158244 () Bool)

(assert (=> d!72157 (= (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))) e!158244)))

(declare-fun b!254535 () Bool)

(assert (=> b!254535 (= e!158244 (inv!4584 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(declare-fun b!254536 () Bool)

(declare-fun e!158245 () Bool)

(assert (=> b!254536 (= e!158244 e!158245)))

(declare-fun res!117784 () Bool)

(assert (=> b!254536 (= res!117784 (not ((_ is Leaf!1929) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))))))

(assert (=> b!254536 (=> res!117784 e!158245)))

(declare-fun b!254537 () Bool)

(assert (=> b!254537 (= e!158245 (inv!4585 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(assert (= (and d!72157 c!48259) b!254535))

(assert (= (and d!72157 (not c!48259)) b!254536))

(assert (= (and b!254536 (not res!117784)) b!254537))

(declare-fun m!313939 () Bool)

(assert (=> b!254535 m!313939))

(declare-fun m!313941 () Bool)

(assert (=> b!254537 m!313941))

(assert (=> b!254283 d!72157))

(declare-fun d!72159 () Bool)

(assert (=> d!72159 (= (inv!4575 (tag!915 (rule!1288 (h!9112 (t!35997 tokens!465))))) (= (mod (str.len (value!24464 (tag!915 (rule!1288 (h!9112 (t!35997 tokens!465)))))) 2) 0))))

(assert (=> b!254387 d!72159))

(declare-fun d!72161 () Bool)

(declare-fun res!117785 () Bool)

(declare-fun e!158246 () Bool)

(assert (=> d!72161 (=> (not res!117785) (not e!158246))))

(assert (=> d!72161 (= res!117785 (semiInverseModEq!240 (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))))))

(assert (=> d!72161 (= (inv!4579 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) e!158246)))

(declare-fun b!254538 () Bool)

(assert (=> b!254538 (= e!158246 (equivClasses!223 (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))))))

(assert (= (and d!72161 res!117785) b!254538))

(declare-fun m!313943 () Bool)

(assert (=> d!72161 m!313943))

(declare-fun m!313945 () Bool)

(assert (=> b!254538 m!313945))

(assert (=> b!254387 d!72161))

(declare-fun bs!27521 () Bool)

(declare-fun d!72163 () Bool)

(assert (= bs!27521 (and d!72163 b!254191)))

(declare-fun lambda!8498 () Int)

(assert (=> bs!27521 (not (= lambda!8498 lambda!8478))))

(declare-fun bs!27522 () Bool)

(assert (= bs!27522 (and d!72163 d!72077)))

(assert (=> bs!27522 (= lambda!8498 lambda!8488)))

(declare-fun b!254552 () Bool)

(declare-fun e!158259 () Bool)

(assert (=> b!254552 (= e!158259 true)))

(declare-fun b!254551 () Bool)

(declare-fun e!158258 () Bool)

(assert (=> b!254551 (= e!158258 e!158259)))

(declare-fun b!254550 () Bool)

(declare-fun e!158257 () Bool)

(assert (=> b!254550 (= e!158257 e!158258)))

(assert (=> d!72163 e!158257))

(assert (= b!254551 b!254552))

(assert (= b!254550 b!254551))

(assert (= (and d!72163 ((_ is Cons!3716) rules!1920)) b!254550))

(assert (=> b!254552 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1846 order!2787 lambda!8498))))

(assert (=> b!254552 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1846 order!2787 lambda!8498))))

(assert (=> d!72163 true))

(declare-fun lt!103926 () Bool)

(assert (=> d!72163 (= lt!103926 (forall!888 (list!1483 lt!103872) lambda!8498))))

(declare-fun e!158256 () Bool)

(assert (=> d!72163 (= lt!103926 e!158256)))

(declare-fun res!117795 () Bool)

(assert (=> d!72163 (=> res!117795 e!158256)))

(assert (=> d!72163 (= res!117795 (not ((_ is Cons!3715) (list!1483 lt!103872))))))

(assert (=> d!72163 (not (isEmpty!2312 rules!1920))))

(assert (=> d!72163 (= (rulesProduceEachTokenIndividuallyList!211 thiss!17480 rules!1920 (list!1483 lt!103872)) lt!103926)))

(declare-fun b!254548 () Bool)

(declare-fun e!158255 () Bool)

(assert (=> b!254548 (= e!158256 e!158255)))

(declare-fun res!117794 () Bool)

(assert (=> b!254548 (=> (not res!117794) (not e!158255))))

(assert (=> b!254548 (= res!117794 (rulesProduceIndividualToken!342 thiss!17480 rules!1920 (h!9112 (list!1483 lt!103872))))))

(declare-fun b!254549 () Bool)

(assert (=> b!254549 (= e!158255 (rulesProduceEachTokenIndividuallyList!211 thiss!17480 rules!1920 (t!35997 (list!1483 lt!103872))))))

(assert (= (and d!72163 (not res!117795)) b!254548))

(assert (= (and b!254548 res!117794) b!254549))

(assert (=> d!72163 m!313713))

(declare-fun m!313975 () Bool)

(assert (=> d!72163 m!313975))

(assert (=> d!72163 m!313593))

(declare-fun m!313977 () Bool)

(assert (=> b!254548 m!313977))

(declare-fun m!313979 () Bool)

(assert (=> b!254549 m!313979))

(assert (=> b!254330 d!72163))

(assert (=> b!254330 d!72115))

(declare-fun bs!27523 () Bool)

(declare-fun d!72177 () Bool)

(assert (= bs!27523 (and d!72177 d!72137)))

(declare-fun lambda!8499 () Int)

(assert (=> bs!27523 (= (and (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (h!9113 rules!1920)))) (= (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (h!9113 rules!1920))))) (= lambda!8499 lambda!8494))))

(declare-fun bs!27524 () Bool)

(assert (= bs!27524 (and d!72177 d!72153)))

(assert (=> bs!27524 (= (and (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) (= (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170))))) (= lambda!8499 lambda!8495))))

(assert (=> d!72177 true))

(assert (=> d!72177 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) (dynLambda!1851 order!2793 lambda!8499))))

(assert (=> d!72177 true))

(assert (=> d!72177 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))) (dynLambda!1851 order!2793 lambda!8499))))

(assert (=> d!72177 (= (semiInverseModEq!240 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))) (Forall!159 lambda!8499))))

(declare-fun bs!27525 () Bool)

(assert (= bs!27525 d!72177))

(declare-fun m!313981 () Bool)

(assert (=> bs!27525 m!313981))

(assert (=> d!72033 d!72177))

(declare-fun d!72179 () Bool)

(declare-fun charsToBigInt!1 (List!3723) Int)

(assert (=> d!72179 (= (inv!17 (value!24465 (h!9112 tokens!465))) (= (charsToBigInt!1 (text!5551 (value!24465 (h!9112 tokens!465)))) (value!24457 (value!24465 (h!9112 tokens!465)))))))

(declare-fun bs!27526 () Bool)

(assert (= bs!27526 d!72179))

(declare-fun m!313983 () Bool)

(assert (=> bs!27526 m!313983))

(assert (=> b!254294 d!72179))

(declare-fun d!72181 () Bool)

(declare-fun lt!103929 () Bool)

(assert (=> d!72181 (= lt!103929 (isEmpty!2313 (list!1482 (_2!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))))

(declare-fun isEmpty!2318 (Conc!1236) Bool)

(assert (=> d!72181 (= lt!103929 (isEmpty!2318 (c!48225 (_2!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170)))))))))

(assert (=> d!72181 (= (isEmpty!2314 (_2!2292 (lex!390 thiss!17480 rules!1920 (print!321 thiss!17480 (singletonSeq!256 separatorToken!170))))) lt!103929)))

(declare-fun bs!27527 () Bool)

(assert (= bs!27527 d!72181))

(declare-fun m!313985 () Bool)

(assert (=> bs!27527 m!313985))

(assert (=> bs!27527 m!313985))

(declare-fun m!313987 () Bool)

(assert (=> bs!27527 m!313987))

(declare-fun m!313989 () Bool)

(assert (=> bs!27527 m!313989))

(assert (=> b!254280 d!72181))

(assert (=> b!254280 d!72145))

(assert (=> b!254280 d!72149))

(assert (=> b!254280 d!72139))

(declare-fun d!72183 () Bool)

(declare-fun charsToInt!0 (List!3723) (_ BitVec 32))

(assert (=> d!72183 (= (inv!16 (value!24465 separatorToken!170)) (= (charsToInt!0 (text!5550 (value!24465 separatorToken!170))) (value!24456 (value!24465 separatorToken!170))))))

(declare-fun bs!27528 () Bool)

(assert (= bs!27528 d!72183))

(declare-fun m!313991 () Bool)

(assert (=> bs!27528 m!313991))

(assert (=> b!254219 d!72183))

(declare-fun d!72185 () Bool)

(declare-fun charsToBigInt!0 (List!3723 Int) Int)

(assert (=> d!72185 (= (inv!15 (value!24465 separatorToken!170)) (= (charsToBigInt!0 (text!5552 (value!24465 separatorToken!170)) 0) (value!24460 (value!24465 separatorToken!170))))))

(declare-fun bs!27529 () Bool)

(assert (= bs!27529 d!72185))

(declare-fun m!313993 () Bool)

(assert (=> bs!27529 m!313993))

(assert (=> b!254220 d!72185))

(declare-fun d!72187 () Bool)

(declare-fun res!117809 () Bool)

(declare-fun e!158273 () Bool)

(assert (=> d!72187 (=> res!117809 e!158273)))

(assert (=> d!72187 (= res!117809 ((_ is Nil!3716) rules!1920))))

(assert (=> d!72187 (= (noDuplicateTag!206 thiss!17480 rules!1920 Nil!3717) e!158273)))

(declare-fun b!254572 () Bool)

(declare-fun e!158274 () Bool)

(assert (=> b!254572 (= e!158273 e!158274)))

(declare-fun res!117810 () Bool)

(assert (=> b!254572 (=> (not res!117810) (not e!158274))))

(declare-fun contains!685 (List!3727 String!4725) Bool)

(assert (=> b!254572 (= res!117810 (not (contains!685 Nil!3717 (tag!915 (h!9113 rules!1920)))))))

(declare-fun b!254573 () Bool)

(assert (=> b!254573 (= e!158274 (noDuplicateTag!206 thiss!17480 (t!35998 rules!1920) (Cons!3717 (tag!915 (h!9113 rules!1920)) Nil!3717)))))

(assert (= (and d!72187 (not res!117809)) b!254572))

(assert (= (and b!254572 res!117810) b!254573))

(declare-fun m!314013 () Bool)

(assert (=> b!254572 m!314013))

(declare-fun m!314015 () Bool)

(assert (=> b!254573 m!314015))

(assert (=> b!254239 d!72187))

(declare-fun d!72191 () Bool)

(assert (=> d!72191 (= (inv!16 (value!24465 (h!9112 tokens!465))) (= (charsToInt!0 (text!5550 (value!24465 (h!9112 tokens!465)))) (value!24456 (value!24465 (h!9112 tokens!465)))))))

(declare-fun bs!27530 () Bool)

(assert (= bs!27530 d!72191))

(declare-fun m!314017 () Bool)

(assert (=> bs!27530 m!314017))

(assert (=> b!254292 d!72191))

(declare-fun d!72193 () Bool)

(declare-fun lt!103935 () Token!1158)

(declare-fun apply!709 (List!3725 Int) Token!1158)

(assert (=> d!72193 (= lt!103935 (apply!709 (list!1483 (_1!2292 lt!103878)) 0))))

(declare-fun apply!710 (Conc!1237 Int) Token!1158)

(assert (=> d!72193 (= lt!103935 (apply!710 (c!48227 (_1!2292 lt!103878)) 0))))

(declare-fun e!158277 () Bool)

(assert (=> d!72193 e!158277))

(declare-fun res!117813 () Bool)

(assert (=> d!72193 (=> (not res!117813) (not e!158277))))

(assert (=> d!72193 (= res!117813 (<= 0 0))))

(assert (=> d!72193 (= (apply!707 (_1!2292 lt!103878) 0) lt!103935)))

(declare-fun b!254576 () Bool)

(assert (=> b!254576 (= e!158277 (< 0 (size!2945 (_1!2292 lt!103878))))))

(assert (= (and d!72193 res!117813) b!254576))

(assert (=> d!72193 m!313901))

(assert (=> d!72193 m!313901))

(declare-fun m!314019 () Bool)

(assert (=> d!72193 m!314019))

(declare-fun m!314021 () Bool)

(assert (=> d!72193 m!314021))

(assert (=> b!254576 m!313691))

(assert (=> b!254278 d!72193))

(declare-fun d!72195 () Bool)

(assert (=> d!72195 (= (inv!4581 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))) (isBalanced!324 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))))))

(declare-fun bs!27531 () Bool)

(assert (= bs!27531 d!72195))

(declare-fun m!314023 () Bool)

(assert (=> bs!27531 m!314023))

(assert (=> tb!13273 d!72195))

(declare-fun d!72197 () Bool)

(assert (=> d!72197 (= (isEmpty!2313 (originalCharacters!750 separatorToken!170)) ((_ is Nil!3714) (originalCharacters!750 separatorToken!170)))))

(assert (=> d!72067 d!72197))

(declare-fun d!72199 () Bool)

(assert (=> d!72199 (= (inv!15 (value!24465 (h!9112 tokens!465))) (= (charsToBigInt!0 (text!5552 (value!24465 (h!9112 tokens!465))) 0) (value!24460 (value!24465 (h!9112 tokens!465)))))))

(declare-fun bs!27532 () Bool)

(assert (= bs!27532 d!72199))

(declare-fun m!314025 () Bool)

(assert (=> bs!27532 m!314025))

(assert (=> b!254293 d!72199))

(declare-fun d!72201 () Bool)

(declare-fun lt!103936 () Bool)

(assert (=> d!72201 (= lt!103936 (isEmpty!2313 (list!1482 (_2!2292 lt!103878))))))

(assert (=> d!72201 (= lt!103936 (isEmpty!2318 (c!48225 (_2!2292 lt!103878))))))

(assert (=> d!72201 (= (isEmpty!2314 (_2!2292 lt!103878)) lt!103936)))

(declare-fun bs!27533 () Bool)

(assert (= bs!27533 d!72201))

(declare-fun m!314027 () Bool)

(assert (=> bs!27533 m!314027))

(assert (=> bs!27533 m!314027))

(declare-fun m!314029 () Bool)

(assert (=> bs!27533 m!314029))

(declare-fun m!314031 () Bool)

(assert (=> bs!27533 m!314031))

(assert (=> b!254279 d!72201))

(declare-fun bs!27534 () Bool)

(declare-fun d!72203 () Bool)

(assert (= bs!27534 (and d!72203 d!72131)))

(declare-fun lambda!8500 () Int)

(assert (=> bs!27534 (= (= (toValue!1418 (transformation!707 (h!9113 rules!1920))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (= lambda!8500 lambda!8491))))

(assert (=> d!72203 true))

(assert (=> d!72203 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (dynLambda!1850 order!2791 lambda!8500))))

(assert (=> d!72203 (= (equivClasses!223 (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (Forall2!135 lambda!8500))))

(declare-fun bs!27535 () Bool)

(assert (= bs!27535 d!72203))

(declare-fun m!314033 () Bool)

(assert (=> bs!27535 m!314033))

(assert (=> b!254344 d!72203))

(declare-fun d!72205 () Bool)

(assert (=> d!72205 true))

(declare-fun lt!103942 () Bool)

(declare-fun rulesValidInductive!189 (LexerInterface!593 List!3726) Bool)

(assert (=> d!72205 (= lt!103942 (rulesValidInductive!189 thiss!17480 rules!1920))))

(declare-fun lambda!8503 () Int)

(declare-fun forall!892 (List!3726 Int) Bool)

(assert (=> d!72205 (= lt!103942 (forall!892 rules!1920 lambda!8503))))

(assert (=> d!72205 (= (rulesValid!206 thiss!17480 rules!1920) lt!103942)))

(declare-fun bs!27537 () Bool)

(assert (= bs!27537 d!72205))

(declare-fun m!314041 () Bool)

(assert (=> bs!27537 m!314041))

(declare-fun m!314043 () Bool)

(assert (=> bs!27537 m!314043))

(assert (=> d!72041 d!72205))

(declare-fun d!72209 () Bool)

(declare-fun res!117814 () Bool)

(declare-fun e!158278 () Bool)

(assert (=> d!72209 (=> res!117814 e!158278)))

(assert (=> d!72209 (= res!117814 ((_ is Nil!3715) (t!35997 tokens!465)))))

(assert (=> d!72209 (= (forall!888 (t!35997 tokens!465) lambda!8478) e!158278)))

(declare-fun b!254579 () Bool)

(declare-fun e!158279 () Bool)

(assert (=> b!254579 (= e!158278 e!158279)))

(declare-fun res!117815 () Bool)

(assert (=> b!254579 (=> (not res!117815) (not e!158279))))

(assert (=> b!254579 (= res!117815 (dynLambda!1841 lambda!8478 (h!9112 (t!35997 tokens!465))))))

(declare-fun b!254580 () Bool)

(assert (=> b!254580 (= e!158279 (forall!888 (t!35997 (t!35997 tokens!465)) lambda!8478))))

(assert (= (and d!72209 (not res!117814)) b!254579))

(assert (= (and b!254579 res!117815) b!254580))

(declare-fun b_lambda!7627 () Bool)

(assert (=> (not b_lambda!7627) (not b!254579)))

(declare-fun m!314045 () Bool)

(assert (=> b!254579 m!314045))

(declare-fun m!314047 () Bool)

(assert (=> b!254580 m!314047))

(assert (=> b!254245 d!72209))

(declare-fun bs!27538 () Bool)

(declare-fun d!72211 () Bool)

(assert (= bs!27538 (and d!72211 d!72131)))

(declare-fun lambda!8504 () Int)

(assert (=> bs!27538 (= (= (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 separatorToken!170)))) (= lambda!8504 lambda!8491))))

(declare-fun bs!27539 () Bool)

(assert (= bs!27539 (and d!72211 d!72203)))

(assert (=> bs!27539 (= (= (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (h!9113 rules!1920)))) (= lambda!8504 lambda!8500))))

(assert (=> d!72211 true))

(assert (=> d!72211 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))) (dynLambda!1850 order!2791 lambda!8504))))

(assert (=> d!72211 (= (equivClasses!223 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toValue!1418 (transformation!707 (rule!1288 (h!9112 tokens!465))))) (Forall2!135 lambda!8504))))

(declare-fun bs!27540 () Bool)

(assert (= bs!27540 d!72211))

(declare-fun m!314049 () Bool)

(assert (=> bs!27540 m!314049))

(assert (=> b!254224 d!72211))

(declare-fun d!72213 () Bool)

(assert (=> d!72213 (= (inv!17 (value!24465 separatorToken!170)) (= (charsToBigInt!1 (text!5551 (value!24465 separatorToken!170))) (value!24457 (value!24465 separatorToken!170))))))

(declare-fun bs!27541 () Bool)

(assert (= bs!27541 d!72213))

(declare-fun m!314051 () Bool)

(assert (=> bs!27541 m!314051))

(assert (=> b!254221 d!72213))

(declare-fun d!72215 () Bool)

(assert (=> d!72215 (= (list!1482 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))) (list!1487 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))))))

(declare-fun bs!27542 () Bool)

(assert (= bs!27542 d!72215))

(declare-fun m!314053 () Bool)

(assert (=> bs!27542 m!314053))

(assert (=> b!254281 d!72215))

(declare-fun d!72217 () Bool)

(declare-fun c!48265 () Bool)

(assert (=> d!72217 (= c!48265 (and ((_ is Cons!3716) rules!1920) (not (= (isSeparator!707 (h!9113 rules!1920)) (isSeparator!707 (h!9113 rules!1920))))))))

(declare-fun e!158289 () Bool)

(assert (=> d!72217 (= (ruleDisjointCharsFromAllFromOtherType!100 (h!9113 rules!1920) rules!1920) e!158289)))

(declare-fun b!254592 () Bool)

(declare-fun e!158291 () Bool)

(declare-fun call!13439 () Bool)

(assert (=> b!254592 (= e!158291 call!13439)))

(declare-fun b!254593 () Bool)

(declare-fun e!158290 () Bool)

(assert (=> b!254593 (= e!158290 call!13439)))

(declare-fun b!254594 () Bool)

(assert (=> b!254594 (= e!158289 e!158291)))

(declare-fun res!117823 () Bool)

(declare-fun rulesUseDisjointChars!49 (Rule!1214 Rule!1214) Bool)

(assert (=> b!254594 (= res!117823 (rulesUseDisjointChars!49 (h!9113 rules!1920) (h!9113 rules!1920)))))

(assert (=> b!254594 (=> (not res!117823) (not e!158291))))

(declare-fun bm!13434 () Bool)

(assert (=> bm!13434 (= call!13439 (ruleDisjointCharsFromAllFromOtherType!100 (h!9113 rules!1920) (t!35998 rules!1920)))))

(declare-fun b!254595 () Bool)

(assert (=> b!254595 (= e!158289 e!158290)))

(declare-fun res!117824 () Bool)

(assert (=> b!254595 (= res!117824 (not ((_ is Cons!3716) rules!1920)))))

(assert (=> b!254595 (=> res!117824 e!158290)))

(assert (= (and d!72217 c!48265) b!254594))

(assert (= (and d!72217 (not c!48265)) b!254595))

(assert (= (and b!254594 res!117823) b!254592))

(assert (= (and b!254595 (not res!117824)) b!254593))

(assert (= (or b!254592 b!254593) bm!13434))

(declare-fun m!314069 () Bool)

(assert (=> b!254594 m!314069))

(declare-fun m!314071 () Bool)

(assert (=> bm!13434 m!314071))

(assert (=> b!254288 d!72217))

(declare-fun d!72225 () Bool)

(declare-fun lt!103947 () Int)

(assert (=> d!72225 (>= lt!103947 0)))

(declare-fun e!158292 () Int)

(assert (=> d!72225 (= lt!103947 e!158292)))

(declare-fun c!48266 () Bool)

(assert (=> d!72225 (= c!48266 ((_ is Nil!3714) (originalCharacters!750 separatorToken!170)))))

(assert (=> d!72225 (= (size!2946 (originalCharacters!750 separatorToken!170)) lt!103947)))

(declare-fun b!254596 () Bool)

(assert (=> b!254596 (= e!158292 0)))

(declare-fun b!254597 () Bool)

(assert (=> b!254597 (= e!158292 (+ 1 (size!2946 (t!35996 (originalCharacters!750 separatorToken!170)))))))

(assert (= (and d!72225 c!48266) b!254596))

(assert (= (and d!72225 (not c!48266)) b!254597))

(declare-fun m!314073 () Bool)

(assert (=> b!254597 m!314073))

(assert (=> b!254282 d!72225))

(declare-fun d!72227 () Bool)

(declare-fun res!117829 () Bool)

(declare-fun e!158297 () Bool)

(assert (=> d!72227 (=> res!117829 e!158297)))

(assert (=> d!72227 (= res!117829 ((_ is Nil!3715) (list!1483 lt!103872)))))

(assert (=> d!72227 (= (forall!888 (list!1483 lt!103872) lambda!8478) e!158297)))

(declare-fun b!254602 () Bool)

(declare-fun e!158298 () Bool)

(assert (=> b!254602 (= e!158297 e!158298)))

(declare-fun res!117830 () Bool)

(assert (=> b!254602 (=> (not res!117830) (not e!158298))))

(assert (=> b!254602 (= res!117830 (dynLambda!1841 lambda!8478 (h!9112 (list!1483 lt!103872))))))

(declare-fun b!254603 () Bool)

(assert (=> b!254603 (= e!158298 (forall!888 (t!35997 (list!1483 lt!103872)) lambda!8478))))

(assert (= (and d!72227 (not res!117829)) b!254602))

(assert (= (and b!254602 res!117830) b!254603))

(declare-fun b_lambda!7629 () Bool)

(assert (=> (not b_lambda!7629) (not b!254602)))

(declare-fun m!314075 () Bool)

(assert (=> b!254602 m!314075))

(declare-fun m!314077 () Bool)

(assert (=> b!254603 m!314077))

(assert (=> d!72069 d!72227))

(assert (=> d!72069 d!72115))

(declare-fun d!72229 () Bool)

(declare-fun lt!103952 () Bool)

(assert (=> d!72229 (= lt!103952 (forall!888 (list!1486 (c!48227 lt!103872)) lambda!8478))))

(declare-fun e!158311 () Bool)

(assert (=> d!72229 (= lt!103952 e!158311)))

(declare-fun res!117839 () Bool)

(assert (=> d!72229 (=> res!117839 e!158311)))

(assert (=> d!72229 (= res!117839 ((_ is Empty!1237) (c!48227 lt!103872)))))

(assert (=> d!72229 (= (forall!890 (c!48227 lt!103872) lambda!8478) lt!103952)))

(declare-fun b!254620 () Bool)

(declare-fun e!158310 () Bool)

(declare-fun e!158309 () Bool)

(assert (=> b!254620 (= e!158310 e!158309)))

(declare-datatypes ((Unit!4546 0))(
  ( (Unit!4547) )
))
(declare-fun lt!103953 () Unit!4546)

(declare-fun lemmaForallConcat!19 (List!3725 List!3725 Int) Unit!4546)

(assert (=> b!254620 (= lt!103953 (lemmaForallConcat!19 (list!1486 (left!3053 (c!48227 lt!103872))) (list!1486 (right!3383 (c!48227 lt!103872))) lambda!8478))))

(declare-fun res!117840 () Bool)

(assert (=> b!254620 (= res!117840 (forall!890 (left!3053 (c!48227 lt!103872)) lambda!8478))))

(assert (=> b!254620 (=> (not res!117840) (not e!158309))))

(declare-fun b!254618 () Bool)

(assert (=> b!254618 (= e!158311 e!158310)))

(declare-fun c!48269 () Bool)

(assert (=> b!254618 (= c!48269 ((_ is Leaf!1930) (c!48227 lt!103872)))))

(declare-fun b!254619 () Bool)

(declare-fun forall!893 (IArray!2475 Int) Bool)

(assert (=> b!254619 (= e!158310 (forall!893 (xs!3832 (c!48227 lt!103872)) lambda!8478))))

(declare-fun b!254621 () Bool)

(assert (=> b!254621 (= e!158309 (forall!890 (right!3383 (c!48227 lt!103872)) lambda!8478))))

(assert (= (and d!72229 (not res!117839)) b!254618))

(assert (= (and b!254618 c!48269) b!254619))

(assert (= (and b!254618 (not c!48269)) b!254620))

(assert (= (and b!254620 res!117840) b!254621))

(assert (=> d!72229 m!313853))

(assert (=> d!72229 m!313853))

(declare-fun m!314085 () Bool)

(assert (=> d!72229 m!314085))

(declare-fun m!314087 () Bool)

(assert (=> b!254620 m!314087))

(declare-fun m!314089 () Bool)

(assert (=> b!254620 m!314089))

(assert (=> b!254620 m!314087))

(assert (=> b!254620 m!314089))

(declare-fun m!314091 () Bool)

(assert (=> b!254620 m!314091))

(declare-fun m!314093 () Bool)

(assert (=> b!254620 m!314093))

(declare-fun m!314095 () Bool)

(assert (=> b!254619 m!314095))

(declare-fun m!314097 () Bool)

(assert (=> b!254621 m!314097))

(assert (=> d!72069 d!72229))

(declare-fun d!72235 () Bool)

(declare-fun lt!103959 () Int)

(assert (=> d!72235 (>= lt!103959 0)))

(declare-fun e!158317 () Int)

(assert (=> d!72235 (= lt!103959 e!158317)))

(declare-fun c!48272 () Bool)

(assert (=> d!72235 (= c!48272 ((_ is Nil!3715) (list!1483 lt!103872)))))

(assert (=> d!72235 (= (size!2948 (list!1483 lt!103872)) lt!103959)))

(declare-fun b!254629 () Bool)

(assert (=> b!254629 (= e!158317 0)))

(declare-fun b!254630 () Bool)

(assert (=> b!254630 (= e!158317 (+ 1 (size!2948 (t!35997 (list!1483 lt!103872)))))))

(assert (= (and d!72235 c!48272) b!254629))

(assert (= (and d!72235 (not c!48272)) b!254630))

(declare-fun m!314105 () Bool)

(assert (=> b!254630 m!314105))

(assert (=> d!72095 d!72235))

(assert (=> d!72095 d!72115))

(declare-fun d!72239 () Bool)

(declare-fun lt!103962 () Int)

(assert (=> d!72239 (= lt!103962 (size!2948 (list!1486 (c!48227 lt!103872))))))

(assert (=> d!72239 (= lt!103962 (ite ((_ is Empty!1237) (c!48227 lt!103872)) 0 (ite ((_ is Leaf!1930) (c!48227 lt!103872)) (csize!2705 (c!48227 lt!103872)) (csize!2704 (c!48227 lt!103872)))))))

(assert (=> d!72239 (= (size!2949 (c!48227 lt!103872)) lt!103962)))

(declare-fun bs!27546 () Bool)

(assert (= bs!27546 d!72239))

(assert (=> bs!27546 m!313853))

(assert (=> bs!27546 m!313853))

(declare-fun m!314107 () Bool)

(assert (=> bs!27546 m!314107))

(assert (=> d!72095 d!72239))

(declare-fun d!72241 () Bool)

(declare-fun res!117848 () Bool)

(declare-fun e!158324 () Bool)

(assert (=> d!72241 (=> res!117848 e!158324)))

(assert (=> d!72241 (= res!117848 (not ((_ is Cons!3716) (t!35998 rules!1920))))))

(assert (=> d!72241 (= (sepAndNonSepRulesDisjointChars!296 rules!1920 (t!35998 rules!1920)) e!158324)))

(declare-fun b!254639 () Bool)

(declare-fun e!158325 () Bool)

(assert (=> b!254639 (= e!158324 e!158325)))

(declare-fun res!117849 () Bool)

(assert (=> b!254639 (=> (not res!117849) (not e!158325))))

(assert (=> b!254639 (= res!117849 (ruleDisjointCharsFromAllFromOtherType!100 (h!9113 (t!35998 rules!1920)) rules!1920))))

(declare-fun b!254640 () Bool)

(assert (=> b!254640 (= e!158325 (sepAndNonSepRulesDisjointChars!296 rules!1920 (t!35998 (t!35998 rules!1920))))))

(assert (= (and d!72241 (not res!117848)) b!254639))

(assert (= (and b!254639 res!117849) b!254640))

(declare-fun m!314109 () Bool)

(assert (=> b!254639 m!314109))

(declare-fun m!314111 () Bool)

(assert (=> b!254640 m!314111))

(assert (=> b!254289 d!72241))

(declare-fun b!254641 () Bool)

(declare-fun e!158326 () Bool)

(declare-fun tp!98248 () Bool)

(assert (=> b!254641 (= e!158326 (and tp_is_empty!1777 tp!98248))))

(assert (=> b!254389 (= tp!98179 e!158326)))

(assert (= (and b!254389 ((_ is Cons!3714) (t!35996 (originalCharacters!750 (h!9112 tokens!465))))) b!254641))

(declare-fun b!254643 () Bool)

(declare-fun e!158327 () Bool)

(declare-fun tp!98252 () Bool)

(declare-fun tp!98253 () Bool)

(assert (=> b!254643 (= e!158327 (and tp!98252 tp!98253))))

(declare-fun b!254645 () Bool)

(declare-fun tp!98250 () Bool)

(declare-fun tp!98249 () Bool)

(assert (=> b!254645 (= e!158327 (and tp!98250 tp!98249))))

(assert (=> b!254393 (= tp!98181 e!158327)))

(declare-fun b!254642 () Bool)

(assert (=> b!254642 (= e!158327 tp_is_empty!1777)))

(declare-fun b!254644 () Bool)

(declare-fun tp!98251 () Bool)

(assert (=> b!254644 (= e!158327 tp!98251)))

(assert (= (and b!254393 ((_ is ElementMatch!931) (regOne!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254642))

(assert (= (and b!254393 ((_ is Concat!1661) (regOne!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254643))

(assert (= (and b!254393 ((_ is Star!931) (regOne!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254644))

(assert (= (and b!254393 ((_ is Union!931) (regOne!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254645))

(declare-fun b!254647 () Bool)

(declare-fun e!158328 () Bool)

(declare-fun tp!98257 () Bool)

(declare-fun tp!98258 () Bool)

(assert (=> b!254647 (= e!158328 (and tp!98257 tp!98258))))

(declare-fun b!254649 () Bool)

(declare-fun tp!98255 () Bool)

(declare-fun tp!98254 () Bool)

(assert (=> b!254649 (= e!158328 (and tp!98255 tp!98254))))

(assert (=> b!254393 (= tp!98180 e!158328)))

(declare-fun b!254646 () Bool)

(assert (=> b!254646 (= e!158328 tp_is_empty!1777)))

(declare-fun b!254648 () Bool)

(declare-fun tp!98256 () Bool)

(assert (=> b!254648 (= e!158328 tp!98256)))

(assert (= (and b!254393 ((_ is ElementMatch!931) (regTwo!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254646))

(assert (= (and b!254393 ((_ is Concat!1661) (regTwo!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254647))

(assert (= (and b!254393 ((_ is Star!931) (regTwo!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254648))

(assert (= (and b!254393 ((_ is Union!931) (regTwo!2375 (regex!707 (rule!1288 separatorToken!170))))) b!254649))

(declare-fun b!254651 () Bool)

(declare-fun e!158329 () Bool)

(declare-fun tp!98262 () Bool)

(declare-fun tp!98263 () Bool)

(assert (=> b!254651 (= e!158329 (and tp!98262 tp!98263))))

(declare-fun b!254653 () Bool)

(declare-fun tp!98260 () Bool)

(declare-fun tp!98259 () Bool)

(assert (=> b!254653 (= e!158329 (and tp!98260 tp!98259))))

(assert (=> b!254374 (= tp!98160 e!158329)))

(declare-fun b!254650 () Bool)

(assert (=> b!254650 (= e!158329 tp_is_empty!1777)))

(declare-fun b!254652 () Bool)

(declare-fun tp!98261 () Bool)

(assert (=> b!254652 (= e!158329 tp!98261)))

(assert (= (and b!254374 ((_ is ElementMatch!931) (regOne!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254650))

(assert (= (and b!254374 ((_ is Concat!1661) (regOne!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254651))

(assert (= (and b!254374 ((_ is Star!931) (regOne!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254652))

(assert (= (and b!254374 ((_ is Union!931) (regOne!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254653))

(declare-fun b!254655 () Bool)

(declare-fun e!158330 () Bool)

(declare-fun tp!98267 () Bool)

(declare-fun tp!98268 () Bool)

(assert (=> b!254655 (= e!158330 (and tp!98267 tp!98268))))

(declare-fun b!254657 () Bool)

(declare-fun tp!98265 () Bool)

(declare-fun tp!98264 () Bool)

(assert (=> b!254657 (= e!158330 (and tp!98265 tp!98264))))

(assert (=> b!254374 (= tp!98159 e!158330)))

(declare-fun b!254654 () Bool)

(assert (=> b!254654 (= e!158330 tp_is_empty!1777)))

(declare-fun b!254656 () Bool)

(declare-fun tp!98266 () Bool)

(assert (=> b!254656 (= e!158330 tp!98266)))

(assert (= (and b!254374 ((_ is ElementMatch!931) (regTwo!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254654))

(assert (= (and b!254374 ((_ is Concat!1661) (regTwo!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254655))

(assert (= (and b!254374 ((_ is Star!931) (regTwo!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254656))

(assert (= (and b!254374 ((_ is Union!931) (regTwo!2375 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254657))

(declare-fun b!254659 () Bool)

(declare-fun e!158331 () Bool)

(declare-fun tp!98272 () Bool)

(declare-fun tp!98273 () Bool)

(assert (=> b!254659 (= e!158331 (and tp!98272 tp!98273))))

(declare-fun b!254661 () Bool)

(declare-fun tp!98270 () Bool)

(declare-fun tp!98269 () Bool)

(assert (=> b!254661 (= e!158331 (and tp!98270 tp!98269))))

(assert (=> b!254397 (= tp!98186 e!158331)))

(declare-fun b!254658 () Bool)

(assert (=> b!254658 (= e!158331 tp_is_empty!1777)))

(declare-fun b!254660 () Bool)

(declare-fun tp!98271 () Bool)

(assert (=> b!254660 (= e!158331 tp!98271)))

(assert (= (and b!254397 ((_ is ElementMatch!931) (regOne!2375 (regex!707 (h!9113 rules!1920))))) b!254658))

(assert (= (and b!254397 ((_ is Concat!1661) (regOne!2375 (regex!707 (h!9113 rules!1920))))) b!254659))

(assert (= (and b!254397 ((_ is Star!931) (regOne!2375 (regex!707 (h!9113 rules!1920))))) b!254660))

(assert (= (and b!254397 ((_ is Union!931) (regOne!2375 (regex!707 (h!9113 rules!1920))))) b!254661))

(declare-fun b!254663 () Bool)

(declare-fun e!158332 () Bool)

(declare-fun tp!98277 () Bool)

(declare-fun tp!98278 () Bool)

(assert (=> b!254663 (= e!158332 (and tp!98277 tp!98278))))

(declare-fun b!254665 () Bool)

(declare-fun tp!98275 () Bool)

(declare-fun tp!98274 () Bool)

(assert (=> b!254665 (= e!158332 (and tp!98275 tp!98274))))

(assert (=> b!254397 (= tp!98185 e!158332)))

(declare-fun b!254662 () Bool)

(assert (=> b!254662 (= e!158332 tp_is_empty!1777)))

(declare-fun b!254664 () Bool)

(declare-fun tp!98276 () Bool)

(assert (=> b!254664 (= e!158332 tp!98276)))

(assert (= (and b!254397 ((_ is ElementMatch!931) (regTwo!2375 (regex!707 (h!9113 rules!1920))))) b!254662))

(assert (= (and b!254397 ((_ is Concat!1661) (regTwo!2375 (regex!707 (h!9113 rules!1920))))) b!254663))

(assert (= (and b!254397 ((_ is Star!931) (regTwo!2375 (regex!707 (h!9113 rules!1920))))) b!254664))

(assert (= (and b!254397 ((_ is Union!931) (regTwo!2375 (regex!707 (h!9113 rules!1920))))) b!254665))

(declare-fun b!254667 () Bool)

(declare-fun e!158333 () Bool)

(declare-fun tp!98282 () Bool)

(declare-fun tp!98283 () Bool)

(assert (=> b!254667 (= e!158333 (and tp!98282 tp!98283))))

(declare-fun b!254669 () Bool)

(declare-fun tp!98280 () Bool)

(declare-fun tp!98279 () Bool)

(assert (=> b!254669 (= e!158333 (and tp!98280 tp!98279))))

(assert (=> b!254392 (= tp!98182 e!158333)))

(declare-fun b!254666 () Bool)

(assert (=> b!254666 (= e!158333 tp_is_empty!1777)))

(declare-fun b!254668 () Bool)

(declare-fun tp!98281 () Bool)

(assert (=> b!254668 (= e!158333 tp!98281)))

(assert (= (and b!254392 ((_ is ElementMatch!931) (reg!1260 (regex!707 (rule!1288 separatorToken!170))))) b!254666))

(assert (= (and b!254392 ((_ is Concat!1661) (reg!1260 (regex!707 (rule!1288 separatorToken!170))))) b!254667))

(assert (= (and b!254392 ((_ is Star!931) (reg!1260 (regex!707 (rule!1288 separatorToken!170))))) b!254668))

(assert (= (and b!254392 ((_ is Union!931) (reg!1260 (regex!707 (rule!1288 separatorToken!170))))) b!254669))

(declare-fun b!254675 () Bool)

(declare-fun e!158337 () Bool)

(declare-fun tp!98287 () Bool)

(declare-fun tp!98288 () Bool)

(assert (=> b!254675 (= e!158337 (and tp!98287 tp!98288))))

(declare-fun b!254677 () Bool)

(declare-fun tp!98285 () Bool)

(declare-fun tp!98284 () Bool)

(assert (=> b!254677 (= e!158337 (and tp!98285 tp!98284))))

(assert (=> b!254373 (= tp!98161 e!158337)))

(declare-fun b!254674 () Bool)

(assert (=> b!254674 (= e!158337 tp_is_empty!1777)))

(declare-fun b!254676 () Bool)

(declare-fun tp!98286 () Bool)

(assert (=> b!254676 (= e!158337 tp!98286)))

(assert (= (and b!254373 ((_ is ElementMatch!931) (reg!1260 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254674))

(assert (= (and b!254373 ((_ is Concat!1661) (reg!1260 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254675))

(assert (= (and b!254373 ((_ is Star!931) (reg!1260 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254676))

(assert (= (and b!254373 ((_ is Union!931) (reg!1260 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254677))

(declare-fun b!254680 () Bool)

(declare-fun e!158340 () Bool)

(assert (=> b!254680 (= e!158340 true)))

(declare-fun b!254679 () Bool)

(declare-fun e!158339 () Bool)

(assert (=> b!254679 (= e!158339 e!158340)))

(declare-fun b!254678 () Bool)

(declare-fun e!158338 () Bool)

(assert (=> b!254678 (= e!158338 e!158339)))

(assert (=> b!254339 e!158338))

(assert (= b!254679 b!254680))

(assert (= b!254678 b!254679))

(assert (= (and b!254339 ((_ is Cons!3716) (t!35998 rules!1920))) b!254678))

(assert (=> b!254680 (< (dynLambda!1845 order!2785 (toValue!1418 (transformation!707 (h!9113 (t!35998 rules!1920))))) (dynLambda!1846 order!2787 lambda!8488))))

(assert (=> b!254680 (< (dynLambda!1847 order!2789 (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920))))) (dynLambda!1846 order!2787 lambda!8488))))

(declare-fun b!254683 () Bool)

(declare-fun e!158342 () Bool)

(declare-fun tp!98292 () Bool)

(declare-fun tp!98293 () Bool)

(assert (=> b!254683 (= e!158342 (and tp!98292 tp!98293))))

(declare-fun b!254685 () Bool)

(declare-fun tp!98290 () Bool)

(declare-fun tp!98289 () Bool)

(assert (=> b!254685 (= e!158342 (and tp!98290 tp!98289))))

(assert (=> b!254354 (= tp!98144 e!158342)))

(declare-fun b!254682 () Bool)

(assert (=> b!254682 (= e!158342 tp_is_empty!1777)))

(declare-fun b!254684 () Bool)

(declare-fun tp!98291 () Bool)

(assert (=> b!254684 (= e!158342 tp!98291)))

(assert (= (and b!254354 ((_ is ElementMatch!931) (regex!707 (h!9113 (t!35998 rules!1920))))) b!254682))

(assert (= (and b!254354 ((_ is Concat!1661) (regex!707 (h!9113 (t!35998 rules!1920))))) b!254683))

(assert (= (and b!254354 ((_ is Star!931) (regex!707 (h!9113 (t!35998 rules!1920))))) b!254684))

(assert (= (and b!254354 ((_ is Union!931) (regex!707 (h!9113 (t!35998 rules!1920))))) b!254685))

(declare-fun b!254688 () Bool)

(declare-fun b_free!9517 () Bool)

(declare-fun b_next!9517 () Bool)

(assert (=> b!254688 (= b_free!9517 (not b_next!9517))))

(declare-fun tp!98297 () Bool)

(declare-fun b_and!19449 () Bool)

(assert (=> b!254688 (= tp!98297 b_and!19449)))

(declare-fun b_free!9519 () Bool)

(declare-fun b_next!9519 () Bool)

(assert (=> b!254688 (= b_free!9519 (not b_next!9519))))

(declare-fun tb!13333 () Bool)

(declare-fun t!36078 () Bool)

(assert (=> (and b!254688 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 (t!35998 rules!1920))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36078) tb!13333))

(declare-fun result!16748 () Bool)

(assert (= result!16748 result!16668))

(assert (=> b!254229 t!36078))

(declare-fun t!36080 () Bool)

(declare-fun tb!13335 () Bool)

(assert (=> (and b!254688 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 (t!35998 rules!1920))))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36080) tb!13335))

(declare-fun result!16750 () Bool)

(assert (= result!16750 result!16676))

(assert (=> b!254281 t!36080))

(declare-fun tb!13337 () Bool)

(declare-fun t!36082 () Bool)

(assert (=> (and b!254688 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 (t!35998 rules!1920))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36082) tb!13337))

(declare-fun result!16752 () Bool)

(assert (= result!16752 result!16728))

(assert (=> b!254492 t!36082))

(declare-fun b_and!19451 () Bool)

(declare-fun tp!98295 () Bool)

(assert (=> b!254688 (= tp!98295 (and (=> t!36078 result!16748) (=> t!36080 result!16750) (=> t!36082 result!16752) b_and!19451))))

(declare-fun e!158343 () Bool)

(assert (=> b!254688 (= e!158343 (and tp!98297 tp!98295))))

(declare-fun e!158346 () Bool)

(declare-fun tp!98296 () Bool)

(declare-fun b!254687 () Bool)

(assert (=> b!254687 (= e!158346 (and tp!98296 (inv!4575 (tag!915 (h!9113 (t!35998 (t!35998 rules!1920))))) (inv!4579 (transformation!707 (h!9113 (t!35998 (t!35998 rules!1920))))) e!158343))))

(declare-fun b!254686 () Bool)

(declare-fun e!158345 () Bool)

(declare-fun tp!98294 () Bool)

(assert (=> b!254686 (= e!158345 (and e!158346 tp!98294))))

(assert (=> b!254353 (= tp!98142 e!158345)))

(assert (= b!254687 b!254688))

(assert (= b!254686 b!254687))

(assert (= (and b!254353 ((_ is Cons!3716) (t!35998 (t!35998 rules!1920)))) b!254686))

(declare-fun m!314125 () Bool)

(assert (=> b!254687 m!314125))

(declare-fun m!314127 () Bool)

(assert (=> b!254687 m!314127))

(declare-fun b!254692 () Bool)

(declare-fun e!158350 () Bool)

(declare-fun tp!98298 () Bool)

(assert (=> b!254692 (= e!158350 (and tp_is_empty!1777 tp!98298))))

(assert (=> b!254360 (= tp!98148 e!158350)))

(assert (= (and b!254360 ((_ is Cons!3714) (t!35996 (originalCharacters!750 separatorToken!170)))) b!254692))

(declare-fun b!254693 () Bool)

(declare-fun e!158351 () Bool)

(declare-fun tp!98299 () Bool)

(assert (=> b!254693 (= e!158351 (and tp_is_empty!1777 tp!98299))))

(assert (=> b!254386 (= tp!98177 e!158351)))

(assert (= (and b!254386 ((_ is Cons!3714) (originalCharacters!750 (h!9112 (t!35997 tokens!465))))) b!254693))

(declare-fun b!254697 () Bool)

(declare-fun b_free!9521 () Bool)

(declare-fun b_next!9521 () Bool)

(assert (=> b!254697 (= b_free!9521 (not b_next!9521))))

(declare-fun tp!98300 () Bool)

(declare-fun b_and!19453 () Bool)

(assert (=> b!254697 (= tp!98300 b_and!19453)))

(declare-fun b_free!9523 () Bool)

(declare-fun b_next!9523 () Bool)

(assert (=> b!254697 (= b_free!9523 (not b_next!9523))))

(declare-fun t!36084 () Bool)

(declare-fun tb!13339 () Bool)

(assert (=> (and b!254697 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465))))) t!36084) tb!13339))

(declare-fun result!16754 () Bool)

(assert (= result!16754 result!16668))

(assert (=> b!254229 t!36084))

(declare-fun tb!13341 () Bool)

(declare-fun t!36086 () Bool)

(assert (=> (and b!254697 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) (toChars!1277 (transformation!707 (rule!1288 separatorToken!170)))) t!36086) tb!13341))

(declare-fun result!16756 () Bool)

(assert (= result!16756 result!16676))

(assert (=> b!254281 t!36086))

(declare-fun t!36088 () Bool)

(declare-fun tb!13343 () Bool)

(assert (=> (and b!254697 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) t!36088) tb!13343))

(declare-fun result!16758 () Bool)

(assert (= result!16758 result!16728))

(assert (=> b!254492 t!36088))

(declare-fun b_and!19455 () Bool)

(declare-fun tp!98301 () Bool)

(assert (=> b!254697 (= tp!98301 (and (=> t!36084 result!16754) (=> t!36086 result!16756) (=> t!36088 result!16758) b_and!19455))))

(declare-fun e!158354 () Bool)

(declare-fun b!254694 () Bool)

(declare-fun e!158352 () Bool)

(declare-fun tp!98304 () Bool)

(assert (=> b!254694 (= e!158354 (and (inv!4578 (h!9112 (t!35997 (t!35997 tokens!465)))) e!158352 tp!98304))))

(declare-fun b!254696 () Bool)

(declare-fun e!158357 () Bool)

(declare-fun e!158356 () Bool)

(declare-fun tp!98302 () Bool)

(assert (=> b!254696 (= e!158356 (and tp!98302 (inv!4575 (tag!915 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) (inv!4579 (transformation!707 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) e!158357))))

(assert (=> b!254697 (= e!158357 (and tp!98300 tp!98301))))

(assert (=> b!254385 (= tp!98178 e!158354)))

(declare-fun b!254695 () Bool)

(declare-fun tp!98303 () Bool)

(assert (=> b!254695 (= e!158352 (and (inv!21 (value!24465 (h!9112 (t!35997 (t!35997 tokens!465))))) e!158356 tp!98303))))

(assert (= b!254696 b!254697))

(assert (= b!254695 b!254696))

(assert (= b!254694 b!254695))

(assert (= (and b!254385 ((_ is Cons!3715) (t!35997 (t!35997 tokens!465)))) b!254694))

(declare-fun m!314139 () Bool)

(assert (=> b!254694 m!314139))

(declare-fun m!314141 () Bool)

(assert (=> b!254696 m!314141))

(declare-fun m!314143 () Bool)

(assert (=> b!254696 m!314143))

(declare-fun m!314145 () Bool)

(assert (=> b!254695 m!314145))

(declare-fun b!254717 () Bool)

(declare-fun tp!98313 () Bool)

(declare-fun e!158368 () Bool)

(declare-fun tp!98311 () Bool)

(assert (=> b!254717 (= e!158368 (and (inv!4580 (left!3052 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))) tp!98313 (inv!4580 (right!3382 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))) tp!98311))))

(declare-fun b!254719 () Bool)

(declare-fun e!158369 () Bool)

(declare-fun tp!98312 () Bool)

(assert (=> b!254719 (= e!158369 tp!98312)))

(declare-fun b!254718 () Bool)

(declare-fun inv!4588 (IArray!2473) Bool)

(assert (=> b!254718 (= e!158368 (and (inv!4588 (xs!3831 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))) e!158369))))

(assert (=> b!254235 (= tp!98128 (and (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465))))) e!158368))))

(assert (= (and b!254235 ((_ is Node!1236) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))) b!254717))

(assert (= b!254718 b!254719))

(assert (= (and b!254235 ((_ is Leaf!1929) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (value!24465 (h!9112 tokens!465)))))) b!254718))

(declare-fun m!314149 () Bool)

(assert (=> b!254717 m!314149))

(declare-fun m!314151 () Bool)

(assert (=> b!254717 m!314151))

(declare-fun m!314153 () Bool)

(assert (=> b!254718 m!314153))

(assert (=> b!254235 m!313637))

(declare-fun b!254721 () Bool)

(declare-fun e!158370 () Bool)

(declare-fun tp!98317 () Bool)

(declare-fun tp!98318 () Bool)

(assert (=> b!254721 (= e!158370 (and tp!98317 tp!98318))))

(declare-fun b!254723 () Bool)

(declare-fun tp!98315 () Bool)

(declare-fun tp!98314 () Bool)

(assert (=> b!254723 (= e!158370 (and tp!98315 tp!98314))))

(assert (=> b!254396 (= tp!98187 e!158370)))

(declare-fun b!254720 () Bool)

(assert (=> b!254720 (= e!158370 tp_is_empty!1777)))

(declare-fun b!254722 () Bool)

(declare-fun tp!98316 () Bool)

(assert (=> b!254722 (= e!158370 tp!98316)))

(assert (= (and b!254396 ((_ is ElementMatch!931) (reg!1260 (regex!707 (h!9113 rules!1920))))) b!254720))

(assert (= (and b!254396 ((_ is Concat!1661) (reg!1260 (regex!707 (h!9113 rules!1920))))) b!254721))

(assert (= (and b!254396 ((_ is Star!931) (reg!1260 (regex!707 (h!9113 rules!1920))))) b!254722))

(assert (= (and b!254396 ((_ is Union!931) (reg!1260 (regex!707 (h!9113 rules!1920))))) b!254723))

(declare-fun b!254725 () Bool)

(declare-fun e!158371 () Bool)

(declare-fun tp!98322 () Bool)

(declare-fun tp!98323 () Bool)

(assert (=> b!254725 (= e!158371 (and tp!98322 tp!98323))))

(declare-fun b!254727 () Bool)

(declare-fun tp!98320 () Bool)

(declare-fun tp!98319 () Bool)

(assert (=> b!254727 (= e!158371 (and tp!98320 tp!98319))))

(assert (=> b!254391 (= tp!98183 e!158371)))

(declare-fun b!254724 () Bool)

(assert (=> b!254724 (= e!158371 tp_is_empty!1777)))

(declare-fun b!254726 () Bool)

(declare-fun tp!98321 () Bool)

(assert (=> b!254726 (= e!158371 tp!98321)))

(assert (= (and b!254391 ((_ is ElementMatch!931) (regOne!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254724))

(assert (= (and b!254391 ((_ is Concat!1661) (regOne!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254725))

(assert (= (and b!254391 ((_ is Star!931) (regOne!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254726))

(assert (= (and b!254391 ((_ is Union!931) (regOne!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254727))

(declare-fun b!254729 () Bool)

(declare-fun e!158372 () Bool)

(declare-fun tp!98327 () Bool)

(declare-fun tp!98328 () Bool)

(assert (=> b!254729 (= e!158372 (and tp!98327 tp!98328))))

(declare-fun b!254731 () Bool)

(declare-fun tp!98325 () Bool)

(declare-fun tp!98324 () Bool)

(assert (=> b!254731 (= e!158372 (and tp!98325 tp!98324))))

(assert (=> b!254391 (= tp!98184 e!158372)))

(declare-fun b!254728 () Bool)

(assert (=> b!254728 (= e!158372 tp_is_empty!1777)))

(declare-fun b!254730 () Bool)

(declare-fun tp!98326 () Bool)

(assert (=> b!254730 (= e!158372 tp!98326)))

(assert (= (and b!254391 ((_ is ElementMatch!931) (regTwo!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254728))

(assert (= (and b!254391 ((_ is Concat!1661) (regTwo!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254729))

(assert (= (and b!254391 ((_ is Star!931) (regTwo!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254730))

(assert (= (and b!254391 ((_ is Union!931) (regTwo!2374 (regex!707 (rule!1288 separatorToken!170))))) b!254731))

(declare-fun b!254733 () Bool)

(declare-fun e!158373 () Bool)

(declare-fun tp!98332 () Bool)

(declare-fun tp!98333 () Bool)

(assert (=> b!254733 (= e!158373 (and tp!98332 tp!98333))))

(declare-fun b!254735 () Bool)

(declare-fun tp!98330 () Bool)

(declare-fun tp!98329 () Bool)

(assert (=> b!254735 (= e!158373 (and tp!98330 tp!98329))))

(assert (=> b!254372 (= tp!98162 e!158373)))

(declare-fun b!254732 () Bool)

(assert (=> b!254732 (= e!158373 tp_is_empty!1777)))

(declare-fun b!254734 () Bool)

(declare-fun tp!98331 () Bool)

(assert (=> b!254734 (= e!158373 tp!98331)))

(assert (= (and b!254372 ((_ is ElementMatch!931) (regOne!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254732))

(assert (= (and b!254372 ((_ is Concat!1661) (regOne!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254733))

(assert (= (and b!254372 ((_ is Star!931) (regOne!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254734))

(assert (= (and b!254372 ((_ is Union!931) (regOne!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254735))

(declare-fun b!254737 () Bool)

(declare-fun e!158374 () Bool)

(declare-fun tp!98337 () Bool)

(declare-fun tp!98338 () Bool)

(assert (=> b!254737 (= e!158374 (and tp!98337 tp!98338))))

(declare-fun b!254739 () Bool)

(declare-fun tp!98335 () Bool)

(declare-fun tp!98334 () Bool)

(assert (=> b!254739 (= e!158374 (and tp!98335 tp!98334))))

(assert (=> b!254372 (= tp!98163 e!158374)))

(declare-fun b!254736 () Bool)

(assert (=> b!254736 (= e!158374 tp_is_empty!1777)))

(declare-fun b!254738 () Bool)

(declare-fun tp!98336 () Bool)

(assert (=> b!254738 (= e!158374 tp!98336)))

(assert (= (and b!254372 ((_ is ElementMatch!931) (regTwo!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254736))

(assert (= (and b!254372 ((_ is Concat!1661) (regTwo!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254737))

(assert (= (and b!254372 ((_ is Star!931) (regTwo!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254738))

(assert (= (and b!254372 ((_ is Union!931) (regTwo!2374 (regex!707 (rule!1288 (h!9112 tokens!465)))))) b!254739))

(declare-fun b!254741 () Bool)

(declare-fun e!158375 () Bool)

(declare-fun tp!98342 () Bool)

(declare-fun tp!98343 () Bool)

(assert (=> b!254741 (= e!158375 (and tp!98342 tp!98343))))

(declare-fun b!254743 () Bool)

(declare-fun tp!98340 () Bool)

(declare-fun tp!98339 () Bool)

(assert (=> b!254743 (= e!158375 (and tp!98340 tp!98339))))

(assert (=> b!254395 (= tp!98188 e!158375)))

(declare-fun b!254740 () Bool)

(assert (=> b!254740 (= e!158375 tp_is_empty!1777)))

(declare-fun b!254742 () Bool)

(declare-fun tp!98341 () Bool)

(assert (=> b!254742 (= e!158375 tp!98341)))

(assert (= (and b!254395 ((_ is ElementMatch!931) (regOne!2374 (regex!707 (h!9113 rules!1920))))) b!254740))

(assert (= (and b!254395 ((_ is Concat!1661) (regOne!2374 (regex!707 (h!9113 rules!1920))))) b!254741))

(assert (= (and b!254395 ((_ is Star!931) (regOne!2374 (regex!707 (h!9113 rules!1920))))) b!254742))

(assert (= (and b!254395 ((_ is Union!931) (regOne!2374 (regex!707 (h!9113 rules!1920))))) b!254743))

(declare-fun b!254745 () Bool)

(declare-fun e!158376 () Bool)

(declare-fun tp!98347 () Bool)

(declare-fun tp!98348 () Bool)

(assert (=> b!254745 (= e!158376 (and tp!98347 tp!98348))))

(declare-fun b!254747 () Bool)

(declare-fun tp!98345 () Bool)

(declare-fun tp!98344 () Bool)

(assert (=> b!254747 (= e!158376 (and tp!98345 tp!98344))))

(assert (=> b!254395 (= tp!98189 e!158376)))

(declare-fun b!254744 () Bool)

(assert (=> b!254744 (= e!158376 tp_is_empty!1777)))

(declare-fun b!254746 () Bool)

(declare-fun tp!98346 () Bool)

(assert (=> b!254746 (= e!158376 tp!98346)))

(assert (= (and b!254395 ((_ is ElementMatch!931) (regTwo!2374 (regex!707 (h!9113 rules!1920))))) b!254744))

(assert (= (and b!254395 ((_ is Concat!1661) (regTwo!2374 (regex!707 (h!9113 rules!1920))))) b!254745))

(assert (= (and b!254395 ((_ is Star!931) (regTwo!2374 (regex!707 (h!9113 rules!1920))))) b!254746))

(assert (= (and b!254395 ((_ is Union!931) (regTwo!2374 (regex!707 (h!9113 rules!1920))))) b!254747))

(declare-fun tp!98351 () Bool)

(declare-fun tp!98349 () Bool)

(declare-fun b!254748 () Bool)

(declare-fun e!158377 () Bool)

(assert (=> b!254748 (= e!158377 (and (inv!4580 (left!3052 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))) tp!98351 (inv!4580 (right!3382 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))) tp!98349))))

(declare-fun b!254750 () Bool)

(declare-fun e!158378 () Bool)

(declare-fun tp!98350 () Bool)

(assert (=> b!254750 (= e!158378 tp!98350)))

(declare-fun b!254749 () Bool)

(assert (=> b!254749 (= e!158377 (and (inv!4588 (xs!3831 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))) e!158378))))

(assert (=> b!254283 (= tp!98129 (and (inv!4580 (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170)))) e!158377))))

(assert (= (and b!254283 ((_ is Node!1236) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))) b!254748))

(assert (= b!254749 b!254750))

(assert (= (and b!254283 ((_ is Leaf!1929) (c!48225 (dynLambda!1840 (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (value!24465 separatorToken!170))))) b!254749))

(declare-fun m!314157 () Bool)

(assert (=> b!254748 m!314157))

(declare-fun m!314159 () Bool)

(assert (=> b!254748 m!314159))

(declare-fun m!314161 () Bool)

(assert (=> b!254749 m!314161))

(assert (=> b!254283 m!313701))

(declare-fun b!254752 () Bool)

(declare-fun e!158379 () Bool)

(declare-fun tp!98355 () Bool)

(declare-fun tp!98356 () Bool)

(assert (=> b!254752 (= e!158379 (and tp!98355 tp!98356))))

(declare-fun b!254754 () Bool)

(declare-fun tp!98353 () Bool)

(declare-fun tp!98352 () Bool)

(assert (=> b!254754 (= e!158379 (and tp!98353 tp!98352))))

(assert (=> b!254387 (= tp!98176 e!158379)))

(declare-fun b!254751 () Bool)

(assert (=> b!254751 (= e!158379 tp_is_empty!1777)))

(declare-fun b!254753 () Bool)

(declare-fun tp!98354 () Bool)

(assert (=> b!254753 (= e!158379 tp!98354)))

(assert (= (and b!254387 ((_ is ElementMatch!931) (regex!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) b!254751))

(assert (= (and b!254387 ((_ is Concat!1661) (regex!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) b!254752))

(assert (= (and b!254387 ((_ is Star!931) (regex!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) b!254753))

(assert (= (and b!254387 ((_ is Union!931) (regex!707 (rule!1288 (h!9112 (t!35997 tokens!465)))))) b!254754))

(declare-fun b_lambda!7631 () Bool)

(assert (= b_lambda!7629 (or b!254191 b_lambda!7631)))

(declare-fun bs!27551 () Bool)

(declare-fun d!72269 () Bool)

(assert (= bs!27551 (and d!72269 b!254191)))

(assert (=> bs!27551 (= (dynLambda!1841 lambda!8478 (h!9112 (list!1483 lt!103872))) (not (isSeparator!707 (rule!1288 (h!9112 (list!1483 lt!103872))))))))

(assert (=> b!254602 d!72269))

(declare-fun b_lambda!7633 () Bool)

(assert (= b_lambda!7621 (or (and b!254688 b_free!9519 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 (t!35998 rules!1920))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) (and b!254199 b_free!9495 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 tokens!465)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) (and b!254189 b_free!9491 (= (toChars!1277 (transformation!707 (h!9113 rules!1920))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) (and b!254388 b_free!9507) (and b!254355 b_free!9503 (= (toChars!1277 (transformation!707 (h!9113 (t!35998 rules!1920)))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) (and b!254197 b_free!9499 (= (toChars!1277 (transformation!707 (rule!1288 separatorToken!170))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) (and b!254697 b_free!9523 (= (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 (t!35997 tokens!465)))))) (toChars!1277 (transformation!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))) b_lambda!7633)))

(declare-fun b_lambda!7635 () Bool)

(assert (= b_lambda!7619 (or d!72077 b_lambda!7635)))

(declare-fun bs!27552 () Bool)

(declare-fun d!72271 () Bool)

(assert (= bs!27552 (and d!72271 d!72077)))

(assert (=> bs!27552 (= (dynLambda!1841 lambda!8488 (h!9112 (list!1483 lt!103872))) (rulesProduceIndividualToken!342 thiss!17480 rules!1920 (h!9112 (list!1483 lt!103872))))))

(assert (=> bs!27552 m!313977))

(assert (=> b!254474 d!72271))

(declare-fun b_lambda!7637 () Bool)

(assert (= b_lambda!7627 (or b!254191 b_lambda!7637)))

(declare-fun bs!27553 () Bool)

(declare-fun d!72273 () Bool)

(assert (= bs!27553 (and d!72273 b!254191)))

(assert (=> bs!27553 (= (dynLambda!1841 lambda!8478 (h!9112 (t!35997 tokens!465))) (not (isSeparator!707 (rule!1288 (h!9112 (t!35997 tokens!465))))))))

(assert (=> b!254579 d!72273))

(check-sat (not b!254535) (not b!254753) (not b!254494) (not b_next!9507) (not b!254737) (not b_next!9505) (not b!254645) (not b!254677) (not b!254521) (not b!254597) (not b!254647) (not b_lambda!7605) (not d!72201) (not b!254729) (not b!254748) (not d!72161) (not b!254730) (not b!254731) b_and!19377 (not b_lambda!7637) (not tb!13313) (not b_lambda!7631) (not b_lambda!7635) (not b_next!9517) (not b!254727) (not b!254573) (not b!254641) (not b!254741) (not b!254487) b_and!19435 (not b!254640) (not b!254696) (not b!254692) (not d!72205) (not b!254750) (not b!254620) (not b!254661) (not d!72163) (not b!254678) (not b!254665) (not b!254501) (not b!254644) (not d!72211) (not b!254735) (not d!72117) b_and!19433 (not b!254649) (not b!254476) (not b!254717) (not b!254630) (not b!254660) (not b!254475) (not b!254726) (not b!254621) (not b!254733) (not b!254493) (not b!254523) (not b!254718) (not b_next!9497) (not b_lambda!7609) (not b!254653) (not b!254652) (not b_lambda!7633) (not b!254473) (not b!254643) (not b_next!9491) (not d!72123) (not d!72199) (not b!254485) b_and!19381 (not b!254685) (not d!72183) (not d!72149) (not b!254548) (not b!254749) (not d!72203) (not b!254549) (not b!254669) (not b!254651) (not d!72229) b_and!19429 (not b!254721) (not b!254492) b_and!19455 (not b!254683) (not b!254510) (not b_next!9495) (not b!254745) (not b!254742) b_and!19437 (not b!254522) (not b_next!9501) (not d!72191) (not b!254743) (not b_next!9493) (not b_next!9489) (not b!254580) (not b!254283) (not b!254695) (not d!72239) (not bm!13434) (not b!254746) (not b!254663) (not b!254747) b_and!19449 (not b!254676) (not b!254572) (not d!72193) (not d!72111) (not d!72131) (not d!72145) b_and!19451 (not b!254668) (not b!254752) (not b_next!9499) (not b!254524) (not d!72143) (not d!72181) (not d!72153) tp_is_empty!1777 (not b!254655) b_and!19413 (not b_lambda!7607) (not b_next!9521) (not b!254482) (not d!72213) (not b_next!9503) (not d!72195) (not b!254723) (not b!254486) (not d!72141) (not d!72125) (not b!254619) (not d!72133) (not b!254603) (not d!72215) (not b!254719) (not b_next!9523) (not b!254754) (not b!254664) (not b!254694) (not b!254656) (not d!72121) (not d!72137) (not b!254594) (not b!254550) (not d!72177) (not d!72147) (not b!254503) (not b!254725) (not b!254734) (not b!254675) b_and!19431 (not b!254667) (not b!254693) (not b!254738) b_and!19417 (not b!254537) (not b!254684) (not b!254659) (not b!254722) (not b!254739) (not d!72139) (not b!254235) (not b!254657) (not d!72115) (not d!72179) (not d!72185) b_and!19453 (not b!254576) b_and!19385 (not bs!27552) (not b!254639) (not b!254538) (not b!254687) (not b_next!9519) (not b!254648) (not b!254686))
(check-sat b_and!19377 b_and!19433 (not b_next!9497) (not b_next!9491) b_and!19381 b_and!19429 (not b_next!9501) b_and!19449 b_and!19451 (not b_next!9499) (not b_next!9503) (not b_next!9523) (not b_next!9519) (not b_next!9507) (not b_next!9505) b_and!19435 (not b_next!9517) b_and!19455 (not b_next!9495) b_and!19437 (not b_next!9493) (not b_next!9489) b_and!19413 (not b_next!9521) b_and!19431 b_and!19417 b_and!19385 b_and!19453)
