; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!523272 () Bool)

(assert start!523272)

(declare-fun b!4962497 () Bool)

(declare-fun b_free!132683 () Bool)

(declare-fun b_next!133473 () Bool)

(assert (=> b!4962497 (= b_free!132683 (not b_next!133473))))

(declare-fun tp!1392168 () Bool)

(declare-fun b_and!347551 () Bool)

(assert (=> b!4962497 (= tp!1392168 b_and!347551)))

(declare-fun b_free!132685 () Bool)

(declare-fun b_next!133475 () Bool)

(assert (=> b!4962497 (= b_free!132685 (not b_next!133475))))

(declare-fun tp!1392170 () Bool)

(declare-fun b_and!347553 () Bool)

(assert (=> b!4962497 (= tp!1392170 b_and!347553)))

(declare-fun b!4962491 () Bool)

(declare-fun res!2118151 () Bool)

(declare-fun e!3101941 () Bool)

(assert (=> b!4962491 (=> (not res!2118151) (not e!3101941))))

(declare-datatypes ((LexerInterface!7977 0))(
  ( (LexerInterfaceExt!7974 (__x!34683 Int)) (Lexer!7975) )
))
(declare-fun thiss!15247 () LexerInterface!7977)

(declare-datatypes ((List!57541 0))(
  ( (Nil!57417) (Cons!57417 (h!63865 (_ BitVec 16)) (t!368131 List!57541)) )
))
(declare-datatypes ((TokenValue!8695 0))(
  ( (FloatLiteralValue!17390 (text!61310 List!57541)) (TokenValueExt!8694 (__x!34684 Int)) (Broken!43475 (value!268390 List!57541)) (Object!8818) (End!8695) (Def!8695) (Underscore!8695) (Match!8695) (Else!8695) (Error!8695) (Case!8695) (If!8695) (Extends!8695) (Abstract!8695) (Class!8695) (Val!8695) (DelimiterValue!17390 (del!8755 List!57541)) (KeywordValue!8701 (value!268391 List!57541)) (CommentValue!17390 (value!268392 List!57541)) (WhitespaceValue!17390 (value!268393 List!57541)) (IndentationValue!8695 (value!268394 List!57541)) (String!65350) (Int32!8695) (Broken!43476 (value!268395 List!57541)) (Boolean!8696) (Unit!148311) (OperatorValue!8698 (op!8755 List!57541)) (IdentifierValue!17390 (value!268396 List!57541)) (IdentifierValue!17391 (value!268397 List!57541)) (WhitespaceValue!17391 (value!268398 List!57541)) (True!17390) (False!17390) (Broken!43477 (value!268399 List!57541)) (Broken!43478 (value!268400 List!57541)) (True!17391) (RightBrace!8695) (RightBracket!8695) (Colon!8695) (Null!8695) (Comma!8695) (LeftBracket!8695) (False!17391) (LeftBrace!8695) (ImaginaryLiteralValue!8695 (text!61311 List!57541)) (StringLiteralValue!26085 (value!268401 List!57541)) (EOFValue!8695 (value!268402 List!57541)) (IdentValue!8695 (value!268403 List!57541)) (DelimiterValue!17391 (value!268404 List!57541)) (DedentValue!8695 (value!268405 List!57541)) (NewLineValue!8695 (value!268406 List!57541)) (IntegerValue!26085 (value!268407 (_ BitVec 32)) (text!61312 List!57541)) (IntegerValue!26086 (value!268408 Int) (text!61313 List!57541)) (Times!8695) (Or!8695) (Equal!8695) (Minus!8695) (Broken!43479 (value!268409 List!57541)) (And!8695) (Div!8695) (LessEqual!8695) (Mod!8695) (Concat!22313) (Not!8695) (Plus!8695) (SpaceValue!8695 (value!268410 List!57541)) (IntegerValue!26087 (value!268411 Int) (text!61314 List!57541)) (StringLiteralValue!26086 (text!61315 List!57541)) (FloatLiteralValue!17391 (text!61316 List!57541)) (BytesLiteralValue!8695 (value!268412 List!57541)) (CommentValue!17391 (value!268413 List!57541)) (StringLiteralValue!26087 (value!268414 List!57541)) (ErrorTokenValue!8695 (msg!8756 List!57541)) )
))
(declare-datatypes ((C!27486 0))(
  ( (C!27487 (val!23109 Int)) )
))
(declare-datatypes ((List!57542 0))(
  ( (Nil!57418) (Cons!57418 (h!63866 C!27486) (t!368132 List!57542)) )
))
(declare-datatypes ((IArray!30335 0))(
  ( (IArray!30336 (innerList!15225 List!57542)) )
))
(declare-datatypes ((Regex!13618 0))(
  ( (ElementMatch!13618 (c!846685 C!27486)) (Concat!22314 (regOne!27748 Regex!13618) (regTwo!27748 Regex!13618)) (EmptyExpr!13618) (Star!13618 (reg!13947 Regex!13618)) (EmptyLang!13618) (Union!13618 (regOne!27749 Regex!13618) (regTwo!27749 Regex!13618)) )
))
(declare-datatypes ((String!65351 0))(
  ( (String!65352 (value!268415 String)) )
))
(declare-datatypes ((Conc!15137 0))(
  ( (Node!15137 (left!41872 Conc!15137) (right!42202 Conc!15137) (csize!30504 Int) (cheight!15348 Int)) (Leaf!25155 (xs!18463 IArray!30335) (csize!30505 Int)) (Empty!15137) )
))
(declare-datatypes ((BalanceConc!29704 0))(
  ( (BalanceConc!29705 (c!846686 Conc!15137)) )
))
(declare-datatypes ((TokenValueInjection!16698 0))(
  ( (TokenValueInjection!16699 (toValue!11336 Int) (toChars!11195 Int)) )
))
(declare-datatypes ((Rule!16570 0))(
  ( (Rule!16571 (regex!8385 Regex!13618) (tag!9249 String!65351) (isSeparator!8385 Bool) (transformation!8385 TokenValueInjection!16698)) )
))
(declare-datatypes ((List!57543 0))(
  ( (Nil!57419) (Cons!57419 (h!63867 Rule!16570) (t!368133 List!57543)) )
))
(declare-fun rulesArg!259 () List!57543)

