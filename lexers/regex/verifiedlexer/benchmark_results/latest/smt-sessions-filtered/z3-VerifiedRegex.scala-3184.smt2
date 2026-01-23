; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185936 () Bool)

(assert start!185936)

(declare-datatypes ((List!20717 0))(
  ( (Nil!20637) (Cons!20637 (h!26038 (_ BitVec 16)) (t!172726 List!20717)) )
))
(declare-datatypes ((IArray!13673 0))(
  ( (IArray!13674 (innerList!6894 List!20717)) )
))
(declare-datatypes ((Conc!6834 0))(
  ( (Node!6834 (left!16604 Conc!6834) (right!16934 Conc!6834) (csize!13898 Int) (cheight!7045 Int)) (Leaf!10019 (xs!9710 IArray!13673) (csize!13899 Int)) (Empty!6834) )
))
(declare-datatypes ((BalanceConc!13598 0))(
  ( (BalanceConc!13599 (c!303031 Conc!6834)) )
))
(declare-fun v!5154 () BalanceConc!13598)

(declare-datatypes ((TokenValue!3818 0))(
  ( (FloatLiteralValue!7636 (text!27171 List!20717)) (TokenValueExt!3817 (__x!13007 Int)) (Broken!19090 (value!116139 List!20717)) (Object!3897) (End!3818) (Def!3818) (Underscore!3818) (Match!3818) (Else!3818) (Error!3818) (Case!3818) (If!3818) (Extends!3818) (Abstract!3818) (Class!3818) (Val!3818) (DelimiterValue!7636 (del!3878 List!20717)) (KeywordValue!3824 (value!116140 List!20717)) (CommentValue!7636 (value!116141 List!20717)) (WhitespaceValue!7636 (value!116142 List!20717)) (IndentationValue!3818 (value!116143 List!20717)) (String!23733) (Int32!3818) (Broken!19091 (value!116144 List!20717)) (Boolean!3819) (Unit!35256) (OperatorValue!3821 (op!3878 List!20717)) (IdentifierValue!7636 (value!116145 List!20717)) (IdentifierValue!7637 (value!116146 List!20717)) (WhitespaceValue!7637 (value!116147 List!20717)) (True!7636) (False!7636) (Broken!19092 (value!116148 List!20717)) (Broken!19093 (value!116149 List!20717)) (True!7637) (RightBrace!3818) (RightBracket!3818) (Colon!3818) (Null!3818) (Comma!3818) (LeftBracket!3818) (False!7637) (LeftBrace!3818) (ImaginaryLiteralValue!3818 (text!27172 List!20717)) (StringLiteralValue!11454 (value!116150 List!20717)) (EOFValue!3818 (value!116151 List!20717)) (IdentValue!3818 (value!116152 List!20717)) (DelimiterValue!7637 (value!116153 List!20717)) (DedentValue!3818 (value!116154 List!20717)) (NewLineValue!3818 (value!116155 List!20717)) (IntegerValue!11454 (value!116156 (_ BitVec 32)) (text!27173 List!20717)) (IntegerValue!11455 (value!116157 Int) (text!27174 List!20717)) (Times!3818) (Or!3818) (Equal!3818) (Minus!3818) (Broken!19094 (value!116158 List!20717)) (And!3818) (Div!3818) (LessEqual!3818) (Mod!3818) (Concat!8880) (Not!3818) (Plus!3818) (SpaceValue!3818 (value!116159 List!20717)) (IntegerValue!11456 (value!116160 Int) (text!27175 List!20717)) (StringLiteralValue!11455 (text!27176 List!20717)) (FloatLiteralValue!7637 (text!27177 List!20717)) (BytesLiteralValue!3818 (value!116161 List!20717)) (CommentValue!7637 (value!116162 List!20717)) (StringLiteralValue!11456 (value!116163 List!20717)) (ErrorTokenValue!3818 (msg!3879 List!20717)) )
))
(declare-fun inv!21 (TokenValue!3818) Bool)

(declare-fun efficientList!263 (BalanceConc!13598) List!20717)

(assert (=> start!185936 (not (inv!21 (DelimiterValue!7636 (efficientList!263 v!5154))))))

