; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756690 () Bool)

(assert start!756690)

(declare-fun res!3176736 () Bool)

(declare-fun e!4732522 () Bool)

(assert (=> start!756690 (=> (not res!3176736) (not e!4732522))))

(declare-datatypes ((C!43786 0))(
  ( (C!43787 (val!32669 Int)) )
))
(declare-datatypes ((Regex!21724 0))(
  ( (ElementMatch!21724 (c!1473721 C!43786)) (Concat!30727 (regOne!43960 Regex!21724) (regTwo!43960 Regex!21724)) (EmptyExpr!21724) (Star!21724 (reg!22053 Regex!21724)) (EmptyLang!21724) (Union!21724 (regOne!43961 Regex!21724) (regTwo!43961 Regex!21724)) )
))
(declare-fun r!13107 () Regex!21724)

(declare-fun validRegex!12020 (Regex!21724) Bool)

(assert (=> start!756690 (= res!3176736 (validRegex!12020 r!13107))))

(assert (=> start!756690 e!4732522))

(declare-fun e!4732523 () Bool)

(assert (=> start!756690 e!4732523))

(declare-fun b!8033592 () Bool)

(declare-fun tp_is_empty!54443 () Bool)

(assert (=> b!8033592 (= e!4732523 tp_is_empty!54443)))

(declare-fun b!8033593 () Bool)

(declare-fun tp!2404855 () Bool)

(declare-fun tp!2404854 () Bool)

(assert (=> b!8033593 (= e!4732523 (and tp!2404855 tp!2404854))))

(declare-fun b!8033594 () Bool)

(declare-fun tp!2404857 () Bool)

(declare-fun tp!2404856 () Bool)

(assert (=> b!8033594 (= e!4732523 (and tp!2404857 tp!2404856))))

(declare-fun b!8033595 () Bool)

(declare-fun tp!2404858 () Bool)

(assert (=> b!8033595 (= e!4732523 tp!2404858)))

(declare-fun b!8033596 () Bool)

(declare-fun RegexPrimitiveSize!150 (Regex!21724) Int)

(assert (=> b!8033596 (= e!4732522 (< (RegexPrimitiveSize!150 r!13107) 0))))

(assert (= (and start!756690 res!3176736) b!8033596))

(assert (= (and start!756690 (is-ElementMatch!21724 r!13107)) b!8033592))

(assert (= (and start!756690 (is-Concat!30727 r!13107)) b!8033593))

(assert (= (and start!756690 (is-Star!21724 r!13107)) b!8033595))

(assert (= (and start!756690 (is-Union!21724 r!13107)) b!8033594))

(declare-fun m!8392770 () Bool)

(assert (=> start!756690 m!8392770))

(declare-fun m!8392772 () Bool)

(assert (=> b!8033596 m!8392772))

(push 1)

(assert tp_is_empty!54443)

(assert (not b!8033594))

(assert (not start!756690))

(assert (not b!8033593))

(assert (not b!8033595))

