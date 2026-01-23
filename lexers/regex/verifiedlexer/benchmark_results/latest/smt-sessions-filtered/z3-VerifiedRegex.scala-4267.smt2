; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229774 () Bool)

(assert start!229774)

(declare-fun b_free!70175 () Bool)

(declare-fun b_next!70879 () Bool)

(assert (=> start!229774 (= b_free!70175 (not b_next!70879))))

(declare-fun tp!737318 () Bool)

(declare-fun b_and!185077 () Bool)

(assert (=> start!229774 (= tp!737318 b_and!185077)))

(declare-fun b!2327566 () Bool)

(declare-fun b_free!70177 () Bool)

(declare-fun b_next!70881 () Bool)

(assert (=> b!2327566 (= b_free!70177 (not b_next!70881))))

(declare-fun tp!737314 () Bool)

(declare-fun b_and!185079 () Bool)

(assert (=> b!2327566 (= tp!737314 b_and!185079)))

(declare-fun b_free!70179 () Bool)

(declare-fun b_next!70883 () Bool)

(assert (=> b!2327566 (= b_free!70179 (not b_next!70883))))

(declare-fun tp!737313 () Bool)

(declare-fun b_and!185081 () Bool)

(assert (=> b!2327566 (= tp!737313 b_and!185081)))

(declare-fun b!2327571 () Bool)

(declare-fun b_free!70181 () Bool)

(declare-fun b_next!70885 () Bool)

(assert (=> b!2327571 (= b_free!70181 (not b_next!70885))))

(declare-fun tp!737317 () Bool)

(declare-fun b_and!185083 () Bool)

(assert (=> b!2327571 (= tp!737317 b_and!185083)))

(declare-fun b_free!70183 () Bool)

(declare-fun b_next!70887 () Bool)

(assert (=> b!2327571 (= b_free!70183 (not b_next!70887))))

(declare-fun tp!737310 () Bool)

(declare-fun b_and!185085 () Bool)

(assert (=> b!2327571 (= tp!737310 b_and!185085)))

(declare-fun b!2327565 () Bool)

(declare-fun e!1491266 () Bool)

