; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166284 () Bool)

(assert start!166284)

(declare-fun b!1704635 () Bool)

(declare-fun b_free!45863 () Bool)

(declare-fun b_next!46567 () Bool)

(assert (=> b!1704635 (= b_free!45863 (not b_next!46567))))

(declare-fun tp!486363 () Bool)

(declare-fun b_and!123029 () Bool)

(assert (=> b!1704635 (= tp!486363 b_and!123029)))

(declare-fun b_free!45865 () Bool)

(declare-fun b_next!46569 () Bool)

(assert (=> b!1704635 (= b_free!45865 (not b_next!46569))))

(declare-fun tp!486358 () Bool)

(declare-fun b_and!123031 () Bool)

(assert (=> b!1704635 (= tp!486358 b_and!123031)))

(declare-fun b!1704638 () Bool)

(declare-fun b_free!45867 () Bool)

(declare-fun b_next!46571 () Bool)

(assert (=> b!1704638 (= b_free!45867 (not b_next!46571))))

(declare-fun tp!486362 () Bool)

(declare-fun b_and!123033 () Bool)

(assert (=> b!1704638 (= tp!486362 b_and!123033)))

(declare-fun b_free!45869 () Bool)

(declare-fun b_next!46573 () Bool)

(assert (=> b!1704638 (= b_free!45869 (not b_next!46573))))

(declare-fun tp!486360 () Bool)

(declare-fun b_and!123035 () Bool)

(assert (=> b!1704638 (= tp!486360 b_and!123035)))

(declare-fun b!1704640 () Bool)

(declare-fun b_free!45871 () Bool)

(declare-fun b_next!46575 () Bool)

(assert (=> b!1704640 (= b_free!45871 (not b_next!46575))))

(declare-fun tp!486365 () Bool)

(declare-fun b_and!123037 () Bool)

(assert (=> b!1704640 (= tp!486365 b_and!123037)))

(declare-fun b_free!45873 () Bool)

(declare-fun b_next!46577 () Bool)

(assert (=> b!1704640 (= b_free!45873 (not b_next!46577))))

(declare-fun tp!486355 () Bool)

(declare-fun b_and!123039 () Bool)

(assert (=> b!1704640 (= tp!486355 b_and!123039)))

(declare-fun b!1704629 () Bool)

(declare-fun res!764175 () Bool)

(declare-fun e!1090140 () Bool)

(assert (=> b!1704629 (=> (not res!764175) (not e!1090140))))

(declare-datatypes ((List!18613 0))(
  ( (Nil!18543) (Cons!18543 (h!23944 (_ BitVec 16)) (t!157876 List!18613)) )
))
(declare-datatypes ((TokenValue!3354 0))(
  ( (FloatLiteralValue!6708 (text!23923 List!18613)) (TokenValueExt!3353 (__x!12010 Int)) (Broken!16770 (value!102672 List!18613)) (Object!3423) (End!3354) (Def!3354) (Underscore!3354) (Match!3354) (Else!3354) (Error!3354) (Case!3354) (If!3354) (Extends!3354) (Abstract!3354) (Class!3354) (Val!3354) (DelimiterValue!6708 (del!3414 List!18613)) (KeywordValue!3360 (value!102673 List!18613)) (CommentValue!6708 (value!102674 List!18613)) (WhitespaceValue!6708 (value!102675 List!18613)) (IndentationValue!3354 (value!102676 List!18613)) (String!21103) (Int32!3354) (Broken!16771 (value!102677 List!18613)) (Boolean!3355) (Unit!32415) (OperatorValue!3357 (op!3414 List!18613)) (IdentifierValue!6708 (value!102678 List!18613)) (IdentifierValue!6709 (value!102679 List!18613)) (WhitespaceValue!6709 (value!102680 List!18613)) (True!6708) (False!6708) (Broken!16772 (value!102681 List!18613)) (Broken!16773 (value!102682 List!18613)) (True!6709) (RightBrace!3354) (RightBracket!3354) (Colon!3354) (Null!3354) (Comma!3354) (LeftBracket!3354) (False!6709) (LeftBrace!3354) (ImaginaryLiteralValue!3354 (text!23924 List!18613)) (StringLiteralValue!10062 (value!102683 List!18613)) (EOFValue!3354 (value!102684 List!18613)) (IdentValue!3354 (value!102685 List!18613)) (DelimiterValue!6709 (value!102686 List!18613)) (DedentValue!3354 (value!102687 List!18613)) (NewLineValue!3354 (value!102688 List!18613)) (IntegerValue!10062 (value!102689 (_ BitVec 32)) (text!23925 List!18613)) (IntegerValue!10063 (value!102690 Int) (text!23926 List!18613)) (Times!3354) (Or!3354) (Equal!3354) (Minus!3354) (Broken!16774 (value!102691 List!18613)) (And!3354) (Div!3354) (LessEqual!3354) (Mod!3354) (Concat!7946) (Not!3354) (Plus!3354) (SpaceValue!3354 (value!102692 List!18613)) (IntegerValue!10064 (value!102693 Int) (text!23927 List!18613)) (StringLiteralValue!10063 (text!23928 List!18613)) (FloatLiteralValue!6709 (text!23929 List!18613)) (BytesLiteralValue!3354 (value!102694 List!18613)) (CommentValue!6709 (value!102695 List!18613)) (StringLiteralValue!10064 (value!102696 List!18613)) (ErrorTokenValue!3354 (msg!3415 List!18613)) )
))
(declare-datatypes ((C!9358 0))(
  ( (C!9359 (val!5275 Int)) )
))
(declare-datatypes ((Regex!4592 0))(
  ( (ElementMatch!4592 (c!279558 C!9358)) (Concat!7947 (regOne!9696 Regex!4592) (regTwo!9696 Regex!4592)) (EmptyExpr!4592) (Star!4592 (reg!4921 Regex!4592)) (EmptyLang!4592) (Union!4592 (regOne!9697 Regex!4592) (regTwo!9697 Regex!4592)) )
))
(declare-datatypes ((String!21104 0))(
  ( (String!21105 (value!102697 String)) )
))
(declare-datatypes ((List!18614 0))(
  ( (Nil!18544) (Cons!18544 (h!23945 C!9358) (t!157877 List!18614)) )
))
(declare-datatypes ((IArray!12353 0))(
  ( (IArray!12354 (innerList!6234 List!18614)) )
))
(declare-datatypes ((Conc!6174 0))(
  ( (Node!6174 (left!14812 Conc!6174) (right!15142 Conc!6174) (csize!12578 Int) (cheight!6385 Int)) (Leaf!9027 (xs!9050 IArray!12353) (csize!12579 Int)) (Empty!6174) )
))
(declare-datatypes ((BalanceConc!12292 0))(
  ( (BalanceConc!12293 (c!279559 Conc!6174)) )
))
(declare-datatypes ((TokenValueInjection!6368 0))(
  ( (TokenValueInjection!6369 (toValue!4755 Int) (toChars!4614 Int)) )
))
(declare-datatypes ((Rule!6328 0))(
  ( (Rule!6329 (regex!3264 Regex!4592) (tag!3560 String!21104) (isSeparator!3264 Bool) (transformation!3264 TokenValueInjection!6368)) )
))
(declare-datatypes ((List!18615 0))(
  ( (Nil!18545) (Cons!18545 (h!23946 Rule!6328) (t!157878 List!18615)) )
))
(declare-fun rules!3447 () List!18615)

(declare-fun isEmpty!11646 (List!18615) Bool)

(assert (=> b!1704629 (= res!764175 (not (isEmpty!11646 rules!3447)))))

(declare-fun b!1704631 () Bool)

(declare-fun res!764174 () Bool)

(assert (=> b!1704631 (=> (not res!764174) (not e!1090140))))

(declare-fun rule!422 () Rule!6328)

(declare-fun contains!3279 (List!18615 Rule!6328) Bool)

(assert (=> b!1704631 (= res!764174 (contains!3279 rules!3447 rule!422))))

(declare-fun e!1090137 () Bool)

(declare-datatypes ((Token!6094 0))(
  ( (Token!6095 (value!102698 TokenValue!3354) (rule!5196 Rule!6328) (size!14785 Int) (originalCharacters!4078 List!18614)) )
))
(declare-fun token!523 () Token!6094)

(declare-fun tp!486361 () Bool)

(declare-fun e!1090138 () Bool)

(declare-fun b!1704632 () Bool)

(declare-fun inv!23919 (String!21104) Bool)

(declare-fun inv!23922 (TokenValueInjection!6368) Bool)

(assert (=> b!1704632 (= e!1090138 (and tp!486361 (inv!23919 (tag!3560 (rule!5196 token!523))) (inv!23922 (transformation!3264 (rule!5196 token!523))) e!1090137))))

(declare-fun b!1704633 () Bool)

(declare-fun tp!486364 () Bool)

(declare-fun e!1090142 () Bool)

(declare-fun inv!21 (TokenValue!3354) Bool)

(assert (=> b!1704633 (= e!1090142 (and (inv!21 (value!102698 token!523)) e!1090138 tp!486364))))

(declare-fun b!1704634 () Bool)

(declare-fun e!1090139 () Bool)

(declare-fun e!1090141 () Bool)

(declare-fun tp!486359 () Bool)

(assert (=> b!1704634 (= e!1090141 (and tp!486359 (inv!23919 (tag!3560 rule!422)) (inv!23922 (transformation!3264 rule!422)) e!1090139))))

(assert (=> b!1704635 (= e!1090139 (and tp!486363 tp!486358))))

(declare-fun e!1090146 () Bool)

(declare-fun b!1704636 () Bool)

(declare-fun tp!486357 () Bool)

(declare-fun e!1090144 () Bool)

(assert (=> b!1704636 (= e!1090144 (and tp!486357 (inv!23919 (tag!3560 (h!23946 rules!3447))) (inv!23922 (transformation!3264 (h!23946 rules!3447))) e!1090146))))

(declare-fun res!764176 () Bool)

(assert (=> start!166284 (=> (not res!764176) (not e!1090140))))

(declare-datatypes ((LexerInterface!2893 0))(
  ( (LexerInterfaceExt!2890 (__x!12011 Int)) (Lexer!2891) )
))
(declare-fun thiss!24550 () LexerInterface!2893)

(assert (=> start!166284 (= res!764176 (is-Lexer!2891 thiss!24550))))

(assert (=> start!166284 e!1090140))

(assert (=> start!166284 true))

(declare-fun e!1090143 () Bool)

(assert (=> start!166284 e!1090143))

(assert (=> start!166284 e!1090141))

(declare-fun inv!23923 (Token!6094) Bool)

(assert (=> start!166284 (and (inv!23923 token!523) e!1090142)))

(declare-fun b!1704630 () Bool)

(declare-fun tp!486356 () Bool)

(assert (=> b!1704630 (= e!1090143 (and e!1090144 tp!486356))))

(declare-fun b!1704637 () Bool)

(declare-fun rulesValidInductive!1059 (LexerInterface!2893 List!18615) Bool)

(assert (=> b!1704637 (= e!1090140 (not (rulesValidInductive!1059 thiss!24550 rules!3447)))))

(declare-fun lt!652197 () List!18614)

(declare-fun list!7475 (BalanceConc!12292) List!18614)

(declare-fun charsOf!1913 (Token!6094) BalanceConc!12292)

(assert (=> b!1704637 (= lt!652197 (list!7475 (charsOf!1913 token!523)))))

(assert (=> b!1704638 (= e!1090146 (and tp!486362 tp!486360))))

(declare-fun b!1704639 () Bool)

(declare-fun res!764173 () Bool)

(assert (=> b!1704639 (=> (not res!764173) (not e!1090140))))

(declare-fun rulesInvariant!2562 (LexerInterface!2893 List!18615) Bool)

(assert (=> b!1704639 (= res!764173 (rulesInvariant!2562 thiss!24550 rules!3447))))

(assert (=> b!1704640 (= e!1090137 (and tp!486365 tp!486355))))

(assert (= (and start!166284 res!764176) b!1704629))

(assert (= (and b!1704629 res!764175) b!1704639))

(assert (= (and b!1704639 res!764173) b!1704631))

(assert (= (and b!1704631 res!764174) b!1704637))

(assert (= b!1704636 b!1704638))

(assert (= b!1704630 b!1704636))

