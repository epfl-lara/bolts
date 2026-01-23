; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!112012 () Bool)

(assert start!112012)

(declare-fun b!1283325 () Bool)

(declare-fun b_free!29995 () Bool)

(declare-fun b_next!30699 () Bool)

(assert (=> b!1283325 (= b_free!29995 (not b_next!30699))))

(declare-fun tp!372968 () Bool)

(declare-fun b_and!85139 () Bool)

(assert (=> b!1283325 (= tp!372968 b_and!85139)))

(declare-fun b_free!29997 () Bool)

(declare-fun b_next!30701 () Bool)

(assert (=> b!1283325 (= b_free!29997 (not b_next!30701))))

(declare-fun tp!372969 () Bool)

(declare-fun b_and!85141 () Bool)

(assert (=> b!1283325 (= tp!372969 b_and!85141)))

(declare-fun b!1283343 () Bool)

(declare-fun e!822826 () Bool)

(assert (=> b!1283343 (= e!822826 true)))

(declare-fun b!1283342 () Bool)

(declare-fun e!822825 () Bool)

(assert (=> b!1283342 (= e!822825 e!822826)))

(declare-fun b!1283341 () Bool)

(declare-fun e!822824 () Bool)

(assert (=> b!1283341 (= e!822824 e!822825)))

(declare-fun b!1283331 () Bool)

(assert (=> b!1283331 e!822824))

(assert (= b!1283342 b!1283343))

(assert (= b!1283341 b!1283342))

(declare-datatypes ((List!12802 0))(
  ( (Nil!12736) (Cons!12736 (h!18137 (_ BitVec 16)) (t!116640 List!12802)) )
))
(declare-datatypes ((TokenValue!2278 0))(
  ( (FloatLiteralValue!4556 (text!16391 List!12802)) (TokenValueExt!2277 (__x!8373 Int)) (Broken!11390 (value!71966 List!12802)) (Object!2343) (End!2278) (Def!2278) (Underscore!2278) (Match!2278) (Else!2278) (Error!2278) (Case!2278) (If!2278) (Extends!2278) (Abstract!2278) (Class!2278) (Val!2278) (DelimiterValue!4556 (del!2338 List!12802)) (KeywordValue!2284 (value!71967 List!12802)) (CommentValue!4556 (value!71968 List!12802)) (WhitespaceValue!4556 (value!71969 List!12802)) (IndentationValue!2278 (value!71970 List!12802)) (String!15627) (Int32!2278) (Broken!11391 (value!71971 List!12802)) (Boolean!2279) (Unit!18972) (OperatorValue!2281 (op!2338 List!12802)) (IdentifierValue!4556 (value!71972 List!12802)) (IdentifierValue!4557 (value!71973 List!12802)) (WhitespaceValue!4557 (value!71974 List!12802)) (True!4556) (False!4556) (Broken!11392 (value!71975 List!12802)) (Broken!11393 (value!71976 List!12802)) (True!4557) (RightBrace!2278) (RightBracket!2278) (Colon!2278) (Null!2278) (Comma!2278) (LeftBracket!2278) (False!4557) (LeftBrace!2278) (ImaginaryLiteralValue!2278 (text!16392 List!12802)) (StringLiteralValue!6834 (value!71977 List!12802)) (EOFValue!2278 (value!71978 List!12802)) (IdentValue!2278 (value!71979 List!12802)) (DelimiterValue!4557 (value!71980 List!12802)) (DedentValue!2278 (value!71981 List!12802)) (NewLineValue!2278 (value!71982 List!12802)) (IntegerValue!6834 (value!71983 (_ BitVec 32)) (text!16393 List!12802)) (IntegerValue!6835 (value!71984 Int) (text!16394 List!12802)) (Times!2278) (Or!2278) (Equal!2278) (Minus!2278) (Broken!11394 (value!71985 List!12802)) (And!2278) (Div!2278) (LessEqual!2278) (Mod!2278) (Concat!5780) (Not!2278) (Plus!2278) (SpaceValue!2278 (value!71986 List!12802)) (IntegerValue!6836 (value!71987 Int) (text!16395 List!12802)) (StringLiteralValue!6835 (text!16396 List!12802)) (FloatLiteralValue!4557 (text!16397 List!12802)) (BytesLiteralValue!2278 (value!71988 List!12802)) (CommentValue!4557 (value!71989 List!12802)) (StringLiteralValue!6836 (value!71990 List!12802)) (ErrorTokenValue!2278 (msg!2339 List!12802)) )
))
(declare-datatypes ((C!7294 0))(
  ( (C!7295 (val!4207 Int)) )
))
(declare-datatypes ((List!12803 0))(
  ( (Nil!12737) (Cons!12737 (h!18138 C!7294) (t!116641 List!12803)) )
))
(declare-datatypes ((IArray!8377 0))(
  ( (IArray!8378 (innerList!4246 List!12803)) )
))
(declare-datatypes ((Conc!4186 0))(
  ( (Node!4186 (left!10992 Conc!4186) (right!11322 Conc!4186) (csize!8602 Int) (cheight!4397 Int)) (Leaf!6477 (xs!6897 IArray!8377) (csize!8603 Int)) (Empty!4186) )
))
(declare-datatypes ((BalanceConc!8312 0))(
  ( (BalanceConc!8313 (c!211452 Conc!4186)) )
))
(declare-datatypes ((Regex!3502 0))(
  ( (ElementMatch!3502 (c!211453 C!7294)) (Concat!5781 (regOne!7516 Regex!3502) (regTwo!7516 Regex!3502)) (EmptyExpr!3502) (Star!3502 (reg!3831 Regex!3502)) (EmptyLang!3502) (Union!3502 (regOne!7517 Regex!3502) (regTwo!7517 Regex!3502)) )
))
(declare-datatypes ((String!15628 0))(
  ( (String!15629 (value!71991 String)) )
))
(declare-datatypes ((TokenValueInjection!4216 0))(
  ( (TokenValueInjection!4217 (toValue!3361 Int) (toChars!3220 Int)) )
))
(declare-datatypes ((Rule!4176 0))(
  ( (Rule!4177 (regex!2188 Regex!3502) (tag!2450 String!15628) (isSeparator!2188 Bool) (transformation!2188 TokenValueInjection!4216)) )
))
(declare-datatypes ((List!12804 0))(
  ( (Nil!12738) (Cons!12738 (h!18139 Rule!4176) (t!116642 List!12804)) )
))
(declare-fun rs!174 () List!12804)

(assert (= (and b!1283331 (is-Cons!12738 rs!174)) b!1283341))

(declare-fun order!7743 () Int)

(declare-fun order!7745 () Int)

(declare-fun lambda!50301 () Int)

(declare-fun dynLambda!5544 (Int Int) Int)

(declare-fun dynLambda!5545 (Int Int) Int)

(assert (=> b!1283343 (< (dynLambda!5544 order!7743 (toValue!3361 (transformation!2188 (h!18139 rs!174)))) (dynLambda!5545 order!7745 lambda!50301))))

(declare-fun order!7747 () Int)

(declare-fun dynLambda!5546 (Int Int) Int)

(assert (=> b!1283343 (< (dynLambda!5546 order!7747 (toChars!3220 (transformation!2188 (h!18139 rs!174)))) (dynLambda!5545 order!7745 lambda!50301))))

(assert (=> b!1283331 true))

(declare-fun e!822817 () Bool)

(assert (=> b!1283325 (= e!822817 (and tp!372968 tp!372969))))

(declare-fun b!1283326 () Bool)

(declare-fun res!575684 () Bool)

(declare-fun e!822815 () Bool)

(assert (=> b!1283326 (=> (not res!575684) (not e!822815))))

(declare-fun isEmpty!7555 (List!12804) Bool)

(assert (=> b!1283326 (= res!575684 (not (isEmpty!7555 rs!174)))))

(declare-fun b!1283327 () Bool)

(declare-fun res!575682 () Bool)

(assert (=> b!1283327 (=> (not res!575682) (not e!822815))))

(declare-datatypes ((LexerInterface!1883 0))(
  ( (LexerInterfaceExt!1880 (__x!8374 Int)) (Lexer!1881) )
))
(declare-fun thiss!10944 () LexerInterface!1883)

(declare-fun rulesInvariant!1754 (LexerInterface!1883 List!12804) Bool)

(assert (=> b!1283327 (= res!575682 (rulesInvariant!1754 thiss!10944 rs!174))))

(declare-fun b!1283328 () Bool)

(declare-fun e!822813 () Bool)

