; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757198 () Bool)

(assert start!757198)

(declare-fun b!8042529 () Bool)

(declare-fun b_free!135867 () Bool)

(declare-fun b_next!136657 () Bool)

(assert (=> b!8042529 (= b_free!135867 (not b_next!136657))))

(declare-fun tp!2409820 () Bool)

(declare-fun b_and!354303 () Bool)

(assert (=> b!8042529 (= tp!2409820 b_and!354303)))

(declare-fun b_free!135869 () Bool)

(declare-fun b_next!136659 () Bool)

(assert (=> b!8042529 (= b_free!135869 (not b_next!136659))))

(declare-fun tp!2409824 () Bool)

(declare-fun b_and!354305 () Bool)

(assert (=> b!8042529 (= tp!2409824 b_and!354305)))

(declare-fun b!8042530 () Bool)

(declare-fun b_free!135871 () Bool)

(declare-fun b_next!136661 () Bool)

(assert (=> b!8042530 (= b_free!135871 (not b_next!136661))))

(declare-fun tp!2409816 () Bool)

(declare-fun b_and!354307 () Bool)

(assert (=> b!8042530 (= tp!2409816 b_and!354307)))

(declare-fun b_free!135873 () Bool)

(declare-fun b_next!136663 () Bool)

(assert (=> b!8042530 (= b_free!135873 (not b_next!136663))))

(declare-fun tp!2409821 () Bool)

(declare-fun b_and!354309 () Bool)

(assert (=> b!8042530 (= tp!2409821 b_and!354309)))

(declare-fun b!8042524 () Bool)

(declare-fun b_free!135875 () Bool)

(declare-fun b_next!136665 () Bool)

(assert (=> b!8042524 (= b_free!135875 (not b_next!136665))))

(declare-fun tp!2409818 () Bool)

(declare-fun b_and!354311 () Bool)

(assert (=> b!8042524 (= tp!2409818 b_and!354311)))

(declare-fun b_free!135877 () Bool)

(declare-fun b_next!136667 () Bool)

(assert (=> b!8042524 (= b_free!135877 (not b_next!136667))))

(declare-fun tp!2409817 () Bool)

(declare-fun b_and!354313 () Bool)

(assert (=> b!8042524 (= tp!2409817 b_and!354313)))

(declare-fun res!3179130 () Bool)

(declare-fun e!4737501 () Bool)

(assert (=> start!757198 (=> (not res!3179130) (not e!4737501))))

(declare-datatypes ((LexerInterface!8303 0))(
  ( (LexerInterfaceExt!8300 (__x!35347 Int)) (Lexer!8301) )
))
(declare-fun thiss!27104 () LexerInterface!8303)

(assert (=> start!757198 (= res!3179130 (is-Lexer!8301 thiss!27104))))

(assert (=> start!757198 e!4737501))

(declare-fun e!4737510 () Bool)

(assert (=> start!757198 e!4737510))

(declare-fun tp_is_empty!54563 () Bool)

(assert (=> start!757198 tp_is_empty!54563))

(assert (=> start!757198 true))

(declare-fun e!4737502 () Bool)

(assert (=> start!757198 e!4737502))

(declare-fun e!4737503 () Bool)

(assert (=> start!757198 e!4737503))

