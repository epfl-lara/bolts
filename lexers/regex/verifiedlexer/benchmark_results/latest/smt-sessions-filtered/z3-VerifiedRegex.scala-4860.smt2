; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249230 () Bool)

(assert start!249230)

(declare-datatypes ((List!29760 0))(
  ( (Nil!29660) (Cons!29660 (h!35080 (_ BitVec 16)) (t!211637 List!29760)) )
))
(declare-datatypes ((IArray!18523 0))(
  ( (IArray!18524 (innerList!9319 List!29760)) )
))
(declare-datatypes ((Conc!9259 0))(
  ( (Node!9259 (left!22591 Conc!9259) (right!22921 Conc!9259) (csize!18748 Int) (cheight!9470 Int)) (Leaf!14120 (xs!12243 IArray!18523) (csize!18749 Int)) (Empty!9259) )
))
(declare-datatypes ((BalanceConc!18132 0))(
  ( (BalanceConc!18133 (c!415281 Conc!9259)) )
))
(declare-fun v!5131 () BalanceConc!18132)

(declare-datatypes ((TokenValue!4723 0))(
  ( (FloatLiteralValue!9446 (text!33506 List!29760)) (TokenValueExt!4722 (__x!19242 Int)) (Broken!23615 (value!145485 List!29760)) (Object!4822) (End!4723) (Def!4723) (Underscore!4723) (Match!4723) (Else!4723) (Error!4723) (Case!4723) (If!4723) (Extends!4723) (Abstract!4723) (Class!4723) (Val!4723) (DelimiterValue!9446 (del!4783 List!29760)) (KeywordValue!4729 (value!145486 List!29760)) (CommentValue!9446 (value!145487 List!29760)) (WhitespaceValue!9446 (value!145488 List!29760)) (IndentationValue!4723 (value!145489 List!29760)) (String!32996) (Int32!4723) (Broken!23616 (value!145490 List!29760)) (Boolean!4724) (Unit!43514) (OperatorValue!4726 (op!4783 List!29760)) (IdentifierValue!9446 (value!145491 List!29760)) (IdentifierValue!9447 (value!145492 List!29760)) (WhitespaceValue!9447 (value!145493 List!29760)) (True!9446) (False!9446) (Broken!23617 (value!145494 List!29760)) (Broken!23618 (value!145495 List!29760)) (True!9447) (RightBrace!4723) (RightBracket!4723) (Colon!4723) (Null!4723) (Comma!4723) (LeftBracket!4723) (False!9447) (LeftBrace!4723) (ImaginaryLiteralValue!4723 (text!33507 List!29760)) (StringLiteralValue!14169 (value!145496 List!29760)) (EOFValue!4723 (value!145497 List!29760)) (IdentValue!4723 (value!145498 List!29760)) (DelimiterValue!9447 (value!145499 List!29760)) (DedentValue!4723 (value!145500 List!29760)) (NewLineValue!4723 (value!145501 List!29760)) (IntegerValue!14169 (value!145502 (_ BitVec 32)) (text!33508 List!29760)) (IntegerValue!14170 (value!145503 Int) (text!33509 List!29760)) (Times!4723) (Or!4723) (Equal!4723) (Minus!4723) (Broken!23619 (value!145504 List!29760)) (And!4723) (Div!4723) (LessEqual!4723) (Mod!4723) (Concat!12367) (Not!4723) (Plus!4723) (SpaceValue!4723 (value!145505 List!29760)) (IntegerValue!14171 (value!145506 Int) (text!33510 List!29760)) (StringLiteralValue!14170 (text!33511 List!29760)) (FloatLiteralValue!9447 (text!33512 List!29760)) (BytesLiteralValue!4723 (value!145507 List!29760)) (CommentValue!9447 (value!145508 List!29760)) (StringLiteralValue!14171 (value!145509 List!29760)) (ErrorTokenValue!4723 (msg!4784 List!29760)) )
))
(declare-fun inv!21 (TokenValue!4723) Bool)

(declare-fun efficientList!382 (BalanceConc!18132) List!29760)

(assert (=> start!249230 (not (inv!21 (OperatorValue!4726 (efficientList!382 v!5131))))))

