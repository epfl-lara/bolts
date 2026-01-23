; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744362 () Bool)

(assert start!744362)

(declare-fun b!7885591 () Bool)

(declare-fun e!4655841 () Bool)

(declare-fun tp!2345700 () Bool)

(assert (=> b!7885591 (= e!4655841 tp!2345700)))

(declare-fun b!7885592 () Bool)

(declare-fun tp_is_empty!52789 () Bool)

(assert (=> b!7885592 (= e!4655841 tp_is_empty!52789)))

(declare-fun b!7885593 () Bool)

(declare-fun e!4655843 () Bool)

(declare-fun tp!2345701 () Bool)

(assert (=> b!7885593 (= e!4655843 (and tp_is_empty!52789 tp!2345701))))

(declare-fun res!3130530 () Bool)

(declare-fun e!4655842 () Bool)

(assert (=> start!744362 (=> (not res!3130530) (not e!4655842))))

(declare-datatypes ((C!42716 0))(
  ( (C!42717 (val!31820 Int)) )
))
(declare-datatypes ((Regex!21195 0))(
  ( (ElementMatch!21195 (c!1447643 C!42716)) (Concat!30040 (regOne!42902 Regex!21195) (regTwo!42902 Regex!21195)) (EmptyExpr!21195) (Star!21195 (reg!21524 Regex!21195)) (EmptyLang!21195) (Union!21195 (regOne!42903 Regex!21195) (regTwo!42903 Regex!21195)) )
))
(declare-fun r!14100 () Regex!21195)

(declare-fun validRegex!11605 (Regex!21195) Bool)

(assert (=> start!744362 (= res!3130530 (validRegex!11605 r!14100))))

(assert (=> start!744362 e!4655842))

(assert (=> start!744362 e!4655841))

(assert (=> start!744362 e!4655843))

(declare-fun b!7885594 () Bool)

(assert (=> b!7885594 (= e!4655842 (not (validRegex!11605 (regTwo!42903 r!14100))))))

(declare-fun b!7885595 () Bool)

(declare-fun tp!2345697 () Bool)

(declare-fun tp!2345702 () Bool)

(assert (=> b!7885595 (= e!4655841 (and tp!2345697 tp!2345702))))

(declare-fun b!7885596 () Bool)

(declare-fun tp!2345698 () Bool)

(declare-fun tp!2345699 () Bool)

(assert (=> b!7885596 (= e!4655841 (and tp!2345698 tp!2345699))))

(declare-fun b!7885597 () Bool)

(declare-fun res!3130528 () Bool)

(assert (=> b!7885597 (=> (not res!3130528) (not e!4655842))))

(get-info :version)

(assert (=> b!7885597 (= res!3130528 (and (not ((_ is EmptyExpr!21195) r!14100)) (not ((_ is EmptyLang!21195) r!14100)) (not ((_ is ElementMatch!21195) r!14100)) ((_ is Union!21195) r!14100)))))

(declare-fun b!7885598 () Bool)

(declare-fun res!3130529 () Bool)

(assert (=> b!7885598 (=> (not res!3130529) (not e!4655842))))

(declare-datatypes ((List!74052 0))(
  ( (Nil!73928) (Cons!73928 (h!80376 C!42716) (t!388787 List!74052)) )
))
(declare-fun s!9586 () List!74052)

(declare-fun matchRSpec!4666 (Regex!21195 List!74052) Bool)

(assert (=> b!7885598 (= res!3130529 (not (matchRSpec!4666 (regOne!42903 r!14100) s!9586)))))

(assert (= (and start!744362 res!3130530) b!7885597))

(assert (= (and b!7885597 res!3130528) b!7885598))

(assert (= (and b!7885598 res!3130529) b!7885594))

(assert (= (and start!744362 ((_ is ElementMatch!21195) r!14100)) b!7885592))

(assert (= (and start!744362 ((_ is Concat!30040) r!14100)) b!7885595))

(assert (= (and start!744362 ((_ is Star!21195) r!14100)) b!7885591))

