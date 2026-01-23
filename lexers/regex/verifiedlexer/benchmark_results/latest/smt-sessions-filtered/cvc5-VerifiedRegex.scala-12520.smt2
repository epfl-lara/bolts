; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695750 () Bool)

(assert start!695750)

(declare-fun setIsEmpty!52462 () Bool)

(declare-fun setRes!52462 () Bool)

(assert (=> setIsEmpty!52462 setRes!52462))

(declare-fun b!7138870 () Bool)

(declare-fun e!4290317 () Bool)

(declare-fun tp!1968540 () Bool)

(assert (=> b!7138870 (= e!4290317 tp!1968540)))

(declare-datatypes ((C!36570 0))(
  ( (C!36571 (val!28233 Int)) )
))
(declare-datatypes ((Regex!18148 0))(
  ( (ElementMatch!18148 (c!1331295 C!36570)) (Concat!26993 (regOne!36808 Regex!18148) (regTwo!36808 Regex!18148)) (EmptyExpr!18148) (Star!18148 (reg!18477 Regex!18148)) (EmptyLang!18148) (Union!18148 (regOne!36809 Regex!18148) (regTwo!36809 Regex!18148)) )
))
(declare-datatypes ((List!69374 0))(
  ( (Nil!69250) (Cons!69250 (h!75698 Regex!18148) (t!383391 List!69374)) )
))
(declare-datatypes ((Context!14284 0))(
  ( (Context!14285 (exprs!7642 List!69374)) )
))
(declare-fun setElem!52462 () Context!14284)

(declare-fun setNonEmpty!52462 () Bool)

(declare-fun tp!1968538 () Bool)

(declare-fun inv!88435 (Context!14284) Bool)

(assert (=> setNonEmpty!52462 (= setRes!52462 (and tp!1968538 (inv!88435 setElem!52462) e!4290317))))

(declare-fun z!3189 () (Set Context!14284))

(declare-fun setRest!52462 () (Set Context!14284))

(assert (=> setNonEmpty!52462 (= z!3189 (set.union (set.insert setElem!52462 (as set.empty (Set Context!14284))) setRest!52462))))

(declare-fun b!7138871 () Bool)

(declare-fun e!4290315 () Bool)

(declare-fun tp!1968542 () Bool)

(declare-fun tp!1968537 () Bool)

(assert (=> b!7138871 (= e!4290315 (and tp!1968542 tp!1968537))))

(declare-fun res!2912924 () Bool)

(declare-fun e!4290316 () Bool)

(assert (=> start!695750 (=> (not res!2912924) (not e!4290316))))

(declare-fun r!11483 () Regex!18148)

(declare-fun validRegex!9315 (Regex!18148) Bool)

(assert (=> start!695750 (= res!2912924 (validRegex!9315 r!11483))))

(assert (=> start!695750 e!4290316))

(assert (=> start!695750 e!4290315))

(declare-fun condSetEmpty!52462 () Bool)

(assert (=> start!695750 (= condSetEmpty!52462 (= z!3189 (as set.empty (Set Context!14284))))))

(assert (=> start!695750 setRes!52462))

(declare-fun b!7138872 () Bool)

(declare-fun e!4290318 () Bool)

(declare-datatypes ((List!69375 0))(
  ( (Nil!69251) (Cons!69251 (h!75699 Context!14284) (t!383392 List!69375)) )
))
(declare-fun lt!2566703 () List!69375)

(declare-fun generalisedUnion!2653 (List!69374) Regex!18148)

(declare-fun unfocusZipperList!2189 (List!69375) List!69374)

(assert (=> b!7138872 (= e!4290318 (not (= r!11483 (generalisedUnion!2653 (unfocusZipperList!2189 lt!2566703)))))))

(declare-fun b!7138873 () Bool)

(declare-fun tp!1968541 () Bool)

(assert (=> b!7138873 (= e!4290315 tp!1968541)))

(declare-fun b!7138874 () Bool)

(declare-fun tp!1968539 () Bool)

