; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694872 () Bool)

(assert start!694872)

(declare-fun b!7132857 () Bool)

(declare-fun e!4286718 () Bool)

(declare-fun tp_is_empty!45799 () Bool)

(declare-fun tp!1966089 () Bool)

(assert (=> b!7132857 (= e!4286718 (and tp_is_empty!45799 tp!1966089))))

(declare-fun b!7132858 () Bool)

(declare-fun e!4286716 () Bool)

(declare-fun tp!1966086 () Bool)

(assert (=> b!7132858 (= e!4286716 tp!1966086)))

(declare-fun b!7132859 () Bool)

(declare-fun e!4286719 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36468 0))(
  ( (C!36469 (val!28160 Int)) )
))
(declare-datatypes ((Regex!18097 0))(
  ( (ElementMatch!18097 (c!1330329 C!36468)) (Concat!26942 (regOne!36706 Regex!18097) (regTwo!36706 Regex!18097)) (EmptyExpr!18097) (Star!18097 (reg!18426 Regex!18097)) (EmptyLang!18097) (Union!18097 (regOne!36707 Regex!18097) (regTwo!36707 Regex!18097)) )
))
(declare-datatypes ((List!69250 0))(
  ( (Nil!69126) (Cons!69126 (h!75574 Regex!18097) (t!383227 List!69250)) )
))
(declare-datatypes ((Context!14182 0))(
  ( (Context!14183 (exprs!7591 List!69250)) )
))
(declare-fun z2!457 () (InoxSet Context!14182))

(declare-datatypes ((List!69251 0))(
  ( (Nil!69127) (Cons!69127 (h!75575 C!36468) (t!383228 List!69251)) )
))
(declare-fun s2!1615 () List!69251)

(declare-fun matchZipper!3353 ((InoxSet Context!14182) List!69251) Bool)

(assert (=> b!7132859 (= e!4286719 (not (matchZipper!3353 z2!457 s2!1615)))))

(declare-fun b!7132860 () Bool)

(declare-fun e!4286720 () Bool)

(declare-fun tp!1966087 () Bool)

(assert (=> b!7132860 (= e!4286720 tp!1966087)))

(declare-fun res!2910429 () Bool)

(declare-fun e!4286714 () Bool)

(assert (=> start!694872 (=> (not res!2910429) (not e!4286714))))

(declare-fun s!7358 () List!69251)

(declare-fun s1!1678 () List!69251)

(declare-fun ++!16237 (List!69251 List!69251) List!69251)

(assert (=> start!694872 (= res!2910429 (= (++!16237 s1!1678 s2!1615) s!7358))))

(assert (=> start!694872 e!4286714))

(declare-fun condSetEmpty!52254 () Bool)

(assert (=> start!694872 (= condSetEmpty!52254 (= z2!457 ((as const (Array Context!14182 Bool)) false)))))

(declare-fun setRes!52254 () Bool)

(assert (=> start!694872 setRes!52254))

(assert (=> start!694872 e!4286718))

(declare-fun condSetEmpty!52255 () Bool)

(declare-fun z1!538 () (InoxSet Context!14182))

(assert (=> start!694872 (= condSetEmpty!52255 (= z1!538 ((as const (Array Context!14182 Bool)) false)))))

(declare-fun setRes!52255 () Bool)

(assert (=> start!694872 setRes!52255))

(declare-fun e!4286715 () Bool)

(assert (=> start!694872 e!4286715))

(declare-fun e!4286717 () Bool)

(assert (=> start!694872 e!4286717))

(declare-fun b!7132861 () Bool)

(declare-fun size!41497 (List!69251) Int)

(assert (=> b!7132861 (= e!4286714 (not (< (size!41497 (t!383228 s2!1615)) (size!41497 s2!1615))))))

(assert (=> b!7132861 (= (++!16237 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127)) (t!383228 s2!1615)) s!7358)))

(declare-datatypes ((Unit!163043 0))(
  ( (Unit!163044) )
))
(declare-fun lt!2565081 () Unit!163043)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3037 (List!69251 C!36468 List!69251 List!69251) Unit!163043)

