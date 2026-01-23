; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696816 () Bool)

(assert start!696816)

(declare-fun b!7146533 () Bool)

(declare-fun e!4294614 () Bool)

(declare-fun tp!1971897 () Bool)

(assert (=> b!7146533 (= e!4294614 tp!1971897)))

(declare-fun b!7146534 () Bool)

(declare-fun e!4294615 () Bool)

(declare-fun tp!1971898 () Bool)

(assert (=> b!7146534 (= e!4294615 tp!1971898)))

(declare-fun b!7146535 () Bool)

(declare-fun tp!1971899 () Bool)

(declare-fun tp!1971895 () Bool)

(assert (=> b!7146535 (= e!4294615 (and tp!1971899 tp!1971895))))

(declare-fun b!7146536 () Bool)

(declare-fun res!2915718 () Bool)

(declare-fun e!4294616 () Bool)

(assert (=> b!7146536 (=> (not res!2915718) (not e!4294616))))

(declare-datatypes ((C!36708 0))(
  ( (C!36709 (val!28302 Int)) )
))
(declare-datatypes ((Regex!18217 0))(
  ( (ElementMatch!18217 (c!1332638 C!36708)) (Concat!27062 (regOne!36946 Regex!18217) (regTwo!36946 Regex!18217)) (EmptyExpr!18217) (Star!18217 (reg!18546 Regex!18217)) (EmptyLang!18217) (Union!18217 (regOne!36947 Regex!18217) (regTwo!36947 Regex!18217)) )
))
(declare-datatypes ((List!69512 0))(
  ( (Nil!69388) (Cons!69388 (h!75836 Regex!18217) (t!383529 List!69512)) )
))
(declare-datatypes ((Context!14422 0))(
  ( (Context!14423 (exprs!7711 List!69512)) )
))
(declare-datatypes ((List!69513 0))(
  ( (Nil!69389) (Cons!69389 (h!75837 Context!14422) (t!383530 List!69513)) )
))
(declare-fun zl!333 () List!69513)

(declare-fun r!7278 () Regex!18217)

(declare-fun generalisedConcat!2393 (List!69512) Regex!18217)

(assert (=> b!7146536 (= res!2915718 (not (= (generalisedConcat!2393 (exprs!7711 (h!75837 zl!333))) r!7278)))))

(declare-fun b!7146537 () Bool)

(declare-fun tp_is_empty!46071 () Bool)

(assert (=> b!7146537 (= e!4294615 tp_is_empty!46071)))

(declare-fun tp!1971896 () Bool)

(declare-fun e!4294613 () Bool)

(declare-fun b!7146538 () Bool)

(declare-fun inv!88606 (Context!14422) Bool)

(assert (=> b!7146538 (= e!4294613 (and (inv!88606 (h!75837 zl!333)) e!4294614 tp!1971896))))

(declare-fun b!7146539 () Bool)

(declare-fun contains!20649 (List!69512 Regex!18217) Bool)

(declare-fun unfocusZipperList!2258 (List!69513) List!69512)

(assert (=> b!7146539 (= e!4294616 (not (contains!20649 (unfocusZipperList!2258 (t!383530 zl!333)) r!7278)))))

(declare-fun b!7146541 () Bool)

(declare-fun tp!1971900 () Bool)

(declare-fun tp!1971901 () Bool)

(assert (=> b!7146541 (= e!4294615 (and tp!1971900 tp!1971901))))

(declare-fun b!7146540 () Bool)

(declare-fun res!2915717 () Bool)

(assert (=> b!7146540 (=> (not res!2915717) (not e!4294616))))

(get-info :version)

(assert (=> b!7146540 (= res!2915717 ((_ is Cons!69389) zl!333))))

(declare-fun res!2915719 () Bool)

(assert (=> start!696816 (=> (not res!2915719) (not e!4294616))))

(assert (=> start!696816 (= res!2915719 (contains!20649 (unfocusZipperList!2258 zl!333) r!7278))))

(assert (=> start!696816 e!4294616))

(assert (=> start!696816 e!4294613))

(assert (=> start!696816 e!4294615))

