; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90040 () Bool)

(assert start!90040)

(declare-fun b!1034651 () Bool)

(assert (=> b!1034651 true))

(assert (=> b!1034651 true))

(declare-fun b!1034650 () Bool)

(declare-fun e!659130 () Bool)

(declare-fun e!659126 () Bool)

(assert (=> b!1034650 (= e!659130 (not e!659126))))

(declare-fun res!464753 () Bool)

(assert (=> b!1034650 (=> res!464753 e!659126)))

(declare-fun lt!356579 () Bool)

(declare-datatypes ((C!6314 0))(
  ( (C!6315 (val!3405 Int)) )
))
(declare-datatypes ((Regex!2872 0))(
  ( (ElementMatch!2872 (c!171701 C!6314)) (Concat!4705 (regOne!6256 Regex!2872) (regTwo!6256 Regex!2872)) (EmptyExpr!2872) (Star!2872 (reg!3201 Regex!2872)) (EmptyLang!2872) (Union!2872 (regOne!6257 Regex!2872) (regTwo!6257 Regex!2872)) )
))
(declare-fun r!15766 () Regex!2872)

(assert (=> b!1034650 (= res!464753 (or lt!356579 (and (is-Concat!4705 r!15766) (is-EmptyExpr!2872 (regOne!6256 r!15766))) (and (is-Concat!4705 r!15766) (is-EmptyExpr!2872 (regTwo!6256 r!15766))) (not (is-Concat!4705 r!15766))))))

(declare-datatypes ((List!10102 0))(
  ( (Nil!10086) (Cons!10086 (h!15487 C!6314) (t!101148 List!10102)) )
))
(declare-fun s!10566 () List!10102)

(declare-fun matchRSpec!671 (Regex!2872 List!10102) Bool)

(assert (=> b!1034650 (= lt!356579 (matchRSpec!671 r!15766 s!10566))))

(declare-fun matchR!1408 (Regex!2872 List!10102) Bool)

(assert (=> b!1034650 (= lt!356579 (matchR!1408 r!15766 s!10566))))

(declare-datatypes ((Unit!15419 0))(
  ( (Unit!15420) )
))
(declare-fun lt!356580 () Unit!15419)

(declare-fun mainMatchTheorem!671 (Regex!2872 List!10102) Unit!15419)

(assert (=> b!1034650 (= lt!356580 (mainMatchTheorem!671 r!15766 s!10566))))

(declare-fun e!659127 () Bool)

(assert (=> b!1034651 (= e!659126 e!659127)))

(declare-fun res!464752 () Bool)

(assert (=> b!1034651 (=> res!464752 e!659127)))

(declare-fun validRegex!1341 (Regex!2872) Bool)

(assert (=> b!1034651 (= res!464752 (not (validRegex!1341 (regOne!6256 r!15766))))))

(declare-fun lambda!37185 () Int)

(declare-datatypes ((tuple2!11510 0))(
  ( (tuple2!11511 (_1!6581 List!10102) (_2!6581 List!10102)) )
))
(declare-datatypes ((Option!2397 0))(
  ( (None!2396) (Some!2396 (v!19813 tuple2!11510)) )
))
(declare-fun isDefined!2039 (Option!2397) Bool)

(declare-fun findConcatSeparation!503 (Regex!2872 Regex!2872 List!10102 List!10102 List!10102) Option!2397)

(declare-fun Exists!599 (Int) Bool)

(assert (=> b!1034651 (= (isDefined!2039 (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) Nil!10086 s!10566 s!10566)) (Exists!599 lambda!37185))))

(declare-fun lt!356578 () Unit!15419)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!503 (Regex!2872 Regex!2872 List!10102) Unit!15419)

(assert (=> b!1034651 (= lt!356578 (lemmaFindConcatSeparationEquivalentToExists!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) s!10566))))

(declare-fun b!1034652 () Bool)

(assert (=> b!1034652 (= e!659127 (validRegex!1341 (regTwo!6256 r!15766)))))

(declare-fun b!1034653 () Bool)

(declare-fun e!659128 () Bool)

(declare-fun tp!313186 () Bool)

(assert (=> b!1034653 (= e!659128 tp!313186)))

(declare-fun b!1034654 () Bool)

(declare-fun tp!313182 () Bool)

(declare-fun tp!313181 () Bool)

(assert (=> b!1034654 (= e!659128 (and tp!313182 tp!313181))))

(declare-fun b!1034655 () Bool)

(declare-fun tp_is_empty!5387 () Bool)

(assert (=> b!1034655 (= e!659128 tp_is_empty!5387)))

(declare-fun res!464751 () Bool)

(assert (=> start!90040 (=> (not res!464751) (not e!659130))))

(assert (=> start!90040 (= res!464751 (validRegex!1341 r!15766))))

(assert (=> start!90040 e!659130))

(assert (=> start!90040 e!659128))

(declare-fun e!659129 () Bool)

(assert (=> start!90040 e!659129))

(declare-fun b!1034656 () Bool)

(declare-fun tp!313183 () Bool)

(assert (=> b!1034656 (= e!659129 (and tp_is_empty!5387 tp!313183))))

(declare-fun b!1034657 () Bool)

(declare-fun tp!313184 () Bool)

(declare-fun tp!313185 () Bool)

(assert (=> b!1034657 (= e!659128 (and tp!313184 tp!313185))))

(assert (= (and start!90040 res!464751) b!1034650))

(assert (= (and b!1034650 (not res!464753)) b!1034651))

(assert (= (and b!1034651 (not res!464752)) b!1034652))

(assert (= (and start!90040 (is-ElementMatch!2872 r!15766)) b!1034655))

(assert (= (and start!90040 (is-Concat!4705 r!15766)) b!1034657))

(assert (= (and start!90040 (is-Star!2872 r!15766)) b!1034653))

(assert (= (and start!90040 (is-Union!2872 r!15766)) b!1034654))

(assert (= (and start!90040 (is-Cons!10086 s!10566)) b!1034656))

(declare-fun m!1206277 () Bool)

(assert (=> b!1034650 m!1206277))

(declare-fun m!1206279 () Bool)

(assert (=> b!1034650 m!1206279))

(declare-fun m!1206281 () Bool)

(assert (=> b!1034650 m!1206281))

(declare-fun m!1206283 () Bool)

(assert (=> b!1034651 m!1206283))

(declare-fun m!1206285 () Bool)

(assert (=> b!1034651 m!1206285))

(declare-fun m!1206287 () Bool)

