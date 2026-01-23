; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137436 () Bool)

(assert start!137436)

(declare-fun b!1468531 () Bool)

(declare-fun b_free!36911 () Bool)

(declare-fun b_next!37615 () Bool)

(assert (=> b!1468531 (= b_free!36911 (not b_next!37615))))

(declare-fun tp!413707 () Bool)

(declare-fun b_and!100493 () Bool)

(assert (=> b!1468531 (= tp!413707 b_and!100493)))

(declare-fun b_free!36913 () Bool)

(declare-fun b_next!37617 () Bool)

(assert (=> b!1468531 (= b_free!36913 (not b_next!37617))))

(declare-fun tp!413706 () Bool)

(declare-fun b_and!100495 () Bool)

(assert (=> b!1468531 (= tp!413706 b_and!100495)))

(declare-fun res!664312 () Bool)

(declare-fun e!937385 () Bool)

(assert (=> start!137436 (=> (not res!664312) (not e!937385))))

(declare-datatypes ((LexerInterface!2372 0))(
  ( (LexerInterfaceExt!2369 (__x!9402 Int)) (Lexer!2370) )
))
(declare-fun thiss!20360 () LexerInterface!2372)

(declare-datatypes ((List!15386 0))(
  ( (Nil!15320) (Cons!15320 (h!20721 (_ BitVec 16)) (t!135265 List!15386)) )
))
(declare-datatypes ((TokenValue!2806 0))(
  ( (FloatLiteralValue!5612 (text!20087 List!15386)) (TokenValueExt!2805 (__x!9403 Int)) (Broken!14030 (value!87029 List!15386)) (Object!2871) (End!2806) (Def!2806) (Underscore!2806) (Match!2806) (Else!2806) (Error!2806) (Case!2806) (If!2806) (Extends!2806) (Abstract!2806) (Class!2806) (Val!2806) (DelimiterValue!5612 (del!2866 List!15386)) (KeywordValue!2812 (value!87030 List!15386)) (CommentValue!5612 (value!87031 List!15386)) (WhitespaceValue!5612 (value!87032 List!15386)) (IndentationValue!2806 (value!87033 List!15386)) (String!18287) (Int32!2806) (Broken!14031 (value!87034 List!15386)) (Boolean!2807) (Unit!25073) (OperatorValue!2809 (op!2866 List!15386)) (IdentifierValue!5612 (value!87035 List!15386)) (IdentifierValue!5613 (value!87036 List!15386)) (WhitespaceValue!5613 (value!87037 List!15386)) (True!5612) (False!5612) (Broken!14032 (value!87038 List!15386)) (Broken!14033 (value!87039 List!15386)) (True!5613) (RightBrace!2806) (RightBracket!2806) (Colon!2806) (Null!2806) (Comma!2806) (LeftBracket!2806) (False!5613) (LeftBrace!2806) (ImaginaryLiteralValue!2806 (text!20088 List!15386)) (StringLiteralValue!8418 (value!87040 List!15386)) (EOFValue!2806 (value!87041 List!15386)) (IdentValue!2806 (value!87042 List!15386)) (DelimiterValue!5613 (value!87043 List!15386)) (DedentValue!2806 (value!87044 List!15386)) (NewLineValue!2806 (value!87045 List!15386)) (IntegerValue!8418 (value!87046 (_ BitVec 32)) (text!20089 List!15386)) (IntegerValue!8419 (value!87047 Int) (text!20090 List!15386)) (Times!2806) (Or!2806) (Equal!2806) (Minus!2806) (Broken!14034 (value!87048 List!15386)) (And!2806) (Div!2806) (LessEqual!2806) (Mod!2806) (Concat!6836) (Not!2806) (Plus!2806) (SpaceValue!2806 (value!87049 List!15386)) (IntegerValue!8420 (value!87050 Int) (text!20091 List!15386)) (StringLiteralValue!8419 (text!20092 List!15386)) (FloatLiteralValue!5613 (text!20093 List!15386)) (BytesLiteralValue!2806 (value!87051 List!15386)) (CommentValue!5613 (value!87052 List!15386)) (StringLiteralValue!8420 (value!87053 List!15386)) (ErrorTokenValue!2806 (msg!2867 List!15386)) )
))
(declare-datatypes ((C!8238 0))(
  ( (C!8239 (val!4689 Int)) )
))
(declare-datatypes ((List!15387 0))(
  ( (Nil!15321) (Cons!15321 (h!20722 C!8238) (t!135266 List!15387)) )
))
(declare-datatypes ((IArray!10449 0))(
  ( (IArray!10450 (innerList!5282 List!15387)) )
))
(declare-datatypes ((Conc!5222 0))(
  ( (Node!5222 (left!12987 Conc!5222) (right!13317 Conc!5222) (csize!10674 Int) (cheight!5433 Int)) (Leaf!7782 (xs!7977 IArray!10449) (csize!10675 Int)) (Empty!5222) )
))
(declare-datatypes ((BalanceConc!10384 0))(
  ( (BalanceConc!10385 (c!242049 Conc!5222)) )
))
(declare-datatypes ((TokenValueInjection!5272 0))(
  ( (TokenValueInjection!5273 (toValue!4035 Int) (toChars!3894 Int)) )
))
(declare-datatypes ((Regex!4030 0))(
  ( (ElementMatch!4030 (c!242050 C!8238)) (Concat!6837 (regOne!8572 Regex!4030) (regTwo!8572 Regex!4030)) (EmptyExpr!4030) (Star!4030 (reg!4359 Regex!4030)) (EmptyLang!4030) (Union!4030 (regOne!8573 Regex!4030) (regTwo!8573 Regex!4030)) )
))
(declare-datatypes ((String!18288 0))(
  ( (String!18289 (value!87054 String)) )
))
(declare-datatypes ((Rule!5232 0))(
  ( (Rule!5233 (regex!2716 Regex!4030) (tag!2980 String!18288) (isSeparator!2716 Bool) (transformation!2716 TokenValueInjection!5272)) )
))
(declare-datatypes ((Token!5094 0))(
  ( (Token!5095 (value!87055 TokenValue!2806) (rule!4493 Rule!5232) (size!12494 Int) (originalCharacters!3578 List!15387)) )
))
(declare-datatypes ((List!15388 0))(
  ( (Nil!15322) (Cons!15322 (h!20723 Token!5094) (t!135267 List!15388)) )
))
(declare-fun tokens1!47 () List!15388)

