; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235934 () Bool)

(assert start!235934)

(declare-fun b!2406807 () Bool)

(declare-fun res!1022217 () Bool)

(declare-fun e!1532669 () Bool)

(assert (=> b!2406807 (=> res!1022217 e!1532669)))

(declare-datatypes ((C!14278 0))(
  ( (C!14279 (val!8381 Int)) )
))
(declare-datatypes ((Regex!7060 0))(
  ( (ElementMatch!7060 (c!383364 C!14278)) (Concat!11696 (regOne!14632 Regex!7060) (regTwo!14632 Regex!7060)) (EmptyExpr!7060) (Star!7060 (reg!7389 Regex!7060)) (EmptyLang!7060) (Union!7060 (regOne!14633 Regex!7060) (regTwo!14633 Regex!7060)) )
))
(declare-datatypes ((List!28358 0))(
  ( (Nil!28260) (Cons!28260 (h!33661 Regex!7060) (t!208335 List!28358)) )
))
(declare-fun l!9164 () List!28358)

(declare-fun isEmpty!16265 (List!28358) Bool)

(assert (=> b!2406807 (= res!1022217 (isEmpty!16265 l!9164))))

(declare-fun b!2406808 () Bool)

(declare-fun e!1532670 () Bool)

(assert (=> b!2406808 (= e!1532670 (not e!1532669))))

(declare-fun res!1022214 () Bool)

(assert (=> b!2406808 (=> res!1022214 e!1532669)))

(declare-fun r!13927 () Regex!7060)

(assert (=> b!2406808 (= res!1022214 (or (is-Concat!11696 r!13927) (is-EmptyExpr!7060 r!13927)))))

(declare-datatypes ((List!28359 0))(
  ( (Nil!28261) (Cons!28261 (h!33662 C!14278) (t!208336 List!28359)) )
))
(declare-fun s!9460 () List!28359)

(declare-fun matchR!3177 (Regex!7060 List!28359) Bool)

(declare-fun matchRSpec!909 (Regex!7060 List!28359) Bool)

(assert (=> b!2406808 (= (matchR!3177 r!13927 s!9460) (matchRSpec!909 r!13927 s!9460))))

(declare-datatypes ((Unit!41391 0))(
  ( (Unit!41392) )
))
(declare-fun lt!873041 () Unit!41391)

(declare-fun mainMatchTheorem!909 (Regex!7060 List!28359) Unit!41391)

(assert (=> b!2406808 (= lt!873041 (mainMatchTheorem!909 r!13927 s!9460))))

(declare-fun b!2406809 () Bool)

(declare-fun e!1532672 () Bool)

(declare-fun tp_is_empty!11533 () Bool)

(declare-fun tp!765864 () Bool)

(assert (=> b!2406809 (= e!1532672 (and tp_is_empty!11533 tp!765864))))

(declare-fun b!2406810 () Bool)

(declare-fun e!1532673 () Bool)

(declare-fun tp!765865 () Bool)

(declare-fun tp!765860 () Bool)

(assert (=> b!2406810 (= e!1532673 (and tp!765865 tp!765860))))

(declare-fun b!2406811 () Bool)

(declare-fun res!1022216 () Bool)

(assert (=> b!2406811 (=> (not res!1022216) (not e!1532670))))

(declare-fun generalisedConcat!161 (List!28358) Regex!7060)

(assert (=> b!2406811 (= res!1022216 (= r!13927 (generalisedConcat!161 l!9164)))))

(declare-fun b!2406812 () Bool)

(declare-fun e!1532674 () Bool)

(declare-fun tp!765867 () Bool)

(declare-fun tp!765862 () Bool)

(assert (=> b!2406812 (= e!1532674 (and tp!765867 tp!765862))))

(declare-fun b!2406813 () Bool)

(declare-fun tp!765866 () Bool)

(declare-fun tp!765861 () Bool)

(assert (=> b!2406813 (= e!1532673 (and tp!765866 tp!765861))))

(declare-fun b!2406814 () Bool)

(declare-fun e!1532671 () Bool)

(assert (=> b!2406814 (= e!1532669 e!1532671)))

(declare-fun res!1022213 () Bool)

(assert (=> b!2406814 (=> res!1022213 e!1532671)))

(declare-fun lt!873042 () List!28358)

(assert (=> b!2406814 (= res!1022213 (not (isEmpty!16265 lt!873042)))))

(declare-fun tail!3615 (List!28358) List!28358)

(assert (=> b!2406814 (= lt!873042 (tail!3615 l!9164))))

(declare-fun res!1022215 () Bool)

(assert (=> start!235934 (=> (not res!1022215) (not e!1532670))))

(declare-fun lambda!90552 () Int)

(declare-fun forall!5694 (List!28358 Int) Bool)

(assert (=> start!235934 (= res!1022215 (forall!5694 l!9164 lambda!90552))))

(assert (=> start!235934 e!1532670))

(assert (=> start!235934 e!1532674))

(assert (=> start!235934 e!1532673))

(assert (=> start!235934 e!1532672))

(declare-fun b!2406815 () Bool)

(declare-fun tp!765863 () Bool)

(assert (=> b!2406815 (= e!1532673 tp!765863)))

(declare-fun b!2406816 () Bool)

(declare-fun res!1022218 () Bool)

(assert (=> b!2406816 (=> res!1022218 e!1532671)))

(assert (=> b!2406816 (= res!1022218 (not (= (generalisedConcat!161 lt!873042) EmptyExpr!7060)))))

(declare-fun b!2406817 () Bool)

(declare-fun validRegex!2784 (Regex!7060) Bool)

(declare-fun head!5343 (List!28358) Regex!7060)

(assert (=> b!2406817 (= e!1532671 (validRegex!2784 (head!5343 l!9164)))))

(declare-fun b!2406818 () Bool)

(assert (=> b!2406818 (= e!1532673 tp_is_empty!11533)))

(assert (= (and start!235934 res!1022215) b!2406811))

(assert (= (and b!2406811 res!1022216) b!2406808))

(assert (= (and b!2406808 (not res!1022214)) b!2406807))

(assert (= (and b!2406807 (not res!1022217)) b!2406814))