(declare-datatypes ((List!27813 0))(
  ( (Nil!27715) (Cons!27715 (h!33116 (_ BitVec 16)) (t!207519 List!27813)) )
))
(declare-datatypes ((TokenValue!4589 0))(
  ( (FloatLiteralValue!9178 (text!32568 List!27813)) (TokenValueExt!4588 (__x!18337 Int)) (Broken!22945 (value!140162 List!27813)) (Object!4686) (End!4589) (Def!4589) (Underscore!4589) (Match!4589) (Else!4589) (Error!4589) (Case!4589) (If!4589) (Extends!4589) (Abstract!4589) (Class!4589) (Val!4589) (DelimiterValue!9178 (del!4649 List!27813)) (KeywordValue!4595 (value!140163 List!27813)) (CommentValue!9178 (value!140164 List!27813)) (WhitespaceValue!9178 (value!140165 List!27813)) (IndentationValue!4589 (value!140166 List!27813)) (String!30300) (Int32!4589) (Broken!22946 (value!140167 List!27813)) (Boolean!4590) (Unit!40557) (OperatorValue!4592 (op!4649 List!27813)) (IdentifierValue!9178 (value!140168 List!27813)) (IdentifierValue!9179 (value!140169 List!27813)) (WhitespaceValue!9179 (value!140170 List!27813)) (True!9178) (False!9178) (Broken!22947 (value!140171 List!27813)) (Broken!22948 (value!140172 List!27813)) (True!9179) (RightBrace!4589) (RightBracket!4589) (Colon!4589) (Null!4589) (Comma!4589) (LeftBracket!4589) (False!9179) (LeftBrace!4589) (ImaginaryLiteralValue!4589 (text!32569 List!27813)) (StringLiteralValue!13767 (value!140173 List!27813)) (EOFValue!4589 (value!140174 List!27813)) (IdentValue!4589 (value!140175 List!27813)) (DelimiterValue!9179 (value!140176 List!27813)) (DedentValue!4589 (value!140177 List!27813)) (NewLineValue!4589 (value!140178 List!27813)) (IntegerValue!13767 (value!140179 (_ BitVec 32)) (text!32570 List!27813)) (IntegerValue!13768 (value!140180 Int) (text!32571 List!27813)) (Times!4589) (Or!4589) (Equal!4589) (Minus!4589) (Broken!22949 (value!140181 List!27813)) (And!4589) (Div!4589) (LessEqual!4589) (Mod!4589) (Concat!11378) (Not!4589) (Plus!4589) (SpaceValue!4589 (value!140182 List!27813)) (IntegerValue!13769 (value!140183 Int) (text!32572 List!27813)) (StringLiteralValue!13768 (text!32573 List!27813)) (FloatLiteralValue!9179 (text!32574 List!27813)) (BytesLiteralValue!4589 (value!140184 List!27813)) (CommentValue!9179 (value!140185 List!27813)) (StringLiteralValue!13769 (value!140186 List!27813)) (ErrorTokenValue!4589 (msg!4650 List!27813)) )
))
(declare-datatypes ((C!13736 0))(
  ( (C!13737 (val!8024 Int)) )
))
(declare-datatypes ((List!27814 0))(
  ( (Nil!27716) (Cons!27716 (h!33117 C!13736) (t!207520 List!27814)) )
))
(declare-datatypes ((IArray!18167 0))(
  ( (IArray!18168 (innerList!9141 List!27814)) )
))
(declare-datatypes ((String!30301 0))(
  ( (String!30302 (value!140187 String)) )
))
(declare-datatypes ((Regex!6789 0))(
  ( (ElementMatch!6789 (c!369822 C!13736)) (Concat!11379 (regOne!14090 Regex!6789) (regTwo!14090 Regex!6789)) (EmptyExpr!6789) (Star!6789 (reg!7118 Regex!6789)) (EmptyLang!6789) (Union!6789 (regOne!14091 Regex!6789) (regTwo!14091 Regex!6789)) )
))
(declare-datatypes ((Conc!9081 0))(
  ( (Node!9081 (left!21036 Conc!9081) (right!21366 Conc!9081) (csize!18392 Int) (cheight!9292 Int)) (Leaf!13349 (xs!12061 IArray!18167) (csize!18393 Int)) (Empty!9081) )
))
(declare-datatypes ((BalanceConc!17774 0))(
  ( (BalanceConc!17775 (c!369823 Conc!9081)) )
))
(declare-datatypes ((TokenValueInjection!8698 0))(
  ( (TokenValueInjection!8699 (toValue!6243 Int) (toChars!6102 Int)) )
))
(declare-datatypes ((Rule!8630 0))(
  ( (Rule!8631 (regex!4415 Regex!6789) (tag!4905 String!30301) (isSeparator!4415 Bool) (transformation!4415 TokenValueInjection!8698)) )
))
(declare-datatypes ((Token!8308 0))(
  ( (Token!8309 (value!140188 TokenValue!4589) (rule!6771 Rule!8630) (size!21988 Int) (originalCharacters!5185 List!27814)) )
))
(declare-datatypes ((List!27815 0))(
  ( (Nil!27717) (Cons!27717 (h!33118 Token!8308) (t!207521 List!27815)) )
))
(declare-fun l!4015 () List!27815)

(declare-fun ListPrimitiveSize!157 (List!27815) Int)

(assert (=> b!2327565 (= e!1491266 (>= (ListPrimitiveSize!157 (t!207521 l!4015)) (ListPrimitiveSize!157 l!4015)))))

(declare-fun e!1491261 () Bool)

(assert (=> b!2327566 (= e!1491261 (and tp!737314 tp!737313))))

(declare-fun b!2327567 () Bool)

(declare-fun res!993837 () Bool)

(assert (=> b!2327567 (=> (not res!993837) (not e!1491266))))

(declare-datatypes ((List!27816 0))(
  ( (Nil!27718) (Cons!27718 (h!33119 Rule!8630) (t!207522 List!27816)) )
))
(declare-fun rules!1043 () List!27816)

(declare-fun pred!2 () Int)

(declare-fun dynLambda!11982 (Int Token!8308 Token!8308 List!27816) Bool)

(assert (=> b!2327567 (= res!993837 (dynLambda!11982 pred!2 (h!33118 l!4015) (h!33118 (t!207521 l!4015)) rules!1043))))

(declare-fun e!1491265 () Bool)

(declare-fun e!1491258 () Bool)

(declare-fun b!2327568 () Bool)

(declare-fun tp!737311 () Bool)

(declare-fun inv!37733 (Token!8308) Bool)

(assert (=> b!2327568 (= e!1491258 (and (inv!37733 (h!33118 l!4015)) e!1491265 tp!737311))))

(declare-fun b!2327569 () Bool)

(declare-fun e!1491259 () Bool)

(declare-fun e!1491263 () Bool)

(declare-fun tp!737312 () Bool)

(assert (=> b!2327569 (= e!1491259 (and e!1491263 tp!737312))))

