; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!596154 () Bool)

(assert start!596154)

(declare-fun b!5818338 () Bool)

(assert (=> b!5818338 true))

(declare-fun b!5818350 () Bool)

(assert (=> b!5818350 true))

(declare-fun e!3570923 () Bool)

(declare-fun e!3570916 () Bool)

(assert (=> b!5818338 (= e!3570923 e!3570916)))

(declare-fun res!2453643 () Bool)

(assert (=> b!5818338 (=> res!2453643 e!3570916)))

(declare-fun lt!2301760 () Bool)

(assert (=> b!5818338 (= res!2453643 (not lt!2301760))))

(declare-datatypes ((C!31978 0))(
  ( (C!31979 (val!25691 Int)) )
))
(declare-datatypes ((Regex!15854 0))(
  ( (ElementMatch!15854 (c!1031068 C!31978)) (Concat!24699 (regOne!32220 Regex!15854) (regTwo!32220 Regex!15854)) (EmptyExpr!15854) (Star!15854 (reg!16183 Regex!15854)) (EmptyLang!15854) (Union!15854 (regOne!32221 Regex!15854) (regTwo!32221 Regex!15854)) )
))
(declare-datatypes ((List!63861 0))(
  ( (Nil!63737) (Cons!63737 (h!70185 Regex!15854) (t!377216 List!63861)) )
))
(declare-fun lt!2301764 () List!63861)

(declare-fun lambda!318255 () Int)

(declare-fun exists!2272 (List!63861 Int) Bool)

(assert (=> b!5818338 (= lt!2301760 (exists!2272 lt!2301764 lambda!318255))))

(declare-fun r!7292 () Regex!15854)

(declare-datatypes ((List!63862 0))(
  ( (Nil!63738) (Cons!63738 (h!70186 C!31978) (t!377217 List!63862)) )
))
(declare-fun s!2326 () List!63862)

(declare-datatypes ((Unit!156974 0))(
  ( (Unit!156975) )
))
(declare-fun lt!2301759 () Unit!156974)

(declare-fun matchRGenUnionSpec!295 (Regex!15854 List!63861 List!63862) Unit!156974)

(assert (=> b!5818338 (= lt!2301759 (matchRGenUnionSpec!295 r!7292 lt!2301764 s!2326))))

(declare-datatypes ((Context!10476 0))(
  ( (Context!10477 (exprs!5738 List!63861)) )
))
(declare-datatypes ((List!63863 0))(
  ( (Nil!63739) (Cons!63739 (h!70187 Context!10476) (t!377218 List!63863)) )
))
(declare-fun zl!343 () List!63863)

(declare-fun unfocusZipperList!1276 (List!63863) List!63861)

(assert (=> b!5818338 (= lt!2301764 (unfocusZipperList!1276 zl!343))))

(declare-fun b!5818339 () Bool)

(declare-fun e!3570919 () Bool)

(declare-fun tp!1605464 () Bool)

(declare-fun tp!1605457 () Bool)

(assert (=> b!5818339 (= e!3570919 (and tp!1605464 tp!1605457))))

(declare-fun b!5818340 () Bool)

(declare-fun e!3570917 () Bool)

(declare-fun tp!1605458 () Bool)

(assert (=> b!5818340 (= e!3570917 tp!1605458)))

(declare-fun setRes!39265 () Bool)

(declare-fun tp!1605466 () Bool)

(declare-fun setNonEmpty!39265 () Bool)

(declare-fun setElem!39265 () Context!10476)

(declare-fun e!3570920 () Bool)

(declare-fun inv!82883 (Context!10476) Bool)

(assert (=> setNonEmpty!39265 (= setRes!39265 (and tp!1605466 (inv!82883 setElem!39265) e!3570920))))

(declare-fun z!1189 () (Set Context!10476))

(declare-fun setRest!39265 () (Set Context!10476))

(assert (=> setNonEmpty!39265 (= z!1189 (set.union (set.insert setElem!39265 (as set.empty (Set Context!10476))) setRest!39265))))

(declare-fun b!5818341 () Bool)

(declare-fun e!3570921 () Bool)

(declare-fun lt!2301757 () Int)

(declare-fun lt!2301756 () Context!10476)

(declare-fun zipperDepthTotal!263 (List!63863) Int)

(assert (=> b!5818341 (= e!3570921 (> lt!2301757 (zipperDepthTotal!263 (Cons!63739 lt!2301756 Nil!63739))))))

(declare-fun lt!2301758 () Int)

(assert (=> b!5818341 (< lt!2301758 lt!2301757)))

(assert (=> b!5818341 (= lt!2301757 (zipperDepthTotal!263 zl!343))))

(declare-fun contextDepthTotal!241 (Context!10476) Int)

(assert (=> b!5818341 (= lt!2301758 (contextDepthTotal!241 lt!2301756))))

(declare-fun lt!2301762 () Unit!156974)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!25 (List!63863 Context!10476) Unit!156974)

(assert (=> b!5818341 (= lt!2301762 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!25 zl!343 lt!2301756))))

(declare-fun lambda!318256 () Int)

(declare-fun getWitness!921 (List!63863 Int) Context!10476)

(assert (=> b!5818341 (= lt!2301756 (getWitness!921 zl!343 lambda!318256))))

(declare-fun setIsEmpty!39265 () Bool)

(assert (=> setIsEmpty!39265 setRes!39265))

(declare-fun b!5818342 () Bool)

(declare-fun e!3570914 () Bool)

(declare-fun isEmpty!35633 (List!63863) Bool)

(assert (=> b!5818342 (= e!3570914 (isEmpty!35633 (t!377218 zl!343)))))

(declare-fun b!5818343 () Bool)

(declare-fun tp_is_empty!40961 () Bool)

(assert (=> b!5818343 (= e!3570919 tp_is_empty!40961)))

(declare-fun b!5818344 () Bool)

(declare-fun res!2453650 () Bool)

(declare-fun e!3570924 () Bool)

(assert (=> b!5818344 (=> (not res!2453650) (not e!3570924))))

(declare-fun unfocusZipper!1596 (List!63863) Regex!15854)

(assert (=> b!5818344 (= res!2453650 (= r!7292 (unfocusZipper!1596 zl!343)))))

(declare-fun b!5818345 () Bool)

(declare-fun res!2453641 () Bool)

(assert (=> b!5818345 (=> res!2453641 e!3570916)))

(assert (=> b!5818345 (= res!2453641 (not (exists!2272 lt!2301764 lambda!318255)))))

(declare-fun b!5818346 () Bool)

(declare-fun e!3570922 () Bool)

(assert (=> b!5818346 (= e!3570916 e!3570922)))

(declare-fun res!2453645 () Bool)

(assert (=> b!5818346 (=> res!2453645 e!3570922)))

(declare-fun lt!2301761 () Regex!15854)

(declare-fun contains!19894 (List!63861 Regex!15854) Bool)

(assert (=> b!5818346 (= res!2453645 (not (contains!19894 lt!2301764 lt!2301761)))))

(declare-fun getWitness!922 (List!63861 Int) Regex!15854)

(assert (=> b!5818346 (= lt!2301761 (getWitness!922 lt!2301764 lambda!318255))))

(declare-fun b!5818347 () Bool)

(declare-fun res!2453648 () Bool)

(assert (=> b!5818347 (=> (not res!2453648) (not e!3570924))))

(declare-fun toList!9638 ((Set Context!10476)) List!63863)

(assert (=> b!5818347 (= res!2453648 (= (toList!9638 z!1189) zl!343))))

(declare-fun b!5818348 () Bool)

(declare-fun tp!1605462 () Bool)

(assert (=> b!5818348 (= e!3570919 tp!1605462)))

(declare-fun e!3570915 () Bool)

(declare-fun tp!1605460 () Bool)

(declare-fun b!5818349 () Bool)

(assert (=> b!5818349 (= e!3570915 (and (inv!82883 (h!70187 zl!343)) e!3570917 tp!1605460))))

(assert (=> b!5818350 (= e!3570922 e!3570921)))

(declare-fun res!2453644 () Bool)

(assert (=> b!5818350 (=> res!2453644 e!3570921)))

(declare-fun exists!2273 (List!63863 Int) Bool)

(assert (=> b!5818350 (= res!2453644 (not (exists!2273 zl!343 lambda!318256)))))

(assert (=> b!5818350 (exists!2273 zl!343 lambda!318256)))

(declare-fun lt!2301763 () Unit!156974)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!21 (List!63863 Regex!15854) Unit!156974)

(assert (=> b!5818350 (= lt!2301763 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!21 zl!343 lt!2301761))))

(declare-fun b!5818351 () Bool)

(declare-fun e!3570918 () Bool)

(declare-fun tp!1605461 () Bool)

(assert (=> b!5818351 (= e!3570918 (and tp_is_empty!40961 tp!1605461))))

(declare-fun b!5818337 () Bool)

(declare-fun tp!1605463 () Bool)

(assert (=> b!5818337 (= e!3570920 tp!1605463)))

(declare-fun res!2453653 () Bool)

(assert (=> start!596154 (=> (not res!2453653) (not e!3570924))))

(declare-fun validRegex!7590 (Regex!15854) Bool)

(assert (=> start!596154 (= res!2453653 (validRegex!7590 r!7292))))

(assert (=> start!596154 e!3570924))

(assert (=> start!596154 e!3570919))

(declare-fun condSetEmpty!39265 () Bool)

(assert (=> start!596154 (= condSetEmpty!39265 (= z!1189 (as set.empty (Set Context!10476))))))

(assert (=> start!596154 setRes!39265))

(assert (=> start!596154 e!3570915))

(assert (=> start!596154 e!3570918))

(declare-fun b!5818352 () Bool)

(declare-fun tp!1605465 () Bool)

(declare-fun tp!1605459 () Bool)

(assert (=> b!5818352 (= e!3570919 (and tp!1605465 tp!1605459))))

(declare-fun b!5818353 () Bool)

(declare-fun res!2453642 () Bool)

(assert (=> b!5818353 (=> res!2453642 e!3570922)))

(declare-fun matchR!8039 (Regex!15854 List!63862) Bool)

(assert (=> b!5818353 (= res!2453642 (not (matchR!8039 lt!2301761 s!2326)))))

(declare-fun b!5818354 () Bool)

(assert (=> b!5818354 (= e!3570924 (not e!3570923))))

(declare-fun res!2453646 () Bool)

(assert (=> b!5818354 (=> res!2453646 e!3570923)))

(assert (=> b!5818354 (= res!2453646 e!3570914)))

(declare-fun res!2453651 () Bool)

(assert (=> b!5818354 (=> (not res!2453651) (not e!3570914))))

(assert (=> b!5818354 (= res!2453651 (is-Cons!63739 zl!343))))

(declare-fun matchRSpec!2957 (Regex!15854 List!63862) Bool)

(assert (=> b!5818354 (= lt!2301760 (matchRSpec!2957 r!7292 s!2326))))

(assert (=> b!5818354 (= lt!2301760 (matchR!8039 r!7292 s!2326))))

(declare-fun lt!2301755 () Unit!156974)

(declare-fun mainMatchTheorem!2957 (Regex!15854 List!63862) Unit!156974)

(assert (=> b!5818354 (= lt!2301755 (mainMatchTheorem!2957 r!7292 s!2326))))

(declare-fun b!5818355 () Bool)

(declare-fun res!2453652 () Bool)

(assert (=> b!5818355 (=> res!2453652 e!3570923)))

(assert (=> b!5818355 (= res!2453652 (isEmpty!35633 (t!377218 zl!343)))))

(declare-fun b!5818356 () Bool)

(declare-fun res!2453647 () Bool)

(assert (=> b!5818356 (=> res!2453647 e!3570923)))

(assert (=> b!5818356 (= res!2453647 (or (not (is-Cons!63739 zl!343)) (is-Nil!63738 s!2326) (not (= zl!343 (Cons!63739 (h!70187 zl!343) (t!377218 zl!343))))))))

(declare-fun b!5818357 () Bool)

(declare-fun res!2453649 () Bool)

(assert (=> b!5818357 (=> res!2453649 e!3570922)))

(assert (=> b!5818357 (= res!2453649 (not (validRegex!7590 lt!2301761)))))

(assert (= (and start!596154 res!2453653) b!5818347))

(assert (= (and b!5818347 res!2453648) b!5818344))

(assert (= (and b!5818344 res!2453650) b!5818354))

(assert (= (and b!5818354 res!2453651) b!5818342))

(assert (= (and b!5818354 (not res!2453646)) b!5818356))

(assert (= (and b!5818356 (not res!2453647)) b!5818355))

(assert (= (and b!5818355 (not res!2453652)) b!5818338))

(assert (= (and b!5818338 (not res!2453643)) b!5818345))

(assert (= (and b!5818345 (not res!2453641)) b!5818346))

(assert (= (and b!5818346 (not res!2453645)) b!5818357))

(assert (= (and b!5818357 (not res!2453649)) b!5818353))

(assert (= (and b!5818353 (not res!2453642)) b!5818350))

(assert (= (and b!5818350 (not res!2453644)) b!5818341))

(assert (= (and start!596154 (is-ElementMatch!15854 r!7292)) b!5818343))

(assert (= (and start!596154 (is-Concat!24699 r!7292)) b!5818352))

(assert (= (and start!596154 (is-Star!15854 r!7292)) b!5818348))

(assert (= (and start!596154 (is-Union!15854 r!7292)) b!5818339))

(assert (= (and start!596154 condSetEmpty!39265) setIsEmpty!39265))

(assert (= (and start!596154 (not condSetEmpty!39265)) setNonEmpty!39265))

(assert (= setNonEmpty!39265 b!5818337))

(assert (= b!5818349 b!5818340))

(assert (= (and start!596154 (is-Cons!63739 zl!343)) b!5818349))

(assert (= (and start!596154 (is-Cons!63738 s!2326)) b!5818351))

(declare-fun m!6754480 () Bool)

(assert (=> b!5818357 m!6754480))

(declare-fun m!6754482 () Bool)

(assert (=> b!5818353 m!6754482))

(declare-fun m!6754484 () Bool)

(assert (=> start!596154 m!6754484))

(declare-fun m!6754486 () Bool)

(assert (=> b!5818354 m!6754486))

(declare-fun m!6754488 () Bool)

(assert (=> b!5818354 m!6754488))

(declare-fun m!6754490 () Bool)

(assert (=> b!5818354 m!6754490))

(declare-fun m!6754492 () Bool)

(assert (=> b!5818355 m!6754492))

(declare-fun m!6754494 () Bool)

(assert (=> b!5818341 m!6754494))

(declare-fun m!6754496 () Bool)

(assert (=> b!5818341 m!6754496))

(declare-fun m!6754498 () Bool)

(assert (=> b!5818341 m!6754498))

(declare-fun m!6754500 () Bool)

(assert (=> b!5818341 m!6754500))

(declare-fun m!6754502 () Bool)

(assert (=> b!5818341 m!6754502))

(declare-fun m!6754504 () Bool)

(assert (=> setNonEmpty!39265 m!6754504))

(declare-fun m!6754506 () Bool)

(assert (=> b!5818345 m!6754506))

(assert (=> b!5818338 m!6754506))

(declare-fun m!6754508 () Bool)

(assert (=> b!5818338 m!6754508))

(declare-fun m!6754510 () Bool)

(assert (=> b!5818338 m!6754510))

(declare-fun m!6754512 () Bool)

(assert (=> b!5818346 m!6754512))

(declare-fun m!6754514 () Bool)

(assert (=> b!5818346 m!6754514))

(assert (=> b!5818342 m!6754492))

(declare-fun m!6754516 () Bool)

(assert (=> b!5818349 m!6754516))

(declare-fun m!6754518 () Bool)

(assert (=> b!5818344 m!6754518))

(declare-fun m!6754520 () Bool)

(assert (=> b!5818347 m!6754520))

(declare-fun m!6754522 () Bool)

(assert (=> b!5818350 m!6754522))

(assert (=> b!5818350 m!6754522))

(declare-fun m!6754524 () Bool)

(assert (=> b!5818350 m!6754524))

(push 1)

(assert (not b!5818341))

(assert (not b!5818338))

(assert (not b!5818350))

(assert tp_is_empty!40961)

(assert (not b!5818355))

(assert (not b!5818348))

(assert (not b!5818339))

(assert (not b!5818344))

(assert (not setNonEmpty!39265))

(assert (not b!5818349))

(assert (not b!5818340))

(assert (not b!5818342))

(assert (not b!5818353))

(assert (not b!5818352))

(assert (not b!5818357))

(assert (not b!5818337))

(assert (not b!5818345))

(assert (not b!5818347))

(assert (not start!596154))

(assert (not b!5818346))

(assert (not b!5818354))

