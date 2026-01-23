; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137260 () Bool)

(assert start!137260)

(declare-fun b!1467202 () Bool)

(declare-fun b_free!36767 () Bool)

(declare-fun b_next!37471 () Bool)

(assert (=> b!1467202 (= b_free!36767 (not b_next!37471))))

(declare-fun tp!412949 () Bool)

(declare-fun b_and!100257 () Bool)

(assert (=> b!1467202 (= tp!412949 b_and!100257)))

(declare-fun b_free!36769 () Bool)

(declare-fun b_next!37473 () Bool)

(assert (=> b!1467202 (= b_free!36769 (not b_next!37473))))

(declare-fun tp!412945 () Bool)

(declare-fun b_and!100259 () Bool)

(assert (=> b!1467202 (= tp!412945 b_and!100259)))

(declare-fun b!1467196 () Bool)

(declare-fun b_free!36771 () Bool)

(declare-fun b_next!37475 () Bool)

(assert (=> b!1467196 (= b_free!36771 (not b_next!37475))))

(declare-fun tp!412952 () Bool)

(declare-fun b_and!100261 () Bool)

(assert (=> b!1467196 (= tp!412952 b_and!100261)))

(declare-fun b_free!36773 () Bool)

(declare-fun b_next!37477 () Bool)

(assert (=> b!1467196 (= b_free!36773 (not b_next!37477))))

(declare-fun tp!412944 () Bool)

(declare-fun b_and!100263 () Bool)

(assert (=> b!1467196 (= tp!412944 b_and!100263)))

(declare-fun tp!412948 () Bool)

(declare-fun e!936361 () Bool)

(declare-datatypes ((List!15350 0))(
  ( (Nil!15284) (Cons!15284 (h!20685 (_ BitVec 16)) (t!135075 List!15350)) )
))
(declare-datatypes ((TokenValue!2794 0))(
  ( (FloatLiteralValue!5588 (text!20003 List!15350)) (TokenValueExt!2793 (__x!9378 Int)) (Broken!13970 (value!86687 List!15350)) (Object!2859) (End!2794) (Def!2794) (Underscore!2794) (Match!2794) (Else!2794) (Error!2794) (Case!2794) (If!2794) (Extends!2794) (Abstract!2794) (Class!2794) (Val!2794) (DelimiterValue!5588 (del!2854 List!15350)) (KeywordValue!2800 (value!86688 List!15350)) (CommentValue!5588 (value!86689 List!15350)) (WhitespaceValue!5588 (value!86690 List!15350)) (IndentationValue!2794 (value!86691 List!15350)) (String!18227) (Int32!2794) (Broken!13971 (value!86692 List!15350)) (Boolean!2795) (Unit!25053) (OperatorValue!2797 (op!2854 List!15350)) (IdentifierValue!5588 (value!86693 List!15350)) (IdentifierValue!5589 (value!86694 List!15350)) (WhitespaceValue!5589 (value!86695 List!15350)) (True!5588) (False!5588) (Broken!13972 (value!86696 List!15350)) (Broken!13973 (value!86697 List!15350)) (True!5589) (RightBrace!2794) (RightBracket!2794) (Colon!2794) (Null!2794) (Comma!2794) (LeftBracket!2794) (False!5589) (LeftBrace!2794) (ImaginaryLiteralValue!2794 (text!20004 List!15350)) (StringLiteralValue!8382 (value!86698 List!15350)) (EOFValue!2794 (value!86699 List!15350)) (IdentValue!2794 (value!86700 List!15350)) (DelimiterValue!5589 (value!86701 List!15350)) (DedentValue!2794 (value!86702 List!15350)) (NewLineValue!2794 (value!86703 List!15350)) (IntegerValue!8382 (value!86704 (_ BitVec 32)) (text!20005 List!15350)) (IntegerValue!8383 (value!86705 Int) (text!20006 List!15350)) (Times!2794) (Or!2794) (Equal!2794) (Minus!2794) (Broken!13974 (value!86706 List!15350)) (And!2794) (Div!2794) (LessEqual!2794) (Mod!2794) (Concat!6812) (Not!2794) (Plus!2794) (SpaceValue!2794 (value!86707 List!15350)) (IntegerValue!8384 (value!86708 Int) (text!20007 List!15350)) (StringLiteralValue!8383 (text!20008 List!15350)) (FloatLiteralValue!5589 (text!20009 List!15350)) (BytesLiteralValue!2794 (value!86709 List!15350)) (CommentValue!5589 (value!86710 List!15350)) (StringLiteralValue!8384 (value!86711 List!15350)) (ErrorTokenValue!2794 (msg!2855 List!15350)) )
))
(declare-datatypes ((C!8214 0))(
  ( (C!8215 (val!4677 Int)) )
))
(declare-datatypes ((List!15351 0))(
  ( (Nil!15285) (Cons!15285 (h!20686 C!8214) (t!135076 List!15351)) )
))
(declare-datatypes ((IArray!10425 0))(
  ( (IArray!10426 (innerList!5270 List!15351)) )
))
(declare-datatypes ((Conc!5210 0))(
  ( (Node!5210 (left!12965 Conc!5210) (right!13295 Conc!5210) (csize!10650 Int) (cheight!5421 Int)) (Leaf!7764 (xs!7965 IArray!10425) (csize!10651 Int)) (Empty!5210) )
))
(declare-datatypes ((BalanceConc!10360 0))(
  ( (BalanceConc!10361 (c!241849 Conc!5210)) )
))
(declare-datatypes ((TokenValueInjection!5248 0))(
  ( (TokenValueInjection!5249 (toValue!4019 Int) (toChars!3878 Int)) )
))
(declare-datatypes ((Regex!4018 0))(
  ( (ElementMatch!4018 (c!241850 C!8214)) (Concat!6813 (regOne!8548 Regex!4018) (regTwo!8548 Regex!4018)) (EmptyExpr!4018) (Star!4018 (reg!4347 Regex!4018)) (EmptyLang!4018) (Union!4018 (regOne!8549 Regex!4018) (regTwo!8549 Regex!4018)) )
))
(declare-datatypes ((String!18228 0))(
  ( (String!18229 (value!86712 String)) )
))
(declare-datatypes ((Rule!5208 0))(
  ( (Rule!5209 (regex!2704 Regex!4018) (tag!2968 String!18228) (isSeparator!2704 Bool) (transformation!2704 TokenValueInjection!5248)) )
))
(declare-datatypes ((Token!5070 0))(
  ( (Token!5071 (value!86713 TokenValue!2794) (rule!4481 Rule!5208) (size!12472 Int) (originalCharacters!3566 List!15351)) )
))
(declare-datatypes ((List!15352 0))(
  ( (Nil!15286) (Cons!15286 (h!20687 Token!5070) (t!135077 List!15352)) )
))
(declare-fun tokens2!49 () List!15352)

(declare-fun b!1467195 () Bool)

(declare-fun e!936353 () Bool)

(declare-fun inv!20438 (Token!5070) Bool)

(assert (=> b!1467195 (= e!936361 (and (inv!20438 (h!20687 tokens2!49)) e!936353 tp!412948))))

(declare-fun e!936355 () Bool)

(assert (=> b!1467196 (= e!936355 (and tp!412952 tp!412944))))

(declare-fun tokens1!47 () List!15352)

(declare-fun e!936351 () Bool)

(declare-fun b!1467197 () Bool)

(declare-fun e!936359 () Bool)

(declare-fun tp!412946 () Bool)

(assert (=> b!1467197 (= e!936359 (and (inv!20438 (h!20687 tokens1!47)) e!936351 tp!412946))))

(declare-fun tp!412943 () Bool)

(declare-fun b!1467198 () Bool)

(declare-fun e!936356 () Bool)

(declare-fun inv!21 (TokenValue!2794) Bool)

(assert (=> b!1467198 (= e!936353 (and (inv!21 (value!86713 (h!20687 tokens2!49))) e!936356 tp!412943))))

(declare-fun res!664008 () Bool)

(declare-fun e!936354 () Bool)

(assert (=> start!137260 (=> (not res!664008) (not e!936354))))

(declare-datatypes ((LexerInterface!2360 0))(
  ( (LexerInterfaceExt!2357 (__x!9379 Int)) (Lexer!2358) )
))
(declare-fun thiss!20360 () LexerInterface!2360)

(assert (=> start!137260 (= res!664008 (and (is-Lexer!2358 thiss!20360) (is-Cons!15286 tokens1!47)))))

(assert (=> start!137260 e!936354))

(assert (=> start!137260 true))

(assert (=> start!137260 e!936359))

(assert (=> start!137260 e!936361))

(declare-fun b!1467199 () Bool)

(declare-fun e!936352 () Bool)

(declare-fun tp!412951 () Bool)

(declare-fun inv!20435 (String!18228) Bool)

(declare-fun inv!20439 (TokenValueInjection!5248) Bool)

(assert (=> b!1467199 (= e!936352 (and tp!412951 (inv!20435 (tag!2968 (rule!4481 (h!20687 tokens1!47)))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) e!936355))))

(declare-fun b!1467200 () Bool)

(declare-fun ++!4152 (List!15352 List!15352) List!15352)

(assert (=> b!1467200 (= e!936354 (not (= (++!4152 tokens1!47 tokens2!49) (Cons!15286 (h!20687 tokens1!47) tokens2!49))))))

(declare-fun b!1467201 () Bool)

(declare-fun res!664006 () Bool)

(assert (=> b!1467201 (=> (not res!664006) (not e!936354))))

(declare-fun isEmpty!9588 (List!15352) Bool)

(assert (=> b!1467201 (= res!664006 (isEmpty!9588 (t!135077 tokens1!47)))))

(declare-fun e!936349 () Bool)

(assert (=> b!1467202 (= e!936349 (and tp!412949 tp!412945))))

(declare-fun b!1467203 () Bool)

(declare-fun res!664007 () Bool)

(assert (=> b!1467203 (=> (not res!664007) (not e!936354))))

(declare-fun printList!752 (LexerInterface!2360 List!15352) List!15351)

(declare-fun list!6126 (BalanceConc!10360) List!15351)

(declare-fun charsOf!1559 (Token!5070) BalanceConc!10360)

(assert (=> b!1467203 (= res!664007 (= (printList!752 thiss!20360 tokens1!47) (list!6126 (charsOf!1559 (h!20687 tokens1!47)))))))

(declare-fun b!1467204 () Bool)

(declare-fun tp!412947 () Bool)

(assert (=> b!1467204 (= e!936351 (and (inv!21 (value!86713 (h!20687 tokens1!47))) e!936352 tp!412947))))

(declare-fun tp!412950 () Bool)

(declare-fun b!1467205 () Bool)

(assert (=> b!1467205 (= e!936356 (and tp!412950 (inv!20435 (tag!2968 (rule!4481 (h!20687 tokens2!49)))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) e!936349))))

(assert (= (and start!137260 res!664008) b!1467201))

(assert (= (and b!1467201 res!664006) b!1467203))

(assert (= (and b!1467203 res!664007) b!1467200))

(assert (= b!1467199 b!1467196))

(assert (= b!1467204 b!1467199))

(assert (= b!1467197 b!1467204))

(assert (= (and start!137260 (is-Cons!15286 tokens1!47)) b!1467197))

(assert (= b!1467205 b!1467202))

(assert (= b!1467198 b!1467205))

(assert (= b!1467195 b!1467198))

(assert (= (and start!137260 (is-Cons!15286 tokens2!49)) b!1467195))

(declare-fun m!1711797 () Bool)

(assert (=> b!1467195 m!1711797))

(declare-fun m!1711799 () Bool)

(assert (=> b!1467201 m!1711799))

(declare-fun m!1711801 () Bool)

(assert (=> b!1467204 m!1711801))

(declare-fun m!1711803 () Bool)

(assert (=> b!1467203 m!1711803))

(declare-fun m!1711805 () Bool)

(assert (=> b!1467203 m!1711805))

(assert (=> b!1467203 m!1711805))

(declare-fun m!1711807 () Bool)

(assert (=> b!1467203 m!1711807))

(declare-fun m!1711809 () Bool)

(assert (=> b!1467198 m!1711809))

(declare-fun m!1711811 () Bool)

(assert (=> b!1467200 m!1711811))

(declare-fun m!1711813 () Bool)

(assert (=> b!1467199 m!1711813))

(declare-fun m!1711815 () Bool)

(assert (=> b!1467199 m!1711815))

(declare-fun m!1711817 () Bool)

(assert (=> b!1467197 m!1711817))

(declare-fun m!1711819 () Bool)

(assert (=> b!1467205 m!1711819))

(declare-fun m!1711821 () Bool)

(assert (=> b!1467205 m!1711821))

(push 1)

(assert (not b!1467197))

(assert (not b!1467205))

(assert (not b_next!37475))

(assert (not b!1467195))

(assert (not b!1467199))

(assert b_and!100259)

(assert (not b!1467200))

(assert b_and!100261)

(assert (not b!1467201))

(assert (not b!1467198))

(assert (not b!1467203))

(assert (not b!1467204))

(assert (not b_next!37473))

(assert b_and!100257)

(assert (not b_next!37471))

(assert b_and!100263)

(assert (not b_next!37477))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37475))

(assert b_and!100259)

(assert (not b_next!37473))

(assert b_and!100261)

(assert b_and!100257)

(assert (not b_next!37471))

(assert b_and!100263)

(assert (not b_next!37477))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!430498 () Bool)

(declare-fun res!664027 () Bool)

(declare-fun e!936403 () Bool)

(assert (=> d!430498 (=> (not res!664027) (not e!936403))))

(declare-fun isEmpty!9590 (List!15351) Bool)

(assert (=> d!430498 (= res!664027 (not (isEmpty!9590 (originalCharacters!3566 (h!20687 tokens1!47)))))))

(assert (=> d!430498 (= (inv!20438 (h!20687 tokens1!47)) e!936403)))

(declare-fun b!1467243 () Bool)

(declare-fun res!664028 () Bool)

(assert (=> b!1467243 (=> (not res!664028) (not e!936403))))

(declare-fun dynLambda!6956 (Int TokenValue!2794) BalanceConc!10360)

(assert (=> b!1467243 (= res!664028 (= (originalCharacters!3566 (h!20687 tokens1!47)) (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(declare-fun b!1467244 () Bool)

(declare-fun size!12474 (List!15351) Int)

(assert (=> b!1467244 (= e!936403 (= (size!12472 (h!20687 tokens1!47)) (size!12474 (originalCharacters!3566 (h!20687 tokens1!47)))))))

(assert (= (and d!430498 res!664027) b!1467243))

(assert (= (and b!1467243 res!664028) b!1467244))

(declare-fun b_lambda!45731 () Bool)

(assert (=> (not b_lambda!45731) (not b!1467243)))

(declare-fun tb!82937 () Bool)

(declare-fun t!135082 () Bool)

(assert (=> (and b!1467202 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135082) tb!82937))

(declare-fun b!1467249 () Bool)

(declare-fun e!936406 () Bool)

(declare-fun tp!412985 () Bool)

(declare-fun inv!20442 (Conc!5210) Bool)

(assert (=> b!1467249 (= e!936406 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))) tp!412985))))

(declare-fun result!99626 () Bool)

(declare-fun inv!20443 (BalanceConc!10360) Bool)

(assert (=> tb!82937 (= result!99626 (and (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))) e!936406))))

