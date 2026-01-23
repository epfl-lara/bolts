; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711760 () Bool)

(assert start!711760)

(declare-fun b!7298894 () Bool)

(assert (=> b!7298894 true))

(declare-fun e!4371561 () Bool)

(declare-fun e!4371557 () Bool)

(assert (=> b!7298894 (= e!4371561 (not e!4371557))))

(declare-fun res!2951971 () Bool)

(assert (=> b!7298894 (=> res!2951971 e!4371557)))

(declare-datatypes ((C!38046 0))(
  ( (C!38047 (val!28971 Int)) )
))
(declare-datatypes ((List!71089 0))(
  ( (Nil!70965) (Cons!70965 (h!77413 C!38046) (t!385167 List!71089)) )
))
(declare-fun s!7854 () List!71089)

(declare-datatypes ((Regex!18886 0))(
  ( (ElementMatch!18886 (c!1356950 C!38046)) (Concat!27731 (regOne!38284 Regex!18886) (regTwo!38284 Regex!18886)) (EmptyExpr!18886) (Star!18886 (reg!19215 Regex!18886)) (EmptyLang!18886) (Union!18886 (regOne!38285 Regex!18886) (regTwo!38285 Regex!18886)) )
))
(declare-datatypes ((List!71090 0))(
  ( (Nil!70966) (Cons!70966 (h!77414 Regex!18886) (t!385168 List!71090)) )
))
(declare-datatypes ((Context!15652 0))(
  ( (Context!15653 (exprs!8326 List!71090)) )
))
(declare-fun lt!2599832 () (Set Context!15652))

(declare-fun lt!2599826 () (Set Context!15652))

(declare-fun derivationStepZipper!3619 ((Set Context!15652) C!38046) (Set Context!15652))

(assert (=> b!7298894 (= res!2951971 (not (= lt!2599826 (derivationStepZipper!3619 lt!2599832 (h!77413 s!7854)))))))

(declare-fun lambda!451238 () Int)

(declare-fun ct1!250 () Context!15652)

(declare-datatypes ((Unit!164370 0))(
  ( (Unit!164371) )
))
(declare-fun lt!2599831 () Unit!164370)

(declare-fun ct2!346 () Context!15652)

(declare-fun lemmaConcatPreservesForall!1633 (List!71090 List!71090 Int) Unit!164370)