(declare-datatypes ((C!43906 0))(
  ( (C!43907 (val!32729 Int)) )
))
(declare-datatypes ((List!75281 0))(
  ( (Nil!75155) (Cons!75155 (h!81603 C!43906) (t!391051 List!75281)) )
))
(declare-datatypes ((IArray!32023 0))(
  ( (IArray!32024 (innerList!16069 List!75281)) )
))
(declare-datatypes ((Conc!15981 0))(
  ( (Node!15981 (left!57291 Conc!15981) (right!57621 Conc!15981) (csize!32192 Int) (cheight!16192 Int)) (Leaf!30648 (xs!19379 IArray!32023) (csize!32193 Int)) (Empty!15981) )
))
(declare-datatypes ((String!84940 0))(
  ( (String!84941 (value!291375 String)) )
))
(declare-datatypes ((List!75282 0))(
  ( (Nil!75156) (Cons!75156 (h!81604 (_ BitVec 16)) (t!391052 List!75282)) )
))
(declare-datatypes ((Regex!21784 0))(
  ( (ElementMatch!21784 (c!1475125 C!43906)) (Concat!30817 (regOne!44080 Regex!21784) (regTwo!44080 Regex!21784)) (EmptyExpr!21784) (Star!21784 (reg!22113 Regex!21784)) (EmptyLang!21784) (Union!21784 (regOne!44081 Regex!21784) (regTwo!44081 Regex!21784)) )
))
(declare-datatypes ((TokenValue!9033 0))(
  ( (FloatLiteralValue!18066 (text!63676 List!75282)) (TokenValueExt!9032 (__x!35348 Int)) (Broken!45165 (value!291376 List!75282)) (Object!9158) (End!9033) (Def!9033) (Underscore!9033) (Match!9033) (Else!9033) (Error!9033) (Case!9033) (If!9033) (Extends!9033) (Abstract!9033) (Class!9033) (Val!9033) (DelimiterValue!18066 (del!9093 List!75282)) (KeywordValue!9039 (value!291377 List!75282)) (CommentValue!18066 (value!291378 List!75282)) (WhitespaceValue!18066 (value!291379 List!75282)) (IndentationValue!9033 (value!291380 List!75282)) (String!84942) (Int32!9033) (Broken!45166 (value!291381 List!75282)) (Boolean!9034) (Unit!171048) (OperatorValue!9036 (op!9093 List!75282)) (IdentifierValue!18066 (value!291382 List!75282)) (IdentifierValue!18067 (value!291383 List!75282)) (WhitespaceValue!18067 (value!291384 List!75282)) (True!18066) (False!18066) (Broken!45167 (value!291385 List!75282)) (Broken!45168 (value!291386 List!75282)) (True!18067) (RightBrace!9033) (RightBracket!9033) (Colon!9033) (Null!9033) (Comma!9033) (LeftBracket!9033) (False!18067) (LeftBrace!9033) (ImaginaryLiteralValue!9033 (text!63677 List!75282)) (StringLiteralValue!27099 (value!291387 List!75282)) (EOFValue!9033 (value!291388 List!75282)) (IdentValue!9033 (value!291389 List!75282)) (DelimiterValue!18067 (value!291390 List!75282)) (DedentValue!9033 (value!291391 List!75282)) (NewLineValue!9033 (value!291392 List!75282)) (IntegerValue!27099 (value!291393 (_ BitVec 32)) (text!63678 List!75282)) (IntegerValue!27100 (value!291394 Int) (text!63679 List!75282)) (Times!9033) (Or!9033) (Equal!9033) (Minus!9033) (Broken!45169 (value!291395 List!75282)) (And!9033) (Div!9033) (LessEqual!9033) (Mod!9033) (Concat!30818) (Not!9033) (Plus!9033) (SpaceValue!9033 (value!291396 List!75282)) (IntegerValue!27101 (value!291397 Int) (text!63680 List!75282)) (StringLiteralValue!27100 (text!63681 List!75282)) (FloatLiteralValue!18067 (text!63682 List!75282)) (BytesLiteralValue!9033 (value!291398 List!75282)) (CommentValue!18067 (value!291399 List!75282)) (StringLiteralValue!27101 (value!291400 List!75282)) (ErrorTokenValue!9033 (msg!9094 List!75282)) )
))
(declare-datatypes ((BalanceConc!30918 0))(
  ( (BalanceConc!30919 (c!1475126 Conc!15981)) )
))
(declare-datatypes ((TokenValueInjection!17374 0))(
  ( (TokenValueInjection!17375 (toValue!11788 Int) (toChars!11647 Int)) )
))
(declare-datatypes ((Rule!17226 0))(
  ( (Rule!17227 (regex!8713 Regex!21784) (tag!9577 String!84940) (isSeparator!8713 Bool) (transformation!8713 TokenValueInjection!17374)) )
))
(declare-datatypes ((List!75283 0))(
  ( (Nil!75157) (Cons!75157 (h!81605 Rule!17226) (t!391053 List!75283)) )
))
(declare-fun rules!4166 () List!75283)

(declare-fun b!8042518 () Bool)

(declare-fun e!4737505 () Bool)

(declare-fun e!4737507 () Bool)

(declare-fun tp!2409825 () Bool)

(declare-fun inv!96950 (String!84940) Bool)

(declare-fun inv!96953 (TokenValueInjection!17374) Bool)

(assert (=> b!8042518 (= e!4737507 (and tp!2409825 (inv!96950 (tag!9577 (h!81605 rules!4166))) (inv!96953 (transformation!8713 (h!81605 rules!4166))) e!4737505))))

(declare-fun b!8042519 () Bool)

(declare-fun res!3179135 () Bool)

(assert (=> b!8042519 (=> (not res!3179135) (not e!4737501))))

(declare-fun rulesInvariant!6771 (LexerInterface!8303 List!75283) Bool)

(assert (=> b!8042519 (= res!3179135 (rulesInvariant!6771 thiss!27104 rules!4166))))

(declare-fun e!4737509 () Bool)

(declare-fun tp!2409822 () Bool)

(declare-fun b!8042520 () Bool)

(declare-fun rNSep!153 () Rule!17226)

(assert (=> b!8042520 (= e!4737502 (and tp!2409822 (inv!96950 (tag!9577 rNSep!153)) (inv!96953 (transformation!8713 rNSep!153)) e!4737509))))

(declare-fun b!8042521 () Bool)

(declare-fun ListPrimitiveSize!531 (List!75283) Int)

(assert (=> b!8042521 (= e!4737501 (< (ListPrimitiveSize!531 rules!4166) 0))))

(declare-fun b!8042522 () Bool)

(declare-fun tp!2409823 () Bool)

(assert (=> b!8042522 (= e!4737510 (and e!4737507 tp!2409823))))

(declare-fun b!8042523 () Bool)