(assert (= (and start!166284 (is-Cons!18545 rules!3447)) b!1704630))

(assert (= b!1704634 b!1704635))

(assert (= start!166284 b!1704634))

(assert (= b!1704632 b!1704640))

(assert (= b!1704633 b!1704632))

(assert (= start!166284 b!1704633))

(declare-fun m!2108789 () Bool)

(assert (=> b!1704629 m!2108789))

(declare-fun m!2108791 () Bool)

(assert (=> b!1704637 m!2108791))

(declare-fun m!2108793 () Bool)

(assert (=> b!1704637 m!2108793))

(assert (=> b!1704637 m!2108793))

(declare-fun m!2108795 () Bool)

(assert (=> b!1704637 m!2108795))

(declare-fun m!2108797 () Bool)

(assert (=> start!166284 m!2108797))

(declare-fun m!2108799 () Bool)

(assert (=> b!1704631 m!2108799))

(declare-fun m!2108801 () Bool)

(assert (=> b!1704636 m!2108801))

(declare-fun m!2108803 () Bool)

(assert (=> b!1704636 m!2108803))

(declare-fun m!2108805 () Bool)

(assert (=> b!1704639 m!2108805))

(declare-fun m!2108807 () Bool)

(assert (=> b!1704632 m!2108807))

(declare-fun m!2108809 () Bool)

(assert (=> b!1704632 m!2108809))

(declare-fun m!2108811 () Bool)

(assert (=> b!1704634 m!2108811))

(declare-fun m!2108813 () Bool)

(assert (=> b!1704634 m!2108813))

(declare-fun m!2108815 () Bool)

(assert (=> b!1704633 m!2108815))

(push 1)

(assert (not b!1704629))

(assert (not b!1704633))

(assert (not b!1704631))

(assert (not b_next!46577))

(assert (not b!1704632))

(assert (not b!1704637))

(assert b_and!123033)

(assert b_and!123037)

(assert (not b!1704634))

(assert b_and!123039)

(assert (not b_next!46575))

(assert b_and!123035)

(assert (not b_next!46567))

(assert (not b!1704636))

(assert (not b!1704630))

(assert b_and!123029)

(assert (not b_next!46573))

(assert (not b_next!46571))

(assert (not b!1704639))

(assert b_and!123031)

(assert (not b_next!46569))

(assert (not start!166284))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46577))

(assert b_and!123033)

(assert b_and!123037)

(assert b_and!123031)

(assert b_and!123039)

(assert (not b_next!46575))

(assert b_and!123035)

(assert (not b_next!46569))

(assert (not b_next!46567))

(assert b_and!123029)

(assert (not b_next!46573))

(assert (not b_next!46571))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523471 () Bool)

(assert (=> d!523471 (= (inv!23919 (tag!3560 rule!422)) (= (mod (str.len (value!102697 (tag!3560 rule!422))) 2) 0))))

(assert (=> b!1704634 d!523471))

(declare-fun d!523473 () Bool)

(declare-fun res!764199 () Bool)

(declare-fun e!1090189 () Bool)

(assert (=> d!523473 (=> (not res!764199) (not e!1090189))))

(declare-fun semiInverseModEq!1285 (Int Int) Bool)

(assert (=> d!523473 (= res!764199 (semiInverseModEq!1285 (toChars!4614 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 rule!422))))))

(assert (=> d!523473 (= (inv!23922 (transformation!3264 rule!422)) e!1090189)))

(declare-fun b!1704679 () Bool)

(declare-fun equivClasses!1226 (Int Int) Bool)

(assert (=> b!1704679 (= e!1090189 (equivClasses!1226 (toChars!4614 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 rule!422))))))

(assert (= (and d!523473 res!764199) b!1704679))

(declare-fun m!2108845 () Bool)

(assert (=> d!523473 m!2108845))

(declare-fun m!2108847 () Bool)

(assert (=> b!1704679 m!2108847))

(assert (=> b!1704634 d!523473))

(declare-fun d!523475 () Bool)

(declare-fun res!764204 () Bool)

(declare-fun e!1090192 () Bool)

(assert (=> d!523475 (=> (not res!764204) (not e!1090192))))

(declare-fun isEmpty!11648 (List!18614) Bool)

(assert (=> d!523475 (= res!764204 (not (isEmpty!11648 (originalCharacters!4078 token!523))))))

(assert (=> d!523475 (= (inv!23923 token!523) e!1090192)))

(declare-fun b!1704684 () Bool)

(declare-fun res!764205 () Bool)

(assert (=> b!1704684 (=> (not res!764205) (not e!1090192))))

(declare-fun dynLambda!8446 (Int TokenValue!3354) BalanceConc!12292)

(assert (=> b!1704684 (= res!764205 (= (originalCharacters!4078 token!523) (list!7475 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(declare-fun b!1704685 () Bool)

(declare-fun size!14787 (List!18614) Int)

(assert (=> b!1704685 (= e!1090192 (= (size!14785 token!523) (size!14787 (originalCharacters!4078 token!523))))))

(assert (= (and d!523475 res!764204) b!1704684))

(assert (= (and b!1704684 res!764205) b!1704685))

(declare-fun b_lambda!53797 () Bool)

(assert (=> (not b_lambda!53797) (not b!1704684)))

(declare-fun tb!100711 () Bool)

(declare-fun t!157883 () Bool)

(assert (=> (and b!1704635 (= (toChars!4614 (transformation!3264 rule!422)) (toChars!4614 (transformation!3264 (rule!5196 token!523)))) t!157883) tb!100711))

(declare-fun b!1704690 () Bool)

(declare-fun e!1090195 () Bool)

(declare-fun tp!486401 () Bool)

(declare-fun inv!23926 (Conc!6174) Bool)

(assert (=> b!1704690 (= e!1090195 (and (inv!23926 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))) tp!486401))))

(declare-fun result!120898 () Bool)

(declare-fun inv!23927 (BalanceConc!12292) Bool)

(assert (=> tb!100711 (= result!120898 (and (inv!23927 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))) e!1090195))))

(assert (= tb!100711 b!1704690))

(declare-fun m!2108849 () Bool)

(assert (=> b!1704690 m!2108849))

(declare-fun m!2108851 () Bool)

(assert (=> tb!100711 m!2108851))

(assert (=> b!1704684 t!157883))

(declare-fun b_and!123053 () Bool)

(assert (= b_and!123031 (and (=> t!157883 result!120898) b_and!123053)))

(declare-fun tb!100713 () Bool)

(declare-fun t!157885 () Bool)

(assert (=> (and b!1704638 (= (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toChars!4614 (transformation!3264 (rule!5196 token!523)))) t!157885) tb!100713))

(declare-fun result!120902 () Bool)

(assert (= result!120902 result!120898))

(assert (=> b!1704684 t!157885))

(declare-fun b_and!123055 () Bool)

(assert (= b_and!123035 (and (=> t!157885 result!120902) b_and!123055)))

(declare-fun t!157887 () Bool)

(declare-fun tb!100715 () Bool)

(assert (=> (and b!1704640 (= (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toChars!4614 (transformation!3264 (rule!5196 token!523)))) t!157887) tb!100715))

(declare-fun result!120904 () Bool)

(assert (= result!120904 result!120898))

(assert (=> b!1704684 t!157887))

(declare-fun b_and!123057 () Bool)

(assert (= b_and!123039 (and (=> t!157887 result!120904) b_and!123057)))

(declare-fun m!2108853 () Bool)

(assert (=> d!523475 m!2108853))

(declare-fun m!2108855 () Bool)

(assert (=> b!1704684 m!2108855))

(assert (=> b!1704684 m!2108855))

(declare-fun m!2108857 () Bool)

(assert (=> b!1704684 m!2108857))

(declare-fun m!2108859 () Bool)

(assert (=> b!1704685 m!2108859))

(assert (=> start!166284 d!523475))

(declare-fun d!523477 () Bool)

(assert (=> d!523477 (= (isEmpty!11646 rules!3447) (is-Nil!18545 rules!3447))))

(assert (=> b!1704629 d!523477))

(declare-fun d!523479 () Bool)

(declare-fun res!764208 () Bool)

(declare-fun e!1090198 () Bool)

(assert (=> d!523479 (=> (not res!764208) (not e!1090198))))

(declare-fun rulesValid!1213 (LexerInterface!2893 List!18615) Bool)

(assert (=> d!523479 (= res!764208 (rulesValid!1213 thiss!24550 rules!3447))))

(assert (=> d!523479 (= (rulesInvariant!2562 thiss!24550 rules!3447) e!1090198)))

(declare-fun b!1704693 () Bool)

(declare-datatypes ((List!18619 0))(
  ( (Nil!18549) (Cons!18549 (h!23950 String!21104) (t!157890 List!18619)) )
))
(declare-fun noDuplicateTag!1213 (LexerInterface!2893 List!18615 List!18619) Bool)

(assert (=> b!1704693 (= e!1090198 (noDuplicateTag!1213 thiss!24550 rules!3447 Nil!18549))))

(assert (= (and d!523479 res!764208) b!1704693))

(declare-fun m!2108861 () Bool)

(assert (=> d!523479 m!2108861))

(declare-fun m!2108863 () Bool)

(assert (=> b!1704693 m!2108863))

(assert (=> b!1704639 d!523479))

(declare-fun b!1704704 () Bool)

(declare-fun e!1090206 () Bool)

(declare-fun inv!15 (TokenValue!3354) Bool)

(assert (=> b!1704704 (= e!1090206 (inv!15 (value!102698 token!523)))))

(declare-fun d!523481 () Bool)

(declare-fun c!279567 () Bool)

(assert (=> d!523481 (= c!279567 (is-IntegerValue!10062 (value!102698 token!523)))))

(declare-fun e!1090205 () Bool)

(assert (=> d!523481 (= (inv!21 (value!102698 token!523)) e!1090205)))

(declare-fun b!1704705 () Bool)

(declare-fun res!764211 () Bool)

(assert (=> b!1704705 (=> res!764211 e!1090206)))

(assert (=> b!1704705 (= res!764211 (not (is-IntegerValue!10064 (value!102698 token!523))))))

(declare-fun e!1090207 () Bool)

(assert (=> b!1704705 (= e!1090207 e!1090206)))

(declare-fun b!1704706 () Bool)

(declare-fun inv!16 (TokenValue!3354) Bool)

(assert (=> b!1704706 (= e!1090205 (inv!16 (value!102698 token!523)))))

(declare-fun b!1704707 () Bool)

(declare-fun inv!17 (TokenValue!3354) Bool)

(assert (=> b!1704707 (= e!1090207 (inv!17 (value!102698 token!523)))))

(declare-fun b!1704708 () Bool)

(assert (=> b!1704708 (= e!1090205 e!1090207)))

(declare-fun c!279566 () Bool)

(assert (=> b!1704708 (= c!279566 (is-IntegerValue!10063 (value!102698 token!523)))))

(assert (= (and d!523481 c!279567) b!1704706))

(assert (= (and d!523481 (not c!279567)) b!1704708))

(assert (= (and b!1704708 c!279566) b!1704707))

(assert (= (and b!1704708 (not c!279566)) b!1704705))

(assert (= (and b!1704705 (not res!764211)) b!1704704))

(declare-fun m!2108865 () Bool)

(assert (=> b!1704704 m!2108865))

(declare-fun m!2108867 () Bool)

(assert (=> b!1704706 m!2108867))

(declare-fun m!2108869 () Bool)

(assert (=> b!1704707 m!2108869))

(assert (=> b!1704633 d!523481))

(declare-fun d!523485 () Bool)

(assert (=> d!523485 (= (inv!23919 (tag!3560 (rule!5196 token!523))) (= (mod (str.len (value!102697 (tag!3560 (rule!5196 token!523)))) 2) 0))))

(assert (=> b!1704632 d!523485))

(declare-fun d!523487 () Bool)

(declare-fun res!764212 () Bool)

(declare-fun e!1090208 () Bool)

(assert (=> d!523487 (=> (not res!764212) (not e!1090208))))

(assert (=> d!523487 (= res!764212 (semiInverseModEq!1285 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 (rule!5196 token!523)))))))

(assert (=> d!523487 (= (inv!23922 (transformation!3264 (rule!5196 token!523))) e!1090208)))

(declare-fun b!1704709 () Bool)