(assert (= (and start!696816 res!2915719) b!7146540))

(assert (= (and b!7146540 res!2915717) b!7146536))

(assert (= (and b!7146536 res!2915718) b!7146539))

(assert (= b!7146538 b!7146533))

(assert (= (and start!696816 ((_ is Cons!69389) zl!333)) b!7146538))

(assert (= (and start!696816 ((_ is ElementMatch!18217) r!7278)) b!7146537))

(assert (= (and start!696816 ((_ is Concat!27062) r!7278)) b!7146541))

(assert (= (and start!696816 ((_ is Star!18217) r!7278)) b!7146534))

(assert (= (and start!696816 ((_ is Union!18217) r!7278)) b!7146535))

(declare-fun m!7859398 () Bool)

(assert (=> b!7146536 m!7859398))

(declare-fun m!7859400 () Bool)

(assert (=> b!7146538 m!7859400))

(declare-fun m!7859402 () Bool)

(assert (=> b!7146539 m!7859402))

(assert (=> b!7146539 m!7859402))

(declare-fun m!7859404 () Bool)

(assert (=> b!7146539 m!7859404))

(declare-fun m!7859406 () Bool)

(assert (=> start!696816 m!7859406))

(assert (=> start!696816 m!7859406))

(declare-fun m!7859408 () Bool)

(assert (=> start!696816 m!7859408))

(check-sat (not b!7146534) (not b!7146536) (not start!696816) (not b!7146539) tp_is_empty!46071 (not b!7146541) (not b!7146535) (not b!7146538) (not b!7146533))
(check-sat)
(get-model)

(declare-fun b!7146572 () Bool)

(declare-fun e!4294640 () Bool)

(declare-fun isEmpty!40088 (List!69512) Bool)

(assert (=> b!7146572 (= e!4294640 (isEmpty!40088 (t!383529 (exprs!7711 (h!75837 zl!333)))))))

(declare-fun b!7146573 () Bool)

(declare-fun e!4294641 () Regex!18217)

(assert (=> b!7146573 (= e!4294641 (Concat!27062 (h!75836 (exprs!7711 (h!75837 zl!333))) (generalisedConcat!2393 (t!383529 (exprs!7711 (h!75837 zl!333))))))))

(declare-fun b!7146574 () Bool)

(declare-fun e!4294637 () Bool)

(declare-fun lt!2568892 () Regex!18217)

(declare-fun isConcat!1572 (Regex!18217) Bool)

(assert (=> b!7146574 (= e!4294637 (isConcat!1572 lt!2568892))))

(declare-fun b!7146575 () Bool)

(declare-fun head!14529 (List!69512) Regex!18217)

(assert (=> b!7146575 (= e!4294637 (= lt!2568892 (head!14529 (exprs!7711 (h!75837 zl!333)))))))

(declare-fun d!2228161 () Bool)

(declare-fun e!4294638 () Bool)

(assert (=> d!2228161 e!4294638))

(declare-fun res!2915730 () Bool)

(assert (=> d!2228161 (=> (not res!2915730) (not e!4294638))))

(declare-fun validRegex!9378 (Regex!18217) Bool)

(assert (=> d!2228161 (= res!2915730 (validRegex!9378 lt!2568892))))

(declare-fun e!4294642 () Regex!18217)

(assert (=> d!2228161 (= lt!2568892 e!4294642)))

(declare-fun c!1332649 () Bool)

(assert (=> d!2228161 (= c!1332649 e!4294640)))

(declare-fun res!2915731 () Bool)

(assert (=> d!2228161 (=> (not res!2915731) (not e!4294640))))

(assert (=> d!2228161 (= res!2915731 ((_ is Cons!69388) (exprs!7711 (h!75837 zl!333))))))

(declare-fun lambda!435803 () Int)

(declare-fun forall!17052 (List!69512 Int) Bool)

(assert (=> d!2228161 (forall!17052 (exprs!7711 (h!75837 zl!333)) lambda!435803)))

(assert (=> d!2228161 (= (generalisedConcat!2393 (exprs!7711 (h!75837 zl!333))) lt!2568892)))