(declare-fun res!3179132 () Bool)

(assert (=> b!8042523 (=> (not res!3179132) (not e!4737501))))

(declare-fun rSep!153 () Rule!17226)

(declare-fun contains!21011 (List!75283 Rule!17226) Bool)

(assert (=> b!8042523 (= res!3179132 (contains!21011 rules!4166 rSep!153))))

(declare-fun e!4737504 () Bool)

(assert (=> b!8042524 (= e!4737504 (and tp!2409818 tp!2409817))))

(declare-fun b!8042525 () Bool)

(declare-fun res!3179133 () Bool)

(assert (=> b!8042525 (=> (not res!3179133) (not e!4737501))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!987 (Rule!17226 List!75283) Bool)

(assert (=> b!8042525 (= res!3179133 (ruleDisjointCharsFromAllFromOtherType!987 rNSep!153 rules!4166))))

(declare-fun b!8042526 () Bool)

(declare-fun res!3179131 () Bool)

(assert (=> b!8042526 (=> (not res!3179131) (not e!4737501))))

(assert (=> b!8042526 (= res!3179131 (and (not (isSeparator!8713 rNSep!153)) (isSeparator!8713 rSep!153)))))

(declare-fun tp!2409819 () Bool)

(declare-fun b!8042527 () Bool)

(assert (=> b!8042527 (= e!4737503 (and tp!2409819 (inv!96950 (tag!9577 rSep!153)) (inv!96953 (transformation!8713 rSep!153)) e!4737504))))

(declare-fun b!8042528 () Bool)

(declare-fun res!3179134 () Bool)

(assert (=> b!8042528 (=> (not res!3179134) (not e!4737501))))

(declare-fun c!6885 () C!43906)

(declare-fun contains!21012 (List!75281 C!43906) Bool)

(declare-fun usedCharacters!1291 (Regex!21784) List!75281)

(assert (=> b!8042528 (= res!3179134 (contains!21012 (usedCharacters!1291 (regex!8713 rSep!153)) c!6885))))

(assert (=> b!8042529 (= e!4737505 (and tp!2409820 tp!2409824))))

(assert (=> b!8042530 (= e!4737509 (and tp!2409816 tp!2409821))))

(assert (= (and start!757198 res!3179130) b!8042519))

(assert (= (and b!8042519 res!3179135) b!8042523))

(assert (= (and b!8042523 res!3179132) b!8042528))

(assert (= (and b!8042528 res!3179134) b!8042526))

(assert (= (and b!8042526 res!3179131) b!8042525))

(assert (= (and b!8042525 res!3179133) b!8042521))

(assert (= b!8042518 b!8042529))

(assert (= b!8042522 b!8042518))

(assert (= (and start!757198 (is-Cons!75157 rules!4166)) b!8042522))

(assert (= b!8042520 b!8042530))

(assert (= start!757198 b!8042520))

(assert (= b!8042527 b!8042524))

(assert (= start!757198 b!8042527))

(declare-fun m!8396262 () Bool)

(assert (=> b!8042518 m!8396262))

(declare-fun m!8396264 () Bool)

(assert (=> b!8042518 m!8396264))

(declare-fun m!8396266 () Bool)

(assert (=> b!8042523 m!8396266))

(declare-fun m!8396268 () Bool)

(assert (=> b!8042528 m!8396268))

(assert (=> b!8042528 m!8396268))

(declare-fun m!8396270 () Bool)

(assert (=> b!8042528 m!8396270))

(declare-fun m!8396272 () Bool)

(assert (=> b!8042527 m!8396272))

(declare-fun m!8396274 () Bool)

(assert (=> b!8042527 m!8396274))

(declare-fun m!8396276 () Bool)

(assert (=> b!8042519 m!8396276))

(declare-fun m!8396278 () Bool)

(assert (=> b!8042521 m!8396278))

(declare-fun m!8396280 () Bool)

(assert (=> b!8042520 m!8396280))

(declare-fun m!8396282 () Bool)

(assert (=> b!8042520 m!8396282))

(declare-fun m!8396284 () Bool)

(assert (=> b!8042525 m!8396284))

(push 1)

(assert (not b!8042527))

(assert (not b!8042518))

(assert (not b!8042521))

(assert (not b!8042523))

(assert (not b_next!136665))

(assert (not b!8042525))

(assert (not b!8042520))

(assert (not b_next!136663))

(assert (not b!8042519))

(assert b_and!354313)

(assert (not b_next!136657))

(assert b_and!354303)

(assert b_and!354309)

(assert (not b_next!136667))

(assert tp_is_empty!54563)

(assert (not b_next!136661))

(assert (not b!8042522))

(assert (not b!8042528))

(assert (not b_next!136659))

(assert b_and!354307)

(assert b_and!354305)

(assert b_and!354311)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136661))

(assert (not b_next!136665))

(assert (not b_next!136663))

(assert b_and!354313)

(assert (not b_next!136657))

(assert b_and!354303)

(assert b_and!354309)

(assert (not b_next!136667))

(assert (not b_next!136659))

(assert b_and!354307)

