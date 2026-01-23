; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410146 () Bool)

(assert start!410146)

(declare-datatypes ((List!47447 0))(
  ( (Nil!47323) (Cons!47323 (h!52743 (_ BitVec 16)) (t!353856 List!47447)) )
))
(declare-datatypes ((IArray!28615 0))(
  ( (IArray!28616 (innerList!14365 List!47447)) )
))
(declare-datatypes ((Conc!14305 0))(
  ( (Node!14305 (left!35204 Conc!14305) (right!35534 Conc!14305) (csize!28840 Int) (cheight!14516 Int)) (Leaf!22113 (xs!17611 IArray!28615) (csize!28841 Int)) (Empty!14305) )
))
(declare-datatypes ((BalanceConc!28120 0))(
  ( (BalanceConc!28121 (c!727076 Conc!14305)) )
))
(declare-fun v!3972 () BalanceConc!28120)

(declare-datatypes ((TokenValue!8278 0))(
  ( (FloatLiteralValue!16556 (text!58391 List!47447)) (TokenValueExt!8277 (__x!28724 Int)) (Broken!41390 (value!249843 List!47447)) (Object!8401) (End!8278) (Def!8278) (Underscore!8278) (Match!8278) (Else!8278) (Error!8278) (Case!8278) (If!8278) (Extends!8278) (Abstract!8278) (Class!8278) (Val!8278) (DelimiterValue!16556 (del!8338 List!47447)) (KeywordValue!8284 (value!249844 List!47447)) (CommentValue!16556 (value!249845 List!47447)) (WhitespaceValue!16556 (value!249846 List!47447)) (IndentationValue!8278 (value!249847 List!47447)) (String!55309) (Int32!8278) (Broken!41391 (value!249848 List!47447)) (Boolean!8279) (Unit!66256) (OperatorValue!8281 (op!8338 List!47447)) (IdentifierValue!16556 (value!249849 List!47447)) (IdentifierValue!16557 (value!249850 List!47447)) (WhitespaceValue!16557 (value!249851 List!47447)) (True!16556) (False!16556) (Broken!41392 (value!249852 List!47447)) (Broken!41393 (value!249853 List!47447)) (True!16557) (RightBrace!8278) (RightBracket!8278) (Colon!8278) (Null!8278) (Comma!8278) (LeftBracket!8278) (False!16557) (LeftBrace!8278) (ImaginaryLiteralValue!8278 (text!58392 List!47447)) (StringLiteralValue!24834 (value!249854 List!47447)) (EOFValue!8278 (value!249855 List!47447)) (IdentValue!8278 (value!249856 List!47447)) (DelimiterValue!16557 (value!249857 List!47447)) (DedentValue!8278 (value!249858 List!47447)) (NewLineValue!8278 (value!249859 List!47447)) (IntegerValue!24834 (value!249860 (_ BitVec 32)) (text!58393 List!47447)) (IntegerValue!24835 (value!249861 Int) (text!58394 List!47447)) (Times!8278) (Or!8278) (Equal!8278) (Minus!8278) (Broken!41394 (value!249862 List!47447)) (And!8278) (Div!8278) (LessEqual!8278) (Mod!8278) (Concat!21176) (Not!8278) (Plus!8278) (SpaceValue!8278 (value!249863 List!47447)) (IntegerValue!24836 (value!249864 Int) (text!58395 List!47447)) (StringLiteralValue!24835 (text!58396 List!47447)) (FloatLiteralValue!16557 (text!58397 List!47447)) (BytesLiteralValue!8278 (value!249865 List!47447)) (CommentValue!16557 (value!249866 List!47447)) (StringLiteralValue!24836 (value!249867 List!47447)) (ErrorTokenValue!8278 (msg!8339 List!47447)) )
))
(declare-fun inv!21 (TokenValue!8278) Bool)

(declare-fun efficientList!537 (BalanceConc!28120) List!47447)