(assert (=> b!1704709 (= e!1090208 (equivClasses!1226 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 (rule!5196 token!523)))))))

(assert (= (and d!523487 res!764212) b!1704709))

(declare-fun m!2108871 () Bool)

(assert (=> d!523487 m!2108871))

(declare-fun m!2108873 () Bool)

(assert (=> b!1704709 m!2108873))

(assert (=> b!1704632 d!523487))

(declare-fun d!523489 () Bool)

(assert (=> d!523489 true))

(declare-fun lt!652205 () Bool)

(declare-fun lambda!68667 () Int)

(declare-fun forall!4231 (List!18615 Int) Bool)

(assert (=> d!523489 (= lt!652205 (forall!4231 rules!3447 lambda!68667))))

(declare-fun e!1090221 () Bool)

(assert (=> d!523489 (= lt!652205 e!1090221)))

(declare-fun res!764224 () Bool)

(assert (=> d!523489 (=> res!764224 e!1090221)))

(assert (=> d!523489 (= res!764224 (not (is-Cons!18545 rules!3447)))))

(assert (=> d!523489 (= (rulesValidInductive!1059 thiss!24550 rules!3447) lt!652205)))

(declare-fun b!1704721 () Bool)

(declare-fun e!1090220 () Bool)

(assert (=> b!1704721 (= e!1090221 e!1090220)))

(declare-fun res!764225 () Bool)

(assert (=> b!1704721 (=> (not res!764225) (not e!1090220))))

(declare-fun ruleValid!774 (LexerInterface!2893 Rule!6328) Bool)

(assert (=> b!1704721 (= res!764225 (ruleValid!774 thiss!24550 (h!23946 rules!3447)))))

(declare-fun b!1704722 () Bool)

(assert (=> b!1704722 (= e!1090220 (rulesValidInductive!1059 thiss!24550 (t!157878 rules!3447)))))

(assert (= (and d!523489 (not res!764224)) b!1704721))

(assert (= (and b!1704721 res!764225) b!1704722))

(declare-fun m!2108879 () Bool)

(assert (=> d!523489 m!2108879))

(declare-fun m!2108881 () Bool)

(assert (=> b!1704721 m!2108881))

(declare-fun m!2108883 () Bool)

(assert (=> b!1704722 m!2108883))

(assert (=> b!1704637 d!523489))

(declare-fun d!523493 () Bool)

(declare-fun list!7477 (Conc!6174) List!18614)

(assert (=> d!523493 (= (list!7475 (charsOf!1913 token!523)) (list!7477 (c!279559 (charsOf!1913 token!523))))))

(declare-fun bs!401490 () Bool)

(assert (= bs!401490 d!523493))

(declare-fun m!2108885 () Bool)

(assert (=> bs!401490 m!2108885))

(assert (=> b!1704637 d!523493))

(declare-fun d!523495 () Bool)

(declare-fun lt!652208 () BalanceConc!12292)

(assert (=> d!523495 (= (list!7475 lt!652208) (originalCharacters!4078 token!523))))

(assert (=> d!523495 (= lt!652208 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))

(assert (=> d!523495 (= (charsOf!1913 token!523) lt!652208)))

(declare-fun b_lambda!53799 () Bool)

(assert (=> (not b_lambda!53799) (not d!523495)))

(assert (=> d!523495 t!157883))

(declare-fun b_and!123059 () Bool)

(assert (= b_and!123053 (and (=> t!157883 result!120898) b_and!123059)))

(assert (=> d!523495 t!157885))

(declare-fun b_and!123061 () Bool)

(assert (= b_and!123055 (and (=> t!157885 result!120902) b_and!123061)))

(assert (=> d!523495 t!157887))

(declare-fun b_and!123063 () Bool)

(assert (= b_and!123057 (and (=> t!157887 result!120904) b_and!123063)))

(declare-fun m!2108887 () Bool)

(assert (=> d!523495 m!2108887))

(assert (=> d!523495 m!2108855))

(assert (=> b!1704637 d!523495))

(declare-fun d!523497 () Bool)

(assert (=> d!523497 (= (inv!23919 (tag!3560 (h!23946 rules!3447))) (= (mod (str.len (value!102697 (tag!3560 (h!23946 rules!3447)))) 2) 0))))

(assert (=> b!1704636 d!523497))

(declare-fun d!523499 () Bool)

(declare-fun res!764226 () Bool)

(declare-fun e!1090222 () Bool)

(assert (=> d!523499 (=> (not res!764226) (not e!1090222))))

(assert (=> d!523499 (= res!764226 (semiInverseModEq!1285 (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toValue!4755 (transformation!3264 (h!23946 rules!3447)))))))

(assert (=> d!523499 (= (inv!23922 (transformation!3264 (h!23946 rules!3447))) e!1090222)))

(declare-fun b!1704725 () Bool)

(assert (=> b!1704725 (= e!1090222 (equivClasses!1226 (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toValue!4755 (transformation!3264 (h!23946 rules!3447)))))))

(assert (= (and d!523499 res!764226) b!1704725))

(declare-fun m!2108889 () Bool)

(assert (=> d!523499 m!2108889))

(declare-fun m!2108891 () Bool)

(assert (=> b!1704725 m!2108891))

(assert (=> b!1704636 d!523499))

(declare-fun d!523501 () Bool)

(declare-fun lt!652211 () Bool)

(declare-fun content!2632 (List!18615) (Set Rule!6328))

(assert (=> d!523501 (= lt!652211 (set.member rule!422 (content!2632 rules!3447)))))

(declare-fun e!1090227 () Bool)

(assert (=> d!523501 (= lt!652211 e!1090227)))

(declare-fun res!764232 () Bool)

(assert (=> d!523501 (=> (not res!764232) (not e!1090227))))

(assert (=> d!523501 (= res!764232 (is-Cons!18545 rules!3447))))

(assert (=> d!523501 (= (contains!3279 rules!3447 rule!422) lt!652211)))

(declare-fun b!1704730 () Bool)

(declare-fun e!1090228 () Bool)

(assert (=> b!1704730 (= e!1090227 e!1090228)))

(declare-fun res!764231 () Bool)

(assert (=> b!1704730 (=> res!764231 e!1090228)))

(assert (=> b!1704730 (= res!764231 (= (h!23946 rules!3447) rule!422))))

(declare-fun b!1704731 () Bool)

(assert (=> b!1704731 (= e!1090228 (contains!3279 (t!157878 rules!3447) rule!422))))

(assert (= (and d!523501 res!764232) b!1704730))

(assert (= (and b!1704730 (not res!764231)) b!1704731))

(declare-fun m!2108893 () Bool)

(assert (=> d!523501 m!2108893))

(declare-fun m!2108895 () Bool)

(assert (=> d!523501 m!2108895))

(declare-fun m!2108897 () Bool)

(assert (=> b!1704731 m!2108897))

(assert (=> b!1704631 d!523501))

(declare-fun b!1704744 () Bool)

(declare-fun e!1090231 () Bool)

(declare-fun tp!486414 () Bool)

(assert (=> b!1704744 (= e!1090231 tp!486414)))

(assert (=> b!1704634 (= tp!486359 e!1090231)))

(declare-fun b!1704743 () Bool)

(declare-fun tp!486416 () Bool)

(declare-fun tp!486413 () Bool)

(assert (=> b!1704743 (= e!1090231 (and tp!486416 tp!486413))))

(declare-fun b!1704742 () Bool)

(declare-fun tp_is_empty!7451 () Bool)

(assert (=> b!1704742 (= e!1090231 tp_is_empty!7451)))

(declare-fun b!1704745 () Bool)

(declare-fun tp!486412 () Bool)

(declare-fun tp!486415 () Bool)

(assert (=> b!1704745 (= e!1090231 (and tp!486412 tp!486415))))

(assert (= (and b!1704634 (is-ElementMatch!4592 (regex!3264 rule!422))) b!1704742))

(assert (= (and b!1704634 (is-Concat!7947 (regex!3264 rule!422))) b!1704743))

(assert (= (and b!1704634 (is-Star!4592 (regex!3264 rule!422))) b!1704744))

(assert (= (and b!1704634 (is-Union!4592 (regex!3264 rule!422))) b!1704745))

(declare-fun b!1704750 () Bool)

(declare-fun e!1090234 () Bool)

(declare-fun tp!486419 () Bool)

(assert (=> b!1704750 (= e!1090234 (and tp_is_empty!7451 tp!486419))))

(assert (=> b!1704633 (= tp!486364 e!1090234)))

(assert (= (and b!1704633 (is-Cons!18544 (originalCharacters!4078 token!523))) b!1704750))

(declare-fun b!1704753 () Bool)

(declare-fun e!1090235 () Bool)

(declare-fun tp!486422 () Bool)

(assert (=> b!1704753 (= e!1090235 tp!486422)))

(assert (=> b!1704632 (= tp!486361 e!1090235)))

(declare-fun b!1704752 () Bool)

(declare-fun tp!486424 () Bool)

(declare-fun tp!486421 () Bool)

(assert (=> b!1704752 (= e!1090235 (and tp!486424 tp!486421))))

(declare-fun b!1704751 () Bool)

(assert (=> b!1704751 (= e!1090235 tp_is_empty!7451)))

(declare-fun b!1704754 () Bool)

(declare-fun tp!486420 () Bool)

(declare-fun tp!486423 () Bool)

(assert (=> b!1704754 (= e!1090235 (and tp!486420 tp!486423))))

(assert (= (and b!1704632 (is-ElementMatch!4592 (regex!3264 (rule!5196 token!523)))) b!1704751))

(assert (= (and b!1704632 (is-Concat!7947 (regex!3264 (rule!5196 token!523)))) b!1704752))

(assert (= (and b!1704632 (is-Star!4592 (regex!3264 (rule!5196 token!523)))) b!1704753))

(assert (= (and b!1704632 (is-Union!4592 (regex!3264 (rule!5196 token!523)))) b!1704754))

(declare-fun b!1704757 () Bool)

(declare-fun e!1090236 () Bool)

(declare-fun tp!486427 () Bool)

(assert (=> b!1704757 (= e!1090236 tp!486427)))

(assert (=> b!1704636 (= tp!486357 e!1090236)))

(declare-fun b!1704756 () Bool)

(declare-fun tp!486429 () Bool)

(declare-fun tp!486426 () Bool)

(assert (=> b!1704756 (= e!1090236 (and tp!486429 tp!486426))))

(declare-fun b!1704755 () Bool)

(assert (=> b!1704755 (= e!1090236 tp_is_empty!7451)))

(declare-fun b!1704758 () Bool)

(declare-fun tp!486425 () Bool)

(declare-fun tp!486428 () Bool)

(assert (=> b!1704758 (= e!1090236 (and tp!486425 tp!486428))))

(assert (= (and b!1704636 (is-ElementMatch!4592 (regex!3264 (h!23946 rules!3447)))) b!1704755))

(assert (= (and b!1704636 (is-Concat!7947 (regex!3264 (h!23946 rules!3447)))) b!1704756))

(assert (= (and b!1704636 (is-Star!4592 (regex!3264 (h!23946 rules!3447)))) b!1704757))

(assert (= (and b!1704636 (is-Union!4592 (regex!3264 (h!23946 rules!3447)))) b!1704758))

(declare-fun b!1704769 () Bool)

(declare-fun b_free!45887 () Bool)

(declare-fun b_next!46591 () Bool)

(assert (=> b!1704769 (= b_free!45887 (not b_next!46591))))

(declare-fun tp!486440 () Bool)

(declare-fun b_and!123065 () Bool)

(assert (=> b!1704769 (= tp!486440 b_and!123065)))

(declare-fun b_free!45889 () Bool)

(declare-fun b_next!46593 () Bool)

(assert (=> b!1704769 (= b_free!45889 (not b_next!46593))))

(declare-fun tb!100717 () Bool)

(declare-fun t!157889 () Bool)

(assert (=> (and b!1704769 (= (toChars!4614 (transformation!3264 (h!23946 (t!157878 rules!3447)))) (toChars!4614 (transformation!3264 (rule!5196 token!523)))) t!157889) tb!100717))

(declare-fun result!120912 () Bool)

(assert (= result!120912 result!120898))

(assert (=> b!1704684 t!157889))

(assert (=> d!523495 t!157889))

(declare-fun b_and!123067 () Bool)

(declare-fun tp!486438 () Bool)

(assert (=> b!1704769 (= tp!486438 (and (=> t!157889 result!120912) b_and!123067))))

(declare-fun e!1090247 () Bool)

(assert (=> b!1704769 (= e!1090247 (and tp!486440 tp!486438))))

(declare-fun b!1704768 () Bool)

(declare-fun tp!486441 () Bool)

(declare-fun e!1090246 () Bool)

(assert (=> b!1704768 (= e!1090246 (and tp!486441 (inv!23919 (tag!3560 (h!23946 (t!157878 rules!3447)))) (inv!23922 (transformation!3264 (h!23946 (t!157878 rules!3447)))) e!1090247))))

(declare-fun b!1704767 () Bool)

(declare-fun e!1090248 () Bool)

(declare-fun tp!486439 () Bool)

(assert (=> b!1704767 (= e!1090248 (and e!1090246 tp!486439))))

(assert (=> b!1704630 (= tp!486356 e!1090248)))

(assert (= b!1704768 b!1704769))

(assert (= b!1704767 b!1704768))

(assert (= (and b!1704630 (is-Cons!18545 (t!157878 rules!3447))) b!1704767))

(declare-fun m!2108899 () Bool)

(assert (=> b!1704768 m!2108899))

(declare-fun m!2108901 () Bool)

(assert (=> b!1704768 m!2108901))

(declare-fun b_lambda!53801 () Bool)

(assert (= b_lambda!53797 (or (and b!1704635 b_free!45865 (= (toChars!4614 (transformation!3264 rule!422)) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) (and b!1704638 b_free!45869 (= (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) (and b!1704640 b_free!45873) (and b!1704769 b_free!45889 (= (toChars!4614 (transformation!3264 (h!23946 (t!157878 rules!3447)))) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) b_lambda!53801)))

(declare-fun b_lambda!53803 () Bool)

(assert (= b_lambda!53799 (or (and b!1704635 b_free!45865 (= (toChars!4614 (transformation!3264 rule!422)) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) (and b!1704638 b_free!45869 (= (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) (and b!1704640 b_free!45873) (and b!1704769 b_free!45889 (= (toChars!4614 (transformation!3264 (h!23946 (t!157878 rules!3447)))) (toChars!4614 (transformation!3264 (rule!5196 token!523))))) b_lambda!53803)))

(push 1)

(assert (not d!523479))

(assert (not b!1704753))

(assert (not d!523495))

(assert (not b!1704725))

(assert (not b!1704706))

(assert (not b_next!46575))

(assert (not b_lambda!53803))

(assert (not b_next!46591))

(assert (not d!523489))

(assert b_and!123029)

(assert (not b!1704758))

(assert (not b!1704754))

(assert (not b!1704756))

(assert (not d!523499))

(assert b_and!123065)

(assert (not b_next!46573))

(assert (not b_next!46571))

(assert (not b!1704752))

(assert (not tb!100711))

(assert (not b!1704768))

(assert b_and!123061)

(assert (not b!1704693))

(assert (not d!523487))

(assert (not b_lambda!53801))

(assert (not d!523501))

(assert (not b!1704731))

(assert (not b_next!46577))

(assert (not b!1704750))

(assert (not b!1704743))

(assert (not b!1704757))

(assert (not d!523475))

(assert (not b!1704690))

(assert (not b!1704707))

(assert b_and!123033)

(assert (not b!1704767))

(assert (not b!1704721))

(assert b_and!123037)

(assert (not b!1704704))

(assert (not b!1704684))

(assert (not d!523473))

(assert (not b_next!46593))

(assert b_and!123063)

(assert (not b!1704709))

(assert (not b!1704679))

(assert (not b!1704744))

(assert (not b!1704745))

(assert b_and!123067)

(assert (not b_next!46569))

(assert (not b!1704685))

(assert tp_is_empty!7451)

(assert (not b_next!46567))

(assert (not d!523493))

(assert b_and!123059)

(assert (not b!1704722))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123061)

(assert (not b_next!46577))

(assert b_and!123033)

(assert b_and!123037)

(assert (not b_next!46575))

(assert (not b_next!46567))

(assert (not b_next!46591))

(assert b_and!123059)

(assert b_and!123029)

(assert b_and!123065)

(assert (not b_next!46573))

(assert (not b_next!46571))

(assert (not b_next!46593))

(assert b_and!123063)

(assert b_and!123067)

(assert (not b_next!46569))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523527 () Bool)

(assert (=> d!523527 (= (inv!23919 (tag!3560 (h!23946 (t!157878 rules!3447)))) (= (mod (str.len (value!102697 (tag!3560 (h!23946 (t!157878 rules!3447))))) 2) 0))))

(assert (=> b!1704768 d!523527))

(declare-fun d!523529 () Bool)

(declare-fun res!764256 () Bool)

(declare-fun e!1090297 () Bool)

(assert (=> d!523529 (=> (not res!764256) (not e!1090297))))

(assert (=> d!523529 (= res!764256 (semiInverseModEq!1285 (toChars!4614 (transformation!3264 (h!23946 (t!157878 rules!3447)))) (toValue!4755 (transformation!3264 (h!23946 (t!157878 rules!3447))))))))

(assert (=> d!523529 (= (inv!23922 (transformation!3264 (h!23946 (t!157878 rules!3447)))) e!1090297)))

(declare-fun b!1704849 () Bool)

(assert (=> b!1704849 (= e!1090297 (equivClasses!1226 (toChars!4614 (transformation!3264 (h!23946 (t!157878 rules!3447)))) (toValue!4755 (transformation!3264 (h!23946 (t!157878 rules!3447))))))))

(assert (= (and d!523529 res!764256) b!1704849))

(declare-fun m!2108953 () Bool)

(assert (=> d!523529 m!2108953))

(declare-fun m!2108955 () Bool)

(assert (=> b!1704849 m!2108955))

(assert (=> b!1704768 d!523529))

(declare-fun d!523531 () Bool)

(assert (=> d!523531 (= (list!7475 lt!652208) (list!7477 (c!279559 lt!652208)))))

(declare-fun bs!401492 () Bool)

(assert (= bs!401492 d!523531))

(declare-fun m!2108957 () Bool)

(assert (=> bs!401492 m!2108957))

(assert (=> d!523495 d!523531))

(declare-fun d!523533 () Bool)

(assert (=> d!523533 true))

(declare-fun order!11219 () Int)

(declare-fun lambda!68673 () Int)

(declare-fun order!11217 () Int)

(declare-fun dynLambda!8448 (Int Int) Int)

(declare-fun dynLambda!8449 (Int Int) Int)

(assert (=> d!523533 (< (dynLambda!8448 order!11217 (toChars!4614 (transformation!3264 (h!23946 rules!3447)))) (dynLambda!8449 order!11219 lambda!68673))))

(assert (=> d!523533 true))

(declare-fun order!11221 () Int)

(declare-fun dynLambda!8450 (Int Int) Int)

(assert (=> d!523533 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 (h!23946 rules!3447)))) (dynLambda!8449 order!11219 lambda!68673))))

(declare-fun Forall!675 (Int) Bool)

(assert (=> d!523533 (= (semiInverseModEq!1285 (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toValue!4755 (transformation!3264 (h!23946 rules!3447)))) (Forall!675 lambda!68673))))

(declare-fun bs!401493 () Bool)

(assert (= bs!401493 d!523533))

(declare-fun m!2108959 () Bool)

(assert (=> bs!401493 m!2108959))

(assert (=> d!523499 d!523533))

(declare-fun d!523535 () Bool)

(assert (=> d!523535 true))

(declare-fun lambda!68676 () Int)

(declare-fun order!11223 () Int)

(declare-fun dynLambda!8451 (Int Int) Int)

(assert (=> d!523535 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (dynLambda!8451 order!11223 lambda!68676))))

(declare-fun Forall2!546 (Int) Bool)

(assert (=> d!523535 (= (equivClasses!1226 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (Forall2!546 lambda!68676))))

(declare-fun bs!401494 () Bool)

(assert (= bs!401494 d!523535))

(declare-fun m!2108961 () Bool)

(assert (=> bs!401494 m!2108961))

(assert (=> b!1704709 d!523535))

(declare-fun bs!401495 () Bool)

(declare-fun d!523537 () Bool)

(assert (= bs!401495 (and d!523537 d!523535)))

(declare-fun lambda!68677 () Int)

(assert (=> bs!401495 (= (= (toValue!4755 (transformation!3264 (h!23946 rules!3447))) (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (= lambda!68677 lambda!68676))))

(assert (=> d!523537 true))

(assert (=> d!523537 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 (h!23946 rules!3447)))) (dynLambda!8451 order!11223 lambda!68677))))

