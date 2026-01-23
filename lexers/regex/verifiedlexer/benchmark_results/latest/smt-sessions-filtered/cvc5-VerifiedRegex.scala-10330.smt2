; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536764 () Bool)

(assert start!536764)

(declare-fun b!5093078 () Bool)

(declare-fun b_free!133239 () Bool)

(declare-fun b_next!134029 () Bool)

(assert (=> b!5093078 (= b_free!133239 (not b_next!134029))))

(declare-fun tp!1419721 () Bool)

(declare-fun b_and!350111 () Bool)

(assert (=> b!5093078 (= tp!1419721 b_and!350111)))

(declare-fun b_free!133241 () Bool)

(declare-fun b_next!134031 () Bool)

(assert (=> b!5093078 (= b_free!133241 (not b_next!134031))))

(declare-fun tp!1419720 () Bool)

(declare-fun b_and!350113 () Bool)

(assert (=> b!5093078 (= tp!1419720 b_and!350113)))

(declare-fun b!5093083 () Bool)

(declare-fun e!3176185 () Bool)

(assert (=> b!5093083 (= e!3176185 true)))

(declare-fun b!5093075 () Bool)

(assert (=> b!5093075 e!3176185))

(assert (= b!5093075 b!5093083))

(declare-fun order!26735 () Int)

(declare-fun lambda!249813 () Int)

(declare-datatypes ((List!58662 0))(
  ( (Nil!58538) (Cons!58538 (h!64986 (_ BitVec 16)) (t!371611 List!58662)) )
))
(declare-datatypes ((TokenValue!8795 0))(
  ( (FloatLiteralValue!17590 (text!62010 List!58662)) (TokenValueExt!8794 (__x!34881 Int)) (Broken!43975 (value!272001 List!58662)) (Object!8918) (End!8795) (Def!8795) (Underscore!8795) (Match!8795) (Else!8795) (Error!8795) (Case!8795) (If!8795) (Extends!8795) (Abstract!8795) (Class!8795) (Val!8795) (DelimiterValue!17590 (del!8855 List!58662)) (KeywordValue!8801 (value!272002 List!58662)) (CommentValue!17590 (value!272003 List!58662)) (WhitespaceValue!17590 (value!272004 List!58662)) (IndentationValue!8795 (value!272005 List!58662)) (String!66898) (Int32!8795) (Broken!43976 (value!272006 List!58662)) (Boolean!8796) (Unit!149579) (OperatorValue!8798 (op!8855 List!58662)) (IdentifierValue!17590 (value!272007 List!58662)) (IdentifierValue!17591 (value!272008 List!58662)) (WhitespaceValue!17591 (value!272009 List!58662)) (True!17590) (False!17590) (Broken!43977 (value!272010 List!58662)) (Broken!43978 (value!272011 List!58662)) (True!17591) (RightBrace!8795) (RightBracket!8795) (Colon!8795) (Null!8795) (Comma!8795) (LeftBracket!8795) (False!17591) (LeftBrace!8795) (ImaginaryLiteralValue!8795 (text!62011 List!58662)) (StringLiteralValue!26385 (value!272012 List!58662)) (EOFValue!8795 (value!272013 List!58662)) (IdentValue!8795 (value!272014 List!58662)) (DelimiterValue!17591 (value!272015 List!58662)) (DedentValue!8795 (value!272016 List!58662)) (NewLineValue!8795 (value!272017 List!58662)) (IntegerValue!26385 (value!272018 (_ BitVec 32)) (text!62012 List!58662)) (IntegerValue!26386 (value!272019 Int) (text!62013 List!58662)) (Times!8795) (Or!8795) (Equal!8795) (Minus!8795) (Broken!43979 (value!272020 List!58662)) (And!8795) (Div!8795) (LessEqual!8795) (Mod!8795) (Concat!22753) (Not!8795) (Plus!8795) (SpaceValue!8795 (value!272021 List!58662)) (IntegerValue!26387 (value!272022 Int) (text!62014 List!58662)) (StringLiteralValue!26386 (text!62015 List!58662)) (FloatLiteralValue!17591 (text!62016 List!58662)) (BytesLiteralValue!8795 (value!272023 List!58662)) (CommentValue!17591 (value!272024 List!58662)) (StringLiteralValue!26387 (value!272025 List!58662)) (ErrorTokenValue!8795 (msg!8856 List!58662)) )
))
(declare-datatypes ((C!28170 0))(
  ( (C!28171 (val!23735 Int)) )
))
(declare-datatypes ((List!58663 0))(
  ( (Nil!58539) (Cons!58539 (h!64987 C!28170) (t!371612 List!58663)) )
))
(declare-datatypes ((IArray!31363 0))(
  ( (IArray!31364 (innerList!15739 List!58663)) )
))
(declare-datatypes ((Conc!15651 0))(
  ( (Node!15651 (left!42955 Conc!15651) (right!43285 Conc!15651) (csize!31532 Int) (cheight!15862 Int)) (Leaf!25982 (xs!19033 IArray!31363) (csize!31533 Int)) (Empty!15651) )
))
(declare-datatypes ((BalanceConc!30420 0))(
  ( (BalanceConc!30421 (c!875371 Conc!15651)) )
))
(declare-datatypes ((TokenValueInjection!16898 0))(
  ( (TokenValueInjection!16899 (toValue!11504 Int) (toChars!11363 Int)) )
))
(declare-fun thiss!6968 () TokenValueInjection!16898)