(assert (=> start!137436 (= res!664312 (and (is-Lexer!2370 thiss!20360) (is-Cons!15322 tokens1!47)))))

(assert (=> start!137436 e!937385))

(assert (=> start!137436 true))

(declare-fun e!937382 () Bool)

(assert (=> start!137436 e!937382))

(declare-fun tp!413709 () Bool)

(declare-fun b!1468527 () Bool)

(declare-fun e!937386 () Bool)

(declare-fun e!937383 () Bool)

(declare-fun inv!21 (TokenValue!2806) Bool)

(assert (=> b!1468527 (= e!937383 (and (inv!21 (value!87055 (h!20723 tokens1!47))) e!937386 tp!413709))))

(declare-fun tp!413705 () Bool)

(declare-fun b!1468528 () Bool)

(declare-fun inv!20498 (Token!5094) Bool)

(assert (=> b!1468528 (= e!937382 (and (inv!20498 (h!20723 tokens1!47)) e!937383 tp!413705))))

(declare-fun e!937384 () Bool)

(declare-fun b!1468529 () Bool)

(declare-fun tp!413708 () Bool)

(declare-fun inv!20495 (String!18288) Bool)

(declare-fun inv!20499 (TokenValueInjection!5272) Bool)

(assert (=> b!1468529 (= e!937386 (and tp!413708 (inv!20495 (tag!2980 (rule!4493 (h!20723 tokens1!47)))) (inv!20499 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) e!937384))))

(declare-fun b!1468530 () Bool)

(declare-fun ListPrimitiveSize!101 (List!15388) Int)

(assert (=> b!1468530 (= e!937385 (>= (ListPrimitiveSize!101 (t!135267 tokens1!47)) (ListPrimitiveSize!101 tokens1!47)))))

(assert (=> b!1468531 (= e!937384 (and tp!413707 tp!413706))))

(declare-fun b!1468532 () Bool)

(declare-fun res!664311 () Bool)

(assert (=> b!1468532 (=> (not res!664311) (not e!937385))))

(declare-fun isEmpty!9604 (List!15388) Bool)

(assert (=> b!1468532 (= res!664311 (not (isEmpty!9604 (t!135267 tokens1!47))))))

(assert (= (and start!137436 res!664312) b!1468532))

