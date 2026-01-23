; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249052 () Bool)

(assert start!249052)

(assert (=> start!249052 true))

(declare-fun b!2577105 () Bool)

(declare-fun e!1626175 () Bool)

(declare-datatypes ((List!29747 0))(
  ( (Nil!29647) (Cons!29647 (h!35067 (_ BitVec 16)) (t!211536 List!29747)) )
))
(declare-datatypes ((IArray!18497 0))(
  ( (IArray!18498 (innerList!9306 List!29747)) )
))
(declare-datatypes ((Conc!9246 0))(
  ( (Node!9246 (left!22554 Conc!9246) (right!22884 Conc!9246) (csize!18722 Int) (cheight!9457 Int)) (Leaf!14101 (xs!12230 IArray!18497) (csize!18723 Int)) (Empty!9246) )
))
(declare-datatypes ((BalanceConc!18106 0))(
  ( (BalanceConc!18107 (c!415102 Conc!9246)) )
))
(declare-fun x!463248 () BalanceConc!18106)

(declare-fun tp!819057 () Bool)

(declare-fun inv!39942 (Conc!9246) Bool)

(assert (=> b!2577105 (= e!1626175 (and (inv!39942 (c!415102 x!463248)) tp!819057))))

(declare-datatypes ((IndentationValueInjection!4 0))(
  ( (IndentationValueInjection!5) )
))
(declare-fun thiss!5269 () IndentationValueInjection!4)

(declare-fun inst!1448 () Bool)

(declare-fun inv!39943 (BalanceConc!18106) Bool)

(declare-fun list!11187 (BalanceConc!18106) List!29747)

(declare-datatypes ((TokenValue!4710 0))(
  ( (FloatLiteralValue!9420 (text!33415 List!29747)) (TokenValueExt!4709 (__x!19229 Int)) (Broken!23550 (value!145142 List!29747)) (Object!4809) (End!4710) (Def!4710) (Underscore!4710) (Match!4710) (Else!4710) (Error!4710) (Case!4710) (If!4710) (Extends!4710) (Abstract!4710) (Class!4710) (Val!4710) (DelimiterValue!9420 (del!4770 List!29747)) (KeywordValue!4716 (value!145143 List!29747)) (CommentValue!9420 (value!145144 List!29747)) (WhitespaceValue!9420 (value!145145 List!29747)) (IndentationValue!4710 (value!145146 List!29747)) (String!32959) (Int32!4710) (Broken!23551 (value!145147 List!29747)) (Boolean!4711) (Unit!43495) (OperatorValue!4713 (op!4770 List!29747)) (IdentifierValue!9420 (value!145148 List!29747)) (IdentifierValue!9421 (value!145149 List!29747)) (WhitespaceValue!9421 (value!145150 List!29747)) (True!9420) (False!9420) (Broken!23552 (value!145151 List!29747)) (Broken!23553 (value!145152 List!29747)) (True!9421) (RightBrace!4710) (RightBracket!4710) (Colon!4710) (Null!4710) (Comma!4710) (LeftBracket!4710) (False!9421) (LeftBrace!4710) (ImaginaryLiteralValue!4710 (text!33416 List!29747)) (StringLiteralValue!14130 (value!145153 List!29747)) (EOFValue!4710 (value!145154 List!29747)) (IdentValue!4710 (value!145155 List!29747)) (DelimiterValue!9421 (value!145156 List!29747)) (DedentValue!4710 (value!145157 List!29747)) (NewLineValue!4710 (value!145158 List!29747)) (IntegerValue!14130 (value!145159 (_ BitVec 32)) (text!33417 List!29747)) (IntegerValue!14131 (value!145160 Int) (text!33418 List!29747)) (Times!4710) (Or!4710) (Equal!4710) (Minus!4710) (Broken!23554 (value!145161 List!29747)) (And!4710) (Div!4710) (LessEqual!4710) (Mod!4710) (Concat!12354) (Not!4710) (Plus!4710) (SpaceValue!4710 (value!145162 List!29747)) (IntegerValue!14132 (value!145163 Int) (text!33419 List!29747)) (StringLiteralValue!14131 (text!33420 List!29747)) (FloatLiteralValue!9421 (text!33421 List!29747)) (BytesLiteralValue!4710 (value!145164 List!29747)) (CommentValue!9421 (value!145165 List!29747)) (StringLiteralValue!14132 (value!145166 List!29747)) (ErrorTokenValue!4710 (msg!4771 List!29747)) )
))
(declare-fun toCharacters!29 (IndentationValueInjection!4 TokenValue!4710) BalanceConc!18106)

