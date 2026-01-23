; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185772 () Bool)

(assert start!185772)

(declare-datatypes ((List!20705 0))(
  ( (Nil!20625) (Cons!20625 (h!26026 (_ BitVec 16)) (t!172624 List!20705)) )
))
(declare-datatypes ((IArray!13649 0))(
  ( (IArray!13650 (innerList!6882 List!20705)) )
))
(declare-datatypes ((Conc!6822 0))(
  ( (Node!6822 (left!16566 Conc!6822) (right!16896 Conc!6822) (csize!13874 Int) (cheight!7033 Int)) (Leaf!10001 (xs!9698 IArray!13649) (csize!13875 Int)) (Empty!6822) )
))
(declare-datatypes ((BalanceConc!13574 0))(
  ( (BalanceConc!13575 (c!302854 Conc!6822)) )
))
(declare-fun v!4217 () BalanceConc!13574)

(declare-datatypes ((TokenValue!3806 0))(
  ( (FloatLiteralValue!7612 (text!27087 List!20705)) (TokenValueExt!3805 (__x!12995 Int)) (Broken!19030 (value!115821 List!20705)) (Object!3885) (End!3806) (Def!3806) (Underscore!3806) (Match!3806) (Else!3806) (Error!3806) (Case!3806) (If!3806) (Extends!3806) (Abstract!3806) (Class!3806) (Val!3806) (DelimiterValue!7612 (del!3866 List!20705)) (KeywordValue!3812 (value!115822 List!20705)) (CommentValue!7612 (value!115823 List!20705)) (WhitespaceValue!7612 (value!115824 List!20705)) (IndentationValue!3806 (value!115825 List!20705)) (String!23697) (Int32!3806) (Broken!19031 (value!115826 List!20705)) (Boolean!3807) (Unit!35238) (OperatorValue!3809 (op!3866 List!20705)) (IdentifierValue!7612 (value!115827 List!20705)) (IdentifierValue!7613 (value!115828 List!20705)) (WhitespaceValue!7613 (value!115829 List!20705)) (True!7612) (False!7612) (Broken!19032 (value!115830 List!20705)) (Broken!19033 (value!115831 List!20705)) (True!7613) (RightBrace!3806) (RightBracket!3806) (Colon!3806) (Null!3806) (Comma!3806) (LeftBracket!3806) (False!7613) (LeftBrace!3806) (ImaginaryLiteralValue!3806 (text!27088 List!20705)) (StringLiteralValue!11418 (value!115832 List!20705)) (EOFValue!3806 (value!115833 List!20705)) (IdentValue!3806 (value!115834 List!20705)) (DelimiterValue!7613 (value!115835 List!20705)) (DedentValue!3806 (value!115836 List!20705)) (NewLineValue!3806 (value!115837 List!20705)) (IntegerValue!11418 (value!115838 (_ BitVec 32)) (text!27089 List!20705)) (IntegerValue!11419 (value!115839 Int) (text!27090 List!20705)) (Times!3806) (Or!3806) (Equal!3806) (Minus!3806) (Broken!19034 (value!115840 List!20705)) (And!3806) (Div!3806) (LessEqual!3806) (Mod!3806) (Concat!8868) (Not!3806) (Plus!3806) (SpaceValue!3806 (value!115841 List!20705)) (IntegerValue!11420 (value!115842 Int) (text!27091 List!20705)) (StringLiteralValue!11419 (text!27092 List!20705)) (FloatLiteralValue!7613 (text!27093 List!20705)) (BytesLiteralValue!3806 (value!115843 List!20705)) (CommentValue!7613 (value!115844 List!20705)) (StringLiteralValue!11420 (value!115845 List!20705)) (ErrorTokenValue!3806 (msg!3867 List!20705)) )
))
(declare-fun inv!21 (TokenValue!3806) Bool)

(declare-fun efficientList!245 (BalanceConc!13574) List!20705)