(assert (not b!5818351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5818453 () Bool)

(declare-fun e!3570983 () Bool)

(declare-fun e!3570978 () Bool)

(assert (=> b!5818453 (= e!3570983 e!3570978)))

(declare-fun c!1031077 () Bool)

(assert (=> b!5818453 (= c!1031077 (is-Union!15854 r!7292))))

(declare-fun b!5818454 () Bool)

(declare-fun res!2453713 () Bool)

(declare-fun e!3570979 () Bool)

(assert (=> b!5818454 (=> res!2453713 e!3570979)))

(assert (=> b!5818454 (= res!2453713 (not (is-Concat!24699 r!7292)))))

(assert (=> b!5818454 (= e!3570978 e!3570979)))

(declare-fun bm!454385 () Bool)

(declare-fun call!454391 () Bool)

(assert (=> bm!454385 (= call!454391 (validRegex!7590 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))

(declare-fun b!5818455 () Bool)

(declare-fun e!3570984 () Bool)

(assert (=> b!5818455 (= e!3570979 e!3570984)))

(declare-fun res!2453712 () Bool)

(assert (=> b!5818455 (=> (not res!2453712) (not e!3570984))))

(declare-fun call!454390 () Bool)

(assert (=> b!5818455 (= res!2453712 call!454390)))

(declare-fun b!5818456 () Bool)

(declare-fun e!3570980 () Bool)

(assert (=> b!5818456 (= e!3570983 e!3570980)))

(declare-fun res!2453709 () Bool)

(declare-fun nullable!5868 (Regex!15854) Bool)

(assert (=> b!5818456 (= res!2453709 (not (nullable!5868 (reg!16183 r!7292))))))

(assert (=> b!5818456 (=> (not res!2453709) (not e!3570980))))

(declare-fun b!5818457 () Bool)

(declare-fun e!3570982 () Bool)

(assert (=> b!5818457 (= e!3570982 call!454391)))

(declare-fun b!5818458 () Bool)

(declare-fun call!454389 () Bool)

(assert (=> b!5818458 (= e!3570980 call!454389)))

(declare-fun b!5818459 () Bool)

(declare-fun e!3570981 () Bool)

(assert (=> b!5818459 (= e!3570981 e!3570983)))

(declare-fun c!1031076 () Bool)

(assert (=> b!5818459 (= c!1031076 (is-Star!15854 r!7292))))

(declare-fun b!5818460 () Bool)

(declare-fun res!2453710 () Bool)

(assert (=> b!5818460 (=> (not res!2453710) (not e!3570982))))

(assert (=> b!5818460 (= res!2453710 call!454390)))

(assert (=> b!5818460 (= e!3570978 e!3570982)))

(declare-fun b!5818461 () Bool)

(assert (=> b!5818461 (= e!3570984 call!454391)))

(declare-fun bm!454386 () Bool)

(assert (=> bm!454386 (= call!454389 (validRegex!7590 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))

(declare-fun d!1831311 () Bool)

(declare-fun res!2453711 () Bool)

(assert (=> d!1831311 (=> res!2453711 e!3570981)))

(assert (=> d!1831311 (= res!2453711 (is-ElementMatch!15854 r!7292))))

(assert (=> d!1831311 (= (validRegex!7590 r!7292) e!3570981)))

(declare-fun bm!454384 () Bool)

(assert (=> bm!454384 (= call!454390 call!454389)))

(assert (= (and d!1831311 (not res!2453711)) b!5818459))

(assert (= (and b!5818459 c!1031076) b!5818456))

(assert (= (and b!5818459 (not c!1031076)) b!5818453))

(assert (= (and b!5818456 res!2453709) b!5818458))

(assert (= (and b!5818453 c!1031077) b!5818460))

(assert (= (and b!5818453 (not c!1031077)) b!5818454))

(assert (= (and b!5818460 res!2453710) b!5818457))

(assert (= (and b!5818454 (not res!2453713)) b!5818455))

(assert (= (and b!5818455 res!2453712) b!5818461))

(assert (= (or b!5818457 b!5818461) bm!454385))

(assert (= (or b!5818460 b!5818455) bm!454384))

(assert (= (or b!5818458 bm!454384) bm!454386))

(declare-fun m!6754572 () Bool)

(assert (=> bm!454385 m!6754572))

(declare-fun m!6754574 () Bool)

(assert (=> b!5818456 m!6754574))

(declare-fun m!6754576 () Bool)

(assert (=> bm!454386 m!6754576))

(assert (=> start!596154 d!1831311))

(declare-fun d!1831313 () Bool)

(assert (=> d!1831313 (= (isEmpty!35633 (t!377218 zl!343)) (is-Nil!63739 (t!377218 zl!343)))))

(assert (=> b!5818342 d!1831313))

(declare-fun b!5818474 () Bool)

(declare-fun e!3570994 () Context!10476)

(assert (=> b!5818474 (= e!3570994 (h!70187 zl!343))))

(declare-fun b!5818476 () Bool)

(declare-fun e!3570995 () Context!10476)

(assert (=> b!5818476 (= e!3570995 (getWitness!921 (t!377218 zl!343) lambda!318256))))

(declare-fun b!5818477 () Bool)

(declare-fun e!3570993 () Bool)

(declare-fun dynLambda!24949 (Int Context!10476) Bool)

(assert (=> b!5818477 (= e!3570993 (dynLambda!24949 lambda!318256 (h!70187 zl!343)))))

(declare-fun b!5818475 () Bool)

(assert (=> b!5818475 (= e!3570994 e!3570995)))

(declare-fun c!1031083 () Bool)

(assert (=> b!5818475 (= c!1031083 (is-Cons!63739 zl!343))))

(declare-fun d!1831315 () Bool)

(declare-fun e!3570996 () Bool)

(assert (=> d!1831315 e!3570996))

(declare-fun res!2453719 () Bool)

(assert (=> d!1831315 (=> (not res!2453719) (not e!3570996))))

(declare-fun lt!2301799 () Context!10476)

(assert (=> d!1831315 (= res!2453719 (dynLambda!24949 lambda!318256 lt!2301799))))

(assert (=> d!1831315 (= lt!2301799 e!3570994)))

(declare-fun c!1031082 () Bool)

(assert (=> d!1831315 (= c!1031082 e!3570993)))

(declare-fun res!2453718 () Bool)

(assert (=> d!1831315 (=> (not res!2453718) (not e!3570993))))

(assert (=> d!1831315 (= res!2453718 (is-Cons!63739 zl!343))))

(assert (=> d!1831315 (exists!2273 zl!343 lambda!318256)))

(assert (=> d!1831315 (= (getWitness!921 zl!343 lambda!318256) lt!2301799)))

(declare-fun b!5818478 () Bool)

(declare-fun lt!2301800 () Unit!156974)

(declare-fun Unit!156978 () Unit!156974)

(assert (=> b!5818478 (= lt!2301800 Unit!156978)))

(assert (=> b!5818478 false))

(declare-fun head!12292 (List!63863) Context!10476)

(assert (=> b!5818478 (= e!3570995 (head!12292 zl!343))))

(declare-fun b!5818479 () Bool)

(declare-fun contains!19896 (List!63863 Context!10476) Bool)

(assert (=> b!5818479 (= e!3570996 (contains!19896 zl!343 lt!2301799))))

(assert (= (and d!1831315 res!2453718) b!5818477))

(assert (= (and d!1831315 c!1031082) b!5818474))

(assert (= (and d!1831315 (not c!1031082)) b!5818475))

(assert (= (and b!5818475 c!1031083) b!5818476))

(assert (= (and b!5818475 (not c!1031083)) b!5818478))

(assert (= (and d!1831315 res!2453719) b!5818479))

(declare-fun b_lambda!219285 () Bool)

(assert (=> (not b_lambda!219285) (not b!5818477)))

(declare-fun b_lambda!219287 () Bool)

(assert (=> (not b_lambda!219287) (not d!1831315)))

(declare-fun m!6754578 () Bool)

(assert (=> d!1831315 m!6754578))

(assert (=> d!1831315 m!6754522))

(declare-fun m!6754580 () Bool)

(assert (=> b!5818476 m!6754580))

(declare-fun m!6754582 () Bool)

(assert (=> b!5818479 m!6754582))

(declare-fun m!6754584 () Bool)

(assert (=> b!5818478 m!6754584))

(declare-fun m!6754586 () Bool)

(assert (=> b!5818477 m!6754586))

(assert (=> b!5818341 d!1831315))

(declare-fun d!1831319 () Bool)

(declare-fun lt!2301803 () Int)

(assert (=> d!1831319 (>= lt!2301803 0)))

(declare-fun e!3570999 () Int)

(assert (=> d!1831319 (= lt!2301803 e!3570999)))

(declare-fun c!1031086 () Bool)

(assert (=> d!1831319 (= c!1031086 (is-Cons!63739 zl!343))))

(assert (=> d!1831319 (= (zipperDepthTotal!263 zl!343) lt!2301803)))

(declare-fun b!5818484 () Bool)

(assert (=> b!5818484 (= e!3570999 (+ (contextDepthTotal!241 (h!70187 zl!343)) (zipperDepthTotal!263 (t!377218 zl!343))))))

(declare-fun b!5818485 () Bool)

(assert (=> b!5818485 (= e!3570999 0)))

(assert (= (and d!1831319 c!1031086) b!5818484))

(assert (= (and d!1831319 (not c!1031086)) b!5818485))

(declare-fun m!6754588 () Bool)

(assert (=> b!5818484 m!6754588))

(declare-fun m!6754590 () Bool)

(assert (=> b!5818484 m!6754590))

(assert (=> b!5818341 d!1831319))

(declare-fun d!1831321 () Bool)

(assert (=> d!1831321 (< (contextDepthTotal!241 lt!2301756) (zipperDepthTotal!263 zl!343))))

(declare-fun lt!2301806 () Unit!156974)

(declare-fun choose!44225 (List!63863 Context!10476) Unit!156974)

(assert (=> d!1831321 (= lt!2301806 (choose!44225 zl!343 lt!2301756))))

(assert (=> d!1831321 (contains!19896 zl!343 lt!2301756)))

(assert (=> d!1831321 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!25 zl!343 lt!2301756) lt!2301806)))

(declare-fun bs!1372922 () Bool)

(assert (= bs!1372922 d!1831321))

(assert (=> bs!1372922 m!6754494))

(assert (=> bs!1372922 m!6754500))

(declare-fun m!6754592 () Bool)

(assert (=> bs!1372922 m!6754592))

(declare-fun m!6754594 () Bool)

(assert (=> bs!1372922 m!6754594))

(assert (=> b!5818341 d!1831321))

(declare-fun d!1831323 () Bool)

(declare-fun lt!2301809 () Int)

(assert (=> d!1831323 (>= lt!2301809 0)))

(declare-fun e!3571002 () Int)

(assert (=> d!1831323 (= lt!2301809 e!3571002)))

(declare-fun c!1031091 () Bool)

(assert (=> d!1831323 (= c!1031091 (is-Cons!63737 (exprs!5738 lt!2301756)))))

(assert (=> d!1831323 (= (contextDepthTotal!241 lt!2301756) lt!2301809)))

(declare-fun b!5818490 () Bool)

(declare-fun regexDepthTotal!108 (Regex!15854) Int)

(assert (=> b!5818490 (= e!3571002 (+ (regexDepthTotal!108 (h!70185 (exprs!5738 lt!2301756))) (contextDepthTotal!241 (Context!10477 (t!377216 (exprs!5738 lt!2301756))))))))

(declare-fun b!5818491 () Bool)

(assert (=> b!5818491 (= e!3571002 1)))

(assert (= (and d!1831323 c!1031091) b!5818490))

(assert (= (and d!1831323 (not c!1031091)) b!5818491))

(declare-fun m!6754596 () Bool)

(assert (=> b!5818490 m!6754596))

(declare-fun m!6754598 () Bool)

(assert (=> b!5818490 m!6754598))

(assert (=> b!5818341 d!1831323))

(declare-fun d!1831325 () Bool)

(declare-fun lt!2301810 () Int)

(assert (=> d!1831325 (>= lt!2301810 0)))

(declare-fun e!3571003 () Int)

(assert (=> d!1831325 (= lt!2301810 e!3571003)))

(declare-fun c!1031092 () Bool)

(assert (=> d!1831325 (= c!1031092 (is-Cons!63739 (Cons!63739 lt!2301756 Nil!63739)))))

(assert (=> d!1831325 (= (zipperDepthTotal!263 (Cons!63739 lt!2301756 Nil!63739)) lt!2301810)))

(declare-fun b!5818492 () Bool)

(assert (=> b!5818492 (= e!3571003 (+ (contextDepthTotal!241 (h!70187 (Cons!63739 lt!2301756 Nil!63739))) (zipperDepthTotal!263 (t!377218 (Cons!63739 lt!2301756 Nil!63739)))))))

(declare-fun b!5818493 () Bool)

(assert (=> b!5818493 (= e!3571003 0)))

(assert (= (and d!1831325 c!1031092) b!5818492))

(assert (= (and d!1831325 (not c!1031092)) b!5818493))

(declare-fun m!6754600 () Bool)

(assert (=> b!5818492 m!6754600))

(declare-fun m!6754602 () Bool)

(assert (=> b!5818492 m!6754602))

(assert (=> b!5818341 d!1831325))

(assert (=> b!5818355 d!1831313))

(declare-fun d!1831327 () Bool)

(declare-fun lt!2301813 () Regex!15854)

(assert (=> d!1831327 (validRegex!7590 lt!2301813)))

(declare-fun generalisedUnion!1707 (List!63861) Regex!15854)

(assert (=> d!1831327 (= lt!2301813 (generalisedUnion!1707 (unfocusZipperList!1276 zl!343)))))

(assert (=> d!1831327 (= (unfocusZipper!1596 zl!343) lt!2301813)))

(declare-fun bs!1372923 () Bool)

(assert (= bs!1372923 d!1831327))

(declare-fun m!6754604 () Bool)

(assert (=> bs!1372923 m!6754604))

(assert (=> bs!1372923 m!6754510))

(assert (=> bs!1372923 m!6754510))

(declare-fun m!6754606 () Bool)

(assert (=> bs!1372923 m!6754606))

(assert (=> b!5818344 d!1831327))

(declare-fun b!5818554 () Bool)

(assert (=> b!5818554 true))

(assert (=> b!5818554 true))

(declare-fun bs!1372924 () Bool)

(declare-fun b!5818560 () Bool)

(assert (= bs!1372924 (and b!5818560 b!5818554)))

(declare-fun lambda!318276 () Int)

(declare-fun lambda!318275 () Int)

(assert (=> bs!1372924 (not (= lambda!318276 lambda!318275))))

(assert (=> b!5818560 true))

(assert (=> b!5818560 true))

(declare-fun e!3571037 () Bool)

(declare-fun call!454399 () Bool)

(assert (=> b!5818554 (= e!3571037 call!454399)))

(declare-fun b!5818555 () Bool)

(declare-fun e!3571042 () Bool)

(declare-fun call!454398 () Bool)

(assert (=> b!5818555 (= e!3571042 call!454398)))

(declare-fun bm!454393 () Bool)

(declare-fun c!1031107 () Bool)

(declare-fun Exists!2944 (Int) Bool)

(assert (=> bm!454393 (= call!454399 (Exists!2944 (ite c!1031107 lambda!318275 lambda!318276)))))

(declare-fun b!5818556 () Bool)

(declare-fun e!3571040 () Bool)

(assert (=> b!5818556 (= e!3571040 (matchRSpec!2957 (regTwo!32221 r!7292) s!2326))))

(declare-fun b!5818557 () Bool)

(declare-fun e!3571039 () Bool)

(assert (=> b!5818557 (= e!3571039 e!3571040)))

(declare-fun res!2453753 () Bool)

(assert (=> b!5818557 (= res!2453753 (matchRSpec!2957 (regOne!32221 r!7292) s!2326))))

(assert (=> b!5818557 (=> res!2453753 e!3571040)))

(declare-fun d!1831329 () Bool)

(declare-fun c!1031109 () Bool)

(assert (=> d!1831329 (= c!1031109 (is-EmptyExpr!15854 r!7292))))

(assert (=> d!1831329 (= (matchRSpec!2957 r!7292 s!2326) e!3571042)))

(declare-fun b!5818558 () Bool)

(declare-fun c!1031110 () Bool)

(assert (=> b!5818558 (= c!1031110 (is-Union!15854 r!7292))))

(declare-fun e!3571036 () Bool)

(assert (=> b!5818558 (= e!3571036 e!3571039)))

(declare-fun bm!454394 () Bool)

(declare-fun isEmpty!35635 (List!63862) Bool)

(assert (=> bm!454394 (= call!454398 (isEmpty!35635 s!2326))))

(declare-fun b!5818559 () Bool)

(declare-fun res!2453752 () Bool)

(assert (=> b!5818559 (=> res!2453752 e!3571037)))

(assert (=> b!5818559 (= res!2453752 call!454398)))

(declare-fun e!3571038 () Bool)

(assert (=> b!5818559 (= e!3571038 e!3571037)))

(assert (=> b!5818560 (= e!3571038 call!454399)))

(declare-fun b!5818561 () Bool)

(assert (=> b!5818561 (= e!3571036 (= s!2326 (Cons!63738 (c!1031068 r!7292) Nil!63738)))))

(declare-fun b!5818562 () Bool)

(declare-fun c!1031108 () Bool)

(assert (=> b!5818562 (= c!1031108 (is-ElementMatch!15854 r!7292))))

(declare-fun e!3571041 () Bool)

(assert (=> b!5818562 (= e!3571041 e!3571036)))

(declare-fun b!5818563 () Bool)

(assert (=> b!5818563 (= e!3571039 e!3571038)))

(assert (=> b!5818563 (= c!1031107 (is-Star!15854 r!7292))))

(declare-fun b!5818564 () Bool)

(assert (=> b!5818564 (= e!3571042 e!3571041)))

(declare-fun res!2453754 () Bool)

(assert (=> b!5818564 (= res!2453754 (not (is-EmptyLang!15854 r!7292)))))

(assert (=> b!5818564 (=> (not res!2453754) (not e!3571041))))

(assert (= (and d!1831329 c!1031109) b!5818555))

(assert (= (and d!1831329 (not c!1031109)) b!5818564))

(assert (= (and b!5818564 res!2453754) b!5818562))

(assert (= (and b!5818562 c!1031108) b!5818561))

(assert (= (and b!5818562 (not c!1031108)) b!5818558))

(assert (= (and b!5818558 c!1031110) b!5818557))

(assert (= (and b!5818558 (not c!1031110)) b!5818563))

(assert (= (and b!5818557 (not res!2453753)) b!5818556))

(assert (= (and b!5818563 c!1031107) b!5818559))

(assert (= (and b!5818563 (not c!1031107)) b!5818560))

(assert (= (and b!5818559 (not res!2453752)) b!5818554))

(assert (= (or b!5818554 b!5818560) bm!454393))

(assert (= (or b!5818555 b!5818559) bm!454394))

(declare-fun m!6754608 () Bool)

(assert (=> bm!454393 m!6754608))

(declare-fun m!6754610 () Bool)

(assert (=> b!5818556 m!6754610))

(declare-fun m!6754612 () Bool)

(assert (=> b!5818557 m!6754612))

(declare-fun m!6754614 () Bool)

(assert (=> bm!454394 m!6754614))

(assert (=> b!5818354 d!1831329))

(declare-fun b!5818613 () Bool)

(declare-fun e!3571069 () Bool)

(declare-fun e!3571070 () Bool)

(assert (=> b!5818613 (= e!3571069 e!3571070)))

(declare-fun res!2453783 () Bool)

(assert (=> b!5818613 (=> res!2453783 e!3571070)))

(declare-fun call!454403 () Bool)

(assert (=> b!5818613 (= res!2453783 call!454403)))

(declare-fun b!5818614 () Bool)

(declare-fun e!3571066 () Bool)

(declare-fun derivativeStep!4609 (Regex!15854 C!31978) Regex!15854)

(declare-fun head!12293 (List!63862) C!31978)

(declare-fun tail!11381 (List!63862) List!63862)

(assert (=> b!5818614 (= e!3571066 (matchR!8039 (derivativeStep!4609 r!7292 (head!12293 s!2326)) (tail!11381 s!2326)))))

(declare-fun b!5818615 () Bool)

(assert (=> b!5818615 (= e!3571066 (nullable!5868 r!7292))))

(declare-fun b!5818616 () Bool)

(declare-fun e!3571065 () Bool)

(assert (=> b!5818616 (= e!3571065 (= (head!12293 s!2326) (c!1031068 r!7292)))))

(declare-fun b!5818617 () Bool)

(declare-fun res!2453779 () Bool)

(assert (=> b!5818617 (=> (not res!2453779) (not e!3571065))))

(assert (=> b!5818617 (= res!2453779 (not call!454403))))

(declare-fun b!5818618 () Bool)

(declare-fun e!3571067 () Bool)

(declare-fun lt!2301819 () Bool)

(assert (=> b!5818618 (= e!3571067 (= lt!2301819 call!454403))))

(declare-fun b!5818619 () Bool)

(assert (=> b!5818619 (= e!3571070 (not (= (head!12293 s!2326) (c!1031068 r!7292))))))

(declare-fun b!5818620 () Bool)

(declare-fun res!2453780 () Bool)

(assert (=> b!5818620 (=> (not res!2453780) (not e!3571065))))

(assert (=> b!5818620 (= res!2453780 (isEmpty!35635 (tail!11381 s!2326)))))

(declare-fun b!5818621 () Bool)

(declare-fun e!3571064 () Bool)

(assert (=> b!5818621 (= e!3571064 (not lt!2301819))))

(declare-fun b!5818622 () Bool)

(declare-fun e!3571068 () Bool)

(assert (=> b!5818622 (= e!3571068 e!3571069)))

(declare-fun res!2453781 () Bool)

(assert (=> b!5818622 (=> (not res!2453781) (not e!3571069))))

(assert (=> b!5818622 (= res!2453781 (not lt!2301819))))

(declare-fun b!5818623 () Bool)

(assert (=> b!5818623 (= e!3571067 e!3571064)))

(declare-fun c!1031120 () Bool)

(assert (=> b!5818623 (= c!1031120 (is-EmptyLang!15854 r!7292))))

(declare-fun b!5818624 () Bool)

(declare-fun res!2453782 () Bool)

(assert (=> b!5818624 (=> res!2453782 e!3571068)))

(assert (=> b!5818624 (= res!2453782 e!3571065)))

(declare-fun res!2453784 () Bool)

(assert (=> b!5818624 (=> (not res!2453784) (not e!3571065))))

(assert (=> b!5818624 (= res!2453784 lt!2301819)))

(declare-fun b!5818625 () Bool)

(declare-fun res!2453786 () Bool)

(assert (=> b!5818625 (=> res!2453786 e!3571068)))

(assert (=> b!5818625 (= res!2453786 (not (is-ElementMatch!15854 r!7292)))))

(assert (=> b!5818625 (= e!3571064 e!3571068)))

(declare-fun b!5818626 () Bool)

(declare-fun res!2453785 () Bool)

(assert (=> b!5818626 (=> res!2453785 e!3571070)))

(assert (=> b!5818626 (= res!2453785 (not (isEmpty!35635 (tail!11381 s!2326))))))

(declare-fun d!1831331 () Bool)

(assert (=> d!1831331 e!3571067))

(declare-fun c!1031122 () Bool)

(assert (=> d!1831331 (= c!1031122 (is-EmptyExpr!15854 r!7292))))

(assert (=> d!1831331 (= lt!2301819 e!3571066)))

(declare-fun c!1031121 () Bool)

(assert (=> d!1831331 (= c!1031121 (isEmpty!35635 s!2326))))

(assert (=> d!1831331 (validRegex!7590 r!7292)))

(assert (=> d!1831331 (= (matchR!8039 r!7292 s!2326) lt!2301819)))

(declare-fun bm!454398 () Bool)

(assert (=> bm!454398 (= call!454403 (isEmpty!35635 s!2326))))

(assert (= (and d!1831331 c!1031121) b!5818615))

(assert (= (and d!1831331 (not c!1031121)) b!5818614))

(assert (= (and d!1831331 c!1031122) b!5818618))

(assert (= (and d!1831331 (not c!1031122)) b!5818623))

(assert (= (and b!5818623 c!1031120) b!5818621))

(assert (= (and b!5818623 (not c!1031120)) b!5818625))

(assert (= (and b!5818625 (not res!2453786)) b!5818624))

(assert (= (and b!5818624 res!2453784) b!5818617))

(assert (= (and b!5818617 res!2453779) b!5818620))

(assert (= (and b!5818620 res!2453780) b!5818616))

(assert (= (and b!5818624 (not res!2453782)) b!5818622))

(assert (= (and b!5818622 res!2453781) b!5818613))

(assert (= (and b!5818613 (not res!2453783)) b!5818626))

(assert (= (and b!5818626 (not res!2453785)) b!5818619))

(assert (= (or b!5818618 b!5818613 b!5818617) bm!454398))

(declare-fun m!6754632 () Bool)

(assert (=> b!5818626 m!6754632))

(assert (=> b!5818626 m!6754632))

(declare-fun m!6754634 () Bool)

(assert (=> b!5818626 m!6754634))

(assert (=> d!1831331 m!6754614))

(assert (=> d!1831331 m!6754484))

(assert (=> bm!454398 m!6754614))

(declare-fun m!6754636 () Bool)

(assert (=> b!5818615 m!6754636))

(assert (=> b!5818620 m!6754632))

(assert (=> b!5818620 m!6754632))

(assert (=> b!5818620 m!6754634))

(declare-fun m!6754638 () Bool)

(assert (=> b!5818616 m!6754638))

(assert (=> b!5818614 m!6754638))

(assert (=> b!5818614 m!6754638))

(declare-fun m!6754640 () Bool)

(assert (=> b!5818614 m!6754640))

(assert (=> b!5818614 m!6754632))

(assert (=> b!5818614 m!6754640))

(assert (=> b!5818614 m!6754632))

(declare-fun m!6754642 () Bool)

(assert (=> b!5818614 m!6754642))

(assert (=> b!5818619 m!6754638))

(assert (=> b!5818354 d!1831331))

(declare-fun d!1831337 () Bool)

(assert (=> d!1831337 (= (matchR!8039 r!7292 s!2326) (matchRSpec!2957 r!7292 s!2326))))

(declare-fun lt!2301822 () Unit!156974)

(declare-fun choose!44226 (Regex!15854 List!63862) Unit!156974)

(assert (=> d!1831337 (= lt!2301822 (choose!44226 r!7292 s!2326))))

(assert (=> d!1831337 (validRegex!7590 r!7292)))

(assert (=> d!1831337 (= (mainMatchTheorem!2957 r!7292 s!2326) lt!2301822)))

(declare-fun bs!1372927 () Bool)

(assert (= bs!1372927 d!1831337))

(assert (=> bs!1372927 m!6754488))

(assert (=> bs!1372927 m!6754486))

(declare-fun m!6754644 () Bool)

(assert (=> bs!1372927 m!6754644))

(assert (=> bs!1372927 m!6754484))

(assert (=> b!5818354 d!1831337))

(declare-fun b!5818645 () Bool)

(declare-fun e!3571090 () Bool)

(declare-fun e!3571091 () Bool)

(assert (=> b!5818645 (= e!3571090 e!3571091)))

(declare-fun res!2453801 () Bool)

(assert (=> b!5818645 (=> res!2453801 e!3571091)))

(declare-fun call!454410 () Bool)

(assert (=> b!5818645 (= res!2453801 call!454410)))

(declare-fun b!5818646 () Bool)

(declare-fun e!3571087 () Bool)

(assert (=> b!5818646 (= e!3571087 (matchR!8039 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)) (tail!11381 s!2326)))))

(declare-fun b!5818647 () Bool)

(assert (=> b!5818647 (= e!3571087 (nullable!5868 lt!2301761))))

(declare-fun b!5818648 () Bool)

(declare-fun e!3571086 () Bool)

(assert (=> b!5818648 (= e!3571086 (= (head!12293 s!2326) (c!1031068 lt!2301761)))))

(declare-fun b!5818649 () Bool)

(declare-fun res!2453797 () Bool)

(assert (=> b!5818649 (=> (not res!2453797) (not e!3571086))))

(assert (=> b!5818649 (= res!2453797 (not call!454410))))

(declare-fun b!5818650 () Bool)

(declare-fun e!3571088 () Bool)

(declare-fun lt!2301823 () Bool)

(assert (=> b!5818650 (= e!3571088 (= lt!2301823 call!454410))))

(declare-fun b!5818651 () Bool)

(assert (=> b!5818651 (= e!3571091 (not (= (head!12293 s!2326) (c!1031068 lt!2301761))))))

(declare-fun b!5818652 () Bool)

(declare-fun res!2453798 () Bool)

(assert (=> b!5818652 (=> (not res!2453798) (not e!3571086))))

(assert (=> b!5818652 (= res!2453798 (isEmpty!35635 (tail!11381 s!2326)))))

(declare-fun b!5818653 () Bool)

(declare-fun e!3571085 () Bool)

(assert (=> b!5818653 (= e!3571085 (not lt!2301823))))

(declare-fun b!5818654 () Bool)

(declare-fun e!3571089 () Bool)

(assert (=> b!5818654 (= e!3571089 e!3571090)))

(declare-fun res!2453799 () Bool)

(assert (=> b!5818654 (=> (not res!2453799) (not e!3571090))))

(assert (=> b!5818654 (= res!2453799 (not lt!2301823))))

(declare-fun b!5818655 () Bool)

(assert (=> b!5818655 (= e!3571088 e!3571085)))

(declare-fun c!1031127 () Bool)

(assert (=> b!5818655 (= c!1031127 (is-EmptyLang!15854 lt!2301761))))

(declare-fun b!5818656 () Bool)

(declare-fun res!2453800 () Bool)

(assert (=> b!5818656 (=> res!2453800 e!3571089)))

(assert (=> b!5818656 (= res!2453800 e!3571086)))

(declare-fun res!2453802 () Bool)

(assert (=> b!5818656 (=> (not res!2453802) (not e!3571086))))

(assert (=> b!5818656 (= res!2453802 lt!2301823)))

(declare-fun b!5818657 () Bool)

(declare-fun res!2453804 () Bool)

(assert (=> b!5818657 (=> res!2453804 e!3571089)))

(assert (=> b!5818657 (= res!2453804 (not (is-ElementMatch!15854 lt!2301761)))))

(assert (=> b!5818657 (= e!3571085 e!3571089)))

(declare-fun b!5818658 () Bool)

(declare-fun res!2453803 () Bool)

(assert (=> b!5818658 (=> res!2453803 e!3571091)))

(assert (=> b!5818658 (= res!2453803 (not (isEmpty!35635 (tail!11381 s!2326))))))

(declare-fun d!1831339 () Bool)

(assert (=> d!1831339 e!3571088))

(declare-fun c!1031129 () Bool)

(assert (=> d!1831339 (= c!1031129 (is-EmptyExpr!15854 lt!2301761))))

(assert (=> d!1831339 (= lt!2301823 e!3571087)))

(declare-fun c!1031128 () Bool)

(assert (=> d!1831339 (= c!1031128 (isEmpty!35635 s!2326))))

(assert (=> d!1831339 (validRegex!7590 lt!2301761)))

(assert (=> d!1831339 (= (matchR!8039 lt!2301761 s!2326) lt!2301823)))

(declare-fun bm!454405 () Bool)

(assert (=> bm!454405 (= call!454410 (isEmpty!35635 s!2326))))

(assert (= (and d!1831339 c!1031128) b!5818647))

(assert (= (and d!1831339 (not c!1031128)) b!5818646))

(assert (= (and d!1831339 c!1031129) b!5818650))

(assert (= (and d!1831339 (not c!1031129)) b!5818655))

(assert (= (and b!5818655 c!1031127) b!5818653))

(assert (= (and b!5818655 (not c!1031127)) b!5818657))

(assert (= (and b!5818657 (not res!2453804)) b!5818656))

(assert (= (and b!5818656 res!2453802) b!5818649))

(assert (= (and b!5818649 res!2453797) b!5818652))

(assert (= (and b!5818652 res!2453798) b!5818648))

(assert (= (and b!5818656 (not res!2453800)) b!5818654))

(assert (= (and b!5818654 res!2453799) b!5818645))

(assert (= (and b!5818645 (not res!2453801)) b!5818658))

(assert (= (and b!5818658 (not res!2453803)) b!5818651))

(assert (= (or b!5818650 b!5818645 b!5818649) bm!454405))

(assert (=> b!5818658 m!6754632))

(assert (=> b!5818658 m!6754632))

(assert (=> b!5818658 m!6754634))

(assert (=> d!1831339 m!6754614))

(assert (=> d!1831339 m!6754480))

(assert (=> bm!454405 m!6754614))

(declare-fun m!6754646 () Bool)

(assert (=> b!5818647 m!6754646))

(assert (=> b!5818652 m!6754632))

(assert (=> b!5818652 m!6754632))

(assert (=> b!5818652 m!6754634))

(assert (=> b!5818648 m!6754638))

(assert (=> b!5818646 m!6754638))

(assert (=> b!5818646 m!6754638))

(declare-fun m!6754648 () Bool)

(assert (=> b!5818646 m!6754648))

(assert (=> b!5818646 m!6754632))

(assert (=> b!5818646 m!6754648))

(assert (=> b!5818646 m!6754632))

(declare-fun m!6754650 () Bool)

(assert (=> b!5818646 m!6754650))

(assert (=> b!5818651 m!6754638))

(assert (=> b!5818353 d!1831339))

(declare-fun d!1831341 () Bool)

(declare-fun e!3571094 () Bool)

(assert (=> d!1831341 e!3571094))

(declare-fun res!2453807 () Bool)

(assert (=> d!1831341 (=> (not res!2453807) (not e!3571094))))

(declare-fun lt!2301826 () List!63863)

(declare-fun noDuplicate!1735 (List!63863) Bool)

(assert (=> d!1831341 (= res!2453807 (noDuplicate!1735 lt!2301826))))

(declare-fun choose!44227 ((Set Context!10476)) List!63863)

(assert (=> d!1831341 (= lt!2301826 (choose!44227 z!1189))))

(assert (=> d!1831341 (= (toList!9638 z!1189) lt!2301826)))

(declare-fun b!5818661 () Bool)

(declare-fun content!11699 (List!63863) (Set Context!10476))

(assert (=> b!5818661 (= e!3571094 (= (content!11699 lt!2301826) z!1189))))

(assert (= (and d!1831341 res!2453807) b!5818661))

(declare-fun m!6754652 () Bool)

(assert (=> d!1831341 m!6754652))

(declare-fun m!6754654 () Bool)

(assert (=> d!1831341 m!6754654))

(declare-fun m!6754656 () Bool)

(assert (=> b!5818661 m!6754656))

(assert (=> b!5818347 d!1831341))

(declare-fun b!5818662 () Bool)

(declare-fun e!3571100 () Bool)

(declare-fun e!3571095 () Bool)

(assert (=> b!5818662 (= e!3571100 e!3571095)))

(declare-fun c!1031131 () Bool)

(assert (=> b!5818662 (= c!1031131 (is-Union!15854 lt!2301761))))

(declare-fun b!5818663 () Bool)

(declare-fun res!2453812 () Bool)

(declare-fun e!3571096 () Bool)

(assert (=> b!5818663 (=> res!2453812 e!3571096)))

(assert (=> b!5818663 (= res!2453812 (not (is-Concat!24699 lt!2301761)))))

(assert (=> b!5818663 (= e!3571095 e!3571096)))

(declare-fun bm!454407 () Bool)

(declare-fun call!454413 () Bool)

(assert (=> bm!454407 (= call!454413 (validRegex!7590 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))

(declare-fun b!5818664 () Bool)

(declare-fun e!3571101 () Bool)

(assert (=> b!5818664 (= e!3571096 e!3571101)))

(declare-fun res!2453811 () Bool)

(assert (=> b!5818664 (=> (not res!2453811) (not e!3571101))))

(declare-fun call!454412 () Bool)

(assert (=> b!5818664 (= res!2453811 call!454412)))

(declare-fun b!5818665 () Bool)

(declare-fun e!3571097 () Bool)

(assert (=> b!5818665 (= e!3571100 e!3571097)))

(declare-fun res!2453808 () Bool)

(assert (=> b!5818665 (= res!2453808 (not (nullable!5868 (reg!16183 lt!2301761))))))

(assert (=> b!5818665 (=> (not res!2453808) (not e!3571097))))

(declare-fun b!5818666 () Bool)

(declare-fun e!3571099 () Bool)

(assert (=> b!5818666 (= e!3571099 call!454413)))

(declare-fun b!5818667 () Bool)

(declare-fun call!454411 () Bool)

(assert (=> b!5818667 (= e!3571097 call!454411)))

(declare-fun b!5818668 () Bool)

(declare-fun e!3571098 () Bool)

(assert (=> b!5818668 (= e!3571098 e!3571100)))

(declare-fun c!1031130 () Bool)

(assert (=> b!5818668 (= c!1031130 (is-Star!15854 lt!2301761))))

(declare-fun b!5818669 () Bool)

(declare-fun res!2453809 () Bool)

(assert (=> b!5818669 (=> (not res!2453809) (not e!3571099))))

(assert (=> b!5818669 (= res!2453809 call!454412)))

(assert (=> b!5818669 (= e!3571095 e!3571099)))

(declare-fun b!5818670 () Bool)

(assert (=> b!5818670 (= e!3571101 call!454413)))

(declare-fun bm!454408 () Bool)

(assert (=> bm!454408 (= call!454411 (validRegex!7590 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))

(declare-fun d!1831343 () Bool)

(declare-fun res!2453810 () Bool)

(assert (=> d!1831343 (=> res!2453810 e!3571098)))

(assert (=> d!1831343 (= res!2453810 (is-ElementMatch!15854 lt!2301761))))

(assert (=> d!1831343 (= (validRegex!7590 lt!2301761) e!3571098)))

(declare-fun bm!454406 () Bool)

(assert (=> bm!454406 (= call!454412 call!454411)))

(assert (= (and d!1831343 (not res!2453810)) b!5818668))

(assert (= (and b!5818668 c!1031130) b!5818665))

(assert (= (and b!5818668 (not c!1031130)) b!5818662))

(assert (= (and b!5818665 res!2453808) b!5818667))

(assert (= (and b!5818662 c!1031131) b!5818669))

(assert (= (and b!5818662 (not c!1031131)) b!5818663))

(assert (= (and b!5818669 res!2453809) b!5818666))

(assert (= (and b!5818663 (not res!2453812)) b!5818664))

(assert (= (and b!5818664 res!2453811) b!5818670))

(assert (= (or b!5818666 b!5818670) bm!454407))

(assert (= (or b!5818669 b!5818664) bm!454406))

(assert (= (or b!5818667 bm!454406) bm!454408))

(declare-fun m!6754658 () Bool)

(assert (=> bm!454407 m!6754658))

(declare-fun m!6754660 () Bool)

(assert (=> b!5818665 m!6754660))

(declare-fun m!6754662 () Bool)

(assert (=> bm!454408 m!6754662))

(assert (=> b!5818357 d!1831343))

(declare-fun bs!1372928 () Bool)

(declare-fun d!1831345 () Bool)

(assert (= bs!1372928 (and d!1831345 b!5818338)))

(declare-fun lambda!318282 () Int)

(assert (=> bs!1372928 (not (= lambda!318282 lambda!318255))))

(assert (=> d!1831345 true))

(declare-fun order!27227 () Int)

(declare-fun dynLambda!24950 (Int Int) Int)

(assert (=> d!1831345 (< (dynLambda!24950 order!27227 lambda!318255) (dynLambda!24950 order!27227 lambda!318282))))

(declare-fun forall!14948 (List!63861 Int) Bool)

(assert (=> d!1831345 (= (exists!2272 lt!2301764 lambda!318255) (not (forall!14948 lt!2301764 lambda!318282)))))

(declare-fun bs!1372929 () Bool)

(assert (= bs!1372929 d!1831345))

(declare-fun m!6754664 () Bool)

(assert (=> bs!1372929 m!6754664))

(assert (=> b!5818338 d!1831345))

(declare-fun bs!1372930 () Bool)

(declare-fun d!1831347 () Bool)

(assert (= bs!1372930 (and d!1831347 b!5818338)))

(declare-fun lambda!318287 () Int)

(assert (=> bs!1372930 (not (= lambda!318287 lambda!318255))))

(declare-fun bs!1372931 () Bool)

(assert (= bs!1372931 (and d!1831347 d!1831345)))

(assert (=> bs!1372931 (not (= lambda!318287 lambda!318282))))

(declare-fun lambda!318288 () Int)

(assert (=> bs!1372930 (= lambda!318288 lambda!318255)))

(assert (=> bs!1372931 (not (= lambda!318288 lambda!318282))))

(declare-fun bs!1372932 () Bool)

(assert (= bs!1372932 d!1831347))

(assert (=> bs!1372932 (not (= lambda!318288 lambda!318287))))

(assert (=> d!1831347 true))

(assert (=> d!1831347 (= (matchR!8039 r!7292 s!2326) (exists!2272 lt!2301764 lambda!318288))))

(declare-fun lt!2301831 () Unit!156974)

(declare-fun choose!44228 (Regex!15854 List!63861 List!63862) Unit!156974)

(assert (=> d!1831347 (= lt!2301831 (choose!44228 r!7292 lt!2301764 s!2326))))

(assert (=> d!1831347 (forall!14948 lt!2301764 lambda!318287)))

(assert (=> d!1831347 (= (matchRGenUnionSpec!295 r!7292 lt!2301764 s!2326) lt!2301831)))

(assert (=> bs!1372932 m!6754488))

(declare-fun m!6754672 () Bool)

(assert (=> bs!1372932 m!6754672))

(declare-fun m!6754674 () Bool)

(assert (=> bs!1372932 m!6754674))

(declare-fun m!6754676 () Bool)

(assert (=> bs!1372932 m!6754676))

(assert (=> b!5818338 d!1831347))

(declare-fun bs!1372933 () Bool)

(declare-fun d!1831351 () Bool)

(assert (= bs!1372933 (and d!1831351 b!5818338)))

(declare-fun lambda!318291 () Int)

(assert (=> bs!1372933 (not (= lambda!318291 lambda!318255))))

(declare-fun bs!1372934 () Bool)

(assert (= bs!1372934 (and d!1831351 d!1831345)))

(assert (=> bs!1372934 (not (= lambda!318291 lambda!318282))))

(declare-fun bs!1372935 () Bool)

(assert (= bs!1372935 (and d!1831351 d!1831347)))

(assert (=> bs!1372935 (= lambda!318291 lambda!318287)))

(assert (=> bs!1372935 (not (= lambda!318291 lambda!318288))))

(declare-fun lt!2301835 () List!63861)

(assert (=> d!1831351 (forall!14948 lt!2301835 lambda!318291)))

(declare-fun e!3571119 () List!63861)

(assert (=> d!1831351 (= lt!2301835 e!3571119)))

(declare-fun c!1031136 () Bool)

(assert (=> d!1831351 (= c!1031136 (is-Cons!63739 zl!343))))

(assert (=> d!1831351 (= (unfocusZipperList!1276 zl!343) lt!2301835)))

(declare-fun b!5818694 () Bool)

(declare-fun generalisedConcat!1459 (List!63861) Regex!15854)

(assert (=> b!5818694 (= e!3571119 (Cons!63737 (generalisedConcat!1459 (exprs!5738 (h!70187 zl!343))) (unfocusZipperList!1276 (t!377218 zl!343))))))

(declare-fun b!5818695 () Bool)

(assert (=> b!5818695 (= e!3571119 Nil!63737)))

(assert (= (and d!1831351 c!1031136) b!5818694))

(assert (= (and d!1831351 (not c!1031136)) b!5818695))

(declare-fun m!6754684 () Bool)

(assert (=> d!1831351 m!6754684))

(declare-fun m!6754686 () Bool)

(assert (=> b!5818694 m!6754686))

(declare-fun m!6754688 () Bool)

(assert (=> b!5818694 m!6754688))

(assert (=> b!5818338 d!1831351))

(declare-fun d!1831355 () Bool)

(declare-fun lt!2301838 () Bool)

(declare-fun content!11700 (List!63861) (Set Regex!15854))

(assert (=> d!1831355 (= lt!2301838 (set.member lt!2301761 (content!11700 lt!2301764)))))

(declare-fun e!3571125 () Bool)

(assert (=> d!1831355 (= lt!2301838 e!3571125)))

(declare-fun res!2453830 () Bool)

(assert (=> d!1831355 (=> (not res!2453830) (not e!3571125))))

(assert (=> d!1831355 (= res!2453830 (is-Cons!63737 lt!2301764))))

(assert (=> d!1831355 (= (contains!19894 lt!2301764 lt!2301761) lt!2301838)))

(declare-fun b!5818700 () Bool)

(declare-fun e!3571124 () Bool)

(assert (=> b!5818700 (= e!3571125 e!3571124)))

(declare-fun res!2453831 () Bool)

(assert (=> b!5818700 (=> res!2453831 e!3571124)))

(assert (=> b!5818700 (= res!2453831 (= (h!70185 lt!2301764) lt!2301761))))

(declare-fun b!5818701 () Bool)

(assert (=> b!5818701 (= e!3571124 (contains!19894 (t!377216 lt!2301764) lt!2301761))))

(assert (= (and d!1831355 res!2453830) b!5818700))

(assert (= (and b!5818700 (not res!2453831)) b!5818701))

(declare-fun m!6754690 () Bool)

(assert (=> d!1831355 m!6754690))

(declare-fun m!6754692 () Bool)

(assert (=> d!1831355 m!6754692))

(declare-fun m!6754694 () Bool)

(assert (=> b!5818701 m!6754694))

(assert (=> b!5818346 d!1831355))

(declare-fun b!5818726 () Bool)

(declare-fun e!3571143 () Regex!15854)

(assert (=> b!5818726 (= e!3571143 (h!70185 lt!2301764))))

(declare-fun b!5818727 () Bool)

(declare-fun e!3571145 () Bool)

(declare-fun lt!2301847 () Regex!15854)

(assert (=> b!5818727 (= e!3571145 (contains!19894 lt!2301764 lt!2301847))))

(declare-fun b!5818728 () Bool)

(declare-fun e!3571144 () Regex!15854)

(assert (=> b!5818728 (= e!3571143 e!3571144)))

(declare-fun c!1031145 () Bool)

(assert (=> b!5818728 (= c!1031145 (is-Cons!63737 lt!2301764))))

(declare-fun b!5818729 () Bool)

(assert (=> b!5818729 (= e!3571144 (getWitness!922 (t!377216 lt!2301764) lambda!318255))))

(declare-fun d!1831357 () Bool)

(assert (=> d!1831357 e!3571145))

(declare-fun res!2453841 () Bool)

(assert (=> d!1831357 (=> (not res!2453841) (not e!3571145))))

(declare-fun dynLambda!24951 (Int Regex!15854) Bool)

(assert (=> d!1831357 (= res!2453841 (dynLambda!24951 lambda!318255 lt!2301847))))

(assert (=> d!1831357 (= lt!2301847 e!3571143)))

(declare-fun c!1031146 () Bool)

(declare-fun e!3571142 () Bool)

(assert (=> d!1831357 (= c!1031146 e!3571142)))

(declare-fun res!2453840 () Bool)

(assert (=> d!1831357 (=> (not res!2453840) (not e!3571142))))

(assert (=> d!1831357 (= res!2453840 (is-Cons!63737 lt!2301764))))

(assert (=> d!1831357 (exists!2272 lt!2301764 lambda!318255)))

(assert (=> d!1831357 (= (getWitness!922 lt!2301764 lambda!318255) lt!2301847)))

(declare-fun b!5818730 () Bool)

(assert (=> b!5818730 (= e!3571142 (dynLambda!24951 lambda!318255 (h!70185 lt!2301764)))))

(declare-fun b!5818731 () Bool)

(declare-fun lt!2301848 () Unit!156974)

(declare-fun Unit!156979 () Unit!156974)

(assert (=> b!5818731 (= lt!2301848 Unit!156979)))

(assert (=> b!5818731 false))

(declare-fun head!12294 (List!63861) Regex!15854)

(assert (=> b!5818731 (= e!3571144 (head!12294 lt!2301764))))

(assert (= (and d!1831357 res!2453840) b!5818730))

(assert (= (and d!1831357 c!1031146) b!5818726))

(assert (= (and d!1831357 (not c!1031146)) b!5818728))

(assert (= (and b!5818728 c!1031145) b!5818729))

(assert (= (and b!5818728 (not c!1031145)) b!5818731))

(assert (= (and d!1831357 res!2453841) b!5818727))

(declare-fun b_lambda!219289 () Bool)

(assert (=> (not b_lambda!219289) (not d!1831357)))

(declare-fun b_lambda!219291 () Bool)

(assert (=> (not b_lambda!219291) (not b!5818730)))

(declare-fun m!6754696 () Bool)

(assert (=> b!5818730 m!6754696))

(declare-fun m!6754698 () Bool)

(assert (=> b!5818731 m!6754698))

(declare-fun m!6754700 () Bool)

(assert (=> b!5818729 m!6754700))

(declare-fun m!6754702 () Bool)

(assert (=> b!5818727 m!6754702))

(declare-fun m!6754704 () Bool)

(assert (=> d!1831357 m!6754704))

(assert (=> d!1831357 m!6754506))

(assert (=> b!5818346 d!1831357))

(assert (=> b!5818345 d!1831345))

(declare-fun bs!1372936 () Bool)

(declare-fun d!1831359 () Bool)

(assert (= bs!1372936 (and d!1831359 b!5818338)))

(declare-fun lambda!318294 () Int)

(assert (=> bs!1372936 (not (= lambda!318294 lambda!318255))))

(declare-fun bs!1372937 () Bool)

(assert (= bs!1372937 (and d!1831359 d!1831345)))

(assert (=> bs!1372937 (not (= lambda!318294 lambda!318282))))

(declare-fun bs!1372938 () Bool)

(assert (= bs!1372938 (and d!1831359 d!1831347)))

(assert (=> bs!1372938 (= lambda!318294 lambda!318287)))

(assert (=> bs!1372938 (not (= lambda!318294 lambda!318288))))

(declare-fun bs!1372939 () Bool)

(assert (= bs!1372939 (and d!1831359 d!1831351)))

(assert (=> bs!1372939 (= lambda!318294 lambda!318291)))

(assert (=> d!1831359 (= (inv!82883 setElem!39265) (forall!14948 (exprs!5738 setElem!39265) lambda!318294))))

(declare-fun bs!1372940 () Bool)

(assert (= bs!1372940 d!1831359))

(declare-fun m!6754706 () Bool)

(assert (=> bs!1372940 m!6754706))

(assert (=> setNonEmpty!39265 d!1831359))

(declare-fun bs!1372941 () Bool)

(declare-fun d!1831361 () Bool)

(assert (= bs!1372941 (and d!1831361 b!5818350)))

(declare-fun lambda!318297 () Int)

(assert (=> bs!1372941 (not (= lambda!318297 lambda!318256))))

(assert (=> d!1831361 true))

(declare-fun order!27229 () Int)

(declare-fun dynLambda!24952 (Int Int) Int)

(assert (=> d!1831361 (< (dynLambda!24952 order!27229 lambda!318256) (dynLambda!24952 order!27229 lambda!318297))))

(declare-fun forall!14949 (List!63863 Int) Bool)

(assert (=> d!1831361 (= (exists!2273 zl!343 lambda!318256) (not (forall!14949 zl!343 lambda!318297)))))

(declare-fun bs!1372942 () Bool)

(assert (= bs!1372942 d!1831361))

(declare-fun m!6754718 () Bool)

(assert (=> bs!1372942 m!6754718))

(assert (=> b!5818350 d!1831361))

(declare-fun bs!1372943 () Bool)

(declare-fun d!1831365 () Bool)

(assert (= bs!1372943 (and d!1831365 b!5818350)))

(declare-fun lambda!318300 () Int)

(assert (=> bs!1372943 (= lambda!318300 lambda!318256)))

(declare-fun bs!1372944 () Bool)

(assert (= bs!1372944 (and d!1831365 d!1831361)))

(assert (=> bs!1372944 (not (= lambda!318300 lambda!318297))))

(assert (=> d!1831365 true))

(assert (=> d!1831365 (exists!2273 zl!343 lambda!318300)))

(declare-fun lt!2301856 () Unit!156974)

(declare-fun choose!44229 (List!63863 Regex!15854) Unit!156974)

(assert (=> d!1831365 (= lt!2301856 (choose!44229 zl!343 lt!2301761))))

(assert (=> d!1831365 (contains!19894 (unfocusZipperList!1276 zl!343) lt!2301761)))

(assert (=> d!1831365 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!21 zl!343 lt!2301761) lt!2301856)))

(declare-fun bs!1372945 () Bool)

(assert (= bs!1372945 d!1831365))

(declare-fun m!6754726 () Bool)

(assert (=> bs!1372945 m!6754726))

(declare-fun m!6754728 () Bool)

(assert (=> bs!1372945 m!6754728))

(assert (=> bs!1372945 m!6754510))

(assert (=> bs!1372945 m!6754510))

(declare-fun m!6754730 () Bool)

(assert (=> bs!1372945 m!6754730))

(assert (=> b!5818350 d!1831365))

(declare-fun bs!1372946 () Bool)

(declare-fun d!1831369 () Bool)

(assert (= bs!1372946 (and d!1831369 b!5818338)))

(declare-fun lambda!318301 () Int)

(assert (=> bs!1372946 (not (= lambda!318301 lambda!318255))))

(declare-fun bs!1372947 () Bool)

(assert (= bs!1372947 (and d!1831369 d!1831359)))

(assert (=> bs!1372947 (= lambda!318301 lambda!318294)))

(declare-fun bs!1372948 () Bool)

(assert (= bs!1372948 (and d!1831369 d!1831345)))

(assert (=> bs!1372948 (not (= lambda!318301 lambda!318282))))

(declare-fun bs!1372949 () Bool)

(assert (= bs!1372949 (and d!1831369 d!1831347)))

(assert (=> bs!1372949 (= lambda!318301 lambda!318287)))

(assert (=> bs!1372949 (not (= lambda!318301 lambda!318288))))

(declare-fun bs!1372950 () Bool)

(assert (= bs!1372950 (and d!1831369 d!1831351)))

(assert (=> bs!1372950 (= lambda!318301 lambda!318291)))

(assert (=> d!1831369 (= (inv!82883 (h!70187 zl!343)) (forall!14948 (exprs!5738 (h!70187 zl!343)) lambda!318301))))

(declare-fun bs!1372951 () Bool)

(assert (= bs!1372951 d!1831369))

(declare-fun m!6754732 () Bool)

(assert (=> bs!1372951 m!6754732))

(assert (=> b!5818349 d!1831369))

(declare-fun b!5818755 () Bool)

(declare-fun e!3571155 () Bool)

(declare-fun tp!1605508 () Bool)

(assert (=> b!5818755 (= e!3571155 tp!1605508)))

(declare-fun b!5818756 () Bool)

(declare-fun tp!1605511 () Bool)

(declare-fun tp!1605510 () Bool)

(assert (=> b!5818756 (= e!3571155 (and tp!1605511 tp!1605510))))

(declare-fun b!5818753 () Bool)

(assert (=> b!5818753 (= e!3571155 tp_is_empty!40961)))

(assert (=> b!5818352 (= tp!1605465 e!3571155)))

(declare-fun b!5818754 () Bool)

(declare-fun tp!1605507 () Bool)

(declare-fun tp!1605509 () Bool)

(assert (=> b!5818754 (= e!3571155 (and tp!1605507 tp!1605509))))

(assert (= (and b!5818352 (is-ElementMatch!15854 (regOne!32220 r!7292))) b!5818753))

(assert (= (and b!5818352 (is-Concat!24699 (regOne!32220 r!7292))) b!5818754))

(assert (= (and b!5818352 (is-Star!15854 (regOne!32220 r!7292))) b!5818755))

(assert (= (and b!5818352 (is-Union!15854 (regOne!32220 r!7292))) b!5818756))

(declare-fun b!5818759 () Bool)

(declare-fun e!3571156 () Bool)

(declare-fun tp!1605513 () Bool)

(assert (=> b!5818759 (= e!3571156 tp!1605513)))

(declare-fun b!5818760 () Bool)

(declare-fun tp!1605516 () Bool)

(declare-fun tp!1605515 () Bool)

(assert (=> b!5818760 (= e!3571156 (and tp!1605516 tp!1605515))))

(declare-fun b!5818757 () Bool)

(assert (=> b!5818757 (= e!3571156 tp_is_empty!40961)))

(assert (=> b!5818352 (= tp!1605459 e!3571156)))

(declare-fun b!5818758 () Bool)

(declare-fun tp!1605512 () Bool)

(declare-fun tp!1605514 () Bool)

(assert (=> b!5818758 (= e!3571156 (and tp!1605512 tp!1605514))))

(assert (= (and b!5818352 (is-ElementMatch!15854 (regTwo!32220 r!7292))) b!5818757))

(assert (= (and b!5818352 (is-Concat!24699 (regTwo!32220 r!7292))) b!5818758))

(assert (= (and b!5818352 (is-Star!15854 (regTwo!32220 r!7292))) b!5818759))

(assert (= (and b!5818352 (is-Union!15854 (regTwo!32220 r!7292))) b!5818760))

(declare-fun b!5818765 () Bool)

(declare-fun e!3571159 () Bool)

(declare-fun tp!1605521 () Bool)

(declare-fun tp!1605522 () Bool)

(assert (=> b!5818765 (= e!3571159 (and tp!1605521 tp!1605522))))

(assert (=> b!5818337 (= tp!1605463 e!3571159)))

(assert (= (and b!5818337 (is-Cons!63737 (exprs!5738 setElem!39265))) b!5818765))

(declare-fun b!5818770 () Bool)

(declare-fun e!3571162 () Bool)

(declare-fun tp!1605525 () Bool)

(assert (=> b!5818770 (= e!3571162 (and tp_is_empty!40961 tp!1605525))))

(assert (=> b!5818351 (= tp!1605461 e!3571162)))

(assert (= (and b!5818351 (is-Cons!63738 (t!377217 s!2326))) b!5818770))

(declare-fun condSetEmpty!39271 () Bool)

(assert (=> setNonEmpty!39265 (= condSetEmpty!39271 (= setRest!39265 (as set.empty (Set Context!10476))))))

(declare-fun setRes!39271 () Bool)

(assert (=> setNonEmpty!39265 (= tp!1605466 setRes!39271)))

(declare-fun setIsEmpty!39271 () Bool)

(assert (=> setIsEmpty!39271 setRes!39271))

(declare-fun tp!1605531 () Bool)

(declare-fun setElem!39271 () Context!10476)

(declare-fun e!3571165 () Bool)

(declare-fun setNonEmpty!39271 () Bool)

(assert (=> setNonEmpty!39271 (= setRes!39271 (and tp!1605531 (inv!82883 setElem!39271) e!3571165))))

(declare-fun setRest!39271 () (Set Context!10476))

(assert (=> setNonEmpty!39271 (= setRest!39265 (set.union (set.insert setElem!39271 (as set.empty (Set Context!10476))) setRest!39271))))

(declare-fun b!5818775 () Bool)

(declare-fun tp!1605530 () Bool)

(assert (=> b!5818775 (= e!3571165 tp!1605530)))

(assert (= (and setNonEmpty!39265 condSetEmpty!39271) setIsEmpty!39271))

(assert (= (and setNonEmpty!39265 (not condSetEmpty!39271)) setNonEmpty!39271))

(assert (= setNonEmpty!39271 b!5818775))

(declare-fun m!6754734 () Bool)

(assert (=> setNonEmpty!39271 m!6754734))

(declare-fun b!5818783 () Bool)

(declare-fun e!3571171 () Bool)

(declare-fun tp!1605536 () Bool)

(assert (=> b!5818783 (= e!3571171 tp!1605536)))

(declare-fun e!3571170 () Bool)

(declare-fun b!5818782 () Bool)

(declare-fun tp!1605537 () Bool)

(assert (=> b!5818782 (= e!3571170 (and (inv!82883 (h!70187 (t!377218 zl!343))) e!3571171 tp!1605537))))

(assert (=> b!5818349 (= tp!1605460 e!3571170)))

(assert (= b!5818782 b!5818783))

(assert (= (and b!5818349 (is-Cons!63739 (t!377218 zl!343))) b!5818782))

(declare-fun m!6754736 () Bool)

(assert (=> b!5818782 m!6754736))

(declare-fun b!5818784 () Bool)

(declare-fun e!3571172 () Bool)

(declare-fun tp!1605538 () Bool)

(declare-fun tp!1605539 () Bool)

(assert (=> b!5818784 (= e!3571172 (and tp!1605538 tp!1605539))))

(assert (=> b!5818340 (= tp!1605458 e!3571172)))

(assert (= (and b!5818340 (is-Cons!63737 (exprs!5738 (h!70187 zl!343)))) b!5818784))

(declare-fun b!5818787 () Bool)

(declare-fun e!3571173 () Bool)

(declare-fun tp!1605541 () Bool)

(assert (=> b!5818787 (= e!3571173 tp!1605541)))

(declare-fun b!5818788 () Bool)

(declare-fun tp!1605544 () Bool)

(declare-fun tp!1605543 () Bool)

(assert (=> b!5818788 (= e!3571173 (and tp!1605544 tp!1605543))))

(declare-fun b!5818785 () Bool)

(assert (=> b!5818785 (= e!3571173 tp_is_empty!40961)))

(assert (=> b!5818339 (= tp!1605464 e!3571173)))

(declare-fun b!5818786 () Bool)

(declare-fun tp!1605540 () Bool)

(declare-fun tp!1605542 () Bool)

(assert (=> b!5818786 (= e!3571173 (and tp!1605540 tp!1605542))))

(assert (= (and b!5818339 (is-ElementMatch!15854 (regOne!32221 r!7292))) b!5818785))

(assert (= (and b!5818339 (is-Concat!24699 (regOne!32221 r!7292))) b!5818786))

(assert (= (and b!5818339 (is-Star!15854 (regOne!32221 r!7292))) b!5818787))

(assert (= (and b!5818339 (is-Union!15854 (regOne!32221 r!7292))) b!5818788))

(declare-fun b!5818791 () Bool)

(declare-fun e!3571174 () Bool)

(declare-fun tp!1605546 () Bool)

(assert (=> b!5818791 (= e!3571174 tp!1605546)))

(declare-fun b!5818792 () Bool)

(declare-fun tp!1605549 () Bool)

(declare-fun tp!1605548 () Bool)

(assert (=> b!5818792 (= e!3571174 (and tp!1605549 tp!1605548))))

(declare-fun b!5818789 () Bool)

(assert (=> b!5818789 (= e!3571174 tp_is_empty!40961)))

(assert (=> b!5818339 (= tp!1605457 e!3571174)))

(declare-fun b!5818790 () Bool)

(declare-fun tp!1605545 () Bool)

(declare-fun tp!1605547 () Bool)

(assert (=> b!5818790 (= e!3571174 (and tp!1605545 tp!1605547))))

(assert (= (and b!5818339 (is-ElementMatch!15854 (regTwo!32221 r!7292))) b!5818789))

(assert (= (and b!5818339 (is-Concat!24699 (regTwo!32221 r!7292))) b!5818790))

(assert (= (and b!5818339 (is-Star!15854 (regTwo!32221 r!7292))) b!5818791))

(assert (= (and b!5818339 (is-Union!15854 (regTwo!32221 r!7292))) b!5818792))

(declare-fun b!5818795 () Bool)

(declare-fun e!3571175 () Bool)

(declare-fun tp!1605551 () Bool)

(assert (=> b!5818795 (= e!3571175 tp!1605551)))

(declare-fun b!5818796 () Bool)

(declare-fun tp!1605554 () Bool)

(declare-fun tp!1605553 () Bool)

(assert (=> b!5818796 (= e!3571175 (and tp!1605554 tp!1605553))))

(declare-fun b!5818793 () Bool)

(assert (=> b!5818793 (= e!3571175 tp_is_empty!40961)))

(assert (=> b!5818348 (= tp!1605462 e!3571175)))

(declare-fun b!5818794 () Bool)

(declare-fun tp!1605550 () Bool)

(declare-fun tp!1605552 () Bool)

(assert (=> b!5818794 (= e!3571175 (and tp!1605550 tp!1605552))))

(assert (= (and b!5818348 (is-ElementMatch!15854 (reg!16183 r!7292))) b!5818793))

(assert (= (and b!5818348 (is-Concat!24699 (reg!16183 r!7292))) b!5818794))

(assert (= (and b!5818348 (is-Star!15854 (reg!16183 r!7292))) b!5818795))

(assert (= (and b!5818348 (is-Union!15854 (reg!16183 r!7292))) b!5818796))

(declare-fun b_lambda!219297 () Bool)

(assert (= b_lambda!219287 (or b!5818350 b_lambda!219297)))

(declare-fun bs!1372952 () Bool)

(declare-fun d!1831371 () Bool)

(assert (= bs!1372952 (and d!1831371 b!5818350)))

(assert (=> bs!1372952 (= (dynLambda!24949 lambda!318256 lt!2301799) (= (generalisedConcat!1459 (exprs!5738 lt!2301799)) lt!2301761))))

(declare-fun m!6754738 () Bool)

(assert (=> bs!1372952 m!6754738))

(assert (=> d!1831315 d!1831371))

(declare-fun b_lambda!219299 () Bool)

(assert (= b_lambda!219289 (or b!5818338 b_lambda!219299)))

(declare-fun bs!1372953 () Bool)

(declare-fun d!1831373 () Bool)

(assert (= bs!1372953 (and d!1831373 b!5818338)))

(declare-fun res!2453847 () Bool)

(declare-fun e!3571176 () Bool)

(assert (=> bs!1372953 (=> (not res!2453847) (not e!3571176))))

(assert (=> bs!1372953 (= res!2453847 (validRegex!7590 lt!2301847))))

(assert (=> bs!1372953 (= (dynLambda!24951 lambda!318255 lt!2301847) e!3571176)))

(declare-fun b!5818797 () Bool)

(assert (=> b!5818797 (= e!3571176 (matchR!8039 lt!2301847 s!2326))))

(assert (= (and bs!1372953 res!2453847) b!5818797))

(declare-fun m!6754740 () Bool)

(assert (=> bs!1372953 m!6754740))

(declare-fun m!6754742 () Bool)

(assert (=> b!5818797 m!6754742))

(assert (=> d!1831357 d!1831373))

(declare-fun b_lambda!219301 () Bool)

(assert (= b_lambda!219291 (or b!5818338 b_lambda!219301)))

(declare-fun bs!1372954 () Bool)

(declare-fun d!1831375 () Bool)

(assert (= bs!1372954 (and d!1831375 b!5818338)))

(declare-fun res!2453848 () Bool)

(declare-fun e!3571177 () Bool)

(assert (=> bs!1372954 (=> (not res!2453848) (not e!3571177))))

(assert (=> bs!1372954 (= res!2453848 (validRegex!7590 (h!70185 lt!2301764)))))

(assert (=> bs!1372954 (= (dynLambda!24951 lambda!318255 (h!70185 lt!2301764)) e!3571177)))

(declare-fun b!5818798 () Bool)

(assert (=> b!5818798 (= e!3571177 (matchR!8039 (h!70185 lt!2301764) s!2326))))

(assert (= (and bs!1372954 res!2453848) b!5818798))

(declare-fun m!6754744 () Bool)

(assert (=> bs!1372954 m!6754744))

(declare-fun m!6754746 () Bool)

(assert (=> b!5818798 m!6754746))

(assert (=> b!5818730 d!1831375))

(declare-fun b_lambda!219303 () Bool)

(assert (= b_lambda!219285 (or b!5818350 b_lambda!219303)))

(declare-fun bs!1372955 () Bool)

(declare-fun d!1831377 () Bool)

(assert (= bs!1372955 (and d!1831377 b!5818350)))

(assert (=> bs!1372955 (= (dynLambda!24949 lambda!318256 (h!70187 zl!343)) (= (generalisedConcat!1459 (exprs!5738 (h!70187 zl!343))) lt!2301761))))

(assert (=> bs!1372955 m!6754686))

(assert (=> b!5818477 d!1831377))

(push 1)

(assert (not b!5818661))

(assert (not d!1831315))

(assert (not b!5818646))

(assert (not setNonEmpty!39271))

(assert (not b!5818758))

(assert (not bm!454405))

(assert (not b!5818484))

(assert (not bm!454408))

(assert (not b!5818788))

(assert (not d!1831361))

(assert (not d!1831351))

(assert (not b!5818790))

(assert (not b!5818796))

(assert (not bm!454398))

(assert (not b!5818756))

(assert (not d!1831359))

(assert (not d!1831321))

(assert (not d!1831347))

(assert (not b!5818770))

(assert (not d!1831357))

(assert (not b!5818727))

(assert (not d!1831369))

(assert (not b!5818651))

(assert (not b!5818694))

(assert (not b!5818797))

(assert (not b!5818647))

(assert (not b!5818795))

(assert (not b!5818792))

(assert (not b!5818798))

(assert (not b!5818782))

(assert tp_is_empty!40961)

(assert (not b!5818787))

(assert (not b!5818490))

(assert (not b!5818557))

(assert (not b!5818615))

(assert (not b!5818729))

(assert (not b!5818626))

(assert (not d!1831355))

(assert (not d!1831345))

(assert (not b!5818665))

(assert (not b!5818456))

(assert (not b!5818614))

(assert (not b!5818652))

(assert (not d!1831365))

(assert (not b!5818619))

(assert (not b!5818783))

(assert (not b!5818616))

(assert (not d!1831337))

(assert (not b!5818786))

(assert (not b_lambda!219299))

(assert (not bm!454385))

(assert (not b!5818765))

(assert (not bs!1372952))

(assert (not d!1831327))

(assert (not b!5818754))

(assert (not d!1831341))

(assert (not b!5818794))

(assert (not b_lambda!219297))

(assert (not b!5818476))

(assert (not d!1831331))

(assert (not b!5818759))

(assert (not bm!454394))

(assert (not b!5818556))

(assert (not bs!1372953))

(assert (not bs!1372955))

(assert (not b!5818620))

(assert (not bs!1372954))

(assert (not b!5818731))

(assert (not bm!454407))

(assert (not b!5818658))

(assert (not b!5818784))

(assert (not d!1831339))

(assert (not b!5818478))

(assert (not b_lambda!219301))

(assert (not bm!454393))

(assert (not b!5818492))

(assert (not b!5818701))

(assert (not b!5818791))

(assert (not b!5818775))

(assert (not b!5818755))

(assert (not bm!454386))

(assert (not b!5818479))

(assert (not b!5818648))

(assert (not b_lambda!219303))

(assert (not b!5818760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1831419 () Bool)

(assert (=> d!1831419 (= (head!12294 lt!2301764) (h!70185 lt!2301764))))

(assert (=> b!5818731 d!1831419))

(declare-fun d!1831421 () Bool)

(assert (=> d!1831421 (= (head!12293 s!2326) (h!70186 s!2326))))

(assert (=> b!5818651 d!1831421))

(declare-fun d!1831423 () Bool)

(declare-fun res!2453895 () Bool)

(declare-fun e!3571270 () Bool)

(assert (=> d!1831423 (=> res!2453895 e!3571270)))

(assert (=> d!1831423 (= res!2453895 (is-Nil!63737 lt!2301835))))

(assert (=> d!1831423 (= (forall!14948 lt!2301835 lambda!318291) e!3571270)))

(declare-fun b!5818971 () Bool)

(declare-fun e!3571271 () Bool)

(assert (=> b!5818971 (= e!3571270 e!3571271)))

(declare-fun res!2453896 () Bool)

(assert (=> b!5818971 (=> (not res!2453896) (not e!3571271))))

(assert (=> b!5818971 (= res!2453896 (dynLambda!24951 lambda!318291 (h!70185 lt!2301835)))))

(declare-fun b!5818972 () Bool)

(assert (=> b!5818972 (= e!3571271 (forall!14948 (t!377216 lt!2301835) lambda!318291))))

(assert (= (and d!1831423 (not res!2453895)) b!5818971))

(assert (= (and b!5818971 res!2453896) b!5818972))

(declare-fun b_lambda!219317 () Bool)

(assert (=> (not b_lambda!219317) (not b!5818971)))

(declare-fun m!6754836 () Bool)

(assert (=> b!5818971 m!6754836))

(declare-fun m!6754838 () Bool)

(assert (=> b!5818972 m!6754838))

(assert (=> d!1831351 d!1831423))

(declare-fun b!5818973 () Bool)

(declare-fun e!3571277 () Bool)

(declare-fun e!3571272 () Bool)

(assert (=> b!5818973 (= e!3571277 e!3571272)))

(declare-fun c!1031189 () Bool)

(assert (=> b!5818973 (= c!1031189 (is-Union!15854 lt!2301847))))

(declare-fun b!5818974 () Bool)

(declare-fun res!2453901 () Bool)

(declare-fun e!3571273 () Bool)

(assert (=> b!5818974 (=> res!2453901 e!3571273)))

(assert (=> b!5818974 (= res!2453901 (not (is-Concat!24699 lt!2301847)))))

(assert (=> b!5818974 (= e!3571272 e!3571273)))

(declare-fun bm!454423 () Bool)

(declare-fun call!454429 () Bool)

(assert (=> bm!454423 (= call!454429 (validRegex!7590 (ite c!1031189 (regTwo!32221 lt!2301847) (regTwo!32220 lt!2301847))))))

(declare-fun b!5818975 () Bool)

(declare-fun e!3571278 () Bool)

(assert (=> b!5818975 (= e!3571273 e!3571278)))

(declare-fun res!2453900 () Bool)

(assert (=> b!5818975 (=> (not res!2453900) (not e!3571278))))

(declare-fun call!454428 () Bool)

(assert (=> b!5818975 (= res!2453900 call!454428)))

(declare-fun b!5818976 () Bool)

(declare-fun e!3571274 () Bool)

(assert (=> b!5818976 (= e!3571277 e!3571274)))

(declare-fun res!2453897 () Bool)

(assert (=> b!5818976 (= res!2453897 (not (nullable!5868 (reg!16183 lt!2301847))))))

(assert (=> b!5818976 (=> (not res!2453897) (not e!3571274))))

(declare-fun b!5818977 () Bool)

(declare-fun e!3571276 () Bool)

(assert (=> b!5818977 (= e!3571276 call!454429)))

(declare-fun b!5818978 () Bool)

(declare-fun call!454427 () Bool)

(assert (=> b!5818978 (= e!3571274 call!454427)))

(declare-fun b!5818979 () Bool)

(declare-fun e!3571275 () Bool)

(assert (=> b!5818979 (= e!3571275 e!3571277)))

(declare-fun c!1031188 () Bool)

(assert (=> b!5818979 (= c!1031188 (is-Star!15854 lt!2301847))))

(declare-fun b!5818980 () Bool)

(declare-fun res!2453898 () Bool)

(assert (=> b!5818980 (=> (not res!2453898) (not e!3571276))))

(assert (=> b!5818980 (= res!2453898 call!454428)))

(assert (=> b!5818980 (= e!3571272 e!3571276)))

(declare-fun b!5818981 () Bool)

(assert (=> b!5818981 (= e!3571278 call!454429)))

(declare-fun bm!454424 () Bool)

(assert (=> bm!454424 (= call!454427 (validRegex!7590 (ite c!1031188 (reg!16183 lt!2301847) (ite c!1031189 (regOne!32221 lt!2301847) (regOne!32220 lt!2301847)))))))

(declare-fun d!1831425 () Bool)

(declare-fun res!2453899 () Bool)

(assert (=> d!1831425 (=> res!2453899 e!3571275)))

(assert (=> d!1831425 (= res!2453899 (is-ElementMatch!15854 lt!2301847))))

(assert (=> d!1831425 (= (validRegex!7590 lt!2301847) e!3571275)))

(declare-fun bm!454422 () Bool)

(assert (=> bm!454422 (= call!454428 call!454427)))

(assert (= (and d!1831425 (not res!2453899)) b!5818979))

(assert (= (and b!5818979 c!1031188) b!5818976))

(assert (= (and b!5818979 (not c!1031188)) b!5818973))

(assert (= (and b!5818976 res!2453897) b!5818978))

(assert (= (and b!5818973 c!1031189) b!5818980))

(assert (= (and b!5818973 (not c!1031189)) b!5818974))

(assert (= (and b!5818980 res!2453898) b!5818977))

(assert (= (and b!5818974 (not res!2453901)) b!5818975))

(assert (= (and b!5818975 res!2453900) b!5818981))

(assert (= (or b!5818977 b!5818981) bm!454423))

(assert (= (or b!5818980 b!5818975) bm!454422))

(assert (= (or b!5818978 bm!454422) bm!454424))

(declare-fun m!6754840 () Bool)

(assert (=> bm!454423 m!6754840))

(declare-fun m!6754842 () Bool)

(assert (=> b!5818976 m!6754842))

(declare-fun m!6754844 () Bool)

(assert (=> bm!454424 m!6754844))

(assert (=> bs!1372953 d!1831425))

(declare-fun d!1831427 () Bool)

(assert (=> d!1831427 (= (isEmpty!35635 (tail!11381 s!2326)) (is-Nil!63738 (tail!11381 s!2326)))))

(assert (=> b!5818626 d!1831427))

(declare-fun d!1831429 () Bool)

(assert (=> d!1831429 (= (tail!11381 s!2326) (t!377217 s!2326))))

(assert (=> b!5818626 d!1831429))

(assert (=> d!1831321 d!1831323))

(assert (=> d!1831321 d!1831319))

(declare-fun d!1831431 () Bool)

(assert (=> d!1831431 (< (contextDepthTotal!241 lt!2301756) (zipperDepthTotal!263 zl!343))))

(assert (=> d!1831431 true))

(declare-fun _$54!183 () Unit!156974)

(assert (=> d!1831431 (= (choose!44225 zl!343 lt!2301756) _$54!183)))

(declare-fun bs!1372986 () Bool)

(assert (= bs!1372986 d!1831431))

(assert (=> bs!1372986 m!6754494))

(assert (=> bs!1372986 m!6754500))

(assert (=> d!1831321 d!1831431))

(declare-fun d!1831433 () Bool)

(declare-fun lt!2301891 () Bool)

(assert (=> d!1831433 (= lt!2301891 (set.member lt!2301756 (content!11699 zl!343)))))

(declare-fun e!3571283 () Bool)

(assert (=> d!1831433 (= lt!2301891 e!3571283)))

(declare-fun res!2453907 () Bool)

(assert (=> d!1831433 (=> (not res!2453907) (not e!3571283))))

(assert (=> d!1831433 (= res!2453907 (is-Cons!63739 zl!343))))

(assert (=> d!1831433 (= (contains!19896 zl!343 lt!2301756) lt!2301891)))

(declare-fun b!5818986 () Bool)

(declare-fun e!3571284 () Bool)

(assert (=> b!5818986 (= e!3571283 e!3571284)))

(declare-fun res!2453906 () Bool)

(assert (=> b!5818986 (=> res!2453906 e!3571284)))

(assert (=> b!5818986 (= res!2453906 (= (h!70187 zl!343) lt!2301756))))

(declare-fun b!5818987 () Bool)

(assert (=> b!5818987 (= e!3571284 (contains!19896 (t!377218 zl!343) lt!2301756))))

(assert (= (and d!1831433 res!2453907) b!5818986))

(assert (= (and b!5818986 (not res!2453906)) b!5818987))

(declare-fun m!6754846 () Bool)

(assert (=> d!1831433 m!6754846))

(declare-fun m!6754848 () Bool)

(assert (=> d!1831433 m!6754848))

(declare-fun m!6754850 () Bool)

(assert (=> b!5818987 m!6754850))

(assert (=> d!1831321 d!1831433))

(declare-fun d!1831435 () Bool)

(declare-fun lt!2301892 () Int)

(assert (=> d!1831435 (>= lt!2301892 0)))

(declare-fun e!3571285 () Int)

(assert (=> d!1831435 (= lt!2301892 e!3571285)))

(declare-fun c!1031191 () Bool)

(assert (=> d!1831435 (= c!1031191 (is-Cons!63737 (exprs!5738 (h!70187 (Cons!63739 lt!2301756 Nil!63739)))))))

(assert (=> d!1831435 (= (contextDepthTotal!241 (h!70187 (Cons!63739 lt!2301756 Nil!63739))) lt!2301892)))

(declare-fun b!5818988 () Bool)

(assert (=> b!5818988 (= e!3571285 (+ (regexDepthTotal!108 (h!70185 (exprs!5738 (h!70187 (Cons!63739 lt!2301756 Nil!63739))))) (contextDepthTotal!241 (Context!10477 (t!377216 (exprs!5738 (h!70187 (Cons!63739 lt!2301756 Nil!63739))))))))))

(declare-fun b!5818989 () Bool)

(assert (=> b!5818989 (= e!3571285 1)))

(assert (= (and d!1831435 c!1031191) b!5818988))

(assert (= (and d!1831435 (not c!1031191)) b!5818989))

(declare-fun m!6754852 () Bool)

(assert (=> b!5818988 m!6754852))

(declare-fun m!6754854 () Bool)

(assert (=> b!5818988 m!6754854))

(assert (=> b!5818492 d!1831435))

(declare-fun d!1831437 () Bool)

(declare-fun lt!2301893 () Int)

(assert (=> d!1831437 (>= lt!2301893 0)))

(declare-fun e!3571286 () Int)

(assert (=> d!1831437 (= lt!2301893 e!3571286)))

(declare-fun c!1031192 () Bool)

(assert (=> d!1831437 (= c!1031192 (is-Cons!63739 (t!377218 (Cons!63739 lt!2301756 Nil!63739))))))

(assert (=> d!1831437 (= (zipperDepthTotal!263 (t!377218 (Cons!63739 lt!2301756 Nil!63739))) lt!2301893)))

(declare-fun b!5818990 () Bool)

(assert (=> b!5818990 (= e!3571286 (+ (contextDepthTotal!241 (h!70187 (t!377218 (Cons!63739 lt!2301756 Nil!63739)))) (zipperDepthTotal!263 (t!377218 (t!377218 (Cons!63739 lt!2301756 Nil!63739))))))))

(declare-fun b!5818991 () Bool)

(assert (=> b!5818991 (= e!3571286 0)))

(assert (= (and d!1831437 c!1031192) b!5818990))

(assert (= (and d!1831437 (not c!1031192)) b!5818991))

(declare-fun m!6754856 () Bool)

(assert (=> b!5818990 m!6754856))

(declare-fun m!6754858 () Bool)

(assert (=> b!5818990 m!6754858))

(assert (=> b!5818492 d!1831437))

(assert (=> b!5818616 d!1831421))

(declare-fun d!1831439 () Bool)

(assert (=> d!1831439 (= (isEmpty!35635 s!2326) (is-Nil!63738 s!2326))))

(assert (=> bm!454405 d!1831439))

(declare-fun b!5818992 () Bool)

(declare-fun e!3571292 () Bool)

(declare-fun e!3571293 () Bool)

(assert (=> b!5818992 (= e!3571292 e!3571293)))

(declare-fun res!2453912 () Bool)

(assert (=> b!5818992 (=> res!2453912 e!3571293)))

(declare-fun call!454430 () Bool)

(assert (=> b!5818992 (= res!2453912 call!454430)))

(declare-fun b!5818993 () Bool)

(declare-fun e!3571289 () Bool)

(assert (=> b!5818993 (= e!3571289 (matchR!8039 (derivativeStep!4609 (derivativeStep!4609 r!7292 (head!12293 s!2326)) (head!12293 (tail!11381 s!2326))) (tail!11381 (tail!11381 s!2326))))))

(declare-fun b!5818994 () Bool)

(assert (=> b!5818994 (= e!3571289 (nullable!5868 (derivativeStep!4609 r!7292 (head!12293 s!2326))))))

(declare-fun b!5818995 () Bool)

(declare-fun e!3571288 () Bool)

(assert (=> b!5818995 (= e!3571288 (= (head!12293 (tail!11381 s!2326)) (c!1031068 (derivativeStep!4609 r!7292 (head!12293 s!2326)))))))

(declare-fun b!5818996 () Bool)

(declare-fun res!2453908 () Bool)

(assert (=> b!5818996 (=> (not res!2453908) (not e!3571288))))

(assert (=> b!5818996 (= res!2453908 (not call!454430))))

(declare-fun b!5818997 () Bool)

(declare-fun e!3571290 () Bool)

(declare-fun lt!2301894 () Bool)

(assert (=> b!5818997 (= e!3571290 (= lt!2301894 call!454430))))

(declare-fun b!5818998 () Bool)

(assert (=> b!5818998 (= e!3571293 (not (= (head!12293 (tail!11381 s!2326)) (c!1031068 (derivativeStep!4609 r!7292 (head!12293 s!2326))))))))

(declare-fun b!5818999 () Bool)

(declare-fun res!2453909 () Bool)

(assert (=> b!5818999 (=> (not res!2453909) (not e!3571288))))

(assert (=> b!5818999 (= res!2453909 (isEmpty!35635 (tail!11381 (tail!11381 s!2326))))))

(declare-fun b!5819000 () Bool)

(declare-fun e!3571287 () Bool)

(assert (=> b!5819000 (= e!3571287 (not lt!2301894))))

(declare-fun b!5819001 () Bool)

(declare-fun e!3571291 () Bool)

(assert (=> b!5819001 (= e!3571291 e!3571292)))

(declare-fun res!2453910 () Bool)

(assert (=> b!5819001 (=> (not res!2453910) (not e!3571292))))

(assert (=> b!5819001 (= res!2453910 (not lt!2301894))))

(declare-fun b!5819002 () Bool)

(assert (=> b!5819002 (= e!3571290 e!3571287)))

(declare-fun c!1031193 () Bool)

(assert (=> b!5819002 (= c!1031193 (is-EmptyLang!15854 (derivativeStep!4609 r!7292 (head!12293 s!2326))))))

(declare-fun b!5819003 () Bool)

(declare-fun res!2453911 () Bool)

(assert (=> b!5819003 (=> res!2453911 e!3571291)))

(assert (=> b!5819003 (= res!2453911 e!3571288)))

(declare-fun res!2453913 () Bool)

(assert (=> b!5819003 (=> (not res!2453913) (not e!3571288))))

(assert (=> b!5819003 (= res!2453913 lt!2301894)))

(declare-fun b!5819004 () Bool)

(declare-fun res!2453915 () Bool)

(assert (=> b!5819004 (=> res!2453915 e!3571291)))

(assert (=> b!5819004 (= res!2453915 (not (is-ElementMatch!15854 (derivativeStep!4609 r!7292 (head!12293 s!2326)))))))

(assert (=> b!5819004 (= e!3571287 e!3571291)))

(declare-fun b!5819005 () Bool)

(declare-fun res!2453914 () Bool)

(assert (=> b!5819005 (=> res!2453914 e!3571293)))

(assert (=> b!5819005 (= res!2453914 (not (isEmpty!35635 (tail!11381 (tail!11381 s!2326)))))))

(declare-fun d!1831441 () Bool)

(assert (=> d!1831441 e!3571290))

(declare-fun c!1031195 () Bool)

(assert (=> d!1831441 (= c!1031195 (is-EmptyExpr!15854 (derivativeStep!4609 r!7292 (head!12293 s!2326))))))

(assert (=> d!1831441 (= lt!2301894 e!3571289)))

(declare-fun c!1031194 () Bool)

(assert (=> d!1831441 (= c!1031194 (isEmpty!35635 (tail!11381 s!2326)))))

(assert (=> d!1831441 (validRegex!7590 (derivativeStep!4609 r!7292 (head!12293 s!2326)))))

(assert (=> d!1831441 (= (matchR!8039 (derivativeStep!4609 r!7292 (head!12293 s!2326)) (tail!11381 s!2326)) lt!2301894)))

(declare-fun bm!454425 () Bool)

(assert (=> bm!454425 (= call!454430 (isEmpty!35635 (tail!11381 s!2326)))))

(assert (= (and d!1831441 c!1031194) b!5818994))

(assert (= (and d!1831441 (not c!1031194)) b!5818993))

(assert (= (and d!1831441 c!1031195) b!5818997))

(assert (= (and d!1831441 (not c!1031195)) b!5819002))

(assert (= (and b!5819002 c!1031193) b!5819000))

(assert (= (and b!5819002 (not c!1031193)) b!5819004))

(assert (= (and b!5819004 (not res!2453915)) b!5819003))

(assert (= (and b!5819003 res!2453913) b!5818996))

(assert (= (and b!5818996 res!2453908) b!5818999))

(assert (= (and b!5818999 res!2453909) b!5818995))

(assert (= (and b!5819003 (not res!2453911)) b!5819001))

(assert (= (and b!5819001 res!2453910) b!5818992))

(assert (= (and b!5818992 (not res!2453912)) b!5819005))

(assert (= (and b!5819005 (not res!2453914)) b!5818998))

(assert (= (or b!5818997 b!5818992 b!5818996) bm!454425))

(assert (=> b!5819005 m!6754632))

(declare-fun m!6754860 () Bool)

(assert (=> b!5819005 m!6754860))

(assert (=> b!5819005 m!6754860))

(declare-fun m!6754862 () Bool)

(assert (=> b!5819005 m!6754862))

(assert (=> d!1831441 m!6754632))

(assert (=> d!1831441 m!6754634))

(assert (=> d!1831441 m!6754640))

(declare-fun m!6754864 () Bool)

(assert (=> d!1831441 m!6754864))

(assert (=> bm!454425 m!6754632))

(assert (=> bm!454425 m!6754634))

(assert (=> b!5818994 m!6754640))

(declare-fun m!6754866 () Bool)

(assert (=> b!5818994 m!6754866))

(assert (=> b!5818999 m!6754632))

(assert (=> b!5818999 m!6754860))

(assert (=> b!5818999 m!6754860))

(assert (=> b!5818999 m!6754862))

(assert (=> b!5818995 m!6754632))

(declare-fun m!6754868 () Bool)

(assert (=> b!5818995 m!6754868))

(assert (=> b!5818993 m!6754632))

(assert (=> b!5818993 m!6754868))

(assert (=> b!5818993 m!6754640))

(assert (=> b!5818993 m!6754868))

(declare-fun m!6754870 () Bool)

(assert (=> b!5818993 m!6754870))

(assert (=> b!5818993 m!6754632))

(assert (=> b!5818993 m!6754860))

(assert (=> b!5818993 m!6754870))

(assert (=> b!5818993 m!6754860))

(declare-fun m!6754872 () Bool)

(assert (=> b!5818993 m!6754872))

(assert (=> b!5818998 m!6754632))

(assert (=> b!5818998 m!6754868))

(assert (=> b!5818614 d!1831441))

(declare-fun b!5819026 () Bool)

(declare-fun e!3571304 () Regex!15854)

(declare-fun e!3571306 () Regex!15854)

(assert (=> b!5819026 (= e!3571304 e!3571306)))

(declare-fun c!1031209 () Bool)

(assert (=> b!5819026 (= c!1031209 (is-Star!15854 r!7292))))

(declare-fun b!5819027 () Bool)

(declare-fun call!454442 () Regex!15854)

(assert (=> b!5819027 (= e!3571306 (Concat!24699 call!454442 r!7292))))

(declare-fun bm!454434 () Bool)

(declare-fun call!454440 () Regex!15854)

(assert (=> bm!454434 (= call!454440 call!454442)))

(declare-fun b!5819028 () Bool)

(declare-fun e!3571305 () Regex!15854)

(assert (=> b!5819028 (= e!3571305 (ite (= (head!12293 s!2326) (c!1031068 r!7292)) EmptyExpr!15854 EmptyLang!15854))))

(declare-fun bm!454435 () Bool)

(declare-fun call!454441 () Regex!15854)

(assert (=> bm!454435 (= call!454442 call!454441)))

(declare-fun b!5819029 () Bool)

(declare-fun e!3571307 () Regex!15854)

(assert (=> b!5819029 (= e!3571307 (Union!15854 (Concat!24699 call!454440 (regTwo!32220 r!7292)) EmptyLang!15854))))

(declare-fun b!5819030 () Bool)

(declare-fun e!3571308 () Regex!15854)

(assert (=> b!5819030 (= e!3571308 e!3571305)))

(declare-fun c!1031206 () Bool)

(assert (=> b!5819030 (= c!1031206 (is-ElementMatch!15854 r!7292))))

(declare-fun b!5819031 () Bool)

(declare-fun c!1031207 () Bool)

(assert (=> b!5819031 (= c!1031207 (is-Union!15854 r!7292))))

(assert (=> b!5819031 (= e!3571305 e!3571304)))

(declare-fun call!454439 () Regex!15854)

(declare-fun bm!454436 () Bool)

(assert (=> bm!454436 (= call!454439 (derivativeStep!4609 (ite c!1031207 (regOne!32221 r!7292) (regOne!32220 r!7292)) (head!12293 s!2326)))))

(declare-fun d!1831443 () Bool)

(declare-fun lt!2301897 () Regex!15854)

(assert (=> d!1831443 (validRegex!7590 lt!2301897)))

(assert (=> d!1831443 (= lt!2301897 e!3571308)))

(declare-fun c!1031210 () Bool)

(assert (=> d!1831443 (= c!1031210 (or (is-EmptyExpr!15854 r!7292) (is-EmptyLang!15854 r!7292)))))

(assert (=> d!1831443 (validRegex!7590 r!7292)))

(assert (=> d!1831443 (= (derivativeStep!4609 r!7292 (head!12293 s!2326)) lt!2301897)))

(declare-fun b!5819032 () Bool)

(declare-fun c!1031208 () Bool)

(assert (=> b!5819032 (= c!1031208 (nullable!5868 (regOne!32220 r!7292)))))

(assert (=> b!5819032 (= e!3571306 e!3571307)))

(declare-fun b!5819033 () Bool)

(assert (=> b!5819033 (= e!3571307 (Union!15854 (Concat!24699 call!454439 (regTwo!32220 r!7292)) call!454440))))

(declare-fun b!5819034 () Bool)

(assert (=> b!5819034 (= e!3571308 EmptyLang!15854)))

(declare-fun b!5819035 () Bool)

(assert (=> b!5819035 (= e!3571304 (Union!15854 call!454439 call!454441))))

(declare-fun bm!454437 () Bool)

(assert (=> bm!454437 (= call!454441 (derivativeStep!4609 (ite c!1031207 (regTwo!32221 r!7292) (ite c!1031209 (reg!16183 r!7292) (ite c!1031208 (regTwo!32220 r!7292) (regOne!32220 r!7292)))) (head!12293 s!2326)))))

(assert (= (and d!1831443 c!1031210) b!5819034))

(assert (= (and d!1831443 (not c!1031210)) b!5819030))

(assert (= (and b!5819030 c!1031206) b!5819028))

(assert (= (and b!5819030 (not c!1031206)) b!5819031))

(assert (= (and b!5819031 c!1031207) b!5819035))

(assert (= (and b!5819031 (not c!1031207)) b!5819026))

(assert (= (and b!5819026 c!1031209) b!5819027))

(assert (= (and b!5819026 (not c!1031209)) b!5819032))

(assert (= (and b!5819032 c!1031208) b!5819033))

(assert (= (and b!5819032 (not c!1031208)) b!5819029))

(assert (= (or b!5819033 b!5819029) bm!454434))

(assert (= (or b!5819027 bm!454434) bm!454435))

(assert (= (or b!5819035 bm!454435) bm!454437))

(assert (= (or b!5819035 b!5819033) bm!454436))

(assert (=> bm!454436 m!6754638))

(declare-fun m!6754874 () Bool)

(assert (=> bm!454436 m!6754874))

(declare-fun m!6754876 () Bool)

(assert (=> d!1831443 m!6754876))

(assert (=> d!1831443 m!6754484))

(declare-fun m!6754878 () Bool)

(assert (=> b!5819032 m!6754878))

(assert (=> bm!454437 m!6754638))

(declare-fun m!6754880 () Bool)

(assert (=> bm!454437 m!6754880))

(assert (=> b!5818614 d!1831443))

(assert (=> b!5818614 d!1831421))

(assert (=> b!5818614 d!1831429))

(declare-fun d!1831445 () Bool)

(declare-fun lt!2301898 () Bool)

(assert (=> d!1831445 (= lt!2301898 (set.member lt!2301799 (content!11699 zl!343)))))

(declare-fun e!3571309 () Bool)

(assert (=> d!1831445 (= lt!2301898 e!3571309)))

(declare-fun res!2453917 () Bool)

(assert (=> d!1831445 (=> (not res!2453917) (not e!3571309))))

(assert (=> d!1831445 (= res!2453917 (is-Cons!63739 zl!343))))

(assert (=> d!1831445 (= (contains!19896 zl!343 lt!2301799) lt!2301898)))

(declare-fun b!5819036 () Bool)

(declare-fun e!3571310 () Bool)

(assert (=> b!5819036 (= e!3571309 e!3571310)))

(declare-fun res!2453916 () Bool)

(assert (=> b!5819036 (=> res!2453916 e!3571310)))

(assert (=> b!5819036 (= res!2453916 (= (h!70187 zl!343) lt!2301799))))

(declare-fun b!5819037 () Bool)

(assert (=> b!5819037 (= e!3571310 (contains!19896 (t!377218 zl!343) lt!2301799))))

(assert (= (and d!1831445 res!2453917) b!5819036))

(assert (= (and b!5819036 (not res!2453916)) b!5819037))

(assert (=> d!1831445 m!6754846))

(declare-fun m!6754882 () Bool)

(assert (=> d!1831445 m!6754882))

(declare-fun m!6754884 () Bool)

(assert (=> b!5819037 m!6754884))

(assert (=> b!5818479 d!1831445))

(assert (=> b!5818658 d!1831427))

(assert (=> b!5818658 d!1831429))

(declare-fun b!5819038 () Bool)

(declare-fun e!3571316 () Bool)

(declare-fun e!3571311 () Bool)

(assert (=> b!5819038 (= e!3571316 e!3571311)))

(declare-fun c!1031212 () Bool)

(assert (=> b!5819038 (= c!1031212 (is-Union!15854 (h!70185 lt!2301764)))))

(declare-fun b!5819039 () Bool)

(declare-fun res!2453922 () Bool)

(declare-fun e!3571312 () Bool)

(assert (=> b!5819039 (=> res!2453922 e!3571312)))

(assert (=> b!5819039 (= res!2453922 (not (is-Concat!24699 (h!70185 lt!2301764))))))

(assert (=> b!5819039 (= e!3571311 e!3571312)))

(declare-fun bm!454439 () Bool)

(declare-fun call!454445 () Bool)

(assert (=> bm!454439 (= call!454445 (validRegex!7590 (ite c!1031212 (regTwo!32221 (h!70185 lt!2301764)) (regTwo!32220 (h!70185 lt!2301764)))))))

(declare-fun b!5819040 () Bool)

(declare-fun e!3571317 () Bool)

(assert (=> b!5819040 (= e!3571312 e!3571317)))

(declare-fun res!2453921 () Bool)

(assert (=> b!5819040 (=> (not res!2453921) (not e!3571317))))

(declare-fun call!454444 () Bool)

(assert (=> b!5819040 (= res!2453921 call!454444)))

(declare-fun b!5819041 () Bool)

(declare-fun e!3571313 () Bool)

(assert (=> b!5819041 (= e!3571316 e!3571313)))

(declare-fun res!2453918 () Bool)

(assert (=> b!5819041 (= res!2453918 (not (nullable!5868 (reg!16183 (h!70185 lt!2301764)))))))

(assert (=> b!5819041 (=> (not res!2453918) (not e!3571313))))

(declare-fun b!5819042 () Bool)

(declare-fun e!3571315 () Bool)

(assert (=> b!5819042 (= e!3571315 call!454445)))

(declare-fun b!5819043 () Bool)

(declare-fun call!454443 () Bool)

(assert (=> b!5819043 (= e!3571313 call!454443)))

(declare-fun b!5819044 () Bool)

(declare-fun e!3571314 () Bool)

(assert (=> b!5819044 (= e!3571314 e!3571316)))

(declare-fun c!1031211 () Bool)

(assert (=> b!5819044 (= c!1031211 (is-Star!15854 (h!70185 lt!2301764)))))

(declare-fun b!5819045 () Bool)

(declare-fun res!2453919 () Bool)

(assert (=> b!5819045 (=> (not res!2453919) (not e!3571315))))

(assert (=> b!5819045 (= res!2453919 call!454444)))

(assert (=> b!5819045 (= e!3571311 e!3571315)))

(declare-fun b!5819046 () Bool)

(assert (=> b!5819046 (= e!3571317 call!454445)))

(declare-fun bm!454440 () Bool)

(assert (=> bm!454440 (= call!454443 (validRegex!7590 (ite c!1031211 (reg!16183 (h!70185 lt!2301764)) (ite c!1031212 (regOne!32221 (h!70185 lt!2301764)) (regOne!32220 (h!70185 lt!2301764))))))))

(declare-fun d!1831447 () Bool)

(declare-fun res!2453920 () Bool)

(assert (=> d!1831447 (=> res!2453920 e!3571314)))

(assert (=> d!1831447 (= res!2453920 (is-ElementMatch!15854 (h!70185 lt!2301764)))))

(assert (=> d!1831447 (= (validRegex!7590 (h!70185 lt!2301764)) e!3571314)))

(declare-fun bm!454438 () Bool)

(assert (=> bm!454438 (= call!454444 call!454443)))

(assert (= (and d!1831447 (not res!2453920)) b!5819044))

(assert (= (and b!5819044 c!1031211) b!5819041))

(assert (= (and b!5819044 (not c!1031211)) b!5819038))

(assert (= (and b!5819041 res!2453918) b!5819043))

(assert (= (and b!5819038 c!1031212) b!5819045))

(assert (= (and b!5819038 (not c!1031212)) b!5819039))

(assert (= (and b!5819045 res!2453919) b!5819042))

(assert (= (and b!5819039 (not res!2453922)) b!5819040))

(assert (= (and b!5819040 res!2453921) b!5819046))

(assert (= (or b!5819042 b!5819046) bm!454439))

(assert (= (or b!5819045 b!5819040) bm!454438))

(assert (= (or b!5819043 bm!454438) bm!454440))

(declare-fun m!6754886 () Bool)

(assert (=> bm!454439 m!6754886))

(declare-fun m!6754888 () Bool)

(assert (=> b!5819041 m!6754888))

(declare-fun m!6754890 () Bool)

(assert (=> bm!454440 m!6754890))

(assert (=> bs!1372954 d!1831447))

(declare-fun bs!1372987 () Bool)

(declare-fun b!5819047 () Bool)

(assert (= bs!1372987 (and b!5819047 b!5818554)))

(declare-fun lambda!318327 () Int)

(assert (=> bs!1372987 (= (and (= (reg!16183 (regTwo!32221 r!7292)) (reg!16183 r!7292)) (= (regTwo!32221 r!7292) r!7292)) (= lambda!318327 lambda!318275))))

(declare-fun bs!1372988 () Bool)

(assert (= bs!1372988 (and b!5819047 b!5818560)))

(assert (=> bs!1372988 (not (= lambda!318327 lambda!318276))))

(assert (=> b!5819047 true))

(assert (=> b!5819047 true))

(declare-fun bs!1372989 () Bool)

(declare-fun b!5819053 () Bool)

(assert (= bs!1372989 (and b!5819053 b!5818554)))

(declare-fun lambda!318328 () Int)

(assert (=> bs!1372989 (not (= lambda!318328 lambda!318275))))

(declare-fun bs!1372990 () Bool)

(assert (= bs!1372990 (and b!5819053 b!5818560)))

(assert (=> bs!1372990 (= (and (= (regOne!32220 (regTwo!32221 r!7292)) (regOne!32220 r!7292)) (= (regTwo!32220 (regTwo!32221 r!7292)) (regTwo!32220 r!7292))) (= lambda!318328 lambda!318276))))

(declare-fun bs!1372991 () Bool)

(assert (= bs!1372991 (and b!5819053 b!5819047)))

(assert (=> bs!1372991 (not (= lambda!318328 lambda!318327))))

(assert (=> b!5819053 true))

(assert (=> b!5819053 true))

(declare-fun e!3571319 () Bool)

(declare-fun call!454447 () Bool)

(assert (=> b!5819047 (= e!3571319 call!454447)))

(declare-fun b!5819048 () Bool)

(declare-fun e!3571324 () Bool)

(declare-fun call!454446 () Bool)

(assert (=> b!5819048 (= e!3571324 call!454446)))

(declare-fun bm!454441 () Bool)

(declare-fun c!1031213 () Bool)

(assert (=> bm!454441 (= call!454447 (Exists!2944 (ite c!1031213 lambda!318327 lambda!318328)))))

(declare-fun b!5819049 () Bool)

(declare-fun e!3571322 () Bool)

(assert (=> b!5819049 (= e!3571322 (matchRSpec!2957 (regTwo!32221 (regTwo!32221 r!7292)) s!2326))))

(declare-fun b!5819050 () Bool)

(declare-fun e!3571321 () Bool)

(assert (=> b!5819050 (= e!3571321 e!3571322)))

(declare-fun res!2453924 () Bool)

(assert (=> b!5819050 (= res!2453924 (matchRSpec!2957 (regOne!32221 (regTwo!32221 r!7292)) s!2326))))

(assert (=> b!5819050 (=> res!2453924 e!3571322)))

(declare-fun d!1831449 () Bool)

(declare-fun c!1031215 () Bool)

(assert (=> d!1831449 (= c!1031215 (is-EmptyExpr!15854 (regTwo!32221 r!7292)))))

(assert (=> d!1831449 (= (matchRSpec!2957 (regTwo!32221 r!7292) s!2326) e!3571324)))

(declare-fun b!5819051 () Bool)

(declare-fun c!1031216 () Bool)

(assert (=> b!5819051 (= c!1031216 (is-Union!15854 (regTwo!32221 r!7292)))))

(declare-fun e!3571318 () Bool)

(assert (=> b!5819051 (= e!3571318 e!3571321)))

(declare-fun bm!454442 () Bool)

(assert (=> bm!454442 (= call!454446 (isEmpty!35635 s!2326))))

(declare-fun b!5819052 () Bool)

(declare-fun res!2453923 () Bool)

(assert (=> b!5819052 (=> res!2453923 e!3571319)))

(assert (=> b!5819052 (= res!2453923 call!454446)))

(declare-fun e!3571320 () Bool)

(assert (=> b!5819052 (= e!3571320 e!3571319)))

(assert (=> b!5819053 (= e!3571320 call!454447)))

(declare-fun b!5819054 () Bool)

(assert (=> b!5819054 (= e!3571318 (= s!2326 (Cons!63738 (c!1031068 (regTwo!32221 r!7292)) Nil!63738)))))

(declare-fun b!5819055 () Bool)

(declare-fun c!1031214 () Bool)

(assert (=> b!5819055 (= c!1031214 (is-ElementMatch!15854 (regTwo!32221 r!7292)))))

(declare-fun e!3571323 () Bool)

(assert (=> b!5819055 (= e!3571323 e!3571318)))

(declare-fun b!5819056 () Bool)

(assert (=> b!5819056 (= e!3571321 e!3571320)))

(assert (=> b!5819056 (= c!1031213 (is-Star!15854 (regTwo!32221 r!7292)))))

(declare-fun b!5819057 () Bool)

(assert (=> b!5819057 (= e!3571324 e!3571323)))

(declare-fun res!2453925 () Bool)

(assert (=> b!5819057 (= res!2453925 (not (is-EmptyLang!15854 (regTwo!32221 r!7292))))))

(assert (=> b!5819057 (=> (not res!2453925) (not e!3571323))))

(assert (= (and d!1831449 c!1031215) b!5819048))

(assert (= (and d!1831449 (not c!1031215)) b!5819057))

(assert (= (and b!5819057 res!2453925) b!5819055))

(assert (= (and b!5819055 c!1031214) b!5819054))

(assert (= (and b!5819055 (not c!1031214)) b!5819051))

(assert (= (and b!5819051 c!1031216) b!5819050))

(assert (= (and b!5819051 (not c!1031216)) b!5819056))

(assert (= (and b!5819050 (not res!2453924)) b!5819049))

(assert (= (and b!5819056 c!1031213) b!5819052))

(assert (= (and b!5819056 (not c!1031213)) b!5819053))

(assert (= (and b!5819052 (not res!2453923)) b!5819047))

(assert (= (or b!5819047 b!5819053) bm!454441))

(assert (= (or b!5819048 b!5819052) bm!454442))

(declare-fun m!6754892 () Bool)

(assert (=> bm!454441 m!6754892))

(declare-fun m!6754894 () Bool)

(assert (=> b!5819049 m!6754894))

(declare-fun m!6754896 () Bool)

(assert (=> b!5819050 m!6754896))

(assert (=> bm!454442 m!6754614))

(assert (=> b!5818556 d!1831449))

(assert (=> b!5818619 d!1831421))

(declare-fun d!1831451 () Bool)

(declare-fun lt!2301899 () Bool)

(assert (=> d!1831451 (= lt!2301899 (set.member lt!2301761 (content!11700 (t!377216 lt!2301764))))))

(declare-fun e!3571326 () Bool)

(assert (=> d!1831451 (= lt!2301899 e!3571326)))

(declare-fun res!2453926 () Bool)

(assert (=> d!1831451 (=> (not res!2453926) (not e!3571326))))

(assert (=> d!1831451 (= res!2453926 (is-Cons!63737 (t!377216 lt!2301764)))))

(assert (=> d!1831451 (= (contains!19894 (t!377216 lt!2301764) lt!2301761) lt!2301899)))

(declare-fun b!5819058 () Bool)

(declare-fun e!3571325 () Bool)

(assert (=> b!5819058 (= e!3571326 e!3571325)))

(declare-fun res!2453927 () Bool)

(assert (=> b!5819058 (=> res!2453927 e!3571325)))

(assert (=> b!5819058 (= res!2453927 (= (h!70185 (t!377216 lt!2301764)) lt!2301761))))

(declare-fun b!5819059 () Bool)

(assert (=> b!5819059 (= e!3571325 (contains!19894 (t!377216 (t!377216 lt!2301764)) lt!2301761))))

(assert (= (and d!1831451 res!2453926) b!5819058))

(assert (= (and b!5819058 (not res!2453927)) b!5819059))

(declare-fun m!6754898 () Bool)

(assert (=> d!1831451 m!6754898))

(declare-fun m!6754900 () Bool)

(assert (=> d!1831451 m!6754900))

(declare-fun m!6754902 () Bool)

(assert (=> b!5819059 m!6754902))

(assert (=> b!5818701 d!1831451))

(declare-fun d!1831453 () Bool)

(declare-fun res!2453932 () Bool)

(declare-fun e!3571331 () Bool)

(assert (=> d!1831453 (=> res!2453932 e!3571331)))

(assert (=> d!1831453 (= res!2453932 (is-Nil!63739 zl!343))))

(assert (=> d!1831453 (= (forall!14949 zl!343 lambda!318297) e!3571331)))

(declare-fun b!5819064 () Bool)

(declare-fun e!3571332 () Bool)

(assert (=> b!5819064 (= e!3571331 e!3571332)))

(declare-fun res!2453933 () Bool)

(assert (=> b!5819064 (=> (not res!2453933) (not e!3571332))))

(assert (=> b!5819064 (= res!2453933 (dynLambda!24949 lambda!318297 (h!70187 zl!343)))))

(declare-fun b!5819065 () Bool)

(assert (=> b!5819065 (= e!3571332 (forall!14949 (t!377218 zl!343) lambda!318297))))

(assert (= (and d!1831453 (not res!2453932)) b!5819064))

(assert (= (and b!5819064 res!2453933) b!5819065))

(declare-fun b_lambda!219319 () Bool)

(assert (=> (not b_lambda!219319) (not b!5819064)))

(declare-fun m!6754904 () Bool)

(assert (=> b!5819064 m!6754904))

(declare-fun m!6754906 () Bool)

(assert (=> b!5819065 m!6754906))

(assert (=> d!1831361 d!1831453))

(declare-fun d!1831455 () Bool)

(declare-fun nullableFct!1877 (Regex!15854) Bool)

(assert (=> d!1831455 (= (nullable!5868 (reg!16183 r!7292)) (nullableFct!1877 (reg!16183 r!7292)))))

(declare-fun bs!1372992 () Bool)

(assert (= bs!1372992 d!1831455))

(declare-fun m!6754908 () Bool)

(assert (=> bs!1372992 m!6754908))

(assert (=> b!5818456 d!1831455))

(assert (=> bm!454394 d!1831439))

(declare-fun b!5819066 () Bool)

(declare-fun e!3571338 () Bool)

(declare-fun e!3571333 () Bool)

(assert (=> b!5819066 (= e!3571338 e!3571333)))

(declare-fun c!1031218 () Bool)

(assert (=> b!5819066 (= c!1031218 (is-Union!15854 lt!2301813))))

(declare-fun b!5819067 () Bool)

(declare-fun res!2453938 () Bool)

(declare-fun e!3571334 () Bool)

(assert (=> b!5819067 (=> res!2453938 e!3571334)))

(assert (=> b!5819067 (= res!2453938 (not (is-Concat!24699 lt!2301813)))))

(assert (=> b!5819067 (= e!3571333 e!3571334)))

(declare-fun bm!454444 () Bool)

(declare-fun call!454450 () Bool)

(assert (=> bm!454444 (= call!454450 (validRegex!7590 (ite c!1031218 (regTwo!32221 lt!2301813) (regTwo!32220 lt!2301813))))))

(declare-fun b!5819068 () Bool)

(declare-fun e!3571339 () Bool)

(assert (=> b!5819068 (= e!3571334 e!3571339)))

(declare-fun res!2453937 () Bool)

(assert (=> b!5819068 (=> (not res!2453937) (not e!3571339))))

(declare-fun call!454449 () Bool)

(assert (=> b!5819068 (= res!2453937 call!454449)))

(declare-fun b!5819069 () Bool)

(declare-fun e!3571335 () Bool)

(assert (=> b!5819069 (= e!3571338 e!3571335)))

(declare-fun res!2453934 () Bool)

(assert (=> b!5819069 (= res!2453934 (not (nullable!5868 (reg!16183 lt!2301813))))))

(assert (=> b!5819069 (=> (not res!2453934) (not e!3571335))))

(declare-fun b!5819070 () Bool)

(declare-fun e!3571337 () Bool)

(assert (=> b!5819070 (= e!3571337 call!454450)))

(declare-fun b!5819071 () Bool)

(declare-fun call!454448 () Bool)

(assert (=> b!5819071 (= e!3571335 call!454448)))

(declare-fun b!5819072 () Bool)

(declare-fun e!3571336 () Bool)

(assert (=> b!5819072 (= e!3571336 e!3571338)))

(declare-fun c!1031217 () Bool)

(assert (=> b!5819072 (= c!1031217 (is-Star!15854 lt!2301813))))

(declare-fun b!5819073 () Bool)

(declare-fun res!2453935 () Bool)

(assert (=> b!5819073 (=> (not res!2453935) (not e!3571337))))

(assert (=> b!5819073 (= res!2453935 call!454449)))

(assert (=> b!5819073 (= e!3571333 e!3571337)))

(declare-fun b!5819074 () Bool)

(assert (=> b!5819074 (= e!3571339 call!454450)))

(declare-fun bm!454445 () Bool)

(assert (=> bm!454445 (= call!454448 (validRegex!7590 (ite c!1031217 (reg!16183 lt!2301813) (ite c!1031218 (regOne!32221 lt!2301813) (regOne!32220 lt!2301813)))))))

(declare-fun d!1831457 () Bool)

(declare-fun res!2453936 () Bool)

(assert (=> d!1831457 (=> res!2453936 e!3571336)))

(assert (=> d!1831457 (= res!2453936 (is-ElementMatch!15854 lt!2301813))))

(assert (=> d!1831457 (= (validRegex!7590 lt!2301813) e!3571336)))

(declare-fun bm!454443 () Bool)

(assert (=> bm!454443 (= call!454449 call!454448)))

(assert (= (and d!1831457 (not res!2453936)) b!5819072))

(assert (= (and b!5819072 c!1031217) b!5819069))

(assert (= (and b!5819072 (not c!1031217)) b!5819066))

(assert (= (and b!5819069 res!2453934) b!5819071))

(assert (= (and b!5819066 c!1031218) b!5819073))

(assert (= (and b!5819066 (not c!1031218)) b!5819067))

(assert (= (and b!5819073 res!2453935) b!5819070))

(assert (= (and b!5819067 (not res!2453938)) b!5819068))

(assert (= (and b!5819068 res!2453937) b!5819074))

(assert (= (or b!5819070 b!5819074) bm!454444))

(assert (= (or b!5819073 b!5819068) bm!454443))

(assert (= (or b!5819071 bm!454443) bm!454445))

(declare-fun m!6754910 () Bool)

(assert (=> bm!454444 m!6754910))

(declare-fun m!6754912 () Bool)

(assert (=> b!5819069 m!6754912))

(declare-fun m!6754914 () Bool)

(assert (=> bm!454445 m!6754914))

(assert (=> d!1831327 d!1831457))

(declare-fun bs!1372993 () Bool)

(declare-fun d!1831459 () Bool)

(assert (= bs!1372993 (and d!1831459 b!5818338)))

(declare-fun lambda!318331 () Int)

(assert (=> bs!1372993 (not (= lambda!318331 lambda!318255))))

(declare-fun bs!1372994 () Bool)

(assert (= bs!1372994 (and d!1831459 d!1831359)))

(assert (=> bs!1372994 (= lambda!318331 lambda!318294)))

(declare-fun bs!1372995 () Bool)

(assert (= bs!1372995 (and d!1831459 d!1831345)))

(assert (=> bs!1372995 (not (= lambda!318331 lambda!318282))))

(declare-fun bs!1372996 () Bool)

(assert (= bs!1372996 (and d!1831459 d!1831347)))

(assert (=> bs!1372996 (= lambda!318331 lambda!318287)))

(assert (=> bs!1372996 (not (= lambda!318331 lambda!318288))))

(declare-fun bs!1372997 () Bool)

(assert (= bs!1372997 (and d!1831459 d!1831369)))

(assert (=> bs!1372997 (= lambda!318331 lambda!318301)))

(declare-fun bs!1372998 () Bool)

(assert (= bs!1372998 (and d!1831459 d!1831351)))

(assert (=> bs!1372998 (= lambda!318331 lambda!318291)))

(declare-fun b!5819095 () Bool)

(declare-fun e!3571353 () Bool)

(declare-fun lt!2301902 () Regex!15854)

(assert (=> b!5819095 (= e!3571353 (= lt!2301902 (head!12294 (unfocusZipperList!1276 zl!343))))))

(declare-fun b!5819096 () Bool)

(declare-fun e!3571356 () Regex!15854)

(declare-fun e!3571354 () Regex!15854)

(assert (=> b!5819096 (= e!3571356 e!3571354)))

(declare-fun c!1031228 () Bool)

(assert (=> b!5819096 (= c!1031228 (is-Cons!63737 (unfocusZipperList!1276 zl!343)))))

(declare-fun b!5819097 () Bool)

(declare-fun e!3571357 () Bool)

(declare-fun e!3571352 () Bool)

(assert (=> b!5819097 (= e!3571357 e!3571352)))

(declare-fun c!1031229 () Bool)

(declare-fun isEmpty!35637 (List!63861) Bool)

(assert (=> b!5819097 (= c!1031229 (isEmpty!35637 (unfocusZipperList!1276 zl!343)))))

(declare-fun b!5819098 () Bool)

(declare-fun isUnion!745 (Regex!15854) Bool)

(assert (=> b!5819098 (= e!3571353 (isUnion!745 lt!2301902))))

(declare-fun b!5819100 () Bool)

(assert (=> b!5819100 (= e!3571356 (h!70185 (unfocusZipperList!1276 zl!343)))))

(declare-fun b!5819101 () Bool)

(declare-fun isEmptyLang!1315 (Regex!15854) Bool)

(assert (=> b!5819101 (= e!3571352 (isEmptyLang!1315 lt!2301902))))

(declare-fun b!5819102 () Bool)

(declare-fun e!3571355 () Bool)

(assert (=> b!5819102 (= e!3571355 (isEmpty!35637 (t!377216 (unfocusZipperList!1276 zl!343))))))

(declare-fun b!5819103 () Bool)

(assert (=> b!5819103 (= e!3571354 EmptyLang!15854)))

(declare-fun b!5819104 () Bool)

(assert (=> b!5819104 (= e!3571354 (Union!15854 (h!70185 (unfocusZipperList!1276 zl!343)) (generalisedUnion!1707 (t!377216 (unfocusZipperList!1276 zl!343)))))))

(declare-fun b!5819099 () Bool)

(assert (=> b!5819099 (= e!3571352 e!3571353)))

(declare-fun c!1031227 () Bool)

(declare-fun tail!11383 (List!63861) List!63861)

(assert (=> b!5819099 (= c!1031227 (isEmpty!35637 (tail!11383 (unfocusZipperList!1276 zl!343))))))

(assert (=> d!1831459 e!3571357))

(declare-fun res!2453943 () Bool)

(assert (=> d!1831459 (=> (not res!2453943) (not e!3571357))))

(assert (=> d!1831459 (= res!2453943 (validRegex!7590 lt!2301902))))

(assert (=> d!1831459 (= lt!2301902 e!3571356)))

(declare-fun c!1031230 () Bool)

(assert (=> d!1831459 (= c!1031230 e!3571355)))

(declare-fun res!2453944 () Bool)

(assert (=> d!1831459 (=> (not res!2453944) (not e!3571355))))

(assert (=> d!1831459 (= res!2453944 (is-Cons!63737 (unfocusZipperList!1276 zl!343)))))

(assert (=> d!1831459 (forall!14948 (unfocusZipperList!1276 zl!343) lambda!318331)))

(assert (=> d!1831459 (= (generalisedUnion!1707 (unfocusZipperList!1276 zl!343)) lt!2301902)))

(assert (= (and d!1831459 res!2453944) b!5819102))

(assert (= (and d!1831459 c!1031230) b!5819100))

(assert (= (and d!1831459 (not c!1031230)) b!5819096))

(assert (= (and b!5819096 c!1031228) b!5819104))

(assert (= (and b!5819096 (not c!1031228)) b!5819103))

(assert (= (and d!1831459 res!2453943) b!5819097))

(assert (= (and b!5819097 c!1031229) b!5819101))

(assert (= (and b!5819097 (not c!1031229)) b!5819099))

(assert (= (and b!5819099 c!1031227) b!5819095))

(assert (= (and b!5819099 (not c!1031227)) b!5819098))

(assert (=> b!5819097 m!6754510))

(declare-fun m!6754916 () Bool)

(assert (=> b!5819097 m!6754916))

(declare-fun m!6754918 () Bool)

(assert (=> d!1831459 m!6754918))

(assert (=> d!1831459 m!6754510))

(declare-fun m!6754920 () Bool)

(assert (=> d!1831459 m!6754920))

(declare-fun m!6754922 () Bool)

(assert (=> b!5819102 m!6754922))

(assert (=> b!5819095 m!6754510))

(declare-fun m!6754924 () Bool)

(assert (=> b!5819095 m!6754924))

(declare-fun m!6754926 () Bool)

(assert (=> b!5819104 m!6754926))

(declare-fun m!6754928 () Bool)

(assert (=> b!5819098 m!6754928))

(declare-fun m!6754930 () Bool)

(assert (=> b!5819101 m!6754930))

(assert (=> b!5819099 m!6754510))

(declare-fun m!6754932 () Bool)

(assert (=> b!5819099 m!6754932))

(assert (=> b!5819099 m!6754932))

(declare-fun m!6754934 () Bool)

(assert (=> b!5819099 m!6754934))

(assert (=> d!1831327 d!1831459))

(assert (=> d!1831327 d!1831351))

(declare-fun b!5819105 () Bool)

(declare-fun e!3571363 () Bool)

(declare-fun e!3571364 () Bool)

(assert (=> b!5819105 (= e!3571363 e!3571364)))

(declare-fun res!2453949 () Bool)

(assert (=> b!5819105 (=> res!2453949 e!3571364)))

(declare-fun call!454451 () Bool)

(assert (=> b!5819105 (= res!2453949 call!454451)))

(declare-fun b!5819106 () Bool)

(declare-fun e!3571360 () Bool)

(assert (=> b!5819106 (= e!3571360 (matchR!8039 (derivativeStep!4609 (h!70185 lt!2301764) (head!12293 s!2326)) (tail!11381 s!2326)))))

(declare-fun b!5819107 () Bool)

(assert (=> b!5819107 (= e!3571360 (nullable!5868 (h!70185 lt!2301764)))))

(declare-fun b!5819108 () Bool)

(declare-fun e!3571359 () Bool)

(assert (=> b!5819108 (= e!3571359 (= (head!12293 s!2326) (c!1031068 (h!70185 lt!2301764))))))

(declare-fun b!5819109 () Bool)

(declare-fun res!2453945 () Bool)

(assert (=> b!5819109 (=> (not res!2453945) (not e!3571359))))

(assert (=> b!5819109 (= res!2453945 (not call!454451))))

(declare-fun b!5819110 () Bool)

(declare-fun e!3571361 () Bool)

(declare-fun lt!2301903 () Bool)

(assert (=> b!5819110 (= e!3571361 (= lt!2301903 call!454451))))

(declare-fun b!5819111 () Bool)

(assert (=> b!5819111 (= e!3571364 (not (= (head!12293 s!2326) (c!1031068 (h!70185 lt!2301764)))))))

(declare-fun b!5819112 () Bool)

(declare-fun res!2453946 () Bool)

(assert (=> b!5819112 (=> (not res!2453946) (not e!3571359))))

(assert (=> b!5819112 (= res!2453946 (isEmpty!35635 (tail!11381 s!2326)))))

(declare-fun b!5819113 () Bool)

(declare-fun e!3571358 () Bool)

(assert (=> b!5819113 (= e!3571358 (not lt!2301903))))

(declare-fun b!5819114 () Bool)

(declare-fun e!3571362 () Bool)

(assert (=> b!5819114 (= e!3571362 e!3571363)))

(declare-fun res!2453947 () Bool)

(assert (=> b!5819114 (=> (not res!2453947) (not e!3571363))))

(assert (=> b!5819114 (= res!2453947 (not lt!2301903))))

(declare-fun b!5819115 () Bool)

(assert (=> b!5819115 (= e!3571361 e!3571358)))

(declare-fun c!1031231 () Bool)

(assert (=> b!5819115 (= c!1031231 (is-EmptyLang!15854 (h!70185 lt!2301764)))))

(declare-fun b!5819116 () Bool)

(declare-fun res!2453948 () Bool)

(assert (=> b!5819116 (=> res!2453948 e!3571362)))

(assert (=> b!5819116 (= res!2453948 e!3571359)))

(declare-fun res!2453950 () Bool)

(assert (=> b!5819116 (=> (not res!2453950) (not e!3571359))))

(assert (=> b!5819116 (= res!2453950 lt!2301903)))

(declare-fun b!5819117 () Bool)

(declare-fun res!2453952 () Bool)

(assert (=> b!5819117 (=> res!2453952 e!3571362)))

(assert (=> b!5819117 (= res!2453952 (not (is-ElementMatch!15854 (h!70185 lt!2301764))))))

(assert (=> b!5819117 (= e!3571358 e!3571362)))

(declare-fun b!5819118 () Bool)

(declare-fun res!2453951 () Bool)

(assert (=> b!5819118 (=> res!2453951 e!3571364)))

(assert (=> b!5819118 (= res!2453951 (not (isEmpty!35635 (tail!11381 s!2326))))))

(declare-fun d!1831461 () Bool)

(assert (=> d!1831461 e!3571361))

(declare-fun c!1031233 () Bool)

(assert (=> d!1831461 (= c!1031233 (is-EmptyExpr!15854 (h!70185 lt!2301764)))))

(assert (=> d!1831461 (= lt!2301903 e!3571360)))

(declare-fun c!1031232 () Bool)

(assert (=> d!1831461 (= c!1031232 (isEmpty!35635 s!2326))))

(assert (=> d!1831461 (validRegex!7590 (h!70185 lt!2301764))))

(assert (=> d!1831461 (= (matchR!8039 (h!70185 lt!2301764) s!2326) lt!2301903)))

(declare-fun bm!454446 () Bool)

(assert (=> bm!454446 (= call!454451 (isEmpty!35635 s!2326))))

(assert (= (and d!1831461 c!1031232) b!5819107))

(assert (= (and d!1831461 (not c!1031232)) b!5819106))

(assert (= (and d!1831461 c!1031233) b!5819110))

(assert (= (and d!1831461 (not c!1031233)) b!5819115))

(assert (= (and b!5819115 c!1031231) b!5819113))

(assert (= (and b!5819115 (not c!1031231)) b!5819117))

(assert (= (and b!5819117 (not res!2453952)) b!5819116))

(assert (= (and b!5819116 res!2453950) b!5819109))

(assert (= (and b!5819109 res!2453945) b!5819112))

(assert (= (and b!5819112 res!2453946) b!5819108))

(assert (= (and b!5819116 (not res!2453948)) b!5819114))

(assert (= (and b!5819114 res!2453947) b!5819105))

(assert (= (and b!5819105 (not res!2453949)) b!5819118))

(assert (= (and b!5819118 (not res!2453951)) b!5819111))

(assert (= (or b!5819110 b!5819105 b!5819109) bm!454446))

(assert (=> b!5819118 m!6754632))

(assert (=> b!5819118 m!6754632))

(assert (=> b!5819118 m!6754634))

(assert (=> d!1831461 m!6754614))

(assert (=> d!1831461 m!6754744))

(assert (=> bm!454446 m!6754614))

(declare-fun m!6754936 () Bool)

(assert (=> b!5819107 m!6754936))

(assert (=> b!5819112 m!6754632))

(assert (=> b!5819112 m!6754632))

(assert (=> b!5819112 m!6754634))

(assert (=> b!5819108 m!6754638))

(assert (=> b!5819106 m!6754638))

(assert (=> b!5819106 m!6754638))

(declare-fun m!6754938 () Bool)

(assert (=> b!5819106 m!6754938))

(assert (=> b!5819106 m!6754632))

(assert (=> b!5819106 m!6754938))

(assert (=> b!5819106 m!6754632))

(declare-fun m!6754940 () Bool)

(assert (=> b!5819106 m!6754940))

(assert (=> b!5819111 m!6754638))

(assert (=> b!5818798 d!1831461))

(declare-fun d!1831463 () Bool)

(declare-fun res!2453953 () Bool)

(declare-fun e!3571365 () Bool)

(assert (=> d!1831463 (=> res!2453953 e!3571365)))

(assert (=> d!1831463 (= res!2453953 (is-Nil!63737 lt!2301764))))

(assert (=> d!1831463 (= (forall!14948 lt!2301764 lambda!318282) e!3571365)))

(declare-fun b!5819119 () Bool)

(declare-fun e!3571366 () Bool)

(assert (=> b!5819119 (= e!3571365 e!3571366)))

(declare-fun res!2453954 () Bool)

(assert (=> b!5819119 (=> (not res!2453954) (not e!3571366))))

(assert (=> b!5819119 (= res!2453954 (dynLambda!24951 lambda!318282 (h!70185 lt!2301764)))))

(declare-fun b!5819120 () Bool)

(assert (=> b!5819120 (= e!3571366 (forall!14948 (t!377216 lt!2301764) lambda!318282))))

(assert (= (and d!1831463 (not res!2453953)) b!5819119))

(assert (= (and b!5819119 res!2453954) b!5819120))

(declare-fun b_lambda!219321 () Bool)

(assert (=> (not b_lambda!219321) (not b!5819119)))

(declare-fun m!6754942 () Bool)

(assert (=> b!5819119 m!6754942))

(declare-fun m!6754944 () Bool)

(assert (=> b!5819120 m!6754944))

(assert (=> d!1831345 d!1831463))

(assert (=> bm!454398 d!1831439))

(declare-fun b!5819121 () Bool)

(declare-fun e!3571372 () Bool)

(declare-fun e!3571367 () Bool)

(assert (=> b!5819121 (= e!3571372 e!3571367)))

(declare-fun c!1031235 () Bool)

(assert (=> b!5819121 (= c!1031235 (is-Union!15854 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))

(declare-fun b!5819122 () Bool)

(declare-fun res!2453959 () Bool)

(declare-fun e!3571368 () Bool)

(assert (=> b!5819122 (=> res!2453959 e!3571368)))

(assert (=> b!5819122 (= res!2453959 (not (is-Concat!24699 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292))))))))

(assert (=> b!5819122 (= e!3571367 e!3571368)))

(declare-fun call!454454 () Bool)

(declare-fun bm!454448 () Bool)

(assert (=> bm!454448 (= call!454454 (validRegex!7590 (ite c!1031235 (regTwo!32221 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))) (regTwo!32220 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))))

(declare-fun b!5819123 () Bool)

(declare-fun e!3571373 () Bool)

(assert (=> b!5819123 (= e!3571368 e!3571373)))

(declare-fun res!2453958 () Bool)

(assert (=> b!5819123 (=> (not res!2453958) (not e!3571373))))

(declare-fun call!454453 () Bool)

(assert (=> b!5819123 (= res!2453958 call!454453)))

(declare-fun b!5819124 () Bool)

(declare-fun e!3571369 () Bool)

(assert (=> b!5819124 (= e!3571372 e!3571369)))

(declare-fun res!2453955 () Bool)

(assert (=> b!5819124 (= res!2453955 (not (nullable!5868 (reg!16183 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))))

(assert (=> b!5819124 (=> (not res!2453955) (not e!3571369))))

(declare-fun b!5819125 () Bool)

(declare-fun e!3571371 () Bool)

(assert (=> b!5819125 (= e!3571371 call!454454)))

(declare-fun b!5819126 () Bool)

(declare-fun call!454452 () Bool)

(assert (=> b!5819126 (= e!3571369 call!454452)))

(declare-fun b!5819127 () Bool)

(declare-fun e!3571370 () Bool)

(assert (=> b!5819127 (= e!3571370 e!3571372)))

(declare-fun c!1031234 () Bool)

(assert (=> b!5819127 (= c!1031234 (is-Star!15854 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))

(declare-fun b!5819128 () Bool)

(declare-fun res!2453956 () Bool)

(assert (=> b!5819128 (=> (not res!2453956) (not e!3571371))))

(assert (=> b!5819128 (= res!2453956 call!454453)))

(assert (=> b!5819128 (= e!3571367 e!3571371)))

(declare-fun b!5819129 () Bool)

(assert (=> b!5819129 (= e!3571373 call!454454)))

(declare-fun bm!454449 () Bool)

(assert (=> bm!454449 (= call!454452 (validRegex!7590 (ite c!1031234 (reg!16183 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))) (ite c!1031235 (regOne!32221 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))) (regOne!32220 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292))))))))))

