; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663504 () Bool)

(assert start!663504)

(declare-fun b!6875519 () Bool)

(declare-fun e!4144036 () Bool)

(declare-fun tp_is_empty!42699 () Bool)

(assert (=> b!6875519 (= e!4144036 tp_is_empty!42699)))

(declare-fun res!2803684 () Bool)

(declare-fun e!4144035 () Bool)

(assert (=> start!663504 (=> (not res!2803684) (not e!4144035))))

(declare-datatypes ((C!33716 0))(
  ( (C!33717 (val!26560 Int)) )
))
(declare-datatypes ((Regex!16723 0))(
  ( (ElementMatch!16723 (c!1279387 C!33716)) (Concat!25568 (regOne!33958 Regex!16723) (regTwo!33958 Regex!16723)) (EmptyExpr!16723) (Star!16723 (reg!17052 Regex!16723)) (EmptyLang!16723) (Union!16723 (regOne!33959 Regex!16723) (regTwo!33959 Regex!16723)) )
))
(declare-datatypes ((List!66457 0))(
  ( (Nil!66333) (Cons!66333 (h!72781 Regex!16723) (t!380200 List!66457)) )
))
(declare-datatypes ((Context!12214 0))(
  ( (Context!12215 (exprs!6607 List!66457)) )
))
(declare-datatypes ((List!66458 0))(
  ( (Nil!66334) (Cons!66334 (h!72782 Context!12214) (t!380201 List!66458)) )
))
(declare-fun zl!1520 () List!66458)

(declare-fun r!11177 () Regex!16723)

(declare-fun contains!20379 (List!66457 Regex!16723) Bool)

(declare-fun unfocusZipperList!2140 (List!66458) List!66457)

(assert (=> start!663504 (= res!2803684 (contains!20379 (unfocusZipperList!2140 zl!1520) r!11177))))

(assert (=> start!663504 e!4144035))

(declare-fun e!4144037 () Bool)

(assert (=> start!663504 e!4144037))

(assert (=> start!663504 e!4144036))

(declare-fun b!6875520 () Bool)

(declare-fun e!4144038 () Bool)

(declare-fun tp!1888911 () Bool)

(assert (=> b!6875520 (= e!4144038 tp!1888911)))

(declare-fun b!6875521 () Bool)

(declare-fun tp!1888914 () Bool)

(assert (=> b!6875521 (= e!4144036 tp!1888914)))

(declare-fun b!6875522 () Bool)

(declare-fun tp!1888912 () Bool)

(declare-fun tp!1888917 () Bool)

(assert (=> b!6875522 (= e!4144036 (and tp!1888912 tp!1888917))))

(declare-fun b!6875523 () Bool)

(declare-fun tp!1888916 () Bool)

(declare-fun inv!85054 (Context!12214) Bool)

(assert (=> b!6875523 (= e!4144037 (and (inv!85054 (h!72782 zl!1520)) e!4144038 tp!1888916))))

(declare-fun b!6875524 () Bool)

(declare-fun size!40719 (List!66458) Int)

(assert (=> b!6875524 (= e!4144035 (>= (size!40719 (t!380201 zl!1520)) (size!40719 zl!1520)))))

(declare-fun b!6875525 () Bool)

(declare-fun tp!1888915 () Bool)

(declare-fun tp!1888913 () Bool)

(assert (=> b!6875525 (= e!4144036 (and tp!1888915 tp!1888913))))

(declare-fun b!6875526 () Bool)

(declare-fun res!2803686 () Bool)

(assert (=> b!6875526 (=> (not res!2803686) (not e!4144035))))

(get-info :version)

(assert (=> b!6875526 (= res!2803686 ((_ is Cons!66334) zl!1520))))

(declare-fun b!6875527 () Bool)

(declare-fun res!2803685 () Bool)

(assert (=> b!6875527 (=> (not res!2803685) (not e!4144035))))

(assert (=> b!6875527 (= res!2803685 (contains!20379 (unfocusZipperList!2140 (t!380201 zl!1520)) r!11177))))

(assert (= (and start!663504 res!2803684) b!6875526))