(declare-fun b!2327570 () Bool)

(declare-fun tp!737315 () Bool)

(declare-fun e!1491262 () Bool)

(declare-fun e!1491267 () Bool)

(declare-fun inv!37730 (String!30301) Bool)

(declare-fun inv!37734 (TokenValueInjection!8698) Bool)

(assert (=> b!2327570 (= e!1491267 (and tp!737315 (inv!37730 (tag!4905 (rule!6771 (h!33118 l!4015)))) (inv!37734 (transformation!4415 (rule!6771 (h!33118 l!4015)))) e!1491262))))

(declare-fun res!993838 () Bool)

(assert (=> start!229774 (=> (not res!993838) (not e!1491266))))

(declare-datatypes ((LexerInterface!4012 0))(
  ( (LexerInterfaceExt!4009 (__x!18338 Int)) (Lexer!4010) )
))
(declare-fun thiss!11003 () LexerInterface!4012)

(get-info :version)

(assert (=> start!229774 (= res!993838 (and ((_ is Lexer!4010) thiss!11003) ((_ is Cons!27717) l!4015) ((_ is Cons!27717) (t!207521 l!4015))))))

(assert (=> start!229774 e!1491266))

(assert (=> start!229774 true))

(assert (=> start!229774 e!1491258))

(assert (=> start!229774 tp!737318))

(assert (=> start!229774 e!1491259))

(assert (=> b!2327571 (= e!1491262 (and tp!737317 tp!737310))))

(declare-fun b!2327572 () Bool)

(declare-fun tp!737316 () Bool)

(declare-fun inv!21 (TokenValue!4589) Bool)

(assert (=> b!2327572 (= e!1491265 (and (inv!21 (value!140188 (h!33118 l!4015))) e!1491267 tp!737316))))

(declare-fun b!2327573 () Bool)

(declare-fun tp!737319 () Bool)

(assert (=> b!2327573 (= e!1491263 (and tp!737319 (inv!37730 (tag!4905 (h!33119 rules!1043))) (inv!37734 (transformation!4415 (h!33119 rules!1043))) e!1491261))))

(assert (= (and start!229774 res!993838) b!2327567))

(assert (= (and b!2327567 res!993837) b!2327565))

(assert (= b!2327570 b!2327571))

(assert (= b!2327572 b!2327570))

(assert (= b!2327568 b!2327572))

(assert (= (and start!229774 ((_ is Cons!27717) l!4015)) b!2327568))

(assert (= b!2327573 b!2327566))

(assert (= b!2327569 b!2327573))

(assert (= (and start!229774 ((_ is Cons!27718) rules!1043)) b!2327569))

(declare-fun b_lambda!73691 () Bool)

(assert (=> (not b_lambda!73691) (not b!2327567)))

(declare-fun t!207518 () Bool)

(declare-fun tb!138705 () Bool)

(assert (=> (and start!229774 (= pred!2 pred!2) t!207518) tb!138705))

(declare-fun result!169324 () Bool)

(assert (=> tb!138705 (= result!169324 true)))

(assert (=> b!2327567 t!207518))

(declare-fun b_and!185087 () Bool)

(assert (= b_and!185077 (and (=> t!207518 result!169324) b_and!185087)))

(declare-fun m!2758501 () Bool)

(assert (=> b!2327570 m!2758501))

(declare-fun m!2758503 () Bool)

(assert (=> b!2327570 m!2758503))

(declare-fun m!2758505 () Bool)

(assert (=> b!2327573 m!2758505))

(declare-fun m!2758507 () Bool)

(assert (=> b!2327573 m!2758507))

(declare-fun m!2758509 () Bool)

(assert (=> b!2327572 m!2758509))

(declare-fun m!2758511 () Bool)

(assert (=> b!2327567 m!2758511))

(declare-fun m!2758513 () Bool)

(assert (=> b!2327568 m!2758513))

(declare-fun m!2758515 () Bool)

(assert (=> b!2327565 m!2758515))

(declare-fun m!2758517 () Bool)

(assert (=> b!2327565 m!2758517))

(check-sat (not b!2327565) b_and!185083 (not b!2327570) (not b!2327569) (not b!2327572) b_and!185079 b_and!185085 b_and!185081 (not b_next!70881) (not b_next!70879) (not b_next!70885) (not b!2327573) (not b!2327568) (not b_next!70883) (not b_next!70887) b_and!185087 (not b_lambda!73691))
(check-sat b_and!185083 (not b_next!70885) b_and!185079 b_and!185085 b_and!185081 (not b_next!70883) (not b_next!70881) (not b_next!70879) (not b_next!70887) b_and!185087)
(get-model)