(assert (=> b!7132861 (= lt!2565081 (lemmaMoveElementToOtherListKeepsConcatEq!3037 s1!1678 (h!75575 s2!1615) (t!383228 s2!1615) s!7358))))

(declare-fun b!7132862 () Bool)

(declare-fun res!2910431 () Bool)

(assert (=> b!7132862 (=> (not res!2910431) (not e!4286714))))

(assert (=> b!7132862 (= res!2910431 e!4286719)))

(declare-fun res!2910430 () Bool)

(assert (=> b!7132862 (=> res!2910430 e!4286719)))

(assert (=> b!7132862 (= res!2910430 (not (matchZipper!3353 z1!538 s1!1678)))))

(declare-fun setElem!52255 () Context!14182)

(declare-fun setNonEmpty!52254 () Bool)

(declare-fun tp!1966091 () Bool)

(declare-fun inv!88273 (Context!14182) Bool)

(assert (=> setNonEmpty!52254 (= setRes!52255 (and tp!1966091 (inv!88273 setElem!52255) e!4286720))))

(declare-fun setRest!52255 () (InoxSet Context!14182))

(assert (=> setNonEmpty!52254 (= z1!538 ((_ map or) (store ((as const (Array Context!14182 Bool)) false) setElem!52255 true) setRest!52255))))

(declare-fun b!7132863 () Bool)

(declare-fun res!2910428 () Bool)

(assert (=> b!7132863 (=> (not res!2910428) (not e!4286714))))

(get-info :version)

(assert (=> b!7132863 (= res!2910428 (not ((_ is Nil!69127) s2!1615)))))

(declare-fun setElem!52254 () Context!14182)

(declare-fun setNonEmpty!52255 () Bool)

(declare-fun tp!1966090 () Bool)

(assert (=> setNonEmpty!52255 (= setRes!52254 (and tp!1966090 (inv!88273 setElem!52254) e!4286716))))

(declare-fun setRest!52254 () (InoxSet Context!14182))

(assert (=> setNonEmpty!52255 (= z2!457 ((_ map or) (store ((as const (Array Context!14182 Bool)) false) setElem!52254 true) setRest!52254))))

(declare-fun b!7132864 () Bool)

(declare-fun tp!1966085 () Bool)

(assert (=> b!7132864 (= e!4286717 (and tp_is_empty!45799 tp!1966085))))

(declare-fun setIsEmpty!52254 () Bool)

(assert (=> setIsEmpty!52254 setRes!52255))

(declare-fun b!7132865 () Bool)

(declare-fun tp!1966088 () Bool)

(assert (=> b!7132865 (= e!4286715 (and tp_is_empty!45799 tp!1966088))))

(declare-fun setIsEmpty!52255 () Bool)

(assert (=> setIsEmpty!52255 setRes!52254))

(assert (= (and start!694872 res!2910429) b!7132862))

(assert (= (and b!7132862 (not res!2910430)) b!7132859))

(assert (= (and b!7132862 res!2910431) b!7132863))

(assert (= (and b!7132863 res!2910428) b!7132861))

(assert (= (and start!694872 condSetEmpty!52254) setIsEmpty!52255))

(assert (= (and start!694872 (not condSetEmpty!52254)) setNonEmpty!52255))

(assert (= setNonEmpty!52255 b!7132858))

(assert (= (and start!694872 ((_ is Cons!69127) s2!1615)) b!7132857))

(assert (= (and start!694872 condSetEmpty!52255) setIsEmpty!52254))

(assert (= (and start!694872 (not condSetEmpty!52255)) setNonEmpty!52254))

(assert (= setNonEmpty!52254 b!7132860))

(assert (= (and start!694872 ((_ is Cons!69127) s1!1678)) b!7132865))

(assert (= (and start!694872 ((_ is Cons!69127) s!7358)) b!7132864))

(declare-fun m!7849926 () Bool)

(assert (=> b!7132859 m!7849926))

