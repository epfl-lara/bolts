; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!227870 () Bool)

(assert start!227870)

(assert (=> start!227870 true))

(declare-fun b!2311361 () Bool)

(declare-fun e!1481298 () Bool)

(declare-datatypes ((List!27610 0))(
  ( (Nil!27512) (Cons!27512 (h!32913 (_ BitVec 16)) (t!207108 List!27610)) )
))
(declare-datatypes ((IArray!17965 0))(
  ( (IArray!17966 (innerList!9040 List!27610)) )
))
(declare-datatypes ((Conc!8980 0))(
  ( (Node!8980 (left!20845 Conc!8980) (right!21175 Conc!8980) (csize!18190 Int) (cheight!9191 Int)) (Leaf!13176 (xs!11922 IArray!17965) (csize!18191 Int)) (Empty!8980) )
))
(declare-datatypes ((BalanceConc!17692 0))(
  ( (BalanceConc!17693 (c!366435 Conc!8980)) )
))
(declare-fun x!440688 () BalanceConc!17692)

(declare-fun tp!733370 () Bool)

(declare-fun inv!37180 (Conc!8980) Bool)

(assert (=> b!2311361 (= e!1481298 (and (inv!37180 (c!366435 x!440688)) tp!733370))))

(declare-datatypes ((IntegerValueInjection!112 0))(
  ( (IntegerValueInjection!113) )
))
(declare-fun thiss!2978 () IntegerValueInjection!112)

(declare-fun inst!1304 () Bool)

(declare-fun inv!37181 (BalanceConc!17692) Bool)

(declare-fun list!10878 (BalanceConc!17692) List!27610)

(declare-datatypes ((TokenValue!4576 0))(
  ( (FloatLiteralValue!9152 (text!32477 List!27610)) (TokenValueExt!4575 (__x!18212 Int)) (Broken!22880 (value!139619 List!27610)) (Object!4673) (End!4576) (Def!4576) (Underscore!4576) (Match!4576) (Else!4576) (Error!4576) (Case!4576) (If!4576) (Extends!4576) (Abstract!4576) (Class!4576) (Val!4576) (DelimiterValue!9152 (del!4636 List!27610)) (KeywordValue!4582 (value!139620 List!27610)) (CommentValue!9152 (value!139621 List!27610)) (WhitespaceValue!9152 (value!139622 List!27610)) (IndentationValue!4576 (value!139623 List!27610)) (String!29997) (Int32!4576) (Broken!22881 (value!139624 List!27610)) (Boolean!4577) (Unit!40432) (OperatorValue!4579 (op!4636 List!27610)) (IdentifierValue!9152 (value!139625 List!27610)) (IdentifierValue!9153 (value!139626 List!27610)) (WhitespaceValue!9153 (value!139627 List!27610)) (True!9152) (False!9152) (Broken!22882 (value!139628 List!27610)) (Broken!22883 (value!139629 List!27610)) (True!9153) (RightBrace!4576) (RightBracket!4576) (Colon!4576) (Null!4576) (Comma!4576) (LeftBracket!4576) (False!9153) (LeftBrace!4576) (ImaginaryLiteralValue!4576 (text!32478 List!27610)) (StringLiteralValue!13728 (value!139630 List!27610)) (EOFValue!4576 (value!139631 List!27610)) (IdentValue!4576 (value!139632 List!27610)) (DelimiterValue!9153 (value!139633 List!27610)) (DedentValue!4576 (value!139634 List!27610)) (NewLineValue!4576 (value!139635 List!27610)) (IntegerValue!13728 (value!139636 (_ BitVec 32)) (text!32479 List!27610)) (IntegerValue!13729 (value!139637 Int) (text!32480 List!27610)) (Times!4576) (Or!4576) (Equal!4576) (Minus!4576) (Broken!22884 (value!139638 List!27610)) (And!4576) (Div!4576) (LessEqual!4576) (Mod!4576) (Concat!11340) (Not!4576) (Plus!4576) (SpaceValue!4576 (value!139639 List!27610)) (IntegerValue!13730 (value!139640 Int) (text!32481 List!27610)) (StringLiteralValue!13729 (text!32482 List!27610)) (FloatLiteralValue!9153 (text!32483 List!27610)) (BytesLiteralValue!4576 (value!139641 List!27610)) (CommentValue!9153 (value!139642 List!27610)) (StringLiteralValue!13730 (value!139643 List!27610)) (ErrorTokenValue!4576 (msg!4637 List!27610)) )
))
(declare-fun toCharacters!0 (IntegerValueInjection!112 TokenValue!4576) BalanceConc!17692)