(assert (= (and b!1468532 res!664311) b!1468530))

(assert (= b!1468529 b!1468531))

(assert (= b!1468527 b!1468529))

(assert (= b!1468528 b!1468527))

(assert (= (and start!137436 (is-Cons!15322 tokens1!47)) b!1468528))

(declare-fun m!1713145 () Bool)

(assert (=> b!1468529 m!1713145))

(declare-fun m!1713147 () Bool)

(assert (=> b!1468529 m!1713147))

(declare-fun m!1713149 () Bool)

(assert (=> b!1468530 m!1713149))

(declare-fun m!1713151 () Bool)

(assert (=> b!1468530 m!1713151))

(declare-fun m!1713153 () Bool)

(assert (=> b!1468527 m!1713153))

(declare-fun m!1713155 () Bool)

(assert (=> b!1468528 m!1713155))

(declare-fun m!1713157 () Bool)

(assert (=> b!1468532 m!1713157))

(push 1)

(assert (not b_next!37615))

(assert (not b!1468532))

(assert (not b!1468530))

(assert b_and!100493)

(assert (not b!1468527))

(assert b_and!100495)

(assert (not b!1468528))

(assert (not b!1468529))

(assert (not b_next!37617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100493)

(assert b_and!100495)

(assert (not b_next!37615))

(assert (not b_next!37617))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!430836 () Bool)

(declare-fun lt!511120 () Int)

(assert (=> d!430836 (>= lt!511120 0)))

(declare-fun e!937411 () Int)

(assert (=> d!430836 (= lt!511120 e!937411)))

(declare-fun c!242055 () Bool)

(assert (=> d!430836 (= c!242055 (is-Nil!15322 (t!135267 tokens1!47)))))

(assert (=> d!430836 (= (ListPrimitiveSize!101 (t!135267 tokens1!47)) lt!511120)))

(declare-fun b!1468555 () Bool)

(assert (=> b!1468555 (= e!937411 0)))

(declare-fun b!1468556 () Bool)

(assert (=> b!1468556 (= e!937411 (+ 1 (ListPrimitiveSize!101 (t!135267 (t!135267 tokens1!47)))))))

(assert (= (and d!430836 c!242055) b!1468555))

(assert (= (and d!430836 (not c!242055)) b!1468556))

(declare-fun m!1713173 () Bool)

(assert (=> b!1468556 m!1713173))

(assert (=> b!1468530 d!430836))

(declare-fun d!430838 () Bool)

(declare-fun lt!511121 () Int)

(assert (=> d!430838 (>= lt!511121 0)))

(declare-fun e!937412 () Int)

(assert (=> d!430838 (= lt!511121 e!937412)))

(declare-fun c!242056 () Bool)

(assert (=> d!430838 (= c!242056 (is-Nil!15322 tokens1!47))))

(assert (=> d!430838 (= (ListPrimitiveSize!101 tokens1!47) lt!511121)))

(declare-fun b!1468557 () Bool)

(assert (=> b!1468557 (= e!937412 0)))

(declare-fun b!1468558 () Bool)

(assert (=> b!1468558 (= e!937412 (+ 1 (ListPrimitiveSize!101 (t!135267 tokens1!47))))))

(assert (= (and d!430838 c!242056) b!1468557))

(assert (= (and d!430838 (not c!242056)) b!1468558))

(assert (=> b!1468558 m!1713149))

(assert (=> b!1468530 d!430838))

(declare-fun d!430840 () Bool)

(assert (=> d!430840 (= (inv!20495 (tag!2980 (rule!4493 (h!20723 tokens1!47)))) (= (mod (str.len (value!87054 (tag!2980 (rule!4493 (h!20723 tokens1!47))))) 2) 0))))

(assert (=> b!1468529 d!430840))

(declare-fun d!430842 () Bool)

(declare-fun res!664325 () Bool)

(declare-fun e!937415 () Bool)

(assert (=> d!430842 (=> (not res!664325) (not e!937415))))

(declare-fun semiInverseModEq!1019 (Int Int) Bool)

