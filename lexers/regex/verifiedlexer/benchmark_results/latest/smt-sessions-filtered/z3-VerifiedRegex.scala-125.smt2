; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1058 () Bool)

(assert start!1058)

(declare-datatypes ((List!144 0))(
  ( (Nil!142) (Cons!142 (h!5538 (_ BitVec 16)) (t!14714 List!144)) )
))
(declare-datatypes ((IArray!27 0))(
  ( (IArray!28 (innerList!71 List!144)) )
))
(declare-datatypes ((Conc!13 0))(
  ( (Node!13 (left!322 Conc!13) (right!652 Conc!13) (csize!256 Int) (cheight!224 Int)) (Leaf!139 (xs!2590 IArray!27) (csize!257 Int)) (Empty!13) )
))
(declare-datatypes ((BalanceConc!26 0))(
  ( (BalanceConc!27 (c!14927 Conc!13)) )
))
(declare-fun v!5014 () BalanceConc!26)

(declare-datatypes ((TokenValue!91 0))(
  ( (FloatLiteralValue!182 (text!1082 List!144)) (TokenValueExt!90 (__x!396 Int)) (Broken!455 (value!5567 List!144)) (Object!92) (End!91) (Def!91) (Underscore!91) (Match!91) (Else!91) (Error!91) (Case!91) (If!91) (Extends!91) (Abstract!91) (Class!91) (Val!91) (DelimiterValue!182 (del!151 List!144)) (KeywordValue!97 (value!5568 List!144)) (CommentValue!182 (value!5569 List!144)) (WhitespaceValue!182 (value!5570 List!144)) (IndentationValue!91 (value!5571 List!144)) (String!596) (Int32!91) (Broken!456 (value!5572 List!144)) (Boolean!92) (Unit!98) (OperatorValue!94 (op!151 List!144)) (IdentifierValue!182 (value!5573 List!144)) (IdentifierValue!183 (value!5574 List!144)) (WhitespaceValue!183 (value!5575 List!144)) (True!182) (False!182) (Broken!457 (value!5576 List!144)) (Broken!458 (value!5577 List!144)) (True!183) (RightBrace!91) (RightBracket!91) (Colon!91) (Null!91) (Comma!91) (LeftBracket!91) (False!183) (LeftBrace!91) (ImaginaryLiteralValue!91 (text!1083 List!144)) (StringLiteralValue!273 (value!5578 List!144)) (EOFValue!91 (value!5579 List!144)) (IdentValue!91 (value!5580 List!144)) (DelimiterValue!183 (value!5581 List!144)) (DedentValue!91 (value!5582 List!144)) (NewLineValue!91 (value!5583 List!144)) (IntegerValue!273 (value!5584 (_ BitVec 32)) (text!1084 List!144)) (IntegerValue!274 (value!5585 Int) (text!1085 List!144)) (Times!91) (Or!91) (Equal!91) (Minus!91) (Broken!459 (value!5586 List!144)) (And!91) (Div!91) (LessEqual!91) (Mod!91) (Concat!215) (Not!91) (Plus!91) (SpaceValue!91 (value!5587 List!144)) (IntegerValue!275 (value!5588 Int) (text!1086 List!144)) (StringLiteralValue!274 (text!1087 List!144)) (FloatLiteralValue!183 (text!1088 List!144)) (BytesLiteralValue!91 (value!5589 List!144)) (CommentValue!183 (value!5590 List!144)) (StringLiteralValue!275 (value!5591 List!144)) (ErrorTokenValue!91 (msg!152 List!144)) )
))
(declare-fun inv!21 (TokenValue!91) Bool)

(declare-fun efficientList!19 (BalanceConc!26) List!144)

(assert (=> start!1058 (not (inv!21 (StringLiteralValue!273 (efficientList!19 v!5014))))))

(declare-fun e!11678 () Bool)

(declare-fun inv!440 (BalanceConc!26) Bool)