(declare-datatypes ((Token!4038 0))(
  ( (Token!4039 (value!71992 TokenValue!2278) (rule!3927 Rule!4176) (size!10379 Int) (originalCharacters!3050 List!12803)) )
))
(declare-datatypes ((List!12805 0))(
  ( (Nil!12739) (Cons!12739 (h!18140 Token!4038) (t!116643 List!12805)) )
))
(declare-datatypes ((IArray!8379 0))(
  ( (IArray!8380 (innerList!4247 List!12805)) )
))
(declare-datatypes ((Conc!4187 0))(
  ( (Node!4187 (left!10993 Conc!4187) (right!11323 Conc!4187) (csize!8604 Int) (cheight!4398 Int)) (Leaf!6478 (xs!6898 IArray!8379) (csize!8605 Int)) (Empty!4187) )
))
(declare-datatypes ((BalanceConc!8314 0))(
  ( (BalanceConc!8315 (c!211454 Conc!4187)) )
))
(declare-fun ts!110 () BalanceConc!8314)

(declare-fun tp!372971 () Bool)

(declare-fun inv!17129 (Conc!4187) Bool)

(assert (=> b!1283328 (= e!822813 (and (inv!17129 (c!211454 ts!110)) tp!372971))))

(declare-fun b!1283329 () Bool)

(declare-fun res!575681 () Bool)

(assert (=> b!1283329 (=> (not res!575681) (not e!822815))))

(declare-fun isEmpty!7556 (BalanceConc!8314) Bool)

(assert (=> b!1283329 (= res!575681 (isEmpty!7556 ts!110))))

(declare-fun res!575683 () Bool)

(assert (=> start!112012 (=> (not res!575683) (not e!822815))))

(assert (=> start!112012 (= res!575683 (is-Lexer!1881 thiss!10944))))

(assert (=> start!112012 e!822815))

(assert (=> start!112012 true))

(declare-fun e!822816 () Bool)

(assert (=> start!112012 e!822816))

(declare-fun inv!17130 (BalanceConc!8314) Bool)

(assert (=> start!112012 (and (inv!17130 ts!110) e!822813)))

(declare-fun tp!372970 () Bool)

(declare-fun e!822814 () Bool)

(declare-fun b!1283330 () Bool)

(declare-fun inv!17126 (String!15628) Bool)

(declare-fun inv!17131 (TokenValueInjection!4216) Bool)

(assert (=> b!1283330 (= e!822814 (and tp!372970 (inv!17126 (tag!2450 (h!18139 rs!174))) (inv!17131 (transformation!2188 (h!18139 rs!174))) e!822817))))

(declare-fun forall!3214 (BalanceConc!8314 Int) Bool)

(assert (=> b!1283331 (= e!822815 (not (forall!3214 ts!110 lambda!50301)))))

(declare-fun b!1283332 () Bool)

(declare-fun tp!372972 () Bool)

(assert (=> b!1283332 (= e!822816 (and e!822814 tp!372972))))

(assert (= (and start!112012 res!575683) b!1283326))

(assert (= (and b!1283326 res!575684) b!1283327))

(assert (= (and b!1283327 res!575682) b!1283329))

(assert (= (and b!1283329 res!575681) b!1283331))

(assert (= b!1283330 b!1283325))

(assert (= b!1283332 b!1283330))

(assert (= (and start!112012 (is-Cons!12738 rs!174)) b!1283332))

(assert (= start!112012 b!1283328))

(declare-fun m!1433717 () Bool)

(assert (=> b!1283328 m!1433717))

(declare-fun m!1433719 () Bool)

(assert (=> b!1283327 m!1433719))

(declare-fun m!1433721 () Bool)

(assert (=> start!112012 m!1433721))

(declare-fun m!1433723 () Bool)

(assert (=> b!1283331 m!1433723))

(declare-fun m!1433725 () Bool)

(assert (=> b!1283329 m!1433725))

(declare-fun m!1433727 () Bool)

(assert (=> b!1283326 m!1433727))

(declare-fun m!1433729 () Bool)

(assert (=> b!1283330 m!1433729))

(declare-fun m!1433731 () Bool)

(assert (=> b!1283330 m!1433731))

(push 1)

(assert (not b_next!30701))

(assert (not b!1283332))

(assert (not b!1283329))

(assert (not b_next!30699))

(assert (not b!1283331))

(assert (not start!112012))

(assert (not b!1283328))

(assert (not b!1283341))

(assert b_and!85139)

(assert (not b!1283327))

(assert (not b!1283330))

(assert b_and!85141)

(assert (not b!1283326))

(check-sat)

(pop 1)

(push 1)

(assert b_and!85139)

(assert b_and!85141)

(assert (not b_next!30699))

(assert (not b_next!30701))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!361459 () Bool)

(declare-fun lt!423317 () Bool)

(declare-fun forall!3216 (List!12805 Int) Bool)

(declare-fun list!4732 (BalanceConc!8314) List!12805)

(assert (=> d!361459 (= lt!423317 (forall!3216 (list!4732 ts!110) lambda!50301))))

(declare-fun forall!3217 (Conc!4187 Int) Bool)

(assert (=> d!361459 (= lt!423317 (forall!3217 (c!211454 ts!110) lambda!50301))))

(assert (=> d!361459 (= (forall!3214 ts!110 lambda!50301) lt!423317)))

(declare-fun bs!327631 () Bool)

(assert (= bs!327631 d!361459))

(declare-fun m!1433749 () Bool)

(assert (=> bs!327631 m!1433749))

(assert (=> bs!327631 m!1433749))

(declare-fun m!1433751 () Bool)

(assert (=> bs!327631 m!1433751))

(declare-fun m!1433753 () Bool)

(assert (=> bs!327631 m!1433753))

(assert (=> b!1283331 d!361459))

(declare-fun d!361463 () Bool)

(assert (=> d!361463 (= (inv!17126 (tag!2450 (h!18139 rs!174))) (= (mod (str.len (value!71991 (tag!2450 (h!18139 rs!174)))) 2) 0))))

(assert (=> b!1283330 d!361463))

(declare-fun d!361465 () Bool)

(declare-fun res!575701 () Bool)

(declare-fun e!822856 () Bool)

(assert (=> d!361465 (=> (not res!575701) (not e!822856))))

(declare-fun semiInverseModEq!824 (Int Int) Bool)

(assert (=> d!361465 (= res!575701 (semiInverseModEq!824 (toChars!3220 (transformation!2188 (h!18139 rs!174))) (toValue!3361 (transformation!2188 (h!18139 rs!174)))))))

(assert (=> d!361465 (= (inv!17131 (transformation!2188 (h!18139 rs!174))) e!822856)))

(declare-fun b!1283385 () Bool)

(declare-fun equivClasses!783 (Int Int) Bool)

(assert (=> b!1283385 (= e!822856 (equivClasses!783 (toChars!3220 (transformation!2188 (h!18139 rs!174))) (toValue!3361 (transformation!2188 (h!18139 rs!174)))))))

(assert (= (and d!361465 res!575701) b!1283385))

(declare-fun m!1433757 () Bool)

(assert (=> d!361465 m!1433757))

(declare-fun m!1433759 () Bool)

(assert (=> b!1283385 m!1433759))

(assert (=> b!1283330 d!361465))

(declare-fun d!361471 () Bool)

(declare-fun lt!423320 () Bool)

(declare-fun isEmpty!7559 (List!12805) Bool)

(assert (=> d!361471 (= lt!423320 (isEmpty!7559 (list!4732 ts!110)))))

(declare-fun isEmpty!7560 (Conc!4187) Bool)

(assert (=> d!361471 (= lt!423320 (isEmpty!7560 (c!211454 ts!110)))))

(assert (=> d!361471 (= (isEmpty!7556 ts!110) lt!423320)))

(declare-fun bs!327633 () Bool)

(assert (= bs!327633 d!361471))

(assert (=> bs!327633 m!1433749))

(assert (=> bs!327633 m!1433749))

(declare-fun m!1433761 () Bool)

(assert (=> bs!327633 m!1433761))

(declare-fun m!1433763 () Bool)

(assert (=> bs!327633 m!1433763))

(assert (=> b!1283329 d!361471))

(declare-fun d!361473 () Bool)

(declare-fun c!211460 () Bool)

(assert (=> d!361473 (= c!211460 (is-Node!4187 (c!211454 ts!110)))))

(declare-fun e!822864 () Bool)

(assert (=> d!361473 (= (inv!17129 (c!211454 ts!110)) e!822864)))

(declare-fun b!1283395 () Bool)

(declare-fun inv!17135 (Conc!4187) Bool)

(assert (=> b!1283395 (= e!822864 (inv!17135 (c!211454 ts!110)))))

(declare-fun b!1283396 () Bool)

(declare-fun e!822865 () Bool)

(assert (=> b!1283396 (= e!822864 e!822865)))

(declare-fun res!575707 () Bool)

(assert (=> b!1283396 (= res!575707 (not (is-Leaf!6478 (c!211454 ts!110))))))

(assert (=> b!1283396 (=> res!575707 e!822865)))

(declare-fun b!1283397 () Bool)

(declare-fun inv!17136 (Conc!4187) Bool)

(assert (=> b!1283397 (= e!822865 (inv!17136 (c!211454 ts!110)))))

(assert (= (and d!361473 c!211460) b!1283395))