(declare-fun toValue!36 (IndentationValueInjection!4 BalanceConc!18106) TokenValue!4710)

(assert (=> start!249052 (= inst!1448 (=> (and (inv!39943 x!463248) e!1626175) (= (list!11187 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248))) (list!11187 x!463248))))))

(assert (= start!249052 b!2577105))

(declare-fun m!2911723 () Bool)

(assert (=> b!2577105 m!2911723))

(declare-fun m!2911725 () Bool)

(assert (=> start!249052 m!2911725))

(assert (=> start!249052 m!2911725))

(declare-fun m!2911727 () Bool)

(assert (=> start!249052 m!2911727))

(declare-fun m!2911729 () Bool)

(assert (=> start!249052 m!2911729))

(assert (=> start!249052 m!2911727))

(declare-fun m!2911731 () Bool)

(assert (=> start!249052 m!2911731))

(declare-fun m!2911733 () Bool)

(assert (=> start!249052 m!2911733))

(declare-fun bs!470535 () Bool)

(declare-fun neg-inst!1448 () Bool)

(declare-fun s!228332 () Bool)

(assert (= bs!470535 (and neg-inst!1448 s!228332)))

(assert (=> bs!470535 (=> true (= (list!11187 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248))) (list!11187 x!463248)))))

(assert (=> m!2911725 m!2911727))

(assert (=> m!2911725 m!2911731))

(assert (=> m!2911725 m!2911729))

(assert (=> m!2911725 s!228332))

(assert (=> m!2911729 s!228332))

(declare-fun bs!470536 () Bool)

(assert (= bs!470536 (and neg-inst!1448 start!249052)))

(assert (=> bs!470536 (= true inst!1448)))

(declare-fun lambda!95070 () Int)

(declare-fun Forall!1149 (Int) Bool)

(assert (=> start!249052 (= (Forall!1149 lambda!95070) inst!1448)))

(assert (=> start!249052 (not (Forall!1149 lambda!95070))))

(assert (=> start!249052 true))

(assert (= neg-inst!1448 inst!1448))

(declare-fun m!2911735 () Bool)

(assert (=> start!249052 m!2911735))

(assert (=> start!249052 m!2911735))

(push 1)

(assert (not bs!470535))

(assert (not b!2577105))

(assert (not start!249052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728883 () Bool)

(declare-fun list!11189 (Conc!9246) List!29747)

(assert (=> d!728883 (= (list!11187 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248))) (list!11189 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)))))))

(declare-fun bs!470539 () Bool)

(assert (= bs!470539 d!728883))

(declare-fun m!2911751 () Bool)

(assert (=> bs!470539 m!2911751))

(assert (=> bs!470535 d!728883))

(declare-fun d!728885 () Bool)

(declare-fun c!415107 () Bool)

(assert (=> d!728885 (= c!415107 (is-IndentationValue!4710 (toValue!36 thiss!5269 x!463248)))))

(declare-fun e!1626181 () BalanceConc!18106)

(assert (=> d!728885 (= (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)) e!1626181)))

(declare-fun b!2577115 () Bool)

(declare-fun seqFromList!3140 (List!29747) BalanceConc!18106)

(assert (=> b!2577115 (= e!1626181 (seqFromList!3140 (value!145146 (toValue!36 thiss!5269 x!463248))))))

(declare-fun b!2577116 () Bool)

(assert (=> b!2577116 (= e!1626181 (BalanceConc!18107 Empty!9246))))

(assert (= (and d!728885 c!415107) b!2577115))

(assert (= (and d!728885 (not c!415107)) b!2577116))

(declare-fun m!2911753 () Bool)

(assert (=> b!2577115 m!2911753))

(assert (=> bs!470535 d!728885))

(declare-fun d!728889 () Bool)

(declare-fun efficientList!364 (BalanceConc!18106) List!29747)

(assert (=> d!728889 (= (toValue!36 thiss!5269 x!463248) (IndentationValue!4710 (efficientList!364 x!463248)))))

(declare-fun bs!470541 () Bool)

(assert (= bs!470541 d!728889))

(declare-fun m!2911757 () Bool)

(assert (=> bs!470541 m!2911757))