(declare-fun order!26737 () Int)

(declare-fun dynLambda!23552 (Int Int) Int)

(declare-fun dynLambda!23553 (Int Int) Int)

(assert (=> b!5093083 (< (dynLambda!23552 order!26735 (toValue!11504 thiss!6968)) (dynLambda!23553 order!26737 lambda!249813))))

(declare-fun order!26739 () Int)

(declare-fun dynLambda!23554 (Int Int) Int)

(assert (=> b!5093083 (< (dynLambda!23554 order!26739 (toChars!11363 thiss!6968)) (dynLambda!23553 order!26737 lambda!249813))))

(declare-fun b!5093076 () Bool)

(declare-fun e!3176182 () Bool)

(declare-fun c1!1 () BalanceConc!30420)

(declare-fun tp!1419722 () Bool)

(declare-fun inv!78028 (Conc!15651) Bool)

(assert (=> b!5093076 (= e!3176182 (and (inv!78028 (c!875371 c1!1)) tp!1419722))))

(declare-fun c2!2 () BalanceConc!30420)

(declare-fun e!3176180 () Bool)

(declare-fun dynLambda!23555 (Int BalanceConc!30420) TokenValue!8795)

(assert (=> b!5093075 (= e!3176180 (not (= (dynLambda!23555 (toValue!11504 thiss!6968) c1!1) (dynLambda!23555 (toValue!11504 thiss!6968) c2!2))))))

(declare-datatypes ((Unit!149580 0))(
  ( (Unit!149581) )
))
(declare-fun lt!2092695 () Unit!149580)

(declare-fun Forall2of!500 (Int BalanceConc!30420 BalanceConc!30420) Unit!149580)

(assert (=> b!5093075 (= lt!2092695 (Forall2of!500 lambda!249813 c1!1 c2!2))))

(declare-fun res!2167435 () Bool)

(assert (=> start!536764 (=> (not res!2167435) (not e!3176180))))

(declare-fun list!19131 (BalanceConc!30420) List!58663)

(assert (=> start!536764 (= res!2167435 (= (list!19131 c1!1) (list!19131 c2!2)))))

(assert (=> start!536764 e!3176180))

(declare-fun inv!78029 (BalanceConc!30420) Bool)

(assert (=> start!536764 (and (inv!78029 c1!1) e!3176182)))

(declare-fun e!3176179 () Bool)

(assert (=> start!536764 (and (inv!78029 c2!2) e!3176179)))

(declare-fun e!3176181 () Bool)

(declare-fun inv!78030 (TokenValueInjection!16898) Bool)

(assert (=> start!536764 (and (inv!78030 thiss!6968) e!3176181)))

(declare-fun b!5093077 () Bool)

(declare-fun tp!1419723 () Bool)

(assert (=> b!5093077 (= e!3176179 (and (inv!78028 (c!875371 c2!2)) tp!1419723))))

(assert (=> b!5093078 (= e!3176181 (and tp!1419721 tp!1419720))))

(assert (= (and start!536764 res!2167435) b!5093075))

(assert (= start!536764 b!5093076))

(assert (= start!536764 b!5093077))