(assert (=> d!523537 (= (equivClasses!1226 (toChars!4614 (transformation!3264 (h!23946 rules!3447))) (toValue!4755 (transformation!3264 (h!23946 rules!3447)))) (Forall2!546 lambda!68677))))

(declare-fun bs!401496 () Bool)

(assert (= bs!401496 d!523537))

(declare-fun m!2108963 () Bool)

(assert (=> bs!401496 m!2108963))

(assert (=> b!1704725 d!523537))

(declare-fun bs!401497 () Bool)

(declare-fun d!523539 () Bool)

(assert (= bs!401497 (and d!523539 d!523535)))

(declare-fun lambda!68678 () Int)

(assert (=> bs!401497 (= (= (toValue!4755 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (= lambda!68678 lambda!68676))))

(declare-fun bs!401498 () Bool)

(assert (= bs!401498 (and d!523539 d!523537)))

(assert (=> bs!401498 (= (= (toValue!4755 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 (h!23946 rules!3447)))) (= lambda!68678 lambda!68677))))

(assert (=> d!523539 true))

(assert (=> d!523539 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 rule!422))) (dynLambda!8451 order!11223 lambda!68678))))

(assert (=> d!523539 (= (equivClasses!1226 (toChars!4614 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 rule!422))) (Forall2!546 lambda!68678))))

(declare-fun bs!401499 () Bool)

(assert (= bs!401499 d!523539))

(declare-fun m!2108965 () Bool)

(assert (=> bs!401499 m!2108965))

(assert (=> b!1704679 d!523539))

(declare-fun d!523541 () Bool)

(declare-fun charsToBigInt!0 (List!18613 Int) Int)

(assert (=> d!523541 (= (inv!15 (value!102698 token!523)) (= (charsToBigInt!0 (text!23927 (value!102698 token!523)) 0) (value!102693 (value!102698 token!523))))))

(declare-fun bs!401500 () Bool)

(assert (= bs!401500 d!523541))

(declare-fun m!2108967 () Bool)

(assert (=> bs!401500 m!2108967))

(assert (=> b!1704704 d!523541))

(declare-fun bs!401501 () Bool)

(declare-fun d!523543 () Bool)

(assert (= bs!401501 (and d!523543 d!523533)))

(declare-fun lambda!68679 () Int)

(assert (=> bs!401501 (= (and (= (toChars!4614 (transformation!3264 rule!422)) (toChars!4614 (transformation!3264 (h!23946 rules!3447)))) (= (toValue!4755 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 (h!23946 rules!3447))))) (= lambda!68679 lambda!68673))))

(assert (=> d!523543 true))

(assert (=> d!523543 (< (dynLambda!8448 order!11217 (toChars!4614 (transformation!3264 rule!422))) (dynLambda!8449 order!11219 lambda!68679))))

(assert (=> d!523543 true))

(assert (=> d!523543 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 rule!422))) (dynLambda!8449 order!11219 lambda!68679))))

(assert (=> d!523543 (= (semiInverseModEq!1285 (toChars!4614 (transformation!3264 rule!422)) (toValue!4755 (transformation!3264 rule!422))) (Forall!675 lambda!68679))))

(declare-fun bs!401502 () Bool)

(assert (= bs!401502 d!523543))

(declare-fun m!2108969 () Bool)

(assert (=> bs!401502 m!2108969))

(assert (=> d!523473 d!523543))

(declare-fun d!523545 () Bool)

(declare-fun res!764263 () Bool)

(declare-fun e!1090304 () Bool)

(assert (=> d!523545 (=> res!764263 e!1090304)))

(assert (=> d!523545 (= res!764263 (is-Nil!18545 rules!3447))))

(assert (=> d!523545 (= (noDuplicateTag!1213 thiss!24550 rules!3447 Nil!18549) e!1090304)))