(assert (=> bs!470535 d!728889))

(declare-fun d!728893 () Bool)

(assert (=> d!728893 (= (list!11187 x!463248) (list!11189 (c!415102 x!463248)))))

(declare-fun bs!470542 () Bool)

(assert (= bs!470542 d!728893))

(declare-fun m!2911759 () Bool)

(assert (=> bs!470542 m!2911759))

(assert (=> bs!470535 d!728893))

(push 1)

(assert (not b!2577105))

(assert (not d!728883))

(assert (not d!728893))

(assert (not start!249052))

(assert (not b!2577115))

(assert (not d!728889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2577132 () Bool)

(declare-fun e!1626189 () List!29747)

(declare-fun e!1626190 () List!29747)

(assert (=> b!2577132 (= e!1626189 e!1626190)))

(declare-fun c!415117 () Bool)

(assert (=> b!2577132 (= c!415117 (is-Leaf!14101 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)))))))

(declare-fun b!2577133 () Bool)

(declare-fun list!11191 (IArray!18497) List!29747)

(assert (=> b!2577133 (= e!1626190 (list!11191 (xs!12230 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248))))))))

(declare-fun b!2577131 () Bool)

(assert (=> b!2577131 (= e!1626189 Nil!29647)))

(declare-fun d!728899 () Bool)

(declare-fun c!415116 () Bool)

(assert (=> d!728899 (= c!415116 (is-Empty!9246 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)))))))

(assert (=> d!728899 (= (list!11189 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)))) e!1626189)))

(declare-fun b!2577134 () Bool)

(declare-fun ++!7288 (List!29747 List!29747) List!29747)

(assert (=> b!2577134 (= e!1626190 (++!7288 (list!11189 (left!22554 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248))))) (list!11189 (right!22884 (c!415102 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463248)))))))))

(assert (= (and d!728899 c!415116) b!2577131))

(assert (= (and d!728899 (not c!415116)) b!2577132))

(assert (= (and b!2577132 c!415117) b!2577133))

(assert (= (and b!2577132 (not c!415117)) b!2577134))

(declare-fun m!2911767 () Bool)

(assert (=> b!2577133 m!2911767))

(declare-fun m!2911769 () Bool)

(assert (=> b!2577134 m!2911769))

(declare-fun m!2911771 () Bool)

(assert (=> b!2577134 m!2911771))

(assert (=> b!2577134 m!2911769))

(assert (=> b!2577134 m!2911771))

(declare-fun m!2911773 () Bool)

(assert (=> b!2577134 m!2911773))

(assert (=> d!728883 d!728899))

(declare-fun b!2577136 () Bool)

(declare-fun e!1626191 () List!29747)

(declare-fun e!1626192 () List!29747)

(assert (=> b!2577136 (= e!1626191 e!1626192)))

(declare-fun c!415119 () Bool)

(assert (=> b!2577136 (= c!415119 (is-Leaf!14101 (c!415102 x!463248)))))

(declare-fun b!2577137 () Bool)

(assert (=> b!2577137 (= e!1626192 (list!11191 (xs!12230 (c!415102 x!463248))))))

(declare-fun b!2577135 () Bool)

(assert (=> b!2577135 (= e!1626191 Nil!29647)))

(declare-fun d!728901 () Bool)

(declare-fun c!415118 () Bool)

(assert (=> d!728901 (= c!415118 (is-Empty!9246 (c!415102 x!463248)))))

(assert (=> d!728901 (= (list!11189 (c!415102 x!463248)) e!1626191)))

(declare-fun b!2577138 () Bool)

(assert (=> b!2577138 (= e!1626192 (++!7288 (list!11189 (left!22554 (c!415102 x!463248))) (list!11189 (right!22884 (c!415102 x!463248)))))))

(assert (= (and d!728901 c!415118) b!2577135))

(assert (= (and d!728901 (not c!415118)) b!2577136))

(assert (= (and b!2577136 c!415119) b!2577137))

(assert (= (and b!2577136 (not c!415119)) b!2577138))

(declare-fun m!2911775 () Bool)

(assert (=> b!2577137 m!2911775))

(declare-fun m!2911777 () Bool)

(assert (=> b!2577138 m!2911777))

(declare-fun m!2911779 () Bool)

(assert (=> b!2577138 m!2911779))

(assert (=> b!2577138 m!2911777))

(assert (=> b!2577138 m!2911779))