(assert (= tb!82937 b!1467249))

(declare-fun m!1711849 () Bool)

(assert (=> b!1467249 m!1711849))

(declare-fun m!1711851 () Bool)

(assert (=> tb!82937 m!1711851))

(assert (=> b!1467243 t!135082))

(declare-fun b_and!100273 () Bool)

(assert (= b_and!100259 (and (=> t!135082 result!99626) b_and!100273)))

(declare-fun t!135084 () Bool)

(declare-fun tb!82939 () Bool)

(assert (=> (and b!1467196 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135084) tb!82939))

(declare-fun result!99630 () Bool)

(assert (= result!99630 result!99626))

(assert (=> b!1467243 t!135084))

(declare-fun b_and!100275 () Bool)

(assert (= b_and!100263 (and (=> t!135084 result!99630) b_and!100275)))

(declare-fun m!1711853 () Bool)

(assert (=> d!430498 m!1711853))

(declare-fun m!1711855 () Bool)

(assert (=> b!1467243 m!1711855))

(assert (=> b!1467243 m!1711855))

(declare-fun m!1711857 () Bool)

(assert (=> b!1467243 m!1711857))

(declare-fun m!1711859 () Bool)

(assert (=> b!1467244 m!1711859))

(assert (=> b!1467197 d!430498))

(declare-fun d!430500 () Bool)

(declare-fun c!241855 () Bool)

(assert (=> d!430500 (= c!241855 (is-Cons!15286 tokens1!47))))

(declare-fun e!936409 () List!15351)

(assert (=> d!430500 (= (printList!752 thiss!20360 tokens1!47) e!936409)))

(declare-fun b!1467254 () Bool)

(declare-fun ++!4154 (List!15351 List!15351) List!15351)

(assert (=> b!1467254 (= e!936409 (++!4154 (list!6126 (charsOf!1559 (h!20687 tokens1!47))) (printList!752 thiss!20360 (t!135077 tokens1!47))))))

(declare-fun b!1467255 () Bool)

(assert (=> b!1467255 (= e!936409 Nil!15285)))

(assert (= (and d!430500 c!241855) b!1467254))

(assert (= (and d!430500 (not c!241855)) b!1467255))

(assert (=> b!1467254 m!1711805))

(assert (=> b!1467254 m!1711805))

(assert (=> b!1467254 m!1711807))

(declare-fun m!1711861 () Bool)

(assert (=> b!1467254 m!1711861))

(assert (=> b!1467254 m!1711807))

(assert (=> b!1467254 m!1711861))

(declare-fun m!1711863 () Bool)

(assert (=> b!1467254 m!1711863))

(assert (=> b!1467203 d!430500))

(declare-fun d!430504 () Bool)

(declare-fun list!6128 (Conc!5210) List!15351)

(assert (=> d!430504 (= (list!6126 (charsOf!1559 (h!20687 tokens1!47))) (list!6128 (c!241849 (charsOf!1559 (h!20687 tokens1!47)))))))

(declare-fun bs!344876 () Bool)

(assert (= bs!344876 d!430504))

(declare-fun m!1711865 () Bool)

(assert (=> bs!344876 m!1711865))

(assert (=> b!1467203 d!430504))

(declare-fun d!430508 () Bool)

(declare-fun lt!510832 () BalanceConc!10360)

(assert (=> d!430508 (= (list!6126 lt!510832) (originalCharacters!3566 (h!20687 tokens1!47)))))

(assert (=> d!430508 (= lt!510832 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))

(assert (=> d!430508 (= (charsOf!1559 (h!20687 tokens1!47)) lt!510832)))

(declare-fun b_lambda!45733 () Bool)

(assert (=> (not b_lambda!45733) (not d!430508)))

(assert (=> d!430508 t!135082))

(declare-fun b_and!100277 () Bool)

(assert (= b_and!100273 (and (=> t!135082 result!99626) b_and!100277)))

(assert (=> d!430508 t!135084))

(declare-fun b_and!100279 () Bool)

(assert (= b_and!100275 (and (=> t!135084 result!99630) b_and!100279)))

(declare-fun m!1711867 () Bool)

(assert (=> d!430508 m!1711867))

(assert (=> d!430508 m!1711855))

(assert (=> b!1467203 d!430508))

(declare-fun b!1467269 () Bool)

(declare-fun res!664034 () Bool)

(declare-fun e!936419 () Bool)

(assert (=> b!1467269 (=> res!664034 e!936419)))

(assert (=> b!1467269 (= res!664034 (not (is-IntegerValue!8384 (value!86713 (h!20687 tokens2!49)))))))

(declare-fun e!936420 () Bool)

(assert (=> b!1467269 (= e!936420 e!936419)))

(declare-fun b!1467270 () Bool)

(declare-fun inv!17 (TokenValue!2794) Bool)

(assert (=> b!1467270 (= e!936420 (inv!17 (value!86713 (h!20687 tokens2!49))))))

(declare-fun b!1467271 () Bool)

(declare-fun e!936421 () Bool)

(declare-fun inv!16 (TokenValue!2794) Bool)

(assert (=> b!1467271 (= e!936421 (inv!16 (value!86713 (h!20687 tokens2!49))))))

(declare-fun b!1467272 () Bool)

(declare-fun inv!15 (TokenValue!2794) Bool)

(assert (=> b!1467272 (= e!936419 (inv!15 (value!86713 (h!20687 tokens2!49))))))

(declare-fun d!430510 () Bool)

(declare-fun c!241860 () Bool)

(assert (=> d!430510 (= c!241860 (is-IntegerValue!8382 (value!86713 (h!20687 tokens2!49))))))

(assert (=> d!430510 (= (inv!21 (value!86713 (h!20687 tokens2!49))) e!936421)))

(declare-fun b!1467273 () Bool)

(assert (=> b!1467273 (= e!936421 e!936420)))

(declare-fun c!241861 () Bool)

(assert (=> b!1467273 (= c!241861 (is-IntegerValue!8383 (value!86713 (h!20687 tokens2!49))))))

(assert (= (and d!430510 c!241860) b!1467271))

(assert (= (and d!430510 (not c!241860)) b!1467273))

(assert (= (and b!1467273 c!241861) b!1467270))

(assert (= (and b!1467273 (not c!241861)) b!1467269))

(assert (= (and b!1467269 (not res!664034)) b!1467272))

(declare-fun m!1711873 () Bool)

(assert (=> b!1467270 m!1711873))

(declare-fun m!1711875 () Bool)

(assert (=> b!1467271 m!1711875))

(declare-fun m!1711877 () Bool)

(assert (=> b!1467272 m!1711877))

(assert (=> b!1467198 d!430510))

(declare-fun b!1467274 () Bool)

(declare-fun res!664035 () Bool)

(declare-fun e!936422 () Bool)

(assert (=> b!1467274 (=> res!664035 e!936422)))

(assert (=> b!1467274 (= res!664035 (not (is-IntegerValue!8384 (value!86713 (h!20687 tokens1!47)))))))

(declare-fun e!936423 () Bool)

(assert (=> b!1467274 (= e!936423 e!936422)))

(declare-fun b!1467275 () Bool)

(assert (=> b!1467275 (= e!936423 (inv!17 (value!86713 (h!20687 tokens1!47))))))

(declare-fun b!1467276 () Bool)

(declare-fun e!936424 () Bool)

(assert (=> b!1467276 (= e!936424 (inv!16 (value!86713 (h!20687 tokens1!47))))))

(declare-fun b!1467277 () Bool)

(assert (=> b!1467277 (= e!936422 (inv!15 (value!86713 (h!20687 tokens1!47))))))

(declare-fun d!430514 () Bool)

(declare-fun c!241862 () Bool)

(assert (=> d!430514 (= c!241862 (is-IntegerValue!8382 (value!86713 (h!20687 tokens1!47))))))

(assert (=> d!430514 (= (inv!21 (value!86713 (h!20687 tokens1!47))) e!936424)))

(declare-fun b!1467278 () Bool)

(assert (=> b!1467278 (= e!936424 e!936423)))

(declare-fun c!241863 () Bool)

(assert (=> b!1467278 (= c!241863 (is-IntegerValue!8383 (value!86713 (h!20687 tokens1!47))))))

(assert (= (and d!430514 c!241862) b!1467276))

(assert (= (and d!430514 (not c!241862)) b!1467278))

(assert (= (and b!1467278 c!241863) b!1467275))

(assert (= (and b!1467278 (not c!241863)) b!1467274))

(assert (= (and b!1467274 (not res!664035)) b!1467277))

(declare-fun m!1711879 () Bool)

(assert (=> b!1467275 m!1711879))

(declare-fun m!1711881 () Bool)

(assert (=> b!1467276 m!1711881))

(declare-fun m!1711883 () Bool)

(assert (=> b!1467277 m!1711883))

(assert (=> b!1467204 d!430514))

(declare-fun d!430516 () Bool)

(assert (=> d!430516 (= (inv!20435 (tag!2968 (rule!4481 (h!20687 tokens1!47)))) (= (mod (str.len (value!86712 (tag!2968 (rule!4481 (h!20687 tokens1!47))))) 2) 0))))

(assert (=> b!1467199 d!430516))

(declare-fun d!430518 () Bool)

(declare-fun res!664040 () Bool)

(declare-fun e!936433 () Bool)

(assert (=> d!430518 (=> (not res!664040) (not e!936433))))

(declare-fun semiInverseModEq!1013 (Int Int) Bool)

(assert (=> d!430518 (= res!664040 (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))))))

(assert (=> d!430518 (= (inv!20439 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) e!936433)))

(declare-fun b!1467291 () Bool)

(declare-fun equivClasses!972 (Int Int) Bool)

(assert (=> b!1467291 (= e!936433 (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))))))

(assert (= (and d!430518 res!664040) b!1467291))

(declare-fun m!1711885 () Bool)

(assert (=> d!430518 m!1711885))

(declare-fun m!1711887 () Bool)

(assert (=> b!1467291 m!1711887))

(assert (=> b!1467199 d!430518))

(declare-fun d!430520 () Bool)

(assert (=> d!430520 (= (inv!20435 (tag!2968 (rule!4481 (h!20687 tokens2!49)))) (= (mod (str.len (value!86712 (tag!2968 (rule!4481 (h!20687 tokens2!49))))) 2) 0))))

(assert (=> b!1467205 d!430520))

(declare-fun d!430522 () Bool)

(declare-fun res!664041 () Bool)

(declare-fun e!936434 () Bool)

(assert (=> d!430522 (=> (not res!664041) (not e!936434))))

(assert (=> d!430522 (= res!664041 (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))))))

(assert (=> d!430522 (= (inv!20439 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) e!936434)))

(declare-fun b!1467292 () Bool)

(assert (=> b!1467292 (= e!936434 (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))))))

(assert (= (and d!430522 res!664041) b!1467292))

(declare-fun m!1711889 () Bool)

(assert (=> d!430522 m!1711889))

(declare-fun m!1711891 () Bool)

(assert (=> b!1467292 m!1711891))

(assert (=> b!1467205 d!430522))

(declare-fun b!1467313 () Bool)

(declare-fun e!936447 () List!15352)

(assert (=> b!1467313 (= e!936447 (Cons!15286 (h!20687 tokens1!47) (++!4152 (t!135077 tokens1!47) tokens2!49)))))

(declare-fun b!1467314 () Bool)

(declare-fun res!664049 () Bool)

(declare-fun e!936446 () Bool)

(assert (=> b!1467314 (=> (not res!664049) (not e!936446))))

(declare-fun lt!510835 () List!15352)

(declare-fun size!12475 (List!15352) Int)

(assert (=> b!1467314 (= res!664049 (= (size!12475 lt!510835) (+ (size!12475 tokens1!47) (size!12475 tokens2!49))))))

(declare-fun b!1467315 () Bool)

(assert (=> b!1467315 (= e!936446 (or (not (= tokens2!49 Nil!15286)) (= lt!510835 tokens1!47)))))

(declare-fun d!430524 () Bool)

(assert (=> d!430524 e!936446))

(declare-fun res!664050 () Bool)

(assert (=> d!430524 (=> (not res!664050) (not e!936446))))

(declare-fun content!2254 (List!15352) (Set Token!5070))

(assert (=> d!430524 (= res!664050 (= (content!2254 lt!510835) (set.union (content!2254 tokens1!47) (content!2254 tokens2!49))))))

(assert (=> d!430524 (= lt!510835 e!936447)))

(declare-fun c!241874 () Bool)

(assert (=> d!430524 (= c!241874 (is-Nil!15286 tokens1!47))))

(assert (=> d!430524 (= (++!4152 tokens1!47 tokens2!49) lt!510835)))

(declare-fun b!1467312 () Bool)

(assert (=> b!1467312 (= e!936447 tokens2!49)))

(assert (= (and d!430524 c!241874) b!1467312))

(assert (= (and d!430524 (not c!241874)) b!1467313))

(assert (= (and d!430524 res!664050) b!1467314))

(assert (= (and b!1467314 res!664049) b!1467315))

(declare-fun m!1711909 () Bool)

(assert (=> b!1467313 m!1711909))

(declare-fun m!1711911 () Bool)

(assert (=> b!1467314 m!1711911))

(declare-fun m!1711913 () Bool)

(assert (=> b!1467314 m!1711913))

(declare-fun m!1711915 () Bool)

(assert (=> b!1467314 m!1711915))

(declare-fun m!1711917 () Bool)

(assert (=> d!430524 m!1711917))

(declare-fun m!1711919 () Bool)

(assert (=> d!430524 m!1711919))

(declare-fun m!1711921 () Bool)

(assert (=> d!430524 m!1711921))

(assert (=> b!1467200 d!430524))

(declare-fun d!430536 () Bool)

(declare-fun res!664051 () Bool)

(declare-fun e!936448 () Bool)

(assert (=> d!430536 (=> (not res!664051) (not e!936448))))

(assert (=> d!430536 (= res!664051 (not (isEmpty!9590 (originalCharacters!3566 (h!20687 tokens2!49)))))))

(assert (=> d!430536 (= (inv!20438 (h!20687 tokens2!49)) e!936448)))

(declare-fun b!1467316 () Bool)

(declare-fun res!664052 () Bool)

(assert (=> b!1467316 (=> (not res!664052) (not e!936448))))