(assert (=> b!1034651 m!1206287))

(declare-fun m!1206289 () Bool)

(assert (=> b!1034651 m!1206289))

(declare-fun m!1206291 () Bool)

(assert (=> b!1034651 m!1206291))

(assert (=> b!1034651 m!1206283))

(declare-fun m!1206293 () Bool)

(assert (=> b!1034652 m!1206293))

(declare-fun m!1206295 () Bool)

(assert (=> start!90040 m!1206295))

(push 1)

(assert (not b!1034650))

(assert tp_is_empty!5387)

(assert (not start!90040))

(assert (not b!1034651))

(assert (not b!1034653))

(assert (not b!1034657))

(assert (not b!1034652))

(assert (not b!1034656))

(assert (not b!1034654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!247550 () Bool)

(declare-fun b!1034734 () Bool)

(assert (= bs!247550 (and b!1034734 b!1034651)))

(declare-fun lambda!37193 () Int)

(assert (=> bs!247550 (not (= lambda!37193 lambda!37185))))

(assert (=> b!1034734 true))

(assert (=> b!1034734 true))

(declare-fun bs!247551 () Bool)

(declare-fun b!1034728 () Bool)

(assert (= bs!247551 (and b!1034728 b!1034651)))

(declare-fun lambda!37194 () Int)

(assert (=> bs!247551 (not (= lambda!37194 lambda!37185))))

(declare-fun bs!247552 () Bool)

(assert (= bs!247552 (and b!1034728 b!1034734)))

(assert (=> bs!247552 (not (= lambda!37194 lambda!37193))))

(assert (=> b!1034728 true))

(assert (=> b!1034728 true))

(declare-fun b!1034726 () Bool)

(declare-fun e!659172 () Bool)

(declare-fun e!659167 () Bool)

(assert (=> b!1034726 (= e!659172 e!659167)))

(declare-fun c!171714 () Bool)

(assert (=> b!1034726 (= c!171714 (is-Star!2872 r!15766))))

(declare-fun b!1034727 () Bool)

(declare-fun e!659168 () Bool)

(declare-fun call!71499 () Bool)

(assert (=> b!1034727 (= e!659168 call!71499)))

(declare-fun call!71498 () Bool)

(assert (=> b!1034728 (= e!659167 call!71498)))

(declare-fun bm!71493 () Bool)

(declare-fun isEmpty!6476 (List!10102) Bool)

(assert (=> bm!71493 (= call!71499 (isEmpty!6476 s!10566))))

(declare-fun b!1034729 () Bool)

(declare-fun e!659171 () Bool)

(assert (=> b!1034729 (= e!659171 (matchRSpec!671 (regTwo!6257 r!15766) s!10566))))

(declare-fun b!1034730 () Bool)

(declare-fun c!171711 () Bool)

(assert (=> b!1034730 (= c!171711 (is-Union!2872 r!15766))))

(declare-fun e!659169 () Bool)

(assert (=> b!1034730 (= e!659169 e!659172)))

(declare-fun b!1034731 () Bool)

(declare-fun res!464784 () Bool)

(declare-fun e!659166 () Bool)

(assert (=> b!1034731 (=> res!464784 e!659166)))

(assert (=> b!1034731 (= res!464784 call!71499)))

(assert (=> b!1034731 (= e!659167 e!659166)))

(declare-fun d!296152 () Bool)

(declare-fun c!171712 () Bool)

(assert (=> d!296152 (= c!171712 (is-EmptyExpr!2872 r!15766))))

(assert (=> d!296152 (= (matchRSpec!671 r!15766 s!10566) e!659168)))

(declare-fun b!1034732 () Bool)

(declare-fun c!171713 () Bool)

(assert (=> b!1034732 (= c!171713 (is-ElementMatch!2872 r!15766))))

(declare-fun e!659170 () Bool)

(assert (=> b!1034732 (= e!659170 e!659169)))

(declare-fun b!1034733 () Bool)

(assert (=> b!1034733 (= e!659168 e!659170)))

(declare-fun res!464783 () Bool)

(assert (=> b!1034733 (= res!464783 (not (is-EmptyLang!2872 r!15766)))))

(assert (=> b!1034733 (=> (not res!464783) (not e!659170))))

(assert (=> b!1034734 (= e!659166 call!71498)))

(declare-fun b!1034735 () Bool)

(assert (=> b!1034735 (= e!659169 (= s!10566 (Cons!10086 (c!171701 r!15766) Nil!10086)))))

(declare-fun bm!71494 () Bool)

(assert (=> bm!71494 (= call!71498 (Exists!599 (ite c!171714 lambda!37193 lambda!37194)))))

(declare-fun b!1034736 () Bool)

(assert (=> b!1034736 (= e!659172 e!659171)))

(declare-fun res!464785 () Bool)

(assert (=> b!1034736 (= res!464785 (matchRSpec!671 (regOne!6257 r!15766) s!10566))))

(assert (=> b!1034736 (=> res!464785 e!659171)))

(assert (= (and d!296152 c!171712) b!1034727))

(assert (= (and d!296152 (not c!171712)) b!1034733))

(assert (= (and b!1034733 res!464783) b!1034732))

(assert (= (and b!1034732 c!171713) b!1034735))

(assert (= (and b!1034732 (not c!171713)) b!1034730))

(assert (= (and b!1034730 c!171711) b!1034736))

(assert (= (and b!1034730 (not c!171711)) b!1034726))

(assert (= (and b!1034736 (not res!464785)) b!1034729))

(assert (= (and b!1034726 c!171714) b!1034731))

(assert (= (and b!1034726 (not c!171714)) b!1034728))

(assert (= (and b!1034731 (not res!464784)) b!1034734))

(assert (= (or b!1034734 b!1034728) bm!71494))

(assert (= (or b!1034727 b!1034731) bm!71493))

(declare-fun m!1206317 () Bool)

(assert (=> bm!71493 m!1206317))

(declare-fun m!1206319 () Bool)

(assert (=> b!1034729 m!1206319))

(declare-fun m!1206321 () Bool)

(assert (=> bm!71494 m!1206321))

(declare-fun m!1206323 () Bool)

(assert (=> b!1034736 m!1206323))

(assert (=> b!1034650 d!296152))

(declare-fun d!296156 () Bool)

(declare-fun e!659193 () Bool)

(assert (=> d!296156 e!659193))

(declare-fun c!171721 () Bool)

(assert (=> d!296156 (= c!171721 (is-EmptyExpr!2872 r!15766))))

(declare-fun lt!356592 () Bool)

(declare-fun e!659187 () Bool)

(assert (=> d!296156 (= lt!356592 e!659187)))

(declare-fun c!171723 () Bool)

(assert (=> d!296156 (= c!171723 (isEmpty!6476 s!10566))))

(assert (=> d!296156 (validRegex!1341 r!15766)))

(assert (=> d!296156 (= (matchR!1408 r!15766 s!10566) lt!356592)))

(declare-fun bm!71497 () Bool)

(declare-fun call!71502 () Bool)

(assert (=> bm!71497 (= call!71502 (isEmpty!6476 s!10566))))

(declare-fun b!1034767 () Bool)

(declare-fun res!464806 () Bool)

(declare-fun e!659188 () Bool)

(assert (=> b!1034767 (=> res!464806 e!659188)))

(declare-fun e!659190 () Bool)

(assert (=> b!1034767 (= res!464806 e!659190)))

(declare-fun res!464807 () Bool)

(assert (=> b!1034767 (=> (not res!464807) (not e!659190))))

(assert (=> b!1034767 (= res!464807 lt!356592)))

(declare-fun b!1034768 () Bool)

(declare-fun nullable!964 (Regex!2872) Bool)

(assert (=> b!1034768 (= e!659187 (nullable!964 r!15766))))

(declare-fun b!1034769 () Bool)

(declare-fun e!659189 () Bool)

(declare-fun head!1919 (List!10102) C!6314)

(assert (=> b!1034769 (= e!659189 (not (= (head!1919 s!10566) (c!171701 r!15766))))))

(declare-fun b!1034770 () Bool)

(declare-fun res!464805 () Bool)

(assert (=> b!1034770 (=> res!464805 e!659188)))

(assert (=> b!1034770 (= res!464805 (not (is-ElementMatch!2872 r!15766)))))

(declare-fun e!659192 () Bool)

(assert (=> b!1034770 (= e!659192 e!659188)))

(declare-fun b!1034771 () Bool)

(assert (=> b!1034771 (= e!659192 (not lt!356592))))

(declare-fun b!1034772 () Bool)

(assert (=> b!1034772 (= e!659193 (= lt!356592 call!71502))))

(declare-fun b!1034773 () Bool)

(declare-fun res!464808 () Bool)

(assert (=> b!1034773 (=> res!464808 e!659189)))

(declare-fun tail!1481 (List!10102) List!10102)

(assert (=> b!1034773 (= res!464808 (not (isEmpty!6476 (tail!1481 s!10566))))))

(declare-fun b!1034774 () Bool)

(declare-fun derivativeStep!764 (Regex!2872 C!6314) Regex!2872)

(assert (=> b!1034774 (= e!659187 (matchR!1408 (derivativeStep!764 r!15766 (head!1919 s!10566)) (tail!1481 s!10566)))))

(declare-fun b!1034775 () Bool)

(assert (=> b!1034775 (= e!659193 e!659192)))

(declare-fun c!171722 () Bool)

(assert (=> b!1034775 (= c!171722 (is-EmptyLang!2872 r!15766))))

(declare-fun b!1034776 () Bool)

(assert (=> b!1034776 (= e!659190 (= (head!1919 s!10566) (c!171701 r!15766)))))

(declare-fun b!1034777 () Bool)

(declare-fun res!464804 () Bool)

(assert (=> b!1034777 (=> (not res!464804) (not e!659190))))

(assert (=> b!1034777 (= res!464804 (not call!71502))))

(declare-fun b!1034778 () Bool)

(declare-fun e!659191 () Bool)

(assert (=> b!1034778 (= e!659188 e!659191)))

(declare-fun res!464802 () Bool)

(assert (=> b!1034778 (=> (not res!464802) (not e!659191))))

(assert (=> b!1034778 (= res!464802 (not lt!356592))))

(declare-fun b!1034779 () Bool)

(assert (=> b!1034779 (= e!659191 e!659189)))

(declare-fun res!464803 () Bool)

(assert (=> b!1034779 (=> res!464803 e!659189)))

(assert (=> b!1034779 (= res!464803 call!71502)))

(declare-fun b!1034780 () Bool)

(declare-fun res!464809 () Bool)

(assert (=> b!1034780 (=> (not res!464809) (not e!659190))))

(assert (=> b!1034780 (= res!464809 (isEmpty!6476 (tail!1481 s!10566)))))

(assert (= (and d!296156 c!171723) b!1034768))

(assert (= (and d!296156 (not c!171723)) b!1034774))

(assert (= (and d!296156 c!171721) b!1034772))

(assert (= (and d!296156 (not c!171721)) b!1034775))

(assert (= (and b!1034775 c!171722) b!1034771))

(assert (= (and b!1034775 (not c!171722)) b!1034770))

(assert (= (and b!1034770 (not res!464805)) b!1034767))

(assert (= (and b!1034767 res!464807) b!1034777))

(assert (= (and b!1034777 res!464804) b!1034780))

(assert (= (and b!1034780 res!464809) b!1034776))

(assert (= (and b!1034767 (not res!464806)) b!1034778))

(assert (= (and b!1034778 res!464802) b!1034779))

(assert (= (and b!1034779 (not res!464803)) b!1034773))

(assert (= (and b!1034773 (not res!464808)) b!1034769))

(assert (= (or b!1034772 b!1034777 b!1034779) bm!71497))

(declare-fun m!1206325 () Bool)

(assert (=> b!1034768 m!1206325))

(declare-fun m!1206327 () Bool)

(assert (=> b!1034776 m!1206327))

(assert (=> b!1034769 m!1206327))

(assert (=> bm!71497 m!1206317))

(assert (=> b!1034774 m!1206327))

(assert (=> b!1034774 m!1206327))

(declare-fun m!1206329 () Bool)

(assert (=> b!1034774 m!1206329))

(declare-fun m!1206331 () Bool)

(assert (=> b!1034774 m!1206331))

(assert (=> b!1034774 m!1206329))

(assert (=> b!1034774 m!1206331))

(declare-fun m!1206333 () Bool)

(assert (=> b!1034774 m!1206333))

(assert (=> b!1034780 m!1206331))

(assert (=> b!1034780 m!1206331))

(declare-fun m!1206335 () Bool)

(assert (=> b!1034780 m!1206335))

(assert (=> d!296156 m!1206317))

(assert (=> d!296156 m!1206295))

(assert (=> b!1034773 m!1206331))

(assert (=> b!1034773 m!1206331))

(assert (=> b!1034773 m!1206335))

(assert (=> b!1034650 d!296156))

(declare-fun d!296158 () Bool)

(assert (=> d!296158 (= (matchR!1408 r!15766 s!10566) (matchRSpec!671 r!15766 s!10566))))

(declare-fun lt!356595 () Unit!15419)

(declare-fun choose!6598 (Regex!2872 List!10102) Unit!15419)

(assert (=> d!296158 (= lt!356595 (choose!6598 r!15766 s!10566))))

(assert (=> d!296158 (validRegex!1341 r!15766)))

(assert (=> d!296158 (= (mainMatchTheorem!671 r!15766 s!10566) lt!356595)))

(declare-fun bs!247553 () Bool)

(assert (= bs!247553 d!296158))

(assert (=> bs!247553 m!1206279))

(assert (=> bs!247553 m!1206277))

(declare-fun m!1206337 () Bool)

(assert (=> bs!247553 m!1206337))

(assert (=> bs!247553 m!1206295))

(assert (=> b!1034650 d!296158))

(declare-fun b!1034825 () Bool)

(declare-fun e!659229 () Bool)

(declare-fun e!659225 () Bool)

(assert (=> b!1034825 (= e!659229 e!659225)))

(declare-fun res!464835 () Bool)

(assert (=> b!1034825 (= res!464835 (not (nullable!964 (reg!3201 r!15766))))))

(assert (=> b!1034825 (=> (not res!464835) (not e!659225))))

(declare-fun bm!71504 () Bool)

(declare-fun c!171736 () Bool)

(declare-fun c!171737 () Bool)

(declare-fun call!71510 () Bool)

(assert (=> bm!71504 (= call!71510 (validRegex!1341 (ite c!171737 (reg!3201 r!15766) (ite c!171736 (regOne!6257 r!15766) (regOne!6256 r!15766)))))))

(declare-fun b!1034826 () Bool)

(declare-fun e!659226 () Bool)

(declare-fun call!71509 () Bool)

(assert (=> b!1034826 (= e!659226 call!71509)))

(declare-fun b!1034827 () Bool)

(declare-fun e!659230 () Bool)

(assert (=> b!1034827 (= e!659230 call!71509)))

(declare-fun b!1034828 () Bool)

(declare-fun e!659227 () Bool)

(assert (=> b!1034828 (= e!659229 e!659227)))

(assert (=> b!1034828 (= c!171736 (is-Union!2872 r!15766))))

(declare-fun b!1034829 () Bool)

(declare-fun e!659224 () Bool)

(assert (=> b!1034829 (= e!659224 e!659230)))

(declare-fun res!464833 () Bool)

(assert (=> b!1034829 (=> (not res!464833) (not e!659230))))

(declare-fun call!71511 () Bool)

(assert (=> b!1034829 (= res!464833 call!71511)))

(declare-fun b!1034830 () Bool)

(declare-fun res!464836 () Bool)

(assert (=> b!1034830 (=> res!464836 e!659224)))

(assert (=> b!1034830 (= res!464836 (not (is-Concat!4705 r!15766)))))

(assert (=> b!1034830 (= e!659227 e!659224)))

(declare-fun b!1034831 () Bool)

(assert (=> b!1034831 (= e!659225 call!71510)))

(declare-fun d!296160 () Bool)

(declare-fun res!464834 () Bool)

(declare-fun e!659228 () Bool)

(assert (=> d!296160 (=> res!464834 e!659228)))

(assert (=> d!296160 (= res!464834 (is-ElementMatch!2872 r!15766))))

(assert (=> d!296160 (= (validRegex!1341 r!15766) e!659228)))

(declare-fun bm!71505 () Bool)

(assert (=> bm!71505 (= call!71509 (validRegex!1341 (ite c!171736 (regTwo!6257 r!15766) (regTwo!6256 r!15766))))))

(declare-fun bm!71506 () Bool)

(assert (=> bm!71506 (= call!71511 call!71510)))

(declare-fun b!1034832 () Bool)

(declare-fun res!464832 () Bool)

(assert (=> b!1034832 (=> (not res!464832) (not e!659226))))

(assert (=> b!1034832 (= res!464832 call!71511)))

(assert (=> b!1034832 (= e!659227 e!659226)))

(declare-fun b!1034833 () Bool)

(assert (=> b!1034833 (= e!659228 e!659229)))

(assert (=> b!1034833 (= c!171737 (is-Star!2872 r!15766))))

(assert (= (and d!296160 (not res!464834)) b!1034833))

(assert (= (and b!1034833 c!171737) b!1034825))

(assert (= (and b!1034833 (not c!171737)) b!1034828))

(assert (= (and b!1034825 res!464835) b!1034831))

(assert (= (and b!1034828 c!171736) b!1034832))

(assert (= (and b!1034828 (not c!171736)) b!1034830))

(assert (= (and b!1034832 res!464832) b!1034826))

(assert (= (and b!1034830 (not res!464836)) b!1034829))

(assert (= (and b!1034829 res!464833) b!1034827))

(assert (= (or b!1034826 b!1034827) bm!71505))

(assert (= (or b!1034832 b!1034829) bm!71506))

(assert (= (or b!1034831 bm!71506) bm!71504))

(declare-fun m!1206339 () Bool)

(assert (=> b!1034825 m!1206339))

(declare-fun m!1206341 () Bool)

(assert (=> bm!71504 m!1206341))

(declare-fun m!1206343 () Bool)

(assert (=> bm!71505 m!1206343))

(assert (=> start!90040 d!296160))

(declare-fun b!1034834 () Bool)

(declare-fun e!659236 () Bool)

(declare-fun e!659232 () Bool)

(assert (=> b!1034834 (= e!659236 e!659232)))

(declare-fun res!464840 () Bool)

(assert (=> b!1034834 (= res!464840 (not (nullable!964 (reg!3201 (regTwo!6256 r!15766)))))))

(assert (=> b!1034834 (=> (not res!464840) (not e!659232))))

(declare-fun call!71513 () Bool)

(declare-fun bm!71507 () Bool)

(declare-fun c!171739 () Bool)

(declare-fun c!171738 () Bool)

(assert (=> bm!71507 (= call!71513 (validRegex!1341 (ite c!171739 (reg!3201 (regTwo!6256 r!15766)) (ite c!171738 (regOne!6257 (regTwo!6256 r!15766)) (regOne!6256 (regTwo!6256 r!15766))))))))

(declare-fun b!1034835 () Bool)

(declare-fun e!659233 () Bool)

(declare-fun call!71512 () Bool)

(assert (=> b!1034835 (= e!659233 call!71512)))

(declare-fun b!1034836 () Bool)

(declare-fun e!659237 () Bool)

(assert (=> b!1034836 (= e!659237 call!71512)))

(declare-fun b!1034837 () Bool)

(declare-fun e!659234 () Bool)

(assert (=> b!1034837 (= e!659236 e!659234)))

(assert (=> b!1034837 (= c!171738 (is-Union!2872 (regTwo!6256 r!15766)))))

(declare-fun b!1034838 () Bool)

(declare-fun e!659231 () Bool)

(assert (=> b!1034838 (= e!659231 e!659237)))

(declare-fun res!464838 () Bool)

(assert (=> b!1034838 (=> (not res!464838) (not e!659237))))

(declare-fun call!71514 () Bool)

(assert (=> b!1034838 (= res!464838 call!71514)))

(declare-fun b!1034839 () Bool)

(declare-fun res!464841 () Bool)

(assert (=> b!1034839 (=> res!464841 e!659231)))

(assert (=> b!1034839 (= res!464841 (not (is-Concat!4705 (regTwo!6256 r!15766))))))

(assert (=> b!1034839 (= e!659234 e!659231)))

(declare-fun b!1034840 () Bool)

(assert (=> b!1034840 (= e!659232 call!71513)))

(declare-fun d!296162 () Bool)

(declare-fun res!464839 () Bool)

(declare-fun e!659235 () Bool)

(assert (=> d!296162 (=> res!464839 e!659235)))

(assert (=> d!296162 (= res!464839 (is-ElementMatch!2872 (regTwo!6256 r!15766)))))

(assert (=> d!296162 (= (validRegex!1341 (regTwo!6256 r!15766)) e!659235)))

(declare-fun bm!71508 () Bool)

(assert (=> bm!71508 (= call!71512 (validRegex!1341 (ite c!171738 (regTwo!6257 (regTwo!6256 r!15766)) (regTwo!6256 (regTwo!6256 r!15766)))))))

(declare-fun bm!71509 () Bool)

(assert (=> bm!71509 (= call!71514 call!71513)))

(declare-fun b!1034841 () Bool)

(declare-fun res!464837 () Bool)

(assert (=> b!1034841 (=> (not res!464837) (not e!659233))))

(assert (=> b!1034841 (= res!464837 call!71514)))

(assert (=> b!1034841 (= e!659234 e!659233)))

(declare-fun b!1034842 () Bool)

(assert (=> b!1034842 (= e!659235 e!659236)))

(assert (=> b!1034842 (= c!171739 (is-Star!2872 (regTwo!6256 r!15766)))))

(assert (= (and d!296162 (not res!464839)) b!1034842))

(assert (= (and b!1034842 c!171739) b!1034834))

(assert (= (and b!1034842 (not c!171739)) b!1034837))

(assert (= (and b!1034834 res!464840) b!1034840))

(assert (= (and b!1034837 c!171738) b!1034841))

(assert (= (and b!1034837 (not c!171738)) b!1034839))

(assert (= (and b!1034841 res!464837) b!1034835))

(assert (= (and b!1034839 (not res!464841)) b!1034838))

(assert (= (and b!1034838 res!464838) b!1034836))

(assert (= (or b!1034835 b!1034836) bm!71508))

(assert (= (or b!1034841 b!1034838) bm!71509))

(assert (= (or b!1034840 bm!71509) bm!71507))

(declare-fun m!1206345 () Bool)

(assert (=> b!1034834 m!1206345))

(declare-fun m!1206347 () Bool)

(assert (=> bm!71507 m!1206347))

(declare-fun m!1206349 () Bool)

(assert (=> bm!71508 m!1206349))

(assert (=> b!1034652 d!296162))

(declare-fun b!1034843 () Bool)

(declare-fun e!659243 () Bool)

(declare-fun e!659239 () Bool)

(assert (=> b!1034843 (= e!659243 e!659239)))

(declare-fun res!464845 () Bool)

(assert (=> b!1034843 (= res!464845 (not (nullable!964 (reg!3201 (regOne!6256 r!15766)))))))

(assert (=> b!1034843 (=> (not res!464845) (not e!659239))))

(declare-fun c!171740 () Bool)

(declare-fun bm!71510 () Bool)

(declare-fun c!171741 () Bool)

(declare-fun call!71516 () Bool)

(assert (=> bm!71510 (= call!71516 (validRegex!1341 (ite c!171741 (reg!3201 (regOne!6256 r!15766)) (ite c!171740 (regOne!6257 (regOne!6256 r!15766)) (regOne!6256 (regOne!6256 r!15766))))))))

(declare-fun b!1034844 () Bool)

(declare-fun e!659240 () Bool)

(declare-fun call!71515 () Bool)

(assert (=> b!1034844 (= e!659240 call!71515)))

(declare-fun b!1034845 () Bool)

(declare-fun e!659244 () Bool)

(assert (=> b!1034845 (= e!659244 call!71515)))

(declare-fun b!1034846 () Bool)

(declare-fun e!659241 () Bool)

(assert (=> b!1034846 (= e!659243 e!659241)))

(assert (=> b!1034846 (= c!171740 (is-Union!2872 (regOne!6256 r!15766)))))

(declare-fun b!1034847 () Bool)

(declare-fun e!659238 () Bool)

(assert (=> b!1034847 (= e!659238 e!659244)))

(declare-fun res!464843 () Bool)

(assert (=> b!1034847 (=> (not res!464843) (not e!659244))))

(declare-fun call!71517 () Bool)

(assert (=> b!1034847 (= res!464843 call!71517)))

(declare-fun b!1034848 () Bool)

(declare-fun res!464846 () Bool)

(assert (=> b!1034848 (=> res!464846 e!659238)))

(assert (=> b!1034848 (= res!464846 (not (is-Concat!4705 (regOne!6256 r!15766))))))

(assert (=> b!1034848 (= e!659241 e!659238)))

(declare-fun b!1034849 () Bool)

(assert (=> b!1034849 (= e!659239 call!71516)))

(declare-fun d!296164 () Bool)

(declare-fun res!464844 () Bool)

(declare-fun e!659242 () Bool)

(assert (=> d!296164 (=> res!464844 e!659242)))

(assert (=> d!296164 (= res!464844 (is-ElementMatch!2872 (regOne!6256 r!15766)))))

(assert (=> d!296164 (= (validRegex!1341 (regOne!6256 r!15766)) e!659242)))

(declare-fun bm!71511 () Bool)

(assert (=> bm!71511 (= call!71515 (validRegex!1341 (ite c!171740 (regTwo!6257 (regOne!6256 r!15766)) (regTwo!6256 (regOne!6256 r!15766)))))))

(declare-fun bm!71512 () Bool)

(assert (=> bm!71512 (= call!71517 call!71516)))

(declare-fun b!1034850 () Bool)

(declare-fun res!464842 () Bool)

(assert (=> b!1034850 (=> (not res!464842) (not e!659240))))

(assert (=> b!1034850 (= res!464842 call!71517)))

(assert (=> b!1034850 (= e!659241 e!659240)))

(declare-fun b!1034851 () Bool)

(assert (=> b!1034851 (= e!659242 e!659243)))

(assert (=> b!1034851 (= c!171741 (is-Star!2872 (regOne!6256 r!15766)))))

(assert (= (and d!296164 (not res!464844)) b!1034851))

(assert (= (and b!1034851 c!171741) b!1034843))

(assert (= (and b!1034851 (not c!171741)) b!1034846))

(assert (= (and b!1034843 res!464845) b!1034849))

(assert (= (and b!1034846 c!171740) b!1034850))

(assert (= (and b!1034846 (not c!171740)) b!1034848))

(assert (= (and b!1034850 res!464842) b!1034844))

(assert (= (and b!1034848 (not res!464846)) b!1034847))

(assert (= (and b!1034847 res!464843) b!1034845))

(assert (= (or b!1034844 b!1034845) bm!71511))

(assert (= (or b!1034850 b!1034847) bm!71512))

(assert (= (or b!1034849 bm!71512) bm!71510))

(declare-fun m!1206351 () Bool)

(assert (=> b!1034843 m!1206351))

(declare-fun m!1206353 () Bool)

(assert (=> bm!71510 m!1206353))

(declare-fun m!1206355 () Bool)

(assert (=> bm!71511 m!1206355))

(assert (=> b!1034651 d!296164))

(declare-fun d!296166 () Bool)

(declare-fun isEmpty!6477 (Option!2397) Bool)

(assert (=> d!296166 (= (isDefined!2039 (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) Nil!10086 s!10566 s!10566)) (not (isEmpty!6477 (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) Nil!10086 s!10566 s!10566))))))

