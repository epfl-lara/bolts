; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184192 () Bool)

(assert start!184192)

(assert (=> start!184192 true))

(declare-fun b!1846254 () Bool)

(declare-fun e!1179867 () Bool)

(declare-datatypes ((List!20461 0))(
  ( (Nil!20389) (Cons!20389 (h!25790 (_ BitVec 16)) (t!172146 List!20461)) )
))
(declare-datatypes ((IArray!13505 0))(
  ( (IArray!13506 (innerList!6810 List!20461)) )
))
(declare-datatypes ((Conc!6750 0))(
  ( (Node!6750 (left!16332 Conc!6750) (right!16662 Conc!6750) (csize!13730 Int) (cheight!6961 Int)) (Leaf!9865 (xs!9626 IArray!13505) (csize!13731 Int)) (Empty!6750) )
))
(declare-datatypes ((BalanceConc!13422 0))(
  ( (BalanceConc!13423 (c!301439 Conc!6750)) )
))
(declare-fun x!369732 () BalanceConc!13422)

(declare-fun tp!522038 () Bool)

(declare-fun inv!26722 (Conc!6750) Bool)

(assert (=> b!1846254 (= e!1179867 (and (inv!26722 (c!301439 x!369732)) tp!522038))))

(declare-fun inst!1082 () Bool)

(declare-datatypes ((ImaginaryLiteralValueInjection!4 0))(
  ( (ImaginaryLiteralValueInjection!5) )
))
(declare-fun thiss!5044 () ImaginaryLiteralValueInjection!4)

(declare-fun inv!26723 (BalanceConc!13422) Bool)

(declare-fun list!8287 (BalanceConc!13422) List!20461)

(declare-datatypes ((TokenValue!3766 0))(
  ( (FloatLiteralValue!7532 (text!26807 List!20461)) (TokenValueExt!3765 (__x!12820 Int)) (Broken!18830 (value!114556 List!20461)) (Object!3837) (End!3766) (Def!3766) (Underscore!3766) (Match!3766) (Else!3766) (Error!3766) (Case!3766) (If!3766) (Extends!3766) (Abstract!3766) (Class!3766) (Val!3766) (DelimiterValue!7532 (del!3826 List!20461)) (KeywordValue!3772 (value!114557 List!20461)) (CommentValue!7532 (value!114558 List!20461)) (WhitespaceValue!7532 (value!114559 List!20461)) (IndentationValue!3766 (value!114560 List!20461)) (String!23359) (Int32!3766) (Broken!18831 (value!114561 List!20461)) (Boolean!3767) (Unit!35049) (OperatorValue!3769 (op!3826 List!20461)) (IdentifierValue!7532 (value!114562 List!20461)) (IdentifierValue!7533 (value!114563 List!20461)) (WhitespaceValue!7533 (value!114564 List!20461)) (True!7532) (False!7532) (Broken!18832 (value!114565 List!20461)) (Broken!18833 (value!114566 List!20461)) (True!7533) (RightBrace!3766) (RightBracket!3766) (Colon!3766) (Null!3766) (Comma!3766) (LeftBracket!3766) (False!7533) (LeftBrace!3766) (ImaginaryLiteralValue!3766 (text!26808 List!20461)) (StringLiteralValue!11298 (value!114567 List!20461)) (EOFValue!3766 (value!114568 List!20461)) (IdentValue!3766 (value!114569 List!20461)) (DelimiterValue!7533 (value!114570 List!20461)) (DedentValue!3766 (value!114571 List!20461)) (NewLineValue!3766 (value!114572 List!20461)) (IntegerValue!11298 (value!114573 (_ BitVec 32)) (text!26809 List!20461)) (IntegerValue!11299 (value!114574 Int) (text!26810 List!20461)) (Times!3766) (Or!3766) (Equal!3766) (Minus!3766) (Broken!18834 (value!114575 List!20461)) (And!3766) (Div!3766) (LessEqual!3766) (Mod!3766) (Concat!8758) (Not!3766) (Plus!3766) (SpaceValue!3766 (value!114576 List!20461)) (IntegerValue!11300 (value!114577 Int) (text!26811 List!20461)) (StringLiteralValue!11299 (text!26812 List!20461)) (FloatLiteralValue!7533 (text!26813 List!20461)) (BytesLiteralValue!3766 (value!114578 List!20461)) (CommentValue!7533 (value!114579 List!20461)) (StringLiteralValue!11300 (value!114580 List!20461)) (ErrorTokenValue!3766 (msg!3827 List!20461)) )
))
(declare-fun toCharacters!26 (ImaginaryLiteralValueInjection!4 TokenValue!3766) BalanceConc!13422)