(assert (=> d!430842 (= res!664325 (semiInverseModEq!1019 (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (toValue!4035 (transformation!2716 (rule!4493 (h!20723 tokens1!47))))))))

(assert (=> d!430842 (= (inv!20499 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) e!937415)))

(declare-fun b!1468561 () Bool)

(declare-fun equivClasses!978 (Int Int) Bool)

(assert (=> b!1468561 (= e!937415 (equivClasses!978 (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (toValue!4035 (transformation!2716 (rule!4493 (h!20723 tokens1!47))))))))

(assert (= (and d!430842 res!664325) b!1468561))

(declare-fun m!1713175 () Bool)

(assert (=> d!430842 m!1713175))

(declare-fun m!1713177 () Bool)

(assert (=> b!1468561 m!1713177))

(assert (=> b!1468529 d!430842))

(declare-fun d!430844 () Bool)

(declare-fun res!664330 () Bool)

(declare-fun e!937418 () Bool)

(assert (=> d!430844 (=> (not res!664330) (not e!937418))))

(declare-fun isEmpty!9606 (List!15387) Bool)

(assert (=> d!430844 (= res!664330 (not (isEmpty!9606 (originalCharacters!3578 (h!20723 tokens1!47)))))))

(assert (=> d!430844 (= (inv!20498 (h!20723 tokens1!47)) e!937418)))

(declare-fun b!1468566 () Bool)

(declare-fun res!664331 () Bool)

(assert (=> b!1468566 (=> (not res!664331) (not e!937418))))

(declare-fun list!6144 (BalanceConc!10384) List!15387)

(declare-fun dynLambda!6970 (Int TokenValue!2806) BalanceConc!10384)

(assert (=> b!1468566 (= res!664331 (= (originalCharacters!3578 (h!20723 tokens1!47)) (list!6144 (dynLambda!6970 (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (value!87055 (h!20723 tokens1!47))))))))

(declare-fun b!1468567 () Bool)

(declare-fun size!12496 (List!15387) Int)

(assert (=> b!1468567 (= e!937418 (= (size!12494 (h!20723 tokens1!47)) (size!12496 (originalCharacters!3578 (h!20723 tokens1!47)))))))

(assert (= (and d!430844 res!664330) b!1468566))

(assert (= (and b!1468566 res!664331) b!1468567))

(declare-fun b_lambda!45807 () Bool)

(assert (=> (not b_lambda!45807) (not b!1468566)))

(declare-fun t!135272 () Bool)

(declare-fun tb!83089 () Bool)

(assert (=> (and b!1468531 (= (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47))))) t!135272) tb!83089))

(declare-fun b!1468572 () Bool)

(declare-fun e!937421 () Bool)

(declare-fun tp!413727 () Bool)

(declare-fun inv!20502 (Conc!5222) Bool)

(assert (=> b!1468572 (= e!937421 (and (inv!20502 (c!242049 (dynLambda!6970 (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (value!87055 (h!20723 tokens1!47))))) tp!413727))))

(declare-fun result!99830 () Bool)

(declare-fun inv!20503 (BalanceConc!10384) Bool)

(assert (=> tb!83089 (= result!99830 (and (inv!20503 (dynLambda!6970 (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))) (value!87055 (h!20723 tokens1!47)))) e!937421))))

(assert (= tb!83089 b!1468572))

(declare-fun m!1713179 () Bool)

(assert (=> b!1468572 m!1713179))

(declare-fun m!1713181 () Bool)

(assert (=> tb!83089 m!1713181))

(assert (=> b!1468566 t!135272))

(declare-fun b_and!100501 () Bool)

(assert (= b_and!100495 (and (=> t!135272 result!99830) b_and!100501)))

(declare-fun m!1713183 () Bool)

(assert (=> d!430844 m!1713183))

(declare-fun m!1713185 () Bool)

(assert (=> b!1468566 m!1713185))

(assert (=> b!1468566 m!1713185))

(declare-fun m!1713187 () Bool)

(assert (=> b!1468566 m!1713187))

(declare-fun m!1713189 () Bool)

(assert (=> b!1468567 m!1713189))

(assert (=> b!1468528 d!430844))

(declare-fun d!430848 () Bool)

(assert (=> d!430848 (= (isEmpty!9604 (t!135267 tokens1!47)) (is-Nil!15322 (t!135267 tokens1!47)))))

(assert (=> b!1468532 d!430848))

(declare-fun b!1468593 () Bool)

(declare-fun res!664336 () Bool)

(declare-fun e!937435 () Bool)

(assert (=> b!1468593 (=> res!664336 e!937435)))