(assert (=> b!1467316 (= res!664052 (= (originalCharacters!3566 (h!20687 tokens2!49)) (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(declare-fun b!1467317 () Bool)

(assert (=> b!1467317 (= e!936448 (= (size!12472 (h!20687 tokens2!49)) (size!12474 (originalCharacters!3566 (h!20687 tokens2!49)))))))

(assert (= (and d!430536 res!664051) b!1467316))

(assert (= (and b!1467316 res!664052) b!1467317))

(declare-fun b_lambda!45735 () Bool)

(assert (=> (not b_lambda!45735) (not b!1467316)))

(declare-fun t!135086 () Bool)

(declare-fun tb!82941 () Bool)

(assert (=> (and b!1467202 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135086) tb!82941))

(declare-fun b!1467318 () Bool)

(declare-fun e!936449 () Bool)

(declare-fun tp!412986 () Bool)

(assert (=> b!1467318 (= e!936449 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))) tp!412986))))

(declare-fun result!99632 () Bool)

(assert (=> tb!82941 (= result!99632 (and (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))) e!936449))))

(assert (= tb!82941 b!1467318))

(declare-fun m!1711923 () Bool)

(assert (=> b!1467318 m!1711923))

(declare-fun m!1711925 () Bool)

(assert (=> tb!82941 m!1711925))

(assert (=> b!1467316 t!135086))

(declare-fun b_and!100281 () Bool)

(assert (= b_and!100277 (and (=> t!135086 result!99632) b_and!100281)))

(declare-fun tb!82943 () Bool)

(declare-fun t!135088 () Bool)

(assert (=> (and b!1467196 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135088) tb!82943))

(declare-fun result!99634 () Bool)

(assert (= result!99634 result!99632))

(assert (=> b!1467316 t!135088))

(declare-fun b_and!100283 () Bool)

(assert (= b_and!100279 (and (=> t!135088 result!99634) b_and!100283)))

(declare-fun m!1711927 () Bool)

(assert (=> d!430536 m!1711927))

(declare-fun m!1711929 () Bool)

(assert (=> b!1467316 m!1711929))

(assert (=> b!1467316 m!1711929))

(declare-fun m!1711931 () Bool)

(assert (=> b!1467316 m!1711931))

(declare-fun m!1711933 () Bool)

(assert (=> b!1467317 m!1711933))

(assert (=> b!1467195 d!430536))

(declare-fun d!430538 () Bool)

(assert (=> d!430538 (= (isEmpty!9588 (t!135077 tokens1!47)) (is-Nil!15286 (t!135077 tokens1!47)))))

(assert (=> b!1467201 d!430538))

(declare-fun b!1467336 () Bool)

(declare-fun b_free!36783 () Bool)

(declare-fun b_next!37487 () Bool)

(assert (=> b!1467336 (= b_free!36783 (not b_next!37487))))

(declare-fun tp!412997 () Bool)

(declare-fun b_and!100285 () Bool)

(assert (=> b!1467336 (= tp!412997 b_and!100285)))

(declare-fun b_free!36785 () Bool)

(declare-fun b_next!37489 () Bool)

(assert (=> b!1467336 (= b_free!36785 (not b_next!37489))))

(declare-fun t!135090 () Bool)

(declare-fun tb!82945 () Bool)

(assert (=> (and b!1467336 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135090) tb!82945))

(declare-fun result!99638 () Bool)

(assert (= result!99638 result!99626))

(assert (=> b!1467243 t!135090))

(assert (=> d!430508 t!135090))

(declare-fun tb!82947 () Bool)

(declare-fun t!135092 () Bool)

(assert (=> (and b!1467336 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135092) tb!82947))

(declare-fun result!99640 () Bool)

(assert (= result!99640 result!99632))

(assert (=> b!1467316 t!135092))

(declare-fun tp!413001 () Bool)

(declare-fun b_and!100287 () Bool)

(assert (=> b!1467336 (= tp!413001 (and (=> t!135090 result!99638) (=> t!135092 result!99640) b_and!100287))))

(declare-fun tp!413000 () Bool)

(declare-fun e!936462 () Bool)

(declare-fun e!936467 () Bool)

(declare-fun b!1467331 () Bool)

(assert (=> b!1467331 (= e!936462 (and (inv!20438 (h!20687 (t!135077 tokens1!47))) e!936467 tp!413000))))

(assert (=> b!1467197 (= tp!412946 e!936462)))

(declare-fun e!936463 () Bool)

(assert (=> b!1467336 (= e!936463 (and tp!412997 tp!413001))))

(declare-fun e!936466 () Bool)

(declare-fun tp!412999 () Bool)

(declare-fun b!1467334 () Bool)

(assert (=> b!1467334 (= e!936466 (and tp!412999 (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) e!936463))))

(declare-fun tp!412998 () Bool)

(declare-fun b!1467332 () Bool)

(assert (=> b!1467332 (= e!936467 (and (inv!21 (value!86713 (h!20687 (t!135077 tokens1!47)))) e!936466 tp!412998))))

(assert (= b!1467334 b!1467336))

(assert (= b!1467332 b!1467334))

(assert (= b!1467331 b!1467332))

(assert (= (and b!1467197 (is-Cons!15286 (t!135077 tokens1!47))) b!1467331))

(declare-fun m!1711935 () Bool)

(assert (=> b!1467331 m!1711935))

(declare-fun m!1711937 () Bool)

(assert (=> b!1467334 m!1711937))

(declare-fun m!1711939 () Bool)

(assert (=> b!1467334 m!1711939))

(declare-fun m!1711941 () Bool)

(assert (=> b!1467332 m!1711941))

(declare-fun b!1467345 () Bool)

(declare-fun e!936474 () Bool)

(declare-fun tp_is_empty!6893 () Bool)

(declare-fun tp!413004 () Bool)

(assert (=> b!1467345 (= e!936474 (and tp_is_empty!6893 tp!413004))))

(assert (=> b!1467198 (= tp!412943 e!936474)))

(assert (= (and b!1467198 (is-Cons!15285 (originalCharacters!3566 (h!20687 tokens2!49)))) b!1467345))

(declare-fun b!1467346 () Bool)

(declare-fun e!936475 () Bool)

(declare-fun tp!413005 () Bool)

(assert (=> b!1467346 (= e!936475 (and tp_is_empty!6893 tp!413005))))

(assert (=> b!1467204 (= tp!412947 e!936475)))

(assert (= (and b!1467204 (is-Cons!15285 (originalCharacters!3566 (h!20687 tokens1!47)))) b!1467346))

(declare-fun b!1467358 () Bool)

(declare-fun e!936478 () Bool)

(declare-fun tp!413016 () Bool)

(declare-fun tp!413017 () Bool)

(assert (=> b!1467358 (= e!936478 (and tp!413016 tp!413017))))

(declare-fun b!1467360 () Bool)

(declare-fun tp!413020 () Bool)

(declare-fun tp!413018 () Bool)

(assert (=> b!1467360 (= e!936478 (and tp!413020 tp!413018))))

(declare-fun b!1467359 () Bool)

(declare-fun tp!413019 () Bool)

(assert (=> b!1467359 (= e!936478 tp!413019)))

(assert (=> b!1467199 (= tp!412951 e!936478)))

(declare-fun b!1467357 () Bool)

(assert (=> b!1467357 (= e!936478 tp_is_empty!6893)))

(assert (= (and b!1467199 (is-ElementMatch!4018 (regex!2704 (rule!4481 (h!20687 tokens1!47))))) b!1467357))

(assert (= (and b!1467199 (is-Concat!6813 (regex!2704 (rule!4481 (h!20687 tokens1!47))))) b!1467358))

(assert (= (and b!1467199 (is-Star!4018 (regex!2704 (rule!4481 (h!20687 tokens1!47))))) b!1467359))

(assert (= (and b!1467199 (is-Union!4018 (regex!2704 (rule!4481 (h!20687 tokens1!47))))) b!1467360))

(declare-fun b!1467362 () Bool)

(declare-fun e!936479 () Bool)

(declare-fun tp!413021 () Bool)

(declare-fun tp!413022 () Bool)

(assert (=> b!1467362 (= e!936479 (and tp!413021 tp!413022))))

(declare-fun b!1467364 () Bool)

(declare-fun tp!413025 () Bool)

(declare-fun tp!413023 () Bool)

(assert (=> b!1467364 (= e!936479 (and tp!413025 tp!413023))))

(declare-fun b!1467363 () Bool)

(declare-fun tp!413024 () Bool)

(assert (=> b!1467363 (= e!936479 tp!413024)))

(assert (=> b!1467205 (= tp!412950 e!936479)))

(declare-fun b!1467361 () Bool)

(assert (=> b!1467361 (= e!936479 tp_is_empty!6893)))

(assert (= (and b!1467205 (is-ElementMatch!4018 (regex!2704 (rule!4481 (h!20687 tokens2!49))))) b!1467361))

(assert (= (and b!1467205 (is-Concat!6813 (regex!2704 (rule!4481 (h!20687 tokens2!49))))) b!1467362))

(assert (= (and b!1467205 (is-Star!4018 (regex!2704 (rule!4481 (h!20687 tokens2!49))))) b!1467363))

(assert (= (and b!1467205 (is-Union!4018 (regex!2704 (rule!4481 (h!20687 tokens2!49))))) b!1467364))

(declare-fun b!1467368 () Bool)

(declare-fun b_free!36787 () Bool)

(declare-fun b_next!37491 () Bool)

(assert (=> b!1467368 (= b_free!36787 (not b_next!37491))))

(declare-fun tp!413026 () Bool)

(declare-fun b_and!100289 () Bool)

(assert (=> b!1467368 (= tp!413026 b_and!100289)))

(declare-fun b_free!36789 () Bool)

(declare-fun b_next!37493 () Bool)

(assert (=> b!1467368 (= b_free!36789 (not b_next!37493))))

(declare-fun tb!82949 () Bool)

(declare-fun t!135094 () Bool)

(assert (=> (and b!1467368 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135094) tb!82949))

(declare-fun result!99646 () Bool)

(assert (= result!99646 result!99626))

(assert (=> b!1467243 t!135094))

(assert (=> d!430508 t!135094))

(declare-fun t!135096 () Bool)

(declare-fun tb!82951 () Bool)

(assert (=> (and b!1467368 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135096) tb!82951))

(declare-fun result!99648 () Bool)

(assert (= result!99648 result!99632))

(assert (=> b!1467316 t!135096))

(declare-fun b_and!100291 () Bool)

(declare-fun tp!413030 () Bool)

(assert (=> b!1467368 (= tp!413030 (and (=> t!135094 result!99646) (=> t!135096 result!99648) b_and!100291))))

(declare-fun e!936480 () Bool)

(declare-fun e!936485 () Bool)

(declare-fun tp!413029 () Bool)

(declare-fun b!1467365 () Bool)

(assert (=> b!1467365 (= e!936480 (and (inv!20438 (h!20687 (t!135077 tokens2!49))) e!936485 tp!413029))))

(assert (=> b!1467195 (= tp!412948 e!936480)))

(declare-fun e!936481 () Bool)

(assert (=> b!1467368 (= e!936481 (and tp!413026 tp!413030))))

(declare-fun b!1467367 () Bool)

(declare-fun tp!413028 () Bool)

(declare-fun e!936484 () Bool)

(assert (=> b!1467367 (= e!936484 (and tp!413028 (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) e!936481))))

(declare-fun b!1467366 () Bool)

(declare-fun tp!413027 () Bool)

(assert (=> b!1467366 (= e!936485 (and (inv!21 (value!86713 (h!20687 (t!135077 tokens2!49)))) e!936484 tp!413027))))

(assert (= b!1467367 b!1467368))

(assert (= b!1467366 b!1467367))

(assert (= b!1467365 b!1467366))

(assert (= (and b!1467195 (is-Cons!15286 (t!135077 tokens2!49))) b!1467365))

(declare-fun m!1711943 () Bool)

(assert (=> b!1467365 m!1711943))

(declare-fun m!1711945 () Bool)

(assert (=> b!1467367 m!1711945))

(declare-fun m!1711947 () Bool)

(assert (=> b!1467367 m!1711947))

(declare-fun m!1711949 () Bool)

(assert (=> b!1467366 m!1711949))

(declare-fun b_lambda!45737 () Bool)

(assert (= b_lambda!45735 (or (and b!1467202 b_free!36769) (and b!1467196 b_free!36773 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))))) (and b!1467336 b_free!36785 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))))) (and b!1467368 b_free!36789 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))))) b_lambda!45737)))

(declare-fun b_lambda!45739 () Bool)

(assert (= b_lambda!45731 (or (and b!1467202 b_free!36769 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) (and b!1467196 b_free!36773) (and b!1467336 b_free!36785 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) (and b!1467368 b_free!36789 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) b_lambda!45739)))

(declare-fun b_lambda!45741 () Bool)

(assert (= b_lambda!45733 (or (and b!1467202 b_free!36769 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) (and b!1467196 b_free!36773) (and b!1467336 b_free!36785 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) (and b!1467368 b_free!36789 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))))) b_lambda!45741)))

(push 1)

(assert (not b!1467277))

(assert (not b!1467334))

(assert (not b!1467363))

(assert (not b_next!37491))

(assert (not b!1467244))

(assert (not d!430498))

(assert (not tb!82941))

(assert (not b_lambda!45739))

(assert (not b_next!37487))

(assert (not d!430536))

(assert b_and!100291)

(assert (not d!430522))

(assert (not b!1467360))

(assert (not b!1467316))

(assert (not b!1467366))

(assert (not b!1467359))

(assert (not b_next!37489))

(assert (not b!1467271))

(assert (not b!1467276))

(assert (not d!430504))

(assert (not b_next!37475))

(assert (not b!1467358))

(assert (not b!1467254))

(assert (not b!1467364))

(assert (not b!1467331))

(assert (not b!1467318))

(assert (not b!1467362))

(assert (not b!1467270))

(assert (not b!1467275))

(assert (not b!1467365))

(assert (not b!1467346))

(assert (not b!1467243))

(assert tp_is_empty!6893)

(assert b_and!100287)

(assert (not d!430524))

(assert (not d!430518))

(assert (not b_next!37473))

(assert (not b_lambda!45741))

(assert b_and!100261)

(assert (not b!1467313))

(assert b_and!100285)

(assert (not b!1467367))

(assert b_and!100283)

(assert (not b!1467292))

(assert (not b!1467345))

(assert b_and!100257)

(assert (not b!1467272))

(assert (not b!1467314))

(assert (not b_next!37471))

(assert (not b!1467332))

(assert (not d!430508))

(assert b_and!100281)

(assert (not b_lambda!45737))

(assert (not b_next!37493))

(assert (not b!1467317))

(assert (not b_next!37477))

(assert (not b!1467291))

(assert (not tb!82937))

(assert (not b!1467249))

(assert b_and!100289)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37487))

(assert b_and!100291)

(assert (not b_next!37489))

(assert (not b_next!37475))

(assert (not b_next!37491))

(assert b_and!100287)

(assert (not b_next!37473))

(assert b_and!100283)

(assert b_and!100281)

(assert (not b_next!37493))

(assert (not b_next!37477))

(assert b_and!100289)

(assert b_and!100261)

(assert b_and!100285)

(assert b_and!100257)

(assert (not b_next!37471))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1467444 () Bool)

(declare-fun e!936535 () List!15351)

(declare-fun e!936536 () List!15351)

(assert (=> b!1467444 (= e!936535 e!936536)))

(declare-fun c!241886 () Bool)