(declare-fun rulesValidInductive!3288 (LexerInterface!7977 List!57543) Bool)

(assert (=> b!4962491 (= res!2118151 (rulesValidInductive!3288 thiss!15247 rulesArg!259))))

(declare-fun b!4962492 () Bool)

(declare-fun res!2118152 () Bool)

(assert (=> b!4962492 (=> (not res!2118152) (not e!3101941))))

(declare-fun isEmpty!30901 (List!57543) Bool)

(assert (=> b!4962492 (= res!2118152 (not (isEmpty!30901 rulesArg!259)))))

(declare-fun res!2118149 () Bool)

(assert (=> start!523272 (=> (not res!2118149) (not e!3101941))))

(assert (=> start!523272 (= res!2118149 (is-Lexer!7975 thiss!15247))))

(assert (=> start!523272 e!3101941))

(assert (=> start!523272 true))

(declare-fun e!3101942 () Bool)

(assert (=> start!523272 e!3101942))

(declare-fun input!1342 () BalanceConc!29704)

(declare-fun e!3101936 () Bool)

(declare-fun inv!75017 (BalanceConc!29704) Bool)

(assert (=> start!523272 (and (inv!75017 input!1342) e!3101936)))

(declare-fun totalInput!464 () BalanceConc!29704)

(declare-fun e!3101938 () Bool)

(assert (=> start!523272 (and (inv!75017 totalInput!464) e!3101938)))

(declare-fun b!4962493 () Bool)

(declare-fun res!2118150 () Bool)

(assert (=> b!4962493 (=> (not res!2118150) (not e!3101941))))