(declare-fun m!7849928 () Bool)

(assert (=> setNonEmpty!52255 m!7849928))

(declare-fun m!7849930 () Bool)

(assert (=> b!7132862 m!7849930))

(declare-fun m!7849932 () Bool)

(assert (=> setNonEmpty!52254 m!7849932))

(declare-fun m!7849934 () Bool)

(assert (=> b!7132861 m!7849934))

(declare-fun m!7849936 () Bool)

(assert (=> b!7132861 m!7849936))

(assert (=> b!7132861 m!7849934))

(declare-fun m!7849938 () Bool)

(assert (=> b!7132861 m!7849938))

(declare-fun m!7849940 () Bool)

(assert (=> b!7132861 m!7849940))

(declare-fun m!7849942 () Bool)

(assert (=> b!7132861 m!7849942))

(declare-fun m!7849944 () Bool)

(assert (=> start!694872 m!7849944))

(check-sat (not setNonEmpty!52255) tp_is_empty!45799 (not start!694872) (not b!7132862) (not b!7132864) (not b!7132860) (not b!7132861) (not b!7132857) (not b!7132865) (not setNonEmpty!52254) (not b!7132859) (not b!7132858))
(check-sat)
(get-model)

(declare-fun b!7132877 () Bool)

(declare-fun lt!2565084 () List!69251)

(declare-fun e!4286726 () Bool)

(assert (=> b!7132877 (= e!4286726 (or (not (= s2!1615 Nil!69127)) (= lt!2565084 s1!1678)))))

(declare-fun d!2225816 () Bool)

(assert (=> d!2225816 e!4286726))

(declare-fun res!2910437 () Bool)

(assert (=> d!2225816 (=> (not res!2910437) (not e!4286726))))

(declare-fun content!14131 (List!69251) (InoxSet C!36468))

(assert (=> d!2225816 (= res!2910437 (= (content!14131 lt!2565084) ((_ map or) (content!14131 s1!1678) (content!14131 s2!1615))))))

(declare-fun e!4286725 () List!69251)

(assert (=> d!2225816 (= lt!2565084 e!4286725)))

(declare-fun c!1330332 () Bool)

(assert (=> d!2225816 (= c!1330332 ((_ is Nil!69127) s1!1678))))

(assert (=> d!2225816 (= (++!16237 s1!1678 s2!1615) lt!2565084)))

(declare-fun b!7132874 () Bool)

(assert (=> b!7132874 (= e!4286725 s2!1615)))

(declare-fun b!7132875 () Bool)

(assert (=> b!7132875 (= e!4286725 (Cons!69127 (h!75575 s1!1678) (++!16237 (t!383228 s1!1678) s2!1615)))))

(declare-fun b!7132876 () Bool)

(declare-fun res!2910436 () Bool)

(assert (=> b!7132876 (=> (not res!2910436) (not e!4286726))))

(assert (=> b!7132876 (= res!2910436 (= (size!41497 lt!2565084) (+ (size!41497 s1!1678) (size!41497 s2!1615))))))

(assert (= (and d!2225816 c!1330332) b!7132874))

(assert (= (and d!2225816 (not c!1330332)) b!7132875))

(assert (= (and d!2225816 res!2910437) b!7132876))

(assert (= (and b!7132876 res!2910436) b!7132877))

(declare-fun m!7849946 () Bool)

(assert (=> d!2225816 m!7849946))

(declare-fun m!7849948 () Bool)

(assert (=> d!2225816 m!7849948))

(declare-fun m!7849950 () Bool)

(assert (=> d!2225816 m!7849950))

(declare-fun m!7849952 () Bool)

(assert (=> b!7132875 m!7849952))

(declare-fun m!7849954 () Bool)

(assert (=> b!7132876 m!7849954))

(declare-fun m!7849956 () Bool)

(assert (=> b!7132876 m!7849956))

(assert (=> b!7132876 m!7849942))

(assert (=> start!694872 d!2225816))

(declare-fun d!2225820 () Bool)

