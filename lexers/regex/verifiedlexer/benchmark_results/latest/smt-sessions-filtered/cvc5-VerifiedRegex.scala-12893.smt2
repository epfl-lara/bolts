; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711942 () Bool)

(assert start!711942)

(declare-fun b!7310648 () Bool)

(declare-fun lambda!451451 () Int)

(declare-fun lambda!451450 () Int)

(assert (=> b!7310648 (not (= lambda!451451 lambda!451450))))

(declare-fun res!2953204 () Bool)

(declare-fun e!4375668 () Bool)

(assert (=> start!711942 (=> (not res!2953204) (not e!4375668))))

(declare-datatypes ((C!38062 0))(
  ( (C!38063 (val!28979 Int)) )
))
(declare-datatypes ((Regex!18894 0))(
  ( (ElementMatch!18894 (c!1357449 C!38062)) (Concat!27739 (regOne!38300 Regex!18894) (regTwo!38300 Regex!18894)) (EmptyExpr!18894) (Star!18894 (reg!19223 Regex!18894)) (EmptyLang!18894) (Union!18894 (regOne!38301 Regex!18894) (regTwo!38301 Regex!18894)) )
))
(declare-datatypes ((List!71107 0))(
  ( (Nil!70983) (Cons!70983 (h!77431 Regex!18894) (t!385185 List!71107)) )
))
(declare-datatypes ((Context!15668 0))(
  ( (Context!15669 (exprs!8334 List!71107)) )
))
(declare-fun ct2!346 () Context!15668)

(declare-datatypes ((List!71108 0))(
  ( (Nil!70984) (Cons!70984 (h!77432 C!38062) (t!385186 List!71108)) )
))
(declare-fun s!7854 () List!71108)

(declare-fun matchZipper!3798 ((Set Context!15668) List!71108) Bool)

(assert (=> start!711942 (= res!2953204 (matchZipper!3798 (set.insert ct2!346 (as set.empty (Set Context!15668))) s!7854))))

(assert (=> start!711942 e!4375668))

(declare-fun e!4375666 () Bool)

(declare-fun inv!90246 (Context!15668) Bool)

(assert (=> start!711942 (and (inv!90246 ct2!346) e!4375666)))

(declare-fun e!4375664 () Bool)

(assert (=> start!711942 e!4375664))

(declare-fun ct1!250 () Context!15668)

(declare-fun e!4375665 () Bool)

(assert (=> start!711942 (and (inv!90246 ct1!250) e!4375665)))

(declare-fun e!4375667 () Bool)

(assert (=> b!7310648 (= e!4375668 e!4375667)))

(declare-fun res!2953205 () Bool)

(assert (=> b!7310648 (=> (not res!2953205) (not e!4375667))))

(declare-fun lt!2600116 () Context!15668)

(assert (=> b!7310648 (= res!2953205 (matchZipper!3798 (set.insert lt!2600116 (as set.empty (Set Context!15668))) s!7854))))

(declare-fun ++!16784 (List!71107 List!71107) List!71107)

(assert (=> b!7310648 (= lt!2600116 (Context!15669 (++!16784 (exprs!8334 ct1!250) (exprs!8334 ct2!346))))))

(declare-datatypes ((Unit!164386 0))(
  ( (Unit!164387) )
))
(declare-fun lt!2600114 () Unit!164386)

(declare-fun lemmaConcatPreservesForall!1641 (List!71107 List!71107 Int) Unit!164386)

(assert (=> b!7310648 (= lt!2600114 (lemmaConcatPreservesForall!1641 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451451))))

(declare-fun lt!2600115 () Unit!164386)

(assert (=> b!7310648 (= lt!2600115 (lemmaConcatPreservesForall!1641 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451450))))

(declare-fun b!7310649 () Bool)

(declare-fun res!2953207 () Bool)

(assert (=> b!7310649 (=> (not res!2953207) (not e!4375668))))

(declare-fun nullableContext!384 (Context!15668) Bool)

(assert (=> b!7310649 (= res!2953207 (nullableContext!384 ct1!250))))

(declare-fun b!7310650 () Bool)