(declare-fun b!1704862 () Bool)

(declare-fun e!1090305 () Bool)

(assert (=> b!1704862 (= e!1090304 e!1090305)))

(declare-fun res!764264 () Bool)

(assert (=> b!1704862 (=> (not res!764264) (not e!1090305))))

(declare-fun contains!3281 (List!18619 String!21104) Bool)

(assert (=> b!1704862 (= res!764264 (not (contains!3281 Nil!18549 (tag!3560 (h!23946 rules!3447)))))))

(declare-fun b!1704863 () Bool)

(assert (=> b!1704863 (= e!1090305 (noDuplicateTag!1213 thiss!24550 (t!157878 rules!3447) (Cons!18549 (tag!3560 (h!23946 rules!3447)) Nil!18549)))))

(assert (= (and d!523545 (not res!764263)) b!1704862))

(assert (= (and b!1704862 res!764264) b!1704863))

(declare-fun m!2108971 () Bool)

(assert (=> b!1704862 m!2108971))

(declare-fun m!2108973 () Bool)

(assert (=> b!1704863 m!2108973))

(assert (=> b!1704693 d!523545))

(declare-fun d!523547 () Bool)

(declare-fun c!279576 () Bool)

(assert (=> d!523547 (= c!279576 (is-Nil!18545 rules!3447))))

(declare-fun e!1090308 () (Set Rule!6328))

(assert (=> d!523547 (= (content!2632 rules!3447) e!1090308)))

(declare-fun b!1704868 () Bool)

(assert (=> b!1704868 (= e!1090308 (as set.empty (Set Rule!6328)))))

(declare-fun b!1704869 () Bool)

(assert (=> b!1704869 (= e!1090308 (set.union (set.insert (h!23946 rules!3447) (as set.empty (Set Rule!6328))) (content!2632 (t!157878 rules!3447))))))

(assert (= (and d!523547 c!279576) b!1704868))

(assert (= (and d!523547 (not c!279576)) b!1704869))

(declare-fun m!2108975 () Bool)

(assert (=> b!1704869 m!2108975))

(declare-fun m!2108977 () Bool)

(assert (=> b!1704869 m!2108977))

(assert (=> d!523501 d!523547))

(declare-fun d!523549 () Bool)

(assert (=> d!523549 (= (isEmpty!11648 (originalCharacters!4078 token!523)) (is-Nil!18544 (originalCharacters!4078 token!523)))))

(assert (=> d!523475 d!523549))

(declare-fun d!523551 () Bool)

(declare-fun charsToBigInt!1 (List!18613) Int)

(assert (=> d!523551 (= (inv!17 (value!102698 token!523)) (= (charsToBigInt!1 (text!23926 (value!102698 token!523))) (value!102690 (value!102698 token!523))))))

(declare-fun bs!401503 () Bool)

(assert (= bs!401503 d!523551))

(declare-fun m!2108979 () Bool)

(assert (=> bs!401503 m!2108979))

(assert (=> b!1704707 d!523551))

(declare-fun d!523553 () Bool)

(declare-fun charsToInt!0 (List!18613) (_ BitVec 32))

(assert (=> d!523553 (= (inv!16 (value!102698 token!523)) (= (charsToInt!0 (text!23925 (value!102698 token!523))) (value!102689 (value!102698 token!523))))))

(declare-fun bs!401504 () Bool)

(assert (= bs!401504 d!523553))

(declare-fun m!2108981 () Bool)

(assert (=> bs!401504 m!2108981))

(assert (=> b!1704706 d!523553))

(declare-fun d!523555 () Bool)

(declare-fun res!764269 () Bool)

(declare-fun e!1090313 () Bool)

(assert (=> d!523555 (=> res!764269 e!1090313)))

(assert (=> d!523555 (= res!764269 (is-Nil!18545 rules!3447))))

(assert (=> d!523555 (= (forall!4231 rules!3447 lambda!68667) e!1090313)))

(declare-fun b!1704874 () Bool)

(declare-fun e!1090314 () Bool)

(assert (=> b!1704874 (= e!1090313 e!1090314)))

(declare-fun res!764270 () Bool)

(assert (=> b!1704874 (=> (not res!764270) (not e!1090314))))

(declare-fun dynLambda!8452 (Int Rule!6328) Bool)

(assert (=> b!1704874 (= res!764270 (dynLambda!8452 lambda!68667 (h!23946 rules!3447)))))

(declare-fun b!1704875 () Bool)

(assert (=> b!1704875 (= e!1090314 (forall!4231 (t!157878 rules!3447) lambda!68667))))

(assert (= (and d!523555 (not res!764269)) b!1704874))

(assert (= (and b!1704874 res!764270) b!1704875))

(declare-fun b_lambda!53813 () Bool)

(assert (=> (not b_lambda!53813) (not b!1704874)))

(declare-fun m!2108983 () Bool)

(assert (=> b!1704874 m!2108983))

(declare-fun m!2108985 () Bool)

(assert (=> b!1704875 m!2108985))

(assert (=> d!523489 d!523555))

(declare-fun d!523557 () Bool)

(declare-fun lt!652221 () Int)

(assert (=> d!523557 (>= lt!652221 0)))

(declare-fun e!1090317 () Int)

(assert (=> d!523557 (= lt!652221 e!1090317)))

(declare-fun c!279579 () Bool)

(assert (=> d!523557 (= c!279579 (is-Nil!18544 (originalCharacters!4078 token!523)))))

(assert (=> d!523557 (= (size!14787 (originalCharacters!4078 token!523)) lt!652221)))

(declare-fun b!1704880 () Bool)

(assert (=> b!1704880 (= e!1090317 0)))

(declare-fun b!1704881 () Bool)

(assert (=> b!1704881 (= e!1090317 (+ 1 (size!14787 (t!157877 (originalCharacters!4078 token!523)))))))

(assert (= (and d!523557 c!279579) b!1704880))

(assert (= (and d!523557 (not c!279579)) b!1704881))

(declare-fun m!2108987 () Bool)

(assert (=> b!1704881 m!2108987))

(assert (=> b!1704685 d!523557))

(declare-fun bs!401505 () Bool)

(declare-fun d!523559 () Bool)

(assert (= bs!401505 (and d!523559 d!523489)))

(declare-fun lambda!68682 () Int)

(assert (=> bs!401505 (= lambda!68682 lambda!68667)))

(assert (=> d!523559 true))

(declare-fun lt!652224 () Bool)

(assert (=> d!523559 (= lt!652224 (rulesValidInductive!1059 thiss!24550 rules!3447))))

(assert (=> d!523559 (= lt!652224 (forall!4231 rules!3447 lambda!68682))))

(assert (=> d!523559 (= (rulesValid!1213 thiss!24550 rules!3447) lt!652224)))

(declare-fun bs!401506 () Bool)

(assert (= bs!401506 d!523559))

(assert (=> bs!401506 m!2108791))

(declare-fun m!2108989 () Bool)

(assert (=> bs!401506 m!2108989))

(assert (=> d!523479 d!523559))

(declare-fun d!523561 () Bool)