(assert (= (and b!6875526 res!2803686) b!6875527))

(assert (= (and b!6875527 res!2803685) b!6875524))

(assert (= b!6875523 b!6875520))

(assert (= (and start!663504 ((_ is Cons!66334) zl!1520)) b!6875523))

(assert (= (and start!663504 ((_ is ElementMatch!16723) r!11177)) b!6875519))

(assert (= (and start!663504 ((_ is Concat!25568) r!11177)) b!6875525))

(assert (= (and start!663504 ((_ is Star!16723) r!11177)) b!6875521))

(assert (= (and start!663504 ((_ is Union!16723) r!11177)) b!6875522))

(declare-fun m!7603974 () Bool)

(assert (=> start!663504 m!7603974))

(assert (=> start!663504 m!7603974))

(declare-fun m!7603976 () Bool)

(assert (=> start!663504 m!7603976))

(declare-fun m!7603978 () Bool)

(assert (=> b!6875523 m!7603978))

(declare-fun m!7603980 () Bool)

(assert (=> b!6875524 m!7603980))

(declare-fun m!7603982 () Bool)

(assert (=> b!6875524 m!7603982))

(declare-fun m!7603984 () Bool)

(assert (=> b!6875527 m!7603984))

(assert (=> b!6875527 m!7603984))

(declare-fun m!7603986 () Bool)

(assert (=> b!6875527 m!7603986))

(check-sat (not b!6875524) (not start!663504) (not b!6875522) (not b!6875523) (not b!6875527) (not b!6875521) tp_is_empty!42699 (not b!6875525) (not b!6875520))
(check-sat)
(get-model)

(declare-fun d!2159207 () Bool)

(declare-fun lt!2459087 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13028 (List!66457) (InoxSet Regex!16723))

(assert (=> d!2159207 (= lt!2459087 (select (content!13028 (unfocusZipperList!2140 zl!1520)) r!11177))))

(declare-fun e!4144043 () Bool)

(assert (=> d!2159207 (= lt!2459087 e!4144043)))

(declare-fun res!2803691 () Bool)

(assert (=> d!2159207 (=> (not res!2803691) (not e!4144043))))

(assert (=> d!2159207 (= res!2803691 ((_ is Cons!66333) (unfocusZipperList!2140 zl!1520)))))

(assert (=> d!2159207 (= (contains!20379 (unfocusZipperList!2140 zl!1520) r!11177) lt!2459087)))

(declare-fun b!6875532 () Bool)

(declare-fun e!4144044 () Bool)

(assert (=> b!6875532 (= e!4144043 e!4144044)))

(declare-fun res!2803692 () Bool)

(assert (=> b!6875532 (=> res!2803692 e!4144044)))

(assert (=> b!6875532 (= res!2803692 (= (h!72781 (unfocusZipperList!2140 zl!1520)) r!11177))))

(declare-fun b!6875533 () Bool)

(assert (=> b!6875533 (= e!4144044 (contains!20379 (t!380200 (unfocusZipperList!2140 zl!1520)) r!11177))))

(assert (= (and d!2159207 res!2803691) b!6875532))

(assert (= (and b!6875532 (not res!2803692)) b!6875533))

(assert (=> d!2159207 m!7603974))

(declare-fun m!7603988 () Bool)

(assert (=> d!2159207 m!7603988))

(declare-fun m!7603990 () Bool)

(assert (=> d!2159207 m!7603990))

(declare-fun m!7603992 () Bool)

(assert (=> b!6875533 m!7603992))

(assert (=> start!663504 d!2159207))

(declare-fun d!2159211 () Bool)

(declare-fun lt!2459102 () List!66457)

(declare-fun lambda!389219 () Int)

(declare-fun forall!15920 (List!66457 Int) Bool)

(assert (=> d!2159211 (forall!15920 lt!2459102 lambda!389219)))

(declare-fun e!4144079 () List!66457)

(assert (=> d!2159211 (= lt!2459102 e!4144079)))

(declare-fun c!1279398 () Bool)

(assert (=> d!2159211 (= c!1279398 ((_ is Cons!66334) zl!1520))))