(declare-fun lambda!433242 () Int)

(declare-fun forall!16929 (List!69250 Int) Bool)

(assert (=> d!2225820 (= (inv!88273 setElem!52255) (forall!16929 (exprs!7591 setElem!52255) lambda!433242))))

(declare-fun bs!1887021 () Bool)

(assert (= bs!1887021 d!2225820))

(declare-fun m!7850002 () Bool)

(assert (=> bs!1887021 m!7850002))

(assert (=> setNonEmpty!52254 d!2225820))

(declare-fun bs!1887022 () Bool)

(declare-fun d!2225834 () Bool)

(assert (= bs!1887022 (and d!2225834 d!2225820)))

(declare-fun lambda!433243 () Int)

(assert (=> bs!1887022 (= lambda!433243 lambda!433242)))

(assert (=> d!2225834 (= (inv!88273 setElem!52254) (forall!16929 (exprs!7591 setElem!52254) lambda!433243))))

(declare-fun bs!1887023 () Bool)

(assert (= bs!1887023 d!2225834))

(declare-fun m!7850004 () Bool)

(assert (=> bs!1887023 m!7850004))

(assert (=> setNonEmpty!52255 d!2225834))

(declare-fun d!2225836 () Bool)

(declare-fun c!1330346 () Bool)

(declare-fun isEmpty!40037 (List!69251) Bool)

(assert (=> d!2225836 (= c!1330346 (isEmpty!40037 s2!1615))))

(declare-fun e!4286744 () Bool)

(assert (=> d!2225836 (= (matchZipper!3353 z2!457 s2!1615) e!4286744)))

(declare-fun b!7132912 () Bool)

(declare-fun nullableZipper!2768 ((InoxSet Context!14182)) Bool)

(assert (=> b!7132912 (= e!4286744 (nullableZipper!2768 z2!457))))

(declare-fun b!7132913 () Bool)

(declare-fun derivationStepZipper!3180 ((InoxSet Context!14182) C!36468) (InoxSet Context!14182))

(declare-fun head!14478 (List!69251) C!36468)

(declare-fun tail!13950 (List!69251) List!69251)

(assert (=> b!7132913 (= e!4286744 (matchZipper!3353 (derivationStepZipper!3180 z2!457 (head!14478 s2!1615)) (tail!13950 s2!1615)))))

(assert (= (and d!2225836 c!1330346) b!7132912))

(assert (= (and d!2225836 (not c!1330346)) b!7132913))

(declare-fun m!7850006 () Bool)

(assert (=> d!2225836 m!7850006))

(declare-fun m!7850008 () Bool)

(assert (=> b!7132912 m!7850008))

(declare-fun m!7850010 () Bool)

(assert (=> b!7132913 m!7850010))

(assert (=> b!7132913 m!7850010))

(declare-fun m!7850012 () Bool)

(assert (=> b!7132913 m!7850012))

(declare-fun m!7850014 () Bool)

(assert (=> b!7132913 m!7850014))

(assert (=> b!7132913 m!7850012))

(assert (=> b!7132913 m!7850014))

(declare-fun m!7850016 () Bool)

(assert (=> b!7132913 m!7850016))

(assert (=> b!7132859 d!2225836))

(declare-fun b!7132917 () Bool)

(declare-fun e!4286746 () Bool)

(declare-fun lt!2565096 () List!69251)

(assert (=> b!7132917 (= e!4286746 (or (not (= (Cons!69127 (h!75575 s2!1615) Nil!69127) Nil!69127)) (= lt!2565096 s1!1678)))))

(declare-fun d!2225838 () Bool)

(assert (=> d!2225838 e!4286746))

(declare-fun res!2910447 () Bool)

(assert (=> d!2225838 (=> (not res!2910447) (not e!4286746))))

(assert (=> d!2225838 (= res!2910447 (= (content!14131 lt!2565096) ((_ map or) (content!14131 s1!1678) (content!14131 (Cons!69127 (h!75575 s2!1615) Nil!69127)))))))

(declare-fun e!4286745 () List!69251)