(assert (= (and d!361473 (not c!211460)) b!1283396))

(assert (= (and b!1283396 (not res!575707)) b!1283397))

(declare-fun m!1433765 () Bool)

(assert (=> b!1283395 m!1433765))

(declare-fun m!1433767 () Bool)

(assert (=> b!1283397 m!1433767))

(assert (=> b!1283328 d!361473))

(declare-fun d!361475 () Bool)

(declare-fun isBalanced!1222 (Conc!4187) Bool)

(assert (=> d!361475 (= (inv!17130 ts!110) (isBalanced!1222 (c!211454 ts!110)))))

(declare-fun bs!327634 () Bool)

(assert (= bs!327634 d!361475))

(declare-fun m!1433773 () Bool)

(assert (=> bs!327634 m!1433773))

(assert (=> start!112012 d!361475))

(declare-fun d!361479 () Bool)

(declare-fun res!575710 () Bool)

(declare-fun e!822868 () Bool)

(assert (=> d!361479 (=> (not res!575710) (not e!822868))))

(declare-fun rulesValid!795 (LexerInterface!1883 List!12804) Bool)

(assert (=> d!361479 (= res!575710 (rulesValid!795 thiss!10944 rs!174))))

(assert (=> d!361479 (= (rulesInvariant!1754 thiss!10944 rs!174) e!822868)))

(declare-fun b!1283400 () Bool)

(declare-datatypes ((List!12810 0))(
  ( (Nil!12744) (Cons!12744 (h!18145 String!15628) (t!116650 List!12810)) )
))
(declare-fun noDuplicateTag!795 (LexerInterface!1883 List!12804 List!12810) Bool)

(assert (=> b!1283400 (= e!822868 (noDuplicateTag!795 thiss!10944 rs!174 Nil!12744))))

(assert (= (and d!361479 res!575710) b!1283400))

(declare-fun m!1433775 () Bool)

(assert (=> d!361479 m!1433775))

(declare-fun m!1433777 () Bool)

(assert (=> b!1283400 m!1433777))

(assert (=> b!1283327 d!361479))

(declare-fun d!361481 () Bool)

(assert (=> d!361481 (= (isEmpty!7555 rs!174) (is-Nil!12738 rs!174))))

(assert (=> b!1283326 d!361481))

(declare-fun b!1283413 () Bool)

(declare-fun e!822871 () Bool)

(declare-fun tp!372999 () Bool)

(assert (=> b!1283413 (= e!822871 tp!372999)))

(declare-fun b!1283411 () Bool)

(declare-fun tp_is_empty!6531 () Bool)

(assert (=> b!1283411 (= e!822871 tp_is_empty!6531)))

(assert (=> b!1283330 (= tp!372970 e!822871)))

(declare-fun b!1283414 () Bool)

(declare-fun tp!373000 () Bool)

(declare-fun tp!373002 () Bool)

(assert (=> b!1283414 (= e!822871 (and tp!373000 tp!373002))))

(declare-fun b!1283412 () Bool)

(declare-fun tp!372998 () Bool)

(declare-fun tp!373001 () Bool)

(assert (=> b!1283412 (= e!822871 (and tp!372998 tp!373001))))

(assert (= (and b!1283330 (is-ElementMatch!3502 (regex!2188 (h!18139 rs!174)))) b!1283411))

(assert (= (and b!1283330 (is-Concat!5781 (regex!2188 (h!18139 rs!174)))) b!1283412))

(assert (= (and b!1283330 (is-Star!3502 (regex!2188 (h!18139 rs!174)))) b!1283413))

(assert (= (and b!1283330 (is-Union!3502 (regex!2188 (h!18139 rs!174)))) b!1283414))

(declare-fun b!1283417 () Bool)

(declare-fun e!822874 () Bool)

(assert (=> b!1283417 (= e!822874 true)))

(declare-fun b!1283416 () Bool)

(declare-fun e!822873 () Bool)

(assert (=> b!1283416 (= e!822873 e!822874)))

(declare-fun b!1283415 () Bool)

(declare-fun e!822872 () Bool)

(assert (=> b!1283415 (= e!822872 e!822873)))

(assert (=> b!1283341 e!822872))

(assert (= b!1283416 b!1283417))

(assert (= b!1283415 b!1283416))

(assert (= (and b!1283341 (is-Cons!12738 (t!116642 rs!174))) b!1283415))

(assert (=> b!1283417 (< (dynLambda!5544 order!7743 (toValue!3361 (transformation!2188 (h!18139 (t!116642 rs!174))))) (dynLambda!5545 order!7745 lambda!50301))))

(assert (=> b!1283417 (< (dynLambda!5546 order!7747 (toChars!3220 (transformation!2188 (h!18139 (t!116642 rs!174))))) (dynLambda!5545 order!7745 lambda!50301))))

(declare-fun tp!373009 () Bool)

(declare-fun e!822884 () Bool)

(declare-fun tp!373010 () Bool)

(declare-fun b!1283432 () Bool)

(assert (=> b!1283432 (= e!822884 (and (inv!17129 (left!10993 (c!211454 ts!110))) tp!373010 (inv!17129 (right!11323 (c!211454 ts!110))) tp!373009))))

(declare-fun b!1283434 () Bool)

(declare-fun e!822883 () Bool)

(declare-fun tp!373011 () Bool)

(assert (=> b!1283434 (= e!822883 tp!373011)))

(declare-fun b!1283433 () Bool)

(declare-fun inv!17137 (IArray!8379) Bool)

(assert (=> b!1283433 (= e!822884 (and (inv!17137 (xs!6898 (c!211454 ts!110))) e!822883))))

(assert (=> b!1283328 (= tp!372971 (and (inv!17129 (c!211454 ts!110)) e!822884))))

(assert (= (and b!1283328 (is-Node!4187 (c!211454 ts!110))) b!1283432))

(assert (= b!1283433 b!1283434))

(assert (= (and b!1283328 (is-Leaf!6478 (c!211454 ts!110))) b!1283433))

(declare-fun m!1433779 () Bool)

(assert (=> b!1283432 m!1433779))

(declare-fun m!1433781 () Bool)

(assert (=> b!1283432 m!1433781))

(declare-fun m!1433783 () Bool)

(assert (=> b!1283433 m!1433783))

(assert (=> b!1283328 m!1433717))

(declare-fun b!1283448 () Bool)

(declare-fun b_free!30003 () Bool)

(declare-fun b_next!30707 () Bool)

(assert (=> b!1283448 (= b_free!30003 (not b_next!30707))))

(declare-fun tp!373023 () Bool)

(declare-fun b_and!85147 () Bool)

(assert (=> b!1283448 (= tp!373023 b_and!85147)))

(declare-fun b_free!30005 () Bool)

(declare-fun b_next!30709 () Bool)

(assert (=> b!1283448 (= b_free!30005 (not b_next!30709))))

(declare-fun tp!373020 () Bool)

(declare-fun b_and!85149 () Bool)

(assert (=> b!1283448 (= tp!373020 b_and!85149)))

(declare-fun e!822898 () Bool)

(assert (=> b!1283448 (= e!822898 (and tp!373023 tp!373020))))

(declare-fun e!822896 () Bool)

(declare-fun tp!373021 () Bool)

(declare-fun b!1283447 () Bool)

(assert (=> b!1283447 (= e!822896 (and tp!373021 (inv!17126 (tag!2450 (h!18139 (t!116642 rs!174)))) (inv!17131 (transformation!2188 (h!18139 (t!116642 rs!174)))) e!822898))))

(declare-fun b!1283446 () Bool)

(declare-fun e!822895 () Bool)

(declare-fun tp!373022 () Bool)

(assert (=> b!1283446 (= e!822895 (and e!822896 tp!373022))))

(assert (=> b!1283332 (= tp!372972 e!822895)))

(assert (= b!1283447 b!1283448))

(assert (= b!1283446 b!1283447))

(assert (= (and b!1283332 (is-Cons!12738 (t!116642 rs!174))) b!1283446))

(declare-fun m!1433789 () Bool)

(assert (=> b!1283447 m!1433789))

(declare-fun m!1433791 () Bool)

(assert (=> b!1283447 m!1433791))

(push 1)

(assert tp_is_empty!6531)

(assert (not b!1283414))

(assert (not b!1283397))

(assert (not d!361459))

(assert (not b_next!30699))

(assert (not b!1283385))

(assert b_and!85139)

(assert (not b!1283413))

(assert (not b!1283415))

(assert (not b!1283412))

(assert (not d!361465))

(assert (not b!1283446))

(assert (not b!1283447))

(assert (not b_next!30701))

(assert (not b!1283395))

(assert b_and!85147)

(assert (not d!361475))

(assert (not b!1283400))

(assert b_and!85149)

(assert (not b!1283433))

(assert b_and!85141)

(assert (not d!361479))

(assert (not b_next!30709))

(assert (not b!1283432))

(assert (not b!1283434))