(assert (=> b!7310650 (= e!4375667 (not (inv!90246 lt!2600116)))))

(declare-fun lt!2600117 () Unit!164386)

(assert (=> b!7310650 (= lt!2600117 (lemmaConcatPreservesForall!1641 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451451))))

(declare-fun b!7310651 () Bool)

(declare-fun tp!2074816 () Bool)

(assert (=> b!7310651 (= e!4375666 tp!2074816)))

(declare-fun b!7310652 () Bool)

(declare-fun tp!2074818 () Bool)

(assert (=> b!7310652 (= e!4375665 tp!2074818)))

(declare-fun b!7310653 () Bool)

(declare-fun res!2953203 () Bool)

(assert (=> b!7310653 (=> (not res!2953203) (not e!4375668))))

(assert (=> b!7310653 (= res!2953203 (nullableContext!384 ct2!346))))

(declare-fun b!7310654 () Bool)

(declare-fun tp_is_empty!47253 () Bool)

(declare-fun tp!2074817 () Bool)

(assert (=> b!7310654 (= e!4375664 (and tp_is_empty!47253 tp!2074817))))

(declare-fun b!7310655 () Bool)

(declare-fun res!2953206 () Bool)

(assert (=> b!7310655 (=> (not res!2953206) (not e!4375668))))

(assert (=> b!7310655 (= res!2953206 (not (is-Cons!70984 s!7854)))))

(assert (= (and start!711942 res!2953204) b!7310649))

(assert (= (and b!7310649 res!2953207) b!7310655))

(assert (= (and b!7310655 res!2953206) b!7310653))

(assert (= (and b!7310653 res!2953203) b!7310648))

(assert (= (and b!7310648 res!2953205) b!7310650))

(assert (= start!711942 b!7310651))

(assert (= (and start!711942 (is-Cons!70984 s!7854)) b!7310654))

(assert (= start!711942 b!7310652))

(declare-fun m!7974552 () Bool)

(assert (=> b!7310650 m!7974552))

(declare-fun m!7974554 () Bool)

(assert (=> b!7310650 m!7974554))

(declare-fun m!7974556 () Bool)

(assert (=> b!7310649 m!7974556))

(declare-fun m!7974558 () Bool)

(assert (=> start!711942 m!7974558))

(assert (=> start!711942 m!7974558))

(declare-fun m!7974560 () Bool)

(assert (=> start!711942 m!7974560))

(declare-fun m!7974562 () Bool)

(assert (=> start!711942 m!7974562))

(declare-fun m!7974564 () Bool)

(assert (=> start!711942 m!7974564))

(declare-fun m!7974566 () Bool)

(assert (=> b!7310653 m!7974566))

(assert (=> b!7310648 m!7974554))

(declare-fun m!7974568 () Bool)

(assert (=> b!7310648 m!7974568))

(assert (=> b!7310648 m!7974568))

(declare-fun m!7974570 () Bool)

(assert (=> b!7310648 m!7974570))

(declare-fun m!7974572 () Bool)

(assert (=> b!7310648 m!7974572))

(declare-fun m!7974574 () Bool)

(assert (=> b!7310648 m!7974574))

(push 1)

(assert (not b!7310652))

(assert (not b!7310653))

(assert (not b!7310654))

(assert (not b!7310649))

(assert (not b!7310650))

(assert (not b!7310651))

(assert (not b!7310648))

(assert tp_is_empty!47253)