(assert (=> d!2225838 (= lt!2565096 e!4286745)))

(declare-fun c!1330347 () Bool)

(assert (=> d!2225838 (= c!1330347 ((_ is Nil!69127) s1!1678))))

(assert (=> d!2225838 (= (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127)) lt!2565096)))

(declare-fun b!7132914 () Bool)

(assert (=> b!7132914 (= e!4286745 (Cons!69127 (h!75575 s2!1615) Nil!69127))))

(declare-fun b!7132915 () Bool)

(assert (=> b!7132915 (= e!4286745 (Cons!69127 (h!75575 s1!1678) (++!16237 (t!383228 s1!1678) (Cons!69127 (h!75575 s2!1615) Nil!69127))))))

(declare-fun b!7132916 () Bool)

(declare-fun res!2910446 () Bool)

(assert (=> b!7132916 (=> (not res!2910446) (not e!4286746))))

(assert (=> b!7132916 (= res!2910446 (= (size!41497 lt!2565096) (+ (size!41497 s1!1678) (size!41497 (Cons!69127 (h!75575 s2!1615) Nil!69127)))))))

(assert (= (and d!2225838 c!1330347) b!7132914))

(assert (= (and d!2225838 (not c!1330347)) b!7132915))

(assert (= (and d!2225838 res!2910447) b!7132916))

(assert (= (and b!7132916 res!2910446) b!7132917))

(declare-fun m!7850018 () Bool)

(assert (=> d!2225838 m!7850018))

(assert (=> d!2225838 m!7849948))

(declare-fun m!7850020 () Bool)

(assert (=> d!2225838 m!7850020))

(declare-fun m!7850022 () Bool)

(assert (=> b!7132915 m!7850022))

(declare-fun m!7850024 () Bool)

(assert (=> b!7132916 m!7850024))

(assert (=> b!7132916 m!7849956))

(declare-fun m!7850026 () Bool)

(assert (=> b!7132916 m!7850026))

(assert (=> b!7132861 d!2225838))

(declare-fun d!2225840 () Bool)

(declare-fun lt!2565099 () Int)

(assert (=> d!2225840 (>= lt!2565099 0)))

(declare-fun e!4286749 () Int)

(assert (=> d!2225840 (= lt!2565099 e!4286749)))

(declare-fun c!1330350 () Bool)

(assert (=> d!2225840 (= c!1330350 ((_ is Nil!69127) (t!383228 s2!1615)))))

(assert (=> d!2225840 (= (size!41497 (t!383228 s2!1615)) lt!2565099)))

(declare-fun b!7132922 () Bool)

(assert (=> b!7132922 (= e!4286749 0)))

(declare-fun b!7132923 () Bool)

(assert (=> b!7132923 (= e!4286749 (+ 1 (size!41497 (t!383228 (t!383228 s2!1615)))))))

(assert (= (and d!2225840 c!1330350) b!7132922))

(assert (= (and d!2225840 (not c!1330350)) b!7132923))

(declare-fun m!7850028 () Bool)

(assert (=> b!7132923 m!7850028))

(assert (=> b!7132861 d!2225840))

(declare-fun d!2225842 () Bool)

(assert (=> d!2225842 (= (++!16237 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127)) (t!383228 s2!1615)) s!7358)))

(declare-fun lt!2565102 () Unit!163043)

(declare-fun choose!55125 (List!69251 C!36468 List!69251 List!69251) Unit!163043)

(assert (=> d!2225842 (= lt!2565102 (choose!55125 s1!1678 (h!75575 s2!1615) (t!383228 s2!1615) s!7358))))

(assert (=> d!2225842 (= (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) (t!383228 s2!1615))) s!7358)))

(assert (=> d!2225842 (= (lemmaMoveElementToOtherListKeepsConcatEq!3037 s1!1678 (h!75575 s2!1615) (t!383228 s2!1615) s!7358) lt!2565102)))

(declare-fun bs!1887024 () Bool)

(assert (= bs!1887024 d!2225842))