(assert (=> b!1468593 (= res!664336 (not (is-IntegerValue!8420 (value!87055 (h!20723 tokens1!47)))))))

(declare-fun e!937436 () Bool)

(assert (=> b!1468593 (= e!937436 e!937435)))

(declare-fun b!1468594 () Bool)

(declare-fun inv!17 (TokenValue!2806) Bool)

(assert (=> b!1468594 (= e!937436 (inv!17 (value!87055 (h!20723 tokens1!47))))))

(declare-fun b!1468596 () Bool)

(declare-fun inv!15 (TokenValue!2806) Bool)

(assert (=> b!1468596 (= e!937435 (inv!15 (value!87055 (h!20723 tokens1!47))))))

(declare-fun b!1468597 () Bool)

(declare-fun e!937434 () Bool)

(declare-fun inv!16 (TokenValue!2806) Bool)

(assert (=> b!1468597 (= e!937434 (inv!16 (value!87055 (h!20723 tokens1!47))))))

(declare-fun b!1468595 () Bool)

(assert (=> b!1468595 (= e!937434 e!937436)))

(declare-fun c!242066 () Bool)

(assert (=> b!1468595 (= c!242066 (is-IntegerValue!8419 (value!87055 (h!20723 tokens1!47))))))

(declare-fun d!430850 () Bool)

(declare-fun c!242065 () Bool)

(assert (=> d!430850 (= c!242065 (is-IntegerValue!8418 (value!87055 (h!20723 tokens1!47))))))

(assert (=> d!430850 (= (inv!21 (value!87055 (h!20723 tokens1!47))) e!937434)))

(assert (= (and d!430850 c!242065) b!1468597))

(assert (= (and d!430850 (not c!242065)) b!1468595))

(assert (= (and b!1468595 c!242066) b!1468594))

(assert (= (and b!1468595 (not c!242066)) b!1468593))

(assert (= (and b!1468593 (not res!664336)) b!1468596))

(declare-fun m!1713191 () Bool)

(assert (=> b!1468594 m!1713191))

(declare-fun m!1713193 () Bool)

(assert (=> b!1468596 m!1713193))

(declare-fun m!1713195 () Bool)

(assert (=> b!1468597 m!1713195))

(assert (=> b!1468527 d!430850))

(declare-fun e!937442 () Bool)

(assert (=> b!1468529 (= tp!413708 e!937442)))

(declare-fun b!1468613 () Bool)

(declare-fun tp_is_empty!6905 () Bool)

(assert (=> b!1468613 (= e!937442 tp_is_empty!6905)))

(declare-fun b!1468616 () Bool)

(declare-fun tp!413739 () Bool)

(declare-fun tp!413740 () Bool)

(assert (=> b!1468616 (= e!937442 (and tp!413739 tp!413740))))

(declare-fun b!1468614 () Bool)

(declare-fun tp!413741 () Bool)

(declare-fun tp!413738 () Bool)

(assert (=> b!1468614 (= e!937442 (and tp!413741 tp!413738))))

(declare-fun b!1468615 () Bool)

(declare-fun tp!413742 () Bool)

(assert (=> b!1468615 (= e!937442 tp!413742)))

(assert (= (and b!1468529 (is-ElementMatch!4030 (regex!2716 (rule!4493 (h!20723 tokens1!47))))) b!1468613))

(assert (= (and b!1468529 (is-Concat!6837 (regex!2716 (rule!4493 (h!20723 tokens1!47))))) b!1468614))

(assert (= (and b!1468529 (is-Star!4030 (regex!2716 (rule!4493 (h!20723 tokens1!47))))) b!1468615))

(assert (= (and b!1468529 (is-Union!4030 (regex!2716 (rule!4493 (h!20723 tokens1!47))))) b!1468616))

(declare-fun b!1468630 () Bool)

(declare-fun b_free!36919 () Bool)

(declare-fun b_next!37623 () Bool)

(assert (=> b!1468630 (= b_free!36919 (not b_next!37623))))

(declare-fun tp!413753 () Bool)

(declare-fun b_and!100503 () Bool)

(assert (=> b!1468630 (= tp!413753 b_and!100503)))

(declare-fun b_free!36921 () Bool)

(declare-fun b_next!37625 () Bool)

(assert (=> b!1468630 (= b_free!36921 (not b_next!37625))))

(declare-fun t!135274 () Bool)

(declare-fun tb!83091 () Bool)