(assert (=> d!523561 (= (list!7475 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))) (list!7477 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(declare-fun bs!401507 () Bool)

(assert (= bs!401507 d!523561))

(declare-fun m!2108991 () Bool)

(assert (=> bs!401507 m!2108991))

(assert (=> b!1704684 d!523561))

(declare-fun d!523563 () Bool)

(declare-fun c!279582 () Bool)

(assert (=> d!523563 (= c!279582 (is-Node!6174 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(declare-fun e!1090322 () Bool)

(assert (=> d!523563 (= (inv!23926 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))) e!1090322)))

(declare-fun b!1704888 () Bool)

(declare-fun inv!23930 (Conc!6174) Bool)

(assert (=> b!1704888 (= e!1090322 (inv!23930 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(declare-fun b!1704889 () Bool)

(declare-fun e!1090323 () Bool)

(assert (=> b!1704889 (= e!1090322 e!1090323)))

(declare-fun res!764273 () Bool)

(assert (=> b!1704889 (= res!764273 (not (is-Leaf!9027 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))))))

(assert (=> b!1704889 (=> res!764273 e!1090323)))

(declare-fun b!1704890 () Bool)

(declare-fun inv!23931 (Conc!6174) Bool)

(assert (=> b!1704890 (= e!1090323 (inv!23931 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(assert (= (and d!523563 c!279582) b!1704888))

(assert (= (and d!523563 (not c!279582)) b!1704889))

(assert (= (and b!1704889 (not res!764273)) b!1704890))

(declare-fun m!2108993 () Bool)

(assert (=> b!1704888 m!2108993))

(declare-fun m!2108995 () Bool)

(assert (=> b!1704890 m!2108995))

(assert (=> b!1704690 d!523563))

(declare-fun b!1704899 () Bool)

(declare-fun e!1090328 () List!18614)

(assert (=> b!1704899 (= e!1090328 Nil!18544)))

(declare-fun b!1704902 () Bool)

(declare-fun e!1090329 () List!18614)

(declare-fun ++!5099 (List!18614 List!18614) List!18614)

(assert (=> b!1704902 (= e!1090329 (++!5099 (list!7477 (left!14812 (c!279559 (charsOf!1913 token!523)))) (list!7477 (right!15142 (c!279559 (charsOf!1913 token!523))))))))

(declare-fun b!1704900 () Bool)

(assert (=> b!1704900 (= e!1090328 e!1090329)))

(declare-fun c!279588 () Bool)

(assert (=> b!1704900 (= c!279588 (is-Leaf!9027 (c!279559 (charsOf!1913 token!523))))))

(declare-fun b!1704901 () Bool)

(declare-fun list!7479 (IArray!12353) List!18614)

(assert (=> b!1704901 (= e!1090329 (list!7479 (xs!9050 (c!279559 (charsOf!1913 token!523)))))))

(declare-fun d!523565 () Bool)

(declare-fun c!279587 () Bool)

(assert (=> d!523565 (= c!279587 (is-Empty!6174 (c!279559 (charsOf!1913 token!523))))))

(assert (=> d!523565 (= (list!7477 (c!279559 (charsOf!1913 token!523))) e!1090328)))

(assert (= (and d!523565 c!279587) b!1704899))

(assert (= (and d!523565 (not c!279587)) b!1704900))

(assert (= (and b!1704900 c!279588) b!1704901))

(assert (= (and b!1704900 (not c!279588)) b!1704902))

(declare-fun m!2108997 () Bool)

(assert (=> b!1704902 m!2108997))

(declare-fun m!2108999 () Bool)

(assert (=> b!1704902 m!2108999))

(assert (=> b!1704902 m!2108997))

(assert (=> b!1704902 m!2108999))

(declare-fun m!2109001 () Bool)

(assert (=> b!1704902 m!2109001))

(declare-fun m!2109003 () Bool)

(assert (=> b!1704901 m!2109003))

(assert (=> d!523493 d!523565))

(declare-fun d!523567 () Bool)

(declare-fun lt!652225 () Bool)

(assert (=> d!523567 (= lt!652225 (set.member rule!422 (content!2632 (t!157878 rules!3447))))))

(declare-fun e!1090330 () Bool)

(assert (=> d!523567 (= lt!652225 e!1090330)))

(declare-fun res!764275 () Bool)

(assert (=> d!523567 (=> (not res!764275) (not e!1090330))))

(assert (=> d!523567 (= res!764275 (is-Cons!18545 (t!157878 rules!3447)))))

(assert (=> d!523567 (= (contains!3279 (t!157878 rules!3447) rule!422) lt!652225)))

(declare-fun b!1704903 () Bool)

(declare-fun e!1090331 () Bool)

(assert (=> b!1704903 (= e!1090330 e!1090331)))

(declare-fun res!764274 () Bool)

(assert (=> b!1704903 (=> res!764274 e!1090331)))

(assert (=> b!1704903 (= res!764274 (= (h!23946 (t!157878 rules!3447)) rule!422))))

(declare-fun b!1704904 () Bool)

(assert (=> b!1704904 (= e!1090331 (contains!3279 (t!157878 (t!157878 rules!3447)) rule!422))))

(assert (= (and d!523567 res!764275) b!1704903))

(assert (= (and b!1704903 (not res!764274)) b!1704904))

(assert (=> d!523567 m!2108977))

(declare-fun m!2109005 () Bool)

(assert (=> d!523567 m!2109005))

(declare-fun m!2109007 () Bool)

(assert (=> b!1704904 m!2109007))

(assert (=> b!1704731 d!523567))

(declare-fun bs!401508 () Bool)

(declare-fun d!523569 () Bool)

(assert (= bs!401508 (and d!523569 d!523489)))

(declare-fun lambda!68683 () Int)

(assert (=> bs!401508 (= lambda!68683 lambda!68667)))

(declare-fun bs!401509 () Bool)

(assert (= bs!401509 (and d!523569 d!523559)))

(assert (=> bs!401509 (= lambda!68683 lambda!68682)))

(assert (=> d!523569 true))

(declare-fun lt!652226 () Bool)

(assert (=> d!523569 (= lt!652226 (forall!4231 (t!157878 rules!3447) lambda!68683))))

(declare-fun e!1090333 () Bool)

(assert (=> d!523569 (= lt!652226 e!1090333)))

(declare-fun res!764276 () Bool)

(assert (=> d!523569 (=> res!764276 e!1090333)))

(assert (=> d!523569 (= res!764276 (not (is-Cons!18545 (t!157878 rules!3447))))))

(assert (=> d!523569 (= (rulesValidInductive!1059 thiss!24550 (t!157878 rules!3447)) lt!652226)))

(declare-fun b!1704905 () Bool)

(declare-fun e!1090332 () Bool)

(assert (=> b!1704905 (= e!1090333 e!1090332)))

(declare-fun res!764277 () Bool)

(assert (=> b!1704905 (=> (not res!764277) (not e!1090332))))

(assert (=> b!1704905 (= res!764277 (ruleValid!774 thiss!24550 (h!23946 (t!157878 rules!3447))))))

(declare-fun b!1704906 () Bool)

(assert (=> b!1704906 (= e!1090332 (rulesValidInductive!1059 thiss!24550 (t!157878 (t!157878 rules!3447))))))

(assert (= (and d!523569 (not res!764276)) b!1704905))

(assert (= (and b!1704905 res!764277) b!1704906))

(declare-fun m!2109009 () Bool)

(assert (=> d!523569 m!2109009))

(declare-fun m!2109011 () Bool)

(assert (=> b!1704905 m!2109011))

(declare-fun m!2109013 () Bool)

(assert (=> b!1704906 m!2109013))

(assert (=> b!1704722 d!523569))

(declare-fun d!523571 () Bool)

(declare-fun res!764282 () Bool)

(declare-fun e!1090336 () Bool)

(assert (=> d!523571 (=> (not res!764282) (not e!1090336))))

(declare-fun validRegex!1849 (Regex!4592) Bool)

(assert (=> d!523571 (= res!764282 (validRegex!1849 (regex!3264 (h!23946 rules!3447))))))

(assert (=> d!523571 (= (ruleValid!774 thiss!24550 (h!23946 rules!3447)) e!1090336)))

(declare-fun b!1704911 () Bool)

(declare-fun res!764283 () Bool)

(assert (=> b!1704911 (=> (not res!764283) (not e!1090336))))

(declare-fun nullable!1376 (Regex!4592) Bool)

(assert (=> b!1704911 (= res!764283 (not (nullable!1376 (regex!3264 (h!23946 rules!3447)))))))

(declare-fun b!1704912 () Bool)

(assert (=> b!1704912 (= e!1090336 (not (= (tag!3560 (h!23946 rules!3447)) (String!21105 ""))))))

(assert (= (and d!523571 res!764282) b!1704911))

(assert (= (and b!1704911 res!764283) b!1704912))

(declare-fun m!2109015 () Bool)

(assert (=> d!523571 m!2109015))

(declare-fun m!2109017 () Bool)

(assert (=> b!1704911 m!2109017))

(assert (=> b!1704721 d!523571))

(declare-fun d!523573 () Bool)

(declare-fun isBalanced!1943 (Conc!6174) Bool)

(assert (=> d!523573 (= (inv!23927 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))) (isBalanced!1943 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))))))

(declare-fun bs!401510 () Bool)

(assert (= bs!401510 d!523573))

(declare-fun m!2109019 () Bool)

(assert (=> bs!401510 m!2109019))

(assert (=> tb!100711 d!523573))

(declare-fun bs!401511 () Bool)

(declare-fun d!523575 () Bool)

(assert (= bs!401511 (and d!523575 d!523533)))

(declare-fun lambda!68684 () Int)

(assert (=> bs!401511 (= (and (= (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toChars!4614 (transformation!3264 (h!23946 rules!3447)))) (= (toValue!4755 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 (h!23946 rules!3447))))) (= lambda!68684 lambda!68673))))

(declare-fun bs!401512 () Bool)

(assert (= bs!401512 (and d!523575 d!523543)))

(assert (=> bs!401512 (= (and (= (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toChars!4614 (transformation!3264 rule!422))) (= (toValue!4755 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 rule!422)))) (= lambda!68684 lambda!68679))))

(assert (=> d!523575 true))

(assert (=> d!523575 (< (dynLambda!8448 order!11217 (toChars!4614 (transformation!3264 (rule!5196 token!523)))) (dynLambda!8449 order!11219 lambda!68684))))

(assert (=> d!523575 true))

(assert (=> d!523575 (< (dynLambda!8450 order!11221 (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (dynLambda!8449 order!11219 lambda!68684))))

(assert (=> d!523575 (= (semiInverseModEq!1285 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (toValue!4755 (transformation!3264 (rule!5196 token!523)))) (Forall!675 lambda!68684))))

(declare-fun bs!401513 () Bool)

(assert (= bs!401513 d!523575))

(declare-fun m!2109021 () Bool)

(assert (=> bs!401513 m!2109021))

(assert (=> d!523487 d!523575))

(declare-fun b!1704915 () Bool)

(declare-fun b_free!45895 () Bool)

(declare-fun b_next!46599 () Bool)

(assert (=> b!1704915 (= b_free!45895 (not b_next!46599))))

(declare-fun tp!486487 () Bool)

(declare-fun b_and!123085 () Bool)

(assert (=> b!1704915 (= tp!486487 b_and!123085)))

(declare-fun b_free!45897 () Bool)

(declare-fun b_next!46601 () Bool)

(assert (=> b!1704915 (= b_free!45897 (not b_next!46601))))

(declare-fun t!157902 () Bool)

(declare-fun tb!100727 () Bool)

(assert (=> (and b!1704915 (= (toChars!4614 (transformation!3264 (h!23946 (t!157878 (t!157878 rules!3447))))) (toChars!4614 (transformation!3264 (rule!5196 token!523)))) t!157902) tb!100727))

(declare-fun result!120930 () Bool)

(assert (= result!120930 result!120898))

(assert (=> b!1704684 t!157902))

(assert (=> d!523495 t!157902))

(declare-fun b_and!123087 () Bool)

(declare-fun tp!486485 () Bool)

(assert (=> b!1704915 (= tp!486485 (and (=> t!157902 result!120930) b_and!123087))))

(declare-fun e!1090339 () Bool)

(assert (=> b!1704915 (= e!1090339 (and tp!486487 tp!486485))))

(declare-fun tp!486488 () Bool)

(declare-fun e!1090338 () Bool)

(declare-fun b!1704914 () Bool)

(assert (=> b!1704914 (= e!1090338 (and tp!486488 (inv!23919 (tag!3560 (h!23946 (t!157878 (t!157878 rules!3447))))) (inv!23922 (transformation!3264 (h!23946 (t!157878 (t!157878 rules!3447))))) e!1090339))))

(declare-fun b!1704913 () Bool)

(declare-fun e!1090340 () Bool)

(declare-fun tp!486486 () Bool)

(assert (=> b!1704913 (= e!1090340 (and e!1090338 tp!486486))))

(assert (=> b!1704767 (= tp!486439 e!1090340)))

(assert (= b!1704914 b!1704915))

(assert (= b!1704913 b!1704914))

(assert (= (and b!1704767 (is-Cons!18545 (t!157878 (t!157878 rules!3447)))) b!1704913))

(declare-fun m!2109023 () Bool)

(assert (=> b!1704914 m!2109023))

(declare-fun m!2109025 () Bool)

(assert (=> b!1704914 m!2109025))

(declare-fun b!1704918 () Bool)

(declare-fun e!1090341 () Bool)

(declare-fun tp!486491 () Bool)

(assert (=> b!1704918 (= e!1090341 tp!486491)))

(assert (=> b!1704768 (= tp!486441 e!1090341)))

(declare-fun b!1704917 () Bool)

(declare-fun tp!486493 () Bool)

(declare-fun tp!486490 () Bool)

(assert (=> b!1704917 (= e!1090341 (and tp!486493 tp!486490))))

(declare-fun b!1704916 () Bool)

(assert (=> b!1704916 (= e!1090341 tp_is_empty!7451)))

(declare-fun b!1704919 () Bool)

(declare-fun tp!486489 () Bool)

(declare-fun tp!486492 () Bool)

(assert (=> b!1704919 (= e!1090341 (and tp!486489 tp!486492))))

(assert (= (and b!1704768 (is-ElementMatch!4592 (regex!3264 (h!23946 (t!157878 rules!3447))))) b!1704916))

(assert (= (and b!1704768 (is-Concat!7947 (regex!3264 (h!23946 (t!157878 rules!3447))))) b!1704917))

(assert (= (and b!1704768 (is-Star!4592 (regex!3264 (h!23946 (t!157878 rules!3447))))) b!1704918))

(assert (= (and b!1704768 (is-Union!4592 (regex!3264 (h!23946 (t!157878 rules!3447))))) b!1704919))

(declare-fun b!1704922 () Bool)

(declare-fun e!1090342 () Bool)

(declare-fun tp!486496 () Bool)

(assert (=> b!1704922 (= e!1090342 tp!486496)))

(assert (=> b!1704743 (= tp!486416 e!1090342)))

(declare-fun b!1704921 () Bool)

(declare-fun tp!486498 () Bool)

(declare-fun tp!486495 () Bool)

(assert (=> b!1704921 (= e!1090342 (and tp!486498 tp!486495))))

(declare-fun b!1704920 () Bool)

(assert (=> b!1704920 (= e!1090342 tp_is_empty!7451)))

(declare-fun b!1704923 () Bool)

(declare-fun tp!486494 () Bool)

(declare-fun tp!486497 () Bool)

(assert (=> b!1704923 (= e!1090342 (and tp!486494 tp!486497))))

(assert (= (and b!1704743 (is-ElementMatch!4592 (regOne!9696 (regex!3264 rule!422)))) b!1704920))

(assert (= (and b!1704743 (is-Concat!7947 (regOne!9696 (regex!3264 rule!422)))) b!1704921))

(assert (= (and b!1704743 (is-Star!4592 (regOne!9696 (regex!3264 rule!422)))) b!1704922))

(assert (= (and b!1704743 (is-Union!4592 (regOne!9696 (regex!3264 rule!422)))) b!1704923))

(declare-fun b!1704926 () Bool)

(declare-fun e!1090343 () Bool)

(declare-fun tp!486501 () Bool)

(assert (=> b!1704926 (= e!1090343 tp!486501)))

(assert (=> b!1704743 (= tp!486413 e!1090343)))

(declare-fun b!1704925 () Bool)

(declare-fun tp!486503 () Bool)

(declare-fun tp!486500 () Bool)

(assert (=> b!1704925 (= e!1090343 (and tp!486503 tp!486500))))

(declare-fun b!1704924 () Bool)

(assert (=> b!1704924 (= e!1090343 tp_is_empty!7451)))

(declare-fun b!1704927 () Bool)

(declare-fun tp!486499 () Bool)

(declare-fun tp!486502 () Bool)

(assert (=> b!1704927 (= e!1090343 (and tp!486499 tp!486502))))

(assert (= (and b!1704743 (is-ElementMatch!4592 (regTwo!9696 (regex!3264 rule!422)))) b!1704924))

(assert (= (and b!1704743 (is-Concat!7947 (regTwo!9696 (regex!3264 rule!422)))) b!1704925))

(assert (= (and b!1704743 (is-Star!4592 (regTwo!9696 (regex!3264 rule!422)))) b!1704926))

(assert (= (and b!1704743 (is-Union!4592 (regTwo!9696 (regex!3264 rule!422)))) b!1704927))

(declare-fun b!1704930 () Bool)

(declare-fun e!1090344 () Bool)

(declare-fun tp!486506 () Bool)

(assert (=> b!1704930 (= e!1090344 tp!486506)))

(assert (=> b!1704745 (= tp!486412 e!1090344)))

(declare-fun b!1704929 () Bool)

(declare-fun tp!486508 () Bool)

(declare-fun tp!486505 () Bool)

(assert (=> b!1704929 (= e!1090344 (and tp!486508 tp!486505))))

(declare-fun b!1704928 () Bool)

(assert (=> b!1704928 (= e!1090344 tp_is_empty!7451)))

(declare-fun b!1704931 () Bool)

(declare-fun tp!486504 () Bool)

(declare-fun tp!486507 () Bool)

(assert (=> b!1704931 (= e!1090344 (and tp!486504 tp!486507))))

(assert (= (and b!1704745 (is-ElementMatch!4592 (regOne!9697 (regex!3264 rule!422)))) b!1704928))

(assert (= (and b!1704745 (is-Concat!7947 (regOne!9697 (regex!3264 rule!422)))) b!1704929))

(assert (= (and b!1704745 (is-Star!4592 (regOne!9697 (regex!3264 rule!422)))) b!1704930))

(assert (= (and b!1704745 (is-Union!4592 (regOne!9697 (regex!3264 rule!422)))) b!1704931))

(declare-fun b!1704934 () Bool)

(declare-fun e!1090345 () Bool)

(declare-fun tp!486511 () Bool)

(assert (=> b!1704934 (= e!1090345 tp!486511)))

(assert (=> b!1704745 (= tp!486415 e!1090345)))

(declare-fun b!1704933 () Bool)

(declare-fun tp!486513 () Bool)

(declare-fun tp!486510 () Bool)

(assert (=> b!1704933 (= e!1090345 (and tp!486513 tp!486510))))

(declare-fun b!1704932 () Bool)

(assert (=> b!1704932 (= e!1090345 tp_is_empty!7451)))

(declare-fun b!1704935 () Bool)

(declare-fun tp!486509 () Bool)

(declare-fun tp!486512 () Bool)

(assert (=> b!1704935 (= e!1090345 (and tp!486509 tp!486512))))

(assert (= (and b!1704745 (is-ElementMatch!4592 (regTwo!9697 (regex!3264 rule!422)))) b!1704932))

(assert (= (and b!1704745 (is-Concat!7947 (regTwo!9697 (regex!3264 rule!422)))) b!1704933))

(assert (= (and b!1704745 (is-Star!4592 (regTwo!9697 (regex!3264 rule!422)))) b!1704934))

(assert (= (and b!1704745 (is-Union!4592 (regTwo!9697 (regex!3264 rule!422)))) b!1704935))

(declare-fun tp!486521 () Bool)

(declare-fun b!1704944 () Bool)

(declare-fun tp!486520 () Bool)

(declare-fun e!1090350 () Bool)

(assert (=> b!1704944 (= e!1090350 (and (inv!23926 (left!14812 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))) tp!486520 (inv!23926 (right!15142 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))) tp!486521))))

(declare-fun b!1704946 () Bool)

(declare-fun e!1090351 () Bool)

(declare-fun tp!486522 () Bool)

(assert (=> b!1704946 (= e!1090351 tp!486522)))

(declare-fun b!1704945 () Bool)

(declare-fun inv!23932 (IArray!12353) Bool)

(assert (=> b!1704945 (= e!1090350 (and (inv!23932 (xs!9050 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))) e!1090351))))

(assert (=> b!1704690 (= tp!486401 (and (inv!23926 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523)))) e!1090350))))

(assert (= (and b!1704690 (is-Node!6174 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))) b!1704944))