(declare-fun b_lambda!73695 () Bool)

(assert (= b_lambda!73691 (or (and start!229774 b_free!70175) b_lambda!73695)))

(check-sat (not b!2327565) b_and!185083 (not b!2327570) (not b!2327569) (not b!2327572) b_and!185079 b_and!185085 b_and!185081 (not b_next!70881) (not b_lambda!73695) (not b_next!70879) (not b_next!70885) (not b!2327573) (not b!2327568) (not b_next!70883) (not b_next!70887) b_and!185087)
(check-sat b_and!185083 (not b_next!70885) b_and!185079 b_and!185085 b_and!185081 (not b_next!70883) (not b_next!70881) (not b_next!70879) (not b_next!70887) b_and!185087)
(get-model)

(declare-fun d!689256 () Bool)

(assert (=> d!689256 (= (inv!37730 (tag!4905 (rule!6771 (h!33118 l!4015)))) (= (mod (str.len (value!140187 (tag!4905 (rule!6771 (h!33118 l!4015))))) 2) 0))))

(assert (=> b!2327570 d!689256))

(declare-fun d!689260 () Bool)

(declare-fun res!993862 () Bool)

(declare-fun e!1491287 () Bool)

(assert (=> d!689260 (=> (not res!993862) (not e!1491287))))

(declare-fun semiInverseModEq!1807 (Int Int) Bool)

(assert (=> d!689260 (= res!993862 (semiInverseModEq!1807 (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (toValue!6243 (transformation!4415 (rule!6771 (h!33118 l!4015))))))))

(assert (=> d!689260 (= (inv!37734 (transformation!4415 (rule!6771 (h!33118 l!4015)))) e!1491287)))

(declare-fun b!2327603 () Bool)

(declare-fun equivClasses!1722 (Int Int) Bool)

(assert (=> b!2327603 (= e!1491287 (equivClasses!1722 (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (toValue!6243 (transformation!4415 (rule!6771 (h!33118 l!4015))))))))

(assert (= (and d!689260 res!993862) b!2327603))

(declare-fun m!2758535 () Bool)

(assert (=> d!689260 m!2758535))

(declare-fun m!2758537 () Bool)

(assert (=> b!2327603 m!2758537))

(assert (=> b!2327570 d!689260))

(declare-fun d!689268 () Bool)

(declare-fun lt!861924 () Int)

(assert (=> d!689268 (>= lt!861924 0)))

(declare-fun e!1491292 () Int)

(assert (=> d!689268 (= lt!861924 e!1491292)))

(declare-fun c!369836 () Bool)

(assert (=> d!689268 (= c!369836 ((_ is Nil!27717) (t!207521 l!4015)))))

(assert (=> d!689268 (= (ListPrimitiveSize!157 (t!207521 l!4015)) lt!861924)))

(declare-fun b!2327612 () Bool)

(assert (=> b!2327612 (= e!1491292 0)))

(declare-fun b!2327613 () Bool)

(assert (=> b!2327613 (= e!1491292 (+ 1 (ListPrimitiveSize!157 (t!207521 (t!207521 l!4015)))))))

(assert (= (and d!689268 c!369836) b!2327612))

(assert (= (and d!689268 (not c!369836)) b!2327613))

(declare-fun m!2758539 () Bool)

(assert (=> b!2327613 m!2758539))

(assert (=> b!2327565 d!689268))

(declare-fun d!689270 () Bool)

(declare-fun lt!861925 () Int)

(assert (=> d!689270 (>= lt!861925 0)))

(declare-fun e!1491293 () Int)

(assert (=> d!689270 (= lt!861925 e!1491293)))

(declare-fun c!369837 () Bool)

(assert (=> d!689270 (= c!369837 ((_ is Nil!27717) l!4015))))

(assert (=> d!689270 (= (ListPrimitiveSize!157 l!4015) lt!861925)))

(declare-fun b!2327614 () Bool)

(assert (=> b!2327614 (= e!1491293 0)))

(declare-fun b!2327615 () Bool)

(assert (=> b!2327615 (= e!1491293 (+ 1 (ListPrimitiveSize!157 (t!207521 l!4015))))))

(assert (= (and d!689270 c!369837) b!2327614))

(assert (= (and d!689270 (not c!369837)) b!2327615))

(assert (=> b!2327615 m!2758515))

(assert (=> b!2327565 d!689270))

(declare-fun d!689272 () Bool)

(declare-fun res!993873 () Bool)

(declare-fun e!1491305 () Bool)

(assert (=> d!689272 (=> (not res!993873) (not e!1491305))))

(declare-fun isEmpty!15813 (List!27814) Bool)

(assert (=> d!689272 (= res!993873 (not (isEmpty!15813 (originalCharacters!5185 (h!33118 l!4015)))))))

(assert (=> d!689272 (= (inv!37733 (h!33118 l!4015)) e!1491305)))

(declare-fun b!2327642 () Bool)

(declare-fun res!993874 () Bool)

(assert (=> b!2327642 (=> (not res!993874) (not e!1491305))))

(declare-fun list!11026 (BalanceConc!17774) List!27814)

(declare-fun dynLambda!11983 (Int TokenValue!4589) BalanceConc!17774)

(assert (=> b!2327642 (= res!993874 (= (originalCharacters!5185 (h!33118 l!4015)) (list!11026 (dynLambda!11983 (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (value!140188 (h!33118 l!4015))))))))

(declare-fun b!2327643 () Bool)

(declare-fun size!21989 (List!27814) Int)

(assert (=> b!2327643 (= e!1491305 (= (size!21988 (h!33118 l!4015)) (size!21989 (originalCharacters!5185 (h!33118 l!4015)))))))

(assert (= (and d!689272 res!993873) b!2327642))

(assert (= (and b!2327642 res!993874) b!2327643))

(declare-fun b_lambda!73699 () Bool)

(assert (=> (not b_lambda!73699) (not b!2327642)))

(declare-fun t!207528 () Bool)

(declare-fun tb!138711 () Bool)

(assert (=> (and b!2327566 (= (toChars!6102 (transformation!4415 (h!33119 rules!1043))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015))))) t!207528) tb!138711))