(assert (=> b!1467444 (= c!241886 (is-Leaf!7764 (c!241849 (charsOf!1559 (h!20687 tokens1!47)))))))

(declare-fun b!1467445 () Bool)

(declare-fun list!6130 (IArray!10425) List!15351)

(assert (=> b!1467445 (= e!936536 (list!6130 (xs!7965 (c!241849 (charsOf!1559 (h!20687 tokens1!47))))))))

(declare-fun b!1467446 () Bool)

(assert (=> b!1467446 (= e!936536 (++!4154 (list!6128 (left!12965 (c!241849 (charsOf!1559 (h!20687 tokens1!47))))) (list!6128 (right!13295 (c!241849 (charsOf!1559 (h!20687 tokens1!47)))))))))

(declare-fun b!1467443 () Bool)

(assert (=> b!1467443 (= e!936535 Nil!15285)))

(declare-fun d!430550 () Bool)

(declare-fun c!241885 () Bool)

(assert (=> d!430550 (= c!241885 (is-Empty!5210 (c!241849 (charsOf!1559 (h!20687 tokens1!47)))))))

(assert (=> d!430550 (= (list!6128 (c!241849 (charsOf!1559 (h!20687 tokens1!47)))) e!936535)))

(assert (= (and d!430550 c!241885) b!1467443))

(assert (= (and d!430550 (not c!241885)) b!1467444))

(assert (= (and b!1467444 c!241886) b!1467445))

(assert (= (and b!1467444 (not c!241886)) b!1467446))

(declare-fun m!1712013 () Bool)

(assert (=> b!1467445 m!1712013))

(declare-fun m!1712015 () Bool)

(assert (=> b!1467446 m!1712015))

(declare-fun m!1712017 () Bool)

(assert (=> b!1467446 m!1712017))

(assert (=> b!1467446 m!1712015))

(assert (=> b!1467446 m!1712017))

(declare-fun m!1712019 () Bool)

(assert (=> b!1467446 m!1712019))

(assert (=> d!430504 d!430550))

(declare-fun d!430552 () Bool)

(assert (=> d!430552 true))

(declare-fun lambda!63382 () Int)

(declare-fun order!9193 () Int)

(declare-fun order!9191 () Int)

(declare-fun dynLambda!6958 (Int Int) Int)

(declare-fun dynLambda!6959 (Int Int) Int)