(assert (= start!536764 b!5093078))

(declare-fun b_lambda!198721 () Bool)

(assert (=> (not b_lambda!198721) (not b!5093075)))

(declare-fun t!371608 () Bool)

(declare-fun tb!261819 () Bool)

(assert (=> (and b!5093078 (= (toValue!11504 thiss!6968) (toValue!11504 thiss!6968)) t!371608) tb!261819))

(declare-fun result!328694 () Bool)

(declare-fun inv!21 (TokenValue!8795) Bool)

(assert (=> tb!261819 (= result!328694 (inv!21 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(declare-fun m!6151322 () Bool)

(assert (=> tb!261819 m!6151322))

(assert (=> b!5093075 t!371608))

(declare-fun b_and!350115 () Bool)

(assert (= b_and!350111 (and (=> t!371608 result!328694) b_and!350115)))

(declare-fun b_lambda!198723 () Bool)

(assert (=> (not b_lambda!198723) (not b!5093075)))

(declare-fun t!371610 () Bool)

(declare-fun tb!261821 () Bool)

(assert (=> (and b!5093078 (= (toValue!11504 thiss!6968) (toValue!11504 thiss!6968)) t!371610) tb!261821))

(declare-fun result!328698 () Bool)

(assert (=> tb!261821 (= result!328698 (inv!21 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(declare-fun m!6151324 () Bool)

(assert (=> tb!261821 m!6151324))

(assert (=> b!5093075 t!371610))

(declare-fun b_and!350117 () Bool)

(assert (= b_and!350115 (and (=> t!371610 result!328698) b_and!350117)))

(declare-fun m!6151326 () Bool)

(assert (=> b!5093076 m!6151326))

(declare-fun m!6151328 () Bool)

(assert (=> b!5093075 m!6151328))

(declare-fun m!6151330 () Bool)

(assert (=> b!5093075 m!6151330))

(declare-fun m!6151332 () Bool)

(assert (=> b!5093075 m!6151332))

(declare-fun m!6151334 () Bool)

(assert (=> start!536764 m!6151334))

(declare-fun m!6151336 () Bool)

(assert (=> start!536764 m!6151336))

(declare-fun m!6151338 () Bool)

(assert (=> start!536764 m!6151338))

(declare-fun m!6151340 () Bool)

(assert (=> start!536764 m!6151340))

(declare-fun m!6151342 () Bool)

(assert (=> start!536764 m!6151342))

(declare-fun m!6151344 () Bool)

(assert (=> b!5093077 m!6151344))

(push 1)

(assert (not tb!261821))

(assert (not b!5093077))

(assert (not b_next!134031))

(assert b_and!350117)

(assert (not b!5093076))

(assert b_and!350113)

(assert (not b_lambda!198723))

(assert (not start!536764))

(assert (not b_next!134029))

(assert (not tb!261819))

(assert (not b_lambda!198721))

(assert (not b!5093075))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350113)

(assert b_and!350117)

(assert (not b_next!134029))

(assert (not b_next!134031))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!198729 () Bool)

(assert (= b_lambda!198721 (or (and b!5093078 b_free!133239) b_lambda!198729)))

(declare-fun b_lambda!198731 () Bool)

(assert (= b_lambda!198723 (or (and b!5093078 b_free!133239) b_lambda!198731)))

(push 1)

(assert (not tb!261821))

(assert (not b_lambda!198729))

(assert (not b_lambda!198731))

(assert (not start!536764))

(assert (not b!5093075))

(assert (not b!5093077))

(assert (not b_next!134031))

(assert b_and!350117)

(assert (not b!5093076))

(assert b_and!350113)

(assert (not b_next!134029))

(assert (not tb!261819))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350113)

(assert b_and!350117)

(assert (not b_next!134029))

(assert (not b_next!134031))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648607 () Bool)

(declare-fun list!19133 (Conc!15651) List!58663)

(assert (=> d!1648607 (= (list!19131 c1!1) (list!19133 (c!875371 c1!1)))))

(declare-fun bs!1191244 () Bool)

(assert (= bs!1191244 d!1648607))

(declare-fun m!6151370 () Bool)

(assert (=> bs!1191244 m!6151370))

(assert (=> start!536764 d!1648607))

(declare-fun d!1648609 () Bool)

(declare-fun isBalanced!4462 (Conc!15651) Bool)

(assert (=> d!1648609 (= (inv!78029 c1!1) (isBalanced!4462 (c!875371 c1!1)))))

(declare-fun bs!1191245 () Bool)

(assert (= bs!1191245 d!1648609))

(declare-fun m!6151372 () Bool)

(assert (=> bs!1191245 m!6151372))

(assert (=> start!536764 d!1648609))

(declare-fun d!1648611 () Bool)

(declare-fun res!2167446 () Bool)

(declare-fun e!3176213 () Bool)

(assert (=> d!1648611 (=> (not res!2167446) (not e!3176213))))

(declare-fun semiInverseModEq!3778 (Int Int) Bool)

(assert (=> d!1648611 (= res!2167446 (semiInverseModEq!3778 (toChars!11363 thiss!6968) (toValue!11504 thiss!6968)))))

(assert (=> d!1648611 (= (inv!78030 thiss!6968) e!3176213)))

(declare-fun b!5093109 () Bool)

(declare-fun equivClasses!3594 (Int Int) Bool)

(assert (=> b!5093109 (= e!3176213 (equivClasses!3594 (toChars!11363 thiss!6968) (toValue!11504 thiss!6968)))))

(assert (= (and d!1648611 res!2167446) b!5093109))

(declare-fun m!6151374 () Bool)

(assert (=> d!1648611 m!6151374))

(declare-fun m!6151376 () Bool)

(assert (=> b!5093109 m!6151376))

(assert (=> start!536764 d!1648611))

(declare-fun d!1648613 () Bool)

(assert (=> d!1648613 (= (inv!78029 c2!2) (isBalanced!4462 (c!875371 c2!2)))))

(declare-fun bs!1191246 () Bool)

(assert (= bs!1191246 d!1648613))

(declare-fun m!6151378 () Bool)

(assert (=> bs!1191246 m!6151378))

(assert (=> start!536764 d!1648613))

(declare-fun d!1648615 () Bool)

(assert (=> d!1648615 (= (list!19131 c2!2) (list!19133 (c!875371 c2!2)))))

(declare-fun bs!1191247 () Bool)

(assert (= bs!1191247 d!1648615))

(declare-fun m!6151380 () Bool)

(assert (=> bs!1191247 m!6151380))

(assert (=> start!536764 d!1648615))

(declare-fun d!1648617 () Bool)

(declare-fun c!875375 () Bool)

(assert (=> d!1648617 (= c!875375 (is-Node!15651 (c!875371 c2!2)))))

(declare-fun e!3176218 () Bool)

(assert (=> d!1648617 (= (inv!78028 (c!875371 c2!2)) e!3176218)))

(declare-fun b!5093116 () Bool)

(declare-fun inv!78034 (Conc!15651) Bool)

(assert (=> b!5093116 (= e!3176218 (inv!78034 (c!875371 c2!2)))))

(declare-fun b!5093117 () Bool)

(declare-fun e!3176219 () Bool)

(assert (=> b!5093117 (= e!3176218 e!3176219)))

(declare-fun res!2167449 () Bool)

(assert (=> b!5093117 (= res!2167449 (not (is-Leaf!25982 (c!875371 c2!2))))))

(assert (=> b!5093117 (=> res!2167449 e!3176219)))

(declare-fun b!5093118 () Bool)

(declare-fun inv!78035 (Conc!15651) Bool)

(assert (=> b!5093118 (= e!3176219 (inv!78035 (c!875371 c2!2)))))

(assert (= (and d!1648617 c!875375) b!5093116))

(assert (= (and d!1648617 (not c!875375)) b!5093117))

(assert (= (and b!5093117 (not res!2167449)) b!5093118))

(declare-fun m!6151382 () Bool)

(assert (=> b!5093116 m!6151382))

(declare-fun m!6151384 () Bool)

(assert (=> b!5093118 m!6151384))

(assert (=> b!5093077 d!1648617))

(declare-fun d!1648619 () Bool)

(declare-fun c!875376 () Bool)

(assert (=> d!1648619 (= c!875376 (is-Node!15651 (c!875371 c1!1)))))

(declare-fun e!3176220 () Bool)

(assert (=> d!1648619 (= (inv!78028 (c!875371 c1!1)) e!3176220)))

(declare-fun b!5093119 () Bool)

(assert (=> b!5093119 (= e!3176220 (inv!78034 (c!875371 c1!1)))))

(declare-fun b!5093120 () Bool)

(declare-fun e!3176221 () Bool)

(assert (=> b!5093120 (= e!3176220 e!3176221)))

(declare-fun res!2167450 () Bool)

(assert (=> b!5093120 (= res!2167450 (not (is-Leaf!25982 (c!875371 c1!1))))))

(assert (=> b!5093120 (=> res!2167450 e!3176221)))

(declare-fun b!5093121 () Bool)

(assert (=> b!5093121 (= e!3176221 (inv!78035 (c!875371 c1!1)))))

(assert (= (and d!1648619 c!875376) b!5093119))

(assert (= (and d!1648619 (not c!875376)) b!5093120))

(assert (= (and b!5093120 (not res!2167450)) b!5093121))

(declare-fun m!6151386 () Bool)

(assert (=> b!5093119 m!6151386))

(declare-fun m!6151388 () Bool)

(assert (=> b!5093121 m!6151388))

(assert (=> b!5093076 d!1648619))

(declare-fun b!5093132 () Bool)

(declare-fun e!3176230 () Bool)

(declare-fun e!3176229 () Bool)

(assert (=> b!5093132 (= e!3176230 e!3176229)))

(declare-fun c!875382 () Bool)

(assert (=> b!5093132 (= c!875382 (is-IntegerValue!26386 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(declare-fun b!5093133 () Bool)

(declare-fun inv!17 (TokenValue!8795) Bool)

(assert (=> b!5093133 (= e!3176229 (inv!17 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(declare-fun d!1648621 () Bool)

(declare-fun c!875381 () Bool)

(assert (=> d!1648621 (= c!875381 (is-IntegerValue!26385 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(assert (=> d!1648621 (= (inv!21 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)) e!3176230)))

(declare-fun b!5093134 () Bool)

(declare-fun res!2167453 () Bool)

(declare-fun e!3176228 () Bool)

(assert (=> b!5093134 (=> res!2167453 e!3176228)))

(assert (=> b!5093134 (= res!2167453 (not (is-IntegerValue!26387 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1))))))

(assert (=> b!5093134 (= e!3176229 e!3176228)))

(declare-fun b!5093135 () Bool)

(declare-fun inv!16 (TokenValue!8795) Bool)

(assert (=> b!5093135 (= e!3176230 (inv!16 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(declare-fun b!5093136 () Bool)

(declare-fun inv!15 (TokenValue!8795) Bool)

(assert (=> b!5093136 (= e!3176228 (inv!15 (dynLambda!23555 (toValue!11504 thiss!6968) c1!1)))))

(assert (= (and d!1648621 c!875381) b!5093135))

(assert (= (and d!1648621 (not c!875381)) b!5093132))

(assert (= (and b!5093132 c!875382) b!5093133))

(assert (= (and b!5093132 (not c!875382)) b!5093134))

(assert (= (and b!5093134 (not res!2167453)) b!5093136))

(declare-fun m!6151390 () Bool)

(assert (=> b!5093133 m!6151390))

(declare-fun m!6151392 () Bool)

(assert (=> b!5093135 m!6151392))

(declare-fun m!6151394 () Bool)

(assert (=> b!5093136 m!6151394))

(assert (=> tb!261819 d!1648621))

(declare-fun b!5093137 () Bool)

(declare-fun e!3176233 () Bool)

(declare-fun e!3176232 () Bool)

(assert (=> b!5093137 (= e!3176233 e!3176232)))

(declare-fun c!875384 () Bool)

(assert (=> b!5093137 (= c!875384 (is-IntegerValue!26386 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(declare-fun b!5093138 () Bool)

(assert (=> b!5093138 (= e!3176232 (inv!17 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(declare-fun d!1648623 () Bool)

(declare-fun c!875383 () Bool)

(assert (=> d!1648623 (= c!875383 (is-IntegerValue!26385 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(assert (=> d!1648623 (= (inv!21 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)) e!3176233)))

(declare-fun b!5093139 () Bool)

(declare-fun res!2167454 () Bool)

(declare-fun e!3176231 () Bool)

(assert (=> b!5093139 (=> res!2167454 e!3176231)))

(assert (=> b!5093139 (= res!2167454 (not (is-IntegerValue!26387 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2))))))

(assert (=> b!5093139 (= e!3176232 e!3176231)))

(declare-fun b!5093140 () Bool)

(assert (=> b!5093140 (= e!3176233 (inv!16 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(declare-fun b!5093141 () Bool)

(assert (=> b!5093141 (= e!3176231 (inv!15 (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(assert (= (and d!1648623 c!875383) b!5093140))

(assert (= (and d!1648623 (not c!875383)) b!5093137))

(assert (= (and b!5093137 c!875384) b!5093138))

(assert (= (and b!5093137 (not c!875384)) b!5093139))

(assert (= (and b!5093139 (not res!2167454)) b!5093141))

(declare-fun m!6151396 () Bool)

(assert (=> b!5093138 m!6151396))

(declare-fun m!6151398 () Bool)

(assert (=> b!5093140 m!6151398))

(declare-fun m!6151400 () Bool)

(assert (=> b!5093141 m!6151400))

(assert (=> tb!261821 d!1648623))

(declare-fun d!1648625 () Bool)

(declare-fun dynLambda!23560 (Int BalanceConc!30420 BalanceConc!30420) Bool)

(assert (=> d!1648625 (dynLambda!23560 lambda!249813 c1!1 c2!2)))

(declare-fun lt!2092701 () Unit!149580)

(declare-fun choose!37296 (Int BalanceConc!30420 BalanceConc!30420) Unit!149580)

(assert (=> d!1648625 (= lt!2092701 (choose!37296 lambda!249813 c1!1 c2!2))))

(declare-fun Forall2!1304 (Int) Bool)

(assert (=> d!1648625 (Forall2!1304 lambda!249813)))

(assert (=> d!1648625 (= (Forall2of!500 lambda!249813 c1!1 c2!2) lt!2092701)))

(declare-fun b_lambda!198733 () Bool)

(assert (=> (not b_lambda!198733) (not d!1648625)))

(declare-fun bs!1191248 () Bool)

(assert (= bs!1191248 d!1648625))

(declare-fun m!6151402 () Bool)

(assert (=> bs!1191248 m!6151402))

(declare-fun m!6151404 () Bool)

(assert (=> bs!1191248 m!6151404))

(declare-fun m!6151406 () Bool)

(assert (=> bs!1191248 m!6151406))

(assert (=> b!5093075 d!1648625))

(declare-fun b!5093151 () Bool)

(declare-fun tp!1419742 () Bool)

(declare-fun e!3176239 () Bool)

(declare-fun tp!1419743 () Bool)

(assert (=> b!5093151 (= e!3176239 (and (inv!78028 (left!42955 (c!875371 c2!2))) tp!1419742 (inv!78028 (right!43285 (c!875371 c2!2))) tp!1419743))))

(declare-fun b!5093153 () Bool)

(declare-fun e!3176238 () Bool)

(declare-fun tp!1419744 () Bool)

(assert (=> b!5093153 (= e!3176238 tp!1419744)))

(declare-fun b!5093152 () Bool)

(declare-fun inv!78036 (IArray!31363) Bool)

(assert (=> b!5093152 (= e!3176239 (and (inv!78036 (xs!19033 (c!875371 c2!2))) e!3176238))))

(assert (=> b!5093077 (= tp!1419723 (and (inv!78028 (c!875371 c2!2)) e!3176239))))

(assert (= (and b!5093077 (is-Node!15651 (c!875371 c2!2))) b!5093151))

(assert (= b!5093152 b!5093153))

(assert (= (and b!5093077 (is-Leaf!25982 (c!875371 c2!2))) b!5093152))

(declare-fun m!6151408 () Bool)

(assert (=> b!5093151 m!6151408))

(declare-fun m!6151410 () Bool)

(assert (=> b!5093151 m!6151410))

(declare-fun m!6151412 () Bool)

(assert (=> b!5093152 m!6151412))

(assert (=> b!5093077 m!6151344))

(declare-fun tp!1419745 () Bool)

(declare-fun b!5093154 () Bool)

(declare-fun tp!1419746 () Bool)

(declare-fun e!3176241 () Bool)

(assert (=> b!5093154 (= e!3176241 (and (inv!78028 (left!42955 (c!875371 c1!1))) tp!1419745 (inv!78028 (right!43285 (c!875371 c1!1))) tp!1419746))))

(declare-fun b!5093156 () Bool)

(declare-fun e!3176240 () Bool)

(declare-fun tp!1419747 () Bool)

(assert (=> b!5093156 (= e!3176240 tp!1419747)))

(declare-fun b!5093155 () Bool)

(assert (=> b!5093155 (= e!3176241 (and (inv!78036 (xs!19033 (c!875371 c1!1))) e!3176240))))

(assert (=> b!5093076 (= tp!1419722 (and (inv!78028 (c!875371 c1!1)) e!3176241))))

(assert (= (and b!5093076 (is-Node!15651 (c!875371 c1!1))) b!5093154))

(assert (= b!5093155 b!5093156))

(assert (= (and b!5093076 (is-Leaf!25982 (c!875371 c1!1))) b!5093155))

(declare-fun m!6151414 () Bool)

(assert (=> b!5093154 m!6151414))

(declare-fun m!6151416 () Bool)

(assert (=> b!5093154 m!6151416))

(declare-fun m!6151418 () Bool)

(assert (=> b!5093155 m!6151418))

(assert (=> b!5093076 m!6151326))

(declare-fun b_lambda!198739 () Bool)

(assert (= b_lambda!198733 (or b!5093075 b_lambda!198739)))

(declare-fun bs!1191249 () Bool)

(declare-fun d!1648627 () Bool)

(assert (= bs!1191249 (and d!1648627 b!5093075)))

(declare-fun res!2167455 () Bool)

(declare-fun e!3176242 () Bool)

(assert (=> bs!1191249 (=> res!2167455 e!3176242)))

(assert (=> bs!1191249 (= res!2167455 (not (= (list!19131 c1!1) (list!19131 c2!2))))))

(assert (=> bs!1191249 (= (dynLambda!23560 lambda!249813 c1!1 c2!2) e!3176242)))

(declare-fun b!5093157 () Bool)

(assert (=> b!5093157 (= e!3176242 (= (dynLambda!23555 (toValue!11504 thiss!6968) c1!1) (dynLambda!23555 (toValue!11504 thiss!6968) c2!2)))))

(assert (= (and bs!1191249 (not res!2167455)) b!5093157))

(declare-fun b_lambda!198741 () Bool)

(assert (=> (not b_lambda!198741) (not b!5093157)))

(assert (=> b!5093157 t!371608))

(declare-fun b_and!350127 () Bool)

(assert (= b_and!350117 (and (=> t!371608 result!328694) b_and!350127)))

(declare-fun b_lambda!198743 () Bool)

(assert (=> (not b_lambda!198743) (not b!5093157)))

(assert (=> b!5093157 t!371610))

(declare-fun b_and!350129 () Bool)

(assert (= b_and!350127 (and (=> t!371610 result!328698) b_and!350129)))

(assert (=> bs!1191249 m!6151334))

(assert (=> bs!1191249 m!6151342))

(assert (=> b!5093157 m!6151328))

(assert (=> b!5093157 m!6151330))

(assert (=> d!1648625 d!1648627))

(push 1)

(assert (not b!5093151))

(assert (not b!5093155))

(assert (not b_lambda!198729))

(assert (not b_lambda!198739))

(assert (not b_lambda!198743))

(assert (not d!1648607))

(assert (not b_lambda!198741))

(assert (not b!5093140))

(assert (not d!1648609))

(assert (not b!5093133))

(assert (not b!5093138))

(assert (not b!5093156))

(assert (not b_lambda!198731))

(assert (not d!1648613))

(assert (not b!5093153))

(assert (not b!5093116))

(assert (not b_next!134029))

(assert (not b!5093118))

(assert (not b!5093119))

(assert (not bs!1191249))

(assert (not b!5093121))

(assert (not b!5093154))

(assert (not b!5093077))

(assert (not b!5093109))

(assert (not d!1648615))

(assert (not d!1648625))

(assert (not b_next!134031))

(assert b_and!350129)

(assert (not b!5093136))

(assert (not d!1648611))

(assert (not b!5093141))

(assert (not b!5093152))

(assert (not b!5093076))

(assert (not b!5093135))

(assert b_and!350113)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350113)

(assert b_and!350129)

(assert (not b_next!134029))

(assert (not b_next!134031))

(check-sat)

(pop 1)

