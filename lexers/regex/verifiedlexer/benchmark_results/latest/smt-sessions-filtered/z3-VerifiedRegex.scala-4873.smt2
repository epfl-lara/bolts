; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249880 () Bool)

(assert start!249880)

(declare-fun res!1085666 () Bool)

(declare-fun e!1628992 () Bool)

(assert (=> start!249880 (=> (not res!1085666) (not e!1628992))))

(declare-datatypes ((List!29815 0))(
  ( (Nil!29715) (Cons!29715 (h!35135 (_ BitVec 16)) (t!211754 List!29815)) )
))
(declare-fun lt!908119 () List!29815)

(assert (=> start!249880 (= res!1085666 (not (= lt!908119 (Cons!29715 #x006E (Cons!29715 #x0075 (Cons!29715 #x006C (Cons!29715 #x006C Nil!29715)))))))))

(declare-datatypes ((IArray!18555 0))(
  ( (IArray!18556 (innerList!9335 List!29815)) )
))
(declare-datatypes ((Conc!9275 0))(
  ( (Node!9275 (left!22652 Conc!9275) (right!22982 Conc!9275) (csize!18780 Int) (cheight!9486 Int)) (Leaf!14149 (xs!12259 IArray!18555) (csize!18781 Int)) (Empty!9275) )
))
(declare-datatypes ((BalanceConc!18164 0))(
  ( (BalanceConc!18165 (c!416250 Conc!9275)) )
))
(declare-fun c!5223 () BalanceConc!18164)

(declare-fun efficientList!400 (BalanceConc!18164) List!29815)

(assert (=> start!249880 (= lt!908119 (efficientList!400 c!5223))))

(assert (=> start!249880 e!1628992))

(declare-fun e!1628993 () Bool)

(declare-fun inv!40120 (BalanceConc!18164) Bool)

(assert (=> start!249880 (and (inv!40120 c!5223) e!1628993)))

(declare-fun b!2581631 () Bool)

(declare-fun e!1628991 () Bool)

(assert (=> b!2581631 (= e!1628992 e!1628991)))

(declare-fun res!1085667 () Bool)

(assert (=> b!2581631 (=> (not res!1085667) (not e!1628991))))

(declare-fun lt!908118 () List!29815)

(assert (=> b!2581631 (= res!1085667 (and (not (= lt!908119 (Cons!29715 #x0074 (Cons!29715 #x0072 (Cons!29715 #x0075 lt!908118))))) (not (= lt!908119 (Cons!29715 #x0066 (Cons!29715 #x0061 (Cons!29715 #x006C (Cons!29715 #x0073 lt!908118)))))) (not (= lt!908119 (Cons!29715 #x003A Nil!29715))) (not (= lt!908119 (Cons!29715 #x002C Nil!29715))) (not (= lt!908119 (Cons!29715 #x007B Nil!29715))) (not (= lt!908119 (Cons!29715 #x007D Nil!29715))) (not (= lt!908119 (Cons!29715 #x005B Nil!29715))) (not (= lt!908119 (Cons!29715 #x005D Nil!29715)))))))

(assert (=> b!2581631 (= lt!908118 (Cons!29715 #x0065 Nil!29715))))

(declare-fun b!2581632 () Bool)

(declare-datatypes ((TokenValue!4731 0))(
  ( (FloatLiteralValue!9462 (text!33562 List!29815)) (TokenValueExt!4730 (__x!19296 Int)) (Broken!23655 (value!145724 List!29815)) (Object!4830) (End!4731) (Def!4731) (Underscore!4731) (Match!4731) (Else!4731) (Error!4731) (Case!4731) (If!4731) (Extends!4731) (Abstract!4731) (Class!4731) (Val!4731) (DelimiterValue!9462 (del!4791 List!29815)) (KeywordValue!4737 (value!145725 List!29815)) (CommentValue!9462 (value!145726 List!29815)) (WhitespaceValue!9462 (value!145727 List!29815)) (IndentationValue!4731 (value!145728 List!29815)) (String!33056) (Int32!4731) (Broken!23656 (value!145729 List!29815)) (Boolean!4732) (Unit!43555) (OperatorValue!4734 (op!4791 List!29815)) (IdentifierValue!9462 (value!145730 List!29815)) (IdentifierValue!9463 (value!145731 List!29815)) (WhitespaceValue!9463 (value!145732 List!29815)) (True!9462) (False!9462) (Broken!23657 (value!145733 List!29815)) (Broken!23658 (value!145734 List!29815)) (True!9463) (RightBrace!4731) (RightBracket!4731) (Colon!4731) (Null!4731) (Comma!4731) (LeftBracket!4731) (False!9463) (LeftBrace!4731) (ImaginaryLiteralValue!4731 (text!33563 List!29815)) (StringLiteralValue!14193 (value!145735 List!29815)) (EOFValue!4731 (value!145736 List!29815)) (IdentValue!4731 (value!145737 List!29815)) (DelimiterValue!9463 (value!145738 List!29815)) (DedentValue!4731 (value!145739 List!29815)) (NewLineValue!4731 (value!145740 List!29815)) (IntegerValue!14193 (value!145741 (_ BitVec 32)) (text!33564 List!29815)) (IntegerValue!14194 (value!145742 Int) (text!33565 List!29815)) (Times!4731) (Or!4731) (Equal!4731) (Minus!4731) (Broken!23659 (value!145743 List!29815)) (And!4731) (Div!4731) (LessEqual!4731) (Mod!4731) (Concat!12385) (Not!4731) (Plus!4731) (SpaceValue!4731 (value!145744 List!29815)) (IntegerValue!14195 (value!145745 Int) (text!33566 List!29815)) (StringLiteralValue!14194 (text!33567 List!29815)) (FloatLiteralValue!9463 (text!33568 List!29815)) (BytesLiteralValue!4731 (value!145746 List!29815)) (CommentValue!9463 (value!145747 List!29815)) (StringLiteralValue!14195 (value!145748 List!29815)) (ErrorTokenValue!4731 (msg!4792 List!29815)) )
))
(declare-fun inv!21 (TokenValue!4731) Bool)

(assert (=> b!2581632 (= e!1628991 (not (inv!21 (Broken!23658 lt!908119))))))

(declare-fun b!2581633 () Bool)

(declare-fun tp!819516 () Bool)

(declare-fun inv!40121 (Conc!9275) Bool)

(assert (=> b!2581633 (= e!1628993 (and (inv!40121 (c!416250 c!5223)) tp!819516))))

(assert (= (and start!249880 res!1085666) b!2581631))

(assert (= (and b!2581631 res!1085667) b!2581632))

(assert (= start!249880 b!2581633))

(declare-fun m!2918177 () Bool)

(assert (=> start!249880 m!2918177))

(declare-fun m!2918179 () Bool)

(assert (=> start!249880 m!2918179))

(declare-fun m!2918181 () Bool)

(assert (=> b!2581632 m!2918181))

(declare-fun m!2918183 () Bool)

(assert (=> b!2581633 m!2918183))

(check-sat (not b!2581633) (not start!249880) (not b!2581632))
(check-sat)
(get-model)

(declare-fun d!731144 () Bool)

(declare-fun c!416256 () Bool)

(get-info :version)

(assert (=> d!731144 (= c!416256 ((_ is Node!9275) (c!416250 c!5223)))))

(declare-fun e!1629004 () Bool)

(assert (=> d!731144 (= (inv!40121 (c!416250 c!5223)) e!1629004)))

(declare-fun b!2581649 () Bool)

(declare-fun inv!40124 (Conc!9275) Bool)

(assert (=> b!2581649 (= e!1629004 (inv!40124 (c!416250 c!5223)))))

(declare-fun b!2581650 () Bool)

(declare-fun e!1629005 () Bool)

(assert (=> b!2581650 (= e!1629004 e!1629005)))

(declare-fun res!1085673 () Bool)

(assert (=> b!2581650 (= res!1085673 (not ((_ is Leaf!14149) (c!416250 c!5223))))))

(assert (=> b!2581650 (=> res!1085673 e!1629005)))

(declare-fun b!2581651 () Bool)

(declare-fun inv!40125 (Conc!9275) Bool)

(assert (=> b!2581651 (= e!1629005 (inv!40125 (c!416250 c!5223)))))

(assert (= (and d!731144 c!416256) b!2581649))

(assert (= (and d!731144 (not c!416256)) b!2581650))

(assert (= (and b!2581650 (not res!1085673)) b!2581651))

(declare-fun m!2918189 () Bool)

(assert (=> b!2581649 m!2918189))

(declare-fun m!2918191 () Bool)

(assert (=> b!2581651 m!2918191))

(assert (=> b!2581633 d!731144))

(declare-fun d!731148 () Bool)

(declare-fun lt!908125 () List!29815)

(declare-fun list!11231 (BalanceConc!18164) List!29815)

(assert (=> d!731148 (= lt!908125 (list!11231 c!5223))))

(declare-fun efficientList!402 (Conc!9275 List!29815) List!29815)

(declare-fun efficientList$default$2!140 (Conc!9275) List!29815)

(assert (=> d!731148 (= lt!908125 (efficientList!402 (c!416250 c!5223) (efficientList$default$2!140 (c!416250 c!5223))))))

(assert (=> d!731148 (= (efficientList!400 c!5223) lt!908125)))

(declare-fun bs!471502 () Bool)

(assert (= bs!471502 d!731148))

(declare-fun m!2918199 () Bool)

(assert (=> bs!471502 m!2918199))

(declare-fun m!2918201 () Bool)

(assert (=> bs!471502 m!2918201))

(assert (=> bs!471502 m!2918201))

(declare-fun m!2918203 () Bool)

(assert (=> bs!471502 m!2918203))

(assert (=> start!249880 d!731148))

(declare-fun d!731152 () Bool)

(declare-fun isBalanced!2830 (Conc!9275) Bool)

(assert (=> d!731152 (= (inv!40120 c!5223) (isBalanced!2830 (c!416250 c!5223)))))

(declare-fun bs!471504 () Bool)

(assert (= bs!471504 d!731152))

(declare-fun m!2918207 () Bool)

(assert (=> bs!471504 m!2918207))

(assert (=> start!249880 d!731152))

(declare-fun d!731156 () Bool)

(declare-fun c!416267 () Bool)

(assert (=> d!731156 (= c!416267 ((_ is IntegerValue!14193) (Broken!23658 lt!908119)))))

(declare-fun e!1629025 () Bool)

(assert (=> d!731156 (= (inv!21 (Broken!23658 lt!908119)) e!1629025)))

(declare-fun b!2581683 () Bool)

(declare-fun inv!16 (TokenValue!4731) Bool)

(assert (=> b!2581683 (= e!1629025 (inv!16 (Broken!23658 lt!908119)))))

(declare-fun b!2581684 () Bool)

(declare-fun res!1085679 () Bool)

(declare-fun e!1629027 () Bool)

(assert (=> b!2581684 (=> res!1085679 e!1629027)))

(assert (=> b!2581684 (= res!1085679 (not ((_ is IntegerValue!14195) (Broken!23658 lt!908119))))))

(declare-fun e!1629026 () Bool)

(assert (=> b!2581684 (= e!1629026 e!1629027)))

(declare-fun b!2581685 () Bool)

(assert (=> b!2581685 (= e!1629025 e!1629026)))

(declare-fun c!416268 () Bool)

(assert (=> b!2581685 (= c!416268 ((_ is IntegerValue!14194) (Broken!23658 lt!908119)))))

(declare-fun b!2581686 () Bool)

(declare-fun inv!15 (TokenValue!4731) Bool)

(assert (=> b!2581686 (= e!1629027 (inv!15 (Broken!23658 lt!908119)))))

(declare-fun b!2581687 () Bool)

(declare-fun inv!17 (TokenValue!4731) Bool)

(assert (=> b!2581687 (= e!1629026 (inv!17 (Broken!23658 lt!908119)))))

(assert (= (and d!731156 c!416267) b!2581683))

(assert (= (and d!731156 (not c!416267)) b!2581685))

(assert (= (and b!2581685 c!416268) b!2581687))

(assert (= (and b!2581685 (not c!416268)) b!2581684))

(assert (= (and b!2581684 (not res!1085679)) b!2581686))

(declare-fun m!2918215 () Bool)

(assert (=> b!2581683 m!2918215))

(declare-fun m!2918217 () Bool)

(assert (=> b!2581686 m!2918217))

(declare-fun m!2918219 () Bool)

(assert (=> b!2581687 m!2918219))

(assert (=> b!2581632 d!731156))

(declare-fun tp!819528 () Bool)

(declare-fun e!1629034 () Bool)

(declare-fun tp!819527 () Bool)

(declare-fun b!2581696 () Bool)

(assert (=> b!2581696 (= e!1629034 (and (inv!40121 (left!22652 (c!416250 c!5223))) tp!819527 (inv!40121 (right!22982 (c!416250 c!5223))) tp!819528))))

(declare-fun b!2581697 () Bool)

(declare-fun inv!40127 (IArray!18555) Bool)

(assert (=> b!2581697 (= e!1629034 (inv!40127 (xs!12259 (c!416250 c!5223))))))

(assert (=> b!2581633 (= tp!819516 (and (inv!40121 (c!416250 c!5223)) e!1629034))))

(assert (= (and b!2581633 ((_ is Node!9275) (c!416250 c!5223))) b!2581696))

(assert (= (and b!2581633 ((_ is Leaf!14149) (c!416250 c!5223))) b!2581697))

(declare-fun m!2918227 () Bool)

(assert (=> b!2581696 m!2918227))

(declare-fun m!2918229 () Bool)

(assert (=> b!2581696 m!2918229))

(declare-fun m!2918231 () Bool)

(assert (=> b!2581697 m!2918231))

(assert (=> b!2581633 m!2918183))

(check-sat (not d!731148) (not b!2581697) (not b!2581683) (not b!2581687) (not b!2581696) (not b!2581649) (not b!2581686) (not b!2581651) (not b!2581633) (not d!731152))
(check-sat)