(declare-fun toValue!7 (IntegerValueInjection!112 BalanceConc!17692) TokenValue!4576)

(assert (=> start!227870 (= inst!1304 (=> (and (inv!37181 x!440688) e!1481298) (= (list!10878 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688))) (list!10878 x!440688))))))

(assert (= start!227870 b!2311361))

(declare-fun m!2738659 () Bool)

(assert (=> b!2311361 m!2738659))

(declare-fun m!2738661 () Bool)

(assert (=> start!227870 m!2738661))

(declare-fun m!2738663 () Bool)

(assert (=> start!227870 m!2738663))

(declare-fun m!2738665 () Bool)

(assert (=> start!227870 m!2738665))

(declare-fun m!2738667 () Bool)

(assert (=> start!227870 m!2738667))

(declare-fun m!2738669 () Bool)

(assert (=> start!227870 m!2738669))

(assert (=> start!227870 m!2738661))

(assert (=> start!227870 m!2738665))

(declare-fun bs!458294 () Bool)

(declare-fun neg-inst!1304 () Bool)

(declare-fun s!224723 () Bool)

(assert (= bs!458294 (and neg-inst!1304 s!224723)))

(assert (=> bs!458294 (=> true (= (list!10878 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688))) (list!10878 x!440688)))))

(assert (=> m!2738661 m!2738665))

(assert (=> m!2738661 m!2738667))

(assert (=> m!2738661 m!2738669))

(assert (=> m!2738661 s!224723))

(assert (=> m!2738669 s!224723))

(declare-fun bs!458295 () Bool)

(assert (= bs!458295 (and neg-inst!1304 start!227870)))

(assert (=> bs!458295 (= true inst!1304)))

(declare-fun lambda!86084 () Int)

(declare-fun Forall!1106 (Int) Bool)

(assert (=> start!227870 (= (Forall!1106 lambda!86084) inst!1304)))

(assert (=> start!227870 (not (Forall!1106 lambda!86084))))

(assert (=> start!227870 true))

(assert (= neg-inst!1304 inst!1304))

(declare-fun m!2738671 () Bool)

(assert (=> start!227870 m!2738671))

(assert (=> start!227870 m!2738671))

(push 1)

(assert (not start!227870))

(assert (not b!2311361))

(assert (not bs!458294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!683844 () Bool)

(declare-fun list!10880 (Conc!8980) List!27610)

(assert (=> d!683844 (= (list!10878 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688))) (list!10880 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)))))))

(declare-fun bs!458298 () Bool)

(assert (= bs!458298 d!683844))

(declare-fun m!2738687 () Bool)

(assert (=> bs!458298 m!2738687))

(assert (=> bs!458294 d!683844))

(declare-fun d!683846 () Bool)

(declare-fun c!366440 () Bool)

(assert (=> d!683846 (= c!366440 (is-IntegerValue!13730 (toValue!7 thiss!2978 x!440688)))))

(declare-fun e!1481304 () BalanceConc!17692)

(assert (=> d!683846 (= (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)) e!1481304)))

(declare-fun b!2311371 () Bool)

(declare-fun seqFromList!3118 (List!27610) BalanceConc!17692)

(assert (=> b!2311371 (= e!1481304 (seqFromList!3118 (text!32481 (toValue!7 thiss!2978 x!440688))))))

(declare-fun b!2311372 () Bool)

(assert (=> b!2311372 (= e!1481304 (BalanceConc!17693 Empty!8980))))

(assert (= (and d!683846 c!366440) b!2311371))

(assert (= (and d!683846 (not c!366440)) b!2311372))

(declare-fun m!2738689 () Bool)

(assert (=> b!2311371 m!2738689))

(assert (=> bs!458294 d!683846))

(declare-fun d!683848 () Bool)

(declare-fun lt!857457 () List!27610)

(declare-fun efficientList!306 (BalanceConc!17692) List!27610)

