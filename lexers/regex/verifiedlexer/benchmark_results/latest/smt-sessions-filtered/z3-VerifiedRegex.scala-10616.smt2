; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545530 () Bool)

(assert start!545530)

(declare-fun res!2193426 () Bool)

(declare-fun e!3213917 () Bool)

(assert (=> start!545530 (=> (not res!2193426) (not e!3213917))))

(declare-datatypes ((C!29312 0))(
  ( (C!29313 (val!24308 Int)) )
))
(declare-datatypes ((Regex!14523 0))(
  ( (ElementMatch!14523 (c!887532 C!29312)) (Concat!23368 (regOne!29558 Regex!14523) (regTwo!29558 Regex!14523)) (EmptyExpr!14523) (Star!14523 (reg!14852 Regex!14523)) (EmptyLang!14523) (Union!14523 (regOne!29559 Regex!14523) (regTwo!29559 Regex!14523)) )
))
(declare-fun expr!117 () Regex!14523)

(declare-fun validRegex!6378 (Regex!14523) Bool)

(assert (=> start!545530 (= res!2193426 (validRegex!6378 expr!117))))

(assert (=> start!545530 e!3213917))

(declare-fun e!3213919 () Bool)

(assert (=> start!545530 e!3213919))

(declare-datatypes ((List!59962 0))(
  ( (Nil!59838) (Cons!59838 (h!66286 Regex!14523) (t!373025 List!59962)) )
))
(declare-datatypes ((Context!7814 0))(
  ( (Context!7815 (exprs!4407 List!59962)) )
))
(declare-fun ctx!100 () Context!7814)

(declare-fun e!3213920 () Bool)

(declare-fun inv!79488 (Context!7814) Bool)

(assert (=> start!545530 (and (inv!79488 ctx!100) e!3213920)))

(declare-fun tp_is_empty!38195 () Bool)

(assert (=> start!545530 tp_is_empty!38195))

(declare-fun b!5156588 () Bool)

(declare-fun e!3213916 () Bool)

(declare-fun lostCause!1598 (Context!7814) Bool)

(assert (=> b!5156588 (= e!3213916 (lostCause!1598 ctx!100))))

(declare-fun b!5156589 () Bool)

(declare-fun e!3213918 () Bool)

(declare-fun nullable!4879 (Regex!14523) Bool)

(assert (=> b!5156589 (= e!3213918 (not (nullable!4879 (regOne!29558 expr!117))))))

(declare-fun b!5156590 () Bool)

(declare-fun $colon$colon!1239 (List!59962 Regex!14523) List!59962)

(assert (=> b!5156590 (= e!3213917 (not (inv!79488 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117)))))))

(declare-fun b!5156591 () Bool)

(declare-fun tp!1443614 () Bool)

(assert (=> b!5156591 (= e!3213920 tp!1443614)))

(declare-fun b!5156592 () Bool)

(declare-fun res!2193427 () Bool)

(assert (=> b!5156592 (=> (not res!2193427) (not e!3213917))))

(declare-fun a!1296 () C!29312)

(get-info :version)

(assert (=> b!5156592 (= res!2193427 (and (or (not ((_ is ElementMatch!14523) expr!117)) (not (= (c!887532 expr!117) a!1296))) (not ((_ is Union!14523) expr!117))))))

(declare-fun b!5156593 () Bool)

(declare-fun tp!1443613 () Bool)

(assert (=> b!5156593 (= e!3213919 tp!1443613)))

(declare-fun b!5156594 () Bool)

(declare-fun res!2193432 () Bool)

(assert (=> b!5156594 (=> (not res!2193432) (not e!3213917))))

(assert (=> b!5156594 (= res!2193432 e!3213916)))

(declare-fun res!2193431 () Bool)

(assert (=> b!5156594 (=> res!2193431 e!3213916)))

(declare-fun lostCause!1599 (Regex!14523) Bool)

(assert (=> b!5156594 (= res!2193431 (lostCause!1599 expr!117))))

(declare-fun b!5156595 () Bool)

(declare-fun tp!1443615 () Bool)

(declare-fun tp!1443616 () Bool)

(assert (=> b!5156595 (= e!3213919 (and tp!1443615 tp!1443616))))

(declare-fun b!5156596 () Bool)

(assert (=> b!5156596 (= e!3213919 tp_is_empty!38195)))

(declare-fun b!5156597 () Bool)

(declare-fun res!2193429 () Bool)

(assert (=> b!5156597 (=> (not res!2193429) (not e!3213917))))

(assert (=> b!5156597 (= res!2193429 e!3213918)))

(declare-fun res!2193430 () Bool)

(assert (=> b!5156597 (=> res!2193430 e!3213918)))

(assert (=> b!5156597 (= res!2193430 (not ((_ is Concat!23368) expr!117)))))

(declare-fun b!5156598 () Bool)

(declare-fun tp!1443617 () Bool)

(declare-fun tp!1443612 () Bool)

(assert (=> b!5156598 (= e!3213919 (and tp!1443617 tp!1443612))))

(declare-fun b!5156599 () Bool)

(declare-fun res!2193428 () Bool)

(assert (=> b!5156599 (=> (not res!2193428) (not e!3213917))))

(assert (=> b!5156599 (= res!2193428 (and (not ((_ is Concat!23368) expr!117)) ((_ is Star!14523) expr!117)))))

(assert (= (and start!545530 res!2193426) b!5156594))

(assert (= (and b!5156594 (not res!2193431)) b!5156588))

(assert (= (and b!5156594 res!2193432) b!5156592))

(assert (= (and b!5156592 res!2193427) b!5156597))

(assert (= (and b!5156597 (not res!2193430)) b!5156589))

(assert (= (and b!5156597 res!2193429) b!5156599))

(assert (= (and b!5156599 res!2193428) b!5156590))

(assert (= (and start!545530 ((_ is ElementMatch!14523) expr!117)) b!5156596))

(assert (= (and start!545530 ((_ is Concat!23368) expr!117)) b!5156598))

(assert (= (and start!545530 ((_ is Star!14523) expr!117)) b!5156593))

(assert (= (and start!545530 ((_ is Union!14523) expr!117)) b!5156595))

(assert (= start!545530 b!5156591))

(declare-fun m!6210982 () Bool)

(assert (=> b!5156588 m!6210982))

(declare-fun m!6210984 () Bool)

(assert (=> b!5156589 m!6210984))

(declare-fun m!6210986 () Bool)

(assert (=> b!5156590 m!6210986))

(declare-fun m!6210988 () Bool)

(assert (=> b!5156590 m!6210988))

(declare-fun m!6210990 () Bool)

(assert (=> start!545530 m!6210990))

(declare-fun m!6210992 () Bool)

(assert (=> start!545530 m!6210992))

(declare-fun m!6210994 () Bool)

(assert (=> b!5156594 m!6210994))

(check-sat (not b!5156595) (not start!545530) (not b!5156591) (not b!5156598) (not b!5156594) (not b!5156593) (not b!5156589) tp_is_empty!38195 (not b!5156588) (not b!5156590))
(check-sat)
(get-model)

(declare-fun d!1665079 () Bool)

(declare-fun lambda!257469 () Int)

(declare-fun exists!1864 (List!59962 Int) Bool)

(assert (=> d!1665079 (= (lostCause!1598 ctx!100) (exists!1864 (exprs!4407 ctx!100) lambda!257469))))

(declare-fun bs!1202249 () Bool)

(assert (= bs!1202249 d!1665079))

(declare-fun m!6211012 () Bool)

(assert (=> bs!1202249 m!6211012))

(assert (=> b!5156588 d!1665079))

(declare-fun d!1665093 () Bool)

(declare-fun lostCauseFct!396 (Regex!14523) Bool)

(assert (=> d!1665093 (= (lostCause!1599 expr!117) (lostCauseFct!396 expr!117))))

(declare-fun bs!1202250 () Bool)

(assert (= bs!1202250 d!1665093))

(declare-fun m!6211014 () Bool)

(assert (=> bs!1202250 m!6211014))

(assert (=> b!5156594 d!1665093))

(declare-fun d!1665095 () Bool)

(declare-fun nullableFct!1355 (Regex!14523) Bool)

(assert (=> d!1665095 (= (nullable!4879 (regOne!29558 expr!117)) (nullableFct!1355 (regOne!29558 expr!117)))))

(declare-fun bs!1202251 () Bool)

(assert (= bs!1202251 d!1665095))

(declare-fun m!6211016 () Bool)

(assert (=> bs!1202251 m!6211016))

(assert (=> b!5156589 d!1665095))

(declare-fun bs!1202252 () Bool)

(declare-fun d!1665097 () Bool)

(assert (= bs!1202252 (and d!1665097 d!1665079)))

(declare-fun lambda!257472 () Int)

(assert (=> bs!1202252 (not (= lambda!257472 lambda!257469))))

(declare-fun forall!14015 (List!59962 Int) Bool)

(assert (=> d!1665097 (= (inv!79488 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))) (forall!14015 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))) lambda!257472))))

(declare-fun bs!1202253 () Bool)

(assert (= bs!1202253 d!1665097))

(declare-fun m!6211018 () Bool)

(assert (=> bs!1202253 m!6211018))

(assert (=> b!5156590 d!1665097))

(declare-fun d!1665099 () Bool)

(assert (=> d!1665099 (= ($colon$colon!1239 (exprs!4407 ctx!100) expr!117) (Cons!59838 expr!117 (exprs!4407 ctx!100)))))

(assert (=> b!5156590 d!1665099))

(declare-fun bm!361402 () Bool)

(declare-fun call!361409 () Bool)

(declare-fun c!887544 () Bool)