(declare-fun isSuffix!1184 (List!57542 List!57542) Bool)

(declare-fun list!18346 (BalanceConc!29704) List!57542)

(assert (=> b!4962493 (= res!2118150 (isSuffix!1184 (list!18346 input!1342) (list!18346 totalInput!464)))))

(declare-fun b!4962494 () Bool)

(declare-fun tp!1392165 () Bool)

(declare-fun inv!75018 (Conc!15137) Bool)

(assert (=> b!4962494 (= e!3101936 (and (inv!75018 (c!846686 input!1342)) tp!1392165))))

(declare-fun tp!1392169 () Bool)

(declare-fun e!3101937 () Bool)

(declare-fun e!3101939 () Bool)

(declare-fun b!4962495 () Bool)

(declare-fun inv!75014 (String!65351) Bool)

(declare-fun inv!75019 (TokenValueInjection!16698) Bool)

(assert (=> b!4962495 (= e!3101939 (and tp!1392169 (inv!75014 (tag!9249 (h!63867 rulesArg!259))) (inv!75019 (transformation!8385 (h!63867 rulesArg!259))) e!3101937))))

(declare-fun b!4962496 () Bool)

(declare-fun size!38043 (List!57543) Int)

(assert (=> b!4962496 (= e!3101941 (< (size!38043 rulesArg!259) 0))))

(assert (=> b!4962497 (= e!3101937 (and tp!1392168 tp!1392170))))

(declare-fun b!4962498 () Bool)

(declare-fun tp!1392167 () Bool)

(assert (=> b!4962498 (= e!3101938 (and (inv!75018 (c!846686 totalInput!464)) tp!1392167))))

(declare-fun b!4962499 () Bool)

(declare-fun tp!1392166 () Bool)

(assert (=> b!4962499 (= e!3101942 (and e!3101939 tp!1392166))))

(assert (= (and start!523272 res!2118149) b!4962491))

(assert (= (and b!4962491 res!2118151) b!4962492))

(assert (= (and b!4962492 res!2118152) b!4962493))

(assert (= (and b!4962493 res!2118150) b!4962496))

(assert (= b!4962495 b!4962497))

(assert (= b!4962499 b!4962495))

(assert (= (and start!523272 (is-Cons!57419 rulesArg!259)) b!4962499))

(assert (= start!523272 b!4962494))

(assert (= start!523272 b!4962498))

(declare-fun m!5986900 () Bool)

(assert (=> b!4962492 m!5986900))

(declare-fun m!5986902 () Bool)

(assert (=> b!4962491 m!5986902))

(declare-fun m!5986904 () Bool)

(assert (=> b!4962493 m!5986904))

(declare-fun m!5986906 () Bool)

(assert (=> b!4962493 m!5986906))

(assert (=> b!4962493 m!5986904))

(assert (=> b!4962493 m!5986906))

(declare-fun m!5986908 () Bool)

(assert (=> b!4962493 m!5986908))

(declare-fun m!5986910 () Bool)

(assert (=> b!4962498 m!5986910))

(declare-fun m!5986912 () Bool)

(assert (=> b!4962494 m!5986912))

(declare-fun m!5986914 () Bool)

(assert (=> start!523272 m!5986914))

(declare-fun m!5986916 () Bool)

(assert (=> start!523272 m!5986916))

(declare-fun m!5986918 () Bool)

(assert (=> b!4962496 m!5986918))

(declare-fun m!5986920 () Bool)

(assert (=> b!4962495 m!5986920))

(declare-fun m!5986922 () Bool)

(assert (=> b!4962495 m!5986922))

(push 1)

(assert (not b!4962491))

(assert b_and!347553)

(assert (not b!4962492))

(assert (not b!4962496))

(assert (not b_next!133473))

(assert (not b!4962498))

(assert (not start!523272))

(assert b_and!347551)

(assert (not b!4962499))

(assert (not b_next!133475))

(assert (not b!4962494))

(assert (not b!4962493))