(assert (=> start!1058 (and (inv!440 v!5014) e!11678)))

(declare-fun b!28630 () Bool)

(declare-fun tp!19394 () Bool)

(declare-fun inv!441 (Conc!13) Bool)

(assert (=> b!28630 (= e!11678 (and (inv!441 (c!14927 v!5014)) tp!19394))))

(assert (= start!1058 b!28630))

(declare-fun m!5191 () Bool)

(assert (=> start!1058 m!5191))

(declare-fun m!5193 () Bool)

(assert (=> start!1058 m!5193))

(declare-fun m!5195 () Bool)

(assert (=> start!1058 m!5195))

(declare-fun m!5197 () Bool)

(assert (=> b!28630 m!5197))

(check-sat (not start!1058) (not b!28630))
(check-sat)
(get-model)

(declare-fun b!28647 () Bool)

(declare-fun e!11690 () Bool)

(declare-fun inv!15 (TokenValue!91) Bool)

(assert (=> b!28647 (= e!11690 (inv!15 (StringLiteralValue!273 (efficientList!19 v!5014))))))

(declare-fun b!28648 () Bool)

(declare-fun e!11691 () Bool)

(declare-fun e!11689 () Bool)

(assert (=> b!28648 (= e!11691 e!11689)))

(declare-fun c!14935 () Bool)

(get-info :version)

(assert (=> b!28648 (= c!14935 ((_ is IntegerValue!274) (StringLiteralValue!273 (efficientList!19 v!5014))))))

(declare-fun b!28649 () Bool)

(declare-fun inv!17 (TokenValue!91) Bool)

(assert (=> b!28649 (= e!11689 (inv!17 (StringLiteralValue!273 (efficientList!19 v!5014))))))

(declare-fun b!28650 () Bool)

(declare-fun res!25999 () Bool)

(assert (=> b!28650 (=> res!25999 e!11690)))

(assert (=> b!28650 (= res!25999 (not ((_ is IntegerValue!275) (StringLiteralValue!273 (efficientList!19 v!5014)))))))

(assert (=> b!28650 (= e!11689 e!11690)))

(declare-fun d!2154 () Bool)

(declare-fun c!14934 () Bool)

(assert (=> d!2154 (= c!14934 ((_ is IntegerValue!273) (StringLiteralValue!273 (efficientList!19 v!5014))))))

(assert (=> d!2154 (= (inv!21 (StringLiteralValue!273 (efficientList!19 v!5014))) e!11691)))

(declare-fun b!28651 () Bool)

(declare-fun inv!16 (TokenValue!91) Bool)

(assert (=> b!28651 (= e!11691 (inv!16 (StringLiteralValue!273 (efficientList!19 v!5014))))))

(assert (= (and d!2154 c!14934) b!28651))

(assert (= (and d!2154 (not c!14934)) b!28648))

(assert (= (and b!28648 c!14935) b!28649))

(assert (= (and b!28648 (not c!14935)) b!28650))

(assert (= (and b!28650 (not res!25999)) b!28647))

(declare-fun m!5199 () Bool)

(assert (=> b!28647 m!5199))

(declare-fun m!5201 () Bool)

(assert (=> b!28649 m!5201))

(declare-fun m!5203 () Bool)

(assert (=> b!28651 m!5203))

(assert (=> start!1058 d!2154))

(declare-fun d!2158 () Bool)

(declare-fun lt!1237 () List!144)

(declare-fun list!76 (BalanceConc!26) List!144)

(assert (=> d!2158 (= lt!1237 (list!76 v!5014))))

(declare-fun efficientList!20 (Conc!13 List!144) List!144)

(declare-fun efficientList$default$2!6 (Conc!13) List!144)

(assert (=> d!2158 (= lt!1237 (efficientList!20 (c!14927 v!5014) (efficientList$default$2!6 (c!14927 v!5014))))))