(assert (=> start!185772 (not (inv!21 (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(declare-fun e!1187724 () Bool)

(declare-fun inv!27097 (BalanceConc!13574) Bool)

(assert (=> start!185772 (and (inv!27097 v!4217) e!1187724)))

(declare-fun b!1859804 () Bool)

(declare-fun tp!530060 () Bool)

(declare-fun inv!27098 (Conc!6822) Bool)

(assert (=> b!1859804 (= e!1187724 (and (inv!27098 (c!302854 v!4217)) tp!530060))))

(assert (= start!185772 b!1859804))

(declare-fun m!2283373 () Bool)

(assert (=> start!185772 m!2283373))

(declare-fun m!2283375 () Bool)

(assert (=> start!185772 m!2283375))

(declare-fun m!2283377 () Bool)

(assert (=> start!185772 m!2283377))

(declare-fun m!2283379 () Bool)

(assert (=> b!1859804 m!2283379))

(check-sat (not start!185772) (not b!1859804))
(check-sat)
(get-model)

(declare-fun d!567511 () Bool)

(declare-fun c!302863 () Bool)

(get-info :version)

(assert (=> d!567511 (= c!302863 ((_ is IntegerValue!11418) (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(declare-fun e!1187738 () Bool)

(assert (=> d!567511 (= (inv!21 (WhitespaceValue!7612 (efficientList!245 v!4217))) e!1187738)))

(declare-fun b!1859825 () Bool)

(declare-fun inv!16 (TokenValue!3806) Bool)

(assert (=> b!1859825 (= e!1187738 (inv!16 (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(declare-fun b!1859826 () Bool)

(declare-fun e!1187737 () Bool)

(assert (=> b!1859826 (= e!1187738 e!1187737)))

(declare-fun c!302864 () Bool)

(assert (=> b!1859826 (= c!302864 ((_ is IntegerValue!11419) (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(declare-fun b!1859827 () Bool)

(declare-fun inv!17 (TokenValue!3806) Bool)

(assert (=> b!1859827 (= e!1187737 (inv!17 (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(declare-fun b!1859828 () Bool)

(declare-fun res!832899 () Bool)

(declare-fun e!1187739 () Bool)

(assert (=> b!1859828 (=> res!832899 e!1187739)))

(assert (=> b!1859828 (= res!832899 (not ((_ is IntegerValue!11420) (WhitespaceValue!7612 (efficientList!245 v!4217)))))))

(assert (=> b!1859828 (= e!1187737 e!1187739)))

(declare-fun b!1859829 () Bool)

(declare-fun inv!15 (TokenValue!3806) Bool)

(assert (=> b!1859829 (= e!1187739 (inv!15 (WhitespaceValue!7612 (efficientList!245 v!4217))))))

(assert (= (and d!567511 c!302863) b!1859825))

(assert (= (and d!567511 (not c!302863)) b!1859826))

(assert (= (and b!1859826 c!302864) b!1859827))

(assert (= (and b!1859826 (not c!302864)) b!1859828))

(assert (= (and b!1859828 (not res!832899)) b!1859829))

(declare-fun m!2283381 () Bool)

(assert (=> b!1859825 m!2283381))

(declare-fun m!2283383 () Bool)

(assert (=> b!1859827 m!2283383))

(declare-fun m!2283385 () Bool)

(assert (=> b!1859829 m!2283385))

(assert (=> start!185772 d!567511))

(declare-fun d!567515 () Bool)

(declare-fun lt!717602 () List!20705)

(declare-fun list!8372 (BalanceConc!13574) List!20705)

(assert (=> d!567515 (= lt!717602 (list!8372 v!4217))))

(declare-fun efficientList!246 (Conc!6822 List!20705) List!20705)

(declare-fun efficientList$default$2!83 (Conc!6822) List!20705)

(assert (=> d!567515 (= lt!717602 (efficientList!246 (c!302854 v!4217) (efficientList$default$2!83 (c!302854 v!4217))))))

(assert (=> d!567515 (= (efficientList!245 v!4217) lt!717602)))

(declare-fun bs!411088 () Bool)

(assert (= bs!411088 d!567515))

(declare-fun m!2283393 () Bool)

(assert (=> bs!411088 m!2283393))

(declare-fun m!2283395 () Bool)

(assert (=> bs!411088 m!2283395))

(assert (=> bs!411088 m!2283395))

(declare-fun m!2283397 () Bool)

(assert (=> bs!411088 m!2283397))

(assert (=> start!185772 d!567515))

(declare-fun d!567519 () Bool)

(declare-fun isBalanced!2128 (Conc!6822) Bool)

(assert (=> d!567519 (= (inv!27097 v!4217) (isBalanced!2128 (c!302854 v!4217)))))

(declare-fun bs!411090 () Bool)

(assert (= bs!411090 d!567519))

(declare-fun m!2283405 () Bool)

(assert (=> bs!411090 m!2283405))

(assert (=> start!185772 d!567519))

(declare-fun d!567523 () Bool)

(declare-fun c!302871 () Bool)

(assert (=> d!567523 (= c!302871 ((_ is Node!6822) (c!302854 v!4217)))))

(declare-fun e!1187751 () Bool)

(assert (=> d!567523 (= (inv!27098 (c!302854 v!4217)) e!1187751)))

(declare-fun b!1859847 () Bool)

(declare-fun inv!27099 (Conc!6822) Bool)

(assert (=> b!1859847 (= e!1187751 (inv!27099 (c!302854 v!4217)))))

(declare-fun b!1859848 () Bool)

(declare-fun e!1187752 () Bool)

(assert (=> b!1859848 (= e!1187751 e!1187752)))

(declare-fun res!832905 () Bool)

(assert (=> b!1859848 (= res!832905 (not ((_ is Leaf!10001) (c!302854 v!4217))))))

(assert (=> b!1859848 (=> res!832905 e!1187752)))

(declare-fun b!1859849 () Bool)

(declare-fun inv!27100 (Conc!6822) Bool)

(assert (=> b!1859849 (= e!1187752 (inv!27100 (c!302854 v!4217)))))

(assert (= (and d!567523 c!302871) b!1859847))

(assert (= (and d!567523 (not c!302871)) b!1859848))

(assert (= (and b!1859848 (not res!832905)) b!1859849))

(declare-fun m!2283409 () Bool)

(assert (=> b!1859847 m!2283409))

(declare-fun m!2283411 () Bool)

(assert (=> b!1859849 m!2283411))

(assert (=> b!1859804 d!567523))

(declare-fun e!1187761 () Bool)

(declare-fun tp!530069 () Bool)

(declare-fun tp!530070 () Bool)

(declare-fun b!1859865 () Bool)

(assert (=> b!1859865 (= e!1187761 (and (inv!27098 (left!16566 (c!302854 v!4217))) tp!530069 (inv!27098 (right!16896 (c!302854 v!4217))) tp!530070))))

(declare-fun b!1859866 () Bool)

(declare-fun inv!27101 (IArray!13649) Bool)

(assert (=> b!1859866 (= e!1187761 (inv!27101 (xs!9698 (c!302854 v!4217))))))

(assert (=> b!1859804 (= tp!530060 (and (inv!27098 (c!302854 v!4217)) e!1187761))))

(assert (= (and b!1859804 ((_ is Node!6822) (c!302854 v!4217))) b!1859865))

(assert (= (and b!1859804 ((_ is Leaf!10001) (c!302854 v!4217))) b!1859866))

(declare-fun m!2283417 () Bool)

(assert (=> b!1859865 m!2283417))

(declare-fun m!2283419 () Bool)

(assert (=> b!1859865 m!2283419))

(declare-fun m!2283421 () Bool)

(assert (=> b!1859866 m!2283421))

(assert (=> b!1859804 m!2283379))

(check-sat (not d!567519) (not b!1859849) (not b!1859827) (not b!1859847) (not d!567515) (not b!1859866) (not b!1859829) (not b!1859825) (not b!1859804) (not b!1859865))
(check-sat)
