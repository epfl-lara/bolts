; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249032 () Bool)

(assert start!249032)

(declare-datatypes ((List!29745 0))(
  ( (Nil!29645) (Cons!29645 (h!35065 (_ BitVec 16)) (t!211532 List!29745)) )
))
(declare-datatypes ((IArray!18493 0))(
  ( (IArray!18494 (innerList!9304 List!29745)) )
))
(declare-datatypes ((Conc!9244 0))(
  ( (Node!9244 (left!22549 Conc!9244) (right!22879 Conc!9244) (csize!18718 Int) (cheight!9455 Int)) (Leaf!14098 (xs!12228 IArray!18493) (csize!18719 Int)) (Empty!9244) )
))
(declare-datatypes ((BalanceConc!18102 0))(
  ( (BalanceConc!18103 (c!415082 Conc!9244)) )
))
(declare-fun v!4876 () BalanceConc!18102)

(declare-datatypes ((TokenValue!4708 0))(
  ( (FloatLiteralValue!9416 (text!33401 List!29745)) (TokenValueExt!4707 (__x!19227 Int)) (Broken!23540 (value!145089 List!29745)) (Object!4807) (End!4708) (Def!4708) (Underscore!4708) (Match!4708) (Else!4708) (Error!4708) (Case!4708) (If!4708) (Extends!4708) (Abstract!4708) (Class!4708) (Val!4708) (DelimiterValue!9416 (del!4768 List!29745)) (KeywordValue!4714 (value!145090 List!29745)) (CommentValue!9416 (value!145091 List!29745)) (WhitespaceValue!9416 (value!145092 List!29745)) (IndentationValue!4708 (value!145093 List!29745)) (String!32953) (Int32!4708) (Broken!23541 (value!145094 List!29745)) (Boolean!4709) (Unit!43493) (OperatorValue!4711 (op!4768 List!29745)) (IdentifierValue!9416 (value!145095 List!29745)) (IdentifierValue!9417 (value!145096 List!29745)) (WhitespaceValue!9417 (value!145097 List!29745)) (True!9416) (False!9416) (Broken!23542 (value!145098 List!29745)) (Broken!23543 (value!145099 List!29745)) (True!9417) (RightBrace!4708) (RightBracket!4708) (Colon!4708) (Null!4708) (Comma!4708) (LeftBracket!4708) (False!9417) (LeftBrace!4708) (ImaginaryLiteralValue!4708 (text!33402 List!29745)) (StringLiteralValue!14124 (value!145100 List!29745)) (EOFValue!4708 (value!145101 List!29745)) (IdentValue!4708 (value!145102 List!29745)) (DelimiterValue!9417 (value!145103 List!29745)) (DedentValue!4708 (value!145104 List!29745)) (NewLineValue!4708 (value!145105 List!29745)) (IntegerValue!14124 (value!145106 (_ BitVec 32)) (text!33403 List!29745)) (IntegerValue!14125 (value!145107 Int) (text!33404 List!29745)) (Times!4708) (Or!4708) (Equal!4708) (Minus!4708) (Broken!23544 (value!145108 List!29745)) (And!4708) (Div!4708) (LessEqual!4708) (Mod!4708) (Concat!12352) (Not!4708) (Plus!4708) (SpaceValue!4708 (value!145109 List!29745)) (IntegerValue!14126 (value!145110 Int) (text!33405 List!29745)) (StringLiteralValue!14125 (text!33406 List!29745)) (FloatLiteralValue!9417 (text!33407 List!29745)) (BytesLiteralValue!4708 (value!145111 List!29745)) (CommentValue!9417 (value!145112 List!29745)) (StringLiteralValue!14126 (value!145113 List!29745)) (ErrorTokenValue!4708 (msg!4769 List!29745)) )
))
(declare-fun inv!21 (TokenValue!4708) Bool)

(declare-fun efficientList!360 (BalanceConc!18102) List!29745)

(assert (=> start!249032 (not (inv!21 (IdentValue!4708 (efficientList!360 v!4876))))))

(declare-fun e!1626127 () Bool)