(assert (not b!4962495))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347551)

(assert b_and!347553)

(assert (not b_next!133473))

(assert (not b_next!133475))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1596606 () Bool)

(declare-fun e!3101966 () Bool)

(assert (=> d!1596606 e!3101966))

(declare-fun res!2118167 () Bool)

(assert (=> d!1596606 (=> res!2118167 e!3101966)))

(declare-fun lt!2048865 () Bool)

(assert (=> d!1596606 (= res!2118167 (not lt!2048865))))

(declare-fun drop!2342 (List!57542 Int) List!57542)

(declare-fun size!38045 (List!57542) Int)

(assert (=> d!1596606 (= lt!2048865 (= (list!18346 input!1342) (drop!2342 (list!18346 totalInput!464) (- (size!38045 (list!18346 totalInput!464)) (size!38045 (list!18346 input!1342))))))))

(assert (=> d!1596606 (= (isSuffix!1184 (list!18346 input!1342) (list!18346 totalInput!464)) lt!2048865)))

(declare-fun b!4962529 () Bool)

(assert (=> b!4962529 (= e!3101966 (>= (size!38045 (list!18346 totalInput!464)) (size!38045 (list!18346 input!1342))))))

(assert (= (and d!1596606 (not res!2118167)) b!4962529))

(assert (=> d!1596606 m!5986906))

(declare-fun m!5986948 () Bool)

(assert (=> d!1596606 m!5986948))

(assert (=> d!1596606 m!5986904))

(declare-fun m!5986950 () Bool)

(assert (=> d!1596606 m!5986950))

(assert (=> d!1596606 m!5986906))

(declare-fun m!5986952 () Bool)

(assert (=> d!1596606 m!5986952))

(assert (=> b!4962529 m!5986906))

(assert (=> b!4962529 m!5986948))

(assert (=> b!4962529 m!5986904))

(assert (=> b!4962529 m!5986950))

(assert (=> b!4962493 d!1596606))

(declare-fun d!1596610 () Bool)

(declare-fun list!18348 (Conc!15137) List!57542)

(assert (=> d!1596610 (= (list!18346 input!1342) (list!18348 (c!846686 input!1342)))))

(declare-fun bs!1182781 () Bool)

(assert (= bs!1182781 d!1596610))

(declare-fun m!5986954 () Bool)

(assert (=> bs!1182781 m!5986954))

(assert (=> b!4962493 d!1596610))

(declare-fun d!1596612 () Bool)

(assert (=> d!1596612 (= (list!18346 totalInput!464) (list!18348 (c!846686 totalInput!464)))))

(declare-fun bs!1182782 () Bool)

(assert (= bs!1182782 d!1596612))

(declare-fun m!5986956 () Bool)

(assert (=> bs!1182782 m!5986956))

(assert (=> b!4962493 d!1596612))

(declare-fun d!1596614 () Bool)

(declare-fun c!846694 () Bool)

(assert (=> d!1596614 (= c!846694 (is-Node!15137 (c!846686 totalInput!464)))))

(declare-fun e!3101974 () Bool)

(assert (=> d!1596614 (= (inv!75018 (c!846686 totalInput!464)) e!3101974)))

(declare-fun b!4962542 () Bool)

(declare-fun inv!75023 (Conc!15137) Bool)

(assert (=> b!4962542 (= e!3101974 (inv!75023 (c!846686 totalInput!464)))))

(declare-fun b!4962543 () Bool)

(declare-fun e!3101975 () Bool)

(assert (=> b!4962543 (= e!3101974 e!3101975)))

(declare-fun res!2118170 () Bool)

(assert (=> b!4962543 (= res!2118170 (not (is-Leaf!25155 (c!846686 totalInput!464))))))

(assert (=> b!4962543 (=> res!2118170 e!3101975)))

(declare-fun b!4962544 () Bool)

(declare-fun inv!75024 (Conc!15137) Bool)

(assert (=> b!4962544 (= e!3101975 (inv!75024 (c!846686 totalInput!464)))))