(assert b_and!354305)

(assert b_and!354311)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395889 () Bool)

(declare-fun lt!2722381 () Int)

(assert (=> d!2395889 (>= lt!2722381 0)))

(declare-fun e!4737546 () Int)

(assert (=> d!2395889 (= lt!2722381 e!4737546)))

(declare-fun c!1475131 () Bool)

(assert (=> d!2395889 (= c!1475131 (is-Nil!75157 rules!4166))))

(assert (=> d!2395889 (= (ListPrimitiveSize!531 rules!4166) lt!2722381)))

(declare-fun b!8042574 () Bool)

(assert (=> b!8042574 (= e!4737546 0)))

(declare-fun b!8042575 () Bool)

(assert (=> b!8042575 (= e!4737546 (+ 1 (ListPrimitiveSize!531 (t!391053 rules!4166))))))

(assert (= (and d!2395889 c!1475131) b!8042574))

(assert (= (and d!2395889 (not c!1475131)) b!8042575))

(declare-fun m!8396310 () Bool)

(assert (=> b!8042575 m!8396310))

(assert (=> b!8042521 d!2395889))

(declare-fun d!2395893 () Bool)

(assert (=> d!2395893 (= (inv!96950 (tag!9577 rNSep!153)) (= (mod (str.len (value!291375 (tag!9577 rNSep!153))) 2) 0))))

(assert (=> b!8042520 d!2395893))

(declare-fun d!2395895 () Bool)

(declare-fun res!3179164 () Bool)

(declare-fun e!4737549 () Bool)

(assert (=> d!2395895 (=> (not res!3179164) (not e!4737549))))

(declare-fun semiInverseModEq!3868 (Int Int) Bool)

(assert (=> d!2395895 (= res!3179164 (semiInverseModEq!3868 (toChars!11647 (transformation!8713 rNSep!153)) (toValue!11788 (transformation!8713 rNSep!153))))))

(assert (=> d!2395895 (= (inv!96953 (transformation!8713 rNSep!153)) e!4737549)))

(declare-fun b!8042578 () Bool)

(declare-fun equivClasses!3683 (Int Int) Bool)

(assert (=> b!8042578 (= e!4737549 (equivClasses!3683 (toChars!11647 (transformation!8713 rNSep!153)) (toValue!11788 (transformation!8713 rNSep!153))))))

(assert (= (and d!2395895 res!3179164) b!8042578))

(declare-fun m!8396312 () Bool)

(assert (=> d!2395895 m!8396312))

(declare-fun m!8396314 () Bool)

(assert (=> b!8042578 m!8396314))

(assert (=> b!8042520 d!2395895))

(declare-fun b!8042590 () Bool)

(declare-fun e!4737560 () Bool)

(declare-fun e!4737559 () Bool)

(assert (=> b!8042590 (= e!4737560 e!4737559)))

(declare-fun res!3179173 () Bool)

(declare-fun rulesUseDisjointChars!392 (Rule!17226 Rule!17226) Bool)

(assert (=> b!8042590 (= res!3179173 (rulesUseDisjointChars!392 rNSep!153 (h!81605 rules!4166)))))

(assert (=> b!8042590 (=> (not res!3179173) (not e!4737559))))

(declare-fun bm!746506 () Bool)

(declare-fun call!746511 () Bool)

(assert (=> bm!746506 (= call!746511 (ruleDisjointCharsFromAllFromOtherType!987 rNSep!153 (t!391053 rules!4166)))))

(declare-fun b!8042592 () Bool)

(declare-fun e!4737561 () Bool)

(assert (=> b!8042592 (= e!4737561 call!746511)))

(declare-fun b!8042593 () Bool)

(assert (=> b!8042593 (= e!4737560 e!4737561)))

(declare-fun res!3179172 () Bool)

(assert (=> b!8042593 (= res!3179172 (not (is-Cons!75157 rules!4166)))))

(assert (=> b!8042593 (=> res!3179172 e!4737561)))

(declare-fun d!2395899 () Bool)

(declare-fun c!1475134 () Bool)

(assert (=> d!2395899 (= c!1475134 (and (is-Cons!75157 rules!4166) (not (= (isSeparator!8713 (h!81605 rules!4166)) (isSeparator!8713 rNSep!153)))))))

(assert (=> d!2395899 (= (ruleDisjointCharsFromAllFromOtherType!987 rNSep!153 rules!4166) e!4737560)))

(declare-fun b!8042591 () Bool)

(assert (=> b!8042591 (= e!4737559 call!746511)))

(assert (= (and d!2395899 c!1475134) b!8042590))

(assert (= (and d!2395899 (not c!1475134)) b!8042593))

(assert (= (and b!8042590 res!3179173) b!8042591))

(assert (= (and b!8042593 (not res!3179172)) b!8042592))

(assert (= (or b!8042591 b!8042592) bm!746506))

(declare-fun m!8396320 () Bool)

(assert (=> b!8042590 m!8396320))

(declare-fun m!8396322 () Bool)

(assert (=> bm!746506 m!8396322))

