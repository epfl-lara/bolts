; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249210 () Bool)

(assert start!249210)

(declare-datatypes ((List!29758 0))(
  ( (Nil!29658) (Cons!29658 (h!35078 (_ BitVec 16)) (t!211635 List!29758)) )
))
(declare-datatypes ((IArray!18519 0))(
  ( (IArray!18520 (innerList!9317 List!29758)) )
))
(declare-datatypes ((Conc!9257 0))(
  ( (Node!9257 (left!22588 Conc!9257) (right!22918 Conc!9257) (csize!18744 Int) (cheight!9468 Int)) (Leaf!14117 (xs!12241 IArray!18519) (csize!18745 Int)) (Empty!9257) )
))
(declare-datatypes ((BalanceConc!18128 0))(
  ( (BalanceConc!18129 (c!415261 Conc!9257)) )
))
(declare-fun v!5177 () BalanceConc!18128)

(declare-datatypes ((TokenValue!4721 0))(
  ( (FloatLiteralValue!9442 (text!33492 List!29758)) (TokenValueExt!4720 (__x!19240 Int)) (Broken!23605 (value!145432 List!29758)) (Object!4820) (End!4721) (Def!4721) (Underscore!4721) (Match!4721) (Else!4721) (Error!4721) (Case!4721) (If!4721) (Extends!4721) (Abstract!4721) (Class!4721) (Val!4721) (DelimiterValue!9442 (del!4781 List!29758)) (KeywordValue!4727 (value!145433 List!29758)) (CommentValue!9442 (value!145434 List!29758)) (WhitespaceValue!9442 (value!145435 List!29758)) (IndentationValue!4721 (value!145436 List!29758)) (String!32990) (Int32!4721) (Broken!23606 (value!145437 List!29758)) (Boolean!4722) (Unit!43512) (OperatorValue!4724 (op!4781 List!29758)) (IdentifierValue!9442 (value!145438 List!29758)) (IdentifierValue!9443 (value!145439 List!29758)) (WhitespaceValue!9443 (value!145440 List!29758)) (True!9442) (False!9442) (Broken!23607 (value!145441 List!29758)) (Broken!23608 (value!145442 List!29758)) (True!9443) (RightBrace!4721) (RightBracket!4721) (Colon!4721) (Null!4721) (Comma!4721) (LeftBracket!4721) (False!9443) (LeftBrace!4721) (ImaginaryLiteralValue!4721 (text!33493 List!29758)) (StringLiteralValue!14163 (value!145443 List!29758)) (EOFValue!4721 (value!145444 List!29758)) (IdentValue!4721 (value!145445 List!29758)) (DelimiterValue!9443 (value!145446 List!29758)) (DedentValue!4721 (value!145447 List!29758)) (NewLineValue!4721 (value!145448 List!29758)) (IntegerValue!14163 (value!145449 (_ BitVec 32)) (text!33494 List!29758)) (IntegerValue!14164 (value!145450 Int) (text!33495 List!29758)) (Times!4721) (Or!4721) (Equal!4721) (Minus!4721) (Broken!23609 (value!145451 List!29758)) (And!4721) (Div!4721) (LessEqual!4721) (Mod!4721) (Concat!12365) (Not!4721) (Plus!4721) (SpaceValue!4721 (value!145452 List!29758)) (IntegerValue!14165 (value!145453 Int) (text!33496 List!29758)) (StringLiteralValue!14164 (text!33497 List!29758)) (FloatLiteralValue!9443 (text!33498 List!29758)) (BytesLiteralValue!4721 (value!145454 List!29758)) (CommentValue!9443 (value!145455 List!29758)) (StringLiteralValue!14165 (value!145456 List!29758)) (ErrorTokenValue!4721 (msg!4782 List!29758)) )
))
(declare-fun inv!21 (TokenValue!4721) Bool)

(declare-fun efficientList!378 (BalanceConc!18128) List!29758)

(assert (=> start!249210 (not (inv!21 (IndentationValue!4721 (efficientList!378 v!5177))))))

(declare-fun e!1626697 () Bool)

(declare-fun inv!39997 (BalanceConc!18128) Bool)