(declare-fun e!1626745 () Bool)

(declare-fun inv!40010 (BalanceConc!18132) Bool)

(assert (=> start!249230 (and (inv!40010 v!5131) e!1626745)))

(declare-fun b!2577935 () Bool)

(declare-fun tp!819196 () Bool)

(declare-fun inv!40011 (Conc!9259) Bool)

(assert (=> b!2577935 (= e!1626745 (and (inv!40011 (c!415281 v!5131)) tp!819196))))

(assert (= start!249230 b!2577935))

(declare-fun m!2912715 () Bool)

(assert (=> start!249230 m!2912715))

(declare-fun m!2912717 () Bool)

(assert (=> start!249230 m!2912717))

(declare-fun m!2912719 () Bool)

(assert (=> start!249230 m!2912719))

(declare-fun m!2912721 () Bool)

(assert (=> b!2577935 m!2912721))

(check-sat (not b!2577935) (not start!249230))
(check-sat)
(get-model)

(declare-fun d!729179 () Bool)

(declare-fun c!415287 () Bool)

(get-info :version)

(assert (=> d!729179 (= c!415287 ((_ is Node!9259) (c!415281 v!5131)))))

(declare-fun e!1626756 () Bool)

(assert (=> d!729179 (= (inv!40011 (c!415281 v!5131)) e!1626756)))

(declare-fun b!2577951 () Bool)

(declare-fun inv!40013 (Conc!9259) Bool)

(assert (=> b!2577951 (= e!1626756 (inv!40013 (c!415281 v!5131)))))

(declare-fun b!2577952 () Bool)

(declare-fun e!1626757 () Bool)

(assert (=> b!2577952 (= e!1626756 e!1626757)))

(declare-fun res!1084277 () Bool)

(assert (=> b!2577952 (= res!1084277 (not ((_ is Leaf!14120) (c!415281 v!5131))))))

(assert (=> b!2577952 (=> res!1084277 e!1626757)))

(declare-fun b!2577953 () Bool)

(declare-fun inv!40015 (Conc!9259) Bool)

(assert (=> b!2577953 (= e!1626757 (inv!40015 (c!415281 v!5131)))))

(assert (= (and d!729179 c!415287) b!2577951))

(assert (= (and d!729179 (not c!415287)) b!2577952))

(assert (= (and b!2577952 (not res!1084277)) b!2577953))

(declare-fun m!2912727 () Bool)

(assert (=> b!2577951 m!2912727))

(declare-fun m!2912729 () Bool)

(assert (=> b!2577953 m!2912729))

(assert (=> b!2577935 d!729179))

(declare-fun b!2577979 () Bool)

(declare-fun e!1626774 () Bool)

(declare-fun inv!17 (TokenValue!4723) Bool)

(assert (=> b!2577979 (= e!1626774 (inv!17 (OperatorValue!4726 (efficientList!382 v!5131))))))

(declare-fun b!2577980 () Bool)

(declare-fun e!1626773 () Bool)

(assert (=> b!2577980 (= e!1626773 e!1626774)))

(declare-fun c!415299 () Bool)

(assert (=> b!2577980 (= c!415299 ((_ is IntegerValue!14170) (OperatorValue!4726 (efficientList!382 v!5131))))))

(declare-fun b!2577981 () Bool)

(declare-fun inv!16 (TokenValue!4723) Bool)

(assert (=> b!2577981 (= e!1626773 (inv!16 (OperatorValue!4726 (efficientList!382 v!5131))))))

(declare-fun b!2577983 () Bool)

(declare-fun e!1626775 () Bool)

(declare-fun inv!15 (TokenValue!4723) Bool)

(assert (=> b!2577983 (= e!1626775 (inv!15 (OperatorValue!4726 (efficientList!382 v!5131))))))

(declare-fun b!2577982 () Bool)

(declare-fun res!1084283 () Bool)

(assert (=> b!2577982 (=> res!1084283 e!1626775)))

(assert (=> b!2577982 (= res!1084283 (not ((_ is IntegerValue!14171) (OperatorValue!4726 (efficientList!382 v!5131)))))))

(assert (=> b!2577982 (= e!1626774 e!1626775)))