(assert (=> d!2159211 (= (unfocusZipperList!2140 zl!1520) lt!2459102)))

(declare-fun b!6875605 () Bool)

(declare-fun generalisedConcat!2305 (List!66457) Regex!16723)

(assert (=> b!6875605 (= e!4144079 (Cons!66333 (generalisedConcat!2305 (exprs!6607 (h!72782 zl!1520))) (unfocusZipperList!2140 (t!380201 zl!1520))))))

(declare-fun b!6875606 () Bool)

(assert (=> b!6875606 (= e!4144079 Nil!66333)))

(assert (= (and d!2159211 c!1279398) b!6875605))

(assert (= (and d!2159211 (not c!1279398)) b!6875606))

(declare-fun m!7604022 () Bool)

(assert (=> d!2159211 m!7604022))

(declare-fun m!7604024 () Bool)

(assert (=> b!6875605 m!7604024))

(assert (=> b!6875605 m!7603984))

(assert (=> start!663504 d!2159211))

(declare-fun d!2159225 () Bool)

(declare-fun lt!2459105 () Int)

(assert (=> d!2159225 (>= lt!2459105 0)))

(declare-fun e!4144082 () Int)

(assert (=> d!2159225 (= lt!2459105 e!4144082)))

(declare-fun c!1279401 () Bool)

(assert (=> d!2159225 (= c!1279401 ((_ is Nil!66334) (t!380201 zl!1520)))))

(assert (=> d!2159225 (= (size!40719 (t!380201 zl!1520)) lt!2459105)))

(declare-fun b!6875611 () Bool)

(assert (=> b!6875611 (= e!4144082 0)))

(declare-fun b!6875612 () Bool)

(assert (=> b!6875612 (= e!4144082 (+ 1 (size!40719 (t!380201 (t!380201 zl!1520)))))))

(assert (= (and d!2159225 c!1279401) b!6875611))

(assert (= (and d!2159225 (not c!1279401)) b!6875612))

(declare-fun m!7604026 () Bool)

(assert (=> b!6875612 m!7604026))

(assert (=> b!6875524 d!2159225))

(declare-fun d!2159227 () Bool)

(declare-fun lt!2459106 () Int)

(assert (=> d!2159227 (>= lt!2459106 0)))

(declare-fun e!4144083 () Int)

(assert (=> d!2159227 (= lt!2459106 e!4144083)))

(declare-fun c!1279402 () Bool)

(assert (=> d!2159227 (= c!1279402 ((_ is Nil!66334) zl!1520))))

(assert (=> d!2159227 (= (size!40719 zl!1520) lt!2459106)))

(declare-fun b!6875613 () Bool)

(assert (=> b!6875613 (= e!4144083 0)))

(declare-fun b!6875614 () Bool)

(assert (=> b!6875614 (= e!4144083 (+ 1 (size!40719 (t!380201 zl!1520))))))

(assert (= (and d!2159227 c!1279402) b!6875613))

(assert (= (and d!2159227 (not c!1279402)) b!6875614))

(assert (=> b!6875614 m!7603980))

(assert (=> b!6875524 d!2159227))

(declare-fun bs!1837706 () Bool)

(declare-fun d!2159229 () Bool)

(assert (= bs!1837706 (and d!2159229 d!2159211)))

(declare-fun lambda!389222 () Int)

(assert (=> bs!1837706 (= lambda!389222 lambda!389219)))

(assert (=> d!2159229 (= (inv!85054 (h!72782 zl!1520)) (forall!15920 (exprs!6607 (h!72782 zl!1520)) lambda!389222))))

(declare-fun bs!1837707 () Bool)

(assert (= bs!1837707 d!2159229))

(declare-fun m!7604028 () Bool)

(assert (=> bs!1837707 m!7604028))

(assert (=> b!6875523 d!2159229))

(declare-fun d!2159231 () Bool)

(declare-fun lt!2459107 () Bool)

(assert (=> d!2159231 (= lt!2459107 (select (content!13028 (unfocusZipperList!2140 (t!380201 zl!1520))) r!11177))))

(declare-fun e!4144084 () Bool)

