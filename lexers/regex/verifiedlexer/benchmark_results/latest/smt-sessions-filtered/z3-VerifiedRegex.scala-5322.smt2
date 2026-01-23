; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272196 () Bool)

(assert start!272196)

(declare-fun b!2811725 () Bool)

(declare-fun e!1778215 () Bool)

(declare-fun tp_is_empty!14387 () Bool)

(declare-fun tp!897952 () Bool)

(assert (=> b!2811725 (= e!1778215 (and tp_is_empty!14387 tp!897952))))

(declare-fun b!2811727 () Bool)

(declare-fun e!1778212 () Bool)

(declare-fun e!1778211 () Bool)

(assert (=> b!2811727 (= e!1778212 e!1778211)))

(declare-fun res!1170581 () Bool)

(assert (=> b!2811727 (=> res!1170581 e!1778211)))

(declare-datatypes ((T!54794 0))(
  ( (T!54795 (val!10332 Int)) )
))
(declare-datatypes ((List!32961 0))(
  ( (Nil!32848) (Cons!32848 (h!38268 T!54794) (t!229916 List!32961)) )
))
(declare-fun lt!1004490 () List!32961)

(declare-fun lt!1004495 () List!32961)

(assert (=> b!2811727 (= res!1170581 (not (= lt!1004490 lt!1004495)))))

(declare-fun lt!1004491 () List!32961)

(declare-fun lt!1004489 () List!32961)

(declare-fun ++!8065 (List!32961 List!32961) List!32961)

(assert (=> b!2811727 (= lt!1004495 (++!8065 lt!1004491 lt!1004489))))

(declare-fun ll!54 () List!32961)

(assert (=> b!2811727 (= lt!1004489 (Cons!32848 (h!38268 ll!54) Nil!32848))))

(declare-fun lt!1004493 () List!32961)

(declare-fun b!2811728 () Bool)

(declare-fun $colon$colon!569 (List!32961 T!54794) List!32961)

(assert (=> b!2811728 (= e!1778211 (= lt!1004493 (++!8065 lt!1004491 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)))))))

(declare-fun lt!1004488 () List!32961)

(assert (=> b!2811728 (= lt!1004493 (++!8065 lt!1004491 lt!1004488))))

(assert (=> b!2811728 (= lt!1004493 (++!8065 lt!1004495 (t!229916 ll!54)))))

(assert (=> b!2811728 (= lt!1004488 (++!8065 lt!1004489 (t!229916 ll!54)))))

(declare-datatypes ((Unit!46860 0))(
  ( (Unit!46861) )
))
(declare-fun lt!1004492 () Unit!46860)

(declare-fun lemmaConcatAssociativity!1674 (List!32961 List!32961 List!32961) Unit!46860)

(assert (=> b!2811728 (= lt!1004492 (lemmaConcatAssociativity!1674 lt!1004491 lt!1004489 (t!229916 ll!54)))))

(declare-fun b!2811729 () Bool)

(declare-fun e!1778214 () Bool)

(declare-fun tp!897954 () Bool)

(declare-fun tp!897953 () Bool)

(assert (=> b!2811729 (= e!1778214 (and tp!897954 tp!897953))))

(declare-fun res!1170582 () Bool)

(declare-fun e!1778213 () Bool)

(assert (=> start!272196 (=> (not res!1170582) (not e!1778213))))

(get-info :version)

(assert (=> start!272196 (= res!1170582 (not ((_ is Nil!32848) ll!54)))))

(assert (=> start!272196 e!1778213))

(assert (=> start!272196 e!1778215))

(assert (=> start!272196 e!1778214))

(declare-fun b!2811726 () Bool)

(assert (=> b!2811726 (= e!1778213 (not e!1778212))))

(declare-fun res!1170580 () Bool)

(assert (=> b!2811726 (=> res!1170580 e!1778212)))

(declare-datatypes ((Conc!10170 0) (List!32963 0) (BalanceConc!19968 0) (IArray!20345 0) (Object!5252 0))(
  ( (Node!10170 (left!24776 Conc!10170) (right!25106 Conc!10170) (csize!20570 Int) (cheight!10381 Int)) (Leaf!15493 (xs!13282 IArray!20345) (csize!20571 Int)) (Empty!10170) )
  ( (Nil!32849) (Cons!32849 (h!38269 Object!5252) (t!229917 List!32963)) )
  ( (BalanceConc!19969 (c!455522 Conc!10170)) )
  ( (IArray!20346 (innerList!10230 List!32963)) )
  ( (BalanceConc!19967 (value!158130 BalanceConc!19968)) (List!32962 (value!158131 List!32963)) (Character!112 (value!158132 (_ BitVec 16))) (Open!112 (value!158133 Int)) )
))
(declare-datatypes ((Vector!232 0))(
  ( (Vector!233 (underlying!8356 Object!5252) (overflowing!173 List!32961)) )
))
(declare-fun lt!1004494 () Vector!232)

(declare-fun list!12305 (Vector!232) List!32961)

(declare-fun rec!23 (List!32961 Vector!232) Vector!232)

(assert (=> b!2811726 (= res!1170580 (not (= (list!12305 (rec!23 (t!229916 ll!54) lt!1004494)) (++!8065 lt!1004490 (t!229916 ll!54)))))))

(declare-fun $colon+!206 (List!32961 T!54794) List!32961)

(assert (=> b!2811726 (= lt!1004490 ($colon+!206 lt!1004491 (h!38268 ll!54)))))

(assert (=> b!2811726 (= lt!1004490 (list!12305 lt!1004494))))

(declare-fun v!5966 () Vector!232)

(assert (=> b!2811726 (= lt!1004491 (list!12305 v!5966))))

(declare-fun $colon+!207 (Vector!232 T!54794) Vector!232)

(assert (=> b!2811726 (= lt!1004494 ($colon+!207 v!5966 (h!38268 ll!54)))))

(assert (= (and start!272196 res!1170582) b!2811726))

(assert (= (and b!2811726 (not res!1170580)) b!2811727))

(assert (= (and b!2811727 (not res!1170581)) b!2811728))

(assert (= (and start!272196 ((_ is Cons!32848) ll!54)) b!2811725))

(assert (= start!272196 b!2811729))

(declare-fun m!3241625 () Bool)

(assert (=> b!2811727 m!3241625))

(declare-fun m!3241627 () Bool)

(assert (=> b!2811728 m!3241627))

(declare-fun m!3241629 () Bool)

(assert (=> b!2811728 m!3241629))

(assert (=> b!2811728 m!3241627))

(declare-fun m!3241631 () Bool)

(assert (=> b!2811728 m!3241631))

(declare-fun m!3241633 () Bool)

(assert (=> b!2811728 m!3241633))

(declare-fun m!3241635 () Bool)

(assert (=> b!2811728 m!3241635))

(declare-fun m!3241637 () Bool)

(assert (=> b!2811728 m!3241637))

(declare-fun m!3241639 () Bool)

(assert (=> b!2811726 m!3241639))

(declare-fun m!3241641 () Bool)

(assert (=> b!2811726 m!3241641))

(declare-fun m!3241643 () Bool)

(assert (=> b!2811726 m!3241643))

(declare-fun m!3241645 () Bool)

(assert (=> b!2811726 m!3241645))

(declare-fun m!3241647 () Bool)

(assert (=> b!2811726 m!3241647))

(assert (=> b!2811726 m!3241639))

(declare-fun m!3241649 () Bool)

(assert (=> b!2811726 m!3241649))

(declare-fun m!3241651 () Bool)

(assert (=> b!2811726 m!3241651))

(check-sat (not b!2811725) tp_is_empty!14387 (not b!2811727) (not b!2811726) (not b!2811729) (not b!2811728))
(check-sat)
(get-model)

(declare-fun b!2811756 () Bool)

(declare-fun res!1170595 () Bool)

(declare-fun e!1778228 () Bool)

(assert (=> b!2811756 (=> (not res!1170595) (not e!1778228))))

(declare-fun lt!1004502 () List!32961)

(declare-fun size!25602 (List!32961) Int)

(assert (=> b!2811756 (= res!1170595 (= (size!25602 lt!1004502) (+ (size!25602 lt!1004491) (size!25602 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(declare-fun b!2811757 () Bool)

(assert (=> b!2811757 (= e!1778228 (or (not (= ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)) Nil!32848)) (= lt!1004502 lt!1004491)))))

(declare-fun b!2811755 () Bool)

(declare-fun e!1778229 () List!32961)

(assert (=> b!2811755 (= e!1778229 (Cons!32848 (h!38268 lt!1004491) (++!8065 (t!229916 lt!1004491) ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)))))))

(declare-fun b!2811754 () Bool)

(assert (=> b!2811754 (= e!1778229 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)))))

(declare-fun d!816115 () Bool)

(assert (=> d!816115 e!1778228))

(declare-fun res!1170596 () Bool)