(assert (=> start!249210 (and (inv!39997 v!5177) e!1626697)))

(declare-fun b!2577865 () Bool)

(declare-fun tp!819178 () Bool)

(declare-fun inv!39998 (Conc!9257) Bool)

(assert (=> b!2577865 (= e!1626697 (and (inv!39998 (c!415261 v!5177)) tp!819178))))

(assert (= start!249210 b!2577865))

(declare-fun m!2912651 () Bool)

(assert (=> start!249210 m!2912651))

(declare-fun m!2912653 () Bool)

(assert (=> start!249210 m!2912653))

(declare-fun m!2912655 () Bool)

(assert (=> start!249210 m!2912655))

(declare-fun m!2912657 () Bool)

(assert (=> b!2577865 m!2912657))

(check-sat (not start!249210) (not b!2577865))
(check-sat)
(get-model)

(declare-fun b!2577885 () Bool)

(declare-fun e!1626710 () Bool)

(declare-fun e!1626712 () Bool)

(assert (=> b!2577885 (= e!1626710 e!1626712)))

(declare-fun c!415269 () Bool)

(get-info :version)

(assert (=> b!2577885 (= c!415269 ((_ is IntegerValue!14164) (IndentationValue!4721 (efficientList!378 v!5177))))))

(declare-fun b!2577886 () Bool)

(declare-fun inv!16 (TokenValue!4721) Bool)

(assert (=> b!2577886 (= e!1626710 (inv!16 (IndentationValue!4721 (efficientList!378 v!5177))))))

(declare-fun b!2577887 () Bool)

(declare-fun res!1084265 () Bool)

(declare-fun e!1626711 () Bool)

(assert (=> b!2577887 (=> res!1084265 e!1626711)))

(assert (=> b!2577887 (= res!1084265 (not ((_ is IntegerValue!14165) (IndentationValue!4721 (efficientList!378 v!5177)))))))

(assert (=> b!2577887 (= e!1626712 e!1626711)))

(declare-fun b!2577888 () Bool)

(declare-fun inv!17 (TokenValue!4721) Bool)

(assert (=> b!2577888 (= e!1626712 (inv!17 (IndentationValue!4721 (efficientList!378 v!5177))))))

(declare-fun b!2577889 () Bool)

(declare-fun inv!15 (TokenValue!4721) Bool)

(assert (=> b!2577889 (= e!1626711 (inv!15 (IndentationValue!4721 (efficientList!378 v!5177))))))

(declare-fun d!729162 () Bool)

(declare-fun c!415270 () Bool)

(assert (=> d!729162 (= c!415270 ((_ is IntegerValue!14163) (IndentationValue!4721 (efficientList!378 v!5177))))))

(assert (=> d!729162 (= (inv!21 (IndentationValue!4721 (efficientList!378 v!5177))) e!1626710)))

(assert (= (and d!729162 c!415270) b!2577886))

(assert (= (and d!729162 (not c!415270)) b!2577885))

(assert (= (and b!2577885 c!415269) b!2577888))

(assert (= (and b!2577885 (not c!415269)) b!2577887))

(assert (= (and b!2577887 (not res!1084265)) b!2577889))

(declare-fun m!2912663 () Bool)

(assert (=> b!2577886 m!2912663))

(declare-fun m!2912665 () Bool)

(assert (=> b!2577888 m!2912665))

(declare-fun m!2912667 () Bool)

(assert (=> b!2577889 m!2912667))

(assert (=> start!249210 d!729162))

(declare-fun d!729166 () Bool)

(declare-fun lt!906855 () List!29758)

(declare-fun list!11207 (BalanceConc!18128) List!29758)

(assert (=> d!729166 (= lt!906855 (list!11207 v!5177))))

(declare-fun efficientList!379 (Conc!9257 List!29758) List!29758)

(declare-fun efficientList$default$2!131 (Conc!9257) List!29758)

(assert (=> d!729166 (= lt!906855 (efficientList!379 (c!415261 v!5177) (efficientList$default$2!131 (c!415261 v!5177))))))