(assert (= (and start!744362 ((_ is Union!21195) r!14100)) b!7885596))

(assert (= (and start!744362 ((_ is Cons!73928) s!9586)) b!7885593))

(declare-fun m!8269082 () Bool)

(assert (=> start!744362 m!8269082))

(declare-fun m!8269084 () Bool)

(assert (=> b!7885594 m!8269084))

(declare-fun m!8269086 () Bool)

(assert (=> b!7885598 m!8269086))

(check-sat (not start!744362) (not b!7885593) (not b!7885598) (not b!7885596) (not b!7885591) tp_is_empty!52789 (not b!7885594) (not b!7885595))
(check-sat)
(get-model)

(declare-fun b!7885699 () Bool)

(assert (=> b!7885699 true))

(assert (=> b!7885699 true))

(declare-fun bs!1967425 () Bool)

(declare-fun b!7885693 () Bool)

(assert (= bs!1967425 (and b!7885693 b!7885699)))

(declare-fun lambda!472123 () Int)

(declare-fun lambda!472122 () Int)

(assert (=> bs!1967425 (not (= lambda!472123 lambda!472122))))

(assert (=> b!7885693 true))

(assert (=> b!7885693 true))

(declare-fun b!7885689 () Bool)

(declare-fun c!1447671 () Bool)

(assert (=> b!7885689 (= c!1447671 ((_ is Union!21195) (regOne!42903 r!14100)))))

(declare-fun e!4655907 () Bool)

(declare-fun e!4655908 () Bool)

(assert (=> b!7885689 (= e!4655907 e!4655908)))

(declare-fun b!7885690 () Bool)

(declare-fun e!4655904 () Bool)

(assert (=> b!7885690 (= e!4655908 e!4655904)))

(declare-fun c!1447668 () Bool)

(assert (=> b!7885690 (= c!1447668 ((_ is Star!21195) (regOne!42903 r!14100)))))

(declare-fun b!7885691 () Bool)

(declare-fun res!3130575 () Bool)

(declare-fun e!4655909 () Bool)

(assert (=> b!7885691 (=> res!3130575 e!4655909)))

(declare-fun call!731469 () Bool)

(assert (=> b!7885691 (= res!3130575 call!731469)))

(assert (=> b!7885691 (= e!4655904 e!4655909)))

(declare-fun d!2356456 () Bool)

(declare-fun c!1447669 () Bool)

(assert (=> d!2356456 (= c!1447669 ((_ is EmptyExpr!21195) (regOne!42903 r!14100)))))

(declare-fun e!4655910 () Bool)

(assert (=> d!2356456 (= (matchRSpec!4666 (regOne!42903 r!14100) s!9586) e!4655910)))

(declare-fun b!7885692 () Bool)

(assert (=> b!7885692 (= e!4655910 call!731469)))

(declare-fun call!731470 () Bool)

(assert (=> b!7885693 (= e!4655904 call!731470)))

(declare-fun b!7885694 () Bool)

(declare-fun e!4655905 () Bool)

(assert (=> b!7885694 (= e!4655905 (matchRSpec!4666 (regTwo!42903 (regOne!42903 r!14100)) s!9586))))

(declare-fun bm!731464 () Bool)

(declare-fun isEmpty!42417 (List!74052) Bool)

(assert (=> bm!731464 (= call!731469 (isEmpty!42417 s!9586))))

(declare-fun b!7885695 () Bool)

(declare-fun c!1447670 () Bool)

(assert (=> b!7885695 (= c!1447670 ((_ is ElementMatch!21195) (regOne!42903 r!14100)))))

(declare-fun e!4655906 () Bool)

(assert (=> b!7885695 (= e!4655906 e!4655907)))

(declare-fun b!7885696 () Bool)

(assert (=> b!7885696 (= e!4655910 e!4655906)))

(declare-fun res!3130574 () Bool)

(assert (=> b!7885696 (= res!3130574 (not ((_ is EmptyLang!21195) (regOne!42903 r!14100))))))