(declare-fun d!1831465 () Bool)

(declare-fun res!2453957 () Bool)

(assert (=> d!1831465 (=> res!2453957 e!3571370)))

(assert (=> d!1831465 (= res!2453957 (is-ElementMatch!15854 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))))))

(assert (=> d!1831465 (= (validRegex!7590 (ite c!1031076 (reg!16183 r!7292) (ite c!1031077 (regOne!32221 r!7292) (regOne!32220 r!7292)))) e!3571370)))

(declare-fun bm!454447 () Bool)

(assert (=> bm!454447 (= call!454453 call!454452)))

(assert (= (and d!1831465 (not res!2453957)) b!5819127))

(assert (= (and b!5819127 c!1031234) b!5819124))

(assert (= (and b!5819127 (not c!1031234)) b!5819121))

(assert (= (and b!5819124 res!2453955) b!5819126))

(assert (= (and b!5819121 c!1031235) b!5819128))

(assert (= (and b!5819121 (not c!1031235)) b!5819122))

(assert (= (and b!5819128 res!2453956) b!5819125))

(assert (= (and b!5819122 (not res!2453959)) b!5819123))

(assert (= (and b!5819123 res!2453958) b!5819129))

(assert (= (or b!5819125 b!5819129) bm!454448))

(assert (= (or b!5819128 b!5819123) bm!454447))