(assert (= b!1704945 b!1704946))

(assert (= (and b!1704690 (is-Leaf!9027 (c!279559 (dynLambda!8446 (toChars!4614 (transformation!3264 (rule!5196 token!523))) (value!102698 token!523))))) b!1704945))

(declare-fun m!2109027 () Bool)

(assert (=> b!1704944 m!2109027))

(declare-fun m!2109029 () Bool)

(assert (=> b!1704944 m!2109029))

(declare-fun m!2109031 () Bool)

(assert (=> b!1704945 m!2109031))

(assert (=> b!1704690 m!2108849))

(declare-fun b!1704949 () Bool)

(declare-fun e!1090352 () Bool)

(declare-fun tp!486525 () Bool)

(assert (=> b!1704949 (= e!1090352 tp!486525)))

(assert (=> b!1704756 (= tp!486429 e!1090352)))

(declare-fun b!1704948 () Bool)

(declare-fun tp!486527 () Bool)

(declare-fun tp!486524 () Bool)

(assert (=> b!1704948 (= e!1090352 (and tp!486527 tp!486524))))

(declare-fun b!1704947 () Bool)

(assert (=> b!1704947 (= e!1090352 tp_is_empty!7451)))

(declare-fun b!1704950 () Bool)

(declare-fun tp!486523 () Bool)

(declare-fun tp!486526 () Bool)

(assert (=> b!1704950 (= e!1090352 (and tp!486523 tp!486526))))

(assert (= (and b!1704756 (is-ElementMatch!4592 (regOne!9696 (regex!3264 (h!23946 rules!3447))))) b!1704947))

(assert (= (and b!1704756 (is-Concat!7947 (regOne!9696 (regex!3264 (h!23946 rules!3447))))) b!1704948))

(assert (= (and b!1704756 (is-Star!4592 (regOne!9696 (regex!3264 (h!23946 rules!3447))))) b!1704949))

(assert (= (and b!1704756 (is-Union!4592 (regOne!9696 (regex!3264 (h!23946 rules!3447))))) b!1704950))

(declare-fun b!1704953 () Bool)

(declare-fun e!1090353 () Bool)

(declare-fun tp!486530 () Bool)

(assert (=> b!1704953 (= e!1090353 tp!486530)))

(assert (=> b!1704756 (= tp!486426 e!1090353)))

(declare-fun b!1704952 () Bool)

(declare-fun tp!486532 () Bool)

(declare-fun tp!486529 () Bool)

(assert (=> b!1704952 (= e!1090353 (and tp!486532 tp!486529))))

(declare-fun b!1704951 () Bool)

(assert (=> b!1704951 (= e!1090353 tp_is_empty!7451)))

(declare-fun b!1704954 () Bool)

(declare-fun tp!486528 () Bool)

(declare-fun tp!486531 () Bool)

(assert (=> b!1704954 (= e!1090353 (and tp!486528 tp!486531))))

(assert (= (and b!1704756 (is-ElementMatch!4592 (regTwo!9696 (regex!3264 (h!23946 rules!3447))))) b!1704951))

(assert (= (and b!1704756 (is-Concat!7947 (regTwo!9696 (regex!3264 (h!23946 rules!3447))))) b!1704952))

(assert (= (and b!1704756 (is-Star!4592 (regTwo!9696 (regex!3264 (h!23946 rules!3447))))) b!1704953))

(assert (= (and b!1704756 (is-Union!4592 (regTwo!9696 (regex!3264 (h!23946 rules!3447))))) b!1704954))

(declare-fun b!1704957 () Bool)

(declare-fun e!1090354 () Bool)

(declare-fun tp!486535 () Bool)

(assert (=> b!1704957 (= e!1090354 tp!486535)))

(assert (=> b!1704744 (= tp!486414 e!1090354)))

(declare-fun b!1704956 () Bool)

(declare-fun tp!486537 () Bool)

(declare-fun tp!486534 () Bool)

(assert (=> b!1704956 (= e!1090354 (and tp!486537 tp!486534))))

(declare-fun b!1704955 () Bool)

(assert (=> b!1704955 (= e!1090354 tp_is_empty!7451)))

(declare-fun b!1704958 () Bool)

(declare-fun tp!486533 () Bool)

(declare-fun tp!486536 () Bool)

(assert (=> b!1704958 (= e!1090354 (and tp!486533 tp!486536))))

(assert (= (and b!1704744 (is-ElementMatch!4592 (reg!4921 (regex!3264 rule!422)))) b!1704955))

(assert (= (and b!1704744 (is-Concat!7947 (reg!4921 (regex!3264 rule!422)))) b!1704956))

(assert (= (and b!1704744 (is-Star!4592 (reg!4921 (regex!3264 rule!422)))) b!1704957))

(assert (= (and b!1704744 (is-Union!4592 (reg!4921 (regex!3264 rule!422)))) b!1704958))

(declare-fun b!1704961 () Bool)

(declare-fun e!1090355 () Bool)

(declare-fun tp!486540 () Bool)

(assert (=> b!1704961 (= e!1090355 tp!486540)))

(assert (=> b!1704758 (= tp!486425 e!1090355)))

(declare-fun b!1704960 () Bool)

(declare-fun tp!486542 () Bool)

(declare-fun tp!486539 () Bool)

(assert (=> b!1704960 (= e!1090355 (and tp!486542 tp!486539))))

(declare-fun b!1704959 () Bool)

(assert (=> b!1704959 (= e!1090355 tp_is_empty!7451)))

(declare-fun b!1704962 () Bool)

(declare-fun tp!486538 () Bool)

(declare-fun tp!486541 () Bool)

(assert (=> b!1704962 (= e!1090355 (and tp!486538 tp!486541))))

(assert (= (and b!1704758 (is-ElementMatch!4592 (regOne!9697 (regex!3264 (h!23946 rules!3447))))) b!1704959))

(assert (= (and b!1704758 (is-Concat!7947 (regOne!9697 (regex!3264 (h!23946 rules!3447))))) b!1704960))

(assert (= (and b!1704758 (is-Star!4592 (regOne!9697 (regex!3264 (h!23946 rules!3447))))) b!1704961))

(assert (= (and b!1704758 (is-Union!4592 (regOne!9697 (regex!3264 (h!23946 rules!3447))))) b!1704962))

(declare-fun b!1704965 () Bool)

(declare-fun e!1090356 () Bool)

(declare-fun tp!486545 () Bool)

(assert (=> b!1704965 (= e!1090356 tp!486545)))

(assert (=> b!1704758 (= tp!486428 e!1090356)))

(declare-fun b!1704964 () Bool)

(declare-fun tp!486547 () Bool)

(declare-fun tp!486544 () Bool)

(assert (=> b!1704964 (= e!1090356 (and tp!486547 tp!486544))))

(declare-fun b!1704963 () Bool)

(assert (=> b!1704963 (= e!1090356 tp_is_empty!7451)))

(declare-fun b!1704966 () Bool)

(declare-fun tp!486543 () Bool)

(declare-fun tp!486546 () Bool)

(assert (=> b!1704966 (= e!1090356 (and tp!486543 tp!486546))))

(assert (= (and b!1704758 (is-ElementMatch!4592 (regTwo!9697 (regex!3264 (h!23946 rules!3447))))) b!1704963))

(assert (= (and b!1704758 (is-Concat!7947 (regTwo!9697 (regex!3264 (h!23946 rules!3447))))) b!1704964))

(assert (= (and b!1704758 (is-Star!4592 (regTwo!9697 (regex!3264 (h!23946 rules!3447))))) b!1704965))

(assert (= (and b!1704758 (is-Union!4592 (regTwo!9697 (regex!3264 (h!23946 rules!3447))))) b!1704966))

(declare-fun b!1704969 () Bool)

(declare-fun e!1090357 () Bool)

(declare-fun tp!486550 () Bool)

(assert (=> b!1704969 (= e!1090357 tp!486550)))

(assert (=> b!1704753 (= tp!486422 e!1090357)))

(declare-fun b!1704968 () Bool)

(declare-fun tp!486552 () Bool)

(declare-fun tp!486549 () Bool)

(assert (=> b!1704968 (= e!1090357 (and tp!486552 tp!486549))))

(declare-fun b!1704967 () Bool)

(assert (=> b!1704967 (= e!1090357 tp_is_empty!7451)))

(declare-fun b!1704970 () Bool)

(declare-fun tp!486548 () Bool)

(declare-fun tp!486551 () Bool)

(assert (=> b!1704970 (= e!1090357 (and tp!486548 tp!486551))))

(assert (= (and b!1704753 (is-ElementMatch!4592 (reg!4921 (regex!3264 (rule!5196 token!523))))) b!1704967))