(assert (= (and d!1596614 c!846694) b!4962542))

(assert (= (and d!1596614 (not c!846694)) b!4962543))

(assert (= (and b!4962543 (not res!2118170)) b!4962544))

(declare-fun m!5986960 () Bool)

(assert (=> b!4962542 m!5986960))

(declare-fun m!5986962 () Bool)

(assert (=> b!4962544 m!5986962))

(assert (=> b!4962498 d!1596614))

(declare-fun d!1596618 () Bool)

(assert (=> d!1596618 (= (isEmpty!30901 rulesArg!259) (is-Nil!57419 rulesArg!259))))

(assert (=> b!4962492 d!1596618))

(declare-fun d!1596620 () Bool)

(declare-fun c!846695 () Bool)

(assert (=> d!1596620 (= c!846695 (is-Node!15137 (c!846686 input!1342)))))

(declare-fun e!3101976 () Bool)

(assert (=> d!1596620 (= (inv!75018 (c!846686 input!1342)) e!3101976)))

(declare-fun b!4962545 () Bool)

(assert (=> b!4962545 (= e!3101976 (inv!75023 (c!846686 input!1342)))))

(declare-fun b!4962546 () Bool)

(declare-fun e!3101977 () Bool)

(assert (=> b!4962546 (= e!3101976 e!3101977)))

(declare-fun res!2118171 () Bool)

(assert (=> b!4962546 (= res!2118171 (not (is-Leaf!25155 (c!846686 input!1342))))))

(assert (=> b!4962546 (=> res!2118171 e!3101977)))

(declare-fun b!4962547 () Bool)

(assert (=> b!4962547 (= e!3101977 (inv!75024 (c!846686 input!1342)))))

(assert (= (and d!1596620 c!846695) b!4962545))

(assert (= (and d!1596620 (not c!846695)) b!4962546))

(assert (= (and b!4962546 (not res!2118171)) b!4962547))

(declare-fun m!5986964 () Bool)

(assert (=> b!4962545 m!5986964))

(declare-fun m!5986966 () Bool)

(assert (=> b!4962547 m!5986966))

(assert (=> b!4962494 d!1596620))

(declare-fun d!1596622 () Bool)

(declare-fun isBalanced!4195 (Conc!15137) Bool)

(assert (=> d!1596622 (= (inv!75017 input!1342) (isBalanced!4195 (c!846686 input!1342)))))

(declare-fun bs!1182783 () Bool)

(assert (= bs!1182783 d!1596622))

(declare-fun m!5986968 () Bool)

(assert (=> bs!1182783 m!5986968))

(assert (=> start!523272 d!1596622))

(declare-fun d!1596624 () Bool)

(assert (=> d!1596624 (= (inv!75017 totalInput!464) (isBalanced!4195 (c!846686 totalInput!464)))))

(declare-fun bs!1182784 () Bool)

(assert (= bs!1182784 d!1596624))

(declare-fun m!5986970 () Bool)

(assert (=> bs!1182784 m!5986970))

(assert (=> start!523272 d!1596624))

(declare-fun d!1596626 () Bool)

(assert (=> d!1596626 (= (inv!75014 (tag!9249 (h!63867 rulesArg!259))) (= (mod (str.len (value!268415 (tag!9249 (h!63867 rulesArg!259)))) 2) 0))))

(assert (=> b!4962495 d!1596626))

(declare-fun d!1596628 () Bool)

(declare-fun res!2118177 () Bool)

(declare-fun e!3101983 () Bool)

(assert (=> d!1596628 (=> (not res!2118177) (not e!3101983))))

(declare-fun semiInverseModEq!3693 (Int Int) Bool)

(assert (=> d!1596628 (= res!2118177 (semiInverseModEq!3693 (toChars!11195 (transformation!8385 (h!63867 rulesArg!259))) (toValue!11336 (transformation!8385 (h!63867 rulesArg!259)))))))