(assert (= (and b!2406814 (not res!1022213)) b!2406816))

(assert (= (and b!2406816 (not res!1022218)) b!2406817))

(assert (= (and start!235934 (is-Cons!28260 l!9164)) b!2406812))

(assert (= (and start!235934 (is-ElementMatch!7060 r!13927)) b!2406818))

(assert (= (and start!235934 (is-Concat!11696 r!13927)) b!2406810))

(assert (= (and start!235934 (is-Star!7060 r!13927)) b!2406815))

(assert (= (and start!235934 (is-Union!7060 r!13927)) b!2406813))

(assert (= (and start!235934 (is-Cons!28261 s!9460)) b!2406809))

(declare-fun m!2800187 () Bool)

(assert (=> b!2406808 m!2800187))

(declare-fun m!2800189 () Bool)

(assert (=> b!2406808 m!2800189))

(declare-fun m!2800191 () Bool)

(assert (=> b!2406808 m!2800191))

(declare-fun m!2800193 () Bool)

(assert (=> b!2406807 m!2800193))

(declare-fun m!2800195 () Bool)

(assert (=> b!2406814 m!2800195))

(declare-fun m!2800197 () Bool)

(assert (=> b!2406814 m!2800197))

(declare-fun m!2800199 () Bool)

(assert (=> b!2406816 m!2800199))

(declare-fun m!2800201 () Bool)

(assert (=> start!235934 m!2800201))

(declare-fun m!2800203 () Bool)

(assert (=> b!2406817 m!2800203))

(assert (=> b!2406817 m!2800203))

(declare-fun m!2800205 () Bool)

(assert (=> b!2406817 m!2800205))

(declare-fun m!2800207 () Bool)

(assert (=> b!2406811 m!2800207))

(push 1)

(assert (not b!2406809))

(assert (not b!2406811))

(assert (not b!2406810))

(assert (not b!2406807))

(assert tp_is_empty!11533)

(assert (not b!2406815))

(assert (not start!235934))

(assert (not b!2406813))

(assert (not b!2406817))

(assert (not b!2406816))

(assert (not b!2406814))

(assert (not b!2406808))