(declare-fun tp!1968536 () Bool)

(assert (=> b!7138874 (= e!4290315 (and tp!1968539 tp!1968536))))

(declare-fun b!7138875 () Bool)

(assert (=> b!7138875 (= e!4290316 e!4290318)))

(declare-fun res!2912925 () Bool)

(assert (=> b!7138875 (=> (not res!2912925) (not e!4290318))))

(declare-fun unfocusZipper!2496 (List!69375) Regex!18148)

(assert (=> b!7138875 (= res!2912925 (= r!11483 (unfocusZipper!2496 lt!2566703)))))

(declare-fun toList!11179 ((Set Context!14284)) List!69375)

(assert (=> b!7138875 (= lt!2566703 (toList!11179 z!3189))))

(declare-fun b!7138876 () Bool)

(declare-fun tp_is_empty!45933 () Bool)

(assert (=> b!7138876 (= e!4290315 tp_is_empty!45933)))

(assert (= (and start!695750 res!2912924) b!7138875))

(assert (= (and b!7138875 res!2912925) b!7138872))

(assert (= (and start!695750 (is-ElementMatch!18148 r!11483)) b!7138876))

(assert (= (and start!695750 (is-Concat!26993 r!11483)) b!7138874))

(assert (= (and start!695750 (is-Star!18148 r!11483)) b!7138873))

(assert (= (and start!695750 (is-Union!18148 r!11483)) b!7138871))

(assert (= (and start!695750 condSetEmpty!52462) setIsEmpty!52462))

(assert (= (and start!695750 (not condSetEmpty!52462)) setNonEmpty!52462))

(assert (= setNonEmpty!52462 b!7138870))

(declare-fun m!7854362 () Bool)

(assert (=> setNonEmpty!52462 m!7854362))

(declare-fun m!7854364 () Bool)

(assert (=> start!695750 m!7854364))

(declare-fun m!7854366 () Bool)

(assert (=> b!7138872 m!7854366))

(assert (=> b!7138872 m!7854366))

(declare-fun m!7854368 () Bool)

(assert (=> b!7138872 m!7854368))

(declare-fun m!7854370 () Bool)

(assert (=> b!7138875 m!7854370))

(declare-fun m!7854372 () Bool)

(assert (=> b!7138875 m!7854372))

(push 1)

(assert (not start!695750))

(assert (not b!7138874))

(assert (not b!7138873))

(assert (not b!7138871))

(assert (not b!7138875))

(assert (not setNonEmpty!52462))

(assert (not b!7138870))

(assert (not b!7138872))

(assert tp_is_empty!45933)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7138916 () Bool)

(declare-fun e!4290346 () Bool)

(declare-fun e!4290350 () Bool)

(assert (=> b!7138916 (= e!4290346 e!4290350)))

(declare-fun c!1331301 () Bool)

(assert (=> b!7138916 (= c!1331301 (is-Star!18148 r!11483))))

(declare-fun b!7138917 () Bool)

(declare-fun e!4290351 () Bool)

(declare-fun call!651091 () Bool)

(assert (=> b!7138917 (= e!4290351 call!651091)))

(declare-fun b!7138918 () Bool)

(declare-fun res!2912946 () Bool)

(assert (=> b!7138918 (=> (not res!2912946) (not e!4290351))))

(declare-fun call!651089 () Bool)

(assert (=> b!7138918 (= res!2912946 call!651089)))

(declare-fun e!4290347 () Bool)

(assert (=> b!7138918 (= e!4290347 e!4290351)))

(declare-fun b!7138919 () Bool)

(declare-fun e!4290345 () Bool)

(declare-fun e!4290349 () Bool)

(assert (=> b!7138919 (= e!4290345 e!4290349)))

(declare-fun res!2912945 () Bool)

(assert (=> b!7138919 (=> (not res!2912945) (not e!4290349))))

(assert (=> b!7138919 (= res!2912945 call!651089)))

(declare-fun d!2226977 () Bool)