(assert (=> d!683848 (= lt!857457 (efficientList!306 x!440688))))

(declare-fun charsToBigInt!0 (List!27610 Int) Int)

(assert (=> d!683848 (= (toValue!7 thiss!2978 x!440688) (IntegerValue!13730 (charsToBigInt!0 lt!857457 0) lt!857457))))

(declare-fun bs!458299 () Bool)

(assert (= bs!458299 d!683848))

(declare-fun m!2738691 () Bool)

(assert (=> bs!458299 m!2738691))

(declare-fun m!2738693 () Bool)

(assert (=> bs!458299 m!2738693))

(assert (=> bs!458294 d!683848))

(declare-fun d!683852 () Bool)

(assert (=> d!683852 (= (list!10878 x!440688) (list!10880 (c!366435 x!440688)))))

(declare-fun bs!458300 () Bool)

(assert (= bs!458300 d!683852))

(declare-fun m!2738695 () Bool)

(assert (=> bs!458300 m!2738695))

(assert (=> bs!458294 d!683852))

(push 1)

(assert (not b!2311371))

(assert (not start!227870))

(assert (not d!683844))

(assert (not d!683852))

(assert (not d!683848))

(assert (not b!2311361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2311390 () Bool)

(declare-fun e!1481313 () List!27610)

(declare-fun ++!6740 (List!27610 List!27610) List!27610)

(assert (=> b!2311390 (= e!1481313 (++!6740 (list!10880 (left!20845 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688))))) (list!10880 (right!21175 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)))))))))

(declare-fun d!683858 () Bool)

(declare-fun c!366449 () Bool)

(assert (=> d!683858 (= c!366449 (is-Empty!8980 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)))))))

(declare-fun e!1481312 () List!27610)

(assert (=> d!683858 (= (list!10880 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)))) e!1481312)))

(declare-fun b!2311389 () Bool)

(declare-fun list!10882 (IArray!17965) List!27610)

(assert (=> b!2311389 (= e!1481313 (list!10882 (xs!11922 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688))))))))

(declare-fun b!2311387 () Bool)

(assert (=> b!2311387 (= e!1481312 Nil!27512)))

(declare-fun b!2311388 () Bool)

(assert (=> b!2311388 (= e!1481312 e!1481313)))

(declare-fun c!366450 () Bool)

(assert (=> b!2311388 (= c!366450 (is-Leaf!13176 (c!366435 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440688)))))))

(assert (= (and d!683858 c!366449) b!2311387))

(assert (= (and d!683858 (not c!366449)) b!2311388))

(assert (= (and b!2311388 c!366450) b!2311389))

(assert (= (and b!2311388 (not c!366450)) b!2311390))

(declare-fun m!2738701 () Bool)

(assert (=> b!2311390 m!2738701))

(declare-fun m!2738703 () Bool)

(assert (=> b!2311390 m!2738703))

(assert (=> b!2311390 m!2738701))

(assert (=> b!2311390 m!2738703))

(declare-fun m!2738705 () Bool)

(assert (=> b!2311390 m!2738705))

(declare-fun m!2738707 () Bool)

(assert (=> b!2311389 m!2738707))

(assert (=> d!683844 d!683858))

(declare-fun b!2311394 () Bool)

(declare-fun e!1481315 () List!27610)

(assert (=> b!2311394 (= e!1481315 (++!6740 (list!10880 (left!20845 (c!366435 x!440688))) (list!10880 (right!21175 (c!366435 x!440688)))))))

(declare-fun d!683860 () Bool)

(declare-fun c!366451 () Bool)

(assert (=> d!683860 (= c!366451 (is-Empty!8980 (c!366435 x!440688)))))

(declare-fun e!1481314 () List!27610)

(assert (=> d!683860 (= (list!10880 (c!366435 x!440688)) e!1481314)))

(declare-fun b!2311393 () Bool)

(assert (=> b!2311393 (= e!1481315 (list!10882 (xs!11922 (c!366435 x!440688))))))

(declare-fun b!2311391 () Bool)

(assert (=> b!2311391 (= e!1481314 Nil!27512)))

(declare-fun b!2311392 () Bool)

(assert (=> b!2311392 (= e!1481314 e!1481315)))

(declare-fun c!366452 () Bool)