(assert (=> b!7885696 (=> (not res!3130574) (not e!4655906))))

(declare-fun b!7885697 () Bool)

(assert (=> b!7885697 (= e!4655907 (= s!9586 (Cons!73928 (c!1447643 (regOne!42903 r!14100)) Nil!73928)))))

(declare-fun bm!731465 () Bool)

(declare-fun Exists!4758 (Int) Bool)

(assert (=> bm!731465 (= call!731470 (Exists!4758 (ite c!1447668 lambda!472122 lambda!472123)))))

(declare-fun b!7885698 () Bool)

(assert (=> b!7885698 (= e!4655908 e!4655905)))

(declare-fun res!3130573 () Bool)

(assert (=> b!7885698 (= res!3130573 (matchRSpec!4666 (regOne!42903 (regOne!42903 r!14100)) s!9586))))

(assert (=> b!7885698 (=> res!3130573 e!4655905)))

(assert (=> b!7885699 (= e!4655909 call!731470)))

(assert (= (and d!2356456 c!1447669) b!7885692))

(assert (= (and d!2356456 (not c!1447669)) b!7885696))

(assert (= (and b!7885696 res!3130574) b!7885695))

(assert (= (and b!7885695 c!1447670) b!7885697))

(assert (= (and b!7885695 (not c!1447670)) b!7885689))

(assert (= (and b!7885689 c!1447671) b!7885698))

(assert (= (and b!7885689 (not c!1447671)) b!7885690))

(assert (= (and b!7885698 (not res!3130573)) b!7885694))

(assert (= (and b!7885690 c!1447668) b!7885691))

(assert (= (and b!7885690 (not c!1447668)) b!7885693))

(assert (= (and b!7885691 (not res!3130575)) b!7885699))

(assert (= (or b!7885699 b!7885693) bm!731465))

(assert (= (or b!7885692 b!7885691) bm!731464))

(declare-fun m!8269100 () Bool)

(assert (=> b!7885694 m!8269100))

(declare-fun m!8269102 () Bool)

(assert (=> bm!731464 m!8269102))

(declare-fun m!8269104 () Bool)

(assert (=> bm!731465 m!8269104))

(declare-fun m!8269106 () Bool)

(assert (=> b!7885698 m!8269106))

(assert (=> b!7885598 d!2356456))

(declare-fun b!7885722 () Bool)

(declare-fun e!4655927 () Bool)

(declare-fun e!4655928 () Bool)

(assert (=> b!7885722 (= e!4655927 e!4655928)))

(declare-fun res!3130590 () Bool)

(assert (=> b!7885722 (=> (not res!3130590) (not e!4655928))))

(declare-fun call!731477 () Bool)

(assert (=> b!7885722 (= res!3130590 call!731477)))

(declare-fun b!7885723 () Bool)

(declare-fun e!4655925 () Bool)

(declare-fun call!731479 () Bool)

(assert (=> b!7885723 (= e!4655925 call!731479)))

(declare-fun bm!731472 () Bool)

(declare-fun c!1447676 () Bool)

(assert (=> bm!731472 (= call!731477 (validRegex!11605 (ite c!1447676 (regTwo!42903 (regTwo!42903 r!14100)) (regOne!42902 (regTwo!42903 r!14100)))))))

(declare-fun b!7885724 () Bool)

(declare-fun e!4655929 () Bool)

(declare-fun e!4655926 () Bool)

(assert (=> b!7885724 (= e!4655929 e!4655926)))

(declare-fun c!1447677 () Bool)

(assert (=> b!7885724 (= c!1447677 ((_ is Star!21195) (regTwo!42903 r!14100)))))

(declare-fun d!2356464 () Bool)

(declare-fun res!3130589 () Bool)

(assert (=> d!2356464 (=> res!3130589 e!4655929)))

(assert (=> d!2356464 (= res!3130589 ((_ is ElementMatch!21195) (regTwo!42903 r!14100)))))