(declare-fun e!1188271 () Bool)

(declare-fun inv!27155 (BalanceConc!13598) Bool)

(assert (=> start!185936 (and (inv!27155 v!5154) e!1188271)))

(declare-fun b!1860605 () Bool)

(declare-fun tp!530186 () Bool)

(declare-fun inv!27156 (Conc!6834) Bool)

(assert (=> b!1860605 (= e!1188271 (and (inv!27156 (c!303031 v!5154)) tp!530186))))

(assert (= start!185936 b!1860605))

(declare-fun m!2284323 () Bool)

(assert (=> start!185936 m!2284323))

(declare-fun m!2284325 () Bool)

(assert (=> start!185936 m!2284325))

(declare-fun m!2284327 () Bool)

(assert (=> start!185936 m!2284327))

(declare-fun m!2284329 () Bool)

(assert (=> b!1860605 m!2284329))

(check-sat (not b!1860605) (not start!185936))
(check-sat)
(get-model)

(declare-fun d!567782 () Bool)

(declare-fun c!303040 () Bool)

(get-info :version)

(assert (=> d!567782 (= c!303040 ((_ is Node!6834) (c!303031 v!5154)))))

(declare-fun e!1188285 () Bool)

(assert (=> d!567782 (= (inv!27156 (c!303031 v!5154)) e!1188285)))

(declare-fun b!1860627 () Bool)

(declare-fun inv!27157 (Conc!6834) Bool)

(assert (=> b!1860627 (= e!1188285 (inv!27157 (c!303031 v!5154)))))

(declare-fun b!1860628 () Bool)

(declare-fun e!1188286 () Bool)

(assert (=> b!1860628 (= e!1188285 e!1188286)))

(declare-fun res!833185 () Bool)

(assert (=> b!1860628 (= res!833185 (not ((_ is Leaf!10019) (c!303031 v!5154))))))

(assert (=> b!1860628 (=> res!833185 e!1188286)))

(declare-fun b!1860629 () Bool)

(declare-fun inv!27158 (Conc!6834) Bool)

(assert (=> b!1860629 (= e!1188286 (inv!27158 (c!303031 v!5154)))))

(assert (= (and d!567782 c!303040) b!1860627))

(assert (= (and d!567782 (not c!303040)) b!1860628))

(assert (= (and b!1860628 (not res!833185)) b!1860629))

(declare-fun m!2284333 () Bool)

(assert (=> b!1860627 m!2284333))

(declare-fun m!2284337 () Bool)

(assert (=> b!1860629 m!2284337))

(assert (=> b!1860605 d!567782))

(declare-fun b!1860640 () Bool)

(declare-fun res!833188 () Bool)

(declare-fun e!1188293 () Bool)

(assert (=> b!1860640 (=> res!833188 e!1188293)))

(assert (=> b!1860640 (= res!833188 (not ((_ is IntegerValue!11456) (DelimiterValue!7636 (efficientList!263 v!5154)))))))

(declare-fun e!1188295 () Bool)

(assert (=> b!1860640 (= e!1188295 e!1188293)))

(declare-fun b!1860641 () Bool)

(declare-fun inv!17 (TokenValue!3818) Bool)

(assert (=> b!1860641 (= e!1188295 (inv!17 (DelimiterValue!7636 (efficientList!263 v!5154))))))

(declare-fun d!567787 () Bool)

(declare-fun c!303046 () Bool)

(assert (=> d!567787 (= c!303046 ((_ is IntegerValue!11454) (DelimiterValue!7636 (efficientList!263 v!5154))))))

(declare-fun e!1188294 () Bool)

(assert (=> d!567787 (= (inv!21 (DelimiterValue!7636 (efficientList!263 v!5154))) e!1188294)))

(declare-fun b!1860642 () Bool)

(assert (=> b!1860642 (= e!1188294 e!1188295)))

(declare-fun c!303045 () Bool)

(assert (=> b!1860642 (= c!303045 ((_ is IntegerValue!11455) (DelimiterValue!7636 (efficientList!263 v!5154))))))

(declare-fun b!1860643 () Bool)

(declare-fun inv!16 (TokenValue!3818) Bool)