(declare-fun d!729183 () Bool)

(declare-fun c!415298 () Bool)

(assert (=> d!729183 (= c!415298 ((_ is IntegerValue!14169) (OperatorValue!4726 (efficientList!382 v!5131))))))

(assert (=> d!729183 (= (inv!21 (OperatorValue!4726 (efficientList!382 v!5131))) e!1626773)))

(assert (= (and d!729183 c!415298) b!2577981))

(assert (= (and d!729183 (not c!415298)) b!2577980))

(assert (= (and b!2577980 c!415299) b!2577979))

(assert (= (and b!2577980 (not c!415299)) b!2577982))

(assert (= (and b!2577982 (not res!1084283)) b!2577983))

(declare-fun m!2912737 () Bool)

(assert (=> b!2577979 m!2912737))

(declare-fun m!2912739 () Bool)

(assert (=> b!2577981 m!2912739))

(declare-fun m!2912741 () Bool)

(assert (=> b!2577983 m!2912741))

(assert (=> start!249230 d!729183))

(declare-fun d!729187 () Bool)

(declare-fun lt!906864 () List!29760)

(declare-fun list!11209 (BalanceConc!18132) List!29760)

(assert (=> d!729187 (= lt!906864 (list!11209 v!5131))))

(declare-fun efficientList!383 (Conc!9259 List!29760) List!29760)

(declare-fun efficientList$default$2!133 (Conc!9259) List!29760)

(assert (=> d!729187 (= lt!906864 (efficientList!383 (c!415281 v!5131) (efficientList$default$2!133 (c!415281 v!5131))))))

(assert (=> d!729187 (= (efficientList!382 v!5131) lt!906864)))

(declare-fun bs!470921 () Bool)

(assert (= bs!470921 d!729187))

(declare-fun m!2912749 () Bool)

(assert (=> bs!470921 m!2912749))

(declare-fun m!2912751 () Bool)

(assert (=> bs!470921 m!2912751))

(assert (=> bs!470921 m!2912751))

(declare-fun m!2912753 () Bool)

(assert (=> bs!470921 m!2912753))

(assert (=> start!249230 d!729187))

(declare-fun d!729191 () Bool)

(declare-fun isBalanced!2818 (Conc!9259) Bool)

(assert (=> d!729191 (= (inv!40010 v!5131) (isBalanced!2818 (c!415281 v!5131)))))

(declare-fun bs!470923 () Bool)

(assert (= bs!470923 d!729191))

(declare-fun m!2912757 () Bool)

(assert (=> bs!470923 m!2912757))

(assert (=> start!249230 d!729191))

(declare-fun tp!819208 () Bool)

(declare-fun b!2577998 () Bool)

(declare-fun e!1626786 () Bool)

(declare-fun tp!819207 () Bool)

(assert (=> b!2577998 (= e!1626786 (and (inv!40011 (left!22591 (c!415281 v!5131))) tp!819207 (inv!40011 (right!22921 (c!415281 v!5131))) tp!819208))))

(declare-fun b!2577999 () Bool)

(declare-fun inv!40016 (IArray!18523) Bool)

(assert (=> b!2577999 (= e!1626786 (inv!40016 (xs!12243 (c!415281 v!5131))))))

(assert (=> b!2577935 (= tp!819196 (and (inv!40011 (c!415281 v!5131)) e!1626786))))

(assert (= (and b!2577935 ((_ is Node!9259) (c!415281 v!5131))) b!2577998))

(assert (= (and b!2577935 ((_ is Leaf!14120) (c!415281 v!5131))) b!2577999))

(declare-fun m!2912765 () Bool)

(assert (=> b!2577998 m!2912765))

(declare-fun m!2912767 () Bool)

(assert (=> b!2577998 m!2912767))

(declare-fun m!2912769 () Bool)

(assert (=> b!2577999 m!2912769))

(assert (=> b!2577935 m!2912721))

(check-sat (not b!2577983) (not d!729187) (not b!2577953) (not b!2577981) (not d!729191) (not b!2577998) (not b!2577935) (not b!2577999) (not b!2577979) (not b!2577951))
(check-sat)