(assert (=> d!2356464 (= (validRegex!11605 (regTwo!42903 r!14100)) e!4655929)))

(declare-fun b!7885725 () Bool)

(declare-fun res!3130587 () Bool)

(assert (=> b!7885725 (=> res!3130587 e!4655927)))

(assert (=> b!7885725 (= res!3130587 (not ((_ is Concat!30040) (regTwo!42903 r!14100))))))

(declare-fun e!4655930 () Bool)

(assert (=> b!7885725 (= e!4655930 e!4655927)))

(declare-fun b!7885726 () Bool)

(declare-fun res!3130588 () Bool)

(declare-fun e!4655931 () Bool)

(assert (=> b!7885726 (=> (not res!3130588) (not e!4655931))))

(declare-fun call!731478 () Bool)

(assert (=> b!7885726 (= res!3130588 call!731478)))

(assert (=> b!7885726 (= e!4655930 e!4655931)))

(declare-fun b!7885727 () Bool)

(assert (=> b!7885727 (= e!4655931 call!731477)))

(declare-fun b!7885728 () Bool)

(assert (=> b!7885728 (= e!4655926 e!4655925)))

(declare-fun res!3130586 () Bool)

(declare-fun nullable!9452 (Regex!21195) Bool)

(assert (=> b!7885728 (= res!3130586 (not (nullable!9452 (reg!21524 (regTwo!42903 r!14100)))))))

(assert (=> b!7885728 (=> (not res!3130586) (not e!4655925))))

(declare-fun b!7885729 () Bool)

(assert (=> b!7885729 (= e!4655926 e!4655930)))

(assert (=> b!7885729 (= c!1447676 ((_ is Union!21195) (regTwo!42903 r!14100)))))

(declare-fun b!7885730 () Bool)

(assert (=> b!7885730 (= e!4655928 call!731478)))

(declare-fun bm!731473 () Bool)

(assert (=> bm!731473 (= call!731479 (validRegex!11605 (ite c!1447677 (reg!21524 (regTwo!42903 r!14100)) (ite c!1447676 (regOne!42903 (regTwo!42903 r!14100)) (regTwo!42902 (regTwo!42903 r!14100))))))))

(declare-fun bm!731474 () Bool)

(assert (=> bm!731474 (= call!731478 call!731479)))

(assert (= (and d!2356464 (not res!3130589)) b!7885724))

(assert (= (and b!7885724 c!1447677) b!7885728))

(assert (= (and b!7885724 (not c!1447677)) b!7885729))

(assert (= (and b!7885728 res!3130586) b!7885723))

(assert (= (and b!7885729 c!1447676) b!7885726))

(assert (= (and b!7885729 (not c!1447676)) b!7885725))

(assert (= (and b!7885726 res!3130588) b!7885727))

(assert (= (and b!7885725 (not res!3130587)) b!7885722))

(assert (= (and b!7885722 res!3130590) b!7885730))

(assert (= (or b!7885727 b!7885722) bm!731472))

(assert (= (or b!7885726 b!7885730) bm!731474))

(assert (= (or b!7885723 bm!731474) bm!731473))

(declare-fun m!8269108 () Bool)

(assert (=> bm!731472 m!8269108))

(declare-fun m!8269110 () Bool)

(assert (=> b!7885728 m!8269110))

(declare-fun m!8269112 () Bool)

(assert (=> bm!731473 m!8269112))

(assert (=> b!7885594 d!2356464))

(declare-fun b!7885731 () Bool)

(declare-fun e!4655934 () Bool)

(declare-fun e!4655935 () Bool)

(assert (=> b!7885731 (= e!4655934 e!4655935)))

(declare-fun res!3130595 () Bool)

(assert (=> b!7885731 (=> (not res!3130595) (not e!4655935))))

(declare-fun call!731480 () Bool)

(assert (=> b!7885731 (= res!3130595 call!731480)))

(declare-fun b!7885732 () Bool)

(declare-fun e!4655932 () Bool)

(declare-fun call!731482 () Bool)