(assert (=> b!2311392 (= c!366452 (is-Leaf!13176 (c!366435 x!440688)))))

(assert (= (and d!683860 c!366451) b!2311391))

(assert (= (and d!683860 (not c!366451)) b!2311392))

(assert (= (and b!2311392 c!366452) b!2311393))

(assert (= (and b!2311392 (not c!366452)) b!2311394))

(declare-fun m!2738709 () Bool)

(assert (=> b!2311394 m!2738709))

(declare-fun m!2738711 () Bool)

(assert (=> b!2311394 m!2738711))

(assert (=> b!2311394 m!2738709))

(assert (=> b!2311394 m!2738711))

(declare-fun m!2738713 () Bool)

(assert (=> b!2311394 m!2738713))

(declare-fun m!2738715 () Bool)

(assert (=> b!2311393 m!2738715))

(assert (=> d!683852 d!683860))

(declare-fun d!683862 () Bool)

(declare-fun lt!857463 () List!27610)

(assert (=> d!683862 (= lt!857463 (list!10878 x!440688))))

(declare-fun efficientList!308 (Conc!8980 List!27610) List!27610)

(declare-fun efficientList$default$2!106 (Conc!8980) List!27610)

(assert (=> d!683862 (= lt!857463 (efficientList!308 (c!366435 x!440688) (efficientList$default$2!106 (c!366435 x!440688))))))

(assert (=> d!683862 (= (efficientList!306 x!440688) lt!857463)))

(declare-fun bs!458304 () Bool)

(assert (= bs!458304 d!683862))

(assert (=> bs!458304 m!2738669))

(declare-fun m!2738723 () Bool)

(assert (=> bs!458304 m!2738723))

(assert (=> bs!458304 m!2738723))

(declare-fun m!2738725 () Bool)

(assert (=> bs!458304 m!2738725))

(assert (=> d!683848 d!683862))

(declare-fun d!683866 () Bool)

(declare-fun c!366455 () Bool)

(assert (=> d!683866 (= c!366455 (is-Nil!27512 lt!857457))))

(declare-fun e!1481318 () Int)

(assert (=> d!683866 (= (charsToBigInt!0 lt!857457 0) e!1481318)))

(declare-fun b!2311399 () Bool)

(assert (=> b!2311399 (= e!1481318 0)))

(declare-fun b!2311400 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2311400 (= e!1481318 (charsToBigInt!0 (t!207108 lt!857457) (+ (* 0 10) (charToBigInt!0 (h!32913 lt!857457)))))))

(assert (= (and d!683866 c!366455) b!2311399))

(assert (= (and d!683866 (not c!366455)) b!2311400))

(declare-fun m!2738727 () Bool)

(assert (=> b!2311400 m!2738727))

(declare-fun m!2738729 () Bool)

(assert (=> b!2311400 m!2738729))

(assert (=> d!683848 d!683866))

(push 1)

(assert (not b!2311371))

(assert (not start!227870))

(assert (not b!2311390))

(assert (not b!2311394))

(assert (not d!683862))

(assert (not b!2311400))

(assert (not b!2311389))

(assert (not b!2311361))

(assert (not b!2311393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!227870 d!683848))

(assert (=> start!227870 d!683852))

(declare-fun d!683874 () Bool)

(declare-fun choose!13524 (Int) Bool)

(assert (=> d!683874 (= (Forall!1106 lambda!86084) (choose!13524 lambda!86084))))

(declare-fun bs!458305 () Bool)

(assert (= bs!458305 d!683874))

(declare-fun m!2738747 () Bool)

(assert (=> bs!458305 m!2738747))

(assert (=> start!227870 d!683874))

(assert (=> start!227870 d!683846))

(declare-fun d!683876 () Bool)

(declare-fun isBalanced!2698 (Conc!8980) Bool)

(assert (=> d!683876 (= (inv!37181 x!440688) (isBalanced!2698 (c!366435 x!440688)))))

(declare-fun bs!458307 () Bool)

(assert (= bs!458307 d!683876))

(declare-fun m!2738753 () Bool)

(assert (=> bs!458307 m!2738753))

(assert (=> start!227870 d!683876))

(assert (=> start!227870 d!683844))

(declare-fun d!683880 () Bool)

(declare-fun c!366468 () Bool)