(declare-fun toValue!33 (ImaginaryLiteralValueInjection!4 BalanceConc!13422) TokenValue!3766)

(assert (=> start!184192 (= inst!1082 (=> (and (inv!26723 x!369732) e!1179867) (= (list!8287 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732))) (list!8287 x!369732))))))

(assert (= start!184192 b!1846254))

(declare-fun m!2274567 () Bool)

(assert (=> b!1846254 m!2274567))

(declare-fun m!2274569 () Bool)

(assert (=> start!184192 m!2274569))

(declare-fun m!2274571 () Bool)

(assert (=> start!184192 m!2274571))

(declare-fun m!2274573 () Bool)

(assert (=> start!184192 m!2274573))

(declare-fun m!2274575 () Bool)

(assert (=> start!184192 m!2274575))

(assert (=> start!184192 m!2274571))

(assert (=> start!184192 m!2274573))

(declare-fun m!2274577 () Bool)

(assert (=> start!184192 m!2274577))

(declare-fun bs!409326 () Bool)

(declare-fun neg-inst!1082 () Bool)

(declare-fun s!221036 () Bool)

(assert (= bs!409326 (and neg-inst!1082 s!221036)))

(assert (=> bs!409326 (=> true (= (list!8287 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732))) (list!8287 x!369732)))))

(assert (=> m!2274571 m!2274573))

(assert (=> m!2274571 m!2274577))

(assert (=> m!2274571 m!2274569))

(assert (=> m!2274571 s!221036))

(assert (=> m!2274569 s!221036))

(declare-fun bs!409327 () Bool)

(assert (= bs!409327 (and neg-inst!1082 start!184192)))

(assert (=> bs!409327 (= true inst!1082)))

(declare-fun lambda!72725 () Int)

(declare-fun Forall!949 (Int) Bool)

(assert (=> start!184192 (= (Forall!949 lambda!72725) inst!1082)))

(assert (=> start!184192 (not (Forall!949 lambda!72725))))

(assert (=> start!184192 true))

(assert (= neg-inst!1082 inst!1082))

(declare-fun m!2274579 () Bool)

(assert (=> start!184192 m!2274579))

(assert (=> start!184192 m!2274579))

(push 1)

(assert (not b!1846254))

(assert (not start!184192))

(assert (not bs!409326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565147 () Bool)

(declare-fun list!8289 (Conc!6750) List!20461)

(assert (=> d!565147 (= (list!8287 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732))) (list!8289 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)))))))

(declare-fun bs!409330 () Bool)

(assert (= bs!409330 d!565147))

(declare-fun m!2274595 () Bool)

(assert (=> bs!409330 m!2274595))

(assert (=> bs!409326 d!565147))

(declare-fun d!565149 () Bool)

(declare-fun c!301444 () Bool)

(assert (=> d!565149 (= c!301444 (is-ImaginaryLiteralValue!3766 (toValue!33 thiss!5044 x!369732)))))

(declare-fun e!1179873 () BalanceConc!13422)

(assert (=> d!565149 (= (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)) e!1179873)))

(declare-fun b!1846264 () Bool)

(declare-fun seqFromList!2613 (List!20461) BalanceConc!13422)

(assert (=> b!1846264 (= e!1179873 (seqFromList!2613 (text!26808 (toValue!33 thiss!5044 x!369732))))))

(declare-fun b!1846265 () Bool)

(assert (=> b!1846265 (= e!1179873 (BalanceConc!13423 Empty!6750))))

(assert (= (and d!565149 c!301444) b!1846264))

(assert (= (and d!565149 (not c!301444)) b!1846265))

(declare-fun m!2274597 () Bool)

(assert (=> b!1846264 m!2274597))

(assert (=> bs!409326 d!565149))

(declare-fun d!565153 () Bool)

(declare-fun efficientList!216 (BalanceConc!13422) List!20461)

(assert (=> d!565153 (= (toValue!33 thiss!5044 x!369732) (ImaginaryLiteralValue!3766 (efficientList!216 x!369732)))))

(declare-fun bs!409332 () Bool)

(assert (= bs!409332 d!565153))