(assert (= (or b!5819126 bm!454447) bm!454449))

(declare-fun m!6754946 () Bool)

(assert (=> bm!454448 m!6754946))

(declare-fun m!6754948 () Bool)

(assert (=> b!5819124 m!6754948))

(declare-fun m!6754950 () Bool)

(assert (=> bm!454449 m!6754950))

(assert (=> bm!454386 d!1831465))

(assert (=> d!1831339 d!1831439))

(assert (=> d!1831339 d!1831343))

(declare-fun bs!1372999 () Bool)

(declare-fun d!1831467 () Bool)

(assert (= bs!1372999 (and d!1831467 b!5818338)))

(declare-fun lambda!318334 () Int)

(assert (=> bs!1372999 (not (= lambda!318334 lambda!318255))))

(declare-fun bs!1373000 () Bool)

(assert (= bs!1373000 (and d!1831467 d!1831359)))

(assert (=> bs!1373000 (= lambda!318334 lambda!318294)))

(declare-fun bs!1373001 () Bool)

(assert (= bs!1373001 (and d!1831467 d!1831345)))

(assert (=> bs!1373001 (not (= lambda!318334 lambda!318282))))

(declare-fun bs!1373002 () Bool)

(assert (= bs!1373002 (and d!1831467 d!1831347)))

(assert (=> bs!1373002 (= lambda!318334 lambda!318287)))

(assert (=> bs!1373002 (not (= lambda!318334 lambda!318288))))

(declare-fun bs!1373003 () Bool)

(assert (= bs!1373003 (and d!1831467 d!1831369)))

(assert (=> bs!1373003 (= lambda!318334 lambda!318301)))

(declare-fun bs!1373004 () Bool)

(assert (= bs!1373004 (and d!1831467 d!1831351)))

(assert (=> bs!1373004 (= lambda!318334 lambda!318291)))

(declare-fun bs!1373005 () Bool)

(assert (= bs!1373005 (and d!1831467 d!1831459)))

(assert (=> bs!1373005 (= lambda!318334 lambda!318331)))

(declare-fun b!5819150 () Bool)

(declare-fun e!3571388 () Regex!15854)

(assert (=> b!5819150 (= e!3571388 (Concat!24699 (h!70185 (exprs!5738 (h!70187 zl!343))) (generalisedConcat!1459 (t!377216 (exprs!5738 (h!70187 zl!343))))))))

(declare-fun b!5819151 () Bool)

(declare-fun e!3571391 () Bool)

(assert (=> b!5819151 (= e!3571391 (isEmpty!35637 (t!377216 (exprs!5738 (h!70187 zl!343)))))))

(declare-fun b!5819152 () Bool)

(declare-fun e!3571387 () Regex!15854)

(assert (=> b!5819152 (= e!3571387 e!3571388)))

(declare-fun c!1031245 () Bool)

(assert (=> b!5819152 (= c!1031245 (is-Cons!63737 (exprs!5738 (h!70187 zl!343))))))

(declare-fun b!5819153 () Bool)

(declare-fun e!3571386 () Bool)

(declare-fun e!3571389 () Bool)

(assert (=> b!5819153 (= e!3571386 e!3571389)))

(declare-fun c!1031246 () Bool)

(assert (=> b!5819153 (= c!1031246 (isEmpty!35637 (exprs!5738 (h!70187 zl!343))))))

(declare-fun b!5819154 () Bool)

(declare-fun e!3571390 () Bool)

(declare-fun lt!2301906 () Regex!15854)

(assert (=> b!5819154 (= e!3571390 (= lt!2301906 (head!12294 (exprs!5738 (h!70187 zl!343)))))))

(declare-fun b!5819155 () Bool)

(assert (=> b!5819155 (= e!3571387 (h!70185 (exprs!5738 (h!70187 zl!343))))))

