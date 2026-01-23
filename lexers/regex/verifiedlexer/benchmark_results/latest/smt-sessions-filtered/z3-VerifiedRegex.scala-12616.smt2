; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698986 () Bool)

(assert start!698986)

(declare-fun b!7177957 () Bool)

(declare-fun e!4310859 () Bool)

(declare-datatypes ((C!36956 0))(
  ( (C!36957 (val!28426 Int)) )
))
(declare-datatypes ((Regex!18341 0))(
  ( (ElementMatch!18341 (c!1336677 C!36956)) (Concat!27186 (regOne!37194 Regex!18341) (regTwo!37194 Regex!18341)) (EmptyExpr!18341) (Star!18341 (reg!18670 Regex!18341)) (EmptyLang!18341) (Union!18341 (regOne!37195 Regex!18341) (regTwo!37195 Regex!18341)) )
))
(declare-datatypes ((List!69758 0))(
  ( (Nil!69634) (Cons!69634 (h!76082 Regex!18341) (t!383779 List!69758)) )
))
(declare-datatypes ((Context!14586 0))(
  ( (Context!14587 (exprs!7793 List!69758)) )
))
(declare-fun nullableContext!190 (Context!14586) Bool)

(assert (=> b!7177957 (= e!4310859 (not (nullableContext!190 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))))))

(declare-fun setIsEmpty!53067 () Bool)

(declare-fun setRes!53067 () Bool)

(assert (=> setIsEmpty!53067 setRes!53067))

(declare-fun res!2923885 () Bool)

(assert (=> start!698986 (=> (not res!2923885) (not e!4310859))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14586))

(declare-datatypes ((List!69759 0))(
  ( (Nil!69635) (Cons!69635 (h!76083 Context!14586) (t!383780 List!69759)) )
))
(declare-fun unfocusZipper!2601 (List!69759) Regex!18341)

(declare-fun toList!11284 ((InoxSet Context!14586)) List!69759)

(assert (=> start!698986 (= res!2923885 (= (unfocusZipper!2601 (toList!11284 z!3530)) EmptyExpr!18341))))

(assert (=> start!698986 e!4310859))

(declare-fun condSetEmpty!53067 () Bool)

(assert (=> start!698986 (= condSetEmpty!53067 (= z!3530 ((as const (Array Context!14586 Bool)) false)))))

(assert (=> start!698986 setRes!53067))

(declare-fun e!4310860 () Bool)

(declare-fun setElem!53067 () Context!14586)

(declare-fun tp!1991239 () Bool)

(declare-fun setNonEmpty!53067 () Bool)

(declare-fun inv!88874 (Context!14586) Bool)

(assert (=> setNonEmpty!53067 (= setRes!53067 (and tp!1991239 (inv!88874 setElem!53067) e!4310860))))

(declare-fun setRest!53067 () (InoxSet Context!14586))

(assert (=> setNonEmpty!53067 (= z!3530 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) setElem!53067 true) setRest!53067))))

(declare-fun b!7177958 () Bool)

(declare-fun tp!1991238 () Bool)

(assert (=> b!7177958 (= e!4310860 tp!1991238)))

(declare-fun b!7177959 () Bool)

(declare-fun res!2923884 () Bool)

(assert (=> b!7177959 (=> (not res!2923884) (not e!4310859))))

(declare-fun focus!416 (Regex!18341) (InoxSet Context!14586))

(assert (=> b!7177959 (= res!2923884 (= z!3530 (focus!416 EmptyExpr!18341)))))

(assert (= (and start!698986 res!2923885) b!7177959))

(assert (= (and b!7177959 res!2923884) b!7177957))

(assert (= (and start!698986 condSetEmpty!53067) setIsEmpty!53067))

(assert (= (and start!698986 (not condSetEmpty!53067)) setNonEmpty!53067))

(assert (= setNonEmpty!53067 b!7177958))

(declare-fun m!7876850 () Bool)

(assert (=> b!7177957 m!7876850))

(declare-fun m!7876852 () Bool)

(assert (=> start!698986 m!7876852))

(assert (=> start!698986 m!7876852))

(declare-fun m!7876854 () Bool)

(assert (=> start!698986 m!7876854))

(declare-fun m!7876856 () Bool)

(assert (=> setNonEmpty!53067 m!7876856))

(declare-fun m!7876858 () Bool)

(assert (=> b!7177959 m!7876858))

(check-sat (not b!7177959) (not b!7177958) (not setNonEmpty!53067) (not b!7177957) (not start!698986))
(check-sat)
(get-model)

(declare-fun d!2235645 () Bool)

(declare-fun lt!2570579 () Regex!18341)

(declare-fun validRegex!9463 (Regex!18341) Bool)

(assert (=> d!2235645 (validRegex!9463 lt!2570579)))

(declare-fun generalisedUnion!2766 (List!69758) Regex!18341)

(declare-fun unfocusZipperList!2322 (List!69759) List!69758)

(assert (=> d!2235645 (= lt!2570579 (generalisedUnion!2766 (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> d!2235645 (= (unfocusZipper!2601 (toList!11284 z!3530)) lt!2570579)))

(declare-fun bs!1895296 () Bool)

(assert (= bs!1895296 d!2235645))

(declare-fun m!7876860 () Bool)

(assert (=> bs!1895296 m!7876860))

(assert (=> bs!1895296 m!7876852))

(declare-fun m!7876862 () Bool)

(assert (=> bs!1895296 m!7876862))

(assert (=> bs!1895296 m!7876862))

(declare-fun m!7876864 () Bool)

(assert (=> bs!1895296 m!7876864))

(assert (=> start!698986 d!2235645))

(declare-fun d!2235647 () Bool)

(declare-fun e!4310863 () Bool)

(assert (=> d!2235647 e!4310863))

(declare-fun res!2923888 () Bool)

(assert (=> d!2235647 (=> (not res!2923888) (not e!4310863))))

(declare-fun lt!2570582 () List!69759)

(declare-fun noDuplicate!2882 (List!69759) Bool)

(assert (=> d!2235647 (= res!2923888 (noDuplicate!2882 lt!2570582))))

(declare-fun choose!55378 ((InoxSet Context!14586)) List!69759)

(assert (=> d!2235647 (= lt!2570582 (choose!55378 z!3530))))

(assert (=> d!2235647 (= (toList!11284 z!3530) lt!2570582)))

(declare-fun b!7177962 () Bool)

(declare-fun content!14311 (List!69759) (InoxSet Context!14586))

(assert (=> b!7177962 (= e!4310863 (= (content!14311 lt!2570582) z!3530))))

(assert (= (and d!2235647 res!2923888) b!7177962))

(declare-fun m!7876866 () Bool)

(assert (=> d!2235647 m!7876866))

(declare-fun m!7876868 () Bool)

(assert (=> d!2235647 m!7876868))

(declare-fun m!7876870 () Bool)

(assert (=> b!7177962 m!7876870))

(assert (=> start!698986 d!2235647))

(declare-fun d!2235649 () Bool)

(declare-fun lambda!437333 () Int)

(declare-fun forall!17170 (List!69758 Int) Bool)

(assert (=> d!2235649 (= (inv!88874 setElem!53067) (forall!17170 (exprs!7793 setElem!53067) lambda!437333))))

(declare-fun bs!1895301 () Bool)

(assert (= bs!1895301 d!2235649))

(declare-fun m!7876898 () Bool)

(assert (=> bs!1895301 m!7876898))

(assert (=> setNonEmpty!53067 d!2235649))

(declare-fun d!2235659 () Bool)

(declare-fun e!4310878 () Bool)

(assert (=> d!2235659 e!4310878))

(declare-fun res!2923899 () Bool)

(assert (=> d!2235659 (=> (not res!2923899) (not e!4310878))))

(assert (=> d!2235659 (= res!2923899 (validRegex!9463 EmptyExpr!18341))))

(assert (=> d!2235659 (= (focus!416 EmptyExpr!18341) (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))

(declare-fun b!7177981 () Bool)

(assert (=> b!7177981 (= e!4310878 (= (unfocusZipper!2601 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))) EmptyExpr!18341))))

(assert (= (and d!2235659 res!2923899) b!7177981))

(declare-fun m!7876900 () Bool)

(assert (=> d!2235659 m!7876900))

(declare-fun m!7876902 () Bool)

(assert (=> d!2235659 m!7876902))

(assert (=> b!7177981 m!7876902))

(assert (=> b!7177981 m!7876902))

(declare-fun m!7876904 () Bool)

(assert (=> b!7177981 m!7876904))

(assert (=> b!7177981 m!7876904))

(declare-fun m!7876906 () Bool)

(assert (=> b!7177981 m!7876906))

(assert (=> b!7177959 d!2235659))

(declare-fun bs!1895302 () Bool)

(declare-fun d!2235661 () Bool)

(assert (= bs!1895302 (and d!2235661 d!2235649)))

(declare-fun lambda!437336 () Int)

(assert (=> bs!1895302 (not (= lambda!437336 lambda!437333))))

(assert (=> d!2235661 (= (nullableContext!190 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))) (forall!17170 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))) lambda!437336))))

(declare-fun bs!1895303 () Bool)

(assert (= bs!1895303 d!2235661))

(declare-fun m!7876908 () Bool)

(assert (=> bs!1895303 m!7876908))

(assert (=> b!7177957 d!2235661))

(declare-fun condSetEmpty!53073 () Bool)

(assert (=> setNonEmpty!53067 (= condSetEmpty!53073 (= setRest!53067 ((as const (Array Context!14586 Bool)) false)))))

(declare-fun setRes!53073 () Bool)

(assert (=> setNonEmpty!53067 (= tp!1991239 setRes!53073)))

(declare-fun setIsEmpty!53073 () Bool)

(assert (=> setIsEmpty!53073 setRes!53073))

(declare-fun setElem!53073 () Context!14586)

(declare-fun setNonEmpty!53073 () Bool)

(declare-fun e!4310881 () Bool)

(declare-fun tp!1991256 () Bool)

(assert (=> setNonEmpty!53073 (= setRes!53073 (and tp!1991256 (inv!88874 setElem!53073) e!4310881))))

(declare-fun setRest!53073 () (InoxSet Context!14586))

(assert (=> setNonEmpty!53073 (= setRest!53067 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) setElem!53073 true) setRest!53073))))

(declare-fun b!7177986 () Bool)

(declare-fun tp!1991257 () Bool)

(assert (=> b!7177986 (= e!4310881 tp!1991257)))

(assert (= (and setNonEmpty!53067 condSetEmpty!53073) setIsEmpty!53073))

(assert (= (and setNonEmpty!53067 (not condSetEmpty!53073)) setNonEmpty!53073))

(assert (= setNonEmpty!53073 b!7177986))

(declare-fun m!7876910 () Bool)

(assert (=> setNonEmpty!53073 m!7876910))

(declare-fun b!7177991 () Bool)

(declare-fun e!4310884 () Bool)

(declare-fun tp!1991262 () Bool)

(declare-fun tp!1991263 () Bool)

(assert (=> b!7177991 (= e!4310884 (and tp!1991262 tp!1991263))))

(assert (=> b!7177958 (= tp!1991238 e!4310884)))

(get-info :version)

(assert (= (and b!7177958 ((_ is Cons!69634) (exprs!7793 setElem!53067))) b!7177991))

(check-sat (not b!7177986) (not b!7177981) (not b!7177962) (not d!2235661) (not setNonEmpty!53073) (not d!2235659) (not d!2235645) (not b!7177991) (not d!2235647) (not d!2235649))
(check-sat)
(get-model)

(declare-fun d!2235679 () Bool)

(assert (=> d!2235679 (= (validRegex!9463 EmptyExpr!18341) true)))

(assert (=> d!2235659 d!2235679))

(declare-fun d!2235681 () Bool)

(declare-fun lt!2570591 () Regex!18341)

(assert (=> d!2235681 (validRegex!9463 lt!2570591)))

(assert (=> d!2235681 (= lt!2570591 (generalisedUnion!2766 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))

(assert (=> d!2235681 (= (unfocusZipper!2601 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))) lt!2570591)))

(declare-fun bs!1895305 () Bool)

(assert (= bs!1895305 d!2235681))

(declare-fun m!7876946 () Bool)

(assert (=> bs!1895305 m!7876946))

(assert (=> bs!1895305 m!7876904))

(declare-fun m!7876948 () Bool)

(assert (=> bs!1895305 m!7876948))

(assert (=> bs!1895305 m!7876948))

(declare-fun m!7876950 () Bool)

(assert (=> bs!1895305 m!7876950))

(assert (=> b!7177981 d!2235681))

(declare-fun d!2235685 () Bool)

(declare-fun e!4310926 () Bool)

(assert (=> d!2235685 e!4310926))

(declare-fun res!2923931 () Bool)

(assert (=> d!2235685 (=> (not res!2923931) (not e!4310926))))

(declare-fun lt!2570592 () List!69759)

(assert (=> d!2235685 (= res!2923931 (noDuplicate!2882 lt!2570592))))

(assert (=> d!2235685 (= lt!2570592 (choose!55378 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))

(assert (=> d!2235685 (= (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)) lt!2570592)))

(declare-fun b!7178040 () Bool)

(assert (=> b!7178040 (= e!4310926 (= (content!14311 lt!2570592) (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))

(assert (= (and d!2235685 res!2923931) b!7178040))

(declare-fun m!7876952 () Bool)

(assert (=> d!2235685 m!7876952))

(assert (=> d!2235685 m!7876902))

(declare-fun m!7876954 () Bool)

(assert (=> d!2235685 m!7876954))

(declare-fun m!7876956 () Bool)

(assert (=> b!7178040 m!7876956))

(assert (=> b!7177981 d!2235685))

(declare-fun d!2235687 () Bool)

(declare-fun c!1336691 () Bool)

(assert (=> d!2235687 (= c!1336691 ((_ is Nil!69635) lt!2570582))))

(declare-fun e!4310936 () (InoxSet Context!14586))

(assert (=> d!2235687 (= (content!14311 lt!2570582) e!4310936)))

(declare-fun b!7178054 () Bool)

(assert (=> b!7178054 (= e!4310936 ((as const (Array Context!14586 Bool)) false))))

(declare-fun b!7178055 () Bool)

(assert (=> b!7178055 (= e!4310936 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) (h!76083 lt!2570582) true) (content!14311 (t!383780 lt!2570582))))))

(assert (= (and d!2235687 c!1336691) b!7178054))

(assert (= (and d!2235687 (not c!1336691)) b!7178055))

(declare-fun m!7876964 () Bool)

(assert (=> b!7178055 m!7876964))

(declare-fun m!7876966 () Bool)

(assert (=> b!7178055 m!7876966))

(assert (=> b!7177962 d!2235687))

(declare-fun d!2235691 () Bool)

(declare-fun res!2923945 () Bool)

(declare-fun e!4310953 () Bool)

(assert (=> d!2235691 (=> res!2923945 e!4310953)))

(assert (=> d!2235691 (= res!2923945 ((_ is Nil!69634) (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))))))

(assert (=> d!2235691 (= (forall!17170 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))) lambda!437336) e!4310953)))

(declare-fun b!7178080 () Bool)

(declare-fun e!4310954 () Bool)

(assert (=> b!7178080 (= e!4310953 e!4310954)))

(declare-fun res!2923946 () Bool)

(assert (=> b!7178080 (=> (not res!2923946) (not e!4310954))))

(declare-fun dynLambda!28357 (Int Regex!18341) Bool)

(assert (=> b!7178080 (= res!2923946 (dynLambda!28357 lambda!437336 (h!76082 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))))))

(declare-fun b!7178081 () Bool)

(assert (=> b!7178081 (= e!4310954 (forall!17170 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))) lambda!437336))))

(assert (= (and d!2235691 (not res!2923945)) b!7178080))

(assert (= (and b!7178080 res!2923946) b!7178081))

(declare-fun b_lambda!274583 () Bool)

(assert (=> (not b_lambda!274583) (not b!7178080)))

(declare-fun m!7876968 () Bool)

(assert (=> b!7178080 m!7876968))

(declare-fun m!7876970 () Bool)

(assert (=> b!7178081 m!7876970))

(assert (=> d!2235661 d!2235691))

(declare-fun d!2235693 () Bool)

(declare-fun res!2923953 () Bool)

(declare-fun e!4310965 () Bool)

(assert (=> d!2235693 (=> res!2923953 e!4310965)))

(assert (=> d!2235693 (= res!2923953 ((_ is Nil!69635) lt!2570582))))

(assert (=> d!2235693 (= (noDuplicate!2882 lt!2570582) e!4310965)))

(declare-fun b!7178096 () Bool)