(assert (=> bs!1887024 m!7849934))

(assert (=> bs!1887024 m!7849934))

(assert (=> bs!1887024 m!7849938))

(declare-fun m!7850030 () Bool)

(assert (=> bs!1887024 m!7850030))

(declare-fun m!7850032 () Bool)

(assert (=> bs!1887024 m!7850032))

(assert (=> b!7132861 d!2225842))

(declare-fun d!2225844 () Bool)

(declare-fun lt!2565103 () Int)

(assert (=> d!2225844 (>= lt!2565103 0)))

(declare-fun e!4286750 () Int)

(assert (=> d!2225844 (= lt!2565103 e!4286750)))

(declare-fun c!1330351 () Bool)

(assert (=> d!2225844 (= c!1330351 ((_ is Nil!69127) s2!1615))))

(assert (=> d!2225844 (= (size!41497 s2!1615) lt!2565103)))

(declare-fun b!7132924 () Bool)

(assert (=> b!7132924 (= e!4286750 0)))

(declare-fun b!7132925 () Bool)

(assert (=> b!7132925 (= e!4286750 (+ 1 (size!41497 (t!383228 s2!1615))))))

(assert (= (and d!2225844 c!1330351) b!7132924))

(assert (= (and d!2225844 (not c!1330351)) b!7132925))

(assert (=> b!7132925 m!7849936))

(assert (=> b!7132861 d!2225844))

(declare-fun b!7132929 () Bool)

(declare-fun e!4286752 () Bool)

(declare-fun lt!2565104 () List!69251)

(assert (=> b!7132929 (= e!4286752 (or (not (= (t!383228 s2!1615) Nil!69127)) (= lt!2565104 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127)))))))

(declare-fun d!2225846 () Bool)

(assert (=> d!2225846 e!4286752))

(declare-fun res!2910449 () Bool)

(assert (=> d!2225846 (=> (not res!2910449) (not e!4286752))))

(assert (=> d!2225846 (= res!2910449 (= (content!14131 lt!2565104) ((_ map or) (content!14131 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127))) (content!14131 (t!383228 s2!1615)))))))

(declare-fun e!4286751 () List!69251)

(assert (=> d!2225846 (= lt!2565104 e!4286751)))

(declare-fun c!1330352 () Bool)

(assert (=> d!2225846 (= c!1330352 ((_ is Nil!69127) (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127))))))

(assert (=> d!2225846 (= (++!16237 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127)) (t!383228 s2!1615)) lt!2565104)))

(declare-fun b!7132926 () Bool)

(assert (=> b!7132926 (= e!4286751 (t!383228 s2!1615))))

(declare-fun b!7132927 () Bool)

(assert (=> b!7132927 (= e!4286751 (Cons!69127 (h!75575 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127))) (++!16237 (t!383228 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127))) (t!383228 s2!1615))))))

(declare-fun b!7132928 () Bool)

(declare-fun res!2910448 () Bool)

(assert (=> b!7132928 (=> (not res!2910448) (not e!4286752))))

(assert (=> b!7132928 (= res!2910448 (= (size!41497 lt!2565104) (+ (size!41497 (++!16237 s1!1678 (Cons!69127 (h!75575 s2!1615) Nil!69127))) (size!41497 (t!383228 s2!1615)))))))

(assert (= (and d!2225846 c!1330352) b!7132926))

(assert (= (and d!2225846 (not c!1330352)) b!7132927))

(assert (= (and d!2225846 res!2910449) b!7132928))

(assert (= (and b!7132928 res!2910448) b!7132929))

(declare-fun m!7850034 () Bool)

(assert (=> d!2225846 m!7850034))

(assert (=> d!2225846 m!7849934))

(declare-fun m!7850036 () Bool)

(assert (=> d!2225846 m!7850036))

(declare-fun m!7850038 () Bool)

(assert (=> d!2225846 m!7850038))

(declare-fun m!7850040 () Bool)

(assert (=> b!7132927 m!7850040))

(declare-fun m!7850042 () Bool)