(declare-fun m!2911781 () Bool)

(assert (=> b!2577138 m!2911781))

(assert (=> d!728893 d!728901))

(declare-fun d!728903 () Bool)

(declare-fun lt!906741 () List!29747)

(assert (=> d!728903 (= lt!906741 (list!11187 x!463248))))

(declare-fun efficientList!366 (Conc!9246 List!29747) List!29747)

(declare-fun efficientList$default$2!127 (Conc!9246) List!29747)

(assert (=> d!728903 (= lt!906741 (efficientList!366 (c!415102 x!463248) (efficientList$default$2!127 (c!415102 x!463248))))))

(assert (=> d!728903 (= (efficientList!364 x!463248) lt!906741)))

(declare-fun bs!470545 () Bool)

(assert (= bs!470545 d!728903))

(assert (=> bs!470545 m!2911729))

(declare-fun m!2911783 () Bool)

(assert (=> bs!470545 m!2911783))

(assert (=> bs!470545 m!2911783))

(declare-fun m!2911785 () Bool)

(assert (=> bs!470545 m!2911785))

(assert (=> d!728889 d!728903))

(push 1)

(assert (not b!2577105))

(assert (not start!249052))

(assert (not b!2577115))

(assert (not b!2577138))

(assert (not b!2577133))

(assert (not b!2577137))

(assert (not d!728903))

