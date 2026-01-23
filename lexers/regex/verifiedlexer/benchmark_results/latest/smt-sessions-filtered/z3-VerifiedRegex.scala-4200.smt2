; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228028 () Bool)

(assert start!228028)

(declare-datatypes ((List!27621 0))(
  ( (Nil!27523) (Cons!27523 (h!32924 (_ BitVec 16)) (t!207207 List!27621)) )
))
(declare-fun lt!857606 () List!27621)

(declare-datatypes ((IArray!17987 0))(
  ( (IArray!17988 (innerList!9051 List!27621)) )
))
(declare-datatypes ((Conc!8991 0))(
  ( (Node!8991 (left!20879 Conc!8991) (right!21209 Conc!8991) (csize!18212 Int) (cheight!9202 Int)) (Leaf!13192 (xs!11933 IArray!17987) (csize!18213 Int)) (Empty!8991) )
))
(declare-datatypes ((BalanceConc!17714 0))(
  ( (BalanceConc!17715 (c!366615 Conc!8991)) )
))
(declare-fun v!4171 () BalanceConc!17714)

(declare-fun efficientList!321 (BalanceConc!17714) List!27621)

(assert (=> start!228028 (= lt!857606 (efficientList!321 v!4171))))

(declare-datatypes ((TokenValue!4587 0))(
  ( (FloatLiteralValue!9174 (text!32554 List!27621)) (TokenValueExt!4586 (__x!18223 Int)) (Broken!22935 (value!139909 List!27621)) (Object!4684) (End!4587) (Def!4587) (Underscore!4587) (Match!4587) (Else!4587) (Error!4587) (Case!4587) (If!4587) (Extends!4587) (Abstract!4587) (Class!4587) (Val!4587) (DelimiterValue!9174 (del!4647 List!27621)) (KeywordValue!4593 (value!139910 List!27621)) (CommentValue!9174 (value!139911 List!27621)) (WhitespaceValue!9174 (value!139912 List!27621)) (IndentationValue!4587 (value!139913 List!27621)) (String!30028) (Int32!4587) (Broken!22936 (value!139914 List!27621)) (Boolean!4588) (Unit!40451) (OperatorValue!4590 (op!4647 List!27621)) (IdentifierValue!9174 (value!139915 List!27621)) (IdentifierValue!9175 (value!139916 List!27621)) (WhitespaceValue!9175 (value!139917 List!27621)) (True!9174) (False!9174) (Broken!22937 (value!139918 List!27621)) (Broken!22938 (value!139919 List!27621)) (True!9175) (RightBrace!4587) (RightBracket!4587) (Colon!4587) (Null!4587) (Comma!4587) (LeftBracket!4587) (False!9175) (LeftBrace!4587) (ImaginaryLiteralValue!4587 (text!32555 List!27621)) (StringLiteralValue!13761 (value!139920 List!27621)) (EOFValue!4587 (value!139921 List!27621)) (IdentValue!4587 (value!139922 List!27621)) (DelimiterValue!9175 (value!139923 List!27621)) (DedentValue!4587 (value!139924 List!27621)) (NewLineValue!4587 (value!139925 List!27621)) (IntegerValue!13761 (value!139926 (_ BitVec 32)) (text!32556 List!27621)) (IntegerValue!13762 (value!139927 Int) (text!32557 List!27621)) (Times!4587) (Or!4587) (Equal!4587) (Minus!4587) (Broken!22939 (value!139928 List!27621)) (And!4587) (Div!4587) (LessEqual!4587) (Mod!4587) (Concat!11351) (Not!4587) (Plus!4587) (SpaceValue!4587 (value!139929 List!27621)) (IntegerValue!13763 (value!139930 Int) (text!32558 List!27621)) (StringLiteralValue!13762 (text!32559 List!27621)) (FloatLiteralValue!9175 (text!32560 List!27621)) (BytesLiteralValue!4587 (value!139931 List!27621)) (CommentValue!9175 (value!139932 List!27621)) (StringLiteralValue!13763 (value!139933 List!27621)) (ErrorTokenValue!4587 (msg!4648 List!27621)) )
))
(declare-fun inv!21 (TokenValue!4587) Bool)

(declare-fun charsToBigInt!0 (List!27621 Int) Int)

