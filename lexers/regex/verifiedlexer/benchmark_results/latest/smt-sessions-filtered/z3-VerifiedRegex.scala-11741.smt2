; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663604 () Bool)

(assert start!663604)

(declare-fun b!6876773 () Bool)

(declare-fun e!4144604 () Bool)

(declare-fun tp_is_empty!42711 () Bool)

(assert (=> b!6876773 (= e!4144604 tp_is_empty!42711)))

(declare-fun b!6876774 () Bool)

(declare-fun e!4144603 () Bool)

(declare-datatypes ((C!33728 0))(
  ( (C!33729 (val!26566 Int)) )
))
(declare-datatypes ((Regex!16729 0))(
  ( (ElementMatch!16729 (c!1279529 C!33728)) (Concat!25574 (regOne!33970 Regex!16729) (regTwo!33970 Regex!16729)) (EmptyExpr!16729) (Star!16729 (reg!17058 Regex!16729)) (EmptyLang!16729) (Union!16729 (regOne!33971 Regex!16729) (regTwo!33971 Regex!16729)) )
))
(declare-datatypes ((List!66469 0))(
  ( (Nil!66345) (Cons!66345 (h!72793 Regex!16729) (t!380212 List!66469)) )
))
(declare-datatypes ((Context!12226 0))(
  ( (Context!12227 (exprs!6613 List!66469)) )
))
(declare-datatypes ((List!66470 0))(
  ( (Nil!66346) (Cons!66346 (h!72794 Context!12226) (t!380213 List!66470)) )
))
(declare-fun zl!1520 () List!66470)

(get-info :version)

(assert (=> b!6876774 (= e!4144603 (not ((_ is Cons!66346) zl!1520)))))

(declare-fun b!6876775 () Bool)

(declare-fun tp!1889866 () Bool)

(declare-fun tp!1889867 () Bool)

(assert (=> b!6876775 (= e!4144604 (and tp!1889866 tp!1889867))))

(declare-fun res!2803892 () Bool)

(assert (=> start!663604 (=> (not res!2803892) (not e!4144603))))

(declare-fun r!11177 () Regex!16729)

(declare-fun contains!20385 (List!66469 Regex!16729) Bool)

(declare-fun unfocusZipperList!2146 (List!66470) List!66469)

(assert (=> start!663604 (= res!2803892 (contains!20385 (unfocusZipperList!2146 zl!1520) r!11177))))

(assert (=> start!663604 e!4144603))

(declare-fun e!4144605 () Bool)

(assert (=> start!663604 e!4144605))

(assert (=> start!663604 e!4144604))

(declare-fun b!6876776 () Bool)

(declare-fun tp!1889868 () Bool)

(declare-fun tp!1889869 () Bool)

(assert (=> b!6876776 (= e!4144604 (and tp!1889868 tp!1889869))))

(declare-fun b!6876777 () Bool)

(declare-fun e!4144606 () Bool)

(declare-fun tp!1889864 () Bool)

(assert (=> b!6876777 (= e!4144606 tp!1889864)))

(declare-fun b!6876778 () Bool)

(declare-fun tp!1889865 () Bool)

(assert (=> b!6876778 (= e!4144604 tp!1889865)))

(declare-fun b!6876779 () Bool)

(declare-fun tp!1889863 () Bool)

(declare-fun inv!85069 (Context!12226) Bool)

(assert (=> b!6876779 (= e!4144605 (and (inv!85069 (h!72794 zl!1520)) e!4144606 tp!1889863))))

(assert (= (and start!663604 res!2803892) b!6876774))

(assert (= b!6876779 b!6876777))

(assert (= (and start!663604 ((_ is Cons!66346) zl!1520)) b!6876779))

(assert (= (and start!663604 ((_ is ElementMatch!16729) r!11177)) b!6876773))

(assert (= (and start!663604 ((_ is Concat!25574) r!11177)) b!6876776))

(assert (= (and start!663604 ((_ is Star!16729) r!11177)) b!6876778))

(assert (= (and start!663604 ((_ is Union!16729) r!11177)) b!6876775))

(declare-fun m!7604610 () Bool)

(assert (=> start!663604 m!7604610))

(assert (=> start!663604 m!7604610))

(declare-fun m!7604612 () Bool)

(assert (=> start!663604 m!7604612))

(declare-fun m!7604614 () Bool)