(assert (=> b!1860643 (= e!1188294 (inv!16 (DelimiterValue!7636 (efficientList!263 v!5154))))))

(declare-fun b!1860644 () Bool)

(declare-fun inv!15 (TokenValue!3818) Bool)

(assert (=> b!1860644 (= e!1188293 (inv!15 (DelimiterValue!7636 (efficientList!263 v!5154))))))

(assert (= (and d!567787 c!303046) b!1860643))

(assert (= (and d!567787 (not c!303046)) b!1860642))

(assert (= (and b!1860642 c!303045) b!1860641))

(assert (= (and b!1860642 (not c!303045)) b!1860640))

(assert (= (and b!1860640 (not res!833188)) b!1860644))

(declare-fun m!2284341 () Bool)

(assert (=> b!1860641 m!2284341))

(declare-fun m!2284343 () Bool)

(assert (=> b!1860643 m!2284343))

(declare-fun m!2284345 () Bool)

(assert (=> b!1860644 m!2284345))

(assert (=> start!185936 d!567787))

(declare-fun d!567789 () Bool)

(declare-fun lt!717729 () List!20717)

(declare-fun list!8396 (BalanceConc!13598) List!20717)

(assert (=> d!567789 (= lt!717729 (list!8396 v!5154))))

(declare-fun efficientList!265 (Conc!6834 List!20717) List!20717)

(declare-fun efficientList$default$2!91 (Conc!6834) List!20717)

(assert (=> d!567789 (= lt!717729 (efficientList!265 (c!303031 v!5154) (efficientList$default$2!91 (c!303031 v!5154))))))

(assert (=> d!567789 (= (efficientList!263 v!5154) lt!717729)))

(declare-fun bs!411462 () Bool)

(assert (= bs!411462 d!567789))

(declare-fun m!2284355 () Bool)

(assert (=> bs!411462 m!2284355))

(declare-fun m!2284357 () Bool)

(assert (=> bs!411462 m!2284357))

(assert (=> bs!411462 m!2284357))

(declare-fun m!2284359 () Bool)

(assert (=> bs!411462 m!2284359))

(assert (=> start!185936 d!567789))

(declare-fun d!567795 () Bool)

(declare-fun isBalanced!2135 (Conc!6834) Bool)

(assert (=> d!567795 (= (inv!27155 v!5154) (isBalanced!2135 (c!303031 v!5154)))))

(declare-fun bs!411463 () Bool)

(assert (= bs!411463 d!567795))

(declare-fun m!2284361 () Bool)

(assert (=> bs!411463 m!2284361))

(assert (=> start!185936 d!567795))

(declare-fun tp!530195 () Bool)

(declare-fun tp!530196 () Bool)

(declare-fun b!1860666 () Bool)

(declare-fun e!1188310 () Bool)

(assert (=> b!1860666 (= e!1188310 (and (inv!27156 (left!16604 (c!303031 v!5154))) tp!530195 (inv!27156 (right!16934 (c!303031 v!5154))) tp!530196))))

(declare-fun b!1860667 () Bool)

(declare-fun inv!27160 (IArray!13673) Bool)

(assert (=> b!1860667 (= e!1188310 (inv!27160 (xs!9710 (c!303031 v!5154))))))

(assert (=> b!1860605 (= tp!530186 (and (inv!27156 (c!303031 v!5154)) e!1188310))))

(assert (= (and b!1860605 ((_ is Node!6834) (c!303031 v!5154))) b!1860666))

(assert (= (and b!1860605 ((_ is Leaf!10019) (c!303031 v!5154))) b!1860667))

(declare-fun m!2284367 () Bool)

(assert (=> b!1860666 m!2284367))

(declare-fun m!2284369 () Bool)

(assert (=> b!1860666 m!2284369))

(declare-fun m!2284371 () Bool)

(assert (=> b!1860667 m!2284371))

(assert (=> b!1860605 m!2284329))

(check-sat (not b!1860641) (not b!1860605) (not b!1860667) (not d!567789) (not b!1860629) (not b!1860666) (not d!567795) (not b!1860643) (not b!1860644) (not b!1860627))
(check-sat)