(assert (=> d!430552 (< (dynLambda!6958 order!9191 (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (dynLambda!6959 order!9193 lambda!63382))))

(declare-fun Forall2!464 (Int) Bool)

(assert (=> d!430552 (= (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (Forall2!464 lambda!63382))))

(declare-fun bs!344879 () Bool)

(assert (= bs!344879 d!430552))

(declare-fun m!1712023 () Bool)

(assert (=> bs!344879 m!1712023))

(assert (=> b!1467291 d!430552))

(declare-fun d!430558 () Bool)

(declare-fun lt!510844 () Int)

(assert (=> d!430558 (>= lt!510844 0)))

(declare-fun e!936541 () Int)

(assert (=> d!430558 (= lt!510844 e!936541)))

(declare-fun c!241889 () Bool)

(assert (=> d!430558 (= c!241889 (is-Nil!15285 (originalCharacters!3566 (h!20687 tokens2!49))))))

(assert (=> d!430558 (= (size!12474 (originalCharacters!3566 (h!20687 tokens2!49))) lt!510844)))

(declare-fun b!1467455 () Bool)

(assert (=> b!1467455 (= e!936541 0)))

(declare-fun b!1467456 () Bool)

(assert (=> b!1467456 (= e!936541 (+ 1 (size!12474 (t!135076 (originalCharacters!3566 (h!20687 tokens2!49))))))))

(assert (= (and d!430558 c!241889) b!1467455))

(assert (= (and d!430558 (not c!241889)) b!1467456))

(declare-fun m!1712025 () Bool)

(assert (=> b!1467456 m!1712025))

(assert (=> b!1467317 d!430558))

(declare-fun d!430560 () Bool)

(assert (=> d!430560 (= (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))) (list!6128 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(declare-fun bs!344880 () Bool)

(assert (= bs!344880 d!430560))

(declare-fun m!1712027 () Bool)

(assert (=> bs!344880 m!1712027))

(assert (=> b!1467316 d!430560))

(declare-fun d!430562 () Bool)

(declare-fun c!241892 () Bool)

(assert (=> d!430562 (= c!241892 (is-Nil!15286 lt!510835))))

(declare-fun e!936544 () (Set Token!5070))

(assert (=> d!430562 (= (content!2254 lt!510835) e!936544)))

(declare-fun b!1467461 () Bool)

(assert (=> b!1467461 (= e!936544 (as set.empty (Set Token!5070)))))

(declare-fun b!1467462 () Bool)

(assert (=> b!1467462 (= e!936544 (set.union (set.insert (h!20687 lt!510835) (as set.empty (Set Token!5070))) (content!2254 (t!135077 lt!510835))))))

(assert (= (and d!430562 c!241892) b!1467461))

(assert (= (and d!430562 (not c!241892)) b!1467462))

(declare-fun m!1712029 () Bool)

(assert (=> b!1467462 m!1712029))

(declare-fun m!1712031 () Bool)

(assert (=> b!1467462 m!1712031))

(assert (=> d!430524 d!430562))

(declare-fun d!430564 () Bool)

(declare-fun c!241893 () Bool)

(assert (=> d!430564 (= c!241893 (is-Nil!15286 tokens1!47))))

(declare-fun e!936545 () (Set Token!5070))

(assert (=> d!430564 (= (content!2254 tokens1!47) e!936545)))

(declare-fun b!1467463 () Bool)

(assert (=> b!1467463 (= e!936545 (as set.empty (Set Token!5070)))))

(declare-fun b!1467464 () Bool)

(assert (=> b!1467464 (= e!936545 (set.union (set.insert (h!20687 tokens1!47) (as set.empty (Set Token!5070))) (content!2254 (t!135077 tokens1!47))))))

(assert (= (and d!430564 c!241893) b!1467463))

(assert (= (and d!430564 (not c!241893)) b!1467464))

(declare-fun m!1712033 () Bool)

(assert (=> b!1467464 m!1712033))

(declare-fun m!1712035 () Bool)

(assert (=> b!1467464 m!1712035))

(assert (=> d!430524 d!430564))

(declare-fun d!430566 () Bool)

(declare-fun c!241894 () Bool)

(assert (=> d!430566 (= c!241894 (is-Nil!15286 tokens2!49))))

(declare-fun e!936546 () (Set Token!5070))

(assert (=> d!430566 (= (content!2254 tokens2!49) e!936546)))

(declare-fun b!1467465 () Bool)

(assert (=> b!1467465 (= e!936546 (as set.empty (Set Token!5070)))))

(declare-fun b!1467466 () Bool)

(assert (=> b!1467466 (= e!936546 (set.union (set.insert (h!20687 tokens2!49) (as set.empty (Set Token!5070))) (content!2254 (t!135077 tokens2!49))))))

(assert (= (and d!430566 c!241894) b!1467465))

(assert (= (and d!430566 (not c!241894)) b!1467466))

(declare-fun m!1712037 () Bool)

(assert (=> b!1467466 m!1712037))

(declare-fun m!1712039 () Bool)

(assert (=> b!1467466 m!1712039))

(assert (=> d!430524 d!430566))

(declare-fun d!430568 () Bool)

(assert (=> d!430568 (= (isEmpty!9590 (originalCharacters!3566 (h!20687 tokens2!49))) (is-Nil!15285 (originalCharacters!3566 (h!20687 tokens2!49))))))

(assert (=> d!430536 d!430568))

(declare-fun d!430570 () Bool)

(declare-fun isBalanced!1562 (Conc!5210) Bool)

(assert (=> d!430570 (= (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))) (isBalanced!1562 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(declare-fun bs!344881 () Bool)

(assert (= bs!344881 d!430570))

(declare-fun m!1712041 () Bool)

(assert (=> bs!344881 m!1712041))

(assert (=> tb!82937 d!430570))

(declare-fun d!430572 () Bool)

(declare-fun charsToBigInt!0 (List!15350 Int) Int)

(assert (=> d!430572 (= (inv!15 (value!86713 (h!20687 tokens1!47))) (= (charsToBigInt!0 (text!20007 (value!86713 (h!20687 tokens1!47))) 0) (value!86708 (value!86713 (h!20687 tokens1!47)))))))

(declare-fun bs!344882 () Bool)

(assert (= bs!344882 d!430572))

(declare-fun m!1712043 () Bool)

(assert (=> bs!344882 m!1712043))

(assert (=> b!1467277 d!430572))

(declare-fun d!430574 () Bool)

(declare-fun charsToInt!0 (List!15350) (_ BitVec 32))

(assert (=> d!430574 (= (inv!16 (value!86713 (h!20687 tokens1!47))) (= (charsToInt!0 (text!20005 (value!86713 (h!20687 tokens1!47)))) (value!86704 (value!86713 (h!20687 tokens1!47)))))))

(declare-fun bs!344883 () Bool)

(assert (= bs!344883 d!430574))

(declare-fun m!1712045 () Bool)

(assert (=> bs!344883 m!1712045))

(assert (=> b!1467276 d!430574))

(declare-fun b!1467477 () Bool)

(declare-fun res!664078 () Bool)

(declare-fun e!936551 () Bool)

(assert (=> b!1467477 (=> (not res!664078) (not e!936551))))

(declare-fun lt!510847 () List!15351)

(assert (=> b!1467477 (= res!664078 (= (size!12474 lt!510847) (+ (size!12474 (list!6126 (charsOf!1559 (h!20687 tokens1!47)))) (size!12474 (printList!752 thiss!20360 (t!135077 tokens1!47))))))))

(declare-fun d!430576 () Bool)

(assert (=> d!430576 e!936551))

(declare-fun res!664079 () Bool)

(assert (=> d!430576 (=> (not res!664079) (not e!936551))))

(declare-fun content!2256 (List!15351) (Set C!8214))

(assert (=> d!430576 (= res!664079 (= (content!2256 lt!510847) (set.union (content!2256 (list!6126 (charsOf!1559 (h!20687 tokens1!47)))) (content!2256 (printList!752 thiss!20360 (t!135077 tokens1!47))))))))

(declare-fun e!936552 () List!15351)

(assert (=> d!430576 (= lt!510847 e!936552)))

(declare-fun c!241897 () Bool)

(assert (=> d!430576 (= c!241897 (is-Nil!15285 (list!6126 (charsOf!1559 (h!20687 tokens1!47)))))))

(assert (=> d!430576 (= (++!4154 (list!6126 (charsOf!1559 (h!20687 tokens1!47))) (printList!752 thiss!20360 (t!135077 tokens1!47))) lt!510847)))

(declare-fun b!1467475 () Bool)

(assert (=> b!1467475 (= e!936552 (printList!752 thiss!20360 (t!135077 tokens1!47)))))

(declare-fun b!1467476 () Bool)

(assert (=> b!1467476 (= e!936552 (Cons!15285 (h!20686 (list!6126 (charsOf!1559 (h!20687 tokens1!47)))) (++!4154 (t!135076 (list!6126 (charsOf!1559 (h!20687 tokens1!47)))) (printList!752 thiss!20360 (t!135077 tokens1!47)))))))

(declare-fun b!1467478 () Bool)

(assert (=> b!1467478 (= e!936551 (or (not (= (printList!752 thiss!20360 (t!135077 tokens1!47)) Nil!15285)) (= lt!510847 (list!6126 (charsOf!1559 (h!20687 tokens1!47))))))))

(assert (= (and d!430576 c!241897) b!1467475))

(assert (= (and d!430576 (not c!241897)) b!1467476))

(assert (= (and d!430576 res!664079) b!1467477))

(assert (= (and b!1467477 res!664078) b!1467478))

(declare-fun m!1712047 () Bool)

(assert (=> b!1467477 m!1712047))

(assert (=> b!1467477 m!1711807))

(declare-fun m!1712049 () Bool)

(assert (=> b!1467477 m!1712049))

(assert (=> b!1467477 m!1711861))

(declare-fun m!1712051 () Bool)

(assert (=> b!1467477 m!1712051))

(declare-fun m!1712053 () Bool)

(assert (=> d!430576 m!1712053))

(assert (=> d!430576 m!1711807))

(declare-fun m!1712055 () Bool)

(assert (=> d!430576 m!1712055))

(assert (=> d!430576 m!1711861))

(declare-fun m!1712057 () Bool)

(assert (=> d!430576 m!1712057))

(assert (=> b!1467476 m!1711861))

(declare-fun m!1712059 () Bool)

(assert (=> b!1467476 m!1712059))

(assert (=> b!1467254 d!430576))

(assert (=> b!1467254 d!430504))

(assert (=> b!1467254 d!430508))

(declare-fun d!430578 () Bool)

(declare-fun c!241898 () Bool)

(assert (=> d!430578 (= c!241898 (is-Cons!15286 (t!135077 tokens1!47)))))

(declare-fun e!936553 () List!15351)

(assert (=> d!430578 (= (printList!752 thiss!20360 (t!135077 tokens1!47)) e!936553)))

(declare-fun b!1467479 () Bool)

(assert (=> b!1467479 (= e!936553 (++!4154 (list!6126 (charsOf!1559 (h!20687 (t!135077 tokens1!47)))) (printList!752 thiss!20360 (t!135077 (t!135077 tokens1!47)))))))

(declare-fun b!1467480 () Bool)

(assert (=> b!1467480 (= e!936553 Nil!15285)))

(assert (= (and d!430578 c!241898) b!1467479))

(assert (= (and d!430578 (not c!241898)) b!1467480))

(declare-fun m!1712061 () Bool)

(assert (=> b!1467479 m!1712061))

(assert (=> b!1467479 m!1712061))

(declare-fun m!1712063 () Bool)

(assert (=> b!1467479 m!1712063))

(declare-fun m!1712065 () Bool)

(assert (=> b!1467479 m!1712065))

(assert (=> b!1467479 m!1712063))

(assert (=> b!1467479 m!1712065))

(declare-fun m!1712067 () Bool)

(assert (=> b!1467479 m!1712067))

(assert (=> b!1467254 d!430578))

(declare-fun d!430580 () Bool)

(assert (=> d!430580 (= (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (= (mod (str.len (value!86712 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) 2) 0))))

(assert (=> b!1467334 d!430580))

(declare-fun d!430582 () Bool)

(declare-fun res!664080 () Bool)

(declare-fun e!936554 () Bool)

(assert (=> d!430582 (=> (not res!664080) (not e!936554))))

(assert (=> d!430582 (= res!664080 (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))))))

(assert (=> d!430582 (= (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) e!936554)))

(declare-fun b!1467481 () Bool)

(assert (=> b!1467481 (= e!936554 (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))))))

(assert (= (and d!430582 res!664080) b!1467481))

(declare-fun m!1712069 () Bool)

(assert (=> d!430582 m!1712069))

(declare-fun m!1712071 () Bool)

(assert (=> b!1467481 m!1712071))

(assert (=> b!1467334 d!430582))

(declare-fun d!430584 () Bool)

(declare-fun c!241901 () Bool)

(assert (=> d!430584 (= c!241901 (is-Node!5210 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(declare-fun e!936559 () Bool)

(assert (=> d!430584 (= (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))) e!936559)))

(declare-fun b!1467488 () Bool)

(declare-fun inv!20446 (Conc!5210) Bool)

(assert (=> b!1467488 (= e!936559 (inv!20446 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(declare-fun b!1467489 () Bool)

(declare-fun e!936560 () Bool)

(assert (=> b!1467489 (= e!936559 e!936560)))

(declare-fun res!664083 () Bool)

(assert (=> b!1467489 (= res!664083 (not (is-Leaf!7764 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))))))

(assert (=> b!1467489 (=> res!664083 e!936560)))

(declare-fun b!1467490 () Bool)

(declare-fun inv!20447 (Conc!5210) Bool)

(assert (=> b!1467490 (= e!936560 (inv!20447 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(assert (= (and d!430584 c!241901) b!1467488))

(assert (= (and d!430584 (not c!241901)) b!1467489))

(assert (= (and b!1467489 (not res!664083)) b!1467490))

(declare-fun m!1712073 () Bool)

(assert (=> b!1467488 m!1712073))

(declare-fun m!1712075 () Bool)

(assert (=> b!1467490 m!1712075))

(assert (=> b!1467249 d!430584))

(declare-fun d!430586 () Bool)

(declare-fun charsToBigInt!1 (List!15350) Int)

(assert (=> d!430586 (= (inv!17 (value!86713 (h!20687 tokens1!47))) (= (charsToBigInt!1 (text!20006 (value!86713 (h!20687 tokens1!47)))) (value!86705 (value!86713 (h!20687 tokens1!47)))))))

(declare-fun bs!344884 () Bool)

(assert (= bs!344884 d!430586))

(declare-fun m!1712077 () Bool)

(assert (=> bs!344884 m!1712077))

(assert (=> b!1467275 d!430586))

(declare-fun bs!344885 () Bool)

(declare-fun d!430588 () Bool)

(assert (= bs!344885 (and d!430588 d!430552)))

(declare-fun lambda!63383 () Int)

(assert (=> bs!344885 (= (= (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (= lambda!63383 lambda!63382))))

(assert (=> d!430588 true))

(assert (=> d!430588 (< (dynLambda!6958 order!9191 (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (dynLambda!6959 order!9193 lambda!63383))))

(assert (=> d!430588 (= (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (Forall2!464 lambda!63383))))

(declare-fun bs!344886 () Bool)

(assert (= bs!344886 d!430588))

(declare-fun m!1712079 () Bool)

(assert (=> bs!344886 m!1712079))

(assert (=> b!1467292 d!430588))

(declare-fun d!430590 () Bool)

(declare-fun lt!510850 () Int)

(assert (=> d!430590 (>= lt!510850 0)))

(declare-fun e!936563 () Int)

(assert (=> d!430590 (= lt!510850 e!936563)))

(declare-fun c!241904 () Bool)

(assert (=> d!430590 (= c!241904 (is-Nil!15286 lt!510835))))

(assert (=> d!430590 (= (size!12475 lt!510835) lt!510850)))

(declare-fun b!1467495 () Bool)

(assert (=> b!1467495 (= e!936563 0)))

(declare-fun b!1467496 () Bool)

(assert (=> b!1467496 (= e!936563 (+ 1 (size!12475 (t!135077 lt!510835))))))

(assert (= (and d!430590 c!241904) b!1467495))

(assert (= (and d!430590 (not c!241904)) b!1467496))

(declare-fun m!1712081 () Bool)

(assert (=> b!1467496 m!1712081))

(assert (=> b!1467314 d!430590))

(declare-fun d!430592 () Bool)

(declare-fun lt!510851 () Int)

(assert (=> d!430592 (>= lt!510851 0)))

(declare-fun e!936564 () Int)

(assert (=> d!430592 (= lt!510851 e!936564)))

(declare-fun c!241905 () Bool)

(assert (=> d!430592 (= c!241905 (is-Nil!15286 tokens1!47))))

(assert (=> d!430592 (= (size!12475 tokens1!47) lt!510851)))

(declare-fun b!1467497 () Bool)

(assert (=> b!1467497 (= e!936564 0)))

(declare-fun b!1467498 () Bool)

(assert (=> b!1467498 (= e!936564 (+ 1 (size!12475 (t!135077 tokens1!47))))))

(assert (= (and d!430592 c!241905) b!1467497))

(assert (= (and d!430592 (not c!241905)) b!1467498))

(declare-fun m!1712083 () Bool)

(assert (=> b!1467498 m!1712083))

(assert (=> b!1467314 d!430592))

(declare-fun d!430594 () Bool)

(declare-fun lt!510852 () Int)

(assert (=> d!430594 (>= lt!510852 0)))

(declare-fun e!936565 () Int)

(assert (=> d!430594 (= lt!510852 e!936565)))

(declare-fun c!241906 () Bool)

(assert (=> d!430594 (= c!241906 (is-Nil!15286 tokens2!49))))

(assert (=> d!430594 (= (size!12475 tokens2!49) lt!510852)))

(declare-fun b!1467499 () Bool)

(assert (=> b!1467499 (= e!936565 0)))

(declare-fun b!1467500 () Bool)

(assert (=> b!1467500 (= e!936565 (+ 1 (size!12475 (t!135077 tokens2!49))))))

(assert (= (and d!430594 c!241906) b!1467499))

(assert (= (and d!430594 (not c!241906)) b!1467500))

(declare-fun m!1712085 () Bool)

(assert (=> b!1467500 m!1712085))

(assert (=> b!1467314 d!430594))

(declare-fun d!430596 () Bool)

(assert (=> d!430596 (= (list!6126 lt!510832) (list!6128 (c!241849 lt!510832)))))

(declare-fun bs!344887 () Bool)

(assert (= bs!344887 d!430596))

(declare-fun m!1712087 () Bool)

(assert (=> bs!344887 m!1712087))

(assert (=> d!430508 d!430596))

(declare-fun b!1467502 () Bool)

(declare-fun e!936567 () List!15352)

(assert (=> b!1467502 (= e!936567 (Cons!15286 (h!20687 (t!135077 tokens1!47)) (++!4152 (t!135077 (t!135077 tokens1!47)) tokens2!49)))))

(declare-fun b!1467503 () Bool)

(declare-fun res!664084 () Bool)

(declare-fun e!936566 () Bool)

(assert (=> b!1467503 (=> (not res!664084) (not e!936566))))

(declare-fun lt!510853 () List!15352)

(assert (=> b!1467503 (= res!664084 (= (size!12475 lt!510853) (+ (size!12475 (t!135077 tokens1!47)) (size!12475 tokens2!49))))))

(declare-fun b!1467504 () Bool)

(assert (=> b!1467504 (= e!936566 (or (not (= tokens2!49 Nil!15286)) (= lt!510853 (t!135077 tokens1!47))))))

(declare-fun d!430598 () Bool)

(assert (=> d!430598 e!936566))

(declare-fun res!664085 () Bool)

(assert (=> d!430598 (=> (not res!664085) (not e!936566))))

(assert (=> d!430598 (= res!664085 (= (content!2254 lt!510853) (set.union (content!2254 (t!135077 tokens1!47)) (content!2254 tokens2!49))))))

(assert (=> d!430598 (= lt!510853 e!936567)))

(declare-fun c!241907 () Bool)

(assert (=> d!430598 (= c!241907 (is-Nil!15286 (t!135077 tokens1!47)))))

(assert (=> d!430598 (= (++!4152 (t!135077 tokens1!47) tokens2!49) lt!510853)))

(declare-fun b!1467501 () Bool)

(assert (=> b!1467501 (= e!936567 tokens2!49)))

(assert (= (and d!430598 c!241907) b!1467501))

(assert (= (and d!430598 (not c!241907)) b!1467502))

(assert (= (and d!430598 res!664085) b!1467503))

(assert (= (and b!1467503 res!664084) b!1467504))

(declare-fun m!1712089 () Bool)

(assert (=> b!1467502 m!1712089))

(declare-fun m!1712091 () Bool)

(assert (=> b!1467503 m!1712091))

(assert (=> b!1467503 m!1712083))

(assert (=> b!1467503 m!1711915))

(declare-fun m!1712093 () Bool)

(assert (=> d!430598 m!1712093))

(assert (=> d!430598 m!1712035))

(assert (=> d!430598 m!1711921))

(assert (=> b!1467313 d!430598))

(declare-fun b!1467505 () Bool)

(declare-fun res!664086 () Bool)

(declare-fun e!936568 () Bool)

(assert (=> b!1467505 (=> res!664086 e!936568)))

(assert (=> b!1467505 (= res!664086 (not (is-IntegerValue!8384 (value!86713 (h!20687 (t!135077 tokens1!47))))))))

(declare-fun e!936569 () Bool)

(assert (=> b!1467505 (= e!936569 e!936568)))

(declare-fun b!1467506 () Bool)

(assert (=> b!1467506 (= e!936569 (inv!17 (value!86713 (h!20687 (t!135077 tokens1!47)))))))

(declare-fun b!1467507 () Bool)

(declare-fun e!936570 () Bool)

(assert (=> b!1467507 (= e!936570 (inv!16 (value!86713 (h!20687 (t!135077 tokens1!47)))))))

(declare-fun b!1467508 () Bool)

(assert (=> b!1467508 (= e!936568 (inv!15 (value!86713 (h!20687 (t!135077 tokens1!47)))))))

(declare-fun d!430600 () Bool)

(declare-fun c!241908 () Bool)

(assert (=> d!430600 (= c!241908 (is-IntegerValue!8382 (value!86713 (h!20687 (t!135077 tokens1!47)))))))

(assert (=> d!430600 (= (inv!21 (value!86713 (h!20687 (t!135077 tokens1!47)))) e!936570)))

(declare-fun b!1467509 () Bool)

(assert (=> b!1467509 (= e!936570 e!936569)))

(declare-fun c!241909 () Bool)

(assert (=> b!1467509 (= c!241909 (is-IntegerValue!8383 (value!86713 (h!20687 (t!135077 tokens1!47)))))))

(assert (= (and d!430600 c!241908) b!1467507))

(assert (= (and d!430600 (not c!241908)) b!1467509))

(assert (= (and b!1467509 c!241909) b!1467506))

(assert (= (and b!1467509 (not c!241909)) b!1467505))

(assert (= (and b!1467505 (not res!664086)) b!1467508))

(declare-fun m!1712095 () Bool)

(assert (=> b!1467506 m!1712095))

(declare-fun m!1712097 () Bool)

(assert (=> b!1467507 m!1712097))

(declare-fun m!1712099 () Bool)

(assert (=> b!1467508 m!1712099))

(assert (=> b!1467332 d!430600))

(declare-fun d!430602 () Bool)

(assert (=> d!430602 (= (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (= (mod (str.len (value!86712 (tag!2968 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) 2) 0))))

(assert (=> b!1467367 d!430602))

(declare-fun d!430604 () Bool)

(declare-fun res!664087 () Bool)

(declare-fun e!936571 () Bool)

(assert (=> d!430604 (=> (not res!664087) (not e!936571))))

(assert (=> d!430604 (= res!664087 (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))))))

(assert (=> d!430604 (= (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) e!936571)))

(declare-fun b!1467510 () Bool)

(assert (=> b!1467510 (= e!936571 (equivClasses!972 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))))))

(assert (= (and d!430604 res!664087) b!1467510))

(declare-fun m!1712101 () Bool)

(assert (=> d!430604 m!1712101))

(declare-fun m!1712103 () Bool)

(assert (=> b!1467510 m!1712103))

(assert (=> b!1467367 d!430604))

(declare-fun d!430606 () Bool)

(assert (=> d!430606 (= (inv!15 (value!86713 (h!20687 tokens2!49))) (= (charsToBigInt!0 (text!20007 (value!86713 (h!20687 tokens2!49))) 0) (value!86708 (value!86713 (h!20687 tokens2!49)))))))

(declare-fun bs!344888 () Bool)

(assert (= bs!344888 d!430606))

(declare-fun m!1712105 () Bool)

(assert (=> bs!344888 m!1712105))

(assert (=> b!1467272 d!430606))

(declare-fun d!430608 () Bool)

(declare-fun c!241910 () Bool)

(assert (=> d!430608 (= c!241910 (is-Node!5210 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(declare-fun e!936572 () Bool)

(assert (=> d!430608 (= (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))) e!936572)))

(declare-fun b!1467511 () Bool)

(assert (=> b!1467511 (= e!936572 (inv!20446 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(declare-fun b!1467512 () Bool)

(declare-fun e!936573 () Bool)

(assert (=> b!1467512 (= e!936572 e!936573)))

(declare-fun res!664088 () Bool)

(assert (=> b!1467512 (= res!664088 (not (is-Leaf!7764 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))))))

(assert (=> b!1467512 (=> res!664088 e!936573)))

(declare-fun b!1467513 () Bool)

(assert (=> b!1467513 (= e!936573 (inv!20447 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(assert (= (and d!430608 c!241910) b!1467511))

(assert (= (and d!430608 (not c!241910)) b!1467512))

(assert (= (and b!1467512 (not res!664088)) b!1467513))

(declare-fun m!1712107 () Bool)

(assert (=> b!1467511 m!1712107))

(declare-fun m!1712109 () Bool)

(assert (=> b!1467513 m!1712109))

(assert (=> b!1467318 d!430608))

(declare-fun b!1467514 () Bool)

(declare-fun res!664089 () Bool)

(declare-fun e!936574 () Bool)

(assert (=> b!1467514 (=> res!664089 e!936574)))

(assert (=> b!1467514 (= res!664089 (not (is-IntegerValue!8384 (value!86713 (h!20687 (t!135077 tokens2!49))))))))

(declare-fun e!936575 () Bool)

(assert (=> b!1467514 (= e!936575 e!936574)))

(declare-fun b!1467515 () Bool)

(assert (=> b!1467515 (= e!936575 (inv!17 (value!86713 (h!20687 (t!135077 tokens2!49)))))))

(declare-fun b!1467516 () Bool)

(declare-fun e!936576 () Bool)

(assert (=> b!1467516 (= e!936576 (inv!16 (value!86713 (h!20687 (t!135077 tokens2!49)))))))

(declare-fun b!1467517 () Bool)

(assert (=> b!1467517 (= e!936574 (inv!15 (value!86713 (h!20687 (t!135077 tokens2!49)))))))

(declare-fun d!430610 () Bool)

(declare-fun c!241911 () Bool)

(assert (=> d!430610 (= c!241911 (is-IntegerValue!8382 (value!86713 (h!20687 (t!135077 tokens2!49)))))))

(assert (=> d!430610 (= (inv!21 (value!86713 (h!20687 (t!135077 tokens2!49)))) e!936576)))

(declare-fun b!1467518 () Bool)

(assert (=> b!1467518 (= e!936576 e!936575)))

(declare-fun c!241912 () Bool)

(assert (=> b!1467518 (= c!241912 (is-IntegerValue!8383 (value!86713 (h!20687 (t!135077 tokens2!49)))))))

(assert (= (and d!430610 c!241911) b!1467516))

(assert (= (and d!430610 (not c!241911)) b!1467518))

(assert (= (and b!1467518 c!241912) b!1467515))

(assert (= (and b!1467518 (not c!241912)) b!1467514))

(assert (= (and b!1467514 (not res!664089)) b!1467517))

(declare-fun m!1712111 () Bool)

(assert (=> b!1467515 m!1712111))

(declare-fun m!1712113 () Bool)

(assert (=> b!1467516 m!1712113))

(declare-fun m!1712115 () Bool)

(assert (=> b!1467517 m!1712115))

(assert (=> b!1467366 d!430610))

(declare-fun d!430612 () Bool)

(assert (=> d!430612 (= (inv!16 (value!86713 (h!20687 tokens2!49))) (= (charsToInt!0 (text!20005 (value!86713 (h!20687 tokens2!49)))) (value!86704 (value!86713 (h!20687 tokens2!49)))))))

(declare-fun bs!344889 () Bool)

(assert (= bs!344889 d!430612))

(declare-fun m!1712117 () Bool)

(assert (=> bs!344889 m!1712117))

(assert (=> b!1467271 d!430612))

(declare-fun d!430614 () Bool)

(assert (=> d!430614 true))

(declare-fun lambda!63386 () Int)

(declare-fun order!9197 () Int)

(declare-fun order!9195 () Int)

(declare-fun dynLambda!6960 (Int Int) Int)

(declare-fun dynLambda!6961 (Int Int) Int)

(assert (=> d!430614 (< (dynLambda!6960 order!9195 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (dynLambda!6961 order!9197 lambda!63386))))

(assert (=> d!430614 true))

(assert (=> d!430614 (< (dynLambda!6958 order!9191 (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (dynLambda!6961 order!9197 lambda!63386))))

(declare-fun Forall!562 (Int) Bool)

(assert (=> d!430614 (= (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (Forall!562 lambda!63386))))

(declare-fun bs!344890 () Bool)

(assert (= bs!344890 d!430614))

(declare-fun m!1712119 () Bool)

(assert (=> bs!344890 m!1712119))

(assert (=> d!430522 d!430614))

(declare-fun d!430616 () Bool)

(declare-fun lt!510854 () Int)

(assert (=> d!430616 (>= lt!510854 0)))

(declare-fun e!936577 () Int)

(assert (=> d!430616 (= lt!510854 e!936577)))

(declare-fun c!241913 () Bool)

(assert (=> d!430616 (= c!241913 (is-Nil!15285 (originalCharacters!3566 (h!20687 tokens1!47))))))

(assert (=> d!430616 (= (size!12474 (originalCharacters!3566 (h!20687 tokens1!47))) lt!510854)))

(declare-fun b!1467523 () Bool)

(assert (=> b!1467523 (= e!936577 0)))

(declare-fun b!1467524 () Bool)

(assert (=> b!1467524 (= e!936577 (+ 1 (size!12474 (t!135076 (originalCharacters!3566 (h!20687 tokens1!47))))))))

(assert (= (and d!430616 c!241913) b!1467523))

(assert (= (and d!430616 (not c!241913)) b!1467524))

(declare-fun m!1712121 () Bool)

(assert (=> b!1467524 m!1712121))

(assert (=> b!1467244 d!430616))

(declare-fun d!430618 () Bool)

(declare-fun res!664090 () Bool)

(declare-fun e!936578 () Bool)

(assert (=> d!430618 (=> (not res!664090) (not e!936578))))

(assert (=> d!430618 (= res!664090 (not (isEmpty!9590 (originalCharacters!3566 (h!20687 (t!135077 tokens1!47))))))))

(assert (=> d!430618 (= (inv!20438 (h!20687 (t!135077 tokens1!47))) e!936578)))

(declare-fun b!1467525 () Bool)

(declare-fun res!664091 () Bool)

(assert (=> b!1467525 (=> (not res!664091) (not e!936578))))

(assert (=> b!1467525 (= res!664091 (= (originalCharacters!3566 (h!20687 (t!135077 tokens1!47))) (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (value!86713 (h!20687 (t!135077 tokens1!47)))))))))

(declare-fun b!1467526 () Bool)

(assert (=> b!1467526 (= e!936578 (= (size!12472 (h!20687 (t!135077 tokens1!47))) (size!12474 (originalCharacters!3566 (h!20687 (t!135077 tokens1!47))))))))

(assert (= (and d!430618 res!664090) b!1467525))

(assert (= (and b!1467525 res!664091) b!1467526))

(declare-fun b_lambda!45755 () Bool)

(assert (=> (not b_lambda!45755) (not b!1467525)))

(declare-fun t!135115 () Bool)

(declare-fun tb!82969 () Bool)

(assert (=> (and b!1467202 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135115) tb!82969))

(declare-fun b!1467527 () Bool)

(declare-fun e!936579 () Bool)

(declare-fun tp!413079 () Bool)

(assert (=> b!1467527 (= e!936579 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (value!86713 (h!20687 (t!135077 tokens1!47)))))) tp!413079))))

(declare-fun result!99674 () Bool)

(assert (=> tb!82969 (= result!99674 (and (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (value!86713 (h!20687 (t!135077 tokens1!47))))) e!936579))))

(assert (= tb!82969 b!1467527))

(declare-fun m!1712123 () Bool)

(assert (=> b!1467527 m!1712123))

(declare-fun m!1712125 () Bool)

(assert (=> tb!82969 m!1712125))

(assert (=> b!1467525 t!135115))

(declare-fun b_and!100313 () Bool)

(assert (= b_and!100281 (and (=> t!135115 result!99674) b_and!100313)))

(declare-fun t!135117 () Bool)

(declare-fun tb!82971 () Bool)

(assert (=> (and b!1467196 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135117) tb!82971))

(declare-fun result!99676 () Bool)

(assert (= result!99676 result!99674))

(assert (=> b!1467525 t!135117))

(declare-fun b_and!100315 () Bool)

(assert (= b_and!100283 (and (=> t!135117 result!99676) b_and!100315)))

(declare-fun t!135119 () Bool)

(declare-fun tb!82973 () Bool)

(assert (=> (and b!1467336 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135119) tb!82973))

(declare-fun result!99678 () Bool)

(assert (= result!99678 result!99674))

(assert (=> b!1467525 t!135119))

(declare-fun b_and!100317 () Bool)

(assert (= b_and!100287 (and (=> t!135119 result!99678) b_and!100317)))

(declare-fun tb!82975 () Bool)

(declare-fun t!135121 () Bool)

(assert (=> (and b!1467368 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135121) tb!82975))

(declare-fun result!99680 () Bool)

(assert (= result!99680 result!99674))

(assert (=> b!1467525 t!135121))

(declare-fun b_and!100319 () Bool)

(assert (= b_and!100291 (and (=> t!135121 result!99680) b_and!100319)))

(declare-fun m!1712127 () Bool)

(assert (=> d!430618 m!1712127))

(declare-fun m!1712129 () Bool)

(assert (=> b!1467525 m!1712129))

(assert (=> b!1467525 m!1712129))

(declare-fun m!1712131 () Bool)

(assert (=> b!1467525 m!1712131))

(declare-fun m!1712133 () Bool)

(assert (=> b!1467526 m!1712133))

(assert (=> b!1467331 d!430618))

(declare-fun d!430620 () Bool)

(declare-fun res!664092 () Bool)

(declare-fun e!936580 () Bool)

(assert (=> d!430620 (=> (not res!664092) (not e!936580))))

(assert (=> d!430620 (= res!664092 (not (isEmpty!9590 (originalCharacters!3566 (h!20687 (t!135077 tokens2!49))))))))

(assert (=> d!430620 (= (inv!20438 (h!20687 (t!135077 tokens2!49))) e!936580)))

(declare-fun b!1467528 () Bool)

(declare-fun res!664093 () Bool)

(assert (=> b!1467528 (=> (not res!664093) (not e!936580))))

(assert (=> b!1467528 (= res!664093 (= (originalCharacters!3566 (h!20687 (t!135077 tokens2!49))) (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (value!86713 (h!20687 (t!135077 tokens2!49)))))))))

(declare-fun b!1467529 () Bool)

(assert (=> b!1467529 (= e!936580 (= (size!12472 (h!20687 (t!135077 tokens2!49))) (size!12474 (originalCharacters!3566 (h!20687 (t!135077 tokens2!49))))))))

(assert (= (and d!430620 res!664092) b!1467528))

(assert (= (and b!1467528 res!664093) b!1467529))

(declare-fun b_lambda!45757 () Bool)

(assert (=> (not b_lambda!45757) (not b!1467528)))

(declare-fun t!135123 () Bool)

(declare-fun tb!82977 () Bool)

(assert (=> (and b!1467202 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135123) tb!82977))

(declare-fun b!1467530 () Bool)

(declare-fun e!936581 () Bool)

(declare-fun tp!413080 () Bool)

(assert (=> b!1467530 (= e!936581 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (value!86713 (h!20687 (t!135077 tokens2!49)))))) tp!413080))))

(declare-fun result!99682 () Bool)

(assert (=> tb!82977 (= result!99682 (and (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (value!86713 (h!20687 (t!135077 tokens2!49))))) e!936581))))

(assert (= tb!82977 b!1467530))

(declare-fun m!1712135 () Bool)

(assert (=> b!1467530 m!1712135))

(declare-fun m!1712137 () Bool)

(assert (=> tb!82977 m!1712137))

(assert (=> b!1467528 t!135123))

(declare-fun b_and!100321 () Bool)

(assert (= b_and!100313 (and (=> t!135123 result!99682) b_and!100321)))

(declare-fun tb!82979 () Bool)

(declare-fun t!135125 () Bool)

(assert (=> (and b!1467196 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135125) tb!82979))

(declare-fun result!99684 () Bool)

(assert (= result!99684 result!99682))

(assert (=> b!1467528 t!135125))

(declare-fun b_and!100323 () Bool)

(assert (= b_and!100315 (and (=> t!135125 result!99684) b_and!100323)))

(declare-fun tb!82981 () Bool)

(declare-fun t!135127 () Bool)

(assert (=> (and b!1467336 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135127) tb!82981))

(declare-fun result!99686 () Bool)

(assert (= result!99686 result!99682))

(assert (=> b!1467528 t!135127))

(declare-fun b_and!100325 () Bool)

(assert (= b_and!100317 (and (=> t!135127 result!99686) b_and!100325)))

(declare-fun t!135129 () Bool)

(declare-fun tb!82983 () Bool)

(assert (=> (and b!1467368 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135129) tb!82983))

(declare-fun result!99688 () Bool)

(assert (= result!99688 result!99682))

(assert (=> b!1467528 t!135129))

(declare-fun b_and!100327 () Bool)

(assert (= b_and!100319 (and (=> t!135129 result!99688) b_and!100327)))

(declare-fun m!1712139 () Bool)

(assert (=> d!430620 m!1712139))

(declare-fun m!1712141 () Bool)

(assert (=> b!1467528 m!1712141))

(assert (=> b!1467528 m!1712141))

(declare-fun m!1712143 () Bool)

(assert (=> b!1467528 m!1712143))

(declare-fun m!1712145 () Bool)

(assert (=> b!1467529 m!1712145))

(assert (=> b!1467365 d!430620))

(declare-fun d!430622 () Bool)

(assert (=> d!430622 (= (inv!17 (value!86713 (h!20687 tokens2!49))) (= (charsToBigInt!1 (text!20006 (value!86713 (h!20687 tokens2!49)))) (value!86705 (value!86713 (h!20687 tokens2!49)))))))

(declare-fun bs!344891 () Bool)

(assert (= bs!344891 d!430622))

(declare-fun m!1712147 () Bool)

(assert (=> bs!344891 m!1712147))

(assert (=> b!1467270 d!430622))

(declare-fun d!430624 () Bool)

(assert (=> d!430624 (= (isEmpty!9590 (originalCharacters!3566 (h!20687 tokens1!47))) (is-Nil!15285 (originalCharacters!3566 (h!20687 tokens1!47))))))

(assert (=> d!430498 d!430624))

(declare-fun d!430626 () Bool)

(assert (=> d!430626 (= (list!6126 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))) (list!6128 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))))))

(declare-fun bs!344892 () Bool)

(assert (= bs!344892 d!430626))

(declare-fun m!1712149 () Bool)

(assert (=> bs!344892 m!1712149))

(assert (=> b!1467243 d!430626))

(declare-fun bs!344893 () Bool)

(declare-fun d!430628 () Bool)

(assert (= bs!344893 (and d!430628 d!430614)))

(declare-fun lambda!63387 () Int)

(assert (=> bs!344893 (= (and (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) (= (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))))) (= lambda!63387 lambda!63386))))

(assert (=> d!430628 true))

(assert (=> d!430628 (< (dynLambda!6960 order!9195 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (dynLambda!6961 order!9197 lambda!63387))))

(assert (=> d!430628 true))

(assert (=> d!430628 (< (dynLambda!6958 order!9191 (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (dynLambda!6961 order!9197 lambda!63387))))

(assert (=> d!430628 (= (semiInverseModEq!1013 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toValue!4019 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) (Forall!562 lambda!63387))))

(declare-fun bs!344894 () Bool)

(assert (= bs!344894 d!430628))

(declare-fun m!1712151 () Bool)

(assert (=> bs!344894 m!1712151))

(assert (=> d!430518 d!430628))

(declare-fun d!430630 () Bool)

(assert (=> d!430630 (= (inv!20443 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))) (isBalanced!1562 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))))))

(declare-fun bs!344895 () Bool)

(assert (= bs!344895 d!430630))

(declare-fun m!1712153 () Bool)

(assert (=> bs!344895 m!1712153))

(assert (=> tb!82941 d!430630))

(declare-fun b!1467531 () Bool)

(declare-fun e!936582 () Bool)

(declare-fun tp!413081 () Bool)

(assert (=> b!1467531 (= e!936582 (and tp_is_empty!6893 tp!413081))))

(assert (=> b!1467345 (= tp!413004 e!936582)))

(assert (= (and b!1467345 (is-Cons!15285 (t!135076 (originalCharacters!3566 (h!20687 tokens2!49))))) b!1467531))

(declare-fun b!1467532 () Bool)

(declare-fun e!936583 () Bool)

(declare-fun tp!413082 () Bool)

(assert (=> b!1467532 (= e!936583 (and tp_is_empty!6893 tp!413082))))

(assert (=> b!1467332 (= tp!412998 e!936583)))

(assert (= (and b!1467332 (is-Cons!15285 (originalCharacters!3566 (h!20687 (t!135077 tokens1!47))))) b!1467532))

(declare-fun b!1467534 () Bool)

(declare-fun e!936584 () Bool)

(declare-fun tp!413083 () Bool)

(declare-fun tp!413084 () Bool)

(assert (=> b!1467534 (= e!936584 (and tp!413083 tp!413084))))

(declare-fun b!1467536 () Bool)

(declare-fun tp!413087 () Bool)

(declare-fun tp!413085 () Bool)

(assert (=> b!1467536 (= e!936584 (and tp!413087 tp!413085))))

(declare-fun b!1467535 () Bool)

(declare-fun tp!413086 () Bool)

(assert (=> b!1467535 (= e!936584 tp!413086)))

(assert (=> b!1467367 (= tp!413028 e!936584)))

(declare-fun b!1467533 () Bool)

(assert (=> b!1467533 (= e!936584 tp_is_empty!6893)))

(assert (= (and b!1467367 (is-ElementMatch!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) b!1467533))

(assert (= (and b!1467367 (is-Concat!6813 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) b!1467534))

(assert (= (and b!1467367 (is-Star!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) b!1467535))

(assert (= (and b!1467367 (is-Union!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) b!1467536))

(declare-fun tp!413095 () Bool)

(declare-fun tp!413096 () Bool)

(declare-fun e!936589 () Bool)

(declare-fun b!1467545 () Bool)

(assert (=> b!1467545 (= e!936589 (and (inv!20442 (left!12965 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))) tp!413095 (inv!20442 (right!13295 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))) tp!413096))))

(declare-fun b!1467547 () Bool)

(declare-fun e!936590 () Bool)

(declare-fun tp!413094 () Bool)

(assert (=> b!1467547 (= e!936590 tp!413094)))

(declare-fun b!1467546 () Bool)

(declare-fun inv!20448 (IArray!10425) Bool)

(assert (=> b!1467546 (= e!936589 (and (inv!20448 (xs!7965 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))) e!936590))))

(assert (=> b!1467318 (= tp!412986 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49))))) e!936589))))

(assert (= (and b!1467318 (is-Node!5210 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))) b!1467545))

(assert (= b!1467546 b!1467547))

(assert (= (and b!1467318 (is-Leaf!7764 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (value!86713 (h!20687 tokens2!49)))))) b!1467546))

(declare-fun m!1712155 () Bool)

(assert (=> b!1467545 m!1712155))

(declare-fun m!1712157 () Bool)

(assert (=> b!1467545 m!1712157))

(declare-fun m!1712159 () Bool)

(assert (=> b!1467546 m!1712159))

(assert (=> b!1467318 m!1711923))

(declare-fun b!1467548 () Bool)

(declare-fun e!936591 () Bool)

(declare-fun tp!413097 () Bool)

(assert (=> b!1467548 (= e!936591 (and tp_is_empty!6893 tp!413097))))

(assert (=> b!1467366 (= tp!413027 e!936591)))

(assert (= (and b!1467366 (is-Cons!15285 (originalCharacters!3566 (h!20687 (t!135077 tokens2!49))))) b!1467548))

(declare-fun b!1467552 () Bool)

(declare-fun b_free!36799 () Bool)

(declare-fun b_next!37503 () Bool)

(assert (=> b!1467552 (= b_free!36799 (not b_next!37503))))

(declare-fun tp!413098 () Bool)

(declare-fun b_and!100329 () Bool)

(assert (=> b!1467552 (= tp!413098 b_and!100329)))

(declare-fun b_free!36801 () Bool)

(declare-fun b_next!37505 () Bool)

(assert (=> b!1467552 (= b_free!36801 (not b_next!37505))))

(declare-fun t!135131 () Bool)

(declare-fun tb!82985 () Bool)

(assert (=> (and b!1467552 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135131) tb!82985))

(declare-fun result!99692 () Bool)

(assert (= result!99692 result!99632))

(assert (=> b!1467316 t!135131))

(declare-fun t!135133 () Bool)

(declare-fun tb!82987 () Bool)

(assert (=> (and b!1467552 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135133) tb!82987))

(declare-fun result!99694 () Bool)

(assert (= result!99694 result!99626))

(assert (=> d!430508 t!135133))

(declare-fun tb!82989 () Bool)

(declare-fun t!135135 () Bool)

(assert (=> (and b!1467552 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135135) tb!82989))

(declare-fun result!99696 () Bool)

(assert (= result!99696 result!99682))

(assert (=> b!1467528 t!135135))

(declare-fun t!135137 () Bool)

(declare-fun tb!82991 () Bool)

(assert (=> (and b!1467552 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135137) tb!82991))

(declare-fun result!99698 () Bool)

(assert (= result!99698 result!99674))

(assert (=> b!1467525 t!135137))

(assert (=> b!1467243 t!135133))

(declare-fun b_and!100331 () Bool)

(declare-fun tp!413102 () Bool)

(assert (=> b!1467552 (= tp!413102 (and (=> t!135131 result!99692) (=> t!135133 result!99694) (=> t!135135 result!99696) (=> t!135137 result!99698) b_and!100331))))

(declare-fun e!936597 () Bool)

(declare-fun b!1467549 () Bool)

(declare-fun e!936592 () Bool)

(declare-fun tp!413101 () Bool)

(assert (=> b!1467549 (= e!936592 (and (inv!20438 (h!20687 (t!135077 (t!135077 tokens1!47)))) e!936597 tp!413101))))

(assert (=> b!1467331 (= tp!413000 e!936592)))

(declare-fun e!936593 () Bool)

(assert (=> b!1467552 (= e!936593 (and tp!413098 tp!413102))))

(declare-fun e!936596 () Bool)

(declare-fun tp!413100 () Bool)

(declare-fun b!1467551 () Bool)

(assert (=> b!1467551 (= e!936596 (and tp!413100 (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) e!936593))))

(declare-fun b!1467550 () Bool)

(declare-fun tp!413099 () Bool)

(assert (=> b!1467550 (= e!936597 (and (inv!21 (value!86713 (h!20687 (t!135077 (t!135077 tokens1!47))))) e!936596 tp!413099))))

(assert (= b!1467551 b!1467552))

(assert (= b!1467550 b!1467551))

(assert (= b!1467549 b!1467550))

(assert (= (and b!1467331 (is-Cons!15286 (t!135077 (t!135077 tokens1!47)))) b!1467549))

(declare-fun m!1712161 () Bool)

(assert (=> b!1467549 m!1712161))

(declare-fun m!1712163 () Bool)

(assert (=> b!1467551 m!1712163))

(declare-fun m!1712165 () Bool)

(assert (=> b!1467551 m!1712165))

(declare-fun m!1712167 () Bool)

(assert (=> b!1467550 m!1712167))

(declare-fun b!1467556 () Bool)

(declare-fun b_free!36803 () Bool)

(declare-fun b_next!37507 () Bool)

(assert (=> b!1467556 (= b_free!36803 (not b_next!37507))))

(declare-fun tp!413103 () Bool)

(declare-fun b_and!100333 () Bool)

(assert (=> b!1467556 (= tp!413103 b_and!100333)))

(declare-fun b_free!36805 () Bool)

(declare-fun b_next!37509 () Bool)

(assert (=> b!1467556 (= b_free!36805 (not b_next!37509))))

(declare-fun t!135139 () Bool)

(declare-fun tb!82993 () Bool)

(assert (=> (and b!1467556 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49))))) t!135139) tb!82993))