(declare-fun b!7146576 () Bool)

(declare-fun e!4294639 () Bool)

(assert (=> b!7146576 (= e!4294638 e!4294639)))

(declare-fun c!1332650 () Bool)

(assert (=> b!7146576 (= c!1332650 (isEmpty!40088 (exprs!7711 (h!75837 zl!333))))))

(declare-fun b!7146577 () Bool)

(declare-fun isEmptyExpr!2049 (Regex!18217) Bool)

(assert (=> b!7146577 (= e!4294639 (isEmptyExpr!2049 lt!2568892))))

(declare-fun b!7146578 () Bool)

(assert (=> b!7146578 (= e!4294642 (h!75836 (exprs!7711 (h!75837 zl!333))))))

(declare-fun b!7146579 () Bool)

(assert (=> b!7146579 (= e!4294641 EmptyExpr!18217)))

(declare-fun b!7146580 () Bool)

(assert (=> b!7146580 (= e!4294642 e!4294641)))

(declare-fun c!1332652 () Bool)

(assert (=> b!7146580 (= c!1332652 ((_ is Cons!69388) (exprs!7711 (h!75837 zl!333))))))

(declare-fun b!7146581 () Bool)

(assert (=> b!7146581 (= e!4294639 e!4294637)))

(declare-fun c!1332651 () Bool)

(declare-fun tail!13999 (List!69512) List!69512)

(assert (=> b!7146581 (= c!1332651 (isEmpty!40088 (tail!13999 (exprs!7711 (h!75837 zl!333)))))))

(assert (= (and d!2228161 res!2915731) b!7146572))

(assert (= (and d!2228161 c!1332649) b!7146578))

(assert (= (and d!2228161 (not c!1332649)) b!7146580))

(assert (= (and b!7146580 c!1332652) b!7146573))

(assert (= (and b!7146580 (not c!1332652)) b!7146579))

(assert (= (and d!2228161 res!2915730) b!7146576))

(assert (= (and b!7146576 c!1332650) b!7146577))

(assert (= (and b!7146576 (not c!1332650)) b!7146581))

(assert (= (and b!7146581 c!1332651) b!7146575))

(assert (= (and b!7146581 (not c!1332651)) b!7146574))

(declare-fun m!7859416 () Bool)

(assert (=> b!7146576 m!7859416))

(declare-fun m!7859418 () Bool)

(assert (=> b!7146575 m!7859418))

(declare-fun m!7859420 () Bool)

(assert (=> d!2228161 m!7859420))

(declare-fun m!7859422 () Bool)

(assert (=> d!2228161 m!7859422))

(declare-fun m!7859424 () Bool)

(assert (=> b!7146581 m!7859424))

(assert (=> b!7146581 m!7859424))

(declare-fun m!7859426 () Bool)

(assert (=> b!7146581 m!7859426))

(declare-fun m!7859428 () Bool)

(assert (=> b!7146573 m!7859428))

(declare-fun m!7859430 () Bool)

(assert (=> b!7146572 m!7859430))

(declare-fun m!7859432 () Bool)

(assert (=> b!7146577 m!7859432))

(declare-fun m!7859434 () Bool)

(assert (=> b!7146574 m!7859434))

(assert (=> b!7146536 d!2228161))

(declare-fun bs!1889191 () Bool)

(declare-fun d!2228165 () Bool)

(assert (= bs!1889191 (and d!2228165 d!2228161)))

(declare-fun lambda!435809 () Int)

(assert (=> bs!1889191 (= lambda!435809 lambda!435803)))

(assert (=> d!2228165 (= (inv!88606 (h!75837 zl!333)) (forall!17052 (exprs!7711 (h!75837 zl!333)) lambda!435809))))

(declare-fun bs!1889192 () Bool)

(assert (= bs!1889192 d!2228165))

(declare-fun m!7859436 () Bool)

(assert (=> bs!1889192 m!7859436))

(assert (=> b!7146538 d!2228165))

(declare-fun d!2228167 () Bool)

(declare-fun lt!2568896 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14238 (List!69512) (InoxSet Regex!18217))