(declare-fun res!2912942 () Bool)

(assert (=> d!2226977 (=> res!2912942 e!4290346)))

(assert (=> d!2226977 (= res!2912942 (is-ElementMatch!18148 r!11483))))

(assert (=> d!2226977 (= (validRegex!9315 r!11483) e!4290346)))

(declare-fun b!7138920 () Bool)

(declare-fun e!4290348 () Bool)

(assert (=> b!7138920 (= e!4290350 e!4290348)))

(declare-fun res!2912943 () Bool)

(declare-fun nullable!7668 (Regex!18148) Bool)

(assert (=> b!7138920 (= res!2912943 (not (nullable!7668 (reg!18477 r!11483))))))

(assert (=> b!7138920 (=> (not res!2912943) (not e!4290348))))

(declare-fun c!1331302 () Bool)

(declare-fun bm!651084 () Bool)

(declare-fun call!651090 () Bool)

(assert (=> bm!651084 (= call!651090 (validRegex!9315 (ite c!1331301 (reg!18477 r!11483) (ite c!1331302 (regOne!36809 r!11483) (regOne!36808 r!11483)))))))

(declare-fun bm!651085 () Bool)

(assert (=> bm!651085 (= call!651091 (validRegex!9315 (ite c!1331302 (regTwo!36809 r!11483) (regTwo!36808 r!11483))))))

(declare-fun b!7138921 () Bool)

(assert (=> b!7138921 (= e!4290350 e!4290347)))

(assert (=> b!7138921 (= c!1331302 (is-Union!18148 r!11483))))

(declare-fun b!7138922 () Bool)

(declare-fun res!2912944 () Bool)

(assert (=> b!7138922 (=> res!2912944 e!4290345)))

(assert (=> b!7138922 (= res!2912944 (not (is-Concat!26993 r!11483)))))

(assert (=> b!7138922 (= e!4290347 e!4290345)))

(declare-fun bm!651086 () Bool)

(assert (=> bm!651086 (= call!651089 call!651090)))

(declare-fun b!7138923 () Bool)

(assert (=> b!7138923 (= e!4290349 call!651091)))

(declare-fun b!7138924 () Bool)

(assert (=> b!7138924 (= e!4290348 call!651090)))

(assert (= (and d!2226977 (not res!2912942)) b!7138916))

(assert (= (and b!7138916 c!1331301) b!7138920))

(assert (= (and b!7138916 (not c!1331301)) b!7138921))

(assert (= (and b!7138920 res!2912943) b!7138924))

(assert (= (and b!7138921 c!1331302) b!7138918))

(assert (= (and b!7138921 (not c!1331302)) b!7138922))

(assert (= (and b!7138918 res!2912946) b!7138917))

(assert (= (and b!7138922 (not res!2912944)) b!7138919))

(assert (= (and b!7138919 res!2912945) b!7138923))

(assert (= (or b!7138917 b!7138923) bm!651085))

(assert (= (or b!7138918 b!7138919) bm!651086))

(assert (= (or b!7138924 bm!651086) bm!651084))

(declare-fun m!7854386 () Bool)

(assert (=> b!7138920 m!7854386))

(declare-fun m!7854388 () Bool)

(assert (=> bm!651084 m!7854388))

(declare-fun m!7854390 () Bool)

(assert (=> bm!651085 m!7854390))

(assert (=> start!695750 d!2226977))

(declare-fun d!2226981 () Bool)

(declare-fun lt!2566712 () Regex!18148)

(assert (=> d!2226981 (validRegex!9315 lt!2566712)))

(assert (=> d!2226981 (= lt!2566712 (generalisedUnion!2653 (unfocusZipperList!2189 lt!2566703)))))

(assert (=> d!2226981 (= (unfocusZipper!2496 lt!2566703) lt!2566712)))

(declare-fun bs!1888036 () Bool)

(assert (= bs!1888036 d!2226981))

(declare-fun m!7854394 () Bool)

(assert (=> bs!1888036 m!7854394))