(assert (=> b!8042525 d!2395899))

(declare-fun d!2395903 () Bool)

(declare-fun res!3179176 () Bool)

(declare-fun e!4737564 () Bool)

(assert (=> d!2395903 (=> (not res!3179176) (not e!4737564))))

(declare-fun rulesValid!3143 (LexerInterface!8303 List!75283) Bool)

(assert (=> d!2395903 (= res!3179176 (rulesValid!3143 thiss!27104 rules!4166))))

(assert (=> d!2395903 (= (rulesInvariant!6771 thiss!27104 rules!4166) e!4737564)))

(declare-fun b!8042596 () Bool)

(declare-datatypes ((List!75287 0))(
  ( (Nil!75161) (Cons!75161 (h!81609 String!84940) (t!391057 List!75287)) )
))
(declare-fun noDuplicateTag!3304 (LexerInterface!8303 List!75283 List!75287) Bool)

(assert (=> b!8042596 (= e!4737564 (noDuplicateTag!3304 thiss!27104 rules!4166 Nil!75161))))

(assert (= (and d!2395903 res!3179176) b!8042596))

(declare-fun m!8396324 () Bool)

(assert (=> d!2395903 m!8396324))

(declare-fun m!8396326 () Bool)

(assert (=> b!8042596 m!8396326))

(assert (=> b!8042519 d!2395903))

(declare-fun d!2395905 () Bool)

(assert (=> d!2395905 (= (inv!96950 (tag!9577 (h!81605 rules!4166))) (= (mod (str.len (value!291375 (tag!9577 (h!81605 rules!4166)))) 2) 0))))

(assert (=> b!8042518 d!2395905))

(declare-fun d!2395907 () Bool)

(declare-fun res!3179177 () Bool)

(declare-fun e!4737565 () Bool)

(assert (=> d!2395907 (=> (not res!3179177) (not e!4737565))))

(assert (=> d!2395907 (= res!3179177 (semiInverseModEq!3868 (toChars!11647 (transformation!8713 (h!81605 rules!4166))) (toValue!11788 (transformation!8713 (h!81605 rules!4166)))))))

(assert (=> d!2395907 (= (inv!96953 (transformation!8713 (h!81605 rules!4166))) e!4737565)))

(declare-fun b!8042597 () Bool)

(assert (=> b!8042597 (= e!4737565 (equivClasses!3683 (toChars!11647 (transformation!8713 (h!81605 rules!4166))) (toValue!11788 (transformation!8713 (h!81605 rules!4166)))))))

(assert (= (and d!2395907 res!3179177) b!8042597))

(declare-fun m!8396328 () Bool)

(assert (=> d!2395907 m!8396328))

(declare-fun m!8396330 () Bool)

(assert (=> b!8042597 m!8396330))

(assert (=> b!8042518 d!2395907))

(declare-fun d!2395909 () Bool)

(declare-fun lt!2722384 () Bool)

(declare-fun content!16048 (List!75283) (Set Rule!17226))

(assert (=> d!2395909 (= lt!2722384 (set.member rSep!153 (content!16048 rules!4166)))))

(declare-fun e!4737573 () Bool)

(assert (=> d!2395909 (= lt!2722384 e!4737573)))

(declare-fun res!3179185 () Bool)

(assert (=> d!2395909 (=> (not res!3179185) (not e!4737573))))

(assert (=> d!2395909 (= res!3179185 (is-Cons!75157 rules!4166))))

(assert (=> d!2395909 (= (contains!21011 rules!4166 rSep!153) lt!2722384)))

(declare-fun b!8042605 () Bool)

(declare-fun e!4737574 () Bool)

(assert (=> b!8042605 (= e!4737573 e!4737574)))

(declare-fun res!3179186 () Bool)

(assert (=> b!8042605 (=> res!3179186 e!4737574)))

(assert (=> b!8042605 (= res!3179186 (= (h!81605 rules!4166) rSep!153))))

(declare-fun b!8042606 () Bool)

(assert (=> b!8042606 (= e!4737574 (contains!21011 (t!391053 rules!4166) rSep!153))))

(assert (= (and d!2395909 res!3179185) b!8042605))

(assert (= (and b!8042605 (not res!3179186)) b!8042606))

(declare-fun m!8396332 () Bool)

(assert (=> d!2395909 m!8396332))

(declare-fun m!8396336 () Bool)

(assert (=> d!2395909 m!8396336))

(declare-fun m!8396338 () Bool)

(assert (=> b!8042606 m!8396338))

(assert (=> b!8042523 d!2395909))

(declare-fun d!2395911 () Bool)

(declare-fun lt!2722389 () Bool)

(declare-fun content!16049 (List!75281) (Set C!43906))

(assert (=> d!2395911 (= lt!2722389 (set.member c!6885 (content!16049 (usedCharacters!1291 (regex!8713 rSep!153)))))))

(declare-fun e!4737580 () Bool)

(assert (=> d!2395911 (= lt!2722389 e!4737580)))

(declare-fun res!3179192 () Bool)

(assert (=> d!2395911 (=> (not res!3179192) (not e!4737580))))