(assert (=> d!2228167 (= lt!2568896 (select (content!14238 (unfocusZipperList!2258 zl!333)) r!7278))))

(declare-fun e!4294649 () Bool)

(assert (=> d!2228167 (= lt!2568896 e!4294649)))

(declare-fun res!2915737 () Bool)

(assert (=> d!2228167 (=> (not res!2915737) (not e!4294649))))

(assert (=> d!2228167 (= res!2915737 ((_ is Cons!69388) (unfocusZipperList!2258 zl!333)))))

(assert (=> d!2228167 (= (contains!20649 (unfocusZipperList!2258 zl!333) r!7278) lt!2568896)))

(declare-fun b!7146588 () Bool)

(declare-fun e!4294648 () Bool)

(assert (=> b!7146588 (= e!4294649 e!4294648)))

(declare-fun res!2915736 () Bool)

(assert (=> b!7146588 (=> res!2915736 e!4294648)))

(assert (=> b!7146588 (= res!2915736 (= (h!75836 (unfocusZipperList!2258 zl!333)) r!7278))))

(declare-fun b!7146589 () Bool)

(assert (=> b!7146589 (= e!4294648 (contains!20649 (t!383529 (unfocusZipperList!2258 zl!333)) r!7278))))

(assert (= (and d!2228167 res!2915737) b!7146588))

(assert (= (and b!7146588 (not res!2915736)) b!7146589))

(assert (=> d!2228167 m!7859406))

(declare-fun m!7859440 () Bool)

(assert (=> d!2228167 m!7859440))

(declare-fun m!7859442 () Bool)

(assert (=> d!2228167 m!7859442))

(declare-fun m!7859444 () Bool)

(assert (=> b!7146589 m!7859444))

(assert (=> start!696816 d!2228167))

(declare-fun bs!1889193 () Bool)

(declare-fun d!2228171 () Bool)

(assert (= bs!1889193 (and d!2228171 d!2228161)))

(declare-fun lambda!435814 () Int)

(assert (=> bs!1889193 (= lambda!435814 lambda!435803)))

(declare-fun bs!1889194 () Bool)

(assert (= bs!1889194 (and d!2228171 d!2228165)))

(assert (=> bs!1889194 (= lambda!435814 lambda!435809)))

(declare-fun lt!2568901 () List!69512)

(assert (=> d!2228171 (forall!17052 lt!2568901 lambda!435814)))

(declare-fun e!4294664 () List!69512)

(assert (=> d!2228171 (= lt!2568901 e!4294664)))

(declare-fun c!1332664 () Bool)

(assert (=> d!2228171 (= c!1332664 ((_ is Cons!69389) zl!333))))

(assert (=> d!2228171 (= (unfocusZipperList!2258 zl!333) lt!2568901)))

(declare-fun b!7146614 () Bool)

(assert (=> b!7146614 (= e!4294664 (Cons!69388 (generalisedConcat!2393 (exprs!7711 (h!75837 zl!333))) (unfocusZipperList!2258 (t!383530 zl!333))))))

(declare-fun b!7146615 () Bool)

(assert (=> b!7146615 (= e!4294664 Nil!69388)))

(assert (= (and d!2228171 c!1332664) b!7146614))

(assert (= (and d!2228171 (not c!1332664)) b!7146615))

(declare-fun m!7859446 () Bool)

(assert (=> d!2228171 m!7859446))

(assert (=> b!7146614 m!7859398))

(assert (=> b!7146614 m!7859402))

(assert (=> start!696816 d!2228171))

(declare-fun d!2228173 () Bool)

(declare-fun lt!2568902 () Bool)

(assert (=> d!2228173 (= lt!2568902 (select (content!14238 (unfocusZipperList!2258 (t!383530 zl!333))) r!7278))))

(declare-fun e!4294666 () Bool)

(assert (=> d!2228173 (= lt!2568902 e!4294666)))

(declare-fun res!2915743 () Bool)

(assert (=> d!2228173 (=> (not res!2915743) (not e!4294666))))

(assert (=> d!2228173 (= res!2915743 ((_ is Cons!69388) (unfocusZipperList!2258 (t!383530 zl!333))))))