(assert (not b!8033596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8033650 () Bool)

(declare-fun e!4732558 () Bool)

(declare-fun call!745333 () Bool)

(assert (=> b!8033650 (= e!4732558 call!745333)))

(declare-fun b!8033651 () Bool)

(declare-fun e!4732557 () Bool)

(assert (=> b!8033651 (= e!4732557 e!4732558)))

(declare-fun res!3176753 () Bool)

(assert (=> b!8033651 (=> (not res!3176753) (not e!4732558))))

(declare-fun call!745332 () Bool)

(assert (=> b!8033651 (= res!3176753 call!745332)))

(declare-fun bm!745326 () Bool)

(declare-fun c!1473737 () Bool)

(assert (=> bm!745326 (= call!745333 (validRegex!12020 (ite c!1473737 (regTwo!43961 r!13107) (regTwo!43960 r!13107))))))

(declare-fun b!8033652 () Bool)

(declare-fun e!4732554 () Bool)

(declare-fun call!745331 () Bool)

(assert (=> b!8033652 (= e!4732554 call!745331)))

(declare-fun c!1473738 () Bool)

(declare-fun bm!745327 () Bool)

(assert (=> bm!745327 (= call!745331 (validRegex!12020 (ite c!1473738 (reg!22053 r!13107) (ite c!1473737 (regOne!43961 r!13107) (regOne!43960 r!13107)))))))

(declare-fun b!8033653 () Bool)

(declare-fun e!4732559 () Bool)

(declare-fun e!4732556 () Bool)

(assert (=> b!8033653 (= e!4732559 e!4732556)))

(assert (=> b!8033653 (= c!1473737 (is-Union!21724 r!13107))))

(declare-fun b!8033654 () Bool)

(assert (=> b!8033654 (= e!4732559 e!4732554)))

(declare-fun res!3176750 () Bool)

(declare-fun nullable!9757 (Regex!21724) Bool)

(assert (=> b!8033654 (= res!3176750 (not (nullable!9757 (reg!22053 r!13107))))))

(assert (=> b!8033654 (=> (not res!3176750) (not e!4732554))))

(declare-fun b!8033655 () Bool)

(declare-fun e!4732555 () Bool)

(assert (=> b!8033655 (= e!4732555 e!4732559)))

(assert (=> b!8033655 (= c!1473738 (is-Star!21724 r!13107))))

(declare-fun d!2394839 () Bool)

(declare-fun res!3176752 () Bool)

(assert (=> d!2394839 (=> res!3176752 e!4732555)))

(assert (=> d!2394839 (= res!3176752 (is-ElementMatch!21724 r!13107))))

(assert (=> d!2394839 (= (validRegex!12020 r!13107) e!4732555)))

(declare-fun b!8033656 () Bool)

(declare-fun res!3176751 () Bool)

(assert (=> b!8033656 (=> res!3176751 e!4732557)))

(assert (=> b!8033656 (= res!3176751 (not (is-Concat!30727 r!13107)))))

(assert (=> b!8033656 (= e!4732556 e!4732557)))

(declare-fun b!8033657 () Bool)

(declare-fun res!3176754 () Bool)

(declare-fun e!4732560 () Bool)

(assert (=> b!8033657 (=> (not res!3176754) (not e!4732560))))

(assert (=> b!8033657 (= res!3176754 call!745332)))

(assert (=> b!8033657 (= e!4732556 e!4732560)))

(declare-fun b!8033658 () Bool)

(assert (=> b!8033658 (= e!4732560 call!745333)))

(declare-fun bm!745328 () Bool)

(assert (=> bm!745328 (= call!745332 call!745331)))

(assert (= (and d!2394839 (not res!3176752)) b!8033655))

(assert (= (and b!8033655 c!1473738) b!8033654))

(assert (= (and b!8033655 (not c!1473738)) b!8033653))

(assert (= (and b!8033654 res!3176750) b!8033652))

(assert (= (and b!8033653 c!1473737) b!8033657))

(assert (= (and b!8033653 (not c!1473737)) b!8033656))

(assert (= (and b!8033657 res!3176754) b!8033658))

(assert (= (and b!8033656 (not res!3176751)) b!8033651))

(assert (= (and b!8033651 res!3176753) b!8033650))

(assert (= (or b!8033658 b!8033650) bm!745326))

(assert (= (or b!8033657 b!8033651) bm!745328))

(assert (= (or b!8033652 bm!745328) bm!745327))

(declare-fun m!8392778 () Bool)

(assert (=> bm!745326 m!8392778))

(declare-fun m!8392780 () Bool)

(assert (=> bm!745327 m!8392780))

(declare-fun m!8392782 () Bool)

(assert (=> b!8033654 m!8392782))

(assert (=> start!756690 d!2394839))

(declare-fun b!8033689 () Bool)

(declare-fun e!4732577 () Int)

(declare-fun e!4732578 () Int)

(assert (=> b!8033689 (= e!4732577 e!4732578)))

(declare-fun c!1473757 () Bool)

(assert (=> b!8033689 (= c!1473757 (is-Star!21724 r!13107))))

(declare-fun bm!745342 () Bool)

(declare-fun call!745347 () Int)

(declare-fun c!1473758 () Bool)

(assert (=> bm!745342 (= call!745347 (RegexPrimitiveSize!150 (ite c!1473758 (regTwo!43960 r!13107) (ite c!1473757 (reg!22053 r!13107) (regOne!43961 r!13107)))))))

(declare-fun b!8033690 () Bool)

(declare-fun e!4732580 () Int)

(declare-fun call!745349 () Int)

(declare-fun call!745348 () Int)

(assert (=> b!8033690 (= e!4732580 (+ 1 call!745349 call!745348))))

(declare-fun b!8033691 () Bool)

(declare-fun e!4732579 () Int)

(assert (=> b!8033691 (= e!4732579 1)))

(declare-fun b!8033692 () Bool)

(declare-fun e!4732576 () Int)

(assert (=> b!8033692 (= e!4732579 e!4732576)))

(assert (=> b!8033692 (= c!1473758 (is-Concat!30727 r!13107))))

(declare-fun b!8033693 () Bool)

(assert (=> b!8033693 (= e!4732580 0)))

(declare-fun bm!745343 () Bool)

(assert (=> bm!745343 (= call!745349 call!745347)))

(declare-fun bm!745344 () Bool)

(assert (=> bm!745344 (= call!745348 (RegexPrimitiveSize!150 (ite c!1473758 (regOne!43960 r!13107) (regTwo!43961 r!13107))))))

(declare-fun b!8033694 () Bool)

(declare-fun c!1473754 () Bool)

(assert (=> b!8033694 (= c!1473754 (is-EmptyExpr!21724 r!13107))))

(assert (=> b!8033694 (= e!4732576 e!4732577)))

(declare-fun d!2394843 () Bool)

(declare-fun lt!2722010 () Int)

(assert (=> d!2394843 (>= lt!2722010 0)))

(assert (=> d!2394843 (= lt!2722010 e!4732579)))

(declare-fun c!1473755 () Bool)

(assert (=> d!2394843 (= c!1473755 (is-ElementMatch!21724 r!13107))))

(assert (=> d!2394843 (= (RegexPrimitiveSize!150 r!13107) lt!2722010)))

(declare-fun b!8033695 () Bool)

(assert (=> b!8033695 (= e!4732576 (+ 1 call!745348 call!745347))))

(declare-fun b!8033696 () Bool)

(assert (=> b!8033696 (= e!4732577 0)))

(declare-fun b!8033697 () Bool)

(declare-fun c!1473756 () Bool)

(assert (=> b!8033697 (= c!1473756 (is-EmptyLang!21724 r!13107))))

(assert (=> b!8033697 (= e!4732578 e!4732580)))

(declare-fun b!8033698 () Bool)

(assert (=> b!8033698 (= e!4732578 (+ 1 call!745349))))

(assert (= (and d!2394843 c!1473755) b!8033691))

(assert (= (and d!2394843 (not c!1473755)) b!8033692))

(assert (= (and b!8033692 c!1473758) b!8033695))

(assert (= (and b!8033692 (not c!1473758)) b!8033694))

(assert (= (and b!8033694 c!1473754) b!8033696))

(assert (= (and b!8033694 (not c!1473754)) b!8033689))

(assert (= (and b!8033689 c!1473757) b!8033698))

(assert (= (and b!8033689 (not c!1473757)) b!8033697))

(assert (= (and b!8033697 c!1473756) b!8033693))

(assert (= (and b!8033697 (not c!1473756)) b!8033690))

(assert (= (or b!8033698 b!8033690) bm!745343))

(assert (= (or b!8033695 bm!745343) bm!745342))

(assert (= (or b!8033695 b!8033690) bm!745344))

(declare-fun m!8392788 () Bool)

(assert (=> bm!745342 m!8392788))

(declare-fun m!8392790 () Bool)

(assert (=> bm!745344 m!8392790))

(assert (=> b!8033596 d!2394843))

(declare-fun e!4732583 () Bool)

(assert (=> b!8033595 (= tp!2404858 e!4732583)))

(declare-fun b!8033710 () Bool)

(declare-fun tp!2404887 () Bool)

(declare-fun tp!2404885 () Bool)

(assert (=> b!8033710 (= e!4732583 (and tp!2404887 tp!2404885))))

(declare-fun b!8033712 () Bool)

(declare-fun tp!2404884 () Bool)

(declare-fun tp!2404886 () Bool)

(assert (=> b!8033712 (= e!4732583 (and tp!2404884 tp!2404886))))

(declare-fun b!8033709 () Bool)

(assert (=> b!8033709 (= e!4732583 tp_is_empty!54443)))

(declare-fun b!8033711 () Bool)

(declare-fun tp!2404888 () Bool)

(assert (=> b!8033711 (= e!4732583 tp!2404888)))

(assert (= (and b!8033595 (is-ElementMatch!21724 (reg!22053 r!13107))) b!8033709))

(assert (= (and b!8033595 (is-Concat!30727 (reg!22053 r!13107))) b!8033710))

(assert (= (and b!8033595 (is-Star!21724 (reg!22053 r!13107))) b!8033711))

(assert (= (and b!8033595 (is-Union!21724 (reg!22053 r!13107))) b!8033712))

(declare-fun e!4732584 () Bool)

(assert (=> b!8033594 (= tp!2404857 e!4732584)))

(declare-fun b!8033714 () Bool)

(declare-fun tp!2404892 () Bool)

(declare-fun tp!2404890 () Bool)

(assert (=> b!8033714 (= e!4732584 (and tp!2404892 tp!2404890))))

(declare-fun b!8033716 () Bool)

(declare-fun tp!2404889 () Bool)

(declare-fun tp!2404891 () Bool)

(assert (=> b!8033716 (= e!4732584 (and tp!2404889 tp!2404891))))

(declare-fun b!8033713 () Bool)

(assert (=> b!8033713 (= e!4732584 tp_is_empty!54443)))

(declare-fun b!8033715 () Bool)

(declare-fun tp!2404893 () Bool)

(assert (=> b!8033715 (= e!4732584 tp!2404893)))

(assert (= (and b!8033594 (is-ElementMatch!21724 (regOne!43961 r!13107))) b!8033713))

(assert (= (and b!8033594 (is-Concat!30727 (regOne!43961 r!13107))) b!8033714))

(assert (= (and b!8033594 (is-Star!21724 (regOne!43961 r!13107))) b!8033715))

(assert (= (and b!8033594 (is-Union!21724 (regOne!43961 r!13107))) b!8033716))

(declare-fun e!4732585 () Bool)

(assert (=> b!8033594 (= tp!2404856 e!4732585)))

(declare-fun b!8033718 () Bool)

(declare-fun tp!2404897 () Bool)

(declare-fun tp!2404895 () Bool)

(assert (=> b!8033718 (= e!4732585 (and tp!2404897 tp!2404895))))

(declare-fun b!8033720 () Bool)

(declare-fun tp!2404894 () Bool)

(declare-fun tp!2404896 () Bool)

(assert (=> b!8033720 (= e!4732585 (and tp!2404894 tp!2404896))))

(declare-fun b!8033717 () Bool)

(assert (=> b!8033717 (= e!4732585 tp_is_empty!54443)))

(declare-fun b!8033719 () Bool)

(declare-fun tp!2404898 () Bool)

(assert (=> b!8033719 (= e!4732585 tp!2404898)))

(assert (= (and b!8033594 (is-ElementMatch!21724 (regTwo!43961 r!13107))) b!8033717))

(assert (= (and b!8033594 (is-Concat!30727 (regTwo!43961 r!13107))) b!8033718))

(assert (= (and b!8033594 (is-Star!21724 (regTwo!43961 r!13107))) b!8033719))

(assert (= (and b!8033594 (is-Union!21724 (regTwo!43961 r!13107))) b!8033720))

(declare-fun e!4732586 () Bool)

(assert (=> b!8033593 (= tp!2404855 e!4732586)))

(declare-fun b!8033722 () Bool)

(declare-fun tp!2404902 () Bool)

(declare-fun tp!2404900 () Bool)

(assert (=> b!8033722 (= e!4732586 (and tp!2404902 tp!2404900))))

(declare-fun b!8033724 () Bool)

(declare-fun tp!2404899 () Bool)

(declare-fun tp!2404901 () Bool)

(assert (=> b!8033724 (= e!4732586 (and tp!2404899 tp!2404901))))

(declare-fun b!8033721 () Bool)

(assert (=> b!8033721 (= e!4732586 tp_is_empty!54443)))

(declare-fun b!8033723 () Bool)

(declare-fun tp!2404903 () Bool)

(assert (=> b!8033723 (= e!4732586 tp!2404903)))

(assert (= (and b!8033593 (is-ElementMatch!21724 (regOne!43960 r!13107))) b!8033721))

(assert (= (and b!8033593 (is-Concat!30727 (regOne!43960 r!13107))) b!8033722))

(assert (= (and b!8033593 (is-Star!21724 (regOne!43960 r!13107))) b!8033723))

(assert (= (and b!8033593 (is-Union!21724 (regOne!43960 r!13107))) b!8033724))

(declare-fun e!4732587 () Bool)

(assert (=> b!8033593 (= tp!2404854 e!4732587)))

(declare-fun b!8033726 () Bool)

(declare-fun tp!2404907 () Bool)

(declare-fun tp!2404905 () Bool)

(assert (=> b!8033726 (= e!4732587 (and tp!2404907 tp!2404905))))

(declare-fun b!8033728 () Bool)

(declare-fun tp!2404904 () Bool)

(declare-fun tp!2404906 () Bool)

(assert (=> b!8033728 (= e!4732587 (and tp!2404904 tp!2404906))))

(declare-fun b!8033725 () Bool)

(assert (=> b!8033725 (= e!4732587 tp_is_empty!54443)))

(declare-fun b!8033727 () Bool)

(declare-fun tp!2404908 () Bool)

(assert (=> b!8033727 (= e!4732587 tp!2404908)))

(assert (= (and b!8033593 (is-ElementMatch!21724 (regTwo!43960 r!13107))) b!8033725))

(assert (= (and b!8033593 (is-Concat!30727 (regTwo!43960 r!13107))) b!8033726))

(assert (= (and b!8033593 (is-Star!21724 (regTwo!43960 r!13107))) b!8033727))

(assert (= (and b!8033593 (is-Union!21724 (regTwo!43960 r!13107))) b!8033728))

(push 1)

(assert (not b!8033710))

(assert (not b!8033728))

(assert (not b!8033718))

(assert (not b!8033716))

(assert (not b!8033724))

(assert (not b!8033723))

(assert (not b!8033727))

(assert (not b!8033719))

(assert (not b!8033714))

(assert (not b!8033722))

(assert (not bm!745344))

(assert (not b!8033711))

(assert (not bm!745327))

(assert (not bm!745326))

(assert (not b!8033654))

(assert (not b!8033715))

(assert tp_is_empty!54443)

(assert (not bm!745342))

(assert (not b!8033726))

(assert (not b!8033712))

(assert (not b!8033720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