(assert (=> d!2395911 (= res!3179192 (is-Cons!75155 (usedCharacters!1291 (regex!8713 rSep!153))))))

(assert (=> d!2395911 (= (contains!21012 (usedCharacters!1291 (regex!8713 rSep!153)) c!6885) lt!2722389)))

(declare-fun b!8042613 () Bool)

(declare-fun e!4737579 () Bool)

(assert (=> b!8042613 (= e!4737580 e!4737579)))

(declare-fun res!3179191 () Bool)

(assert (=> b!8042613 (=> res!3179191 e!4737579)))

(assert (=> b!8042613 (= res!3179191 (= (h!81603 (usedCharacters!1291 (regex!8713 rSep!153))) c!6885))))

(declare-fun b!8042614 () Bool)

(assert (=> b!8042614 (= e!4737579 (contains!21012 (t!391051 (usedCharacters!1291 (regex!8713 rSep!153))) c!6885))))

(assert (= (and d!2395911 res!3179192) b!8042613))

(assert (= (and b!8042613 (not res!3179191)) b!8042614))

(assert (=> d!2395911 m!8396268))

(declare-fun m!8396342 () Bool)

(assert (=> d!2395911 m!8396342))

(declare-fun m!8396344 () Bool)

(assert (=> d!2395911 m!8396344))

(declare-fun m!8396346 () Bool)

(assert (=> b!8042614 m!8396346))

(assert (=> b!8042528 d!2395911))

(declare-fun d!2395915 () Bool)

(declare-fun c!1475148 () Bool)

(assert (=> d!2395915 (= c!1475148 (or (is-EmptyExpr!21784 (regex!8713 rSep!153)) (is-EmptyLang!21784 (regex!8713 rSep!153))))))

(declare-fun e!4737592 () List!75281)

(assert (=> d!2395915 (= (usedCharacters!1291 (regex!8713 rSep!153)) e!4737592)))

(declare-fun b!8042635 () Bool)

(declare-fun e!4737594 () List!75281)

(declare-fun call!746521 () List!75281)

(assert (=> b!8042635 (= e!4737594 call!746521)))

(declare-fun b!8042636 () Bool)

(declare-fun e!4737595 () List!75281)

(declare-fun call!746520 () List!75281)

(assert (=> b!8042636 (= e!4737595 call!746520)))

(declare-fun call!746523 () List!75281)

(declare-fun c!1475147 () Bool)

(declare-fun call!746522 () List!75281)

(declare-fun bm!746515 () Bool)

(declare-fun ++!18629 (List!75281 List!75281) List!75281)

(assert (=> bm!746515 (= call!746521 (++!18629 (ite c!1475147 call!746523 call!746522) (ite c!1475147 call!746522 call!746523)))))

(declare-fun bm!746516 () Bool)

(assert (=> bm!746516 (= call!746522 (usedCharacters!1291 (ite c!1475147 (regTwo!44081 (regex!8713 rSep!153)) (regOne!44080 (regex!8713 rSep!153)))))))

(declare-fun bm!746517 () Bool)

(assert (=> bm!746517 (= call!746523 call!746520)))

(declare-fun b!8042637 () Bool)

(assert (=> b!8042637 (= e!4737595 e!4737594)))

(assert (=> b!8042637 (= c!1475147 (is-Union!21784 (regex!8713 rSep!153)))))

(declare-fun b!8042638 () Bool)

(assert (=> b!8042638 (= e!4737594 call!746521)))

(declare-fun b!8042639 () Bool)

(assert (=> b!8042639 (= e!4737592 Nil!75155)))

(declare-fun b!8042640 () Bool)

(declare-fun c!1475146 () Bool)

(assert (=> b!8042640 (= c!1475146 (is-Star!21784 (regex!8713 rSep!153)))))

(declare-fun e!4737593 () List!75281)

(assert (=> b!8042640 (= e!4737593 e!4737595)))

(declare-fun b!8042641 () Bool)

(assert (=> b!8042641 (= e!4737592 e!4737593)))

(declare-fun c!1475149 () Bool)

(assert (=> b!8042641 (= c!1475149 (is-ElementMatch!21784 (regex!8713 rSep!153)))))

(declare-fun b!8042642 () Bool)

(assert (=> b!8042642 (= e!4737593 (Cons!75155 (c!1475125 (regex!8713 rSep!153)) Nil!75155))))

(declare-fun bm!746518 () Bool)

(assert (=> bm!746518 (= call!746520 (usedCharacters!1291 (ite c!1475146 (reg!22113 (regex!8713 rSep!153)) (ite c!1475147 (regOne!44081 (regex!8713 rSep!153)) (regTwo!44080 (regex!8713 rSep!153))))))))

(assert (= (and d!2395915 c!1475148) b!8042639))

(assert (= (and d!2395915 (not c!1475148)) b!8042641))

(assert (= (and b!8042641 c!1475149) b!8042642))

(assert (= (and b!8042641 (not c!1475149)) b!8042640))

(assert (= (and b!8042640 c!1475146) b!8042636))