(assert (not b!2577134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728911 () Bool)

(declare-fun c!415130 () Bool)

(assert (=> d!728911 (= c!415130 (is-Node!9246 (c!415102 x!463248)))))

(declare-fun e!1626205 () Bool)

(assert (=> d!728911 (= (inv!39942 (c!415102 x!463248)) e!1626205)))

(declare-fun b!2577161 () Bool)

(declare-fun inv!39946 (Conc!9246) Bool)

(assert (=> b!2577161 (= e!1626205 (inv!39946 (c!415102 x!463248)))))

(declare-fun b!2577162 () Bool)

(declare-fun e!1626206 () Bool)

(assert (=> b!2577162 (= e!1626205 e!1626206)))

(declare-fun res!1083979 () Bool)

(assert (=> b!2577162 (= res!1083979 (not (is-Leaf!14101 (c!415102 x!463248))))))

(assert (=> b!2577162 (=> res!1083979 e!1626206)))

(declare-fun b!2577163 () Bool)

(declare-fun inv!39947 (Conc!9246) Bool)

(assert (=> b!2577163 (= e!1626206 (inv!39947 (c!415102 x!463248)))))

(assert (= (and d!728911 c!415130) b!2577161))

(assert (= (and d!728911 (not c!415130)) b!2577162))

(assert (= (and b!2577162 (not res!1083979)) b!2577163))

(declare-fun m!2911807 () Bool)

(assert (=> b!2577161 m!2911807))

(declare-fun m!2911809 () Bool)

(assert (=> b!2577163 m!2911809))

(assert (=> b!2577105 d!728911))

(assert (=> start!249052 d!728889))

(declare-fun d!728913 () Bool)

(declare-fun isBalanced!2812 (Conc!9246) Bool)

(assert (=> d!728913 (= (inv!39943 x!463248) (isBalanced!2812 (c!415102 x!463248)))))

(declare-fun bs!470547 () Bool)

(assert (= bs!470547 d!728913))

(declare-fun m!2911811 () Bool)

(assert (=> bs!470547 m!2911811))

(assert (=> start!249052 d!728913))

(assert (=> start!249052 d!728885))

(assert (=> start!249052 d!728883))

(declare-fun d!728915 () Bool)

(declare-fun choose!15198 (Int) Bool)

(assert (=> d!728915 (= (Forall!1149 lambda!95070) (choose!15198 lambda!95070))))

(declare-fun bs!470548 () Bool)

(assert (= bs!470548 d!728915))

(declare-fun m!2911813 () Bool)

(assert (=> bs!470548 m!2911813))

(assert (=> start!249052 d!728915))

(assert (=> start!249052 d!728893))

(declare-fun d!728917 () Bool)

(declare-fun fromListB!1419 (List!29747) BalanceConc!18106)

(assert (=> d!728917 (= (seqFromList!3140 (value!145146 (toValue!36 thiss!5269 x!463248))) (fromListB!1419 (value!145146 (toValue!36 thiss!5269 x!463248))))))

(declare-fun bs!470549 () Bool)

(assert (= bs!470549 d!728917))

(declare-fun m!2911815 () Bool)

(assert (=> bs!470549 m!2911815))

(assert (=> b!2577115 d!728917))

(assert (=> d!728903 d!728893))

(declare-fun d!728919 () Bool)

(declare-fun lt!906758 () List!29747)

(assert (=> d!728919 (= lt!906758 (++!7288 (list!11189 (c!415102 x!463248)) (efficientList$default$2!127 (c!415102 x!463248))))))

(declare-fun e!1626213 () List!29747)

(assert (=> d!728919 (= lt!906758 e!1626213)))

(declare-fun c!415137 () Bool)

(assert (=> d!728919 (= c!415137 (is-Empty!9246 (c!415102 x!463248)))))

(assert (=> d!728919 (= (efficientList!366 (c!415102 x!463248) (efficientList$default$2!127 (c!415102 x!463248))) lt!906758)))

(declare-fun b!2577176 () Bool)

(declare-fun e!1626214 () List!29747)

(assert (=> b!2577176 (= e!1626213 e!1626214)))

(declare-fun c!415139 () Bool)

(assert (=> b!2577176 (= c!415139 (is-Leaf!14101 (c!415102 x!463248)))))

(declare-fun b!2577177 () Bool)

(declare-fun e!1626215 () List!29747)

(declare-fun lt!906759 () List!29747)

(assert (=> b!2577177 (= e!1626215 lt!906759)))

(declare-fun b!2577178 () Bool)

(declare-fun efficientList!368 (IArray!18497) List!29747)

(assert (=> b!2577178 (= e!1626215 (efficientList!368 (xs!12230 (c!415102 x!463248))))))

(declare-fun b!2577179 () Bool)

(assert (=> b!2577179 (= e!1626213 (efficientList$default$2!127 (c!415102 x!463248)))))

(declare-fun b!2577180 () Bool)

(declare-datatypes ((Unit!43497 0))(
  ( (Unit!43498) )
))
(declare-fun lt!906756 () Unit!43497)

(declare-fun lt!906757 () Unit!43497)

(assert (=> b!2577180 (= lt!906756 lt!906757)))

(declare-fun call!166682 () List!29747)

(declare-fun lt!906755 () List!29747)

(assert (=> b!2577180 (= (++!7288 call!166682 (efficientList$default$2!127 (c!415102 x!463248))) (++!7288 lt!906759 (++!7288 lt!906755 (efficientList$default$2!127 (c!415102 x!463248)))))))

(declare-fun lemmaConcatAssociativity!1471 (List!29747 List!29747 List!29747) Unit!43497)

(assert (=> b!2577180 (= lt!906757 (lemmaConcatAssociativity!1471 lt!906759 lt!906755 (efficientList$default$2!127 (c!415102 x!463248))))))

(assert (=> b!2577180 (= lt!906755 (list!11189 (right!22884 (c!415102 x!463248))))))

(assert (=> b!2577180 (= lt!906759 (list!11189 (left!22554 (c!415102 x!463248))))))

(assert (=> b!2577180 (= e!1626214 (efficientList!366 (left!22554 (c!415102 x!463248)) (efficientList!366 (right!22884 (c!415102 x!463248)) (efficientList$default$2!127 (c!415102 x!463248)))))))

(declare-fun b!2577181 () Bool)

(assert (=> b!2577181 (= e!1626214 call!166682)))

(declare-fun bm!166677 () Bool)

(declare-fun c!415138 () Bool)

(assert (=> bm!166677 (= c!415138 c!415139)))

(assert (=> bm!166677 (= call!166682 (++!7288 e!1626215 (ite c!415139 (efficientList$default$2!127 (c!415102 x!463248)) lt!906755)))))

(assert (= (and d!728919 c!415137) b!2577179))

(assert (= (and d!728919 (not c!415137)) b!2577176))

(assert (= (and b!2577176 c!415139) b!2577181))

(assert (= (and b!2577176 (not c!415139)) b!2577180))

(assert (= (or b!2577181 b!2577180) bm!166677))

(assert (= (and bm!166677 c!415138) b!2577178))

(assert (= (and bm!166677 (not c!415138)) b!2577177))

(assert (=> d!728919 m!2911759))

(assert (=> d!728919 m!2911759))

(assert (=> d!728919 m!2911783))

(declare-fun m!2911817 () Bool)

(assert (=> d!728919 m!2911817))

(declare-fun m!2911819 () Bool)

(assert (=> b!2577178 m!2911819))

(assert (=> b!2577180 m!2911783))

(declare-fun m!2911821 () Bool)

(assert (=> b!2577180 m!2911821))

(assert (=> b!2577180 m!2911783))

(declare-fun m!2911823 () Bool)

(assert (=> b!2577180 m!2911823))

(assert (=> b!2577180 m!2911783))

(declare-fun m!2911825 () Bool)

(assert (=> b!2577180 m!2911825))

(assert (=> b!2577180 m!2911825))

(declare-fun m!2911827 () Bool)

(assert (=> b!2577180 m!2911827))

(assert (=> b!2577180 m!2911777))

(assert (=> b!2577180 m!2911783))

(declare-fun m!2911829 () Bool)

(assert (=> b!2577180 m!2911829))

(assert (=> b!2577180 m!2911779))

(assert (=> b!2577180 m!2911823))

(declare-fun m!2911831 () Bool)

(assert (=> b!2577180 m!2911831))

(declare-fun m!2911833 () Bool)

(assert (=> bm!166677 m!2911833))

(assert (=> d!728903 d!728919))

(declare-fun d!728921 () Bool)

(assert (=> d!728921 (= (efficientList$default$2!127 (c!415102 x!463248)) Nil!29647)))

(assert (=> d!728903 d!728921))

(declare-fun tp!819066 () Bool)

(declare-fun tp!819065 () Bool)

(declare-fun b!2577188 () Bool)

(declare-fun e!1626220 () Bool)

(assert (=> b!2577188 (= e!1626220 (and (inv!39942 (left!22554 (c!415102 x!463248))) tp!819065 (inv!39942 (right!22884 (c!415102 x!463248))) tp!819066))))

(declare-fun b!2577189 () Bool)

(declare-fun inv!39948 (IArray!18497) Bool)

(assert (=> b!2577189 (= e!1626220 (inv!39948 (xs!12230 (c!415102 x!463248))))))

(assert (=> b!2577105 (= tp!819057 (and (inv!39942 (c!415102 x!463248)) e!1626220))))

(assert (= (and b!2577105 (is-Node!9246 (c!415102 x!463248))) b!2577188))

(assert (= (and b!2577105 (is-Leaf!14101 (c!415102 x!463248))) b!2577189))

(declare-fun m!2911835 () Bool)

(assert (=> b!2577188 m!2911835))

(declare-fun m!2911837 () Bool)

(assert (=> b!2577188 m!2911837))

(declare-fun m!2911839 () Bool)

(assert (=> b!2577189 m!2911839))

(assert (=> b!2577105 m!2911723))

(push 1)

(assert (not d!728915))

(assert (not b!2577178))

(assert (not b!2577163))

(assert (not b!2577138))

(assert (not d!728913))

(assert (not d!728919))

(assert (not b!2577161))

(assert (not b!2577105))

(assert (not bm!166677))

(assert (not d!728917))

(assert (not b!2577180))

(assert (not b!2577133))

(assert (not b!2577137))

(assert (not b!2577188))

(assert (not b!2577134))

(assert (not b!2577189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2577236 () Bool)

(declare-fun e!1626248 () Bool)

(declare-fun lt!906777 () List!29747)

(assert (=> b!2577236 (= e!1626248 (or (not (= (efficientList$default$2!127 (c!415102 x!463248)) Nil!29647)) (= lt!906777 (list!11189 (c!415102 x!463248)))))))

(declare-fun b!2577233 () Bool)

(declare-fun e!1626247 () List!29747)

(assert (=> b!2577233 (= e!1626247 (efficientList$default$2!127 (c!415102 x!463248)))))

(declare-fun b!2577234 () Bool)

(assert (=> b!2577234 (= e!1626247 (Cons!29647 (h!35067 (list!11189 (c!415102 x!463248))) (++!7288 (t!211536 (list!11189 (c!415102 x!463248))) (efficientList$default$2!127 (c!415102 x!463248)))))))

(declare-fun b!2577235 () Bool)

(declare-fun res!1083988 () Bool)

(assert (=> b!2577235 (=> (not res!1083988) (not e!1626248))))

(declare-fun size!22970 (List!29747) Int)

(assert (=> b!2577235 (= res!1083988 (= (size!22970 lt!906777) (+ (size!22970 (list!11189 (c!415102 x!463248))) (size!22970 (efficientList$default$2!127 (c!415102 x!463248))))))))

(declare-fun d!728935 () Bool)

(assert (=> d!728935 e!1626248))

(declare-fun res!1083987 () Bool)

(assert (=> d!728935 (=> (not res!1083987) (not e!1626248))))

(declare-fun content!4090 (List!29747) (Set (_ BitVec 16)))

(assert (=> d!728935 (= res!1083987 (= (content!4090 lt!906777) (set.union (content!4090 (list!11189 (c!415102 x!463248))) (content!4090 (efficientList$default$2!127 (c!415102 x!463248))))))))

(assert (=> d!728935 (= lt!906777 e!1626247)))

(declare-fun c!415154 () Bool)

(assert (=> d!728935 (= c!415154 (is-Nil!29647 (list!11189 (c!415102 x!463248))))))

(assert (=> d!728935 (= (++!7288 (list!11189 (c!415102 x!463248)) (efficientList$default$2!127 (c!415102 x!463248))) lt!906777)))

(assert (= (and d!728935 c!415154) b!2577233))

(assert (= (and d!728935 (not c!415154)) b!2577234))

(assert (= (and d!728935 res!1083987) b!2577235))

(assert (= (and b!2577235 res!1083988) b!2577236))

(assert (=> b!2577234 m!2911783))

(declare-fun m!2911875 () Bool)

(assert (=> b!2577234 m!2911875))

(declare-fun m!2911877 () Bool)

(assert (=> b!2577235 m!2911877))

(assert (=> b!2577235 m!2911759))

(declare-fun m!2911879 () Bool)

(assert (=> b!2577235 m!2911879))

(assert (=> b!2577235 m!2911783))

(declare-fun m!2911881 () Bool)

(assert (=> b!2577235 m!2911881))

(declare-fun m!2911883 () Bool)

(assert (=> d!728935 m!2911883))

(assert (=> d!728935 m!2911759))

(declare-fun m!2911885 () Bool)

(assert (=> d!728935 m!2911885))

(assert (=> d!728935 m!2911783))

(declare-fun m!2911887 () Bool)

(assert (=> d!728935 m!2911887))

(assert (=> d!728919 d!728935))

(assert (=> d!728919 d!728901))

(declare-fun d!728937 () Bool)

(declare-fun e!1626251 () Bool)

(assert (=> d!728937 e!1626251))

(declare-fun res!1083991 () Bool)

(assert (=> d!728937 (=> (not res!1083991) (not e!1626251))))

(declare-fun lt!906780 () BalanceConc!18106)

(assert (=> d!728937 (= res!1083991 (= (list!11187 lt!906780) (value!145146 (toValue!36 thiss!5269 x!463248))))))

(declare-fun fromList!556 (List!29747) Conc!9246)

(assert (=> d!728937 (= lt!906780 (BalanceConc!18107 (fromList!556 (value!145146 (toValue!36 thiss!5269 x!463248)))))))

(assert (=> d!728937 (= (fromListB!1419 (value!145146 (toValue!36 thiss!5269 x!463248))) lt!906780)))

(declare-fun b!2577239 () Bool)

(assert (=> b!2577239 (= e!1626251 (isBalanced!2812 (fromList!556 (value!145146 (toValue!36 thiss!5269 x!463248)))))))

(assert (= (and d!728937 res!1083991) b!2577239))

(declare-fun m!2911889 () Bool)

(assert (=> d!728937 m!2911889))

(declare-fun m!2911891 () Bool)

(assert (=> d!728937 m!2911891))

(assert (=> b!2577239 m!2911891))

(assert (=> b!2577239 m!2911891))

(declare-fun m!2911893 () Bool)

(assert (=> b!2577239 m!2911893))

(assert (=> d!728917 d!728937))

(push 1)

(assert (not b!2577161))

(assert (not b!2577234))

(assert (not b!2577180))

(assert (not d!728935))

(assert (not d!728937))

(assert (not b!2577239))

(assert (not d!728915))

(assert (not b!2577178))

(assert (not b!2577163))

(assert (not b!2577138))

(assert (not d!728913))

(assert (not b!2577235))

(assert (not b!2577105))

(assert (not bm!166677))

(assert (not b!2577133))

(assert (not b!2577137))

(assert (not b!2577188))

(assert (not b!2577134))

(assert (not b!2577189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