(assert (=> bm!361402 (= call!361409 (validRegex!6378 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))

(declare-fun c!887543 () Bool)

(declare-fun call!361407 () Bool)

(declare-fun bm!361403 () Bool)

(assert (=> bm!361403 (= call!361407 (validRegex!6378 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))

(declare-fun bm!361404 () Bool)

(declare-fun call!361408 () Bool)

(assert (=> bm!361404 (= call!361408 call!361407)))

(declare-fun b!5156681 () Bool)

(declare-fun res!2193460 () Bool)

(declare-fun e!3213972 () Bool)

(assert (=> b!5156681 (=> res!2193460 e!3213972)))

(assert (=> b!5156681 (= res!2193460 (not ((_ is Concat!23368) expr!117)))))

(declare-fun e!3213966 () Bool)

(assert (=> b!5156681 (= e!3213966 e!3213972)))

(declare-fun b!5156682 () Bool)

(declare-fun e!3213969 () Bool)

(assert (=> b!5156682 (= e!3213969 call!361407)))

(declare-fun b!5156683 () Bool)

(declare-fun e!3213970 () Bool)

(assert (=> b!5156683 (= e!3213970 call!361408)))

(declare-fun b!5156684 () Bool)

(declare-fun e!3213968 () Bool)

(declare-fun e!3213971 () Bool)

(assert (=> b!5156684 (= e!3213968 e!3213971)))

(assert (=> b!5156684 (= c!887543 ((_ is Star!14523) expr!117))))

(declare-fun d!1665101 () Bool)

(declare-fun res!2193461 () Bool)

(assert (=> d!1665101 (=> res!2193461 e!3213968)))

(assert (=> d!1665101 (= res!2193461 ((_ is ElementMatch!14523) expr!117))))

(assert (=> d!1665101 (= (validRegex!6378 expr!117) e!3213968)))

(declare-fun b!5156680 () Bool)

(assert (=> b!5156680 (= e!3213971 e!3213966)))

(assert (=> b!5156680 (= c!887544 ((_ is Union!14523) expr!117))))

(declare-fun b!5156685 () Bool)

(assert (=> b!5156685 (= e!3213971 e!3213969)))

(declare-fun res!2193459 () Bool)

(assert (=> b!5156685 (= res!2193459 (not (nullable!4879 (reg!14852 expr!117))))))

(assert (=> b!5156685 (=> (not res!2193459) (not e!3213969))))

(declare-fun b!5156686 () Bool)

(declare-fun e!3213967 () Bool)

(assert (=> b!5156686 (= e!3213967 call!361408)))

(declare-fun b!5156687 () Bool)

(declare-fun res!2193458 () Bool)

(assert (=> b!5156687 (=> (not res!2193458) (not e!3213970))))

(assert (=> b!5156687 (= res!2193458 call!361409)))

(assert (=> b!5156687 (= e!3213966 e!3213970)))

(declare-fun b!5156688 () Bool)

(assert (=> b!5156688 (= e!3213972 e!3213967)))

(declare-fun res!2193462 () Bool)

(assert (=> b!5156688 (=> (not res!2193462) (not e!3213967))))

(assert (=> b!5156688 (= res!2193462 call!361409)))

(assert (= (and d!1665101 (not res!2193461)) b!5156684))

(assert (= (and b!5156684 c!887543) b!5156685))

(assert (= (and b!5156684 (not c!887543)) b!5156680))

(assert (= (and b!5156685 res!2193459) b!5156682))

(assert (= (and b!5156680 c!887544) b!5156687))

(assert (= (and b!5156680 (not c!887544)) b!5156681))

(assert (= (and b!5156687 res!2193458) b!5156683))

(assert (= (and b!5156681 (not res!2193460)) b!5156688))

(assert (= (and b!5156688 res!2193462) b!5156686))

(assert (= (or b!5156683 b!5156686) bm!361404))

(assert (= (or b!5156687 b!5156688) bm!361402))

(assert (= (or b!5156682 bm!361404) bm!361403))

(declare-fun m!6211020 () Bool)

(assert (=> bm!361402 m!6211020))

(declare-fun m!6211022 () Bool)

(assert (=> bm!361403 m!6211022))

(declare-fun m!6211024 () Bool)

(assert (=> b!5156685 m!6211024))

(assert (=> start!545530 d!1665101))

(declare-fun bs!1202254 () Bool)

(declare-fun d!1665103 () Bool)

(assert (= bs!1202254 (and d!1665103 d!1665079)))

(declare-fun lambda!257473 () Int)

(assert (=> bs!1202254 (not (= lambda!257473 lambda!257469))))

(declare-fun bs!1202255 () Bool)

(assert (= bs!1202255 (and d!1665103 d!1665097)))

(assert (=> bs!1202255 (= lambda!257473 lambda!257472)))

(assert (=> d!1665103 (= (inv!79488 ctx!100) (forall!14015 (exprs!4407 ctx!100) lambda!257473))))

(declare-fun bs!1202256 () Bool)

(assert (= bs!1202256 d!1665103))

(declare-fun m!6211026 () Bool)

(assert (=> bs!1202256 m!6211026))

(assert (=> start!545530 d!1665103))

(declare-fun b!5156701 () Bool)

(declare-fun e!3213975 () Bool)

(declare-fun tp!1443671 () Bool)

(assert (=> b!5156701 (= e!3213975 tp!1443671)))

(declare-fun b!5156702 () Bool)

(declare-fun tp!1443669 () Bool)

(declare-fun tp!1443670 () Bool)

(assert (=> b!5156702 (= e!3213975 (and tp!1443669 tp!1443670))))

(declare-fun b!5156700 () Bool)

(declare-fun tp!1443672 () Bool)

(declare-fun tp!1443673 () Bool)

(assert (=> b!5156700 (= e!3213975 (and tp!1443672 tp!1443673))))

(declare-fun b!5156699 () Bool)

(assert (=> b!5156699 (= e!3213975 tp_is_empty!38195)))

(assert (=> b!5156595 (= tp!1443615 e!3213975)))

(assert (= (and b!5156595 ((_ is ElementMatch!14523) (regOne!29559 expr!117))) b!5156699))

(assert (= (and b!5156595 ((_ is Concat!23368) (regOne!29559 expr!117))) b!5156700))

(assert (= (and b!5156595 ((_ is Star!14523) (regOne!29559 expr!117))) b!5156701))

(assert (= (and b!5156595 ((_ is Union!14523) (regOne!29559 expr!117))) b!5156702))

(declare-fun b!5156705 () Bool)

(declare-fun e!3213976 () Bool)

(declare-fun tp!1443676 () Bool)

(assert (=> b!5156705 (= e!3213976 tp!1443676)))

(declare-fun b!5156706 () Bool)

(declare-fun tp!1443674 () Bool)

(declare-fun tp!1443675 () Bool)

(assert (=> b!5156706 (= e!3213976 (and tp!1443674 tp!1443675))))

(declare-fun b!5156704 () Bool)

(declare-fun tp!1443677 () Bool)

(declare-fun tp!1443678 () Bool)

(assert (=> b!5156704 (= e!3213976 (and tp!1443677 tp!1443678))))

(declare-fun b!5156703 () Bool)

(assert (=> b!5156703 (= e!3213976 tp_is_empty!38195)))

(assert (=> b!5156595 (= tp!1443616 e!3213976)))

(assert (= (and b!5156595 ((_ is ElementMatch!14523) (regTwo!29559 expr!117))) b!5156703))

(assert (= (and b!5156595 ((_ is Concat!23368) (regTwo!29559 expr!117))) b!5156704))

(assert (= (and b!5156595 ((_ is Star!14523) (regTwo!29559 expr!117))) b!5156705))

(assert (= (and b!5156595 ((_ is Union!14523) (regTwo!29559 expr!117))) b!5156706))

(declare-fun b!5156711 () Bool)

(declare-fun e!3213979 () Bool)

(declare-fun tp!1443683 () Bool)

(declare-fun tp!1443684 () Bool)

(assert (=> b!5156711 (= e!3213979 (and tp!1443683 tp!1443684))))

(assert (=> b!5156591 (= tp!1443614 e!3213979)))

(assert (= (and b!5156591 ((_ is Cons!59838) (exprs!4407 ctx!100))) b!5156711))

(declare-fun b!5156714 () Bool)

(declare-fun e!3213980 () Bool)

(declare-fun tp!1443687 () Bool)

(assert (=> b!5156714 (= e!3213980 tp!1443687)))

(declare-fun b!5156715 () Bool)

(declare-fun tp!1443685 () Bool)

(declare-fun tp!1443686 () Bool)

(assert (=> b!5156715 (= e!3213980 (and tp!1443685 tp!1443686))))

(declare-fun b!5156713 () Bool)

(declare-fun tp!1443688 () Bool)

(declare-fun tp!1443689 () Bool)

(assert (=> b!5156713 (= e!3213980 (and tp!1443688 tp!1443689))))

(declare-fun b!5156712 () Bool)

(assert (=> b!5156712 (= e!3213980 tp_is_empty!38195)))

(assert (=> b!5156598 (= tp!1443617 e!3213980)))

(assert (= (and b!5156598 ((_ is ElementMatch!14523) (regOne!29558 expr!117))) b!5156712))

(assert (= (and b!5156598 ((_ is Concat!23368) (regOne!29558 expr!117))) b!5156713))

(assert (= (and b!5156598 ((_ is Star!14523) (regOne!29558 expr!117))) b!5156714))

(assert (= (and b!5156598 ((_ is Union!14523) (regOne!29558 expr!117))) b!5156715))

(declare-fun b!5156718 () Bool)

(declare-fun e!3213981 () Bool)

(declare-fun tp!1443692 () Bool)

(assert (=> b!5156718 (= e!3213981 tp!1443692)))

(declare-fun b!5156719 () Bool)

(declare-fun tp!1443690 () Bool)

(declare-fun tp!1443691 () Bool)

(assert (=> b!5156719 (= e!3213981 (and tp!1443690 tp!1443691))))

(declare-fun b!5156717 () Bool)

(declare-fun tp!1443693 () Bool)

(declare-fun tp!1443694 () Bool)

(assert (=> b!5156717 (= e!3213981 (and tp!1443693 tp!1443694))))

(declare-fun b!5156716 () Bool)

(assert (=> b!5156716 (= e!3213981 tp_is_empty!38195)))

(assert (=> b!5156598 (= tp!1443612 e!3213981)))

(assert (= (and b!5156598 ((_ is ElementMatch!14523) (regTwo!29558 expr!117))) b!5156716))

(assert (= (and b!5156598 ((_ is Concat!23368) (regTwo!29558 expr!117))) b!5156717))

(assert (= (and b!5156598 ((_ is Star!14523) (regTwo!29558 expr!117))) b!5156718))

(assert (= (and b!5156598 ((_ is Union!14523) (regTwo!29558 expr!117))) b!5156719))

(declare-fun b!5156722 () Bool)

(declare-fun e!3213982 () Bool)

(declare-fun tp!1443697 () Bool)

(assert (=> b!5156722 (= e!3213982 tp!1443697)))

(declare-fun b!5156723 () Bool)

(declare-fun tp!1443695 () Bool)

(declare-fun tp!1443696 () Bool)

(assert (=> b!5156723 (= e!3213982 (and tp!1443695 tp!1443696))))

(declare-fun b!5156721 () Bool)

(declare-fun tp!1443698 () Bool)

(declare-fun tp!1443699 () Bool)

(assert (=> b!5156721 (= e!3213982 (and tp!1443698 tp!1443699))))

(declare-fun b!5156720 () Bool)

(assert (=> b!5156720 (= e!3213982 tp_is_empty!38195)))

(assert (=> b!5156593 (= tp!1443613 e!3213982)))

(assert (= (and b!5156593 ((_ is ElementMatch!14523) (reg!14852 expr!117))) b!5156720))

(assert (= (and b!5156593 ((_ is Concat!23368) (reg!14852 expr!117))) b!5156721))

(assert (= (and b!5156593 ((_ is Star!14523) (reg!14852 expr!117))) b!5156722))

(assert (= (and b!5156593 ((_ is Union!14523) (reg!14852 expr!117))) b!5156723))

(check-sat (not b!5156700) (not d!1665097) (not b!5156717) (not b!5156715) (not b!5156723) (not b!5156711) (not d!1665095) (not b!5156714) (not b!5156721) (not b!5156722) (not d!1665079) (not b!5156713) (not b!5156718) (not b!5156701) (not bm!361402) (not b!5156706) (not bm!361403) tp_is_empty!38195 (not b!5156704) (not b!5156702) (not b!5156685) (not d!1665103) (not b!5156705) (not d!1665093) (not b!5156719))
(check-sat)
(get-model)

(declare-fun call!361430 () Bool)

(declare-fun bm!361423 () Bool)

(declare-fun c!887556 () Bool)

(assert (=> bm!361423 (= call!361430 (validRegex!6378 (ite c!887556 (regOne!29559 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))) (regOne!29558 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))))

(declare-fun c!887555 () Bool)

(declare-fun call!361428 () Bool)

(declare-fun bm!361424 () Bool)

(assert (=> bm!361424 (= call!361428 (validRegex!6378 (ite c!887555 (reg!14852 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))) (ite c!887556 (regTwo!29559 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))) (regTwo!29558 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117))))))))))