(assert (=> b!7132928 m!7850042))

(assert (=> b!7132928 m!7849934))

(declare-fun m!7850044 () Bool)

(assert (=> b!7132928 m!7850044))

(assert (=> b!7132928 m!7849936))

(assert (=> b!7132861 d!2225846))

(declare-fun d!2225848 () Bool)

(declare-fun c!1330353 () Bool)

(assert (=> d!2225848 (= c!1330353 (isEmpty!40037 s1!1678))))

(declare-fun e!4286753 () Bool)

(assert (=> d!2225848 (= (matchZipper!3353 z1!538 s1!1678) e!4286753)))

(declare-fun b!7132930 () Bool)

(assert (=> b!7132930 (= e!4286753 (nullableZipper!2768 z1!538))))

(declare-fun b!7132931 () Bool)

(assert (=> b!7132931 (= e!4286753 (matchZipper!3353 (derivationStepZipper!3180 z1!538 (head!14478 s1!1678)) (tail!13950 s1!1678)))))

(assert (= (and d!2225848 c!1330353) b!7132930))

(assert (= (and d!2225848 (not c!1330353)) b!7132931))

(declare-fun m!7850046 () Bool)

(assert (=> d!2225848 m!7850046))

(declare-fun m!7850048 () Bool)

(assert (=> b!7132930 m!7850048))

(declare-fun m!7850050 () Bool)

(assert (=> b!7132931 m!7850050))

(assert (=> b!7132931 m!7850050))

(declare-fun m!7850052 () Bool)

(assert (=> b!7132931 m!7850052))

(declare-fun m!7850054 () Bool)

(assert (=> b!7132931 m!7850054))

(assert (=> b!7132931 m!7850052))

(assert (=> b!7132931 m!7850054))

(declare-fun m!7850056 () Bool)

(assert (=> b!7132931 m!7850056))

(assert (=> b!7132862 d!2225848))

(declare-fun b!7132936 () Bool)

(declare-fun e!4286756 () Bool)

(declare-fun tp!1966096 () Bool)

(declare-fun tp!1966097 () Bool)

(assert (=> b!7132936 (= e!4286756 (and tp!1966096 tp!1966097))))

(assert (=> b!7132858 (= tp!1966086 e!4286756)))

(assert (= (and b!7132858 ((_ is Cons!69126) (exprs!7591 setElem!52254))) b!7132936))

(declare-fun condSetEmpty!52258 () Bool)

(assert (=> setNonEmpty!52254 (= condSetEmpty!52258 (= setRest!52255 ((as const (Array Context!14182 Bool)) false)))))

(declare-fun setRes!52258 () Bool)

(assert (=> setNonEmpty!52254 (= tp!1966091 setRes!52258)))

(declare-fun setIsEmpty!52258 () Bool)

(assert (=> setIsEmpty!52258 setRes!52258))

(declare-fun e!4286759 () Bool)

(declare-fun setElem!52258 () Context!14182)

(declare-fun setNonEmpty!52258 () Bool)

(declare-fun tp!1966102 () Bool)

(assert (=> setNonEmpty!52258 (= setRes!52258 (and tp!1966102 (inv!88273 setElem!52258) e!4286759))))

(declare-fun setRest!52258 () (InoxSet Context!14182))

(assert (=> setNonEmpty!52258 (= setRest!52255 ((_ map or) (store ((as const (Array Context!14182 Bool)) false) setElem!52258 true) setRest!52258))))

(declare-fun b!7132941 () Bool)

(declare-fun tp!1966103 () Bool)

(assert (=> b!7132941 (= e!4286759 tp!1966103)))

(assert (= (and setNonEmpty!52254 condSetEmpty!52258) setIsEmpty!52258))

(assert (= (and setNonEmpty!52254 (not condSetEmpty!52258)) setNonEmpty!52258))

(assert (= setNonEmpty!52258 b!7132941))

(declare-fun m!7850058 () Bool)

(assert (=> setNonEmpty!52258 m!7850058))

(declare-fun b!7132946 () Bool)