(declare-fun b!5819156 () Bool)

(assert (=> b!5819156 (= e!3571389 e!3571390)))

(declare-fun c!1031247 () Bool)

(assert (=> b!5819156 (= c!1031247 (isEmpty!35637 (tail!11383 (exprs!5738 (h!70187 zl!343)))))))

(declare-fun b!5819157 () Bool)

(declare-fun isEmptyExpr!1308 (Regex!15854) Bool)

(assert (=> b!5819157 (= e!3571389 (isEmptyExpr!1308 lt!2301906))))

(assert (=> d!1831467 e!3571386))

(declare-fun res!2453965 () Bool)

(assert (=> d!1831467 (=> (not res!2453965) (not e!3571386))))

(assert (=> d!1831467 (= res!2453965 (validRegex!7590 lt!2301906))))

(assert (=> d!1831467 (= lt!2301906 e!3571387)))

(declare-fun c!1031244 () Bool)

(assert (=> d!1831467 (= c!1031244 e!3571391)))

(declare-fun res!2453964 () Bool)

(assert (=> d!1831467 (=> (not res!2453964) (not e!3571391))))

(assert (=> d!1831467 (= res!2453964 (is-Cons!63737 (exprs!5738 (h!70187 zl!343))))))

(assert (=> d!1831467 (forall!14948 (exprs!5738 (h!70187 zl!343)) lambda!318334)))

(assert (=> d!1831467 (= (generalisedConcat!1459 (exprs!5738 (h!70187 zl!343))) lt!2301906)))

(declare-fun b!5819158 () Bool)

(assert (=> b!5819158 (= e!3571388 EmptyExpr!15854)))

(declare-fun b!5819159 () Bool)

(declare-fun isConcat!831 (Regex!15854) Bool)

(assert (=> b!5819159 (= e!3571390 (isConcat!831 lt!2301906))))

(assert (= (and d!1831467 res!2453964) b!5819151))

(assert (= (and d!1831467 c!1031244) b!5819155))

(assert (= (and d!1831467 (not c!1031244)) b!5819152))

(assert (= (and b!5819152 c!1031245) b!5819150))

(assert (= (and b!5819152 (not c!1031245)) b!5819158))

(assert (= (and d!1831467 res!2453965) b!5819153))

(assert (= (and b!5819153 c!1031246) b!5819157))

(assert (= (and b!5819153 (not c!1031246)) b!5819156))

(assert (= (and b!5819156 c!1031247) b!5819154))

(assert (= (and b!5819156 (not c!1031247)) b!5819159))

(declare-fun m!6754952 () Bool)

(assert (=> b!5819154 m!6754952))

(declare-fun m!6754954 () Bool)

(assert (=> b!5819151 m!6754954))

(declare-fun m!6754956 () Bool)

(assert (=> b!5819150 m!6754956))

(declare-fun m!6754958 () Bool)

(assert (=> b!5819159 m!6754958))

(declare-fun m!6754960 () Bool)

(assert (=> b!5819157 m!6754960))

(declare-fun m!6754962 () Bool)

(assert (=> b!5819156 m!6754962))

(assert (=> b!5819156 m!6754962))

(declare-fun m!6754964 () Bool)

(assert (=> b!5819156 m!6754964))

(declare-fun m!6754966 () Bool)

(assert (=> d!1831467 m!6754966))

(declare-fun m!6754968 () Bool)

(assert (=> d!1831467 m!6754968))

(declare-fun m!6754970 () Bool)

(assert (=> b!5819153 m!6754970))

(assert (=> b!5818694 d!1831467))

(declare-fun bs!1373006 () Bool)

(declare-fun d!1831469 () Bool)

(assert (= bs!1373006 (and d!1831469 b!5818338)))

(declare-fun lambda!318335 () Int)

(assert (=> bs!1373006 (not (= lambda!318335 lambda!318255))))

(declare-fun bs!1373007 () Bool)

(assert (= bs!1373007 (and d!1831469 d!1831359)))

(assert (=> bs!1373007 (= lambda!318335 lambda!318294)))

(declare-fun bs!1373008 () Bool)

(assert (= bs!1373008 (and d!1831469 d!1831467)))

(assert (=> bs!1373008 (= lambda!318335 lambda!318334)))

(declare-fun bs!1373009 () Bool)

(assert (= bs!1373009 (and d!1831469 d!1831345)))

(assert (=> bs!1373009 (not (= lambda!318335 lambda!318282))))

(declare-fun bs!1373010 () Bool)

(assert (= bs!1373010 (and d!1831469 d!1831347)))

(assert (=> bs!1373010 (= lambda!318335 lambda!318287)))

(assert (=> bs!1373010 (not (= lambda!318335 lambda!318288))))

(declare-fun bs!1373011 () Bool)

(assert (= bs!1373011 (and d!1831469 d!1831369)))

(assert (=> bs!1373011 (= lambda!318335 lambda!318301)))

(declare-fun bs!1373012 () Bool)

(assert (= bs!1373012 (and d!1831469 d!1831351)))

(assert (=> bs!1373012 (= lambda!318335 lambda!318291)))

(declare-fun bs!1373013 () Bool)

(assert (= bs!1373013 (and d!1831469 d!1831459)))

(assert (=> bs!1373013 (= lambda!318335 lambda!318331)))

(declare-fun lt!2301907 () List!63861)

(assert (=> d!1831469 (forall!14948 lt!2301907 lambda!318335)))

(declare-fun e!3571392 () List!63861)

(assert (=> d!1831469 (= lt!2301907 e!3571392)))

(declare-fun c!1031248 () Bool)

(assert (=> d!1831469 (= c!1031248 (is-Cons!63739 (t!377218 zl!343)))))

(assert (=> d!1831469 (= (unfocusZipperList!1276 (t!377218 zl!343)) lt!2301907)))

(declare-fun b!5819160 () Bool)

(assert (=> b!5819160 (= e!3571392 (Cons!63737 (generalisedConcat!1459 (exprs!5738 (h!70187 (t!377218 zl!343)))) (unfocusZipperList!1276 (t!377218 (t!377218 zl!343)))))))

(declare-fun b!5819161 () Bool)

(assert (=> b!5819161 (= e!3571392 Nil!63737)))

(assert (= (and d!1831469 c!1031248) b!5819160))

(assert (= (and d!1831469 (not c!1031248)) b!5819161))

(declare-fun m!6754972 () Bool)

(assert (=> d!1831469 m!6754972))

(declare-fun m!6754974 () Bool)

(assert (=> b!5819160 m!6754974))

(declare-fun m!6754976 () Bool)

(assert (=> b!5819160 m!6754976))

(assert (=> b!5818694 d!1831469))

(assert (=> d!1831357 d!1831345))

(declare-fun b!5819162 () Bool)

(declare-fun e!3571394 () Regex!15854)

(assert (=> b!5819162 (= e!3571394 (h!70185 (t!377216 lt!2301764)))))

(declare-fun b!5819163 () Bool)

(declare-fun e!3571396 () Bool)

(declare-fun lt!2301908 () Regex!15854)

(assert (=> b!5819163 (= e!3571396 (contains!19894 (t!377216 lt!2301764) lt!2301908))))

(declare-fun b!5819164 () Bool)

(declare-fun e!3571395 () Regex!15854)

(assert (=> b!5819164 (= e!3571394 e!3571395)))

(declare-fun c!1031249 () Bool)

(assert (=> b!5819164 (= c!1031249 (is-Cons!63737 (t!377216 lt!2301764)))))

(declare-fun b!5819165 () Bool)

(assert (=> b!5819165 (= e!3571395 (getWitness!922 (t!377216 (t!377216 lt!2301764)) lambda!318255))))

(declare-fun d!1831471 () Bool)

(assert (=> d!1831471 e!3571396))

(declare-fun res!2453967 () Bool)

(assert (=> d!1831471 (=> (not res!2453967) (not e!3571396))))

(assert (=> d!1831471 (= res!2453967 (dynLambda!24951 lambda!318255 lt!2301908))))

(assert (=> d!1831471 (= lt!2301908 e!3571394)))

(declare-fun c!1031250 () Bool)

(declare-fun e!3571393 () Bool)

(assert (=> d!1831471 (= c!1031250 e!3571393)))

(declare-fun res!2453966 () Bool)

(assert (=> d!1831471 (=> (not res!2453966) (not e!3571393))))

(assert (=> d!1831471 (= res!2453966 (is-Cons!63737 (t!377216 lt!2301764)))))

(assert (=> d!1831471 (exists!2272 (t!377216 lt!2301764) lambda!318255)))

(assert (=> d!1831471 (= (getWitness!922 (t!377216 lt!2301764) lambda!318255) lt!2301908)))

(declare-fun b!5819166 () Bool)

(assert (=> b!5819166 (= e!3571393 (dynLambda!24951 lambda!318255 (h!70185 (t!377216 lt!2301764))))))

(declare-fun b!5819167 () Bool)

(declare-fun lt!2301909 () Unit!156974)

(declare-fun Unit!156982 () Unit!156974)

(assert (=> b!5819167 (= lt!2301909 Unit!156982)))

(assert (=> b!5819167 false))

(assert (=> b!5819167 (= e!3571395 (head!12294 (t!377216 lt!2301764)))))

(assert (= (and d!1831471 res!2453966) b!5819166))

(assert (= (and d!1831471 c!1031250) b!5819162))

(assert (= (and d!1831471 (not c!1031250)) b!5819164))

(assert (= (and b!5819164 c!1031249) b!5819165))

(assert (= (and b!5819164 (not c!1031249)) b!5819167))

(assert (= (and d!1831471 res!2453967) b!5819163))

(declare-fun b_lambda!219323 () Bool)

(assert (=> (not b_lambda!219323) (not d!1831471)))

(declare-fun b_lambda!219325 () Bool)

(assert (=> (not b_lambda!219325) (not b!5819166)))

(declare-fun m!6754978 () Bool)

(assert (=> b!5819166 m!6754978))

(declare-fun m!6754980 () Bool)

(assert (=> b!5819167 m!6754980))

(declare-fun m!6754982 () Bool)

(assert (=> b!5819165 m!6754982))

(declare-fun m!6754984 () Bool)

(assert (=> b!5819163 m!6754984))

(declare-fun m!6754986 () Bool)

(assert (=> d!1831471 m!6754986))

(declare-fun m!6754988 () Bool)

(assert (=> d!1831471 m!6754988))

(assert (=> b!5818729 d!1831471))

(declare-fun d!1831473 () Bool)

(declare-fun lt!2301910 () Bool)

(assert (=> d!1831473 (= lt!2301910 (set.member lt!2301847 (content!11700 lt!2301764)))))

(declare-fun e!3571398 () Bool)

(assert (=> d!1831473 (= lt!2301910 e!3571398)))

(declare-fun res!2453968 () Bool)

(assert (=> d!1831473 (=> (not res!2453968) (not e!3571398))))

(assert (=> d!1831473 (= res!2453968 (is-Cons!63737 lt!2301764))))

(assert (=> d!1831473 (= (contains!19894 lt!2301764 lt!2301847) lt!2301910)))

(declare-fun b!5819168 () Bool)

(declare-fun e!3571397 () Bool)

(assert (=> b!5819168 (= e!3571398 e!3571397)))

(declare-fun res!2453969 () Bool)

(assert (=> b!5819168 (=> res!2453969 e!3571397)))

(assert (=> b!5819168 (= res!2453969 (= (h!70185 lt!2301764) lt!2301847))))

(declare-fun b!5819169 () Bool)

(assert (=> b!5819169 (= e!3571397 (contains!19894 (t!377216 lt!2301764) lt!2301847))))

(assert (= (and d!1831473 res!2453968) b!5819168))

(assert (= (and b!5819168 (not res!2453969)) b!5819169))

(assert (=> d!1831473 m!6754690))

(declare-fun m!6754990 () Bool)

(assert (=> d!1831473 m!6754990))

(declare-fun m!6754992 () Bool)

(assert (=> b!5819169 m!6754992))

(assert (=> b!5818727 d!1831473))

(declare-fun d!1831475 () Bool)

(assert (=> d!1831475 (= (nullable!5868 lt!2301761) (nullableFct!1877 lt!2301761))))

(declare-fun bs!1373014 () Bool)

(assert (= bs!1373014 d!1831475))

(declare-fun m!6754994 () Bool)

(assert (=> bs!1373014 m!6754994))

(assert (=> b!5818647 d!1831475))

(declare-fun b!5819170 () Bool)

(declare-fun e!3571400 () Context!10476)

(assert (=> b!5819170 (= e!3571400 (h!70187 (t!377218 zl!343)))))

(declare-fun b!5819172 () Bool)

(declare-fun e!3571401 () Context!10476)

(assert (=> b!5819172 (= e!3571401 (getWitness!921 (t!377218 (t!377218 zl!343)) lambda!318256))))

(declare-fun b!5819173 () Bool)

(declare-fun e!3571399 () Bool)

(assert (=> b!5819173 (= e!3571399 (dynLambda!24949 lambda!318256 (h!70187 (t!377218 zl!343))))))

(declare-fun b!5819171 () Bool)

(assert (=> b!5819171 (= e!3571400 e!3571401)))

(declare-fun c!1031252 () Bool)

(assert (=> b!5819171 (= c!1031252 (is-Cons!63739 (t!377218 zl!343)))))

(declare-fun d!1831477 () Bool)

(declare-fun e!3571402 () Bool)

(assert (=> d!1831477 e!3571402))

(declare-fun res!2453971 () Bool)

(assert (=> d!1831477 (=> (not res!2453971) (not e!3571402))))

(declare-fun lt!2301911 () Context!10476)

(assert (=> d!1831477 (= res!2453971 (dynLambda!24949 lambda!318256 lt!2301911))))

(assert (=> d!1831477 (= lt!2301911 e!3571400)))

(declare-fun c!1031251 () Bool)

(assert (=> d!1831477 (= c!1031251 e!3571399)))

(declare-fun res!2453970 () Bool)

(assert (=> d!1831477 (=> (not res!2453970) (not e!3571399))))

(assert (=> d!1831477 (= res!2453970 (is-Cons!63739 (t!377218 zl!343)))))

(assert (=> d!1831477 (exists!2273 (t!377218 zl!343) lambda!318256)))

(assert (=> d!1831477 (= (getWitness!921 (t!377218 zl!343) lambda!318256) lt!2301911)))

(declare-fun b!5819174 () Bool)

(declare-fun lt!2301912 () Unit!156974)

(declare-fun Unit!156983 () Unit!156974)

(assert (=> b!5819174 (= lt!2301912 Unit!156983)))

(assert (=> b!5819174 false))

(assert (=> b!5819174 (= e!3571401 (head!12292 (t!377218 zl!343)))))

(declare-fun b!5819175 () Bool)

(assert (=> b!5819175 (= e!3571402 (contains!19896 (t!377218 zl!343) lt!2301911))))

(assert (= (and d!1831477 res!2453970) b!5819173))

(assert (= (and d!1831477 c!1031251) b!5819170))

(assert (= (and d!1831477 (not c!1031251)) b!5819171))

(assert (= (and b!5819171 c!1031252) b!5819172))

(assert (= (and b!5819171 (not c!1031252)) b!5819174))

(assert (= (and d!1831477 res!2453971) b!5819175))

(declare-fun b_lambda!219327 () Bool)

(assert (=> (not b_lambda!219327) (not b!5819173)))

(declare-fun b_lambda!219329 () Bool)

(assert (=> (not b_lambda!219329) (not d!1831477)))

(declare-fun m!6754996 () Bool)

(assert (=> d!1831477 m!6754996))

(declare-fun m!6754998 () Bool)

(assert (=> d!1831477 m!6754998))

(declare-fun m!6755000 () Bool)

(assert (=> b!5819172 m!6755000))

(declare-fun m!6755002 () Bool)

(assert (=> b!5819175 m!6755002))

(declare-fun m!6755004 () Bool)

(assert (=> b!5819174 m!6755004))

(declare-fun m!6755006 () Bool)

(assert (=> b!5819173 m!6755006))

(assert (=> b!5818476 d!1831477))

(assert (=> b!5818652 d!1831427))

(assert (=> b!5818652 d!1831429))

(assert (=> d!1831347 d!1831331))

(declare-fun bs!1373015 () Bool)

(declare-fun d!1831479 () Bool)

(assert (= bs!1373015 (and d!1831479 b!5818338)))

(declare-fun lambda!318336 () Int)

(assert (=> bs!1373015 (not (= lambda!318336 lambda!318255))))

(declare-fun bs!1373016 () Bool)

(assert (= bs!1373016 (and d!1831479 d!1831359)))

(assert (=> bs!1373016 (not (= lambda!318336 lambda!318294))))

(declare-fun bs!1373017 () Bool)

(assert (= bs!1373017 (and d!1831479 d!1831467)))

(assert (=> bs!1373017 (not (= lambda!318336 lambda!318334))))

(declare-fun bs!1373018 () Bool)

(assert (= bs!1373018 (and d!1831479 d!1831345)))

(assert (=> bs!1373018 (= (= lambda!318288 lambda!318255) (= lambda!318336 lambda!318282))))

(declare-fun bs!1373019 () Bool)

(assert (= bs!1373019 (and d!1831479 d!1831347)))

(assert (=> bs!1373019 (not (= lambda!318336 lambda!318287))))

(assert (=> bs!1373019 (not (= lambda!318336 lambda!318288))))

(declare-fun bs!1373020 () Bool)

(assert (= bs!1373020 (and d!1831479 d!1831369)))

(assert (=> bs!1373020 (not (= lambda!318336 lambda!318301))))

(declare-fun bs!1373021 () Bool)

(assert (= bs!1373021 (and d!1831479 d!1831351)))

(assert (=> bs!1373021 (not (= lambda!318336 lambda!318291))))

(declare-fun bs!1373022 () Bool)

(assert (= bs!1373022 (and d!1831479 d!1831469)))

(assert (=> bs!1373022 (not (= lambda!318336 lambda!318335))))

(declare-fun bs!1373023 () Bool)

(assert (= bs!1373023 (and d!1831479 d!1831459)))

(assert (=> bs!1373023 (not (= lambda!318336 lambda!318331))))

(assert (=> d!1831479 true))

(assert (=> d!1831479 (< (dynLambda!24950 order!27227 lambda!318288) (dynLambda!24950 order!27227 lambda!318336))))

(assert (=> d!1831479 (= (exists!2272 lt!2301764 lambda!318288) (not (forall!14948 lt!2301764 lambda!318336)))))

(declare-fun bs!1373024 () Bool)

(assert (= bs!1373024 d!1831479))

(declare-fun m!6755008 () Bool)

(assert (=> bs!1373024 m!6755008))

(assert (=> d!1831347 d!1831479))

(declare-fun bs!1373025 () Bool)

(declare-fun d!1831481 () Bool)

(assert (= bs!1373025 (and d!1831481 b!5818338)))

(declare-fun lambda!318339 () Int)

(assert (=> bs!1373025 (= lambda!318339 lambda!318255)))

(declare-fun bs!1373026 () Bool)

(assert (= bs!1373026 (and d!1831481 d!1831359)))

(assert (=> bs!1373026 (not (= lambda!318339 lambda!318294))))

(declare-fun bs!1373027 () Bool)

(assert (= bs!1373027 (and d!1831481 d!1831467)))

(assert (=> bs!1373027 (not (= lambda!318339 lambda!318334))))

(declare-fun bs!1373028 () Bool)

(assert (= bs!1373028 (and d!1831481 d!1831479)))

(assert (=> bs!1373028 (not (= lambda!318339 lambda!318336))))

(declare-fun bs!1373029 () Bool)

(assert (= bs!1373029 (and d!1831481 d!1831345)))

(assert (=> bs!1373029 (not (= lambda!318339 lambda!318282))))

(declare-fun bs!1373030 () Bool)

(assert (= bs!1373030 (and d!1831481 d!1831347)))

(assert (=> bs!1373030 (not (= lambda!318339 lambda!318287))))

(assert (=> bs!1373030 (= lambda!318339 lambda!318288)))

(declare-fun bs!1373031 () Bool)

(assert (= bs!1373031 (and d!1831481 d!1831369)))

(assert (=> bs!1373031 (not (= lambda!318339 lambda!318301))))

(declare-fun bs!1373032 () Bool)

(assert (= bs!1373032 (and d!1831481 d!1831351)))

(assert (=> bs!1373032 (not (= lambda!318339 lambda!318291))))

(declare-fun bs!1373033 () Bool)

(assert (= bs!1373033 (and d!1831481 d!1831469)))

(assert (=> bs!1373033 (not (= lambda!318339 lambda!318335))))

(declare-fun bs!1373034 () Bool)

(assert (= bs!1373034 (and d!1831481 d!1831459)))

(assert (=> bs!1373034 (not (= lambda!318339 lambda!318331))))

(assert (=> d!1831481 true))

(assert (=> d!1831481 (= (matchR!8039 r!7292 s!2326) (exists!2272 lt!2301764 lambda!318339))))

(assert (=> d!1831481 true))

(declare-fun _$85!176 () Unit!156974)

(assert (=> d!1831481 (= (choose!44228 r!7292 lt!2301764 s!2326) _$85!176)))

(declare-fun bs!1373035 () Bool)

(assert (= bs!1373035 d!1831481))

(assert (=> bs!1373035 m!6754488))

(declare-fun m!6755010 () Bool)

(assert (=> bs!1373035 m!6755010))

(assert (=> d!1831347 d!1831481))

(declare-fun d!1831483 () Bool)

(declare-fun res!2453974 () Bool)

(declare-fun e!3571405 () Bool)

(assert (=> d!1831483 (=> res!2453974 e!3571405)))

(assert (=> d!1831483 (= res!2453974 (is-Nil!63737 lt!2301764))))

(assert (=> d!1831483 (= (forall!14948 lt!2301764 lambda!318287) e!3571405)))

(declare-fun b!5819178 () Bool)

(declare-fun e!3571406 () Bool)

(assert (=> b!5819178 (= e!3571405 e!3571406)))

(declare-fun res!2453975 () Bool)

(assert (=> b!5819178 (=> (not res!2453975) (not e!3571406))))

(assert (=> b!5819178 (= res!2453975 (dynLambda!24951 lambda!318287 (h!70185 lt!2301764)))))

(declare-fun b!5819179 () Bool)

(assert (=> b!5819179 (= e!3571406 (forall!14948 (t!377216 lt!2301764) lambda!318287))))

(assert (= (and d!1831483 (not res!2453974)) b!5819178))

(assert (= (and b!5819178 res!2453975) b!5819179))

(declare-fun b_lambda!219331 () Bool)

(assert (=> (not b_lambda!219331) (not b!5819178)))

(declare-fun m!6755012 () Bool)

(assert (=> b!5819178 m!6755012))

(declare-fun m!6755014 () Bool)

(assert (=> b!5819179 m!6755014))

(assert (=> d!1831347 d!1831483))

(declare-fun d!1831485 () Bool)

(assert (=> d!1831485 (= (head!12292 zl!343) (h!70187 zl!343))))

(assert (=> b!5818478 d!1831485))

(declare-fun b!5819180 () Bool)

(declare-fun e!3571412 () Bool)

(declare-fun e!3571413 () Bool)

(assert (=> b!5819180 (= e!3571412 e!3571413)))

(declare-fun res!2453980 () Bool)

(assert (=> b!5819180 (=> res!2453980 e!3571413)))

(declare-fun call!454455 () Bool)

(assert (=> b!5819180 (= res!2453980 call!454455)))

(declare-fun b!5819181 () Bool)

(declare-fun e!3571409 () Bool)

(assert (=> b!5819181 (= e!3571409 (matchR!8039 (derivativeStep!4609 lt!2301847 (head!12293 s!2326)) (tail!11381 s!2326)))))

(declare-fun b!5819182 () Bool)

(assert (=> b!5819182 (= e!3571409 (nullable!5868 lt!2301847))))

(declare-fun b!5819183 () Bool)

(declare-fun e!3571408 () Bool)

(assert (=> b!5819183 (= e!3571408 (= (head!12293 s!2326) (c!1031068 lt!2301847)))))

(declare-fun b!5819184 () Bool)

(declare-fun res!2453976 () Bool)

(assert (=> b!5819184 (=> (not res!2453976) (not e!3571408))))

(assert (=> b!5819184 (= res!2453976 (not call!454455))))

(declare-fun b!5819185 () Bool)

(declare-fun e!3571410 () Bool)

(declare-fun lt!2301913 () Bool)

(assert (=> b!5819185 (= e!3571410 (= lt!2301913 call!454455))))

(declare-fun b!5819186 () Bool)

(assert (=> b!5819186 (= e!3571413 (not (= (head!12293 s!2326) (c!1031068 lt!2301847))))))

(declare-fun b!5819187 () Bool)

(declare-fun res!2453977 () Bool)

(assert (=> b!5819187 (=> (not res!2453977) (not e!3571408))))

(assert (=> b!5819187 (= res!2453977 (isEmpty!35635 (tail!11381 s!2326)))))

(declare-fun b!5819188 () Bool)

(declare-fun e!3571407 () Bool)

(assert (=> b!5819188 (= e!3571407 (not lt!2301913))))

(declare-fun b!5819189 () Bool)

(declare-fun e!3571411 () Bool)

(assert (=> b!5819189 (= e!3571411 e!3571412)))

(declare-fun res!2453978 () Bool)

(assert (=> b!5819189 (=> (not res!2453978) (not e!3571412))))

(assert (=> b!5819189 (= res!2453978 (not lt!2301913))))

(declare-fun b!5819190 () Bool)

(assert (=> b!5819190 (= e!3571410 e!3571407)))

(declare-fun c!1031253 () Bool)

(assert (=> b!5819190 (= c!1031253 (is-EmptyLang!15854 lt!2301847))))

(declare-fun b!5819191 () Bool)

(declare-fun res!2453979 () Bool)

(assert (=> b!5819191 (=> res!2453979 e!3571411)))

(assert (=> b!5819191 (= res!2453979 e!3571408)))

(declare-fun res!2453981 () Bool)

(assert (=> b!5819191 (=> (not res!2453981) (not e!3571408))))

(assert (=> b!5819191 (= res!2453981 lt!2301913)))

(declare-fun b!5819192 () Bool)

(declare-fun res!2453983 () Bool)

(assert (=> b!5819192 (=> res!2453983 e!3571411)))

(assert (=> b!5819192 (= res!2453983 (not (is-ElementMatch!15854 lt!2301847)))))

(assert (=> b!5819192 (= e!3571407 e!3571411)))

(declare-fun b!5819193 () Bool)

(declare-fun res!2453982 () Bool)

(assert (=> b!5819193 (=> res!2453982 e!3571413)))

(assert (=> b!5819193 (= res!2453982 (not (isEmpty!35635 (tail!11381 s!2326))))))

(declare-fun d!1831487 () Bool)

(assert (=> d!1831487 e!3571410))

(declare-fun c!1031255 () Bool)

(assert (=> d!1831487 (= c!1031255 (is-EmptyExpr!15854 lt!2301847))))

(assert (=> d!1831487 (= lt!2301913 e!3571409)))

(declare-fun c!1031254 () Bool)

(assert (=> d!1831487 (= c!1031254 (isEmpty!35635 s!2326))))

(assert (=> d!1831487 (validRegex!7590 lt!2301847)))

(assert (=> d!1831487 (= (matchR!8039 lt!2301847 s!2326) lt!2301913)))

(declare-fun bm!454450 () Bool)

(assert (=> bm!454450 (= call!454455 (isEmpty!35635 s!2326))))

(assert (= (and d!1831487 c!1031254) b!5819182))

(assert (= (and d!1831487 (not c!1031254)) b!5819181))

(assert (= (and d!1831487 c!1031255) b!5819185))

(assert (= (and d!1831487 (not c!1031255)) b!5819190))

(assert (= (and b!5819190 c!1031253) b!5819188))

(assert (= (and b!5819190 (not c!1031253)) b!5819192))

(assert (= (and b!5819192 (not res!2453983)) b!5819191))

(assert (= (and b!5819191 res!2453981) b!5819184))

(assert (= (and b!5819184 res!2453976) b!5819187))

(assert (= (and b!5819187 res!2453977) b!5819183))

(assert (= (and b!5819191 (not res!2453979)) b!5819189))

(assert (= (and b!5819189 res!2453978) b!5819180))

(assert (= (and b!5819180 (not res!2453980)) b!5819193))

(assert (= (and b!5819193 (not res!2453982)) b!5819186))

(assert (= (or b!5819185 b!5819180 b!5819184) bm!454450))

(assert (=> b!5819193 m!6754632))

(assert (=> b!5819193 m!6754632))

(assert (=> b!5819193 m!6754634))

(assert (=> d!1831487 m!6754614))

(assert (=> d!1831487 m!6754740))

(assert (=> bm!454450 m!6754614))

(declare-fun m!6755016 () Bool)

(assert (=> b!5819182 m!6755016))

(assert (=> b!5819187 m!6754632))

(assert (=> b!5819187 m!6754632))

(assert (=> b!5819187 m!6754634))

(assert (=> b!5819183 m!6754638))

(assert (=> b!5819181 m!6754638))

(assert (=> b!5819181 m!6754638))

(declare-fun m!6755018 () Bool)

(assert (=> b!5819181 m!6755018))

(assert (=> b!5819181 m!6754632))

(assert (=> b!5819181 m!6755018))

(assert (=> b!5819181 m!6754632))

(declare-fun m!6755020 () Bool)

(assert (=> b!5819181 m!6755020))

(assert (=> b!5819186 m!6754638))

(assert (=> b!5818797 d!1831487))

(declare-fun bs!1373036 () Bool)

(declare-fun d!1831489 () Bool)

(assert (= bs!1373036 (and d!1831489 b!5818338)))

(declare-fun lambda!318340 () Int)

(assert (=> bs!1373036 (not (= lambda!318340 lambda!318255))))

(declare-fun bs!1373037 () Bool)

(assert (= bs!1373037 (and d!1831489 d!1831359)))

(assert (=> bs!1373037 (= lambda!318340 lambda!318294)))

(declare-fun bs!1373038 () Bool)

(assert (= bs!1373038 (and d!1831489 d!1831467)))

(assert (=> bs!1373038 (= lambda!318340 lambda!318334)))

(declare-fun bs!1373039 () Bool)

(assert (= bs!1373039 (and d!1831489 d!1831479)))

(assert (=> bs!1373039 (not (= lambda!318340 lambda!318336))))

(declare-fun bs!1373040 () Bool)

(assert (= bs!1373040 (and d!1831489 d!1831345)))

(assert (=> bs!1373040 (not (= lambda!318340 lambda!318282))))

(declare-fun bs!1373041 () Bool)

(assert (= bs!1373041 (and d!1831489 d!1831347)))

(assert (=> bs!1373041 (= lambda!318340 lambda!318287)))

(assert (=> bs!1373041 (not (= lambda!318340 lambda!318288))))

(declare-fun bs!1373042 () Bool)

(assert (= bs!1373042 (and d!1831489 d!1831481)))

(assert (=> bs!1373042 (not (= lambda!318340 lambda!318339))))

(declare-fun bs!1373043 () Bool)

(assert (= bs!1373043 (and d!1831489 d!1831369)))

(assert (=> bs!1373043 (= lambda!318340 lambda!318301)))

(declare-fun bs!1373044 () Bool)

(assert (= bs!1373044 (and d!1831489 d!1831351)))

(assert (=> bs!1373044 (= lambda!318340 lambda!318291)))

(declare-fun bs!1373045 () Bool)

(assert (= bs!1373045 (and d!1831489 d!1831469)))

(assert (=> bs!1373045 (= lambda!318340 lambda!318335)))

(declare-fun bs!1373046 () Bool)

(assert (= bs!1373046 (and d!1831489 d!1831459)))

(assert (=> bs!1373046 (= lambda!318340 lambda!318331)))

(assert (=> d!1831489 (= (inv!82883 setElem!39271) (forall!14948 (exprs!5738 setElem!39271) lambda!318340))))

(declare-fun bs!1373047 () Bool)

(assert (= bs!1373047 d!1831489))

(declare-fun m!6755022 () Bool)

(assert (=> bs!1373047 m!6755022))

(assert (=> setNonEmpty!39271 d!1831489))

(declare-fun d!1831491 () Bool)

(declare-fun choose!44235 (Int) Bool)

(assert (=> d!1831491 (= (Exists!2944 (ite c!1031107 lambda!318275 lambda!318276)) (choose!44235 (ite c!1031107 lambda!318275 lambda!318276)))))

(declare-fun bs!1373048 () Bool)

(assert (= bs!1373048 d!1831491))

(declare-fun m!6755024 () Bool)

(assert (=> bs!1373048 m!6755024))

(assert (=> bm!454393 d!1831491))

(declare-fun bs!1373049 () Bool)

(declare-fun d!1831493 () Bool)

(assert (= bs!1373049 (and d!1831493 b!5818350)))

(declare-fun lambda!318341 () Int)

(assert (=> bs!1373049 (not (= lambda!318341 lambda!318256))))

(declare-fun bs!1373050 () Bool)

(assert (= bs!1373050 (and d!1831493 d!1831361)))

(assert (=> bs!1373050 (= (= lambda!318300 lambda!318256) (= lambda!318341 lambda!318297))))

(declare-fun bs!1373051 () Bool)

(assert (= bs!1373051 (and d!1831493 d!1831365)))

(assert (=> bs!1373051 (not (= lambda!318341 lambda!318300))))

(assert (=> d!1831493 true))

(assert (=> d!1831493 (< (dynLambda!24952 order!27229 lambda!318300) (dynLambda!24952 order!27229 lambda!318341))))

(assert (=> d!1831493 (= (exists!2273 zl!343 lambda!318300) (not (forall!14949 zl!343 lambda!318341)))))

(declare-fun bs!1373052 () Bool)

(assert (= bs!1373052 d!1831493))

(declare-fun m!6755026 () Bool)

(assert (=> bs!1373052 m!6755026))

(assert (=> d!1831365 d!1831493))

(declare-fun bs!1373053 () Bool)

(declare-fun d!1831495 () Bool)

(assert (= bs!1373053 (and d!1831495 b!5818350)))

(declare-fun lambda!318344 () Int)

(assert (=> bs!1373053 (= lambda!318344 lambda!318256)))

(declare-fun bs!1373054 () Bool)

(assert (= bs!1373054 (and d!1831495 d!1831361)))

(assert (=> bs!1373054 (not (= lambda!318344 lambda!318297))))

(declare-fun bs!1373055 () Bool)

(assert (= bs!1373055 (and d!1831495 d!1831365)))

(assert (=> bs!1373055 (= lambda!318344 lambda!318300)))

(declare-fun bs!1373056 () Bool)

(assert (= bs!1373056 (and d!1831495 d!1831493)))

(assert (=> bs!1373056 (not (= lambda!318344 lambda!318341))))

(assert (=> d!1831495 true))

(assert (=> d!1831495 (exists!2273 zl!343 lambda!318344)))

(assert (=> d!1831495 true))

(declare-fun _$46!2018 () Unit!156974)

(assert (=> d!1831495 (= (choose!44229 zl!343 lt!2301761) _$46!2018)))

(declare-fun bs!1373057 () Bool)

(assert (= bs!1373057 d!1831495))

(declare-fun m!6755028 () Bool)

(assert (=> bs!1373057 m!6755028))

(assert (=> d!1831365 d!1831495))

(declare-fun d!1831497 () Bool)

(declare-fun lt!2301914 () Bool)

(assert (=> d!1831497 (= lt!2301914 (set.member lt!2301761 (content!11700 (unfocusZipperList!1276 zl!343))))))

(declare-fun e!3571415 () Bool)

(assert (=> d!1831497 (= lt!2301914 e!3571415)))

(declare-fun res!2453984 () Bool)

(assert (=> d!1831497 (=> (not res!2453984) (not e!3571415))))

(assert (=> d!1831497 (= res!2453984 (is-Cons!63737 (unfocusZipperList!1276 zl!343)))))

(assert (=> d!1831497 (= (contains!19894 (unfocusZipperList!1276 zl!343) lt!2301761) lt!2301914)))

(declare-fun b!5819194 () Bool)

(declare-fun e!3571414 () Bool)

(assert (=> b!5819194 (= e!3571415 e!3571414)))

(declare-fun res!2453985 () Bool)

(assert (=> b!5819194 (=> res!2453985 e!3571414)))

(assert (=> b!5819194 (= res!2453985 (= (h!70185 (unfocusZipperList!1276 zl!343)) lt!2301761))))

(declare-fun b!5819195 () Bool)

(assert (=> b!5819195 (= e!3571414 (contains!19894 (t!377216 (unfocusZipperList!1276 zl!343)) lt!2301761))))

(assert (= (and d!1831497 res!2453984) b!5819194))

(assert (= (and b!5819194 (not res!2453985)) b!5819195))

(assert (=> d!1831497 m!6754510))

(declare-fun m!6755030 () Bool)

(assert (=> d!1831497 m!6755030))

(declare-fun m!6755032 () Bool)

(assert (=> d!1831497 m!6755032))

(declare-fun m!6755034 () Bool)

(assert (=> b!5819195 m!6755034))

(assert (=> d!1831365 d!1831497))

(assert (=> d!1831365 d!1831351))

(declare-fun b!5819196 () Bool)

(declare-fun e!3571421 () Bool)

(declare-fun e!3571416 () Bool)

(assert (=> b!5819196 (= e!3571421 e!3571416)))

(declare-fun c!1031259 () Bool)

(assert (=> b!5819196 (= c!1031259 (is-Union!15854 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))

(declare-fun b!5819197 () Bool)

(declare-fun res!2453990 () Bool)

(declare-fun e!3571417 () Bool)

(assert (=> b!5819197 (=> res!2453990 e!3571417)))

(assert (=> b!5819197 (= res!2453990 (not (is-Concat!24699 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761))))))))

(assert (=> b!5819197 (= e!3571416 e!3571417)))

(declare-fun call!454458 () Bool)

(declare-fun bm!454452 () Bool)

(assert (=> bm!454452 (= call!454458 (validRegex!7590 (ite c!1031259 (regTwo!32221 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))) (regTwo!32220 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))))

(declare-fun b!5819198 () Bool)

(declare-fun e!3571422 () Bool)

(assert (=> b!5819198 (= e!3571417 e!3571422)))

(declare-fun res!2453989 () Bool)

(assert (=> b!5819198 (=> (not res!2453989) (not e!3571422))))

(declare-fun call!454457 () Bool)

(assert (=> b!5819198 (= res!2453989 call!454457)))

(declare-fun b!5819199 () Bool)

(declare-fun e!3571418 () Bool)

(assert (=> b!5819199 (= e!3571421 e!3571418)))

(declare-fun res!2453986 () Bool)

