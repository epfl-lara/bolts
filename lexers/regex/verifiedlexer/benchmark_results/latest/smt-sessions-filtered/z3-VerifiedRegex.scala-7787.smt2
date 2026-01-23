; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409196 () Bool)

(assert start!409196)

(declare-fun res!1753824 () Bool)

(declare-fun e!2650416 () Bool)

(assert (=> start!409196 (=> (not res!1753824) (not e!2650416))))

(declare-datatypes ((List!47407 0))(
  ( (Nil!47283) (Cons!47283 (h!52703 (_ BitVec 16)) (t!353578 List!47407)) )
))
(declare-fun lt!1512328 () List!47407)

(assert (=> start!409196 (= res!1753824 (and (not (= lt!1512328 (Cons!47283 #x0049 (Cons!47283 #x006E (Cons!47283 #x0074 (Cons!47283 #x0028 (Cons!47283 #x0033 (Cons!47283 #x0032 (Cons!47283 #x0029 Nil!47283))))))))) (not (= lt!1512328 (Cons!47283 #x0055 (Cons!47283 #x006E (Cons!47283 #x0069 (Cons!47283 #x0074 Nil!47283)))))) (not (= lt!1512328 (Cons!47283 #x0042 (Cons!47283 #x006F (Cons!47283 #x006F (Cons!47283 #x006C (Cons!47283 #x0065 (Cons!47283 #x0061 (Cons!47283 #x006E Nil!47283))))))))) (not (= lt!1512328 (Cons!47283 #x0053 (Cons!47283 #x0074 (Cons!47283 #x0072 (Cons!47283 #x0069 (Cons!47283 #x006E (Cons!47283 #x0067 Nil!47283))))))))))))

(declare-datatypes ((IArray!28535 0))(
  ( (IArray!28536 (innerList!14325 List!47407)) )
))
(declare-datatypes ((Conc!14265 0))(
  ( (Node!14265 (left!35084 Conc!14265) (right!35414 Conc!14265) (csize!28760 Int) (cheight!14476 Int)) (Leaf!22053 (xs!17571 IArray!28535) (csize!28761 Int)) (Empty!14265) )
))
(declare-datatypes ((BalanceConc!28040 0))(
  ( (BalanceConc!28041 (c!726072 Conc!14265)) )
))
(declare-fun v!3898 () BalanceConc!28040)

(declare-fun efficientList!450 (BalanceConc!28040) List!47407)

(assert (=> start!409196 (= lt!1512328 (efficientList!450 v!3898))))

(assert (=> start!409196 e!2650416))

(declare-fun e!2650417 () Bool)

(declare-fun inv!62276 (BalanceConc!28040) Bool)

(assert (=> start!409196 (and (inv!62276 v!3898) e!2650417)))

(declare-fun b!4268880 () Bool)

(declare-datatypes ((TokenValue!8238 0))(
  ( (FloatLiteralValue!16476 (text!58111 List!47407)) (TokenValueExt!8237 (__x!28684 Int)) (Broken!41190 (value!248783 List!47407)) (Object!8361) (End!8238) (Def!8238) (Underscore!8238) (Match!8238) (Else!8238) (Error!8238) (Case!8238) (If!8238) (Extends!8238) (Abstract!8238) (Class!8238) (Val!8238) (DelimiterValue!16476 (del!8298 List!47407)) (KeywordValue!8244 (value!248784 List!47407)) (CommentValue!16476 (value!248785 List!47407)) (WhitespaceValue!16476 (value!248786 List!47407)) (IndentationValue!8238 (value!248787 List!47407)) (String!55189) (Int32!8238) (Broken!41191 (value!248788 List!47407)) (Boolean!8239) (Unit!66180) (OperatorValue!8241 (op!8298 List!47407)) (IdentifierValue!16476 (value!248789 List!47407)) (IdentifierValue!16477 (value!248790 List!47407)) (WhitespaceValue!16477 (value!248791 List!47407)) (True!16476) (False!16476) (Broken!41192 (value!248792 List!47407)) (Broken!41193 (value!248793 List!47407)) (True!16477) (RightBrace!8238) (RightBracket!8238) (Colon!8238) (Null!8238) (Comma!8238) (LeftBracket!8238) (False!16477) (LeftBrace!8238) (ImaginaryLiteralValue!8238 (text!58112 List!47407)) (StringLiteralValue!24714 (value!248794 List!47407)) (EOFValue!8238 (value!248795 List!47407)) (IdentValue!8238 (value!248796 List!47407)) (DelimiterValue!16477 (value!248797 List!47407)) (DedentValue!8238 (value!248798 List!47407)) (NewLineValue!8238 (value!248799 List!47407)) (IntegerValue!24714 (value!248800 (_ BitVec 32)) (text!58113 List!47407)) (IntegerValue!24715 (value!248801 Int) (text!58114 List!47407)) (Times!8238) (Or!8238) (Equal!8238) (Minus!8238) (Broken!41194 (value!248802 List!47407)) (And!8238) (Div!8238) (LessEqual!8238) (Mod!8238) (Concat!21136) (Not!8238) (Plus!8238) (SpaceValue!8238 (value!248803 List!47407)) (IntegerValue!24716 (value!248804 Int) (text!58115 List!47407)) (StringLiteralValue!24715 (text!58116 List!47407)) (FloatLiteralValue!16477 (text!58117 List!47407)) (BytesLiteralValue!8238 (value!248805 List!47407)) (CommentValue!16477 (value!248806 List!47407)) (StringLiteralValue!24716 (value!248807 List!47407)) (ErrorTokenValue!8238 (msg!8299 List!47407)) )
))
(declare-fun inv!21 (TokenValue!8238) Bool)

(assert (=> b!4268880 (= e!2650416 (not (inv!21 (Broken!41191 lt!1512328))))))

(declare-fun b!4268881 () Bool)

(declare-fun tp!1307730 () Bool)

(declare-fun inv!62277 (Conc!14265) Bool)

(assert (=> b!4268881 (= e!2650417 (and (inv!62277 (c!726072 v!3898)) tp!1307730))))

(assert (= (and start!409196 res!1753824) b!4268880))

(assert (= start!409196 b!4268881))

(declare-fun m!4861581 () Bool)

(assert (=> start!409196 m!4861581))

(declare-fun m!4861583 () Bool)

(assert (=> start!409196 m!4861583))

(declare-fun m!4861585 () Bool)

(assert (=> b!4268880 m!4861585))

(declare-fun m!4861587 () Bool)

(assert (=> b!4268881 m!4861587))

(check-sat (not start!409196) (not b!4268881) (not b!4268880))
(check-sat)
(get-model)

(declare-fun d!1258792 () Bool)

(declare-fun lt!1512331 () List!47407)

(declare-fun list!17107 (BalanceConc!28040) List!47407)

(assert (=> d!1258792 (= lt!1512331 (list!17107 v!3898))))

(declare-fun efficientList!451 (Conc!14265 List!47407) List!47407)

(declare-fun efficientList$default$2!155 (Conc!14265) List!47407)

(assert (=> d!1258792 (= lt!1512331 (efficientList!451 (c!726072 v!3898) (efficientList$default$2!155 (c!726072 v!3898))))))

(assert (=> d!1258792 (= (efficientList!450 v!3898) lt!1512331)))

(declare-fun bs!599965 () Bool)

(assert (= bs!599965 d!1258792))

(declare-fun m!4861595 () Bool)

(assert (=> bs!599965 m!4861595))

(declare-fun m!4861597 () Bool)

(assert (=> bs!599965 m!4861597))

(assert (=> bs!599965 m!4861597))

(declare-fun m!4861599 () Bool)

(assert (=> bs!599965 m!4861599))

(assert (=> start!409196 d!1258792))

(declare-fun d!1258796 () Bool)

(declare-fun isBalanced!3820 (Conc!14265) Bool)

(assert (=> d!1258796 (= (inv!62276 v!3898) (isBalanced!3820 (c!726072 v!3898)))))

(declare-fun bs!599966 () Bool)

(assert (= bs!599966 d!1258796))

(declare-fun m!4861601 () Bool)

(assert (=> bs!599966 m!4861601))

(assert (=> start!409196 d!1258796))

(declare-fun d!1258798 () Bool)

(declare-fun c!726081 () Bool)

(get-info :version)

(assert (=> d!1258798 (= c!726081 ((_ is Node!14265) (c!726072 v!3898)))))

(declare-fun e!2650431 () Bool)

(assert (=> d!1258798 (= (inv!62277 (c!726072 v!3898)) e!2650431)))

(declare-fun b!4268903 () Bool)

(declare-fun inv!62278 (Conc!14265) Bool)

(assert (=> b!4268903 (= e!2650431 (inv!62278 (c!726072 v!3898)))))

(declare-fun b!4268904 () Bool)

(declare-fun e!2650432 () Bool)

(assert (=> b!4268904 (= e!2650431 e!2650432)))

(declare-fun res!1753830 () Bool)

(assert (=> b!4268904 (= res!1753830 (not ((_ is Leaf!22053) (c!726072 v!3898))))))

(assert (=> b!4268904 (=> res!1753830 e!2650432)))

(declare-fun b!4268905 () Bool)

(declare-fun inv!62279 (Conc!14265) Bool)

(assert (=> b!4268905 (= e!2650432 (inv!62279 (c!726072 v!3898)))))

(assert (= (and d!1258798 c!726081) b!4268903))

(assert (= (and d!1258798 (not c!726081)) b!4268904))

(assert (= (and b!4268904 (not res!1753830)) b!4268905))

(declare-fun m!4861611 () Bool)

(assert (=> b!4268903 m!4861611))

(declare-fun m!4861613 () Bool)

(assert (=> b!4268905 m!4861613))

(assert (=> b!4268881 d!1258798))

(declare-fun b!4268925 () Bool)

(declare-fun e!2650447 () Bool)

(declare-fun inv!15 (TokenValue!8238) Bool)

(assert (=> b!4268925 (= e!2650447 (inv!15 (Broken!41191 lt!1512328)))))

(declare-fun b!4268926 () Bool)

(declare-fun e!2650446 () Bool)

(declare-fun inv!16 (TokenValue!8238) Bool)

(assert (=> b!4268926 (= e!2650446 (inv!16 (Broken!41191 lt!1512328)))))

(declare-fun b!4268927 () Bool)

(declare-fun e!2650445 () Bool)

(declare-fun inv!17 (TokenValue!8238) Bool)

(assert (=> b!4268927 (= e!2650445 (inv!17 (Broken!41191 lt!1512328)))))

(declare-fun d!1258804 () Bool)

(declare-fun c!726090 () Bool)

(assert (=> d!1258804 (= c!726090 ((_ is IntegerValue!24714) (Broken!41191 lt!1512328)))))

(assert (=> d!1258804 (= (inv!21 (Broken!41191 lt!1512328)) e!2650446)))

(declare-fun b!4268928 () Bool)

(assert (=> b!4268928 (= e!2650446 e!2650445)))

(declare-fun c!726089 () Bool)

(assert (=> b!4268928 (= c!726089 ((_ is IntegerValue!24715) (Broken!41191 lt!1512328)))))

(declare-fun b!4268929 () Bool)

(declare-fun res!1753836 () Bool)

(assert (=> b!4268929 (=> res!1753836 e!2650447)))

(assert (=> b!4268929 (= res!1753836 (not ((_ is IntegerValue!24716) (Broken!41191 lt!1512328))))))

(assert (=> b!4268929 (= e!2650445 e!2650447)))

(assert (= (and d!1258804 c!726090) b!4268926))

(assert (= (and d!1258804 (not c!726090)) b!4268928))

(assert (= (and b!4268928 c!726089) b!4268927))

(assert (= (and b!4268928 (not c!726089)) b!4268929))

(assert (= (and b!4268929 (not res!1753836)) b!4268925))

(declare-fun m!4861619 () Bool)

(assert (=> b!4268925 m!4861619))

(declare-fun m!4861621 () Bool)

(assert (=> b!4268926 m!4861621))

(declare-fun m!4861623 () Bool)

(assert (=> b!4268927 m!4861623))

(assert (=> b!4268880 d!1258804))

(declare-fun b!4268944 () Bool)

(declare-fun tp!1307742 () Bool)

(declare-fun e!2650458 () Bool)

(declare-fun tp!1307741 () Bool)

(assert (=> b!4268944 (= e!2650458 (and (inv!62277 (left!35084 (c!726072 v!3898))) tp!1307741 (inv!62277 (right!35414 (c!726072 v!3898))) tp!1307742))))

(declare-fun b!4268945 () Bool)

(declare-fun inv!62283 (IArray!28535) Bool)

(assert (=> b!4268945 (= e!2650458 (inv!62283 (xs!17571 (c!726072 v!3898))))))

(assert (=> b!4268881 (= tp!1307730 (and (inv!62277 (c!726072 v!3898)) e!2650458))))

(assert (= (and b!4268881 ((_ is Node!14265) (c!726072 v!3898))) b!4268944))

(assert (= (and b!4268881 ((_ is Leaf!22053) (c!726072 v!3898))) b!4268945))

(declare-fun m!4861631 () Bool)

(assert (=> b!4268944 m!4861631))

(declare-fun m!4861633 () Bool)

(assert (=> b!4268944 m!4861633))

(declare-fun m!4861635 () Bool)

(assert (=> b!4268945 m!4861635))

(assert (=> b!4268881 m!4861587))

(check-sat (not b!4268925) (not b!4268881) (not b!4268905) (not b!4268927) (not b!4268944) (not b!4268945) (not b!4268926) (not d!1258792) (not d!1258796) (not b!4268903))
(check-sat)
