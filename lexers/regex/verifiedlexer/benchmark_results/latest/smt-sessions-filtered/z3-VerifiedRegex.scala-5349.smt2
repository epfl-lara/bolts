; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273142 () Bool)

(assert start!273142)

(declare-datatypes ((List!33057 0))(
  ( (Nil!32933) (Cons!32933 (h!38353 (_ BitVec 16)) (t!230106 List!33057)) )
))
(declare-datatypes ((IArray!20445 0))(
  ( (IArray!20446 (innerList!10280 List!33057)) )
))
(declare-datatypes ((Conc!10220 0))(
  ( (Node!10220 (left!24881 Conc!10220) (right!25211 Conc!10220) (csize!20670 Int) (cheight!10431 Int)) (Leaf!15570 (xs!13332 IArray!20445) (csize!20671 Int)) (Empty!10220) )
))
(declare-datatypes ((BalanceConc!20078 0))(
  ( (BalanceConc!20079 (c!456715 Conc!10220)) )
))
(declare-fun v!4236 () BalanceConc!20078)

(declare-datatypes ((TokenValue!5147 0))(
  ( (FloatLiteralValue!10294 (text!36474 List!33057)) (TokenValueExt!5146 (__x!21968 Int)) (Broken!25735 (value!158430 List!33057)) (Object!5270) (End!5147) (Def!5147) (Underscore!5147) (Match!5147) (Else!5147) (Error!5147) (Case!5147) (If!5147) (Extends!5147) (Abstract!5147) (Class!5147) (Val!5147) (DelimiterValue!10294 (del!5207 List!33057)) (KeywordValue!5153 (value!158431 List!33057)) (CommentValue!10294 (value!158432 List!33057)) (WhitespaceValue!10294 (value!158433 List!33057)) (IndentationValue!5147 (value!158434 List!33057)) (String!36192) (Int32!5147) (Broken!25736 (value!158435 List!33057)) (Boolean!5148) (Unit!46921) (OperatorValue!5150 (op!5207 List!33057)) (IdentifierValue!10294 (value!158436 List!33057)) (IdentifierValue!10295 (value!158437 List!33057)) (WhitespaceValue!10295 (value!158438 List!33057)) (True!10294) (False!10294) (Broken!25737 (value!158439 List!33057)) (Broken!25738 (value!158440 List!33057)) (True!10295) (RightBrace!5147) (RightBracket!5147) (Colon!5147) (Null!5147) (Comma!5147) (LeftBracket!5147) (False!10295) (LeftBrace!5147) (ImaginaryLiteralValue!5147 (text!36475 List!33057)) (StringLiteralValue!15441 (value!158441 List!33057)) (EOFValue!5147 (value!158442 List!33057)) (IdentValue!5147 (value!158443 List!33057)) (DelimiterValue!10295 (value!158444 List!33057)) (DedentValue!5147 (value!158445 List!33057)) (NewLineValue!5147 (value!158446 List!33057)) (IntegerValue!15441 (value!158447 (_ BitVec 32)) (text!36476 List!33057)) (IntegerValue!15442 (value!158448 Int) (text!36477 List!33057)) (Times!5147) (Or!5147) (Equal!5147) (Minus!5147) (Broken!25739 (value!158449 List!33057)) (And!5147) (Div!5147) (LessEqual!5147) (Mod!5147) (Concat!13455) (Not!5147) (Plus!5147) (SpaceValue!5147 (value!158450 List!33057)) (IntegerValue!15443 (value!158451 Int) (text!36478 List!33057)) (StringLiteralValue!15442 (text!36479 List!33057)) (FloatLiteralValue!10295 (text!36480 List!33057)) (BytesLiteralValue!5147 (value!158452 List!33057)) (CommentValue!10295 (value!158453 List!33057)) (StringLiteralValue!15443 (value!158454 List!33057)) (ErrorTokenValue!5147 (msg!5208 List!33057)) )
))
(declare-fun inv!21 (TokenValue!5147) Bool)

(declare-fun efficientList!416 (BalanceConc!20078) List!33057)