(declare-fun m!2274601 () Bool)

(assert (=> bs!409332 m!2274601))

(assert (=> bs!409326 d!565153))

(declare-fun d!565157 () Bool)

(assert (=> d!565157 (= (list!8287 x!369732) (list!8289 (c!301439 x!369732)))))

(declare-fun bs!409333 () Bool)

(assert (= bs!409333 d!565157))

(declare-fun m!2274603 () Bool)

(assert (=> bs!409333 m!2274603))

(assert (=> bs!409326 d!565157))

(push 1)

(assert (not start!184192))

(assert (not b!1846254))

(assert (not b!1846264))

(assert (not d!565147))

(assert (not d!565153))

(assert (not d!565157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1846282 () Bool)

(declare-fun e!1179882 () List!20461)

(declare-fun list!8291 (IArray!13505) List!20461)

(assert (=> b!1846282 (= e!1179882 (list!8291 (xs!9626 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732))))))))

(declare-fun b!1846283 () Bool)

(declare-fun ++!5527 (List!20461 List!20461) List!20461)

(assert (=> b!1846283 (= e!1179882 (++!5527 (list!8289 (left!16332 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732))))) (list!8289 (right!16662 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)))))))))

(declare-fun d!565163 () Bool)

(declare-fun c!301453 () Bool)

(assert (=> d!565163 (= c!301453 (is-Empty!6750 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)))))))

(declare-fun e!1179881 () List!20461)

(assert (=> d!565163 (= (list!8289 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)))) e!1179881)))

(declare-fun b!1846281 () Bool)

(assert (=> b!1846281 (= e!1179881 e!1179882)))

(declare-fun c!301454 () Bool)

(assert (=> b!1846281 (= c!301454 (is-Leaf!9865 (c!301439 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!369732)))))))

(declare-fun b!1846280 () Bool)

(assert (=> b!1846280 (= e!1179881 Nil!20389)))

(assert (= (and d!565163 c!301453) b!1846280))

(assert (= (and d!565163 (not c!301453)) b!1846281))

(assert (= (and b!1846281 c!301454) b!1846282))

(assert (= (and b!1846281 (not c!301454)) b!1846283))

(declare-fun m!2274611 () Bool)

(assert (=> b!1846282 m!2274611))

(declare-fun m!2274613 () Bool)

(assert (=> b!1846283 m!2274613))

(declare-fun m!2274615 () Bool)

(assert (=> b!1846283 m!2274615))

(assert (=> b!1846283 m!2274613))

(assert (=> b!1846283 m!2274615))

(declare-fun m!2274617 () Bool)

(assert (=> b!1846283 m!2274617))

(assert (=> d!565147 d!565163))

(declare-fun b!1846286 () Bool)

(declare-fun e!1179884 () List!20461)

(assert (=> b!1846286 (= e!1179884 (list!8291 (xs!9626 (c!301439 x!369732))))))

(declare-fun b!1846287 () Bool)

(assert (=> b!1846287 (= e!1179884 (++!5527 (list!8289 (left!16332 (c!301439 x!369732))) (list!8289 (right!16662 (c!301439 x!369732)))))))

(declare-fun d!565165 () Bool)

(declare-fun c!301455 () Bool)

(assert (=> d!565165 (= c!301455 (is-Empty!6750 (c!301439 x!369732)))))

(declare-fun e!1179883 () List!20461)

(assert (=> d!565165 (= (list!8289 (c!301439 x!369732)) e!1179883)))

(declare-fun b!1846285 () Bool)

(assert (=> b!1846285 (= e!1179883 e!1179884)))

(declare-fun c!301456 () Bool)

(assert (=> b!1846285 (= c!301456 (is-Leaf!9865 (c!301439 x!369732)))))

(declare-fun b!1846284 () Bool)

(assert (=> b!1846284 (= e!1179883 Nil!20389)))

(assert (= (and d!565165 c!301455) b!1846284))

(assert (= (and d!565165 (not c!301455)) b!1846285))

(assert (= (and b!1846285 c!301456) b!1846286))

(assert (= (and b!1846285 (not c!301456)) b!1846287))

(declare-fun m!2274619 () Bool)

(assert (=> b!1846286 m!2274619))

(declare-fun m!2274621 () Bool)

(assert (=> b!1846287 m!2274621))

(declare-fun m!2274623 () Bool)

(assert (=> b!1846287 m!2274623))

