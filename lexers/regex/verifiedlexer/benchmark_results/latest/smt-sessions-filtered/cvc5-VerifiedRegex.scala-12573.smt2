; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697302 () Bool)

(assert start!697302)

(declare-fun b!7153716 () Bool)

(declare-fun e!4297703 () Bool)

(declare-datatypes ((C!36782 0))(
  ( (C!36783 (val!28339 Int)) )
))
(declare-datatypes ((Regex!18254 0))(
  ( (ElementMatch!18254 (c!1333321 C!36782)) (Concat!27099 (regOne!37020 Regex!18254) (regTwo!37020 Regex!18254)) (EmptyExpr!18254) (Star!18254 (reg!18583 Regex!18254)) (EmptyLang!18254) (Union!18254 (regOne!37021 Regex!18254) (regTwo!37021 Regex!18254)) )
))
(declare-datatypes ((List!69558 0))(
  ( (Nil!69434) (Cons!69434 (h!75882 Regex!18254) (t!383575 List!69558)) )
))
(declare-fun l!9132 () List!69558)

(declare-fun isEmpty!40122 (List!69558) Bool)

(assert (=> b!7153716 (= e!4297703 (not (isEmpty!40122 (t!383575 l!9132))))))

(declare-fun b!7153717 () Bool)

(declare-fun e!4297705 () Bool)

(declare-fun tp!1977304 () Bool)

(declare-fun tp!1977305 () Bool)

(assert (=> b!7153717 (= e!4297705 (and tp!1977304 tp!1977305))))

(declare-fun b!7153718 () Bool)

(declare-fun tp!1977306 () Bool)

(declare-fun tp!1977307 () Bool)

(assert (=> b!7153718 (= e!4297705 (and tp!1977306 tp!1977307))))

(declare-fun b!7153719 () Bool)

(declare-fun res!2917259 () Bool)

(declare-fun e!4297704 () Bool)

(assert (=> b!7153719 (=> (not res!2917259) (not e!4297704))))

(declare-fun r!13749 () Regex!18254)

(assert (=> b!7153719 (= res!2917259 (and (is-Cons!69434 l!9132) (is-Union!18254 r!13749)))))

(declare-fun b!7153720 () Bool)

(declare-fun tp_is_empty!46141 () Bool)

(assert (=> b!7153720 (= e!4297705 tp_is_empty!46141)))

(declare-fun res!2917262 () Bool)

(assert (=> start!697302 (=> (not res!2917262) (not e!4297704))))

(declare-fun lambda!436217 () Int)

(declare-fun forall!17094 (List!69558 Int) Bool)

(assert (=> start!697302 (= res!2917262 (forall!17094 l!9132 lambda!436217))))

(assert (=> start!697302 e!4297704))

(declare-fun e!4297706 () Bool)

(assert (=> start!697302 e!4297706))

(assert (=> start!697302 e!4297705))

(declare-fun b!7153721 () Bool)

(declare-fun tp!1977308 () Bool)

(declare-fun tp!1977310 () Bool)

(assert (=> b!7153721 (= e!4297706 (and tp!1977308 tp!1977310))))

(declare-fun b!7153722 () Bool)

(assert (=> b!7153722 (= e!4297704 (not (forall!17094 (t!383575 l!9132) lambda!436217)))))

(declare-fun b!7153723 () Bool)

(declare-fun tp!1977309 () Bool)

(assert (=> b!7153723 (= e!4297705 tp!1977309)))

(declare-fun b!7153724 () Bool)

(declare-fun res!2917258 () Bool)

(assert (=> b!7153724 (=> (not res!2917258) (not e!4297704))))

(declare-fun generalisedUnion!2717 (List!69558) Regex!18254)

(assert (=> b!7153724 (= res!2917258 (= r!13749 (generalisedUnion!2717 l!9132)))))

(declare-fun b!7153725 () Bool)

(declare-fun res!2917260 () Bool)

(assert (=> b!7153725 (=> (not res!2917260) (not e!4297704))))

(assert (=> b!7153725 (= res!2917260 e!4297703)))

(declare-fun res!2917261 () Bool)

(assert (=> b!7153725 (=> res!2917261 e!4297703)))