(declare-fun b!2327660 () Bool)

(declare-fun e!1491312 () Bool)

(declare-fun tp!737348 () Bool)

(declare-fun inv!37735 (Conc!9081) Bool)

(assert (=> b!2327660 (= e!1491312 (and (inv!37735 (c!369823 (dynLambda!11983 (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (value!140188 (h!33118 l!4015))))) tp!737348))))

(declare-fun result!169336 () Bool)

(declare-fun inv!37736 (BalanceConc!17774) Bool)

(assert (=> tb!138711 (= result!169336 (and (inv!37736 (dynLambda!11983 (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (value!140188 (h!33118 l!4015)))) e!1491312))))

(assert (= tb!138711 b!2327660))

(declare-fun m!2758553 () Bool)

(assert (=> b!2327660 m!2758553))

(declare-fun m!2758555 () Bool)

(assert (=> tb!138711 m!2758555))

(assert (=> b!2327642 t!207528))

(declare-fun b_and!185093 () Bool)

(assert (= b_and!185081 (and (=> t!207528 result!169336) b_and!185093)))

(declare-fun t!207530 () Bool)

(declare-fun tb!138713 () Bool)

(assert (=> (and b!2327571 (= (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015))))) t!207530) tb!138713))

(declare-fun result!169342 () Bool)

(assert (= result!169342 result!169336))

(assert (=> b!2327642 t!207530))

(declare-fun b_and!185095 () Bool)

(assert (= b_and!185085 (and (=> t!207530 result!169342) b_and!185095)))

(declare-fun m!2758557 () Bool)

(assert (=> d!689272 m!2758557))

(declare-fun m!2758559 () Bool)

(assert (=> b!2327642 m!2758559))

(assert (=> b!2327642 m!2758559))

(declare-fun m!2758561 () Bool)

(assert (=> b!2327642 m!2758561))

(declare-fun m!2758563 () Bool)

(assert (=> b!2327643 m!2758563))

(assert (=> b!2327568 d!689272))

(declare-fun d!689274 () Bool)

(assert (=> d!689274 (= (inv!37730 (tag!4905 (h!33119 rules!1043))) (= (mod (str.len (value!140187 (tag!4905 (h!33119 rules!1043)))) 2) 0))))

(assert (=> b!2327573 d!689274))

(declare-fun d!689276 () Bool)

(declare-fun res!993875 () Bool)

(declare-fun e!1491321 () Bool)

(assert (=> d!689276 (=> (not res!993875) (not e!1491321))))

(assert (=> d!689276 (= res!993875 (semiInverseModEq!1807 (toChars!6102 (transformation!4415 (h!33119 rules!1043))) (toValue!6243 (transformation!4415 (h!33119 rules!1043)))))))

(assert (=> d!689276 (= (inv!37734 (transformation!4415 (h!33119 rules!1043))) e!1491321)))

(declare-fun b!2327665 () Bool)