(assert (=> d!683880 (= c!366468 (is-Node!8980 (c!366435 x!440688)))))

(declare-fun e!1481333 () Bool)

(assert (=> d!683880 (= (inv!37180 (c!366435 x!440688)) e!1481333)))

(declare-fun b!2311427 () Bool)

(declare-fun inv!37184 (Conc!8980) Bool)

(assert (=> b!2311427 (= e!1481333 (inv!37184 (c!366435 x!440688)))))

(declare-fun b!2311428 () Bool)

(declare-fun e!1481334 () Bool)

(assert (=> b!2311428 (= e!1481333 e!1481334)))

(declare-fun res!988150 () Bool)

(assert (=> b!2311428 (= res!988150 (not (is-Leaf!13176 (c!366435 x!440688))))))

(assert (=> b!2311428 (=> res!988150 e!1481334)))

(declare-fun b!2311429 () Bool)

(declare-fun inv!37185 (Conc!8980) Bool)

(assert (=> b!2311429 (= e!1481334 (inv!37185 (c!366435 x!440688)))))

(assert (= (and d!683880 c!366468) b!2311427))

(assert (= (and d!683880 (not c!366468)) b!2311428))

(assert (= (and b!2311428 (not res!988150)) b!2311429))

(declare-fun m!2738755 () Bool)

(assert (=> b!2311427 m!2738755))

(declare-fun m!2738757 () Bool)

(assert (=> b!2311429 m!2738757))

(assert (=> b!2311361 d!683880))

(assert (=> d!683862 d!683852))

(declare-fun bm!137392 () Bool)

(declare-fun c!366478 () Bool)

(declare-fun c!366476 () Bool)

(assert (=> bm!137392 (= c!366478 c!366476)))

(declare-fun call!137397 () List!27610)

(declare-fun e!1481344 () List!27610)

(assert (=> bm!137392 (= call!137397 (++!6740 e!1481344 (efficientList$default$2!106 (c!366435 x!440688))))))

(declare-fun b!2311444 () Bool)

(declare-fun e!1481343 () List!27610)

(assert (=> b!2311444 (= e!1481343 (efficientList$default$2!106 (c!366435 x!440688)))))

(declare-fun b!2311445 () Bool)

(declare-fun e!1481342 () List!27610)

(assert (=> b!2311445 (= e!1481342 call!137397)))

(declare-fun b!2311446 () Bool)

(declare-fun efficientList!310 (IArray!17965) List!27610)

(assert (=> b!2311446 (= e!1481344 (efficientList!310 (xs!11922 (c!366435 x!440688))))))

(declare-fun b!2311447 () Bool)

(declare-datatypes ((Unit!40434 0))(
  ( (Unit!40435) )
))
(declare-fun lt!857478 () Unit!40434)

(declare-fun lt!857480 () Unit!40434)

(assert (=> b!2311447 (= lt!857478 lt!857480)))

(declare-fun lt!857477 () List!27610)

(declare-fun lt!857481 () List!27610)

(assert (=> b!2311447 (= (++!6740 (++!6740 lt!857481 lt!857477) (efficientList$default$2!106 (c!366435 x!440688))) (++!6740 lt!857481 call!137397))))

(declare-fun lemmaConcatAssociativity!1424 (List!27610 List!27610 List!27610) Unit!40434)

(assert (=> b!2311447 (= lt!857480 (lemmaConcatAssociativity!1424 lt!857481 lt!857477 (efficientList$default$2!106 (c!366435 x!440688))))))

(assert (=> b!2311447 (= lt!857477 (list!10880 (right!21175 (c!366435 x!440688))))))

(assert (=> b!2311447 (= lt!857481 (list!10880 (left!20845 (c!366435 x!440688))))))

(assert (=> b!2311447 (= e!1481342 (efficientList!308 (left!20845 (c!366435 x!440688)) (efficientList!308 (right!21175 (c!366435 x!440688)) (efficientList$default$2!106 (c!366435 x!440688)))))))

(declare-fun b!2311448 () Bool)

(assert (=> b!2311448 (= e!1481343 e!1481342)))

(assert (=> b!2311448 (= c!366476 (is-Leaf!13176 (c!366435 x!440688)))))

(declare-fun d!683882 () Bool)

(declare-fun lt!857479 () List!27610)