(declare-fun bs!247554 () Bool)

(assert (= bs!247554 d!296166))

(assert (=> bs!247554 m!1206283))

(declare-fun m!1206357 () Bool)

(assert (=> bs!247554 m!1206357))

(assert (=> b!1034651 d!296166))

(declare-fun bs!247555 () Bool)

(declare-fun d!296168 () Bool)

(assert (= bs!247555 (and d!296168 b!1034651)))

(declare-fun lambda!37201 () Int)

(assert (=> bs!247555 (= lambda!37201 lambda!37185)))

(declare-fun bs!247556 () Bool)

(assert (= bs!247556 (and d!296168 b!1034734)))

(assert (=> bs!247556 (not (= lambda!37201 lambda!37193))))

(declare-fun bs!247557 () Bool)

(assert (= bs!247557 (and d!296168 b!1034728)))

(assert (=> bs!247557 (not (= lambda!37201 lambda!37194))))

(assert (=> d!296168 true))

(assert (=> d!296168 true))

(assert (=> d!296168 true))

(assert (=> d!296168 (= (isDefined!2039 (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) Nil!10086 s!10566 s!10566)) (Exists!599 lambda!37201))))

(declare-fun lt!356598 () Unit!15419)

(declare-fun choose!6599 (Regex!2872 Regex!2872 List!10102) Unit!15419)