(assert (=> b!6876779 m!7604614))

(check-sat (not b!6876775) tp_is_empty!42711 (not b!6876776) (not b!6876779) (not b!6876777) (not start!663604) (not b!6876778))
(check-sat)
(get-model)

(declare-fun d!2159442 () Bool)

(declare-fun lambda!389322 () Int)

(declare-fun forall!15929 (List!66469 Int) Bool)

(assert (=> d!2159442 (= (inv!85069 (h!72794 zl!1520)) (forall!15929 (exprs!6613 (h!72794 zl!1520)) lambda!389322))))

(declare-fun bs!1837871 () Bool)

(assert (= bs!1837871 d!2159442))

(declare-fun m!7604622 () Bool)

(assert (=> bs!1837871 m!7604622))

(assert (=> b!6876779 d!2159442))

(declare-fun d!2159446 () Bool)

(declare-fun lt!2459188 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13034 (List!66469) (InoxSet Regex!16729))

(assert (=> d!2159446 (= lt!2459188 (select (content!13034 (unfocusZipperList!2146 zl!1520)) r!11177))))

(declare-fun e!4144619 () Bool)

(assert (=> d!2159446 (= lt!2459188 e!4144619)))

(declare-fun res!2803903 () Bool)

(assert (=> d!2159446 (=> (not res!2803903) (not e!4144619))))

(assert (=> d!2159446 (= res!2803903 ((_ is Cons!66345) (unfocusZipperList!2146 zl!1520)))))

(assert (=> d!2159446 (= (contains!20385 (unfocusZipperList!2146 zl!1520) r!11177) lt!2459188)))

(declare-fun b!6876794 () Bool)

(declare-fun e!4144620 () Bool)

(assert (=> b!6876794 (= e!4144619 e!4144620)))

(declare-fun res!2803904 () Bool)

(assert (=> b!6876794 (=> res!2803904 e!4144620)))

(assert (=> b!6876794 (= res!2803904 (= (h!72793 (unfocusZipperList!2146 zl!1520)) r!11177))))

(declare-fun b!6876795 () Bool)

(assert (=> b!6876795 (= e!4144620 (contains!20385 (t!380212 (unfocusZipperList!2146 zl!1520)) r!11177))))

(assert (= (and d!2159446 res!2803903) b!6876794))

(assert (= (and b!6876794 (not res!2803904)) b!6876795))

(assert (=> d!2159446 m!7604610))

(declare-fun m!7604624 () Bool)

(assert (=> d!2159446 m!7604624))

(declare-fun m!7604626 () Bool)

(assert (=> d!2159446 m!7604626))

(declare-fun m!7604628 () Bool)

(assert (=> b!6876795 m!7604628))

(assert (=> start!663604 d!2159446))

(declare-fun bs!1837874 () Bool)

(declare-fun d!2159448 () Bool)

(assert (= bs!1837874 (and d!2159448 d!2159442)))

(declare-fun lambda!389331 () Int)

(assert (=> bs!1837874 (= lambda!389331 lambda!389322)))

(declare-fun lt!2459192 () List!66469)

(assert (=> d!2159448 (forall!15929 lt!2459192 lambda!389331)))

(declare-fun e!4144626 () List!66469)

(assert (=> d!2159448 (= lt!2459192 e!4144626)))

(declare-fun c!1279535 () Bool)

(assert (=> d!2159448 (= c!1279535 ((_ is Cons!66346) zl!1520))))

(assert (=> d!2159448 (= (unfocusZipperList!2146 zl!1520) lt!2459192)))

(declare-fun b!6876812 () Bool)

(declare-fun generalisedConcat!2311 (List!66469) Regex!16729)

(assert (=> b!6876812 (= e!4144626 (Cons!66345 (generalisedConcat!2311 (exprs!6613 (h!72794 zl!1520))) (unfocusZipperList!2146 (t!380213 zl!1520))))))

(declare-fun b!6876813 () Bool)

(assert (=> b!6876813 (= e!4144626 Nil!66345)))

(assert (= (and d!2159448 c!1279535) b!6876812))

(assert (= (and d!2159448 (not c!1279535)) b!6876813))

(declare-fun m!7604638 () Bool)

(assert (=> d!2159448 m!7604638))

(declare-fun m!7604640 () Bool)

(assert (=> b!6876812 m!7604640))

(declare-fun m!7604642 () Bool)