(assert (=> bs!1888036 m!7854366))

(assert (=> bs!1888036 m!7854366))

(assert (=> bs!1888036 m!7854368))

(assert (=> b!7138875 d!2226981))

(declare-fun d!2226985 () Bool)

(declare-fun e!4290356 () Bool)

(assert (=> d!2226985 e!4290356))

(declare-fun res!2912951 () Bool)

(assert (=> d!2226985 (=> (not res!2912951) (not e!4290356))))

(declare-fun lt!2566717 () List!69375)

(declare-fun noDuplicate!2818 (List!69375) Bool)

(assert (=> d!2226985 (= res!2912951 (noDuplicate!2818 lt!2566717))))

(declare-fun choose!55195 ((Set Context!14284)) List!69375)

(assert (=> d!2226985 (= lt!2566717 (choose!55195 z!3189))))

(assert (=> d!2226985 (= (toList!11179 z!3189) lt!2566717)))

(declare-fun b!7138929 () Bool)

(declare-fun content!14182 (List!69375) (Set Context!14284))

(assert (=> b!7138929 (= e!4290356 (= (content!14182 lt!2566717) z!3189))))

(assert (= (and d!2226985 res!2912951) b!7138929))

(declare-fun m!7854396 () Bool)

(assert (=> d!2226985 m!7854396))

(declare-fun m!7854398 () Bool)

(assert (=> d!2226985 m!7854398))

(declare-fun m!7854400 () Bool)

(assert (=> b!7138929 m!7854400))

(assert (=> b!7138875 d!2226985))

(declare-fun d!2226987 () Bool)

(declare-fun lambda!434257 () Int)

(declare-fun forall!16986 (List!69374 Int) Bool)

(assert (=> d!2226987 (= (inv!88435 setElem!52462) (forall!16986 (exprs!7642 setElem!52462) lambda!434257))))

(declare-fun bs!1888037 () Bool)

(assert (= bs!1888037 d!2226987))

(declare-fun m!7854408 () Bool)

(assert (=> bs!1888037 m!7854408))

(assert (=> setNonEmpty!52462 d!2226987))

(declare-fun bs!1888038 () Bool)

(declare-fun d!2226991 () Bool)

(assert (= bs!1888038 (and d!2226991 d!2226987)))

(declare-fun lambda!434260 () Int)

(assert (=> bs!1888038 (= lambda!434260 lambda!434257)))

(declare-fun b!7138951 () Bool)

(declare-fun e!4290373 () Bool)

(declare-fun lt!2566721 () Regex!18148)

(declare-fun isEmptyLang!2088 (Regex!18148) Bool)

(assert (=> b!7138951 (= e!4290373 (isEmptyLang!2088 lt!2566721))))

(declare-fun b!7138952 () Bool)

(declare-fun e!4290370 () Regex!18148)

(assert (=> b!7138952 (= e!4290370 EmptyLang!18148)))

(declare-fun b!7138953 () Bool)

(declare-fun e!4290372 () Bool)

(declare-fun isEmpty!40056 (List!69374) Bool)

(assert (=> b!7138953 (= e!4290372 (isEmpty!40056 (t!383391 (unfocusZipperList!2189 lt!2566703))))))

(declare-fun b!7138954 () Bool)

(declare-fun e!4290374 () Bool)

(declare-fun head!14497 (List!69374) Regex!18148)

(assert (=> b!7138954 (= e!4290374 (= lt!2566721 (head!14497 (unfocusZipperList!2189 lt!2566703))))))

(declare-fun e!4290371 () Bool)

(assert (=> d!2226991 e!4290371))

(declare-fun res!2912957 () Bool)

(assert (=> d!2226991 (=> (not res!2912957) (not e!4290371))))

(assert (=> d!2226991 (= res!2912957 (validRegex!9315 lt!2566721))))

(declare-fun e!4290375 () Regex!18148)

(assert (=> d!2226991 (= lt!2566721 e!4290375)))

(declare-fun c!1331312 () Bool)