(assert (=> b!7298894 (= lt!2599831 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun lambda!451239 () Int)

(declare-fun lt!2599822 () Context!15652)

(declare-fun flatMap!2981 ((Set Context!15652) Int) (Set Context!15652))

(declare-fun derivationStepZipperUp!2636 (Context!15652 C!38046) (Set Context!15652))

(assert (=> b!7298894 (= (flatMap!2981 lt!2599832 lambda!451239) (derivationStepZipperUp!2636 lt!2599822 (h!77413 s!7854)))))

(declare-fun lt!2599833 () Unit!164370)

(declare-fun lemmaFlatMapOnSingletonSet!2379 ((Set Context!15652) Context!15652 Int) Unit!164370)

(assert (=> b!7298894 (= lt!2599833 (lemmaFlatMapOnSingletonSet!2379 lt!2599832 lt!2599822 lambda!451239))))

(assert (=> b!7298894 (= lt!2599832 (set.insert lt!2599822 (as set.empty (Set Context!15652))))))

(declare-fun lt!2599829 () Unit!164370)

(assert (=> b!7298894 (= lt!2599829 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun lt!2599827 () Unit!164370)

(assert (=> b!7298894 (= lt!2599827 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun lt!2599823 () (Set Context!15652))

(assert (=> b!7298894 (= (flatMap!2981 lt!2599823 lambda!451239) (derivationStepZipperUp!2636 ct1!250 (h!77413 s!7854)))))

(declare-fun lt!2599830 () Unit!164370)

(assert (=> b!7298894 (= lt!2599830 (lemmaFlatMapOnSingletonSet!2379 lt!2599823 ct1!250 lambda!451239))))

(assert (=> b!7298894 (= lt!2599823 (set.insert ct1!250 (as set.empty (Set Context!15652))))))

(assert (=> b!7298894 (= lt!2599826 (derivationStepZipperUp!2636 lt!2599822 (h!77413 s!7854)))))

(declare-fun ++!16776 (List!71090 List!71090) List!71090)

(assert (=> b!7298894 (= lt!2599822 (Context!15653 (++!16776 (exprs!8326 ct1!250) (exprs!8326 ct2!346))))))

(declare-fun lt!2599824 () Unit!164370)

(assert (=> b!7298894 (= lt!2599824 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun b!7298895 () Bool)

(declare-fun e!4371558 () Bool)

(assert (=> b!7298895 (= e!4371557 e!4371558)))

(declare-fun res!2951974 () Bool)

(assert (=> b!7298895 (=> res!2951974 e!4371558)))

(declare-fun matchZipper!3790 ((Set Context!15652) List!71089) Bool)

(assert (=> b!7298895 (= res!2951974 (not (matchZipper!3790 lt!2599832 s!7854)))))

(declare-fun lt!2599828 () Unit!164370)

(assert (=> b!7298895 (= lt!2599828 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun b!7298896 () Bool)

(declare-fun inv!90226 (Context!15652) Bool)

(assert (=> b!7298896 (= e!4371558 (inv!90226 lt!2599822))))

(declare-fun lt!2599825 () Unit!164370)

(assert (=> b!7298896 (= lt!2599825 (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(declare-fun b!7298897 () Bool)

(declare-fun res!2951970 () Bool)

(assert (=> b!7298897 (=> (not res!2951970) (not e!4371561))))

(assert (=> b!7298897 (= res!2951970 (is-Cons!70965 s!7854))))

(declare-fun b!7298898 () Bool)

(declare-fun e!4371560 () Bool)

(declare-fun tp!2062809 () Bool)

(assert (=> b!7298898 (= e!4371560 tp!2062809)))

(declare-fun res!2951973 () Bool)

(assert (=> start!711760 (=> (not res!2951973) (not e!4371561))))

(assert (=> start!711760 (= res!2951973 (matchZipper!3790 (set.insert ct2!346 (as set.empty (Set Context!15652))) s!7854))))

(assert (=> start!711760 e!4371561))

(assert (=> start!711760 (and (inv!90226 ct2!346) e!4371560)))

(declare-fun e!4371559 () Bool)

(assert (=> start!711760 e!4371559))

(declare-fun e!4371556 () Bool)

(assert (=> start!711760 (and (inv!90226 ct1!250) e!4371556)))

(declare-fun b!7298899 () Bool)

(declare-fun tp!2062810 () Bool)

(assert (=> b!7298899 (= e!4371556 tp!2062810)))

(declare-fun b!7298900 () Bool)

(declare-fun res!2951975 () Bool)

(assert (=> b!7298900 (=> res!2951975 e!4371557)))

(assert (=> b!7298900 (= res!2951975 (is-Cons!70966 (exprs!8326 ct1!250)))))

(declare-fun b!7298901 () Bool)

(declare-fun res!2951972 () Bool)

(assert (=> b!7298901 (=> (not res!2951972) (not e!4371561))))

(declare-fun nullableContext!376 (Context!15652) Bool)

(assert (=> b!7298901 (= res!2951972 (nullableContext!376 ct1!250))))

(declare-fun b!7298902 () Bool)

(declare-fun tp_is_empty!47237 () Bool)

(declare-fun tp!2062811 () Bool)

(assert (=> b!7298902 (= e!4371559 (and tp_is_empty!47237 tp!2062811))))

(assert (= (and start!711760 res!2951973) b!7298901))

(assert (= (and b!7298901 res!2951972) b!7298897))

(assert (= (and b!7298897 res!2951970) b!7298894))

(assert (= (and b!7298894 (not res!2951971)) b!7298900))

(assert (= (and b!7298900 (not res!2951975)) b!7298895))

(assert (= (and b!7298895 (not res!2951974)) b!7298896))

(assert (= start!711760 b!7298898))

(assert (= (and start!711760 (is-Cons!70965 s!7854)) b!7298902))

(assert (= start!711760 b!7298899))

(declare-fun m!7971610 () Bool)

(assert (=> start!711760 m!7971610))

(assert (=> start!711760 m!7971610))

(declare-fun m!7971612 () Bool)

(assert (=> start!711760 m!7971612))

(declare-fun m!7971614 () Bool)

(assert (=> start!711760 m!7971614))

(declare-fun m!7971616 () Bool)

(assert (=> start!711760 m!7971616))

(declare-fun m!7971618 () Bool)

(assert (=> b!7298895 m!7971618))

(declare-fun m!7971620 () Bool)

(assert (=> b!7298895 m!7971620))

(declare-fun m!7971622 () Bool)

(assert (=> b!7298901 m!7971622))

(declare-fun m!7971624 () Bool)

(assert (=> b!7298896 m!7971624))

(assert (=> b!7298896 m!7971620))

(assert (=> b!7298894 m!7971620))

(declare-fun m!7971626 () Bool)

(assert (=> b!7298894 m!7971626))

(declare-fun m!7971628 () Bool)

(assert (=> b!7298894 m!7971628))

(declare-fun m!7971630 () Bool)

(assert (=> b!7298894 m!7971630))

(declare-fun m!7971632 () Bool)

(assert (=> b!7298894 m!7971632))

(declare-fun m!7971634 () Bool)

(assert (=> b!7298894 m!7971634))

(declare-fun m!7971636 () Bool)

(assert (=> b!7298894 m!7971636))

(assert (=> b!7298894 m!7971620))

(assert (=> b!7298894 m!7971620))

(assert (=> b!7298894 m!7971620))

(declare-fun m!7971638 () Bool)

(assert (=> b!7298894 m!7971638))

(declare-fun m!7971640 () Bool)

(assert (=> b!7298894 m!7971640))

(declare-fun m!7971642 () Bool)

(assert (=> b!7298894 m!7971642))

(declare-fun m!7971644 () Bool)

(assert (=> b!7298894 m!7971644))

(push 1)

(assert (not b!7298894))

(assert (not b!7298901))

(assert (not b!7298902))

(assert (not b!7298895))

(assert (not start!711760))

(assert (not b!7298896))

(assert tp_is_empty!47237)

(assert (not b!7298899))

(assert (not b!7298898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2268176 () Bool)

(declare-fun c!1356958 () Bool)

(declare-fun isEmpty!40828 (List!71089) Bool)

(assert (=> d!2268176 (= c!1356958 (isEmpty!40828 s!7854))))

(declare-fun e!4371582 () Bool)

(assert (=> d!2268176 (= (matchZipper!3790 (set.insert ct2!346 (as set.empty (Set Context!15652))) s!7854) e!4371582)))

(declare-fun b!7298938 () Bool)

(declare-fun nullableZipper!3072 ((Set Context!15652)) Bool)

(assert (=> b!7298938 (= e!4371582 (nullableZipper!3072 (set.insert ct2!346 (as set.empty (Set Context!15652)))))))

(declare-fun b!7298939 () Bool)

(declare-fun head!15070 (List!71089) C!38046)

(declare-fun tail!14611 (List!71089) List!71089)

(assert (=> b!7298939 (= e!4371582 (matchZipper!3790 (derivationStepZipper!3619 (set.insert ct2!346 (as set.empty (Set Context!15652))) (head!15070 s!7854)) (tail!14611 s!7854)))))

(assert (= (and d!2268176 c!1356958) b!7298938))

(assert (= (and d!2268176 (not c!1356958)) b!7298939))

(declare-fun m!7971682 () Bool)

(assert (=> d!2268176 m!7971682))

(assert (=> b!7298938 m!7971610))

(declare-fun m!7971684 () Bool)

(assert (=> b!7298938 m!7971684))

(declare-fun m!7971686 () Bool)

(assert (=> b!7298939 m!7971686))

(assert (=> b!7298939 m!7971610))

(assert (=> b!7298939 m!7971686))

(declare-fun m!7971688 () Bool)

(assert (=> b!7298939 m!7971688))

(declare-fun m!7971690 () Bool)

(assert (=> b!7298939 m!7971690))

(assert (=> b!7298939 m!7971688))

(assert (=> b!7298939 m!7971690))

(declare-fun m!7971692 () Bool)

(assert (=> b!7298939 m!7971692))

(assert (=> start!711760 d!2268176))

(declare-fun bs!1913615 () Bool)

(declare-fun d!2268180 () Bool)

(assert (= bs!1913615 (and d!2268180 b!7298894)))

(declare-fun lambda!451260 () Int)

(assert (=> bs!1913615 (= lambda!451260 lambda!451238)))

(declare-fun forall!17704 (List!71090 Int) Bool)

(assert (=> d!2268180 (= (inv!90226 ct2!346) (forall!17704 (exprs!8326 ct2!346) lambda!451260))))

(declare-fun bs!1913616 () Bool)

(assert (= bs!1913616 d!2268180))

(declare-fun m!7971694 () Bool)

(assert (=> bs!1913616 m!7971694))

(assert (=> start!711760 d!2268180))

(declare-fun bs!1913617 () Bool)

(declare-fun d!2268182 () Bool)

(assert (= bs!1913617 (and d!2268182 b!7298894)))

(declare-fun lambda!451261 () Int)

(assert (=> bs!1913617 (= lambda!451261 lambda!451238)))

(declare-fun bs!1913618 () Bool)

(assert (= bs!1913618 (and d!2268182 d!2268180)))

(assert (=> bs!1913618 (= lambda!451261 lambda!451260)))

(assert (=> d!2268182 (= (inv!90226 ct1!250) (forall!17704 (exprs!8326 ct1!250) lambda!451261))))

(declare-fun bs!1913619 () Bool)

(assert (= bs!1913619 d!2268182))

(declare-fun m!7971696 () Bool)

(assert (=> bs!1913619 m!7971696))

(assert (=> start!711760 d!2268182))

(declare-fun bs!1913620 () Bool)

(declare-fun d!2268184 () Bool)

(assert (= bs!1913620 (and d!2268184 b!7298894)))

(declare-fun lambda!451264 () Int)

(assert (=> bs!1913620 (= lambda!451264 lambda!451239)))

(assert (=> d!2268184 true))

(assert (=> d!2268184 (= (derivationStepZipper!3619 lt!2599832 (h!77413 s!7854)) (flatMap!2981 lt!2599832 lambda!451264))))

(declare-fun bs!1913621 () Bool)

(assert (= bs!1913621 d!2268184))

(declare-fun m!7971698 () Bool)

(assert (=> bs!1913621 m!7971698))

(assert (=> b!7298894 d!2268184))

(declare-fun d!2268186 () Bool)

(declare-fun choose!56590 ((Set Context!15652) Int) (Set Context!15652))

(assert (=> d!2268186 (= (flatMap!2981 lt!2599832 lambda!451239) (choose!56590 lt!2599832 lambda!451239))))

(declare-fun bs!1913622 () Bool)

(assert (= bs!1913622 d!2268186))

(declare-fun m!7971700 () Bool)

(assert (=> bs!1913622 m!7971700))

(assert (=> b!7298894 d!2268186))

(declare-fun d!2268188 () Bool)

(assert (=> d!2268188 (= (flatMap!2981 lt!2599823 lambda!451239) (choose!56590 lt!2599823 lambda!451239))))

(declare-fun bs!1913623 () Bool)

(assert (= bs!1913623 d!2268188))

(declare-fun m!7971702 () Bool)

(assert (=> bs!1913623 m!7971702))

(assert (=> b!7298894 d!2268188))

(declare-fun b!7298958 () Bool)

(declare-fun e!4371594 () (Set Context!15652))

(assert (=> b!7298958 (= e!4371594 (as set.empty (Set Context!15652)))))

(declare-fun b!7298959 () Bool)

(declare-fun e!4371592 () Bool)

(declare-fun nullable!8063 (Regex!18886) Bool)

(assert (=> b!7298959 (= e!4371592 (nullable!8063 (h!77414 (exprs!8326 ct1!250))))))

(declare-fun b!7298960 () Bool)

(declare-fun e!4371593 () (Set Context!15652))

(assert (=> b!7298960 (= e!4371593 e!4371594)))

(declare-fun c!1356968 () Bool)

(assert (=> b!7298960 (= c!1356968 (is-Cons!70966 (exprs!8326 ct1!250)))))

(declare-fun b!7298961 () Bool)

(declare-fun call!665259 () (Set Context!15652))

(assert (=> b!7298961 (= e!4371594 call!665259)))

(declare-fun b!7298962 () Bool)

(assert (=> b!7298962 (= e!4371593 (set.union call!665259 (derivationStepZipperUp!2636 (Context!15653 (t!385168 (exprs!8326 ct1!250))) (h!77413 s!7854))))))

(declare-fun d!2268190 () Bool)

(declare-fun c!1356969 () Bool)

(assert (=> d!2268190 (= c!1356969 e!4371592)))

(declare-fun res!2951996 () Bool)

(assert (=> d!2268190 (=> (not res!2951996) (not e!4371592))))

(assert (=> d!2268190 (= res!2951996 (is-Cons!70966 (exprs!8326 ct1!250)))))

(assert (=> d!2268190 (= (derivationStepZipperUp!2636 ct1!250 (h!77413 s!7854)) e!4371593)))

(declare-fun bm!665254 () Bool)

(declare-fun derivationStepZipperDown!2792 (Regex!18886 Context!15652 C!38046) (Set Context!15652))

(assert (=> bm!665254 (= call!665259 (derivationStepZipperDown!2792 (h!77414 (exprs!8326 ct1!250)) (Context!15653 (t!385168 (exprs!8326 ct1!250))) (h!77413 s!7854)))))

(assert (= (and d!2268190 res!2951996) b!7298959))

(assert (= (and d!2268190 c!1356969) b!7298962))

(assert (= (and d!2268190 (not c!1356969)) b!7298960))

(assert (= (and b!7298960 c!1356968) b!7298961))

(assert (= (and b!7298960 (not c!1356968)) b!7298958))

(assert (= (or b!7298962 b!7298961) bm!665254))

(declare-fun m!7971716 () Bool)

(assert (=> b!7298959 m!7971716))

(declare-fun m!7971718 () Bool)

(assert (=> b!7298962 m!7971718))

(declare-fun m!7971720 () Bool)

(assert (=> bm!665254 m!7971720))

(assert (=> b!7298894 d!2268190))

(declare-fun b!7298963 () Bool)

(declare-fun e!4371597 () (Set Context!15652))

(assert (=> b!7298963 (= e!4371597 (as set.empty (Set Context!15652)))))

(declare-fun b!7298964 () Bool)

(declare-fun e!4371595 () Bool)

(assert (=> b!7298964 (= e!4371595 (nullable!8063 (h!77414 (exprs!8326 lt!2599822))))))

(declare-fun b!7298965 () Bool)

(declare-fun e!4371596 () (Set Context!15652))

(assert (=> b!7298965 (= e!4371596 e!4371597)))

(declare-fun c!1356970 () Bool)

(assert (=> b!7298965 (= c!1356970 (is-Cons!70966 (exprs!8326 lt!2599822)))))

(declare-fun b!7298966 () Bool)

(declare-fun call!665260 () (Set Context!15652))

(assert (=> b!7298966 (= e!4371597 call!665260)))

(declare-fun b!7298967 () Bool)

(assert (=> b!7298967 (= e!4371596 (set.union call!665260 (derivationStepZipperUp!2636 (Context!15653 (t!385168 (exprs!8326 lt!2599822))) (h!77413 s!7854))))))

(declare-fun d!2268194 () Bool)

(declare-fun c!1356971 () Bool)

(assert (=> d!2268194 (= c!1356971 e!4371595)))

(declare-fun res!2951997 () Bool)

(assert (=> d!2268194 (=> (not res!2951997) (not e!4371595))))

(assert (=> d!2268194 (= res!2951997 (is-Cons!70966 (exprs!8326 lt!2599822)))))

(assert (=> d!2268194 (= (derivationStepZipperUp!2636 lt!2599822 (h!77413 s!7854)) e!4371596)))

(declare-fun bm!665255 () Bool)

(assert (=> bm!665255 (= call!665260 (derivationStepZipperDown!2792 (h!77414 (exprs!8326 lt!2599822)) (Context!15653 (t!385168 (exprs!8326 lt!2599822))) (h!77413 s!7854)))))

(assert (= (and d!2268194 res!2951997) b!7298964))

(assert (= (and d!2268194 c!1356971) b!7298967))

(assert (= (and d!2268194 (not c!1356971)) b!7298965))

(assert (= (and b!7298965 c!1356970) b!7298966))

(assert (= (and b!7298965 (not c!1356970)) b!7298963))

(assert (= (or b!7298967 b!7298966) bm!665255))

(declare-fun m!7971722 () Bool)

(assert (=> b!7298964 m!7971722))

(declare-fun m!7971724 () Bool)

(assert (=> b!7298967 m!7971724))

(declare-fun m!7971726 () Bool)

(assert (=> bm!665255 m!7971726))

(assert (=> b!7298894 d!2268194))

(declare-fun b!7298977 () Bool)

(declare-fun e!4371602 () List!71090)

(assert (=> b!7298977 (= e!4371602 (Cons!70966 (h!77414 (exprs!8326 ct1!250)) (++!16776 (t!385168 (exprs!8326 ct1!250)) (exprs!8326 ct2!346))))))

(declare-fun d!2268196 () Bool)

(declare-fun e!4371603 () Bool)

(assert (=> d!2268196 e!4371603))

(declare-fun res!2952003 () Bool)

(assert (=> d!2268196 (=> (not res!2952003) (not e!4371603))))

(declare-fun lt!2599872 () List!71090)

(declare-fun content!14830 (List!71090) (Set Regex!18886))

(assert (=> d!2268196 (= res!2952003 (= (content!14830 lt!2599872) (set.union (content!14830 (exprs!8326 ct1!250)) (content!14830 (exprs!8326 ct2!346)))))))

(assert (=> d!2268196 (= lt!2599872 e!4371602)))

(declare-fun c!1356975 () Bool)

(assert (=> d!2268196 (= c!1356975 (is-Nil!70966 (exprs!8326 ct1!250)))))

(assert (=> d!2268196 (= (++!16776 (exprs!8326 ct1!250) (exprs!8326 ct2!346)) lt!2599872)))

(declare-fun b!7298978 () Bool)

(declare-fun res!2952002 () Bool)

(assert (=> b!7298978 (=> (not res!2952002) (not e!4371603))))

(declare-fun size!41876 (List!71090) Int)

(assert (=> b!7298978 (= res!2952002 (= (size!41876 lt!2599872) (+ (size!41876 (exprs!8326 ct1!250)) (size!41876 (exprs!8326 ct2!346)))))))

(declare-fun b!7298976 () Bool)

(assert (=> b!7298976 (= e!4371602 (exprs!8326 ct2!346))))

(declare-fun b!7298979 () Bool)

(assert (=> b!7298979 (= e!4371603 (or (not (= (exprs!8326 ct2!346) Nil!70966)) (= lt!2599872 (exprs!8326 ct1!250))))))

(assert (= (and d!2268196 c!1356975) b!7298976))

(assert (= (and d!2268196 (not c!1356975)) b!7298977))

(assert (= (and d!2268196 res!2952003) b!7298978))

(assert (= (and b!7298978 res!2952002) b!7298979))

(declare-fun m!7971734 () Bool)

(assert (=> b!7298977 m!7971734))

(declare-fun m!7971736 () Bool)

(assert (=> d!2268196 m!7971736))

(declare-fun m!7971738 () Bool)

(assert (=> d!2268196 m!7971738))

(declare-fun m!7971740 () Bool)

(assert (=> d!2268196 m!7971740))

(declare-fun m!7971742 () Bool)

(assert (=> b!7298978 m!7971742))

(declare-fun m!7971744 () Bool)

(assert (=> b!7298978 m!7971744))

(declare-fun m!7971746 () Bool)

(assert (=> b!7298978 m!7971746))

(assert (=> b!7298894 d!2268196))

(declare-fun d!2268204 () Bool)

(declare-fun dynLambda!29021 (Int Context!15652) (Set Context!15652))

(assert (=> d!2268204 (= (flatMap!2981 lt!2599823 lambda!451239) (dynLambda!29021 lambda!451239 ct1!250))))

(declare-fun lt!2599875 () Unit!164370)

(declare-fun choose!56591 ((Set Context!15652) Context!15652 Int) Unit!164370)

(assert (=> d!2268204 (= lt!2599875 (choose!56591 lt!2599823 ct1!250 lambda!451239))))

(assert (=> d!2268204 (= lt!2599823 (set.insert ct1!250 (as set.empty (Set Context!15652))))))

(assert (=> d!2268204 (= (lemmaFlatMapOnSingletonSet!2379 lt!2599823 ct1!250 lambda!451239) lt!2599875)))

(declare-fun b_lambda!281633 () Bool)

(assert (=> (not b_lambda!281633) (not d!2268204)))

(declare-fun bs!1913638 () Bool)

(assert (= bs!1913638 d!2268204))

(assert (=> bs!1913638 m!7971640))

(declare-fun m!7971750 () Bool)

(assert (=> bs!1913638 m!7971750))

(declare-fun m!7971752 () Bool)

(assert (=> bs!1913638 m!7971752))

(assert (=> bs!1913638 m!7971638))

(assert (=> b!7298894 d!2268204))

(declare-fun d!2268208 () Bool)

(assert (=> d!2268208 (= (flatMap!2981 lt!2599832 lambda!451239) (dynLambda!29021 lambda!451239 lt!2599822))))

(declare-fun lt!2599876 () Unit!164370)

(assert (=> d!2268208 (= lt!2599876 (choose!56591 lt!2599832 lt!2599822 lambda!451239))))

(assert (=> d!2268208 (= lt!2599832 (set.insert lt!2599822 (as set.empty (Set Context!15652))))))

(assert (=> d!2268208 (= (lemmaFlatMapOnSingletonSet!2379 lt!2599832 lt!2599822 lambda!451239) lt!2599876)))

(declare-fun b_lambda!281635 () Bool)

(assert (=> (not b_lambda!281635) (not d!2268208)))

(declare-fun bs!1913639 () Bool)

(assert (= bs!1913639 d!2268208))

(assert (=> bs!1913639 m!7971626))

(declare-fun m!7971754 () Bool)

(assert (=> bs!1913639 m!7971754))

(declare-fun m!7971756 () Bool)

(assert (=> bs!1913639 m!7971756))

(assert (=> bs!1913639 m!7971644))

(assert (=> b!7298894 d!2268208))

(declare-fun d!2268210 () Bool)

(assert (=> d!2268210 (forall!17704 (++!16776 (exprs!8326 ct1!250) (exprs!8326 ct2!346)) lambda!451238)))

(declare-fun lt!2599881 () Unit!164370)

(declare-fun choose!56592 (List!71090 List!71090 Int) Unit!164370)

(assert (=> d!2268210 (= lt!2599881 (choose!56592 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238))))

(assert (=> d!2268210 (forall!17704 (exprs!8326 ct1!250) lambda!451238)))

(assert (=> d!2268210 (= (lemmaConcatPreservesForall!1633 (exprs!8326 ct1!250) (exprs!8326 ct2!346) lambda!451238) lt!2599881)))

(declare-fun bs!1913640 () Bool)

(assert (= bs!1913640 d!2268210))

(assert (=> bs!1913640 m!7971642))

(assert (=> bs!1913640 m!7971642))

(declare-fun m!7971758 () Bool)

(assert (=> bs!1913640 m!7971758))

(declare-fun m!7971760 () Bool)

(assert (=> bs!1913640 m!7971760))

(declare-fun m!7971762 () Bool)

(assert (=> bs!1913640 m!7971762))

(assert (=> b!7298894 d!2268210))

(declare-fun d!2268212 () Bool)

(declare-fun c!1356976 () Bool)

(assert (=> d!2268212 (= c!1356976 (isEmpty!40828 s!7854))))

(declare-fun e!4371604 () Bool)

(assert (=> d!2268212 (= (matchZipper!3790 lt!2599832 s!7854) e!4371604)))

(declare-fun b!7298980 () Bool)

(assert (=> b!7298980 (= e!4371604 (nullableZipper!3072 lt!2599832))))

(declare-fun b!7298981 () Bool)

(assert (=> b!7298981 (= e!4371604 (matchZipper!3790 (derivationStepZipper!3619 lt!2599832 (head!15070 s!7854)) (tail!14611 s!7854)))))

(assert (= (and d!2268212 c!1356976) b!7298980))

(assert (= (and d!2268212 (not c!1356976)) b!7298981))

(assert (=> d!2268212 m!7971682))

(declare-fun m!7971764 () Bool)

(assert (=> b!7298980 m!7971764))

(assert (=> b!7298981 m!7971686))

(assert (=> b!7298981 m!7971686))

(declare-fun m!7971766 () Bool)

(assert (=> b!7298981 m!7971766))

(assert (=> b!7298981 m!7971690))

(assert (=> b!7298981 m!7971766))

(assert (=> b!7298981 m!7971690))

(declare-fun m!7971770 () Bool)

(assert (=> b!7298981 m!7971770))

(assert (=> b!7298895 d!2268212))

(assert (=> b!7298895 d!2268210))

(declare-fun bs!1913642 () Bool)

(declare-fun d!2268214 () Bool)

(assert (= bs!1913642 (and d!2268214 b!7298894)))

(declare-fun lambda!451273 () Int)

(assert (=> bs!1913642 (= lambda!451273 lambda!451238)))

(declare-fun bs!1913643 () Bool)

(assert (= bs!1913643 (and d!2268214 d!2268180)))

(assert (=> bs!1913643 (= lambda!451273 lambda!451260)))

(declare-fun bs!1913644 () Bool)

(assert (= bs!1913644 (and d!2268214 d!2268182)))

(assert (=> bs!1913644 (= lambda!451273 lambda!451261)))

(assert (=> d!2268214 (= (inv!90226 lt!2599822) (forall!17704 (exprs!8326 lt!2599822) lambda!451273))))

(declare-fun bs!1913645 () Bool)

(assert (= bs!1913645 d!2268214))

(declare-fun m!7971776 () Bool)

(assert (=> bs!1913645 m!7971776))

(assert (=> b!7298896 d!2268214))

(assert (=> b!7298896 d!2268210))

(declare-fun bs!1913646 () Bool)

(declare-fun d!2268218 () Bool)

(assert (= bs!1913646 (and d!2268218 b!7298894)))

(declare-fun lambda!451276 () Int)

(assert (=> bs!1913646 (not (= lambda!451276 lambda!451238))))

(declare-fun bs!1913647 () Bool)

(assert (= bs!1913647 (and d!2268218 d!2268180)))

(assert (=> bs!1913647 (not (= lambda!451276 lambda!451260))))

(declare-fun bs!1913648 () Bool)

(assert (= bs!1913648 (and d!2268218 d!2268182)))

(assert (=> bs!1913648 (not (= lambda!451276 lambda!451261))))

(declare-fun bs!1913649 () Bool)

(assert (= bs!1913649 (and d!2268218 d!2268214)))

(assert (=> bs!1913649 (not (= lambda!451276 lambda!451273))))

(assert (=> d!2268218 (= (nullableContext!376 ct1!250) (forall!17704 (exprs!8326 ct1!250) lambda!451276))))

(declare-fun bs!1913650 () Bool)

(assert (= bs!1913650 d!2268218))

(declare-fun m!7971778 () Bool)

(assert (=> bs!1913650 m!7971778))

(assert (=> b!7298901 d!2268218))

(declare-fun b!7298986 () Bool)

(declare-fun e!4371607 () Bool)

(declare-fun tp!2062825 () Bool)

(declare-fun tp!2062826 () Bool)

(assert (=> b!7298986 (= e!4371607 (and tp!2062825 tp!2062826))))

(assert (=> b!7298899 (= tp!2062810 e!4371607)))

(assert (= (and b!7298899 (is-Cons!70966 (exprs!8326 ct1!250))) b!7298986))

(declare-fun b!7298991 () Bool)

(declare-fun e!4371610 () Bool)

(declare-fun tp!2062829 () Bool)

(assert (=> b!7298991 (= e!4371610 (and tp_is_empty!47237 tp!2062829))))

(assert (=> b!7298902 (= tp!2062811 e!4371610)))

(assert (= (and b!7298902 (is-Cons!70965 (t!385167 s!7854))) b!7298991))

(declare-fun b!7298992 () Bool)

(declare-fun e!4371611 () Bool)

(declare-fun tp!2062830 () Bool)

(declare-fun tp!2062831 () Bool)

(assert (=> b!7298992 (= e!4371611 (and tp!2062830 tp!2062831))))

(assert (=> b!7298898 (= tp!2062809 e!4371611)))

(assert (= (and b!7298898 (is-Cons!70966 (exprs!8326 ct2!346))) b!7298992))

(declare-fun b_lambda!281637 () Bool)

(assert (= b_lambda!281635 (or b!7298894 b_lambda!281637)))

(declare-fun bs!1913651 () Bool)

(declare-fun d!2268220 () Bool)

(assert (= bs!1913651 (and d!2268220 b!7298894)))

(assert (=> bs!1913651 (= (dynLambda!29021 lambda!451239 lt!2599822) (derivationStepZipperUp!2636 lt!2599822 (h!77413 s!7854)))))

(assert (=> bs!1913651 m!7971632))

(assert (=> d!2268208 d!2268220))

(declare-fun b_lambda!281639 () Bool)

(assert (= b_lambda!281633 (or b!7298894 b_lambda!281639)))

(declare-fun bs!1913652 () Bool)

(declare-fun d!2268222 () Bool)

(assert (= bs!1913652 (and d!2268222 b!7298894)))

(assert (=> bs!1913652 (= (dynLambda!29021 lambda!451239 ct1!250) (derivationStepZipperUp!2636 ct1!250 (h!77413 s!7854)))))

(assert (=> bs!1913652 m!7971630))

(assert (=> d!2268204 d!2268222))

(push 1)

(assert (not b!7298964))

(assert (not d!2268204))

(assert (not bm!665255))

(assert (not b!7298981))

(assert (not d!2268180))

(assert (not b!7298939))

(assert (not d!2268210))

(assert (not b!7298986))

(assert (not bs!1913652))

(assert (not b!7298991))

(assert (not b!7298977))

(assert (not bm!665254))

(assert (not bs!1913651))

(assert (not d!2268184))

(assert (not d!2268214))

(assert (not b!7298962))

(assert (not d!2268212))

(assert (not b_lambda!281637))

(assert (not b!7298992))

(assert (not b!7298978))

(assert (not d!2268176))

(assert (not b!7298959))

(assert (not b_lambda!281639))

(assert (not b!7298938))

(assert (not d!2268188))

(assert (not d!2268218))

(assert (not d!2268196))

(assert (not b!7298967))

(assert (not d!2268186))

(assert (not d!2268208))

(assert tp_is_empty!47237)

(assert (not b!7298980))

(assert (not d!2268182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