(assert (=> d!1596628 (= (inv!75019 (transformation!8385 (h!63867 rulesArg!259))) e!3101983)))

(declare-fun b!4962553 () Bool)

(declare-fun equivClasses!3541 (Int Int) Bool)

(assert (=> b!4962553 (= e!3101983 (equivClasses!3541 (toChars!11195 (transformation!8385 (h!63867 rulesArg!259))) (toValue!11336 (transformation!8385 (h!63867 rulesArg!259)))))))

(assert (= (and d!1596628 res!2118177) b!4962553))

(declare-fun m!5986972 () Bool)

(assert (=> d!1596628 m!5986972))

(declare-fun m!5986974 () Bool)

(assert (=> b!4962553 m!5986974))

(assert (=> b!4962495 d!1596628))

(declare-fun d!1596630 () Bool)

(assert (=> d!1596630 true))

(declare-fun lt!2048876 () Bool)

(declare-fun lambda!247243 () Int)

(declare-fun forall!13321 (List!57543 Int) Bool)

(assert (=> d!1596630 (= lt!2048876 (forall!13321 rulesArg!259 lambda!247243))))

(declare-fun e!3102003 () Bool)

(assert (=> d!1596630 (= lt!2048876 e!3102003)))

(declare-fun res!2118194 () Bool)

(assert (=> d!1596630 (=> res!2118194 e!3102003)))

(assert (=> d!1596630 (= res!2118194 (not (is-Cons!57419 rulesArg!259)))))

(assert (=> d!1596630 (= (rulesValidInductive!3288 thiss!15247 rulesArg!259) lt!2048876)))

(declare-fun b!4962577 () Bool)

(declare-fun e!3102004 () Bool)

(assert (=> b!4962577 (= e!3102003 e!3102004)))

(declare-fun res!2118193 () Bool)

(assert (=> b!4962577 (=> (not res!2118193) (not e!3102004))))

(declare-fun ruleValid!3795 (LexerInterface!7977 Rule!16570) Bool)

(assert (=> b!4962577 (= res!2118193 (ruleValid!3795 thiss!15247 (h!63867 rulesArg!259)))))

(declare-fun b!4962578 () Bool)

(assert (=> b!4962578 (= e!3102004 (rulesValidInductive!3288 thiss!15247 (t!368133 rulesArg!259)))))

(assert (= (and d!1596630 (not res!2118194)) b!4962577))

(assert (= (and b!4962577 res!2118193) b!4962578))

(declare-fun m!5987002 () Bool)

(assert (=> d!1596630 m!5987002))

(declare-fun m!5987004 () Bool)

(assert (=> b!4962577 m!5987004))

(declare-fun m!5987006 () Bool)

(assert (=> b!4962578 m!5987006))

(assert (=> b!4962491 d!1596630))

(declare-fun d!1596652 () Bool)

(declare-fun lt!2048879 () Int)

(assert (=> d!1596652 (>= lt!2048879 0)))

(declare-fun e!3102007 () Int)

(assert (=> d!1596652 (= lt!2048879 e!3102007)))

(declare-fun c!846702 () Bool)

(assert (=> d!1596652 (= c!846702 (is-Nil!57419 rulesArg!259))))

(assert (=> d!1596652 (= (size!38043 rulesArg!259) lt!2048879)))

(declare-fun b!4962585 () Bool)

(assert (=> b!4962585 (= e!3102007 0)))

(declare-fun b!4962586 () Bool)

(assert (=> b!4962586 (= e!3102007 (+ 1 (size!38043 (t!368133 rulesArg!259))))))

(assert (= (and d!1596652 c!846702) b!4962585))

(assert (= (and d!1596652 (not c!846702)) b!4962586))

(declare-fun m!5987008 () Bool)

(assert (=> b!4962586 m!5987008))

(assert (=> b!4962496 d!1596652))

(declare-fun tp!1392197 () Bool)

(declare-fun b!4962595 () Bool)

(declare-fun tp!1392196 () Bool)