(assert (=> d!2226991 (= c!1331312 e!4290372)))

(declare-fun res!2912958 () Bool)

(assert (=> d!2226991 (=> (not res!2912958) (not e!4290372))))

(assert (=> d!2226991 (= res!2912958 (is-Cons!69250 (unfocusZipperList!2189 lt!2566703)))))

(assert (=> d!2226991 (forall!16986 (unfocusZipperList!2189 lt!2566703) lambda!434260)))

(assert (=> d!2226991 (= (generalisedUnion!2653 (unfocusZipperList!2189 lt!2566703)) lt!2566721)))

(declare-fun b!7138955 () Bool)

(declare-fun isUnion!1516 (Regex!18148) Bool)

(assert (=> b!7138955 (= e!4290374 (isUnion!1516 lt!2566721))))

(declare-fun b!7138956 () Bool)

(assert (=> b!7138956 (= e!4290375 (h!75698 (unfocusZipperList!2189 lt!2566703)))))

(declare-fun b!7138957 () Bool)

(assert (=> b!7138957 (= e!4290371 e!4290373)))

(declare-fun c!1331314 () Bool)

(assert (=> b!7138957 (= c!1331314 (isEmpty!40056 (unfocusZipperList!2189 lt!2566703)))))

(declare-fun b!7138958 () Bool)

(assert (=> b!7138958 (= e!4290370 (Union!18148 (h!75698 (unfocusZipperList!2189 lt!2566703)) (generalisedUnion!2653 (t!383391 (unfocusZipperList!2189 lt!2566703)))))))

(declare-fun b!7138959 () Bool)

(assert (=> b!7138959 (= e!4290373 e!4290374)))

(declare-fun c!1331313 () Bool)

(declare-fun tail!13967 (List!69374) List!69374)

(assert (=> b!7138959 (= c!1331313 (isEmpty!40056 (tail!13967 (unfocusZipperList!2189 lt!2566703))))))

(declare-fun b!7138960 () Bool)

(assert (=> b!7138960 (= e!4290375 e!4290370)))

(declare-fun c!1331311 () Bool)

(assert (=> b!7138960 (= c!1331311 (is-Cons!69250 (unfocusZipperList!2189 lt!2566703)))))

(assert (= (and d!2226991 res!2912958) b!7138953))

(assert (= (and d!2226991 c!1331312) b!7138956))

(assert (= (and d!2226991 (not c!1331312)) b!7138960))

(assert (= (and b!7138960 c!1331311) b!7138958))

(assert (= (and b!7138960 (not c!1331311)) b!7138952))

(assert (= (and d!2226991 res!2912957) b!7138957))

(assert (= (and b!7138957 c!1331314) b!7138951))

(assert (= (and b!7138957 (not c!1331314)) b!7138959))

(assert (= (and b!7138959 c!1331313) b!7138954))

(assert (= (and b!7138959 (not c!1331313)) b!7138955))

(assert (=> b!7138957 m!7854366))

(declare-fun m!7854410 () Bool)

(assert (=> b!7138957 m!7854410))

(declare-fun m!7854412 () Bool)

(assert (=> b!7138953 m!7854412))

(declare-fun m!7854414 () Bool)

(assert (=> b!7138951 m!7854414))

(declare-fun m!7854416 () Bool)

(assert (=> b!7138958 m!7854416))

(declare-fun m!7854418 () Bool)

(assert (=> d!2226991 m!7854418))

(assert (=> d!2226991 m!7854366))

(declare-fun m!7854420 () Bool)

(assert (=> d!2226991 m!7854420))

(assert (=> b!7138954 m!7854366))

(declare-fun m!7854422 () Bool)

(assert (=> b!7138954 m!7854422))

(assert (=> b!7138959 m!7854366))

(declare-fun m!7854424 () Bool)

(assert (=> b!7138959 m!7854424))

(assert (=> b!7138959 m!7854424))

(declare-fun m!7854426 () Bool)

(assert (=> b!7138959 m!7854426))