(declare-fun bm!361425 () Bool)

(declare-fun call!361429 () Bool)

(assert (=> bm!361425 (= call!361429 call!361428)))

(declare-fun b!5156823 () Bool)

(declare-fun res!2193513 () Bool)

(declare-fun e!3214054 () Bool)

(assert (=> b!5156823 (=> res!2193513 e!3214054)))

(assert (=> b!5156823 (= res!2193513 (not ((_ is Concat!23368) (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117))))))))

(declare-fun e!3214047 () Bool)

(assert (=> b!5156823 (= e!3214047 e!3214054)))

(declare-fun b!5156824 () Bool)

(declare-fun e!3214050 () Bool)

(assert (=> b!5156824 (= e!3214050 call!361428)))

(declare-fun b!5156825 () Bool)

(declare-fun e!3214051 () Bool)

(assert (=> b!5156825 (= e!3214051 call!361429)))

(declare-fun b!5156826 () Bool)

(declare-fun e!3214049 () Bool)

(declare-fun e!3214052 () Bool)

(assert (=> b!5156826 (= e!3214049 e!3214052)))

(assert (=> b!5156826 (= c!887555 ((_ is Star!14523) (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))

(declare-fun d!1665121 () Bool)

(declare-fun res!2193514 () Bool)

(assert (=> d!1665121 (=> res!2193514 e!3214049)))

(assert (=> d!1665121 (= res!2193514 ((_ is ElementMatch!14523) (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))

(assert (=> d!1665121 (= (validRegex!6378 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))) e!3214049)))

(declare-fun b!5156818 () Bool)

(assert (=> b!5156818 (= e!3214052 e!3214047)))

(assert (=> b!5156818 (= c!887556 ((_ is Union!14523) (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))

(declare-fun b!5156827 () Bool)

(assert (=> b!5156827 (= e!3214052 e!3214050)))

(declare-fun res!2193512 () Bool)

(assert (=> b!5156827 (= res!2193512 (not (nullable!4879 (reg!14852 (ite c!887543 (reg!14852 expr!117) (ite c!887544 (regTwo!29559 expr!117) (regTwo!29558 expr!117)))))))))

(assert (=> b!5156827 (=> (not res!2193512) (not e!3214050))))

(declare-fun b!5156828 () Bool)

(declare-fun e!3214048 () Bool)

(assert (=> b!5156828 (= e!3214048 call!361429)))

(declare-fun b!5156829 () Bool)

(declare-fun res!2193511 () Bool)

(assert (=> b!5156829 (=> (not res!2193511) (not e!3214051))))

(assert (=> b!5156829 (= res!2193511 call!361430)))

(assert (=> b!5156829 (= e!3214047 e!3214051)))

(declare-fun b!5156830 () Bool)

(assert (=> b!5156830 (= e!3214054 e!3214048)))

(declare-fun res!2193515 () Bool)

(assert (=> b!5156830 (=> (not res!2193515) (not e!3214048))))

(assert (=> b!5156830 (= res!2193515 call!361430)))

(assert (= (and d!1665121 (not res!2193514)) b!5156826))

(assert (= (and b!5156826 c!887555) b!5156827))

(assert (= (and b!5156826 (not c!887555)) b!5156818))

(assert (= (and b!5156827 res!2193512) b!5156824))

(assert (= (and b!5156818 c!887556) b!5156829))

(assert (= (and b!5156818 (not c!887556)) b!5156823))

(assert (= (and b!5156829 res!2193511) b!5156825))

(assert (= (and b!5156823 (not res!2193513)) b!5156830))

(assert (= (and b!5156830 res!2193515) b!5156828))

(assert (= (or b!5156825 b!5156828) bm!361425))

(assert (= (or b!5156829 b!5156830) bm!361423))

(assert (= (or b!5156824 bm!361425) bm!361424))

(declare-fun m!6211064 () Bool)

(assert (=> bm!361423 m!6211064))

(declare-fun m!6211066 () Bool)

(assert (=> bm!361424 m!6211066))

(declare-fun m!6211068 () Bool)

(assert (=> b!5156827 m!6211068))

(assert (=> bm!361403 d!1665121))

(declare-fun b!5156922 () Bool)

(declare-fun e!3214089 () Bool)

(declare-fun e!3214091 () Bool)

(assert (=> b!5156922 (= e!3214089 e!3214091)))

(declare-fun c!887559 () Bool)

(assert (=> b!5156922 (= c!887559 ((_ is Union!14523) expr!117))))

(declare-fun b!5156923 () Bool)

(declare-fun e!3214087 () Bool)

(assert (=> b!5156923 (= e!3214091 e!3214087)))

(declare-fun res!2193529 () Bool)

(declare-fun call!361435 () Bool)

(assert (=> b!5156923 (= res!2193529 call!361435)))

(assert (=> b!5156923 (=> (not res!2193529) (not e!3214087))))

(declare-fun b!5156924 () Bool)

(declare-fun e!3214088 () Bool)

(assert (=> b!5156924 (= e!3214088 e!3214089)))

(declare-fun res!2193527 () Bool)

(assert (=> b!5156924 (=> (not res!2193527) (not e!3214089))))

(assert (=> b!5156924 (= res!2193527 (and (not ((_ is ElementMatch!14523) expr!117)) (not ((_ is Star!14523) expr!117))))))

(declare-fun bm!361430 () Bool)

(declare-fun call!361436 () Bool)

(assert (=> bm!361430 (= call!361436 (lostCause!1599 (ite c!887559 (regTwo!29559 expr!117) (regTwo!29558 expr!117))))))

(declare-fun b!5156926 () Bool)

(declare-fun e!3214090 () Bool)

(assert (=> b!5156926 (= e!3214090 call!361436)))

(declare-fun b!5156927 () Bool)

(declare-fun e!3214092 () Bool)

(assert (=> b!5156927 (= e!3214092 e!3214088)))

(declare-fun res!2193526 () Bool)

(assert (=> b!5156927 (=> res!2193526 e!3214088)))

(assert (=> b!5156927 (= res!2193526 ((_ is EmptyLang!14523) expr!117))))

(declare-fun b!5156928 () Bool)

(assert (=> b!5156928 (= e!3214091 e!3214090)))

(declare-fun res!2193530 () Bool)

(assert (=> b!5156928 (= res!2193530 call!361435)))

(assert (=> b!5156928 (=> res!2193530 e!3214090)))

(declare-fun bm!361431 () Bool)

(assert (=> bm!361431 (= call!361435 (lostCause!1599 (ite c!887559 (regOne!29559 expr!117) (regOne!29558 expr!117))))))

(declare-fun d!1665123 () Bool)

(declare-fun lt!2122065 () Bool)

(declare-datatypes ((List!59964 0))(
  ( (Nil!59840) (Cons!59840 (h!66288 C!29312) (t!373029 List!59964)) )
))
(declare-datatypes ((Option!14818 0))(
  ( (None!14817) (Some!14817 (v!50846 List!59964)) )
))
(declare-fun isEmpty!32079 (Option!14818) Bool)

(declare-fun getLanguageWitness!983 (Regex!14523) Option!14818)

(assert (=> d!1665123 (= lt!2122065 (isEmpty!32079 (getLanguageWitness!983 expr!117)))))

(assert (=> d!1665123 (= lt!2122065 e!3214092)))

(declare-fun res!2193528 () Bool)

(assert (=> d!1665123 (=> (not res!2193528) (not e!3214092))))

(assert (=> d!1665123 (= res!2193528 (not ((_ is EmptyExpr!14523) expr!117)))))

(assert (=> d!1665123 (= (lostCauseFct!396 expr!117) lt!2122065)))

(declare-fun b!5156925 () Bool)

(assert (=> b!5156925 (= e!3214087 call!361436)))

(assert (= (and d!1665123 res!2193528) b!5156927))

(assert (= (and b!5156927 (not res!2193526)) b!5156924))

(assert (= (and b!5156924 res!2193527) b!5156922))

(assert (= (and b!5156922 c!887559) b!5156923))

(assert (= (and b!5156922 (not c!887559)) b!5156928))

(assert (= (and b!5156923 res!2193529) b!5156925))

(assert (= (and b!5156928 (not res!2193530)) b!5156926))

(assert (= (or b!5156923 b!5156928) bm!361431))

(assert (= (or b!5156925 b!5156926) bm!361430))

(declare-fun m!6211074 () Bool)

(assert (=> bm!361430 m!6211074))

(declare-fun m!6211076 () Bool)

(assert (=> bm!361431 m!6211076))

(declare-fun m!6211078 () Bool)

(assert (=> d!1665123 m!6211078))

(assert (=> d!1665123 m!6211078))

(declare-fun m!6211080 () Bool)

(assert (=> d!1665123 m!6211080))

(assert (=> d!1665093 d!1665123))

(declare-fun d!1665129 () Bool)

(declare-fun res!2193535 () Bool)

(declare-fun e!3214097 () Bool)

(assert (=> d!1665129 (=> res!2193535 e!3214097)))

(assert (=> d!1665129 (= res!2193535 ((_ is Nil!59838) (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117)))))))

(assert (=> d!1665129 (= (forall!14015 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))) lambda!257472) e!3214097)))

(declare-fun b!5156933 () Bool)

(declare-fun e!3214098 () Bool)

(assert (=> b!5156933 (= e!3214097 e!3214098)))

(declare-fun res!2193536 () Bool)

(assert (=> b!5156933 (=> (not res!2193536) (not e!3214098))))

(declare-fun dynLambda!23811 (Int Regex!14523) Bool)

(assert (=> b!5156933 (= res!2193536 (dynLambda!23811 lambda!257472 (h!66286 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))))))))