(assert (=> d!816115 (=> (not res!1170596) (not e!1778228))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4577 (List!32961) (InoxSet T!54794))

(assert (=> d!816115 (= res!1170596 (= (content!4577 lt!1004502) ((_ map or) (content!4577 lt!1004491) (content!4577 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(assert (=> d!816115 (= lt!1004502 e!1778229)))

(declare-fun c!455529 () Bool)

(assert (=> d!816115 (= c!455529 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816115 (= (++!8065 lt!1004491 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))) lt!1004502)))

(assert (= (and d!816115 c!455529) b!2811754))

(assert (= (and d!816115 (not c!455529)) b!2811755))

(assert (= (and d!816115 res!1170596) b!2811756))

(assert (= (and b!2811756 res!1170595) b!2811757))

(declare-fun m!3241677 () Bool)

(assert (=> b!2811756 m!3241677))

(declare-fun m!3241679 () Bool)

(assert (=> b!2811756 m!3241679))

(assert (=> b!2811756 m!3241627))

(declare-fun m!3241681 () Bool)

(assert (=> b!2811756 m!3241681))

(assert (=> b!2811755 m!3241627))

(declare-fun m!3241683 () Bool)

(assert (=> b!2811755 m!3241683))

(declare-fun m!3241685 () Bool)

(assert (=> d!816115 m!3241685))

(declare-fun m!3241687 () Bool)

(assert (=> d!816115 m!3241687))

(assert (=> d!816115 m!3241627))

(declare-fun m!3241689 () Bool)

(assert (=> d!816115 m!3241689))

(assert (=> b!2811728 d!816115))

(declare-fun d!816121 () Bool)

(assert (=> d!816121 (= (++!8065 (++!8065 lt!1004491 lt!1004489) (t!229916 ll!54)) (++!8065 lt!1004491 (++!8065 lt!1004489 (t!229916 ll!54))))))

(declare-fun lt!1004509 () Unit!46860)

(declare-fun choose!16603 (List!32961 List!32961 List!32961) Unit!46860)

(assert (=> d!816121 (= lt!1004509 (choose!16603 lt!1004491 lt!1004489 (t!229916 ll!54)))))

(assert (=> d!816121 (= (lemmaConcatAssociativity!1674 lt!1004491 lt!1004489 (t!229916 ll!54)) lt!1004509)))

(declare-fun bs!516434 () Bool)

(assert (= bs!516434 d!816121))

(assert (=> bs!516434 m!3241633))

(declare-fun m!3241715 () Bool)

(assert (=> bs!516434 m!3241715))

(declare-fun m!3241717 () Bool)

(assert (=> bs!516434 m!3241717))

(assert (=> bs!516434 m!3241633))

(assert (=> bs!516434 m!3241625))

(assert (=> bs!516434 m!3241625))

(declare-fun m!3241719 () Bool)

(assert (=> bs!516434 m!3241719))

(assert (=> b!2811728 d!816121))

(declare-fun b!2811768 () Bool)

(declare-fun res!1170601 () Bool)

(declare-fun e!1778234 () Bool)

(assert (=> b!2811768 (=> (not res!1170601) (not e!1778234))))

(declare-fun lt!1004510 () List!32961)

(assert (=> b!2811768 (= res!1170601 (= (size!25602 lt!1004510) (+ (size!25602 lt!1004495) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811769 () Bool)

(assert (=> b!2811769 (= e!1778234 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004510 lt!1004495)))))

(declare-fun b!2811767 () Bool)

(declare-fun e!1778235 () List!32961)

(assert (=> b!2811767 (= e!1778235 (Cons!32848 (h!38268 lt!1004495) (++!8065 (t!229916 lt!1004495) (t!229916 ll!54))))))

(declare-fun b!2811766 () Bool)

(assert (=> b!2811766 (= e!1778235 (t!229916 ll!54))))

(declare-fun d!816127 () Bool)

(assert (=> d!816127 e!1778234))

(declare-fun res!1170602 () Bool)

(assert (=> d!816127 (=> (not res!1170602) (not e!1778234))))

(assert (=> d!816127 (= res!1170602 (= (content!4577 lt!1004510) ((_ map or) (content!4577 lt!1004495) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816127 (= lt!1004510 e!1778235)))

(declare-fun c!455532 () Bool)

(assert (=> d!816127 (= c!455532 ((_ is Nil!32848) lt!1004495))))

(assert (=> d!816127 (= (++!8065 lt!1004495 (t!229916 ll!54)) lt!1004510)))

(assert (= (and d!816127 c!455532) b!2811766))

(assert (= (and d!816127 (not c!455532)) b!2811767))

(assert (= (and d!816127 res!1170602) b!2811768))

(assert (= (and b!2811768 res!1170601) b!2811769))

(declare-fun m!3241723 () Bool)

(assert (=> b!2811768 m!3241723))

(declare-fun m!3241725 () Bool)

(assert (=> b!2811768 m!3241725))

(declare-fun m!3241727 () Bool)

(assert (=> b!2811768 m!3241727))

(declare-fun m!3241731 () Bool)

(assert (=> b!2811767 m!3241731))

(declare-fun m!3241733 () Bool)

(assert (=> d!816127 m!3241733))

(declare-fun m!3241735 () Bool)

(assert (=> d!816127 m!3241735))

(declare-fun m!3241737 () Bool)

(assert (=> d!816127 m!3241737))

(assert (=> b!2811728 d!816127))

(declare-fun b!2811772 () Bool)

(declare-fun res!1170603 () Bool)

(declare-fun e!1778236 () Bool)

(assert (=> b!2811772 (=> (not res!1170603) (not e!1778236))))

(declare-fun lt!1004512 () List!32961)

(assert (=> b!2811772 (= res!1170603 (= (size!25602 lt!1004512) (+ (size!25602 lt!1004491) (size!25602 lt!1004488))))))

(declare-fun b!2811773 () Bool)

(assert (=> b!2811773 (= e!1778236 (or (not (= lt!1004488 Nil!32848)) (= lt!1004512 lt!1004491)))))

(declare-fun b!2811771 () Bool)

(declare-fun e!1778237 () List!32961)

(assert (=> b!2811771 (= e!1778237 (Cons!32848 (h!38268 lt!1004491) (++!8065 (t!229916 lt!1004491) lt!1004488)))))

(declare-fun b!2811770 () Bool)

(assert (=> b!2811770 (= e!1778237 lt!1004488)))

(declare-fun d!816129 () Bool)

(assert (=> d!816129 e!1778236))

(declare-fun res!1170604 () Bool)

(assert (=> d!816129 (=> (not res!1170604) (not e!1778236))))

(assert (=> d!816129 (= res!1170604 (= (content!4577 lt!1004512) ((_ map or) (content!4577 lt!1004491) (content!4577 lt!1004488))))))

(assert (=> d!816129 (= lt!1004512 e!1778237)))

(declare-fun c!455533 () Bool)

(assert (=> d!816129 (= c!455533 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816129 (= (++!8065 lt!1004491 lt!1004488) lt!1004512)))

(assert (= (and d!816129 c!455533) b!2811770))

(assert (= (and d!816129 (not c!455533)) b!2811771))

(assert (= (and d!816129 res!1170604) b!2811772))

(assert (= (and b!2811772 res!1170603) b!2811773))

(declare-fun m!3241741 () Bool)

(assert (=> b!2811772 m!3241741))

(assert (=> b!2811772 m!3241679))

(declare-fun m!3241743 () Bool)

(assert (=> b!2811772 m!3241743))

(declare-fun m!3241745 () Bool)

(assert (=> b!2811771 m!3241745))

(declare-fun m!3241747 () Bool)

(assert (=> d!816129 m!3241747))

(assert (=> d!816129 m!3241687))

(declare-fun m!3241749 () Bool)

(assert (=> d!816129 m!3241749))

(assert (=> b!2811728 d!816129))

(declare-fun d!816133 () Bool)

(assert (=> d!816133 (= ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)) (Cons!32848 (h!38268 ll!54) (t!229916 ll!54)))))

(assert (=> b!2811728 d!816133))

(declare-fun b!2811780 () Bool)

(declare-fun res!1170607 () Bool)

(declare-fun e!1778240 () Bool)

(assert (=> b!2811780 (=> (not res!1170607) (not e!1778240))))

(declare-fun lt!1004514 () List!32961)

(assert (=> b!2811780 (= res!1170607 (= (size!25602 lt!1004514) (+ (size!25602 lt!1004489) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811781 () Bool)

(assert (=> b!2811781 (= e!1778240 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004514 lt!1004489)))))

(declare-fun b!2811779 () Bool)

(declare-fun e!1778241 () List!32961)

(assert (=> b!2811779 (= e!1778241 (Cons!32848 (h!38268 lt!1004489) (++!8065 (t!229916 lt!1004489) (t!229916 ll!54))))))

(declare-fun b!2811778 () Bool)

(assert (=> b!2811778 (= e!1778241 (t!229916 ll!54))))

(declare-fun d!816137 () Bool)

(assert (=> d!816137 e!1778240))

(declare-fun res!1170608 () Bool)

(assert (=> d!816137 (=> (not res!1170608) (not e!1778240))))

(assert (=> d!816137 (= res!1170608 (= (content!4577 lt!1004514) ((_ map or) (content!4577 lt!1004489) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816137 (= lt!1004514 e!1778241)))

(declare-fun c!455535 () Bool)

(assert (=> d!816137 (= c!455535 ((_ is Nil!32848) lt!1004489))))

(assert (=> d!816137 (= (++!8065 lt!1004489 (t!229916 ll!54)) lt!1004514)))

(assert (= (and d!816137 c!455535) b!2811778))

(assert (= (and d!816137 (not c!455535)) b!2811779))

(assert (= (and d!816137 res!1170608) b!2811780))

(assert (= (and b!2811780 res!1170607) b!2811781))

(declare-fun m!3241757 () Bool)

(assert (=> b!2811780 m!3241757))

(declare-fun m!3241759 () Bool)

(assert (=> b!2811780 m!3241759))

(assert (=> b!2811780 m!3241727))

(declare-fun m!3241761 () Bool)

(assert (=> b!2811779 m!3241761))

(declare-fun m!3241763 () Bool)

(assert (=> d!816137 m!3241763))

(declare-fun m!3241765 () Bool)

(assert (=> d!816137 m!3241765))

(assert (=> d!816137 m!3241737))

(assert (=> b!2811728 d!816137))

(declare-fun b!2811784 () Bool)

(declare-fun res!1170609 () Bool)

(declare-fun e!1778242 () Bool)

(assert (=> b!2811784 (=> (not res!1170609) (not e!1778242))))

(declare-fun lt!1004515 () List!32961)

(assert (=> b!2811784 (= res!1170609 (= (size!25602 lt!1004515) (+ (size!25602 lt!1004491) (size!25602 lt!1004489))))))

(declare-fun b!2811785 () Bool)

(assert (=> b!2811785 (= e!1778242 (or (not (= lt!1004489 Nil!32848)) (= lt!1004515 lt!1004491)))))

(declare-fun b!2811783 () Bool)

(declare-fun e!1778243 () List!32961)

(assert (=> b!2811783 (= e!1778243 (Cons!32848 (h!38268 lt!1004491) (++!8065 (t!229916 lt!1004491) lt!1004489)))))

(declare-fun b!2811782 () Bool)

(assert (=> b!2811782 (= e!1778243 lt!1004489)))

(declare-fun d!816141 () Bool)

(assert (=> d!816141 e!1778242))

(declare-fun res!1170610 () Bool)

(assert (=> d!816141 (=> (not res!1170610) (not e!1778242))))

(assert (=> d!816141 (= res!1170610 (= (content!4577 lt!1004515) ((_ map or) (content!4577 lt!1004491) (content!4577 lt!1004489))))))

(assert (=> d!816141 (= lt!1004515 e!1778243)))

(declare-fun c!455536 () Bool)

(assert (=> d!816141 (= c!455536 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816141 (= (++!8065 lt!1004491 lt!1004489) lt!1004515)))

(assert (= (and d!816141 c!455536) b!2811782))

(assert (= (and d!816141 (not c!455536)) b!2811783))

(assert (= (and d!816141 res!1170610) b!2811784))

(assert (= (and b!2811784 res!1170609) b!2811785))

(declare-fun m!3241771 () Bool)

(assert (=> b!2811784 m!3241771))

(assert (=> b!2811784 m!3241679))

(assert (=> b!2811784 m!3241759))

(declare-fun m!3241773 () Bool)

(assert (=> b!2811783 m!3241773))

(declare-fun m!3241775 () Bool)

(assert (=> d!816141 m!3241775))

(assert (=> d!816141 m!3241687))

(assert (=> d!816141 m!3241765))

(assert (=> b!2811727 d!816141))

(declare-fun d!816147 () Bool)

(declare-fun choose!16606 (Vector!232) List!32961)

(assert (=> d!816147 (= (list!12305 v!5966) (choose!16606 v!5966))))

(declare-fun bs!516439 () Bool)

(assert (= bs!516439 d!816147))

(declare-fun m!3241789 () Bool)

(assert (=> bs!516439 m!3241789))

(assert (=> b!2811726 d!816147))

(declare-fun b!2811792 () Bool)

(declare-fun res!1170613 () Bool)

(declare-fun e!1778246 () Bool)

(assert (=> b!2811792 (=> (not res!1170613) (not e!1778246))))

(declare-fun lt!1004517 () List!32961)

(assert (=> b!2811792 (= res!1170613 (= (size!25602 lt!1004517) (+ (size!25602 lt!1004490) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811793 () Bool)

(assert (=> b!2811793 (= e!1778246 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004517 lt!1004490)))))

(declare-fun b!2811791 () Bool)

(declare-fun e!1778247 () List!32961)

(assert (=> b!2811791 (= e!1778247 (Cons!32848 (h!38268 lt!1004490) (++!8065 (t!229916 lt!1004490) (t!229916 ll!54))))))

(declare-fun b!2811790 () Bool)

(assert (=> b!2811790 (= e!1778247 (t!229916 ll!54))))

(declare-fun d!816153 () Bool)

(assert (=> d!816153 e!1778246))

(declare-fun res!1170614 () Bool)

(assert (=> d!816153 (=> (not res!1170614) (not e!1778246))))

(assert (=> d!816153 (= res!1170614 (= (content!4577 lt!1004517) ((_ map or) (content!4577 lt!1004490) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816153 (= lt!1004517 e!1778247)))

(declare-fun c!455538 () Bool)

(assert (=> d!816153 (= c!455538 ((_ is Nil!32848) lt!1004490))))

(assert (=> d!816153 (= (++!8065 lt!1004490 (t!229916 ll!54)) lt!1004517)))

(assert (= (and d!816153 c!455538) b!2811790))

(assert (= (and d!816153 (not c!455538)) b!2811791))

(assert (= (and d!816153 res!1170614) b!2811792))

(assert (= (and b!2811792 res!1170613) b!2811793))

(declare-fun m!3241791 () Bool)

(assert (=> b!2811792 m!3241791))

(declare-fun m!3241793 () Bool)

(assert (=> b!2811792 m!3241793))

(assert (=> b!2811792 m!3241727))

(declare-fun m!3241795 () Bool)

(assert (=> b!2811791 m!3241795))

(declare-fun m!3241797 () Bool)

(assert (=> d!816153 m!3241797))

(declare-fun m!3241799 () Bool)

(assert (=> d!816153 m!3241799))

(assert (=> d!816153 m!3241737))

(assert (=> b!2811726 d!816153))

(declare-fun d!816155 () Bool)

(declare-fun lt!1004535 () Vector!232)

(assert (=> d!816155 (= (list!12305 lt!1004535) (++!8065 (list!12305 lt!1004494) (t!229916 ll!54)))))

(declare-fun e!1778256 () Vector!232)

(assert (=> d!816155 (= lt!1004535 e!1778256)))

(declare-fun c!455545 () Bool)

(assert (=> d!816155 (= c!455545 ((_ is Nil!32848) (t!229916 ll!54)))))

(assert (=> d!816155 (= (rec!23 (t!229916 ll!54) lt!1004494) lt!1004535)))

(declare-fun b!2811814 () Bool)

(assert (=> b!2811814 (= e!1778256 lt!1004494)))

(declare-fun b!2811815 () Bool)

(declare-fun lt!1004534 () Vector!232)

(assert (=> b!2811815 (= e!1778256 (rec!23 (t!229916 (t!229916 ll!54)) lt!1004534))))

(declare-fun lt!1004536 () List!32961)

(assert (=> b!2811815 (= lt!1004536 (list!12305 lt!1004494))))

(declare-fun lt!1004537 () List!32961)

(assert (=> b!2811815 (= lt!1004537 (Cons!32848 (h!38268 (t!229916 ll!54)) Nil!32848))))

(declare-fun lt!1004533 () Unit!46860)

(assert (=> b!2811815 (= lt!1004533 (lemmaConcatAssociativity!1674 lt!1004536 lt!1004537 (t!229916 (t!229916 ll!54))))))

(assert (=> b!2811815 (= (++!8065 (++!8065 lt!1004536 lt!1004537) (t!229916 (t!229916 ll!54))) (++!8065 lt!1004536 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54)))))))

(declare-fun lt!1004532 () Unit!46860)

(assert (=> b!2811815 (= lt!1004532 lt!1004533)))

(assert (=> b!2811815 (= lt!1004534 ($colon+!207 lt!1004494 (h!38268 (t!229916 ll!54))))))

(assert (=> b!2811815 (= (list!12305 lt!1004534) ($colon+!206 (list!12305 lt!1004494) (h!38268 (t!229916 ll!54))))))

(assert (= (and d!816155 c!455545) b!2811814))

(assert (= (and d!816155 (not c!455545)) b!2811815))

(declare-fun m!3241801 () Bool)

(assert (=> d!816155 m!3241801))

(assert (=> d!816155 m!3241647))

(assert (=> d!816155 m!3241647))

(declare-fun m!3241803 () Bool)

(assert (=> d!816155 m!3241803))

(declare-fun m!3241805 () Bool)

(assert (=> b!2811815 m!3241805))

(declare-fun m!3241807 () Bool)

(assert (=> b!2811815 m!3241807))

(declare-fun m!3241809 () Bool)

(assert (=> b!2811815 m!3241809))

(declare-fun m!3241811 () Bool)

(assert (=> b!2811815 m!3241811))

(declare-fun m!3241813 () Bool)

(assert (=> b!2811815 m!3241813))

(assert (=> b!2811815 m!3241805))

(declare-fun m!3241815 () Bool)

(assert (=> b!2811815 m!3241815))

(declare-fun m!3241819 () Bool)

(assert (=> b!2811815 m!3241819))

(assert (=> b!2811815 m!3241807))

(assert (=> b!2811815 m!3241647))

(declare-fun m!3241825 () Bool)

(assert (=> b!2811815 m!3241825))

(assert (=> b!2811815 m!3241647))

(declare-fun m!3241829 () Bool)

(assert (=> b!2811815 m!3241829))

(assert (=> b!2811726 d!816155))

(declare-fun b!2811844 () Bool)

(declare-fun res!1170637 () Bool)

(declare-fun e!1778268 () Bool)

(assert (=> b!2811844 (=> (not res!1170637) (not e!1778268))))

(declare-fun lt!1004556 () List!32961)

(assert (=> b!2811844 (= res!1170637 (= (size!25602 lt!1004556) (+ (size!25602 lt!1004491) 1)))))

(declare-fun d!816157 () Bool)

(assert (=> d!816157 e!1778268))

(declare-fun res!1170635 () Bool)

(assert (=> d!816157 (=> (not res!1170635) (not e!1778268))))

(assert (=> d!816157 (= res!1170635 ((_ is Cons!32848) lt!1004556))))

(declare-fun e!1778270 () List!32961)

(assert (=> d!816157 (= lt!1004556 e!1778270)))

(declare-fun c!455555 () Bool)

(assert (=> d!816157 (= c!455555 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816157 (= ($colon+!206 lt!1004491 (h!38268 ll!54)) lt!1004556)))

(declare-fun bm!183094 () Bool)

(declare-fun call!183100 () (_ BitVec 32))

(declare-fun isize!68 (List!32961) (_ BitVec 32))

(assert (=> bm!183094 (= call!183100 (isize!68 lt!1004556))))

(declare-fun b!2811845 () Bool)

(assert (=> b!2811845 (= e!1778268 (= lt!1004556 (++!8065 lt!1004491 (Cons!32848 (h!38268 ll!54) Nil!32848))))))

(declare-fun b!2811846 () Bool)

(declare-fun res!1170636 () Bool)

(assert (=> b!2811846 (=> (not res!1170636) (not e!1778268))))

(declare-fun e!1778269 () Bool)

(assert (=> b!2811846 (= res!1170636 e!1778269)))

(declare-fun c!455554 () Bool)

(assert (=> b!2811846 (= c!455554 (bvslt (isize!68 lt!1004491) #b01111111111111111111111111111111))))

(declare-fun b!2811847 () Bool)

(declare-fun call!183099 () (_ BitVec 32))

(assert (=> b!2811847 (= e!1778269 (= call!183100 call!183099))))

(declare-fun b!2811848 () Bool)

(declare-fun res!1170638 () Bool)

(assert (=> b!2811848 (=> (not res!1170638) (not e!1778268))))

(assert (=> b!2811848 (= res!1170638 (= (content!4577 lt!1004556) ((_ map or) (content!4577 lt!1004491) (store ((as const (Array T!54794 Bool)) false) (h!38268 ll!54) true))))))

(declare-fun b!2811849 () Bool)

(assert (=> b!2811849 (= e!1778269 (= call!183100 (bvadd call!183099 #b00000000000000000000000000000001)))))

(declare-fun b!2811850 () Bool)

(assert (=> b!2811850 (= e!1778270 (Cons!32848 (h!38268 ll!54) lt!1004491))))

(declare-fun bm!183095 () Bool)

(assert (=> bm!183095 (= call!183099 (isize!68 lt!1004491))))

(declare-fun b!2811851 () Bool)

(assert (=> b!2811851 (= e!1778270 (Cons!32848 (h!38268 lt!1004491) ($colon+!206 (t!229916 lt!1004491) (h!38268 ll!54))))))

(assert (= (and d!816157 c!455555) b!2811850))

(assert (= (and d!816157 (not c!455555)) b!2811851))

(assert (= (and d!816157 res!1170635) b!2811844))

(assert (= (and b!2811844 res!1170637) b!2811846))

(assert (= (and b!2811846 c!455554) b!2811849))

(assert (= (and b!2811846 (not c!455554)) b!2811847))

(assert (= (or b!2811849 b!2811847) bm!183094))

(assert (= (or b!2811849 b!2811847) bm!183095))

(assert (= (and b!2811846 res!1170636) b!2811848))

(assert (= (and b!2811848 res!1170638) b!2811845))

(declare-fun m!3241843 () Bool)

(assert (=> b!2811844 m!3241843))

(assert (=> b!2811844 m!3241679))

(declare-fun m!3241845 () Bool)

(assert (=> b!2811851 m!3241845))

(declare-fun m!3241847 () Bool)

(assert (=> b!2811848 m!3241847))

(assert (=> b!2811848 m!3241687))

(declare-fun m!3241849 () Bool)

(assert (=> b!2811848 m!3241849))

(declare-fun m!3241851 () Bool)

(assert (=> b!2811845 m!3241851))

(declare-fun m!3241853 () Bool)

(assert (=> bm!183094 m!3241853))

(declare-fun m!3241855 () Bool)

(assert (=> b!2811846 m!3241855))

(assert (=> bm!183095 m!3241855))

(assert (=> b!2811726 d!816157))

(declare-fun d!816163 () Bool)

(assert (=> d!816163 (= (list!12305 lt!1004494) (choose!16606 lt!1004494))))

(declare-fun bs!516441 () Bool)

(assert (= bs!516441 d!816163))

(declare-fun m!3241857 () Bool)

(assert (=> bs!516441 m!3241857))

(assert (=> b!2811726 d!816163))

(declare-fun d!816165 () Bool)

(assert (=> d!816165 (= (list!12305 (rec!23 (t!229916 ll!54) lt!1004494)) (choose!16606 (rec!23 (t!229916 ll!54) lt!1004494)))))

(declare-fun bs!516442 () Bool)

(assert (= bs!516442 d!816165))

(assert (=> bs!516442 m!3241639))

(declare-fun m!3241859 () Bool)

(assert (=> bs!516442 m!3241859))

(assert (=> b!2811726 d!816165))

(declare-fun d!816167 () Bool)

(declare-fun lt!1004565 () Vector!232)

(assert (=> d!816167 (= (list!12305 lt!1004565) ($colon+!206 (list!12305 v!5966) (h!38268 ll!54)))))

(declare-fun choose!16608 (Vector!232 T!54794) Vector!232)

(assert (=> d!816167 (= lt!1004565 (choose!16608 v!5966 (h!38268 ll!54)))))

(assert (=> d!816167 (= ($colon+!207 v!5966 (h!38268 ll!54)) lt!1004565)))

(declare-fun bs!516443 () Bool)

(assert (= bs!516443 d!816167))

(declare-fun m!3241883 () Bool)

(assert (=> bs!516443 m!3241883))

(assert (=> bs!516443 m!3241649))

(assert (=> bs!516443 m!3241649))

(declare-fun m!3241885 () Bool)

(assert (=> bs!516443 m!3241885))

(declare-fun m!3241887 () Bool)

(assert (=> bs!516443 m!3241887))

(assert (=> b!2811726 d!816167))

(declare-fun b!2811880 () Bool)

(declare-fun e!1778287 () Bool)

(declare-fun tp!897969 () Bool)

(declare-fun inv!44591 (Conc!10170) Bool)

(assert (=> b!2811880 (= e!1778287 (and (inv!44591 (c!455522 (value!158130 (underlying!8356 v!5966)))) tp!897969))))

(declare-fun b!2811879 () Bool)

(declare-fun e!1778286 () Bool)

(declare-fun inv!44592 (BalanceConc!19968) Bool)

(assert (=> b!2811879 (= e!1778286 (and (inv!44592 (value!158130 (underlying!8356 v!5966))) e!1778287))))

(declare-fun b!2811881 () Bool)

(declare-fun tp!897970 () Bool)

(assert (=> b!2811881 (= e!1778286 tp!897970)))

(assert (=> b!2811729 (= tp!897954 e!1778286)))

(assert (= b!2811879 b!2811880))

(assert (= (and b!2811729 ((_ is BalanceConc!19967) (underlying!8356 v!5966))) b!2811879))

(assert (= (and b!2811729 ((_ is List!32962) (underlying!8356 v!5966))) b!2811881))

(declare-fun m!3241893 () Bool)

(assert (=> b!2811880 m!3241893))

(declare-fun m!3241895 () Bool)

(assert (=> b!2811879 m!3241895))

(declare-fun b!2811886 () Bool)

(declare-fun e!1778290 () Bool)

(declare-fun tp!897973 () Bool)

(assert (=> b!2811886 (= e!1778290 (and tp_is_empty!14387 tp!897973))))

(assert (=> b!2811729 (= tp!897953 e!1778290)))

(assert (= (and b!2811729 ((_ is Cons!32848) (overflowing!173 v!5966))) b!2811886))

(declare-fun b!2811887 () Bool)

(declare-fun e!1778291 () Bool)

(declare-fun tp!897974 () Bool)

(assert (=> b!2811887 (= e!1778291 (and tp_is_empty!14387 tp!897974))))

(assert (=> b!2811725 (= tp!897952 e!1778291)))

(assert (= (and b!2811725 ((_ is Cons!32848) (t!229916 ll!54))) b!2811887))

(check-sat (not b!2811755) (not b!2811767) (not b!2811886) (not b!2811779) (not b!2811846) (not d!816127) (not b!2811879) (not b!2811845) (not b!2811792) (not bm!183095) (not b!2811815) (not b!2811771) (not b!2811881) (not d!816165) (not b!2811791) (not b!2811772) (not b!2811851) (not b!2811784) (not b!2811780) (not b!2811783) (not b!2811756) (not d!816153) (not d!816147) (not d!816115) (not d!816121) (not b!2811844) (not d!816155) (not d!816137) (not d!816163) (not d!816167) tp_is_empty!14387 (not b!2811880) (not b!2811887) (not b!2811768) (not b!2811848) (not d!816141) (not d!816129) (not bm!183094))
(check-sat)
(get-model)

(declare-fun d!816169 () Bool)

(declare-fun lt!1004568 () Int)

(assert (=> d!816169 (>= lt!1004568 0)))

(declare-fun e!1778294 () Int)

(assert (=> d!816169 (= lt!1004568 e!1778294)))

(declare-fun c!455559 () Bool)

(assert (=> d!816169 (= c!455559 ((_ is Nil!32848) lt!1004515))))

(assert (=> d!816169 (= (size!25602 lt!1004515) lt!1004568)))

(declare-fun b!2811892 () Bool)

(assert (=> b!2811892 (= e!1778294 0)))

(declare-fun b!2811893 () Bool)

(assert (=> b!2811893 (= e!1778294 (+ 1 (size!25602 (t!229916 lt!1004515))))))

(assert (= (and d!816169 c!455559) b!2811892))

(assert (= (and d!816169 (not c!455559)) b!2811893))

(declare-fun m!3241897 () Bool)

(assert (=> b!2811893 m!3241897))

(assert (=> b!2811784 d!816169))

(declare-fun d!816171 () Bool)

(declare-fun lt!1004569 () Int)

(assert (=> d!816171 (>= lt!1004569 0)))

(declare-fun e!1778295 () Int)

(assert (=> d!816171 (= lt!1004569 e!1778295)))

(declare-fun c!455560 () Bool)

(assert (=> d!816171 (= c!455560 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816171 (= (size!25602 lt!1004491) lt!1004569)))

(declare-fun b!2811894 () Bool)

(assert (=> b!2811894 (= e!1778295 0)))

(declare-fun b!2811895 () Bool)

(assert (=> b!2811895 (= e!1778295 (+ 1 (size!25602 (t!229916 lt!1004491))))))

(assert (= (and d!816171 c!455560) b!2811894))

(assert (= (and d!816171 (not c!455560)) b!2811895))

(declare-fun m!3241899 () Bool)

(assert (=> b!2811895 m!3241899))

(assert (=> b!2811784 d!816171))

(declare-fun d!816173 () Bool)

(declare-fun lt!1004570 () Int)

(assert (=> d!816173 (>= lt!1004570 0)))

(declare-fun e!1778296 () Int)

(assert (=> d!816173 (= lt!1004570 e!1778296)))

(declare-fun c!455561 () Bool)

(assert (=> d!816173 (= c!455561 ((_ is Nil!32848) lt!1004489))))

(assert (=> d!816173 (= (size!25602 lt!1004489) lt!1004570)))

(declare-fun b!2811896 () Bool)

(assert (=> b!2811896 (= e!1778296 0)))

(declare-fun b!2811897 () Bool)

(assert (=> b!2811897 (= e!1778296 (+ 1 (size!25602 (t!229916 lt!1004489))))))

(assert (= (and d!816173 c!455561) b!2811896))

(assert (= (and d!816173 (not c!455561)) b!2811897))

(declare-fun m!3241901 () Bool)

(assert (=> b!2811897 m!3241901))

(assert (=> b!2811784 d!816173))

(declare-fun b!2811900 () Bool)

(declare-fun res!1170639 () Bool)

(declare-fun e!1778297 () Bool)

(assert (=> b!2811900 (=> (not res!1170639) (not e!1778297))))

(declare-fun lt!1004571 () List!32961)

(assert (=> b!2811900 (= res!1170639 (= (size!25602 lt!1004571) (+ (size!25602 (t!229916 lt!1004491)) (size!25602 lt!1004489))))))

(declare-fun b!2811901 () Bool)

(assert (=> b!2811901 (= e!1778297 (or (not (= lt!1004489 Nil!32848)) (= lt!1004571 (t!229916 lt!1004491))))))

(declare-fun b!2811899 () Bool)

(declare-fun e!1778298 () List!32961)

(assert (=> b!2811899 (= e!1778298 (Cons!32848 (h!38268 (t!229916 lt!1004491)) (++!8065 (t!229916 (t!229916 lt!1004491)) lt!1004489)))))

(declare-fun b!2811898 () Bool)

(assert (=> b!2811898 (= e!1778298 lt!1004489)))

(declare-fun d!816175 () Bool)

(assert (=> d!816175 e!1778297))

(declare-fun res!1170640 () Bool)

(assert (=> d!816175 (=> (not res!1170640) (not e!1778297))))

(assert (=> d!816175 (= res!1170640 (= (content!4577 lt!1004571) ((_ map or) (content!4577 (t!229916 lt!1004491)) (content!4577 lt!1004489))))))

(assert (=> d!816175 (= lt!1004571 e!1778298)))

(declare-fun c!455562 () Bool)

(assert (=> d!816175 (= c!455562 ((_ is Nil!32848) (t!229916 lt!1004491)))))

(assert (=> d!816175 (= (++!8065 (t!229916 lt!1004491) lt!1004489) lt!1004571)))

(assert (= (and d!816175 c!455562) b!2811898))

(assert (= (and d!816175 (not c!455562)) b!2811899))

(assert (= (and d!816175 res!1170640) b!2811900))

(assert (= (and b!2811900 res!1170639) b!2811901))

(declare-fun m!3241903 () Bool)

(assert (=> b!2811900 m!3241903))

(assert (=> b!2811900 m!3241899))

(assert (=> b!2811900 m!3241759))

(declare-fun m!3241905 () Bool)

(assert (=> b!2811899 m!3241905))

(declare-fun m!3241907 () Bool)

(assert (=> d!816175 m!3241907))

(declare-fun m!3241909 () Bool)

(assert (=> d!816175 m!3241909))

(assert (=> d!816175 m!3241765))

(assert (=> b!2811783 d!816175))

(declare-fun d!816177 () Bool)

(declare-fun lt!1004572 () Int)

(assert (=> d!816177 (>= lt!1004572 0)))

(declare-fun e!1778299 () Int)

(assert (=> d!816177 (= lt!1004572 e!1778299)))

(declare-fun c!455563 () Bool)

(assert (=> d!816177 (= c!455563 ((_ is Nil!32848) lt!1004517))))

(assert (=> d!816177 (= (size!25602 lt!1004517) lt!1004572)))

(declare-fun b!2811902 () Bool)

(assert (=> b!2811902 (= e!1778299 0)))

(declare-fun b!2811903 () Bool)

(assert (=> b!2811903 (= e!1778299 (+ 1 (size!25602 (t!229916 lt!1004517))))))

(assert (= (and d!816177 c!455563) b!2811902))

(assert (= (and d!816177 (not c!455563)) b!2811903))

(declare-fun m!3241911 () Bool)

(assert (=> b!2811903 m!3241911))

(assert (=> b!2811792 d!816177))

(declare-fun d!816179 () Bool)

(declare-fun lt!1004573 () Int)

(assert (=> d!816179 (>= lt!1004573 0)))

(declare-fun e!1778300 () Int)

(assert (=> d!816179 (= lt!1004573 e!1778300)))

(declare-fun c!455564 () Bool)

(assert (=> d!816179 (= c!455564 ((_ is Nil!32848) lt!1004490))))

(assert (=> d!816179 (= (size!25602 lt!1004490) lt!1004573)))

(declare-fun b!2811904 () Bool)

(assert (=> b!2811904 (= e!1778300 0)))

(declare-fun b!2811905 () Bool)

(assert (=> b!2811905 (= e!1778300 (+ 1 (size!25602 (t!229916 lt!1004490))))))

(assert (= (and d!816179 c!455564) b!2811904))

(assert (= (and d!816179 (not c!455564)) b!2811905))

(declare-fun m!3241913 () Bool)

(assert (=> b!2811905 m!3241913))

(assert (=> b!2811792 d!816179))

(declare-fun d!816181 () Bool)

(declare-fun lt!1004574 () Int)

(assert (=> d!816181 (>= lt!1004574 0)))

(declare-fun e!1778301 () Int)

(assert (=> d!816181 (= lt!1004574 e!1778301)))

(declare-fun c!455565 () Bool)

(assert (=> d!816181 (= c!455565 ((_ is Nil!32848) (t!229916 ll!54)))))

(assert (=> d!816181 (= (size!25602 (t!229916 ll!54)) lt!1004574)))

(declare-fun b!2811906 () Bool)

(assert (=> b!2811906 (= e!1778301 0)))

(declare-fun b!2811907 () Bool)

(assert (=> b!2811907 (= e!1778301 (+ 1 (size!25602 (t!229916 (t!229916 ll!54)))))))

(assert (= (and d!816181 c!455565) b!2811906))

(assert (= (and d!816181 (not c!455565)) b!2811907))

(declare-fun m!3241915 () Bool)

(assert (=> b!2811907 m!3241915))

(assert (=> b!2811792 d!816181))

(declare-fun d!816183 () Bool)

(declare-fun lt!1004575 () Int)

(assert (=> d!816183 (>= lt!1004575 0)))

(declare-fun e!1778302 () Int)

(assert (=> d!816183 (= lt!1004575 e!1778302)))

(declare-fun c!455566 () Bool)

(assert (=> d!816183 (= c!455566 ((_ is Nil!32848) lt!1004556))))

(assert (=> d!816183 (= (size!25602 lt!1004556) lt!1004575)))

(declare-fun b!2811908 () Bool)

(assert (=> b!2811908 (= e!1778302 0)))

(declare-fun b!2811909 () Bool)

(assert (=> b!2811909 (= e!1778302 (+ 1 (size!25602 (t!229916 lt!1004556))))))

(assert (= (and d!816183 c!455566) b!2811908))

(assert (= (and d!816183 (not c!455566)) b!2811909))

(declare-fun m!3241917 () Bool)

(assert (=> b!2811909 m!3241917))

(assert (=> b!2811844 d!816183))

(assert (=> b!2811844 d!816171))

(declare-fun d!816185 () Bool)

(declare-fun c!455569 () Bool)

(assert (=> d!816185 (= c!455569 ((_ is Nil!32848) lt!1004512))))

(declare-fun e!1778305 () (InoxSet T!54794))

(assert (=> d!816185 (= (content!4577 lt!1004512) e!1778305)))

(declare-fun b!2811914 () Bool)

(assert (=> b!2811914 (= e!1778305 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811915 () Bool)

(assert (=> b!2811915 (= e!1778305 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004512) true) (content!4577 (t!229916 lt!1004512))))))

(assert (= (and d!816185 c!455569) b!2811914))

(assert (= (and d!816185 (not c!455569)) b!2811915))

(declare-fun m!3241919 () Bool)

(assert (=> b!2811915 m!3241919))

(declare-fun m!3241921 () Bool)

(assert (=> b!2811915 m!3241921))

(assert (=> d!816129 d!816185))

(declare-fun d!816187 () Bool)

(declare-fun c!455570 () Bool)

(assert (=> d!816187 (= c!455570 ((_ is Nil!32848) lt!1004491))))

(declare-fun e!1778306 () (InoxSet T!54794))

(assert (=> d!816187 (= (content!4577 lt!1004491) e!1778306)))

(declare-fun b!2811916 () Bool)

(assert (=> b!2811916 (= e!1778306 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811917 () Bool)

(assert (=> b!2811917 (= e!1778306 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004491) true) (content!4577 (t!229916 lt!1004491))))))

(assert (= (and d!816187 c!455570) b!2811916))

(assert (= (and d!816187 (not c!455570)) b!2811917))

(declare-fun m!3241923 () Bool)

(assert (=> b!2811917 m!3241923))

(assert (=> b!2811917 m!3241909))

(assert (=> d!816129 d!816187))

(declare-fun d!816189 () Bool)

(declare-fun c!455571 () Bool)

(assert (=> d!816189 (= c!455571 ((_ is Nil!32848) lt!1004488))))

(declare-fun e!1778307 () (InoxSet T!54794))

(assert (=> d!816189 (= (content!4577 lt!1004488) e!1778307)))

(declare-fun b!2811918 () Bool)

(assert (=> b!2811918 (= e!1778307 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811919 () Bool)

(assert (=> b!2811919 (= e!1778307 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004488) true) (content!4577 (t!229916 lt!1004488))))))

(assert (= (and d!816189 c!455571) b!2811918))

(assert (= (and d!816189 (not c!455571)) b!2811919))

(declare-fun m!3241925 () Bool)

(assert (=> b!2811919 m!3241925))

(declare-fun m!3241927 () Bool)

(assert (=> b!2811919 m!3241927))

(assert (=> d!816129 d!816189))

(declare-fun b!2811922 () Bool)

(declare-fun res!1170641 () Bool)

(declare-fun e!1778308 () Bool)

(assert (=> b!2811922 (=> (not res!1170641) (not e!1778308))))

(declare-fun lt!1004576 () List!32961)

(assert (=> b!2811922 (= res!1170641 (= (size!25602 lt!1004576) (+ (size!25602 (t!229916 lt!1004490)) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811923 () Bool)

(assert (=> b!2811923 (= e!1778308 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004576 (t!229916 lt!1004490))))))

(declare-fun b!2811921 () Bool)

(declare-fun e!1778309 () List!32961)

(assert (=> b!2811921 (= e!1778309 (Cons!32848 (h!38268 (t!229916 lt!1004490)) (++!8065 (t!229916 (t!229916 lt!1004490)) (t!229916 ll!54))))))

(declare-fun b!2811920 () Bool)

(assert (=> b!2811920 (= e!1778309 (t!229916 ll!54))))

(declare-fun d!816191 () Bool)

(assert (=> d!816191 e!1778308))

(declare-fun res!1170642 () Bool)

(assert (=> d!816191 (=> (not res!1170642) (not e!1778308))))

(assert (=> d!816191 (= res!1170642 (= (content!4577 lt!1004576) ((_ map or) (content!4577 (t!229916 lt!1004490)) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816191 (= lt!1004576 e!1778309)))

(declare-fun c!455572 () Bool)

(assert (=> d!816191 (= c!455572 ((_ is Nil!32848) (t!229916 lt!1004490)))))

(assert (=> d!816191 (= (++!8065 (t!229916 lt!1004490) (t!229916 ll!54)) lt!1004576)))

(assert (= (and d!816191 c!455572) b!2811920))

(assert (= (and d!816191 (not c!455572)) b!2811921))

(assert (= (and d!816191 res!1170642) b!2811922))

(assert (= (and b!2811922 res!1170641) b!2811923))

(declare-fun m!3241929 () Bool)

(assert (=> b!2811922 m!3241929))

(assert (=> b!2811922 m!3241913))

(assert (=> b!2811922 m!3241727))

(declare-fun m!3241931 () Bool)

(assert (=> b!2811921 m!3241931))

(declare-fun m!3241933 () Bool)

(assert (=> d!816191 m!3241933))

(declare-fun m!3241935 () Bool)

(assert (=> d!816191 m!3241935))

(assert (=> d!816191 m!3241737))

(assert (=> b!2811791 d!816191))

(declare-fun d!816193 () Bool)

(assert (=> d!816193 true))

(declare-fun e!1778312 () Bool)

(assert (=> d!816193 e!1778312))

(declare-fun res!1170645 () List!32961)

(assert (=> d!816193 (= (choose!16606 lt!1004494) res!1170645)))

(declare-fun b!2811926 () Bool)

(declare-fun tp!897977 () Bool)

(assert (=> b!2811926 (= e!1778312 (and tp_is_empty!14387 tp!897977))))

(assert (= (and d!816193 ((_ is Cons!32848) res!1170645)) b!2811926))

(assert (=> d!816163 d!816193))

(declare-fun d!816195 () Bool)

(declare-fun c!455573 () Bool)

(assert (=> d!816195 (= c!455573 ((_ is Nil!32848) lt!1004514))))

(declare-fun e!1778313 () (InoxSet T!54794))

(assert (=> d!816195 (= (content!4577 lt!1004514) e!1778313)))

(declare-fun b!2811927 () Bool)

(assert (=> b!2811927 (= e!1778313 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811928 () Bool)

(assert (=> b!2811928 (= e!1778313 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004514) true) (content!4577 (t!229916 lt!1004514))))))

(assert (= (and d!816195 c!455573) b!2811927))

(assert (= (and d!816195 (not c!455573)) b!2811928))

(declare-fun m!3241937 () Bool)

(assert (=> b!2811928 m!3241937))

(declare-fun m!3241939 () Bool)

(assert (=> b!2811928 m!3241939))

(assert (=> d!816137 d!816195))

(declare-fun d!816197 () Bool)

(declare-fun c!455574 () Bool)

(assert (=> d!816197 (= c!455574 ((_ is Nil!32848) lt!1004489))))

(declare-fun e!1778314 () (InoxSet T!54794))

(assert (=> d!816197 (= (content!4577 lt!1004489) e!1778314)))

(declare-fun b!2811929 () Bool)

(assert (=> b!2811929 (= e!1778314 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811930 () Bool)

(assert (=> b!2811930 (= e!1778314 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004489) true) (content!4577 (t!229916 lt!1004489))))))

(assert (= (and d!816197 c!455574) b!2811929))

(assert (= (and d!816197 (not c!455574)) b!2811930))

(declare-fun m!3241941 () Bool)

(assert (=> b!2811930 m!3241941))

(declare-fun m!3241943 () Bool)

(assert (=> b!2811930 m!3241943))

(assert (=> d!816137 d!816197))

(declare-fun d!816199 () Bool)

(declare-fun c!455575 () Bool)

(assert (=> d!816199 (= c!455575 ((_ is Nil!32848) (t!229916 ll!54)))))

(declare-fun e!1778315 () (InoxSet T!54794))

(assert (=> d!816199 (= (content!4577 (t!229916 ll!54)) e!1778315)))

(declare-fun b!2811931 () Bool)

(assert (=> b!2811931 (= e!1778315 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811932 () Bool)

(assert (=> b!2811932 (= e!1778315 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 (t!229916 ll!54)) true) (content!4577 (t!229916 (t!229916 ll!54)))))))

(assert (= (and d!816199 c!455575) b!2811931))

(assert (= (and d!816199 (not c!455575)) b!2811932))

(declare-fun m!3241945 () Bool)

(assert (=> b!2811932 m!3241945))

(declare-fun m!3241947 () Bool)

(assert (=> b!2811932 m!3241947))

(assert (=> d!816137 d!816199))

(declare-fun d!816201 () Bool)

(declare-fun isBalanced!3087 (Conc!10170) Bool)

(assert (=> d!816201 (= (inv!44592 (value!158130 (underlying!8356 v!5966))) (isBalanced!3087 (c!455522 (value!158130 (underlying!8356 v!5966)))))))

(declare-fun bs!516444 () Bool)

(assert (= bs!516444 d!816201))

(declare-fun m!3241949 () Bool)

(assert (=> bs!516444 m!3241949))

(assert (=> b!2811879 d!816201))

(declare-fun d!816203 () Bool)

(declare-fun c!455576 () Bool)

(assert (=> d!816203 (= c!455576 ((_ is Nil!32848) lt!1004510))))

(declare-fun e!1778316 () (InoxSet T!54794))

(assert (=> d!816203 (= (content!4577 lt!1004510) e!1778316)))

(declare-fun b!2811933 () Bool)

(assert (=> b!2811933 (= e!1778316 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811934 () Bool)

(assert (=> b!2811934 (= e!1778316 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004510) true) (content!4577 (t!229916 lt!1004510))))))

(assert (= (and d!816203 c!455576) b!2811933))

(assert (= (and d!816203 (not c!455576)) b!2811934))

(declare-fun m!3241951 () Bool)

(assert (=> b!2811934 m!3241951))

(declare-fun m!3241953 () Bool)

(assert (=> b!2811934 m!3241953))

(assert (=> d!816127 d!816203))

(declare-fun d!816205 () Bool)

(declare-fun c!455577 () Bool)

(assert (=> d!816205 (= c!455577 ((_ is Nil!32848) lt!1004495))))

(declare-fun e!1778317 () (InoxSet T!54794))

(assert (=> d!816205 (= (content!4577 lt!1004495) e!1778317)))

(declare-fun b!2811935 () Bool)

(assert (=> b!2811935 (= e!1778317 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811936 () Bool)

(assert (=> b!2811936 (= e!1778317 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004495) true) (content!4577 (t!229916 lt!1004495))))))

(assert (= (and d!816205 c!455577) b!2811935))

(assert (= (and d!816205 (not c!455577)) b!2811936))

(declare-fun m!3241955 () Bool)

(assert (=> b!2811936 m!3241955))

(declare-fun m!3241957 () Bool)

(assert (=> b!2811936 m!3241957))

(assert (=> d!816127 d!816205))

(assert (=> d!816127 d!816199))

(declare-fun d!816207 () Bool)

(declare-fun c!455578 () Bool)

(assert (=> d!816207 (= c!455578 ((_ is Nil!32848) lt!1004556))))

(declare-fun e!1778318 () (InoxSet T!54794))

(assert (=> d!816207 (= (content!4577 lt!1004556) e!1778318)))

(declare-fun b!2811937 () Bool)

(assert (=> b!2811937 (= e!1778318 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811938 () Bool)

(assert (=> b!2811938 (= e!1778318 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004556) true) (content!4577 (t!229916 lt!1004556))))))

(assert (= (and d!816207 c!455578) b!2811937))

(assert (= (and d!816207 (not c!455578)) b!2811938))

(declare-fun m!3241959 () Bool)

(assert (=> b!2811938 m!3241959))

(declare-fun m!3241961 () Bool)

(assert (=> b!2811938 m!3241961))

(assert (=> b!2811848 d!816207))

(assert (=> b!2811848 d!816187))

(declare-fun d!816209 () Bool)

(declare-fun lt!1004581 () (_ BitVec 32))

(assert (=> d!816209 (and (bvsle #b00000000000000000000000000000000 lt!1004581) (bvsle lt!1004581 #b01111111111111111111111111111111))))

(declare-fun e!1778321 () (_ BitVec 32))

(assert (=> d!816209 (= lt!1004581 e!1778321)))

(declare-fun c!455581 () Bool)

(assert (=> d!816209 (= c!455581 ((_ is Nil!32848) lt!1004556))))

(assert (=> d!816209 (= (isize!68 lt!1004556) lt!1004581)))

(declare-fun b!2811943 () Bool)

(assert (=> b!2811943 (= e!1778321 #b00000000000000000000000000000000)))

(declare-fun b!2811944 () Bool)

(declare-fun lt!1004582 () (_ BitVec 32))

(assert (=> b!2811944 (= e!1778321 (ite (= lt!1004582 #b01111111111111111111111111111111) lt!1004582 (bvadd #b00000000000000000000000000000001 lt!1004582)))))

(assert (=> b!2811944 (= lt!1004582 (isize!68 (t!229916 lt!1004556)))))

(assert (= (and d!816209 c!455581) b!2811943))

(assert (= (and d!816209 (not c!455581)) b!2811944))

(declare-fun m!3241963 () Bool)

(assert (=> b!2811944 m!3241963))

(assert (=> bm!183094 d!816209))

(declare-fun d!816211 () Bool)

(declare-fun c!455582 () Bool)

(assert (=> d!816211 (= c!455582 ((_ is Nil!32848) lt!1004502))))

(declare-fun e!1778322 () (InoxSet T!54794))

(assert (=> d!816211 (= (content!4577 lt!1004502) e!1778322)))

(declare-fun b!2811945 () Bool)

(assert (=> b!2811945 (= e!1778322 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811946 () Bool)

(assert (=> b!2811946 (= e!1778322 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004502) true) (content!4577 (t!229916 lt!1004502))))))

(assert (= (and d!816211 c!455582) b!2811945))

(assert (= (and d!816211 (not c!455582)) b!2811946))

(declare-fun m!3241965 () Bool)

(assert (=> b!2811946 m!3241965))

(declare-fun m!3241967 () Bool)

(assert (=> b!2811946 m!3241967))

(assert (=> d!816115 d!816211))

(assert (=> d!816115 d!816187))

(declare-fun d!816213 () Bool)

(declare-fun c!455583 () Bool)

(assert (=> d!816213 (= c!455583 ((_ is Nil!32848) ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))

(declare-fun e!1778323 () (InoxSet T!54794))

(assert (=> d!816213 (= (content!4577 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))) e!1778323)))

(declare-fun b!2811947 () Bool)

(assert (=> b!2811947 (= e!1778323 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811948 () Bool)

(assert (=> b!2811948 (= e!1778323 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))) true) (content!4577 (t!229916 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(assert (= (and d!816213 c!455583) b!2811947))

(assert (= (and d!816213 (not c!455583)) b!2811948))

(declare-fun m!3241969 () Bool)

(assert (=> b!2811948 m!3241969))

(declare-fun m!3241971 () Bool)

(assert (=> b!2811948 m!3241971))

(assert (=> d!816115 d!816213))

(declare-fun d!816215 () Bool)

(declare-fun lt!1004583 () (_ BitVec 32))

(assert (=> d!816215 (and (bvsle #b00000000000000000000000000000000 lt!1004583) (bvsle lt!1004583 #b01111111111111111111111111111111))))

(declare-fun e!1778324 () (_ BitVec 32))

(assert (=> d!816215 (= lt!1004583 e!1778324)))

(declare-fun c!455584 () Bool)

(assert (=> d!816215 (= c!455584 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816215 (= (isize!68 lt!1004491) lt!1004583)))

(declare-fun b!2811949 () Bool)

(assert (=> b!2811949 (= e!1778324 #b00000000000000000000000000000000)))

(declare-fun b!2811950 () Bool)

(declare-fun lt!1004584 () (_ BitVec 32))

(assert (=> b!2811950 (= e!1778324 (ite (= lt!1004584 #b01111111111111111111111111111111) lt!1004584 (bvadd #b00000000000000000000000000000001 lt!1004584)))))

(assert (=> b!2811950 (= lt!1004584 (isize!68 (t!229916 lt!1004491)))))

(assert (= (and d!816215 c!455584) b!2811949))

(assert (= (and d!816215 (not c!455584)) b!2811950))

(declare-fun m!3241973 () Bool)

(assert (=> b!2811950 m!3241973))

(assert (=> b!2811846 d!816215))

(declare-fun b!2811953 () Bool)

(declare-fun res!1170646 () Bool)

(declare-fun e!1778325 () Bool)

(assert (=> b!2811953 (=> (not res!1170646) (not e!1778325))))

(declare-fun lt!1004585 () List!32961)

(assert (=> b!2811953 (= res!1170646 (= (size!25602 lt!1004585) (+ (size!25602 lt!1004491) (size!25602 (Cons!32848 (h!38268 ll!54) Nil!32848)))))))

(declare-fun b!2811954 () Bool)

(assert (=> b!2811954 (= e!1778325 (or (not (= (Cons!32848 (h!38268 ll!54) Nil!32848) Nil!32848)) (= lt!1004585 lt!1004491)))))

(declare-fun b!2811952 () Bool)

(declare-fun e!1778326 () List!32961)

(assert (=> b!2811952 (= e!1778326 (Cons!32848 (h!38268 lt!1004491) (++!8065 (t!229916 lt!1004491) (Cons!32848 (h!38268 ll!54) Nil!32848))))))

(declare-fun b!2811951 () Bool)

(assert (=> b!2811951 (= e!1778326 (Cons!32848 (h!38268 ll!54) Nil!32848))))

(declare-fun d!816217 () Bool)

(assert (=> d!816217 e!1778325))

(declare-fun res!1170647 () Bool)

(assert (=> d!816217 (=> (not res!1170647) (not e!1778325))))

(assert (=> d!816217 (= res!1170647 (= (content!4577 lt!1004585) ((_ map or) (content!4577 lt!1004491) (content!4577 (Cons!32848 (h!38268 ll!54) Nil!32848)))))))

(assert (=> d!816217 (= lt!1004585 e!1778326)))

(declare-fun c!455585 () Bool)

(assert (=> d!816217 (= c!455585 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816217 (= (++!8065 lt!1004491 (Cons!32848 (h!38268 ll!54) Nil!32848)) lt!1004585)))

(assert (= (and d!816217 c!455585) b!2811951))

(assert (= (and d!816217 (not c!455585)) b!2811952))

(assert (= (and d!816217 res!1170647) b!2811953))

(assert (= (and b!2811953 res!1170646) b!2811954))

(declare-fun m!3241975 () Bool)

(assert (=> b!2811953 m!3241975))

(assert (=> b!2811953 m!3241679))

(declare-fun m!3241977 () Bool)

(assert (=> b!2811953 m!3241977))

(declare-fun m!3241979 () Bool)

(assert (=> b!2811952 m!3241979))

(declare-fun m!3241981 () Bool)

(assert (=> d!816217 m!3241981))

(assert (=> d!816217 m!3241687))

(declare-fun m!3241983 () Bool)

(assert (=> d!816217 m!3241983))

(assert (=> b!2811845 d!816217))

(declare-fun b!2811957 () Bool)

(declare-fun res!1170648 () Bool)

(declare-fun e!1778327 () Bool)

(assert (=> b!2811957 (=> (not res!1170648) (not e!1778327))))

(declare-fun lt!1004586 () List!32961)

(assert (=> b!2811957 (= res!1170648 (= (size!25602 lt!1004586) (+ (size!25602 (t!229916 lt!1004491)) (size!25602 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(declare-fun b!2811958 () Bool)

(assert (=> b!2811958 (= e!1778327 (or (not (= ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)) Nil!32848)) (= lt!1004586 (t!229916 lt!1004491))))))

(declare-fun b!2811956 () Bool)

(declare-fun e!1778328 () List!32961)

(assert (=> b!2811956 (= e!1778328 (Cons!32848 (h!38268 (t!229916 lt!1004491)) (++!8065 (t!229916 (t!229916 lt!1004491)) ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)))))))

(declare-fun b!2811955 () Bool)

(assert (=> b!2811955 (= e!1778328 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54)))))

(declare-fun d!816219 () Bool)

(assert (=> d!816219 e!1778327))

(declare-fun res!1170649 () Bool)

(assert (=> d!816219 (=> (not res!1170649) (not e!1778327))))

(assert (=> d!816219 (= res!1170649 (= (content!4577 lt!1004586) ((_ map or) (content!4577 (t!229916 lt!1004491)) (content!4577 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(assert (=> d!816219 (= lt!1004586 e!1778328)))

(declare-fun c!455586 () Bool)

(assert (=> d!816219 (= c!455586 ((_ is Nil!32848) (t!229916 lt!1004491)))))

(assert (=> d!816219 (= (++!8065 (t!229916 lt!1004491) ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))) lt!1004586)))

(assert (= (and d!816219 c!455586) b!2811955))

(assert (= (and d!816219 (not c!455586)) b!2811956))

(assert (= (and d!816219 res!1170649) b!2811957))

(assert (= (and b!2811957 res!1170648) b!2811958))

(declare-fun m!3241985 () Bool)

(assert (=> b!2811957 m!3241985))

(assert (=> b!2811957 m!3241899))

(assert (=> b!2811957 m!3241627))

(assert (=> b!2811957 m!3241681))

(assert (=> b!2811956 m!3241627))

(declare-fun m!3241987 () Bool)

(assert (=> b!2811956 m!3241987))

(declare-fun m!3241989 () Bool)

(assert (=> d!816219 m!3241989))

(assert (=> d!816219 m!3241909))

(assert (=> d!816219 m!3241627))

(assert (=> d!816219 m!3241689))

(assert (=> b!2811755 d!816219))

(declare-fun d!816221 () Bool)

(assert (=> d!816221 true))

(declare-fun e!1778329 () Bool)

(assert (=> d!816221 e!1778329))

(declare-fun res!1170650 () List!32961)

(assert (=> d!816221 (= (choose!16606 (rec!23 (t!229916 ll!54) lt!1004494)) res!1170650)))

(declare-fun b!2811959 () Bool)

(declare-fun tp!897978 () Bool)

(assert (=> b!2811959 (= e!1778329 (and tp_is_empty!14387 tp!897978))))

(assert (= (and d!816221 ((_ is Cons!32848) res!1170650)) b!2811959))

(assert (=> d!816165 d!816221))

(declare-fun b!2811960 () Bool)

(declare-fun res!1170653 () Bool)

(declare-fun e!1778330 () Bool)

(assert (=> b!2811960 (=> (not res!1170653) (not e!1778330))))

(declare-fun lt!1004587 () List!32961)

(assert (=> b!2811960 (= res!1170653 (= (size!25602 lt!1004587) (+ (size!25602 (t!229916 lt!1004491)) 1)))))

(declare-fun d!816223 () Bool)

(assert (=> d!816223 e!1778330))

(declare-fun res!1170651 () Bool)

(assert (=> d!816223 (=> (not res!1170651) (not e!1778330))))

(assert (=> d!816223 (= res!1170651 ((_ is Cons!32848) lt!1004587))))

(declare-fun e!1778332 () List!32961)

(assert (=> d!816223 (= lt!1004587 e!1778332)))

(declare-fun c!455588 () Bool)

(assert (=> d!816223 (= c!455588 ((_ is Nil!32848) (t!229916 lt!1004491)))))

(assert (=> d!816223 (= ($colon+!206 (t!229916 lt!1004491) (h!38268 ll!54)) lt!1004587)))

(declare-fun bm!183096 () Bool)

(declare-fun call!183102 () (_ BitVec 32))

(assert (=> bm!183096 (= call!183102 (isize!68 lt!1004587))))

(declare-fun b!2811961 () Bool)

(assert (=> b!2811961 (= e!1778330 (= lt!1004587 (++!8065 (t!229916 lt!1004491) (Cons!32848 (h!38268 ll!54) Nil!32848))))))

(declare-fun b!2811962 () Bool)

(declare-fun res!1170652 () Bool)

(assert (=> b!2811962 (=> (not res!1170652) (not e!1778330))))

(declare-fun e!1778331 () Bool)

(assert (=> b!2811962 (= res!1170652 e!1778331)))

(declare-fun c!455587 () Bool)

(assert (=> b!2811962 (= c!455587 (bvslt (isize!68 (t!229916 lt!1004491)) #b01111111111111111111111111111111))))

(declare-fun b!2811963 () Bool)

(declare-fun call!183101 () (_ BitVec 32))

(assert (=> b!2811963 (= e!1778331 (= call!183102 call!183101))))

(declare-fun b!2811964 () Bool)

(declare-fun res!1170654 () Bool)

(assert (=> b!2811964 (=> (not res!1170654) (not e!1778330))))

(assert (=> b!2811964 (= res!1170654 (= (content!4577 lt!1004587) ((_ map or) (content!4577 (t!229916 lt!1004491)) (store ((as const (Array T!54794 Bool)) false) (h!38268 ll!54) true))))))

(declare-fun b!2811965 () Bool)

(assert (=> b!2811965 (= e!1778331 (= call!183102 (bvadd call!183101 #b00000000000000000000000000000001)))))

(declare-fun b!2811966 () Bool)

(assert (=> b!2811966 (= e!1778332 (Cons!32848 (h!38268 ll!54) (t!229916 lt!1004491)))))

(declare-fun bm!183097 () Bool)

(assert (=> bm!183097 (= call!183101 (isize!68 (t!229916 lt!1004491)))))

(declare-fun b!2811967 () Bool)

(assert (=> b!2811967 (= e!1778332 (Cons!32848 (h!38268 (t!229916 lt!1004491)) ($colon+!206 (t!229916 (t!229916 lt!1004491)) (h!38268 ll!54))))))

(assert (= (and d!816223 c!455588) b!2811966))

(assert (= (and d!816223 (not c!455588)) b!2811967))

(assert (= (and d!816223 res!1170651) b!2811960))

(assert (= (and b!2811960 res!1170653) b!2811962))

(assert (= (and b!2811962 c!455587) b!2811965))

(assert (= (and b!2811962 (not c!455587)) b!2811963))

(assert (= (or b!2811965 b!2811963) bm!183096))

(assert (= (or b!2811965 b!2811963) bm!183097))

(assert (= (and b!2811962 res!1170652) b!2811964))

(assert (= (and b!2811964 res!1170654) b!2811961))

(declare-fun m!3241991 () Bool)

(assert (=> b!2811960 m!3241991))

(assert (=> b!2811960 m!3241899))

(declare-fun m!3241993 () Bool)

(assert (=> b!2811967 m!3241993))

(declare-fun m!3241995 () Bool)

(assert (=> b!2811964 m!3241995))

(assert (=> b!2811964 m!3241909))

(assert (=> b!2811964 m!3241849))

(assert (=> b!2811961 m!3241979))

(declare-fun m!3241997 () Bool)

(assert (=> bm!183096 m!3241997))

(assert (=> b!2811962 m!3241973))

(assert (=> bm!183097 m!3241973))

(assert (=> b!2811851 d!816223))

(declare-fun d!816225 () Bool)

(assert (=> d!816225 (= (list!12305 lt!1004535) (choose!16606 lt!1004535))))

(declare-fun bs!516445 () Bool)

(assert (= bs!516445 d!816225))

(declare-fun m!3241999 () Bool)

(assert (=> bs!516445 m!3241999))

(assert (=> d!816155 d!816225))

(declare-fun b!2811970 () Bool)

(declare-fun res!1170655 () Bool)

(declare-fun e!1778333 () Bool)

(assert (=> b!2811970 (=> (not res!1170655) (not e!1778333))))

(declare-fun lt!1004588 () List!32961)

(assert (=> b!2811970 (= res!1170655 (= (size!25602 lt!1004588) (+ (size!25602 (list!12305 lt!1004494)) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811971 () Bool)

(assert (=> b!2811971 (= e!1778333 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004588 (list!12305 lt!1004494))))))

(declare-fun b!2811969 () Bool)

(declare-fun e!1778334 () List!32961)

(assert (=> b!2811969 (= e!1778334 (Cons!32848 (h!38268 (list!12305 lt!1004494)) (++!8065 (t!229916 (list!12305 lt!1004494)) (t!229916 ll!54))))))

(declare-fun b!2811968 () Bool)

(assert (=> b!2811968 (= e!1778334 (t!229916 ll!54))))

(declare-fun d!816227 () Bool)

(assert (=> d!816227 e!1778333))

(declare-fun res!1170656 () Bool)

(assert (=> d!816227 (=> (not res!1170656) (not e!1778333))))

(assert (=> d!816227 (= res!1170656 (= (content!4577 lt!1004588) ((_ map or) (content!4577 (list!12305 lt!1004494)) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816227 (= lt!1004588 e!1778334)))

(declare-fun c!455589 () Bool)

(assert (=> d!816227 (= c!455589 ((_ is Nil!32848) (list!12305 lt!1004494)))))

(assert (=> d!816227 (= (++!8065 (list!12305 lt!1004494) (t!229916 ll!54)) lt!1004588)))

(assert (= (and d!816227 c!455589) b!2811968))

(assert (= (and d!816227 (not c!455589)) b!2811969))

(assert (= (and d!816227 res!1170656) b!2811970))

(assert (= (and b!2811970 res!1170655) b!2811971))

(declare-fun m!3242001 () Bool)

(assert (=> b!2811970 m!3242001))

(assert (=> b!2811970 m!3241647))

(declare-fun m!3242003 () Bool)

(assert (=> b!2811970 m!3242003))

(assert (=> b!2811970 m!3241727))

(declare-fun m!3242005 () Bool)

(assert (=> b!2811969 m!3242005))

(declare-fun m!3242007 () Bool)

(assert (=> d!816227 m!3242007))

(assert (=> d!816227 m!3241647))

(declare-fun m!3242009 () Bool)

(assert (=> d!816227 m!3242009))

(assert (=> d!816227 m!3241737))

(assert (=> d!816155 d!816227))

(assert (=> d!816155 d!816163))

(declare-fun d!816229 () Bool)

(declare-fun lt!1004589 () Int)

(assert (=> d!816229 (>= lt!1004589 0)))

(declare-fun e!1778335 () Int)

(assert (=> d!816229 (= lt!1004589 e!1778335)))

(declare-fun c!455590 () Bool)

(assert (=> d!816229 (= c!455590 ((_ is Nil!32848) lt!1004502))))

(assert (=> d!816229 (= (size!25602 lt!1004502) lt!1004589)))

(declare-fun b!2811972 () Bool)

(assert (=> b!2811972 (= e!1778335 0)))

(declare-fun b!2811973 () Bool)

(assert (=> b!2811973 (= e!1778335 (+ 1 (size!25602 (t!229916 lt!1004502))))))

(assert (= (and d!816229 c!455590) b!2811972))

(assert (= (and d!816229 (not c!455590)) b!2811973))

(declare-fun m!3242011 () Bool)

(assert (=> b!2811973 m!3242011))

(assert (=> b!2811756 d!816229))

(assert (=> b!2811756 d!816171))

(declare-fun d!816231 () Bool)

(declare-fun lt!1004590 () Int)

(assert (=> d!816231 (>= lt!1004590 0)))

(declare-fun e!1778336 () Int)

(assert (=> d!816231 (= lt!1004590 e!1778336)))

(declare-fun c!455591 () Bool)

(assert (=> d!816231 (= c!455591 ((_ is Nil!32848) ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))

(assert (=> d!816231 (= (size!25602 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))) lt!1004590)))

(declare-fun b!2811974 () Bool)

(assert (=> b!2811974 (= e!1778336 0)))

(declare-fun b!2811975 () Bool)

(assert (=> b!2811975 (= e!1778336 (+ 1 (size!25602 (t!229916 ($colon$colon!569 (t!229916 ll!54) (h!38268 ll!54))))))))

(assert (= (and d!816231 c!455591) b!2811974))

(assert (= (and d!816231 (not c!455591)) b!2811975))

(declare-fun m!3242013 () Bool)

(assert (=> b!2811975 m!3242013))

(assert (=> b!2811756 d!816231))

(declare-fun d!816233 () Bool)

(declare-fun c!455592 () Bool)

(assert (=> d!816233 (= c!455592 ((_ is Nil!32848) lt!1004517))))

(declare-fun e!1778337 () (InoxSet T!54794))

(assert (=> d!816233 (= (content!4577 lt!1004517) e!1778337)))

(declare-fun b!2811976 () Bool)

(assert (=> b!2811976 (= e!1778337 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811977 () Bool)

(assert (=> b!2811977 (= e!1778337 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004517) true) (content!4577 (t!229916 lt!1004517))))))

(assert (= (and d!816233 c!455592) b!2811976))

(assert (= (and d!816233 (not c!455592)) b!2811977))

(declare-fun m!3242015 () Bool)

(assert (=> b!2811977 m!3242015))

(declare-fun m!3242017 () Bool)

(assert (=> b!2811977 m!3242017))

(assert (=> d!816153 d!816233))

(declare-fun d!816237 () Bool)

(declare-fun c!455593 () Bool)

(assert (=> d!816237 (= c!455593 ((_ is Nil!32848) lt!1004490))))

(declare-fun e!1778338 () (InoxSet T!54794))

(assert (=> d!816237 (= (content!4577 lt!1004490) e!1778338)))

(declare-fun b!2811978 () Bool)

(assert (=> b!2811978 (= e!1778338 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2811979 () Bool)

(assert (=> b!2811979 (= e!1778338 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004490) true) (content!4577 (t!229916 lt!1004490))))))

(assert (= (and d!816237 c!455593) b!2811978))

(assert (= (and d!816237 (not c!455593)) b!2811979))

(declare-fun m!3242019 () Bool)

(assert (=> b!2811979 m!3242019))

(assert (=> b!2811979 m!3241935))

(assert (=> d!816153 d!816237))

(assert (=> d!816153 d!816199))

(declare-fun b!2811982 () Bool)

(declare-fun res!1170657 () Bool)

(declare-fun e!1778339 () Bool)

(assert (=> b!2811982 (=> (not res!1170657) (not e!1778339))))

(declare-fun lt!1004591 () List!32961)

(assert (=> b!2811982 (= res!1170657 (= (size!25602 lt!1004591) (+ (size!25602 lt!1004491) (size!25602 (++!8065 lt!1004489 (t!229916 ll!54))))))))

(declare-fun b!2811983 () Bool)

(assert (=> b!2811983 (= e!1778339 (or (not (= (++!8065 lt!1004489 (t!229916 ll!54)) Nil!32848)) (= lt!1004591 lt!1004491)))))

(declare-fun e!1778340 () List!32961)

(declare-fun b!2811981 () Bool)

(assert (=> b!2811981 (= e!1778340 (Cons!32848 (h!38268 lt!1004491) (++!8065 (t!229916 lt!1004491) (++!8065 lt!1004489 (t!229916 ll!54)))))))

(declare-fun b!2811980 () Bool)

(assert (=> b!2811980 (= e!1778340 (++!8065 lt!1004489 (t!229916 ll!54)))))

(declare-fun d!816239 () Bool)

(assert (=> d!816239 e!1778339))

(declare-fun res!1170658 () Bool)

(assert (=> d!816239 (=> (not res!1170658) (not e!1778339))))

(assert (=> d!816239 (= res!1170658 (= (content!4577 lt!1004591) ((_ map or) (content!4577 lt!1004491) (content!4577 (++!8065 lt!1004489 (t!229916 ll!54))))))))

(assert (=> d!816239 (= lt!1004591 e!1778340)))

(declare-fun c!455594 () Bool)

(assert (=> d!816239 (= c!455594 ((_ is Nil!32848) lt!1004491))))

(assert (=> d!816239 (= (++!8065 lt!1004491 (++!8065 lt!1004489 (t!229916 ll!54))) lt!1004591)))

(assert (= (and d!816239 c!455594) b!2811980))

(assert (= (and d!816239 (not c!455594)) b!2811981))

(assert (= (and d!816239 res!1170658) b!2811982))

(assert (= (and b!2811982 res!1170657) b!2811983))

(declare-fun m!3242021 () Bool)

(assert (=> b!2811982 m!3242021))

(assert (=> b!2811982 m!3241679))

(assert (=> b!2811982 m!3241633))

(declare-fun m!3242023 () Bool)

(assert (=> b!2811982 m!3242023))

(assert (=> b!2811981 m!3241633))

(declare-fun m!3242025 () Bool)

(assert (=> b!2811981 m!3242025))

(declare-fun m!3242027 () Bool)

(assert (=> d!816239 m!3242027))

(assert (=> d!816239 m!3241687))

(assert (=> d!816239 m!3241633))

(declare-fun m!3242029 () Bool)

(assert (=> d!816239 m!3242029))

(assert (=> d!816121 d!816239))

(declare-fun b!2811988 () Bool)

(declare-fun res!1170661 () Bool)

(declare-fun e!1778343 () Bool)

(assert (=> b!2811988 (=> (not res!1170661) (not e!1778343))))

(declare-fun lt!1004592 () List!32961)

(assert (=> b!2811988 (= res!1170661 (= (size!25602 lt!1004592) (+ (size!25602 (++!8065 lt!1004491 lt!1004489)) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2811989 () Bool)

(assert (=> b!2811989 (= e!1778343 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004592 (++!8065 lt!1004491 lt!1004489))))))

(declare-fun b!2811987 () Bool)

(declare-fun e!1778344 () List!32961)

(assert (=> b!2811987 (= e!1778344 (Cons!32848 (h!38268 (++!8065 lt!1004491 lt!1004489)) (++!8065 (t!229916 (++!8065 lt!1004491 lt!1004489)) (t!229916 ll!54))))))

(declare-fun b!2811986 () Bool)

(assert (=> b!2811986 (= e!1778344 (t!229916 ll!54))))

(declare-fun d!816241 () Bool)

(assert (=> d!816241 e!1778343))

(declare-fun res!1170662 () Bool)

(assert (=> d!816241 (=> (not res!1170662) (not e!1778343))))

(assert (=> d!816241 (= res!1170662 (= (content!4577 lt!1004592) ((_ map or) (content!4577 (++!8065 lt!1004491 lt!1004489)) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816241 (= lt!1004592 e!1778344)))

(declare-fun c!455595 () Bool)

(assert (=> d!816241 (= c!455595 ((_ is Nil!32848) (++!8065 lt!1004491 lt!1004489)))))

(assert (=> d!816241 (= (++!8065 (++!8065 lt!1004491 lt!1004489) (t!229916 ll!54)) lt!1004592)))

(assert (= (and d!816241 c!455595) b!2811986))

(assert (= (and d!816241 (not c!455595)) b!2811987))

(assert (= (and d!816241 res!1170662) b!2811988))

(assert (= (and b!2811988 res!1170661) b!2811989))

(declare-fun m!3242031 () Bool)

(assert (=> b!2811988 m!3242031))

(assert (=> b!2811988 m!3241625))

(declare-fun m!3242033 () Bool)

(assert (=> b!2811988 m!3242033))

(assert (=> b!2811988 m!3241727))

(declare-fun m!3242035 () Bool)

(assert (=> b!2811987 m!3242035))

(declare-fun m!3242037 () Bool)

(assert (=> d!816241 m!3242037))

(assert (=> d!816241 m!3241625))

(declare-fun m!3242039 () Bool)

(assert (=> d!816241 m!3242039))

(assert (=> d!816241 m!3241737))

(assert (=> d!816121 d!816241))

(assert (=> d!816121 d!816137))

(assert (=> d!816121 d!816141))

(declare-fun d!816243 () Bool)

(assert (=> d!816243 (= (++!8065 (++!8065 lt!1004491 lt!1004489) (t!229916 ll!54)) (++!8065 lt!1004491 (++!8065 lt!1004489 (t!229916 ll!54))))))

(assert (=> d!816243 true))

(declare-fun _$12!1055 () Unit!46860)

(assert (=> d!816243 (= (choose!16603 lt!1004491 lt!1004489 (t!229916 ll!54)) _$12!1055)))

(declare-fun bs!516447 () Bool)

(assert (= bs!516447 d!816243))

(assert (=> bs!516447 m!3241625))

(assert (=> bs!516447 m!3241625))

(assert (=> bs!516447 m!3241719))

(assert (=> bs!516447 m!3241633))

(assert (=> bs!516447 m!3241633))

(assert (=> bs!516447 m!3241715))

(assert (=> d!816121 d!816243))

(declare-fun d!816253 () Bool)

(declare-fun c!455605 () Bool)

(assert (=> d!816253 (= c!455605 ((_ is Node!10170) (c!455522 (value!158130 (underlying!8356 v!5966)))))))

(declare-fun e!1778360 () Bool)

(assert (=> d!816253 (= (inv!44591 (c!455522 (value!158130 (underlying!8356 v!5966)))) e!1778360)))

(declare-fun b!2812017 () Bool)

(declare-fun inv!44593 (Conc!10170) Bool)

(assert (=> b!2812017 (= e!1778360 (inv!44593 (c!455522 (value!158130 (underlying!8356 v!5966)))))))

(declare-fun b!2812018 () Bool)

(declare-fun e!1778361 () Bool)

(assert (=> b!2812018 (= e!1778360 e!1778361)))

(declare-fun res!1170672 () Bool)

(assert (=> b!2812018 (= res!1170672 (not ((_ is Leaf!15493) (c!455522 (value!158130 (underlying!8356 v!5966))))))))

(assert (=> b!2812018 (=> res!1170672 e!1778361)))

(declare-fun b!2812019 () Bool)

(declare-fun inv!44594 (Conc!10170) Bool)

(assert (=> b!2812019 (= e!1778361 (inv!44594 (c!455522 (value!158130 (underlying!8356 v!5966)))))))

(assert (= (and d!816253 c!455605) b!2812017))

(assert (= (and d!816253 (not c!455605)) b!2812018))

(assert (= (and b!2812018 (not res!1170672)) b!2812019))

(declare-fun m!3242075 () Bool)

(assert (=> b!2812017 m!3242075))

(declare-fun m!3242077 () Bool)

(assert (=> b!2812019 m!3242077))

(assert (=> b!2811880 d!816253))

(declare-fun d!816261 () Bool)

(assert (=> d!816261 true))

(declare-fun e!1778363 () Bool)

(assert (=> d!816261 e!1778363))

(declare-fun res!1170674 () List!32961)

(assert (=> d!816261 (= (choose!16606 v!5966) res!1170674)))

(declare-fun b!2812021 () Bool)

(declare-fun tp!897983 () Bool)

(assert (=> b!2812021 (= e!1778363 (and tp_is_empty!14387 tp!897983))))

(assert (= (and d!816261 ((_ is Cons!32848) res!1170674)) b!2812021))

(assert (=> d!816147 d!816261))

(declare-fun b!2812026 () Bool)

(declare-fun res!1170675 () Bool)

(declare-fun e!1778365 () Bool)

(assert (=> b!2812026 (=> (not res!1170675) (not e!1778365))))

(declare-fun lt!1004601 () List!32961)

(assert (=> b!2812026 (= res!1170675 (= (size!25602 lt!1004601) (+ (size!25602 (t!229916 lt!1004491)) (size!25602 lt!1004488))))))

(declare-fun b!2812027 () Bool)

(assert (=> b!2812027 (= e!1778365 (or (not (= lt!1004488 Nil!32848)) (= lt!1004601 (t!229916 lt!1004491))))))

(declare-fun b!2812025 () Bool)

(declare-fun e!1778366 () List!32961)

(assert (=> b!2812025 (= e!1778366 (Cons!32848 (h!38268 (t!229916 lt!1004491)) (++!8065 (t!229916 (t!229916 lt!1004491)) lt!1004488)))))

(declare-fun b!2812024 () Bool)

(assert (=> b!2812024 (= e!1778366 lt!1004488)))

(declare-fun d!816265 () Bool)

(assert (=> d!816265 e!1778365))

(declare-fun res!1170676 () Bool)

(assert (=> d!816265 (=> (not res!1170676) (not e!1778365))))

(assert (=> d!816265 (= res!1170676 (= (content!4577 lt!1004601) ((_ map or) (content!4577 (t!229916 lt!1004491)) (content!4577 lt!1004488))))))

(assert (=> d!816265 (= lt!1004601 e!1778366)))

(declare-fun c!455607 () Bool)

(assert (=> d!816265 (= c!455607 ((_ is Nil!32848) (t!229916 lt!1004491)))))

(assert (=> d!816265 (= (++!8065 (t!229916 lt!1004491) lt!1004488) lt!1004601)))

(assert (= (and d!816265 c!455607) b!2812024))

(assert (= (and d!816265 (not c!455607)) b!2812025))

(assert (= (and d!816265 res!1170676) b!2812026))

(assert (= (and b!2812026 res!1170675) b!2812027))

(declare-fun m!3242083 () Bool)

(assert (=> b!2812026 m!3242083))

(assert (=> b!2812026 m!3241899))

(assert (=> b!2812026 m!3241743))

(declare-fun m!3242085 () Bool)

(assert (=> b!2812025 m!3242085))

(declare-fun m!3242087 () Bool)

(assert (=> d!816265 m!3242087))

(assert (=> d!816265 m!3241909))

(assert (=> d!816265 m!3241749))

(assert (=> b!2811771 d!816265))

(assert (=> bm!183095 d!816215))

(declare-fun d!816273 () Bool)

(declare-fun lt!1004605 () Int)

(assert (=> d!816273 (>= lt!1004605 0)))

(declare-fun e!1778370 () Int)

(assert (=> d!816273 (= lt!1004605 e!1778370)))

(declare-fun c!455611 () Bool)

(assert (=> d!816273 (= c!455611 ((_ is Nil!32848) lt!1004512))))

(assert (=> d!816273 (= (size!25602 lt!1004512) lt!1004605)))

(declare-fun b!2812034 () Bool)

(assert (=> b!2812034 (= e!1778370 0)))

(declare-fun b!2812035 () Bool)

(assert (=> b!2812035 (= e!1778370 (+ 1 (size!25602 (t!229916 lt!1004512))))))

(assert (= (and d!816273 c!455611) b!2812034))

(assert (= (and d!816273 (not c!455611)) b!2812035))

(declare-fun m!3242093 () Bool)

(assert (=> b!2812035 m!3242093))

(assert (=> b!2811772 d!816273))

(assert (=> b!2811772 d!816171))

(declare-fun d!816275 () Bool)

(declare-fun lt!1004607 () Int)

(assert (=> d!816275 (>= lt!1004607 0)))

(declare-fun e!1778372 () Int)

(assert (=> d!816275 (= lt!1004607 e!1778372)))

(declare-fun c!455613 () Bool)

(assert (=> d!816275 (= c!455613 ((_ is Nil!32848) lt!1004488))))

(assert (=> d!816275 (= (size!25602 lt!1004488) lt!1004607)))

(declare-fun b!2812037 () Bool)

(assert (=> b!2812037 (= e!1778372 0)))

(declare-fun b!2812039 () Bool)

(assert (=> b!2812039 (= e!1778372 (+ 1 (size!25602 (t!229916 lt!1004488))))))

(assert (= (and d!816275 c!455613) b!2812037))

(assert (= (and d!816275 (not c!455613)) b!2812039))

(declare-fun m!3242095 () Bool)

(assert (=> b!2812039 m!3242095))

(assert (=> b!2811772 d!816275))

(declare-fun b!2812044 () Bool)

(declare-fun res!1170677 () Bool)

(declare-fun e!1778374 () Bool)

(assert (=> b!2812044 (=> (not res!1170677) (not e!1778374))))

(declare-fun lt!1004609 () List!32961)

(assert (=> b!2812044 (= res!1170677 (= (size!25602 lt!1004609) (+ (size!25602 lt!1004536) (size!25602 lt!1004537))))))

(declare-fun b!2812045 () Bool)

(assert (=> b!2812045 (= e!1778374 (or (not (= lt!1004537 Nil!32848)) (= lt!1004609 lt!1004536)))))

(declare-fun b!2812043 () Bool)

(declare-fun e!1778375 () List!32961)

(assert (=> b!2812043 (= e!1778375 (Cons!32848 (h!38268 lt!1004536) (++!8065 (t!229916 lt!1004536) lt!1004537)))))

(declare-fun b!2812042 () Bool)

(assert (=> b!2812042 (= e!1778375 lt!1004537)))

(declare-fun d!816279 () Bool)

(assert (=> d!816279 e!1778374))

(declare-fun res!1170678 () Bool)

(assert (=> d!816279 (=> (not res!1170678) (not e!1778374))))

(assert (=> d!816279 (= res!1170678 (= (content!4577 lt!1004609) ((_ map or) (content!4577 lt!1004536) (content!4577 lt!1004537))))))

(assert (=> d!816279 (= lt!1004609 e!1778375)))

(declare-fun c!455614 () Bool)

(assert (=> d!816279 (= c!455614 ((_ is Nil!32848) lt!1004536))))

(assert (=> d!816279 (= (++!8065 lt!1004536 lt!1004537) lt!1004609)))

(assert (= (and d!816279 c!455614) b!2812042))

(assert (= (and d!816279 (not c!455614)) b!2812043))

(assert (= (and d!816279 res!1170678) b!2812044))

(assert (= (and b!2812044 res!1170677) b!2812045))

(declare-fun m!3242101 () Bool)

(assert (=> b!2812044 m!3242101))

(declare-fun m!3242103 () Bool)

(assert (=> b!2812044 m!3242103))

(declare-fun m!3242105 () Bool)

(assert (=> b!2812044 m!3242105))

(declare-fun m!3242107 () Bool)

(assert (=> b!2812043 m!3242107))

(declare-fun m!3242109 () Bool)

(assert (=> d!816279 m!3242109))

(declare-fun m!3242111 () Bool)

(assert (=> d!816279 m!3242111))

(declare-fun m!3242113 () Bool)

(assert (=> d!816279 m!3242113))

(assert (=> b!2811815 d!816279))

(declare-fun b!2812052 () Bool)

(declare-fun res!1170681 () Bool)

(declare-fun e!1778378 () Bool)

(assert (=> b!2812052 (=> (not res!1170681) (not e!1778378))))

(declare-fun lt!1004611 () List!32961)

(assert (=> b!2812052 (= res!1170681 (= (size!25602 lt!1004611) (+ (size!25602 (++!8065 lt!1004536 lt!1004537)) (size!25602 (t!229916 (t!229916 ll!54))))))))

(declare-fun b!2812053 () Bool)

(assert (=> b!2812053 (= e!1778378 (or (not (= (t!229916 (t!229916 ll!54)) Nil!32848)) (= lt!1004611 (++!8065 lt!1004536 lt!1004537))))))

(declare-fun b!2812051 () Bool)

(declare-fun e!1778379 () List!32961)

(assert (=> b!2812051 (= e!1778379 (Cons!32848 (h!38268 (++!8065 lt!1004536 lt!1004537)) (++!8065 (t!229916 (++!8065 lt!1004536 lt!1004537)) (t!229916 (t!229916 ll!54)))))))

(declare-fun b!2812050 () Bool)

(assert (=> b!2812050 (= e!1778379 (t!229916 (t!229916 ll!54)))))

(declare-fun d!816285 () Bool)

(assert (=> d!816285 e!1778378))

(declare-fun res!1170682 () Bool)

(assert (=> d!816285 (=> (not res!1170682) (not e!1778378))))

(assert (=> d!816285 (= res!1170682 (= (content!4577 lt!1004611) ((_ map or) (content!4577 (++!8065 lt!1004536 lt!1004537)) (content!4577 (t!229916 (t!229916 ll!54))))))))

(assert (=> d!816285 (= lt!1004611 e!1778379)))

(declare-fun c!455617 () Bool)

(assert (=> d!816285 (= c!455617 ((_ is Nil!32848) (++!8065 lt!1004536 lt!1004537)))))

(assert (=> d!816285 (= (++!8065 (++!8065 lt!1004536 lt!1004537) (t!229916 (t!229916 ll!54))) lt!1004611)))

(assert (= (and d!816285 c!455617) b!2812050))

(assert (= (and d!816285 (not c!455617)) b!2812051))

(assert (= (and d!816285 res!1170682) b!2812052))

(assert (= (and b!2812052 res!1170681) b!2812053))

(declare-fun m!3242123 () Bool)

(assert (=> b!2812052 m!3242123))

(assert (=> b!2812052 m!3241805))

(declare-fun m!3242125 () Bool)

(assert (=> b!2812052 m!3242125))

(assert (=> b!2812052 m!3241915))

(declare-fun m!3242127 () Bool)

(assert (=> b!2812051 m!3242127))

(declare-fun m!3242129 () Bool)

(assert (=> d!816285 m!3242129))

(assert (=> d!816285 m!3241805))

(declare-fun m!3242131 () Bool)

(assert (=> d!816285 m!3242131))

(assert (=> d!816285 m!3241947))

(assert (=> b!2811815 d!816285))

(declare-fun b!2812054 () Bool)

(declare-fun res!1170685 () Bool)

(declare-fun e!1778380 () Bool)

(assert (=> b!2812054 (=> (not res!1170685) (not e!1778380))))

(declare-fun lt!1004612 () List!32961)

(assert (=> b!2812054 (= res!1170685 (= (size!25602 lt!1004612) (+ (size!25602 (list!12305 lt!1004494)) 1)))))

(declare-fun d!816289 () Bool)

(assert (=> d!816289 e!1778380))

(declare-fun res!1170683 () Bool)

(assert (=> d!816289 (=> (not res!1170683) (not e!1778380))))

(assert (=> d!816289 (= res!1170683 ((_ is Cons!32848) lt!1004612))))

(declare-fun e!1778382 () List!32961)

(assert (=> d!816289 (= lt!1004612 e!1778382)))

(declare-fun c!455619 () Bool)

(assert (=> d!816289 (= c!455619 ((_ is Nil!32848) (list!12305 lt!1004494)))))

(assert (=> d!816289 (= ($colon+!206 (list!12305 lt!1004494) (h!38268 (t!229916 ll!54))) lt!1004612)))

(declare-fun bm!183098 () Bool)

(declare-fun call!183104 () (_ BitVec 32))

(assert (=> bm!183098 (= call!183104 (isize!68 lt!1004612))))

(declare-fun b!2812055 () Bool)

(assert (=> b!2812055 (= e!1778380 (= lt!1004612 (++!8065 (list!12305 lt!1004494) (Cons!32848 (h!38268 (t!229916 ll!54)) Nil!32848))))))

(declare-fun b!2812056 () Bool)

(declare-fun res!1170684 () Bool)

(assert (=> b!2812056 (=> (not res!1170684) (not e!1778380))))

(declare-fun e!1778381 () Bool)

(assert (=> b!2812056 (= res!1170684 e!1778381)))

(declare-fun c!455618 () Bool)

(assert (=> b!2812056 (= c!455618 (bvslt (isize!68 (list!12305 lt!1004494)) #b01111111111111111111111111111111))))

(declare-fun b!2812057 () Bool)

(declare-fun call!183103 () (_ BitVec 32))

(assert (=> b!2812057 (= e!1778381 (= call!183104 call!183103))))

(declare-fun b!2812058 () Bool)

(declare-fun res!1170686 () Bool)

(assert (=> b!2812058 (=> (not res!1170686) (not e!1778380))))

(assert (=> b!2812058 (= res!1170686 (= (content!4577 lt!1004612) ((_ map or) (content!4577 (list!12305 lt!1004494)) (store ((as const (Array T!54794 Bool)) false) (h!38268 (t!229916 ll!54)) true))))))

(declare-fun b!2812059 () Bool)

(assert (=> b!2812059 (= e!1778381 (= call!183104 (bvadd call!183103 #b00000000000000000000000000000001)))))

(declare-fun b!2812060 () Bool)

(assert (=> b!2812060 (= e!1778382 (Cons!32848 (h!38268 (t!229916 ll!54)) (list!12305 lt!1004494)))))

(declare-fun bm!183099 () Bool)

(assert (=> bm!183099 (= call!183103 (isize!68 (list!12305 lt!1004494)))))

(declare-fun b!2812061 () Bool)

(assert (=> b!2812061 (= e!1778382 (Cons!32848 (h!38268 (list!12305 lt!1004494)) ($colon+!206 (t!229916 (list!12305 lt!1004494)) (h!38268 (t!229916 ll!54)))))))

(assert (= (and d!816289 c!455619) b!2812060))

(assert (= (and d!816289 (not c!455619)) b!2812061))

(assert (= (and d!816289 res!1170683) b!2812054))

(assert (= (and b!2812054 res!1170685) b!2812056))

(assert (= (and b!2812056 c!455618) b!2812059))

(assert (= (and b!2812056 (not c!455618)) b!2812057))

(assert (= (or b!2812059 b!2812057) bm!183098))

(assert (= (or b!2812059 b!2812057) bm!183099))

(assert (= (and b!2812056 res!1170684) b!2812058))

(assert (= (and b!2812058 res!1170686) b!2812055))

(declare-fun m!3242133 () Bool)

(assert (=> b!2812054 m!3242133))

(assert (=> b!2812054 m!3241647))

(assert (=> b!2812054 m!3242003))

(declare-fun m!3242135 () Bool)

(assert (=> b!2812061 m!3242135))

(declare-fun m!3242137 () Bool)

(assert (=> b!2812058 m!3242137))

(assert (=> b!2812058 m!3241647))

(assert (=> b!2812058 m!3242009))

(assert (=> b!2812058 m!3241945))

(assert (=> b!2812055 m!3241647))

(declare-fun m!3242139 () Bool)

(assert (=> b!2812055 m!3242139))

(declare-fun m!3242141 () Bool)

(assert (=> bm!183098 m!3242141))

(assert (=> b!2812056 m!3241647))

(declare-fun m!3242143 () Bool)

(assert (=> b!2812056 m!3242143))

(assert (=> bm!183099 m!3241647))

(assert (=> bm!183099 m!3242143))

(assert (=> b!2811815 d!816289))

(declare-fun d!816291 () Bool)

(assert (=> d!816291 (= (++!8065 (++!8065 lt!1004536 lt!1004537) (t!229916 (t!229916 ll!54))) (++!8065 lt!1004536 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54)))))))

(declare-fun lt!1004613 () Unit!46860)

(assert (=> d!816291 (= lt!1004613 (choose!16603 lt!1004536 lt!1004537 (t!229916 (t!229916 ll!54))))))

(assert (=> d!816291 (= (lemmaConcatAssociativity!1674 lt!1004536 lt!1004537 (t!229916 (t!229916 ll!54))) lt!1004613)))

(declare-fun bs!516448 () Bool)

(assert (= bs!516448 d!816291))

(assert (=> bs!516448 m!3241807))

(assert (=> bs!516448 m!3241809))

(declare-fun m!3242145 () Bool)

(assert (=> bs!516448 m!3242145))

(assert (=> bs!516448 m!3241807))

(assert (=> bs!516448 m!3241805))

(assert (=> bs!516448 m!3241805))

(assert (=> bs!516448 m!3241815))

(assert (=> b!2811815 d!816291))

(declare-fun d!816293 () Bool)

(declare-fun lt!1004614 () Vector!232)

(assert (=> d!816293 (= (list!12305 lt!1004614) ($colon+!206 (list!12305 lt!1004494) (h!38268 (t!229916 ll!54))))))

(assert (=> d!816293 (= lt!1004614 (choose!16608 lt!1004494 (h!38268 (t!229916 ll!54))))))

(assert (=> d!816293 (= ($colon+!207 lt!1004494 (h!38268 (t!229916 ll!54))) lt!1004614)))

(declare-fun bs!516449 () Bool)

(assert (= bs!516449 d!816293))

(declare-fun m!3242147 () Bool)

(assert (=> bs!516449 m!3242147))

(assert (=> bs!516449 m!3241647))

(assert (=> bs!516449 m!3241647))

(assert (=> bs!516449 m!3241825))

(declare-fun m!3242149 () Bool)

(assert (=> bs!516449 m!3242149))

(assert (=> b!2811815 d!816293))

(assert (=> b!2811815 d!816163))

(declare-fun b!2812064 () Bool)

(declare-fun res!1170687 () Bool)

(declare-fun e!1778383 () Bool)

(assert (=> b!2812064 (=> (not res!1170687) (not e!1778383))))

(declare-fun lt!1004615 () List!32961)

(assert (=> b!2812064 (= res!1170687 (= (size!25602 lt!1004615) (+ (size!25602 lt!1004537) (size!25602 (t!229916 (t!229916 ll!54))))))))

(declare-fun b!2812065 () Bool)

(assert (=> b!2812065 (= e!1778383 (or (not (= (t!229916 (t!229916 ll!54)) Nil!32848)) (= lt!1004615 lt!1004537)))))

(declare-fun b!2812063 () Bool)

(declare-fun e!1778384 () List!32961)

(assert (=> b!2812063 (= e!1778384 (Cons!32848 (h!38268 lt!1004537) (++!8065 (t!229916 lt!1004537) (t!229916 (t!229916 ll!54)))))))

(declare-fun b!2812062 () Bool)

(assert (=> b!2812062 (= e!1778384 (t!229916 (t!229916 ll!54)))))

(declare-fun d!816295 () Bool)

(assert (=> d!816295 e!1778383))

(declare-fun res!1170688 () Bool)

(assert (=> d!816295 (=> (not res!1170688) (not e!1778383))))

(assert (=> d!816295 (= res!1170688 (= (content!4577 lt!1004615) ((_ map or) (content!4577 lt!1004537) (content!4577 (t!229916 (t!229916 ll!54))))))))

(assert (=> d!816295 (= lt!1004615 e!1778384)))

(declare-fun c!455620 () Bool)

(assert (=> d!816295 (= c!455620 ((_ is Nil!32848) lt!1004537))))

(assert (=> d!816295 (= (++!8065 lt!1004537 (t!229916 (t!229916 ll!54))) lt!1004615)))

(assert (= (and d!816295 c!455620) b!2812062))

(assert (= (and d!816295 (not c!455620)) b!2812063))

(assert (= (and d!816295 res!1170688) b!2812064))

(assert (= (and b!2812064 res!1170687) b!2812065))

(declare-fun m!3242151 () Bool)

(assert (=> b!2812064 m!3242151))

(assert (=> b!2812064 m!3242105))

(assert (=> b!2812064 m!3241915))

(declare-fun m!3242153 () Bool)

(assert (=> b!2812063 m!3242153))

(declare-fun m!3242155 () Bool)

(assert (=> d!816295 m!3242155))

(assert (=> d!816295 m!3242113))

(assert (=> d!816295 m!3241947))

(assert (=> b!2811815 d!816295))

(declare-fun d!816297 () Bool)

(declare-fun lt!1004623 () Vector!232)

(assert (=> d!816297 (= (list!12305 lt!1004623) (++!8065 (list!12305 lt!1004534) (t!229916 (t!229916 ll!54))))))

(declare-fun e!1778387 () Vector!232)

(assert (=> d!816297 (= lt!1004623 e!1778387)))

(declare-fun c!455623 () Bool)

(assert (=> d!816297 (= c!455623 ((_ is Nil!32848) (t!229916 (t!229916 ll!54))))))

(assert (=> d!816297 (= (rec!23 (t!229916 (t!229916 ll!54)) lt!1004534) lt!1004623)))

(declare-fun b!2812070 () Bool)

(assert (=> b!2812070 (= e!1778387 lt!1004534)))

(declare-fun b!2812071 () Bool)

(declare-fun lt!1004622 () Vector!232)

(assert (=> b!2812071 (= e!1778387 (rec!23 (t!229916 (t!229916 (t!229916 ll!54))) lt!1004622))))

(declare-fun lt!1004624 () List!32961)

(assert (=> b!2812071 (= lt!1004624 (list!12305 lt!1004534))))

(declare-fun lt!1004625 () List!32961)

(assert (=> b!2812071 (= lt!1004625 (Cons!32848 (h!38268 (t!229916 (t!229916 ll!54))) Nil!32848))))

(declare-fun lt!1004621 () Unit!46860)

(assert (=> b!2812071 (= lt!1004621 (lemmaConcatAssociativity!1674 lt!1004624 lt!1004625 (t!229916 (t!229916 (t!229916 ll!54)))))))

(assert (=> b!2812071 (= (++!8065 (++!8065 lt!1004624 lt!1004625) (t!229916 (t!229916 (t!229916 ll!54)))) (++!8065 lt!1004624 (++!8065 lt!1004625 (t!229916 (t!229916 (t!229916 ll!54))))))))

(declare-fun lt!1004620 () Unit!46860)

(assert (=> b!2812071 (= lt!1004620 lt!1004621)))

(assert (=> b!2812071 (= lt!1004622 ($colon+!207 lt!1004534 (h!38268 (t!229916 (t!229916 ll!54)))))))

(assert (=> b!2812071 (= (list!12305 lt!1004622) ($colon+!206 (list!12305 lt!1004534) (h!38268 (t!229916 (t!229916 ll!54)))))))

(assert (= (and d!816297 c!455623) b!2812070))

(assert (= (and d!816297 (not c!455623)) b!2812071))

(declare-fun m!3242157 () Bool)

(assert (=> d!816297 m!3242157))

(assert (=> d!816297 m!3241811))

(assert (=> d!816297 m!3241811))

(declare-fun m!3242159 () Bool)

(assert (=> d!816297 m!3242159))

(declare-fun m!3242161 () Bool)

(assert (=> b!2812071 m!3242161))

(declare-fun m!3242163 () Bool)

(assert (=> b!2812071 m!3242163))

(declare-fun m!3242165 () Bool)

(assert (=> b!2812071 m!3242165))

(declare-fun m!3242167 () Bool)

(assert (=> b!2812071 m!3242167))

(declare-fun m!3242169 () Bool)

(assert (=> b!2812071 m!3242169))

(assert (=> b!2812071 m!3242161))

(declare-fun m!3242171 () Bool)

(assert (=> b!2812071 m!3242171))

(declare-fun m!3242173 () Bool)

(assert (=> b!2812071 m!3242173))

(assert (=> b!2812071 m!3242163))

(assert (=> b!2812071 m!3241811))

(declare-fun m!3242175 () Bool)

(assert (=> b!2812071 m!3242175))

(assert (=> b!2812071 m!3241811))

(declare-fun m!3242177 () Bool)

(assert (=> b!2812071 m!3242177))

(assert (=> b!2811815 d!816297))

(declare-fun d!816299 () Bool)

(assert (=> d!816299 (= (list!12305 lt!1004534) (choose!16606 lt!1004534))))

(declare-fun bs!516450 () Bool)

(assert (= bs!516450 d!816299))

(declare-fun m!3242179 () Bool)

(assert (=> bs!516450 m!3242179))

(assert (=> b!2811815 d!816299))

(declare-fun b!2812074 () Bool)

(declare-fun res!1170689 () Bool)

(declare-fun e!1778388 () Bool)

(assert (=> b!2812074 (=> (not res!1170689) (not e!1778388))))

(declare-fun lt!1004626 () List!32961)

(assert (=> b!2812074 (= res!1170689 (= (size!25602 lt!1004626) (+ (size!25602 lt!1004536) (size!25602 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54)))))))))

(declare-fun b!2812075 () Bool)

(assert (=> b!2812075 (= e!1778388 (or (not (= (++!8065 lt!1004537 (t!229916 (t!229916 ll!54))) Nil!32848)) (= lt!1004626 lt!1004536)))))

(declare-fun b!2812073 () Bool)

(declare-fun e!1778389 () List!32961)

(assert (=> b!2812073 (= e!1778389 (Cons!32848 (h!38268 lt!1004536) (++!8065 (t!229916 lt!1004536) (++!8065 lt!1004537 (t!229916 (t!229916 ll!54))))))))

(declare-fun b!2812072 () Bool)

(assert (=> b!2812072 (= e!1778389 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54))))))

(declare-fun d!816301 () Bool)

(assert (=> d!816301 e!1778388))

(declare-fun res!1170690 () Bool)

(assert (=> d!816301 (=> (not res!1170690) (not e!1778388))))

(assert (=> d!816301 (= res!1170690 (= (content!4577 lt!1004626) ((_ map or) (content!4577 lt!1004536) (content!4577 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54)))))))))

(assert (=> d!816301 (= lt!1004626 e!1778389)))

(declare-fun c!455624 () Bool)

(assert (=> d!816301 (= c!455624 ((_ is Nil!32848) lt!1004536))))

(assert (=> d!816301 (= (++!8065 lt!1004536 (++!8065 lt!1004537 (t!229916 (t!229916 ll!54)))) lt!1004626)))

(assert (= (and d!816301 c!455624) b!2812072))

(assert (= (and d!816301 (not c!455624)) b!2812073))

(assert (= (and d!816301 res!1170690) b!2812074))

(assert (= (and b!2812074 res!1170689) b!2812075))

(declare-fun m!3242181 () Bool)

(assert (=> b!2812074 m!3242181))

(assert (=> b!2812074 m!3242103))

(assert (=> b!2812074 m!3241807))

(declare-fun m!3242183 () Bool)

(assert (=> b!2812074 m!3242183))

(assert (=> b!2812073 m!3241807))

(declare-fun m!3242187 () Bool)

(assert (=> b!2812073 m!3242187))

(declare-fun m!3242189 () Bool)

(assert (=> d!816301 m!3242189))

(assert (=> d!816301 m!3242111))

(assert (=> d!816301 m!3241807))

(declare-fun m!3242191 () Bool)

(assert (=> d!816301 m!3242191))

(assert (=> b!2811815 d!816301))

(declare-fun d!816305 () Bool)

(declare-fun lt!1004629 () Int)

(assert (=> d!816305 (>= lt!1004629 0)))

(declare-fun e!1778391 () Int)

(assert (=> d!816305 (= lt!1004629 e!1778391)))

(declare-fun c!455626 () Bool)

(assert (=> d!816305 (= c!455626 ((_ is Nil!32848) lt!1004514))))

(assert (=> d!816305 (= (size!25602 lt!1004514) lt!1004629)))

(declare-fun b!2812078 () Bool)

(assert (=> b!2812078 (= e!1778391 0)))

(declare-fun b!2812079 () Bool)

(assert (=> b!2812079 (= e!1778391 (+ 1 (size!25602 (t!229916 lt!1004514))))))

(assert (= (and d!816305 c!455626) b!2812078))

(assert (= (and d!816305 (not c!455626)) b!2812079))

(declare-fun m!3242195 () Bool)

(assert (=> b!2812079 m!3242195))

(assert (=> b!2811780 d!816305))

(assert (=> b!2811780 d!816173))

(assert (=> b!2811780 d!816181))

(declare-fun d!816309 () Bool)

(declare-fun lt!1004631 () Int)

(assert (=> d!816309 (>= lt!1004631 0)))

(declare-fun e!1778395 () Int)

(assert (=> d!816309 (= lt!1004631 e!1778395)))

(declare-fun c!455629 () Bool)

(assert (=> d!816309 (= c!455629 ((_ is Nil!32848) lt!1004510))))

(assert (=> d!816309 (= (size!25602 lt!1004510) lt!1004631)))

(declare-fun b!2812088 () Bool)

(assert (=> b!2812088 (= e!1778395 0)))

(declare-fun b!2812089 () Bool)

(assert (=> b!2812089 (= e!1778395 (+ 1 (size!25602 (t!229916 lt!1004510))))))

(assert (= (and d!816309 c!455629) b!2812088))

(assert (= (and d!816309 (not c!455629)) b!2812089))

(declare-fun m!3242197 () Bool)

(assert (=> b!2812089 m!3242197))

(assert (=> b!2811768 d!816309))

(declare-fun d!816311 () Bool)

(declare-fun lt!1004632 () Int)

(assert (=> d!816311 (>= lt!1004632 0)))

(declare-fun e!1778396 () Int)

(assert (=> d!816311 (= lt!1004632 e!1778396)))

(declare-fun c!455630 () Bool)

(assert (=> d!816311 (= c!455630 ((_ is Nil!32848) lt!1004495))))

(assert (=> d!816311 (= (size!25602 lt!1004495) lt!1004632)))

(declare-fun b!2812090 () Bool)

(assert (=> b!2812090 (= e!1778396 0)))

(declare-fun b!2812091 () Bool)

(assert (=> b!2812091 (= e!1778396 (+ 1 (size!25602 (t!229916 lt!1004495))))))

(assert (= (and d!816311 c!455630) b!2812090))

(assert (= (and d!816311 (not c!455630)) b!2812091))

(declare-fun m!3242199 () Bool)

(assert (=> b!2812091 m!3242199))

(assert (=> b!2811768 d!816311))

(assert (=> b!2811768 d!816181))

(declare-fun d!816313 () Bool)

(declare-fun c!455631 () Bool)

(assert (=> d!816313 (= c!455631 ((_ is Nil!32848) lt!1004515))))

(declare-fun e!1778397 () (InoxSet T!54794))

(assert (=> d!816313 (= (content!4577 lt!1004515) e!1778397)))

(declare-fun b!2812092 () Bool)

(assert (=> b!2812092 (= e!1778397 ((as const (Array T!54794 Bool)) false))))

(declare-fun b!2812093 () Bool)

(assert (=> b!2812093 (= e!1778397 ((_ map or) (store ((as const (Array T!54794 Bool)) false) (h!38268 lt!1004515) true) (content!4577 (t!229916 lt!1004515))))))

(assert (= (and d!816313 c!455631) b!2812092))

(assert (= (and d!816313 (not c!455631)) b!2812093))

(declare-fun m!3242201 () Bool)

(assert (=> b!2812093 m!3242201))

(declare-fun m!3242203 () Bool)

(assert (=> b!2812093 m!3242203))

(assert (=> d!816141 d!816313))

(assert (=> d!816141 d!816187))

(assert (=> d!816141 d!816197))

(declare-fun b!2812096 () Bool)

(declare-fun res!1170695 () Bool)

(declare-fun e!1778398 () Bool)

(assert (=> b!2812096 (=> (not res!1170695) (not e!1778398))))

(declare-fun lt!1004633 () List!32961)

(assert (=> b!2812096 (= res!1170695 (= (size!25602 lt!1004633) (+ (size!25602 (t!229916 lt!1004489)) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2812097 () Bool)

(assert (=> b!2812097 (= e!1778398 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004633 (t!229916 lt!1004489))))))

(declare-fun b!2812095 () Bool)

(declare-fun e!1778399 () List!32961)

(assert (=> b!2812095 (= e!1778399 (Cons!32848 (h!38268 (t!229916 lt!1004489)) (++!8065 (t!229916 (t!229916 lt!1004489)) (t!229916 ll!54))))))

(declare-fun b!2812094 () Bool)

(assert (=> b!2812094 (= e!1778399 (t!229916 ll!54))))

(declare-fun d!816315 () Bool)

(assert (=> d!816315 e!1778398))

(declare-fun res!1170696 () Bool)

(assert (=> d!816315 (=> (not res!1170696) (not e!1778398))))

(assert (=> d!816315 (= res!1170696 (= (content!4577 lt!1004633) ((_ map or) (content!4577 (t!229916 lt!1004489)) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816315 (= lt!1004633 e!1778399)))

(declare-fun c!455632 () Bool)

(assert (=> d!816315 (= c!455632 ((_ is Nil!32848) (t!229916 lt!1004489)))))

(assert (=> d!816315 (= (++!8065 (t!229916 lt!1004489) (t!229916 ll!54)) lt!1004633)))

(assert (= (and d!816315 c!455632) b!2812094))

(assert (= (and d!816315 (not c!455632)) b!2812095))

(assert (= (and d!816315 res!1170696) b!2812096))

(assert (= (and b!2812096 res!1170695) b!2812097))

(declare-fun m!3242213 () Bool)

(assert (=> b!2812096 m!3242213))

(assert (=> b!2812096 m!3241901))

(assert (=> b!2812096 m!3241727))

(declare-fun m!3242217 () Bool)

(assert (=> b!2812095 m!3242217))

(declare-fun m!3242221 () Bool)

(assert (=> d!816315 m!3242221))

(assert (=> d!816315 m!3241943))

(assert (=> d!816315 m!3241737))

(assert (=> b!2811779 d!816315))

(declare-fun d!816317 () Bool)

(assert (=> d!816317 (= (list!12305 lt!1004565) (choose!16606 lt!1004565))))

(declare-fun bs!516452 () Bool)

(assert (= bs!516452 d!816317))

(declare-fun m!3242227 () Bool)

(assert (=> bs!516452 m!3242227))

(assert (=> d!816167 d!816317))

(declare-fun b!2812098 () Bool)

(declare-fun res!1170699 () Bool)

(declare-fun e!1778400 () Bool)

(assert (=> b!2812098 (=> (not res!1170699) (not e!1778400))))

(declare-fun lt!1004634 () List!32961)

(assert (=> b!2812098 (= res!1170699 (= (size!25602 lt!1004634) (+ (size!25602 (list!12305 v!5966)) 1)))))

(declare-fun d!816321 () Bool)

(assert (=> d!816321 e!1778400))

(declare-fun res!1170697 () Bool)

(assert (=> d!816321 (=> (not res!1170697) (not e!1778400))))

(assert (=> d!816321 (= res!1170697 ((_ is Cons!32848) lt!1004634))))

(declare-fun e!1778402 () List!32961)

(assert (=> d!816321 (= lt!1004634 e!1778402)))

(declare-fun c!455634 () Bool)

(assert (=> d!816321 (= c!455634 ((_ is Nil!32848) (list!12305 v!5966)))))

(assert (=> d!816321 (= ($colon+!206 (list!12305 v!5966) (h!38268 ll!54)) lt!1004634)))

(declare-fun bm!183102 () Bool)

(declare-fun call!183108 () (_ BitVec 32))

(assert (=> bm!183102 (= call!183108 (isize!68 lt!1004634))))

(declare-fun b!2812099 () Bool)

(assert (=> b!2812099 (= e!1778400 (= lt!1004634 (++!8065 (list!12305 v!5966) (Cons!32848 (h!38268 ll!54) Nil!32848))))))

(declare-fun b!2812100 () Bool)

(declare-fun res!1170698 () Bool)

(assert (=> b!2812100 (=> (not res!1170698) (not e!1778400))))

(declare-fun e!1778401 () Bool)

(assert (=> b!2812100 (= res!1170698 e!1778401)))

(declare-fun c!455633 () Bool)

(assert (=> b!2812100 (= c!455633 (bvslt (isize!68 (list!12305 v!5966)) #b01111111111111111111111111111111))))

(declare-fun b!2812101 () Bool)

(declare-fun call!183107 () (_ BitVec 32))

(assert (=> b!2812101 (= e!1778401 (= call!183108 call!183107))))

(declare-fun b!2812102 () Bool)

(declare-fun res!1170700 () Bool)

(assert (=> b!2812102 (=> (not res!1170700) (not e!1778400))))

(assert (=> b!2812102 (= res!1170700 (= (content!4577 lt!1004634) ((_ map or) (content!4577 (list!12305 v!5966)) (store ((as const (Array T!54794 Bool)) false) (h!38268 ll!54) true))))))

(declare-fun b!2812103 () Bool)

(assert (=> b!2812103 (= e!1778401 (= call!183108 (bvadd call!183107 #b00000000000000000000000000000001)))))

(declare-fun b!2812104 () Bool)

(assert (=> b!2812104 (= e!1778402 (Cons!32848 (h!38268 ll!54) (list!12305 v!5966)))))

(declare-fun bm!183103 () Bool)

(assert (=> bm!183103 (= call!183107 (isize!68 (list!12305 v!5966)))))

(declare-fun b!2812105 () Bool)

(assert (=> b!2812105 (= e!1778402 (Cons!32848 (h!38268 (list!12305 v!5966)) ($colon+!206 (t!229916 (list!12305 v!5966)) (h!38268 ll!54))))))

(assert (= (and d!816321 c!455634) b!2812104))

(assert (= (and d!816321 (not c!455634)) b!2812105))

(assert (= (and d!816321 res!1170697) b!2812098))

(assert (= (and b!2812098 res!1170699) b!2812100))

(assert (= (and b!2812100 c!455633) b!2812103))

(assert (= (and b!2812100 (not c!455633)) b!2812101))

(assert (= (or b!2812103 b!2812101) bm!183102))

(assert (= (or b!2812103 b!2812101) bm!183103))

(assert (= (and b!2812100 res!1170698) b!2812102))

(assert (= (and b!2812102 res!1170700) b!2812099))

(declare-fun m!3242229 () Bool)

(assert (=> b!2812098 m!3242229))

(assert (=> b!2812098 m!3241649))

(declare-fun m!3242231 () Bool)

(assert (=> b!2812098 m!3242231))

(declare-fun m!3242233 () Bool)

(assert (=> b!2812105 m!3242233))

(declare-fun m!3242235 () Bool)

(assert (=> b!2812102 m!3242235))

(assert (=> b!2812102 m!3241649))

(declare-fun m!3242237 () Bool)

(assert (=> b!2812102 m!3242237))

(assert (=> b!2812102 m!3241849))

(assert (=> b!2812099 m!3241649))

(declare-fun m!3242239 () Bool)

(assert (=> b!2812099 m!3242239))

(declare-fun m!3242241 () Bool)

(assert (=> bm!183102 m!3242241))

(assert (=> b!2812100 m!3241649))

(declare-fun m!3242243 () Bool)

(assert (=> b!2812100 m!3242243))

(assert (=> bm!183103 m!3241649))

(assert (=> bm!183103 m!3242243))

(assert (=> d!816167 d!816321))

(assert (=> d!816167 d!816147))

(declare-fun d!816323 () Bool)

(declare-fun res!1170707 () Vector!232)

(assert (=> d!816323 (= (list!12305 res!1170707) ($colon+!206 (list!12305 v!5966) (h!38268 ll!54)))))

(declare-fun e!1778409 () Bool)

(assert (=> d!816323 e!1778409))

(assert (=> d!816323 (= (choose!16608 v!5966 (h!38268 ll!54)) res!1170707)))

(declare-fun b!2812112 () Bool)

(declare-fun tp!897995 () Bool)

(declare-fun tp!897996 () Bool)

(assert (=> b!2812112 (= e!1778409 (and tp!897995 tp!897996))))

(assert (= d!816323 b!2812112))

(declare-fun m!3242247 () Bool)

(assert (=> d!816323 m!3242247))

(assert (=> d!816323 m!3241649))

(assert (=> d!816323 m!3241649))

(assert (=> d!816323 m!3241885))

(assert (=> d!816167 d!816323))

(declare-fun b!2812115 () Bool)

(declare-fun res!1170708 () Bool)

(declare-fun e!1778410 () Bool)

(assert (=> b!2812115 (=> (not res!1170708) (not e!1778410))))

(declare-fun lt!1004635 () List!32961)

(assert (=> b!2812115 (= res!1170708 (= (size!25602 lt!1004635) (+ (size!25602 (t!229916 lt!1004495)) (size!25602 (t!229916 ll!54)))))))

(declare-fun b!2812116 () Bool)

(assert (=> b!2812116 (= e!1778410 (or (not (= (t!229916 ll!54) Nil!32848)) (= lt!1004635 (t!229916 lt!1004495))))))

(declare-fun b!2812114 () Bool)

(declare-fun e!1778411 () List!32961)

(assert (=> b!2812114 (= e!1778411 (Cons!32848 (h!38268 (t!229916 lt!1004495)) (++!8065 (t!229916 (t!229916 lt!1004495)) (t!229916 ll!54))))))

(declare-fun b!2812113 () Bool)

(assert (=> b!2812113 (= e!1778411 (t!229916 ll!54))))

(declare-fun d!816329 () Bool)

(assert (=> d!816329 e!1778410))

(declare-fun res!1170709 () Bool)

(assert (=> d!816329 (=> (not res!1170709) (not e!1778410))))

(assert (=> d!816329 (= res!1170709 (= (content!4577 lt!1004635) ((_ map or) (content!4577 (t!229916 lt!1004495)) (content!4577 (t!229916 ll!54)))))))

(assert (=> d!816329 (= lt!1004635 e!1778411)))

(declare-fun c!455635 () Bool)

(assert (=> d!816329 (= c!455635 ((_ is Nil!32848) (t!229916 lt!1004495)))))

(assert (=> d!816329 (= (++!8065 (t!229916 lt!1004495) (t!229916 ll!54)) lt!1004635)))

(assert (= (and d!816329 c!455635) b!2812113))

(assert (= (and d!816329 (not c!455635)) b!2812114))

(assert (= (and d!816329 res!1170709) b!2812115))

(assert (= (and b!2812115 res!1170708) b!2812116))

(declare-fun m!3242249 () Bool)

(assert (=> b!2812115 m!3242249))

(assert (=> b!2812115 m!3242199))

(assert (=> b!2812115 m!3241727))

(declare-fun m!3242251 () Bool)

(assert (=> b!2812114 m!3242251))

(declare-fun m!3242253 () Bool)

(assert (=> d!816329 m!3242253))

(assert (=> d!816329 m!3241957))

(assert (=> d!816329 m!3241737))

(assert (=> b!2811767 d!816329))

(declare-fun b!2812121 () Bool)

(declare-fun e!1778414 () Bool)

(declare-fun tp!897997 () Bool)

(assert (=> b!2812121 (= e!1778414 (and tp_is_empty!14387 tp!897997))))

(assert (=> b!2811887 (= tp!897974 e!1778414)))

(assert (= (and b!2811887 ((_ is Cons!32848) (t!229916 (t!229916 ll!54)))) b!2812121))

(declare-fun tp!898004 () Bool)

(declare-fun tp!898005 () Bool)

(declare-fun e!1778421 () Bool)

(declare-fun b!2812134 () Bool)

(assert (=> b!2812134 (= e!1778421 (and (inv!44591 (left!24776 (c!455522 (value!158130 (underlying!8356 v!5966))))) tp!898004 (inv!44591 (right!25106 (c!455522 (value!158130 (underlying!8356 v!5966))))) tp!898005))))

(declare-fun b!2812138 () Bool)

(declare-fun e!1778423 () Bool)

(declare-fun tp!898006 () Bool)

(assert (=> b!2812138 (= e!1778423 tp!898006)))

(declare-fun b!2812136 () Bool)

(declare-fun inv!44597 (IArray!20345) Bool)

(assert (=> b!2812136 (= e!1778421 (and (inv!44597 (xs!13282 (c!455522 (value!158130 (underlying!8356 v!5966))))) e!1778423))))

(assert (=> b!2811880 (= tp!897969 (and (inv!44591 (c!455522 (value!158130 (underlying!8356 v!5966)))) e!1778421))))

(assert (= (and b!2811880 ((_ is Node!10170) (c!455522 (value!158130 (underlying!8356 v!5966))))) b!2812134))

(assert (= b!2812136 b!2812138))

(assert (= (and b!2811880 ((_ is Leaf!15493) (c!455522 (value!158130 (underlying!8356 v!5966))))) b!2812136))

(declare-fun m!3242265 () Bool)

(assert (=> b!2812134 m!3242265))

(declare-fun m!3242267 () Bool)

(assert (=> b!2812134 m!3242267))

(declare-fun m!3242269 () Bool)

(assert (=> b!2812136 m!3242269))

(assert (=> b!2811880 m!3241893))

(declare-fun b!2812141 () Bool)

(declare-fun e!1778425 () Bool)

(declare-fun tp!898007 () Bool)

(assert (=> b!2812141 (= e!1778425 (and tp_is_empty!14387 tp!898007))))

(assert (=> b!2811886 (= tp!897973 e!1778425)))

(assert (= (and b!2811886 ((_ is Cons!32848) (t!229916 (overflowing!173 v!5966)))) b!2812141))

(declare-fun b!2812150 () Bool)

(declare-fun e!1778430 () Bool)

(declare-fun tp!898012 () Bool)

(declare-fun tp!898013 () Bool)

(assert (=> b!2812150 (= e!1778430 (and tp!898012 tp!898013))))

(assert (=> b!2811881 (= tp!897970 e!1778430)))

(assert (= (and b!2811881 ((_ is Cons!32849) (value!158131 (underlying!8356 v!5966)))) b!2812150))

(check-sat (not d!816175) (not d!816297) (not b!2812112) (not b!2812043) (not b!2812141) (not b!2812099) (not bm!183099) (not d!816285) (not d!816317) (not b!2812051) (not b!2812150) (not b!2811922) (not b!2812058) (not bm!183098) (not b!2812096) (not b!2811961) (not b!2811893) (not b!2811969) (not d!816225) (not b!2811975) (not b!2812105) (not b!2812054) (not b!2811919) (not b!2811930) (not b!2812035) (not b!2811957) (not b!2812089) (not b!2812056) (not b!2811956) (not d!816295) (not b!2812064) (not d!816291) (not b!2812063) (not b!2811907) (not d!816265) (not b!2811959) (not d!816219) (not d!816239) (not d!816323) (not d!816217) (not b!2811899) (not b!2811938) (not b!2811953) (not b!2811948) (not d!816301) (not b!2812039) (not b!2811979) (not b!2811905) (not b!2811950) (not b!2811946) (not b!2811934) (not b!2811982) (not d!816329) (not d!816227) (not b!2811928) (not d!816299) (not bm!183096) (not b!2811903) (not b!2811970) (not d!816315) (not b!2812115) (not b!2812102) (not b!2811921) (not b!2812073) (not b!2812098) (not b!2812136) (not b!2812093) (not b!2811962) (not b!2811952) (not d!816243) (not b!2811917) (not d!816293) (not d!816279) (not b!2812100) (not b!2812025) (not b!2811964) (not b!2812091) (not b!2812079) (not b!2812026) (not b!2811895) (not b!2811900) (not b!2812071) (not b!2812114) (not b!2811915) (not b!2812044) (not b!2812138) (not b!2811936) (not b!2812095) (not b!2812134) tp_is_empty!14387 (not b!2811880) (not b!2811987) (not b!2812074) (not b!2811926) (not b!2812017) (not bm!183097) (not b!2812061) (not b!2811988) (not d!816201) (not b!2811967) (not b!2812052) (not b!2811981) (not b!2811909) (not b!2811973) (not b!2812121) (not d!816241) (not b!2811960) (not d!816191) (not b!2811944) (not b!2812019) (not b!2811897) (not b!2811932) (not b!2811977) (not bm!183103) (not b!2812021) (not bm!183102) (not b!2812055))
(check-sat)