(assert (=> d!683882 (= lt!857479 (++!6740 (list!10880 (c!366435 x!440688)) (efficientList$default$2!106 (c!366435 x!440688))))))

(assert (=> d!683882 (= lt!857479 e!1481343)))

(declare-fun c!366477 () Bool)

(assert (=> d!683882 (= c!366477 (is-Empty!8980 (c!366435 x!440688)))))

(assert (=> d!683882 (= (efficientList!308 (c!366435 x!440688) (efficientList$default$2!106 (c!366435 x!440688))) lt!857479)))

(declare-fun b!2311449 () Bool)

(assert (=> b!2311449 (= e!1481344 lt!857477)))

(assert (= (and d!683882 c!366477) b!2311444))

(assert (= (and d!683882 (not c!366477)) b!2311448))

(assert (= (and b!2311448 c!366476) b!2311445))

(assert (= (and b!2311448 (not c!366476)) b!2311447))

(assert (= (or b!2311445 b!2311447) bm!137392))

(assert (= (and bm!137392 c!366478) b!2311446))

(assert (= (and bm!137392 (not c!366478)) b!2311449))

(assert (=> bm!137392 m!2738723))

(declare-fun m!2738763 () Bool)

(assert (=> bm!137392 m!2738763))

(declare-fun m!2738765 () Bool)

(assert (=> b!2311446 m!2738765))

(declare-fun m!2738767 () Bool)

(assert (=> b!2311447 m!2738767))

(assert (=> b!2311447 m!2738709))

(assert (=> b!2311447 m!2738767))

(assert (=> b!2311447 m!2738723))

(declare-fun m!2738769 () Bool)

(assert (=> b!2311447 m!2738769))

(assert (=> b!2311447 m!2738723))

(declare-fun m!2738771 () Bool)

(assert (=> b!2311447 m!2738771))

(declare-fun m!2738773 () Bool)

(assert (=> b!2311447 m!2738773))

(declare-fun m!2738775 () Bool)

(assert (=> b!2311447 m!2738775))

(assert (=> b!2311447 m!2738711))

(declare-fun m!2738777 () Bool)

(assert (=> b!2311447 m!2738777))

(assert (=> b!2311447 m!2738723))

(assert (=> b!2311447 m!2738773))

(assert (=> d!683882 m!2738695))

(assert (=> d!683882 m!2738695))

(assert (=> d!683882 m!2738723))

(declare-fun m!2738779 () Bool)

(assert (=> d!683882 m!2738779))

(assert (=> d!683862 d!683882))

(declare-fun d!683884 () Bool)

(assert (=> d!683884 (= (efficientList$default$2!106 (c!366435 x!440688)) Nil!27512)))

(assert (=> d!683862 d!683884))

(declare-fun d!683886 () Bool)

(declare-fun fromListB!1409 (List!27610) BalanceConc!17692)

(assert (=> d!683886 (= (seqFromList!3118 (text!32481 (toValue!7 thiss!2978 x!440688))) (fromListB!1409 (text!32481 (toValue!7 thiss!2978 x!440688))))))

(declare-fun bs!458308 () Bool)

(assert (= bs!458308 d!683886))

(declare-fun m!2738781 () Bool)

(assert (=> bs!458308 m!2738781))

(assert (=> b!2311371 d!683886))

(declare-fun e!1481349 () Bool)

(declare-fun tp!733378 () Bool)

(declare-fun b!2311456 () Bool)

(declare-fun tp!733379 () Bool)

(assert (=> b!2311456 (= e!1481349 (and (inv!37180 (left!20845 (c!366435 x!440688))) tp!733378 (inv!37180 (right!21175 (c!366435 x!440688))) tp!733379))))

(declare-fun b!2311457 () Bool)

(declare-fun inv!37186 (IArray!17965) Bool)

(assert (=> b!2311457 (= e!1481349 (inv!37186 (xs!11922 (c!366435 x!440688))))))

(assert (=> b!2311361 (= tp!733370 (and (inv!37180 (c!366435 x!440688)) e!1481349))))

(assert (= (and b!2311361 (is-Node!8980 (c!366435 x!440688))) b!2311456))

(assert (= (and b!2311361 (is-Leaf!13176 (c!366435 x!440688))) b!2311457))