(declare-fun b!5156934 () Bool)

(assert (=> b!5156934 (= e!3214098 (forall!14015 (t!373025 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117)))) lambda!257472))))

(assert (= (and d!1665129 (not res!2193535)) b!5156933))

(assert (= (and b!5156933 res!2193536) b!5156934))

(declare-fun b_lambda!200469 () Bool)

(assert (=> (not b_lambda!200469) (not b!5156933)))

(declare-fun m!6211082 () Bool)

(assert (=> b!5156933 m!6211082))

(declare-fun m!6211084 () Bool)

(assert (=> b!5156934 m!6211084))

(assert (=> d!1665097 d!1665129))

(declare-fun bs!1202264 () Bool)

(declare-fun d!1665131 () Bool)

(assert (= bs!1202264 (and d!1665131 d!1665079)))

(declare-fun lambda!257479 () Int)

(assert (=> bs!1202264 (not (= lambda!257479 lambda!257469))))

(declare-fun bs!1202265 () Bool)

(assert (= bs!1202265 (and d!1665131 d!1665097)))

(assert (=> bs!1202265 (not (= lambda!257479 lambda!257472))))

(declare-fun bs!1202266 () Bool)

(assert (= bs!1202266 (and d!1665131 d!1665103)))

(assert (=> bs!1202266 (not (= lambda!257479 lambda!257473))))

(assert (=> d!1665131 true))

(declare-fun order!27001 () Int)

(declare-fun dynLambda!23812 (Int Int) Int)

(assert (=> d!1665131 (< (dynLambda!23812 order!27001 lambda!257469) (dynLambda!23812 order!27001 lambda!257479))))

(assert (=> d!1665131 (= (exists!1864 (exprs!4407 ctx!100) lambda!257469) (not (forall!14015 (exprs!4407 ctx!100) lambda!257479)))))

(declare-fun bs!1202267 () Bool)

(assert (= bs!1202267 d!1665131))

(declare-fun m!6211086 () Bool)

(assert (=> bs!1202267 m!6211086))

(assert (=> d!1665079 d!1665131))

(declare-fun d!1665133 () Bool)

(assert (=> d!1665133 (= (nullable!4879 (reg!14852 expr!117)) (nullableFct!1355 (reg!14852 expr!117)))))

(declare-fun bs!1202268 () Bool)

(assert (= bs!1202268 d!1665133))

(declare-fun m!6211088 () Bool)

(assert (=> bs!1202268 m!6211088))

(assert (=> b!5156685 d!1665133))

(declare-fun d!1665135 () Bool)

(declare-fun res!2193537 () Bool)

(declare-fun e!3214099 () Bool)

(assert (=> d!1665135 (=> res!2193537 e!3214099)))

(assert (=> d!1665135 (= res!2193537 ((_ is Nil!59838) (exprs!4407 ctx!100)))))

(assert (=> d!1665135 (= (forall!14015 (exprs!4407 ctx!100) lambda!257473) e!3214099)))

(declare-fun b!5156937 () Bool)

(declare-fun e!3214100 () Bool)

(assert (=> b!5156937 (= e!3214099 e!3214100)))

(declare-fun res!2193538 () Bool)

(assert (=> b!5156937 (=> (not res!2193538) (not e!3214100))))

(assert (=> b!5156937 (= res!2193538 (dynLambda!23811 lambda!257473 (h!66286 (exprs!4407 ctx!100))))))

(declare-fun b!5156938 () Bool)

(assert (=> b!5156938 (= e!3214100 (forall!14015 (t!373025 (exprs!4407 ctx!100)) lambda!257473))))

(assert (= (and d!1665135 (not res!2193537)) b!5156937))

(assert (= (and b!5156937 res!2193538) b!5156938))

(declare-fun b_lambda!200471 () Bool)

(assert (=> (not b_lambda!200471) (not b!5156937)))

(declare-fun m!6211090 () Bool)

(assert (=> b!5156937 m!6211090))

(declare-fun m!6211092 () Bool)

(assert (=> b!5156938 m!6211092))

(assert (=> d!1665103 d!1665135))

(declare-fun b!5156953 () Bool)

(declare-fun e!3214114 () Bool)

(declare-fun e!3214113 () Bool)

(assert (=> b!5156953 (= e!3214114 e!3214113)))

(declare-fun res!2193550 () Bool)

(declare-fun call!361441 () Bool)

(assert (=> b!5156953 (= res!2193550 call!361441)))

(assert (=> b!5156953 (=> res!2193550 e!3214113)))

(declare-fun d!1665137 () Bool)

(declare-fun res!2193553 () Bool)

(declare-fun e!3214116 () Bool)

(assert (=> d!1665137 (=> res!2193553 e!3214116)))

(assert (=> d!1665137 (= res!2193553 ((_ is EmptyExpr!14523) (regOne!29558 expr!117)))))

(assert (=> d!1665137 (= (nullableFct!1355 (regOne!29558 expr!117)) e!3214116)))

(declare-fun b!5156954 () Bool)

(declare-fun e!3214117 () Bool)

(assert (=> b!5156954 (= e!3214117 call!361441)))

(declare-fun b!5156955 () Bool)

(declare-fun e!3214118 () Bool)

(assert (=> b!5156955 (= e!3214116 e!3214118)))

(declare-fun res!2193552 () Bool)

(assert (=> b!5156955 (=> (not res!2193552) (not e!3214118))))

(assert (=> b!5156955 (= res!2193552 (and (not ((_ is EmptyLang!14523) (regOne!29558 expr!117))) (not ((_ is ElementMatch!14523) (regOne!29558 expr!117)))))))

(declare-fun bm!361436 () Bool)

(declare-fun call!361442 () Bool)

(declare-fun c!887562 () Bool)

(assert (=> bm!361436 (= call!361442 (nullable!4879 (ite c!887562 (regTwo!29559 (regOne!29558 expr!117)) (regOne!29558 (regOne!29558 expr!117)))))))

(declare-fun b!5156956 () Bool)

(assert (=> b!5156956 (= e!3214113 call!361442)))

(declare-fun b!5156957 () Bool)

(declare-fun e!3214115 () Bool)

(assert (=> b!5156957 (= e!3214118 e!3214115)))

(declare-fun res!2193551 () Bool)

(assert (=> b!5156957 (=> res!2193551 e!3214115)))

(assert (=> b!5156957 (= res!2193551 ((_ is Star!14523) (regOne!29558 expr!117)))))

(declare-fun bm!361437 () Bool)

(assert (=> bm!361437 (= call!361441 (nullable!4879 (ite c!887562 (regOne!29559 (regOne!29558 expr!117)) (regTwo!29558 (regOne!29558 expr!117)))))))

(declare-fun b!5156958 () Bool)

(assert (=> b!5156958 (= e!3214114 e!3214117)))

(declare-fun res!2193549 () Bool)

(assert (=> b!5156958 (= res!2193549 call!361442)))

(assert (=> b!5156958 (=> (not res!2193549) (not e!3214117))))

(declare-fun b!5156959 () Bool)

(assert (=> b!5156959 (= e!3214115 e!3214114)))

(assert (=> b!5156959 (= c!887562 ((_ is Union!14523) (regOne!29558 expr!117)))))

(assert (= (and d!1665137 (not res!2193553)) b!5156955))

(assert (= (and b!5156955 res!2193552) b!5156957))

(assert (= (and b!5156957 (not res!2193551)) b!5156959))

(assert (= (and b!5156959 c!887562) b!5156953))

(assert (= (and b!5156959 (not c!887562)) b!5156958))

(assert (= (and b!5156953 (not res!2193550)) b!5156956))

(assert (= (and b!5156958 res!2193549) b!5156954))

(assert (= (or b!5156956 b!5156958) bm!361436))

(assert (= (or b!5156953 b!5156954) bm!361437))

(declare-fun m!6211094 () Bool)

(assert (=> bm!361436 m!6211094))

(declare-fun m!6211096 () Bool)

(assert (=> bm!361437 m!6211096))

(assert (=> d!1665095 d!1665137))

(declare-fun call!361445 () Bool)

(declare-fun c!887564 () Bool)

(declare-fun bm!361438 () Bool)

(assert (=> bm!361438 (= call!361445 (validRegex!6378 (ite c!887564 (regOne!29559 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))) (regOne!29558 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))))

(declare-fun call!361443 () Bool)

(declare-fun c!887563 () Bool)

(declare-fun bm!361439 () Bool)

(assert (=> bm!361439 (= call!361443 (validRegex!6378 (ite c!887563 (reg!14852 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))) (ite c!887564 (regTwo!29559 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))) (regTwo!29558 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117)))))))))

(declare-fun bm!361440 () Bool)

(declare-fun call!361444 () Bool)

(assert (=> bm!361440 (= call!361444 call!361443)))

(declare-fun b!5156961 () Bool)

(declare-fun res!2193556 () Bool)

(declare-fun e!3214125 () Bool)

(assert (=> b!5156961 (=> res!2193556 e!3214125)))

(assert (=> b!5156961 (= res!2193556 (not ((_ is Concat!23368) (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117)))))))

(declare-fun e!3214119 () Bool)

(assert (=> b!5156961 (= e!3214119 e!3214125)))

(declare-fun b!5156962 () Bool)

(declare-fun e!3214122 () Bool)

(assert (=> b!5156962 (= e!3214122 call!361443)))

(declare-fun b!5156963 () Bool)

(declare-fun e!3214123 () Bool)

(assert (=> b!5156963 (= e!3214123 call!361444)))

(declare-fun b!5156964 () Bool)

(declare-fun e!3214121 () Bool)

(declare-fun e!3214124 () Bool)

(assert (=> b!5156964 (= e!3214121 e!3214124)))