(assert (=> (and b!1468630 (= (toChars!3894 (transformation!2716 (rule!4493 (h!20723 (t!135267 tokens1!47))))) (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47))))) t!135274) tb!83091))

(declare-fun result!99838 () Bool)

(assert (= result!99838 result!99830))

(assert (=> b!1468566 t!135274))

(declare-fun b_and!100505 () Bool)

(declare-fun tp!413754 () Bool)

(assert (=> b!1468630 (= tp!413754 (and (=> t!135274 result!99838) b_and!100505))))

(declare-fun e!937456 () Bool)

(declare-fun b!1468628 () Bool)

(declare-fun e!937455 () Bool)

(declare-fun tp!413757 () Bool)

(assert (=> b!1468628 (= e!937455 (and (inv!21 (value!87055 (h!20723 (t!135267 tokens1!47)))) e!937456 tp!413757))))

(declare-fun e!937460 () Bool)

(declare-fun tp!413756 () Bool)

(declare-fun b!1468627 () Bool)

(assert (=> b!1468627 (= e!937460 (and (inv!20498 (h!20723 (t!135267 tokens1!47))) e!937455 tp!413756))))

(assert (=> b!1468528 (= tp!413705 e!937460)))

(declare-fun e!937458 () Bool)

(declare-fun b!1468629 () Bool)

(declare-fun tp!413755 () Bool)

(assert (=> b!1468629 (= e!937456 (and tp!413755 (inv!20495 (tag!2980 (rule!4493 (h!20723 (t!135267 tokens1!47))))) (inv!20499 (transformation!2716 (rule!4493 (h!20723 (t!135267 tokens1!47))))) e!937458))))

(assert (=> b!1468630 (= e!937458 (and tp!413753 tp!413754))))

(assert (= b!1468629 b!1468630))

(assert (= b!1468628 b!1468629))

(assert (= b!1468627 b!1468628))

(assert (= (and b!1468528 (is-Cons!15322 (t!135267 tokens1!47))) b!1468627))

(declare-fun m!1713203 () Bool)

(assert (=> b!1468628 m!1713203))

(declare-fun m!1713205 () Bool)

(assert (=> b!1468627 m!1713205))

(declare-fun m!1713207 () Bool)

(assert (=> b!1468629 m!1713207))

(declare-fun m!1713209 () Bool)

(assert (=> b!1468629 m!1713209))

(declare-fun b!1468635 () Bool)

(declare-fun e!937463 () Bool)

(declare-fun tp!413760 () Bool)

(assert (=> b!1468635 (= e!937463 (and tp_is_empty!6905 tp!413760))))

(assert (=> b!1468527 (= tp!413709 e!937463)))

(assert (= (and b!1468527 (is-Cons!15321 (originalCharacters!3578 (h!20723 tokens1!47)))) b!1468635))

(declare-fun b_lambda!45809 () Bool)

(assert (= b_lambda!45807 (or (and b!1468531 b_free!36913) (and b!1468630 b_free!36921 (= (toChars!3894 (transformation!2716 (rule!4493 (h!20723 (t!135267 tokens1!47))))) (toChars!3894 (transformation!2716 (rule!4493 (h!20723 tokens1!47)))))) b_lambda!45809)))

(push 1)

(assert (not b_next!37615))

(assert (not b!1468628))

(assert (not b_next!37625))

(assert b_and!100503)

(assert (not b!1468572))

(assert (not b!1468614))

(assert b_and!100493)

(assert (not b_next!37623))

(assert b_and!100505)

(assert (not b!1468629))

(assert b_and!100501)

(assert (not d!430844))

(assert (not b!1468615))

(assert tp_is_empty!6905)

(assert (not b_lambda!45809))

(assert (not tb!83089))

(assert (not b!1468567))

(assert (not b_next!37617))

(assert (not d!430842))

(assert (not b!1468556))

(assert (not b!1468616))

(assert (not b!1468597))

(assert (not b!1468627))

(assert (not b!1468635))

(assert (not b!1468561))

(assert (not b!1468566))

(assert (not b!1468594))

(assert (not b!1468596))

(assert (not b!1468558))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37615))

(assert (not b_next!37625))

(assert b_and!100503)

(assert b_and!100493)

(assert (not b_next!37623))

(assert (not b_next!37617))

(assert b_and!100505)

(assert b_and!100501)

(check-sat)

(pop 1)