(declare-fun inv!39930 (BalanceConc!18102) Bool)

(assert (=> start!249032 (and (inv!39930 v!4876) e!1626127)))

(declare-fun b!2577033 () Bool)

(declare-fun tp!819039 () Bool)

(declare-fun inv!39931 (Conc!9244) Bool)

(assert (=> b!2577033 (= e!1626127 (and (inv!39931 (c!415082 v!4876)) tp!819039))))

(assert (= start!249032 b!2577033))

(declare-fun m!2911659 () Bool)

(assert (=> start!249032 m!2911659))

(declare-fun m!2911661 () Bool)

(assert (=> start!249032 m!2911661))

(declare-fun m!2911663 () Bool)

(assert (=> start!249032 m!2911663))

(declare-fun m!2911665 () Bool)

(assert (=> b!2577033 m!2911665))

(push 1)

(assert (not b!2577033))

(assert (not start!249032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728866 () Bool)

(declare-fun c!415088 () Bool)

(assert (=> d!728866 (= c!415088 (is-Node!9244 (c!415082 v!4876)))))

(declare-fun e!1626137 () Bool)

(assert (=> d!728866 (= (inv!39931 (c!415082 v!4876)) e!1626137)))

(declare-fun b!2577047 () Bool)

(declare-fun inv!39934 (Conc!9244) Bool)

(assert (=> b!2577047 (= e!1626137 (inv!39934 (c!415082 v!4876)))))

(declare-fun b!2577048 () Bool)

(declare-fun e!1626138 () Bool)

(assert (=> b!2577048 (= e!1626137 e!1626138)))

(declare-fun res!1083967 () Bool)

(assert (=> b!2577048 (= res!1083967 (not (is-Leaf!14098 (c!415082 v!4876))))))

(assert (=> b!2577048 (=> res!1083967 e!1626138)))

(declare-fun b!2577049 () Bool)

(declare-fun inv!39935 (Conc!9244) Bool)

(assert (=> b!2577049 (= e!1626138 (inv!39935 (c!415082 v!4876)))))

(assert (= (and d!728866 c!415088) b!2577047))

(assert (= (and d!728866 (not c!415088)) b!2577048))

(assert (= (and b!2577048 (not res!1083967)) b!2577049))

(declare-fun m!2911675 () Bool)

(assert (=> b!2577047 m!2911675))

(declare-fun m!2911677 () Bool)

(assert (=> b!2577049 m!2911677))

(assert (=> b!2577033 d!728866))

(declare-fun b!2577065 () Bool)

(declare-fun e!1626151 () Bool)

(declare-fun inv!16 (TokenValue!4708) Bool)

(assert (=> b!2577065 (= e!1626151 (inv!16 (IdentValue!4708 (efficientList!360 v!4876))))))

(declare-fun b!2577066 () Bool)

(declare-fun e!1626149 () Bool)

(assert (=> b!2577066 (= e!1626151 e!1626149)))

(declare-fun c!415095 () Bool)

(assert (=> b!2577066 (= c!415095 (is-IntegerValue!14125 (IdentValue!4708 (efficientList!360 v!4876))))))

(declare-fun b!2577067 () Bool)

(declare-fun inv!17 (TokenValue!4708) Bool)

(assert (=> b!2577067 (= e!1626149 (inv!17 (IdentValue!4708 (efficientList!360 v!4876))))))

(declare-fun b!2577068 () Bool)

(declare-fun e!1626150 () Bool)

(declare-fun inv!15 (TokenValue!4708) Bool)

(assert (=> b!2577068 (= e!1626150 (inv!15 (IdentValue!4708 (efficientList!360 v!4876))))))

(declare-fun b!2577069 () Bool)

(declare-fun res!1083973 () Bool)

(assert (=> b!2577069 (=> res!1083973 e!1626150)))

(assert (=> b!2577069 (= res!1083973 (not (is-IntegerValue!14126 (IdentValue!4708 (efficientList!360 v!4876)))))))

(assert (=> b!2577069 (= e!1626149 e!1626150)))

(declare-fun d!728870 () Bool)

(declare-fun c!415094 () Bool)

(assert (=> d!728870 (= c!415094 (is-IntegerValue!14124 (IdentValue!4708 (efficientList!360 v!4876))))))

(assert (=> d!728870 (= (inv!21 (IdentValue!4708 (efficientList!360 v!4876))) e!1626151)))

(assert (= (and d!728870 c!415094) b!2577065))

(assert (= (and d!728870 (not c!415094)) b!2577066))

(assert (= (and b!2577066 c!415095) b!2577067))

(assert (= (and b!2577066 (not c!415095)) b!2577069))

(assert (= (and b!2577069 (not res!1083973)) b!2577068))

(declare-fun m!2911683 () Bool)

(assert (=> b!2577065 m!2911683))

(declare-fun m!2911685 () Bool)

(assert (=> b!2577067 m!2911685))

(declare-fun m!2911687 () Bool)

(assert (=> b!2577068 m!2911687))

(assert (=> start!249032 d!728870))

(declare-fun d!728874 () Bool)

(declare-fun lt!906735 () List!29745)

(declare-fun list!11185 (BalanceConc!18102) List!29745)

(assert (=> d!728874 (= lt!906735 (list!11185 v!4876))))

(declare-fun efficientList!362 (Conc!9244 List!29745) List!29745)

(declare-fun efficientList$default$2!125 (Conc!9244) List!29745)

(assert (=> d!728874 (= lt!906735 (efficientList!362 (c!415082 v!4876) (efficientList$default$2!125 (c!415082 v!4876))))))

(assert (=> d!728874 (= (efficientList!360 v!4876) lt!906735)))

(declare-fun bs!470529 () Bool)

(assert (= bs!470529 d!728874))

(declare-fun m!2911695 () Bool)

(assert (=> bs!470529 m!2911695))

(declare-fun m!2911697 () Bool)

(assert (=> bs!470529 m!2911697))

(assert (=> bs!470529 m!2911697))

(declare-fun m!2911699 () Bool)

(assert (=> bs!470529 m!2911699))

(assert (=> start!249032 d!728874))

(declare-fun d!728878 () Bool)

(declare-fun isBalanced!2810 (Conc!9244) Bool)

(assert (=> d!728878 (= (inv!39930 v!4876) (isBalanced!2810 (c!415082 v!4876)))))

(declare-fun bs!470530 () Bool)

(assert (= bs!470530 d!728878))

(declare-fun m!2911701 () Bool)

(assert (=> bs!470530 m!2911701))

(assert (=> start!249032 d!728878))

(declare-fun tp!819048 () Bool)

(declare-fun e!1626165 () Bool)

(declare-fun tp!819047 () Bool)

(declare-fun b!2577091 () Bool)

(assert (=> b!2577091 (= e!1626165 (and (inv!39931 (left!22549 (c!415082 v!4876))) tp!819047 (inv!39931 (right!22879 (c!415082 v!4876))) tp!819048))))

(declare-fun b!2577092 () Bool)

(declare-fun inv!39938 (IArray!18493) Bool)

(assert (=> b!2577092 (= e!1626165 (inv!39938 (xs!12228 (c!415082 v!4876))))))

(assert (=> b!2577033 (= tp!819039 (and (inv!39931 (c!415082 v!4876)) e!1626165))))

(assert (= (and b!2577033 (is-Node!9244 (c!415082 v!4876))) b!2577091))

(assert (= (and b!2577033 (is-Leaf!14098 (c!415082 v!4876))) b!2577092))

(declare-fun m!2911709 () Bool)

(assert (=> b!2577091 m!2911709))

(declare-fun m!2911711 () Bool)

(assert (=> b!2577091 m!2911711))

(declare-fun m!2911713 () Bool)

(assert (=> b!2577092 m!2911713))

(assert (=> b!2577033 m!2911665))

(push 1)

(assert (not b!2577068))

(assert (not d!728878))

(assert (not b!2577065))

(assert (not b!2577049))

(assert (not b!2577047))

(assert (not b!2577033))

(assert (not b!2577067))

(assert (not b!2577091))

(assert (not b!2577092))

(assert (not d!728874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