(assert (not start!711942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1914383 () Bool)

(declare-fun d!2269702 () Bool)

(assert (= bs!1914383 (and d!2269702 b!7310648)))

(declare-fun lambda!451462 () Int)

(assert (=> bs!1914383 (not (= lambda!451462 lambda!451450))))

(assert (=> bs!1914383 (= lambda!451462 lambda!451451)))

(declare-fun forall!17711 (List!71107 Int) Bool)

(assert (=> d!2269702 (= (inv!90246 lt!2600116) (forall!17711 (exprs!8334 lt!2600116) lambda!451462))))

(declare-fun bs!1914384 () Bool)

(assert (= bs!1914384 d!2269702))

(declare-fun m!7974600 () Bool)

(assert (=> bs!1914384 m!7974600))

(assert (=> b!7310650 d!2269702))

(declare-fun d!2269706 () Bool)

(assert (=> d!2269706 (forall!17711 (++!16784 (exprs!8334 ct1!250) (exprs!8334 ct2!346)) lambda!451451)))

(declare-fun lt!2600132 () Unit!164386)

(declare-fun choose!56605 (List!71107 List!71107 Int) Unit!164386)

(assert (=> d!2269706 (= lt!2600132 (choose!56605 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451451))))

(assert (=> d!2269706 (forall!17711 (exprs!8334 ct1!250) lambda!451451)))

(assert (=> d!2269706 (= (lemmaConcatPreservesForall!1641 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451451) lt!2600132)))

(declare-fun bs!1914385 () Bool)

(assert (= bs!1914385 d!2269706))

(assert (=> bs!1914385 m!7974572))

(assert (=> bs!1914385 m!7974572))

(declare-fun m!7974602 () Bool)

(assert (=> bs!1914385 m!7974602))

(declare-fun m!7974604 () Bool)

(assert (=> bs!1914385 m!7974604))

(declare-fun m!7974606 () Bool)

(assert (=> bs!1914385 m!7974606))

(assert (=> b!7310650 d!2269706))

(declare-fun bs!1914387 () Bool)

(declare-fun d!2269708 () Bool)

(assert (= bs!1914387 (and d!2269708 b!7310648)))

(declare-fun lambda!451468 () Int)

(assert (=> bs!1914387 (= lambda!451468 lambda!451450)))

(assert (=> bs!1914387 (not (= lambda!451468 lambda!451451))))

(declare-fun bs!1914388 () Bool)

(assert (= bs!1914388 (and d!2269708 d!2269702)))

(assert (=> bs!1914388 (not (= lambda!451468 lambda!451462))))

(assert (=> d!2269708 (= (nullableContext!384 ct1!250) (forall!17711 (exprs!8334 ct1!250) lambda!451468))))

(declare-fun bs!1914389 () Bool)

(assert (= bs!1914389 d!2269708))

(declare-fun m!7974608 () Bool)

(assert (=> bs!1914389 m!7974608))

(assert (=> b!7310649 d!2269708))

(declare-fun bs!1914390 () Bool)

(declare-fun d!2269710 () Bool)

(assert (= bs!1914390 (and d!2269710 b!7310648)))

(declare-fun lambda!451469 () Int)

(assert (=> bs!1914390 (= lambda!451469 lambda!451450)))

(assert (=> bs!1914390 (not (= lambda!451469 lambda!451451))))

(declare-fun bs!1914391 () Bool)

(assert (= bs!1914391 (and d!2269710 d!2269702)))

(assert (=> bs!1914391 (not (= lambda!451469 lambda!451462))))

(declare-fun bs!1914392 () Bool)

(assert (= bs!1914392 (and d!2269710 d!2269708)))

(assert (=> bs!1914392 (= lambda!451469 lambda!451468)))

(assert (=> d!2269710 (= (nullableContext!384 ct2!346) (forall!17711 (exprs!8334 ct2!346) lambda!451469))))

(declare-fun bs!1914394 () Bool)

(assert (= bs!1914394 d!2269710))

(declare-fun m!7974612 () Bool)

(assert (=> bs!1914394 m!7974612))

(assert (=> b!7310653 d!2269710))

(declare-fun d!2269714 () Bool)

(declare-fun c!1357455 () Bool)

(declare-fun isEmpty!40833 (List!71108) Bool)

(assert (=> d!2269714 (= c!1357455 (isEmpty!40833 s!7854))))

(declare-fun e!4375686 () Bool)

(assert (=> d!2269714 (= (matchZipper!3798 (set.insert ct2!346 (as set.empty (Set Context!15668))) s!7854) e!4375686)))

(declare-fun b!7310684 () Bool)

(declare-fun nullableZipper!3077 ((Set Context!15668)) Bool)

(assert (=> b!7310684 (= e!4375686 (nullableZipper!3077 (set.insert ct2!346 (as set.empty (Set Context!15668)))))))

(declare-fun b!7310685 () Bool)

(declare-fun derivationStepZipper!3626 ((Set Context!15668) C!38062) (Set Context!15668))

(declare-fun head!15075 (List!71108) C!38062)

(declare-fun tail!14616 (List!71108) List!71108)

(assert (=> b!7310685 (= e!4375686 (matchZipper!3798 (derivationStepZipper!3626 (set.insert ct2!346 (as set.empty (Set Context!15668))) (head!15075 s!7854)) (tail!14616 s!7854)))))

(assert (= (and d!2269714 c!1357455) b!7310684))

(assert (= (and d!2269714 (not c!1357455)) b!7310685))

(declare-fun m!7974614 () Bool)

(assert (=> d!2269714 m!7974614))

(assert (=> b!7310684 m!7974558))

(declare-fun m!7974616 () Bool)

(assert (=> b!7310684 m!7974616))

(declare-fun m!7974618 () Bool)

(assert (=> b!7310685 m!7974618))

(assert (=> b!7310685 m!7974558))

(assert (=> b!7310685 m!7974618))

(declare-fun m!7974620 () Bool)

(assert (=> b!7310685 m!7974620))

(declare-fun m!7974622 () Bool)

(assert (=> b!7310685 m!7974622))

(assert (=> b!7310685 m!7974620))

(assert (=> b!7310685 m!7974622))

(declare-fun m!7974624 () Bool)

(assert (=> b!7310685 m!7974624))

(assert (=> start!711942 d!2269714))

(declare-fun bs!1914395 () Bool)

(declare-fun d!2269716 () Bool)

(assert (= bs!1914395 (and d!2269716 d!2269710)))

(declare-fun lambda!451470 () Int)

(assert (=> bs!1914395 (not (= lambda!451470 lambda!451469))))

(declare-fun bs!1914396 () Bool)

(assert (= bs!1914396 (and d!2269716 d!2269708)))

(assert (=> bs!1914396 (not (= lambda!451470 lambda!451468))))

(declare-fun bs!1914397 () Bool)

(assert (= bs!1914397 (and d!2269716 b!7310648)))

(assert (=> bs!1914397 (not (= lambda!451470 lambda!451450))))

(assert (=> bs!1914397 (= lambda!451470 lambda!451451)))

(declare-fun bs!1914398 () Bool)

(assert (= bs!1914398 (and d!2269716 d!2269702)))

(assert (=> bs!1914398 (= lambda!451470 lambda!451462)))

(assert (=> d!2269716 (= (inv!90246 ct2!346) (forall!17711 (exprs!8334 ct2!346) lambda!451470))))

(declare-fun bs!1914399 () Bool)

(assert (= bs!1914399 d!2269716))

(declare-fun m!7974626 () Bool)

(assert (=> bs!1914399 m!7974626))

(assert (=> start!711942 d!2269716))

(declare-fun bs!1914400 () Bool)

(declare-fun d!2269718 () Bool)

(assert (= bs!1914400 (and d!2269718 d!2269710)))

(declare-fun lambda!451471 () Int)

(assert (=> bs!1914400 (not (= lambda!451471 lambda!451469))))

(declare-fun bs!1914401 () Bool)

(assert (= bs!1914401 (and d!2269718 d!2269716)))

(assert (=> bs!1914401 (= lambda!451471 lambda!451470)))

(declare-fun bs!1914402 () Bool)

(assert (= bs!1914402 (and d!2269718 d!2269708)))

(assert (=> bs!1914402 (not (= lambda!451471 lambda!451468))))

(declare-fun bs!1914403 () Bool)

(assert (= bs!1914403 (and d!2269718 b!7310648)))

(assert (=> bs!1914403 (not (= lambda!451471 lambda!451450))))

(assert (=> bs!1914403 (= lambda!451471 lambda!451451)))

(declare-fun bs!1914404 () Bool)

(assert (= bs!1914404 (and d!2269718 d!2269702)))

(assert (=> bs!1914404 (= lambda!451471 lambda!451462)))

(assert (=> d!2269718 (= (inv!90246 ct1!250) (forall!17711 (exprs!8334 ct1!250) lambda!451471))))

(declare-fun bs!1914405 () Bool)

(assert (= bs!1914405 d!2269718))

(declare-fun m!7974628 () Bool)

(assert (=> bs!1914405 m!7974628))

(assert (=> start!711942 d!2269718))

(declare-fun d!2269720 () Bool)

(declare-fun c!1357456 () Bool)

(assert (=> d!2269720 (= c!1357456 (isEmpty!40833 s!7854))))

(declare-fun e!4375687 () Bool)

(assert (=> d!2269720 (= (matchZipper!3798 (set.insert lt!2600116 (as set.empty (Set Context!15668))) s!7854) e!4375687)))

(declare-fun b!7310686 () Bool)

(assert (=> b!7310686 (= e!4375687 (nullableZipper!3077 (set.insert lt!2600116 (as set.empty (Set Context!15668)))))))

(declare-fun b!7310687 () Bool)

(assert (=> b!7310687 (= e!4375687 (matchZipper!3798 (derivationStepZipper!3626 (set.insert lt!2600116 (as set.empty (Set Context!15668))) (head!15075 s!7854)) (tail!14616 s!7854)))))

(assert (= (and d!2269720 c!1357456) b!7310686))

(assert (= (and d!2269720 (not c!1357456)) b!7310687))

(assert (=> d!2269720 m!7974614))

(assert (=> b!7310686 m!7974568))

(declare-fun m!7974630 () Bool)

(assert (=> b!7310686 m!7974630))

(assert (=> b!7310687 m!7974618))

(assert (=> b!7310687 m!7974568))

(assert (=> b!7310687 m!7974618))

(declare-fun m!7974632 () Bool)

(assert (=> b!7310687 m!7974632))

(assert (=> b!7310687 m!7974622))

(assert (=> b!7310687 m!7974632))

(assert (=> b!7310687 m!7974622))

(declare-fun m!7974634 () Bool)

(assert (=> b!7310687 m!7974634))

(assert (=> b!7310648 d!2269720))

(declare-fun b!7310704 () Bool)

(declare-fun res!2953228 () Bool)

(declare-fun e!4375696 () Bool)

(assert (=> b!7310704 (=> (not res!2953228) (not e!4375696))))

(declare-fun lt!2600135 () List!71107)

(declare-fun size!41881 (List!71107) Int)

(assert (=> b!7310704 (= res!2953228 (= (size!41881 lt!2600135) (+ (size!41881 (exprs!8334 ct1!250)) (size!41881 (exprs!8334 ct2!346)))))))

(declare-fun b!7310703 () Bool)

(declare-fun e!4375695 () List!71107)

(assert (=> b!7310703 (= e!4375695 (Cons!70983 (h!77431 (exprs!8334 ct1!250)) (++!16784 (t!385185 (exprs!8334 ct1!250)) (exprs!8334 ct2!346))))))

(declare-fun b!7310705 () Bool)

(assert (=> b!7310705 (= e!4375696 (or (not (= (exprs!8334 ct2!346) Nil!70983)) (= lt!2600135 (exprs!8334 ct1!250))))))

(declare-fun b!7310702 () Bool)

(assert (=> b!7310702 (= e!4375695 (exprs!8334 ct2!346))))

(declare-fun d!2269722 () Bool)

(assert (=> d!2269722 e!4375696))

(declare-fun res!2953227 () Bool)

(assert (=> d!2269722 (=> (not res!2953227) (not e!4375696))))

(declare-fun content!14837 (List!71107) (Set Regex!18894))

(assert (=> d!2269722 (= res!2953227 (= (content!14837 lt!2600135) (set.union (content!14837 (exprs!8334 ct1!250)) (content!14837 (exprs!8334 ct2!346)))))))

(assert (=> d!2269722 (= lt!2600135 e!4375695)))

(declare-fun c!1357462 () Bool)

(assert (=> d!2269722 (= c!1357462 (is-Nil!70983 (exprs!8334 ct1!250)))))

(assert (=> d!2269722 (= (++!16784 (exprs!8334 ct1!250) (exprs!8334 ct2!346)) lt!2600135)))

(assert (= (and d!2269722 c!1357462) b!7310702))

(assert (= (and d!2269722 (not c!1357462)) b!7310703))

(assert (= (and d!2269722 res!2953227) b!7310704))

(assert (= (and b!7310704 res!2953228) b!7310705))

(declare-fun m!7974648 () Bool)

(assert (=> b!7310704 m!7974648))

(declare-fun m!7974650 () Bool)

(assert (=> b!7310704 m!7974650))

(declare-fun m!7974652 () Bool)

(assert (=> b!7310704 m!7974652))

(declare-fun m!7974654 () Bool)

(assert (=> b!7310703 m!7974654))

(declare-fun m!7974656 () Bool)

(assert (=> d!2269722 m!7974656))

(declare-fun m!7974658 () Bool)

(assert (=> d!2269722 m!7974658))

(declare-fun m!7974660 () Bool)

(assert (=> d!2269722 m!7974660))

(assert (=> b!7310648 d!2269722))

(assert (=> b!7310648 d!2269706))

(declare-fun d!2269726 () Bool)

(assert (=> d!2269726 (forall!17711 (++!16784 (exprs!8334 ct1!250) (exprs!8334 ct2!346)) lambda!451450)))

(declare-fun lt!2600136 () Unit!164386)

(assert (=> d!2269726 (= lt!2600136 (choose!56605 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451450))))

(assert (=> d!2269726 (forall!17711 (exprs!8334 ct1!250) lambda!451450)))

(assert (=> d!2269726 (= (lemmaConcatPreservesForall!1641 (exprs!8334 ct1!250) (exprs!8334 ct2!346) lambda!451450) lt!2600136)))

(declare-fun bs!1914406 () Bool)

(assert (= bs!1914406 d!2269726))

(assert (=> bs!1914406 m!7974572))

(assert (=> bs!1914406 m!7974572))

(declare-fun m!7974662 () Bool)

(assert (=> bs!1914406 m!7974662))

(declare-fun m!7974664 () Bool)

(assert (=> bs!1914406 m!7974664))

(declare-fun m!7974666 () Bool)

(assert (=> bs!1914406 m!7974666))

(assert (=> b!7310648 d!2269726))

(declare-fun b!7310710 () Bool)

(declare-fun e!4375699 () Bool)

(declare-fun tp!2074832 () Bool)

(declare-fun tp!2074833 () Bool)

(assert (=> b!7310710 (= e!4375699 (and tp!2074832 tp!2074833))))

(assert (=> b!7310651 (= tp!2074816 e!4375699)))

(assert (= (and b!7310651 (is-Cons!70983 (exprs!8334 ct2!346))) b!7310710))

(declare-fun b!7310715 () Bool)

(declare-fun e!4375702 () Bool)

(declare-fun tp!2074836 () Bool)

(assert (=> b!7310715 (= e!4375702 (and tp_is_empty!47253 tp!2074836))))

(assert (=> b!7310654 (= tp!2074817 e!4375702)))

(assert (= (and b!7310654 (is-Cons!70984 (t!385186 s!7854))) b!7310715))

(declare-fun b!7310716 () Bool)

(declare-fun e!4375703 () Bool)

(declare-fun tp!2074837 () Bool)

(declare-fun tp!2074838 () Bool)

(assert (=> b!7310716 (= e!4375703 (and tp!2074837 tp!2074838))))

(assert (=> b!7310652 (= tp!2074818 e!4375703)))

(assert (= (and b!7310652 (is-Cons!70983 (exprs!8334 ct1!250))) b!7310716))

(push 1)

(assert (not d!2269706))

(assert (not d!2269722))

(assert (not b!7310686))

(assert (not b!7310710))

(assert (not b!7310687))

(assert (not d!2269718))

(assert (not d!2269708))

(assert (not d!2269710))

(assert (not b!7310716))

(assert (not b!7310704))

(assert (not b!7310684))

(assert (not d!2269714))

(assert (not b!7310703))

(assert (not b!7310685))

(assert (not d!2269716))

(assert (not d!2269720))

(assert tp_is_empty!47253)

(assert (not b!7310715))

(assert (not d!2269702))

(assert (not d!2269726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