(declare-fun e!4310966 () Bool)

(assert (=> b!7178096 (= e!4310965 e!4310966)))

(declare-fun res!2923954 () Bool)

(assert (=> b!7178096 (=> (not res!2923954) (not e!4310966))))

(declare-fun contains!20714 (List!69759 Context!14586) Bool)

(assert (=> b!7178096 (= res!2923954 (not (contains!20714 (t!383780 lt!2570582) (h!76083 lt!2570582))))))

(declare-fun b!7178097 () Bool)

(assert (=> b!7178097 (= e!4310966 (noDuplicate!2882 (t!383780 lt!2570582)))))

(assert (= (and d!2235693 (not res!2923953)) b!7178096))

(assert (= (and b!7178096 res!2923954) b!7178097))

(declare-fun m!7876992 () Bool)

(assert (=> b!7178096 m!7876992))

(declare-fun m!7876994 () Bool)

(assert (=> b!7178097 m!7876994))

(assert (=> d!2235647 d!2235693))

(declare-fun d!2235697 () Bool)

(declare-fun e!4310980 () Bool)

(assert (=> d!2235697 e!4310980))

(declare-fun res!2923960 () Bool)

(assert (=> d!2235697 (=> (not res!2923960) (not e!4310980))))

(declare-fun res!2923959 () List!69759)

(assert (=> d!2235697 (= res!2923960 (noDuplicate!2882 res!2923959))))

(declare-fun e!4310979 () Bool)

(assert (=> d!2235697 e!4310979))

(assert (=> d!2235697 (= (choose!55378 z!3530) res!2923959)))

(declare-fun b!7178122 () Bool)

(declare-fun e!4310981 () Bool)

(declare-fun tp!1991286 () Bool)

(assert (=> b!7178122 (= e!4310981 tp!1991286)))

(declare-fun b!7178121 () Bool)

(declare-fun tp!1991287 () Bool)

(assert (=> b!7178121 (= e!4310979 (and (inv!88874 (h!76083 res!2923959)) e!4310981 tp!1991287))))

(declare-fun b!7178123 () Bool)

(assert (=> b!7178123 (= e!4310980 (= (content!14311 res!2923959) z!3530))))

(assert (= b!7178121 b!7178122))

(assert (= (and d!2235697 ((_ is Cons!69635) res!2923959)) b!7178121))

(assert (= (and d!2235697 res!2923960) b!7178123))

(declare-fun m!7877004 () Bool)

(assert (=> d!2235697 m!7877004))

(declare-fun m!7877006 () Bool)

(assert (=> b!7178121 m!7877006))

(declare-fun m!7877008 () Bool)

(assert (=> b!7178123 m!7877008))

(assert (=> d!2235647 d!2235697))

(declare-fun bs!1895316 () Bool)

(declare-fun d!2235701 () Bool)

(assert (= bs!1895316 (and d!2235701 d!2235649)))

(declare-fun lambda!437344 () Int)

(assert (=> bs!1895316 (= lambda!437344 lambda!437333)))

(declare-fun bs!1895319 () Bool)

(assert (= bs!1895319 (and d!2235701 d!2235661)))

(assert (=> bs!1895319 (not (= lambda!437344 lambda!437336))))

(assert (=> d!2235701 (= (inv!88874 setElem!53073) (forall!17170 (exprs!7793 setElem!53073) lambda!437344))))

(declare-fun bs!1895320 () Bool)

(assert (= bs!1895320 d!2235701))

(declare-fun m!7877016 () Bool)

(assert (=> bs!1895320 m!7877016))

(assert (=> setNonEmpty!53073 d!2235701))

(declare-fun d!2235707 () Bool)

(declare-fun res!2923961 () Bool)

(declare-fun e!4310985 () Bool)

(assert (=> d!2235707 (=> res!2923961 e!4310985)))

(assert (=> d!2235707 (= res!2923961 ((_ is Nil!69634) (exprs!7793 setElem!53067)))))

(assert (=> d!2235707 (= (forall!17170 (exprs!7793 setElem!53067) lambda!437333) e!4310985)))

(declare-fun b!7178130 () Bool)

(declare-fun e!4310986 () Bool)

(assert (=> b!7178130 (= e!4310985 e!4310986)))

(declare-fun res!2923962 () Bool)

(assert (=> b!7178130 (=> (not res!2923962) (not e!4310986))))

(assert (=> b!7178130 (= res!2923962 (dynLambda!28357 lambda!437333 (h!76082 (exprs!7793 setElem!53067))))))

(declare-fun b!7178131 () Bool)

(assert (=> b!7178131 (= e!4310986 (forall!17170 (t!383779 (exprs!7793 setElem!53067)) lambda!437333))))

(assert (= (and d!2235707 (not res!2923961)) b!7178130))

(assert (= (and b!7178130 res!2923962) b!7178131))

(declare-fun b_lambda!274589 () Bool)

(assert (=> (not b_lambda!274589) (not b!7178130)))

(declare-fun m!7877018 () Bool)

(assert (=> b!7178130 m!7877018))

(declare-fun m!7877020 () Bool)

(assert (=> b!7178131 m!7877020))

(assert (=> d!2235649 d!2235707))

(declare-fun d!2235709 () Bool)

(declare-fun res!2923976 () Bool)

(declare-fun e!4311004 () Bool)

(assert (=> d!2235709 (=> res!2923976 e!4311004)))

(assert (=> d!2235709 (= res!2923976 ((_ is ElementMatch!18341) lt!2570579))))

(assert (=> d!2235709 (= (validRegex!9463 lt!2570579) e!4311004)))

(declare-fun b!7178150 () Bool)

(declare-fun e!4311003 () Bool)

(declare-fun e!4311002 () Bool)

(assert (=> b!7178150 (= e!4311003 e!4311002)))

(declare-fun res!2923977 () Bool)

(declare-fun nullable!7772 (Regex!18341) Bool)

(assert (=> b!7178150 (= res!2923977 (not (nullable!7772 (reg!18670 lt!2570579))))))

(assert (=> b!7178150 (=> (not res!2923977) (not e!4311002))))

(declare-fun call!654210 () Bool)

(declare-fun bm!654203 () Bool)

(declare-fun c!1336711 () Bool)

(declare-fun c!1336712 () Bool)

(assert (=> bm!654203 (= call!654210 (validRegex!9463 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))

(declare-fun b!7178151 () Bool)

(declare-fun res!2923974 () Bool)

(declare-fun e!4311005 () Bool)

(assert (=> b!7178151 (=> (not res!2923974) (not e!4311005))))

(declare-fun call!654209 () Bool)

(assert (=> b!7178151 (= res!2923974 call!654209)))

(declare-fun e!4311006 () Bool)

(assert (=> b!7178151 (= e!4311006 e!4311005)))

(declare-fun b!7178152 () Bool)

(declare-fun res!2923975 () Bool)

(declare-fun e!4311001 () Bool)

(assert (=> b!7178152 (=> res!2923975 e!4311001)))

(assert (=> b!7178152 (= res!2923975 (not ((_ is Concat!27186) lt!2570579)))))

(assert (=> b!7178152 (= e!4311006 e!4311001)))

(declare-fun b!7178153 () Bool)

(declare-fun call!654208 () Bool)

(assert (=> b!7178153 (= e!4311005 call!654208)))

(declare-fun b!7178154 () Bool)

(declare-fun e!4311007 () Bool)

(assert (=> b!7178154 (= e!4311007 call!654208)))

(declare-fun b!7178155 () Bool)

(assert (=> b!7178155 (= e!4311003 e!4311006)))

(assert (=> b!7178155 (= c!1336711 ((_ is Union!18341) lt!2570579))))

(declare-fun bm!654204 () Bool)

(assert (=> bm!654204 (= call!654209 (validRegex!9463 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))

(declare-fun b!7178156 () Bool)

(assert (=> b!7178156 (= e!4311002 call!654210)))

(declare-fun bm!654205 () Bool)

(assert (=> bm!654205 (= call!654208 call!654210)))

(declare-fun b!7178157 () Bool)

(assert (=> b!7178157 (= e!4311001 e!4311007)))

(declare-fun res!2923973 () Bool)

(assert (=> b!7178157 (=> (not res!2923973) (not e!4311007))))

(assert (=> b!7178157 (= res!2923973 call!654209)))

(declare-fun b!7178158 () Bool)

(assert (=> b!7178158 (= e!4311004 e!4311003)))

(assert (=> b!7178158 (= c!1336712 ((_ is Star!18341) lt!2570579))))

(assert (= (and d!2235709 (not res!2923976)) b!7178158))

(assert (= (and b!7178158 c!1336712) b!7178150))

(assert (= (and b!7178158 (not c!1336712)) b!7178155))

(assert (= (and b!7178150 res!2923977) b!7178156))

(assert (= (and b!7178155 c!1336711) b!7178151))

(assert (= (and b!7178155 (not c!1336711)) b!7178152))

(assert (= (and b!7178151 res!2923974) b!7178153))

(assert (= (and b!7178152 (not res!2923975)) b!7178157))

(assert (= (and b!7178157 res!2923973) b!7178154))

(assert (= (or b!7178151 b!7178157) bm!654204))

(assert (= (or b!7178153 b!7178154) bm!654205))

(assert (= (or b!7178156 bm!654205) bm!654203))

(declare-fun m!7877022 () Bool)

(assert (=> b!7178150 m!7877022))

(declare-fun m!7877024 () Bool)

(assert (=> bm!654203 m!7877024))

(declare-fun m!7877026 () Bool)

(assert (=> bm!654204 m!7877026))

(assert (=> d!2235645 d!2235709))

(declare-fun bs!1895321 () Bool)

(declare-fun d!2235711 () Bool)

(assert (= bs!1895321 (and d!2235711 d!2235649)))

(declare-fun lambda!437347 () Int)

(assert (=> bs!1895321 (= lambda!437347 lambda!437333)))

(declare-fun bs!1895322 () Bool)

(assert (= bs!1895322 (and d!2235711 d!2235661)))

(assert (=> bs!1895322 (not (= lambda!437347 lambda!437336))))

(declare-fun bs!1895323 () Bool)

(assert (= bs!1895323 (and d!2235711 d!2235701)))

(assert (=> bs!1895323 (= lambda!437347 lambda!437344)))

(declare-fun b!7178179 () Bool)

(declare-fun e!4311024 () Regex!18341)

(assert (=> b!7178179 (= e!4311024 (Union!18341 (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530))) (generalisedUnion!2766 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))))))))

(declare-fun e!4311025 () Bool)

(assert (=> d!2235711 e!4311025))

(declare-fun res!2923983 () Bool)

(assert (=> d!2235711 (=> (not res!2923983) (not e!4311025))))

(declare-fun lt!2570601 () Regex!18341)

(assert (=> d!2235711 (= res!2923983 (validRegex!9463 lt!2570601))))

(declare-fun e!4311022 () Regex!18341)

(assert (=> d!2235711 (= lt!2570601 e!4311022)))

(declare-fun c!1336721 () Bool)

(declare-fun e!4311023 () Bool)

(assert (=> d!2235711 (= c!1336721 e!4311023)))

(declare-fun res!2923982 () Bool)

(assert (=> d!2235711 (=> (not res!2923982) (not e!4311023))))