(assert (=> b!5819199 (= res!2453986 (not (nullable!5868 (reg!16183 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))))

(assert (=> b!5819199 (=> (not res!2453986) (not e!3571418))))

(declare-fun b!5819200 () Bool)

(declare-fun e!3571420 () Bool)

(assert (=> b!5819200 (= e!3571420 call!454458)))

(declare-fun b!5819201 () Bool)

(declare-fun call!454456 () Bool)

(assert (=> b!5819201 (= e!3571418 call!454456)))

(declare-fun b!5819202 () Bool)

(declare-fun e!3571419 () Bool)

(assert (=> b!5819202 (= e!3571419 e!3571421)))

(declare-fun c!1031258 () Bool)

(assert (=> b!5819202 (= c!1031258 (is-Star!15854 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))

(declare-fun b!5819203 () Bool)

(declare-fun res!2453987 () Bool)

(assert (=> b!5819203 (=> (not res!2453987) (not e!3571420))))

(assert (=> b!5819203 (= res!2453987 call!454457)))

(assert (=> b!5819203 (= e!3571416 e!3571420)))

(declare-fun b!5819204 () Bool)

(assert (=> b!5819204 (= e!3571422 call!454458)))

(declare-fun bm!454453 () Bool)

(assert (=> bm!454453 (= call!454456 (validRegex!7590 (ite c!1031258 (reg!16183 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))) (ite c!1031259 (regOne!32221 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))) (regOne!32220 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761))))))))))

(declare-fun d!1831499 () Bool)

(declare-fun res!2453988 () Bool)

(assert (=> d!1831499 (=> res!2453988 e!3571419)))

(assert (=> d!1831499 (= res!2453988 (is-ElementMatch!15854 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))))))

(assert (=> d!1831499 (= (validRegex!7590 (ite c!1031130 (reg!16183 lt!2301761) (ite c!1031131 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)))) e!3571419)))

(declare-fun bm!454451 () Bool)

(assert (=> bm!454451 (= call!454457 call!454456)))

(assert (= (and d!1831499 (not res!2453988)) b!5819202))

(assert (= (and b!5819202 c!1031258) b!5819199))

(assert (= (and b!5819202 (not c!1031258)) b!5819196))

(assert (= (and b!5819199 res!2453986) b!5819201))

(assert (= (and b!5819196 c!1031259) b!5819203))

(assert (= (and b!5819196 (not c!1031259)) b!5819197))

(assert (= (and b!5819203 res!2453987) b!5819200))

(assert (= (and b!5819197 (not res!2453990)) b!5819198))

(assert (= (and b!5819198 res!2453989) b!5819204))

(assert (= (or b!5819200 b!5819204) bm!454452))

(assert (= (or b!5819203 b!5819198) bm!454451))

(assert (= (or b!5819201 bm!454451) bm!454453))

(declare-fun m!6755036 () Bool)

(assert (=> bm!454452 m!6755036))

(declare-fun m!6755038 () Bool)

(assert (=> b!5819199 m!6755038))

(declare-fun m!6755040 () Bool)

(assert (=> bm!454453 m!6755040))

(assert (=> bm!454408 d!1831499))

(declare-fun d!1831501 () Bool)

(assert (=> d!1831501 (= (nullable!5868 r!7292) (nullableFct!1877 r!7292))))

(declare-fun bs!1373058 () Bool)

(assert (= bs!1373058 d!1831501))

(declare-fun m!6755042 () Bool)

(assert (=> bs!1373058 m!6755042))

(assert (=> b!5818615 d!1831501))

(declare-fun bs!1373059 () Bool)

(declare-fun b!5819205 () Bool)

(assert (= bs!1373059 (and b!5819205 b!5818554)))

(declare-fun lambda!318345 () Int)

(assert (=> bs!1373059 (= (and (= (reg!16183 (regOne!32221 r!7292)) (reg!16183 r!7292)) (= (regOne!32221 r!7292) r!7292)) (= lambda!318345 lambda!318275))))

(declare-fun bs!1373060 () Bool)

(assert (= bs!1373060 (and b!5819205 b!5818560)))

(assert (=> bs!1373060 (not (= lambda!318345 lambda!318276))))

(declare-fun bs!1373061 () Bool)

(assert (= bs!1373061 (and b!5819205 b!5819047)))

(assert (=> bs!1373061 (= (and (= (reg!16183 (regOne!32221 r!7292)) (reg!16183 (regTwo!32221 r!7292))) (= (regOne!32221 r!7292) (regTwo!32221 r!7292))) (= lambda!318345 lambda!318327))))

(declare-fun bs!1373062 () Bool)

(assert (= bs!1373062 (and b!5819205 b!5819053)))

(assert (=> bs!1373062 (not (= lambda!318345 lambda!318328))))

(assert (=> b!5819205 true))

(assert (=> b!5819205 true))

(declare-fun bs!1373063 () Bool)

(declare-fun b!5819211 () Bool)

(assert (= bs!1373063 (and b!5819211 b!5819053)))

(declare-fun lambda!318346 () Int)

(assert (=> bs!1373063 (= (and (= (regOne!32220 (regOne!32221 r!7292)) (regOne!32220 (regTwo!32221 r!7292))) (= (regTwo!32220 (regOne!32221 r!7292)) (regTwo!32220 (regTwo!32221 r!7292)))) (= lambda!318346 lambda!318328))))

(declare-fun bs!1373064 () Bool)

(assert (= bs!1373064 (and b!5819211 b!5819047)))

(assert (=> bs!1373064 (not (= lambda!318346 lambda!318327))))

(declare-fun bs!1373065 () Bool)

(assert (= bs!1373065 (and b!5819211 b!5818560)))

(assert (=> bs!1373065 (= (and (= (regOne!32220 (regOne!32221 r!7292)) (regOne!32220 r!7292)) (= (regTwo!32220 (regOne!32221 r!7292)) (regTwo!32220 r!7292))) (= lambda!318346 lambda!318276))))

(declare-fun bs!1373066 () Bool)

(assert (= bs!1373066 (and b!5819211 b!5819205)))

(assert (=> bs!1373066 (not (= lambda!318346 lambda!318345))))

(declare-fun bs!1373067 () Bool)

(assert (= bs!1373067 (and b!5819211 b!5818554)))

(assert (=> bs!1373067 (not (= lambda!318346 lambda!318275))))

(assert (=> b!5819211 true))

(assert (=> b!5819211 true))

(declare-fun e!3571424 () Bool)

(declare-fun call!454460 () Bool)

(assert (=> b!5819205 (= e!3571424 call!454460)))

(declare-fun b!5819206 () Bool)

(declare-fun e!3571429 () Bool)

(declare-fun call!454459 () Bool)

(assert (=> b!5819206 (= e!3571429 call!454459)))

(declare-fun c!1031260 () Bool)

(declare-fun bm!454454 () Bool)

(assert (=> bm!454454 (= call!454460 (Exists!2944 (ite c!1031260 lambda!318345 lambda!318346)))))

(declare-fun b!5819207 () Bool)

(declare-fun e!3571427 () Bool)

(assert (=> b!5819207 (= e!3571427 (matchRSpec!2957 (regTwo!32221 (regOne!32221 r!7292)) s!2326))))

(declare-fun b!5819208 () Bool)

(declare-fun e!3571426 () Bool)

(assert (=> b!5819208 (= e!3571426 e!3571427)))

(declare-fun res!2453992 () Bool)

(assert (=> b!5819208 (= res!2453992 (matchRSpec!2957 (regOne!32221 (regOne!32221 r!7292)) s!2326))))

(assert (=> b!5819208 (=> res!2453992 e!3571427)))

(declare-fun d!1831503 () Bool)

(declare-fun c!1031262 () Bool)

(assert (=> d!1831503 (= c!1031262 (is-EmptyExpr!15854 (regOne!32221 r!7292)))))

(assert (=> d!1831503 (= (matchRSpec!2957 (regOne!32221 r!7292) s!2326) e!3571429)))

(declare-fun b!5819209 () Bool)

(declare-fun c!1031263 () Bool)

(assert (=> b!5819209 (= c!1031263 (is-Union!15854 (regOne!32221 r!7292)))))

(declare-fun e!3571423 () Bool)

(assert (=> b!5819209 (= e!3571423 e!3571426)))

(declare-fun bm!454455 () Bool)

(assert (=> bm!454455 (= call!454459 (isEmpty!35635 s!2326))))

(declare-fun b!5819210 () Bool)

(declare-fun res!2453991 () Bool)

(assert (=> b!5819210 (=> res!2453991 e!3571424)))

(assert (=> b!5819210 (= res!2453991 call!454459)))

(declare-fun e!3571425 () Bool)

(assert (=> b!5819210 (= e!3571425 e!3571424)))

(assert (=> b!5819211 (= e!3571425 call!454460)))

(declare-fun b!5819212 () Bool)

(assert (=> b!5819212 (= e!3571423 (= s!2326 (Cons!63738 (c!1031068 (regOne!32221 r!7292)) Nil!63738)))))

(declare-fun b!5819213 () Bool)

(declare-fun c!1031261 () Bool)

(assert (=> b!5819213 (= c!1031261 (is-ElementMatch!15854 (regOne!32221 r!7292)))))

(declare-fun e!3571428 () Bool)

(assert (=> b!5819213 (= e!3571428 e!3571423)))

(declare-fun b!5819214 () Bool)

(assert (=> b!5819214 (= e!3571426 e!3571425)))

(assert (=> b!5819214 (= c!1031260 (is-Star!15854 (regOne!32221 r!7292)))))

(declare-fun b!5819215 () Bool)

(assert (=> b!5819215 (= e!3571429 e!3571428)))

(declare-fun res!2453993 () Bool)

(assert (=> b!5819215 (= res!2453993 (not (is-EmptyLang!15854 (regOne!32221 r!7292))))))

(assert (=> b!5819215 (=> (not res!2453993) (not e!3571428))))

(assert (= (and d!1831503 c!1031262) b!5819206))

(assert (= (and d!1831503 (not c!1031262)) b!5819215))

(assert (= (and b!5819215 res!2453993) b!5819213))

(assert (= (and b!5819213 c!1031261) b!5819212))

(assert (= (and b!5819213 (not c!1031261)) b!5819209))

(assert (= (and b!5819209 c!1031263) b!5819208))

(assert (= (and b!5819209 (not c!1031263)) b!5819214))

(assert (= (and b!5819208 (not res!2453992)) b!5819207))

(assert (= (and b!5819214 c!1031260) b!5819210))

(assert (= (and b!5819214 (not c!1031260)) b!5819211))

(assert (= (and b!5819210 (not res!2453991)) b!5819205))

(assert (= (or b!5819205 b!5819211) bm!454454))

(assert (= (or b!5819206 b!5819210) bm!454455))

(declare-fun m!6755044 () Bool)

(assert (=> bm!454454 m!6755044))

(declare-fun m!6755046 () Bool)

(assert (=> b!5819207 m!6755046))

(declare-fun m!6755048 () Bool)

(assert (=> b!5819208 m!6755048))

(assert (=> bm!454455 m!6754614))

(assert (=> b!5818557 d!1831503))

(assert (=> d!1831315 d!1831361))

(declare-fun b!5819216 () Bool)

(declare-fun e!3571435 () Bool)

(declare-fun e!3571430 () Bool)

(assert (=> b!5819216 (= e!3571435 e!3571430)))

(declare-fun c!1031265 () Bool)

(assert (=> b!5819216 (= c!1031265 (is-Union!15854 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))

(declare-fun b!5819217 () Bool)

(declare-fun res!2453998 () Bool)

(declare-fun e!3571431 () Bool)

(assert (=> b!5819217 (=> res!2453998 e!3571431)))

(assert (=> b!5819217 (= res!2453998 (not (is-Concat!24699 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292)))))))

(assert (=> b!5819217 (= e!3571430 e!3571431)))

(declare-fun bm!454457 () Bool)

(declare-fun call!454463 () Bool)

(assert (=> bm!454457 (= call!454463 (validRegex!7590 (ite c!1031265 (regTwo!32221 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))) (regTwo!32220 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))))

(declare-fun b!5819218 () Bool)

(declare-fun e!3571436 () Bool)

(assert (=> b!5819218 (= e!3571431 e!3571436)))

(declare-fun res!2453997 () Bool)

(assert (=> b!5819218 (=> (not res!2453997) (not e!3571436))))

(declare-fun call!454462 () Bool)

(assert (=> b!5819218 (= res!2453997 call!454462)))

(declare-fun b!5819219 () Bool)

(declare-fun e!3571432 () Bool)

(assert (=> b!5819219 (= e!3571435 e!3571432)))

(declare-fun res!2453994 () Bool)

(assert (=> b!5819219 (= res!2453994 (not (nullable!5868 (reg!16183 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))))

(assert (=> b!5819219 (=> (not res!2453994) (not e!3571432))))

(declare-fun b!5819220 () Bool)

(declare-fun e!3571434 () Bool)

(assert (=> b!5819220 (= e!3571434 call!454463)))

(declare-fun b!5819221 () Bool)

(declare-fun call!454461 () Bool)

(assert (=> b!5819221 (= e!3571432 call!454461)))

(declare-fun b!5819222 () Bool)

(declare-fun e!3571433 () Bool)

(assert (=> b!5819222 (= e!3571433 e!3571435)))

(declare-fun c!1031264 () Bool)

(assert (=> b!5819222 (= c!1031264 (is-Star!15854 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))

(declare-fun b!5819223 () Bool)

(declare-fun res!2453995 () Bool)

(assert (=> b!5819223 (=> (not res!2453995) (not e!3571434))))

(assert (=> b!5819223 (= res!2453995 call!454462)))

(assert (=> b!5819223 (= e!3571430 e!3571434)))

(declare-fun b!5819224 () Bool)

(assert (=> b!5819224 (= e!3571436 call!454463)))

(declare-fun bm!454458 () Bool)

(assert (=> bm!454458 (= call!454461 (validRegex!7590 (ite c!1031264 (reg!16183 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))) (ite c!1031265 (regOne!32221 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))) (regOne!32220 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292)))))))))

(declare-fun d!1831505 () Bool)

(declare-fun res!2453996 () Bool)

(assert (=> d!1831505 (=> res!2453996 e!3571433)))

(assert (=> d!1831505 (= res!2453996 (is-ElementMatch!15854 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))))))

(assert (=> d!1831505 (= (validRegex!7590 (ite c!1031077 (regTwo!32221 r!7292) (regTwo!32220 r!7292))) e!3571433)))

(declare-fun bm!454456 () Bool)

(assert (=> bm!454456 (= call!454462 call!454461)))

(assert (= (and d!1831505 (not res!2453996)) b!5819222))

(assert (= (and b!5819222 c!1031264) b!5819219))

(assert (= (and b!5819222 (not c!1031264)) b!5819216))

(assert (= (and b!5819219 res!2453994) b!5819221))

(assert (= (and b!5819216 c!1031265) b!5819223))

(assert (= (and b!5819216 (not c!1031265)) b!5819217))

(assert (= (and b!5819223 res!2453995) b!5819220))

(assert (= (and b!5819217 (not res!2453998)) b!5819218))

(assert (= (and b!5819218 res!2453997) b!5819224))

(assert (= (or b!5819220 b!5819224) bm!454457))

(assert (= (or b!5819223 b!5819218) bm!454456))

(assert (= (or b!5819221 bm!454456) bm!454458))

(declare-fun m!6755050 () Bool)

(assert (=> bm!454457 m!6755050))

(declare-fun m!6755052 () Bool)

(assert (=> b!5819219 m!6755052))

(declare-fun m!6755054 () Bool)

(assert (=> bm!454458 m!6755054))

(assert (=> bm!454385 d!1831505))

(declare-fun d!1831507 () Bool)

(declare-fun c!1031268 () Bool)

(assert (=> d!1831507 (= c!1031268 (is-Nil!63737 lt!2301764))))

(declare-fun e!3571439 () (Set Regex!15854))

(assert (=> d!1831507 (= (content!11700 lt!2301764) e!3571439)))

(declare-fun b!5819229 () Bool)

(assert (=> b!5819229 (= e!3571439 (as set.empty (Set Regex!15854)))))

(declare-fun b!5819230 () Bool)

(assert (=> b!5819230 (= e!3571439 (set.union (set.insert (h!70185 lt!2301764) (as set.empty (Set Regex!15854))) (content!11700 (t!377216 lt!2301764))))))

(assert (= (and d!1831507 c!1031268) b!5819229))

(assert (= (and d!1831507 (not c!1031268)) b!5819230))

(declare-fun m!6755056 () Bool)

(assert (=> b!5819230 m!6755056))

(assert (=> b!5819230 m!6754898))

(assert (=> d!1831355 d!1831507))

(declare-fun d!1831509 () Bool)

(declare-fun c!1031271 () Bool)

(assert (=> d!1831509 (= c!1031271 (is-Nil!63739 lt!2301826))))

(declare-fun e!3571442 () (Set Context!10476))

(assert (=> d!1831509 (= (content!11699 lt!2301826) e!3571442)))

(declare-fun b!5819235 () Bool)

(assert (=> b!5819235 (= e!3571442 (as set.empty (Set Context!10476)))))

(declare-fun b!5819236 () Bool)

(assert (=> b!5819236 (= e!3571442 (set.union (set.insert (h!70187 lt!2301826) (as set.empty (Set Context!10476))) (content!11699 (t!377218 lt!2301826))))))

(assert (= (and d!1831509 c!1031271) b!5819235))

(assert (= (and d!1831509 (not c!1031271)) b!5819236))

(declare-fun m!6755058 () Bool)

(assert (=> b!5819236 m!6755058))

(declare-fun m!6755060 () Bool)

(assert (=> b!5819236 m!6755060))

(assert (=> b!5818661 d!1831509))

(declare-fun d!1831511 () Bool)

(declare-fun res!2453999 () Bool)

(declare-fun e!3571443 () Bool)

(assert (=> d!1831511 (=> res!2453999 e!3571443)))

(assert (=> d!1831511 (= res!2453999 (is-Nil!63737 (exprs!5738 (h!70187 zl!343))))))

(assert (=> d!1831511 (= (forall!14948 (exprs!5738 (h!70187 zl!343)) lambda!318301) e!3571443)))

(declare-fun b!5819237 () Bool)

(declare-fun e!3571444 () Bool)

(assert (=> b!5819237 (= e!3571443 e!3571444)))

(declare-fun res!2454000 () Bool)

(assert (=> b!5819237 (=> (not res!2454000) (not e!3571444))))

(assert (=> b!5819237 (= res!2454000 (dynLambda!24951 lambda!318301 (h!70185 (exprs!5738 (h!70187 zl!343)))))))

(declare-fun b!5819238 () Bool)

(assert (=> b!5819238 (= e!3571444 (forall!14948 (t!377216 (exprs!5738 (h!70187 zl!343))) lambda!318301))))

(assert (= (and d!1831511 (not res!2453999)) b!5819237))

(assert (= (and b!5819237 res!2454000) b!5819238))

(declare-fun b_lambda!219333 () Bool)

(assert (=> (not b_lambda!219333) (not b!5819237)))

(declare-fun m!6755062 () Bool)

(assert (=> b!5819237 m!6755062))

(declare-fun m!6755064 () Bool)

(assert (=> b!5819238 m!6755064))

(assert (=> d!1831369 d!1831511))

(declare-fun bs!1373068 () Bool)

(declare-fun d!1831513 () Bool)

(assert (= bs!1373068 (and d!1831513 b!5818338)))

(declare-fun lambda!318347 () Int)

(assert (=> bs!1373068 (not (= lambda!318347 lambda!318255))))

(declare-fun bs!1373069 () Bool)

(assert (= bs!1373069 (and d!1831513 d!1831359)))

(assert (=> bs!1373069 (= lambda!318347 lambda!318294)))

(declare-fun bs!1373070 () Bool)

(assert (= bs!1373070 (and d!1831513 d!1831467)))

(assert (=> bs!1373070 (= lambda!318347 lambda!318334)))

(declare-fun bs!1373071 () Bool)

(assert (= bs!1373071 (and d!1831513 d!1831479)))

(assert (=> bs!1373071 (not (= lambda!318347 lambda!318336))))

(declare-fun bs!1373072 () Bool)

(assert (= bs!1373072 (and d!1831513 d!1831345)))

(assert (=> bs!1373072 (not (= lambda!318347 lambda!318282))))

(declare-fun bs!1373073 () Bool)

(assert (= bs!1373073 (and d!1831513 d!1831347)))

(assert (=> bs!1373073 (= lambda!318347 lambda!318287)))

(assert (=> bs!1373073 (not (= lambda!318347 lambda!318288))))

(declare-fun bs!1373074 () Bool)

(assert (= bs!1373074 (and d!1831513 d!1831481)))

(assert (=> bs!1373074 (not (= lambda!318347 lambda!318339))))

(declare-fun bs!1373075 () Bool)

(assert (= bs!1373075 (and d!1831513 d!1831369)))

(assert (=> bs!1373075 (= lambda!318347 lambda!318301)))

(declare-fun bs!1373076 () Bool)

(assert (= bs!1373076 (and d!1831513 d!1831351)))

(assert (=> bs!1373076 (= lambda!318347 lambda!318291)))

(declare-fun bs!1373077 () Bool)

(assert (= bs!1373077 (and d!1831513 d!1831489)))

(assert (=> bs!1373077 (= lambda!318347 lambda!318340)))

(declare-fun bs!1373078 () Bool)

(assert (= bs!1373078 (and d!1831513 d!1831469)))

(assert (=> bs!1373078 (= lambda!318347 lambda!318335)))

(declare-fun bs!1373079 () Bool)

(assert (= bs!1373079 (and d!1831513 d!1831459)))

(assert (=> bs!1373079 (= lambda!318347 lambda!318331)))

(assert (=> d!1831513 (= (inv!82883 (h!70187 (t!377218 zl!343))) (forall!14948 (exprs!5738 (h!70187 (t!377218 zl!343))) lambda!318347))))

(declare-fun bs!1373080 () Bool)

(assert (= bs!1373080 d!1831513))

(declare-fun m!6755066 () Bool)

(assert (=> bs!1373080 m!6755066))

(assert (=> b!5818782 d!1831513))

(assert (=> d!1831331 d!1831439))

(assert (=> d!1831331 d!1831311))

(declare-fun b!5819255 () Bool)

(declare-fun e!3571455 () Int)

(declare-fun e!3571453 () Int)

(assert (=> b!5819255 (= e!3571455 e!3571453)))

(declare-fun c!1031283 () Bool)

(assert (=> b!5819255 (= c!1031283 (is-Star!15854 (h!70185 (exprs!5738 lt!2301756))))))

(declare-fun b!5819256 () Bool)

(assert (=> b!5819256 (= e!3571455 1)))

(declare-fun b!5819257 () Bool)

(declare-fun e!3571454 () Int)

(declare-fun e!3571456 () Int)

(assert (=> b!5819257 (= e!3571454 e!3571456)))

(declare-fun c!1031282 () Bool)

(assert (=> b!5819257 (= c!1031282 (is-Concat!24699 (h!70185 (exprs!5738 lt!2301756))))))

(declare-fun b!5819258 () Bool)

(declare-fun call!454471 () Int)

(declare-fun call!454470 () Int)

(assert (=> b!5819258 (= e!3571456 (+ 1 call!454471 call!454470))))

(declare-fun d!1831515 () Bool)

(declare-fun lt!2301917 () Int)

(assert (=> d!1831515 (> lt!2301917 0)))

(assert (=> d!1831515 (= lt!2301917 e!3571455)))

(declare-fun c!1031281 () Bool)

(assert (=> d!1831515 (= c!1031281 (is-ElementMatch!15854 (h!70185 (exprs!5738 lt!2301756))))))

(assert (=> d!1831515 (= (regexDepthTotal!108 (h!70185 (exprs!5738 lt!2301756))) lt!2301917)))

(declare-fun b!5819259 () Bool)

(assert (=> b!5819259 (= e!3571454 (+ 1 call!454471 call!454470))))

(declare-fun b!5819260 () Bool)

(declare-fun call!454472 () Int)

(assert (=> b!5819260 (= e!3571453 (+ 1 call!454472))))

(declare-fun b!5819261 () Bool)

(assert (=> b!5819261 (= e!3571456 1)))

(declare-fun c!1031280 () Bool)

(declare-fun bm!454465 () Bool)

(assert (=> bm!454465 (= call!454472 (regexDepthTotal!108 (ite c!1031283 (reg!16183 (h!70185 (exprs!5738 lt!2301756))) (ite c!1031280 (regOne!32221 (h!70185 (exprs!5738 lt!2301756))) (regOne!32220 (h!70185 (exprs!5738 lt!2301756)))))))))

(declare-fun bm!454466 () Bool)

(assert (=> bm!454466 (= call!454470 (regexDepthTotal!108 (ite c!1031280 (regTwo!32221 (h!70185 (exprs!5738 lt!2301756))) (regTwo!32220 (h!70185 (exprs!5738 lt!2301756))))))))

(declare-fun bm!454467 () Bool)

(assert (=> bm!454467 (= call!454471 call!454472)))

(declare-fun b!5819262 () Bool)

(assert (=> b!5819262 (= c!1031280 (is-Union!15854 (h!70185 (exprs!5738 lt!2301756))))))

(assert (=> b!5819262 (= e!3571453 e!3571454)))

(assert (= (and d!1831515 c!1031281) b!5819256))

(assert (= (and d!1831515 (not c!1031281)) b!5819255))

(assert (= (and b!5819255 c!1031283) b!5819260))

(assert (= (and b!5819255 (not c!1031283)) b!5819262))

(assert (= (and b!5819262 c!1031280) b!5819259))

(assert (= (and b!5819262 (not c!1031280)) b!5819257))

(assert (= (and b!5819257 c!1031282) b!5819258))

(assert (= (and b!5819257 (not c!1031282)) b!5819261))

(assert (= (or b!5819259 b!5819258) bm!454466))

(assert (= (or b!5819259 b!5819258) bm!454467))

(assert (= (or b!5819260 bm!454467) bm!454465))

(declare-fun m!6755068 () Bool)

(assert (=> bm!454465 m!6755068))

(declare-fun m!6755070 () Bool)

(assert (=> bm!454466 m!6755070))

(assert (=> b!5818490 d!1831515))

(declare-fun d!1831517 () Bool)

(declare-fun lt!2301918 () Int)

(assert (=> d!1831517 (>= lt!2301918 0)))

(declare-fun e!3571457 () Int)

(assert (=> d!1831517 (= lt!2301918 e!3571457)))

(declare-fun c!1031284 () Bool)

(assert (=> d!1831517 (= c!1031284 (is-Cons!63737 (exprs!5738 (Context!10477 (t!377216 (exprs!5738 lt!2301756))))))))

(assert (=> d!1831517 (= (contextDepthTotal!241 (Context!10477 (t!377216 (exprs!5738 lt!2301756)))) lt!2301918)))

(declare-fun b!5819263 () Bool)

(assert (=> b!5819263 (= e!3571457 (+ (regexDepthTotal!108 (h!70185 (exprs!5738 (Context!10477 (t!377216 (exprs!5738 lt!2301756)))))) (contextDepthTotal!241 (Context!10477 (t!377216 (exprs!5738 (Context!10477 (t!377216 (exprs!5738 lt!2301756)))))))))))

(declare-fun b!5819264 () Bool)

(assert (=> b!5819264 (= e!3571457 1)))

(assert (= (and d!1831517 c!1031284) b!5819263))

(assert (= (and d!1831517 (not c!1031284)) b!5819264))

(declare-fun m!6755072 () Bool)

(assert (=> b!5819263 m!6755072))

(declare-fun m!6755074 () Bool)

(assert (=> b!5819263 m!6755074))

(assert (=> b!5818490 d!1831517))

(assert (=> b!5818620 d!1831427))

(assert (=> b!5818620 d!1831429))

(assert (=> d!1831337 d!1831331))

(assert (=> d!1831337 d!1831329))

(declare-fun d!1831519 () Bool)

(assert (=> d!1831519 (= (matchR!8039 r!7292 s!2326) (matchRSpec!2957 r!7292 s!2326))))

(assert (=> d!1831519 true))

(declare-fun _$88!4141 () Unit!156974)

(assert (=> d!1831519 (= (choose!44226 r!7292 s!2326) _$88!4141)))

(declare-fun bs!1373081 () Bool)

(assert (= bs!1373081 d!1831519))

(assert (=> bs!1373081 m!6754488))

(assert (=> bs!1373081 m!6754486))

(assert (=> d!1831337 d!1831519))

(assert (=> d!1831337 d!1831311))

(declare-fun b!5819265 () Bool)

(declare-fun e!3571463 () Bool)

(declare-fun e!3571464 () Bool)

(assert (=> b!5819265 (= e!3571463 e!3571464)))

(declare-fun res!2454005 () Bool)

(assert (=> b!5819265 (=> res!2454005 e!3571464)))

(declare-fun call!454473 () Bool)

(assert (=> b!5819265 (= res!2454005 call!454473)))

(declare-fun b!5819266 () Bool)

(declare-fun e!3571460 () Bool)

(assert (=> b!5819266 (= e!3571460 (matchR!8039 (derivativeStep!4609 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)) (head!12293 (tail!11381 s!2326))) (tail!11381 (tail!11381 s!2326))))))

(declare-fun b!5819267 () Bool)

(assert (=> b!5819267 (= e!3571460 (nullable!5868 (derivativeStep!4609 lt!2301761 (head!12293 s!2326))))))

(declare-fun b!5819268 () Bool)

(declare-fun e!3571459 () Bool)

(assert (=> b!5819268 (= e!3571459 (= (head!12293 (tail!11381 s!2326)) (c!1031068 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)))))))

(declare-fun b!5819269 () Bool)

(declare-fun res!2454001 () Bool)

(assert (=> b!5819269 (=> (not res!2454001) (not e!3571459))))

(assert (=> b!5819269 (= res!2454001 (not call!454473))))

(declare-fun b!5819270 () Bool)

(declare-fun e!3571461 () Bool)

(declare-fun lt!2301919 () Bool)

(assert (=> b!5819270 (= e!3571461 (= lt!2301919 call!454473))))

(declare-fun b!5819271 () Bool)

(assert (=> b!5819271 (= e!3571464 (not (= (head!12293 (tail!11381 s!2326)) (c!1031068 (derivativeStep!4609 lt!2301761 (head!12293 s!2326))))))))

(declare-fun b!5819272 () Bool)

(declare-fun res!2454002 () Bool)

(assert (=> b!5819272 (=> (not res!2454002) (not e!3571459))))

(assert (=> b!5819272 (= res!2454002 (isEmpty!35635 (tail!11381 (tail!11381 s!2326))))))

(declare-fun b!5819273 () Bool)

(declare-fun e!3571458 () Bool)

(assert (=> b!5819273 (= e!3571458 (not lt!2301919))))

(declare-fun b!5819274 () Bool)

(declare-fun e!3571462 () Bool)

(assert (=> b!5819274 (= e!3571462 e!3571463)))

(declare-fun res!2454003 () Bool)

(assert (=> b!5819274 (=> (not res!2454003) (not e!3571463))))

(assert (=> b!5819274 (= res!2454003 (not lt!2301919))))

(declare-fun b!5819275 () Bool)

(assert (=> b!5819275 (= e!3571461 e!3571458)))

(declare-fun c!1031285 () Bool)

(assert (=> b!5819275 (= c!1031285 (is-EmptyLang!15854 (derivativeStep!4609 lt!2301761 (head!12293 s!2326))))))

(declare-fun b!5819276 () Bool)

(declare-fun res!2454004 () Bool)

(assert (=> b!5819276 (=> res!2454004 e!3571462)))

(assert (=> b!5819276 (= res!2454004 e!3571459)))

(declare-fun res!2454006 () Bool)

(assert (=> b!5819276 (=> (not res!2454006) (not e!3571459))))

(assert (=> b!5819276 (= res!2454006 lt!2301919)))

(declare-fun b!5819277 () Bool)

(declare-fun res!2454008 () Bool)

(assert (=> b!5819277 (=> res!2454008 e!3571462)))

(assert (=> b!5819277 (= res!2454008 (not (is-ElementMatch!15854 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)))))))

(assert (=> b!5819277 (= e!3571458 e!3571462)))

(declare-fun b!5819278 () Bool)

(declare-fun res!2454007 () Bool)

(assert (=> b!5819278 (=> res!2454007 e!3571464)))

(assert (=> b!5819278 (= res!2454007 (not (isEmpty!35635 (tail!11381 (tail!11381 s!2326)))))))

(declare-fun d!1831521 () Bool)

(assert (=> d!1831521 e!3571461))

(declare-fun c!1031287 () Bool)

(assert (=> d!1831521 (= c!1031287 (is-EmptyExpr!15854 (derivativeStep!4609 lt!2301761 (head!12293 s!2326))))))

(assert (=> d!1831521 (= lt!2301919 e!3571460)))

(declare-fun c!1031286 () Bool)

(assert (=> d!1831521 (= c!1031286 (isEmpty!35635 (tail!11381 s!2326)))))

(assert (=> d!1831521 (validRegex!7590 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)))))

(assert (=> d!1831521 (= (matchR!8039 (derivativeStep!4609 lt!2301761 (head!12293 s!2326)) (tail!11381 s!2326)) lt!2301919)))

(declare-fun bm!454468 () Bool)

(assert (=> bm!454468 (= call!454473 (isEmpty!35635 (tail!11381 s!2326)))))

(assert (= (and d!1831521 c!1031286) b!5819267))

(assert (= (and d!1831521 (not c!1031286)) b!5819266))

(assert (= (and d!1831521 c!1031287) b!5819270))

(assert (= (and d!1831521 (not c!1031287)) b!5819275))

(assert (= (and b!5819275 c!1031285) b!5819273))

(assert (= (and b!5819275 (not c!1031285)) b!5819277))

(assert (= (and b!5819277 (not res!2454008)) b!5819276))

(assert (= (and b!5819276 res!2454006) b!5819269))

(assert (= (and b!5819269 res!2454001) b!5819272))

(assert (= (and b!5819272 res!2454002) b!5819268))

(assert (= (and b!5819276 (not res!2454004)) b!5819274))

(assert (= (and b!5819274 res!2454003) b!5819265))

(assert (= (and b!5819265 (not res!2454005)) b!5819278))

(assert (= (and b!5819278 (not res!2454007)) b!5819271))

(assert (= (or b!5819270 b!5819265 b!5819269) bm!454468))

(assert (=> b!5819278 m!6754632))

(assert (=> b!5819278 m!6754860))

(assert (=> b!5819278 m!6754860))

(assert (=> b!5819278 m!6754862))

(assert (=> d!1831521 m!6754632))

(assert (=> d!1831521 m!6754634))

(assert (=> d!1831521 m!6754648))

(declare-fun m!6755076 () Bool)

(assert (=> d!1831521 m!6755076))

(assert (=> bm!454468 m!6754632))

(assert (=> bm!454468 m!6754634))

(assert (=> b!5819267 m!6754648))

(declare-fun m!6755078 () Bool)

(assert (=> b!5819267 m!6755078))

(assert (=> b!5819272 m!6754632))

(assert (=> b!5819272 m!6754860))

(assert (=> b!5819272 m!6754860))

(assert (=> b!5819272 m!6754862))

(assert (=> b!5819268 m!6754632))

(assert (=> b!5819268 m!6754868))

(assert (=> b!5819266 m!6754632))

(assert (=> b!5819266 m!6754868))

(assert (=> b!5819266 m!6754648))

(assert (=> b!5819266 m!6754868))

(declare-fun m!6755080 () Bool)

(assert (=> b!5819266 m!6755080))

(assert (=> b!5819266 m!6754632))

(assert (=> b!5819266 m!6754860))

(assert (=> b!5819266 m!6755080))

(assert (=> b!5819266 m!6754860))

(declare-fun m!6755082 () Bool)

(assert (=> b!5819266 m!6755082))

(assert (=> b!5819271 m!6754632))

(assert (=> b!5819271 m!6754868))

(assert (=> b!5818646 d!1831521))

(declare-fun b!5819279 () Bool)

(declare-fun e!3571465 () Regex!15854)

(declare-fun e!3571467 () Regex!15854)

(assert (=> b!5819279 (= e!3571465 e!3571467)))

(declare-fun c!1031291 () Bool)

(assert (=> b!5819279 (= c!1031291 (is-Star!15854 lt!2301761))))

(declare-fun b!5819280 () Bool)

(declare-fun call!454477 () Regex!15854)

(assert (=> b!5819280 (= e!3571467 (Concat!24699 call!454477 lt!2301761))))

(declare-fun bm!454469 () Bool)

(declare-fun call!454475 () Regex!15854)

(assert (=> bm!454469 (= call!454475 call!454477)))

(declare-fun b!5819281 () Bool)

(declare-fun e!3571466 () Regex!15854)

(assert (=> b!5819281 (= e!3571466 (ite (= (head!12293 s!2326) (c!1031068 lt!2301761)) EmptyExpr!15854 EmptyLang!15854))))

(declare-fun bm!454470 () Bool)

(declare-fun call!454476 () Regex!15854)

(assert (=> bm!454470 (= call!454477 call!454476)))

(declare-fun b!5819282 () Bool)

(declare-fun e!3571468 () Regex!15854)

(assert (=> b!5819282 (= e!3571468 (Union!15854 (Concat!24699 call!454475 (regTwo!32220 lt!2301761)) EmptyLang!15854))))

(declare-fun b!5819283 () Bool)

(declare-fun e!3571469 () Regex!15854)

(assert (=> b!5819283 (= e!3571469 e!3571466)))

(declare-fun c!1031288 () Bool)

(assert (=> b!5819283 (= c!1031288 (is-ElementMatch!15854 lt!2301761))))

(declare-fun b!5819284 () Bool)

(declare-fun c!1031289 () Bool)

(assert (=> b!5819284 (= c!1031289 (is-Union!15854 lt!2301761))))

(assert (=> b!5819284 (= e!3571466 e!3571465)))

(declare-fun bm!454471 () Bool)

(declare-fun call!454474 () Regex!15854)

(assert (=> bm!454471 (= call!454474 (derivativeStep!4609 (ite c!1031289 (regOne!32221 lt!2301761) (regOne!32220 lt!2301761)) (head!12293 s!2326)))))

(declare-fun d!1831523 () Bool)

(declare-fun lt!2301920 () Regex!15854)

(assert (=> d!1831523 (validRegex!7590 lt!2301920)))

(assert (=> d!1831523 (= lt!2301920 e!3571469)))

(declare-fun c!1031292 () Bool)

(assert (=> d!1831523 (= c!1031292 (or (is-EmptyExpr!15854 lt!2301761) (is-EmptyLang!15854 lt!2301761)))))

(assert (=> d!1831523 (validRegex!7590 lt!2301761)))

(assert (=> d!1831523 (= (derivativeStep!4609 lt!2301761 (head!12293 s!2326)) lt!2301920)))

(declare-fun b!5819285 () Bool)

(declare-fun c!1031290 () Bool)

(assert (=> b!5819285 (= c!1031290 (nullable!5868 (regOne!32220 lt!2301761)))))

(assert (=> b!5819285 (= e!3571467 e!3571468)))

(declare-fun b!5819286 () Bool)

(assert (=> b!5819286 (= e!3571468 (Union!15854 (Concat!24699 call!454474 (regTwo!32220 lt!2301761)) call!454475))))

(declare-fun b!5819287 () Bool)

(assert (=> b!5819287 (= e!3571469 EmptyLang!15854)))

(declare-fun b!5819288 () Bool)

(assert (=> b!5819288 (= e!3571465 (Union!15854 call!454474 call!454476))))

(declare-fun bm!454472 () Bool)