(assert (not b!2406812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2406891 () Bool)

(declare-fun e!1532723 () Bool)

(declare-fun call!147039 () Bool)

(assert (=> b!2406891 (= e!1532723 call!147039)))

(declare-fun b!2406892 () Bool)

(declare-fun res!1022261 () Bool)

(declare-fun e!1532726 () Bool)

(assert (=> b!2406892 (=> res!1022261 e!1532726)))

(assert (=> b!2406892 (= res!1022261 (not (is-Concat!11696 (head!5343 l!9164))))))

(declare-fun e!1532727 () Bool)

(assert (=> b!2406892 (= e!1532727 e!1532726)))

(declare-fun b!2406893 () Bool)

(declare-fun e!1532721 () Bool)

(assert (=> b!2406893 (= e!1532721 e!1532727)))

(declare-fun c!383375 () Bool)

(assert (=> b!2406893 (= c!383375 (is-Union!7060 (head!5343 l!9164)))))

(declare-fun b!2406894 () Bool)

(declare-fun e!1532722 () Bool)

(declare-fun call!147041 () Bool)

(assert (=> b!2406894 (= e!1532722 call!147041)))

(declare-fun bm!147034 () Bool)

(assert (=> bm!147034 (= call!147039 (validRegex!2784 (ite c!383375 (regTwo!14633 (head!5343 l!9164)) (regOne!14632 (head!5343 l!9164)))))))

(declare-fun bm!147035 () Bool)

(declare-fun call!147040 () Bool)

(assert (=> bm!147035 (= call!147040 call!147041)))

(declare-fun c!383374 () Bool)

(declare-fun bm!147036 () Bool)

(assert (=> bm!147036 (= call!147041 (validRegex!2784 (ite c!383374 (reg!7389 (head!5343 l!9164)) (ite c!383375 (regOne!14633 (head!5343 l!9164)) (regTwo!14632 (head!5343 l!9164))))))))

(declare-fun b!2406895 () Bool)

(assert (=> b!2406895 (= e!1532721 e!1532722)))

(declare-fun res!1022258 () Bool)

(declare-fun nullable!2106 (Regex!7060) Bool)

(assert (=> b!2406895 (= res!1022258 (not (nullable!2106 (reg!7389 (head!5343 l!9164)))))))

(assert (=> b!2406895 (=> (not res!1022258) (not e!1532722))))

(declare-fun d!700161 () Bool)

(declare-fun res!1022260 () Bool)

(declare-fun e!1532725 () Bool)

(assert (=> d!700161 (=> res!1022260 e!1532725)))

(assert (=> d!700161 (= res!1022260 (is-ElementMatch!7060 (head!5343 l!9164)))))

(assert (=> d!700161 (= (validRegex!2784 (head!5343 l!9164)) e!1532725)))

(declare-fun b!2406896 () Bool)

(declare-fun res!1022257 () Bool)

(assert (=> b!2406896 (=> (not res!1022257) (not e!1532723))))

(assert (=> b!2406896 (= res!1022257 call!147040)))

(assert (=> b!2406896 (= e!1532727 e!1532723)))

(declare-fun b!2406897 () Bool)

(declare-fun e!1532724 () Bool)

(assert (=> b!2406897 (= e!1532724 call!147040)))

(declare-fun b!2406898 () Bool)

(assert (=> b!2406898 (= e!1532726 e!1532724)))

(declare-fun res!1022259 () Bool)

(assert (=> b!2406898 (=> (not res!1022259) (not e!1532724))))

(assert (=> b!2406898 (= res!1022259 call!147039)))

(declare-fun b!2406899 () Bool)

(assert (=> b!2406899 (= e!1532725 e!1532721)))

(assert (=> b!2406899 (= c!383374 (is-Star!7060 (head!5343 l!9164)))))

(assert (= (and d!700161 (not res!1022260)) b!2406899))

(assert (= (and b!2406899 c!383374) b!2406895))

(assert (= (and b!2406899 (not c!383374)) b!2406893))

(assert (= (and b!2406895 res!1022258) b!2406894))

(assert (= (and b!2406893 c!383375) b!2406896))

(assert (= (and b!2406893 (not c!383375)) b!2406892))

(assert (= (and b!2406896 res!1022257) b!2406891))

(assert (= (and b!2406892 (not res!1022261)) b!2406898))

(assert (= (and b!2406898 res!1022259) b!2406897))

(assert (= (or b!2406896 b!2406897) bm!147035))

(assert (= (or b!2406891 b!2406898) bm!147034))

(assert (= (or b!2406894 bm!147035) bm!147036))

(declare-fun m!2800231 () Bool)

(assert (=> bm!147034 m!2800231))

(declare-fun m!2800233 () Bool)

(assert (=> bm!147036 m!2800233))

(declare-fun m!2800235 () Bool)

(assert (=> b!2406895 m!2800235))

(assert (=> b!2406817 d!700161))

(declare-fun d!700163 () Bool)

(assert (=> d!700163 (= (head!5343 l!9164) (h!33661 l!9164))))

(assert (=> b!2406817 d!700163))

(declare-fun bs!463317 () Bool)

(declare-fun d!700165 () Bool)

(assert (= bs!463317 (and d!700165 start!235934)))

(declare-fun lambda!90558 () Int)

(assert (=> bs!463317 (= lambda!90558 lambda!90552)))

(declare-fun b!2406929 () Bool)

(declare-fun e!1532750 () Bool)

(declare-fun lt!873051 () Regex!7060)

(declare-fun isConcat!125 (Regex!7060) Bool)

(assert (=> b!2406929 (= e!1532750 (isConcat!125 lt!873051))))

(declare-fun b!2406930 () Bool)

(assert (=> b!2406930 (= e!1532750 (= lt!873051 (head!5343 l!9164)))))

(declare-fun b!2406931 () Bool)

(declare-fun e!1532748 () Bool)

(assert (=> b!2406931 (= e!1532748 (isEmpty!16265 (t!208335 l!9164)))))

(declare-fun b!2406933 () Bool)

(declare-fun e!1532749 () Bool)

(assert (=> b!2406933 (= e!1532749 e!1532750)))

(declare-fun c!383387 () Bool)

(assert (=> b!2406933 (= c!383387 (isEmpty!16265 (tail!3615 l!9164)))))

(declare-fun b!2406934 () Bool)

(declare-fun e!1532752 () Bool)

(assert (=> b!2406934 (= e!1532752 e!1532749)))

(declare-fun c!383386 () Bool)

(assert (=> b!2406934 (= c!383386 (isEmpty!16265 l!9164))))

(declare-fun b!2406935 () Bool)

(declare-fun isEmptyExpr!125 (Regex!7060) Bool)

(assert (=> b!2406935 (= e!1532749 (isEmptyExpr!125 lt!873051))))

(declare-fun b!2406936 () Bool)

(declare-fun e!1532751 () Regex!7060)

(declare-fun e!1532747 () Regex!7060)

(assert (=> b!2406936 (= e!1532751 e!1532747)))

(declare-fun c!383389 () Bool)

(assert (=> b!2406936 (= c!383389 (is-Cons!28260 l!9164))))

(declare-fun b!2406932 () Bool)

(assert (=> b!2406932 (= e!1532747 (Concat!11696 (h!33661 l!9164) (generalisedConcat!161 (t!208335 l!9164))))))

(assert (=> d!700165 e!1532752))

(declare-fun res!1022271 () Bool)

(assert (=> d!700165 (=> (not res!1022271) (not e!1532752))))

(assert (=> d!700165 (= res!1022271 (validRegex!2784 lt!873051))))

(assert (=> d!700165 (= lt!873051 e!1532751)))

(declare-fun c!383388 () Bool)

(assert (=> d!700165 (= c!383388 e!1532748)))

(declare-fun res!1022272 () Bool)

(assert (=> d!700165 (=> (not res!1022272) (not e!1532748))))

(assert (=> d!700165 (= res!1022272 (is-Cons!28260 l!9164))))

(assert (=> d!700165 (forall!5694 l!9164 lambda!90558)))

(assert (=> d!700165 (= (generalisedConcat!161 l!9164) lt!873051)))

(declare-fun b!2406937 () Bool)

(assert (=> b!2406937 (= e!1532747 EmptyExpr!7060)))

(declare-fun b!2406938 () Bool)

(assert (=> b!2406938 (= e!1532751 (h!33661 l!9164))))

(assert (= (and d!700165 res!1022272) b!2406931))

(assert (= (and d!700165 c!383388) b!2406938))

(assert (= (and d!700165 (not c!383388)) b!2406936))

(assert (= (and b!2406936 c!383389) b!2406932))

(assert (= (and b!2406936 (not c!383389)) b!2406937))

(assert (= (and d!700165 res!1022271) b!2406934))

(assert (= (and b!2406934 c!383386) b!2406935))

(assert (= (and b!2406934 (not c!383386)) b!2406933))

(assert (= (and b!2406933 c!383387) b!2406930))

(assert (= (and b!2406933 (not c!383387)) b!2406929))

(declare-fun m!2800243 () Bool)

(assert (=> b!2406935 m!2800243))

(assert (=> b!2406934 m!2800193))

(declare-fun m!2800245 () Bool)

(assert (=> b!2406929 m!2800245))

(assert (=> b!2406933 m!2800197))

(assert (=> b!2406933 m!2800197))

(declare-fun m!2800247 () Bool)

(assert (=> b!2406933 m!2800247))

(declare-fun m!2800249 () Bool)

(assert (=> b!2406931 m!2800249))

(declare-fun m!2800251 () Bool)

(assert (=> b!2406932 m!2800251))

(assert (=> b!2406930 m!2800203))

(declare-fun m!2800253 () Bool)

(assert (=> d!700165 m!2800253))

(declare-fun m!2800255 () Bool)

(assert (=> d!700165 m!2800255))

(assert (=> b!2406811 d!700165))

(declare-fun b!2406987 () Bool)

(declare-fun e!1532785 () Bool)

(declare-fun lt!873056 () Bool)

(assert (=> b!2406987 (= e!1532785 (not lt!873056))))

(declare-fun b!2406988 () Bool)

(declare-fun e!1532782 () Bool)

(declare-fun e!1532779 () Bool)

(assert (=> b!2406988 (= e!1532782 e!1532779)))

(declare-fun res!1022296 () Bool)

(assert (=> b!2406988 (=> res!1022296 e!1532779)))

(declare-fun call!147047 () Bool)

(assert (=> b!2406988 (= res!1022296 call!147047)))

(declare-fun b!2406989 () Bool)

(declare-fun res!1022300 () Bool)

(declare-fun e!1532783 () Bool)

(assert (=> b!2406989 (=> res!1022300 e!1532783)))

(declare-fun e!1532784 () Bool)

(assert (=> b!2406989 (= res!1022300 e!1532784)))

(declare-fun res!1022298 () Bool)

(assert (=> b!2406989 (=> (not res!1022298) (not e!1532784))))

(assert (=> b!2406989 (= res!1022298 lt!873056)))

(declare-fun b!2406990 () Bool)

(declare-fun e!1532781 () Bool)

(assert (=> b!2406990 (= e!1532781 (= lt!873056 call!147047))))

(declare-fun b!2406991 () Bool)

(assert (=> b!2406991 (= e!1532783 e!1532782)))

(declare-fun res!1022297 () Bool)

(assert (=> b!2406991 (=> (not res!1022297) (not e!1532782))))

(assert (=> b!2406991 (= res!1022297 (not lt!873056))))

(declare-fun b!2406992 () Bool)

(declare-fun res!1022299 () Bool)

(assert (=> b!2406992 (=> res!1022299 e!1532783)))

(assert (=> b!2406992 (= res!1022299 (not (is-ElementMatch!7060 r!13927)))))

(assert (=> b!2406992 (= e!1532785 e!1532783)))

(declare-fun b!2406993 () Bool)

(declare-fun head!5345 (List!28359) C!14278)

(assert (=> b!2406993 (= e!1532779 (not (= (head!5345 s!9460) (c!383364 r!13927))))))

(declare-fun b!2406994 () Bool)

(declare-fun e!1532780 () Bool)

(assert (=> b!2406994 (= e!1532780 (nullable!2106 r!13927))))

(declare-fun b!2406995 () Bool)

(declare-fun derivativeStep!1763 (Regex!7060 C!14278) Regex!7060)

(declare-fun tail!3617 (List!28359) List!28359)

(assert (=> b!2406995 (= e!1532780 (matchR!3177 (derivativeStep!1763 r!13927 (head!5345 s!9460)) (tail!3617 s!9460)))))

(declare-fun d!700175 () Bool)

(assert (=> d!700175 e!1532781))

(declare-fun c!383405 () Bool)

(assert (=> d!700175 (= c!383405 (is-EmptyExpr!7060 r!13927))))

(assert (=> d!700175 (= lt!873056 e!1532780)))

(declare-fun c!383406 () Bool)

(declare-fun isEmpty!16267 (List!28359) Bool)

(assert (=> d!700175 (= c!383406 (isEmpty!16267 s!9460))))

(assert (=> d!700175 (validRegex!2784 r!13927)))

(assert (=> d!700175 (= (matchR!3177 r!13927 s!9460) lt!873056)))

(declare-fun b!2406996 () Bool)

(assert (=> b!2406996 (= e!1532781 e!1532785)))

(declare-fun c!383404 () Bool)

(assert (=> b!2406996 (= c!383404 (is-EmptyLang!7060 r!13927))))

(declare-fun b!2406997 () Bool)

(declare-fun res!1022293 () Bool)

(assert (=> b!2406997 (=> (not res!1022293) (not e!1532784))))

(assert (=> b!2406997 (= res!1022293 (isEmpty!16267 (tail!3617 s!9460)))))

(declare-fun b!2406998 () Bool)

(declare-fun res!1022294 () Bool)

(assert (=> b!2406998 (=> (not res!1022294) (not e!1532784))))

(assert (=> b!2406998 (= res!1022294 (not call!147047))))

(declare-fun b!2406999 () Bool)

(declare-fun res!1022295 () Bool)

(assert (=> b!2406999 (=> res!1022295 e!1532779)))

(assert (=> b!2406999 (= res!1022295 (not (isEmpty!16267 (tail!3617 s!9460))))))

(declare-fun bm!147042 () Bool)

(assert (=> bm!147042 (= call!147047 (isEmpty!16267 s!9460))))

(declare-fun b!2407000 () Bool)

(assert (=> b!2407000 (= e!1532784 (= (head!5345 s!9460) (c!383364 r!13927)))))

(assert (= (and d!700175 c!383406) b!2406994))

(assert (= (and d!700175 (not c!383406)) b!2406995))

(assert (= (and d!700175 c!383405) b!2406990))

(assert (= (and d!700175 (not c!383405)) b!2406996))

(assert (= (and b!2406996 c!383404) b!2406987))

(assert (= (and b!2406996 (not c!383404)) b!2406992))

(assert (= (and b!2406992 (not res!1022299)) b!2406989))

(assert (= (and b!2406989 res!1022298) b!2406998))

(assert (= (and b!2406998 res!1022294) b!2406997))

(assert (= (and b!2406997 res!1022293) b!2407000))

(assert (= (and b!2406989 (not res!1022300)) b!2406991))

(assert (= (and b!2406991 res!1022297) b!2406988))

(assert (= (and b!2406988 (not res!1022296)) b!2406999))

(assert (= (and b!2406999 (not res!1022295)) b!2406993))

(assert (= (or b!2406990 b!2406988 b!2406998) bm!147042))

(declare-fun m!2800257 () Bool)

(assert (=> b!2406993 m!2800257))

(assert (=> b!2406995 m!2800257))

(assert (=> b!2406995 m!2800257))

(declare-fun m!2800259 () Bool)

(assert (=> b!2406995 m!2800259))

(declare-fun m!2800261 () Bool)

(assert (=> b!2406995 m!2800261))

(assert (=> b!2406995 m!2800259))

(assert (=> b!2406995 m!2800261))

(declare-fun m!2800263 () Bool)

(assert (=> b!2406995 m!2800263))

(declare-fun m!2800265 () Bool)

(assert (=> d!700175 m!2800265))

(declare-fun m!2800267 () Bool)

(assert (=> d!700175 m!2800267))

(assert (=> b!2406999 m!2800261))

(assert (=> b!2406999 m!2800261))

(declare-fun m!2800269 () Bool)

(assert (=> b!2406999 m!2800269))

(assert (=> b!2406997 m!2800261))

(assert (=> b!2406997 m!2800261))

(assert (=> b!2406997 m!2800269))

(assert (=> b!2407000 m!2800257))

(declare-fun m!2800271 () Bool)

(assert (=> b!2406994 m!2800271))

(assert (=> bm!147042 m!2800265))

(assert (=> b!2406808 d!700175))

(declare-fun b!2407060 () Bool)

(assert (=> b!2407060 true))

(assert (=> b!2407060 true))

(declare-fun bs!463321 () Bool)

(declare-fun b!2407064 () Bool)

(assert (= bs!463321 (and b!2407064 b!2407060)))

(declare-fun lambda!90568 () Int)

(declare-fun lambda!90567 () Int)

(assert (=> bs!463321 (not (= lambda!90568 lambda!90567))))

(assert (=> b!2407064 true))

(assert (=> b!2407064 true))

(declare-fun b!2407057 () Bool)

(declare-fun e!1532824 () Bool)

(assert (=> b!2407057 (= e!1532824 (matchRSpec!909 (regTwo!14633 r!13927) s!9460))))

(declare-fun b!2407058 () Bool)

(declare-fun c!383425 () Bool)

(assert (=> b!2407058 (= c!383425 (is-Union!7060 r!13927))))

(declare-fun e!1532820 () Bool)

(declare-fun e!1532825 () Bool)

(assert (=> b!2407058 (= e!1532820 e!1532825)))

(declare-fun b!2407059 () Bool)

(assert (=> b!2407059 (= e!1532825 e!1532824)))

(declare-fun res!1022325 () Bool)

(assert (=> b!2407059 (= res!1022325 (matchRSpec!909 (regOne!14633 r!13927) s!9460))))

(assert (=> b!2407059 (=> res!1022325 e!1532824)))

(declare-fun e!1532826 () Bool)

(declare-fun call!147053 () Bool)

(assert (=> b!2407060 (= e!1532826 call!147053)))

(declare-fun bm!147047 () Bool)

(declare-fun call!147052 () Bool)

(assert (=> bm!147047 (= call!147052 (isEmpty!16267 s!9460))))

(declare-fun d!700177 () Bool)

(declare-fun c!383426 () Bool)

(assert (=> d!700177 (= c!383426 (is-EmptyExpr!7060 r!13927))))

(declare-fun e!1532821 () Bool)

(assert (=> d!700177 (= (matchRSpec!909 r!13927 s!9460) e!1532821)))

(declare-fun bm!147048 () Bool)

(declare-fun c!383423 () Bool)

(declare-fun Exists!1115 (Int) Bool)

(assert (=> bm!147048 (= call!147053 (Exists!1115 (ite c!383423 lambda!90567 lambda!90568)))))

(declare-fun b!2407061 () Bool)

(declare-fun res!1022326 () Bool)

(assert (=> b!2407061 (=> res!1022326 e!1532826)))

(assert (=> b!2407061 (= res!1022326 call!147052)))

(declare-fun e!1532823 () Bool)

(assert (=> b!2407061 (= e!1532823 e!1532826)))

(declare-fun b!2407062 () Bool)

(declare-fun e!1532822 () Bool)

(assert (=> b!2407062 (= e!1532821 e!1532822)))

(declare-fun res!1022327 () Bool)

(assert (=> b!2407062 (= res!1022327 (not (is-EmptyLang!7060 r!13927)))))

(assert (=> b!2407062 (=> (not res!1022327) (not e!1532822))))

(declare-fun b!2407063 () Bool)

(assert (=> b!2407063 (= e!1532825 e!1532823)))

(assert (=> b!2407063 (= c!383423 (is-Star!7060 r!13927))))

(assert (=> b!2407064 (= e!1532823 call!147053)))

(declare-fun b!2407065 () Bool)

(assert (=> b!2407065 (= e!1532821 call!147052)))

(declare-fun b!2407066 () Bool)

(assert (=> b!2407066 (= e!1532820 (= s!9460 (Cons!28261 (c!383364 r!13927) Nil!28261)))))

(declare-fun b!2407067 () Bool)

(declare-fun c!383424 () Bool)

(assert (=> b!2407067 (= c!383424 (is-ElementMatch!7060 r!13927))))

(assert (=> b!2407067 (= e!1532822 e!1532820)))

(assert (= (and d!700177 c!383426) b!2407065))

(assert (= (and d!700177 (not c!383426)) b!2407062))

(assert (= (and b!2407062 res!1022327) b!2407067))

(assert (= (and b!2407067 c!383424) b!2407066))

(assert (= (and b!2407067 (not c!383424)) b!2407058))

(assert (= (and b!2407058 c!383425) b!2407059))

(assert (= (and b!2407058 (not c!383425)) b!2407063))

(assert (= (and b!2407059 (not res!1022325)) b!2407057))

(assert (= (and b!2407063 c!383423) b!2407061))

(assert (= (and b!2407063 (not c!383423)) b!2407064))

(assert (= (and b!2407061 (not res!1022326)) b!2407060))

(assert (= (or b!2407060 b!2407064) bm!147048))

(assert (= (or b!2407065 b!2407061) bm!147047))

(declare-fun m!2800309 () Bool)

(assert (=> b!2407057 m!2800309))

(declare-fun m!2800311 () Bool)

(assert (=> b!2407059 m!2800311))

(assert (=> bm!147047 m!2800265))

(declare-fun m!2800313 () Bool)

(assert (=> bm!147048 m!2800313))

(assert (=> b!2406808 d!700177))

(declare-fun d!700185 () Bool)

(assert (=> d!700185 (= (matchR!3177 r!13927 s!9460) (matchRSpec!909 r!13927 s!9460))))

(declare-fun lt!873061 () Unit!41391)

(declare-fun choose!14231 (Regex!7060 List!28359) Unit!41391)

(assert (=> d!700185 (= lt!873061 (choose!14231 r!13927 s!9460))))

(assert (=> d!700185 (validRegex!2784 r!13927)))

(assert (=> d!700185 (= (mainMatchTheorem!909 r!13927 s!9460) lt!873061)))

(declare-fun bs!463322 () Bool)

(assert (= bs!463322 d!700185))

(assert (=> bs!463322 m!2800187))

(assert (=> bs!463322 m!2800189))

(declare-fun m!2800315 () Bool)

(assert (=> bs!463322 m!2800315))

(assert (=> bs!463322 m!2800267))

(assert (=> b!2406808 d!700185))

(declare-fun d!700187 () Bool)

(declare-fun res!1022334 () Bool)

(declare-fun e!1532833 () Bool)

(assert (=> d!700187 (=> res!1022334 e!1532833)))

(assert (=> d!700187 (= res!1022334 (is-Nil!28260 l!9164))))

(assert (=> d!700187 (= (forall!5694 l!9164 lambda!90552) e!1532833)))

(declare-fun b!2407078 () Bool)

(declare-fun e!1532834 () Bool)

(assert (=> b!2407078 (= e!1532833 e!1532834)))

(declare-fun res!1022335 () Bool)

(assert (=> b!2407078 (=> (not res!1022335) (not e!1532834))))

(declare-fun dynLambda!12169 (Int Regex!7060) Bool)

(assert (=> b!2407078 (= res!1022335 (dynLambda!12169 lambda!90552 (h!33661 l!9164)))))

(declare-fun b!2407079 () Bool)

(assert (=> b!2407079 (= e!1532834 (forall!5694 (t!208335 l!9164) lambda!90552))))

(assert (= (and d!700187 (not res!1022334)) b!2407078))

(assert (= (and b!2407078 res!1022335) b!2407079))

(declare-fun b_lambda!74437 () Bool)

(assert (=> (not b_lambda!74437) (not b!2407078)))

(declare-fun m!2800317 () Bool)

(assert (=> b!2407078 m!2800317))

(declare-fun m!2800319 () Bool)

(assert (=> b!2407079 m!2800319))

(assert (=> start!235934 d!700187))

(declare-fun d!700189 () Bool)

(assert (=> d!700189 (= (isEmpty!16265 l!9164) (is-Nil!28260 l!9164))))

(assert (=> b!2406807 d!700189))

(declare-fun d!700191 () Bool)

(assert (=> d!700191 (= (isEmpty!16265 lt!873042) (is-Nil!28260 lt!873042))))

(assert (=> b!2406814 d!700191))

(declare-fun d!700193 () Bool)

(assert (=> d!700193 (= (tail!3615 l!9164) (t!208335 l!9164))))

(assert (=> b!2406814 d!700193))

(declare-fun bs!463323 () Bool)

(declare-fun d!700195 () Bool)

(assert (= bs!463323 (and d!700195 start!235934)))

(declare-fun lambda!90569 () Int)

(assert (=> bs!463323 (= lambda!90569 lambda!90552)))

(declare-fun bs!463324 () Bool)

(assert (= bs!463324 (and d!700195 d!700165)))

(assert (=> bs!463324 (= lambda!90569 lambda!90558)))

(declare-fun b!2407080 () Bool)

(declare-fun e!1532838 () Bool)

(declare-fun lt!873062 () Regex!7060)

(assert (=> b!2407080 (= e!1532838 (isConcat!125 lt!873062))))

(declare-fun b!2407081 () Bool)

(assert (=> b!2407081 (= e!1532838 (= lt!873062 (head!5343 lt!873042)))))

(declare-fun b!2407082 () Bool)

(declare-fun e!1532836 () Bool)

(assert (=> b!2407082 (= e!1532836 (isEmpty!16265 (t!208335 lt!873042)))))

(declare-fun b!2407084 () Bool)

(declare-fun e!1532837 () Bool)

(assert (=> b!2407084 (= e!1532837 e!1532838)))

(declare-fun c!383428 () Bool)

(assert (=> b!2407084 (= c!383428 (isEmpty!16265 (tail!3615 lt!873042)))))

(declare-fun b!2407085 () Bool)

(declare-fun e!1532840 () Bool)

(assert (=> b!2407085 (= e!1532840 e!1532837)))

(declare-fun c!383427 () Bool)

(assert (=> b!2407085 (= c!383427 (isEmpty!16265 lt!873042))))

(declare-fun b!2407086 () Bool)

(assert (=> b!2407086 (= e!1532837 (isEmptyExpr!125 lt!873062))))

(declare-fun b!2407087 () Bool)

(declare-fun e!1532839 () Regex!7060)

(declare-fun e!1532835 () Regex!7060)

(assert (=> b!2407087 (= e!1532839 e!1532835)))

(declare-fun c!383430 () Bool)

(assert (=> b!2407087 (= c!383430 (is-Cons!28260 lt!873042))))

(declare-fun b!2407083 () Bool)

(assert (=> b!2407083 (= e!1532835 (Concat!11696 (h!33661 lt!873042) (generalisedConcat!161 (t!208335 lt!873042))))))

(assert (=> d!700195 e!1532840))

(declare-fun res!1022336 () Bool)

(assert (=> d!700195 (=> (not res!1022336) (not e!1532840))))

(assert (=> d!700195 (= res!1022336 (validRegex!2784 lt!873062))))

(assert (=> d!700195 (= lt!873062 e!1532839)))

(declare-fun c!383429 () Bool)

(assert (=> d!700195 (= c!383429 e!1532836)))

(declare-fun res!1022337 () Bool)

(assert (=> d!700195 (=> (not res!1022337) (not e!1532836))))

(assert (=> d!700195 (= res!1022337 (is-Cons!28260 lt!873042))))

(assert (=> d!700195 (forall!5694 lt!873042 lambda!90569)))

(assert (=> d!700195 (= (generalisedConcat!161 lt!873042) lt!873062)))

(declare-fun b!2407088 () Bool)

(assert (=> b!2407088 (= e!1532835 EmptyExpr!7060)))

(declare-fun b!2407089 () Bool)

(assert (=> b!2407089 (= e!1532839 (h!33661 lt!873042))))

(assert (= (and d!700195 res!1022337) b!2407082))

(assert (= (and d!700195 c!383429) b!2407089))

(assert (= (and d!700195 (not c!383429)) b!2407087))

(assert (= (and b!2407087 c!383430) b!2407083))

(assert (= (and b!2407087 (not c!383430)) b!2407088))

(assert (= (and d!700195 res!1022336) b!2407085))

(assert (= (and b!2407085 c!383427) b!2407086))

(assert (= (and b!2407085 (not c!383427)) b!2407084))

(assert (= (and b!2407084 c!383428) b!2407081))

(assert (= (and b!2407084 (not c!383428)) b!2407080))

(declare-fun m!2800321 () Bool)

(assert (=> b!2407086 m!2800321))

(assert (=> b!2407085 m!2800195))

(declare-fun m!2800323 () Bool)

(assert (=> b!2407080 m!2800323))

(declare-fun m!2800325 () Bool)

(assert (=> b!2407084 m!2800325))

(assert (=> b!2407084 m!2800325))

(declare-fun m!2800327 () Bool)

(assert (=> b!2407084 m!2800327))

(declare-fun m!2800329 () Bool)

(assert (=> b!2407082 m!2800329))

(declare-fun m!2800331 () Bool)

(assert (=> b!2407083 m!2800331))

(declare-fun m!2800333 () Bool)

(assert (=> b!2407081 m!2800333))

(declare-fun m!2800335 () Bool)

(assert (=> d!700195 m!2800335))

(declare-fun m!2800337 () Bool)

(assert (=> d!700195 m!2800337))

(assert (=> b!2406816 d!700195))

(declare-fun b!2407102 () Bool)

(declare-fun e!1532843 () Bool)

(declare-fun tp!765905 () Bool)

(assert (=> b!2407102 (= e!1532843 tp!765905)))

(declare-fun b!2407100 () Bool)

(assert (=> b!2407100 (= e!1532843 tp_is_empty!11533)))

(declare-fun b!2407101 () Bool)

(declare-fun tp!765902 () Bool)

(declare-fun tp!765903 () Bool)

(assert (=> b!2407101 (= e!1532843 (and tp!765902 tp!765903))))

(declare-fun b!2407103 () Bool)

(declare-fun tp!765906 () Bool)

(declare-fun tp!765904 () Bool)

(assert (=> b!2407103 (= e!1532843 (and tp!765906 tp!765904))))

(assert (=> b!2406812 (= tp!765867 e!1532843)))

(assert (= (and b!2406812 (is-ElementMatch!7060 (h!33661 l!9164))) b!2407100))

(assert (= (and b!2406812 (is-Concat!11696 (h!33661 l!9164))) b!2407101))

(assert (= (and b!2406812 (is-Star!7060 (h!33661 l!9164))) b!2407102))

(assert (= (and b!2406812 (is-Union!7060 (h!33661 l!9164))) b!2407103))

(declare-fun b!2407108 () Bool)

(declare-fun e!1532846 () Bool)

(declare-fun tp!765911 () Bool)

(declare-fun tp!765912 () Bool)

(assert (=> b!2407108 (= e!1532846 (and tp!765911 tp!765912))))

(assert (=> b!2406812 (= tp!765862 e!1532846)))

(assert (= (and b!2406812 (is-Cons!28260 (t!208335 l!9164))) b!2407108))

(declare-fun b!2407111 () Bool)

(declare-fun e!1532847 () Bool)

(declare-fun tp!765916 () Bool)

(assert (=> b!2407111 (= e!1532847 tp!765916)))

(declare-fun b!2407109 () Bool)

(assert (=> b!2407109 (= e!1532847 tp_is_empty!11533)))

(declare-fun b!2407110 () Bool)

(declare-fun tp!765913 () Bool)

(declare-fun tp!765914 () Bool)

(assert (=> b!2407110 (= e!1532847 (and tp!765913 tp!765914))))

(declare-fun b!2407112 () Bool)

(declare-fun tp!765917 () Bool)

(declare-fun tp!765915 () Bool)

(assert (=> b!2407112 (= e!1532847 (and tp!765917 tp!765915))))

(assert (=> b!2406813 (= tp!765866 e!1532847)))

(assert (= (and b!2406813 (is-ElementMatch!7060 (regOne!14633 r!13927))) b!2407109))

(assert (= (and b!2406813 (is-Concat!11696 (regOne!14633 r!13927))) b!2407110))

(assert (= (and b!2406813 (is-Star!7060 (regOne!14633 r!13927))) b!2407111))

(assert (= (and b!2406813 (is-Union!7060 (regOne!14633 r!13927))) b!2407112))

(declare-fun b!2407115 () Bool)

(declare-fun e!1532848 () Bool)

(declare-fun tp!765921 () Bool)

(assert (=> b!2407115 (= e!1532848 tp!765921)))

(declare-fun b!2407113 () Bool)

(assert (=> b!2407113 (= e!1532848 tp_is_empty!11533)))

(declare-fun b!2407114 () Bool)

(declare-fun tp!765918 () Bool)

(declare-fun tp!765919 () Bool)

(assert (=> b!2407114 (= e!1532848 (and tp!765918 tp!765919))))

(declare-fun b!2407116 () Bool)

(declare-fun tp!765922 () Bool)

(declare-fun tp!765920 () Bool)

(assert (=> b!2407116 (= e!1532848 (and tp!765922 tp!765920))))

(assert (=> b!2406813 (= tp!765861 e!1532848)))

(assert (= (and b!2406813 (is-ElementMatch!7060 (regTwo!14633 r!13927))) b!2407113))

(assert (= (and b!2406813 (is-Concat!11696 (regTwo!14633 r!13927))) b!2407114))

(assert (= (and b!2406813 (is-Star!7060 (regTwo!14633 r!13927))) b!2407115))

(assert (= (and b!2406813 (is-Union!7060 (regTwo!14633 r!13927))) b!2407116))

(declare-fun b!2407121 () Bool)

(declare-fun e!1532851 () Bool)

(declare-fun tp!765925 () Bool)

(assert (=> b!2407121 (= e!1532851 (and tp_is_empty!11533 tp!765925))))

(assert (=> b!2406809 (= tp!765864 e!1532851)))

(assert (= (and b!2406809 (is-Cons!28261 (t!208336 s!9460))) b!2407121))

(declare-fun b!2407124 () Bool)

(declare-fun e!1532852 () Bool)

(declare-fun tp!765929 () Bool)

(assert (=> b!2407124 (= e!1532852 tp!765929)))

(declare-fun b!2407122 () Bool)

(assert (=> b!2407122 (= e!1532852 tp_is_empty!11533)))

(declare-fun b!2407123 () Bool)

(declare-fun tp!765926 () Bool)

(declare-fun tp!765927 () Bool)

(assert (=> b!2407123 (= e!1532852 (and tp!765926 tp!765927))))

(declare-fun b!2407125 () Bool)

(declare-fun tp!765930 () Bool)

(declare-fun tp!765928 () Bool)

(assert (=> b!2407125 (= e!1532852 (and tp!765930 tp!765928))))

(assert (=> b!2406810 (= tp!765865 e!1532852)))

(assert (= (and b!2406810 (is-ElementMatch!7060 (regOne!14632 r!13927))) b!2407122))

(assert (= (and b!2406810 (is-Concat!11696 (regOne!14632 r!13927))) b!2407123))

(assert (= (and b!2406810 (is-Star!7060 (regOne!14632 r!13927))) b!2407124))

(assert (= (and b!2406810 (is-Union!7060 (regOne!14632 r!13927))) b!2407125))

(declare-fun b!2407128 () Bool)

(declare-fun e!1532853 () Bool)

(declare-fun tp!765934 () Bool)

(assert (=> b!2407128 (= e!1532853 tp!765934)))

(declare-fun b!2407126 () Bool)

(assert (=> b!2407126 (= e!1532853 tp_is_empty!11533)))

(declare-fun b!2407127 () Bool)

(declare-fun tp!765931 () Bool)

(declare-fun tp!765932 () Bool)

(assert (=> b!2407127 (= e!1532853 (and tp!765931 tp!765932))))

(declare-fun b!2407129 () Bool)

(declare-fun tp!765935 () Bool)

(declare-fun tp!765933 () Bool)

(assert (=> b!2407129 (= e!1532853 (and tp!765935 tp!765933))))

(assert (=> b!2406810 (= tp!765860 e!1532853)))

(assert (= (and b!2406810 (is-ElementMatch!7060 (regTwo!14632 r!13927))) b!2407126))

(assert (= (and b!2406810 (is-Concat!11696 (regTwo!14632 r!13927))) b!2407127))

(assert (= (and b!2406810 (is-Star!7060 (regTwo!14632 r!13927))) b!2407128))

(assert (= (and b!2406810 (is-Union!7060 (regTwo!14632 r!13927))) b!2407129))

(declare-fun b!2407132 () Bool)

(declare-fun e!1532854 () Bool)

(declare-fun tp!765939 () Bool)

(assert (=> b!2407132 (= e!1532854 tp!765939)))

(declare-fun b!2407130 () Bool)

(assert (=> b!2407130 (= e!1532854 tp_is_empty!11533)))

(declare-fun b!2407131 () Bool)

(declare-fun tp!765936 () Bool)

(declare-fun tp!765937 () Bool)

(assert (=> b!2407131 (= e!1532854 (and tp!765936 tp!765937))))

(declare-fun b!2407133 () Bool)

(declare-fun tp!765940 () Bool)

(declare-fun tp!765938 () Bool)

(assert (=> b!2407133 (= e!1532854 (and tp!765940 tp!765938))))

(assert (=> b!2406815 (= tp!765863 e!1532854)))

(assert (= (and b!2406815 (is-ElementMatch!7060 (reg!7389 r!13927))) b!2407130))

(assert (= (and b!2406815 (is-Concat!11696 (reg!7389 r!13927))) b!2407131))

(assert (= (and b!2406815 (is-Star!7060 (reg!7389 r!13927))) b!2407132))

(assert (= (and b!2406815 (is-Union!7060 (reg!7389 r!13927))) b!2407133))

(declare-fun b_lambda!74439 () Bool)

(assert (= b_lambda!74437 (or start!235934 b_lambda!74439)))

(declare-fun bs!463325 () Bool)

(declare-fun d!700197 () Bool)

(assert (= bs!463325 (and d!700197 start!235934)))

(assert (=> bs!463325 (= (dynLambda!12169 lambda!90552 (h!33661 l!9164)) (validRegex!2784 (h!33661 l!9164)))))

(declare-fun m!2800339 () Bool)

(assert (=> bs!463325 m!2800339))

(assert (=> b!2407078 d!700197))

(push 1)

(assert (not b!2406934))

(assert (not b!2407123))

(assert (not bm!147042))

(assert (not d!700185))

(assert (not b!2406993))

(assert (not b!2406929))

(assert (not b!2406895))

(assert (not b!2407086))

(assert (not b!2406997))

(assert (not b!2407115))

(assert (not d!700195))

(assert (not bm!147048))

(assert (not bs!463325))

(assert (not b!2407133))

(assert (not b!2406933))

(assert (not b!2407125))

(assert (not b!2406999))

(assert (not b!2407112))

(assert (not b!2406930))

(assert (not b!2407128))

(assert (not b!2407108))

(assert (not b!2406932))

(assert (not b!2407102))

(assert (not b!2407132))

(assert (not b!2406995))

(assert (not b!2407114))

(assert (not b!2407127))

(assert (not b!2407124))

(assert (not b_lambda!74439))

(assert (not b!2407081))

(assert tp_is_empty!11533)

(assert (not b!2407131))

(assert (not b!2407116))

(assert (not b!2406931))

(assert (not b!2407083))

(assert (not b!2407111))

(assert (not b!2407110))

(assert (not d!700165))

(assert (not b!2406994))

(assert (not b!2407085))

(assert (not d!700175))

(assert (not b!2406935))

(assert (not b!2407129))

(assert (not b!2407000))

(assert (not b!2407103))

(assert (not b!2407101))

(assert (not b!2407057))

(assert (not bm!147047))

(assert (not bm!147034))

(assert (not b!2407079))

(assert (not b!2407082))

(assert (not b!2407121))

(assert (not bm!147036))

(assert (not b!2407084))

(assert (not b!2407080))

(assert (not b!2407059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