(assert (=> b!2327665 (= e!1491321 (equivClasses!1722 (toChars!6102 (transformation!4415 (h!33119 rules!1043))) (toValue!6243 (transformation!4415 (h!33119 rules!1043)))))))

(assert (= (and d!689276 res!993875) b!2327665))

(declare-fun m!2758565 () Bool)

(assert (=> d!689276 m!2758565))

(declare-fun m!2758567 () Bool)

(assert (=> b!2327665 m!2758567))

(assert (=> b!2327573 d!689276))

(declare-fun d!689278 () Bool)

(declare-fun c!369842 () Bool)

(assert (=> d!689278 (= c!369842 ((_ is IntegerValue!13767) (value!140188 (h!33118 l!4015))))))

(declare-fun e!1491346 () Bool)

(assert (=> d!689278 (= (inv!21 (value!140188 (h!33118 l!4015))) e!1491346)))

(declare-fun b!2327690 () Bool)

(declare-fun e!1491344 () Bool)

(declare-fun inv!15 (TokenValue!4589) Bool)

(assert (=> b!2327690 (= e!1491344 (inv!15 (value!140188 (h!33118 l!4015))))))

(declare-fun b!2327691 () Bool)

(declare-fun e!1491345 () Bool)

(declare-fun inv!17 (TokenValue!4589) Bool)

(assert (=> b!2327691 (= e!1491345 (inv!17 (value!140188 (h!33118 l!4015))))))

(declare-fun b!2327692 () Bool)

(declare-fun res!993878 () Bool)

(assert (=> b!2327692 (=> res!993878 e!1491344)))

(assert (=> b!2327692 (= res!993878 (not ((_ is IntegerValue!13769) (value!140188 (h!33118 l!4015)))))))

(assert (=> b!2327692 (= e!1491345 e!1491344)))

(declare-fun b!2327693 () Bool)

(assert (=> b!2327693 (= e!1491346 e!1491345)))

(declare-fun c!369843 () Bool)

(assert (=> b!2327693 (= c!369843 ((_ is IntegerValue!13768) (value!140188 (h!33118 l!4015))))))

(declare-fun b!2327694 () Bool)

(declare-fun inv!16 (TokenValue!4589) Bool)

(assert (=> b!2327694 (= e!1491346 (inv!16 (value!140188 (h!33118 l!4015))))))

(assert (= (and d!689278 c!369842) b!2327694))

(assert (= (and d!689278 (not c!369842)) b!2327693))

(assert (= (and b!2327693 c!369843) b!2327691))

(assert (= (and b!2327693 (not c!369843)) b!2327692))

(assert (= (and b!2327692 (not res!993878)) b!2327690))

(declare-fun m!2758577 () Bool)

(assert (=> b!2327690 m!2758577))

(declare-fun m!2758579 () Bool)

(assert (=> b!2327691 m!2758579))

(declare-fun m!2758581 () Bool)

(assert (=> b!2327694 m!2758581))

(assert (=> b!2327572 d!689278))

(declare-fun b!2327711 () Bool)

(declare-fun e!1491353 () Bool)

(declare-fun tp!737390 () Bool)

(declare-fun tp!737389 () Bool)

(assert (=> b!2327711 (= e!1491353 (and tp!737390 tp!737389))))

(assert (=> b!2327570 (= tp!737315 e!1491353)))

(declare-fun b!2327710 () Bool)

(declare-fun tp!737388 () Bool)

(assert (=> b!2327710 (= e!1491353 tp!737388)))

(declare-fun b!2327708 () Bool)

(declare-fun tp_is_empty!10913 () Bool)

(assert (=> b!2327708 (= e!1491353 tp_is_empty!10913)))

(declare-fun b!2327709 () Bool)

(declare-fun tp!737387 () Bool)

(declare-fun tp!737386 () Bool)

(assert (=> b!2327709 (= e!1491353 (and tp!737387 tp!737386))))

(assert (= (and b!2327570 ((_ is ElementMatch!6789) (regex!4415 (rule!6771 (h!33118 l!4015))))) b!2327708))

(assert (= (and b!2327570 ((_ is Concat!11379) (regex!4415 (rule!6771 (h!33118 l!4015))))) b!2327709))

(assert (= (and b!2327570 ((_ is Star!6789) (regex!4415 (rule!6771 (h!33118 l!4015))))) b!2327710))

(assert (= (and b!2327570 ((_ is Union!6789) (regex!4415 (rule!6771 (h!33118 l!4015))))) b!2327711))

(declare-fun b!2327722 () Bool)

(declare-fun b_free!70193 () Bool)