(declare-fun e!3102012 () Bool)

(assert (=> b!4962595 (= e!3102012 (and (inv!75018 (left!41872 (c!846686 totalInput!464))) tp!1392196 (inv!75018 (right!42202 (c!846686 totalInput!464))) tp!1392197))))

(declare-fun b!4962597 () Bool)

(declare-fun e!3102013 () Bool)

(declare-fun tp!1392195 () Bool)

(assert (=> b!4962597 (= e!3102013 tp!1392195)))

(declare-fun b!4962596 () Bool)

(declare-fun inv!75025 (IArray!30335) Bool)

(assert (=> b!4962596 (= e!3102012 (and (inv!75025 (xs!18463 (c!846686 totalInput!464))) e!3102013))))

(assert (=> b!4962498 (= tp!1392167 (and (inv!75018 (c!846686 totalInput!464)) e!3102012))))

(assert (= (and b!4962498 (is-Node!15137 (c!846686 totalInput!464))) b!4962595))

(assert (= b!4962596 b!4962597))

(assert (= (and b!4962498 (is-Leaf!25155 (c!846686 totalInput!464))) b!4962596))

(declare-fun m!5987010 () Bool)

(assert (=> b!4962595 m!5987010))

(declare-fun m!5987012 () Bool)

(assert (=> b!4962595 m!5987012))

(declare-fun m!5987014 () Bool)

(assert (=> b!4962596 m!5987014))

(assert (=> b!4962498 m!5986910))

(declare-fun tp!1392200 () Bool)

(declare-fun tp!1392199 () Bool)

(declare-fun b!4962598 () Bool)

(declare-fun e!3102014 () Bool)

(assert (=> b!4962598 (= e!3102014 (and (inv!75018 (left!41872 (c!846686 input!1342))) tp!1392199 (inv!75018 (right!42202 (c!846686 input!1342))) tp!1392200))))

(declare-fun b!4962600 () Bool)

(declare-fun e!3102015 () Bool)

(declare-fun tp!1392198 () Bool)

(assert (=> b!4962600 (= e!3102015 tp!1392198)))

(declare-fun b!4962599 () Bool)

(assert (=> b!4962599 (= e!3102014 (and (inv!75025 (xs!18463 (c!846686 input!1342))) e!3102015))))

(assert (=> b!4962494 (= tp!1392165 (and (inv!75018 (c!846686 input!1342)) e!3102014))))

(assert (= (and b!4962494 (is-Node!15137 (c!846686 input!1342))) b!4962598))

(assert (= b!4962599 b!4962600))

(assert (= (and b!4962494 (is-Leaf!25155 (c!846686 input!1342))) b!4962599))

(declare-fun m!5987016 () Bool)

(assert (=> b!4962598 m!5987016))

(declare-fun m!5987018 () Bool)

(assert (=> b!4962598 m!5987018))

(declare-fun m!5987020 () Bool)

(assert (=> b!4962599 m!5987020))

(assert (=> b!4962494 m!5986912))

(declare-fun b!4962611 () Bool)

(declare-fun b_free!132691 () Bool)

(declare-fun b_next!133481 () Bool)

(assert (=> b!4962611 (= b_free!132691 (not b_next!133481))))

(declare-fun tp!1392209 () Bool)

(declare-fun b_and!347559 () Bool)

(assert (=> b!4962611 (= tp!1392209 b_and!347559)))

(declare-fun b_free!132693 () Bool)

(declare-fun b_next!133483 () Bool)

(assert (=> b!4962611 (= b_free!132693 (not b_next!133483))))

(declare-fun tp!1392212 () Bool)

(declare-fun b_and!347561 () Bool)

(assert (=> b!4962611 (= tp!1392212 b_and!347561)))

(declare-fun e!3102027 () Bool)

(assert (=> b!4962611 (= e!3102027 (and tp!1392209 tp!1392212))))

(declare-fun e!3102025 () Bool)

