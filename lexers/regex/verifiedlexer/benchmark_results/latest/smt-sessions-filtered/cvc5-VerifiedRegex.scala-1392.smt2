; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73616 () Bool)

(assert start!73616)

(declare-fun b!822584 () Bool)

(declare-fun e!543369 () Bool)

(declare-datatypes ((C!4654 0))(
  ( (C!4655 (val!2575 Int)) )
))
(declare-datatypes ((Regex!2042 0))(
  ( (ElementMatch!2042 (c!133319 C!4654)) (Concat!3773 (regOne!4596 Regex!2042) (regTwo!4596 Regex!2042)) (EmptyExpr!2042) (Star!2042 (reg!2371 Regex!2042)) (EmptyLang!2042) (Union!2042 (regOne!4597 Regex!2042) (regTwo!4597 Regex!2042)) )
))
(declare-fun r!27177 () Regex!2042)

(declare-fun RegexPrimitiveSize!85 (Regex!2042) Int)

(assert (=> b!822584 (= e!543369 (< (RegexPrimitiveSize!85 r!27177) 0))))

(declare-fun b!822585 () Bool)

(declare-fun e!543368 () Bool)

(declare-fun tp!257049 () Bool)

(declare-fun tp!257047 () Bool)

(assert (=> b!822585 (= e!543368 (and tp!257049 tp!257047))))

(declare-fun b!822586 () Bool)

(declare-fun tp!257048 () Bool)

(declare-fun tp!257046 () Bool)

(assert (=> b!822586 (= e!543368 (and tp!257048 tp!257046))))

(declare-fun b!822587 () Bool)

(declare-fun res!379568 () Bool)

(assert (=> b!822587 (=> (not res!379568) (not e!543369))))

(declare-fun c!13916 () C!4654)

(declare-datatypes ((List!8868 0))(
  ( (Nil!8852) (Cons!8852 (h!14253 C!4654) (t!93160 List!8868)) )
))
(declare-fun contains!1633 (List!8868 C!4654) Bool)

(declare-fun firstChars!13 (Regex!2042) List!8868)

(assert (=> b!822587 (= res!379568 (contains!1633 (firstChars!13 r!27177) c!13916))))

(declare-fun b!822588 () Bool)

(declare-fun tp_is_empty!3807 () Bool)

(assert (=> b!822588 (= e!543368 tp_is_empty!3807)))

(declare-fun res!379569 () Bool)

(assert (=> start!73616 (=> (not res!379569) (not e!543369))))

(declare-fun validRegex!595 (Regex!2042) Bool)

(assert (=> start!73616 (= res!379569 (validRegex!595 r!27177))))

(assert (=> start!73616 e!543369))

(assert (=> start!73616 e!543368))

(assert (=> start!73616 tp_is_empty!3807))

(declare-fun b!822589 () Bool)

(declare-fun tp!257045 () Bool)

(assert (=> b!822589 (= e!543368 tp!257045)))

(assert (= (and start!73616 res!379569) b!822587))

(assert (= (and b!822587 res!379568) b!822584))

(assert (= (and start!73616 (is-ElementMatch!2042 r!27177)) b!822588))

(assert (= (and start!73616 (is-Concat!3773 r!27177)) b!822586))

(assert (= (and start!73616 (is-Star!2042 r!27177)) b!822589))

(assert (= (and start!73616 (is-Union!2042 r!27177)) b!822585))

(declare-fun m!1063693 () Bool)

(assert (=> b!822584 m!1063693))

(declare-fun m!1063695 () Bool)

(assert (=> b!822587 m!1063695))

(assert (=> b!822587 m!1063695))

(declare-fun m!1063697 () Bool)

(assert (=> b!822587 m!1063697))

(declare-fun m!1063699 () Bool)

(assert (=> start!73616 m!1063699))

(push 1)

(assert (not b!822584))

(assert tp_is_empty!3807)

(assert (not b!822589))

(assert (not start!73616))

(assert (not b!822585))

(assert (not b!822587))

