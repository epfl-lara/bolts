; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105692 () Bool)

(assert start!105692)

(declare-datatypes ((List!12006 0))(
  ( (Nil!11982) (Cons!11982 (h!17383 (_ BitVec 16)) (t!112212 List!12006)) )
))
(declare-datatypes ((IArray!7853 0))(
  ( (IArray!7854 (innerList!3984 List!12006)) )
))
(declare-datatypes ((Conc!3924 0))(
  ( (Node!3924 (left!10427 Conc!3924) (right!10757 Conc!3924) (csize!8078 Int) (cheight!4135 Int)) (Leaf!6004 (xs!6629 IArray!7853) (csize!8079 Int)) (Empty!3924) )
))
(declare-datatypes ((BalanceConc!7870 0))(
  ( (BalanceConc!7871 (c!197478 Conc!3924)) )
))
(declare-fun v!4945 () BalanceConc!7870)

(declare-datatypes ((TokenValue!2165 0))(
  ( (FloatLiteralValue!4330 (text!15600 List!12006)) (TokenValueExt!2164 (__x!8040 Int)) (Broken!10825 (value!67850 List!12006)) (Object!2188) (End!2165) (Def!2165) (Underscore!2165) (Match!2165) (Else!2165) (Error!2165) (Case!2165) (If!2165) (Extends!2165) (Abstract!2165) (Class!2165) (Val!2165) (DelimiterValue!4330 (del!2225 List!12006)) (KeywordValue!2171 (value!67851 List!12006)) (CommentValue!4330 (value!67852 List!12006)) (WhitespaceValue!4330 (value!67853 List!12006)) (IndentationValue!2165 (value!67854 List!12006)) (String!14490) (Int32!2165) (Broken!10826 (value!67855 List!12006)) (Boolean!2166) (Unit!18401) (OperatorValue!2168 (op!2225 List!12006)) (IdentifierValue!4330 (value!67856 List!12006)) (IdentifierValue!4331 (value!67857 List!12006)) (WhitespaceValue!4331 (value!67858 List!12006)) (True!4330) (False!4330) (Broken!10827 (value!67859 List!12006)) (Broken!10828 (value!67860 List!12006)) (True!4331) (RightBrace!2165) (RightBracket!2165) (Colon!2165) (Null!2165) (Comma!2165) (LeftBracket!2165) (False!4331) (LeftBrace!2165) (ImaginaryLiteralValue!2165 (text!15601 List!12006)) (StringLiteralValue!6495 (value!67861 List!12006)) (EOFValue!2165 (value!67862 List!12006)) (IdentValue!2165 (value!67863 List!12006)) (DelimiterValue!4331 (value!67864 List!12006)) (DedentValue!2165 (value!67865 List!12006)) (NewLineValue!2165 (value!67866 List!12006)) (IntegerValue!6495 (value!67867 (_ BitVec 32)) (text!15602 List!12006)) (IntegerValue!6496 (value!67868 Int) (text!15603 List!12006)) (Times!2165) (Or!2165) (Equal!2165) (Minus!2165) (Broken!10829 (value!67869 List!12006)) (And!2165) (Div!2165) (LessEqual!2165) (Mod!2165) (Concat!5533) (Not!2165) (Plus!2165) (SpaceValue!2165 (value!67870 List!12006)) (IntegerValue!6497 (value!67871 Int) (text!15604 List!12006)) (StringLiteralValue!6496 (text!15605 List!12006)) (FloatLiteralValue!4331 (text!15606 List!12006)) (BytesLiteralValue!2165 (value!67872 List!12006)) (CommentValue!4331 (value!67873 List!12006)) (StringLiteralValue!6497 (value!67874 List!12006)) (ErrorTokenValue!2165 (msg!2226 List!12006)) )
))
(declare-fun inv!21 (TokenValue!2165) Bool)

(declare-fun efficientList!152 (BalanceConc!7870) List!12006)

(assert (=> start!105692 (not (inv!21 (SpaceValue!2165 (efficientList!152 v!4945))))))

(declare-fun e!764969 () Bool)