(declare-fun result!99700 () Bool)

(assert (= result!99700 result!99632))

(assert (=> b!1467316 t!135139))

(declare-fun t!135141 () Bool)

(declare-fun tb!82995 () Bool)

(assert (=> (and b!1467556 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47))))) t!135141) tb!82995))

(declare-fun result!99702 () Bool)

(assert (= result!99702 result!99626))

(assert (=> d!430508 t!135141))

(declare-fun t!135143 () Bool)

(declare-fun tb!82997 () Bool)

(assert (=> (and b!1467556 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49)))))) t!135143) tb!82997))

(declare-fun result!99704 () Bool)

(assert (= result!99704 result!99682))

(assert (=> b!1467528 t!135143))

(declare-fun tb!82999 () Bool)

(declare-fun t!135145 () Bool)

(assert (=> (and b!1467556 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) t!135145) tb!82999))

(declare-fun result!99706 () Bool)

(assert (= result!99706 result!99674))

(assert (=> b!1467525 t!135145))

(assert (=> b!1467243 t!135141))

(declare-fun b_and!100335 () Bool)

(declare-fun tp!413107 () Bool)

(assert (=> b!1467556 (= tp!413107 (and (=> t!135145 result!99706) (=> t!135139 result!99700) (=> t!135141 result!99702) (=> t!135143 result!99704) b_and!100335))))