(assert (=> d!296168 (= lt!356598 (choose!6599 (regOne!6256 r!15766) (regTwo!6256 r!15766) s!10566))))

(assert (=> d!296168 (validRegex!1341 (regOne!6256 r!15766))))

(assert (=> d!296168 (= (lemmaFindConcatSeparationEquivalentToExists!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) s!10566) lt!356598)))

(declare-fun bs!247558 () Bool)

(assert (= bs!247558 d!296168))

(assert (=> bs!247558 m!1206287))

(declare-fun m!1206359 () Bool)

(assert (=> bs!247558 m!1206359))

(assert (=> bs!247558 m!1206283))

(assert (=> bs!247558 m!1206283))

(assert (=> bs!247558 m!1206285))

(declare-fun m!1206361 () Bool)

(assert (=> bs!247558 m!1206361))

(assert (=> b!1034651 d!296168))

(declare-fun d!296170 () Bool)

(declare-fun choose!6600 (Int) Bool)

(assert (=> d!296170 (= (Exists!599 lambda!37185) (choose!6600 lambda!37185))))

(declare-fun bs!247559 () Bool)

(assert (= bs!247559 d!296170))

(declare-fun m!1206363 () Bool)

(assert (=> bs!247559 m!1206363))

(assert (=> b!1034651 d!296170))