(declare-fun b_next!70897 () Bool)

(assert (=> b!2327722 (= b_free!70193 (not b_next!70897))))

(declare-fun tp!737399 () Bool)

(declare-fun b_and!185105 () Bool)

(assert (=> b!2327722 (= tp!737399 b_and!185105)))

(declare-fun b_free!70195 () Bool)

(declare-fun b_next!70899 () Bool)

(assert (=> b!2327722 (= b_free!70195 (not b_next!70899))))

(declare-fun tb!138719 () Bool)

(declare-fun t!207536 () Bool)

(assert (=> (and b!2327722 (= (toChars!6102 (transformation!4415 (h!33119 (t!207522 rules!1043)))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015))))) t!207536) tb!138719))

(declare-fun result!169354 () Bool)

(assert (= result!169354 result!169336))

(assert (=> b!2327642 t!207536))

(declare-fun b_and!185107 () Bool)

(declare-fun tp!737400 () Bool)

(assert (=> b!2327722 (= tp!737400 (and (=> t!207536 result!169354) b_and!185107))))

(declare-fun e!1491365 () Bool)

(assert (=> b!2327722 (= e!1491365 (and tp!737399 tp!737400))))

(declare-fun tp!737402 () Bool)

(declare-fun b!2327721 () Bool)

(declare-fun e!1491362 () Bool)

(assert (=> b!2327721 (= e!1491362 (and tp!737402 (inv!37730 (tag!4905 (h!33119 (t!207522 rules!1043)))) (inv!37734 (transformation!4415 (h!33119 (t!207522 rules!1043)))) e!1491365))))

(declare-fun b!2327720 () Bool)

(declare-fun e!1491363 () Bool)

(declare-fun tp!737401 () Bool)

(assert (=> b!2327720 (= e!1491363 (and e!1491362 tp!737401))))

(assert (=> b!2327569 (= tp!737312 e!1491363)))

(assert (= b!2327721 b!2327722))

(assert (= b!2327720 b!2327721))

(assert (= (and b!2327569 ((_ is Cons!27718) (t!207522 rules!1043))) b!2327720))

(declare-fun m!2758587 () Bool)

(assert (=> b!2327721 m!2758587))

(declare-fun m!2758589 () Bool)

(assert (=> b!2327721 m!2758589))

(declare-fun b!2327736 () Bool)

(declare-fun b_free!70197 () Bool)

(declare-fun b_next!70901 () Bool)

(assert (=> b!2327736 (= b_free!70197 (not b_next!70901))))

(declare-fun tp!737417 () Bool)

(declare-fun b_and!185109 () Bool)

(assert (=> b!2327736 (= tp!737417 b_and!185109)))

(declare-fun b_free!70199 () Bool)

(declare-fun b_next!70903 () Bool)

(assert (=> b!2327736 (= b_free!70199 (not b_next!70903))))

(declare-fun t!207538 () Bool)

(declare-fun tb!138721 () Bool)

(assert (=> (and b!2327736 (= (toChars!6102 (transformation!4415 (rule!6771 (h!33118 (t!207521 l!4015))))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015))))) t!207538) tb!138721))

(declare-fun result!169358 () Bool)

(assert (= result!169358 result!169336))

(assert (=> b!2327642 t!207538))

(declare-fun tp!737413 () Bool)

(declare-fun b_and!185111 () Bool)

(assert (=> b!2327736 (= tp!737413 (and (=> t!207538 result!169358) b_and!185111))))

(declare-fun e!1491380 () Bool)

(assert (=> b!2327736 (= e!1491380 (and tp!737417 tp!737413))))

(declare-fun e!1491382 () Bool)

(assert (=> b!2327568 (= tp!737311 e!1491382)))

(declare-fun tp!737414 () Bool)

(declare-fun b!2327733 () Bool)

(declare-fun e!1491383 () Bool)

(assert (=> b!2327733 (= e!1491382 (and (inv!37733 (h!33118 (t!207521 l!4015))) e!1491383 tp!737414))))

(declare-fun tp!737415 () Bool)

(declare-fun e!1491378 () Bool)

(declare-fun b!2327734 () Bool)

(assert (=> b!2327734 (= e!1491383 (and (inv!21 (value!140188 (h!33118 (t!207521 l!4015)))) e!1491378 tp!737415))))

(declare-fun tp!737416 () Bool)

(declare-fun b!2327735 () Bool)

(assert (=> b!2327735 (= e!1491378 (and tp!737416 (inv!37730 (tag!4905 (rule!6771 (h!33118 (t!207521 l!4015))))) (inv!37734 (transformation!4415 (rule!6771 (h!33118 (t!207521 l!4015))))) e!1491380))))