(assert (=> b!7885732 (= e!4655932 call!731482)))

(declare-fun bm!731475 () Bool)

(declare-fun c!1447678 () Bool)

(assert (=> bm!731475 (= call!731480 (validRegex!11605 (ite c!1447678 (regTwo!42903 r!14100) (regOne!42902 r!14100))))))

(declare-fun b!7885733 () Bool)

(declare-fun e!4655936 () Bool)

(declare-fun e!4655933 () Bool)

(assert (=> b!7885733 (= e!4655936 e!4655933)))

(declare-fun c!1447679 () Bool)

(assert (=> b!7885733 (= c!1447679 ((_ is Star!21195) r!14100))))

(declare-fun d!2356466 () Bool)

(declare-fun res!3130594 () Bool)

(assert (=> d!2356466 (=> res!3130594 e!4655936)))

(assert (=> d!2356466 (= res!3130594 ((_ is ElementMatch!21195) r!14100))))

(assert (=> d!2356466 (= (validRegex!11605 r!14100) e!4655936)))

(declare-fun b!7885734 () Bool)

(declare-fun res!3130592 () Bool)

(assert (=> b!7885734 (=> res!3130592 e!4655934)))

(assert (=> b!7885734 (= res!3130592 (not ((_ is Concat!30040) r!14100)))))

(declare-fun e!4655937 () Bool)

(assert (=> b!7885734 (= e!4655937 e!4655934)))

(declare-fun b!7885735 () Bool)

(declare-fun res!3130593 () Bool)

(declare-fun e!4655938 () Bool)

(assert (=> b!7885735 (=> (not res!3130593) (not e!4655938))))

(declare-fun call!731481 () Bool)

(assert (=> b!7885735 (= res!3130593 call!731481)))

(assert (=> b!7885735 (= e!4655937 e!4655938)))

(declare-fun b!7885736 () Bool)

(assert (=> b!7885736 (= e!4655938 call!731480)))

(declare-fun b!7885737 () Bool)

(assert (=> b!7885737 (= e!4655933 e!4655932)))

(declare-fun res!3130591 () Bool)

(assert (=> b!7885737 (= res!3130591 (not (nullable!9452 (reg!21524 r!14100))))))

(assert (=> b!7885737 (=> (not res!3130591) (not e!4655932))))

(declare-fun b!7885738 () Bool)

(assert (=> b!7885738 (= e!4655933 e!4655937)))

(assert (=> b!7885738 (= c!1447678 ((_ is Union!21195) r!14100))))

(declare-fun b!7885739 () Bool)

(assert (=> b!7885739 (= e!4655935 call!731481)))

(declare-fun bm!731476 () Bool)

(assert (=> bm!731476 (= call!731482 (validRegex!11605 (ite c!1447679 (reg!21524 r!14100) (ite c!1447678 (regOne!42903 r!14100) (regTwo!42902 r!14100)))))))

(declare-fun bm!731477 () Bool)

(assert (=> bm!731477 (= call!731481 call!731482)))

(assert (= (and d!2356466 (not res!3130594)) b!7885733))

(assert (= (and b!7885733 c!1447679) b!7885737))

(assert (= (and b!7885733 (not c!1447679)) b!7885738))

(assert (= (and b!7885737 res!3130591) b!7885732))

(assert (= (and b!7885738 c!1447678) b!7885735))

(assert (= (and b!7885738 (not c!1447678)) b!7885734))

(assert (= (and b!7885735 res!3130593) b!7885736))

(assert (= (and b!7885734 (not res!3130592)) b!7885731))

(assert (= (and b!7885731 res!3130595) b!7885739))

(assert (= (or b!7885736 b!7885731) bm!731475))

(assert (= (or b!7885735 b!7885739) bm!731477))

(assert (= (or b!7885732 bm!731477) bm!731476))

(declare-fun m!8269114 () Bool)

(assert (=> bm!731475 m!8269114))

(declare-fun m!8269116 () Bool)