(declare-fun m!2738783 () Bool)

(assert (=> b!2311456 m!2738783))

(declare-fun m!2738785 () Bool)

(assert (=> b!2311456 m!2738785))

(declare-fun m!2738787 () Bool)

(assert (=> b!2311457 m!2738787))

(assert (=> b!2311361 m!2738659))

(push 1)

(assert (not b!2311446))

(assert (not bm!137392))

(assert (not b!2311390))

(assert (not d!683874))

(assert (not b!2311394))

(assert (not b!2311457))

(assert (not d!683882))

(assert (not b!2311456))

(assert (not b!2311427))

(assert (not b!2311400))

(assert (not b!2311447))

(assert (not b!2311361))

(assert (not b!2311393))

(assert (not d!683886))

(assert (not d!683876))

(assert (not b!2311389))

(assert (not b!2311429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!683896 () Bool)

(declare-fun e!1481365 () Bool)

(assert (=> d!683896 e!1481365))

(declare-fun res!988156 () Bool)

(assert (=> d!683896 (=> (not res!988156) (not e!1481365))))

(declare-fun lt!857494 () BalanceConc!17692)

(assert (=> d!683896 (= res!988156 (= (list!10878 lt!857494) (text!32481 (toValue!7 thiss!2978 x!440688))))))

(declare-fun fromList!553 (List!27610) Conc!8980)

(assert (=> d!683896 (= lt!857494 (BalanceConc!17693 (fromList!553 (text!32481 (toValue!7 thiss!2978 x!440688)))))))

(assert (=> d!683896 (= (fromListB!1409 (text!32481 (toValue!7 thiss!2978 x!440688))) lt!857494)))

(declare-fun b!2311481 () Bool)

(assert (=> b!2311481 (= e!1481365 (isBalanced!2698 (fromList!553 (text!32481 (toValue!7 thiss!2978 x!440688)))))))

(assert (= (and d!683896 res!988156) b!2311481))

(declare-fun m!2738797 () Bool)

(assert (=> d!683896 m!2738797))

(declare-fun m!2738799 () Bool)

(assert (=> d!683896 m!2738799))

(assert (=> b!2311481 m!2738799))

(assert (=> b!2311481 m!2738799))

(declare-fun m!2738801 () Bool)

(assert (=> b!2311481 m!2738801))

(assert (=> d!683886 d!683896))

(declare-fun b!2311497 () Bool)

(declare-fun e!1481374 () List!27610)

(assert (=> b!2311497 (= e!1481374 (Cons!27512 (h!32913 (list!10880 (c!366435 x!440688))) (++!6740 (t!207108 (list!10880 (c!366435 x!440688))) (efficientList$default$2!106 (c!366435 x!440688)))))))

(declare-fun b!2311498 () Bool)

(declare-fun res!988161 () Bool)

(declare-fun e!1481373 () Bool)

(assert (=> b!2311498 (=> (not res!988161) (not e!1481373))))

(declare-fun lt!857502 () List!27610)

(declare-fun size!21726 (List!27610) Int)

(assert (=> b!2311498 (= res!988161 (= (size!21726 lt!857502) (+ (size!21726 (list!10880 (c!366435 x!440688))) (size!21726 (efficientList$default$2!106 (c!366435 x!440688))))))))

(declare-fun d!683898 () Bool)

(assert (=> d!683898 e!1481373))

(declare-fun res!988162 () Bool)

(assert (=> d!683898 (=> (not res!988162) (not e!1481373))))

(declare-fun content!3722 (List!27610) (Set (_ BitVec 16)))

(assert (=> d!683898 (= res!988162 (= (content!3722 lt!857502) (set.union (content!3722 (list!10880 (c!366435 x!440688))) (content!3722 (efficientList$default$2!106 (c!366435 x!440688))))))))

(assert (=> d!683898 (= lt!857502 e!1481374)))

(declare-fun c!366494 () Bool)

(assert (=> d!683898 (= c!366494 (is-Nil!27512 (list!10880 (c!366435 x!440688))))))

(assert (=> d!683898 (= (++!6740 (list!10880 (c!366435 x!440688)) (efficientList$default$2!106 (c!366435 x!440688))) lt!857502)))

(declare-fun b!2311496 () Bool)

(assert (=> b!2311496 (= e!1481374 (efficientList$default$2!106 (c!366435 x!440688)))))

(declare-fun b!2311499 () Bool)

(assert (=> b!2311499 (= e!1481373 (or (not (= (efficientList$default$2!106 (c!366435 x!440688)) Nil!27512)) (= lt!857502 (list!10880 (c!366435 x!440688)))))))

(assert (= (and d!683898 c!366494) b!2311496))

(assert (= (and d!683898 (not c!366494)) b!2311497))

(assert (= (and d!683898 res!988162) b!2311498))

(assert (= (and b!2311498 res!988161) b!2311499))

(assert (=> b!2311497 m!2738723))

(declare-fun m!2738821 () Bool)

(assert (=> b!2311497 m!2738821))

(declare-fun m!2738823 () Bool)

(assert (=> b!2311498 m!2738823))

(assert (=> b!2311498 m!2738695))

(declare-fun m!2738825 () Bool)

(assert (=> b!2311498 m!2738825))

(assert (=> b!2311498 m!2738723))

(declare-fun m!2738827 () Bool)

(assert (=> b!2311498 m!2738827))

(declare-fun m!2738829 () Bool)

(assert (=> d!683898 m!2738829))

(assert (=> d!683898 m!2738695))

(declare-fun m!2738831 () Bool)

(assert (=> d!683898 m!2738831))

(assert (=> d!683898 m!2738723))

(declare-fun m!2738833 () Bool)

(assert (=> d!683898 m!2738833))

(assert (=> d!683882 d!683898))

(assert (=> d!683882 d!683860))

(declare-fun d!683904 () Bool)

(declare-fun c!366495 () Bool)

(assert (=> d!683904 (= c!366495 (is-Nil!27512 (t!207108 lt!857457)))))

(declare-fun e!1481375 () Int)

(assert (=> d!683904 (= (charsToBigInt!0 (t!207108 lt!857457) (+ (* 0 10) (charToBigInt!0 (h!32913 lt!857457)))) e!1481375)))

(declare-fun b!2311500 () Bool)

(assert (=> b!2311500 (= e!1481375 (+ (* 0 10) (charToBigInt!0 (h!32913 lt!857457))))))

(declare-fun b!2311501 () Bool)

(assert (=> b!2311501 (= e!1481375 (charsToBigInt!0 (t!207108 (t!207108 lt!857457)) (+ (* (+ (* 0 10) (charToBigInt!0 (h!32913 lt!857457))) 10) (charToBigInt!0 (h!32913 (t!207108 lt!857457))))))))

(assert (= (and d!683904 c!366495) b!2311500))

(assert (= (and d!683904 (not c!366495)) b!2311501))

(declare-fun m!2738835 () Bool)

(assert (=> b!2311501 m!2738835))

(declare-fun m!2738837 () Bool)

(assert (=> b!2311501 m!2738837))

(assert (=> b!2311400 d!683904))

(declare-fun d!683906 () Bool)

(assert (=> d!683906 (= (charToBigInt!0 (h!32913 lt!857457)) (ite (= (h!32913 lt!857457) #x0031) 1 (ite (= (h!32913 lt!857457) #x0032) 2 (ite (= (h!32913 lt!857457) #x0033) 3 (ite (= (h!32913 lt!857457) #x0034) 4 (ite (= (h!32913 lt!857457) #x0035) 5 (ite (= (h!32913 lt!857457) #x0036) 6 (ite (= (h!32913 lt!857457) #x0037) 7 (ite (= (h!32913 lt!857457) #x0038) 8 (ite (= (h!32913 lt!857457) #x0039) 9 0))))))))))))

(assert (=> b!2311400 d!683906))

(push 1)

(assert (not d!683876))

(assert (not b!2311446))

(assert (not b!2311390))

(assert (not d!683896))

(assert (not d!683874))

(assert (not b!2311457))

(assert (not b!2311498))

(assert (not b!2311447))

(assert (not b!2311361))

(assert (not b!2311393))

(assert (not bm!137392))

(assert (not b!2311501))

(assert (not b!2311481))

(assert (not b!2311394))

(assert (not b!2311456))

(assert (not b!2311497))

(assert (not d!683898))

(assert (not b!2311427))

(assert (not b!2311389))

(assert (not b!2311429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