(assert (= (and b!1704753 (is-Concat!7947 (reg!4921 (regex!3264 (rule!5196 token!523))))) b!1704968))

(assert (= (and b!1704753 (is-Star!4592 (reg!4921 (regex!3264 (rule!5196 token!523))))) b!1704969))

(assert (= (and b!1704753 (is-Union!4592 (reg!4921 (regex!3264 (rule!5196 token!523))))) b!1704970))

(declare-fun b!1704973 () Bool)

(declare-fun e!1090358 () Bool)

(declare-fun tp!486555 () Bool)

(assert (=> b!1704973 (= e!1090358 tp!486555)))

(assert (=> b!1704754 (= tp!486420 e!1090358)))

(declare-fun b!1704972 () Bool)

(declare-fun tp!486557 () Bool)

(declare-fun tp!486554 () Bool)

(assert (=> b!1704972 (= e!1090358 (and tp!486557 tp!486554))))

(declare-fun b!1704971 () Bool)

(assert (=> b!1704971 (= e!1090358 tp_is_empty!7451)))

(declare-fun b!1704974 () Bool)

(declare-fun tp!486553 () Bool)

(declare-fun tp!486556 () Bool)

(assert (=> b!1704974 (= e!1090358 (and tp!486553 tp!486556))))

(assert (= (and b!1704754 (is-ElementMatch!4592 (regOne!9697 (regex!3264 (rule!5196 token!523))))) b!1704971))

(assert (= (and b!1704754 (is-Concat!7947 (regOne!9697 (regex!3264 (rule!5196 token!523))))) b!1704972))

(assert (= (and b!1704754 (is-Star!4592 (regOne!9697 (regex!3264 (rule!5196 token!523))))) b!1704973))

(assert (= (and b!1704754 (is-Union!4592 (regOne!9697 (regex!3264 (rule!5196 token!523))))) b!1704974))

(declare-fun b!1704977 () Bool)

(declare-fun e!1090359 () Bool)

(declare-fun tp!486560 () Bool)

(assert (=> b!1704977 (= e!1090359 tp!486560)))

(assert (=> b!1704754 (= tp!486423 e!1090359)))

(declare-fun b!1704976 () Bool)

(declare-fun tp!486562 () Bool)

(declare-fun tp!486559 () Bool)

(assert (=> b!1704976 (= e!1090359 (and tp!486562 tp!486559))))

(declare-fun b!1704975 () Bool)

(assert (=> b!1704975 (= e!1090359 tp_is_empty!7451)))

(declare-fun b!1704978 () Bool)

(declare-fun tp!486558 () Bool)

(declare-fun tp!486561 () Bool)

(assert (=> b!1704978 (= e!1090359 (and tp!486558 tp!486561))))

(assert (= (and b!1704754 (is-ElementMatch!4592 (regTwo!9697 (regex!3264 (rule!5196 token!523))))) b!1704975))

(assert (= (and b!1704754 (is-Concat!7947 (regTwo!9697 (regex!3264 (rule!5196 token!523))))) b!1704976))

(assert (= (and b!1704754 (is-Star!4592 (regTwo!9697 (regex!3264 (rule!5196 token!523))))) b!1704977))

(assert (= (and b!1704754 (is-Union!4592 (regTwo!9697 (regex!3264 (rule!5196 token!523))))) b!1704978))

(declare-fun b!1704981 () Bool)

(declare-fun e!1090360 () Bool)

(declare-fun tp!486565 () Bool)

(assert (=> b!1704981 (= e!1090360 tp!486565)))

(assert (=> b!1704752 (= tp!486424 e!1090360)))

(declare-fun b!1704980 () Bool)

(declare-fun tp!486567 () Bool)

(declare-fun tp!486564 () Bool)

(assert (=> b!1704980 (= e!1090360 (and tp!486567 tp!486564))))

(declare-fun b!1704979 () Bool)

(assert (=> b!1704979 (= e!1090360 tp_is_empty!7451)))

(declare-fun b!1704982 () Bool)

(declare-fun tp!486563 () Bool)

(declare-fun tp!486566 () Bool)

(assert (=> b!1704982 (= e!1090360 (and tp!486563 tp!486566))))

(assert (= (and b!1704752 (is-ElementMatch!4592 (regOne!9696 (regex!3264 (rule!5196 token!523))))) b!1704979))

(assert (= (and b!1704752 (is-Concat!7947 (regOne!9696 (regex!3264 (rule!5196 token!523))))) b!1704980))

(assert (= (and b!1704752 (is-Star!4592 (regOne!9696 (regex!3264 (rule!5196 token!523))))) b!1704981))

(assert (= (and b!1704752 (is-Union!4592 (regOne!9696 (regex!3264 (rule!5196 token!523))))) b!1704982))

(declare-fun b!1704985 () Bool)

(declare-fun e!1090361 () Bool)

(declare-fun tp!486570 () Bool)

(assert (=> b!1704985 (= e!1090361 tp!486570)))

(assert (=> b!1704752 (= tp!486421 e!1090361)))

(declare-fun b!1704984 () Bool)

(declare-fun tp!486572 () Bool)

(declare-fun tp!486569 () Bool)

(assert (=> b!1704984 (= e!1090361 (and tp!486572 tp!486569))))

(declare-fun b!1704983 () Bool)

(assert (=> b!1704983 (= e!1090361 tp_is_empty!7451)))

(declare-fun b!1704986 () Bool)

(declare-fun tp!486568 () Bool)

(declare-fun tp!486571 () Bool)

(assert (=> b!1704986 (= e!1090361 (and tp!486568 tp!486571))))

(assert (= (and b!1704752 (is-ElementMatch!4592 (regTwo!9696 (regex!3264 (rule!5196 token!523))))) b!1704983))

(assert (= (and b!1704752 (is-Concat!7947 (regTwo!9696 (regex!3264 (rule!5196 token!523))))) b!1704984))

(assert (= (and b!1704752 (is-Star!4592 (regTwo!9696 (regex!3264 (rule!5196 token!523))))) b!1704985))

(assert (= (and b!1704752 (is-Union!4592 (regTwo!9696 (regex!3264 (rule!5196 token!523))))) b!1704986))

(declare-fun b!1704989 () Bool)

(declare-fun e!1090362 () Bool)

(declare-fun tp!486575 () Bool)

(assert (=> b!1704989 (= e!1090362 tp!486575)))

(assert (=> b!1704757 (= tp!486427 e!1090362)))

(declare-fun b!1704988 () Bool)

(declare-fun tp!486577 () Bool)

(declare-fun tp!486574 () Bool)

(assert (=> b!1704988 (= e!1090362 (and tp!486577 tp!486574))))

(declare-fun b!1704987 () Bool)

(assert (=> b!1704987 (= e!1090362 tp_is_empty!7451)))

(declare-fun b!1704990 () Bool)

(declare-fun tp!486573 () Bool)

(declare-fun tp!486576 () Bool)

(assert (=> b!1704990 (= e!1090362 (and tp!486573 tp!486576))))

(assert (= (and b!1704757 (is-ElementMatch!4592 (reg!4921 (regex!3264 (h!23946 rules!3447))))) b!1704987))

(assert (= (and b!1704757 (is-Concat!7947 (reg!4921 (regex!3264 (h!23946 rules!3447))))) b!1704988))

(assert (= (and b!1704757 (is-Star!4592 (reg!4921 (regex!3264 (h!23946 rules!3447))))) b!1704989))

(assert (= (and b!1704757 (is-Union!4592 (reg!4921 (regex!3264 (h!23946 rules!3447))))) b!1704990))

(declare-fun b!1704991 () Bool)

(declare-fun e!1090363 () Bool)

(declare-fun tp!486578 () Bool)

(assert (=> b!1704991 (= e!1090363 (and tp_is_empty!7451 tp!486578))))

(assert (=> b!1704750 (= tp!486419 e!1090363)))

(assert (= (and b!1704750 (is-Cons!18544 (t!157877 (originalCharacters!4078 token!523)))) b!1704991))

(declare-fun b_lambda!53815 () Bool)

(assert (= b_lambda!53813 (or d!523489 b_lambda!53815)))

(declare-fun bs!401514 () Bool)

(declare-fun d!523577 () Bool)

(assert (= bs!401514 (and d!523577 d!523489)))

(assert (=> bs!401514 (= (dynLambda!8452 lambda!68667 (h!23946 rules!3447)) (ruleValid!774 thiss!24550 (h!23946 rules!3447)))))

(assert (=> bs!401514 m!2108881))

(assert (=> b!1704874 d!523577))

(push 1)

(assert b_and!123033)

(assert (not b!1704978))

(assert (not b!1704956))

(assert (not d!523539))

(assert (not b!1704973))

(assert (not d!523533))

(assert (not b!1704918))

(assert (not d!523531))

(assert (not b!1704982))

(assert (not b!1704960))

(assert b_and!123065)

(assert (not b_next!46573))

(assert (not b!1704970))

(assert (not b!1704849))

(assert (not b_next!46571))

(assert (not b!1704990))

(assert (not b!1704927))

(assert b_and!123061)

(assert (not b!1704977))

(assert (not b!1704991))

(assert (not b!1704933))

(assert (not b!1704917))

(assert (not b_lambda!53801))

(assert (not b!1704875))

(assert (not b!1704926))

(assert b_and!123087)

(assert (not b!1704961))

(assert (not b!1704980))

(assert (not b!1704966))

(assert (not d!523567))

(assert (not b_next!46577))

(assert (not b!1704962))

(assert (not b!1704988))

(assert (not b!1704946))

(assert (not b!1704862))

(assert (not d!523561))

(assert (not b!1704969))

(assert (not b!1704904))

(assert (not b!1704906))

(assert (not b!1704976))

(assert (not d!523575))

(assert (not b!1704981))

(assert (not b!1704905))

(assert (not b!1704958))

(assert (not d!523537))

(assert (not b!1704921))

(assert (not b!1704690))

(assert (not d!523551))

(assert (not d!523543))

(assert (not b!1704985))

(assert (not b!1704914))

(assert (not b!1704965))

(assert (not bs!401514))

(assert (not b!1704923))

(assert (not b!1704888))

(assert (not b!1704922))

(assert (not b!1704968))

(assert (not b!1704929))

(assert (not b!1704950))

(assert (not b!1704944))

(assert (not b!1704964))

(assert b_and!123037)

(assert (not b!1704931))

(assert (not b!1704913))

(assert (not b!1704954))

(assert (not b!1704972))

(assert (not b!1704890))

(assert (not b_next!46601))

(assert (not b!1704984))

(assert (not b!1704925))

(assert (not b!1704901))

(assert (not b!1704902))

(assert (not d!523535))

(assert (not b!1704911))

(assert (not b_next!46575))

(assert (not d!523573))

(assert (not b!1704952))

(assert (not b!1704945))

(assert b_and!123063)

(assert (not b_next!46593))

(assert (not d!523529))

(assert (not b!1704881))

(assert (not d!523541))

(assert (not d!523559))

(assert b_and!123067)

(assert (not b!1704919))

(assert (not b_next!46569))

(assert (not b!1704986))

(assert tp_is_empty!7451)

(assert (not b_next!46567))

(assert b_and!123085)

(assert (not b!1704934))

(assert (not d!523553))

(assert (not b_lambda!53803))

(assert (not b!1704869))

(assert (not b!1704935))

(assert (not b_next!46591))

(assert (not d!523569))

(assert (not b!1704974))

(assert (not b!1704949))

(assert (not b!1704948))

(assert (not b_next!46599))

(assert (not b!1704930))

(assert b_and!123059)

(assert (not b!1704953))

(assert (not b!1704863))

(assert (not b!1704957))

(assert (not d!523571))

(assert (not b!1704989))

(assert b_and!123029)

(assert (not b_lambda!53815))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123061)

(assert b_and!123087)

(assert (not b_next!46577))

(assert b_and!123033)

(assert b_and!123037)

(assert (not b_next!46601))

(assert (not b_next!46575))

(assert (not b_next!46567))

(assert b_and!123085)

(assert (not b_next!46591))

(assert (not b_next!46599))

(assert b_and!123059)

(assert b_and!123029)

(assert b_and!123065)

(assert (not b_next!46573))

(assert (not b_next!46571))

(assert (not b_next!46593))

(assert b_and!123063)

(assert b_and!123067)

(assert (not b_next!46569))

(check-sat)

(pop 1)