(assert (=> b!6876812 m!7604642))

(assert (=> start!663604 d!2159448))

(declare-fun b!6876843 () Bool)

(declare-fun e!4144638 () Bool)

(assert (=> b!6876843 (= e!4144638 tp_is_empty!42711)))

(declare-fun b!6876846 () Bool)

(declare-fun tp!1889911 () Bool)

(declare-fun tp!1889914 () Bool)

(assert (=> b!6876846 (= e!4144638 (and tp!1889911 tp!1889914))))

(assert (=> b!6876778 (= tp!1889865 e!4144638)))

(declare-fun b!6876844 () Bool)

(declare-fun tp!1889913 () Bool)

(declare-fun tp!1889910 () Bool)

(assert (=> b!6876844 (= e!4144638 (and tp!1889913 tp!1889910))))

(declare-fun b!6876845 () Bool)

(declare-fun tp!1889912 () Bool)

(assert (=> b!6876845 (= e!4144638 tp!1889912)))

(assert (= (and b!6876778 ((_ is ElementMatch!16729) (reg!17058 r!11177))) b!6876843))

(assert (= (and b!6876778 ((_ is Concat!25574) (reg!17058 r!11177))) b!6876844))

(assert (= (and b!6876778 ((_ is Star!16729) (reg!17058 r!11177))) b!6876845))

(assert (= (and b!6876778 ((_ is Union!16729) (reg!17058 r!11177))) b!6876846))

(declare-fun b!6876864 () Bool)

(declare-fun e!4144648 () Bool)

(declare-fun tp!1889931 () Bool)

(assert (=> b!6876864 (= e!4144648 tp!1889931)))

(declare-fun tp!1889932 () Bool)

(declare-fun b!6876863 () Bool)

(declare-fun e!4144647 () Bool)

(assert (=> b!6876863 (= e!4144647 (and (inv!85069 (h!72794 (t!380213 zl!1520))) e!4144648 tp!1889932))))

(assert (=> b!6876779 (= tp!1889863 e!4144647)))

(assert (= b!6876863 b!6876864))

(assert (= (and b!6876779 ((_ is Cons!66346) (t!380213 zl!1520))) b!6876863))

(declare-fun m!7604646 () Bool)

(assert (=> b!6876863 m!7604646))

(declare-fun b!6876869 () Bool)

(declare-fun e!4144650 () Bool)

(assert (=> b!6876869 (= e!4144650 tp_is_empty!42711)))

(declare-fun b!6876872 () Bool)

(declare-fun tp!1889939 () Bool)

(declare-fun tp!1889942 () Bool)

(assert (=> b!6876872 (= e!4144650 (and tp!1889939 tp!1889942))))

(assert (=> b!6876775 (= tp!1889866 e!4144650)))

(declare-fun b!6876870 () Bool)

(declare-fun tp!1889941 () Bool)

(declare-fun tp!1889938 () Bool)

(assert (=> b!6876870 (= e!4144650 (and tp!1889941 tp!1889938))))

(declare-fun b!6876871 () Bool)

(declare-fun tp!1889940 () Bool)

(assert (=> b!6876871 (= e!4144650 tp!1889940)))

(assert (= (and b!6876775 ((_ is ElementMatch!16729) (regOne!33971 r!11177))) b!6876869))

(assert (= (and b!6876775 ((_ is Concat!25574) (regOne!33971 r!11177))) b!6876870))

(assert (= (and b!6876775 ((_ is Star!16729) (regOne!33971 r!11177))) b!6876871))

(assert (= (and b!6876775 ((_ is Union!16729) (regOne!33971 r!11177))) b!6876872))

(declare-fun b!6876873 () Bool)

(declare-fun e!4144651 () Bool)

(assert (=> b!6876873 (= e!4144651 tp_is_empty!42711)))

(declare-fun b!6876876 () Bool)

(declare-fun tp!1889944 () Bool)

(declare-fun tp!1889947 () Bool)

(assert (=> b!6876876 (= e!4144651 (and tp!1889944 tp!1889947))))

(assert (=> b!6876775 (= tp!1889867 e!4144651)))

(declare-fun b!6876874 () Bool)

(declare-fun tp!1889946 () Bool)

(declare-fun tp!1889943 () Bool)

(assert (=> b!6876874 (= e!4144651 (and tp!1889946 tp!1889943))))