(assert (=> b!7885737 m!8269116))

(declare-fun m!8269118 () Bool)

(assert (=> bm!731476 m!8269118))

(assert (=> start!744362 d!2356466))

(declare-fun b!7885744 () Bool)

(declare-fun e!4655941 () Bool)

(declare-fun tp!2345705 () Bool)

(assert (=> b!7885744 (= e!4655941 (and tp_is_empty!52789 tp!2345705))))

(assert (=> b!7885593 (= tp!2345701 e!4655941)))

(assert (= (and b!7885593 ((_ is Cons!73928) (t!388787 s!9586))) b!7885744))

(declare-fun b!7885755 () Bool)

(declare-fun e!4655944 () Bool)

(assert (=> b!7885755 (= e!4655944 tp_is_empty!52789)))

(declare-fun b!7885757 () Bool)

(declare-fun tp!2345719 () Bool)

(assert (=> b!7885757 (= e!4655944 tp!2345719)))

(assert (=> b!7885595 (= tp!2345697 e!4655944)))

(declare-fun b!7885758 () Bool)

(declare-fun tp!2345718 () Bool)

(declare-fun tp!2345716 () Bool)

(assert (=> b!7885758 (= e!4655944 (and tp!2345718 tp!2345716))))

(declare-fun b!7885756 () Bool)

(declare-fun tp!2345720 () Bool)

(declare-fun tp!2345717 () Bool)

(assert (=> b!7885756 (= e!4655944 (and tp!2345720 tp!2345717))))

(assert (= (and b!7885595 ((_ is ElementMatch!21195) (regOne!42902 r!14100))) b!7885755))

(assert (= (and b!7885595 ((_ is Concat!30040) (regOne!42902 r!14100))) b!7885756))

(assert (= (and b!7885595 ((_ is Star!21195) (regOne!42902 r!14100))) b!7885757))

(assert (= (and b!7885595 ((_ is Union!21195) (regOne!42902 r!14100))) b!7885758))

(declare-fun b!7885759 () Bool)

(declare-fun e!4655945 () Bool)

(assert (=> b!7885759 (= e!4655945 tp_is_empty!52789)))

(declare-fun b!7885761 () Bool)

(declare-fun tp!2345724 () Bool)

(assert (=> b!7885761 (= e!4655945 tp!2345724)))

(assert (=> b!7885595 (= tp!2345702 e!4655945)))

(declare-fun b!7885762 () Bool)

(declare-fun tp!2345723 () Bool)

(declare-fun tp!2345721 () Bool)

(assert (=> b!7885762 (= e!4655945 (and tp!2345723 tp!2345721))))

(declare-fun b!7885760 () Bool)

(declare-fun tp!2345725 () Bool)

(declare-fun tp!2345722 () Bool)

(assert (=> b!7885760 (= e!4655945 (and tp!2345725 tp!2345722))))

(assert (= (and b!7885595 ((_ is ElementMatch!21195) (regTwo!42902 r!14100))) b!7885759))

(assert (= (and b!7885595 ((_ is Concat!30040) (regTwo!42902 r!14100))) b!7885760))

(assert (= (and b!7885595 ((_ is Star!21195) (regTwo!42902 r!14100))) b!7885761))

(assert (= (and b!7885595 ((_ is Union!21195) (regTwo!42902 r!14100))) b!7885762))

(declare-fun b!7885763 () Bool)

(declare-fun e!4655946 () Bool)

(assert (=> b!7885763 (= e!4655946 tp_is_empty!52789)))

(declare-fun b!7885765 () Bool)

(declare-fun tp!2345729 () Bool)

(assert (=> b!7885765 (= e!4655946 tp!2345729)))

(assert (=> b!7885591 (= tp!2345700 e!4655946)))

(declare-fun b!7885766 () Bool)

(declare-fun tp!2345728 () Bool)

(declare-fun tp!2345726 () Bool)

(assert (=> b!7885766 (= e!4655946 (and tp!2345728 tp!2345726))))