(assert (=> d!2235711 (= res!2923982 ((_ is Cons!69634) (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> d!2235711 (forall!17170 (unfocusZipperList!2322 (toList!11284 z!3530)) lambda!437347)))

(assert (=> d!2235711 (= (generalisedUnion!2766 (unfocusZipperList!2322 (toList!11284 z!3530))) lt!2570601)))

(declare-fun b!7178180 () Bool)

(declare-fun e!4311021 () Bool)

(declare-fun e!4311020 () Bool)

(assert (=> b!7178180 (= e!4311021 e!4311020)))

(declare-fun c!1336723 () Bool)

(declare-fun isEmpty!40203 (List!69758) Bool)

(declare-fun tail!14063 (List!69758) List!69758)

(assert (=> b!7178180 (= c!1336723 (isEmpty!40203 (tail!14063 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178181 () Bool)

(assert (=> b!7178181 (= e!4311023 (isEmpty!40203 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178182 () Bool)

(assert (=> b!7178182 (= e!4311024 EmptyLang!18341)))

(declare-fun b!7178183 () Bool)

(assert (=> b!7178183 (= e!4311022 e!4311024)))

(declare-fun c!1336722 () Bool)

(assert (=> b!7178183 (= c!1336722 ((_ is Cons!69634) (unfocusZipperList!2322 (toList!11284 z!3530))))))

(declare-fun b!7178184 () Bool)

(declare-fun head!14654 (List!69758) Regex!18341)

(assert (=> b!7178184 (= e!4311020 (= lt!2570601 (head!14654 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178185 () Bool)

(declare-fun isUnion!1575 (Regex!18341) Bool)

(assert (=> b!7178185 (= e!4311020 (isUnion!1575 lt!2570601))))

(declare-fun b!7178186 () Bool)

(declare-fun isEmptyLang!2147 (Regex!18341) Bool)

(assert (=> b!7178186 (= e!4311021 (isEmptyLang!2147 lt!2570601))))

(declare-fun b!7178187 () Bool)

(assert (=> b!7178187 (= e!4311025 e!4311021)))

(declare-fun c!1336724 () Bool)

(assert (=> b!7178187 (= c!1336724 (isEmpty!40203 (unfocusZipperList!2322 (toList!11284 z!3530))))))

(declare-fun b!7178188 () Bool)

(assert (=> b!7178188 (= e!4311022 (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (= (and d!2235711 res!2923982) b!7178181))

(assert (= (and d!2235711 c!1336721) b!7178188))

(assert (= (and d!2235711 (not c!1336721)) b!7178183))

(assert (= (and b!7178183 c!1336722) b!7178179))

(assert (= (and b!7178183 (not c!1336722)) b!7178182))

(assert (= (and d!2235711 res!2923983) b!7178187))

(assert (= (and b!7178187 c!1336724) b!7178186))

(assert (= (and b!7178187 (not c!1336724)) b!7178180))

(assert (= (and b!7178180 c!1336723) b!7178184))

(assert (= (and b!7178180 (not c!1336723)) b!7178185))

(declare-fun m!7877028 () Bool)

(assert (=> d!2235711 m!7877028))

(assert (=> d!2235711 m!7876862))

(declare-fun m!7877030 () Bool)

(assert (=> d!2235711 m!7877030))

(assert (=> b!7178184 m!7876862))

(declare-fun m!7877032 () Bool)

(assert (=> b!7178184 m!7877032))

(declare-fun m!7877034 () Bool)

(assert (=> b!7178181 m!7877034))

(assert (=> b!7178180 m!7876862))

(declare-fun m!7877036 () Bool)

(assert (=> b!7178180 m!7877036))

(assert (=> b!7178180 m!7877036))

(declare-fun m!7877038 () Bool)

(assert (=> b!7178180 m!7877038))

(declare-fun m!7877040 () Bool)

(assert (=> b!7178185 m!7877040))

(declare-fun m!7877042 () Bool)

(assert (=> b!7178186 m!7877042))

(declare-fun m!7877044 () Bool)

(assert (=> b!7178179 m!7877044))

(assert (=> b!7178187 m!7876862))

(declare-fun m!7877046 () Bool)

(assert (=> b!7178187 m!7877046))

(assert (=> d!2235645 d!2235711))

(declare-fun bs!1895324 () Bool)

(declare-fun d!2235713 () Bool)

(assert (= bs!1895324 (and d!2235713 d!2235649)))

(declare-fun lambda!437350 () Int)

(assert (=> bs!1895324 (= lambda!437350 lambda!437333)))

(declare-fun bs!1895325 () Bool)

(assert (= bs!1895325 (and d!2235713 d!2235661)))

(assert (=> bs!1895325 (not (= lambda!437350 lambda!437336))))

(declare-fun bs!1895326 () Bool)

(assert (= bs!1895326 (and d!2235713 d!2235701)))

(assert (=> bs!1895326 (= lambda!437350 lambda!437344)))

(declare-fun bs!1895327 () Bool)

(assert (= bs!1895327 (and d!2235713 d!2235711)))

(assert (=> bs!1895327 (= lambda!437350 lambda!437347)))

(declare-fun lt!2570604 () List!69758)

(assert (=> d!2235713 (forall!17170 lt!2570604 lambda!437350)))

(declare-fun e!4311028 () List!69758)

(assert (=> d!2235713 (= lt!2570604 e!4311028)))

(declare-fun c!1336727 () Bool)

(assert (=> d!2235713 (= c!1336727 ((_ is Cons!69635) (toList!11284 z!3530)))))

(assert (=> d!2235713 (= (unfocusZipperList!2322 (toList!11284 z!3530)) lt!2570604)))

(declare-fun b!7178193 () Bool)

(declare-fun generalisedConcat!2457 (List!69758) Regex!18341)

(assert (=> b!7178193 (= e!4311028 (Cons!69634 (generalisedConcat!2457 (exprs!7793 (h!76083 (toList!11284 z!3530)))) (unfocusZipperList!2322 (t!383780 (toList!11284 z!3530)))))))

(declare-fun b!7178194 () Bool)

(assert (=> b!7178194 (= e!4311028 Nil!69634)))

(assert (= (and d!2235713 c!1336727) b!7178193))

(assert (= (and d!2235713 (not c!1336727)) b!7178194))

(declare-fun m!7877048 () Bool)

(assert (=> d!2235713 m!7877048))

(declare-fun m!7877050 () Bool)

(assert (=> b!7178193 m!7877050))

(declare-fun m!7877052 () Bool)

(assert (=> b!7178193 m!7877052))

(assert (=> d!2235645 d!2235713))

(declare-fun b!7178207 () Bool)

(declare-fun e!4311031 () Bool)

(declare-fun tp!1991309 () Bool)

(assert (=> b!7178207 (= e!4311031 tp!1991309)))

(declare-fun b!7178208 () Bool)

(declare-fun tp!1991311 () Bool)

(declare-fun tp!1991310 () Bool)

(assert (=> b!7178208 (= e!4311031 (and tp!1991311 tp!1991310))))

(declare-fun b!7178206 () Bool)

(declare-fun tp!1991308 () Bool)

(declare-fun tp!1991307 () Bool)

(assert (=> b!7178206 (= e!4311031 (and tp!1991308 tp!1991307))))

(declare-fun b!7178205 () Bool)

(declare-fun tp_is_empty!46251 () Bool)

(assert (=> b!7178205 (= e!4311031 tp_is_empty!46251)))

(assert (=> b!7177991 (= tp!1991262 e!4311031)))

(assert (= (and b!7177991 ((_ is ElementMatch!18341) (h!76082 (exprs!7793 setElem!53067)))) b!7178205))

(assert (= (and b!7177991 ((_ is Concat!27186) (h!76082 (exprs!7793 setElem!53067)))) b!7178206))

(assert (= (and b!7177991 ((_ is Star!18341) (h!76082 (exprs!7793 setElem!53067)))) b!7178207))

(assert (= (and b!7177991 ((_ is Union!18341) (h!76082 (exprs!7793 setElem!53067)))) b!7178208))

(declare-fun b!7178209 () Bool)

(declare-fun e!4311032 () Bool)

(declare-fun tp!1991312 () Bool)

(declare-fun tp!1991313 () Bool)

(assert (=> b!7178209 (= e!4311032 (and tp!1991312 tp!1991313))))

(assert (=> b!7177991 (= tp!1991263 e!4311032)))

(assert (= (and b!7177991 ((_ is Cons!69634) (t!383779 (exprs!7793 setElem!53067)))) b!7178209))

(declare-fun condSetEmpty!53075 () Bool)

(assert (=> setNonEmpty!53073 (= condSetEmpty!53075 (= setRest!53073 ((as const (Array Context!14586 Bool)) false)))))

(declare-fun setRes!53075 () Bool)

(assert (=> setNonEmpty!53073 (= tp!1991256 setRes!53075)))

(declare-fun setIsEmpty!53075 () Bool)

(assert (=> setIsEmpty!53075 setRes!53075))

(declare-fun tp!1991314 () Bool)

(declare-fun setElem!53075 () Context!14586)

(declare-fun setNonEmpty!53075 () Bool)

(declare-fun e!4311033 () Bool)

(assert (=> setNonEmpty!53075 (= setRes!53075 (and tp!1991314 (inv!88874 setElem!53075) e!4311033))))

(declare-fun setRest!53075 () (InoxSet Context!14586))

(assert (=> setNonEmpty!53075 (= setRest!53073 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) setElem!53075 true) setRest!53075))))

(declare-fun b!7178210 () Bool)

(declare-fun tp!1991315 () Bool)

(assert (=> b!7178210 (= e!4311033 tp!1991315)))

(assert (= (and setNonEmpty!53073 condSetEmpty!53075) setIsEmpty!53075))

(assert (= (and setNonEmpty!53073 (not condSetEmpty!53075)) setNonEmpty!53075))

(assert (= setNonEmpty!53075 b!7178210))

(declare-fun m!7877054 () Bool)

(assert (=> setNonEmpty!53075 m!7877054))

(declare-fun b!7178211 () Bool)

(declare-fun e!4311034 () Bool)

(declare-fun tp!1991316 () Bool)

(declare-fun tp!1991317 () Bool)

(assert (=> b!7178211 (= e!4311034 (and tp!1991316 tp!1991317))))

(assert (=> b!7177986 (= tp!1991257 e!4311034)))

(assert (= (and b!7177986 ((_ is Cons!69634) (exprs!7793 setElem!53073))) b!7178211))

(declare-fun b_lambda!274591 () Bool)

(assert (= b_lambda!274589 (or d!2235649 b_lambda!274591)))

(declare-fun bs!1895328 () Bool)

(declare-fun d!2235715 () Bool)

(assert (= bs!1895328 (and d!2235715 d!2235649)))

(assert (=> bs!1895328 (= (dynLambda!28357 lambda!437333 (h!76082 (exprs!7793 setElem!53067))) (validRegex!9463 (h!76082 (exprs!7793 setElem!53067))))))

(declare-fun m!7877056 () Bool)

(assert (=> bs!1895328 m!7877056))

(assert (=> b!7178130 d!2235715))

(declare-fun b_lambda!274593 () Bool)

(assert (= b_lambda!274583 (or d!2235661 b_lambda!274593)))

(declare-fun bs!1895329 () Bool)

(declare-fun d!2235717 () Bool)

(assert (= bs!1895329 (and d!2235717 d!2235661)))

(assert (=> bs!1895329 (= (dynLambda!28357 lambda!437336 (h!76082 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))) (nullable!7772 (h!76082 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))))))

(declare-fun m!7877058 () Bool)

(assert (=> bs!1895329 m!7877058))

(assert (=> b!7178080 d!2235717))

(check-sat (not b!7178040) (not b!7178081) (not bs!1895329) (not d!2235711) (not b_lambda!274591) (not bs!1895328) (not b!7178184) (not b!7178207) (not b!7178131) (not b!7178096) (not b!7178193) (not b!7178208) (not b!7178211) (not b!7178150) (not b_lambda!274593) tp_is_empty!46251 (not b!7178123) (not b!7178179) (not b!7178180) (not b!7178186) (not b!7178122) (not b!7178206) (not b!7178187) (not b!7178210) (not b!7178185) (not b!7178121) (not setNonEmpty!53075) (not d!2235681) (not b!7178097) (not d!2235685) (not d!2235713) (not b!7178209) (not bm!654203) (not d!2235701) (not b!7178181) (not b!7178055) (not d!2235697) (not bm!654204))
(check-sat)
(get-model)

(declare-fun d!2235719 () Bool)

(declare-fun res!2923987 () Bool)

(declare-fun e!4311038 () Bool)

(assert (=> d!2235719 (=> res!2923987 e!4311038)))

(assert (=> d!2235719 (= res!2923987 ((_ is ElementMatch!18341) lt!2570591))))

(assert (=> d!2235719 (= (validRegex!9463 lt!2570591) e!4311038)))

(declare-fun b!7178212 () Bool)

(declare-fun e!4311037 () Bool)

(declare-fun e!4311036 () Bool)

(assert (=> b!7178212 (= e!4311037 e!4311036)))

(declare-fun res!2923988 () Bool)

(assert (=> b!7178212 (= res!2923988 (not (nullable!7772 (reg!18670 lt!2570591))))))

(assert (=> b!7178212 (=> (not res!2923988) (not e!4311036))))

(declare-fun c!1336729 () Bool)

(declare-fun c!1336728 () Bool)

(declare-fun call!654213 () Bool)

(declare-fun bm!654206 () Bool)

(assert (=> bm!654206 (= call!654213 (validRegex!9463 (ite c!1336729 (reg!18670 lt!2570591) (ite c!1336728 (regTwo!37195 lt!2570591) (regTwo!37194 lt!2570591)))))))

(declare-fun b!7178213 () Bool)

(declare-fun res!2923985 () Bool)

(declare-fun e!4311039 () Bool)

(assert (=> b!7178213 (=> (not res!2923985) (not e!4311039))))

(declare-fun call!654212 () Bool)

(assert (=> b!7178213 (= res!2923985 call!654212)))

(declare-fun e!4311040 () Bool)

(assert (=> b!7178213 (= e!4311040 e!4311039)))

(declare-fun b!7178214 () Bool)

(declare-fun res!2923986 () Bool)

(declare-fun e!4311035 () Bool)

(assert (=> b!7178214 (=> res!2923986 e!4311035)))

(assert (=> b!7178214 (= res!2923986 (not ((_ is Concat!27186) lt!2570591)))))

(assert (=> b!7178214 (= e!4311040 e!4311035)))

(declare-fun b!7178215 () Bool)

(declare-fun call!654211 () Bool)

(assert (=> b!7178215 (= e!4311039 call!654211)))

(declare-fun b!7178216 () Bool)

(declare-fun e!4311041 () Bool)

(assert (=> b!7178216 (= e!4311041 call!654211)))

(declare-fun b!7178217 () Bool)

(assert (=> b!7178217 (= e!4311037 e!4311040)))

(assert (=> b!7178217 (= c!1336728 ((_ is Union!18341) lt!2570591))))

(declare-fun bm!654207 () Bool)

(assert (=> bm!654207 (= call!654212 (validRegex!9463 (ite c!1336728 (regOne!37195 lt!2570591) (regOne!37194 lt!2570591))))))

(declare-fun b!7178218 () Bool)

(assert (=> b!7178218 (= e!4311036 call!654213)))

(declare-fun bm!654208 () Bool)

(assert (=> bm!654208 (= call!654211 call!654213)))

(declare-fun b!7178219 () Bool)

(assert (=> b!7178219 (= e!4311035 e!4311041)))

(declare-fun res!2923984 () Bool)

(assert (=> b!7178219 (=> (not res!2923984) (not e!4311041))))

(assert (=> b!7178219 (= res!2923984 call!654212)))

(declare-fun b!7178220 () Bool)

(assert (=> b!7178220 (= e!4311038 e!4311037)))

(assert (=> b!7178220 (= c!1336729 ((_ is Star!18341) lt!2570591))))

(assert (= (and d!2235719 (not res!2923987)) b!7178220))

(assert (= (and b!7178220 c!1336729) b!7178212))

(assert (= (and b!7178220 (not c!1336729)) b!7178217))

(assert (= (and b!7178212 res!2923988) b!7178218))

(assert (= (and b!7178217 c!1336728) b!7178213))

(assert (= (and b!7178217 (not c!1336728)) b!7178214))

(assert (= (and b!7178213 res!2923985) b!7178215))

(assert (= (and b!7178214 (not res!2923986)) b!7178219))

(assert (= (and b!7178219 res!2923984) b!7178216))

(assert (= (or b!7178213 b!7178219) bm!654207))

(assert (= (or b!7178215 b!7178216) bm!654208))

(assert (= (or b!7178218 bm!654208) bm!654206))

(declare-fun m!7877060 () Bool)

(assert (=> b!7178212 m!7877060))

(declare-fun m!7877062 () Bool)

(assert (=> bm!654206 m!7877062))

(declare-fun m!7877064 () Bool)

(assert (=> bm!654207 m!7877064))

(assert (=> d!2235681 d!2235719))

(declare-fun bs!1895330 () Bool)

(declare-fun d!2235721 () Bool)

(assert (= bs!1895330 (and d!2235721 d!2235649)))

(declare-fun lambda!437351 () Int)

(assert (=> bs!1895330 (= lambda!437351 lambda!437333)))

(declare-fun bs!1895331 () Bool)

(assert (= bs!1895331 (and d!2235721 d!2235701)))

(assert (=> bs!1895331 (= lambda!437351 lambda!437344)))

(declare-fun bs!1895332 () Bool)

(assert (= bs!1895332 (and d!2235721 d!2235711)))

(assert (=> bs!1895332 (= lambda!437351 lambda!437347)))

(declare-fun bs!1895333 () Bool)

(assert (= bs!1895333 (and d!2235721 d!2235713)))

(assert (=> bs!1895333 (= lambda!437351 lambda!437350)))

(declare-fun bs!1895334 () Bool)

(assert (= bs!1895334 (and d!2235721 d!2235661)))

(assert (=> bs!1895334 (not (= lambda!437351 lambda!437336))))

(declare-fun b!7178221 () Bool)

(declare-fun e!4311046 () Regex!18341)

(assert (=> b!7178221 (= e!4311046 (Union!18341 (h!76082 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))) (generalisedUnion!2766 (t!383779 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))))

(declare-fun e!4311047 () Bool)

(assert (=> d!2235721 e!4311047))

(declare-fun res!2923990 () Bool)

(assert (=> d!2235721 (=> (not res!2923990) (not e!4311047))))

(declare-fun lt!2570605 () Regex!18341)

(assert (=> d!2235721 (= res!2923990 (validRegex!9463 lt!2570605))))

(declare-fun e!4311044 () Regex!18341)

(assert (=> d!2235721 (= lt!2570605 e!4311044)))

(declare-fun c!1336730 () Bool)

(declare-fun e!4311045 () Bool)

(assert (=> d!2235721 (= c!1336730 e!4311045)))

(declare-fun res!2923989 () Bool)

(assert (=> d!2235721 (=> (not res!2923989) (not e!4311045))))

(assert (=> d!2235721 (= res!2923989 ((_ is Cons!69634) (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))

(assert (=> d!2235721 (forall!17170 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))) lambda!437351)))

(assert (=> d!2235721 (= (generalisedUnion!2766 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))) lt!2570605)))

(declare-fun b!7178222 () Bool)

(declare-fun e!4311043 () Bool)

(declare-fun e!4311042 () Bool)

(assert (=> b!7178222 (= e!4311043 e!4311042)))

(declare-fun c!1336732 () Bool)

(assert (=> b!7178222 (= c!1336732 (isEmpty!40203 (tail!14063 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))))))

(declare-fun b!7178223 () Bool)

(assert (=> b!7178223 (= e!4311045 (isEmpty!40203 (t!383779 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))))))

(declare-fun b!7178224 () Bool)

(assert (=> b!7178224 (= e!4311046 EmptyLang!18341)))

(declare-fun b!7178225 () Bool)

(assert (=> b!7178225 (= e!4311044 e!4311046)))

(declare-fun c!1336731 () Bool)

(assert (=> b!7178225 (= c!1336731 ((_ is Cons!69634) (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))

(declare-fun b!7178226 () Bool)

(assert (=> b!7178226 (= e!4311042 (= lt!2570605 (head!14654 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))))))

(declare-fun b!7178227 () Bool)

(assert (=> b!7178227 (= e!4311042 (isUnion!1575 lt!2570605))))

(declare-fun b!7178228 () Bool)

(assert (=> b!7178228 (= e!4311043 (isEmptyLang!2147 lt!2570605))))

(declare-fun b!7178229 () Bool)

(assert (=> b!7178229 (= e!4311047 e!4311043)))

(declare-fun c!1336733 () Bool)

(assert (=> b!7178229 (= c!1336733 (isEmpty!40203 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))

(declare-fun b!7178230 () Bool)

(assert (=> b!7178230 (= e!4311044 (h!76082 (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))))

(assert (= (and d!2235721 res!2923989) b!7178223))

(assert (= (and d!2235721 c!1336730) b!7178230))

(assert (= (and d!2235721 (not c!1336730)) b!7178225))

(assert (= (and b!7178225 c!1336731) b!7178221))

(assert (= (and b!7178225 (not c!1336731)) b!7178224))

(assert (= (and d!2235721 res!2923990) b!7178229))

(assert (= (and b!7178229 c!1336733) b!7178228))

(assert (= (and b!7178229 (not c!1336733)) b!7178222))

(assert (= (and b!7178222 c!1336732) b!7178226))

(assert (= (and b!7178222 (not c!1336732)) b!7178227))

(declare-fun m!7877070 () Bool)

(assert (=> d!2235721 m!7877070))

(assert (=> d!2235721 m!7876948))

(declare-fun m!7877072 () Bool)

(assert (=> d!2235721 m!7877072))

(assert (=> b!7178226 m!7876948))

(declare-fun m!7877074 () Bool)

(assert (=> b!7178226 m!7877074))

(declare-fun m!7877076 () Bool)

(assert (=> b!7178223 m!7877076))

(assert (=> b!7178222 m!7876948))

(declare-fun m!7877078 () Bool)

(assert (=> b!7178222 m!7877078))

(assert (=> b!7178222 m!7877078))

(declare-fun m!7877080 () Bool)

(assert (=> b!7178222 m!7877080))

(declare-fun m!7877082 () Bool)

(assert (=> b!7178227 m!7877082))

(declare-fun m!7877084 () Bool)

(assert (=> b!7178228 m!7877084))

(declare-fun m!7877086 () Bool)

(assert (=> b!7178221 m!7877086))

(assert (=> b!7178229 m!7876948))

(declare-fun m!7877088 () Bool)

(assert (=> b!7178229 m!7877088))

(assert (=> d!2235681 d!2235721))

(declare-fun bs!1895335 () Bool)

(declare-fun d!2235727 () Bool)

(assert (= bs!1895335 (and d!2235727 d!2235721)))

(declare-fun lambda!437352 () Int)

(assert (=> bs!1895335 (= lambda!437352 lambda!437351)))

(declare-fun bs!1895336 () Bool)

(assert (= bs!1895336 (and d!2235727 d!2235649)))

(assert (=> bs!1895336 (= lambda!437352 lambda!437333)))

(declare-fun bs!1895337 () Bool)

(assert (= bs!1895337 (and d!2235727 d!2235701)))

(assert (=> bs!1895337 (= lambda!437352 lambda!437344)))

(declare-fun bs!1895338 () Bool)

(assert (= bs!1895338 (and d!2235727 d!2235711)))

(assert (=> bs!1895338 (= lambda!437352 lambda!437347)))

(declare-fun bs!1895339 () Bool)

(assert (= bs!1895339 (and d!2235727 d!2235713)))

(assert (=> bs!1895339 (= lambda!437352 lambda!437350)))

(declare-fun bs!1895340 () Bool)

(assert (= bs!1895340 (and d!2235727 d!2235661)))

(assert (=> bs!1895340 (not (= lambda!437352 lambda!437336))))

(declare-fun lt!2570606 () List!69758)

(assert (=> d!2235727 (forall!17170 lt!2570606 lambda!437352)))

(declare-fun e!4311060 () List!69758)

(assert (=> d!2235727 (= lt!2570606 e!4311060)))

(declare-fun c!1336736 () Bool)

(assert (=> d!2235727 (= c!1336736 ((_ is Cons!69635) (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))))

(assert (=> d!2235727 (= (unfocusZipperList!2322 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))) lt!2570606)))

(declare-fun b!7178245 () Bool)

(assert (=> b!7178245 (= e!4311060 (Cons!69634 (generalisedConcat!2457 (exprs!7793 (h!76083 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))) (unfocusZipperList!2322 (t!383780 (toList!11284 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true))))))))

(declare-fun b!7178246 () Bool)

(assert (=> b!7178246 (= e!4311060 Nil!69634)))

(assert (= (and d!2235727 c!1336736) b!7178245))

(assert (= (and d!2235727 (not c!1336736)) b!7178246))

(declare-fun m!7877102 () Bool)

(assert (=> d!2235727 m!7877102))

(declare-fun m!7877104 () Bool)

(assert (=> b!7178245 m!7877104))

(declare-fun m!7877106 () Bool)

(assert (=> b!7178245 m!7877106))

(assert (=> d!2235681 d!2235727))

(declare-fun d!2235733 () Bool)

(declare-fun nullableFct!3037 (Regex!18341) Bool)

(assert (=> d!2235733 (= (nullable!7772 (reg!18670 lt!2570579)) (nullableFct!3037 (reg!18670 lt!2570579)))))

(declare-fun bs!1895341 () Bool)

(assert (= bs!1895341 d!2235733))

(declare-fun m!7877116 () Bool)

(assert (=> bs!1895341 m!7877116))

(assert (=> b!7178150 d!2235733))

(declare-fun d!2235739 () Bool)

(declare-fun res!2924012 () Bool)

(declare-fun e!4311075 () Bool)

(assert (=> d!2235739 (=> res!2924012 e!4311075)))

(assert (=> d!2235739 (= res!2924012 ((_ is ElementMatch!18341) (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))

(assert (=> d!2235739 (= (validRegex!9463 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))) e!4311075)))

(declare-fun b!7178260 () Bool)

(declare-fun e!4311074 () Bool)

(declare-fun e!4311073 () Bool)

(assert (=> b!7178260 (= e!4311074 e!4311073)))

(declare-fun res!2924013 () Bool)

(assert (=> b!7178260 (= res!2924013 (not (nullable!7772 (reg!18670 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))))

(assert (=> b!7178260 (=> (not res!2924013) (not e!4311073))))

(declare-fun c!1336740 () Bool)

(declare-fun bm!654215 () Bool)

(declare-fun call!654222 () Bool)

(declare-fun c!1336739 () Bool)

(assert (=> bm!654215 (= call!654222 (validRegex!9463 (ite c!1336740 (reg!18670 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))) (ite c!1336739 (regTwo!37195 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))) (regTwo!37194 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579))))))))))

(declare-fun b!7178261 () Bool)

(declare-fun res!2924010 () Bool)

(declare-fun e!4311076 () Bool)

(assert (=> b!7178261 (=> (not res!2924010) (not e!4311076))))

(declare-fun call!654221 () Bool)

(assert (=> b!7178261 (= res!2924010 call!654221)))

(declare-fun e!4311077 () Bool)

(assert (=> b!7178261 (= e!4311077 e!4311076)))

(declare-fun b!7178262 () Bool)

(declare-fun res!2924011 () Bool)

(declare-fun e!4311072 () Bool)

(assert (=> b!7178262 (=> res!2924011 e!4311072)))

(assert (=> b!7178262 (= res!2924011 (not ((_ is Concat!27186) (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579))))))))

(assert (=> b!7178262 (= e!4311077 e!4311072)))

(declare-fun b!7178263 () Bool)

(declare-fun call!654220 () Bool)

(assert (=> b!7178263 (= e!4311076 call!654220)))

(declare-fun b!7178264 () Bool)

(declare-fun e!4311078 () Bool)

(assert (=> b!7178264 (= e!4311078 call!654220)))

(declare-fun b!7178265 () Bool)

(assert (=> b!7178265 (= e!4311074 e!4311077)))

(assert (=> b!7178265 (= c!1336739 ((_ is Union!18341) (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))

(declare-fun bm!654216 () Bool)

(assert (=> bm!654216 (= call!654221 (validRegex!9463 (ite c!1336739 (regOne!37195 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))) (regOne!37194 (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))))

(declare-fun b!7178266 () Bool)

(assert (=> b!7178266 (= e!4311073 call!654222)))

(declare-fun bm!654217 () Bool)

(assert (=> bm!654217 (= call!654220 call!654222)))

(declare-fun b!7178267 () Bool)

(assert (=> b!7178267 (= e!4311072 e!4311078)))

(declare-fun res!2924009 () Bool)

(assert (=> b!7178267 (=> (not res!2924009) (not e!4311078))))

(assert (=> b!7178267 (= res!2924009 call!654221)))

(declare-fun b!7178268 () Bool)

(assert (=> b!7178268 (= e!4311075 e!4311074)))

(assert (=> b!7178268 (= c!1336740 ((_ is Star!18341) (ite c!1336712 (reg!18670 lt!2570579) (ite c!1336711 (regTwo!37195 lt!2570579) (regTwo!37194 lt!2570579)))))))

(assert (= (and d!2235739 (not res!2924012)) b!7178268))

(assert (= (and b!7178268 c!1336740) b!7178260))

(assert (= (and b!7178268 (not c!1336740)) b!7178265))

(assert (= (and b!7178260 res!2924013) b!7178266))

(assert (= (and b!7178265 c!1336739) b!7178261))

(assert (= (and b!7178265 (not c!1336739)) b!7178262))

(assert (= (and b!7178261 res!2924010) b!7178263))

(assert (= (and b!7178262 (not res!2924011)) b!7178267))

(assert (= (and b!7178267 res!2924009) b!7178264))

(assert (= (or b!7178261 b!7178267) bm!654216))

(assert (= (or b!7178263 b!7178264) bm!654217))

(assert (= (or b!7178266 bm!654217) bm!654215))

(declare-fun m!7877124 () Bool)

(assert (=> b!7178260 m!7877124))

(declare-fun m!7877130 () Bool)

(assert (=> bm!654215 m!7877130))

(declare-fun m!7877132 () Bool)

(assert (=> bm!654216 m!7877132))

(assert (=> bm!654203 d!2235739))

(declare-fun bs!1895342 () Bool)

(declare-fun d!2235745 () Bool)

(assert (= bs!1895342 (and d!2235745 d!2235727)))

(declare-fun lambda!437353 () Int)

(assert (=> bs!1895342 (= lambda!437353 lambda!437352)))

(declare-fun bs!1895343 () Bool)

(assert (= bs!1895343 (and d!2235745 d!2235721)))

(assert (=> bs!1895343 (= lambda!437353 lambda!437351)))

(declare-fun bs!1895344 () Bool)

(assert (= bs!1895344 (and d!2235745 d!2235649)))

(assert (=> bs!1895344 (= lambda!437353 lambda!437333)))

(declare-fun bs!1895345 () Bool)

(assert (= bs!1895345 (and d!2235745 d!2235701)))

(assert (=> bs!1895345 (= lambda!437353 lambda!437344)))

(declare-fun bs!1895346 () Bool)

(assert (= bs!1895346 (and d!2235745 d!2235711)))

(assert (=> bs!1895346 (= lambda!437353 lambda!437347)))

(declare-fun bs!1895347 () Bool)

(assert (= bs!1895347 (and d!2235745 d!2235713)))

(assert (=> bs!1895347 (= lambda!437353 lambda!437350)))

(declare-fun bs!1895348 () Bool)

(assert (= bs!1895348 (and d!2235745 d!2235661)))

(assert (=> bs!1895348 (not (= lambda!437353 lambda!437336))))

(declare-fun b!7178280 () Bool)

(declare-fun e!4311091 () Regex!18341)

(assert (=> b!7178280 (= e!4311091 (Union!18341 (h!76082 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))) (generalisedUnion!2766 (t!383779 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))))

(declare-fun e!4311092 () Bool)

(assert (=> d!2235745 e!4311092))

(declare-fun res!2924020 () Bool)

(assert (=> d!2235745 (=> (not res!2924020) (not e!4311092))))

(declare-fun lt!2570607 () Regex!18341)

(assert (=> d!2235745 (= res!2924020 (validRegex!9463 lt!2570607))))

(declare-fun e!4311089 () Regex!18341)

(assert (=> d!2235745 (= lt!2570607 e!4311089)))

(declare-fun c!1336744 () Bool)

(declare-fun e!4311090 () Bool)

(assert (=> d!2235745 (= c!1336744 e!4311090)))

(declare-fun res!2924019 () Bool)

(assert (=> d!2235745 (=> (not res!2924019) (not e!4311090))))

(assert (=> d!2235745 (= res!2924019 ((_ is Cons!69634) (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(assert (=> d!2235745 (forall!17170 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))) lambda!437353)))

(assert (=> d!2235745 (= (generalisedUnion!2766 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))) lt!2570607)))

(declare-fun b!7178281 () Bool)

(declare-fun e!4311088 () Bool)

(declare-fun e!4311087 () Bool)

(assert (=> b!7178281 (= e!4311088 e!4311087)))

(declare-fun c!1336746 () Bool)

(assert (=> b!7178281 (= c!1336746 (isEmpty!40203 (tail!14063 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))))))))

(declare-fun b!7178282 () Bool)

(assert (=> b!7178282 (= e!4311090 (isEmpty!40203 (t!383779 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))))))))

(declare-fun b!7178283 () Bool)

(assert (=> b!7178283 (= e!4311091 EmptyLang!18341)))

(declare-fun b!7178284 () Bool)

(assert (=> b!7178284 (= e!4311089 e!4311091)))

(declare-fun c!1336745 () Bool)

(assert (=> b!7178284 (= c!1336745 ((_ is Cons!69634) (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178285 () Bool)

(assert (=> b!7178285 (= e!4311087 (= lt!2570607 (head!14654 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))))))))

(declare-fun b!7178286 () Bool)

(assert (=> b!7178286 (= e!4311087 (isUnion!1575 lt!2570607))))

(declare-fun b!7178287 () Bool)

(assert (=> b!7178287 (= e!4311088 (isEmptyLang!2147 lt!2570607))))

(declare-fun b!7178288 () Bool)

(assert (=> b!7178288 (= e!4311092 e!4311088)))

(declare-fun c!1336747 () Bool)

(assert (=> b!7178288 (= c!1336747 (isEmpty!40203 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178289 () Bool)

(assert (=> b!7178289 (= e!4311089 (h!76082 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(assert (= (and d!2235745 res!2924019) b!7178282))

(assert (= (and d!2235745 c!1336744) b!7178289))

(assert (= (and d!2235745 (not c!1336744)) b!7178284))

(assert (= (and b!7178284 c!1336745) b!7178280))

(assert (= (and b!7178284 (not c!1336745)) b!7178283))

(assert (= (and d!2235745 res!2924020) b!7178288))

(assert (= (and b!7178288 c!1336747) b!7178287))

(assert (= (and b!7178288 (not c!1336747)) b!7178281))

(assert (= (and b!7178281 c!1336746) b!7178285))

(assert (= (and b!7178281 (not c!1336746)) b!7178286))

(declare-fun m!7877144 () Bool)

(assert (=> d!2235745 m!7877144))

(declare-fun m!7877146 () Bool)

(assert (=> d!2235745 m!7877146))

(declare-fun m!7877148 () Bool)

(assert (=> b!7178285 m!7877148))

(declare-fun m!7877150 () Bool)

(assert (=> b!7178282 m!7877150))

(declare-fun m!7877152 () Bool)

(assert (=> b!7178281 m!7877152))

(assert (=> b!7178281 m!7877152))

(declare-fun m!7877154 () Bool)

(assert (=> b!7178281 m!7877154))

(declare-fun m!7877156 () Bool)

(assert (=> b!7178286 m!7877156))

(declare-fun m!7877158 () Bool)

(assert (=> b!7178287 m!7877158))

(declare-fun m!7877160 () Bool)

(assert (=> b!7178280 m!7877160))

(assert (=> b!7178288 m!7877034))

(assert (=> b!7178179 d!2235745))

(declare-fun d!2235751 () Bool)

(declare-fun res!2924023 () Bool)

(declare-fun e!4311095 () Bool)

(assert (=> d!2235751 (=> res!2924023 e!4311095)))

(assert (=> d!2235751 (= res!2924023 ((_ is Nil!69634) (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))))))

(assert (=> d!2235751 (= (forall!17170 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))) lambda!437336) e!4311095)))

(declare-fun b!7178292 () Bool)

(declare-fun e!4311096 () Bool)

(assert (=> b!7178292 (= e!4311095 e!4311096)))

(declare-fun res!2924024 () Bool)

(assert (=> b!7178292 (=> (not res!2924024) (not e!4311096))))

(assert (=> b!7178292 (= res!2924024 (dynLambda!28357 lambda!437336 (h!76082 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))))))))

(declare-fun b!7178293 () Bool)

(assert (=> b!7178293 (= e!4311096 (forall!17170 (t!383779 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))) lambda!437336))))

(assert (= (and d!2235751 (not res!2924023)) b!7178292))

(assert (= (and b!7178292 res!2924024) b!7178293))

(declare-fun b_lambda!274601 () Bool)

(assert (=> (not b_lambda!274601) (not b!7178292)))

(declare-fun m!7877162 () Bool)

(assert (=> b!7178292 m!7877162))

(declare-fun m!7877164 () Bool)

(assert (=> b!7178293 m!7877164))

(assert (=> b!7178081 d!2235751))

(declare-fun d!2235753 () Bool)

(declare-fun res!2924028 () Bool)

(declare-fun e!4311100 () Bool)

(assert (=> d!2235753 (=> res!2924028 e!4311100)))

(assert (=> d!2235753 (= res!2924028 ((_ is ElementMatch!18341) lt!2570601))))

(assert (=> d!2235753 (= (validRegex!9463 lt!2570601) e!4311100)))

(declare-fun b!7178294 () Bool)

(declare-fun e!4311099 () Bool)

(declare-fun e!4311098 () Bool)

(assert (=> b!7178294 (= e!4311099 e!4311098)))

(declare-fun res!2924029 () Bool)

(assert (=> b!7178294 (= res!2924029 (not (nullable!7772 (reg!18670 lt!2570601))))))

(assert (=> b!7178294 (=> (not res!2924029) (not e!4311098))))

(declare-fun call!654228 () Bool)

(declare-fun c!1336749 () Bool)

(declare-fun c!1336748 () Bool)

(declare-fun bm!654221 () Bool)

(assert (=> bm!654221 (= call!654228 (validRegex!9463 (ite c!1336749 (reg!18670 lt!2570601) (ite c!1336748 (regTwo!37195 lt!2570601) (regTwo!37194 lt!2570601)))))))

(declare-fun b!7178295 () Bool)

(declare-fun res!2924026 () Bool)

(declare-fun e!4311101 () Bool)

(assert (=> b!7178295 (=> (not res!2924026) (not e!4311101))))

(declare-fun call!654227 () Bool)

(assert (=> b!7178295 (= res!2924026 call!654227)))

(declare-fun e!4311102 () Bool)

(assert (=> b!7178295 (= e!4311102 e!4311101)))

(declare-fun b!7178296 () Bool)

(declare-fun res!2924027 () Bool)

(declare-fun e!4311097 () Bool)

(assert (=> b!7178296 (=> res!2924027 e!4311097)))

(assert (=> b!7178296 (= res!2924027 (not ((_ is Concat!27186) lt!2570601)))))

(assert (=> b!7178296 (= e!4311102 e!4311097)))

(declare-fun b!7178297 () Bool)

(declare-fun call!654226 () Bool)

(assert (=> b!7178297 (= e!4311101 call!654226)))

(declare-fun b!7178298 () Bool)

(declare-fun e!4311103 () Bool)

(assert (=> b!7178298 (= e!4311103 call!654226)))

(declare-fun b!7178299 () Bool)

(assert (=> b!7178299 (= e!4311099 e!4311102)))

(assert (=> b!7178299 (= c!1336748 ((_ is Union!18341) lt!2570601))))

(declare-fun bm!654222 () Bool)

(assert (=> bm!654222 (= call!654227 (validRegex!9463 (ite c!1336748 (regOne!37195 lt!2570601) (regOne!37194 lt!2570601))))))

(declare-fun b!7178300 () Bool)

(assert (=> b!7178300 (= e!4311098 call!654228)))

(declare-fun bm!654223 () Bool)

(assert (=> bm!654223 (= call!654226 call!654228)))

(declare-fun b!7178301 () Bool)

(assert (=> b!7178301 (= e!4311097 e!4311103)))

(declare-fun res!2924025 () Bool)

(assert (=> b!7178301 (=> (not res!2924025) (not e!4311103))))

(assert (=> b!7178301 (= res!2924025 call!654227)))

(declare-fun b!7178302 () Bool)

(assert (=> b!7178302 (= e!4311100 e!4311099)))

(assert (=> b!7178302 (= c!1336749 ((_ is Star!18341) lt!2570601))))

(assert (= (and d!2235753 (not res!2924028)) b!7178302))

(assert (= (and b!7178302 c!1336749) b!7178294))

(assert (= (and b!7178302 (not c!1336749)) b!7178299))

(assert (= (and b!7178294 res!2924029) b!7178300))

(assert (= (and b!7178299 c!1336748) b!7178295))

(assert (= (and b!7178299 (not c!1336748)) b!7178296))

(assert (= (and b!7178295 res!2924026) b!7178297))

(assert (= (and b!7178296 (not res!2924027)) b!7178301))

(assert (= (and b!7178301 res!2924025) b!7178298))

(assert (= (or b!7178295 b!7178301) bm!654222))

(assert (= (or b!7178297 b!7178298) bm!654223))

(assert (= (or b!7178300 bm!654223) bm!654221))

(declare-fun m!7877166 () Bool)

(assert (=> b!7178294 m!7877166))

(declare-fun m!7877168 () Bool)

(assert (=> bm!654221 m!7877168))

(declare-fun m!7877170 () Bool)

(assert (=> bm!654222 m!7877170))

(assert (=> d!2235711 d!2235753))

(declare-fun d!2235759 () Bool)

(declare-fun res!2924032 () Bool)

(declare-fun e!4311106 () Bool)

(assert (=> d!2235759 (=> res!2924032 e!4311106)))

(assert (=> d!2235759 (= res!2924032 ((_ is Nil!69634) (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> d!2235759 (= (forall!17170 (unfocusZipperList!2322 (toList!11284 z!3530)) lambda!437347) e!4311106)))

(declare-fun b!7178305 () Bool)

(declare-fun e!4311107 () Bool)

(assert (=> b!7178305 (= e!4311106 e!4311107)))

(declare-fun res!2924033 () Bool)

(assert (=> b!7178305 (=> (not res!2924033) (not e!4311107))))

(assert (=> b!7178305 (= res!2924033 (dynLambda!28357 lambda!437347 (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun b!7178306 () Bool)

(assert (=> b!7178306 (= e!4311107 (forall!17170 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))) lambda!437347))))

(assert (= (and d!2235759 (not res!2924032)) b!7178305))

(assert (= (and b!7178305 res!2924033) b!7178306))

(declare-fun b_lambda!274605 () Bool)

(assert (=> (not b_lambda!274605) (not b!7178305)))

(declare-fun m!7877176 () Bool)

(assert (=> b!7178305 m!7877176))

(declare-fun m!7877178 () Bool)

(assert (=> b!7178306 m!7877178))

(assert (=> d!2235711 d!2235759))

(declare-fun bs!1895349 () Bool)

(declare-fun d!2235763 () Bool)

(assert (= bs!1895349 (and d!2235763 d!2235727)))

(declare-fun lambda!437354 () Int)

(assert (=> bs!1895349 (= lambda!437354 lambda!437352)))

(declare-fun bs!1895350 () Bool)

(assert (= bs!1895350 (and d!2235763 d!2235721)))

(assert (=> bs!1895350 (= lambda!437354 lambda!437351)))

(declare-fun bs!1895351 () Bool)

(assert (= bs!1895351 (and d!2235763 d!2235745)))

(assert (=> bs!1895351 (= lambda!437354 lambda!437353)))

(declare-fun bs!1895352 () Bool)

(assert (= bs!1895352 (and d!2235763 d!2235649)))

(assert (=> bs!1895352 (= lambda!437354 lambda!437333)))

(declare-fun bs!1895353 () Bool)

(assert (= bs!1895353 (and d!2235763 d!2235701)))

(assert (=> bs!1895353 (= lambda!437354 lambda!437344)))

(declare-fun bs!1895354 () Bool)

(assert (= bs!1895354 (and d!2235763 d!2235711)))

(assert (=> bs!1895354 (= lambda!437354 lambda!437347)))

(declare-fun bs!1895355 () Bool)

(assert (= bs!1895355 (and d!2235763 d!2235713)))

(assert (=> bs!1895355 (= lambda!437354 lambda!437350)))

(declare-fun bs!1895356 () Bool)

(assert (= bs!1895356 (and d!2235763 d!2235661)))

(assert (=> bs!1895356 (not (= lambda!437354 lambda!437336))))

(assert (=> d!2235763 (= (inv!88874 (h!76083 res!2923959)) (forall!17170 (exprs!7793 (h!76083 res!2923959)) lambda!437354))))

(declare-fun bs!1895357 () Bool)

(assert (= bs!1895357 d!2235763))

(declare-fun m!7877184 () Bool)

(assert (=> bs!1895357 m!7877184))

(assert (=> b!7178121 d!2235763))

(declare-fun d!2235769 () Bool)

(declare-fun res!2924036 () Bool)

(declare-fun e!4311111 () Bool)

(assert (=> d!2235769 (=> res!2924036 e!4311111)))

(assert (=> d!2235769 (= res!2924036 ((_ is Nil!69634) (t!383779 (exprs!7793 setElem!53067))))))

(assert (=> d!2235769 (= (forall!17170 (t!383779 (exprs!7793 setElem!53067)) lambda!437333) e!4311111)))

(declare-fun b!7178311 () Bool)

(declare-fun e!4311112 () Bool)

(assert (=> b!7178311 (= e!4311111 e!4311112)))

(declare-fun res!2924037 () Bool)

(assert (=> b!7178311 (=> (not res!2924037) (not e!4311112))))

(assert (=> b!7178311 (= res!2924037 (dynLambda!28357 lambda!437333 (h!76082 (t!383779 (exprs!7793 setElem!53067)))))))

(declare-fun b!7178312 () Bool)

(assert (=> b!7178312 (= e!4311112 (forall!17170 (t!383779 (t!383779 (exprs!7793 setElem!53067))) lambda!437333))))

(assert (= (and d!2235769 (not res!2924036)) b!7178311))

(assert (= (and b!7178311 res!2924037) b!7178312))

(declare-fun b_lambda!274607 () Bool)

(assert (=> (not b_lambda!274607) (not b!7178311)))

(declare-fun m!7877190 () Bool)

(assert (=> b!7178311 m!7877190))

(declare-fun m!7877192 () Bool)

(assert (=> b!7178312 m!7877192))

(assert (=> b!7178131 d!2235769))

(declare-fun d!2235775 () Bool)

(declare-fun c!1336751 () Bool)

(assert (=> d!2235775 (= c!1336751 ((_ is Nil!69635) res!2923959))))

(declare-fun e!4311113 () (InoxSet Context!14586))

(assert (=> d!2235775 (= (content!14311 res!2923959) e!4311113)))

(declare-fun b!7178313 () Bool)

(assert (=> b!7178313 (= e!4311113 ((as const (Array Context!14586 Bool)) false))))

(declare-fun b!7178314 () Bool)

(assert (=> b!7178314 (= e!4311113 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) (h!76083 res!2923959) true) (content!14311 (t!383780 res!2923959))))))

(assert (= (and d!2235775 c!1336751) b!7178313))

(assert (= (and d!2235775 (not c!1336751)) b!7178314))

(declare-fun m!7877194 () Bool)

(assert (=> b!7178314 m!7877194))

(declare-fun m!7877196 () Bool)

(assert (=> b!7178314 m!7877196))

(assert (=> b!7178123 d!2235775))

(declare-fun d!2235777 () Bool)

(declare-fun res!2924041 () Bool)

(declare-fun e!4311117 () Bool)

(assert (=> d!2235777 (=> res!2924041 e!4311117)))

(assert (=> d!2235777 (= res!2924041 ((_ is ElementMatch!18341) (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))

(assert (=> d!2235777 (= (validRegex!9463 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))) e!4311117)))

(declare-fun b!7178315 () Bool)

(declare-fun e!4311116 () Bool)

(declare-fun e!4311115 () Bool)

(assert (=> b!7178315 (= e!4311116 e!4311115)))

(declare-fun res!2924042 () Bool)

(assert (=> b!7178315 (= res!2924042 (not (nullable!7772 (reg!18670 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))))

(assert (=> b!7178315 (=> (not res!2924042) (not e!4311115))))

(declare-fun bm!654224 () Bool)

(declare-fun c!1336753 () Bool)

(declare-fun c!1336752 () Bool)

(declare-fun call!654231 () Bool)

(assert (=> bm!654224 (= call!654231 (validRegex!9463 (ite c!1336753 (reg!18670 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))) (ite c!1336752 (regTwo!37195 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))) (regTwo!37194 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579)))))))))