(assert (=> start!273142 (not (inv!21 (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(declare-fun e!1781168 () Bool)

(declare-fun inv!44847 (BalanceConc!20078) Bool)

(assert (=> start!273142 (and (inv!44847 v!4236) e!1781168)))

(declare-fun b!2816629 () Bool)

(declare-fun tp!899094 () Bool)

(declare-fun inv!44848 (Conc!10220) Bool)

(assert (=> b!2816629 (= e!1781168 (and (inv!44848 (c!456715 v!4236)) tp!899094))))

(assert (= start!273142 b!2816629))

(declare-fun m!3247775 () Bool)

(assert (=> start!273142 m!3247775))

(declare-fun m!3247777 () Bool)

(assert (=> start!273142 m!3247777))

(declare-fun m!3247779 () Bool)

(assert (=> start!273142 m!3247779))

(declare-fun m!3247781 () Bool)

(assert (=> b!2816629 m!3247781))

(check-sat (not start!273142) (not b!2816629))
(check-sat)
(get-model)

(declare-fun b!2816640 () Bool)

(declare-fun e!1781176 () Bool)

(declare-fun inv!16 (TokenValue!5147) Bool)

(assert (=> b!2816640 (= e!1781176 (inv!16 (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(declare-fun b!2816641 () Bool)

(declare-fun e!1781177 () Bool)

(assert (=> b!2816641 (= e!1781176 e!1781177)))

(declare-fun c!456720 () Bool)

(get-info :version)

(assert (=> b!2816641 (= c!456720 ((_ is IntegerValue!15442) (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(declare-fun b!2816642 () Bool)

(declare-fun inv!17 (TokenValue!5147) Bool)

(assert (=> b!2816642 (= e!1781177 (inv!17 (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(declare-fun b!2816643 () Bool)

(declare-fun e!1781175 () Bool)

(declare-fun inv!15 (TokenValue!5147) Bool)

(assert (=> b!2816643 (= e!1781175 (inv!15 (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(declare-fun b!2816644 () Bool)

(declare-fun res!1172133 () Bool)

(assert (=> b!2816644 (=> res!1172133 e!1781175)))

(assert (=> b!2816644 (= res!1172133 (not ((_ is IntegerValue!15443) (StringLiteralValue!15442 (efficientList!416 v!4236)))))))

(assert (=> b!2816644 (= e!1781177 e!1781175)))

(declare-fun d!818142 () Bool)

(declare-fun c!456721 () Bool)

(assert (=> d!818142 (= c!456721 ((_ is IntegerValue!15441) (StringLiteralValue!15442 (efficientList!416 v!4236))))))

(assert (=> d!818142 (= (inv!21 (StringLiteralValue!15442 (efficientList!416 v!4236))) e!1781176)))

(assert (= (and d!818142 c!456721) b!2816640))

(assert (= (and d!818142 (not c!456721)) b!2816641))

(assert (= (and b!2816641 c!456720) b!2816642))

(assert (= (and b!2816641 (not c!456720)) b!2816644))

(assert (= (and b!2816644 (not res!1172133)) b!2816643))

(declare-fun m!3247783 () Bool)

(assert (=> b!2816640 m!3247783))

(declare-fun m!3247785 () Bool)

(assert (=> b!2816642 m!3247785))

(declare-fun m!3247787 () Bool)

(assert (=> b!2816643 m!3247787))

(assert (=> start!273142 d!818142))

(declare-fun d!818146 () Bool)

(declare-fun lt!1005986 () List!33057)

(declare-fun list!12372 (BalanceConc!20078) List!33057)

(assert (=> d!818146 (= lt!1005986 (list!12372 v!4236))))

(declare-fun efficientList!417 (Conc!10220 List!33057) List!33057)

(declare-fun efficientList$default$2!145 (Conc!10220) List!33057)

(assert (=> d!818146 (= lt!1005986 (efficientList!417 (c!456715 v!4236) (efficientList$default$2!145 (c!456715 v!4236))))))

(assert (=> d!818146 (= (efficientList!416 v!4236) lt!1005986)))

(declare-fun bs!517036 () Bool)

(assert (= bs!517036 d!818146))

(declare-fun m!3247793 () Bool)

(assert (=> bs!517036 m!3247793))

(declare-fun m!3247795 () Bool)

(assert (=> bs!517036 m!3247795))

(assert (=> bs!517036 m!3247795))

(declare-fun m!3247797 () Bool)

(assert (=> bs!517036 m!3247797))

(assert (=> start!273142 d!818146))

(declare-fun d!818150 () Bool)

(declare-fun isBalanced!3106 (Conc!10220) Bool)

(assert (=> d!818150 (= (inv!44847 v!4236) (isBalanced!3106 (c!456715 v!4236)))))

(declare-fun bs!517037 () Bool)

(assert (= bs!517037 d!818150))

(declare-fun m!3247799 () Bool)

(assert (=> bs!517037 m!3247799))

(assert (=> start!273142 d!818150))

(declare-fun d!818152 () Bool)

(declare-fun c!456733 () Bool)

(assert (=> d!818152 (= c!456733 ((_ is Node!10220) (c!456715 v!4236)))))

(declare-fun e!1781197 () Bool)

(assert (=> d!818152 (= (inv!44848 (c!456715 v!4236)) e!1781197)))

(declare-fun b!2816675 () Bool)

(declare-fun inv!44849 (Conc!10220) Bool)

(assert (=> b!2816675 (= e!1781197 (inv!44849 (c!456715 v!4236)))))

(declare-fun b!2816676 () Bool)

(declare-fun e!1781198 () Bool)

(assert (=> b!2816676 (= e!1781197 e!1781198)))

(declare-fun res!1172142 () Bool)

(assert (=> b!2816676 (= res!1172142 (not ((_ is Leaf!15570) (c!456715 v!4236))))))

(assert (=> b!2816676 (=> res!1172142 e!1781198)))

(declare-fun b!2816677 () Bool)

(declare-fun inv!44850 (Conc!10220) Bool)

(assert (=> b!2816677 (= e!1781198 (inv!44850 (c!456715 v!4236)))))

(assert (= (and d!818152 c!456733) b!2816675))

(assert (= (and d!818152 (not c!456733)) b!2816676))

(assert (= (and b!2816676 (not res!1172142)) b!2816677))

(declare-fun m!3247807 () Bool)

(assert (=> b!2816675 m!3247807))

(declare-fun m!3247809 () Bool)

(assert (=> b!2816677 m!3247809))

(assert (=> b!2816629 d!818152))

(declare-fun tp!899099 () Bool)

(declare-fun e!1781203 () Bool)

(declare-fun tp!899100 () Bool)

(declare-fun b!2816684 () Bool)

(assert (=> b!2816684 (= e!1781203 (and (inv!44848 (left!24881 (c!456715 v!4236))) tp!899099 (inv!44848 (right!25211 (c!456715 v!4236))) tp!899100))))

(declare-fun b!2816685 () Bool)

(declare-fun inv!44852 (IArray!20445) Bool)

(assert (=> b!2816685 (= e!1781203 (inv!44852 (xs!13332 (c!456715 v!4236))))))

(assert (=> b!2816629 (= tp!899094 (and (inv!44848 (c!456715 v!4236)) e!1781203))))

(assert (= (and b!2816629 ((_ is Node!10220) (c!456715 v!4236))) b!2816684))

(assert (= (and b!2816629 ((_ is Leaf!15570) (c!456715 v!4236))) b!2816685))

(declare-fun m!3247811 () Bool)

(assert (=> b!2816684 m!3247811))

(declare-fun m!3247813 () Bool)

(assert (=> b!2816684 m!3247813))

(declare-fun m!3247815 () Bool)

(assert (=> b!2816685 m!3247815))

(assert (=> b!2816629 m!3247781))

(check-sat (not b!2816629) (not b!2816677) (not b!2816642) (not b!2816675) (not d!818146) (not b!2816685) (not d!818150) (not b!2816640) (not b!2816684) (not b!2816643))
(check-sat)