(assert (not b!1283328))

(assert (not b_next!30707))

(assert (not d!361471))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30701))

(assert (not b_next!30699))

(assert b_and!85139)

(assert b_and!85147)

(assert b_and!85149)

(assert (not b_next!30707))

(assert b_and!85141)

(assert (not b_next!30709))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!361491 () Bool)

(declare-fun size!10381 (List!12805) Int)

(assert (=> d!361491 (= (inv!17137 (xs!6898 (c!211454 ts!110))) (<= (size!10381 (innerList!4247 (xs!6898 (c!211454 ts!110)))) 2147483647))))

(declare-fun bs!327637 () Bool)

(assert (= bs!327637 d!361491))

(declare-fun m!1433817 () Bool)

(assert (=> bs!327637 m!1433817))

(assert (=> b!1283433 d!361491))

(declare-fun d!361493 () Bool)

(assert (=> d!361493 (= (isEmpty!7559 (list!4732 ts!110)) (is-Nil!12739 (list!4732 ts!110)))))

(assert (=> d!361471 d!361493))

(declare-fun d!361495 () Bool)

(declare-fun list!4734 (Conc!4187) List!12805)

(assert (=> d!361495 (= (list!4732 ts!110) (list!4734 (c!211454 ts!110)))))

(declare-fun bs!327638 () Bool)

(assert (= bs!327638 d!361495))

(declare-fun m!1433819 () Bool)

(assert (=> bs!327638 m!1433819))

(assert (=> d!361471 d!361495))

(declare-fun d!361497 () Bool)

(declare-fun lt!423329 () Bool)

(assert (=> d!361497 (= lt!423329 (isEmpty!7559 (list!4734 (c!211454 ts!110))))))

(declare-fun size!10382 (Conc!4187) Int)

(assert (=> d!361497 (= lt!423329 (= (size!10382 (c!211454 ts!110)) 0))))

(assert (=> d!361497 (= (isEmpty!7560 (c!211454 ts!110)) lt!423329)))

(declare-fun bs!327639 () Bool)

(assert (= bs!327639 d!361497))

(assert (=> bs!327639 m!1433819))

(assert (=> bs!327639 m!1433819))

(declare-fun m!1433821 () Bool)

(assert (=> bs!327639 m!1433821))

(declare-fun m!1433823 () Bool)

(assert (=> bs!327639 m!1433823))

(assert (=> d!361471 d!361497))

(declare-fun d!361499 () Bool)

(declare-fun res!575726 () Bool)

(declare-fun e!822928 () Bool)

(assert (=> d!361499 (=> (not res!575726) (not e!822928))))

(assert (=> d!361499 (= res!575726 (= (csize!8604 (c!211454 ts!110)) (+ (size!10382 (left!10993 (c!211454 ts!110))) (size!10382 (right!11323 (c!211454 ts!110))))))))

(assert (=> d!361499 (= (inv!17135 (c!211454 ts!110)) e!822928)))

(declare-fun b!1283497 () Bool)

(declare-fun res!575727 () Bool)

(assert (=> b!1283497 (=> (not res!575727) (not e!822928))))

(assert (=> b!1283497 (= res!575727 (and (not (= (left!10993 (c!211454 ts!110)) Empty!4187)) (not (= (right!11323 (c!211454 ts!110)) Empty!4187))))))

(declare-fun b!1283498 () Bool)

(declare-fun res!575728 () Bool)