(assert (=> d!2228173 (= (contains!20649 (unfocusZipperList!2258 (t!383530 zl!333)) r!7278) lt!2568902)))

(declare-fun b!7146616 () Bool)

(declare-fun e!4294665 () Bool)

(assert (=> b!7146616 (= e!4294666 e!4294665)))

(declare-fun res!2915742 () Bool)

(assert (=> b!7146616 (=> res!2915742 e!4294665)))

(assert (=> b!7146616 (= res!2915742 (= (h!75836 (unfocusZipperList!2258 (t!383530 zl!333))) r!7278))))

(declare-fun b!7146617 () Bool)

(assert (=> b!7146617 (= e!4294665 (contains!20649 (t!383529 (unfocusZipperList!2258 (t!383530 zl!333))) r!7278))))

(assert (= (and d!2228173 res!2915743) b!7146616))

(assert (= (and b!7146616 (not res!2915742)) b!7146617))

(assert (=> d!2228173 m!7859402))

(declare-fun m!7859448 () Bool)

(assert (=> d!2228173 m!7859448))

(declare-fun m!7859450 () Bool)

(assert (=> d!2228173 m!7859450))

(declare-fun m!7859452 () Bool)

(assert (=> b!7146617 m!7859452))

(assert (=> b!7146539 d!2228173))

(declare-fun bs!1889195 () Bool)

(declare-fun d!2228175 () Bool)

(assert (= bs!1889195 (and d!2228175 d!2228161)))

(declare-fun lambda!435815 () Int)

(assert (=> bs!1889195 (= lambda!435815 lambda!435803)))

(declare-fun bs!1889196 () Bool)

(assert (= bs!1889196 (and d!2228175 d!2228165)))

(assert (=> bs!1889196 (= lambda!435815 lambda!435809)))

(declare-fun bs!1889197 () Bool)

(assert (= bs!1889197 (and d!2228175 d!2228171)))

(assert (=> bs!1889197 (= lambda!435815 lambda!435814)))

(declare-fun lt!2568903 () List!69512)

(assert (=> d!2228175 (forall!17052 lt!2568903 lambda!435815)))

(declare-fun e!4294667 () List!69512)

(assert (=> d!2228175 (= lt!2568903 e!4294667)))

(declare-fun c!1332665 () Bool)

(assert (=> d!2228175 (= c!1332665 ((_ is Cons!69389) (t!383530 zl!333)))))

(assert (=> d!2228175 (= (unfocusZipperList!2258 (t!383530 zl!333)) lt!2568903)))

(declare-fun b!7146618 () Bool)

(assert (=> b!7146618 (= e!4294667 (Cons!69388 (generalisedConcat!2393 (exprs!7711 (h!75837 (t!383530 zl!333)))) (unfocusZipperList!2258 (t!383530 (t!383530 zl!333)))))))

(declare-fun b!7146619 () Bool)

(assert (=> b!7146619 (= e!4294667 Nil!69388)))

(assert (= (and d!2228175 c!1332665) b!7146618))

(assert (= (and d!2228175 (not c!1332665)) b!7146619))

(declare-fun m!7859454 () Bool)

(assert (=> d!2228175 m!7859454))

(declare-fun m!7859456 () Bool)

(assert (=> b!7146618 m!7859456))

(declare-fun m!7859458 () Bool)

(assert (=> b!7146618 m!7859458))

(assert (=> b!7146539 d!2228175))

(declare-fun b!7146642 () Bool)

(declare-fun e!4294676 () Bool)

(declare-fun tp!1971914 () Bool)

(assert (=> b!7146642 (= e!4294676 tp!1971914)))

(declare-fun b!7146641 () Bool)

(declare-fun tp!1971915 () Bool)

(declare-fun tp!1971916 () Bool)

(assert (=> b!7146641 (= e!4294676 (and tp!1971915 tp!1971916))))

(declare-fun b!7146643 () Bool)

(declare-fun tp!1971912 () Bool)

(declare-fun tp!1971913 () Bool)

(assert (=> b!7146643 (= e!4294676 (and tp!1971912 tp!1971913))))