(assert (=> b!7153725 (= res!2917261 (not (is-Cons!69434 l!9132)))))

(assert (= (and start!697302 res!2917262) b!7153724))

(assert (= (and b!7153724 res!2917258) b!7153725))

(assert (= (and b!7153725 (not res!2917261)) b!7153716))

(assert (= (and b!7153725 res!2917260) b!7153719))

(assert (= (and b!7153719 res!2917259) b!7153722))

(assert (= (and start!697302 (is-Cons!69434 l!9132)) b!7153721))

(assert (= (and start!697302 (is-ElementMatch!18254 r!13749)) b!7153720))

(assert (= (and start!697302 (is-Concat!27099 r!13749)) b!7153717))

(assert (= (and start!697302 (is-Star!18254 r!13749)) b!7153723))

(assert (= (and start!697302 (is-Union!18254 r!13749)) b!7153718))

(declare-fun m!7861848 () Bool)

(assert (=> b!7153716 m!7861848))

(declare-fun m!7861850 () Bool)

(assert (=> start!697302 m!7861850))

(declare-fun m!7861852 () Bool)

(assert (=> b!7153722 m!7861852))

(declare-fun m!7861854 () Bool)

(assert (=> b!7153724 m!7861854))

(push 1)

(assert (not b!7153717))

(assert (not b!7153718))

(assert (not b!7153723))

(assert (not b!7153724))

(assert (not b!7153722))

(assert (not start!697302))

(assert tp_is_empty!46141)

(assert (not b!7153721))