(declare-fun b!4962610 () Bool)

(declare-fun tp!1392210 () Bool)

(assert (=> b!4962610 (= e!3102025 (and tp!1392210 (inv!75014 (tag!9249 (h!63867 (t!368133 rulesArg!259)))) (inv!75019 (transformation!8385 (h!63867 (t!368133 rulesArg!259)))) e!3102027))))

(declare-fun b!4962609 () Bool)

(declare-fun e!3102026 () Bool)

(declare-fun tp!1392211 () Bool)

(assert (=> b!4962609 (= e!3102026 (and e!3102025 tp!1392211))))

(assert (=> b!4962499 (= tp!1392166 e!3102026)))

(assert (= b!4962610 b!4962611))

(assert (= b!4962609 b!4962610))

(assert (= (and b!4962499 (is-Cons!57419 (t!368133 rulesArg!259))) b!4962609))

(declare-fun m!5987022 () Bool)

(assert (=> b!4962610 m!5987022))

(declare-fun m!5987024 () Bool)

(assert (=> b!4962610 m!5987024))

(declare-fun b!4962624 () Bool)

(declare-fun e!3102030 () Bool)

(declare-fun tp!1392225 () Bool)

(assert (=> b!4962624 (= e!3102030 tp!1392225)))

(declare-fun b!4962623 () Bool)

(declare-fun tp!1392223 () Bool)

(declare-fun tp!1392224 () Bool)

(assert (=> b!4962623 (= e!3102030 (and tp!1392223 tp!1392224))))

(assert (=> b!4962495 (= tp!1392169 e!3102030)))

(declare-fun b!4962622 () Bool)

(declare-fun tp_is_empty!36317 () Bool)

(assert (=> b!4962622 (= e!3102030 tp_is_empty!36317)))

(declare-fun b!4962625 () Bool)

(declare-fun tp!1392227 () Bool)

(declare-fun tp!1392226 () Bool)

(assert (=> b!4962625 (= e!3102030 (and tp!1392227 tp!1392226))))

(assert (= (and b!4962495 (is-ElementMatch!13618 (regex!8385 (h!63867 rulesArg!259)))) b!4962622))

(assert (= (and b!4962495 (is-Concat!22314 (regex!8385 (h!63867 rulesArg!259)))) b!4962623))

(assert (= (and b!4962495 (is-Star!13618 (regex!8385 (h!63867 rulesArg!259)))) b!4962624))

(assert (= (and b!4962495 (is-Union!13618 (regex!8385 (h!63867 rulesArg!259)))) b!4962625))

(push 1)

(assert b_and!347561)

(assert (not b!4962547))

(assert (not b!4962625))

(assert (not b!4962610))

(assert (not b!4962595))

(assert (not b!4962586))

(assert b_and!347553)

(assert (not d!1596606))

(assert (not b!4962578))

(assert (not b!4962599))

(assert (not d!1596622))

(assert (not b!4962544))

(assert (not b!4962545))

(assert b_and!347559)

(assert (not b!4962498))

(assert (not b!4962600))

(assert (not b!4962597))

(assert (not b!4962529))

(assert (not d!1596630))

(assert b_and!347551)

(assert (not d!1596612))

(assert (not b!4962596))

(assert (not d!1596624))

(assert (not b_next!133481))

(assert (not b_next!133475))

(assert (not d!1596610))

(assert (not b!4962494))

(assert (not b!4962623))

(assert tp_is_empty!36317)

(assert (not b!4962609))

(assert (not b_next!133483))

(assert (not b!4962624))

(assert (not b!4962598))

(assert (not b_next!133473))

(assert (not b!4962542))

(assert (not b!4962577))

(assert (not d!1596628))

(assert (not b!4962553))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347561)

(assert b_and!347559)

(assert b_and!347551)

(assert (not b_next!133481))

(assert b_and!347553)

(assert (not b_next!133475))

(assert (not b_next!133483))

(assert (not b_next!133473))

(check-sat)

(pop 1)