(assert (=> d!2159231 (= lt!2459107 e!4144084)))

(declare-fun res!2803701 () Bool)

(assert (=> d!2159231 (=> (not res!2803701) (not e!4144084))))

(assert (=> d!2159231 (= res!2803701 ((_ is Cons!66333) (unfocusZipperList!2140 (t!380201 zl!1520))))))

(assert (=> d!2159231 (= (contains!20379 (unfocusZipperList!2140 (t!380201 zl!1520)) r!11177) lt!2459107)))

(declare-fun b!6875615 () Bool)

(declare-fun e!4144085 () Bool)

(assert (=> b!6875615 (= e!4144084 e!4144085)))

(declare-fun res!2803702 () Bool)

(assert (=> b!6875615 (=> res!2803702 e!4144085)))

(assert (=> b!6875615 (= res!2803702 (= (h!72781 (unfocusZipperList!2140 (t!380201 zl!1520))) r!11177))))

(declare-fun b!6875616 () Bool)

(assert (=> b!6875616 (= e!4144085 (contains!20379 (t!380200 (unfocusZipperList!2140 (t!380201 zl!1520))) r!11177))))

(assert (= (and d!2159231 res!2803701) b!6875615))

(assert (= (and b!6875615 (not res!2803702)) b!6875616))

(assert (=> d!2159231 m!7603984))

(declare-fun m!7604030 () Bool)

(assert (=> d!2159231 m!7604030))

(declare-fun m!7604032 () Bool)

(assert (=> d!2159231 m!7604032))

(declare-fun m!7604034 () Bool)

(assert (=> b!6875616 m!7604034))

(assert (=> b!6875527 d!2159231))

(declare-fun bs!1837708 () Bool)

(declare-fun d!2159233 () Bool)

(assert (= bs!1837708 (and d!2159233 d!2159211)))

(declare-fun lambda!389223 () Int)

(assert (=> bs!1837708 (= lambda!389223 lambda!389219)))

(declare-fun bs!1837709 () Bool)

(assert (= bs!1837709 (and d!2159233 d!2159229)))

(assert (=> bs!1837709 (= lambda!389223 lambda!389222)))

(declare-fun lt!2459108 () List!66457)

(assert (=> d!2159233 (forall!15920 lt!2459108 lambda!389223)))

(declare-fun e!4144086 () List!66457)

(assert (=> d!2159233 (= lt!2459108 e!4144086)))

(declare-fun c!1279403 () Bool)

(assert (=> d!2159233 (= c!1279403 ((_ is Cons!66334) (t!380201 zl!1520)))))

(assert (=> d!2159233 (= (unfocusZipperList!2140 (t!380201 zl!1520)) lt!2459108)))

(declare-fun b!6875617 () Bool)

(assert (=> b!6875617 (= e!4144086 (Cons!66333 (generalisedConcat!2305 (exprs!6607 (h!72782 (t!380201 zl!1520)))) (unfocusZipperList!2140 (t!380201 (t!380201 zl!1520)))))))

(declare-fun b!6875618 () Bool)

(assert (=> b!6875618 (= e!4144086 Nil!66333)))

(assert (= (and d!2159233 c!1279403) b!6875617))

(assert (= (and d!2159233 (not c!1279403)) b!6875618))

(declare-fun m!7604036 () Bool)

(assert (=> d!2159233 m!7604036))

(declare-fun m!7604038 () Bool)

(assert (=> b!6875617 m!7604038))

(declare-fun m!7604040 () Bool)

(assert (=> b!6875617 m!7604040))

(assert (=> b!6875527 d!2159233))

(declare-fun b!6875630 () Bool)

(declare-fun e!4144089 () Bool)

(declare-fun tp!1888978 () Bool)

(declare-fun tp!1888979 () Bool)

(assert (=> b!6875630 (= e!4144089 (and tp!1888978 tp!1888979))))

(declare-fun b!6875629 () Bool)

(assert (=> b!6875629 (= e!4144089 tp_is_empty!42699)))

(assert (=> b!6875521 (= tp!1888914 e!4144089)))

(declare-fun b!6875631 () Bool)