(declare-fun d!296172 () Bool)

(declare-fun e!659267 () Bool)

(assert (=> d!296172 e!659267))

(declare-fun res!464872 () Bool)

(assert (=> d!296172 (=> res!464872 e!659267)))

(declare-fun e!659269 () Bool)

(assert (=> d!296172 (= res!464872 e!659269)))

(declare-fun res!464869 () Bool)

(assert (=> d!296172 (=> (not res!464869) (not e!659269))))

(declare-fun lt!356605 () Option!2397)

(assert (=> d!296172 (= res!464869 (isDefined!2039 lt!356605))))

(declare-fun e!659270 () Option!2397)

(assert (=> d!296172 (= lt!356605 e!659270)))

(declare-fun c!171750 () Bool)

(declare-fun e!659268 () Bool)

(assert (=> d!296172 (= c!171750 e!659268)))

(declare-fun res!464871 () Bool)

(assert (=> d!296172 (=> (not res!464871) (not e!659268))))

(assert (=> d!296172 (= res!464871 (matchR!1408 (regOne!6256 r!15766) Nil!10086))))

(assert (=> d!296172 (validRegex!1341 (regOne!6256 r!15766))))

(assert (=> d!296172 (= (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) Nil!10086 s!10566 s!10566) lt!356605)))