(declare-fun inv!15823 (BalanceConc!7870) Bool)

(assert (=> start!105692 (and (inv!15823 v!4945) e!764969)))

(declare-fun b!1189901 () Bool)

(declare-fun tp!339634 () Bool)

(declare-fun inv!15824 (Conc!3924) Bool)

(assert (=> b!1189901 (= e!764969 (and (inv!15824 (c!197478 v!4945)) tp!339634))))

(assert (= start!105692 b!1189901))

(declare-fun m!1365169 () Bool)

(assert (=> start!105692 m!1365169))

(declare-fun m!1365171 () Bool)

(assert (=> start!105692 m!1365171))

(declare-fun m!1365173 () Bool)

(assert (=> start!105692 m!1365173))

(declare-fun m!1365175 () Bool)

(assert (=> b!1189901 m!1365175))

(check-sat (not b!1189901) (not start!105692))
(check-sat)
(get-model)

(declare-fun d!340110 () Bool)

(declare-fun c!197485 () Bool)

(get-info :version)

(assert (=> d!340110 (= c!197485 ((_ is Node!3924) (c!197478 v!4945)))))

(declare-fun e!764980 () Bool)

(assert (=> d!340110 (= (inv!15824 (c!197478 v!4945)) e!764980)))

(declare-fun b!1189918 () Bool)

(declare-fun inv!15825 (Conc!3924) Bool)

(assert (=> b!1189918 (= e!764980 (inv!15825 (c!197478 v!4945)))))

(declare-fun b!1189919 () Bool)

(declare-fun e!764981 () Bool)

(assert (=> b!1189919 (= e!764980 e!764981)))

(declare-fun res!537586 () Bool)

(assert (=> b!1189919 (= res!537586 (not ((_ is Leaf!6004) (c!197478 v!4945))))))

(assert (=> b!1189919 (=> res!537586 e!764981)))

(declare-fun b!1189920 () Bool)

(declare-fun inv!15826 (Conc!3924) Bool)

(assert (=> b!1189920 (= e!764981 (inv!15826 (c!197478 v!4945)))))

(assert (= (and d!340110 c!197485) b!1189918))

(assert (= (and d!340110 (not c!197485)) b!1189919))

(assert (= (and b!1189919 (not res!537586)) b!1189920))

(declare-fun m!1365177 () Bool)

(assert (=> b!1189918 m!1365177))

(declare-fun m!1365179 () Bool)

(assert (=> b!1189920 m!1365179))

(assert (=> b!1189901 d!340110))

(declare-fun b!1189936 () Bool)

(declare-fun e!764992 () Bool)

(declare-fun inv!17 (TokenValue!2165) Bool)

(assert (=> b!1189936 (= e!764992 (inv!17 (SpaceValue!2165 (efficientList!152 v!4945))))))

(declare-fun b!1189937 () Bool)

(declare-fun e!764993 () Bool)

(assert (=> b!1189937 (= e!764993 e!764992)))

(declare-fun c!197492 () Bool)

(assert (=> b!1189937 (= c!197492 ((_ is IntegerValue!6496) (SpaceValue!2165 (efficientList!152 v!4945))))))

(declare-fun d!340114 () Bool)

(declare-fun c!197493 () Bool)

(assert (=> d!340114 (= c!197493 ((_ is IntegerValue!6495) (SpaceValue!2165 (efficientList!152 v!4945))))))

(assert (=> d!340114 (= (inv!21 (SpaceValue!2165 (efficientList!152 v!4945))) e!764993)))

(declare-fun b!1189938 () Bool)

(declare-fun res!537590 () Bool)

(declare-fun e!764991 () Bool)

(assert (=> b!1189938 (=> res!537590 e!764991)))

(assert (=> b!1189938 (= res!537590 (not ((_ is IntegerValue!6497) (SpaceValue!2165 (efficientList!152 v!4945)))))))

(assert (=> b!1189938 (= e!764992 e!764991)))

(declare-fun b!1189939 () Bool)

(declare-fun inv!16 (TokenValue!2165) Bool)