(declare-fun tp!1888976 () Bool)

(assert (=> b!6875631 (= e!4144089 tp!1888976)))

(declare-fun b!6875632 () Bool)

(declare-fun tp!1888977 () Bool)

(declare-fun tp!1888975 () Bool)

(assert (=> b!6875632 (= e!4144089 (and tp!1888977 tp!1888975))))

(assert (= (and b!6875521 ((_ is ElementMatch!16723) (reg!17052 r!11177))) b!6875629))

(assert (= (and b!6875521 ((_ is Concat!25568) (reg!17052 r!11177))) b!6875630))

(assert (= (and b!6875521 ((_ is Star!16723) (reg!17052 r!11177))) b!6875631))

(assert (= (and b!6875521 ((_ is Union!16723) (reg!17052 r!11177))) b!6875632))

(declare-fun b!6875637 () Bool)

(declare-fun e!4144092 () Bool)

(declare-fun tp!1888984 () Bool)

(declare-fun tp!1888985 () Bool)

(assert (=> b!6875637 (= e!4144092 (and tp!1888984 tp!1888985))))

(assert (=> b!6875520 (= tp!1888911 e!4144092)))

(assert (= (and b!6875520 ((_ is Cons!66333) (exprs!6607 (h!72782 zl!1520)))) b!6875637))

(declare-fun b!6875639 () Bool)

(declare-fun e!4144093 () Bool)

(declare-fun tp!1888989 () Bool)

(declare-fun tp!1888990 () Bool)

(assert (=> b!6875639 (= e!4144093 (and tp!1888989 tp!1888990))))

(declare-fun b!6875638 () Bool)

(assert (=> b!6875638 (= e!4144093 tp_is_empty!42699)))

(assert (=> b!6875525 (= tp!1888915 e!4144093)))

(declare-fun b!6875640 () Bool)

(declare-fun tp!1888987 () Bool)

(assert (=> b!6875640 (= e!4144093 tp!1888987)))

(declare-fun b!6875641 () Bool)

(declare-fun tp!1888988 () Bool)

(declare-fun tp!1888986 () Bool)

(assert (=> b!6875641 (= e!4144093 (and tp!1888988 tp!1888986))))

(assert (= (and b!6875525 ((_ is ElementMatch!16723) (regOne!33958 r!11177))) b!6875638))

(assert (= (and b!6875525 ((_ is Concat!25568) (regOne!33958 r!11177))) b!6875639))

(assert (= (and b!6875525 ((_ is Star!16723) (regOne!33958 r!11177))) b!6875640))

(assert (= (and b!6875525 ((_ is Union!16723) (regOne!33958 r!11177))) b!6875641))

(declare-fun b!6875643 () Bool)

(declare-fun e!4144094 () Bool)

(declare-fun tp!1888994 () Bool)

(declare-fun tp!1888995 () Bool)

(assert (=> b!6875643 (= e!4144094 (and tp!1888994 tp!1888995))))

(declare-fun b!6875642 () Bool)

(assert (=> b!6875642 (= e!4144094 tp_is_empty!42699)))

(assert (=> b!6875525 (= tp!1888913 e!4144094)))

(declare-fun b!6875644 () Bool)

(declare-fun tp!1888992 () Bool)

(assert (=> b!6875644 (= e!4144094 tp!1888992)))

(declare-fun b!6875645 () Bool)

(declare-fun tp!1888993 () Bool)

(declare-fun tp!1888991 () Bool)

(assert (=> b!6875645 (= e!4144094 (and tp!1888993 tp!1888991))))

(assert (= (and b!6875525 ((_ is ElementMatch!16723) (regTwo!33958 r!11177))) b!6875642))

(assert (= (and b!6875525 ((_ is Concat!25568) (regTwo!33958 r!11177))) b!6875643))

(assert (= (and b!6875525 ((_ is Star!16723) (regTwo!33958 r!11177))) b!6875644))

(assert (= (and b!6875525 ((_ is Union!16723) (regTwo!33958 r!11177))) b!6875645))

(declare-fun b!6875653 () Bool)

(declare-fun e!4144100 () Bool)