(assert (=> start!410146 (not (inv!21 (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(declare-fun e!2652887 () Bool)

(declare-fun inv!62517 (BalanceConc!28120) Bool)

(assert (=> start!410146 (and (inv!62517 v!3972) e!2652887)))

(declare-fun b!4272748 () Bool)

(declare-fun tp!1308306 () Bool)

(declare-fun inv!62518 (Conc!14305) Bool)

(assert (=> b!4272748 (= e!2652887 (and (inv!62518 (c!727076 v!3972)) tp!1308306))))

(assert (= start!410146 b!4272748))

(declare-fun m!4866659 () Bool)

(assert (=> start!410146 m!4866659))

(declare-fun m!4866661 () Bool)

(assert (=> start!410146 m!4866661))

(declare-fun m!4866663 () Bool)

(assert (=> start!410146 m!4866663))

(declare-fun m!4866665 () Bool)

(assert (=> b!4272748 m!4866665))

(check-sat (not start!410146) (not b!4272748))
(check-sat)
(get-model)

(declare-fun b!4272778 () Bool)

(declare-fun e!2652906 () Bool)

(declare-fun inv!16 (TokenValue!8278) Bool)

(assert (=> b!4272778 (= e!2652906 (inv!16 (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(declare-fun b!4272779 () Bool)

(declare-fun e!2652908 () Bool)

(declare-fun inv!15 (TokenValue!8278) Bool)

(assert (=> b!4272779 (= e!2652908 (inv!15 (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(declare-fun b!4272780 () Bool)

(declare-fun res!1755040 () Bool)

(assert (=> b!4272780 (=> res!1755040 e!2652908)))

(get-info :version)

(assert (=> b!4272780 (= res!1755040 (not ((_ is IntegerValue!24836) (StringLiteralValue!24836 (efficientList!537 v!3972)))))))

(declare-fun e!2652907 () Bool)

(assert (=> b!4272780 (= e!2652907 e!2652908)))

(declare-fun d!1260506 () Bool)

(declare-fun c!727088 () Bool)

(assert (=> d!1260506 (= c!727088 ((_ is IntegerValue!24834) (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(assert (=> d!1260506 (= (inv!21 (StringLiteralValue!24836 (efficientList!537 v!3972))) e!2652906)))

(declare-fun b!4272781 () Bool)

(declare-fun inv!17 (TokenValue!8278) Bool)

(assert (=> b!4272781 (= e!2652907 (inv!17 (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(declare-fun b!4272782 () Bool)

(assert (=> b!4272782 (= e!2652906 e!2652907)))

(declare-fun c!727089 () Bool)

(assert (=> b!4272782 (= c!727089 ((_ is IntegerValue!24835) (StringLiteralValue!24836 (efficientList!537 v!3972))))))

(assert (= (and d!1260506 c!727088) b!4272778))

(assert (= (and d!1260506 (not c!727088)) b!4272782))

(assert (= (and b!4272782 c!727089) b!4272781))

(assert (= (and b!4272782 (not c!727089)) b!4272780))

(assert (= (and b!4272780 (not res!1755040)) b!4272779))

(declare-fun m!4866671 () Bool)

(assert (=> b!4272778 m!4866671))

(declare-fun m!4866673 () Bool)

(assert (=> b!4272779 m!4866673))

(declare-fun m!4866675 () Bool)

(assert (=> b!4272781 m!4866675))

(assert (=> start!410146 d!1260506))

(declare-fun d!1260510 () Bool)

(declare-fun lt!1513105 () List!47447)

(declare-fun list!17200 (BalanceConc!28120) List!47447)

(assert (=> d!1260510 (= lt!1513105 (list!17200 v!3972))))

(declare-fun efficientList!538 (Conc!14305 List!47447) List!47447)

(declare-fun efficientList$default$2!186 (Conc!14305) List!47447)

(assert (=> d!1260510 (= lt!1513105 (efficientList!538 (c!727076 v!3972) (efficientList$default$2!186 (c!727076 v!3972))))))

(assert (=> d!1260510 (= (efficientList!537 v!3972) lt!1513105)))

(declare-fun bs!601540 () Bool)

(assert (= bs!601540 d!1260510))

(declare-fun m!4866683 () Bool)

(assert (=> bs!601540 m!4866683))

(declare-fun m!4866685 () Bool)

(assert (=> bs!601540 m!4866685))

(assert (=> bs!601540 m!4866685))

(declare-fun m!4866687 () Bool)

(assert (=> bs!601540 m!4866687))

(assert (=> start!410146 d!1260510))

(declare-fun d!1260514 () Bool)

(declare-fun isBalanced!3850 (Conc!14305) Bool)

(assert (=> d!1260514 (= (inv!62517 v!3972) (isBalanced!3850 (c!727076 v!3972)))))

(declare-fun bs!601542 () Bool)

(assert (= bs!601542 d!1260514))

(declare-fun m!4866695 () Bool)

(assert (=> bs!601542 m!4866695))

(assert (=> start!410146 d!1260514))

(declare-fun d!1260518 () Bool)

(declare-fun c!727094 () Bool)

(assert (=> d!1260518 (= c!727094 ((_ is Node!14305) (c!727076 v!3972)))))

(declare-fun e!2652922 () Bool)

(assert (=> d!1260518 (= (inv!62518 (c!727076 v!3972)) e!2652922)))

(declare-fun b!4272802 () Bool)

(declare-fun inv!62521 (Conc!14305) Bool)

(assert (=> b!4272802 (= e!2652922 (inv!62521 (c!727076 v!3972)))))

(declare-fun b!4272803 () Bool)

(declare-fun e!2652923 () Bool)

(assert (=> b!4272803 (= e!2652922 e!2652923)))

(declare-fun res!1755044 () Bool)

(assert (=> b!4272803 (= res!1755044 (not ((_ is Leaf!22113) (c!727076 v!3972))))))

(assert (=> b!4272803 (=> res!1755044 e!2652923)))

(declare-fun b!4272804 () Bool)

(declare-fun inv!62522 (Conc!14305) Bool)

(assert (=> b!4272804 (= e!2652923 (inv!62522 (c!727076 v!3972)))))

(assert (= (and d!1260518 c!727094) b!4272802))

(assert (= (and d!1260518 (not c!727094)) b!4272803))

(assert (= (and b!4272803 (not res!1755044)) b!4272804))

(declare-fun m!4866705 () Bool)

(assert (=> b!4272802 m!4866705))

(declare-fun m!4866707 () Bool)

(assert (=> b!4272804 m!4866707))

(assert (=> b!4272748 d!1260518))

(declare-fun tp!1308317 () Bool)

(declare-fun e!2652928 () Bool)

(declare-fun tp!1308318 () Bool)

(declare-fun b!4272811 () Bool)

(assert (=> b!4272811 (= e!2652928 (and (inv!62518 (left!35204 (c!727076 v!3972))) tp!1308317 (inv!62518 (right!35534 (c!727076 v!3972))) tp!1308318))))

(declare-fun b!4272812 () Bool)

(declare-fun inv!62524 (IArray!28615) Bool)

(assert (=> b!4272812 (= e!2652928 (inv!62524 (xs!17611 (c!727076 v!3972))))))

(assert (=> b!4272748 (= tp!1308306 (and (inv!62518 (c!727076 v!3972)) e!2652928))))

(assert (= (and b!4272748 ((_ is Node!14305) (c!727076 v!3972))) b!4272811))

(assert (= (and b!4272748 ((_ is Leaf!22113) (c!727076 v!3972))) b!4272812))

(declare-fun m!4866709 () Bool)

(assert (=> b!4272811 m!4866709))

(declare-fun m!4866711 () Bool)

(assert (=> b!4272811 m!4866711))

(declare-fun m!4866713 () Bool)

(assert (=> b!4272812 m!4866713))

(assert (=> b!4272748 m!4866665))

(check-sat (not b!4272811) (not b!4272804) (not b!4272748) (not b!4272802) (not b!4272812) (not d!1260510) (not b!4272781) (not b!4272779) (not d!1260514) (not b!4272778))
(check-sat)