(assert (=> b!1283498 (=> (not res!575728) (not e!822928))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!593 (Conc!4187) Int)

(assert (=> b!1283498 (= res!575728 (= (cheight!4398 (c!211454 ts!110)) (+ (max!0 (height!593 (left!10993 (c!211454 ts!110))) (height!593 (right!11323 (c!211454 ts!110)))) 1)))))

(declare-fun b!1283499 () Bool)

(assert (=> b!1283499 (= e!822928 (<= 0 (cheight!4398 (c!211454 ts!110))))))

(assert (= (and d!361499 res!575726) b!1283497))

(assert (= (and b!1283497 res!575727) b!1283498))

(assert (= (and b!1283498 res!575728) b!1283499))

(declare-fun m!1433825 () Bool)

(assert (=> d!361499 m!1433825))

(declare-fun m!1433827 () Bool)

(assert (=> d!361499 m!1433827))

(declare-fun m!1433829 () Bool)

(assert (=> b!1283498 m!1433829))

(declare-fun m!1433831 () Bool)

(assert (=> b!1283498 m!1433831))

(assert (=> b!1283498 m!1433829))

(assert (=> b!1283498 m!1433831))

(declare-fun m!1433833 () Bool)

(assert (=> b!1283498 m!1433833))

(assert (=> b!1283395 d!361499))

(declare-fun d!361501 () Bool)

(assert (=> d!361501 (= (inv!17126 (tag!2450 (h!18139 (t!116642 rs!174)))) (= (mod (str.len (value!71991 (tag!2450 (h!18139 (t!116642 rs!174))))) 2) 0))))

(assert (=> b!1283447 d!361501))

(declare-fun d!361503 () Bool)

(declare-fun res!575730 () Bool)

(declare-fun e!822929 () Bool)

(assert (=> d!361503 (=> (not res!575730) (not e!822929))))

(assert (=> d!361503 (= res!575730 (semiInverseModEq!824 (toChars!3220 (transformation!2188 (h!18139 (t!116642 rs!174)))) (toValue!3361 (transformation!2188 (h!18139 (t!116642 rs!174))))))))

(assert (=> d!361503 (= (inv!17131 (transformation!2188 (h!18139 (t!116642 rs!174)))) e!822929)))

(declare-fun b!1283500 () Bool)

(assert (=> b!1283500 (= e!822929 (equivClasses!783 (toChars!3220 (transformation!2188 (h!18139 (t!116642 rs!174)))) (toValue!3361 (transformation!2188 (h!18139 (t!116642 rs!174))))))))

(assert (= (and d!361503 res!575730) b!1283500))

(declare-fun m!1433835 () Bool)

(assert (=> d!361503 m!1433835))

(declare-fun m!1433837 () Bool)

(assert (=> b!1283500 m!1433837))

(assert (=> b!1283447 d!361503))

(assert (=> b!1283328 d!361473))

(declare-fun d!361505 () Bool)

(assert (=> d!361505 true))

(declare-fun order!7755 () Int)

(declare-fun lambda!50307 () Int)

(declare-fun dynLambda!5550 (Int Int) Int)

(assert (=> d!361505 (< (dynLambda!5544 order!7743 (toValue!3361 (transformation!2188 (h!18139 rs!174)))) (dynLambda!5550 order!7755 lambda!50307))))

(declare-fun Forall2!393 (Int) Bool)

(assert (=> d!361505 (= (equivClasses!783 (toChars!3220 (transformation!2188 (h!18139 rs!174))) (toValue!3361 (transformation!2188 (h!18139 rs!174)))) (Forall2!393 lambda!50307))))

(declare-fun bs!327640 () Bool)

(assert (= bs!327640 d!361505))

(declare-fun m!1433839 () Bool)

(assert (=> bs!327640 m!1433839))

(assert (=> b!1283385 d!361505))

(declare-fun d!361507 () Bool)

(declare-fun res!575747 () Bool)

(declare-fun e!822936 () Bool)

(assert (=> d!361507 (=> res!575747 e!822936)))

(assert (=> d!361507 (= res!575747 (not (is-Node!4187 (c!211454 ts!110))))))

(assert (=> d!361507 (= (isBalanced!1222 (c!211454 ts!110)) e!822936)))

(declare-fun b!1283517 () Bool)

(declare-fun e!822937 () Bool)

(assert (=> b!1283517 (= e!822937 (not (isEmpty!7560 (right!11323 (c!211454 ts!110)))))))

(declare-fun b!1283518 () Bool)

(assert (=> b!1283518 (= e!822936 e!822937)))

(declare-fun res!575748 () Bool)

(assert (=> b!1283518 (=> (not res!575748) (not e!822937))))

(assert (=> b!1283518 (= res!575748 (<= (- 1) (- (height!593 (left!10993 (c!211454 ts!110))) (height!593 (right!11323 (c!211454 ts!110))))))))

(declare-fun b!1283519 () Bool)

(declare-fun res!575752 () Bool)

(assert (=> b!1283519 (=> (not res!575752) (not e!822937))))

(assert (=> b!1283519 (= res!575752 (<= (- (height!593 (left!10993 (c!211454 ts!110))) (height!593 (right!11323 (c!211454 ts!110)))) 1))))

(declare-fun b!1283520 () Bool)

(declare-fun res!575749 () Bool)

(assert (=> b!1283520 (=> (not res!575749) (not e!822937))))

(assert (=> b!1283520 (= res!575749 (isBalanced!1222 (left!10993 (c!211454 ts!110))))))

(declare-fun b!1283521 () Bool)

(declare-fun res!575750 () Bool)

(assert (=> b!1283521 (=> (not res!575750) (not e!822937))))

(assert (=> b!1283521 (= res!575750 (not (isEmpty!7560 (left!10993 (c!211454 ts!110)))))))

(declare-fun b!1283522 () Bool)

(declare-fun res!575751 () Bool)

(assert (=> b!1283522 (=> (not res!575751) (not e!822937))))

(assert (=> b!1283522 (= res!575751 (isBalanced!1222 (right!11323 (c!211454 ts!110))))))

(assert (= (and d!361507 (not res!575747)) b!1283518))

(assert (= (and b!1283518 res!575748) b!1283519))

(assert (= (and b!1283519 res!575752) b!1283520))

(assert (= (and b!1283520 res!575749) b!1283522))

(assert (= (and b!1283522 res!575751) b!1283521))

(assert (= (and b!1283521 res!575750) b!1283517))

(assert (=> b!1283518 m!1433829))

(assert (=> b!1283518 m!1433831))

(declare-fun m!1433841 () Bool)

(assert (=> b!1283522 m!1433841))

(assert (=> b!1283519 m!1433829))

(assert (=> b!1283519 m!1433831))

(declare-fun m!1433843 () Bool)

(assert (=> b!1283520 m!1433843))

(declare-fun m!1433845 () Bool)

(assert (=> b!1283517 m!1433845))

(declare-fun m!1433847 () Bool)

(assert (=> b!1283521 m!1433847))

(assert (=> d!361475 d!361507))

(declare-fun d!361509 () Bool)

(assert (=> d!361509 true))

(declare-fun lambda!50310 () Int)

(declare-fun order!7757 () Int)

(declare-fun dynLambda!5551 (Int Int) Int)

(assert (=> d!361509 (< (dynLambda!5546 order!7747 (toChars!3220 (transformation!2188 (h!18139 rs!174)))) (dynLambda!5551 order!7757 lambda!50310))))

(assert (=> d!361509 true))

(assert (=> d!361509 (< (dynLambda!5544 order!7743 (toValue!3361 (transformation!2188 (h!18139 rs!174)))) (dynLambda!5551 order!7757 lambda!50310))))

(declare-fun Forall!491 (Int) Bool)

(assert (=> d!361509 (= (semiInverseModEq!824 (toChars!3220 (transformation!2188 (h!18139 rs!174))) (toValue!3361 (transformation!2188 (h!18139 rs!174)))) (Forall!491 lambda!50310))))

(declare-fun bs!327641 () Bool)

(assert (= bs!327641 d!361509))

(declare-fun m!1433849 () Bool)

(assert (=> bs!327641 m!1433849))

(assert (=> d!361465 d!361509))

(declare-fun d!361511 () Bool)

(declare-fun res!575757 () Bool)

(declare-fun e!822942 () Bool)

(assert (=> d!361511 (=> res!575757 e!822942)))

(assert (=> d!361511 (= res!575757 (is-Nil!12738 rs!174))))

(assert (=> d!361511 (= (noDuplicateTag!795 thiss!10944 rs!174 Nil!12744) e!822942)))

(declare-fun b!1283531 () Bool)

(declare-fun e!822943 () Bool)

(assert (=> b!1283531 (= e!822942 e!822943)))

(declare-fun res!575758 () Bool)

(assert (=> b!1283531 (=> (not res!575758) (not e!822943))))

(declare-fun contains!2133 (List!12810 String!15628) Bool)

(assert (=> b!1283531 (= res!575758 (not (contains!2133 Nil!12744 (tag!2450 (h!18139 rs!174)))))))

(declare-fun b!1283532 () Bool)

(assert (=> b!1283532 (= e!822943 (noDuplicateTag!795 thiss!10944 (t!116642 rs!174) (Cons!12744 (tag!2450 (h!18139 rs!174)) Nil!12744)))))

(assert (= (and d!361511 (not res!575757)) b!1283531))

(assert (= (and b!1283531 res!575758) b!1283532))

(declare-fun m!1433851 () Bool)

(assert (=> b!1283531 m!1433851))

(declare-fun m!1433853 () Bool)

(assert (=> b!1283532 m!1433853))

(assert (=> b!1283400 d!361511))

(declare-fun d!361513 () Bool)

(declare-fun res!575763 () Bool)

(declare-fun e!822946 () Bool)

(assert (=> d!361513 (=> (not res!575763) (not e!822946))))

(declare-fun list!4735 (IArray!8379) List!12805)

(assert (=> d!361513 (= res!575763 (<= (size!10381 (list!4735 (xs!6898 (c!211454 ts!110)))) 512))))

(assert (=> d!361513 (= (inv!17136 (c!211454 ts!110)) e!822946)))

(declare-fun b!1283537 () Bool)

(declare-fun res!575764 () Bool)

(assert (=> b!1283537 (=> (not res!575764) (not e!822946))))

(assert (=> b!1283537 (= res!575764 (= (csize!8605 (c!211454 ts!110)) (size!10381 (list!4735 (xs!6898 (c!211454 ts!110))))))))

(declare-fun b!1283538 () Bool)

(assert (=> b!1283538 (= e!822946 (and (> (csize!8605 (c!211454 ts!110)) 0) (<= (csize!8605 (c!211454 ts!110)) 512)))))

(assert (= (and d!361513 res!575763) b!1283537))

(assert (= (and b!1283537 res!575764) b!1283538))

(declare-fun m!1433855 () Bool)

(assert (=> d!361513 m!1433855))

(assert (=> d!361513 m!1433855))

(declare-fun m!1433857 () Bool)

(assert (=> d!361513 m!1433857))

(assert (=> b!1283537 m!1433855))

(assert (=> b!1283537 m!1433855))

(assert (=> b!1283537 m!1433857))

(assert (=> b!1283397 d!361513))

(declare-fun d!361515 () Bool)

(assert (=> d!361515 true))

(declare-fun lt!423332 () Bool)

(declare-fun rulesValidInductive!690 (LexerInterface!1883 List!12804) Bool)

(assert (=> d!361515 (= lt!423332 (rulesValidInductive!690 thiss!10944 rs!174))))

(declare-fun lambda!50313 () Int)

(declare-fun forall!3220 (List!12804 Int) Bool)

(assert (=> d!361515 (= lt!423332 (forall!3220 rs!174 lambda!50313))))

(assert (=> d!361515 (= (rulesValid!795 thiss!10944 rs!174) lt!423332)))

(declare-fun bs!327642 () Bool)

(assert (= bs!327642 d!361515))

(declare-fun m!1433859 () Bool)

(assert (=> bs!327642 m!1433859))

(declare-fun m!1433861 () Bool)

(assert (=> bs!327642 m!1433861))

(assert (=> d!361479 d!361515))

(declare-fun d!361517 () Bool)

(declare-fun res!575769 () Bool)

(declare-fun e!822951 () Bool)

(assert (=> d!361517 (=> res!575769 e!822951)))

(assert (=> d!361517 (= res!575769 (is-Nil!12739 (list!4732 ts!110)))))

(assert (=> d!361517 (= (forall!3216 (list!4732 ts!110) lambda!50301) e!822951)))

(declare-fun b!1283545 () Bool)

(declare-fun e!822952 () Bool)

(assert (=> b!1283545 (= e!822951 e!822952)))

(declare-fun res!575770 () Bool)

(assert (=> b!1283545 (=> (not res!575770) (not e!822952))))

(declare-fun dynLambda!5552 (Int Token!4038) Bool)

(assert (=> b!1283545 (= res!575770 (dynLambda!5552 lambda!50301 (h!18140 (list!4732 ts!110))))))

(declare-fun b!1283546 () Bool)

(assert (=> b!1283546 (= e!822952 (forall!3216 (t!116643 (list!4732 ts!110)) lambda!50301))))

(assert (= (and d!361517 (not res!575769)) b!1283545))

(assert (= (and b!1283545 res!575770) b!1283546))

(declare-fun b_lambda!36571 () Bool)

(assert (=> (not b_lambda!36571) (not b!1283545)))

(declare-fun m!1433863 () Bool)

(assert (=> b!1283545 m!1433863))

(declare-fun m!1433865 () Bool)

(assert (=> b!1283546 m!1433865))

(assert (=> d!361459 d!361517))

(assert (=> d!361459 d!361495))

(declare-fun b!1283555 () Bool)

(declare-fun e!822959 () Bool)

(declare-fun e!822960 () Bool)

(assert (=> b!1283555 (= e!822959 e!822960)))

(declare-fun c!211466 () Bool)

(assert (=> b!1283555 (= c!211466 (is-Leaf!6478 (c!211454 ts!110)))))

(declare-fun b!1283556 () Bool)

(declare-fun forall!3221 (IArray!8379 Int) Bool)

(assert (=> b!1283556 (= e!822960 (forall!3221 (xs!6898 (c!211454 ts!110)) lambda!50301))))

(declare-fun d!361519 () Bool)

(declare-fun lt!423337 () Bool)

(assert (=> d!361519 (= lt!423337 (forall!3216 (list!4734 (c!211454 ts!110)) lambda!50301))))

(assert (=> d!361519 (= lt!423337 e!822959)))

(declare-fun res!575776 () Bool)

(assert (=> d!361519 (=> res!575776 e!822959)))

(assert (=> d!361519 (= res!575776 (is-Empty!4187 (c!211454 ts!110)))))

(assert (=> d!361519 (= (forall!3217 (c!211454 ts!110) lambda!50301) lt!423337)))

(declare-fun b!1283558 () Bool)

(declare-fun e!822961 () Bool)

(assert (=> b!1283558 (= e!822961 (forall!3217 (right!11323 (c!211454 ts!110)) lambda!50301))))

(declare-fun b!1283557 () Bool)

(assert (=> b!1283557 (= e!822960 e!822961)))

(declare-datatypes ((Unit!18974 0))(
  ( (Unit!18975) )
))
(declare-fun lt!423338 () Unit!18974)

(declare-fun lemmaForallConcat!120 (List!12805 List!12805 Int) Unit!18974)

(assert (=> b!1283557 (= lt!423338 (lemmaForallConcat!120 (list!4734 (left!10993 (c!211454 ts!110))) (list!4734 (right!11323 (c!211454 ts!110))) lambda!50301))))

(declare-fun res!575775 () Bool)

(assert (=> b!1283557 (= res!575775 (forall!3217 (left!10993 (c!211454 ts!110)) lambda!50301))))

(assert (=> b!1283557 (=> (not res!575775) (not e!822961))))

(assert (= (and d!361519 (not res!575776)) b!1283555))

(assert (= (and b!1283555 c!211466) b!1283556))

(assert (= (and b!1283555 (not c!211466)) b!1283557))

(assert (= (and b!1283557 res!575775) b!1283558))

(declare-fun m!1433867 () Bool)

(assert (=> b!1283556 m!1433867))

(assert (=> d!361519 m!1433819))

(assert (=> d!361519 m!1433819))

(declare-fun m!1433869 () Bool)

(assert (=> d!361519 m!1433869))

(declare-fun m!1433871 () Bool)

(assert (=> b!1283558 m!1433871))

(declare-fun m!1433873 () Bool)

(assert (=> b!1283557 m!1433873))

(declare-fun m!1433875 () Bool)

(assert (=> b!1283557 m!1433875))

(assert (=> b!1283557 m!1433873))

(assert (=> b!1283557 m!1433875))

(declare-fun m!1433877 () Bool)

(assert (=> b!1283557 m!1433877))

(declare-fun m!1433879 () Bool)

(assert (=> b!1283557 m!1433879))

(assert (=> d!361459 d!361519))

(declare-fun d!361521 () Bool)

(declare-fun c!211467 () Bool)

(assert (=> d!361521 (= c!211467 (is-Node!4187 (left!10993 (c!211454 ts!110))))))

(declare-fun e!822962 () Bool)

(assert (=> d!361521 (= (inv!17129 (left!10993 (c!211454 ts!110))) e!822962)))

(declare-fun b!1283559 () Bool)

(assert (=> b!1283559 (= e!822962 (inv!17135 (left!10993 (c!211454 ts!110))))))

(declare-fun b!1283560 () Bool)

(declare-fun e!822963 () Bool)

(assert (=> b!1283560 (= e!822962 e!822963)))

(declare-fun res!575777 () Bool)

(assert (=> b!1283560 (= res!575777 (not (is-Leaf!6478 (left!10993 (c!211454 ts!110)))))))

(assert (=> b!1283560 (=> res!575777 e!822963)))

(declare-fun b!1283561 () Bool)

(assert (=> b!1283561 (= e!822963 (inv!17136 (left!10993 (c!211454 ts!110))))))

(assert (= (and d!361521 c!211467) b!1283559))

(assert (= (and d!361521 (not c!211467)) b!1283560))

(assert (= (and b!1283560 (not res!575777)) b!1283561))

(declare-fun m!1433881 () Bool)

(assert (=> b!1283559 m!1433881))

(declare-fun m!1433883 () Bool)

(assert (=> b!1283561 m!1433883))

(assert (=> b!1283432 d!361521))

(declare-fun d!361523 () Bool)

(declare-fun c!211468 () Bool)

(assert (=> d!361523 (= c!211468 (is-Node!4187 (right!11323 (c!211454 ts!110))))))

(declare-fun e!822964 () Bool)

(assert (=> d!361523 (= (inv!17129 (right!11323 (c!211454 ts!110))) e!822964)))

(declare-fun b!1283562 () Bool)

(assert (=> b!1283562 (= e!822964 (inv!17135 (right!11323 (c!211454 ts!110))))))

(declare-fun b!1283563 () Bool)

(declare-fun e!822965 () Bool)

(assert (=> b!1283563 (= e!822964 e!822965)))

(declare-fun res!575778 () Bool)

(assert (=> b!1283563 (= res!575778 (not (is-Leaf!6478 (right!11323 (c!211454 ts!110)))))))

(assert (=> b!1283563 (=> res!575778 e!822965)))

(declare-fun b!1283564 () Bool)

(assert (=> b!1283564 (= e!822965 (inv!17136 (right!11323 (c!211454 ts!110))))))

(assert (= (and d!361523 c!211468) b!1283562))

(assert (= (and d!361523 (not c!211468)) b!1283563))

(assert (= (and b!1283563 (not res!575778)) b!1283564))

(declare-fun m!1433885 () Bool)

(assert (=> b!1283562 m!1433885))

(declare-fun m!1433887 () Bool)

(assert (=> b!1283564 m!1433887))

(assert (=> b!1283432 d!361523))

(declare-fun b!1283567 () Bool)

(declare-fun e!822966 () Bool)

(declare-fun tp!373061 () Bool)

(assert (=> b!1283567 (= e!822966 tp!373061)))

(declare-fun b!1283565 () Bool)

(assert (=> b!1283565 (= e!822966 tp_is_empty!6531)))

(assert (=> b!1283414 (= tp!373000 e!822966)))

(declare-fun b!1283568 () Bool)

(declare-fun tp!373062 () Bool)

(declare-fun tp!373064 () Bool)

(assert (=> b!1283568 (= e!822966 (and tp!373062 tp!373064))))

(declare-fun b!1283566 () Bool)

(declare-fun tp!373060 () Bool)

(declare-fun tp!373063 () Bool)

(assert (=> b!1283566 (= e!822966 (and tp!373060 tp!373063))))

(assert (= (and b!1283414 (is-ElementMatch!3502 (regOne!7517 (regex!2188 (h!18139 rs!174))))) b!1283565))

(assert (= (and b!1283414 (is-Concat!5781 (regOne!7517 (regex!2188 (h!18139 rs!174))))) b!1283566))

(assert (= (and b!1283414 (is-Star!3502 (regOne!7517 (regex!2188 (h!18139 rs!174))))) b!1283567))

(assert (= (and b!1283414 (is-Union!3502 (regOne!7517 (regex!2188 (h!18139 rs!174))))) b!1283568))

(declare-fun b!1283571 () Bool)

(declare-fun e!822967 () Bool)

(declare-fun tp!373066 () Bool)

(assert (=> b!1283571 (= e!822967 tp!373066)))

(declare-fun b!1283569 () Bool)

(assert (=> b!1283569 (= e!822967 tp_is_empty!6531)))

(assert (=> b!1283414 (= tp!373002 e!822967)))

(declare-fun b!1283572 () Bool)

(declare-fun tp!373067 () Bool)

(declare-fun tp!373069 () Bool)

(assert (=> b!1283572 (= e!822967 (and tp!373067 tp!373069))))

(declare-fun b!1283570 () Bool)

(declare-fun tp!373065 () Bool)

(declare-fun tp!373068 () Bool)

(assert (=> b!1283570 (= e!822967 (and tp!373065 tp!373068))))

(assert (= (and b!1283414 (is-ElementMatch!3502 (regTwo!7517 (regex!2188 (h!18139 rs!174))))) b!1283569))

(assert (= (and b!1283414 (is-Concat!5781 (regTwo!7517 (regex!2188 (h!18139 rs!174))))) b!1283570))

(assert (= (and b!1283414 (is-Star!3502 (regTwo!7517 (regex!2188 (h!18139 rs!174))))) b!1283571))

(assert (= (and b!1283414 (is-Union!3502 (regTwo!7517 (regex!2188 (h!18139 rs!174))))) b!1283572))

(declare-fun b!1283586 () Bool)

(declare-fun b_free!30011 () Bool)

(declare-fun b_next!30715 () Bool)

(assert (=> b!1283586 (= b_free!30011 (not b_next!30715))))

(declare-fun tp!373081 () Bool)

(declare-fun b_and!85155 () Bool)

(assert (=> b!1283586 (= tp!373081 b_and!85155)))

(declare-fun b_free!30013 () Bool)

(declare-fun b_next!30717 () Bool)

(assert (=> b!1283586 (= b_free!30013 (not b_next!30717))))

(declare-fun tp!373080 () Bool)

(declare-fun b_and!85157 () Bool)

(assert (=> b!1283586 (= tp!373080 b_and!85157)))

(declare-fun tp!373082 () Bool)

(declare-fun e!822984 () Bool)

(declare-fun b!1283585 () Bool)

(declare-fun e!822980 () Bool)

(assert (=> b!1283585 (= e!822984 (and tp!373082 (inv!17126 (tag!2450 (rule!3927 (h!18140 (innerList!4247 (xs!6898 (c!211454 ts!110))))))) (inv!17131 (transformation!2188 (rule!3927 (h!18140 (innerList!4247 (xs!6898 (c!211454 ts!110))))))) e!822980))))

(declare-fun e!822982 () Bool)

(assert (=> b!1283434 (= tp!373011 e!822982)))

(declare-fun e!822981 () Bool)

(declare-fun tp!373084 () Bool)

(declare-fun b!1283583 () Bool)

(declare-fun inv!17141 (Token!4038) Bool)

(assert (=> b!1283583 (= e!822982 (and (inv!17141 (h!18140 (innerList!4247 (xs!6898 (c!211454 ts!110))))) e!822981 tp!373084))))

(declare-fun b!1283584 () Bool)

(declare-fun tp!373083 () Bool)

(declare-fun inv!21 (TokenValue!2278) Bool)

(assert (=> b!1283584 (= e!822981 (and (inv!21 (value!71992 (h!18140 (innerList!4247 (xs!6898 (c!211454 ts!110)))))) e!822984 tp!373083))))

(assert (=> b!1283586 (= e!822980 (and tp!373081 tp!373080))))

(assert (= b!1283585 b!1283586))

(assert (= b!1283584 b!1283585))

(assert (= b!1283583 b!1283584))

(assert (= (and b!1283434 (is-Cons!12739 (innerList!4247 (xs!6898 (c!211454 ts!110))))) b!1283583))

(declare-fun m!1433889 () Bool)

(assert (=> b!1283585 m!1433889))

(declare-fun m!1433891 () Bool)

(assert (=> b!1283585 m!1433891))

(declare-fun m!1433893 () Bool)

(assert (=> b!1283583 m!1433893))

(declare-fun m!1433895 () Bool)

(assert (=> b!1283584 m!1433895))

(declare-fun b!1283589 () Bool)

(declare-fun e!822988 () Bool)

(assert (=> b!1283589 (= e!822988 true)))

(declare-fun b!1283588 () Bool)

(declare-fun e!822987 () Bool)

(assert (=> b!1283588 (= e!822987 e!822988)))

(declare-fun b!1283587 () Bool)

(declare-fun e!822986 () Bool)

(assert (=> b!1283587 (= e!822986 e!822987)))

(assert (=> b!1283415 e!822986))

(assert (= b!1283588 b!1283589))

(assert (= b!1283587 b!1283588))

(assert (= (and b!1283415 (is-Cons!12738 (t!116642 (t!116642 rs!174)))) b!1283587))

(assert (=> b!1283589 (< (dynLambda!5544 order!7743 (toValue!3361 (transformation!2188 (h!18139 (t!116642 (t!116642 rs!174)))))) (dynLambda!5545 order!7745 lambda!50301))))

(assert (=> b!1283589 (< (dynLambda!5546 order!7747 (toChars!3220 (transformation!2188 (h!18139 (t!116642 (t!116642 rs!174)))))) (dynLambda!5545 order!7745 lambda!50301))))

(declare-fun b!1283592 () Bool)

(declare-fun e!822989 () Bool)

(declare-fun tp!373086 () Bool)

(assert (=> b!1283592 (= e!822989 tp!373086)))

(declare-fun b!1283590 () Bool)

(assert (=> b!1283590 (= e!822989 tp_is_empty!6531)))

(assert (=> b!1283413 (= tp!372999 e!822989)))

(declare-fun b!1283593 () Bool)

(declare-fun tp!373087 () Bool)

(declare-fun tp!373089 () Bool)

(assert (=> b!1283593 (= e!822989 (and tp!373087 tp!373089))))

(declare-fun b!1283591 () Bool)

(declare-fun tp!373085 () Bool)

(declare-fun tp!373088 () Bool)

(assert (=> b!1283591 (= e!822989 (and tp!373085 tp!373088))))

(assert (= (and b!1283413 (is-ElementMatch!3502 (reg!3831 (regex!2188 (h!18139 rs!174))))) b!1283590))

(assert (= (and b!1283413 (is-Concat!5781 (reg!3831 (regex!2188 (h!18139 rs!174))))) b!1283591))

(assert (= (and b!1283413 (is-Star!3502 (reg!3831 (regex!2188 (h!18139 rs!174))))) b!1283592))

(assert (= (and b!1283413 (is-Union!3502 (reg!3831 (regex!2188 (h!18139 rs!174))))) b!1283593))

(declare-fun b!1283596 () Bool)

(declare-fun e!822990 () Bool)

(declare-fun tp!373091 () Bool)

(assert (=> b!1283596 (= e!822990 tp!373091)))

(declare-fun b!1283594 () Bool)

(assert (=> b!1283594 (= e!822990 tp_is_empty!6531)))

(assert (=> b!1283412 (= tp!372998 e!822990)))

(declare-fun b!1283597 () Bool)

(declare-fun tp!373092 () Bool)

(declare-fun tp!373094 () Bool)

(assert (=> b!1283597 (= e!822990 (and tp!373092 tp!373094))))

(declare-fun b!1283595 () Bool)

(declare-fun tp!373090 () Bool)

(declare-fun tp!373093 () Bool)

(assert (=> b!1283595 (= e!822990 (and tp!373090 tp!373093))))

(assert (= (and b!1283412 (is-ElementMatch!3502 (regOne!7516 (regex!2188 (h!18139 rs!174))))) b!1283594))

(assert (= (and b!1283412 (is-Concat!5781 (regOne!7516 (regex!2188 (h!18139 rs!174))))) b!1283595))

(assert (= (and b!1283412 (is-Star!3502 (regOne!7516 (regex!2188 (h!18139 rs!174))))) b!1283596))

(assert (= (and b!1283412 (is-Union!3502 (regOne!7516 (regex!2188 (h!18139 rs!174))))) b!1283597))

(declare-fun b!1283600 () Bool)

(declare-fun e!822991 () Bool)

(declare-fun tp!373096 () Bool)

(assert (=> b!1283600 (= e!822991 tp!373096)))

(declare-fun b!1283598 () Bool)

(assert (=> b!1283598 (= e!822991 tp_is_empty!6531)))

(assert (=> b!1283412 (= tp!373001 e!822991)))

(declare-fun b!1283601 () Bool)

(declare-fun tp!373097 () Bool)

(declare-fun tp!373099 () Bool)

(assert (=> b!1283601 (= e!822991 (and tp!373097 tp!373099))))

(declare-fun b!1283599 () Bool)

(declare-fun tp!373095 () Bool)

(declare-fun tp!373098 () Bool)

(assert (=> b!1283599 (= e!822991 (and tp!373095 tp!373098))))

(assert (= (and b!1283412 (is-ElementMatch!3502 (regTwo!7516 (regex!2188 (h!18139 rs!174))))) b!1283598))

(assert (= (and b!1283412 (is-Concat!5781 (regTwo!7516 (regex!2188 (h!18139 rs!174))))) b!1283599))

(assert (= (and b!1283412 (is-Star!3502 (regTwo!7516 (regex!2188 (h!18139 rs!174))))) b!1283600))

(assert (= (and b!1283412 (is-Union!3502 (regTwo!7516 (regex!2188 (h!18139 rs!174))))) b!1283601))

(declare-fun b!1283604 () Bool)

(declare-fun e!822992 () Bool)

(declare-fun tp!373101 () Bool)

(assert (=> b!1283604 (= e!822992 tp!373101)))

(declare-fun b!1283602 () Bool)

(assert (=> b!1283602 (= e!822992 tp_is_empty!6531)))

(assert (=> b!1283447 (= tp!373021 e!822992)))

(declare-fun b!1283605 () Bool)

(declare-fun tp!373102 () Bool)

(declare-fun tp!373104 () Bool)

(assert (=> b!1283605 (= e!822992 (and tp!373102 tp!373104))))

(declare-fun b!1283603 () Bool)

(declare-fun tp!373100 () Bool)

(declare-fun tp!373103 () Bool)

(assert (=> b!1283603 (= e!822992 (and tp!373100 tp!373103))))

(assert (= (and b!1283447 (is-ElementMatch!3502 (regex!2188 (h!18139 (t!116642 rs!174))))) b!1283602))

(assert (= (and b!1283447 (is-Concat!5781 (regex!2188 (h!18139 (t!116642 rs!174))))) b!1283603))

(assert (= (and b!1283447 (is-Star!3502 (regex!2188 (h!18139 (t!116642 rs!174))))) b!1283604))

(assert (= (and b!1283447 (is-Union!3502 (regex!2188 (h!18139 (t!116642 rs!174))))) b!1283605))

(declare-fun tp!373105 () Bool)

(declare-fun b!1283606 () Bool)

(declare-fun e!822994 () Bool)

(declare-fun tp!373106 () Bool)

(assert (=> b!1283606 (= e!822994 (and (inv!17129 (left!10993 (left!10993 (c!211454 ts!110)))) tp!373106 (inv!17129 (right!11323 (left!10993 (c!211454 ts!110)))) tp!373105))))

(declare-fun b!1283608 () Bool)

(declare-fun e!822993 () Bool)

(declare-fun tp!373107 () Bool)

(assert (=> b!1283608 (= e!822993 tp!373107)))

(declare-fun b!1283607 () Bool)

(assert (=> b!1283607 (= e!822994 (and (inv!17137 (xs!6898 (left!10993 (c!211454 ts!110)))) e!822993))))

(assert (=> b!1283432 (= tp!373010 (and (inv!17129 (left!10993 (c!211454 ts!110))) e!822994))))

(assert (= (and b!1283432 (is-Node!4187 (left!10993 (c!211454 ts!110)))) b!1283606))

(assert (= b!1283607 b!1283608))

(assert (= (and b!1283432 (is-Leaf!6478 (left!10993 (c!211454 ts!110)))) b!1283607))

(declare-fun m!1433897 () Bool)

(assert (=> b!1283606 m!1433897))

(declare-fun m!1433899 () Bool)

(assert (=> b!1283606 m!1433899))

(declare-fun m!1433901 () Bool)

(assert (=> b!1283607 m!1433901))

(assert (=> b!1283432 m!1433779))

(declare-fun e!822996 () Bool)

(declare-fun tp!373108 () Bool)

(declare-fun b!1283609 () Bool)

(declare-fun tp!373109 () Bool)

(assert (=> b!1283609 (= e!822996 (and (inv!17129 (left!10993 (right!11323 (c!211454 ts!110)))) tp!373109 (inv!17129 (right!11323 (right!11323 (c!211454 ts!110)))) tp!373108))))

(declare-fun b!1283611 () Bool)

(declare-fun e!822995 () Bool)

(declare-fun tp!373110 () Bool)

(assert (=> b!1283611 (= e!822995 tp!373110)))

(declare-fun b!1283610 () Bool)

(assert (=> b!1283610 (= e!822996 (and (inv!17137 (xs!6898 (right!11323 (c!211454 ts!110)))) e!822995))))

(assert (=> b!1283432 (= tp!373009 (and (inv!17129 (right!11323 (c!211454 ts!110))) e!822996))))

(assert (= (and b!1283432 (is-Node!4187 (right!11323 (c!211454 ts!110)))) b!1283609))

(assert (= b!1283610 b!1283611))

(assert (= (and b!1283432 (is-Leaf!6478 (right!11323 (c!211454 ts!110)))) b!1283610))

(declare-fun m!1433903 () Bool)

(assert (=> b!1283609 m!1433903))

(declare-fun m!1433905 () Bool)

(assert (=> b!1283609 m!1433905))

(declare-fun m!1433907 () Bool)

(assert (=> b!1283610 m!1433907))

(assert (=> b!1283432 m!1433781))

(declare-fun b!1283614 () Bool)

(declare-fun b_free!30015 () Bool)

(declare-fun b_next!30719 () Bool)

(assert (=> b!1283614 (= b_free!30015 (not b_next!30719))))

(declare-fun tp!373114 () Bool)

(declare-fun b_and!85159 () Bool)

(assert (=> b!1283614 (= tp!373114 b_and!85159)))

(declare-fun b_free!30017 () Bool)

(declare-fun b_next!30721 () Bool)

(assert (=> b!1283614 (= b_free!30017 (not b_next!30721))))

(declare-fun tp!373111 () Bool)

(declare-fun b_and!85161 () Bool)

(assert (=> b!1283614 (= tp!373111 b_and!85161)))

(declare-fun e!823000 () Bool)

(assert (=> b!1283614 (= e!823000 (and tp!373114 tp!373111))))

(declare-fun e!822998 () Bool)

(declare-fun b!1283613 () Bool)

(declare-fun tp!373112 () Bool)

(assert (=> b!1283613 (= e!822998 (and tp!373112 (inv!17126 (tag!2450 (h!18139 (t!116642 (t!116642 rs!174))))) (inv!17131 (transformation!2188 (h!18139 (t!116642 (t!116642 rs!174))))) e!823000))))

(declare-fun b!1283612 () Bool)

(declare-fun e!822997 () Bool)

(declare-fun tp!373113 () Bool)

(assert (=> b!1283612 (= e!822997 (and e!822998 tp!373113))))

(assert (=> b!1283446 (= tp!373022 e!822997)))

(assert (= b!1283613 b!1283614))

(assert (= b!1283612 b!1283613))

(assert (= (and b!1283446 (is-Cons!12738 (t!116642 (t!116642 rs!174)))) b!1283612))

(declare-fun m!1433909 () Bool)

(assert (=> b!1283613 m!1433909))

(declare-fun m!1433911 () Bool)

(assert (=> b!1283613 m!1433911))

(declare-fun b_lambda!36573 () Bool)

(assert (= b_lambda!36571 (or b!1283331 b_lambda!36573)))

(declare-fun bs!327643 () Bool)

(declare-fun d!361527 () Bool)

(assert (= bs!327643 (and d!361527 b!1283331)))

(declare-fun rulesProduceIndividualToken!854 (LexerInterface!1883 List!12804 Token!4038) Bool)

(assert (=> bs!327643 (= (dynLambda!5552 lambda!50301 (h!18140 (list!4732 ts!110))) (rulesProduceIndividualToken!854 thiss!10944 rs!174 (h!18140 (list!4732 ts!110))))))

(declare-fun m!1433913 () Bool)

(assert (=> bs!327643 m!1433913))

(assert (=> b!1283545 d!361527))

(push 1)

(assert (not b!1283593))

(assert (not b_next!30699))

(assert b_and!85139)

(assert (not d!361513))

(assert (not b!1283604))

(assert (not b!1283595))

(assert (not b_next!30721))

(assert (not b!1283556))

(assert (not b_next!30701))

(assert (not b!1283557))

(assert (not d!361505))

(assert (not b!1283599))

(assert (not d!361499))

(assert (not b!1283566))

(assert tp_is_empty!6531)

(assert (not b!1283531))

(assert (not b!1283519))

(assert (not b!1283561))

(assert (not d!361495))

(assert (not b_next!30715))

(assert (not d!361509))

(assert (not b!1283498))

(assert (not b!1283606))

(assert (not d!361491))

(assert (not b!1283612))

(assert (not b!1283546))

(assert (not b!1283587))

(assert (not b!1283608))

(assert (not bs!327643))

(assert (not b!1283585))

(assert (not b!1283518))

(assert (not b!1283592))

(assert (not b!1283517))

(assert (not b!1283603))

(assert (not b!1283558))

(assert b_and!85157)

(assert (not b!1283611))

(assert (not d!361519))

(assert b_and!85147)

(assert (not b!1283562))

(assert (not b!1283520))

(assert (not b!1283537))

(assert (not b!1283600))

(assert b_and!85149)

(assert (not d!361497))

(assert (not b!1283609))

(assert b_and!85159)

(assert (not d!361503))

(assert (not b!1283613))

(assert (not b!1283610))

(assert (not b!1283522))

(assert (not b!1283584))

(assert (not d!361515))

(assert (not b!1283532))

(assert (not b!1283605))

(assert (not b!1283607))

(assert (not b!1283500))

(assert (not b_next!30719))

(assert (not b!1283567))

(assert (not b_lambda!36573))

(assert (not b!1283521))

(assert (not b!1283568))

(assert (not b!1283564))

(assert (not b_next!30717))

(assert (not b!1283591))

(assert (not b!1283570))

(assert (not b!1283601))

(assert (not b!1283571))

(assert (not b!1283597))

(assert b_and!85141)

(assert (not b!1283572))

(assert b_and!85161)

(assert (not b_next!30709))

(assert (not b!1283432))

(assert (not b_next!30707))

(assert (not b!1283596))

(assert (not b!1283559))

(assert (not b!1283583))

(assert b_and!85155)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30701))

(assert (not b_next!30715))

(assert (not b_next!30699))

(assert b_and!85157)

(assert b_and!85139)

(assert b_and!85147)

(assert b_and!85149)

(assert (not b_next!30721))

(assert b_and!85159)

(assert (not b_next!30719))

(assert (not b_next!30717))

(assert (not b_next!30707))

(assert b_and!85155)

(assert b_and!85141)

(assert b_and!85161)

(assert (not b_next!30709))

(check-sat)

(pop 1)