(assert (=> b!7146541 (= tp!1971900 e!4294676)))

(declare-fun b!7146640 () Bool)

(assert (=> b!7146640 (= e!4294676 tp_is_empty!46071)))

(assert (= (and b!7146541 ((_ is ElementMatch!18217) (regOne!36946 r!7278))) b!7146640))

(assert (= (and b!7146541 ((_ is Concat!27062) (regOne!36946 r!7278))) b!7146641))

(assert (= (and b!7146541 ((_ is Star!18217) (regOne!36946 r!7278))) b!7146642))

(assert (= (and b!7146541 ((_ is Union!18217) (regOne!36946 r!7278))) b!7146643))

(declare-fun b!7146646 () Bool)

(declare-fun e!4294677 () Bool)

(declare-fun tp!1971919 () Bool)

(assert (=> b!7146646 (= e!4294677 tp!1971919)))

(declare-fun b!7146645 () Bool)

(declare-fun tp!1971920 () Bool)

(declare-fun tp!1971921 () Bool)

(assert (=> b!7146645 (= e!4294677 (and tp!1971920 tp!1971921))))

(declare-fun b!7146647 () Bool)

(declare-fun tp!1971917 () Bool)

(declare-fun tp!1971918 () Bool)

(assert (=> b!7146647 (= e!4294677 (and tp!1971917 tp!1971918))))

(assert (=> b!7146541 (= tp!1971901 e!4294677)))

(declare-fun b!7146644 () Bool)

(assert (=> b!7146644 (= e!4294677 tp_is_empty!46071)))

(assert (= (and b!7146541 ((_ is ElementMatch!18217) (regTwo!36946 r!7278))) b!7146644))

(assert (= (and b!7146541 ((_ is Concat!27062) (regTwo!36946 r!7278))) b!7146645))

(assert (= (and b!7146541 ((_ is Star!18217) (regTwo!36946 r!7278))) b!7146646))

(assert (= (and b!7146541 ((_ is Union!18217) (regTwo!36946 r!7278))) b!7146647))

(declare-fun b!7146657 () Bool)

(declare-fun e!4294685 () Bool)

(declare-fun tp!1971926 () Bool)

(assert (=> b!7146657 (= e!4294685 tp!1971926)))

(declare-fun tp!1971927 () Bool)

(declare-fun e!4294684 () Bool)

(declare-fun b!7146656 () Bool)

(assert (=> b!7146656 (= e!4294684 (and (inv!88606 (h!75837 (t!383530 zl!333))) e!4294685 tp!1971927))))

(assert (=> b!7146538 (= tp!1971896 e!4294684)))

(assert (= b!7146656 b!7146657))

(assert (= (and b!7146538 ((_ is Cons!69389) (t!383530 zl!333))) b!7146656))

(declare-fun m!7859486 () Bool)

(assert (=> b!7146656 m!7859486))

(declare-fun b!7146664 () Bool)

(declare-fun e!4294689 () Bool)

(declare-fun tp!1971932 () Bool)

(declare-fun tp!1971933 () Bool)

(assert (=> b!7146664 (= e!4294689 (and tp!1971932 tp!1971933))))

(assert (=> b!7146533 (= tp!1971897 e!4294689)))

(assert (= (and b!7146533 ((_ is Cons!69388) (exprs!7711 (h!75837 zl!333)))) b!7146664))

(declare-fun b!7146667 () Bool)

(declare-fun e!4294690 () Bool)

(declare-fun tp!1971936 () Bool)

(assert (=> b!7146667 (= e!4294690 tp!1971936)))

(declare-fun b!7146666 () Bool)

(declare-fun tp!1971937 () Bool)

(declare-fun tp!1971938 () Bool)

(assert (=> b!7146666 (= e!4294690 (and tp!1971937 tp!1971938))))

(declare-fun b!7146668 () Bool)

(declare-fun tp!1971934 () Bool)

(declare-fun tp!1971935 () Bool)

(assert (=> b!7146668 (= e!4294690 (and tp!1971934 tp!1971935))))

(assert (=> b!7146534 (= tp!1971898 e!4294690)))