(declare-fun b!6876875 () Bool)

(declare-fun tp!1889945 () Bool)

(assert (=> b!6876875 (= e!4144651 tp!1889945)))

(assert (= (and b!6876775 ((_ is ElementMatch!16729) (regTwo!33971 r!11177))) b!6876873))

(assert (= (and b!6876775 ((_ is Concat!25574) (regTwo!33971 r!11177))) b!6876874))

(assert (= (and b!6876775 ((_ is Star!16729) (regTwo!33971 r!11177))) b!6876875))

(assert (= (and b!6876775 ((_ is Union!16729) (regTwo!33971 r!11177))) b!6876876))

(declare-fun b!6876877 () Bool)

(declare-fun e!4144652 () Bool)

(assert (=> b!6876877 (= e!4144652 tp_is_empty!42711)))

(declare-fun b!6876880 () Bool)

(declare-fun tp!1889949 () Bool)

(declare-fun tp!1889952 () Bool)

(assert (=> b!6876880 (= e!4144652 (and tp!1889949 tp!1889952))))

(assert (=> b!6876776 (= tp!1889868 e!4144652)))

(declare-fun b!6876878 () Bool)

(declare-fun tp!1889951 () Bool)

(declare-fun tp!1889948 () Bool)

(assert (=> b!6876878 (= e!4144652 (and tp!1889951 tp!1889948))))

(declare-fun b!6876879 () Bool)

(declare-fun tp!1889950 () Bool)

(assert (=> b!6876879 (= e!4144652 tp!1889950)))

(assert (= (and b!6876776 ((_ is ElementMatch!16729) (regOne!33970 r!11177))) b!6876877))

(assert (= (and b!6876776 ((_ is Concat!25574) (regOne!33970 r!11177))) b!6876878))

(assert (= (and b!6876776 ((_ is Star!16729) (regOne!33970 r!11177))) b!6876879))

(assert (= (and b!6876776 ((_ is Union!16729) (regOne!33970 r!11177))) b!6876880))

(declare-fun b!6876881 () Bool)

(declare-fun e!4144653 () Bool)

(assert (=> b!6876881 (= e!4144653 tp_is_empty!42711)))

(declare-fun b!6876884 () Bool)

(declare-fun tp!1889954 () Bool)

(declare-fun tp!1889957 () Bool)

(assert (=> b!6876884 (= e!4144653 (and tp!1889954 tp!1889957))))

(assert (=> b!6876776 (= tp!1889869 e!4144653)))

(declare-fun b!6876882 () Bool)

(declare-fun tp!1889956 () Bool)

(declare-fun tp!1889953 () Bool)

(assert (=> b!6876882 (= e!4144653 (and tp!1889956 tp!1889953))))

(declare-fun b!6876883 () Bool)

(declare-fun tp!1889955 () Bool)

(assert (=> b!6876883 (= e!4144653 tp!1889955)))

(assert (= (and b!6876776 ((_ is ElementMatch!16729) (regTwo!33970 r!11177))) b!6876881))

(assert (= (and b!6876776 ((_ is Concat!25574) (regTwo!33970 r!11177))) b!6876882))

(assert (= (and b!6876776 ((_ is Star!16729) (regTwo!33970 r!11177))) b!6876883))

(assert (= (and b!6876776 ((_ is Union!16729) (regTwo!33970 r!11177))) b!6876884))

(declare-fun b!6876889 () Bool)

(declare-fun e!4144656 () Bool)

(declare-fun tp!1889962 () Bool)

(declare-fun tp!1889963 () Bool)

(assert (=> b!6876889 (= e!4144656 (and tp!1889962 tp!1889963))))

(assert (=> b!6876777 (= tp!1889864 e!4144656)))

(assert (= (and b!6876777 ((_ is Cons!66345) (exprs!6613 (h!72794 zl!1520)))) b!6876889))

(check-sat (not b!6876872) tp_is_empty!42711 (not d!2159442) (not b!6876884) (not b!6876876) (not b!6876795) (not b!6876844) (not b!6876846) (not b!6876871) (not b!6876845) (not b!6876812) (not d!2159446) (not b!6876878) (not b!6876875) (not b!6876863) (not d!2159448) (not b!6876880) (not b!6876882) (not b!6876883) (not b!6876874) (not b!6876864) (not b!6876870) (not b!6876879) (not b!6876889))
(check-sat)