(declare-fun e!936603 () Bool)

(declare-fun b!1467553 () Bool)

(declare-fun e!936598 () Bool)

(declare-fun tp!413106 () Bool)

(assert (=> b!1467553 (= e!936598 (and (inv!20438 (h!20687 (t!135077 (t!135077 tokens2!49)))) e!936603 tp!413106))))

(assert (=> b!1467365 (= tp!413029 e!936598)))

(declare-fun e!936599 () Bool)

(assert (=> b!1467556 (= e!936599 (and tp!413103 tp!413107))))

(declare-fun tp!413105 () Bool)

(declare-fun e!936602 () Bool)

(declare-fun b!1467555 () Bool)

(assert (=> b!1467555 (= e!936602 (and tp!413105 (inv!20435 (tag!2968 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (inv!20439 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) e!936599))))

(declare-fun tp!413104 () Bool)

(declare-fun b!1467554 () Bool)

(assert (=> b!1467554 (= e!936603 (and (inv!21 (value!86713 (h!20687 (t!135077 (t!135077 tokens2!49))))) e!936602 tp!413104))))

(assert (= b!1467555 b!1467556))

(assert (= b!1467554 b!1467555))

(assert (= b!1467553 b!1467554))

(assert (= (and b!1467365 (is-Cons!15286 (t!135077 (t!135077 tokens2!49)))) b!1467553))

(declare-fun m!1712169 () Bool)

(assert (=> b!1467553 m!1712169))

(declare-fun m!1712171 () Bool)

(assert (=> b!1467555 m!1712171))

(declare-fun m!1712173 () Bool)

(assert (=> b!1467555 m!1712173))

(declare-fun m!1712175 () Bool)

(assert (=> b!1467554 m!1712175))

(declare-fun b!1467558 () Bool)

(declare-fun e!936604 () Bool)

(declare-fun tp!413108 () Bool)

(declare-fun tp!413109 () Bool)

(assert (=> b!1467558 (= e!936604 (and tp!413108 tp!413109))))

(declare-fun b!1467560 () Bool)

(declare-fun tp!413112 () Bool)

(declare-fun tp!413110 () Bool)

(assert (=> b!1467560 (= e!936604 (and tp!413112 tp!413110))))

(declare-fun b!1467559 () Bool)

(declare-fun tp!413111 () Bool)

(assert (=> b!1467559 (= e!936604 tp!413111)))

(assert (=> b!1467360 (= tp!413020 e!936604)))

(declare-fun b!1467557 () Bool)

(assert (=> b!1467557 (= e!936604 tp_is_empty!6893)))

(assert (= (and b!1467360 (is-ElementMatch!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467557))

(assert (= (and b!1467360 (is-Concat!6813 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467558))

(assert (= (and b!1467360 (is-Star!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467559))

(assert (= (and b!1467360 (is-Union!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467560))

(declare-fun b!1467562 () Bool)

(declare-fun e!936605 () Bool)

(declare-fun tp!413113 () Bool)

(declare-fun tp!413114 () Bool)

(assert (=> b!1467562 (= e!936605 (and tp!413113 tp!413114))))

(declare-fun b!1467564 () Bool)

(declare-fun tp!413117 () Bool)

(declare-fun tp!413115 () Bool)

(assert (=> b!1467564 (= e!936605 (and tp!413117 tp!413115))))

(declare-fun b!1467563 () Bool)

(declare-fun tp!413116 () Bool)

(assert (=> b!1467563 (= e!936605 tp!413116)))

(assert (=> b!1467360 (= tp!413018 e!936605)))

(declare-fun b!1467561 () Bool)

(assert (=> b!1467561 (= e!936605 tp_is_empty!6893)))

(assert (= (and b!1467360 (is-ElementMatch!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467561))

(assert (= (and b!1467360 (is-Concat!6813 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467562))

(assert (= (and b!1467360 (is-Star!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467563))

(assert (= (and b!1467360 (is-Union!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467564))

(declare-fun b!1467566 () Bool)

(declare-fun e!936606 () Bool)

(declare-fun tp!413118 () Bool)

(declare-fun tp!413119 () Bool)

(assert (=> b!1467566 (= e!936606 (and tp!413118 tp!413119))))

(declare-fun b!1467568 () Bool)

(declare-fun tp!413122 () Bool)

(declare-fun tp!413120 () Bool)

(assert (=> b!1467568 (= e!936606 (and tp!413122 tp!413120))))

(declare-fun b!1467567 () Bool)

(declare-fun tp!413121 () Bool)

(assert (=> b!1467567 (= e!936606 tp!413121)))

(assert (=> b!1467364 (= tp!413025 e!936606)))

(declare-fun b!1467565 () Bool)

(assert (=> b!1467565 (= e!936606 tp_is_empty!6893)))

(assert (= (and b!1467364 (is-ElementMatch!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467565))

(assert (= (and b!1467364 (is-Concat!6813 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467566))

(assert (= (and b!1467364 (is-Star!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467567))

(assert (= (and b!1467364 (is-Union!4018 (regOne!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467568))

(declare-fun b!1467570 () Bool)

(declare-fun e!936607 () Bool)

(declare-fun tp!413123 () Bool)

(declare-fun tp!413124 () Bool)

(assert (=> b!1467570 (= e!936607 (and tp!413123 tp!413124))))

(declare-fun b!1467572 () Bool)

(declare-fun tp!413127 () Bool)

(declare-fun tp!413125 () Bool)

(assert (=> b!1467572 (= e!936607 (and tp!413127 tp!413125))))

(declare-fun b!1467571 () Bool)

(declare-fun tp!413126 () Bool)

(assert (=> b!1467571 (= e!936607 tp!413126)))

(assert (=> b!1467364 (= tp!413023 e!936607)))

(declare-fun b!1467569 () Bool)

(assert (=> b!1467569 (= e!936607 tp_is_empty!6893)))

(assert (= (and b!1467364 (is-ElementMatch!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467569))

(assert (= (and b!1467364 (is-Concat!6813 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467570))

(assert (= (and b!1467364 (is-Star!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467571))

(assert (= (and b!1467364 (is-Union!4018 (regTwo!8549 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467572))

(declare-fun b!1467574 () Bool)

(declare-fun e!936608 () Bool)

(declare-fun tp!413128 () Bool)

(declare-fun tp!413129 () Bool)

(assert (=> b!1467574 (= e!936608 (and tp!413128 tp!413129))))

(declare-fun b!1467576 () Bool)

(declare-fun tp!413132 () Bool)

(declare-fun tp!413130 () Bool)

(assert (=> b!1467576 (= e!936608 (and tp!413132 tp!413130))))

(declare-fun b!1467575 () Bool)

(declare-fun tp!413131 () Bool)

(assert (=> b!1467575 (= e!936608 tp!413131)))

(assert (=> b!1467359 (= tp!413019 e!936608)))

(declare-fun b!1467573 () Bool)

(assert (=> b!1467573 (= e!936608 tp_is_empty!6893)))

(assert (= (and b!1467359 (is-ElementMatch!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467573))

(assert (= (and b!1467359 (is-Concat!6813 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467574))

(assert (= (and b!1467359 (is-Star!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467575))

(assert (= (and b!1467359 (is-Union!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467576))

(declare-fun b!1467578 () Bool)

(declare-fun e!936609 () Bool)

(declare-fun tp!413133 () Bool)

(declare-fun tp!413134 () Bool)

(assert (=> b!1467578 (= e!936609 (and tp!413133 tp!413134))))

(declare-fun b!1467580 () Bool)

(declare-fun tp!413137 () Bool)

(declare-fun tp!413135 () Bool)

(assert (=> b!1467580 (= e!936609 (and tp!413137 tp!413135))))

(declare-fun b!1467579 () Bool)

(declare-fun tp!413136 () Bool)

(assert (=> b!1467579 (= e!936609 tp!413136)))

(assert (=> b!1467363 (= tp!413024 e!936609)))

(declare-fun b!1467577 () Bool)

(assert (=> b!1467577 (= e!936609 tp_is_empty!6893)))

(assert (= (and b!1467363 (is-ElementMatch!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467577))

(assert (= (and b!1467363 (is-Concat!6813 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467578))

(assert (= (and b!1467363 (is-Star!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467579))

(assert (= (and b!1467363 (is-Union!4018 (reg!4347 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467580))

(declare-fun b!1467582 () Bool)

(declare-fun e!936610 () Bool)

(declare-fun tp!413138 () Bool)

(declare-fun tp!413139 () Bool)

(assert (=> b!1467582 (= e!936610 (and tp!413138 tp!413139))))

(declare-fun b!1467584 () Bool)

(declare-fun tp!413142 () Bool)

(declare-fun tp!413140 () Bool)

(assert (=> b!1467584 (= e!936610 (and tp!413142 tp!413140))))

(declare-fun b!1467583 () Bool)

(declare-fun tp!413141 () Bool)

(assert (=> b!1467583 (= e!936610 tp!413141)))

(assert (=> b!1467358 (= tp!413016 e!936610)))

(declare-fun b!1467581 () Bool)

(assert (=> b!1467581 (= e!936610 tp_is_empty!6893)))

(assert (= (and b!1467358 (is-ElementMatch!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467581))

(assert (= (and b!1467358 (is-Concat!6813 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467582))

(assert (= (and b!1467358 (is-Star!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467583))

(assert (= (and b!1467358 (is-Union!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467584))

(declare-fun b!1467586 () Bool)

(declare-fun e!936611 () Bool)

(declare-fun tp!413143 () Bool)

(declare-fun tp!413144 () Bool)

(assert (=> b!1467586 (= e!936611 (and tp!413143 tp!413144))))

(declare-fun b!1467588 () Bool)

(declare-fun tp!413147 () Bool)

(declare-fun tp!413145 () Bool)

(assert (=> b!1467588 (= e!936611 (and tp!413147 tp!413145))))

(declare-fun b!1467587 () Bool)

(declare-fun tp!413146 () Bool)

(assert (=> b!1467587 (= e!936611 tp!413146)))

(assert (=> b!1467358 (= tp!413017 e!936611)))

(declare-fun b!1467585 () Bool)

(assert (=> b!1467585 (= e!936611 tp_is_empty!6893)))

(assert (= (and b!1467358 (is-ElementMatch!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467585))

(assert (= (and b!1467358 (is-Concat!6813 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467586))

(assert (= (and b!1467358 (is-Star!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467587))

(assert (= (and b!1467358 (is-Union!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens1!47)))))) b!1467588))

(declare-fun b!1467590 () Bool)

(declare-fun e!936612 () Bool)

(declare-fun tp!413148 () Bool)

(declare-fun tp!413149 () Bool)

(assert (=> b!1467590 (= e!936612 (and tp!413148 tp!413149))))

(declare-fun b!1467592 () Bool)

(declare-fun tp!413152 () Bool)

(declare-fun tp!413150 () Bool)

(assert (=> b!1467592 (= e!936612 (and tp!413152 tp!413150))))

(declare-fun b!1467591 () Bool)

(declare-fun tp!413151 () Bool)

(assert (=> b!1467591 (= e!936612 tp!413151)))

(assert (=> b!1467362 (= tp!413021 e!936612)))

(declare-fun b!1467589 () Bool)

(assert (=> b!1467589 (= e!936612 tp_is_empty!6893)))

(assert (= (and b!1467362 (is-ElementMatch!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467589))

(assert (= (and b!1467362 (is-Concat!6813 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467590))

(assert (= (and b!1467362 (is-Star!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467591))

(assert (= (and b!1467362 (is-Union!4018 (regOne!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467592))

(declare-fun b!1467594 () Bool)

(declare-fun e!936613 () Bool)

(declare-fun tp!413153 () Bool)

(declare-fun tp!413154 () Bool)

(assert (=> b!1467594 (= e!936613 (and tp!413153 tp!413154))))

(declare-fun b!1467596 () Bool)

(declare-fun tp!413157 () Bool)

(declare-fun tp!413155 () Bool)

(assert (=> b!1467596 (= e!936613 (and tp!413157 tp!413155))))

(declare-fun b!1467595 () Bool)

(declare-fun tp!413156 () Bool)

(assert (=> b!1467595 (= e!936613 tp!413156)))

(assert (=> b!1467362 (= tp!413022 e!936613)))

(declare-fun b!1467593 () Bool)

(assert (=> b!1467593 (= e!936613 tp_is_empty!6893)))

(assert (= (and b!1467362 (is-ElementMatch!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467593))

(assert (= (and b!1467362 (is-Concat!6813 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467594))

(assert (= (and b!1467362 (is-Star!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467595))

(assert (= (and b!1467362 (is-Union!4018 (regTwo!8548 (regex!2704 (rule!4481 (h!20687 tokens2!49)))))) b!1467596))

(declare-fun b!1467597 () Bool)

(declare-fun e!936614 () Bool)

(declare-fun tp!413158 () Bool)

(assert (=> b!1467597 (= e!936614 (and tp_is_empty!6893 tp!413158))))

(assert (=> b!1467346 (= tp!413005 e!936614)))

(assert (= (and b!1467346 (is-Cons!15285 (t!135076 (originalCharacters!3566 (h!20687 tokens1!47))))) b!1467597))

(declare-fun b!1467599 () Bool)

(declare-fun e!936615 () Bool)

(declare-fun tp!413159 () Bool)

(declare-fun tp!413160 () Bool)

(assert (=> b!1467599 (= e!936615 (and tp!413159 tp!413160))))

(declare-fun b!1467601 () Bool)

(declare-fun tp!413163 () Bool)

(declare-fun tp!413161 () Bool)

(assert (=> b!1467601 (= e!936615 (and tp!413163 tp!413161))))

(declare-fun b!1467600 () Bool)

(declare-fun tp!413162 () Bool)

(assert (=> b!1467600 (= e!936615 tp!413162)))

(assert (=> b!1467334 (= tp!412999 e!936615)))

(declare-fun b!1467598 () Bool)

(assert (=> b!1467598 (= e!936615 tp_is_empty!6893)))

(assert (= (and b!1467334 (is-ElementMatch!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) b!1467598))

(assert (= (and b!1467334 (is-Concat!6813 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) b!1467599))

(assert (= (and b!1467334 (is-Star!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) b!1467600))

(assert (= (and b!1467334 (is-Union!4018 (regex!2704 (rule!4481 (h!20687 (t!135077 tokens1!47)))))) b!1467601))

(declare-fun tp!413165 () Bool)

(declare-fun e!936616 () Bool)

(declare-fun tp!413166 () Bool)

(declare-fun b!1467602 () Bool)

(assert (=> b!1467602 (= e!936616 (and (inv!20442 (left!12965 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))) tp!413165 (inv!20442 (right!13295 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))) tp!413166))))

(declare-fun b!1467604 () Bool)

(declare-fun e!936617 () Bool)

(declare-fun tp!413164 () Bool)

(assert (=> b!1467604 (= e!936617 tp!413164)))

(declare-fun b!1467603 () Bool)

(assert (=> b!1467603 (= e!936616 (and (inv!20448 (xs!7965 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))) e!936617))))

(assert (=> b!1467249 (= tp!412985 (and (inv!20442 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47))))) e!936616))))

(assert (= (and b!1467249 (is-Node!5210 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))) b!1467602))

(assert (= b!1467603 b!1467604))

(assert (= (and b!1467249 (is-Leaf!7764 (c!241849 (dynLambda!6956 (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (value!86713 (h!20687 tokens1!47)))))) b!1467603))

(declare-fun m!1712177 () Bool)

(assert (=> b!1467602 m!1712177))

(declare-fun m!1712179 () Bool)

(assert (=> b!1467602 m!1712179))

(declare-fun m!1712181 () Bool)

(assert (=> b!1467603 m!1712181))

(assert (=> b!1467249 m!1711849))

(declare-fun b_lambda!45759 () Bool)

(assert (= b_lambda!45757 (or (and b!1467336 b_free!36785 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))))) (and b!1467196 b_free!36773 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))))) (and b!1467552 b_free!36801 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))))) (and b!1467202 b_free!36769 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))))) (and b!1467368 b_free!36789) (and b!1467556 b_free!36805 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))))) b_lambda!45759)))

(declare-fun b_lambda!45761 () Bool)

(assert (= b_lambda!45755 (or (and b!1467202 b_free!36769 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens2!49)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))))) (and b!1467336 b_free!36785) (and b!1467196 b_free!36773 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 tokens1!47)))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))))) (and b!1467552 b_free!36801 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens1!47)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))))) (and b!1467556 b_free!36805 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 (t!135077 tokens2!49)))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))))) (and b!1467368 b_free!36789 (= (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens2!49))))) (toChars!3878 (transformation!2704 (rule!4481 (h!20687 (t!135077 tokens1!47))))))) b_lambda!45761)))

(push 1)

(assert (not d!430630))

(assert (not b!1467558))

(assert (not d!430586))

(assert (not b!1467534))

(assert b_and!100335)

(assert (not b!1467583))

(assert (not b_lambda!45739))

(assert (not b_next!37487))

(assert (not b!1467527))

(assert (not d!430618))

(assert (not b!1467550))

(assert (not d!430606))

(assert (not b!1467500))

(assert (not b!1467574))

(assert (not b!1467462))

(assert (not d!430598))

(assert (not b!1467548))

(assert (not b!1467580))

(assert (not tb!82969))

(assert (not b_next!37489))

(assert (not d!430620))

(assert (not b!1467517))

(assert (not tb!82977))

(assert (not b!1467568))

(assert (not b!1467601))

(assert (not b!1467529))

(assert (not b!1467476))

(assert (not b!1467516))

(assert (not d!430588))

(assert (not b!1467602))

(assert (not d!430614))

(assert (not d!430582))

(assert (not d!430570))

(assert (not b!1467588))

(assert (not b!1467562))

(assert (not b!1467582))

(assert (not b!1467596))

(assert (not b_next!37507))

(assert (not b!1467503))

(assert (not b!1467567))

(assert (not d!430560))

(assert (not b!1467560))

(assert (not b!1467479))

(assert (not b!1467603))

(assert (not b_next!37475))

(assert (not d!430596))

(assert b_and!100323)

(assert (not b!1467579))

(assert (not b_next!37491))

(assert b_and!100325)

(assert (not b!1467464))

(assert (not b!1467488))

(assert (not b!1467531))

(assert (not b!1467592))

(assert (not b!1467563))

(assert (not b!1467570))

(assert (not b!1467318))

(assert (not b!1467536))

(assert (not b!1467549))

(assert (not b!1467466))

(assert (not b!1467554))

(assert (not b!1467515))

(assert (not b!1467559))

(assert (not b!1467524))

(assert (not b_lambda!45761))

(assert (not b!1467595))

(assert (not b!1467530))

(assert (not b!1467528))

(assert (not b!1467535))

(assert (not b!1467546))

(assert (not b!1467597))

(assert (not b!1467490))

(assert (not b!1467481))

(assert (not d!430552))

(assert (not b!1467526))

(assert (not b!1467547))

(assert (not b!1467525))

(assert tp_is_empty!6893)

(assert (not b!1467545))

(assert (not b!1467572))

(assert (not b!1467507))

(assert (not b!1467551))

(assert (not b!1467498))

(assert (not b!1467587))

(assert (not d!430628))

(assert (not b!1467576))

(assert (not b!1467591))

(assert (not b_lambda!45759))

(assert (not b_next!37505))

(assert (not b!1467510))

(assert (not b_next!37473))

(assert (not b!1467575))

(assert (not b!1467446))

(assert (not b!1467604))

(assert (not b!1467445))

(assert b_and!100331)

(assert (not b!1467555))

(assert (not b_lambda!45741))

(assert b_and!100261)

(assert (not b!1467508))

(assert (not b!1467511))

(assert (not d!430576))

(assert (not b!1467578))

(assert b_and!100285)

(assert (not b!1467564))

(assert (not d!430604))

(assert (not d!430574))

(assert (not b!1467513))

(assert b_and!100333)

(assert (not d!430622))

(assert b_and!100257)

(assert (not b!1467553))

(assert (not b_next!37471))

(assert (not b!1467456))

(assert (not d!430572))

(assert (not b!1467566))

(assert (not b!1467600))

(assert (not b!1467599))

(assert (not b_lambda!45737))

(assert (not b_next!37493))

(assert (not d!430612))

(assert (not b!1467584))

(assert (not b!1467477))

(assert (not b!1467571))

(assert (not b!1467590))

(assert (not b!1467502))

(assert (not b!1467506))

(assert (not b!1467532))

(assert (not b_next!37477))

(assert (not b!1467594))

(assert (not d!430626))

(assert (not b!1467496))

(assert (not b!1467249))

(assert b_and!100289)

(assert (not b_next!37509))

(assert (not b!1467586))

(assert b_and!100321)

(assert (not b_next!37503))

(assert b_and!100327)

(assert b_and!100329)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37489))

(assert (not b_next!37507))

(assert b_and!100331)

(assert b_and!100333)

(assert (not b_next!37493))

(assert (not b_next!37477))

(assert b_and!100335)

(assert (not b_next!37487))

(assert (not b_next!37475))

(assert b_and!100323)

(assert (not b_next!37491))

(assert b_and!100325)

(assert (not b_next!37505))

(assert (not b_next!37473))

(assert b_and!100261)

(assert b_and!100285)

(assert b_and!100257)

(assert (not b_next!37471))

(assert b_and!100289)

(assert (not b_next!37509))

(assert b_and!100321)

(assert (not b_next!37503))

(assert b_and!100327)

(assert b_and!100329)

(check-sat)

(pop 1)