(assert (not b!7153716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229224 () Bool)

(declare-fun res!2917282 () Bool)

(declare-fun e!4297723 () Bool)

(assert (=> d!2229224 (=> res!2917282 e!4297723)))

(assert (=> d!2229224 (= res!2917282 (is-Nil!69434 l!9132))))

(assert (=> d!2229224 (= (forall!17094 l!9132 lambda!436217) e!4297723)))

(declare-fun b!7153760 () Bool)

(declare-fun e!4297724 () Bool)

(assert (=> b!7153760 (= e!4297723 e!4297724)))

(declare-fun res!2917283 () Bool)

(assert (=> b!7153760 (=> (not res!2917283) (not e!4297724))))

(declare-fun dynLambda!28290 (Int Regex!18254) Bool)

(assert (=> b!7153760 (= res!2917283 (dynLambda!28290 lambda!436217 (h!75882 l!9132)))))

(declare-fun b!7153761 () Bool)

(assert (=> b!7153761 (= e!4297724 (forall!17094 (t!383575 l!9132) lambda!436217))))

(assert (= (and d!2229224 (not res!2917282)) b!7153760))

(assert (= (and b!7153760 res!2917283) b!7153761))

(declare-fun b_lambda!273167 () Bool)

(assert (=> (not b_lambda!273167) (not b!7153760)))

(declare-fun m!7861864 () Bool)

(assert (=> b!7153760 m!7861864))

(assert (=> b!7153761 m!7861852))

(assert (=> start!697302 d!2229224))

(declare-fun bs!1889654 () Bool)

(declare-fun d!2229226 () Bool)

(assert (= bs!1889654 (and d!2229226 start!697302)))

(declare-fun lambda!436225 () Int)

(assert (=> bs!1889654 (= lambda!436225 lambda!436217)))

(declare-fun b!7153786 () Bool)

(declare-fun e!4297746 () Bool)

(declare-fun lt!2569121 () Regex!18254)

(declare-fun isUnion!1546 (Regex!18254) Bool)

(assert (=> b!7153786 (= e!4297746 (isUnion!1546 lt!2569121))))

(declare-fun e!4297744 () Bool)

(assert (=> d!2229226 e!4297744))

(declare-fun res!2917293 () Bool)

(assert (=> d!2229226 (=> (not res!2917293) (not e!4297744))))

(declare-fun validRegex!9402 (Regex!18254) Bool)

(assert (=> d!2229226 (= res!2917293 (validRegex!9402 lt!2569121))))

(declare-fun e!4297742 () Regex!18254)

(assert (=> d!2229226 (= lt!2569121 e!4297742)))

(declare-fun c!1333331 () Bool)

(declare-fun e!4297741 () Bool)

(assert (=> d!2229226 (= c!1333331 e!4297741)))

(declare-fun res!2917292 () Bool)

(assert (=> d!2229226 (=> (not res!2917292) (not e!4297741))))

(assert (=> d!2229226 (= res!2917292 (is-Cons!69434 l!9132))))

(assert (=> d!2229226 (forall!17094 l!9132 lambda!436225)))

(assert (=> d!2229226 (= (generalisedUnion!2717 l!9132) lt!2569121)))

(declare-fun b!7153787 () Bool)

(declare-fun head!14554 (List!69558) Regex!18254)

(assert (=> b!7153787 (= e!4297746 (= lt!2569121 (head!14554 l!9132)))))

(declare-fun b!7153788 () Bool)

(declare-fun e!4297743 () Regex!18254)

(assert (=> b!7153788 (= e!4297743 EmptyLang!18254)))

(declare-fun b!7153789 () Bool)

(declare-fun e!4297745 () Bool)

(declare-fun isEmptyLang!2119 (Regex!18254) Bool)

(assert (=> b!7153789 (= e!4297745 (isEmptyLang!2119 lt!2569121))))

(declare-fun b!7153790 () Bool)

(assert (=> b!7153790 (= e!4297743 (Union!18254 (h!75882 l!9132) (generalisedUnion!2717 (t!383575 l!9132))))))

(declare-fun b!7153791 () Bool)

(assert (=> b!7153791 (= e!4297742 (h!75882 l!9132))))

(declare-fun b!7153792 () Bool)

(assert (=> b!7153792 (= e!4297744 e!4297745)))

(declare-fun c!1333333 () Bool)

(assert (=> b!7153792 (= c!1333333 (isEmpty!40122 l!9132))))

(declare-fun b!7153793 () Bool)

(assert (=> b!7153793 (= e!4297745 e!4297746)))

(declare-fun c!1333334 () Bool)

(declare-fun tail!14023 (List!69558) List!69558)

(assert (=> b!7153793 (= c!1333334 (isEmpty!40122 (tail!14023 l!9132)))))

(declare-fun b!7153794 () Bool)

(assert (=> b!7153794 (= e!4297742 e!4297743)))

(declare-fun c!1333332 () Bool)

(assert (=> b!7153794 (= c!1333332 (is-Cons!69434 l!9132))))

(declare-fun b!7153795 () Bool)

(assert (=> b!7153795 (= e!4297741 (isEmpty!40122 (t!383575 l!9132)))))

(assert (= (and d!2229226 res!2917292) b!7153795))

(assert (= (and d!2229226 c!1333331) b!7153791))

(assert (= (and d!2229226 (not c!1333331)) b!7153794))

(assert (= (and b!7153794 c!1333332) b!7153790))

(assert (= (and b!7153794 (not c!1333332)) b!7153788))

(assert (= (and d!2229226 res!2917293) b!7153792))

(assert (= (and b!7153792 c!1333333) b!7153789))

(assert (= (and b!7153792 (not c!1333333)) b!7153793))

(assert (= (and b!7153793 c!1333334) b!7153787))

(assert (= (and b!7153793 (not c!1333334)) b!7153786))

(declare-fun m!7861866 () Bool)

(assert (=> b!7153787 m!7861866))

(declare-fun m!7861868 () Bool)

(assert (=> b!7153792 m!7861868))

(assert (=> b!7153795 m!7861848))

(declare-fun m!7861870 () Bool)

(assert (=> d!2229226 m!7861870))

(declare-fun m!7861872 () Bool)

(assert (=> d!2229226 m!7861872))

(declare-fun m!7861874 () Bool)

(assert (=> b!7153786 m!7861874))

(declare-fun m!7861876 () Bool)

(assert (=> b!7153790 m!7861876))

(declare-fun m!7861878 () Bool)

(assert (=> b!7153793 m!7861878))

(assert (=> b!7153793 m!7861878))

(declare-fun m!7861880 () Bool)

(assert (=> b!7153793 m!7861880))

(declare-fun m!7861882 () Bool)

(assert (=> b!7153789 m!7861882))

(assert (=> b!7153724 d!2229226))

(declare-fun d!2229230 () Bool)

(declare-fun res!2917294 () Bool)

(declare-fun e!4297747 () Bool)

(assert (=> d!2229230 (=> res!2917294 e!4297747)))

(assert (=> d!2229230 (= res!2917294 (is-Nil!69434 (t!383575 l!9132)))))

(assert (=> d!2229230 (= (forall!17094 (t!383575 l!9132) lambda!436217) e!4297747)))

(declare-fun b!7153796 () Bool)

(declare-fun e!4297748 () Bool)

(assert (=> b!7153796 (= e!4297747 e!4297748)))

(declare-fun res!2917295 () Bool)

(assert (=> b!7153796 (=> (not res!2917295) (not e!4297748))))

(assert (=> b!7153796 (= res!2917295 (dynLambda!28290 lambda!436217 (h!75882 (t!383575 l!9132))))))

(declare-fun b!7153797 () Bool)

(assert (=> b!7153797 (= e!4297748 (forall!17094 (t!383575 (t!383575 l!9132)) lambda!436217))))

(assert (= (and d!2229230 (not res!2917294)) b!7153796))

(assert (= (and b!7153796 res!2917295) b!7153797))

(declare-fun b_lambda!273169 () Bool)

(assert (=> (not b_lambda!273169) (not b!7153796)))

(declare-fun m!7861884 () Bool)

(assert (=> b!7153796 m!7861884))

(declare-fun m!7861886 () Bool)

(assert (=> b!7153797 m!7861886))

(assert (=> b!7153722 d!2229230))

(declare-fun d!2229232 () Bool)

(assert (=> d!2229232 (= (isEmpty!40122 (t!383575 l!9132)) (is-Nil!69434 (t!383575 l!9132)))))

(assert (=> b!7153716 d!2229232))

(declare-fun b!7153814 () Bool)

(declare-fun e!4297755 () Bool)

(declare-fun tp!1977345 () Bool)

(assert (=> b!7153814 (= e!4297755 tp!1977345)))

(assert (=> b!7153723 (= tp!1977309 e!4297755)))

(declare-fun b!7153812 () Bool)

(assert (=> b!7153812 (= e!4297755 tp_is_empty!46141)))

(declare-fun b!7153815 () Bool)

(declare-fun tp!1977342 () Bool)

(declare-fun tp!1977346 () Bool)

(assert (=> b!7153815 (= e!4297755 (and tp!1977342 tp!1977346))))

(declare-fun b!7153813 () Bool)

(declare-fun tp!1977343 () Bool)

(declare-fun tp!1977344 () Bool)

(assert (=> b!7153813 (= e!4297755 (and tp!1977343 tp!1977344))))

(assert (= (and b!7153723 (is-ElementMatch!18254 (reg!18583 r!13749))) b!7153812))

(assert (= (and b!7153723 (is-Concat!27099 (reg!18583 r!13749))) b!7153813))

(assert (= (and b!7153723 (is-Star!18254 (reg!18583 r!13749))) b!7153814))

(assert (= (and b!7153723 (is-Union!18254 (reg!18583 r!13749))) b!7153815))

(declare-fun b!7153818 () Bool)

(declare-fun e!4297756 () Bool)

(declare-fun tp!1977350 () Bool)

(assert (=> b!7153818 (= e!4297756 tp!1977350)))

(assert (=> b!7153718 (= tp!1977306 e!4297756)))

(declare-fun b!7153816 () Bool)

(assert (=> b!7153816 (= e!4297756 tp_is_empty!46141)))

(declare-fun b!7153819 () Bool)

(declare-fun tp!1977347 () Bool)

(declare-fun tp!1977351 () Bool)

(assert (=> b!7153819 (= e!4297756 (and tp!1977347 tp!1977351))))

(declare-fun b!7153817 () Bool)

(declare-fun tp!1977348 () Bool)

(declare-fun tp!1977349 () Bool)

(assert (=> b!7153817 (= e!4297756 (and tp!1977348 tp!1977349))))

(assert (= (and b!7153718 (is-ElementMatch!18254 (regOne!37021 r!13749))) b!7153816))

(assert (= (and b!7153718 (is-Concat!27099 (regOne!37021 r!13749))) b!7153817))

(assert (= (and b!7153718 (is-Star!18254 (regOne!37021 r!13749))) b!7153818))

(assert (= (and b!7153718 (is-Union!18254 (regOne!37021 r!13749))) b!7153819))

(declare-fun b!7153822 () Bool)

(declare-fun e!4297757 () Bool)

(declare-fun tp!1977355 () Bool)

(assert (=> b!7153822 (= e!4297757 tp!1977355)))

(assert (=> b!7153718 (= tp!1977307 e!4297757)))

(declare-fun b!7153820 () Bool)

(assert (=> b!7153820 (= e!4297757 tp_is_empty!46141)))

(declare-fun b!7153823 () Bool)

(declare-fun tp!1977352 () Bool)

(declare-fun tp!1977356 () Bool)

(assert (=> b!7153823 (= e!4297757 (and tp!1977352 tp!1977356))))

(declare-fun b!7153821 () Bool)

(declare-fun tp!1977353 () Bool)

(declare-fun tp!1977354 () Bool)

(assert (=> b!7153821 (= e!4297757 (and tp!1977353 tp!1977354))))

(assert (= (and b!7153718 (is-ElementMatch!18254 (regTwo!37021 r!13749))) b!7153820))

(assert (= (and b!7153718 (is-Concat!27099 (regTwo!37021 r!13749))) b!7153821))

(assert (= (and b!7153718 (is-Star!18254 (regTwo!37021 r!13749))) b!7153822))

(assert (= (and b!7153718 (is-Union!18254 (regTwo!37021 r!13749))) b!7153823))

(declare-fun b!7153826 () Bool)

(declare-fun e!4297758 () Bool)

(declare-fun tp!1977360 () Bool)

(assert (=> b!7153826 (= e!4297758 tp!1977360)))

(assert (=> b!7153717 (= tp!1977304 e!4297758)))

(declare-fun b!7153824 () Bool)

(assert (=> b!7153824 (= e!4297758 tp_is_empty!46141)))

(declare-fun b!7153827 () Bool)

(declare-fun tp!1977357 () Bool)

(declare-fun tp!1977361 () Bool)

(assert (=> b!7153827 (= e!4297758 (and tp!1977357 tp!1977361))))

(declare-fun b!7153825 () Bool)

(declare-fun tp!1977358 () Bool)

(declare-fun tp!1977359 () Bool)

(assert (=> b!7153825 (= e!4297758 (and tp!1977358 tp!1977359))))

(assert (= (and b!7153717 (is-ElementMatch!18254 (regOne!37020 r!13749))) b!7153824))

(assert (= (and b!7153717 (is-Concat!27099 (regOne!37020 r!13749))) b!7153825))

(assert (= (and b!7153717 (is-Star!18254 (regOne!37020 r!13749))) b!7153826))

(assert (= (and b!7153717 (is-Union!18254 (regOne!37020 r!13749))) b!7153827))

(declare-fun b!7153830 () Bool)

(declare-fun e!4297759 () Bool)

(declare-fun tp!1977365 () Bool)

(assert (=> b!7153830 (= e!4297759 tp!1977365)))

(assert (=> b!7153717 (= tp!1977305 e!4297759)))

(declare-fun b!7153828 () Bool)

(assert (=> b!7153828 (= e!4297759 tp_is_empty!46141)))

(declare-fun b!7153831 () Bool)

(declare-fun tp!1977362 () Bool)

(declare-fun tp!1977366 () Bool)

(assert (=> b!7153831 (= e!4297759 (and tp!1977362 tp!1977366))))

(declare-fun b!7153829 () Bool)

(declare-fun tp!1977363 () Bool)

(declare-fun tp!1977364 () Bool)

(assert (=> b!7153829 (= e!4297759 (and tp!1977363 tp!1977364))))

(assert (= (and b!7153717 (is-ElementMatch!18254 (regTwo!37020 r!13749))) b!7153828))

(assert (= (and b!7153717 (is-Concat!27099 (regTwo!37020 r!13749))) b!7153829))

(assert (= (and b!7153717 (is-Star!18254 (regTwo!37020 r!13749))) b!7153830))

(assert (= (and b!7153717 (is-Union!18254 (regTwo!37020 r!13749))) b!7153831))

(declare-fun b!7153834 () Bool)

(declare-fun e!4297760 () Bool)

(declare-fun tp!1977370 () Bool)

(assert (=> b!7153834 (= e!4297760 tp!1977370)))

(assert (=> b!7153721 (= tp!1977308 e!4297760)))

(declare-fun b!7153832 () Bool)

(assert (=> b!7153832 (= e!4297760 tp_is_empty!46141)))

(declare-fun b!7153835 () Bool)

(declare-fun tp!1977367 () Bool)

(declare-fun tp!1977371 () Bool)

(assert (=> b!7153835 (= e!4297760 (and tp!1977367 tp!1977371))))

(declare-fun b!7153833 () Bool)

(declare-fun tp!1977368 () Bool)

(declare-fun tp!1977369 () Bool)

(assert (=> b!7153833 (= e!4297760 (and tp!1977368 tp!1977369))))

(assert (= (and b!7153721 (is-ElementMatch!18254 (h!75882 l!9132))) b!7153832))

(assert (= (and b!7153721 (is-Concat!27099 (h!75882 l!9132))) b!7153833))

(assert (= (and b!7153721 (is-Star!18254 (h!75882 l!9132))) b!7153834))

(assert (= (and b!7153721 (is-Union!18254 (h!75882 l!9132))) b!7153835))

(declare-fun b!7153840 () Bool)

(declare-fun e!4297763 () Bool)

(declare-fun tp!1977376 () Bool)

(declare-fun tp!1977377 () Bool)

(assert (=> b!7153840 (= e!4297763 (and tp!1977376 tp!1977377))))

(assert (=> b!7153721 (= tp!1977310 e!4297763)))

(assert (= (and b!7153721 (is-Cons!69434 (t!383575 l!9132))) b!7153840))

(declare-fun b_lambda!273175 () Bool)

(assert (= b_lambda!273167 (or start!697302 b_lambda!273175)))

(declare-fun bs!1889655 () Bool)

(declare-fun d!2229240 () Bool)

(assert (= bs!1889655 (and d!2229240 start!697302)))

(assert (=> bs!1889655 (= (dynLambda!28290 lambda!436217 (h!75882 l!9132)) (validRegex!9402 (h!75882 l!9132)))))

(declare-fun m!7861894 () Bool)

(assert (=> bs!1889655 m!7861894))

(assert (=> b!7153760 d!2229240))

(declare-fun b_lambda!273177 () Bool)

(assert (= b_lambda!273169 (or start!697302 b_lambda!273177)))

(declare-fun bs!1889656 () Bool)

(declare-fun d!2229242 () Bool)

(assert (= bs!1889656 (and d!2229242 start!697302)))

(assert (=> bs!1889656 (= (dynLambda!28290 lambda!436217 (h!75882 (t!383575 l!9132))) (validRegex!9402 (h!75882 (t!383575 l!9132))))))

(declare-fun m!7861896 () Bool)

(assert (=> bs!1889656 m!7861896))

(assert (=> b!7153796 d!2229242))

(push 1)

(assert (not b!7153815))

(assert (not b!7153795))

(assert (not b!7153833))

(assert (not b!7153831))

(assert (not b!7153821))

(assert (not b!7153786))

(assert (not b!7153834))

(assert (not b!7153825))

(assert (not b!7153826))

(assert (not d!2229226))

(assert (not b!7153827))

(assert (not b!7153814))

(assert (not b!7153840))

(assert (not b!7153790))

(assert (not b!7153830))

(assert (not b!7153822))

(assert (not bs!1889656))

(assert (not b!7153761))

(assert (not b!7153823))

(assert (not b!7153818))

(assert (not b!7153817))

(assert (not b!7153819))

(assert (not b!7153789))

(assert (not b!7153787))

(assert (not b!7153792))

(assert (not b!7153797))

(assert (not b!7153813))

(assert (not b_lambda!273175))

(assert (not b!7153793))

(assert (not b!7153829))

(assert (not bs!1889655))

(assert (not b_lambda!273177))

(assert tp_is_empty!46141)

(assert (not b!7153835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