(declare-fun m!7854428 () Bool)

(assert (=> b!7138955 m!7854428))

(assert (=> b!7138872 d!2226991))

(declare-fun bs!1888039 () Bool)

(declare-fun d!2226993 () Bool)

(assert (= bs!1888039 (and d!2226993 d!2226987)))

(declare-fun lambda!434263 () Int)

(assert (=> bs!1888039 (= lambda!434263 lambda!434257)))

(declare-fun bs!1888040 () Bool)

(assert (= bs!1888040 (and d!2226993 d!2226991)))

(assert (=> bs!1888040 (= lambda!434263 lambda!434260)))

(declare-fun lt!2566724 () List!69374)

(assert (=> d!2226993 (forall!16986 lt!2566724 lambda!434263)))

(declare-fun e!4290378 () List!69374)

(assert (=> d!2226993 (= lt!2566724 e!4290378)))

(declare-fun c!1331317 () Bool)

(assert (=> d!2226993 (= c!1331317 (is-Cons!69251 lt!2566703))))

(assert (=> d!2226993 (= (unfocusZipperList!2189 lt!2566703) lt!2566724)))

(declare-fun b!7138965 () Bool)

(declare-fun generalisedConcat!2339 (List!69374) Regex!18148)

(assert (=> b!7138965 (= e!4290378 (Cons!69250 (generalisedConcat!2339 (exprs!7642 (h!75699 lt!2566703))) (unfocusZipperList!2189 (t!383392 lt!2566703))))))

(declare-fun b!7138966 () Bool)

(assert (=> b!7138966 (= e!4290378 Nil!69250)))

(assert (= (and d!2226993 c!1331317) b!7138965))

(assert (= (and d!2226993 (not c!1331317)) b!7138966))

(declare-fun m!7854430 () Bool)

(assert (=> d!2226993 m!7854430))

(declare-fun m!7854432 () Bool)

(assert (=> b!7138965 m!7854432))

(declare-fun m!7854434 () Bool)

(assert (=> b!7138965 m!7854434))

(assert (=> b!7138872 d!2226993))

(declare-fun b!7138979 () Bool)

(declare-fun e!4290381 () Bool)

(declare-fun tp!1968578 () Bool)

(assert (=> b!7138979 (= e!4290381 tp!1968578)))

(declare-fun b!7138978 () Bool)

(declare-fun tp!1968576 () Bool)

(declare-fun tp!1968575 () Bool)

(assert (=> b!7138978 (= e!4290381 (and tp!1968576 tp!1968575))))

(declare-fun b!7138980 () Bool)

(declare-fun tp!1968574 () Bool)

(declare-fun tp!1968577 () Bool)

(assert (=> b!7138980 (= e!4290381 (and tp!1968574 tp!1968577))))

(declare-fun b!7138977 () Bool)

(assert (=> b!7138977 (= e!4290381 tp_is_empty!45933)))

(assert (=> b!7138873 (= tp!1968541 e!4290381)))

(assert (= (and b!7138873 (is-ElementMatch!18148 (reg!18477 r!11483))) b!7138977))

(assert (= (and b!7138873 (is-Concat!26993 (reg!18477 r!11483))) b!7138978))

(assert (= (and b!7138873 (is-Star!18148 (reg!18477 r!11483))) b!7138979))

(assert (= (and b!7138873 (is-Union!18148 (reg!18477 r!11483))) b!7138980))

(declare-fun b!7138983 () Bool)

(declare-fun e!4290382 () Bool)

(declare-fun tp!1968583 () Bool)

(assert (=> b!7138983 (= e!4290382 tp!1968583)))

(declare-fun b!7138982 () Bool)

(declare-fun tp!1968581 () Bool)

(declare-fun tp!1968580 () Bool)

(assert (=> b!7138982 (= e!4290382 (and tp!1968581 tp!1968580))))

(declare-fun b!7138984 () Bool)

(declare-fun tp!1968579 () Bool)

(declare-fun tp!1968582 () Bool)