(assert (=> b!5156964 (= c!887563 ((_ is Star!14523) (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))

(declare-fun d!1665139 () Bool)

(declare-fun res!2193557 () Bool)

(assert (=> d!1665139 (=> res!2193557 e!3214121)))

(assert (=> d!1665139 (= res!2193557 ((_ is ElementMatch!14523) (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))

(assert (=> d!1665139 (= (validRegex!6378 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))) e!3214121)))

(declare-fun b!5156960 () Bool)

(assert (=> b!5156960 (= e!3214124 e!3214119)))

(assert (=> b!5156960 (= c!887564 ((_ is Union!14523) (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))

(declare-fun b!5156965 () Bool)

(assert (=> b!5156965 (= e!3214124 e!3214122)))

(declare-fun res!2193555 () Bool)

(assert (=> b!5156965 (= res!2193555 (not (nullable!4879 (reg!14852 (ite c!887544 (regOne!29559 expr!117) (regOne!29558 expr!117))))))))

(assert (=> b!5156965 (=> (not res!2193555) (not e!3214122))))

(declare-fun b!5156966 () Bool)

(declare-fun e!3214120 () Bool)

(assert (=> b!5156966 (= e!3214120 call!361444)))

(declare-fun b!5156967 () Bool)

(declare-fun res!2193554 () Bool)

(assert (=> b!5156967 (=> (not res!2193554) (not e!3214123))))

(assert (=> b!5156967 (= res!2193554 call!361445)))

(assert (=> b!5156967 (= e!3214119 e!3214123)))

(declare-fun b!5156968 () Bool)

(assert (=> b!5156968 (= e!3214125 e!3214120)))

(declare-fun res!2193558 () Bool)

(assert (=> b!5156968 (=> (not res!2193558) (not e!3214120))))

(assert (=> b!5156968 (= res!2193558 call!361445)))

(assert (= (and d!1665139 (not res!2193557)) b!5156964))

(assert (= (and b!5156964 c!887563) b!5156965))

(assert (= (and b!5156964 (not c!887563)) b!5156960))

(assert (= (and b!5156965 res!2193555) b!5156962))

(assert (= (and b!5156960 c!887564) b!5156967))

(assert (= (and b!5156960 (not c!887564)) b!5156961))

(assert (= (and b!5156967 res!2193554) b!5156963))

(assert (= (and b!5156961 (not res!2193556)) b!5156968))

(assert (= (and b!5156968 res!2193558) b!5156966))

(assert (= (or b!5156963 b!5156966) bm!361440))

(assert (= (or b!5156967 b!5156968) bm!361438))

(assert (= (or b!5156962 bm!361440) bm!361439))

(declare-fun m!6211098 () Bool)

(assert (=> bm!361438 m!6211098))

(declare-fun m!6211100 () Bool)

(assert (=> bm!361439 m!6211100))

(declare-fun m!6211102 () Bool)

(assert (=> b!5156965 m!6211102))

(assert (=> bm!361402 d!1665139))

(declare-fun b!5156971 () Bool)

(declare-fun e!3214126 () Bool)

(declare-fun tp!1443834 () Bool)

(assert (=> b!5156971 (= e!3214126 tp!1443834)))

(declare-fun b!5156972 () Bool)

(declare-fun tp!1443832 () Bool)

(declare-fun tp!1443833 () Bool)

(assert (=> b!5156972 (= e!3214126 (and tp!1443832 tp!1443833))))

(declare-fun b!5156970 () Bool)

(declare-fun tp!1443835 () Bool)

(declare-fun tp!1443836 () Bool)

(assert (=> b!5156970 (= e!3214126 (and tp!1443835 tp!1443836))))

(declare-fun b!5156969 () Bool)

(assert (=> b!5156969 (= e!3214126 tp_is_empty!38195)))

(assert (=> b!5156706 (= tp!1443674 e!3214126)))

(assert (= (and b!5156706 ((_ is ElementMatch!14523) (regOne!29559 (regTwo!29559 expr!117)))) b!5156969))

(assert (= (and b!5156706 ((_ is Concat!23368) (regOne!29559 (regTwo!29559 expr!117)))) b!5156970))

(assert (= (and b!5156706 ((_ is Star!14523) (regOne!29559 (regTwo!29559 expr!117)))) b!5156971))

(assert (= (and b!5156706 ((_ is Union!14523) (regOne!29559 (regTwo!29559 expr!117)))) b!5156972))

(declare-fun b!5156975 () Bool)

(declare-fun e!3214127 () Bool)

(declare-fun tp!1443839 () Bool)

(assert (=> b!5156975 (= e!3214127 tp!1443839)))

(declare-fun b!5156976 () Bool)

(declare-fun tp!1443837 () Bool)

(declare-fun tp!1443838 () Bool)

(assert (=> b!5156976 (= e!3214127 (and tp!1443837 tp!1443838))))

(declare-fun b!5156974 () Bool)

(declare-fun tp!1443840 () Bool)

(declare-fun tp!1443841 () Bool)

(assert (=> b!5156974 (= e!3214127 (and tp!1443840 tp!1443841))))

(declare-fun b!5156973 () Bool)

(assert (=> b!5156973 (= e!3214127 tp_is_empty!38195)))

(assert (=> b!5156706 (= tp!1443675 e!3214127)))

(assert (= (and b!5156706 ((_ is ElementMatch!14523) (regTwo!29559 (regTwo!29559 expr!117)))) b!5156973))

(assert (= (and b!5156706 ((_ is Concat!23368) (regTwo!29559 (regTwo!29559 expr!117)))) b!5156974))

(assert (= (and b!5156706 ((_ is Star!14523) (regTwo!29559 (regTwo!29559 expr!117)))) b!5156975))

(assert (= (and b!5156706 ((_ is Union!14523) (regTwo!29559 (regTwo!29559 expr!117)))) b!5156976))

(declare-fun b!5156979 () Bool)

(declare-fun e!3214128 () Bool)

(declare-fun tp!1443844 () Bool)

(assert (=> b!5156979 (= e!3214128 tp!1443844)))

(declare-fun b!5156980 () Bool)

(declare-fun tp!1443842 () Bool)

(declare-fun tp!1443843 () Bool)

(assert (=> b!5156980 (= e!3214128 (and tp!1443842 tp!1443843))))

(declare-fun b!5156978 () Bool)

(declare-fun tp!1443845 () Bool)

(declare-fun tp!1443846 () Bool)

(assert (=> b!5156978 (= e!3214128 (and tp!1443845 tp!1443846))))

(declare-fun b!5156977 () Bool)

(assert (=> b!5156977 (= e!3214128 tp_is_empty!38195)))

(assert (=> b!5156702 (= tp!1443669 e!3214128)))

(assert (= (and b!5156702 ((_ is ElementMatch!14523) (regOne!29559 (regOne!29559 expr!117)))) b!5156977))

(assert (= (and b!5156702 ((_ is Concat!23368) (regOne!29559 (regOne!29559 expr!117)))) b!5156978))

(assert (= (and b!5156702 ((_ is Star!14523) (regOne!29559 (regOne!29559 expr!117)))) b!5156979))

(assert (= (and b!5156702 ((_ is Union!14523) (regOne!29559 (regOne!29559 expr!117)))) b!5156980))

(declare-fun b!5156983 () Bool)

(declare-fun e!3214129 () Bool)

(declare-fun tp!1443849 () Bool)

(assert (=> b!5156983 (= e!3214129 tp!1443849)))

(declare-fun b!5156984 () Bool)

(declare-fun tp!1443847 () Bool)

(declare-fun tp!1443848 () Bool)

(assert (=> b!5156984 (= e!3214129 (and tp!1443847 tp!1443848))))

(declare-fun b!5156982 () Bool)

(declare-fun tp!1443850 () Bool)

(declare-fun tp!1443851 () Bool)

(assert (=> b!5156982 (= e!3214129 (and tp!1443850 tp!1443851))))

(declare-fun b!5156981 () Bool)

(assert (=> b!5156981 (= e!3214129 tp_is_empty!38195)))

(assert (=> b!5156702 (= tp!1443670 e!3214129)))

(assert (= (and b!5156702 ((_ is ElementMatch!14523) (regTwo!29559 (regOne!29559 expr!117)))) b!5156981))

(assert (= (and b!5156702 ((_ is Concat!23368) (regTwo!29559 (regOne!29559 expr!117)))) b!5156982))

(assert (= (and b!5156702 ((_ is Star!14523) (regTwo!29559 (regOne!29559 expr!117)))) b!5156983))

(assert (= (and b!5156702 ((_ is Union!14523) (regTwo!29559 (regOne!29559 expr!117)))) b!5156984))

(declare-fun b!5156987 () Bool)

(declare-fun e!3214130 () Bool)

(declare-fun tp!1443854 () Bool)

(assert (=> b!5156987 (= e!3214130 tp!1443854)))

(declare-fun b!5156988 () Bool)

(declare-fun tp!1443852 () Bool)

(declare-fun tp!1443853 () Bool)

(assert (=> b!5156988 (= e!3214130 (and tp!1443852 tp!1443853))))

(declare-fun b!5156986 () Bool)

(declare-fun tp!1443855 () Bool)

(declare-fun tp!1443856 () Bool)

(assert (=> b!5156986 (= e!3214130 (and tp!1443855 tp!1443856))))

(declare-fun b!5156985 () Bool)

(assert (=> b!5156985 (= e!3214130 tp_is_empty!38195)))

(assert (=> b!5156705 (= tp!1443676 e!3214130)))

(assert (= (and b!5156705 ((_ is ElementMatch!14523) (reg!14852 (regTwo!29559 expr!117)))) b!5156985))

(assert (= (and b!5156705 ((_ is Concat!23368) (reg!14852 (regTwo!29559 expr!117)))) b!5156986))

(assert (= (and b!5156705 ((_ is Star!14523) (reg!14852 (regTwo!29559 expr!117)))) b!5156987))

(assert (= (and b!5156705 ((_ is Union!14523) (reg!14852 (regTwo!29559 expr!117)))) b!5156988))

(declare-fun b!5156991 () Bool)

(declare-fun e!3214131 () Bool)

(declare-fun tp!1443859 () Bool)

(assert (=> b!5156991 (= e!3214131 tp!1443859)))

(declare-fun b!5156992 () Bool)

(declare-fun tp!1443857 () Bool)

(declare-fun tp!1443858 () Bool)

(assert (=> b!5156992 (= e!3214131 (and tp!1443857 tp!1443858))))

(declare-fun b!5156990 () Bool)

(declare-fun tp!1443860 () Bool)

(declare-fun tp!1443861 () Bool)

(assert (=> b!5156990 (= e!3214131 (and tp!1443860 tp!1443861))))

(declare-fun b!5156989 () Bool)

(assert (=> b!5156989 (= e!3214131 tp_is_empty!38195)))

(assert (=> b!5156704 (= tp!1443677 e!3214131)))

(assert (= (and b!5156704 ((_ is ElementMatch!14523) (regOne!29558 (regTwo!29559 expr!117)))) b!5156989))

(assert (= (and b!5156704 ((_ is Concat!23368) (regOne!29558 (regTwo!29559 expr!117)))) b!5156990))

(assert (= (and b!5156704 ((_ is Star!14523) (regOne!29558 (regTwo!29559 expr!117)))) b!5156991))

(assert (= (and b!5156704 ((_ is Union!14523) (regOne!29558 (regTwo!29559 expr!117)))) b!5156992))

(declare-fun b!5156995 () Bool)

(declare-fun e!3214132 () Bool)

(declare-fun tp!1443864 () Bool)

(assert (=> b!5156995 (= e!3214132 tp!1443864)))

(declare-fun b!5156996 () Bool)

(declare-fun tp!1443862 () Bool)

(declare-fun tp!1443863 () Bool)

(assert (=> b!5156996 (= e!3214132 (and tp!1443862 tp!1443863))))

(declare-fun b!5156994 () Bool)

(declare-fun tp!1443865 () Bool)

(declare-fun tp!1443866 () Bool)

(assert (=> b!5156994 (= e!3214132 (and tp!1443865 tp!1443866))))

(declare-fun b!5156993 () Bool)

(assert (=> b!5156993 (= e!3214132 tp_is_empty!38195)))

(assert (=> b!5156704 (= tp!1443678 e!3214132)))

(assert (= (and b!5156704 ((_ is ElementMatch!14523) (regTwo!29558 (regTwo!29559 expr!117)))) b!5156993))

(assert (= (and b!5156704 ((_ is Concat!23368) (regTwo!29558 (regTwo!29559 expr!117)))) b!5156994))

(assert (= (and b!5156704 ((_ is Star!14523) (regTwo!29558 (regTwo!29559 expr!117)))) b!5156995))

(assert (= (and b!5156704 ((_ is Union!14523) (regTwo!29558 (regTwo!29559 expr!117)))) b!5156996))

(declare-fun b!5156999 () Bool)

(declare-fun e!3214133 () Bool)

(declare-fun tp!1443869 () Bool)

(assert (=> b!5156999 (= e!3214133 tp!1443869)))

(declare-fun b!5157000 () Bool)

(declare-fun tp!1443867 () Bool)

(declare-fun tp!1443868 () Bool)

(assert (=> b!5157000 (= e!3214133 (and tp!1443867 tp!1443868))))

(declare-fun b!5156998 () Bool)

(declare-fun tp!1443870 () Bool)

(declare-fun tp!1443871 () Bool)

(assert (=> b!5156998 (= e!3214133 (and tp!1443870 tp!1443871))))

(declare-fun b!5156997 () Bool)

(assert (=> b!5156997 (= e!3214133 tp_is_empty!38195)))

(assert (=> b!5156711 (= tp!1443683 e!3214133)))

(assert (= (and b!5156711 ((_ is ElementMatch!14523) (h!66286 (exprs!4407 ctx!100)))) b!5156997))

(assert (= (and b!5156711 ((_ is Concat!23368) (h!66286 (exprs!4407 ctx!100)))) b!5156998))

(assert (= (and b!5156711 ((_ is Star!14523) (h!66286 (exprs!4407 ctx!100)))) b!5156999))

(assert (= (and b!5156711 ((_ is Union!14523) (h!66286 (exprs!4407 ctx!100)))) b!5157000))

(declare-fun b!5157001 () Bool)

(declare-fun e!3214134 () Bool)

(declare-fun tp!1443872 () Bool)

(declare-fun tp!1443873 () Bool)

(assert (=> b!5157001 (= e!3214134 (and tp!1443872 tp!1443873))))

(assert (=> b!5156711 (= tp!1443684 e!3214134)))

(assert (= (and b!5156711 ((_ is Cons!59838) (t!373025 (exprs!4407 ctx!100)))) b!5157001))

(declare-fun b!5157004 () Bool)

(declare-fun e!3214135 () Bool)

(declare-fun tp!1443876 () Bool)

(assert (=> b!5157004 (= e!3214135 tp!1443876)))

(declare-fun b!5157005 () Bool)

(declare-fun tp!1443874 () Bool)

(declare-fun tp!1443875 () Bool)

(assert (=> b!5157005 (= e!3214135 (and tp!1443874 tp!1443875))))

(declare-fun b!5157003 () Bool)

(declare-fun tp!1443877 () Bool)

(declare-fun tp!1443878 () Bool)

(assert (=> b!5157003 (= e!3214135 (and tp!1443877 tp!1443878))))

(declare-fun b!5157002 () Bool)

(assert (=> b!5157002 (= e!3214135 tp_is_empty!38195)))

(assert (=> b!5156715 (= tp!1443685 e!3214135)))

(assert (= (and b!5156715 ((_ is ElementMatch!14523) (regOne!29559 (regOne!29558 expr!117)))) b!5157002))

(assert (= (and b!5156715 ((_ is Concat!23368) (regOne!29559 (regOne!29558 expr!117)))) b!5157003))

(assert (= (and b!5156715 ((_ is Star!14523) (regOne!29559 (regOne!29558 expr!117)))) b!5157004))

(assert (= (and b!5156715 ((_ is Union!14523) (regOne!29559 (regOne!29558 expr!117)))) b!5157005))

(declare-fun b!5157008 () Bool)

(declare-fun e!3214136 () Bool)

(declare-fun tp!1443881 () Bool)

(assert (=> b!5157008 (= e!3214136 tp!1443881)))

(declare-fun b!5157009 () Bool)

(declare-fun tp!1443879 () Bool)

(declare-fun tp!1443880 () Bool)

(assert (=> b!5157009 (= e!3214136 (and tp!1443879 tp!1443880))))

(declare-fun b!5157007 () Bool)

(declare-fun tp!1443882 () Bool)

(declare-fun tp!1443883 () Bool)

(assert (=> b!5157007 (= e!3214136 (and tp!1443882 tp!1443883))))

(declare-fun b!5157006 () Bool)

(assert (=> b!5157006 (= e!3214136 tp_is_empty!38195)))

(assert (=> b!5156715 (= tp!1443686 e!3214136)))

(assert (= (and b!5156715 ((_ is ElementMatch!14523) (regTwo!29559 (regOne!29558 expr!117)))) b!5157006))

(assert (= (and b!5156715 ((_ is Concat!23368) (regTwo!29559 (regOne!29558 expr!117)))) b!5157007))

(assert (= (and b!5156715 ((_ is Star!14523) (regTwo!29559 (regOne!29558 expr!117)))) b!5157008))

(assert (= (and b!5156715 ((_ is Union!14523) (regTwo!29559 (regOne!29558 expr!117)))) b!5157009))

(declare-fun b!5157012 () Bool)

(declare-fun e!3214137 () Bool)

(declare-fun tp!1443886 () Bool)

(assert (=> b!5157012 (= e!3214137 tp!1443886)))

(declare-fun b!5157013 () Bool)

(declare-fun tp!1443884 () Bool)

(declare-fun tp!1443885 () Bool)

(assert (=> b!5157013 (= e!3214137 (and tp!1443884 tp!1443885))))

(declare-fun b!5157011 () Bool)

(declare-fun tp!1443887 () Bool)

(declare-fun tp!1443888 () Bool)

(assert (=> b!5157011 (= e!3214137 (and tp!1443887 tp!1443888))))

(declare-fun b!5157010 () Bool)

(assert (=> b!5157010 (= e!3214137 tp_is_empty!38195)))

(assert (=> b!5156719 (= tp!1443690 e!3214137)))

(assert (= (and b!5156719 ((_ is ElementMatch!14523) (regOne!29559 (regTwo!29558 expr!117)))) b!5157010))

(assert (= (and b!5156719 ((_ is Concat!23368) (regOne!29559 (regTwo!29558 expr!117)))) b!5157011))

(assert (= (and b!5156719 ((_ is Star!14523) (regOne!29559 (regTwo!29558 expr!117)))) b!5157012))

(assert (= (and b!5156719 ((_ is Union!14523) (regOne!29559 (regTwo!29558 expr!117)))) b!5157013))

(declare-fun b!5157016 () Bool)

(declare-fun e!3214138 () Bool)

(declare-fun tp!1443891 () Bool)

(assert (=> b!5157016 (= e!3214138 tp!1443891)))

(declare-fun b!5157017 () Bool)

(declare-fun tp!1443889 () Bool)

(declare-fun tp!1443890 () Bool)

(assert (=> b!5157017 (= e!3214138 (and tp!1443889 tp!1443890))))

(declare-fun b!5157015 () Bool)

(declare-fun tp!1443892 () Bool)

(declare-fun tp!1443893 () Bool)

(assert (=> b!5157015 (= e!3214138 (and tp!1443892 tp!1443893))))

(declare-fun b!5157014 () Bool)

(assert (=> b!5157014 (= e!3214138 tp_is_empty!38195)))

(assert (=> b!5156719 (= tp!1443691 e!3214138)))

(assert (= (and b!5156719 ((_ is ElementMatch!14523) (regTwo!29559 (regTwo!29558 expr!117)))) b!5157014))

(assert (= (and b!5156719 ((_ is Concat!23368) (regTwo!29559 (regTwo!29558 expr!117)))) b!5157015))

(assert (= (and b!5156719 ((_ is Star!14523) (regTwo!29559 (regTwo!29558 expr!117)))) b!5157016))

(assert (= (and b!5156719 ((_ is Union!14523) (regTwo!29559 (regTwo!29558 expr!117)))) b!5157017))

(declare-fun b!5157020 () Bool)

(declare-fun e!3214139 () Bool)

(declare-fun tp!1443896 () Bool)

(assert (=> b!5157020 (= e!3214139 tp!1443896)))

(declare-fun b!5157021 () Bool)

(declare-fun tp!1443894 () Bool)

(declare-fun tp!1443895 () Bool)

(assert (=> b!5157021 (= e!3214139 (and tp!1443894 tp!1443895))))

(declare-fun b!5157019 () Bool)

(declare-fun tp!1443897 () Bool)

(declare-fun tp!1443898 () Bool)

(assert (=> b!5157019 (= e!3214139 (and tp!1443897 tp!1443898))))

(declare-fun b!5157018 () Bool)

(assert (=> b!5157018 (= e!3214139 tp_is_empty!38195)))

(assert (=> b!5156714 (= tp!1443687 e!3214139)))

(assert (= (and b!5156714 ((_ is ElementMatch!14523) (reg!14852 (regOne!29558 expr!117)))) b!5157018))

(assert (= (and b!5156714 ((_ is Concat!23368) (reg!14852 (regOne!29558 expr!117)))) b!5157019))

(assert (= (and b!5156714 ((_ is Star!14523) (reg!14852 (regOne!29558 expr!117)))) b!5157020))

(assert (= (and b!5156714 ((_ is Union!14523) (reg!14852 (regOne!29558 expr!117)))) b!5157021))

(declare-fun b!5157024 () Bool)

(declare-fun e!3214140 () Bool)

(declare-fun tp!1443901 () Bool)

(assert (=> b!5157024 (= e!3214140 tp!1443901)))

(declare-fun b!5157025 () Bool)

(declare-fun tp!1443899 () Bool)

(declare-fun tp!1443900 () Bool)

(assert (=> b!5157025 (= e!3214140 (and tp!1443899 tp!1443900))))

(declare-fun b!5157023 () Bool)

(declare-fun tp!1443902 () Bool)

(declare-fun tp!1443903 () Bool)

(assert (=> b!5157023 (= e!3214140 (and tp!1443902 tp!1443903))))

(declare-fun b!5157022 () Bool)

(assert (=> b!5157022 (= e!3214140 tp_is_empty!38195)))

(assert (=> b!5156723 (= tp!1443695 e!3214140)))

(assert (= (and b!5156723 ((_ is ElementMatch!14523) (regOne!29559 (reg!14852 expr!117)))) b!5157022))

(assert (= (and b!5156723 ((_ is Concat!23368) (regOne!29559 (reg!14852 expr!117)))) b!5157023))

(assert (= (and b!5156723 ((_ is Star!14523) (regOne!29559 (reg!14852 expr!117)))) b!5157024))

(assert (= (and b!5156723 ((_ is Union!14523) (regOne!29559 (reg!14852 expr!117)))) b!5157025))

(declare-fun b!5157028 () Bool)

(declare-fun e!3214141 () Bool)

(declare-fun tp!1443906 () Bool)

(assert (=> b!5157028 (= e!3214141 tp!1443906)))

(declare-fun b!5157029 () Bool)

(declare-fun tp!1443904 () Bool)

(declare-fun tp!1443905 () Bool)

(assert (=> b!5157029 (= e!3214141 (and tp!1443904 tp!1443905))))

(declare-fun b!5157027 () Bool)

(declare-fun tp!1443907 () Bool)

(declare-fun tp!1443908 () Bool)

(assert (=> b!5157027 (= e!3214141 (and tp!1443907 tp!1443908))))

(declare-fun b!5157026 () Bool)

(assert (=> b!5157026 (= e!3214141 tp_is_empty!38195)))

(assert (=> b!5156723 (= tp!1443696 e!3214141)))

(assert (= (and b!5156723 ((_ is ElementMatch!14523) (regTwo!29559 (reg!14852 expr!117)))) b!5157026))

(assert (= (and b!5156723 ((_ is Concat!23368) (regTwo!29559 (reg!14852 expr!117)))) b!5157027))

(assert (= (and b!5156723 ((_ is Star!14523) (regTwo!29559 (reg!14852 expr!117)))) b!5157028))

(assert (= (and b!5156723 ((_ is Union!14523) (regTwo!29559 (reg!14852 expr!117)))) b!5157029))

(declare-fun b!5157032 () Bool)

(declare-fun e!3214142 () Bool)

(declare-fun tp!1443911 () Bool)

(assert (=> b!5157032 (= e!3214142 tp!1443911)))

(declare-fun b!5157033 () Bool)

(declare-fun tp!1443909 () Bool)

(declare-fun tp!1443910 () Bool)

(assert (=> b!5157033 (= e!3214142 (and tp!1443909 tp!1443910))))

(declare-fun b!5157031 () Bool)

(declare-fun tp!1443912 () Bool)

(declare-fun tp!1443913 () Bool)

(assert (=> b!5157031 (= e!3214142 (and tp!1443912 tp!1443913))))

(declare-fun b!5157030 () Bool)

(assert (=> b!5157030 (= e!3214142 tp_is_empty!38195)))

(assert (=> b!5156718 (= tp!1443692 e!3214142)))

(assert (= (and b!5156718 ((_ is ElementMatch!14523) (reg!14852 (regTwo!29558 expr!117)))) b!5157030))

(assert (= (and b!5156718 ((_ is Concat!23368) (reg!14852 (regTwo!29558 expr!117)))) b!5157031))

(assert (= (and b!5156718 ((_ is Star!14523) (reg!14852 (regTwo!29558 expr!117)))) b!5157032))

(assert (= (and b!5156718 ((_ is Union!14523) (reg!14852 (regTwo!29558 expr!117)))) b!5157033))

(declare-fun b!5157036 () Bool)

(declare-fun e!3214143 () Bool)

(declare-fun tp!1443916 () Bool)

(assert (=> b!5157036 (= e!3214143 tp!1443916)))

(declare-fun b!5157037 () Bool)

(declare-fun tp!1443914 () Bool)

(declare-fun tp!1443915 () Bool)

(assert (=> b!5157037 (= e!3214143 (and tp!1443914 tp!1443915))))

(declare-fun b!5157035 () Bool)

(declare-fun tp!1443917 () Bool)

(declare-fun tp!1443918 () Bool)

(assert (=> b!5157035 (= e!3214143 (and tp!1443917 tp!1443918))))

(declare-fun b!5157034 () Bool)

(assert (=> b!5157034 (= e!3214143 tp_is_empty!38195)))

(assert (=> b!5156713 (= tp!1443688 e!3214143)))

(assert (= (and b!5156713 ((_ is ElementMatch!14523) (regOne!29558 (regOne!29558 expr!117)))) b!5157034))

(assert (= (and b!5156713 ((_ is Concat!23368) (regOne!29558 (regOne!29558 expr!117)))) b!5157035))

(assert (= (and b!5156713 ((_ is Star!14523) (regOne!29558 (regOne!29558 expr!117)))) b!5157036))

(assert (= (and b!5156713 ((_ is Union!14523) (regOne!29558 (regOne!29558 expr!117)))) b!5157037))

(declare-fun b!5157040 () Bool)

(declare-fun e!3214144 () Bool)

(declare-fun tp!1443921 () Bool)

(assert (=> b!5157040 (= e!3214144 tp!1443921)))

(declare-fun b!5157041 () Bool)

(declare-fun tp!1443919 () Bool)

(declare-fun tp!1443920 () Bool)

(assert (=> b!5157041 (= e!3214144 (and tp!1443919 tp!1443920))))

(declare-fun b!5157039 () Bool)

(declare-fun tp!1443922 () Bool)

(declare-fun tp!1443923 () Bool)

(assert (=> b!5157039 (= e!3214144 (and tp!1443922 tp!1443923))))

(declare-fun b!5157038 () Bool)

(assert (=> b!5157038 (= e!3214144 tp_is_empty!38195)))

(assert (=> b!5156713 (= tp!1443689 e!3214144)))

(assert (= (and b!5156713 ((_ is ElementMatch!14523) (regTwo!29558 (regOne!29558 expr!117)))) b!5157038))

(assert (= (and b!5156713 ((_ is Concat!23368) (regTwo!29558 (regOne!29558 expr!117)))) b!5157039))

(assert (= (and b!5156713 ((_ is Star!14523) (regTwo!29558 (regOne!29558 expr!117)))) b!5157040))

(assert (= (and b!5156713 ((_ is Union!14523) (regTwo!29558 (regOne!29558 expr!117)))) b!5157041))

(declare-fun b!5157044 () Bool)

(declare-fun e!3214145 () Bool)

(declare-fun tp!1443926 () Bool)

(assert (=> b!5157044 (= e!3214145 tp!1443926)))

(declare-fun b!5157045 () Bool)

(declare-fun tp!1443924 () Bool)

(declare-fun tp!1443925 () Bool)

(assert (=> b!5157045 (= e!3214145 (and tp!1443924 tp!1443925))))

(declare-fun b!5157043 () Bool)

(declare-fun tp!1443927 () Bool)

(declare-fun tp!1443928 () Bool)

(assert (=> b!5157043 (= e!3214145 (and tp!1443927 tp!1443928))))

(declare-fun b!5157042 () Bool)

(assert (=> b!5157042 (= e!3214145 tp_is_empty!38195)))

(assert (=> b!5156722 (= tp!1443697 e!3214145)))

(assert (= (and b!5156722 ((_ is ElementMatch!14523) (reg!14852 (reg!14852 expr!117)))) b!5157042))

(assert (= (and b!5156722 ((_ is Concat!23368) (reg!14852 (reg!14852 expr!117)))) b!5157043))

(assert (= (and b!5156722 ((_ is Star!14523) (reg!14852 (reg!14852 expr!117)))) b!5157044))

(assert (= (and b!5156722 ((_ is Union!14523) (reg!14852 (reg!14852 expr!117)))) b!5157045))

(declare-fun b!5157048 () Bool)

(declare-fun e!3214146 () Bool)

(declare-fun tp!1443931 () Bool)

(assert (=> b!5157048 (= e!3214146 tp!1443931)))

(declare-fun b!5157049 () Bool)

(declare-fun tp!1443929 () Bool)

(declare-fun tp!1443930 () Bool)

(assert (=> b!5157049 (= e!3214146 (and tp!1443929 tp!1443930))))

(declare-fun b!5157047 () Bool)

(declare-fun tp!1443932 () Bool)

(declare-fun tp!1443933 () Bool)

(assert (=> b!5157047 (= e!3214146 (and tp!1443932 tp!1443933))))

(declare-fun b!5157046 () Bool)

(assert (=> b!5157046 (= e!3214146 tp_is_empty!38195)))

(assert (=> b!5156717 (= tp!1443693 e!3214146)))

(assert (= (and b!5156717 ((_ is ElementMatch!14523) (regOne!29558 (regTwo!29558 expr!117)))) b!5157046))

(assert (= (and b!5156717 ((_ is Concat!23368) (regOne!29558 (regTwo!29558 expr!117)))) b!5157047))

(assert (= (and b!5156717 ((_ is Star!14523) (regOne!29558 (regTwo!29558 expr!117)))) b!5157048))

(assert (= (and b!5156717 ((_ is Union!14523) (regOne!29558 (regTwo!29558 expr!117)))) b!5157049))

(declare-fun b!5157052 () Bool)

(declare-fun e!3214147 () Bool)

(declare-fun tp!1443936 () Bool)

(assert (=> b!5157052 (= e!3214147 tp!1443936)))

(declare-fun b!5157053 () Bool)

(declare-fun tp!1443934 () Bool)

(declare-fun tp!1443935 () Bool)

(assert (=> b!5157053 (= e!3214147 (and tp!1443934 tp!1443935))))

(declare-fun b!5157051 () Bool)

(declare-fun tp!1443937 () Bool)

(declare-fun tp!1443938 () Bool)

(assert (=> b!5157051 (= e!3214147 (and tp!1443937 tp!1443938))))

(declare-fun b!5157050 () Bool)

(assert (=> b!5157050 (= e!3214147 tp_is_empty!38195)))

(assert (=> b!5156717 (= tp!1443694 e!3214147)))

(assert (= (and b!5156717 ((_ is ElementMatch!14523) (regTwo!29558 (regTwo!29558 expr!117)))) b!5157050))

(assert (= (and b!5156717 ((_ is Concat!23368) (regTwo!29558 (regTwo!29558 expr!117)))) b!5157051))

(assert (= (and b!5156717 ((_ is Star!14523) (regTwo!29558 (regTwo!29558 expr!117)))) b!5157052))

(assert (= (and b!5156717 ((_ is Union!14523) (regTwo!29558 (regTwo!29558 expr!117)))) b!5157053))

(declare-fun b!5157056 () Bool)

(declare-fun e!3214148 () Bool)

(declare-fun tp!1443941 () Bool)

(assert (=> b!5157056 (= e!3214148 tp!1443941)))

(declare-fun b!5157057 () Bool)

(declare-fun tp!1443939 () Bool)

(declare-fun tp!1443940 () Bool)

(assert (=> b!5157057 (= e!3214148 (and tp!1443939 tp!1443940))))

(declare-fun b!5157055 () Bool)

(declare-fun tp!1443942 () Bool)

(declare-fun tp!1443943 () Bool)

(assert (=> b!5157055 (= e!3214148 (and tp!1443942 tp!1443943))))

(declare-fun b!5157054 () Bool)

(assert (=> b!5157054 (= e!3214148 tp_is_empty!38195)))

(assert (=> b!5156721 (= tp!1443698 e!3214148)))

(assert (= (and b!5156721 ((_ is ElementMatch!14523) (regOne!29558 (reg!14852 expr!117)))) b!5157054))

(assert (= (and b!5156721 ((_ is Concat!23368) (regOne!29558 (reg!14852 expr!117)))) b!5157055))

(assert (= (and b!5156721 ((_ is Star!14523) (regOne!29558 (reg!14852 expr!117)))) b!5157056))

(assert (= (and b!5156721 ((_ is Union!14523) (regOne!29558 (reg!14852 expr!117)))) b!5157057))

(declare-fun b!5157060 () Bool)

(declare-fun e!3214149 () Bool)

(declare-fun tp!1443946 () Bool)

(assert (=> b!5157060 (= e!3214149 tp!1443946)))

(declare-fun b!5157061 () Bool)

(declare-fun tp!1443944 () Bool)

(declare-fun tp!1443945 () Bool)

(assert (=> b!5157061 (= e!3214149 (and tp!1443944 tp!1443945))))

(declare-fun b!5157059 () Bool)

(declare-fun tp!1443947 () Bool)

(declare-fun tp!1443948 () Bool)

(assert (=> b!5157059 (= e!3214149 (and tp!1443947 tp!1443948))))

(declare-fun b!5157058 () Bool)

(assert (=> b!5157058 (= e!3214149 tp_is_empty!38195)))

(assert (=> b!5156721 (= tp!1443699 e!3214149)))

(assert (= (and b!5156721 ((_ is ElementMatch!14523) (regTwo!29558 (reg!14852 expr!117)))) b!5157058))

(assert (= (and b!5156721 ((_ is Concat!23368) (regTwo!29558 (reg!14852 expr!117)))) b!5157059))

(assert (= (and b!5156721 ((_ is Star!14523) (regTwo!29558 (reg!14852 expr!117)))) b!5157060))

(assert (= (and b!5156721 ((_ is Union!14523) (regTwo!29558 (reg!14852 expr!117)))) b!5157061))

(declare-fun b!5157064 () Bool)

(declare-fun e!3214150 () Bool)

(declare-fun tp!1443951 () Bool)

(assert (=> b!5157064 (= e!3214150 tp!1443951)))

(declare-fun b!5157065 () Bool)

(declare-fun tp!1443949 () Bool)

(declare-fun tp!1443950 () Bool)

(assert (=> b!5157065 (= e!3214150 (and tp!1443949 tp!1443950))))

(declare-fun b!5157063 () Bool)

(declare-fun tp!1443952 () Bool)

(declare-fun tp!1443953 () Bool)

(assert (=> b!5157063 (= e!3214150 (and tp!1443952 tp!1443953))))

(declare-fun b!5157062 () Bool)

(assert (=> b!5157062 (= e!3214150 tp_is_empty!38195)))

(assert (=> b!5156700 (= tp!1443672 e!3214150)))

(assert (= (and b!5156700 ((_ is ElementMatch!14523) (regOne!29558 (regOne!29559 expr!117)))) b!5157062))

(assert (= (and b!5156700 ((_ is Concat!23368) (regOne!29558 (regOne!29559 expr!117)))) b!5157063))

(assert (= (and b!5156700 ((_ is Star!14523) (regOne!29558 (regOne!29559 expr!117)))) b!5157064))

(assert (= (and b!5156700 ((_ is Union!14523) (regOne!29558 (regOne!29559 expr!117)))) b!5157065))

(declare-fun b!5157068 () Bool)

(declare-fun e!3214151 () Bool)

(declare-fun tp!1443956 () Bool)

(assert (=> b!5157068 (= e!3214151 tp!1443956)))

(declare-fun b!5157069 () Bool)

(declare-fun tp!1443954 () Bool)

(declare-fun tp!1443955 () Bool)

(assert (=> b!5157069 (= e!3214151 (and tp!1443954 tp!1443955))))

(declare-fun b!5157067 () Bool)

(declare-fun tp!1443957 () Bool)

(declare-fun tp!1443958 () Bool)

(assert (=> b!5157067 (= e!3214151 (and tp!1443957 tp!1443958))))

(declare-fun b!5157066 () Bool)

(assert (=> b!5157066 (= e!3214151 tp_is_empty!38195)))

(assert (=> b!5156700 (= tp!1443673 e!3214151)))

(assert (= (and b!5156700 ((_ is ElementMatch!14523) (regTwo!29558 (regOne!29559 expr!117)))) b!5157066))

(assert (= (and b!5156700 ((_ is Concat!23368) (regTwo!29558 (regOne!29559 expr!117)))) b!5157067))

(assert (= (and b!5156700 ((_ is Star!14523) (regTwo!29558 (regOne!29559 expr!117)))) b!5157068))

(assert (= (and b!5156700 ((_ is Union!14523) (regTwo!29558 (regOne!29559 expr!117)))) b!5157069))

(declare-fun b!5157072 () Bool)

(declare-fun e!3214152 () Bool)

(declare-fun tp!1443961 () Bool)

(assert (=> b!5157072 (= e!3214152 tp!1443961)))

(declare-fun b!5157073 () Bool)

(declare-fun tp!1443959 () Bool)

(declare-fun tp!1443960 () Bool)

(assert (=> b!5157073 (= e!3214152 (and tp!1443959 tp!1443960))))

(declare-fun b!5157071 () Bool)

(declare-fun tp!1443962 () Bool)

(declare-fun tp!1443963 () Bool)

(assert (=> b!5157071 (= e!3214152 (and tp!1443962 tp!1443963))))

(declare-fun b!5157070 () Bool)

(assert (=> b!5157070 (= e!3214152 tp_is_empty!38195)))

(assert (=> b!5156701 (= tp!1443671 e!3214152)))

(assert (= (and b!5156701 ((_ is ElementMatch!14523) (reg!14852 (regOne!29559 expr!117)))) b!5157070))

(assert (= (and b!5156701 ((_ is Concat!23368) (reg!14852 (regOne!29559 expr!117)))) b!5157071))

(assert (= (and b!5156701 ((_ is Star!14523) (reg!14852 (regOne!29559 expr!117)))) b!5157072))

(assert (= (and b!5156701 ((_ is Union!14523) (reg!14852 (regOne!29559 expr!117)))) b!5157073))

(declare-fun b_lambda!200473 () Bool)

(assert (= b_lambda!200469 (or d!1665097 b_lambda!200473)))

(declare-fun bs!1202269 () Bool)

(declare-fun d!1665141 () Bool)

(assert (= bs!1202269 (and d!1665141 d!1665097)))

(assert (=> bs!1202269 (= (dynLambda!23811 lambda!257472 (h!66286 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))))) (validRegex!6378 (h!66286 (exprs!4407 (Context!7815 ($colon$colon!1239 (exprs!4407 ctx!100) expr!117))))))))

(declare-fun m!6211104 () Bool)

(assert (=> bs!1202269 m!6211104))

(assert (=> b!5156933 d!1665141))

(declare-fun b_lambda!200475 () Bool)

(assert (= b_lambda!200471 (or d!1665103 b_lambda!200475)))

(declare-fun bs!1202270 () Bool)

(declare-fun d!1665143 () Bool)

(assert (= bs!1202270 (and d!1665143 d!1665103)))

(assert (=> bs!1202270 (= (dynLambda!23811 lambda!257473 (h!66286 (exprs!4407 ctx!100))) (validRegex!6378 (h!66286 (exprs!4407 ctx!100))))))

(declare-fun m!6211106 () Bool)

(assert (=> bs!1202270 m!6211106))

(assert (=> b!5156937 d!1665143))

(check-sat (not b!5157004) (not b!5156992) (not b!5157017) (not b!5157064) (not b!5157068) (not b!5157036) (not b!5157040) (not b!5157037) (not b!5157069) (not b!5156998) (not b!5157057) (not b!5157041) (not b!5156980) (not b!5157028) (not b!5157020) (not bm!361439) (not b!5157053) (not b!5157045) (not b!5157003) (not b!5157031) (not b!5156988) (not b!5157001) (not b!5157016) (not bm!361438) (not b!5156983) (not bm!361423) (not b!5157060) (not b!5157056) (not b!5156965) (not bm!361437) (not b!5157039) (not b!5157061) (not d!1665123) (not bs!1202270) (not b!5156934) (not b!5157071) (not b!5156999) (not bm!361431) (not d!1665131) (not b!5157008) (not b!5156970) (not b!5156995) (not b!5157043) (not b!5157015) (not b!5157059) tp_is_empty!38195 (not b!5156978) (not b!5157073) (not b!5156979) (not b!5157024) (not b!5157044) (not b!5157011) (not b!5157000) (not b!5157025) (not b!5157023) (not b!5157033) (not bs!1202269) (not b!5156994) (not b!5157012) (not b!5157049) (not b!5157035) (not b!5156972) (not d!1665133) (not b!5156974) (not b!5157055) (not b!5157065) (not b!5157019) (not b!5157009) (not b!5157013) (not b_lambda!200475) (not b!5157047) (not b!5156976) (not b_lambda!200473) (not b!5157063) (not b!5156827) (not b!5156991) (not b!5156971) (not b!5156987) (not b!5157051) (not b!5157067) (not b!5157005) (not b!5156990) (not b!5156938) (not b!5157021) (not b!5156986) (not b!5157032) (not b!5157029) (not bm!361424) (not b!5157052) (not b!5157072) (not b!5156975) (not b!5157027) (not bm!361436) (not b!5156982) (not b!5156984) (not bm!361430) (not b!5157007) (not b!5157048) (not b!5156996))
(check-sat)