(declare-fun b!1034889 () Bool)

(declare-fun ++!2774 (List!10102 List!10102) List!10102)

(declare-fun get!3588 (Option!2397) tuple2!11510)

(assert (=> b!1034889 (= e!659269 (= (++!2774 (_1!6581 (get!3588 lt!356605)) (_2!6581 (get!3588 lt!356605))) s!10566))))

(declare-fun b!1034890 () Bool)

(declare-fun lt!356607 () Unit!15419)

(declare-fun lt!356606 () Unit!15419)

(assert (=> b!1034890 (= lt!356607 lt!356606)))

(assert (=> b!1034890 (= (++!2774 (++!2774 Nil!10086 (Cons!10086 (h!15487 s!10566) Nil!10086)) (t!101148 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!367 (List!10102 C!6314 List!10102 List!10102) Unit!15419)

(assert (=> b!1034890 (= lt!356606 (lemmaMoveElementToOtherListKeepsConcatEq!367 Nil!10086 (h!15487 s!10566) (t!101148 s!10566) s!10566))))

(declare-fun e!659266 () Option!2397)

(assert (=> b!1034890 (= e!659266 (findConcatSeparation!503 (regOne!6256 r!15766) (regTwo!6256 r!15766) (++!2774 Nil!10086 (Cons!10086 (h!15487 s!10566) Nil!10086)) (t!101148 s!10566) s!10566))))

(declare-fun b!1034891 () Bool)

(assert (=> b!1034891 (= e!659270 e!659266)))

(declare-fun c!171751 () Bool)

(assert (=> b!1034891 (= c!171751 (is-Nil!10086 s!10566))))

(declare-fun b!1034892 () Bool)

(assert (=> b!1034892 (= e!659268 (matchR!1408 (regTwo!6256 r!15766) s!10566))))

(declare-fun b!1034893 () Bool)

(assert (=> b!1034893 (= e!659266 None!2396)))

(declare-fun b!1034894 () Bool)

(declare-fun res!464868 () Bool)

(assert (=> b!1034894 (=> (not res!464868) (not e!659269))))

(assert (=> b!1034894 (= res!464868 (matchR!1408 (regTwo!6256 r!15766) (_2!6581 (get!3588 lt!356605))))))

(declare-fun b!1034895 () Bool)

(assert (=> b!1034895 (= e!659267 (not (isDefined!2039 lt!356605)))))

(declare-fun b!1034896 () Bool)

(declare-fun res!464870 () Bool)

(assert (=> b!1034896 (=> (not res!464870) (not e!659269))))

(assert (=> b!1034896 (= res!464870 (matchR!1408 (regOne!6256 r!15766) (_1!6581 (get!3588 lt!356605))))))

(declare-fun b!1034897 () Bool)

(assert (=> b!1034897 (= e!659270 (Some!2396 (tuple2!11511 Nil!10086 s!10566)))))

(assert (= (and d!296172 res!464871) b!1034892))

(assert (= (and d!296172 c!171750) b!1034897))

(assert (= (and d!296172 (not c!171750)) b!1034891))

(assert (= (and b!1034891 c!171751) b!1034893))

(assert (= (and b!1034891 (not c!171751)) b!1034890))

(assert (= (and d!296172 res!464869) b!1034896))

(assert (= (and b!1034896 res!464870) b!1034894))

(assert (= (and b!1034894 res!464868) b!1034889))

(assert (= (and d!296172 (not res!464872)) b!1034895))

(declare-fun m!1206373 () Bool)

(assert (=> d!296172 m!1206373))

(declare-fun m!1206375 () Bool)

(assert (=> d!296172 m!1206375))

(assert (=> d!296172 m!1206287))

(declare-fun m!1206377 () Bool)

(assert (=> b!1034892 m!1206377))

(declare-fun m!1206379 () Bool)

(assert (=> b!1034894 m!1206379))

(declare-fun m!1206381 () Bool)

(assert (=> b!1034894 m!1206381))

(assert (=> b!1034889 m!1206379))

(declare-fun m!1206383 () Bool)

(assert (=> b!1034889 m!1206383))

(assert (=> b!1034895 m!1206373))

(assert (=> b!1034896 m!1206379))

(declare-fun m!1206385 () Bool)

(assert (=> b!1034896 m!1206385))

(declare-fun m!1206387 () Bool)

(assert (=> b!1034890 m!1206387))

(assert (=> b!1034890 m!1206387))

(declare-fun m!1206389 () Bool)

(assert (=> b!1034890 m!1206389))

(declare-fun m!1206391 () Bool)

(assert (=> b!1034890 m!1206391))

(assert (=> b!1034890 m!1206387))

(declare-fun m!1206393 () Bool)

(assert (=> b!1034890 m!1206393))

(assert (=> b!1034651 d!296172))

(declare-fun b!1034902 () Bool)

(declare-fun e!659273 () Bool)

(declare-fun tp!313207 () Bool)

(assert (=> b!1034902 (= e!659273 (and tp_is_empty!5387 tp!313207))))

(assert (=> b!1034656 (= tp!313183 e!659273)))

(assert (= (and b!1034656 (is-Cons!10086 (t!101148 s!10566))) b!1034902))

(declare-fun b!1034913 () Bool)

(declare-fun e!659276 () Bool)

(assert (=> b!1034913 (= e!659276 tp_is_empty!5387)))

(declare-fun b!1034916 () Bool)

(declare-fun tp!313220 () Bool)

(declare-fun tp!313218 () Bool)

(assert (=> b!1034916 (= e!659276 (and tp!313220 tp!313218))))

(declare-fun b!1034914 () Bool)

(declare-fun tp!313222 () Bool)

(declare-fun tp!313221 () Bool)

(assert (=> b!1034914 (= e!659276 (and tp!313222 tp!313221))))

(declare-fun b!1034915 () Bool)

(declare-fun tp!313219 () Bool)

(assert (=> b!1034915 (= e!659276 tp!313219)))

(assert (=> b!1034654 (= tp!313182 e!659276)))

(assert (= (and b!1034654 (is-ElementMatch!2872 (regOne!6257 r!15766))) b!1034913))

(assert (= (and b!1034654 (is-Concat!4705 (regOne!6257 r!15766))) b!1034914))

(assert (= (and b!1034654 (is-Star!2872 (regOne!6257 r!15766))) b!1034915))

(assert (= (and b!1034654 (is-Union!2872 (regOne!6257 r!15766))) b!1034916))

(declare-fun b!1034917 () Bool)

(declare-fun e!659277 () Bool)

(assert (=> b!1034917 (= e!659277 tp_is_empty!5387)))

(declare-fun b!1034920 () Bool)

(declare-fun tp!313225 () Bool)

(declare-fun tp!313223 () Bool)

(assert (=> b!1034920 (= e!659277 (and tp!313225 tp!313223))))

(declare-fun b!1034918 () Bool)

(declare-fun tp!313227 () Bool)

(declare-fun tp!313226 () Bool)

(assert (=> b!1034918 (= e!659277 (and tp!313227 tp!313226))))

(declare-fun b!1034919 () Bool)

(declare-fun tp!313224 () Bool)

(assert (=> b!1034919 (= e!659277 tp!313224)))

(assert (=> b!1034654 (= tp!313181 e!659277)))

(assert (= (and b!1034654 (is-ElementMatch!2872 (regTwo!6257 r!15766))) b!1034917))

(assert (= (and b!1034654 (is-Concat!4705 (regTwo!6257 r!15766))) b!1034918))

(assert (= (and b!1034654 (is-Star!2872 (regTwo!6257 r!15766))) b!1034919))

(assert (= (and b!1034654 (is-Union!2872 (regTwo!6257 r!15766))) b!1034920))

(declare-fun b!1034921 () Bool)

(declare-fun e!659278 () Bool)

(assert (=> b!1034921 (= e!659278 tp_is_empty!5387)))

(declare-fun b!1034924 () Bool)

(declare-fun tp!313230 () Bool)

(declare-fun tp!313228 () Bool)

(assert (=> b!1034924 (= e!659278 (and tp!313230 tp!313228))))

(declare-fun b!1034922 () Bool)

(declare-fun tp!313232 () Bool)

(declare-fun tp!313231 () Bool)

(assert (=> b!1034922 (= e!659278 (and tp!313232 tp!313231))))

(declare-fun b!1034923 () Bool)

(declare-fun tp!313229 () Bool)

(assert (=> b!1034923 (= e!659278 tp!313229)))

(assert (=> b!1034653 (= tp!313186 e!659278)))

(assert (= (and b!1034653 (is-ElementMatch!2872 (reg!3201 r!15766))) b!1034921))

(assert (= (and b!1034653 (is-Concat!4705 (reg!3201 r!15766))) b!1034922))

(assert (= (and b!1034653 (is-Star!2872 (reg!3201 r!15766))) b!1034923))

(assert (= (and b!1034653 (is-Union!2872 (reg!3201 r!15766))) b!1034924))

(declare-fun b!1034925 () Bool)

(declare-fun e!659279 () Bool)

(assert (=> b!1034925 (= e!659279 tp_is_empty!5387)))

(declare-fun b!1034928 () Bool)

(declare-fun tp!313235 () Bool)

(declare-fun tp!313233 () Bool)

(assert (=> b!1034928 (= e!659279 (and tp!313235 tp!313233))))

(declare-fun b!1034926 () Bool)

(declare-fun tp!313237 () Bool)

(declare-fun tp!313236 () Bool)

(assert (=> b!1034926 (= e!659279 (and tp!313237 tp!313236))))

(declare-fun b!1034927 () Bool)

(declare-fun tp!313234 () Bool)

(assert (=> b!1034927 (= e!659279 tp!313234)))

(assert (=> b!1034657 (= tp!313184 e!659279)))

(assert (= (and b!1034657 (is-ElementMatch!2872 (regOne!6256 r!15766))) b!1034925))

(assert (= (and b!1034657 (is-Concat!4705 (regOne!6256 r!15766))) b!1034926))

(assert (= (and b!1034657 (is-Star!2872 (regOne!6256 r!15766))) b!1034927))

(assert (= (and b!1034657 (is-Union!2872 (regOne!6256 r!15766))) b!1034928))

(declare-fun b!1034929 () Bool)

(declare-fun e!659280 () Bool)

(assert (=> b!1034929 (= e!659280 tp_is_empty!5387)))

(declare-fun b!1034932 () Bool)

(declare-fun tp!313240 () Bool)

(declare-fun tp!313238 () Bool)

(assert (=> b!1034932 (= e!659280 (and tp!313240 tp!313238))))

(declare-fun b!1034930 () Bool)

(declare-fun tp!313242 () Bool)

(declare-fun tp!313241 () Bool)

(assert (=> b!1034930 (= e!659280 (and tp!313242 tp!313241))))

(declare-fun b!1034931 () Bool)

(declare-fun tp!313239 () Bool)

(assert (=> b!1034931 (= e!659280 tp!313239)))

(assert (=> b!1034657 (= tp!313185 e!659280)))

(assert (= (and b!1034657 (is-ElementMatch!2872 (regTwo!6256 r!15766))) b!1034929))

(assert (= (and b!1034657 (is-Concat!4705 (regTwo!6256 r!15766))) b!1034930))

(assert (= (and b!1034657 (is-Star!2872 (regTwo!6256 r!15766))) b!1034931))

(assert (= (and b!1034657 (is-Union!2872 (regTwo!6256 r!15766))) b!1034932))

(push 1)

(assert (not bm!71511))

(assert (not b!1034918))

(assert (not b!1034926))

(assert (not b!1034774))

(assert (not b!1034834))

(assert (not b!1034729))

(assert (not bm!71505))

(assert (not d!296158))

(assert (not b!1034902))

(assert (not bm!71504))

(assert (not b!1034919))

(assert (not b!1034932))

(assert (not bm!71508))

(assert (not d!296170))

(assert (not b!1034922))

(assert (not d!296172))

(assert (not b!1034736))

(assert (not bm!71510))

(assert (not b!1034889))

(assert (not b!1034916))

(assert (not b!1034914))

(assert (not b!1034768))

(assert (not b!1034927))

(assert (not bm!71497))

(assert (not b!1034769))

(assert (not b!1034890))

(assert tp_is_empty!5387)

(assert (not bm!71507))

(assert (not b!1034895))

(assert (not b!1034776))

(assert (not b!1034773))

(assert (not b!1034920))

(assert (not b!1034825))

(assert (not bm!71494))

(assert (not d!296166))

(assert (not b!1034894))

(assert (not d!296168))

(assert (not b!1034930))

(assert (not b!1034931))

(assert (not b!1034928))

(assert (not d!296156))

(assert (not b!1034843))

(assert (not b!1034923))

(assert (not bm!71493))

(assert (not b!1034780))

(assert (not b!1034915))

(assert (not b!1034924))

(assert (not b!1034896))

(assert (not b!1034892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