(declare-fun e!4286762 () Bool)

(declare-fun tp!1966106 () Bool)

(assert (=> b!7132946 (= e!4286762 (and tp_is_empty!45799 tp!1966106))))

(assert (=> b!7132865 (= tp!1966088 e!4286762)))

(assert (= (and b!7132865 ((_ is Cons!69127) (t!383228 s1!1678))) b!7132946))

(declare-fun condSetEmpty!52259 () Bool)

(assert (=> setNonEmpty!52255 (= condSetEmpty!52259 (= setRest!52254 ((as const (Array Context!14182 Bool)) false)))))

(declare-fun setRes!52259 () Bool)

(assert (=> setNonEmpty!52255 (= tp!1966090 setRes!52259)))

(declare-fun setIsEmpty!52259 () Bool)

(assert (=> setIsEmpty!52259 setRes!52259))

(declare-fun tp!1966107 () Bool)

(declare-fun setNonEmpty!52259 () Bool)

(declare-fun e!4286763 () Bool)

(declare-fun setElem!52259 () Context!14182)

(assert (=> setNonEmpty!52259 (= setRes!52259 (and tp!1966107 (inv!88273 setElem!52259) e!4286763))))

(declare-fun setRest!52259 () (InoxSet Context!14182))

(assert (=> setNonEmpty!52259 (= setRest!52254 ((_ map or) (store ((as const (Array Context!14182 Bool)) false) setElem!52259 true) setRest!52259))))

(declare-fun b!7132947 () Bool)

(declare-fun tp!1966108 () Bool)

(assert (=> b!7132947 (= e!4286763 tp!1966108)))

(assert (= (and setNonEmpty!52255 condSetEmpty!52259) setIsEmpty!52259))

(assert (= (and setNonEmpty!52255 (not condSetEmpty!52259)) setNonEmpty!52259))

(assert (= setNonEmpty!52259 b!7132947))

(declare-fun m!7850060 () Bool)

(assert (=> setNonEmpty!52259 m!7850060))

(declare-fun b!7132948 () Bool)

(declare-fun e!4286764 () Bool)

(declare-fun tp!1966109 () Bool)

(assert (=> b!7132948 (= e!4286764 (and tp_is_empty!45799 tp!1966109))))

(assert (=> b!7132864 (= tp!1966085 e!4286764)))

(assert (= (and b!7132864 ((_ is Cons!69127) (t!383228 s!7358))) b!7132948))

(declare-fun b!7132949 () Bool)

(declare-fun e!4286765 () Bool)

(declare-fun tp!1966110 () Bool)

(declare-fun tp!1966111 () Bool)

(assert (=> b!7132949 (= e!4286765 (and tp!1966110 tp!1966111))))

(assert (=> b!7132860 (= tp!1966087 e!4286765)))

(assert (= (and b!7132860 ((_ is Cons!69126) (exprs!7591 setElem!52255))) b!7132949))

(declare-fun b!7132950 () Bool)

(declare-fun e!4286766 () Bool)

(declare-fun tp!1966112 () Bool)

(assert (=> b!7132950 (= e!4286766 (and tp_is_empty!45799 tp!1966112))))

(assert (=> b!7132857 (= tp!1966089 e!4286766)))

(assert (= (and b!7132857 ((_ is Cons!69127) (t!383228 s2!1615))) b!7132950))

(check-sat (not b!7132948) (not d!2225848) (not d!2225846) (not b!7132946) tp_is_empty!45799 (not b!7132913) (not b!7132875) (not b!7132941) (not b!7132950) (not d!2225820) (not d!2225842) (not b!7132930) (not b!7132949) (not b!7132923) (not b!7132916) (not b!7132947) (not b!7132931) (not b!7132927) (not d!2225838) (not setNonEmpty!52259) (not d!2225834) (not d!2225836) (not b!7132925) (not b!7132912) (not b!7132928) (not b!7132876) (not b!7132915) (not setNonEmpty!52258) (not b!7132936) (not d!2225816))
(check-sat)