(assert (= (and b!8042640 (not c!1475146)) b!8042637))

(assert (= (and b!8042637 c!1475147) b!8042638))

(assert (= (and b!8042637 (not c!1475147)) b!8042635))

(assert (= (or b!8042638 b!8042635) bm!746517))

(assert (= (or b!8042638 b!8042635) bm!746516))

(assert (= (or b!8042638 b!8042635) bm!746515))

(assert (= (or b!8042636 bm!746517) bm!746518))

(declare-fun m!8396350 () Bool)

(assert (=> bm!746515 m!8396350))

(declare-fun m!8396352 () Bool)

(assert (=> bm!746516 m!8396352))

(declare-fun m!8396354 () Bool)

(assert (=> bm!746518 m!8396354))

(assert (=> b!8042528 d!2395915))

(declare-fun d!2395919 () Bool)

(assert (=> d!2395919 (= (inv!96950 (tag!9577 rSep!153)) (= (mod (str.len (value!291375 (tag!9577 rSep!153))) 2) 0))))

(assert (=> b!8042527 d!2395919))

(declare-fun d!2395921 () Bool)

(declare-fun res!3179193 () Bool)

(declare-fun e!4737596 () Bool)

(assert (=> d!2395921 (=> (not res!3179193) (not e!4737596))))

(assert (=> d!2395921 (= res!3179193 (semiInverseModEq!3868 (toChars!11647 (transformation!8713 rSep!153)) (toValue!11788 (transformation!8713 rSep!153))))))

(assert (=> d!2395921 (= (inv!96953 (transformation!8713 rSep!153)) e!4737596)))

(declare-fun b!8042643 () Bool)

(assert (=> b!8042643 (= e!4737596 (equivClasses!3683 (toChars!11647 (transformation!8713 rSep!153)) (toValue!11788 (transformation!8713 rSep!153))))))

(assert (= (and d!2395921 res!3179193) b!8042643))

(declare-fun m!8396356 () Bool)

(assert (=> d!2395921 m!8396356))

(declare-fun m!8396358 () Bool)

(assert (=> b!8042643 m!8396358))

(assert (=> b!8042527 d!2395921))

(declare-fun b!8042660 () Bool)

(declare-fun e!4737603 () Bool)

(declare-fun tp!2409869 () Bool)

(declare-fun tp!2409868 () Bool)

(assert (=> b!8042660 (= e!4737603 (and tp!2409869 tp!2409868))))

(declare-fun b!8042658 () Bool)

(assert (=> b!8042658 (= e!4737603 tp_is_empty!54563)))

(declare-fun b!8042663 () Bool)

(declare-fun tp!2409867 () Bool)

(declare-fun tp!2409866 () Bool)

(assert (=> b!8042663 (= e!4737603 (and tp!2409867 tp!2409866))))

(declare-fun b!8042662 () Bool)

(declare-fun tp!2409870 () Bool)

(assert (=> b!8042662 (= e!4737603 tp!2409870)))

(assert (=> b!8042520 (= tp!2409822 e!4737603)))

(assert (= (and b!8042520 (is-ElementMatch!21784 (regex!8713 rNSep!153))) b!8042658))

(assert (= (and b!8042520 (is-Concat!30817 (regex!8713 rNSep!153))) b!8042660))

(assert (= (and b!8042520 (is-Star!21784 (regex!8713 rNSep!153))) b!8042662))

(assert (= (and b!8042520 (is-Union!21784 (regex!8713 rNSep!153))) b!8042663))

(declare-fun b!8042667 () Bool)

(declare-fun e!4737606 () Bool)

(declare-fun tp!2409874 () Bool)

(declare-fun tp!2409873 () Bool)

(assert (=> b!8042667 (= e!4737606 (and tp!2409874 tp!2409873))))

(declare-fun b!8042666 () Bool)

(assert (=> b!8042666 (= e!4737606 tp_is_empty!54563)))

(declare-fun b!8042669 () Bool)

(declare-fun tp!2409872 () Bool)

(declare-fun tp!2409871 () Bool)

(assert (=> b!8042669 (= e!4737606 (and tp!2409872 tp!2409871))))

(declare-fun b!8042668 () Bool)

(declare-fun tp!2409875 () Bool)

(assert (=> b!8042668 (= e!4737606 tp!2409875)))

(assert (=> b!8042518 (= tp!2409825 e!4737606)))

(assert (= (and b!8042518 (is-ElementMatch!21784 (regex!8713 (h!81605 rules!4166)))) b!8042666))

(assert (= (and b!8042518 (is-Concat!30817 (regex!8713 (h!81605 rules!4166)))) b!8042667))

(assert (= (and b!8042518 (is-Star!21784 (regex!8713 (h!81605 rules!4166)))) b!8042668))

(assert (= (and b!8042518 (is-Union!21784 (regex!8713 (h!81605 rules!4166)))) b!8042669))

(declare-fun b!8042680 () Bool)

(declare-fun b_free!135891 () Bool)

(declare-fun b_next!136681 () Bool)