(declare-fun tp!1889000 () Bool)

(assert (=> b!6875653 (= e!4144100 tp!1889000)))

(declare-fun e!4144099 () Bool)

(declare-fun tp!1889001 () Bool)

(declare-fun b!6875652 () Bool)

(assert (=> b!6875652 (= e!4144099 (and (inv!85054 (h!72782 (t!380201 zl!1520))) e!4144100 tp!1889001))))

(assert (=> b!6875523 (= tp!1888916 e!4144099)))

(assert (= b!6875652 b!6875653))

(assert (= (and b!6875523 ((_ is Cons!66334) (t!380201 zl!1520))) b!6875652))

(declare-fun m!7604042 () Bool)

(assert (=> b!6875652 m!7604042))

(declare-fun b!6875655 () Bool)

(declare-fun e!4144101 () Bool)

(declare-fun tp!1889005 () Bool)

(declare-fun tp!1889006 () Bool)

(assert (=> b!6875655 (= e!4144101 (and tp!1889005 tp!1889006))))

(declare-fun b!6875654 () Bool)

(assert (=> b!6875654 (= e!4144101 tp_is_empty!42699)))

(assert (=> b!6875522 (= tp!1888912 e!4144101)))

(declare-fun b!6875656 () Bool)

(declare-fun tp!1889003 () Bool)

(assert (=> b!6875656 (= e!4144101 tp!1889003)))

(declare-fun b!6875657 () Bool)

(declare-fun tp!1889004 () Bool)

(declare-fun tp!1889002 () Bool)

(assert (=> b!6875657 (= e!4144101 (and tp!1889004 tp!1889002))))

(assert (= (and b!6875522 ((_ is ElementMatch!16723) (regOne!33959 r!11177))) b!6875654))

(assert (= (and b!6875522 ((_ is Concat!25568) (regOne!33959 r!11177))) b!6875655))

(assert (= (and b!6875522 ((_ is Star!16723) (regOne!33959 r!11177))) b!6875656))

(assert (= (and b!6875522 ((_ is Union!16723) (regOne!33959 r!11177))) b!6875657))

(declare-fun b!6875659 () Bool)

(declare-fun e!4144102 () Bool)

(declare-fun tp!1889010 () Bool)

(declare-fun tp!1889011 () Bool)

(assert (=> b!6875659 (= e!4144102 (and tp!1889010 tp!1889011))))

(declare-fun b!6875658 () Bool)

(assert (=> b!6875658 (= e!4144102 tp_is_empty!42699)))

(assert (=> b!6875522 (= tp!1888917 e!4144102)))

(declare-fun b!6875660 () Bool)

(declare-fun tp!1889008 () Bool)

(assert (=> b!6875660 (= e!4144102 tp!1889008)))

(declare-fun b!6875661 () Bool)

(declare-fun tp!1889009 () Bool)

(declare-fun tp!1889007 () Bool)

(assert (=> b!6875661 (= e!4144102 (and tp!1889009 tp!1889007))))

(assert (= (and b!6875522 ((_ is ElementMatch!16723) (regTwo!33959 r!11177))) b!6875658))

(assert (= (and b!6875522 ((_ is Concat!25568) (regTwo!33959 r!11177))) b!6875659))

(assert (= (and b!6875522 ((_ is Star!16723) (regTwo!33959 r!11177))) b!6875660))

(assert (= (and b!6875522 ((_ is Union!16723) (regTwo!33959 r!11177))) b!6875661))

(check-sat (not b!6875655) (not d!2159233) (not b!6875652) (not b!6875616) (not d!2159207) (not d!2159231) (not b!6875657) (not b!6875659) (not b!6875614) (not b!6875612) (not b!6875533) (not b!6875617) (not b!6875605) (not b!6875661) (not b!6875630) (not b!6875660) (not b!6875639) (not b!6875641) (not b!6875645) (not b!6875632) (not b!6875643) (not b!6875653) (not b!6875656) (not d!2159229) tp_is_empty!42699 (not b!6875631) (not d!2159211) (not b!6875637) (not b!6875640) (not b!6875644))
(check-sat)