(assert (=> b!7138984 (= e!4290382 (and tp!1968579 tp!1968582))))

(declare-fun b!7138981 () Bool)

(assert (=> b!7138981 (= e!4290382 tp_is_empty!45933)))

(assert (=> b!7138874 (= tp!1968539 e!4290382)))

(assert (= (and b!7138874 (is-ElementMatch!18148 (regOne!36808 r!11483))) b!7138981))

(assert (= (and b!7138874 (is-Concat!26993 (regOne!36808 r!11483))) b!7138982))

(assert (= (and b!7138874 (is-Star!18148 (regOne!36808 r!11483))) b!7138983))

(assert (= (and b!7138874 (is-Union!18148 (regOne!36808 r!11483))) b!7138984))

(declare-fun b!7138987 () Bool)

(declare-fun e!4290383 () Bool)

(declare-fun tp!1968588 () Bool)

(assert (=> b!7138987 (= e!4290383 tp!1968588)))

(declare-fun b!7138986 () Bool)

(declare-fun tp!1968586 () Bool)

(declare-fun tp!1968585 () Bool)

(assert (=> b!7138986 (= e!4290383 (and tp!1968586 tp!1968585))))

(declare-fun b!7138988 () Bool)

(declare-fun tp!1968584 () Bool)

(declare-fun tp!1968587 () Bool)

(assert (=> b!7138988 (= e!4290383 (and tp!1968584 tp!1968587))))

(declare-fun b!7138985 () Bool)

(assert (=> b!7138985 (= e!4290383 tp_is_empty!45933)))

(assert (=> b!7138874 (= tp!1968536 e!4290383)))

(assert (= (and b!7138874 (is-ElementMatch!18148 (regTwo!36808 r!11483))) b!7138985))

(assert (= (and b!7138874 (is-Concat!26993 (regTwo!36808 r!11483))) b!7138986))

(assert (= (and b!7138874 (is-Star!18148 (regTwo!36808 r!11483))) b!7138987))

(assert (= (and b!7138874 (is-Union!18148 (regTwo!36808 r!11483))) b!7138988))

(declare-fun b!7138993 () Bool)

(declare-fun e!4290386 () Bool)

(declare-fun tp!1968593 () Bool)

(declare-fun tp!1968594 () Bool)

(assert (=> b!7138993 (= e!4290386 (and tp!1968593 tp!1968594))))

(assert (=> b!7138870 (= tp!1968540 e!4290386)))

(assert (= (and b!7138870 (is-Cons!69250 (exprs!7642 setElem!52462))) b!7138993))

(declare-fun b!7138996 () Bool)

(declare-fun e!4290387 () Bool)

(declare-fun tp!1968599 () Bool)

(assert (=> b!7138996 (= e!4290387 tp!1968599)))

(declare-fun b!7138995 () Bool)

(declare-fun tp!1968597 () Bool)

(declare-fun tp!1968596 () Bool)

(assert (=> b!7138995 (= e!4290387 (and tp!1968597 tp!1968596))))

(declare-fun b!7138997 () Bool)

(declare-fun tp!1968595 () Bool)

(declare-fun tp!1968598 () Bool)

(assert (=> b!7138997 (= e!4290387 (and tp!1968595 tp!1968598))))

(declare-fun b!7138994 () Bool)

(assert (=> b!7138994 (= e!4290387 tp_is_empty!45933)))

(assert (=> b!7138871 (= tp!1968542 e!4290387)))

(assert (= (and b!7138871 (is-ElementMatch!18148 (regOne!36809 r!11483))) b!7138994))

(assert (= (and b!7138871 (is-Concat!26993 (regOne!36809 r!11483))) b!7138995))

(assert (= (and b!7138871 (is-Star!18148 (regOne!36809 r!11483))) b!7138996))

(assert (= (and b!7138871 (is-Union!18148 (regOne!36809 r!11483))) b!7138997))

(declare-fun b!7139000 () Bool)