(assert (=> b!8042680 (= b_free!135891 (not b_next!136681))))

(declare-fun tp!2409885 () Bool)

(declare-fun b_and!354327 () Bool)

(assert (=> b!8042680 (= tp!2409885 b_and!354327)))

(declare-fun b_free!135893 () Bool)

(declare-fun b_next!136683 () Bool)

(assert (=> b!8042680 (= b_free!135893 (not b_next!136683))))

(declare-fun tp!2409886 () Bool)

(declare-fun b_and!354329 () Bool)

(assert (=> b!8042680 (= tp!2409886 b_and!354329)))

(declare-fun e!4737616 () Bool)

(assert (=> b!8042680 (= e!4737616 (and tp!2409885 tp!2409886))))

(declare-fun b!8042679 () Bool)

(declare-fun tp!2409887 () Bool)

(declare-fun e!4737615 () Bool)

(assert (=> b!8042679 (= e!4737615 (and tp!2409887 (inv!96950 (tag!9577 (h!81605 (t!391053 rules!4166)))) (inv!96953 (transformation!8713 (h!81605 (t!391053 rules!4166)))) e!4737616))))

(declare-fun b!8042678 () Bool)

(declare-fun e!4737618 () Bool)

(declare-fun tp!2409884 () Bool)

(assert (=> b!8042678 (= e!4737618 (and e!4737615 tp!2409884))))

(assert (=> b!8042522 (= tp!2409823 e!4737618)))

(assert (= b!8042679 b!8042680))

(assert (= b!8042678 b!8042679))

(assert (= (and b!8042522 (is-Cons!75157 (t!391053 rules!4166))) b!8042678))

(declare-fun m!8396360 () Bool)

(assert (=> b!8042679 m!8396360))

(declare-fun m!8396362 () Bool)

(assert (=> b!8042679 m!8396362))

(declare-fun b!8042682 () Bool)

(declare-fun e!4737619 () Bool)

(declare-fun tp!2409891 () Bool)

(declare-fun tp!2409890 () Bool)

(assert (=> b!8042682 (= e!4737619 (and tp!2409891 tp!2409890))))

(declare-fun b!8042681 () Bool)

(assert (=> b!8042681 (= e!4737619 tp_is_empty!54563)))

(declare-fun b!8042684 () Bool)

(declare-fun tp!2409889 () Bool)

(declare-fun tp!2409888 () Bool)

(assert (=> b!8042684 (= e!4737619 (and tp!2409889 tp!2409888))))

(declare-fun b!8042683 () Bool)

(declare-fun tp!2409892 () Bool)

(assert (=> b!8042683 (= e!4737619 tp!2409892)))

(assert (=> b!8042527 (= tp!2409819 e!4737619)))

(assert (= (and b!8042527 (is-ElementMatch!21784 (regex!8713 rSep!153))) b!8042681))

(assert (= (and b!8042527 (is-Concat!30817 (regex!8713 rSep!153))) b!8042682))

(assert (= (and b!8042527 (is-Star!21784 (regex!8713 rSep!153))) b!8042683))

(assert (= (and b!8042527 (is-Union!21784 (regex!8713 rSep!153))) b!8042684))

(push 1)

(assert (not bm!746516))

(assert (not bm!746515))

(assert (not b!8042678))

(assert (not bm!746506))

(assert (not b!8042683))

(assert (not b_next!136663))

(assert b_and!354329)

(assert (not b!8042662))

(assert (not b!8042597))

(assert (not b!8042575))

(assert (not b!8042614))

(assert (not b!8042668))

(assert b_and!354313)

(assert (not b_next!136657))

(assert b_and!354303)

(assert b_and!354309)

(assert (not b_next!136667))

(assert (not b_next!136683))

(assert (not b!8042660))

(assert tp_is_empty!54563)

(assert (not b_next!136661))

(assert (not b!8042679))

(assert (not b!8042643))

(assert (not b!8042682))

(assert (not b!8042606))

(assert (not b!8042669))

(assert (not b!8042578))

(assert (not d!2395911))

(assert (not b_next!136665))

(assert (not b_next!136681))

(assert (not d!2395909))

(assert (not b!8042590))

(assert (not d!2395895))

(assert (not b!8042596))

(assert (not bm!746518))

(assert (not b_next!136659))

(assert b_and!354307)

(assert b_and!354305)

(assert b_and!354311)

(assert (not b!8042667))

(assert (not d!2395903))

(assert (not b!8042684))

(assert (not d!2395907))

(assert (not d!2395921))

(assert b_and!354327)

(assert (not b!8042663))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136683))

(assert (not b_next!136661))

(assert (not b_next!136663))

(assert b_and!354329)

(assert b_and!354327)

(assert b_and!354313)

(assert (not b_next!136657))

(assert b_and!354303)

(assert b_and!354309)

(assert (not b_next!136667))

(assert (not b_next!136665))

(assert (not b_next!136681))

(assert (not b_next!136659))

(assert b_and!354307)

(assert b_and!354305)

(assert b_and!354311)

(check-sat)

(pop 1)