(assert (=> b!1189939 (= e!764993 (inv!16 (SpaceValue!2165 (efficientList!152 v!4945))))))

(declare-fun b!1189940 () Bool)

(declare-fun inv!15 (TokenValue!2165) Bool)

(assert (=> b!1189940 (= e!764991 (inv!15 (SpaceValue!2165 (efficientList!152 v!4945))))))

(assert (= (and d!340114 c!197493) b!1189939))

(assert (= (and d!340114 (not c!197493)) b!1189937))

(assert (= (and b!1189937 c!197492) b!1189936))

(assert (= (and b!1189937 (not c!197492)) b!1189938))

(assert (= (and b!1189938 (not res!537590)) b!1189940))

(declare-fun m!1365187 () Bool)

(assert (=> b!1189936 m!1365187))

(declare-fun m!1365189 () Bool)

(assert (=> b!1189939 m!1365189))

(declare-fun m!1365191 () Bool)

(assert (=> b!1189940 m!1365191))

(assert (=> start!105692 d!340114))

(declare-fun d!340118 () Bool)

(declare-fun lt!409120 () List!12006)

(declare-fun list!4397 (BalanceConc!7870) List!12006)

(assert (=> d!340118 (= lt!409120 (list!4397 v!4945))))

(declare-fun efficientList!154 (Conc!3924 List!12006) List!12006)

(declare-fun efficientList$default$2!52 (Conc!3924) List!12006)

(assert (=> d!340118 (= lt!409120 (efficientList!154 (c!197478 v!4945) (efficientList$default$2!52 (c!197478 v!4945))))))

(assert (=> d!340118 (= (efficientList!152 v!4945) lt!409120)))

(declare-fun bs!287838 () Bool)

(assert (= bs!287838 d!340118))

(declare-fun m!1365201 () Bool)

(assert (=> bs!287838 m!1365201))

(declare-fun m!1365203 () Bool)

(assert (=> bs!287838 m!1365203))

(assert (=> bs!287838 m!1365203))

(declare-fun m!1365205 () Bool)

(assert (=> bs!287838 m!1365205))

(assert (=> start!105692 d!340118))

(declare-fun d!340124 () Bool)

(declare-fun isBalanced!1109 (Conc!3924) Bool)

(assert (=> d!340124 (= (inv!15823 v!4945) (isBalanced!1109 (c!197478 v!4945)))))

(declare-fun bs!287839 () Bool)

(assert (= bs!287839 d!340124))

(declare-fun m!1365207 () Bool)

(assert (=> bs!287839 m!1365207))

(assert (=> start!105692 d!340124))

(declare-fun tp!339643 () Bool)

(declare-fun b!1189962 () Bool)

(declare-fun e!765008 () Bool)

(declare-fun tp!339644 () Bool)

(assert (=> b!1189962 (= e!765008 (and (inv!15824 (left!10427 (c!197478 v!4945))) tp!339643 (inv!15824 (right!10757 (c!197478 v!4945))) tp!339644))))

(declare-fun b!1189963 () Bool)

(declare-fun inv!15828 (IArray!7853) Bool)

(assert (=> b!1189963 (= e!765008 (inv!15828 (xs!6629 (c!197478 v!4945))))))

(assert (=> b!1189901 (= tp!339634 (and (inv!15824 (c!197478 v!4945)) e!765008))))

(assert (= (and b!1189901 ((_ is Node!3924) (c!197478 v!4945))) b!1189962))

(assert (= (and b!1189901 ((_ is Leaf!6004) (c!197478 v!4945))) b!1189963))

(declare-fun m!1365213 () Bool)

(assert (=> b!1189962 m!1365213))

(declare-fun m!1365215 () Bool)

(assert (=> b!1189962 m!1365215))

(declare-fun m!1365217 () Bool)

(assert (=> b!1189963 m!1365217))

(assert (=> b!1189901 m!1365175))

(check-sat (not b!1189936) (not b!1189939) (not b!1189963) (not b!1189901) (not b!1189920) (not d!340124) (not b!1189940) (not b!1189918) (not d!340118) (not b!1189962))
(check-sat)