(assert (=> b!1846287 m!2274621))

(assert (=> b!1846287 m!2274623))

(declare-fun m!2274625 () Bool)

(assert (=> b!1846287 m!2274625))

(assert (=> d!565157 d!565165))

(declare-fun d!565167 () Bool)

(declare-fun lt!714947 () List!20461)

(assert (=> d!565167 (= lt!714947 (list!8287 x!369732))))

(declare-fun efficientList!218 (Conc!6750 List!20461) List!20461)

(declare-fun efficientList$default$2!73 (Conc!6750) List!20461)

(assert (=> d!565167 (= lt!714947 (efficientList!218 (c!301439 x!369732) (efficientList$default$2!73 (c!301439 x!369732))))))

(assert (=> d!565167 (= (efficientList!216 x!369732) lt!714947)))

(declare-fun bs!409336 () Bool)

(assert (= bs!409336 d!565167))

(assert (=> bs!409336 m!2274569))

(declare-fun m!2274627 () Bool)

(assert (=> bs!409336 m!2274627))

(assert (=> bs!409336 m!2274627))

(declare-fun m!2274629 () Bool)

(assert (=> bs!409336 m!2274629))

(assert (=> d!565153 d!565167))

(push 1)

(assert (not b!1846282))

(assert (not start!184192))

(assert (not b!1846283))

(assert (not b!1846254))

(assert (not b!1846264))

(assert (not d!565167))

(assert (not b!1846287))