(declare-fun b!7178316 () Bool)

(declare-fun res!2924039 () Bool)

(declare-fun e!4311118 () Bool)

(assert (=> b!7178316 (=> (not res!2924039) (not e!4311118))))

(declare-fun call!654230 () Bool)

(assert (=> b!7178316 (= res!2924039 call!654230)))

(declare-fun e!4311119 () Bool)

(assert (=> b!7178316 (= e!4311119 e!4311118)))

(declare-fun b!7178317 () Bool)

(declare-fun res!2924040 () Bool)

(declare-fun e!4311114 () Bool)

(assert (=> b!7178317 (=> res!2924040 e!4311114)))

(assert (=> b!7178317 (= res!2924040 (not ((_ is Concat!27186) (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579)))))))

(assert (=> b!7178317 (= e!4311119 e!4311114)))

(declare-fun b!7178318 () Bool)

(declare-fun call!654229 () Bool)

(assert (=> b!7178318 (= e!4311118 call!654229)))

(declare-fun b!7178319 () Bool)

(declare-fun e!4311120 () Bool)

(assert (=> b!7178319 (= e!4311120 call!654229)))

(declare-fun b!7178320 () Bool)

(assert (=> b!7178320 (= e!4311116 e!4311119)))

(assert (=> b!7178320 (= c!1336752 ((_ is Union!18341) (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))

(declare-fun bm!654225 () Bool)

(assert (=> bm!654225 (= call!654230 (validRegex!9463 (ite c!1336752 (regOne!37195 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))) (regOne!37194 (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))))

(declare-fun b!7178321 () Bool)

(assert (=> b!7178321 (= e!4311115 call!654231)))

(declare-fun bm!654226 () Bool)

(assert (=> bm!654226 (= call!654229 call!654231)))

(declare-fun b!7178322 () Bool)

(assert (=> b!7178322 (= e!4311114 e!4311120)))

(declare-fun res!2924038 () Bool)

(assert (=> b!7178322 (=> (not res!2924038) (not e!4311120))))

(assert (=> b!7178322 (= res!2924038 call!654230)))

(declare-fun b!7178323 () Bool)

(assert (=> b!7178323 (= e!4311117 e!4311116)))

(assert (=> b!7178323 (= c!1336753 ((_ is Star!18341) (ite c!1336711 (regOne!37195 lt!2570579) (regOne!37194 lt!2570579))))))

(assert (= (and d!2235777 (not res!2924041)) b!7178323))

(assert (= (and b!7178323 c!1336753) b!7178315))

(assert (= (and b!7178323 (not c!1336753)) b!7178320))

(assert (= (and b!7178315 res!2924042) b!7178321))

(assert (= (and b!7178320 c!1336752) b!7178316))

(assert (= (and b!7178320 (not c!1336752)) b!7178317))

(assert (= (and b!7178316 res!2924039) b!7178318))

(assert (= (and b!7178317 (not res!2924040)) b!7178322))

(assert (= (and b!7178322 res!2924038) b!7178319))

(assert (= (or b!7178316 b!7178322) bm!654225))

(assert (= (or b!7178318 b!7178319) bm!654226))

(assert (= (or b!7178321 bm!654226) bm!654224))

(declare-fun m!7877198 () Bool)

(assert (=> b!7178315 m!7877198))

(declare-fun m!7877200 () Bool)

(assert (=> bm!654224 m!7877200))

(declare-fun m!7877202 () Bool)

(assert (=> bm!654225 m!7877202))

(assert (=> bm!654204 d!2235777))

(declare-fun d!2235781 () Bool)

(assert (=> d!2235781 (= (head!14654 (unfocusZipperList!2322 (toList!11284 z!3530))) (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> b!7178184 d!2235781))

(declare-fun d!2235783 () Bool)

(declare-fun c!1336754 () Bool)

(assert (=> d!2235783 (= c!1336754 ((_ is Nil!69635) lt!2570592))))

(declare-fun e!4311121 () (InoxSet Context!14586))

(assert (=> d!2235783 (= (content!14311 lt!2570592) e!4311121)))

(declare-fun b!7178324 () Bool)

(assert (=> b!7178324 (= e!4311121 ((as const (Array Context!14586 Bool)) false))))

(declare-fun b!7178325 () Bool)

(assert (=> b!7178325 (= e!4311121 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) (h!76083 lt!2570592) true) (content!14311 (t!383780 lt!2570592))))))

(assert (= (and d!2235783 c!1336754) b!7178324))

(assert (= (and d!2235783 (not c!1336754)) b!7178325))

(declare-fun m!7877204 () Bool)

(assert (=> b!7178325 m!7877204))

(declare-fun m!7877206 () Bool)

(assert (=> b!7178325 m!7877206))

(assert (=> b!7178040 d!2235783))

(declare-fun d!2235785 () Bool)

(declare-fun res!2924046 () Bool)

(declare-fun e!4311125 () Bool)

(assert (=> d!2235785 (=> res!2924046 e!4311125)))

(assert (=> d!2235785 (= res!2924046 ((_ is ElementMatch!18341) (h!76082 (exprs!7793 setElem!53067))))))

(assert (=> d!2235785 (= (validRegex!9463 (h!76082 (exprs!7793 setElem!53067))) e!4311125)))

(declare-fun b!7178326 () Bool)

(declare-fun e!4311124 () Bool)

(declare-fun e!4311123 () Bool)

(assert (=> b!7178326 (= e!4311124 e!4311123)))

(declare-fun res!2924047 () Bool)

(assert (=> b!7178326 (= res!2924047 (not (nullable!7772 (reg!18670 (h!76082 (exprs!7793 setElem!53067))))))))

(assert (=> b!7178326 (=> (not res!2924047) (not e!4311123))))

(declare-fun bm!654227 () Bool)

(declare-fun c!1336756 () Bool)

(declare-fun call!654234 () Bool)

(declare-fun c!1336755 () Bool)

(assert (=> bm!654227 (= call!654234 (validRegex!9463 (ite c!1336756 (reg!18670 (h!76082 (exprs!7793 setElem!53067))) (ite c!1336755 (regTwo!37195 (h!76082 (exprs!7793 setElem!53067))) (regTwo!37194 (h!76082 (exprs!7793 setElem!53067)))))))))

(declare-fun b!7178327 () Bool)

(declare-fun res!2924044 () Bool)

(declare-fun e!4311126 () Bool)

(assert (=> b!7178327 (=> (not res!2924044) (not e!4311126))))

(declare-fun call!654233 () Bool)

(assert (=> b!7178327 (= res!2924044 call!654233)))

(declare-fun e!4311127 () Bool)

(assert (=> b!7178327 (= e!4311127 e!4311126)))

(declare-fun b!7178328 () Bool)

(declare-fun res!2924045 () Bool)

(declare-fun e!4311122 () Bool)

(assert (=> b!7178328 (=> res!2924045 e!4311122)))

(assert (=> b!7178328 (= res!2924045 (not ((_ is Concat!27186) (h!76082 (exprs!7793 setElem!53067)))))))

(assert (=> b!7178328 (= e!4311127 e!4311122)))

(declare-fun b!7178329 () Bool)

(declare-fun call!654232 () Bool)

(assert (=> b!7178329 (= e!4311126 call!654232)))

(declare-fun b!7178330 () Bool)

(declare-fun e!4311128 () Bool)

(assert (=> b!7178330 (= e!4311128 call!654232)))

(declare-fun b!7178331 () Bool)

(assert (=> b!7178331 (= e!4311124 e!4311127)))

(assert (=> b!7178331 (= c!1336755 ((_ is Union!18341) (h!76082 (exprs!7793 setElem!53067))))))

(declare-fun bm!654228 () Bool)

(assert (=> bm!654228 (= call!654233 (validRegex!9463 (ite c!1336755 (regOne!37195 (h!76082 (exprs!7793 setElem!53067))) (regOne!37194 (h!76082 (exprs!7793 setElem!53067))))))))

(declare-fun b!7178332 () Bool)

(assert (=> b!7178332 (= e!4311123 call!654234)))

(declare-fun bm!654229 () Bool)

(assert (=> bm!654229 (= call!654232 call!654234)))

(declare-fun b!7178333 () Bool)

(assert (=> b!7178333 (= e!4311122 e!4311128)))

(declare-fun res!2924043 () Bool)

(assert (=> b!7178333 (=> (not res!2924043) (not e!4311128))))

(assert (=> b!7178333 (= res!2924043 call!654233)))

(declare-fun b!7178334 () Bool)

(assert (=> b!7178334 (= e!4311125 e!4311124)))

(assert (=> b!7178334 (= c!1336756 ((_ is Star!18341) (h!76082 (exprs!7793 setElem!53067))))))

(assert (= (and d!2235785 (not res!2924046)) b!7178334))

(assert (= (and b!7178334 c!1336756) b!7178326))

(assert (= (and b!7178334 (not c!1336756)) b!7178331))

(assert (= (and b!7178326 res!2924047) b!7178332))

(assert (= (and b!7178331 c!1336755) b!7178327))

(assert (= (and b!7178331 (not c!1336755)) b!7178328))

(assert (= (and b!7178327 res!2924044) b!7178329))

(assert (= (and b!7178328 (not res!2924045)) b!7178333))

(assert (= (and b!7178333 res!2924043) b!7178330))

(assert (= (or b!7178327 b!7178333) bm!654228))

(assert (= (or b!7178329 b!7178330) bm!654229))

(assert (= (or b!7178332 bm!654229) bm!654227))

(declare-fun m!7877210 () Bool)

(assert (=> b!7178326 m!7877210))

(declare-fun m!7877212 () Bool)

(assert (=> bm!654227 m!7877212))

(declare-fun m!7877214 () Bool)

(assert (=> bm!654228 m!7877214))

(assert (=> bs!1895328 d!2235785))

(declare-fun d!2235789 () Bool)

(assert (=> d!2235789 (= (isUnion!1575 lt!2570601) ((_ is Union!18341) lt!2570601))))

(assert (=> b!7178185 d!2235789))

(declare-fun d!2235791 () Bool)

(assert (=> d!2235791 (= (isEmpty!40203 (tail!14063 (unfocusZipperList!2322 (toList!11284 z!3530)))) ((_ is Nil!69634) (tail!14063 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(assert (=> b!7178180 d!2235791))

(declare-fun d!2235795 () Bool)

(assert (=> d!2235795 (= (tail!14063 (unfocusZipperList!2322 (toList!11284 z!3530))) (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> b!7178180 d!2235795))

(declare-fun d!2235797 () Bool)

(declare-fun c!1336763 () Bool)

(assert (=> d!2235797 (= c!1336763 ((_ is Nil!69635) (t!383780 lt!2570582)))))

(declare-fun e!4311142 () (InoxSet Context!14586))

(assert (=> d!2235797 (= (content!14311 (t!383780 lt!2570582)) e!4311142)))

(declare-fun b!7178354 () Bool)

(assert (=> b!7178354 (= e!4311142 ((as const (Array Context!14586 Bool)) false))))

(declare-fun b!7178355 () Bool)

(assert (=> b!7178355 (= e!4311142 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) (h!76083 (t!383780 lt!2570582)) true) (content!14311 (t!383780 (t!383780 lt!2570582)))))))

(assert (= (and d!2235797 c!1336763) b!7178354))

(assert (= (and d!2235797 (not c!1336763)) b!7178355))

(declare-fun m!7877222 () Bool)

(assert (=> b!7178355 m!7877222))

(declare-fun m!7877224 () Bool)

(assert (=> b!7178355 m!7877224))

(assert (=> b!7178055 d!2235797))

(declare-fun d!2235799 () Bool)

(assert (=> d!2235799 (= (isEmpty!40203 (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))) ((_ is Nil!69634) (t!383779 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(assert (=> b!7178181 d!2235799))

(declare-fun d!2235801 () Bool)

(assert (=> d!2235801 (= (nullable!7772 (h!76082 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634))))) true)))

(assert (=> bs!1895329 d!2235801))

(declare-fun d!2235803 () Bool)

(assert (=> d!2235803 (= (isEmptyLang!2147 lt!2570601) ((_ is EmptyLang!18341) lt!2570601))))

(assert (=> b!7178186 d!2235803))

(declare-fun d!2235805 () Bool)

(assert (=> d!2235805 (= (isEmpty!40203 (unfocusZipperList!2322 (toList!11284 z!3530))) ((_ is Nil!69634) (unfocusZipperList!2322 (toList!11284 z!3530))))))

(assert (=> b!7178187 d!2235805))

(declare-fun d!2235807 () Bool)

(declare-fun res!2924055 () Bool)

(declare-fun e!4311143 () Bool)

(assert (=> d!2235807 (=> res!2924055 e!4311143)))

(assert (=> d!2235807 (= res!2924055 ((_ is Nil!69634) (exprs!7793 setElem!53073)))))

(assert (=> d!2235807 (= (forall!17170 (exprs!7793 setElem!53073) lambda!437344) e!4311143)))

(declare-fun b!7178356 () Bool)

(declare-fun e!4311144 () Bool)

(assert (=> b!7178356 (= e!4311143 e!4311144)))

(declare-fun res!2924056 () Bool)

(assert (=> b!7178356 (=> (not res!2924056) (not e!4311144))))

(assert (=> b!7178356 (= res!2924056 (dynLambda!28357 lambda!437344 (h!76082 (exprs!7793 setElem!53073))))))

(declare-fun b!7178357 () Bool)

(assert (=> b!7178357 (= e!4311144 (forall!17170 (t!383779 (exprs!7793 setElem!53073)) lambda!437344))))

(assert (= (and d!2235807 (not res!2924055)) b!7178356))

(assert (= (and b!7178356 res!2924056) b!7178357))

(declare-fun b_lambda!274609 () Bool)

(assert (=> (not b_lambda!274609) (not b!7178356)))

(declare-fun m!7877244 () Bool)

(assert (=> b!7178356 m!7877244))

(declare-fun m!7877246 () Bool)

(assert (=> b!7178357 m!7877246))

(assert (=> d!2235701 d!2235807))

(declare-fun d!2235811 () Bool)

(declare-fun res!2924057 () Bool)

(declare-fun e!4311145 () Bool)

(assert (=> d!2235811 (=> res!2924057 e!4311145)))

(assert (=> d!2235811 (= res!2924057 ((_ is Nil!69635) lt!2570592))))

(assert (=> d!2235811 (= (noDuplicate!2882 lt!2570592) e!4311145)))

(declare-fun b!7178358 () Bool)

(declare-fun e!4311146 () Bool)

(assert (=> b!7178358 (= e!4311145 e!4311146)))

(declare-fun res!2924058 () Bool)

(assert (=> b!7178358 (=> (not res!2924058) (not e!4311146))))

(assert (=> b!7178358 (= res!2924058 (not (contains!20714 (t!383780 lt!2570592) (h!76083 lt!2570592))))))

(declare-fun b!7178359 () Bool)

(assert (=> b!7178359 (= e!4311146 (noDuplicate!2882 (t!383780 lt!2570592)))))

(assert (= (and d!2235811 (not res!2924057)) b!7178358))

(assert (= (and b!7178358 res!2924058) b!7178359))

(declare-fun m!7877248 () Bool)

(assert (=> b!7178358 m!7877248))

(declare-fun m!7877250 () Bool)

(assert (=> b!7178359 m!7877250))

(assert (=> d!2235685 d!2235811))

(declare-fun d!2235813 () Bool)

(declare-fun e!4311148 () Bool)

(assert (=> d!2235813 e!4311148))

(declare-fun res!2924060 () Bool)

(assert (=> d!2235813 (=> (not res!2924060) (not e!4311148))))

(declare-fun res!2924059 () List!69759)

(assert (=> d!2235813 (= res!2924060 (noDuplicate!2882 res!2924059))))

(declare-fun e!4311147 () Bool)

(assert (=> d!2235813 e!4311147))

(assert (=> d!2235813 (= (choose!55378 (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)) res!2924059)))

(declare-fun b!7178361 () Bool)

(declare-fun e!4311149 () Bool)

(declare-fun tp!1991320 () Bool)

(assert (=> b!7178361 (= e!4311149 tp!1991320)))

(declare-fun tp!1991321 () Bool)

(declare-fun b!7178360 () Bool)

(assert (=> b!7178360 (= e!4311147 (and (inv!88874 (h!76083 res!2924059)) e!4311149 tp!1991321))))

(declare-fun b!7178362 () Bool)

(assert (=> b!7178362 (= e!4311148 (= (content!14311 res!2924059) (store ((as const (Array Context!14586 Bool)) false) (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)) true)))))

(assert (= b!7178360 b!7178361))

(assert (= (and d!2235813 ((_ is Cons!69635) res!2924059)) b!7178360))

(assert (= (and d!2235813 res!2924060) b!7178362))

(declare-fun m!7877252 () Bool)

(assert (=> d!2235813 m!7877252))

(declare-fun m!7877254 () Bool)

(assert (=> b!7178360 m!7877254))

(declare-fun m!7877256 () Bool)

(assert (=> b!7178362 m!7877256))

(assert (=> d!2235685 d!2235813))

(declare-fun bs!1895370 () Bool)

(declare-fun d!2235815 () Bool)

(assert (= bs!1895370 (and d!2235815 d!2235727)))

(declare-fun lambda!437361 () Int)

(assert (=> bs!1895370 (= lambda!437361 lambda!437352)))

(declare-fun bs!1895371 () Bool)

(assert (= bs!1895371 (and d!2235815 d!2235721)))

(assert (=> bs!1895371 (= lambda!437361 lambda!437351)))

(declare-fun bs!1895372 () Bool)

(assert (= bs!1895372 (and d!2235815 d!2235745)))

(assert (=> bs!1895372 (= lambda!437361 lambda!437353)))

(declare-fun bs!1895373 () Bool)

(assert (= bs!1895373 (and d!2235815 d!2235649)))

(assert (=> bs!1895373 (= lambda!437361 lambda!437333)))

(declare-fun bs!1895374 () Bool)

(assert (= bs!1895374 (and d!2235815 d!2235701)))

(assert (=> bs!1895374 (= lambda!437361 lambda!437344)))

(declare-fun bs!1895375 () Bool)

(assert (= bs!1895375 (and d!2235815 d!2235711)))

(assert (=> bs!1895375 (= lambda!437361 lambda!437347)))

(declare-fun bs!1895376 () Bool)

(assert (= bs!1895376 (and d!2235815 d!2235713)))

(assert (=> bs!1895376 (= lambda!437361 lambda!437350)))

(declare-fun bs!1895377 () Bool)

(assert (= bs!1895377 (and d!2235815 d!2235763)))

(assert (=> bs!1895377 (= lambda!437361 lambda!437354)))

(declare-fun bs!1895378 () Bool)

(assert (= bs!1895378 (and d!2235815 d!2235661)))

(assert (=> bs!1895378 (not (= lambda!437361 lambda!437336))))

(declare-fun b!7178403 () Bool)

(declare-fun e!4311173 () Regex!18341)

(assert (=> b!7178403 (= e!4311173 EmptyExpr!18341)))

(declare-fun b!7178404 () Bool)

(assert (=> b!7178404 (= e!4311173 (Concat!27186 (h!76082 (exprs!7793 (h!76083 (toList!11284 z!3530)))) (generalisedConcat!2457 (t!383779 (exprs!7793 (h!76083 (toList!11284 z!3530)))))))))

(declare-fun b!7178405 () Bool)

(declare-fun e!4311176 () Regex!18341)

(assert (=> b!7178405 (= e!4311176 e!4311173)))

(declare-fun c!1336778 () Bool)

(assert (=> b!7178405 (= c!1336778 ((_ is Cons!69634) (exprs!7793 (h!76083 (toList!11284 z!3530)))))))

(declare-fun b!7178406 () Bool)

(declare-fun e!4311179 () Bool)

(declare-fun e!4311178 () Bool)

(assert (=> b!7178406 (= e!4311179 e!4311178)))

(declare-fun c!1336779 () Bool)

(assert (=> b!7178406 (= c!1336779 (isEmpty!40203 (exprs!7793 (h!76083 (toList!11284 z!3530)))))))

(declare-fun b!7178407 () Bool)

(declare-fun e!4311175 () Bool)

(declare-fun lt!2570613 () Regex!18341)

(assert (=> b!7178407 (= e!4311175 (= lt!2570613 (head!14654 (exprs!7793 (h!76083 (toList!11284 z!3530))))))))

(declare-fun b!7178408 () Bool)

(declare-fun isConcat!1612 (Regex!18341) Bool)

(assert (=> b!7178408 (= e!4311175 (isConcat!1612 lt!2570613))))

(declare-fun b!7178409 () Bool)

(declare-fun isEmptyExpr!2090 (Regex!18341) Bool)

(assert (=> b!7178409 (= e!4311178 (isEmptyExpr!2090 lt!2570613))))

(declare-fun b!7178410 () Bool)

(declare-fun e!4311172 () Bool)

(assert (=> b!7178410 (= e!4311172 (isEmpty!40203 (t!383779 (exprs!7793 (h!76083 (toList!11284 z!3530))))))))

(declare-fun b!7178411 () Bool)

(assert (=> b!7178411 (= e!4311178 e!4311175)))

(declare-fun c!1336781 () Bool)

(assert (=> b!7178411 (= c!1336781 (isEmpty!40203 (tail!14063 (exprs!7793 (h!76083 (toList!11284 z!3530))))))))

(assert (=> d!2235815 e!4311179))

(declare-fun res!2924070 () Bool)

(assert (=> d!2235815 (=> (not res!2924070) (not e!4311179))))

(assert (=> d!2235815 (= res!2924070 (validRegex!9463 lt!2570613))))

(assert (=> d!2235815 (= lt!2570613 e!4311176)))

(declare-fun c!1336783 () Bool)

(assert (=> d!2235815 (= c!1336783 e!4311172)))

(declare-fun res!2924069 () Bool)

(assert (=> d!2235815 (=> (not res!2924069) (not e!4311172))))

(assert (=> d!2235815 (= res!2924069 ((_ is Cons!69634) (exprs!7793 (h!76083 (toList!11284 z!3530)))))))

(assert (=> d!2235815 (forall!17170 (exprs!7793 (h!76083 (toList!11284 z!3530))) lambda!437361)))

(assert (=> d!2235815 (= (generalisedConcat!2457 (exprs!7793 (h!76083 (toList!11284 z!3530)))) lt!2570613)))

(declare-fun b!7178412 () Bool)

(assert (=> b!7178412 (= e!4311176 (h!76082 (exprs!7793 (h!76083 (toList!11284 z!3530)))))))

(assert (= (and d!2235815 res!2924069) b!7178410))

(assert (= (and d!2235815 c!1336783) b!7178412))

(assert (= (and d!2235815 (not c!1336783)) b!7178405))

(assert (= (and b!7178405 c!1336778) b!7178404))

(assert (= (and b!7178405 (not c!1336778)) b!7178403))

(assert (= (and d!2235815 res!2924070) b!7178406))

(assert (= (and b!7178406 c!1336779) b!7178409))

(assert (= (and b!7178406 (not c!1336779)) b!7178411))

(assert (= (and b!7178411 c!1336781) b!7178407))

(assert (= (and b!7178411 (not c!1336781)) b!7178408))

(declare-fun m!7877258 () Bool)

(assert (=> b!7178409 m!7877258))

(declare-fun m!7877260 () Bool)

(assert (=> b!7178407 m!7877260))

(declare-fun m!7877262 () Bool)

(assert (=> b!7178408 m!7877262))

(declare-fun m!7877264 () Bool)

(assert (=> b!7178410 m!7877264))

(declare-fun m!7877266 () Bool)

(assert (=> b!7178406 m!7877266))

(declare-fun m!7877268 () Bool)

(assert (=> b!7178404 m!7877268))

(declare-fun m!7877270 () Bool)

(assert (=> d!2235815 m!7877270))

(declare-fun m!7877272 () Bool)

(assert (=> d!2235815 m!7877272))

(declare-fun m!7877274 () Bool)

(assert (=> b!7178411 m!7877274))

(assert (=> b!7178411 m!7877274))

(declare-fun m!7877276 () Bool)

(assert (=> b!7178411 m!7877276))

(assert (=> b!7178193 d!2235815))

(declare-fun bs!1895379 () Bool)

(declare-fun d!2235817 () Bool)

(assert (= bs!1895379 (and d!2235817 d!2235727)))

(declare-fun lambda!437362 () Int)

(assert (=> bs!1895379 (= lambda!437362 lambda!437352)))

(declare-fun bs!1895380 () Bool)

(assert (= bs!1895380 (and d!2235817 d!2235721)))

(assert (=> bs!1895380 (= lambda!437362 lambda!437351)))

(declare-fun bs!1895381 () Bool)

(assert (= bs!1895381 (and d!2235817 d!2235745)))

(assert (=> bs!1895381 (= lambda!437362 lambda!437353)))

(declare-fun bs!1895382 () Bool)

(assert (= bs!1895382 (and d!2235817 d!2235649)))

(assert (=> bs!1895382 (= lambda!437362 lambda!437333)))

(declare-fun bs!1895383 () Bool)

(assert (= bs!1895383 (and d!2235817 d!2235701)))

(assert (=> bs!1895383 (= lambda!437362 lambda!437344)))

(declare-fun bs!1895384 () Bool)

(assert (= bs!1895384 (and d!2235817 d!2235711)))

(assert (=> bs!1895384 (= lambda!437362 lambda!437347)))

(declare-fun bs!1895385 () Bool)

(assert (= bs!1895385 (and d!2235817 d!2235815)))

(assert (=> bs!1895385 (= lambda!437362 lambda!437361)))

(declare-fun bs!1895386 () Bool)

(assert (= bs!1895386 (and d!2235817 d!2235713)))

(assert (=> bs!1895386 (= lambda!437362 lambda!437350)))

(declare-fun bs!1895387 () Bool)

(assert (= bs!1895387 (and d!2235817 d!2235763)))

(assert (=> bs!1895387 (= lambda!437362 lambda!437354)))

(declare-fun bs!1895388 () Bool)

(assert (= bs!1895388 (and d!2235817 d!2235661)))

(assert (=> bs!1895388 (not (= lambda!437362 lambda!437336))))

(declare-fun lt!2570614 () List!69758)

(assert (=> d!2235817 (forall!17170 lt!2570614 lambda!437362)))

(declare-fun e!4311180 () List!69758)

(assert (=> d!2235817 (= lt!2570614 e!4311180)))

(declare-fun c!1336784 () Bool)

(assert (=> d!2235817 (= c!1336784 ((_ is Cons!69635) (t!383780 (toList!11284 z!3530))))))

(assert (=> d!2235817 (= (unfocusZipperList!2322 (t!383780 (toList!11284 z!3530))) lt!2570614)))

(declare-fun b!7178413 () Bool)

(assert (=> b!7178413 (= e!4311180 (Cons!69634 (generalisedConcat!2457 (exprs!7793 (h!76083 (t!383780 (toList!11284 z!3530))))) (unfocusZipperList!2322 (t!383780 (t!383780 (toList!11284 z!3530))))))))

(declare-fun b!7178414 () Bool)

(assert (=> b!7178414 (= e!4311180 Nil!69634)))

(assert (= (and d!2235817 c!1336784) b!7178413))

(assert (= (and d!2235817 (not c!1336784)) b!7178414))

(declare-fun m!7877278 () Bool)

(assert (=> d!2235817 m!7877278))

(declare-fun m!7877280 () Bool)

(assert (=> b!7178413 m!7877280))

(declare-fun m!7877282 () Bool)

(assert (=> b!7178413 m!7877282))

(assert (=> b!7178193 d!2235817))

(declare-fun d!2235819 () Bool)

(declare-fun lt!2570618 () Bool)

(assert (=> d!2235819 (= lt!2570618 (select (content!14311 (t!383780 lt!2570582)) (h!76083 lt!2570582)))))

(declare-fun e!4311191 () Bool)

(assert (=> d!2235819 (= lt!2570618 e!4311191)))

(declare-fun res!2924077 () Bool)

(assert (=> d!2235819 (=> (not res!2924077) (not e!4311191))))

(assert (=> d!2235819 (= res!2924077 ((_ is Cons!69635) (t!383780 lt!2570582)))))

(assert (=> d!2235819 (= (contains!20714 (t!383780 lt!2570582) (h!76083 lt!2570582)) lt!2570618)))

(declare-fun b!7178429 () Bool)

(declare-fun e!4311192 () Bool)

(assert (=> b!7178429 (= e!4311191 e!4311192)))

(declare-fun res!2924078 () Bool)

(assert (=> b!7178429 (=> res!2924078 e!4311192)))

(assert (=> b!7178429 (= res!2924078 (= (h!76083 (t!383780 lt!2570582)) (h!76083 lt!2570582)))))

(declare-fun b!7178430 () Bool)

(assert (=> b!7178430 (= e!4311192 (contains!20714 (t!383780 (t!383780 lt!2570582)) (h!76083 lt!2570582)))))

(assert (= (and d!2235819 res!2924077) b!7178429))

(assert (= (and b!7178429 (not res!2924078)) b!7178430))

(assert (=> d!2235819 m!7876966))

(declare-fun m!7877284 () Bool)

(assert (=> d!2235819 m!7877284))

(declare-fun m!7877286 () Bool)

(assert (=> b!7178430 m!7877286))

(assert (=> b!7178096 d!2235819))

(declare-fun d!2235821 () Bool)

(declare-fun res!2924079 () Bool)

(declare-fun e!4311193 () Bool)

(assert (=> d!2235821 (=> res!2924079 e!4311193)))

(assert (=> d!2235821 (= res!2924079 ((_ is Nil!69635) (t!383780 lt!2570582)))))

(assert (=> d!2235821 (= (noDuplicate!2882 (t!383780 lt!2570582)) e!4311193)))

(declare-fun b!7178431 () Bool)

(declare-fun e!4311194 () Bool)

(assert (=> b!7178431 (= e!4311193 e!4311194)))

(declare-fun res!2924080 () Bool)

(assert (=> b!7178431 (=> (not res!2924080) (not e!4311194))))

(assert (=> b!7178431 (= res!2924080 (not (contains!20714 (t!383780 (t!383780 lt!2570582)) (h!76083 (t!383780 lt!2570582)))))))

(declare-fun b!7178432 () Bool)

(assert (=> b!7178432 (= e!4311194 (noDuplicate!2882 (t!383780 (t!383780 lt!2570582))))))

(assert (= (and d!2235821 (not res!2924079)) b!7178431))

(assert (= (and b!7178431 res!2924080) b!7178432))

(declare-fun m!7877288 () Bool)

(assert (=> b!7178431 m!7877288))

(declare-fun m!7877290 () Bool)

(assert (=> b!7178432 m!7877290))

(assert (=> b!7178097 d!2235821))

(declare-fun d!2235823 () Bool)

(declare-fun res!2924081 () Bool)

(declare-fun e!4311195 () Bool)

(assert (=> d!2235823 (=> res!2924081 e!4311195)))

(assert (=> d!2235823 (= res!2924081 ((_ is Nil!69635) res!2923959))))

(assert (=> d!2235823 (= (noDuplicate!2882 res!2923959) e!4311195)))

(declare-fun b!7178433 () Bool)

(declare-fun e!4311196 () Bool)

(assert (=> b!7178433 (= e!4311195 e!4311196)))

(declare-fun res!2924082 () Bool)

(assert (=> b!7178433 (=> (not res!2924082) (not e!4311196))))

(assert (=> b!7178433 (= res!2924082 (not (contains!20714 (t!383780 res!2923959) (h!76083 res!2923959))))))

(declare-fun b!7178434 () Bool)

(assert (=> b!7178434 (= e!4311196 (noDuplicate!2882 (t!383780 res!2923959)))))

(assert (= (and d!2235823 (not res!2924081)) b!7178433))

(assert (= (and b!7178433 res!2924082) b!7178434))

(declare-fun m!7877292 () Bool)

(assert (=> b!7178433 m!7877292))

(declare-fun m!7877294 () Bool)

(assert (=> b!7178434 m!7877294))

(assert (=> d!2235697 d!2235823))

(declare-fun bs!1895394 () Bool)

(declare-fun d!2235825 () Bool)

(assert (= bs!1895394 (and d!2235825 d!2235727)))

(declare-fun lambda!437364 () Int)

(assert (=> bs!1895394 (= lambda!437364 lambda!437352)))

(declare-fun bs!1895396 () Bool)

(assert (= bs!1895396 (and d!2235825 d!2235721)))

(assert (=> bs!1895396 (= lambda!437364 lambda!437351)))

(declare-fun bs!1895398 () Bool)

(assert (= bs!1895398 (and d!2235825 d!2235745)))

(assert (=> bs!1895398 (= lambda!437364 lambda!437353)))

(declare-fun bs!1895399 () Bool)

(assert (= bs!1895399 (and d!2235825 d!2235649)))

(assert (=> bs!1895399 (= lambda!437364 lambda!437333)))

(declare-fun bs!1895400 () Bool)

(assert (= bs!1895400 (and d!2235825 d!2235701)))

(assert (=> bs!1895400 (= lambda!437364 lambda!437344)))

(declare-fun bs!1895401 () Bool)

(assert (= bs!1895401 (and d!2235825 d!2235817)))

(assert (=> bs!1895401 (= lambda!437364 lambda!437362)))

(declare-fun bs!1895402 () Bool)

(assert (= bs!1895402 (and d!2235825 d!2235711)))

(assert (=> bs!1895402 (= lambda!437364 lambda!437347)))

(declare-fun bs!1895403 () Bool)

(assert (= bs!1895403 (and d!2235825 d!2235815)))

(assert (=> bs!1895403 (= lambda!437364 lambda!437361)))

(declare-fun bs!1895404 () Bool)

(assert (= bs!1895404 (and d!2235825 d!2235713)))

(assert (=> bs!1895404 (= lambda!437364 lambda!437350)))

(declare-fun bs!1895405 () Bool)

(assert (= bs!1895405 (and d!2235825 d!2235763)))

(assert (=> bs!1895405 (= lambda!437364 lambda!437354)))

(declare-fun bs!1895406 () Bool)

(assert (= bs!1895406 (and d!2235825 d!2235661)))

(assert (=> bs!1895406 (not (= lambda!437364 lambda!437336))))

(assert (=> d!2235825 (= (inv!88874 setElem!53075) (forall!17170 (exprs!7793 setElem!53075) lambda!437364))))

(declare-fun bs!1895407 () Bool)

(assert (= bs!1895407 d!2235825))

(declare-fun m!7877296 () Bool)

(assert (=> bs!1895407 m!7877296))

(assert (=> setNonEmpty!53075 d!2235825))

(declare-fun d!2235827 () Bool)

(declare-fun res!2924083 () Bool)

(declare-fun e!4311197 () Bool)

(assert (=> d!2235827 (=> res!2924083 e!4311197)))

(assert (=> d!2235827 (= res!2924083 ((_ is Nil!69634) lt!2570604))))

(assert (=> d!2235827 (= (forall!17170 lt!2570604 lambda!437350) e!4311197)))

(declare-fun b!7178435 () Bool)

(declare-fun e!4311198 () Bool)

(assert (=> b!7178435 (= e!4311197 e!4311198)))

(declare-fun res!2924084 () Bool)

(assert (=> b!7178435 (=> (not res!2924084) (not e!4311198))))

(assert (=> b!7178435 (= res!2924084 (dynLambda!28357 lambda!437350 (h!76082 lt!2570604)))))

(declare-fun b!7178436 () Bool)

(assert (=> b!7178436 (= e!4311198 (forall!17170 (t!383779 lt!2570604) lambda!437350))))

(assert (= (and d!2235827 (not res!2924083)) b!7178435))

(assert (= (and b!7178435 res!2924084) b!7178436))

(declare-fun b_lambda!274611 () Bool)

(assert (=> (not b_lambda!274611) (not b!7178435)))

(declare-fun m!7877298 () Bool)

(assert (=> b!7178435 m!7877298))

(declare-fun m!7877300 () Bool)

(assert (=> b!7178436 m!7877300))

(assert (=> d!2235713 d!2235827))

(declare-fun b!7178437 () Bool)

(declare-fun e!4311199 () Bool)

(declare-fun tp!1991322 () Bool)

(declare-fun tp!1991323 () Bool)

(assert (=> b!7178437 (= e!4311199 (and tp!1991322 tp!1991323))))

(assert (=> b!7178210 (= tp!1991315 e!4311199)))

(assert (= (and b!7178210 ((_ is Cons!69634) (exprs!7793 setElem!53075))) b!7178437))

(declare-fun b!7178440 () Bool)

(declare-fun e!4311200 () Bool)

(declare-fun tp!1991326 () Bool)

(assert (=> b!7178440 (= e!4311200 tp!1991326)))

(declare-fun b!7178441 () Bool)

(declare-fun tp!1991328 () Bool)

(declare-fun tp!1991327 () Bool)

(assert (=> b!7178441 (= e!4311200 (and tp!1991328 tp!1991327))))

(declare-fun b!7178439 () Bool)

(declare-fun tp!1991325 () Bool)

(declare-fun tp!1991324 () Bool)

(assert (=> b!7178439 (= e!4311200 (and tp!1991325 tp!1991324))))

(declare-fun b!7178438 () Bool)

(assert (=> b!7178438 (= e!4311200 tp_is_empty!46251)))

(assert (=> b!7178206 (= tp!1991308 e!4311200)))

(assert (= (and b!7178206 ((_ is ElementMatch!18341) (regOne!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178438))

(assert (= (and b!7178206 ((_ is Concat!27186) (regOne!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178439))

(assert (= (and b!7178206 ((_ is Star!18341) (regOne!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178440))

(assert (= (and b!7178206 ((_ is Union!18341) (regOne!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178441))

(declare-fun b!7178444 () Bool)

(declare-fun e!4311201 () Bool)

(declare-fun tp!1991331 () Bool)

(assert (=> b!7178444 (= e!4311201 tp!1991331)))

(declare-fun b!7178445 () Bool)

(declare-fun tp!1991333 () Bool)

(declare-fun tp!1991332 () Bool)

(assert (=> b!7178445 (= e!4311201 (and tp!1991333 tp!1991332))))

(declare-fun b!7178443 () Bool)

(declare-fun tp!1991330 () Bool)

(declare-fun tp!1991329 () Bool)

(assert (=> b!7178443 (= e!4311201 (and tp!1991330 tp!1991329))))

(declare-fun b!7178442 () Bool)

(assert (=> b!7178442 (= e!4311201 tp_is_empty!46251)))

(assert (=> b!7178206 (= tp!1991307 e!4311201)))

(assert (= (and b!7178206 ((_ is ElementMatch!18341) (regTwo!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178442))

(assert (= (and b!7178206 ((_ is Concat!27186) (regTwo!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178443))

(assert (= (and b!7178206 ((_ is Star!18341) (regTwo!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178444))

(assert (= (and b!7178206 ((_ is Union!18341) (regTwo!37194 (h!76082 (exprs!7793 setElem!53067))))) b!7178445))

(declare-fun b!7178448 () Bool)

(declare-fun e!4311202 () Bool)

(declare-fun tp!1991336 () Bool)

(assert (=> b!7178448 (= e!4311202 tp!1991336)))

(declare-fun b!7178449 () Bool)

(declare-fun tp!1991338 () Bool)

(declare-fun tp!1991337 () Bool)

(assert (=> b!7178449 (= e!4311202 (and tp!1991338 tp!1991337))))

(declare-fun b!7178447 () Bool)

(declare-fun tp!1991335 () Bool)

(declare-fun tp!1991334 () Bool)

(assert (=> b!7178447 (= e!4311202 (and tp!1991335 tp!1991334))))

(declare-fun b!7178446 () Bool)

(assert (=> b!7178446 (= e!4311202 tp_is_empty!46251)))

(assert (=> b!7178207 (= tp!1991309 e!4311202)))

(assert (= (and b!7178207 ((_ is ElementMatch!18341) (reg!18670 (h!76082 (exprs!7793 setElem!53067))))) b!7178446))

(assert (= (and b!7178207 ((_ is Concat!27186) (reg!18670 (h!76082 (exprs!7793 setElem!53067))))) b!7178447))

(assert (= (and b!7178207 ((_ is Star!18341) (reg!18670 (h!76082 (exprs!7793 setElem!53067))))) b!7178448))

(assert (= (and b!7178207 ((_ is Union!18341) (reg!18670 (h!76082 (exprs!7793 setElem!53067))))) b!7178449))

(declare-fun b!7178454 () Bool)

(declare-fun e!4311204 () Bool)

(declare-fun tp!1991341 () Bool)

(assert (=> b!7178454 (= e!4311204 tp!1991341)))

(declare-fun b!7178455 () Bool)

(declare-fun tp!1991343 () Bool)

(declare-fun tp!1991342 () Bool)

(assert (=> b!7178455 (= e!4311204 (and tp!1991343 tp!1991342))))

(declare-fun b!7178453 () Bool)

(declare-fun tp!1991340 () Bool)

(declare-fun tp!1991339 () Bool)

(assert (=> b!7178453 (= e!4311204 (and tp!1991340 tp!1991339))))

(declare-fun b!7178452 () Bool)

(assert (=> b!7178452 (= e!4311204 tp_is_empty!46251)))

(assert (=> b!7178211 (= tp!1991316 e!4311204)))

(assert (= (and b!7178211 ((_ is ElementMatch!18341) (h!76082 (exprs!7793 setElem!53073)))) b!7178452))

(assert (= (and b!7178211 ((_ is Concat!27186) (h!76082 (exprs!7793 setElem!53073)))) b!7178453))

(assert (= (and b!7178211 ((_ is Star!18341) (h!76082 (exprs!7793 setElem!53073)))) b!7178454))

(assert (= (and b!7178211 ((_ is Union!18341) (h!76082 (exprs!7793 setElem!53073)))) b!7178455))

(declare-fun b!7178456 () Bool)

(declare-fun e!4311205 () Bool)

(declare-fun tp!1991344 () Bool)

(declare-fun tp!1991345 () Bool)

(assert (=> b!7178456 (= e!4311205 (and tp!1991344 tp!1991345))))

(assert (=> b!7178211 (= tp!1991317 e!4311205)))

(assert (= (and b!7178211 ((_ is Cons!69634) (t!383779 (exprs!7793 setElem!53073)))) b!7178456))

(declare-fun b!7178459 () Bool)

(declare-fun e!4311206 () Bool)

(declare-fun tp!1991348 () Bool)

(assert (=> b!7178459 (= e!4311206 tp!1991348)))

(declare-fun b!7178460 () Bool)

(declare-fun tp!1991350 () Bool)

(declare-fun tp!1991349 () Bool)

(assert (=> b!7178460 (= e!4311206 (and tp!1991350 tp!1991349))))

(declare-fun b!7178458 () Bool)

(declare-fun tp!1991347 () Bool)

(declare-fun tp!1991346 () Bool)

(assert (=> b!7178458 (= e!4311206 (and tp!1991347 tp!1991346))))

(declare-fun b!7178457 () Bool)

(assert (=> b!7178457 (= e!4311206 tp_is_empty!46251)))

(assert (=> b!7178209 (= tp!1991312 e!4311206)))

(assert (= (and b!7178209 ((_ is ElementMatch!18341) (h!76082 (t!383779 (exprs!7793 setElem!53067))))) b!7178457))

(assert (= (and b!7178209 ((_ is Concat!27186) (h!76082 (t!383779 (exprs!7793 setElem!53067))))) b!7178458))

(assert (= (and b!7178209 ((_ is Star!18341) (h!76082 (t!383779 (exprs!7793 setElem!53067))))) b!7178459))

(assert (= (and b!7178209 ((_ is Union!18341) (h!76082 (t!383779 (exprs!7793 setElem!53067))))) b!7178460))

(declare-fun b!7178461 () Bool)

(declare-fun e!4311207 () Bool)

(declare-fun tp!1991351 () Bool)

(declare-fun tp!1991352 () Bool)

(assert (=> b!7178461 (= e!4311207 (and tp!1991351 tp!1991352))))

(assert (=> b!7178209 (= tp!1991313 e!4311207)))

(assert (= (and b!7178209 ((_ is Cons!69634) (t!383779 (t!383779 (exprs!7793 setElem!53067))))) b!7178461))

(declare-fun b!7178464 () Bool)

(declare-fun e!4311208 () Bool)

(declare-fun tp!1991355 () Bool)

(assert (=> b!7178464 (= e!4311208 tp!1991355)))

(declare-fun b!7178465 () Bool)

(declare-fun tp!1991357 () Bool)

(declare-fun tp!1991356 () Bool)

(assert (=> b!7178465 (= e!4311208 (and tp!1991357 tp!1991356))))

(declare-fun b!7178463 () Bool)

(declare-fun tp!1991354 () Bool)

(declare-fun tp!1991353 () Bool)

(assert (=> b!7178463 (= e!4311208 (and tp!1991354 tp!1991353))))

(declare-fun b!7178462 () Bool)

(assert (=> b!7178462 (= e!4311208 tp_is_empty!46251)))

(assert (=> b!7178208 (= tp!1991311 e!4311208)))

(assert (= (and b!7178208 ((_ is ElementMatch!18341) (regOne!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178462))

(assert (= (and b!7178208 ((_ is Concat!27186) (regOne!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178463))

(assert (= (and b!7178208 ((_ is Star!18341) (regOne!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178464))

(assert (= (and b!7178208 ((_ is Union!18341) (regOne!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178465))

(declare-fun b!7178468 () Bool)

(declare-fun e!4311209 () Bool)

(declare-fun tp!1991360 () Bool)

(assert (=> b!7178468 (= e!4311209 tp!1991360)))

(declare-fun b!7178469 () Bool)

(declare-fun tp!1991362 () Bool)

(declare-fun tp!1991361 () Bool)

(assert (=> b!7178469 (= e!4311209 (and tp!1991362 tp!1991361))))

(declare-fun b!7178467 () Bool)

(declare-fun tp!1991359 () Bool)

(declare-fun tp!1991358 () Bool)

(assert (=> b!7178467 (= e!4311209 (and tp!1991359 tp!1991358))))

(declare-fun b!7178466 () Bool)

(assert (=> b!7178466 (= e!4311209 tp_is_empty!46251)))

(assert (=> b!7178208 (= tp!1991310 e!4311209)))

(assert (= (and b!7178208 ((_ is ElementMatch!18341) (regTwo!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178466))

(assert (= (and b!7178208 ((_ is Concat!27186) (regTwo!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178467))

(assert (= (and b!7178208 ((_ is Star!18341) (regTwo!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178468))

(assert (= (and b!7178208 ((_ is Union!18341) (regTwo!37195 (h!76082 (exprs!7793 setElem!53067))))) b!7178469))

(declare-fun b!7178477 () Bool)

(declare-fun e!4311215 () Bool)

(declare-fun tp!1991367 () Bool)

(assert (=> b!7178477 (= e!4311215 tp!1991367)))

(declare-fun b!7178476 () Bool)

(declare-fun e!4311214 () Bool)

(declare-fun tp!1991368 () Bool)

(assert (=> b!7178476 (= e!4311214 (and (inv!88874 (h!76083 (t!383780 res!2923959))) e!4311215 tp!1991368))))

(assert (=> b!7178121 (= tp!1991287 e!4311214)))

(assert (= b!7178476 b!7178477))

(assert (= (and b!7178121 ((_ is Cons!69635) (t!383780 res!2923959))) b!7178476))

(declare-fun m!7877328 () Bool)

(assert (=> b!7178476 m!7877328))

(declare-fun b!7178478 () Bool)

(declare-fun e!4311216 () Bool)

(declare-fun tp!1991369 () Bool)

(declare-fun tp!1991370 () Bool)

(assert (=> b!7178478 (= e!4311216 (and tp!1991369 tp!1991370))))

(assert (=> b!7178122 (= tp!1991286 e!4311216)))

(assert (= (and b!7178122 ((_ is Cons!69634) (exprs!7793 (h!76083 res!2923959)))) b!7178478))

(declare-fun condSetEmpty!53076 () Bool)

(assert (=> setNonEmpty!53075 (= condSetEmpty!53076 (= setRest!53075 ((as const (Array Context!14586 Bool)) false)))))

(declare-fun setRes!53076 () Bool)

(assert (=> setNonEmpty!53075 (= tp!1991314 setRes!53076)))

(declare-fun setIsEmpty!53076 () Bool)

(assert (=> setIsEmpty!53076 setRes!53076))

(declare-fun setElem!53076 () Context!14586)

(declare-fun e!4311218 () Bool)

(declare-fun setNonEmpty!53076 () Bool)

(declare-fun tp!1991371 () Bool)

(assert (=> setNonEmpty!53076 (= setRes!53076 (and tp!1991371 (inv!88874 setElem!53076) e!4311218))))

(declare-fun setRest!53076 () (InoxSet Context!14586))

(assert (=> setNonEmpty!53076 (= setRest!53075 ((_ map or) (store ((as const (Array Context!14586 Bool)) false) setElem!53076 true) setRest!53076))))

(declare-fun b!7178481 () Bool)

(declare-fun tp!1991372 () Bool)

(assert (=> b!7178481 (= e!4311218 tp!1991372)))

(assert (= (and setNonEmpty!53075 condSetEmpty!53076) setIsEmpty!53076))

(assert (= (and setNonEmpty!53075 (not condSetEmpty!53076)) setNonEmpty!53076))

(assert (= setNonEmpty!53076 b!7178481))

(declare-fun m!7877332 () Bool)

(assert (=> setNonEmpty!53076 m!7877332))

(declare-fun b_lambda!274613 () Bool)

(assert (= b_lambda!274605 (or d!2235711 b_lambda!274613)))

(declare-fun bs!1895416 () Bool)

(declare-fun d!2235835 () Bool)

(assert (= bs!1895416 (and d!2235835 d!2235711)))

(assert (=> bs!1895416 (= (dynLambda!28357 lambda!437347 (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530)))) (validRegex!9463 (h!76082 (unfocusZipperList!2322 (toList!11284 z!3530)))))))

(declare-fun m!7877336 () Bool)

(assert (=> bs!1895416 m!7877336))

(assert (=> b!7178305 d!2235835))

(declare-fun b_lambda!274615 () Bool)

(assert (= b_lambda!274607 (or d!2235649 b_lambda!274615)))

(declare-fun bs!1895417 () Bool)

(declare-fun d!2235837 () Bool)

(assert (= bs!1895417 (and d!2235837 d!2235649)))

(assert (=> bs!1895417 (= (dynLambda!28357 lambda!437333 (h!76082 (t!383779 (exprs!7793 setElem!53067)))) (validRegex!9463 (h!76082 (t!383779 (exprs!7793 setElem!53067)))))))

(declare-fun m!7877338 () Bool)

(assert (=> bs!1895417 m!7877338))

(assert (=> b!7178311 d!2235837))

(declare-fun b_lambda!274617 () Bool)

(assert (= b_lambda!274609 (or d!2235701 b_lambda!274617)))

(declare-fun bs!1895418 () Bool)

(declare-fun d!2235839 () Bool)

(assert (= bs!1895418 (and d!2235839 d!2235701)))

(assert (=> bs!1895418 (= (dynLambda!28357 lambda!437344 (h!76082 (exprs!7793 setElem!53073))) (validRegex!9463 (h!76082 (exprs!7793 setElem!53073))))))

(declare-fun m!7877340 () Bool)

(assert (=> bs!1895418 m!7877340))

(assert (=> b!7178356 d!2235839))

(declare-fun b_lambda!274619 () Bool)

(assert (= b_lambda!274611 (or d!2235713 b_lambda!274619)))

(declare-fun bs!1895419 () Bool)

(declare-fun d!2235841 () Bool)

(assert (= bs!1895419 (and d!2235841 d!2235713)))

(assert (=> bs!1895419 (= (dynLambda!28357 lambda!437350 (h!76082 lt!2570604)) (validRegex!9463 (h!76082 lt!2570604)))))

(declare-fun m!7877342 () Bool)

(assert (=> bs!1895419 m!7877342))

(assert (=> b!7178435 d!2235841))

(declare-fun b_lambda!274621 () Bool)

(assert (= b_lambda!274601 (or d!2235661 b_lambda!274621)))

(declare-fun bs!1895420 () Bool)

(declare-fun d!2235843 () Bool)

(assert (= bs!1895420 (and d!2235843 d!2235661)))

(assert (=> bs!1895420 (= (dynLambda!28357 lambda!437336 (h!76082 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))))) (nullable!7772 (h!76082 (t!383779 (exprs!7793 (Context!14587 (Cons!69634 EmptyExpr!18341 Nil!69634)))))))))

(declare-fun m!7877344 () Bool)

(assert (=> bs!1895420 m!7877344))

(assert (=> b!7178292 d!2235843))

(check-sat (not b!7178222) (not d!2235721) (not b!7178459) (not b!7178441) (not b!7178465) (not b!7178468) (not b!7178449) (not b!7178355) (not b!7178212) (not bs!1895420) tp_is_empty!46251 (not setNonEmpty!53076) (not b!7178325) (not b!7178408) (not b!7178406) (not b!7178315) (not bm!654228) (not bm!654206) (not b!7178281) (not b!7178440) (not b!7178293) (not b!7178460) (not b!7178357) (not b!7178481) (not b!7178407) (not d!2235813) (not b_lambda!274591) (not b!7178467) (not d!2235815) (not b!7178445) (not b!7178409) (not b!7178461) (not b!7178448) (not b_lambda!274619) (not b!7178432) (not b!7178294) (not b!7178444) (not b!7178287) (not b!7178430) (not b!7178360) (not b!7178439) (not b!7178326) (not b!7178443) (not b!7178434) (not b!7178358) (not b!7178285) (not b!7178223) (not b!7178359) (not bm!654224) (not b!7178245) (not bm!654207) (not b!7178229) (not d!2235817) (not b!7178410) (not bm!654227) (not b!7178437) (not b!7178288) (not d!2235825) (not b!7178312) (not b_lambda!274617) (not b!7178361) (not b!7178306) (not d!2235727) (not b!7178260) (not b!7178463) (not b!7178469) (not b!7178476) (not bs!1895417) (not b!7178433) (not b!7178454) (not b!7178453) (not b!7178477) (not b!7178478) (not b!7178456) (not bm!654215) (not b!7178314) (not b!7178226) (not bm!654216) (not bm!654225) (not b!7178362) (not b!7178447) (not b_lambda!274615) (not bs!1895418) (not d!2235819) (not b!7178413) (not bs!1895419) (not b!7178455) (not b!7178431) (not b!7178458) (not bs!1895416) (not b!7178282) (not b!7178286) (not b!7178404) (not b!7178280) (not b_lambda!274621) (not b!7178221) (not bm!654222) (not d!2235733) (not d!2235763) (not b!7178464) (not b!7178411) (not b!7178227) (not b!7178436) (not b_lambda!274613) (not d!2235745) (not b!7178228) (not bm!654221) (not b_lambda!274593))
(check-sat)