(assert (=> bm!454472 (= call!454476 (derivativeStep!4609 (ite c!1031289 (regTwo!32221 lt!2301761) (ite c!1031291 (reg!16183 lt!2301761) (ite c!1031290 (regTwo!32220 lt!2301761) (regOne!32220 lt!2301761)))) (head!12293 s!2326)))))

(assert (= (and d!1831523 c!1031292) b!5819287))

(assert (= (and d!1831523 (not c!1031292)) b!5819283))

(assert (= (and b!5819283 c!1031288) b!5819281))

(assert (= (and b!5819283 (not c!1031288)) b!5819284))

(assert (= (and b!5819284 c!1031289) b!5819288))

(assert (= (and b!5819284 (not c!1031289)) b!5819279))

(assert (= (and b!5819279 c!1031291) b!5819280))

(assert (= (and b!5819279 (not c!1031291)) b!5819285))

(assert (= (and b!5819285 c!1031290) b!5819286))

(assert (= (and b!5819285 (not c!1031290)) b!5819282))

(assert (= (or b!5819286 b!5819282) bm!454469))

(assert (= (or b!5819280 bm!454469) bm!454470))

(assert (= (or b!5819288 bm!454470) bm!454472))

(assert (= (or b!5819288 b!5819286) bm!454471))

(assert (=> bm!454471 m!6754638))

(declare-fun m!6755084 () Bool)

(assert (=> bm!454471 m!6755084))

(declare-fun m!6755086 () Bool)

(assert (=> d!1831523 m!6755086))

(assert (=> d!1831523 m!6754480))

(declare-fun m!6755088 () Bool)

(assert (=> b!5819285 m!6755088))

(assert (=> bm!454472 m!6754638))

(declare-fun m!6755090 () Bool)

(assert (=> bm!454472 m!6755090))

(assert (=> b!5818646 d!1831523))

(assert (=> b!5818646 d!1831421))

(assert (=> b!5818646 d!1831429))

(declare-fun d!1831525 () Bool)

(declare-fun res!2454009 () Bool)

(declare-fun e!3571470 () Bool)

(assert (=> d!1831525 (=> res!2454009 e!3571470)))

(assert (=> d!1831525 (= res!2454009 (is-Nil!63737 (exprs!5738 setElem!39265)))))

(assert (=> d!1831525 (= (forall!14948 (exprs!5738 setElem!39265) lambda!318294) e!3571470)))

(declare-fun b!5819289 () Bool)

(declare-fun e!3571471 () Bool)

(assert (=> b!5819289 (= e!3571470 e!3571471)))

(declare-fun res!2454010 () Bool)

(assert (=> b!5819289 (=> (not res!2454010) (not e!3571471))))

(assert (=> b!5819289 (= res!2454010 (dynLambda!24951 lambda!318294 (h!70185 (exprs!5738 setElem!39265))))))

(declare-fun b!5819290 () Bool)

(assert (=> b!5819290 (= e!3571471 (forall!14948 (t!377216 (exprs!5738 setElem!39265)) lambda!318294))))

(assert (= (and d!1831525 (not res!2454009)) b!5819289))

(assert (= (and b!5819289 res!2454010) b!5819290))

(declare-fun b_lambda!219335 () Bool)

(assert (=> (not b_lambda!219335) (not b!5819289)))

(declare-fun m!6755092 () Bool)

(assert (=> b!5819289 m!6755092))

(declare-fun m!6755094 () Bool)

(assert (=> b!5819290 m!6755094))

(assert (=> d!1831359 d!1831525))

(declare-fun d!1831527 () Bool)

(declare-fun res!2454015 () Bool)

(declare-fun e!3571476 () Bool)

(assert (=> d!1831527 (=> res!2454015 e!3571476)))

(assert (=> d!1831527 (= res!2454015 (is-Nil!63739 lt!2301826))))

(assert (=> d!1831527 (= (noDuplicate!1735 lt!2301826) e!3571476)))

(declare-fun b!5819295 () Bool)

(declare-fun e!3571477 () Bool)

(assert (=> b!5819295 (= e!3571476 e!3571477)))

(declare-fun res!2454016 () Bool)

(assert (=> b!5819295 (=> (not res!2454016) (not e!3571477))))

(assert (=> b!5819295 (= res!2454016 (not (contains!19896 (t!377218 lt!2301826) (h!70187 lt!2301826))))))

(declare-fun b!5819296 () Bool)

(assert (=> b!5819296 (= e!3571477 (noDuplicate!1735 (t!377218 lt!2301826)))))

(assert (= (and d!1831527 (not res!2454015)) b!5819295))

(assert (= (and b!5819295 res!2454016) b!5819296))

(declare-fun m!6755096 () Bool)

(assert (=> b!5819295 m!6755096))

(declare-fun m!6755098 () Bool)

(assert (=> b!5819296 m!6755098))

(assert (=> d!1831341 d!1831527))

(declare-fun d!1831529 () Bool)

(declare-fun e!3571486 () Bool)

(assert (=> d!1831529 e!3571486))

(declare-fun res!2454021 () Bool)

(assert (=> d!1831529 (=> (not res!2454021) (not e!3571486))))

(declare-fun res!2454022 () List!63863)

(assert (=> d!1831529 (= res!2454021 (noDuplicate!1735 res!2454022))))

(declare-fun e!3571485 () Bool)

(assert (=> d!1831529 e!3571485))

(assert (=> d!1831529 (= (choose!44227 z!1189) res!2454022)))

(declare-fun b!5819304 () Bool)

(declare-fun e!3571484 () Bool)

(declare-fun tp!1605618 () Bool)

(assert (=> b!5819304 (= e!3571484 tp!1605618)))

(declare-fun b!5819303 () Bool)

(declare-fun tp!1605617 () Bool)

(assert (=> b!5819303 (= e!3571485 (and (inv!82883 (h!70187 res!2454022)) e!3571484 tp!1605617))))

(declare-fun b!5819305 () Bool)

(assert (=> b!5819305 (= e!3571486 (= (content!11699 res!2454022) z!1189))))

(assert (= b!5819303 b!5819304))

(assert (= (and d!1831529 (is-Cons!63739 res!2454022)) b!5819303))

(assert (= (and d!1831529 res!2454021) b!5819305))

(declare-fun m!6755100 () Bool)

(assert (=> d!1831529 m!6755100))

(declare-fun m!6755102 () Bool)

(assert (=> b!5819303 m!6755102))

(declare-fun m!6755104 () Bool)

(assert (=> b!5819305 m!6755104))

(assert (=> d!1831341 d!1831529))

(declare-fun bs!1373082 () Bool)

(declare-fun d!1831531 () Bool)

(assert (= bs!1373082 (and d!1831531 b!5818338)))

(declare-fun lambda!318348 () Int)

(assert (=> bs!1373082 (not (= lambda!318348 lambda!318255))))

(declare-fun bs!1373083 () Bool)

(assert (= bs!1373083 (and d!1831531 d!1831359)))

(assert (=> bs!1373083 (= lambda!318348 lambda!318294)))

(declare-fun bs!1373084 () Bool)

(assert (= bs!1373084 (and d!1831531 d!1831467)))

(assert (=> bs!1373084 (= lambda!318348 lambda!318334)))

(declare-fun bs!1373085 () Bool)

(assert (= bs!1373085 (and d!1831531 d!1831479)))

(assert (=> bs!1373085 (not (= lambda!318348 lambda!318336))))

(declare-fun bs!1373086 () Bool)

(assert (= bs!1373086 (and d!1831531 d!1831345)))

(assert (=> bs!1373086 (not (= lambda!318348 lambda!318282))))

(declare-fun bs!1373087 () Bool)

(assert (= bs!1373087 (and d!1831531 d!1831347)))

(assert (=> bs!1373087 (= lambda!318348 lambda!318287)))

(assert (=> bs!1373087 (not (= lambda!318348 lambda!318288))))

(declare-fun bs!1373088 () Bool)

(assert (= bs!1373088 (and d!1831531 d!1831481)))

(assert (=> bs!1373088 (not (= lambda!318348 lambda!318339))))

(declare-fun bs!1373089 () Bool)

(assert (= bs!1373089 (and d!1831531 d!1831369)))

(assert (=> bs!1373089 (= lambda!318348 lambda!318301)))

(declare-fun bs!1373090 () Bool)

(assert (= bs!1373090 (and d!1831531 d!1831351)))

(assert (=> bs!1373090 (= lambda!318348 lambda!318291)))

(declare-fun bs!1373091 () Bool)

(assert (= bs!1373091 (and d!1831531 d!1831489)))

(assert (=> bs!1373091 (= lambda!318348 lambda!318340)))

(declare-fun bs!1373092 () Bool)

(assert (= bs!1373092 (and d!1831531 d!1831513)))

(assert (=> bs!1373092 (= lambda!318348 lambda!318347)))

(declare-fun bs!1373093 () Bool)

(assert (= bs!1373093 (and d!1831531 d!1831469)))

(assert (=> bs!1373093 (= lambda!318348 lambda!318335)))

(declare-fun bs!1373094 () Bool)

(assert (= bs!1373094 (and d!1831531 d!1831459)))

(assert (=> bs!1373094 (= lambda!318348 lambda!318331)))

(declare-fun b!5819306 () Bool)

(declare-fun e!3571489 () Regex!15854)

(assert (=> b!5819306 (= e!3571489 (Concat!24699 (h!70185 (exprs!5738 lt!2301799)) (generalisedConcat!1459 (t!377216 (exprs!5738 lt!2301799)))))))

(declare-fun b!5819307 () Bool)

(declare-fun e!3571492 () Bool)

(assert (=> b!5819307 (= e!3571492 (isEmpty!35637 (t!377216 (exprs!5738 lt!2301799))))))

(declare-fun b!5819308 () Bool)

(declare-fun e!3571488 () Regex!15854)

(assert (=> b!5819308 (= e!3571488 e!3571489)))

(declare-fun c!1031294 () Bool)

(assert (=> b!5819308 (= c!1031294 (is-Cons!63737 (exprs!5738 lt!2301799)))))

(declare-fun b!5819309 () Bool)

(declare-fun e!3571487 () Bool)

(declare-fun e!3571490 () Bool)

(assert (=> b!5819309 (= e!3571487 e!3571490)))

(declare-fun c!1031295 () Bool)

(assert (=> b!5819309 (= c!1031295 (isEmpty!35637 (exprs!5738 lt!2301799)))))

(declare-fun b!5819310 () Bool)

(declare-fun e!3571491 () Bool)

(declare-fun lt!2301921 () Regex!15854)

(assert (=> b!5819310 (= e!3571491 (= lt!2301921 (head!12294 (exprs!5738 lt!2301799))))))

(declare-fun b!5819311 () Bool)

(assert (=> b!5819311 (= e!3571488 (h!70185 (exprs!5738 lt!2301799)))))

(declare-fun b!5819312 () Bool)

(assert (=> b!5819312 (= e!3571490 e!3571491)))

(declare-fun c!1031296 () Bool)

(assert (=> b!5819312 (= c!1031296 (isEmpty!35637 (tail!11383 (exprs!5738 lt!2301799))))))

(declare-fun b!5819313 () Bool)

(assert (=> b!5819313 (= e!3571490 (isEmptyExpr!1308 lt!2301921))))

(assert (=> d!1831531 e!3571487))

(declare-fun res!2454024 () Bool)

(assert (=> d!1831531 (=> (not res!2454024) (not e!3571487))))

(assert (=> d!1831531 (= res!2454024 (validRegex!7590 lt!2301921))))

(assert (=> d!1831531 (= lt!2301921 e!3571488)))

(declare-fun c!1031293 () Bool)

(assert (=> d!1831531 (= c!1031293 e!3571492)))

(declare-fun res!2454023 () Bool)

(assert (=> d!1831531 (=> (not res!2454023) (not e!3571492))))

(assert (=> d!1831531 (= res!2454023 (is-Cons!63737 (exprs!5738 lt!2301799)))))

(assert (=> d!1831531 (forall!14948 (exprs!5738 lt!2301799) lambda!318348)))

(assert (=> d!1831531 (= (generalisedConcat!1459 (exprs!5738 lt!2301799)) lt!2301921)))

(declare-fun b!5819314 () Bool)

(assert (=> b!5819314 (= e!3571489 EmptyExpr!15854)))

(declare-fun b!5819315 () Bool)

(assert (=> b!5819315 (= e!3571491 (isConcat!831 lt!2301921))))

(assert (= (and d!1831531 res!2454023) b!5819307))

(assert (= (and d!1831531 c!1031293) b!5819311))

(assert (= (and d!1831531 (not c!1031293)) b!5819308))

(assert (= (and b!5819308 c!1031294) b!5819306))

(assert (= (and b!5819308 (not c!1031294)) b!5819314))

(assert (= (and d!1831531 res!2454024) b!5819309))

(assert (= (and b!5819309 c!1031295) b!5819313))

(assert (= (and b!5819309 (not c!1031295)) b!5819312))

(assert (= (and b!5819312 c!1031296) b!5819310))

(assert (= (and b!5819312 (not c!1031296)) b!5819315))

(declare-fun m!6755106 () Bool)

(assert (=> b!5819310 m!6755106))

(declare-fun m!6755108 () Bool)

(assert (=> b!5819307 m!6755108))

(declare-fun m!6755110 () Bool)

(assert (=> b!5819306 m!6755110))

(declare-fun m!6755112 () Bool)

(assert (=> b!5819315 m!6755112))

(declare-fun m!6755114 () Bool)

(assert (=> b!5819313 m!6755114))

(declare-fun m!6755116 () Bool)

(assert (=> b!5819312 m!6755116))

(assert (=> b!5819312 m!6755116))

(declare-fun m!6755118 () Bool)

(assert (=> b!5819312 m!6755118))

(declare-fun m!6755120 () Bool)

(assert (=> d!1831531 m!6755120))

(declare-fun m!6755122 () Bool)

(assert (=> d!1831531 m!6755122))

(declare-fun m!6755124 () Bool)

(assert (=> b!5819309 m!6755124))

(assert (=> bs!1372952 d!1831531))

(assert (=> bs!1372955 d!1831467))

(declare-fun d!1831533 () Bool)

(assert (=> d!1831533 (= (nullable!5868 (reg!16183 lt!2301761)) (nullableFct!1877 (reg!16183 lt!2301761)))))

(declare-fun bs!1373095 () Bool)

(assert (= bs!1373095 d!1831533))

(declare-fun m!6755126 () Bool)

(assert (=> bs!1373095 m!6755126))

(assert (=> b!5818665 d!1831533))

(declare-fun b!5819316 () Bool)

(declare-fun e!3571498 () Bool)

(declare-fun e!3571493 () Bool)

(assert (=> b!5819316 (= e!3571498 e!3571493)))

(declare-fun c!1031298 () Bool)

(assert (=> b!5819316 (= c!1031298 (is-Union!15854 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))

(declare-fun b!5819317 () Bool)

(declare-fun res!2454029 () Bool)

(declare-fun e!3571494 () Bool)

(assert (=> b!5819317 (=> res!2454029 e!3571494)))

(assert (=> b!5819317 (= res!2454029 (not (is-Concat!24699 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761)))))))

(assert (=> b!5819317 (= e!3571493 e!3571494)))

(declare-fun bm!454474 () Bool)

(declare-fun call!454480 () Bool)

(assert (=> bm!454474 (= call!454480 (validRegex!7590 (ite c!1031298 (regTwo!32221 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))) (regTwo!32220 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))))

(declare-fun b!5819318 () Bool)

(declare-fun e!3571499 () Bool)

(assert (=> b!5819318 (= e!3571494 e!3571499)))

(declare-fun res!2454028 () Bool)

(assert (=> b!5819318 (=> (not res!2454028) (not e!3571499))))

(declare-fun call!454479 () Bool)

(assert (=> b!5819318 (= res!2454028 call!454479)))

(declare-fun b!5819319 () Bool)

(declare-fun e!3571495 () Bool)

(assert (=> b!5819319 (= e!3571498 e!3571495)))

(declare-fun res!2454025 () Bool)

(assert (=> b!5819319 (= res!2454025 (not (nullable!5868 (reg!16183 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))))

(assert (=> b!5819319 (=> (not res!2454025) (not e!3571495))))

(declare-fun b!5819320 () Bool)

(declare-fun e!3571497 () Bool)

(assert (=> b!5819320 (= e!3571497 call!454480)))

(declare-fun b!5819321 () Bool)

(declare-fun call!454478 () Bool)

(assert (=> b!5819321 (= e!3571495 call!454478)))

(declare-fun b!5819322 () Bool)

(declare-fun e!3571496 () Bool)

(assert (=> b!5819322 (= e!3571496 e!3571498)))

(declare-fun c!1031297 () Bool)

(assert (=> b!5819322 (= c!1031297 (is-Star!15854 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))

(declare-fun b!5819323 () Bool)

(declare-fun res!2454026 () Bool)

(assert (=> b!5819323 (=> (not res!2454026) (not e!3571497))))

(assert (=> b!5819323 (= res!2454026 call!454479)))

(assert (=> b!5819323 (= e!3571493 e!3571497)))

(declare-fun b!5819324 () Bool)

(assert (=> b!5819324 (= e!3571499 call!454480)))

(declare-fun bm!454475 () Bool)

(assert (=> bm!454475 (= call!454478 (validRegex!7590 (ite c!1031297 (reg!16183 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))) (ite c!1031298 (regOne!32221 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))) (regOne!32220 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761)))))))))

(declare-fun d!1831535 () Bool)

(declare-fun res!2454027 () Bool)

(assert (=> d!1831535 (=> res!2454027 e!3571496)))

(assert (=> d!1831535 (= res!2454027 (is-ElementMatch!15854 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))))))

(assert (=> d!1831535 (= (validRegex!7590 (ite c!1031131 (regTwo!32221 lt!2301761) (regTwo!32220 lt!2301761))) e!3571496)))

(declare-fun bm!454473 () Bool)

(assert (=> bm!454473 (= call!454479 call!454478)))

(assert (= (and d!1831535 (not res!2454027)) b!5819322))

(assert (= (and b!5819322 c!1031297) b!5819319))

(assert (= (and b!5819322 (not c!1031297)) b!5819316))

(assert (= (and b!5819319 res!2454025) b!5819321))

(assert (= (and b!5819316 c!1031298) b!5819323))

(assert (= (and b!5819316 (not c!1031298)) b!5819317))

(assert (= (and b!5819323 res!2454026) b!5819320))

(assert (= (and b!5819317 (not res!2454029)) b!5819318))

(assert (= (and b!5819318 res!2454028) b!5819324))

(assert (= (or b!5819320 b!5819324) bm!454474))

(assert (= (or b!5819323 b!5819318) bm!454473))

(assert (= (or b!5819321 bm!454473) bm!454475))

(declare-fun m!6755128 () Bool)

(assert (=> bm!454474 m!6755128))

(declare-fun m!6755130 () Bool)

(assert (=> b!5819319 m!6755130))

(declare-fun m!6755132 () Bool)

(assert (=> bm!454475 m!6755132))

(assert (=> bm!454407 d!1831535))

(assert (=> b!5818648 d!1831421))

(declare-fun d!1831537 () Bool)

(declare-fun lt!2301922 () Int)

(assert (=> d!1831537 (>= lt!2301922 0)))

(declare-fun e!3571500 () Int)

(assert (=> d!1831537 (= lt!2301922 e!3571500)))

(declare-fun c!1031299 () Bool)

(assert (=> d!1831537 (= c!1031299 (is-Cons!63737 (exprs!5738 (h!70187 zl!343))))))

(assert (=> d!1831537 (= (contextDepthTotal!241 (h!70187 zl!343)) lt!2301922)))

(declare-fun b!5819325 () Bool)

(assert (=> b!5819325 (= e!3571500 (+ (regexDepthTotal!108 (h!70185 (exprs!5738 (h!70187 zl!343)))) (contextDepthTotal!241 (Context!10477 (t!377216 (exprs!5738 (h!70187 zl!343)))))))))

(declare-fun b!5819326 () Bool)

(assert (=> b!5819326 (= e!3571500 1)))

(assert (= (and d!1831537 c!1031299) b!5819325))

(assert (= (and d!1831537 (not c!1031299)) b!5819326))

(declare-fun m!6755134 () Bool)

(assert (=> b!5819325 m!6755134))

(declare-fun m!6755136 () Bool)

(assert (=> b!5819325 m!6755136))

(assert (=> b!5818484 d!1831537))

(declare-fun d!1831539 () Bool)

(declare-fun lt!2301923 () Int)

(assert (=> d!1831539 (>= lt!2301923 0)))

(declare-fun e!3571501 () Int)

(assert (=> d!1831539 (= lt!2301923 e!3571501)))

(declare-fun c!1031300 () Bool)

(assert (=> d!1831539 (= c!1031300 (is-Cons!63739 (t!377218 zl!343)))))

(assert (=> d!1831539 (= (zipperDepthTotal!263 (t!377218 zl!343)) lt!2301923)))

(declare-fun b!5819327 () Bool)

(assert (=> b!5819327 (= e!3571501 (+ (contextDepthTotal!241 (h!70187 (t!377218 zl!343))) (zipperDepthTotal!263 (t!377218 (t!377218 zl!343)))))))

(declare-fun b!5819328 () Bool)

(assert (=> b!5819328 (= e!3571501 0)))

(assert (= (and d!1831539 c!1031300) b!5819327))

(assert (= (and d!1831539 (not c!1031300)) b!5819328))

(declare-fun m!6755138 () Bool)

(assert (=> b!5819327 m!6755138))

(declare-fun m!6755140 () Bool)

(assert (=> b!5819327 m!6755140))

(assert (=> b!5818484 d!1831539))

(declare-fun b!5819331 () Bool)

(declare-fun e!3571502 () Bool)

(declare-fun tp!1605620 () Bool)

(assert (=> b!5819331 (= e!3571502 tp!1605620)))

(declare-fun b!5819332 () Bool)

(declare-fun tp!1605623 () Bool)

(declare-fun tp!1605622 () Bool)

(assert (=> b!5819332 (= e!3571502 (and tp!1605623 tp!1605622))))

(declare-fun b!5819329 () Bool)

(assert (=> b!5819329 (= e!3571502 tp_is_empty!40961)))

(assert (=> b!5818759 (= tp!1605513 e!3571502)))

(declare-fun b!5819330 () Bool)

(declare-fun tp!1605619 () Bool)

(declare-fun tp!1605621 () Bool)

(assert (=> b!5819330 (= e!3571502 (and tp!1605619 tp!1605621))))

(assert (= (and b!5818759 (is-ElementMatch!15854 (reg!16183 (regTwo!32220 r!7292)))) b!5819329))

(assert (= (and b!5818759 (is-Concat!24699 (reg!16183 (regTwo!32220 r!7292)))) b!5819330))

(assert (= (and b!5818759 (is-Star!15854 (reg!16183 (regTwo!32220 r!7292)))) b!5819331))

(assert (= (and b!5818759 (is-Union!15854 (reg!16183 (regTwo!32220 r!7292)))) b!5819332))

(declare-fun b!5819335 () Bool)

(declare-fun e!3571503 () Bool)

(declare-fun tp!1605625 () Bool)

(assert (=> b!5819335 (= e!3571503 tp!1605625)))

(declare-fun b!5819336 () Bool)

(declare-fun tp!1605628 () Bool)

(declare-fun tp!1605627 () Bool)

(assert (=> b!5819336 (= e!3571503 (and tp!1605628 tp!1605627))))

(declare-fun b!5819333 () Bool)

(assert (=> b!5819333 (= e!3571503 tp_is_empty!40961)))

(assert (=> b!5818758 (= tp!1605512 e!3571503)))

(declare-fun b!5819334 () Bool)

(declare-fun tp!1605624 () Bool)

(declare-fun tp!1605626 () Bool)

(assert (=> b!5819334 (= e!3571503 (and tp!1605624 tp!1605626))))

(assert (= (and b!5818758 (is-ElementMatch!15854 (regOne!32220 (regTwo!32220 r!7292)))) b!5819333))

(assert (= (and b!5818758 (is-Concat!24699 (regOne!32220 (regTwo!32220 r!7292)))) b!5819334))

(assert (= (and b!5818758 (is-Star!15854 (regOne!32220 (regTwo!32220 r!7292)))) b!5819335))

(assert (= (and b!5818758 (is-Union!15854 (regOne!32220 (regTwo!32220 r!7292)))) b!5819336))

(declare-fun b!5819339 () Bool)

(declare-fun e!3571504 () Bool)

(declare-fun tp!1605630 () Bool)

(assert (=> b!5819339 (= e!3571504 tp!1605630)))

(declare-fun b!5819340 () Bool)

(declare-fun tp!1605633 () Bool)

(declare-fun tp!1605632 () Bool)

(assert (=> b!5819340 (= e!3571504 (and tp!1605633 tp!1605632))))

(declare-fun b!5819337 () Bool)

(assert (=> b!5819337 (= e!3571504 tp_is_empty!40961)))

(assert (=> b!5818758 (= tp!1605514 e!3571504)))

(declare-fun b!5819338 () Bool)

(declare-fun tp!1605629 () Bool)

(declare-fun tp!1605631 () Bool)

(assert (=> b!5819338 (= e!3571504 (and tp!1605629 tp!1605631))))

(assert (= (and b!5818758 (is-ElementMatch!15854 (regTwo!32220 (regTwo!32220 r!7292)))) b!5819337))

(assert (= (and b!5818758 (is-Concat!24699 (regTwo!32220 (regTwo!32220 r!7292)))) b!5819338))

(assert (= (and b!5818758 (is-Star!15854 (regTwo!32220 (regTwo!32220 r!7292)))) b!5819339))

(assert (= (and b!5818758 (is-Union!15854 (regTwo!32220 (regTwo!32220 r!7292)))) b!5819340))

(declare-fun b!5819343 () Bool)

(declare-fun e!3571505 () Bool)

(declare-fun tp!1605635 () Bool)

(assert (=> b!5819343 (= e!3571505 tp!1605635)))

(declare-fun b!5819344 () Bool)

(declare-fun tp!1605638 () Bool)

(declare-fun tp!1605637 () Bool)

(assert (=> b!5819344 (= e!3571505 (and tp!1605638 tp!1605637))))

(declare-fun b!5819341 () Bool)

(assert (=> b!5819341 (= e!3571505 tp_is_empty!40961)))

(assert (=> b!5818795 (= tp!1605551 e!3571505)))

(declare-fun b!5819342 () Bool)

(declare-fun tp!1605634 () Bool)

(declare-fun tp!1605636 () Bool)

(assert (=> b!5819342 (= e!3571505 (and tp!1605634 tp!1605636))))

(assert (= (and b!5818795 (is-ElementMatch!15854 (reg!16183 (reg!16183 r!7292)))) b!5819341))

(assert (= (and b!5818795 (is-Concat!24699 (reg!16183 (reg!16183 r!7292)))) b!5819342))

(assert (= (and b!5818795 (is-Star!15854 (reg!16183 (reg!16183 r!7292)))) b!5819343))

(assert (= (and b!5818795 (is-Union!15854 (reg!16183 (reg!16183 r!7292)))) b!5819344))

(declare-fun b!5819347 () Bool)

(declare-fun e!3571506 () Bool)

(declare-fun tp!1605640 () Bool)

(assert (=> b!5819347 (= e!3571506 tp!1605640)))

(declare-fun b!5819348 () Bool)

(declare-fun tp!1605643 () Bool)

(declare-fun tp!1605642 () Bool)

(assert (=> b!5819348 (= e!3571506 (and tp!1605643 tp!1605642))))

(declare-fun b!5819345 () Bool)

(assert (=> b!5819345 (= e!3571506 tp_is_empty!40961)))

(assert (=> b!5818786 (= tp!1605540 e!3571506)))

(declare-fun b!5819346 () Bool)

(declare-fun tp!1605639 () Bool)

(declare-fun tp!1605641 () Bool)

(assert (=> b!5819346 (= e!3571506 (and tp!1605639 tp!1605641))))

(assert (= (and b!5818786 (is-ElementMatch!15854 (regOne!32220 (regOne!32221 r!7292)))) b!5819345))

(assert (= (and b!5818786 (is-Concat!24699 (regOne!32220 (regOne!32221 r!7292)))) b!5819346))

(assert (= (and b!5818786 (is-Star!15854 (regOne!32220 (regOne!32221 r!7292)))) b!5819347))

(assert (= (and b!5818786 (is-Union!15854 (regOne!32220 (regOne!32221 r!7292)))) b!5819348))

(declare-fun b!5819351 () Bool)

(declare-fun e!3571507 () Bool)

(declare-fun tp!1605645 () Bool)

(assert (=> b!5819351 (= e!3571507 tp!1605645)))

(declare-fun b!5819352 () Bool)

(declare-fun tp!1605648 () Bool)

(declare-fun tp!1605647 () Bool)

(assert (=> b!5819352 (= e!3571507 (and tp!1605648 tp!1605647))))

(declare-fun b!5819349 () Bool)

(assert (=> b!5819349 (= e!3571507 tp_is_empty!40961)))

(assert (=> b!5818786 (= tp!1605542 e!3571507)))

(declare-fun b!5819350 () Bool)

(declare-fun tp!1605644 () Bool)

(declare-fun tp!1605646 () Bool)

(assert (=> b!5819350 (= e!3571507 (and tp!1605644 tp!1605646))))

(assert (= (and b!5818786 (is-ElementMatch!15854 (regTwo!32220 (regOne!32221 r!7292)))) b!5819349))

(assert (= (and b!5818786 (is-Concat!24699 (regTwo!32220 (regOne!32221 r!7292)))) b!5819350))

(assert (= (and b!5818786 (is-Star!15854 (regTwo!32220 (regOne!32221 r!7292)))) b!5819351))

(assert (= (and b!5818786 (is-Union!15854 (regTwo!32220 (regOne!32221 r!7292)))) b!5819352))

(declare-fun b!5819355 () Bool)

(declare-fun e!3571508 () Bool)

(declare-fun tp!1605650 () Bool)

(assert (=> b!5819355 (= e!3571508 tp!1605650)))

(declare-fun b!5819356 () Bool)

(declare-fun tp!1605653 () Bool)

(declare-fun tp!1605652 () Bool)

(assert (=> b!5819356 (= e!3571508 (and tp!1605653 tp!1605652))))

(declare-fun b!5819353 () Bool)

(assert (=> b!5819353 (= e!3571508 tp_is_empty!40961)))

(assert (=> b!5818760 (= tp!1605516 e!3571508)))

(declare-fun b!5819354 () Bool)

(declare-fun tp!1605649 () Bool)

(declare-fun tp!1605651 () Bool)

(assert (=> b!5819354 (= e!3571508 (and tp!1605649 tp!1605651))))

(assert (= (and b!5818760 (is-ElementMatch!15854 (regOne!32221 (regTwo!32220 r!7292)))) b!5819353))

(assert (= (and b!5818760 (is-Concat!24699 (regOne!32221 (regTwo!32220 r!7292)))) b!5819354))

(assert (= (and b!5818760 (is-Star!15854 (regOne!32221 (regTwo!32220 r!7292)))) b!5819355))

(assert (= (and b!5818760 (is-Union!15854 (regOne!32221 (regTwo!32220 r!7292)))) b!5819356))

(declare-fun b!5819359 () Bool)

(declare-fun e!3571509 () Bool)

(declare-fun tp!1605655 () Bool)

(assert (=> b!5819359 (= e!3571509 tp!1605655)))

(declare-fun b!5819360 () Bool)

(declare-fun tp!1605658 () Bool)

(declare-fun tp!1605657 () Bool)

(assert (=> b!5819360 (= e!3571509 (and tp!1605658 tp!1605657))))

(declare-fun b!5819357 () Bool)

(assert (=> b!5819357 (= e!3571509 tp_is_empty!40961)))

(assert (=> b!5818760 (= tp!1605515 e!3571509)))

(declare-fun b!5819358 () Bool)

(declare-fun tp!1605654 () Bool)

(declare-fun tp!1605656 () Bool)

(assert (=> b!5819358 (= e!3571509 (and tp!1605654 tp!1605656))))

(assert (= (and b!5818760 (is-ElementMatch!15854 (regTwo!32221 (regTwo!32220 r!7292)))) b!5819357))

(assert (= (and b!5818760 (is-Concat!24699 (regTwo!32221 (regTwo!32220 r!7292)))) b!5819358))

(assert (= (and b!5818760 (is-Star!15854 (regTwo!32221 (regTwo!32220 r!7292)))) b!5819359))

(assert (= (and b!5818760 (is-Union!15854 (regTwo!32221 (regTwo!32220 r!7292)))) b!5819360))

(declare-fun b!5819363 () Bool)

(declare-fun e!3571510 () Bool)

(declare-fun tp!1605660 () Bool)

(assert (=> b!5819363 (= e!3571510 tp!1605660)))

(declare-fun b!5819364 () Bool)

(declare-fun tp!1605663 () Bool)

(declare-fun tp!1605662 () Bool)

(assert (=> b!5819364 (= e!3571510 (and tp!1605663 tp!1605662))))

(declare-fun b!5819361 () Bool)

(assert (=> b!5819361 (= e!3571510 tp_is_empty!40961)))

(assert (=> b!5818794 (= tp!1605550 e!3571510)))

(declare-fun b!5819362 () Bool)

(declare-fun tp!1605659 () Bool)

(declare-fun tp!1605661 () Bool)

(assert (=> b!5819362 (= e!3571510 (and tp!1605659 tp!1605661))))

(assert (= (and b!5818794 (is-ElementMatch!15854 (regOne!32220 (reg!16183 r!7292)))) b!5819361))

(assert (= (and b!5818794 (is-Concat!24699 (regOne!32220 (reg!16183 r!7292)))) b!5819362))

(assert (= (and b!5818794 (is-Star!15854 (regOne!32220 (reg!16183 r!7292)))) b!5819363))

(assert (= (and b!5818794 (is-Union!15854 (regOne!32220 (reg!16183 r!7292)))) b!5819364))

(declare-fun b!5819367 () Bool)

(declare-fun e!3571511 () Bool)

(declare-fun tp!1605665 () Bool)

(assert (=> b!5819367 (= e!3571511 tp!1605665)))

(declare-fun b!5819368 () Bool)

(declare-fun tp!1605668 () Bool)

(declare-fun tp!1605667 () Bool)

(assert (=> b!5819368 (= e!3571511 (and tp!1605668 tp!1605667))))

(declare-fun b!5819365 () Bool)

(assert (=> b!5819365 (= e!3571511 tp_is_empty!40961)))

(assert (=> b!5818794 (= tp!1605552 e!3571511)))

(declare-fun b!5819366 () Bool)

(declare-fun tp!1605664 () Bool)

(declare-fun tp!1605666 () Bool)

(assert (=> b!5819366 (= e!3571511 (and tp!1605664 tp!1605666))))

(assert (= (and b!5818794 (is-ElementMatch!15854 (regTwo!32220 (reg!16183 r!7292)))) b!5819365))

(assert (= (and b!5818794 (is-Concat!24699 (regTwo!32220 (reg!16183 r!7292)))) b!5819366))

(assert (= (and b!5818794 (is-Star!15854 (regTwo!32220 (reg!16183 r!7292)))) b!5819367))

(assert (= (and b!5818794 (is-Union!15854 (regTwo!32220 (reg!16183 r!7292)))) b!5819368))

(declare-fun condSetEmpty!39275 () Bool)

(assert (=> setNonEmpty!39271 (= condSetEmpty!39275 (= setRest!39271 (as set.empty (Set Context!10476))))))

(declare-fun setRes!39275 () Bool)

(assert (=> setNonEmpty!39271 (= tp!1605531 setRes!39275)))

(declare-fun setIsEmpty!39275 () Bool)

(assert (=> setIsEmpty!39275 setRes!39275))

(declare-fun tp!1605670 () Bool)

(declare-fun setElem!39275 () Context!10476)

(declare-fun e!3571512 () Bool)

(declare-fun setNonEmpty!39275 () Bool)

(assert (=> setNonEmpty!39275 (= setRes!39275 (and tp!1605670 (inv!82883 setElem!39275) e!3571512))))

(declare-fun setRest!39275 () (Set Context!10476))

(assert (=> setNonEmpty!39275 (= setRest!39271 (set.union (set.insert setElem!39275 (as set.empty (Set Context!10476))) setRest!39275))))

(declare-fun b!5819369 () Bool)

(declare-fun tp!1605669 () Bool)

(assert (=> b!5819369 (= e!3571512 tp!1605669)))

(assert (= (and setNonEmpty!39271 condSetEmpty!39275) setIsEmpty!39275))

(assert (= (and setNonEmpty!39271 (not condSetEmpty!39275)) setNonEmpty!39275))

(assert (= setNonEmpty!39275 b!5819369))

(declare-fun m!6755142 () Bool)

(assert (=> setNonEmpty!39275 m!6755142))

(declare-fun b!5819372 () Bool)

(declare-fun e!3571513 () Bool)

(declare-fun tp!1605672 () Bool)

(assert (=> b!5819372 (= e!3571513 tp!1605672)))

(declare-fun b!5819373 () Bool)

(declare-fun tp!1605675 () Bool)

(declare-fun tp!1605674 () Bool)

(assert (=> b!5819373 (= e!3571513 (and tp!1605675 tp!1605674))))

(declare-fun b!5819370 () Bool)

(assert (=> b!5819370 (= e!3571513 tp_is_empty!40961)))

(assert (=> b!5818788 (= tp!1605544 e!3571513)))

(declare-fun b!5819371 () Bool)

(declare-fun tp!1605671 () Bool)

(declare-fun tp!1605673 () Bool)

(assert (=> b!5819371 (= e!3571513 (and tp!1605671 tp!1605673))))

(assert (= (and b!5818788 (is-ElementMatch!15854 (regOne!32221 (regOne!32221 r!7292)))) b!5819370))

(assert (= (and b!5818788 (is-Concat!24699 (regOne!32221 (regOne!32221 r!7292)))) b!5819371))

(assert (= (and b!5818788 (is-Star!15854 (regOne!32221 (regOne!32221 r!7292)))) b!5819372))

(assert (= (and b!5818788 (is-Union!15854 (regOne!32221 (regOne!32221 r!7292)))) b!5819373))

(declare-fun b!5819376 () Bool)

(declare-fun e!3571514 () Bool)

(declare-fun tp!1605677 () Bool)

(assert (=> b!5819376 (= e!3571514 tp!1605677)))

(declare-fun b!5819377 () Bool)

(declare-fun tp!1605680 () Bool)

(declare-fun tp!1605679 () Bool)

(assert (=> b!5819377 (= e!3571514 (and tp!1605680 tp!1605679))))

(declare-fun b!5819374 () Bool)

(assert (=> b!5819374 (= e!3571514 tp_is_empty!40961)))

(assert (=> b!5818788 (= tp!1605543 e!3571514)))

(declare-fun b!5819375 () Bool)

(declare-fun tp!1605676 () Bool)

(declare-fun tp!1605678 () Bool)

(assert (=> b!5819375 (= e!3571514 (and tp!1605676 tp!1605678))))

(assert (= (and b!5818788 (is-ElementMatch!15854 (regTwo!32221 (regOne!32221 r!7292)))) b!5819374))

(assert (= (and b!5818788 (is-Concat!24699 (regTwo!32221 (regOne!32221 r!7292)))) b!5819375))