(assert (=> d!729166 (= (efficientList!378 v!5177) lt!906855)))

(declare-fun bs!470914 () Bool)

(assert (= bs!470914 d!729166))

(declare-fun m!2912675 () Bool)

(assert (=> bs!470914 m!2912675))

(declare-fun m!2912677 () Bool)

(assert (=> bs!470914 m!2912677))

(assert (=> bs!470914 m!2912677))

(declare-fun m!2912679 () Bool)

(assert (=> bs!470914 m!2912679))

(assert (=> start!249210 d!729166))

(declare-fun d!729170 () Bool)

(declare-fun isBalanced!2816 (Conc!9257) Bool)

(assert (=> d!729170 (= (inv!39997 v!5177) (isBalanced!2816 (c!415261 v!5177)))))

(declare-fun bs!470915 () Bool)

(assert (= bs!470915 d!729170))

(declare-fun m!2912681 () Bool)

(assert (=> bs!470915 m!2912681))

(assert (=> start!249210 d!729170))

(declare-fun d!729172 () Bool)

(declare-fun c!415279 () Bool)

(assert (=> d!729172 (= c!415279 ((_ is Node!9257) (c!415261 v!5177)))))

(declare-fun e!1626726 () Bool)

(assert (=> d!729172 (= (inv!39998 (c!415261 v!5177)) e!1626726)))

(declare-fun b!2577911 () Bool)

(declare-fun inv!40001 (Conc!9257) Bool)

(assert (=> b!2577911 (= e!1626726 (inv!40001 (c!415261 v!5177)))))

(declare-fun b!2577912 () Bool)

(declare-fun e!1626727 () Bool)

(assert (=> b!2577912 (= e!1626726 e!1626727)))

(declare-fun res!1084271 () Bool)

(assert (=> b!2577912 (= res!1084271 (not ((_ is Leaf!14117) (c!415261 v!5177))))))

(assert (=> b!2577912 (=> res!1084271 e!1626727)))

(declare-fun b!2577913 () Bool)

(declare-fun inv!40002 (Conc!9257) Bool)

(assert (=> b!2577913 (= e!1626727 (inv!40002 (c!415261 v!5177)))))

(assert (= (and d!729172 c!415279) b!2577911))

(assert (= (and d!729172 (not c!415279)) b!2577912))

(assert (= (and b!2577912 (not res!1084271)) b!2577913))

(declare-fun m!2912689 () Bool)

(assert (=> b!2577911 m!2912689))

(declare-fun m!2912691 () Bool)

(assert (=> b!2577913 m!2912691))

(assert (=> b!2577865 d!729172))

(declare-fun e!1626736 () Bool)

(declare-fun b!2577926 () Bool)

(declare-fun tp!819188 () Bool)

(declare-fun tp!819187 () Bool)

(assert (=> b!2577926 (= e!1626736 (and (inv!39998 (left!22588 (c!415261 v!5177))) tp!819187 (inv!39998 (right!22918 (c!415261 v!5177))) tp!819188))))

(declare-fun b!2577927 () Bool)

(declare-fun inv!40003 (IArray!18519) Bool)

(assert (=> b!2577927 (= e!1626736 (inv!40003 (xs!12241 (c!415261 v!5177))))))

(assert (=> b!2577865 (= tp!819178 (and (inv!39998 (c!415261 v!5177)) e!1626736))))

(assert (= (and b!2577865 ((_ is Node!9257) (c!415261 v!5177))) b!2577926))

(assert (= (and b!2577865 ((_ is Leaf!14117) (c!415261 v!5177))) b!2577927))

(declare-fun m!2912695 () Bool)

(assert (=> b!2577926 m!2912695))

(declare-fun m!2912697 () Bool)

(assert (=> b!2577926 m!2912697))

(declare-fun m!2912699 () Bool)

(assert (=> b!2577927 m!2912699))

(assert (=> b!2577865 m!2912657))

(check-sat (not b!2577865) (not b!2577926) (not b!2577913) (not b!2577927) (not b!2577888) (not b!2577886) (not d!729166) (not d!729170) (not b!2577889) (not b!2577911))
(check-sat)