(assert (not b!1846286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565175 () Bool)

(declare-fun fromListB!1199 (List!20461) BalanceConc!13422)

(assert (=> d!565175 (= (seqFromList!2613 (text!26808 (toValue!33 thiss!5044 x!369732))) (fromListB!1199 (text!26808 (toValue!33 thiss!5044 x!369732))))))

(declare-fun bs!409338 () Bool)

(assert (= bs!409338 d!565175))

(declare-fun m!2274651 () Bool)

(assert (=> bs!409338 m!2274651))

(assert (=> b!1846264 d!565175))

(declare-fun d!565177 () Bool)

(declare-fun c!301467 () Bool)

(assert (=> d!565177 (= c!301467 (is-Node!6750 (c!301439 x!369732)))))

(declare-fun e!1179897 () Bool)

(assert (=> d!565177 (= (inv!26722 (c!301439 x!369732)) e!1179897)))

(declare-fun b!1846310 () Bool)

(declare-fun inv!26726 (Conc!6750) Bool)

(assert (=> b!1846310 (= e!1179897 (inv!26726 (c!301439 x!369732)))))

(declare-fun b!1846311 () Bool)

(declare-fun e!1179898 () Bool)

(assert (=> b!1846311 (= e!1179897 e!1179898)))

(declare-fun res!829032 () Bool)

(assert (=> b!1846311 (= res!829032 (not (is-Leaf!9865 (c!301439 x!369732))))))

(assert (=> b!1846311 (=> res!829032 e!1179898)))

(declare-fun b!1846312 () Bool)

(declare-fun inv!26727 (Conc!6750) Bool)

(assert (=> b!1846312 (= e!1179898 (inv!26727 (c!301439 x!369732)))))

(assert (= (and d!565177 c!301467) b!1846310))

(assert (= (and d!565177 (not c!301467)) b!1846311))

(assert (= (and b!1846311 (not res!829032)) b!1846312))

(declare-fun m!2274653 () Bool)

(assert (=> b!1846310 m!2274653))

(declare-fun m!2274655 () Bool)

(assert (=> b!1846312 m!2274655))

(assert (=> b!1846254 d!565177))

(assert (=> start!184192 d!565149))

(declare-fun d!565179 () Bool)

(declare-fun choose!11615 (Int) Bool)

(assert (=> d!565179 (= (Forall!949 lambda!72725) (choose!11615 lambda!72725))))

(declare-fun bs!409339 () Bool)

(assert (= bs!409339 d!565179))

(declare-fun m!2274657 () Bool)

(assert (=> bs!409339 m!2274657))

(assert (=> start!184192 d!565179))

(assert (=> start!184192 d!565153))

(declare-fun d!565181 () Bool)

(declare-fun isBalanced!2106 (Conc!6750) Bool)

(assert (=> d!565181 (= (inv!26723 x!369732) (isBalanced!2106 (c!301439 x!369732)))))

(declare-fun bs!409340 () Bool)

(assert (= bs!409340 d!565181))

(declare-fun m!2274659 () Bool)

(assert (=> bs!409340 m!2274659))

(assert (=> start!184192 d!565181))

(assert (=> start!184192 d!565147))

(assert (=> start!184192 d!565157))

(assert (=> d!565167 d!565157))

(declare-fun b!1846325 () Bool)

(declare-fun e!1179906 () List!20461)

(declare-fun lt!714965 () List!20461)

(assert (=> b!1846325 (= e!1179906 lt!714965)))

(declare-fun b!1846326 () Bool)

(declare-fun e!1179907 () List!20461)

(assert (=> b!1846326 (= e!1179907 (efficientList$default$2!73 (c!301439 x!369732)))))

(declare-fun bm!115110 () Bool)

(declare-fun c!301476 () Bool)

(declare-fun c!301475 () Bool)

(assert (=> bm!115110 (= c!301476 c!301475)))

(declare-fun call!115115 () List!20461)

(assert (=> bm!115110 (= call!115115 (++!5527 e!1179906 (efficientList$default$2!73 (c!301439 x!369732))))))

(declare-fun b!1846327 () Bool)

(declare-datatypes ((Unit!35051 0))(
  ( (Unit!35052) )
))
(declare-fun lt!714963 () Unit!35051)

(declare-fun lt!714961 () Unit!35051)

(assert (=> b!1846327 (= lt!714963 lt!714961)))

(declare-fun lt!714964 () List!20461)

(assert (=> b!1846327 (= (++!5527 (++!5527 lt!714964 lt!714965) (efficientList$default$2!73 (c!301439 x!369732))) (++!5527 lt!714964 call!115115))))

(declare-fun lemmaConcatAssociativity!1088 (List!20461 List!20461 List!20461) Unit!35051)

(assert (=> b!1846327 (= lt!714961 (lemmaConcatAssociativity!1088 lt!714964 lt!714965 (efficientList$default$2!73 (c!301439 x!369732))))))

(assert (=> b!1846327 (= lt!714965 (list!8289 (right!16662 (c!301439 x!369732))))))

(assert (=> b!1846327 (= lt!714964 (list!8289 (left!16332 (c!301439 x!369732))))))

(declare-fun e!1179905 () List!20461)

(assert (=> b!1846327 (= e!1179905 (efficientList!218 (left!16332 (c!301439 x!369732)) (efficientList!218 (right!16662 (c!301439 x!369732)) (efficientList$default$2!73 (c!301439 x!369732)))))))

(declare-fun b!1846328 () Bool)

(declare-fun efficientList!220 (IArray!13505) List!20461)

(assert (=> b!1846328 (= e!1179906 (efficientList!220 (xs!9626 (c!301439 x!369732))))))

(declare-fun d!565183 () Bool)

(declare-fun lt!714962 () List!20461)

(assert (=> d!565183 (= lt!714962 (++!5527 (list!8289 (c!301439 x!369732)) (efficientList$default$2!73 (c!301439 x!369732))))))

(assert (=> d!565183 (= lt!714962 e!1179907)))

(declare-fun c!301474 () Bool)

(assert (=> d!565183 (= c!301474 (is-Empty!6750 (c!301439 x!369732)))))

(assert (=> d!565183 (= (efficientList!218 (c!301439 x!369732) (efficientList$default$2!73 (c!301439 x!369732))) lt!714962)))

(declare-fun b!1846329 () Bool)

(assert (=> b!1846329 (= e!1179907 e!1179905)))

(assert (=> b!1846329 (= c!301475 (is-Leaf!9865 (c!301439 x!369732)))))

(declare-fun b!1846330 () Bool)

(assert (=> b!1846330 (= e!1179905 call!115115)))

(assert (= (and d!565183 c!301474) b!1846326))

(assert (= (and d!565183 (not c!301474)) b!1846329))

(assert (= (and b!1846329 c!301475) b!1846330))

(assert (= (and b!1846329 (not c!301475)) b!1846327))

(assert (= (or b!1846330 b!1846327) bm!115110))

(assert (= (and bm!115110 c!301476) b!1846328))

(assert (= (and bm!115110 (not c!301476)) b!1846325))

(assert (=> bm!115110 m!2274627))

(declare-fun m!2274661 () Bool)

(assert (=> bm!115110 m!2274661))

(assert (=> b!1846327 m!2274623))

(assert (=> b!1846327 m!2274627))

(declare-fun m!2274663 () Bool)

(assert (=> b!1846327 m!2274663))

(assert (=> b!1846327 m!2274663))

(declare-fun m!2274665 () Bool)

(assert (=> b!1846327 m!2274665))

(declare-fun m!2274667 () Bool)

(assert (=> b!1846327 m!2274667))

(declare-fun m!2274669 () Bool)

(assert (=> b!1846327 m!2274669))

(assert (=> b!1846327 m!2274627))

(declare-fun m!2274671 () Bool)

(assert (=> b!1846327 m!2274671))

(assert (=> b!1846327 m!2274621))

(assert (=> b!1846327 m!2274667))

(assert (=> b!1846327 m!2274627))

(declare-fun m!2274673 () Bool)

(assert (=> b!1846327 m!2274673))

(declare-fun m!2274675 () Bool)

(assert (=> b!1846328 m!2274675))

(assert (=> d!565183 m!2274603))

(assert (=> d!565183 m!2274603))

(assert (=> d!565183 m!2274627))

(declare-fun m!2274677 () Bool)

(assert (=> d!565183 m!2274677))

(assert (=> d!565167 d!565183))

(declare-fun d!565185 () Bool)

(assert (=> d!565185 (= (efficientList$default$2!73 (c!301439 x!369732)) Nil!20389)))

(assert (=> d!565167 d!565185))

(declare-fun b!1846337 () Bool)

(declare-fun e!1179912 () Bool)

(declare-fun tp!522047 () Bool)

(declare-fun tp!522046 () Bool)

(assert (=> b!1846337 (= e!1179912 (and (inv!26722 (left!16332 (c!301439 x!369732))) tp!522046 (inv!26722 (right!16662 (c!301439 x!369732))) tp!522047))))

(declare-fun b!1846338 () Bool)

(declare-fun inv!26728 (IArray!13505) Bool)

(assert (=> b!1846338 (= e!1179912 (inv!26728 (xs!9626 (c!301439 x!369732))))))

(assert (=> b!1846254 (= tp!522038 (and (inv!26722 (c!301439 x!369732)) e!1179912))))

(assert (= (and b!1846254 (is-Node!6750 (c!301439 x!369732))) b!1846337))

(assert (= (and b!1846254 (is-Leaf!9865 (c!301439 x!369732))) b!1846338))

(declare-fun m!2274679 () Bool)

(assert (=> b!1846337 m!2274679))

(declare-fun m!2274681 () Bool)

(assert (=> b!1846337 m!2274681))

(declare-fun m!2274683 () Bool)

(assert (=> b!1846338 m!2274683))

(assert (=> b!1846254 m!2274567))

(push 1)

(assert (not b!1846312))

(assert (not b!1846338))

(assert (not b!1846283))

(assert (not b!1846254))

(assert (not b!1846328))

(assert (not d!565181))

(assert (not bm!115110))

(assert (not d!565175))

(assert (not b!1846310))

(assert (not b!1846282))

(assert (not b!1846287))

(assert (not b!1846286))

(assert (not d!565179))

(assert (not b!1846327))

(assert (not b!1846337))

(assert (not d!565183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565199 () Bool)

(declare-fun e!1179937 () Bool)

(assert (=> d!565199 e!1179937))

(declare-fun res!829038 () Bool)

(assert (=> d!565199 (=> (not res!829038) (not e!1179937))))

(declare-fun lt!714983 () BalanceConc!13422)

(assert (=> d!565199 (= res!829038 (= (list!8287 lt!714983) (text!26808 (toValue!33 thiss!5044 x!369732))))))

(declare-fun fromList!464 (List!20461) Conc!6750)

(assert (=> d!565199 (= lt!714983 (BalanceConc!13423 (fromList!464 (text!26808 (toValue!33 thiss!5044 x!369732)))))))

(assert (=> d!565199 (= (fromListB!1199 (text!26808 (toValue!33 thiss!5044 x!369732))) lt!714983)))

(declare-fun b!1846376 () Bool)

(assert (=> b!1846376 (= e!1179937 (isBalanced!2106 (fromList!464 (text!26808 (toValue!33 thiss!5044 x!369732)))))))

(assert (= (and d!565199 res!829038) b!1846376))

(declare-fun m!2274719 () Bool)

(assert (=> d!565199 m!2274719))

(declare-fun m!2274721 () Bool)

(assert (=> d!565199 m!2274721))

(assert (=> b!1846376 m!2274721))

(assert (=> b!1846376 m!2274721))

(declare-fun m!2274723 () Bool)

(assert (=> b!1846376 m!2274723))

(assert (=> d!565175 d!565199))

(declare-fun b!1846388 () Bool)

(declare-fun e!1179943 () Bool)

(declare-fun lt!714986 () List!20461)

(assert (=> b!1846388 (= e!1179943 (or (not (= (efficientList$default$2!73 (c!301439 x!369732)) Nil!20389)) (= lt!714986 (list!8289 (c!301439 x!369732)))))))

(declare-fun b!1846387 () Bool)

(declare-fun res!829044 () Bool)

(assert (=> b!1846387 (=> (not res!829044) (not e!1179943))))

(declare-fun size!16136 (List!20461) Int)

(assert (=> b!1846387 (= res!829044 (= (size!16136 lt!714986) (+ (size!16136 (list!8289 (c!301439 x!369732))) (size!16136 (efficientList$default$2!73 (c!301439 x!369732))))))))

(declare-fun d!565201 () Bool)

(assert (=> d!565201 e!1179943))

(declare-fun res!829043 () Bool)

(assert (=> d!565201 (=> (not res!829043) (not e!1179943))))

(declare-fun content!3039 (List!20461) (Set (_ BitVec 16)))

(assert (=> d!565201 (= res!829043 (= (content!3039 lt!714986) (set.union (content!3039 (list!8289 (c!301439 x!369732))) (content!3039 (efficientList$default$2!73 (c!301439 x!369732))))))))

(declare-fun e!1179942 () List!20461)

(assert (=> d!565201 (= lt!714986 e!1179942)))

(declare-fun c!301492 () Bool)

(assert (=> d!565201 (= c!301492 (is-Nil!20389 (list!8289 (c!301439 x!369732))))))

(assert (=> d!565201 (= (++!5527 (list!8289 (c!301439 x!369732)) (efficientList$default$2!73 (c!301439 x!369732))) lt!714986)))

(declare-fun b!1846386 () Bool)

(assert (=> b!1846386 (= e!1179942 (Cons!20389 (h!25790 (list!8289 (c!301439 x!369732))) (++!5527 (t!172146 (list!8289 (c!301439 x!369732))) (efficientList$default$2!73 (c!301439 x!369732)))))))

(declare-fun b!1846385 () Bool)

(assert (=> b!1846385 (= e!1179942 (efficientList$default$2!73 (c!301439 x!369732)))))

(assert (= (and d!565201 c!301492) b!1846385))

(assert (= (and d!565201 (not c!301492)) b!1846386))

(assert (= (and d!565201 res!829043) b!1846387))

(assert (= (and b!1846387 res!829044) b!1846388))

(declare-fun m!2274725 () Bool)

(assert (=> b!1846387 m!2274725))

(assert (=> b!1846387 m!2274603))

(declare-fun m!2274727 () Bool)

(assert (=> b!1846387 m!2274727))

(assert (=> b!1846387 m!2274627))

(declare-fun m!2274729 () Bool)

(assert (=> b!1846387 m!2274729))

(declare-fun m!2274731 () Bool)

(assert (=> d!565201 m!2274731))

(assert (=> d!565201 m!2274603))

(declare-fun m!2274733 () Bool)

(assert (=> d!565201 m!2274733))

(assert (=> d!565201 m!2274627))

(declare-fun m!2274735 () Bool)

(assert (=> d!565201 m!2274735))

(assert (=> b!1846386 m!2274627))

(declare-fun m!2274737 () Bool)

(assert (=> b!1846386 m!2274737))

(assert (=> d!565183 d!565201))

(assert (=> d!565183 d!565165))

(push 1)

(assert (not b!1846312))

(assert (not d!565201))

(assert (not b!1846254))

(assert (not b!1846328))

(assert (not d!565181))

(assert (not bm!115110))

(assert (not b!1846387))

(assert (not b!1846337))

(assert (not d!565199))

(assert (not b!1846310))

(assert (not b!1846282))

(assert (not b!1846287))

(assert (not b!1846286))

(assert (not b!1846376))

(assert (not b!1846338))

(assert (not b!1846386))

(assert (not b!1846283))

(assert (not d!565179))

(assert (not b!1846327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