(assert (= (and b!5818788 (is-Star!15854 (regTwo!32221 (regOne!32221 r!7292)))) b!5819376))

(assert (= (and b!5818788 (is-Union!15854 (regTwo!32221 (regOne!32221 r!7292)))) b!5819377))

(declare-fun b!5819378 () Bool)

(declare-fun e!3571515 () Bool)

(declare-fun tp!1605681 () Bool)

(declare-fun tp!1605682 () Bool)

(assert (=> b!5819378 (= e!3571515 (and tp!1605681 tp!1605682))))

(assert (=> b!5818775 (= tp!1605530 e!3571515)))

(assert (= (and b!5818775 (is-Cons!63737 (exprs!5738 setElem!39271))) b!5819378))

(declare-fun b!5819381 () Bool)

(declare-fun e!3571516 () Bool)

(declare-fun tp!1605684 () Bool)

(assert (=> b!5819381 (= e!3571516 tp!1605684)))

(declare-fun b!5819382 () Bool)

(declare-fun tp!1605687 () Bool)

(declare-fun tp!1605686 () Bool)

(assert (=> b!5819382 (= e!3571516 (and tp!1605687 tp!1605686))))

(declare-fun b!5819379 () Bool)

(assert (=> b!5819379 (= e!3571516 tp_is_empty!40961)))

(assert (=> b!5818796 (= tp!1605554 e!3571516)))

(declare-fun b!5819380 () Bool)

(declare-fun tp!1605683 () Bool)

(declare-fun tp!1605685 () Bool)

(assert (=> b!5819380 (= e!3571516 (and tp!1605683 tp!1605685))))

(assert (= (and b!5818796 (is-ElementMatch!15854 (regOne!32221 (reg!16183 r!7292)))) b!5819379))

(assert (= (and b!5818796 (is-Concat!24699 (regOne!32221 (reg!16183 r!7292)))) b!5819380))

(assert (= (and b!5818796 (is-Star!15854 (regOne!32221 (reg!16183 r!7292)))) b!5819381))

(assert (= (and b!5818796 (is-Union!15854 (regOne!32221 (reg!16183 r!7292)))) b!5819382))

(declare-fun b!5819385 () Bool)

(declare-fun e!3571517 () Bool)

(declare-fun tp!1605689 () Bool)

(assert (=> b!5819385 (= e!3571517 tp!1605689)))

(declare-fun b!5819386 () Bool)

(declare-fun tp!1605692 () Bool)

(declare-fun tp!1605691 () Bool)

(assert (=> b!5819386 (= e!3571517 (and tp!1605692 tp!1605691))))

(declare-fun b!5819383 () Bool)

(assert (=> b!5819383 (= e!3571517 tp_is_empty!40961)))

(assert (=> b!5818796 (= tp!1605553 e!3571517)))

(declare-fun b!5819384 () Bool)

(declare-fun tp!1605688 () Bool)

(declare-fun tp!1605690 () Bool)

(assert (=> b!5819384 (= e!3571517 (and tp!1605688 tp!1605690))))

(assert (= (and b!5818796 (is-ElementMatch!15854 (regTwo!32221 (reg!16183 r!7292)))) b!5819383))

(assert (= (and b!5818796 (is-Concat!24699 (regTwo!32221 (reg!16183 r!7292)))) b!5819384))

(assert (= (and b!5818796 (is-Star!15854 (regTwo!32221 (reg!16183 r!7292)))) b!5819385))

(assert (= (and b!5818796 (is-Union!15854 (regTwo!32221 (reg!16183 r!7292)))) b!5819386))

(declare-fun b!5819389 () Bool)

(declare-fun e!3571518 () Bool)

(declare-fun tp!1605694 () Bool)

(assert (=> b!5819389 (= e!3571518 tp!1605694)))

(declare-fun b!5819390 () Bool)

(declare-fun tp!1605697 () Bool)

(declare-fun tp!1605696 () Bool)

(assert (=> b!5819390 (= e!3571518 (and tp!1605697 tp!1605696))))

(declare-fun b!5819387 () Bool)

(assert (=> b!5819387 (= e!3571518 tp_is_empty!40961)))

(assert (=> b!5818787 (= tp!1605541 e!3571518)))

(declare-fun b!5819388 () Bool)

(declare-fun tp!1605693 () Bool)

(declare-fun tp!1605695 () Bool)

(assert (=> b!5819388 (= e!3571518 (and tp!1605693 tp!1605695))))

(assert (= (and b!5818787 (is-ElementMatch!15854 (reg!16183 (regOne!32221 r!7292)))) b!5819387))

(assert (= (and b!5818787 (is-Concat!24699 (reg!16183 (regOne!32221 r!7292)))) b!5819388))

(assert (= (and b!5818787 (is-Star!15854 (reg!16183 (regOne!32221 r!7292)))) b!5819389))

(assert (= (and b!5818787 (is-Union!15854 (reg!16183 (regOne!32221 r!7292)))) b!5819390))

(declare-fun b!5819393 () Bool)

(declare-fun e!3571519 () Bool)

(declare-fun tp!1605699 () Bool)

(assert (=> b!5819393 (= e!3571519 tp!1605699)))

(declare-fun b!5819394 () Bool)

(declare-fun tp!1605702 () Bool)

(declare-fun tp!1605701 () Bool)

(assert (=> b!5819394 (= e!3571519 (and tp!1605702 tp!1605701))))

(declare-fun b!5819391 () Bool)

(assert (=> b!5819391 (= e!3571519 tp_is_empty!40961)))

(assert (=> b!5818754 (= tp!1605507 e!3571519)))

(declare-fun b!5819392 () Bool)

(declare-fun tp!1605698 () Bool)

(declare-fun tp!1605700 () Bool)

(assert (=> b!5819392 (= e!3571519 (and tp!1605698 tp!1605700))))

(assert (= (and b!5818754 (is-ElementMatch!15854 (regOne!32220 (regOne!32220 r!7292)))) b!5819391))

(assert (= (and b!5818754 (is-Concat!24699 (regOne!32220 (regOne!32220 r!7292)))) b!5819392))

(assert (= (and b!5818754 (is-Star!15854 (regOne!32220 (regOne!32220 r!7292)))) b!5819393))

(assert (= (and b!5818754 (is-Union!15854 (regOne!32220 (regOne!32220 r!7292)))) b!5819394))

(declare-fun b!5819397 () Bool)

(declare-fun e!3571520 () Bool)

(declare-fun tp!1605704 () Bool)

(assert (=> b!5819397 (= e!3571520 tp!1605704)))

(declare-fun b!5819398 () Bool)

(declare-fun tp!1605707 () Bool)

(declare-fun tp!1605706 () Bool)

(assert (=> b!5819398 (= e!3571520 (and tp!1605707 tp!1605706))))

(declare-fun b!5819395 () Bool)

(assert (=> b!5819395 (= e!3571520 tp_is_empty!40961)))

(assert (=> b!5818754 (= tp!1605509 e!3571520)))

(declare-fun b!5819396 () Bool)

(declare-fun tp!1605703 () Bool)

(declare-fun tp!1605705 () Bool)

(assert (=> b!5819396 (= e!3571520 (and tp!1605703 tp!1605705))))

(assert (= (and b!5818754 (is-ElementMatch!15854 (regTwo!32220 (regOne!32220 r!7292)))) b!5819395))

(assert (= (and b!5818754 (is-Concat!24699 (regTwo!32220 (regOne!32220 r!7292)))) b!5819396))

(assert (= (and b!5818754 (is-Star!15854 (regTwo!32220 (regOne!32220 r!7292)))) b!5819397))

(assert (= (and b!5818754 (is-Union!15854 (regTwo!32220 (regOne!32220 r!7292)))) b!5819398))

(declare-fun b!5819399 () Bool)

(declare-fun e!3571521 () Bool)

(declare-fun tp!1605708 () Bool)

(declare-fun tp!1605709 () Bool)

(assert (=> b!5819399 (= e!3571521 (and tp!1605708 tp!1605709))))

(assert (=> b!5818783 (= tp!1605536 e!3571521)))

(assert (= (and b!5818783 (is-Cons!63737 (exprs!5738 (h!70187 (t!377218 zl!343))))) b!5819399))

(declare-fun b!5819402 () Bool)

(declare-fun e!3571522 () Bool)

(declare-fun tp!1605711 () Bool)

(assert (=> b!5819402 (= e!3571522 tp!1605711)))

(declare-fun b!5819403 () Bool)

(declare-fun tp!1605714 () Bool)

(declare-fun tp!1605713 () Bool)

(assert (=> b!5819403 (= e!3571522 (and tp!1605714 tp!1605713))))

(declare-fun b!5819400 () Bool)

(assert (=> b!5819400 (= e!3571522 tp_is_empty!40961)))

(assert (=> b!5818755 (= tp!1605508 e!3571522)))

(declare-fun b!5819401 () Bool)

(declare-fun tp!1605710 () Bool)

(declare-fun tp!1605712 () Bool)

(assert (=> b!5819401 (= e!3571522 (and tp!1605710 tp!1605712))))

(assert (= (and b!5818755 (is-ElementMatch!15854 (reg!16183 (regOne!32220 r!7292)))) b!5819400))

(assert (= (and b!5818755 (is-Concat!24699 (reg!16183 (regOne!32220 r!7292)))) b!5819401))

(assert (= (and b!5818755 (is-Star!15854 (reg!16183 (regOne!32220 r!7292)))) b!5819402))

(assert (= (and b!5818755 (is-Union!15854 (reg!16183 (regOne!32220 r!7292)))) b!5819403))

(declare-fun b!5819405 () Bool)

(declare-fun e!3571524 () Bool)

(declare-fun tp!1605715 () Bool)

(assert (=> b!5819405 (= e!3571524 tp!1605715)))

(declare-fun e!3571523 () Bool)

(declare-fun b!5819404 () Bool)

(declare-fun tp!1605716 () Bool)

(assert (=> b!5819404 (= e!3571523 (and (inv!82883 (h!70187 (t!377218 (t!377218 zl!343)))) e!3571524 tp!1605716))))

(assert (=> b!5818782 (= tp!1605537 e!3571523)))

(assert (= b!5819404 b!5819405))

(assert (= (and b!5818782 (is-Cons!63739 (t!377218 (t!377218 zl!343)))) b!5819404))

(declare-fun m!6755144 () Bool)

(assert (=> b!5819404 m!6755144))

(declare-fun b!5819408 () Bool)

(declare-fun e!3571525 () Bool)

(declare-fun tp!1605718 () Bool)

(assert (=> b!5819408 (= e!3571525 tp!1605718)))

(declare-fun b!5819409 () Bool)

(declare-fun tp!1605721 () Bool)

(declare-fun tp!1605720 () Bool)

(assert (=> b!5819409 (= e!3571525 (and tp!1605721 tp!1605720))))

(declare-fun b!5819406 () Bool)

(assert (=> b!5819406 (= e!3571525 tp_is_empty!40961)))

(assert (=> b!5818790 (= tp!1605545 e!3571525)))

(declare-fun b!5819407 () Bool)

(declare-fun tp!1605717 () Bool)

(declare-fun tp!1605719 () Bool)

(assert (=> b!5819407 (= e!3571525 (and tp!1605717 tp!1605719))))

(assert (= (and b!5818790 (is-ElementMatch!15854 (regOne!32220 (regTwo!32221 r!7292)))) b!5819406))

(assert (= (and b!5818790 (is-Concat!24699 (regOne!32220 (regTwo!32221 r!7292)))) b!5819407))

(assert (= (and b!5818790 (is-Star!15854 (regOne!32220 (regTwo!32221 r!7292)))) b!5819408))

(assert (= (and b!5818790 (is-Union!15854 (regOne!32220 (regTwo!32221 r!7292)))) b!5819409))

(declare-fun b!5819412 () Bool)

(declare-fun e!3571526 () Bool)

(declare-fun tp!1605723 () Bool)

(assert (=> b!5819412 (= e!3571526 tp!1605723)))

(declare-fun b!5819413 () Bool)

(declare-fun tp!1605726 () Bool)

(declare-fun tp!1605725 () Bool)

(assert (=> b!5819413 (= e!3571526 (and tp!1605726 tp!1605725))))

(declare-fun b!5819410 () Bool)

(assert (=> b!5819410 (= e!3571526 tp_is_empty!40961)))

(assert (=> b!5818790 (= tp!1605547 e!3571526)))

(declare-fun b!5819411 () Bool)

(declare-fun tp!1605722 () Bool)

(declare-fun tp!1605724 () Bool)

(assert (=> b!5819411 (= e!3571526 (and tp!1605722 tp!1605724))))

(assert (= (and b!5818790 (is-ElementMatch!15854 (regTwo!32220 (regTwo!32221 r!7292)))) b!5819410))

(assert (= (and b!5818790 (is-Concat!24699 (regTwo!32220 (regTwo!32221 r!7292)))) b!5819411))

(assert (= (and b!5818790 (is-Star!15854 (regTwo!32220 (regTwo!32221 r!7292)))) b!5819412))

(assert (= (and b!5818790 (is-Union!15854 (regTwo!32220 (regTwo!32221 r!7292)))) b!5819413))

(declare-fun b!5819416 () Bool)

(declare-fun e!3571527 () Bool)

(declare-fun tp!1605728 () Bool)

(assert (=> b!5819416 (= e!3571527 tp!1605728)))

(declare-fun b!5819417 () Bool)

(declare-fun tp!1605731 () Bool)

(declare-fun tp!1605730 () Bool)

(assert (=> b!5819417 (= e!3571527 (and tp!1605731 tp!1605730))))

(declare-fun b!5819414 () Bool)

(assert (=> b!5819414 (= e!3571527 tp_is_empty!40961)))

(assert (=> b!5818756 (= tp!1605511 e!3571527)))

(declare-fun b!5819415 () Bool)

(declare-fun tp!1605727 () Bool)

(declare-fun tp!1605729 () Bool)

(assert (=> b!5819415 (= e!3571527 (and tp!1605727 tp!1605729))))

(assert (= (and b!5818756 (is-ElementMatch!15854 (regOne!32221 (regOne!32220 r!7292)))) b!5819414))

(assert (= (and b!5818756 (is-Concat!24699 (regOne!32221 (regOne!32220 r!7292)))) b!5819415))

(assert (= (and b!5818756 (is-Star!15854 (regOne!32221 (regOne!32220 r!7292)))) b!5819416))

(assert (= (and b!5818756 (is-Union!15854 (regOne!32221 (regOne!32220 r!7292)))) b!5819417))

(declare-fun b!5819420 () Bool)

(declare-fun e!3571528 () Bool)

(declare-fun tp!1605733 () Bool)

(assert (=> b!5819420 (= e!3571528 tp!1605733)))

(declare-fun b!5819421 () Bool)

(declare-fun tp!1605736 () Bool)

(declare-fun tp!1605735 () Bool)

(assert (=> b!5819421 (= e!3571528 (and tp!1605736 tp!1605735))))

(declare-fun b!5819418 () Bool)

(assert (=> b!5819418 (= e!3571528 tp_is_empty!40961)))

(assert (=> b!5818756 (= tp!1605510 e!3571528)))

(declare-fun b!5819419 () Bool)

(declare-fun tp!1605732 () Bool)

(declare-fun tp!1605734 () Bool)

(assert (=> b!5819419 (= e!3571528 (and tp!1605732 tp!1605734))))

(assert (= (and b!5818756 (is-ElementMatch!15854 (regTwo!32221 (regOne!32220 r!7292)))) b!5819418))

(assert (= (and b!5818756 (is-Concat!24699 (regTwo!32221 (regOne!32220 r!7292)))) b!5819419))

(assert (= (and b!5818756 (is-Star!15854 (regTwo!32221 (regOne!32220 r!7292)))) b!5819420))

(assert (= (and b!5818756 (is-Union!15854 (regTwo!32221 (regOne!32220 r!7292)))) b!5819421))

(declare-fun b!5819422 () Bool)

(declare-fun e!3571529 () Bool)

(declare-fun tp!1605737 () Bool)

(assert (=> b!5819422 (= e!3571529 (and tp_is_empty!40961 tp!1605737))))

(assert (=> b!5818770 (= tp!1605525 e!3571529)))

(assert (= (and b!5818770 (is-Cons!63738 (t!377217 (t!377217 s!2326)))) b!5819422))

(declare-fun b!5819425 () Bool)

(declare-fun e!3571530 () Bool)

(declare-fun tp!1605739 () Bool)

(assert (=> b!5819425 (= e!3571530 tp!1605739)))

(declare-fun b!5819426 () Bool)

(declare-fun tp!1605742 () Bool)

(declare-fun tp!1605741 () Bool)

(assert (=> b!5819426 (= e!3571530 (and tp!1605742 tp!1605741))))

(declare-fun b!5819423 () Bool)

(assert (=> b!5819423 (= e!3571530 tp_is_empty!40961)))

(assert (=> b!5818784 (= tp!1605538 e!3571530)))

(declare-fun b!5819424 () Bool)

(declare-fun tp!1605738 () Bool)

(declare-fun tp!1605740 () Bool)

(assert (=> b!5819424 (= e!3571530 (and tp!1605738 tp!1605740))))

(assert (= (and b!5818784 (is-ElementMatch!15854 (h!70185 (exprs!5738 (h!70187 zl!343))))) b!5819423))

(assert (= (and b!5818784 (is-Concat!24699 (h!70185 (exprs!5738 (h!70187 zl!343))))) b!5819424))

(assert (= (and b!5818784 (is-Star!15854 (h!70185 (exprs!5738 (h!70187 zl!343))))) b!5819425))

(assert (= (and b!5818784 (is-Union!15854 (h!70185 (exprs!5738 (h!70187 zl!343))))) b!5819426))

(declare-fun b!5819427 () Bool)

(declare-fun e!3571531 () Bool)

(declare-fun tp!1605743 () Bool)

(declare-fun tp!1605744 () Bool)

(assert (=> b!5819427 (= e!3571531 (and tp!1605743 tp!1605744))))

(assert (=> b!5818784 (= tp!1605539 e!3571531)))

(assert (= (and b!5818784 (is-Cons!63737 (t!377216 (exprs!5738 (h!70187 zl!343))))) b!5819427))

(declare-fun b!5819430 () Bool)

(declare-fun e!3571532 () Bool)

(declare-fun tp!1605746 () Bool)

(assert (=> b!5819430 (= e!3571532 tp!1605746)))

(declare-fun b!5819431 () Bool)

(declare-fun tp!1605749 () Bool)

(declare-fun tp!1605748 () Bool)

(assert (=> b!5819431 (= e!3571532 (and tp!1605749 tp!1605748))))

(declare-fun b!5819428 () Bool)

(assert (=> b!5819428 (= e!3571532 tp_is_empty!40961)))

(assert (=> b!5818791 (= tp!1605546 e!3571532)))

(declare-fun b!5819429 () Bool)

(declare-fun tp!1605745 () Bool)

(declare-fun tp!1605747 () Bool)

(assert (=> b!5819429 (= e!3571532 (and tp!1605745 tp!1605747))))

(assert (= (and b!5818791 (is-ElementMatch!15854 (reg!16183 (regTwo!32221 r!7292)))) b!5819428))

(assert (= (and b!5818791 (is-Concat!24699 (reg!16183 (regTwo!32221 r!7292)))) b!5819429))

(assert (= (and b!5818791 (is-Star!15854 (reg!16183 (regTwo!32221 r!7292)))) b!5819430))

(assert (= (and b!5818791 (is-Union!15854 (reg!16183 (regTwo!32221 r!7292)))) b!5819431))

(declare-fun b!5819434 () Bool)

(declare-fun e!3571533 () Bool)

(declare-fun tp!1605751 () Bool)

(assert (=> b!5819434 (= e!3571533 tp!1605751)))

(declare-fun b!5819435 () Bool)

(declare-fun tp!1605754 () Bool)

(declare-fun tp!1605753 () Bool)

(assert (=> b!5819435 (= e!3571533 (and tp!1605754 tp!1605753))))

(declare-fun b!5819432 () Bool)

(assert (=> b!5819432 (= e!3571533 tp_is_empty!40961)))

(assert (=> b!5818792 (= tp!1605549 e!3571533)))

(declare-fun b!5819433 () Bool)

(declare-fun tp!1605750 () Bool)

(declare-fun tp!1605752 () Bool)

(assert (=> b!5819433 (= e!3571533 (and tp!1605750 tp!1605752))))

(assert (= (and b!5818792 (is-ElementMatch!15854 (regOne!32221 (regTwo!32221 r!7292)))) b!5819432))

(assert (= (and b!5818792 (is-Concat!24699 (regOne!32221 (regTwo!32221 r!7292)))) b!5819433))

(assert (= (and b!5818792 (is-Star!15854 (regOne!32221 (regTwo!32221 r!7292)))) b!5819434))

(assert (= (and b!5818792 (is-Union!15854 (regOne!32221 (regTwo!32221 r!7292)))) b!5819435))

(declare-fun b!5819438 () Bool)

(declare-fun e!3571534 () Bool)

(declare-fun tp!1605756 () Bool)

(assert (=> b!5819438 (= e!3571534 tp!1605756)))

(declare-fun b!5819439 () Bool)

(declare-fun tp!1605759 () Bool)

(declare-fun tp!1605758 () Bool)

(assert (=> b!5819439 (= e!3571534 (and tp!1605759 tp!1605758))))

(declare-fun b!5819436 () Bool)

(assert (=> b!5819436 (= e!3571534 tp_is_empty!40961)))

(assert (=> b!5818792 (= tp!1605548 e!3571534)))

(declare-fun b!5819437 () Bool)

(declare-fun tp!1605755 () Bool)

(declare-fun tp!1605757 () Bool)

(assert (=> b!5819437 (= e!3571534 (and tp!1605755 tp!1605757))))

(assert (= (and b!5818792 (is-ElementMatch!15854 (regTwo!32221 (regTwo!32221 r!7292)))) b!5819436))

(assert (= (and b!5818792 (is-Concat!24699 (regTwo!32221 (regTwo!32221 r!7292)))) b!5819437))

(assert (= (and b!5818792 (is-Star!15854 (regTwo!32221 (regTwo!32221 r!7292)))) b!5819438))

(assert (= (and b!5818792 (is-Union!15854 (regTwo!32221 (regTwo!32221 r!7292)))) b!5819439))

(declare-fun b!5819442 () Bool)

(declare-fun e!3571535 () Bool)

(declare-fun tp!1605761 () Bool)

(assert (=> b!5819442 (= e!3571535 tp!1605761)))

(declare-fun b!5819443 () Bool)

(declare-fun tp!1605764 () Bool)

(declare-fun tp!1605763 () Bool)

(assert (=> b!5819443 (= e!3571535 (and tp!1605764 tp!1605763))))

(declare-fun b!5819440 () Bool)

(assert (=> b!5819440 (= e!3571535 tp_is_empty!40961)))

(assert (=> b!5818765 (= tp!1605521 e!3571535)))

(declare-fun b!5819441 () Bool)

(declare-fun tp!1605760 () Bool)

(declare-fun tp!1605762 () Bool)

(assert (=> b!5819441 (= e!3571535 (and tp!1605760 tp!1605762))))

(assert (= (and b!5818765 (is-ElementMatch!15854 (h!70185 (exprs!5738 setElem!39265)))) b!5819440))

(assert (= (and b!5818765 (is-Concat!24699 (h!70185 (exprs!5738 setElem!39265)))) b!5819441))

(assert (= (and b!5818765 (is-Star!15854 (h!70185 (exprs!5738 setElem!39265)))) b!5819442))

(assert (= (and b!5818765 (is-Union!15854 (h!70185 (exprs!5738 setElem!39265)))) b!5819443))

(declare-fun b!5819444 () Bool)

(declare-fun e!3571536 () Bool)

(declare-fun tp!1605765 () Bool)

(declare-fun tp!1605766 () Bool)

(assert (=> b!5819444 (= e!3571536 (and tp!1605765 tp!1605766))))

(assert (=> b!5818765 (= tp!1605522 e!3571536)))

(assert (= (and b!5818765 (is-Cons!63737 (t!377216 (exprs!5738 setElem!39265)))) b!5819444))

(declare-fun b_lambda!219337 () Bool)

(assert (= b_lambda!219331 (or d!1831347 b_lambda!219337)))

(declare-fun bs!1373096 () Bool)

(declare-fun d!1831541 () Bool)

(assert (= bs!1373096 (and d!1831541 d!1831347)))

(assert (=> bs!1373096 (= (dynLambda!24951 lambda!318287 (h!70185 lt!2301764)) (validRegex!7590 (h!70185 lt!2301764)))))

(assert (=> bs!1373096 m!6754744))

(assert (=> b!5819178 d!1831541))

(declare-fun b_lambda!219339 () Bool)

(assert (= b_lambda!219333 (or d!1831369 b_lambda!219339)))

(declare-fun bs!1373097 () Bool)

(declare-fun d!1831543 () Bool)

(assert (= bs!1373097 (and d!1831543 d!1831369)))

(assert (=> bs!1373097 (= (dynLambda!24951 lambda!318301 (h!70185 (exprs!5738 (h!70187 zl!343)))) (validRegex!7590 (h!70185 (exprs!5738 (h!70187 zl!343)))))))

(declare-fun m!6755146 () Bool)

(assert (=> bs!1373097 m!6755146))

(assert (=> b!5819237 d!1831543))

(declare-fun b_lambda!219341 () Bool)

(assert (= b_lambda!219319 (or d!1831361 b_lambda!219341)))

(declare-fun bs!1373098 () Bool)

(declare-fun d!1831545 () Bool)

(assert (= bs!1373098 (and d!1831545 d!1831361)))

(assert (=> bs!1373098 (= (dynLambda!24949 lambda!318297 (h!70187 zl!343)) (not (dynLambda!24949 lambda!318256 (h!70187 zl!343))))))

(declare-fun b_lambda!219357 () Bool)

(assert (=> (not b_lambda!219357) (not bs!1373098)))

(assert (=> bs!1373098 m!6754586))

(assert (=> b!5819064 d!1831545))

(declare-fun b_lambda!219343 () Bool)

(assert (= b_lambda!219327 (or b!5818350 b_lambda!219343)))

(declare-fun bs!1373099 () Bool)

(declare-fun d!1831547 () Bool)

(assert (= bs!1373099 (and d!1831547 b!5818350)))

(assert (=> bs!1373099 (= (dynLambda!24949 lambda!318256 (h!70187 (t!377218 zl!343))) (= (generalisedConcat!1459 (exprs!5738 (h!70187 (t!377218 zl!343)))) lt!2301761))))

(assert (=> bs!1373099 m!6754974))

(assert (=> b!5819173 d!1831547))

(declare-fun b_lambda!219345 () Bool)

(assert (= b_lambda!219323 (or b!5818338 b_lambda!219345)))

(declare-fun bs!1373100 () Bool)

(declare-fun d!1831549 () Bool)

(assert (= bs!1373100 (and d!1831549 b!5818338)))

(declare-fun res!2454030 () Bool)

(declare-fun e!3571537 () Bool)

(assert (=> bs!1373100 (=> (not res!2454030) (not e!3571537))))

(assert (=> bs!1373100 (= res!2454030 (validRegex!7590 lt!2301908))))

(assert (=> bs!1373100 (= (dynLambda!24951 lambda!318255 lt!2301908) e!3571537)))

(declare-fun b!5819445 () Bool)

(assert (=> b!5819445 (= e!3571537 (matchR!8039 lt!2301908 s!2326))))

(assert (= (and bs!1373100 res!2454030) b!5819445))

(declare-fun m!6755148 () Bool)

(assert (=> bs!1373100 m!6755148))

(declare-fun m!6755150 () Bool)

(assert (=> b!5819445 m!6755150))

(assert (=> d!1831471 d!1831549))

(declare-fun b_lambda!219347 () Bool)

(assert (= b_lambda!219335 (or d!1831359 b_lambda!219347)))

(declare-fun bs!1373101 () Bool)

(declare-fun d!1831551 () Bool)

(assert (= bs!1373101 (and d!1831551 d!1831359)))

(assert (=> bs!1373101 (= (dynLambda!24951 lambda!318294 (h!70185 (exprs!5738 setElem!39265))) (validRegex!7590 (h!70185 (exprs!5738 setElem!39265))))))

(declare-fun m!6755152 () Bool)

(assert (=> bs!1373101 m!6755152))

(assert (=> b!5819289 d!1831551))

(declare-fun b_lambda!219349 () Bool)

(assert (= b_lambda!219329 (or b!5818350 b_lambda!219349)))

(declare-fun bs!1373102 () Bool)

(declare-fun d!1831553 () Bool)

(assert (= bs!1373102 (and d!1831553 b!5818350)))

(assert (=> bs!1373102 (= (dynLambda!24949 lambda!318256 lt!2301911) (= (generalisedConcat!1459 (exprs!5738 lt!2301911)) lt!2301761))))

(declare-fun m!6755154 () Bool)

(assert (=> bs!1373102 m!6755154))

(assert (=> d!1831477 d!1831553))

(declare-fun b_lambda!219351 () Bool)

(assert (= b_lambda!219317 (or d!1831351 b_lambda!219351)))

(declare-fun bs!1373103 () Bool)

(declare-fun d!1831555 () Bool)

(assert (= bs!1373103 (and d!1831555 d!1831351)))

(assert (=> bs!1373103 (= (dynLambda!24951 lambda!318291 (h!70185 lt!2301835)) (validRegex!7590 (h!70185 lt!2301835)))))

(declare-fun m!6755156 () Bool)

(assert (=> bs!1373103 m!6755156))

(assert (=> b!5818971 d!1831555))

(declare-fun b_lambda!219353 () Bool)

(assert (= b_lambda!219325 (or b!5818338 b_lambda!219353)))

(declare-fun bs!1373104 () Bool)

(declare-fun d!1831557 () Bool)

(assert (= bs!1373104 (and d!1831557 b!5818338)))

(declare-fun res!2454031 () Bool)

(declare-fun e!3571538 () Bool)

(assert (=> bs!1373104 (=> (not res!2454031) (not e!3571538))))

(assert (=> bs!1373104 (= res!2454031 (validRegex!7590 (h!70185 (t!377216 lt!2301764))))))

(assert (=> bs!1373104 (= (dynLambda!24951 lambda!318255 (h!70185 (t!377216 lt!2301764))) e!3571538)))

(declare-fun b!5819446 () Bool)

(assert (=> b!5819446 (= e!3571538 (matchR!8039 (h!70185 (t!377216 lt!2301764)) s!2326))))

(assert (= (and bs!1373104 res!2454031) b!5819446))

(declare-fun m!6755158 () Bool)

(assert (=> bs!1373104 m!6755158))

(declare-fun m!6755160 () Bool)

(assert (=> b!5819446 m!6755160))

(assert (=> b!5819166 d!1831557))

(declare-fun b_lambda!219355 () Bool)

(assert (= b_lambda!219321 (or d!1831345 b_lambda!219355)))

(declare-fun bs!1373105 () Bool)

(declare-fun d!1831559 () Bool)

(assert (= bs!1373105 (and d!1831559 d!1831345)))

(assert (=> bs!1373105 (= (dynLambda!24951 lambda!318282 (h!70185 lt!2301764)) (not (dynLambda!24951 lambda!318255 (h!70185 lt!2301764))))))

(declare-fun b_lambda!219359 () Bool)

(assert (=> (not b_lambda!219359) (not bs!1373105)))

(assert (=> bs!1373105 m!6754696))

(assert (=> b!5819119 d!1831559))

(push 1)

(assert (not b!5819271))

(assert (not b!5819380))

(assert (not b!5819425))

(assert (not d!1831467))

(assert (not b!5819419))

(assert (not b!5819182))

(assert (not b!5819124))

(assert (not b!5818995))

(assert (not bm!454465))

(assert (not b!5819401))

(assert (not b!5819375))

(assert (not b_lambda!219343))

(assert (not bm!454475))

(assert (not b!5819199))

(assert (not b!5819396))

(assert (not d!1831513))

(assert (not bm!454454))

(assert (not b!5819290))

(assert (not d!1831533))

(assert (not b!5819427))

(assert (not b!5819343))

(assert (not b!5819059))

(assert (not b!5819172))

(assert (not b!5819388))

(assert (not b!5818990))

(assert (not b!5819304))

(assert (not b!5819305))

(assert (not bm!454455))

(assert (not b!5819404))

(assert (not b!5819230))

(assert (not b!5819098))

(assert (not d!1831441))

(assert (not b!5819106))

(assert (not b!5819107))

(assert (not b_lambda!219355))

(assert (not b!5819356))

(assert (not b!5819153))

(assert (not bm!454424))

(assert (not b!5819306))

(assert (not b!5819422))

(assert (not d!1831475))

(assert (not b!5819355))

(assert (not b!5819111))

(assert (not b!5819278))

(assert (not b_lambda!219337))

(assert (not b!5819102))

(assert (not b!5819118))

(assert (not bs!1373099))

(assert (not b!5819313))

(assert (not b!5819409))

(assert (not b!5819174))

(assert (not bm!454474))

(assert (not b_lambda!219357))

(assert (not b!5819371))

(assert (not b!5819186))

(assert (not b!5819364))

(assert (not b!5819179))

(assert (not b!5819104))

(assert (not bm!454457))

(assert (not d!1831481))

(assert (not b!5819327))

(assert (not b!5819193))

(assert (not b!5819330))

(assert (not b!5819384))

(assert (not b!5819413))

(assert (not bs!1373100))

(assert (not b!5819368))

(assert (not d!1831531))

(assert (not b!5819412))

(assert (not b!5819095))

(assert (not bs!1373097))

(assert (not b!5819332))

(assert (not bm!454442))

(assert (not b!5819352))

(assert (not d!1831497))

(assert (not b!5819339))

(assert (not b!5819417))

(assert (not b!5819378))

(assert (not b!5819268))

(assert (not d!1831473))

(assert (not b!5819408))

(assert (not d!1831479))

(assert (not b!5819438))

(assert (not b!5819272))

(assert tp_is_empty!40961)

(assert (not b!5819156))

(assert (not bm!454425))

(assert (not b!5819219))

(assert (not bm!454446))

(assert (not d!1831461))

(assert (not b!5819050))

(assert (not b_lambda!219345))

(assert (not b!5819108))

(assert (not d!1831493))

(assert (not b!5819167))

(assert (not b!5819360))

(assert (not b!5819157))

(assert (not b!5819319))

(assert (not b!5819369))

(assert (not bm!454468))

(assert (not b!5818998))

(assert (not b!5819351))

(assert (not b_lambda!219341))

(assert (not b!5819032))

(assert (not b!5819097))

(assert (not b!5819296))

(assert (not b!5819195))

(assert (not b!5819397))

(assert (not b!5819441))

(assert (not b!5819405))

(assert (not b!5819295))

(assert (not bm!454441))

(assert (not b!5819175))

(assert (not b!5819120))

(assert (not b!5819312))

(assert (not b!5818994))

(assert (not b!5819331))

(assert (not bs!1373101))

(assert (not d!1831451))

(assert (not b!5819154))

(assert (not b!5819381))

(assert (not b_lambda!219359))

(assert (not b!5819386))

(assert (not b!5818972))

(assert (not b!5819373))

(assert (not b!5819346))

(assert (not b!5819433))

(assert (not b!5819394))

(assert (not b!5819336))

(assert (not b!5819372))

(assert (not d!1831445))

(assert (not b!5819285))

(assert (not b!5819037))

(assert (not b!5819434))

(assert (not b!5819358))

(assert (not b!5819420))

(assert (not b!5819159))

(assert (not d!1831487))

(assert (not bm!454452))

(assert (not b!5819399))

(assert (not d!1831495))

(assert (not b!5819049))

(assert (not b!5819411))

(assert (not b!5819099))

(assert (not bm!454439))

(assert (not b_lambda!219299))

(assert (not b!5819236))

(assert (not bs!1373102))

(assert (not b!5819442))

(assert (not b!5818999))

(assert (not b!5819347))

(assert (not b!5819263))

(assert (not b!5818987))

(assert (not b!5819207))

(assert (not b_lambda!219353))

(assert (not d!1831529))

(assert (not b_lambda!219297))

(assert (not b!5819366))

(assert (not bm!454472))

(assert (not b!5819266))

(assert (not bm!454444))

(assert (not b!5819238))

(assert (not bm!454440))

(assert (not b_lambda!219351))

(assert (not b!5818988))

(assert (not b!5819315))

(assert (not b!5819393))

(assert (not bm!454458))

(assert (not b!5819267))

(assert (not b!5819367))

(assert (not bm!454449))

(assert (not d!1831471))

(assert (not b!5819362))

(assert (not bs!1373103))

(assert (not b!5819303))

(assert (not bm!454437))

(assert (not d!1831489))

(assert (not b!5819444))

(assert (not b!5819342))

(assert (not b!5819415))

(assert (not b!5818993))

(assert (not b!5819169))

(assert (not b!5819344))

(assert (not b!5819338))

(assert (not d!1831521))

(assert (not d!1831491))

(assert (not b!5819151))

(assert (not b!5819069))

(assert (not b!5819390))

(assert (not b!5819435))

(assert (not b!5819340))

(assert (not b!5819359))

(assert (not b!5819443))

(assert (not b!5819385))

(assert (not b_lambda!219339))

(assert (not b!5819183))

(assert (not setNonEmpty!39275))

(assert (not b!5819307))

(assert (not b!5819041))

(assert (not d!1831459))

(assert (not b!5819309))

(assert (not bm!454448))

(assert (not b!5819187))

(assert (not d!1831443))

(assert (not b!5819407))

(assert (not b!5819416))

(assert (not bm!454423))

(assert (not b!5819163))

(assert (not d!1831469))

(assert (not b!5819208))

(assert (not b!5819429))

(assert (not d!1831433))

(assert (not b!5819392))

(assert (not b!5819350))

(assert (not b!5819112))

(assert (not b!5819181))

(assert (not bm!454471))

(assert (not b!5819398))

(assert (not b!5819426))

(assert (not b!5819363))

(assert (not b_lambda!219347))

(assert (not b!5819424))

(assert (not b!5819160))

(assert (not b!5819377))

(assert (not d!1831519))

(assert (not d!1831477))

(assert (not b!5819376))

(assert (not b!5819310))

(assert (not b!5819334))

(assert (not d!1831455))

(assert (not d!1831431))

(assert (not d!1831523))

(assert (not b!5819431))

(assert (not d!1831501))

(assert (not bs!1373104))

(assert (not b!5819150))

(assert (not bm!454436))

(assert (not b!5819446))

(assert (not b!5819439))

(assert (not bm!454450))

(assert (not b!5819165))

(assert (not b_lambda!219301))

(assert (not bm!454445))

(assert (not b!5819430))

(assert (not b!5819005))

(assert (not b!5819065))

(assert (not b_lambda!219349))

(assert (not bs!1373096))

(assert (not b!5819445))

(assert (not b!5819382))

(assert (not b!5819335))

(assert (not b!5819354))

(assert (not b!5819325))

(assert (not b!5819348))

(assert (not b!5819101))

(assert (not b!5819389))

(assert (not b!5819437))

(assert (not b!5819403))

(assert (not b_lambda!219303))

(assert (not bm!454453))

(assert (not bm!454466))

(assert (not b!5819402))

(assert (not b!5818976))

(assert (not b!5819421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