(assert (= b!2327735 b!2327736))

(assert (= b!2327734 b!2327735))

(assert (= b!2327733 b!2327734))

(assert (= (and b!2327568 ((_ is Cons!27717) (t!207521 l!4015))) b!2327733))

(declare-fun m!2758591 () Bool)

(assert (=> b!2327733 m!2758591))

(declare-fun m!2758593 () Bool)

(assert (=> b!2327734 m!2758593))

(declare-fun m!2758595 () Bool)

(assert (=> b!2327735 m!2758595))

(declare-fun m!2758597 () Bool)

(assert (=> b!2327735 m!2758597))

(declare-fun b!2327740 () Bool)

(declare-fun e!1491384 () Bool)

(declare-fun tp!737422 () Bool)

(declare-fun tp!737421 () Bool)

(assert (=> b!2327740 (= e!1491384 (and tp!737422 tp!737421))))

(assert (=> b!2327573 (= tp!737319 e!1491384)))

(declare-fun b!2327739 () Bool)

(declare-fun tp!737420 () Bool)

(assert (=> b!2327739 (= e!1491384 tp!737420)))

(declare-fun b!2327737 () Bool)

(assert (=> b!2327737 (= e!1491384 tp_is_empty!10913)))

(declare-fun b!2327738 () Bool)

(declare-fun tp!737419 () Bool)

(declare-fun tp!737418 () Bool)

(assert (=> b!2327738 (= e!1491384 (and tp!737419 tp!737418))))

(assert (= (and b!2327573 ((_ is ElementMatch!6789) (regex!4415 (h!33119 rules!1043)))) b!2327737))

(assert (= (and b!2327573 ((_ is Concat!11379) (regex!4415 (h!33119 rules!1043)))) b!2327738))

(assert (= (and b!2327573 ((_ is Star!6789) (regex!4415 (h!33119 rules!1043)))) b!2327739))

(assert (= (and b!2327573 ((_ is Union!6789) (regex!4415 (h!33119 rules!1043)))) b!2327740))

(declare-fun b!2327745 () Bool)

(declare-fun e!1491387 () Bool)

(declare-fun tp!737425 () Bool)

(assert (=> b!2327745 (= e!1491387 (and tp_is_empty!10913 tp!737425))))

(assert (=> b!2327572 (= tp!737316 e!1491387)))

(assert (= (and b!2327572 ((_ is Cons!27716) (originalCharacters!5185 (h!33118 l!4015)))) b!2327745))

(declare-fun b_lambda!73703 () Bool)

(assert (= b_lambda!73699 (or (and b!2327566 b_free!70179 (= (toChars!6102 (transformation!4415 (h!33119 rules!1043))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))))) (and b!2327571 b_free!70183) (and b!2327722 b_free!70195 (= (toChars!6102 (transformation!4415 (h!33119 (t!207522 rules!1043)))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))))) (and b!2327736 b_free!70199 (= (toChars!6102 (transformation!4415 (rule!6771 (h!33118 (t!207521 l!4015))))) (toChars!6102 (transformation!4415 (rule!6771 (h!33118 l!4015)))))) b_lambda!73703)))

(check-sat (not b_next!70885) (not b!2327613) (not b!2327615) b_and!185079 (not b!2327691) (not b_next!70881) (not b_next!70897) b_and!185095 (not b!2327710) b_and!185093 (not b!2327709) b_and!185083 (not b!2327740) (not b!2327690) (not b!2327694) (not b!2327711) (not b!2327665) b_and!185109 (not b_next!70901) b_and!185111 (not d!689276) (not b_next!70899) (not b!2327720) (not b!2327603) tp_is_empty!10913 (not b!2327738) (not b!2327739) b_and!185105 (not b!2327745) (not b!2327735) (not b_next!70903) (not b!2327733) b_and!185107 (not b_next!70883) (not b!2327660) (not b!2327734) (not b_lambda!73695) (not b!2327721) (not d!689260) (not b!2327642) (not d!689272) (not b!2327643) (not tb!138711) (not b_lambda!73703) (not b_next!70879) (not b_next!70887) b_and!185087)
(check-sat b_and!185093 b_and!185083 (not b_next!70885) b_and!185111 (not b_next!70899) b_and!185105 b_and!185079 (not b_next!70903) (not b_next!70881) (not b_next!70879) (not b_next!70897) b_and!185095 b_and!185109 (not b_next!70901) b_and!185107 (not b_next!70883) (not b_next!70887) b_and!185087)