(declare-fun b!7146665 () Bool)

(assert (=> b!7146665 (= e!4294690 tp_is_empty!46071)))

(assert (= (and b!7146534 ((_ is ElementMatch!18217) (reg!18546 r!7278))) b!7146665))

(assert (= (and b!7146534 ((_ is Concat!27062) (reg!18546 r!7278))) b!7146666))

(assert (= (and b!7146534 ((_ is Star!18217) (reg!18546 r!7278))) b!7146667))

(assert (= (and b!7146534 ((_ is Union!18217) (reg!18546 r!7278))) b!7146668))

(declare-fun b!7146671 () Bool)

(declare-fun e!4294691 () Bool)

(declare-fun tp!1971941 () Bool)

(assert (=> b!7146671 (= e!4294691 tp!1971941)))

(declare-fun b!7146670 () Bool)

(declare-fun tp!1971942 () Bool)

(declare-fun tp!1971943 () Bool)

(assert (=> b!7146670 (= e!4294691 (and tp!1971942 tp!1971943))))

(declare-fun b!7146672 () Bool)

(declare-fun tp!1971939 () Bool)

(declare-fun tp!1971940 () Bool)

(assert (=> b!7146672 (= e!4294691 (and tp!1971939 tp!1971940))))

(assert (=> b!7146535 (= tp!1971899 e!4294691)))

(declare-fun b!7146669 () Bool)

(assert (=> b!7146669 (= e!4294691 tp_is_empty!46071)))

(assert (= (and b!7146535 ((_ is ElementMatch!18217) (regOne!36947 r!7278))) b!7146669))

(assert (= (and b!7146535 ((_ is Concat!27062) (regOne!36947 r!7278))) b!7146670))

(assert (= (and b!7146535 ((_ is Star!18217) (regOne!36947 r!7278))) b!7146671))

(assert (= (and b!7146535 ((_ is Union!18217) (regOne!36947 r!7278))) b!7146672))

(declare-fun b!7146675 () Bool)

(declare-fun e!4294692 () Bool)

(declare-fun tp!1971946 () Bool)

(assert (=> b!7146675 (= e!4294692 tp!1971946)))

(declare-fun b!7146674 () Bool)

(declare-fun tp!1971947 () Bool)

(declare-fun tp!1971948 () Bool)

(assert (=> b!7146674 (= e!4294692 (and tp!1971947 tp!1971948))))

(declare-fun b!7146676 () Bool)

(declare-fun tp!1971944 () Bool)

(declare-fun tp!1971945 () Bool)

(assert (=> b!7146676 (= e!4294692 (and tp!1971944 tp!1971945))))

(assert (=> b!7146535 (= tp!1971895 e!4294692)))

(declare-fun b!7146673 () Bool)

(assert (=> b!7146673 (= e!4294692 tp_is_empty!46071)))

(assert (= (and b!7146535 ((_ is ElementMatch!18217) (regTwo!36947 r!7278))) b!7146673))

(assert (= (and b!7146535 ((_ is Concat!27062) (regTwo!36947 r!7278))) b!7146674))

(assert (= (and b!7146535 ((_ is Star!18217) (regTwo!36947 r!7278))) b!7146675))

(assert (= (and b!7146535 ((_ is Union!18217) (regTwo!36947 r!7278))) b!7146676))

(check-sat (not b!7146617) (not b!7146672) (not b!7146645) (not b!7146674) (not b!7146676) (not b!7146664) (not b!7146577) (not b!7146641) (not d!2228173) (not b!7146576) (not b!7146614) (not b!7146656) tp_is_empty!46071 (not b!7146575) (not b!7146589) (not b!7146642) (not b!7146647) (not b!7146667) (not b!7146646) (not b!7146643) (not b!7146670) (not d!2228171) (not b!7146573) (not b!7146668) (not d!2228175) (not b!7146666) (not d!2228167) (not b!7146572) (not d!2228165) (not b!7146675) (not b!7146581) (not b!7146671) (not d!2228161) (not b!7146574) (not b!7146618) (not b!7146657))
(check-sat)