(assert (=> start!228028 (not (inv!21 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(declare-fun e!1481821 () Bool)

(declare-fun inv!37231 (BalanceConc!17714) Bool)

(assert (=> start!228028 (and (inv!37231 v!4171) e!1481821)))

(declare-fun b!2312135 () Bool)

(declare-fun tp!733481 () Bool)

(declare-fun inv!37232 (Conc!8991) Bool)

(assert (=> b!2312135 (= e!1481821 (and (inv!37232 (c!366615 v!4171)) tp!733481))))

(assert (= start!228028 b!2312135))

(declare-fun m!2739623 () Bool)

(assert (=> start!228028 m!2739623))

(declare-fun m!2739625 () Bool)

(assert (=> start!228028 m!2739625))

(declare-fun m!2739627 () Bool)

(assert (=> start!228028 m!2739627))

(declare-fun m!2739629 () Bool)

(assert (=> start!228028 m!2739629))

(declare-fun m!2739631 () Bool)

(assert (=> b!2312135 m!2739631))

(check-sat (not start!228028) (not b!2312135))
(check-sat)
(get-model)

(declare-fun d!684125 () Bool)

(declare-fun lt!857609 () List!27621)

(declare-fun list!10899 (BalanceConc!17714) List!27621)

(assert (=> d!684125 (= lt!857609 (list!10899 v!4171))))

(declare-fun efficientList!323 (Conc!8991 List!27621) List!27621)

(declare-fun efficientList$default$2!111 (Conc!8991) List!27621)

(assert (=> d!684125 (= lt!857609 (efficientList!323 (c!366615 v!4171) (efficientList$default$2!111 (c!366615 v!4171))))))

(assert (=> d!684125 (= (efficientList!321 v!4171) lt!857609)))

(declare-fun bs!458660 () Bool)

(assert (= bs!458660 d!684125))

(declare-fun m!2739637 () Bool)

(assert (=> bs!458660 m!2739637))

(declare-fun m!2739639 () Bool)

(assert (=> bs!458660 m!2739639))

(assert (=> bs!458660 m!2739639))

(declare-fun m!2739641 () Bool)

(assert (=> bs!458660 m!2739641))

(assert (=> start!228028 d!684125))

(declare-fun b!2312165 () Bool)

(declare-fun e!1481842 () Bool)

(declare-fun inv!15 (TokenValue!4587) Bool)

(assert (=> b!2312165 (= e!1481842 (inv!15 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(declare-fun b!2312166 () Bool)

(declare-fun res!988428 () Bool)

(assert (=> b!2312166 (=> res!988428 e!1481842)))

(get-info :version)

(assert (=> b!2312166 (= res!988428 (not ((_ is IntegerValue!13763) (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))))))

(declare-fun e!1481841 () Bool)

(assert (=> b!2312166 (= e!1481841 e!1481842)))

(declare-fun b!2312167 () Bool)

(declare-fun e!1481840 () Bool)

(declare-fun inv!16 (TokenValue!4587) Bool)

(assert (=> b!2312167 (= e!1481840 (inv!16 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(declare-fun b!2312168 () Bool)

(declare-fun inv!17 (TokenValue!4587) Bool)

(assert (=> b!2312168 (= e!1481841 (inv!17 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(declare-fun d!684129 () Bool)

(declare-fun c!366628 () Bool)

(assert (=> d!684129 (= c!366628 ((_ is IntegerValue!13761) (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(assert (=> d!684129 (= (inv!21 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)) e!1481840)))

(declare-fun b!2312169 () Bool)

(assert (=> b!2312169 (= e!1481840 e!1481841)))

(declare-fun c!366627 () Bool)

(assert (=> b!2312169 (= c!366627 ((_ is IntegerValue!13762) (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)))))

(assert (= (and d!684129 c!366628) b!2312167))

(assert (= (and d!684129 (not c!366628)) b!2312169))

(assert (= (and b!2312169 c!366627) b!2312168))

(assert (= (and b!2312169 (not c!366627)) b!2312166))

(assert (= (and b!2312166 (not res!988428)) b!2312165))

(declare-fun m!2739649 () Bool)

(assert (=> b!2312165 m!2739649))

(declare-fun m!2739651 () Bool)

(assert (=> b!2312167 m!2739651))

(declare-fun m!2739653 () Bool)

(assert (=> b!2312168 m!2739653))

(assert (=> start!228028 d!684129))

(declare-fun d!684133 () Bool)

(declare-fun c!366636 () Bool)

(assert (=> d!684133 (= c!366636 ((_ is Nil!27523) lt!857606))))

(declare-fun e!1481851 () Int)

(assert (=> d!684133 (= (charsToBigInt!0 lt!857606 0) e!1481851)))

(declare-fun b!2312185 () Bool)

(assert (=> b!2312185 (= e!1481851 0)))

(declare-fun b!2312186 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2312186 (= e!1481851 (charsToBigInt!0 (t!207207 lt!857606) (+ (* 0 10) (charToBigInt!0 (h!32924 lt!857606)))))))

(assert (= (and d!684133 c!366636) b!2312185))

(assert (= (and d!684133 (not c!366636)) b!2312186))

(declare-fun m!2739665 () Bool)

(assert (=> b!2312186 m!2739665))

(declare-fun m!2739667 () Bool)

(assert (=> b!2312186 m!2739667))

(assert (=> start!228028 d!684133))

(declare-fun d!684139 () Bool)

(declare-fun isBalanced!2703 (Conc!8991) Bool)

(assert (=> d!684139 (= (inv!37231 v!4171) (isBalanced!2703 (c!366615 v!4171)))))

(declare-fun bs!458663 () Bool)

(assert (= bs!458663 d!684139))

(declare-fun m!2739671 () Bool)

(assert (=> bs!458663 m!2739671))

(assert (=> start!228028 d!684139))

(declare-fun d!684141 () Bool)

(declare-fun c!366639 () Bool)

(assert (=> d!684141 (= c!366639 ((_ is Node!8991) (c!366615 v!4171)))))

(declare-fun e!1481862 () Bool)

(assert (=> d!684141 (= (inv!37232 (c!366615 v!4171)) e!1481862)))

(declare-fun b!2312201 () Bool)

(declare-fun inv!37236 (Conc!8991) Bool)

(assert (=> b!2312201 (= e!1481862 (inv!37236 (c!366615 v!4171)))))

(declare-fun b!2312202 () Bool)

(declare-fun e!1481863 () Bool)

(assert (=> b!2312202 (= e!1481862 e!1481863)))

(declare-fun res!988432 () Bool)

(assert (=> b!2312202 (= res!988432 (not ((_ is Leaf!13192) (c!366615 v!4171))))))

(assert (=> b!2312202 (=> res!988432 e!1481863)))

(declare-fun b!2312203 () Bool)

(declare-fun inv!37237 (Conc!8991) Bool)

(assert (=> b!2312203 (= e!1481863 (inv!37237 (c!366615 v!4171)))))

(assert (= (and d!684141 c!366639) b!2312201))

(assert (= (and d!684141 (not c!366639)) b!2312202))

(assert (= (and b!2312202 (not res!988432)) b!2312203))

(declare-fun m!2739679 () Bool)

(assert (=> b!2312201 m!2739679))

(declare-fun m!2739681 () Bool)

(assert (=> b!2312203 m!2739681))

(assert (=> b!2312135 d!684141))

(declare-fun tp!733493 () Bool)

(declare-fun tp!733492 () Bool)

(declare-fun e!1481868 () Bool)

(declare-fun b!2312210 () Bool)

(assert (=> b!2312210 (= e!1481868 (and (inv!37232 (left!20879 (c!366615 v!4171))) tp!733492 (inv!37232 (right!21209 (c!366615 v!4171))) tp!733493))))

(declare-fun b!2312211 () Bool)

(declare-fun inv!37238 (IArray!17987) Bool)

(assert (=> b!2312211 (= e!1481868 (inv!37238 (xs!11933 (c!366615 v!4171))))))

(assert (=> b!2312135 (= tp!733481 (and (inv!37232 (c!366615 v!4171)) e!1481868))))

(assert (= (and b!2312135 ((_ is Node!8991) (c!366615 v!4171))) b!2312210))

(assert (= (and b!2312135 ((_ is Leaf!13192) (c!366615 v!4171))) b!2312211))

(declare-fun m!2739683 () Bool)

(assert (=> b!2312210 m!2739683))

(declare-fun m!2739685 () Bool)

(assert (=> b!2312210 m!2739685))

(declare-fun m!2739687 () Bool)

(assert (=> b!2312211 m!2739687))

(assert (=> b!2312135 m!2739631))

(check-sat (not d!684139) (not b!2312211) (not b!2312210) (not b!2312165) (not b!2312201) (not b!2312203) (not b!2312168) (not b!2312186) (not b!2312135) (not d!684125) (not b!2312167))
(check-sat)
(get-model)

(declare-fun d!684145 () Bool)

(declare-fun size!21727 (List!27621) Int)

(assert (=> d!684145 (= (inv!37238 (xs!11933 (c!366615 v!4171))) (<= (size!21727 (innerList!9051 (xs!11933 (c!366615 v!4171)))) 2147483647))))

(declare-fun bs!458665 () Bool)

(assert (= bs!458665 d!684145))

(declare-fun m!2739691 () Bool)

(assert (=> bs!458665 m!2739691))

(assert (=> b!2312211 d!684145))

(declare-fun d!684149 () Bool)

(assert (=> d!684149 (= (inv!15 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)) (= (charsToBigInt!0 (text!32558 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)) 0) (value!139930 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))))))

(declare-fun bs!458666 () Bool)

(assert (= bs!458666 d!684149))

(declare-fun m!2739693 () Bool)

(assert (=> bs!458666 m!2739693))

(assert (=> b!2312165 d!684149))

(declare-fun d!684151 () Bool)

(declare-fun list!10900 (Conc!8991) List!27621)

(assert (=> d!684151 (= (list!10899 v!4171) (list!10900 (c!366615 v!4171)))))

(declare-fun bs!458667 () Bool)

(assert (= bs!458667 d!684151))

(declare-fun m!2739695 () Bool)

(assert (=> bs!458667 m!2739695))

(assert (=> d!684125 d!684151))

(declare-fun b!2312263 () Bool)

(declare-fun e!1481893 () List!27621)

(declare-fun call!137415 () List!27621)

(assert (=> b!2312263 (= e!1481893 call!137415)))

(declare-fun b!2312264 () Bool)

(declare-fun e!1481894 () List!27621)

(assert (=> b!2312264 (= e!1481894 e!1481893)))

(declare-fun c!366652 () Bool)

(assert (=> b!2312264 (= c!366652 ((_ is Leaf!13192) (c!366615 v!4171)))))

(declare-fun b!2312265 () Bool)

(declare-datatypes ((Unit!40452 0))(
  ( (Unit!40453) )
))
(declare-fun lt!857623 () Unit!40452)

(declare-fun lt!857625 () Unit!40452)

(assert (=> b!2312265 (= lt!857623 lt!857625)))

(declare-fun lt!857627 () List!27621)

(declare-fun lt!857626 () List!27621)

(declare-fun ++!6744 (List!27621 List!27621) List!27621)

(assert (=> b!2312265 (= (++!6744 call!137415 (efficientList$default$2!111 (c!366615 v!4171))) (++!6744 lt!857627 (++!6744 lt!857626 (efficientList$default$2!111 (c!366615 v!4171)))))))

(declare-fun lemmaConcatAssociativity!1428 (List!27621 List!27621 List!27621) Unit!40452)

(assert (=> b!2312265 (= lt!857625 (lemmaConcatAssociativity!1428 lt!857627 lt!857626 (efficientList$default$2!111 (c!366615 v!4171))))))

(assert (=> b!2312265 (= lt!857626 (list!10900 (right!21209 (c!366615 v!4171))))))

(assert (=> b!2312265 (= lt!857627 (list!10900 (left!20879 (c!366615 v!4171))))))

(assert (=> b!2312265 (= e!1481893 (efficientList!323 (left!20879 (c!366615 v!4171)) (efficientList!323 (right!21209 (c!366615 v!4171)) (efficientList$default$2!111 (c!366615 v!4171)))))))

(declare-fun bm!137410 () Bool)

(declare-fun c!366651 () Bool)

(assert (=> bm!137410 (= c!366651 c!366652)))

(declare-fun e!1481892 () List!27621)

(assert (=> bm!137410 (= call!137415 (++!6744 e!1481892 (ite c!366652 (efficientList$default$2!111 (c!366615 v!4171)) lt!857626)))))

(declare-fun b!2312266 () Bool)

(assert (=> b!2312266 (= e!1481894 (efficientList$default$2!111 (c!366615 v!4171)))))

(declare-fun b!2312268 () Bool)

(declare-fun efficientList!324 (IArray!17987) List!27621)

(assert (=> b!2312268 (= e!1481892 (efficientList!324 (xs!11933 (c!366615 v!4171))))))

(declare-fun d!684153 () Bool)

(declare-fun lt!857624 () List!27621)

(assert (=> d!684153 (= lt!857624 (++!6744 (list!10900 (c!366615 v!4171)) (efficientList$default$2!111 (c!366615 v!4171))))))

(assert (=> d!684153 (= lt!857624 e!1481894)))

(declare-fun c!366650 () Bool)

(assert (=> d!684153 (= c!366650 ((_ is Empty!8991) (c!366615 v!4171)))))

(assert (=> d!684153 (= (efficientList!323 (c!366615 v!4171) (efficientList$default$2!111 (c!366615 v!4171))) lt!857624)))

(declare-fun b!2312267 () Bool)

(assert (=> b!2312267 (= e!1481892 lt!857627)))

(assert (= (and d!684153 c!366650) b!2312266))

(assert (= (and d!684153 (not c!366650)) b!2312264))

(assert (= (and b!2312264 c!366652) b!2312263))

(assert (= (and b!2312264 (not c!366652)) b!2312265))

(assert (= (or b!2312263 b!2312265) bm!137410))

(assert (= (and bm!137410 c!366651) b!2312268))

(assert (= (and bm!137410 (not c!366651)) b!2312267))

(declare-fun m!2739733 () Bool)

(assert (=> b!2312265 m!2739733))

(declare-fun m!2739735 () Bool)

(assert (=> b!2312265 m!2739735))

(assert (=> b!2312265 m!2739639))

(declare-fun m!2739739 () Bool)

(assert (=> b!2312265 m!2739739))

(assert (=> b!2312265 m!2739639))

(declare-fun m!2739741 () Bool)

(assert (=> b!2312265 m!2739741))

(declare-fun m!2739743 () Bool)

(assert (=> b!2312265 m!2739743))

(declare-fun m!2739745 () Bool)

(assert (=> b!2312265 m!2739745))

(assert (=> b!2312265 m!2739639))

(assert (=> b!2312265 m!2739743))

(declare-fun m!2739747 () Bool)

(assert (=> b!2312265 m!2739747))

(declare-fun m!2739749 () Bool)

(assert (=> b!2312265 m!2739749))

(assert (=> b!2312265 m!2739639))

(assert (=> b!2312265 m!2739747))

(declare-fun m!2739751 () Bool)

(assert (=> bm!137410 m!2739751))

(declare-fun m!2739753 () Bool)

(assert (=> b!2312268 m!2739753))

(assert (=> d!684153 m!2739695))

(assert (=> d!684153 m!2739695))

(assert (=> d!684153 m!2739639))

(declare-fun m!2739755 () Bool)

(assert (=> d!684153 m!2739755))

(assert (=> d!684125 d!684153))

(declare-fun d!684173 () Bool)

(assert (=> d!684173 (= (efficientList$default$2!111 (c!366615 v!4171)) Nil!27523)))

(assert (=> d!684125 d!684173))

(declare-fun b!2312283 () Bool)

(declare-fun res!988483 () Bool)

(declare-fun e!1481900 () Bool)

(assert (=> b!2312283 (=> (not res!988483) (not e!1481900))))

(declare-fun isEmpty!15746 (Conc!8991) Bool)

(assert (=> b!2312283 (= res!988483 (not (isEmpty!15746 (left!20879 (c!366615 v!4171)))))))

(declare-fun b!2312284 () Bool)

(declare-fun res!988484 () Bool)

(assert (=> b!2312284 (=> (not res!988484) (not e!1481900))))

(assert (=> b!2312284 (= res!988484 (isBalanced!2703 (right!21209 (c!366615 v!4171))))))

(declare-fun d!684175 () Bool)

(declare-fun res!988481 () Bool)

(declare-fun e!1481901 () Bool)

(assert (=> d!684175 (=> res!988481 e!1481901)))

(assert (=> d!684175 (= res!988481 (not ((_ is Node!8991) (c!366615 v!4171))))))

(assert (=> d!684175 (= (isBalanced!2703 (c!366615 v!4171)) e!1481901)))

(declare-fun b!2312285 () Bool)

(declare-fun res!988482 () Bool)

(assert (=> b!2312285 (=> (not res!988482) (not e!1481900))))

(declare-fun height!1296 (Conc!8991) Int)

(assert (=> b!2312285 (= res!988482 (<= (- (height!1296 (left!20879 (c!366615 v!4171))) (height!1296 (right!21209 (c!366615 v!4171)))) 1))))

(declare-fun b!2312286 () Bool)

(assert (=> b!2312286 (= e!1481901 e!1481900)))

(declare-fun res!988485 () Bool)

(assert (=> b!2312286 (=> (not res!988485) (not e!1481900))))

(assert (=> b!2312286 (= res!988485 (<= (- 1) (- (height!1296 (left!20879 (c!366615 v!4171))) (height!1296 (right!21209 (c!366615 v!4171))))))))

(declare-fun b!2312287 () Bool)

(declare-fun res!988480 () Bool)

(assert (=> b!2312287 (=> (not res!988480) (not e!1481900))))

(assert (=> b!2312287 (= res!988480 (isBalanced!2703 (left!20879 (c!366615 v!4171))))))

(declare-fun b!2312288 () Bool)

(assert (=> b!2312288 (= e!1481900 (not (isEmpty!15746 (right!21209 (c!366615 v!4171)))))))

(assert (= (and d!684175 (not res!988481)) b!2312286))

(assert (= (and b!2312286 res!988485) b!2312285))

(assert (= (and b!2312285 res!988482) b!2312287))

(assert (= (and b!2312287 res!988480) b!2312284))

(assert (= (and b!2312284 res!988484) b!2312283))

(assert (= (and b!2312283 res!988483) b!2312288))

(declare-fun m!2739761 () Bool)

(assert (=> b!2312288 m!2739761))

(declare-fun m!2739763 () Bool)

(assert (=> b!2312285 m!2739763))

(declare-fun m!2739765 () Bool)

(assert (=> b!2312285 m!2739765))

(declare-fun m!2739767 () Bool)

(assert (=> b!2312287 m!2739767))

(declare-fun m!2739769 () Bool)

(assert (=> b!2312284 m!2739769))

(declare-fun m!2739771 () Bool)

(assert (=> b!2312283 m!2739771))

(assert (=> b!2312286 m!2739763))

(assert (=> b!2312286 m!2739765))

(assert (=> d!684139 d!684175))

(declare-fun d!684181 () Bool)

(declare-fun res!988490 () Bool)

(declare-fun e!1481910 () Bool)

(assert (=> d!684181 (=> (not res!988490) (not e!1481910))))

(declare-fun list!10902 (IArray!17987) List!27621)

(assert (=> d!684181 (= res!988490 (<= (size!21727 (list!10902 (xs!11933 (c!366615 v!4171)))) 512))))

(assert (=> d!684181 (= (inv!37237 (c!366615 v!4171)) e!1481910)))

(declare-fun b!2312305 () Bool)

(declare-fun res!988491 () Bool)

(assert (=> b!2312305 (=> (not res!988491) (not e!1481910))))

(assert (=> b!2312305 (= res!988491 (= (csize!18213 (c!366615 v!4171)) (size!21727 (list!10902 (xs!11933 (c!366615 v!4171))))))))

(declare-fun b!2312306 () Bool)

(assert (=> b!2312306 (= e!1481910 (and (> (csize!18213 (c!366615 v!4171)) 0) (<= (csize!18213 (c!366615 v!4171)) 512)))))

(assert (= (and d!684181 res!988490) b!2312305))

(assert (= (and b!2312305 res!988491) b!2312306))

(declare-fun m!2739773 () Bool)

(assert (=> d!684181 m!2739773))

(assert (=> d!684181 m!2739773))

(declare-fun m!2739775 () Bool)

(assert (=> d!684181 m!2739775))

(assert (=> b!2312305 m!2739773))

(assert (=> b!2312305 m!2739773))

(assert (=> b!2312305 m!2739775))

(assert (=> b!2312203 d!684181))

(declare-fun d!684183 () Bool)

(declare-fun charsToInt!0 (List!27621) (_ BitVec 32))

(assert (=> d!684183 (= (inv!16 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)) (= (charsToInt!0 (text!32556 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))) (value!139926 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))))))

(declare-fun bs!458672 () Bool)

(assert (= bs!458672 d!684183))

(declare-fun m!2739777 () Bool)

(assert (=> bs!458672 m!2739777))

(assert (=> b!2312167 d!684183))

(assert (=> b!2312135 d!684141))

(declare-fun d!684185 () Bool)

(declare-fun charsToBigInt!1 (List!27621) Int)

(assert (=> d!684185 (= (inv!17 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606)) (= (charsToBigInt!1 (text!32557 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))) (value!139927 (IntegerValue!13763 (charsToBigInt!0 lt!857606 0) lt!857606))))))

(declare-fun bs!458673 () Bool)

(assert (= bs!458673 d!684185))

(declare-fun m!2739779 () Bool)

(assert (=> bs!458673 m!2739779))

(assert (=> b!2312168 d!684185))

(declare-fun d!684187 () Bool)

(declare-fun res!988498 () Bool)

(declare-fun e!1481920 () Bool)

(assert (=> d!684187 (=> (not res!988498) (not e!1481920))))

(declare-fun size!21730 (Conc!8991) Int)

(assert (=> d!684187 (= res!988498 (= (csize!18212 (c!366615 v!4171)) (+ (size!21730 (left!20879 (c!366615 v!4171))) (size!21730 (right!21209 (c!366615 v!4171))))))))

(assert (=> d!684187 (= (inv!37236 (c!366615 v!4171)) e!1481920)))

(declare-fun b!2312323 () Bool)

(declare-fun res!988499 () Bool)

(assert (=> b!2312323 (=> (not res!988499) (not e!1481920))))

(assert (=> b!2312323 (= res!988499 (and (not (= (left!20879 (c!366615 v!4171)) Empty!8991)) (not (= (right!21209 (c!366615 v!4171)) Empty!8991))))))

(declare-fun b!2312324 () Bool)

(declare-fun res!988500 () Bool)

(assert (=> b!2312324 (=> (not res!988500) (not e!1481920))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2312324 (= res!988500 (= (cheight!9202 (c!366615 v!4171)) (+ (max!0 (height!1296 (left!20879 (c!366615 v!4171))) (height!1296 (right!21209 (c!366615 v!4171)))) 1)))))

(declare-fun b!2312325 () Bool)

(assert (=> b!2312325 (= e!1481920 (<= 0 (cheight!9202 (c!366615 v!4171))))))

(assert (= (and d!684187 res!988498) b!2312323))

(assert (= (and b!2312323 res!988499) b!2312324))

(assert (= (and b!2312324 res!988500) b!2312325))

(declare-fun m!2739815 () Bool)

(assert (=> d!684187 m!2739815))

(declare-fun m!2739817 () Bool)

(assert (=> d!684187 m!2739817))

(assert (=> b!2312324 m!2739763))

(assert (=> b!2312324 m!2739765))

(assert (=> b!2312324 m!2739763))

(assert (=> b!2312324 m!2739765))

(declare-fun m!2739819 () Bool)

(assert (=> b!2312324 m!2739819))

(assert (=> b!2312201 d!684187))

(declare-fun d!684191 () Bool)

(declare-fun c!366662 () Bool)

(assert (=> d!684191 (= c!366662 ((_ is Node!8991) (left!20879 (c!366615 v!4171))))))

(declare-fun e!1481921 () Bool)

(assert (=> d!684191 (= (inv!37232 (left!20879 (c!366615 v!4171))) e!1481921)))

(declare-fun b!2312326 () Bool)

(assert (=> b!2312326 (= e!1481921 (inv!37236 (left!20879 (c!366615 v!4171))))))

(declare-fun b!2312327 () Bool)

(declare-fun e!1481922 () Bool)

(assert (=> b!2312327 (= e!1481921 e!1481922)))

(declare-fun res!988501 () Bool)

(assert (=> b!2312327 (= res!988501 (not ((_ is Leaf!13192) (left!20879 (c!366615 v!4171)))))))

(assert (=> b!2312327 (=> res!988501 e!1481922)))

(declare-fun b!2312328 () Bool)

(assert (=> b!2312328 (= e!1481922 (inv!37237 (left!20879 (c!366615 v!4171))))))

(assert (= (and d!684191 c!366662) b!2312326))

(assert (= (and d!684191 (not c!366662)) b!2312327))

(assert (= (and b!2312327 (not res!988501)) b!2312328))

(declare-fun m!2739821 () Bool)

(assert (=> b!2312326 m!2739821))

(declare-fun m!2739823 () Bool)

(assert (=> b!2312328 m!2739823))

(assert (=> b!2312210 d!684191))

(declare-fun d!684193 () Bool)

(declare-fun c!366663 () Bool)

(assert (=> d!684193 (= c!366663 ((_ is Node!8991) (right!21209 (c!366615 v!4171))))))

(declare-fun e!1481923 () Bool)

(assert (=> d!684193 (= (inv!37232 (right!21209 (c!366615 v!4171))) e!1481923)))

(declare-fun b!2312329 () Bool)

(assert (=> b!2312329 (= e!1481923 (inv!37236 (right!21209 (c!366615 v!4171))))))

(declare-fun b!2312330 () Bool)

(declare-fun e!1481924 () Bool)

(assert (=> b!2312330 (= e!1481923 e!1481924)))

(declare-fun res!988502 () Bool)

(assert (=> b!2312330 (= res!988502 (not ((_ is Leaf!13192) (right!21209 (c!366615 v!4171)))))))

(assert (=> b!2312330 (=> res!988502 e!1481924)))

(declare-fun b!2312331 () Bool)

(assert (=> b!2312331 (= e!1481924 (inv!37237 (right!21209 (c!366615 v!4171))))))

(assert (= (and d!684193 c!366663) b!2312329))

(assert (= (and d!684193 (not c!366663)) b!2312330))

(assert (= (and b!2312330 (not res!988502)) b!2312331))

(declare-fun m!2739825 () Bool)

(assert (=> b!2312329 m!2739825))

(declare-fun m!2739827 () Bool)

(assert (=> b!2312331 m!2739827))

(assert (=> b!2312210 d!684193))

(declare-fun d!684195 () Bool)

(declare-fun c!366664 () Bool)

(assert (=> d!684195 (= c!366664 ((_ is Nil!27523) (t!207207 lt!857606)))))

(declare-fun e!1481925 () Int)

(assert (=> d!684195 (= (charsToBigInt!0 (t!207207 lt!857606) (+ (* 0 10) (charToBigInt!0 (h!32924 lt!857606)))) e!1481925)))

(declare-fun b!2312332 () Bool)

(assert (=> b!2312332 (= e!1481925 (+ (* 0 10) (charToBigInt!0 (h!32924 lt!857606))))))

(declare-fun b!2312333 () Bool)

(assert (=> b!2312333 (= e!1481925 (charsToBigInt!0 (t!207207 (t!207207 lt!857606)) (+ (* (+ (* 0 10) (charToBigInt!0 (h!32924 lt!857606))) 10) (charToBigInt!0 (h!32924 (t!207207 lt!857606))))))))

(assert (= (and d!684195 c!366664) b!2312332))

(assert (= (and d!684195 (not c!366664)) b!2312333))

(declare-fun m!2739829 () Bool)

(assert (=> b!2312333 m!2739829))

(declare-fun m!2739831 () Bool)

(assert (=> b!2312333 m!2739831))

(assert (=> b!2312186 d!684195))

(declare-fun d!684197 () Bool)

(assert (=> d!684197 (= (charToBigInt!0 (h!32924 lt!857606)) (ite (= (h!32924 lt!857606) #x0031) 1 (ite (= (h!32924 lt!857606) #x0032) 2 (ite (= (h!32924 lt!857606) #x0033) 3 (ite (= (h!32924 lt!857606) #x0034) 4 (ite (= (h!32924 lt!857606) #x0035) 5 (ite (= (h!32924 lt!857606) #x0036) 6 (ite (= (h!32924 lt!857606) #x0037) 7 (ite (= (h!32924 lt!857606) #x0038) 8 (ite (= (h!32924 lt!857606) #x0039) 9 0))))))))))))

(assert (=> b!2312186 d!684197))

(declare-fun tp!733499 () Bool)

(declare-fun e!1481926 () Bool)

(declare-fun tp!733498 () Bool)

(declare-fun b!2312334 () Bool)

(assert (=> b!2312334 (= e!1481926 (and (inv!37232 (left!20879 (left!20879 (c!366615 v!4171)))) tp!733498 (inv!37232 (right!21209 (left!20879 (c!366615 v!4171)))) tp!733499))))

(declare-fun b!2312335 () Bool)

(assert (=> b!2312335 (= e!1481926 (inv!37238 (xs!11933 (left!20879 (c!366615 v!4171)))))))

(assert (=> b!2312210 (= tp!733492 (and (inv!37232 (left!20879 (c!366615 v!4171))) e!1481926))))

(assert (= (and b!2312210 ((_ is Node!8991) (left!20879 (c!366615 v!4171)))) b!2312334))

(assert (= (and b!2312210 ((_ is Leaf!13192) (left!20879 (c!366615 v!4171)))) b!2312335))

(declare-fun m!2739833 () Bool)

(assert (=> b!2312334 m!2739833))

(declare-fun m!2739835 () Bool)

(assert (=> b!2312334 m!2739835))

(declare-fun m!2739837 () Bool)

(assert (=> b!2312335 m!2739837))

(assert (=> b!2312210 m!2739683))

(declare-fun b!2312336 () Bool)

(declare-fun tp!733501 () Bool)

(declare-fun tp!733500 () Bool)

(declare-fun e!1481928 () Bool)

(assert (=> b!2312336 (= e!1481928 (and (inv!37232 (left!20879 (right!21209 (c!366615 v!4171)))) tp!733500 (inv!37232 (right!21209 (right!21209 (c!366615 v!4171)))) tp!733501))))

(declare-fun b!2312337 () Bool)

(assert (=> b!2312337 (= e!1481928 (inv!37238 (xs!11933 (right!21209 (c!366615 v!4171)))))))

(assert (=> b!2312210 (= tp!733493 (and (inv!37232 (right!21209 (c!366615 v!4171))) e!1481928))))

(assert (= (and b!2312210 ((_ is Node!8991) (right!21209 (c!366615 v!4171)))) b!2312336))

(assert (= (and b!2312210 ((_ is Leaf!13192) (right!21209 (c!366615 v!4171)))) b!2312337))

(declare-fun m!2739839 () Bool)

(assert (=> b!2312336 m!2739839))

(declare-fun m!2739841 () Bool)

(assert (=> b!2312336 m!2739841))

(declare-fun m!2739843 () Bool)

(assert (=> b!2312337 m!2739843))

(assert (=> b!2312210 m!2739685))

(check-sat (not d!684187) (not b!2312210) (not b!2312335) (not b!2312265) (not b!2312283) (not b!2312305) (not b!2312285) (not b!2312337) (not d!684181) (not b!2312284) (not b!2312286) (not b!2312326) (not b!2312328) (not b!2312329) (not d!684183) (not b!2312331) (not d!684151) (not d!684153) (not b!2312334) (not b!2312333) (not b!2312287) (not d!684145) (not d!684149) (not b!2312288) (not b!2312268) (not b!2312336) (not bm!137410) (not d!684185) (not b!2312324))
(check-sat)