(declare-fun e!4290388 () Bool)

(declare-fun tp!1968604 () Bool)

(assert (=> b!7139000 (= e!4290388 tp!1968604)))

(declare-fun b!7138999 () Bool)

(declare-fun tp!1968602 () Bool)

(declare-fun tp!1968601 () Bool)

(assert (=> b!7138999 (= e!4290388 (and tp!1968602 tp!1968601))))

(declare-fun b!7139001 () Bool)

(declare-fun tp!1968600 () Bool)

(declare-fun tp!1968603 () Bool)

(assert (=> b!7139001 (= e!4290388 (and tp!1968600 tp!1968603))))

(declare-fun b!7138998 () Bool)

(assert (=> b!7138998 (= e!4290388 tp_is_empty!45933)))

(assert (=> b!7138871 (= tp!1968537 e!4290388)))

(assert (= (and b!7138871 (is-ElementMatch!18148 (regTwo!36809 r!11483))) b!7138998))

(assert (= (and b!7138871 (is-Concat!26993 (regTwo!36809 r!11483))) b!7138999))

(assert (= (and b!7138871 (is-Star!18148 (regTwo!36809 r!11483))) b!7139000))

(assert (= (and b!7138871 (is-Union!18148 (regTwo!36809 r!11483))) b!7139001))

(declare-fun condSetEmpty!52468 () Bool)

(assert (=> setNonEmpty!52462 (= condSetEmpty!52468 (= setRest!52462 (as set.empty (Set Context!14284))))))

(declare-fun setRes!52468 () Bool)

(assert (=> setNonEmpty!52462 (= tp!1968538 setRes!52468)))

(declare-fun setIsEmpty!52468 () Bool)

(assert (=> setIsEmpty!52468 setRes!52468))

(declare-fun setNonEmpty!52468 () Bool)

(declare-fun tp!1968609 () Bool)

(declare-fun setElem!52468 () Context!14284)

(declare-fun e!4290391 () Bool)

(assert (=> setNonEmpty!52468 (= setRes!52468 (and tp!1968609 (inv!88435 setElem!52468) e!4290391))))

(declare-fun setRest!52468 () (Set Context!14284))

(assert (=> setNonEmpty!52468 (= setRest!52462 (set.union (set.insert setElem!52468 (as set.empty (Set Context!14284))) setRest!52468))))

(declare-fun b!7139006 () Bool)

(declare-fun tp!1968610 () Bool)

(assert (=> b!7139006 (= e!4290391 tp!1968610)))

(assert (= (and setNonEmpty!52462 condSetEmpty!52468) setIsEmpty!52468))

(assert (= (and setNonEmpty!52462 (not condSetEmpty!52468)) setNonEmpty!52468))

(assert (= setNonEmpty!52468 b!7139006))

(declare-fun m!7854436 () Bool)

(assert (=> setNonEmpty!52468 m!7854436))

(push 1)

(assert (not d!2226985))

(assert (not b!7138982))

(assert (not bm!651084))

(assert (not b!7138959))

(assert (not b!7138965))

(assert (not b!7139006))

(assert (not b!7138995))

(assert (not b!7138958))

(assert (not d!2226991))

(assert (not d!2226987))

(assert (not b!7138920))

(assert (not b!7138987))

(assert (not b!7138979))

(assert (not b!7138955))

(assert (not b!7138983))

(assert (not b!7139001))

(assert (not b!7138993))

(assert (not b!7138984))

(assert (not b!7138957))

(assert (not b!7138953))

(assert (not b!7138996))

(assert (not setNonEmpty!52468))

(assert (not b!7138951))

(assert (not d!2226981))

(assert (not b!7138978))

(assert (not b!7138988))

(assert (not b!7138929))

(assert (not b!7139000))

(assert (not b!7138980))

(assert (not bm!651085))

(assert (not b!7138999))

(assert (not b!7138997))

(assert (not b!7138954))

(assert tp_is_empty!45933)

(assert (not b!7138986))

(assert (not d!2226993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