(declare-fun b!7885764 () Bool)

(declare-fun tp!2345730 () Bool)

(declare-fun tp!2345727 () Bool)

(assert (=> b!7885764 (= e!4655946 (and tp!2345730 tp!2345727))))

(assert (= (and b!7885591 ((_ is ElementMatch!21195) (reg!21524 r!14100))) b!7885763))

(assert (= (and b!7885591 ((_ is Concat!30040) (reg!21524 r!14100))) b!7885764))

(assert (= (and b!7885591 ((_ is Star!21195) (reg!21524 r!14100))) b!7885765))

(assert (= (and b!7885591 ((_ is Union!21195) (reg!21524 r!14100))) b!7885766))

(declare-fun b!7885767 () Bool)

(declare-fun e!4655947 () Bool)

(assert (=> b!7885767 (= e!4655947 tp_is_empty!52789)))

(declare-fun b!7885769 () Bool)

(declare-fun tp!2345734 () Bool)

(assert (=> b!7885769 (= e!4655947 tp!2345734)))

(assert (=> b!7885596 (= tp!2345698 e!4655947)))

(declare-fun b!7885770 () Bool)

(declare-fun tp!2345733 () Bool)

(declare-fun tp!2345731 () Bool)

(assert (=> b!7885770 (= e!4655947 (and tp!2345733 tp!2345731))))

(declare-fun b!7885768 () Bool)

(declare-fun tp!2345735 () Bool)

(declare-fun tp!2345732 () Bool)

(assert (=> b!7885768 (= e!4655947 (and tp!2345735 tp!2345732))))

(assert (= (and b!7885596 ((_ is ElementMatch!21195) (regOne!42903 r!14100))) b!7885767))

(assert (= (and b!7885596 ((_ is Concat!30040) (regOne!42903 r!14100))) b!7885768))

(assert (= (and b!7885596 ((_ is Star!21195) (regOne!42903 r!14100))) b!7885769))

(assert (= (and b!7885596 ((_ is Union!21195) (regOne!42903 r!14100))) b!7885770))

(declare-fun b!7885771 () Bool)

(declare-fun e!4655948 () Bool)

(assert (=> b!7885771 (= e!4655948 tp_is_empty!52789)))

(declare-fun b!7885773 () Bool)

(declare-fun tp!2345739 () Bool)

(assert (=> b!7885773 (= e!4655948 tp!2345739)))

(assert (=> b!7885596 (= tp!2345699 e!4655948)))

(declare-fun b!7885774 () Bool)

(declare-fun tp!2345738 () Bool)

(declare-fun tp!2345736 () Bool)

(assert (=> b!7885774 (= e!4655948 (and tp!2345738 tp!2345736))))

(declare-fun b!7885772 () Bool)

(declare-fun tp!2345740 () Bool)

(declare-fun tp!2345737 () Bool)

(assert (=> b!7885772 (= e!4655948 (and tp!2345740 tp!2345737))))

(assert (= (and b!7885596 ((_ is ElementMatch!21195) (regTwo!42903 r!14100))) b!7885771))

(assert (= (and b!7885596 ((_ is Concat!30040) (regTwo!42903 r!14100))) b!7885772))

(assert (= (and b!7885596 ((_ is Star!21195) (regTwo!42903 r!14100))) b!7885773))

(assert (= (and b!7885596 ((_ is Union!21195) (regTwo!42903 r!14100))) b!7885774))

(check-sat (not b!7885764) (not b!7885773) (not bm!731472) (not b!7885769) tp_is_empty!52789 (not b!7885728) (not bm!731473) (not b!7885694) (not b!7885758) (not b!7885766) (not bm!731465) (not b!7885757) (not b!7885756) (not b!7885765) (not b!7885772) (not bm!731464) (not b!7885760) (not b!7885768) (not b!7885774) (not bm!731475) (not bm!731476) (not b!7885761) (not b!7885698) (not b!7885737) (not b!7885744) (not b!7885770) (not b!7885762))
(check-sat)