(assert (not b!822586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!259009 () Bool)

(declare-fun lt!317378 () Bool)

(declare-fun content!1281 (List!8868) (Set C!4654))

(assert (=> d!259009 (= lt!317378 (set.member c!13916 (content!1281 (firstChars!13 r!27177))))))

(declare-fun e!543381 () Bool)

(assert (=> d!259009 (= lt!317378 e!543381)))

(declare-fun res!379580 () Bool)

(assert (=> d!259009 (=> (not res!379580) (not e!543381))))

(assert (=> d!259009 (= res!379580 (is-Cons!8852 (firstChars!13 r!27177)))))

(assert (=> d!259009 (= (contains!1633 (firstChars!13 r!27177) c!13916) lt!317378)))

(declare-fun b!822612 () Bool)

(declare-fun e!543380 () Bool)

(assert (=> b!822612 (= e!543381 e!543380)))

(declare-fun res!379581 () Bool)

(assert (=> b!822612 (=> res!379581 e!543380)))

(assert (=> b!822612 (= res!379581 (= (h!14253 (firstChars!13 r!27177)) c!13916))))

(declare-fun b!822613 () Bool)

(assert (=> b!822613 (= e!543380 (contains!1633 (t!93160 (firstChars!13 r!27177)) c!13916))))

(assert (= (and d!259009 res!379580) b!822612))

(assert (= (and b!822612 (not res!379581)) b!822613))

(assert (=> d!259009 m!1063695))

(declare-fun m!1063709 () Bool)

(assert (=> d!259009 m!1063709))

(declare-fun m!1063711 () Bool)

(assert (=> d!259009 m!1063711))

(declare-fun m!1063713 () Bool)

(assert (=> b!822613 m!1063713))

(assert (=> b!822587 d!259009))

(declare-fun b!822660 () Bool)

(declare-fun e!543409 () List!8868)

(declare-fun e!543408 () List!8868)

(assert (=> b!822660 (= e!543409 e!543408)))

(declare-fun c!133345 () Bool)

(assert (=> b!822660 (= c!133345 (is-Union!2042 r!27177))))

(declare-fun b!822662 () Bool)

(declare-fun c!133341 () Bool)

(declare-fun nullable!493 (Regex!2042) Bool)

(assert (=> b!822662 (= c!133341 (nullable!493 (regOne!4596 r!27177)))))

(declare-fun e!543411 () List!8868)

(assert (=> b!822662 (= e!543408 e!543411)))

(declare-fun c!133342 () Bool)

(declare-fun bm!47107 () Bool)

(declare-fun call!47113 () List!8868)

(assert (=> bm!47107 (= call!47113 (firstChars!13 (ite c!133342 (reg!2371 r!27177) (ite c!133345 (regOne!4597 r!27177) (regTwo!4596 r!27177)))))))

(declare-fun b!822663 () Bool)

(declare-fun e!543412 () List!8868)

(assert (=> b!822663 (= e!543412 (Cons!8852 (c!133319 r!27177) Nil!8852))))

(declare-fun call!47114 () List!8868)

(declare-fun call!47112 () List!8868)

(declare-fun call!47116 () List!8868)

(declare-fun call!47115 () List!8868)

(declare-fun bm!47108 () Bool)

(declare-fun ++!2269 (List!8868 List!8868) List!8868)

(assert (=> bm!47108 (= call!47112 (++!2269 (ite c!133345 call!47116 call!47114) (ite c!133345 call!47115 call!47116)))))

(declare-fun b!822664 () Bool)

(assert (=> b!822664 (= e!543408 call!47112)))

(declare-fun b!822665 () Bool)

(declare-fun e!543410 () List!8868)

(assert (=> b!822665 (= e!543410 e!543412)))

(declare-fun c!133343 () Bool)

(assert (=> b!822665 (= c!133343 (is-ElementMatch!2042 r!27177))))

(declare-fun bm!47109 () Bool)

(assert (=> bm!47109 (= call!47116 call!47113)))

(declare-fun b!822666 () Bool)

(assert (=> b!822666 (= e!543411 call!47114)))

(declare-fun b!822667 () Bool)

(assert (=> b!822667 (= c!133342 (is-Star!2042 r!27177))))

(assert (=> b!822667 (= e!543412 e!543409)))

(declare-fun bm!47110 () Bool)

(assert (=> bm!47110 (= call!47114 call!47115)))

(declare-fun b!822668 () Bool)

(assert (=> b!822668 (= e!543409 call!47113)))

(declare-fun d!259013 () Bool)

(declare-fun c!133344 () Bool)

(assert (=> d!259013 (= c!133344 (or (is-EmptyExpr!2042 r!27177) (is-EmptyLang!2042 r!27177)))))

(assert (=> d!259013 (= (firstChars!13 r!27177) e!543410)))

(declare-fun b!822661 () Bool)

(assert (=> b!822661 (= e!543410 Nil!8852)))

(declare-fun b!822669 () Bool)

(assert (=> b!822669 (= e!543411 call!47112)))

(declare-fun bm!47111 () Bool)

(assert (=> bm!47111 (= call!47115 (firstChars!13 (ite c!133345 (regTwo!4597 r!27177) (regOne!4596 r!27177))))))

(assert (= (and d!259013 c!133344) b!822661))

(assert (= (and d!259013 (not c!133344)) b!822665))

(assert (= (and b!822665 c!133343) b!822663))

(assert (= (and b!822665 (not c!133343)) b!822667))

(assert (= (and b!822667 c!133342) b!822668))

(assert (= (and b!822667 (not c!133342)) b!822660))

(assert (= (and b!822660 c!133345) b!822664))

(assert (= (and b!822660 (not c!133345)) b!822662))

(assert (= (and b!822662 c!133341) b!822669))

(assert (= (and b!822662 (not c!133341)) b!822666))

(assert (= (or b!822669 b!822666) bm!47110))

(assert (= (or b!822664 bm!47110) bm!47111))

(assert (= (or b!822664 b!822669) bm!47109))

(assert (= (or b!822664 b!822669) bm!47108))

(assert (= (or b!822668 bm!47109) bm!47107))

(declare-fun m!1063721 () Bool)

(assert (=> b!822662 m!1063721))

(declare-fun m!1063723 () Bool)

(assert (=> bm!47107 m!1063723))

(declare-fun m!1063725 () Bool)

(assert (=> bm!47108 m!1063725))

(declare-fun m!1063727 () Bool)

(assert (=> bm!47111 m!1063727))

(assert (=> b!822587 d!259013))

(declare-fun bm!47129 () Bool)

(declare-fun call!47134 () Bool)

(declare-fun call!47135 () Bool)

(assert (=> bm!47129 (= call!47134 call!47135)))

(declare-fun b!822716 () Bool)

(declare-fun res!379609 () Bool)

(declare-fun e!543447 () Bool)

(assert (=> b!822716 (=> res!379609 e!543447)))

(assert (=> b!822716 (= res!379609 (not (is-Concat!3773 r!27177)))))

(declare-fun e!543449 () Bool)

(assert (=> b!822716 (= e!543449 e!543447)))

(declare-fun b!822717 () Bool)

(declare-fun e!543448 () Bool)

(assert (=> b!822717 (= e!543448 call!47135)))

(declare-fun bm!47130 () Bool)

(declare-fun c!133359 () Bool)

(declare-fun c!133360 () Bool)

(assert (=> bm!47130 (= call!47135 (validRegex!595 (ite c!133359 (reg!2371 r!27177) (ite c!133360 (regOne!4597 r!27177) (regTwo!4596 r!27177)))))))

(declare-fun b!822718 () Bool)

(declare-fun res!379612 () Bool)

(declare-fun e!543451 () Bool)

(assert (=> b!822718 (=> (not res!379612) (not e!543451))))

(assert (=> b!822718 (= res!379612 call!47134)))

(assert (=> b!822718 (= e!543449 e!543451)))

(declare-fun b!822719 () Bool)

(declare-fun e!543452 () Bool)

(assert (=> b!822719 (= e!543447 e!543452)))

(declare-fun res!379611 () Bool)

(assert (=> b!822719 (=> (not res!379611) (not e!543452))))

(declare-fun call!47136 () Bool)

(assert (=> b!822719 (= res!379611 call!47136)))

(declare-fun b!822720 () Bool)

(declare-fun e!543446 () Bool)

(declare-fun e!543450 () Bool)

(assert (=> b!822720 (= e!543446 e!543450)))

(assert (=> b!822720 (= c!133359 (is-Star!2042 r!27177))))

(declare-fun b!822721 () Bool)

(assert (=> b!822721 (= e!543451 call!47136)))

(declare-fun b!822722 () Bool)

(assert (=> b!822722 (= e!543452 call!47134)))

(declare-fun bm!47131 () Bool)

(assert (=> bm!47131 (= call!47136 (validRegex!595 (ite c!133360 (regTwo!4597 r!27177) (regOne!4596 r!27177))))))

(declare-fun d!259017 () Bool)

(declare-fun res!379608 () Bool)

(assert (=> d!259017 (=> res!379608 e!543446)))

(assert (=> d!259017 (= res!379608 (is-ElementMatch!2042 r!27177))))

(assert (=> d!259017 (= (validRegex!595 r!27177) e!543446)))

(declare-fun b!822723 () Bool)

(assert (=> b!822723 (= e!543450 e!543448)))

(declare-fun res!379610 () Bool)

(assert (=> b!822723 (= res!379610 (not (nullable!493 (reg!2371 r!27177))))))

(assert (=> b!822723 (=> (not res!379610) (not e!543448))))

(declare-fun b!822724 () Bool)

(assert (=> b!822724 (= e!543450 e!543449)))

(assert (=> b!822724 (= c!133360 (is-Union!2042 r!27177))))

(assert (= (and d!259017 (not res!379608)) b!822720))

(assert (= (and b!822720 c!133359) b!822723))

(assert (= (and b!822720 (not c!133359)) b!822724))

(assert (= (and b!822723 res!379610) b!822717))

(assert (= (and b!822724 c!133360) b!822718))

(assert (= (and b!822724 (not c!133360)) b!822716))

(assert (= (and b!822718 res!379612) b!822721))

(assert (= (and b!822716 (not res!379609)) b!822719))

(assert (= (and b!822719 res!379611) b!822722))

(assert (= (or b!822718 b!822722) bm!47129))

(assert (= (or b!822721 b!822719) bm!47131))

(assert (= (or b!822717 bm!47129) bm!47130))

(declare-fun m!1063737 () Bool)

(assert (=> bm!47130 m!1063737))

(declare-fun m!1063739 () Bool)

(assert (=> bm!47131 m!1063739))

(declare-fun m!1063741 () Bool)

(assert (=> b!822723 m!1063741))

(assert (=> start!73616 d!259017))

(declare-fun b!822774 () Bool)

(declare-fun e!543480 () Int)

(declare-fun e!543481 () Int)

(assert (=> b!822774 (= e!543480 e!543481)))

(declare-fun c!133387 () Bool)

(assert (=> b!822774 (= c!133387 (is-Star!2042 r!27177))))

(declare-fun b!822775 () Bool)

(declare-fun c!133384 () Bool)

(assert (=> b!822775 (= c!133384 (is-EmptyExpr!2042 r!27177))))

(declare-fun e!543482 () Int)

(assert (=> b!822775 (= e!543482 e!543480)))

(declare-fun b!822776 () Bool)

(declare-fun c!133386 () Bool)

(assert (=> b!822776 (= c!133386 (is-EmptyLang!2042 r!27177))))

(declare-fun e!543484 () Int)

(assert (=> b!822776 (= e!543481 e!543484)))

(declare-fun d!259021 () Bool)

(declare-fun lt!317386 () Int)

(assert (=> d!259021 (>= lt!317386 0)))

(declare-fun e!543483 () Int)

(assert (=> d!259021 (= lt!317386 e!543483)))

(declare-fun c!133385 () Bool)

(assert (=> d!259021 (= c!133385 (is-ElementMatch!2042 r!27177))))

(assert (=> d!259021 (= (RegexPrimitiveSize!85 r!27177) lt!317386)))

(declare-fun b!822777 () Bool)

(declare-fun call!47154 () Int)

(declare-fun call!47152 () Int)

(assert (=> b!822777 (= e!543482 (+ 1 call!47154 call!47152))))

(declare-fun b!822778 () Bool)

(assert (=> b!822778 (= e!543484 0)))

(declare-fun bm!47147 () Bool)

(declare-fun call!47153 () Int)

(assert (=> bm!47147 (= call!47153 call!47154)))

(declare-fun c!133383 () Bool)

(declare-fun bm!47148 () Bool)

(assert (=> bm!47148 (= call!47154 (RegexPrimitiveSize!85 (ite c!133383 (regOne!4596 r!27177) (ite c!133387 (reg!2371 r!27177) (regOne!4597 r!27177)))))))

(declare-fun b!822779 () Bool)

(assert (=> b!822779 (= e!543481 (+ 1 call!47153))))

(declare-fun b!822780 () Bool)

(assert (=> b!822780 (= e!543480 0)))

(declare-fun b!822781 () Bool)

(assert (=> b!822781 (= e!543484 (+ 1 call!47153 call!47152))))

(declare-fun bm!47149 () Bool)

(assert (=> bm!47149 (= call!47152 (RegexPrimitiveSize!85 (ite c!133383 (regTwo!4596 r!27177) (regTwo!4597 r!27177))))))

(declare-fun b!822782 () Bool)

(assert (=> b!822782 (= e!543483 e!543482)))

(assert (=> b!822782 (= c!133383 (is-Concat!3773 r!27177))))

(declare-fun b!822783 () Bool)

(assert (=> b!822783 (= e!543483 1)))

(assert (= (and d!259021 c!133385) b!822783))

(assert (= (and d!259021 (not c!133385)) b!822782))

(assert (= (and b!822782 c!133383) b!822777))

(assert (= (and b!822782 (not c!133383)) b!822775))

(assert (= (and b!822775 c!133384) b!822780))

(assert (= (and b!822775 (not c!133384)) b!822774))

(assert (= (and b!822774 c!133387) b!822779))

(assert (= (and b!822774 (not c!133387)) b!822776))

(assert (= (and b!822776 c!133386) b!822778))

(assert (= (and b!822776 (not c!133386)) b!822781))

(assert (= (or b!822779 b!822781) bm!47147))

(assert (= (or b!822777 bm!47147) bm!47148))

(assert (= (or b!822777 b!822781) bm!47149))

(declare-fun m!1063749 () Bool)

(assert (=> bm!47148 m!1063749))

(declare-fun m!1063751 () Bool)

(assert (=> bm!47149 m!1063751))

(assert (=> b!822584 d!259021))

(declare-fun b!822797 () Bool)

(declare-fun e!543487 () Bool)

(declare-fun tp!257076 () Bool)

(declare-fun tp!257075 () Bool)

(assert (=> b!822797 (= e!543487 (and tp!257076 tp!257075))))

(assert (=> b!822586 (= tp!257048 e!543487)))

(declare-fun b!822794 () Bool)

(assert (=> b!822794 (= e!543487 tp_is_empty!3807)))

(declare-fun b!822795 () Bool)

(declare-fun tp!257077 () Bool)

(declare-fun tp!257078 () Bool)

(assert (=> b!822795 (= e!543487 (and tp!257077 tp!257078))))

(declare-fun b!822796 () Bool)

(declare-fun tp!257079 () Bool)

(assert (=> b!822796 (= e!543487 tp!257079)))

(assert (= (and b!822586 (is-ElementMatch!2042 (regOne!4596 r!27177))) b!822794))

(assert (= (and b!822586 (is-Concat!3773 (regOne!4596 r!27177))) b!822795))

(assert (= (and b!822586 (is-Star!2042 (regOne!4596 r!27177))) b!822796))

(assert (= (and b!822586 (is-Union!2042 (regOne!4596 r!27177))) b!822797))

(declare-fun b!822801 () Bool)

(declare-fun e!543488 () Bool)

(declare-fun tp!257081 () Bool)

(declare-fun tp!257080 () Bool)

(assert (=> b!822801 (= e!543488 (and tp!257081 tp!257080))))

(assert (=> b!822586 (= tp!257046 e!543488)))

(declare-fun b!822798 () Bool)

(assert (=> b!822798 (= e!543488 tp_is_empty!3807)))

(declare-fun b!822799 () Bool)

(declare-fun tp!257082 () Bool)

(declare-fun tp!257083 () Bool)

(assert (=> b!822799 (= e!543488 (and tp!257082 tp!257083))))

(declare-fun b!822800 () Bool)

(declare-fun tp!257084 () Bool)

(assert (=> b!822800 (= e!543488 tp!257084)))

(assert (= (and b!822586 (is-ElementMatch!2042 (regTwo!4596 r!27177))) b!822798))

(assert (= (and b!822586 (is-Concat!3773 (regTwo!4596 r!27177))) b!822799))

(assert (= (and b!822586 (is-Star!2042 (regTwo!4596 r!27177))) b!822800))

(assert (= (and b!822586 (is-Union!2042 (regTwo!4596 r!27177))) b!822801))

(declare-fun b!822815 () Bool)

(declare-fun e!543494 () Bool)

(declare-fun tp!257086 () Bool)

(declare-fun tp!257085 () Bool)

(assert (=> b!822815 (= e!543494 (and tp!257086 tp!257085))))

(assert (=> b!822585 (= tp!257049 e!543494)))

(declare-fun b!822812 () Bool)

(assert (=> b!822812 (= e!543494 tp_is_empty!3807)))

(declare-fun b!822813 () Bool)

(declare-fun tp!257087 () Bool)

(declare-fun tp!257088 () Bool)

(assert (=> b!822813 (= e!543494 (and tp!257087 tp!257088))))

(declare-fun b!822814 () Bool)

(declare-fun tp!257089 () Bool)

(assert (=> b!822814 (= e!543494 tp!257089)))

(assert (= (and b!822585 (is-ElementMatch!2042 (regOne!4597 r!27177))) b!822812))

(assert (= (and b!822585 (is-Concat!3773 (regOne!4597 r!27177))) b!822813))

(assert (= (and b!822585 (is-Star!2042 (regOne!4597 r!27177))) b!822814))

(assert (= (and b!822585 (is-Union!2042 (regOne!4597 r!27177))) b!822815))

(declare-fun b!822819 () Bool)

(declare-fun e!543495 () Bool)

(declare-fun tp!257091 () Bool)

(declare-fun tp!257090 () Bool)

(assert (=> b!822819 (= e!543495 (and tp!257091 tp!257090))))

(assert (=> b!822585 (= tp!257047 e!543495)))

(declare-fun b!822816 () Bool)

(assert (=> b!822816 (= e!543495 tp_is_empty!3807)))

(declare-fun b!822817 () Bool)

(declare-fun tp!257092 () Bool)

(declare-fun tp!257093 () Bool)

(assert (=> b!822817 (= e!543495 (and tp!257092 tp!257093))))

(declare-fun b!822818 () Bool)

(declare-fun tp!257094 () Bool)

(assert (=> b!822818 (= e!543495 tp!257094)))

(assert (= (and b!822585 (is-ElementMatch!2042 (regTwo!4597 r!27177))) b!822816))

(assert (= (and b!822585 (is-Concat!3773 (regTwo!4597 r!27177))) b!822817))

(assert (= (and b!822585 (is-Star!2042 (regTwo!4597 r!27177))) b!822818))

(assert (= (and b!822585 (is-Union!2042 (regTwo!4597 r!27177))) b!822819))

(declare-fun b!822823 () Bool)

(declare-fun e!543496 () Bool)

(declare-fun tp!257096 () Bool)

(declare-fun tp!257095 () Bool)

(assert (=> b!822823 (= e!543496 (and tp!257096 tp!257095))))

(assert (=> b!822589 (= tp!257045 e!543496)))

(declare-fun b!822820 () Bool)

(assert (=> b!822820 (= e!543496 tp_is_empty!3807)))

(declare-fun b!822821 () Bool)

(declare-fun tp!257097 () Bool)

(declare-fun tp!257098 () Bool)

(assert (=> b!822821 (= e!543496 (and tp!257097 tp!257098))))

(declare-fun b!822822 () Bool)

(declare-fun tp!257099 () Bool)

(assert (=> b!822822 (= e!543496 tp!257099)))

(assert (= (and b!822589 (is-ElementMatch!2042 (reg!2371 r!27177))) b!822820))

(assert (= (and b!822589 (is-Concat!3773 (reg!2371 r!27177))) b!822821))

(assert (= (and b!822589 (is-Star!2042 (reg!2371 r!27177))) b!822822))

(assert (= (and b!822589 (is-Union!2042 (reg!2371 r!27177))) b!822823))

(push 1)

(assert (not bm!47107))

(assert tp_is_empty!3807)

(assert (not b!822797))

(assert (not b!822819))

(assert (not b!822800))

(assert (not b!822799))

(assert (not bm!47108))

(assert (not b!822822))

(assert (not b!822723))

(assert (not b!822815))

(assert (not b!822813))

(assert (not bm!47149))

(assert (not bm!47111))

(assert (not bm!47148))

(assert (not b!822613))

(assert (not b!822818))

(assert (not b!822795))

(assert (not bm!47131))

(assert (not b!822821))

(assert (not b!822814))

(assert (not d!259009))

(assert (not b!822817))

(assert (not b!822823))

(assert (not b!822662))

(assert (not b!822796))

(assert (not bm!47130))

(assert (not b!822801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