(assert (=> d!2158 (= (efficientList!19 v!5014) lt!1237)))

(declare-fun bs!772 () Bool)

(assert (= bs!772 d!2158))

(declare-fun m!5209 () Bool)

(assert (=> bs!772 m!5209))

(declare-fun m!5211 () Bool)

(assert (=> bs!772 m!5211))

(assert (=> bs!772 m!5211))

(declare-fun m!5213 () Bool)

(assert (=> bs!772 m!5213))

(assert (=> start!1058 d!2158))

(declare-fun d!2162 () Bool)

(declare-fun isBalanced!5 (Conc!13) Bool)

(assert (=> d!2162 (= (inv!440 v!5014) (isBalanced!5 (c!14927 v!5014)))))

(declare-fun bs!773 () Bool)

(assert (= bs!773 d!2162))

(declare-fun m!5221 () Bool)

(assert (=> bs!773 m!5221))

(assert (=> start!1058 d!2162))

(declare-fun d!2166 () Bool)

(declare-fun c!14945 () Bool)

(assert (=> d!2166 (= c!14945 ((_ is Node!13) (c!14927 v!5014)))))

(declare-fun e!11707 () Bool)

(assert (=> d!2166 (= (inv!441 (c!14927 v!5014)) e!11707)))

(declare-fun b!28676 () Bool)

(declare-fun inv!444 (Conc!13) Bool)

(assert (=> b!28676 (= e!11707 (inv!444 (c!14927 v!5014)))))

(declare-fun b!28677 () Bool)

(declare-fun e!11708 () Bool)

(assert (=> b!28677 (= e!11707 e!11708)))

(declare-fun res!26006 () Bool)

(assert (=> b!28677 (= res!26006 (not ((_ is Leaf!139) (c!14927 v!5014))))))

(assert (=> b!28677 (=> res!26006 e!11708)))

(declare-fun b!28678 () Bool)

(declare-fun inv!445 (Conc!13) Bool)

(assert (=> b!28678 (= e!11708 (inv!445 (c!14927 v!5014)))))

(assert (= (and d!2166 c!14945) b!28676))

(assert (= (and d!2166 (not c!14945)) b!28677))

(assert (= (and b!28677 (not res!26006)) b!28678))

(declare-fun m!5223 () Bool)

(assert (=> b!28676 m!5223))

(declare-fun m!5225 () Bool)

(assert (=> b!28678 m!5225))

(assert (=> b!28630 d!2166))

(declare-fun e!11713 () Bool)

(declare-fun b!28685 () Bool)

(declare-fun tp!19399 () Bool)

(declare-fun tp!19400 () Bool)

(assert (=> b!28685 (= e!11713 (and (inv!441 (left!322 (c!14927 v!5014))) tp!19399 (inv!441 (right!652 (c!14927 v!5014))) tp!19400))))

(declare-fun b!28686 () Bool)

(declare-fun inv!446 (IArray!27) Bool)

(assert (=> b!28686 (= e!11713 (inv!446 (xs!2590 (c!14927 v!5014))))))

(assert (=> b!28630 (= tp!19394 (and (inv!441 (c!14927 v!5014)) e!11713))))

(assert (= (and b!28630 ((_ is Node!13) (c!14927 v!5014))) b!28685))

(assert (= (and b!28630 ((_ is Leaf!139) (c!14927 v!5014))) b!28686))

(declare-fun m!5233 () Bool)

(assert (=> b!28685 m!5233))

(declare-fun m!5235 () Bool)

(assert (=> b!28685 m!5235))

(declare-fun m!5237 () Bool)

(assert (=> b!28686 m!5237))

(assert (=> b!28630 m!5197))

(check-sat (not b!28676) (not b!28647) (not d!2158) (not b!28678) (not b!28630) (not b!28685) (not b!28686) (not d!2162) (not b!28651) (not b!28649))
(check-sat)
