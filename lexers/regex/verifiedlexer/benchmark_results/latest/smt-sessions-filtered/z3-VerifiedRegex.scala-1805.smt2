; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89986 () Bool)

(assert start!89986)

(declare-fun b!1033852 () Bool)

(declare-fun e!658700 () Bool)

(declare-fun tp_is_empty!5381 () Bool)

(assert (=> b!1033852 (= e!658700 tp_is_empty!5381)))

(declare-fun b!1033853 () Bool)

(declare-fun tp!312980 () Bool)

(declare-fun tp!312977 () Bool)

(assert (=> b!1033853 (= e!658700 (and tp!312980 tp!312977))))

(declare-fun b!1033854 () Bool)

(declare-fun res!464418 () Bool)

(declare-fun e!658698 () Bool)

(assert (=> b!1033854 (=> res!464418 e!658698)))

(declare-datatypes ((C!6308 0))(
  ( (C!6309 (val!3402 Int)) )
))
(declare-datatypes ((Regex!2869 0))(
  ( (ElementMatch!2869 (c!171566 C!6308)) (Concat!4702 (regOne!6250 Regex!2869) (regTwo!6250 Regex!2869)) (EmptyExpr!2869) (Star!2869 (reg!3198 Regex!2869)) (EmptyLang!2869) (Union!2869 (regOne!6251 Regex!2869) (regTwo!6251 Regex!2869)) )
))
(declare-fun r!15766 () Regex!2869)

(declare-fun validRegex!1338 (Regex!2869) Bool)

(assert (=> b!1033854 (= res!464418 (not (validRegex!1338 (regOne!6250 r!15766))))))

(declare-fun b!1033855 () Bool)

(declare-fun tp!312978 () Bool)

(assert (=> b!1033855 (= e!658700 tp!312978)))

(declare-fun b!1033856 () Bool)

(declare-fun e!658699 () Bool)

(declare-fun tp!312975 () Bool)

(assert (=> b!1033856 (= e!658699 (and tp_is_empty!5381 tp!312975))))

(declare-fun b!1033857 () Bool)

(assert (=> b!1033857 (= e!658698 (validRegex!1338 (regTwo!6250 r!15766)))))

(declare-fun b!1033859 () Bool)

(declare-fun tp!312976 () Bool)

(declare-fun tp!312979 () Bool)

(assert (=> b!1033859 (= e!658700 (and tp!312976 tp!312979))))

(declare-fun res!464420 () Bool)

(declare-fun e!658701 () Bool)

(assert (=> start!89986 (=> (not res!464420) (not e!658701))))

(assert (=> start!89986 (= res!464420 (validRegex!1338 r!15766))))

(assert (=> start!89986 e!658701))

(assert (=> start!89986 e!658700))

(assert (=> start!89986 e!658699))

(declare-fun b!1033858 () Bool)

(assert (=> b!1033858 (= e!658701 (not e!658698))))

(declare-fun res!464419 () Bool)

(assert (=> b!1033858 (=> res!464419 e!658698)))

(declare-fun lt!356504 () Bool)

(get-info :version)

(assert (=> b!1033858 (= res!464419 (or lt!356504 (and ((_ is Concat!4702) r!15766) ((_ is EmptyExpr!2869) (regOne!6250 r!15766))) (and ((_ is Concat!4702) r!15766) ((_ is EmptyExpr!2869) (regTwo!6250 r!15766))) (not ((_ is Concat!4702) r!15766))))))

(declare-datatypes ((List!10099 0))(
  ( (Nil!10083) (Cons!10083 (h!15484 C!6308) (t!101145 List!10099)) )
))
(declare-fun s!10566 () List!10099)

(declare-fun matchRSpec!668 (Regex!2869 List!10099) Bool)

(assert (=> b!1033858 (= lt!356504 (matchRSpec!668 r!15766 s!10566))))

(declare-fun matchR!1405 (Regex!2869 List!10099) Bool)

(assert (=> b!1033858 (= lt!356504 (matchR!1405 r!15766 s!10566))))

(declare-datatypes ((Unit!15413 0))(
  ( (Unit!15414) )
))
(declare-fun lt!356505 () Unit!15413)

(declare-fun mainMatchTheorem!668 (Regex!2869 List!10099) Unit!15413)

(assert (=> b!1033858 (= lt!356505 (mainMatchTheorem!668 r!15766 s!10566))))

(assert (= (and start!89986 res!464420) b!1033858))

(assert (= (and b!1033858 (not res!464419)) b!1033854))

(assert (= (and b!1033854 (not res!464418)) b!1033857))

(assert (= (and start!89986 ((_ is ElementMatch!2869) r!15766)) b!1033852))

(assert (= (and start!89986 ((_ is Concat!4702) r!15766)) b!1033853))

(assert (= (and start!89986 ((_ is Star!2869) r!15766)) b!1033855))

(assert (= (and start!89986 ((_ is Union!2869) r!15766)) b!1033859))

(assert (= (and start!89986 ((_ is Cons!10083) s!10566)) b!1033856))

(declare-fun m!1206021 () Bool)

(assert (=> b!1033854 m!1206021))

(declare-fun m!1206023 () Bool)

(assert (=> b!1033857 m!1206023))

(declare-fun m!1206025 () Bool)

(assert (=> start!89986 m!1206025))

(declare-fun m!1206027 () Bool)

(assert (=> b!1033858 m!1206027))

(declare-fun m!1206029 () Bool)

(assert (=> b!1033858 m!1206029))

(declare-fun m!1206031 () Bool)

(assert (=> b!1033858 m!1206031))

(check-sat (not b!1033853) (not start!89986) (not b!1033858) (not b!1033859) (not b!1033856) (not b!1033855) tp_is_empty!5381 (not b!1033854) (not b!1033857))
(check-sat)
(get-model)

(declare-fun b!1034066 () Bool)

(assert (=> b!1034066 true))

(assert (=> b!1034066 true))

(declare-fun bs!247524 () Bool)

(declare-fun b!1034063 () Bool)

(assert (= bs!247524 (and b!1034063 b!1034066)))

(declare-fun lambda!37158 () Int)

(declare-fun lambda!37157 () Int)

(assert (=> bs!247524 (not (= lambda!37158 lambda!37157))))

(assert (=> b!1034063 true))

(assert (=> b!1034063 true))

(declare-fun b!1034061 () Bool)

(declare-fun e!658816 () Bool)

(assert (=> b!1034061 (= e!658816 (= s!10566 (Cons!10083 (c!171566 r!15766) Nil!10083)))))

(declare-fun b!1034062 () Bool)

(declare-fun e!658815 () Bool)

(declare-fun e!658813 () Bool)

(assert (=> b!1034062 (= e!658815 e!658813)))

(declare-fun c!171609 () Bool)

(assert (=> b!1034062 (= c!171609 ((_ is Star!2869) r!15766))))

(declare-fun call!71433 () Bool)

(assert (=> b!1034063 (= e!658813 call!71433)))

(declare-fun d!296092 () Bool)

(declare-fun c!171608 () Bool)

(assert (=> d!296092 (= c!171608 ((_ is EmptyExpr!2869) r!15766))))

(declare-fun e!658812 () Bool)

(assert (=> d!296092 (= (matchRSpec!668 r!15766 s!10566) e!658812)))

(declare-fun b!1034064 () Bool)

(declare-fun call!71432 () Bool)

(assert (=> b!1034064 (= e!658812 call!71432)))

(declare-fun b!1034065 () Bool)

(declare-fun e!658814 () Bool)

(assert (=> b!1034065 (= e!658815 e!658814)))

(declare-fun res!464505 () Bool)

(assert (=> b!1034065 (= res!464505 (matchRSpec!668 (regOne!6251 r!15766) s!10566))))

(assert (=> b!1034065 (=> res!464505 e!658814)))

(declare-fun e!658811 () Bool)

(assert (=> b!1034066 (= e!658811 call!71433)))

(declare-fun b!1034067 () Bool)

(declare-fun c!171606 () Bool)

(assert (=> b!1034067 (= c!171606 ((_ is Union!2869) r!15766))))

(assert (=> b!1034067 (= e!658816 e!658815)))

(declare-fun b!1034068 () Bool)

(declare-fun c!171607 () Bool)

(assert (=> b!1034068 (= c!171607 ((_ is ElementMatch!2869) r!15766))))

(declare-fun e!658817 () Bool)

(assert (=> b!1034068 (= e!658817 e!658816)))

(declare-fun b!1034069 () Bool)

(assert (=> b!1034069 (= e!658814 (matchRSpec!668 (regTwo!6251 r!15766) s!10566))))

(declare-fun bm!71427 () Bool)

(declare-fun isEmpty!6472 (List!10099) Bool)

(assert (=> bm!71427 (= call!71432 (isEmpty!6472 s!10566))))

(declare-fun b!1034070 () Bool)

(assert (=> b!1034070 (= e!658812 e!658817)))

(declare-fun res!464506 () Bool)

(assert (=> b!1034070 (= res!464506 (not ((_ is EmptyLang!2869) r!15766)))))

(assert (=> b!1034070 (=> (not res!464506) (not e!658817))))

(declare-fun bm!71428 () Bool)

(declare-fun Exists!596 (Int) Bool)

(assert (=> bm!71428 (= call!71433 (Exists!596 (ite c!171609 lambda!37157 lambda!37158)))))

(declare-fun b!1034071 () Bool)

(declare-fun res!464507 () Bool)

(assert (=> b!1034071 (=> res!464507 e!658811)))

(assert (=> b!1034071 (= res!464507 call!71432)))

(assert (=> b!1034071 (= e!658813 e!658811)))

(assert (= (and d!296092 c!171608) b!1034064))

(assert (= (and d!296092 (not c!171608)) b!1034070))

(assert (= (and b!1034070 res!464506) b!1034068))

(assert (= (and b!1034068 c!171607) b!1034061))

(assert (= (and b!1034068 (not c!171607)) b!1034067))

(assert (= (and b!1034067 c!171606) b!1034065))

(assert (= (and b!1034067 (not c!171606)) b!1034062))

(assert (= (and b!1034065 (not res!464505)) b!1034069))

(assert (= (and b!1034062 c!171609) b!1034071))

(assert (= (and b!1034062 (not c!171609)) b!1034063))

(assert (= (and b!1034071 (not res!464507)) b!1034066))

(assert (= (or b!1034066 b!1034063) bm!71428))

(assert (= (or b!1034064 b!1034071) bm!71427))

(declare-fun m!1206073 () Bool)

(assert (=> b!1034065 m!1206073))

(declare-fun m!1206075 () Bool)

(assert (=> b!1034069 m!1206075))

(declare-fun m!1206077 () Bool)

(assert (=> bm!71427 m!1206077))

(declare-fun m!1206079 () Bool)

(assert (=> bm!71428 m!1206079))

(assert (=> b!1033858 d!296092))

(declare-fun b!1034104 () Bool)

(declare-fun e!658838 () Bool)

(declare-fun lt!356514 () Bool)

(assert (=> b!1034104 (= e!658838 (not lt!356514))))

(declare-fun b!1034105 () Bool)

(declare-fun e!658834 () Bool)

(declare-fun head!1917 (List!10099) C!6308)

(assert (=> b!1034105 (= e!658834 (= (head!1917 s!10566) (c!171566 r!15766)))))

(declare-fun b!1034106 () Bool)

(declare-fun e!658832 () Bool)

(assert (=> b!1034106 (= e!658832 e!658838)))

(declare-fun c!171618 () Bool)

(assert (=> b!1034106 (= c!171618 ((_ is EmptyLang!2869) r!15766))))

(declare-fun b!1034107 () Bool)

(declare-fun res!464529 () Bool)

(assert (=> b!1034107 (=> (not res!464529) (not e!658834))))

(declare-fun call!71436 () Bool)

(assert (=> b!1034107 (= res!464529 (not call!71436))))

(declare-fun b!1034108 () Bool)

(declare-fun res!464531 () Bool)

(declare-fun e!658835 () Bool)

(assert (=> b!1034108 (=> res!464531 e!658835)))

(assert (=> b!1034108 (= res!464531 (not ((_ is ElementMatch!2869) r!15766)))))

(assert (=> b!1034108 (= e!658838 e!658835)))

(declare-fun b!1034109 () Bool)

(declare-fun res!464526 () Bool)

(declare-fun e!658833 () Bool)

(assert (=> b!1034109 (=> res!464526 e!658833)))

(declare-fun tail!1479 (List!10099) List!10099)

(assert (=> b!1034109 (= res!464526 (not (isEmpty!6472 (tail!1479 s!10566))))))

(declare-fun b!1034110 () Bool)

(declare-fun e!658837 () Bool)

(assert (=> b!1034110 (= e!658835 e!658837)))

(declare-fun res!464530 () Bool)

(assert (=> b!1034110 (=> (not res!464530) (not e!658837))))

(assert (=> b!1034110 (= res!464530 (not lt!356514))))

(declare-fun b!1034111 () Bool)

(assert (=> b!1034111 (= e!658833 (not (= (head!1917 s!10566) (c!171566 r!15766))))))

(declare-fun b!1034112 () Bool)

(assert (=> b!1034112 (= e!658837 e!658833)))

(declare-fun res!464524 () Bool)

(assert (=> b!1034112 (=> res!464524 e!658833)))

(assert (=> b!1034112 (= res!464524 call!71436)))

(declare-fun bm!71431 () Bool)

(assert (=> bm!71431 (= call!71436 (isEmpty!6472 s!10566))))

(declare-fun b!1034113 () Bool)

(assert (=> b!1034113 (= e!658832 (= lt!356514 call!71436))))

(declare-fun d!296104 () Bool)

(assert (=> d!296104 e!658832))

(declare-fun c!171617 () Bool)

(assert (=> d!296104 (= c!171617 ((_ is EmptyExpr!2869) r!15766))))

(declare-fun e!658836 () Bool)

(assert (=> d!296104 (= lt!356514 e!658836)))

(declare-fun c!171616 () Bool)

(assert (=> d!296104 (= c!171616 (isEmpty!6472 s!10566))))

(assert (=> d!296104 (validRegex!1338 r!15766)))

(assert (=> d!296104 (= (matchR!1405 r!15766 s!10566) lt!356514)))

(declare-fun b!1034114 () Bool)

(declare-fun derivativeStep!762 (Regex!2869 C!6308) Regex!2869)

(assert (=> b!1034114 (= e!658836 (matchR!1405 (derivativeStep!762 r!15766 (head!1917 s!10566)) (tail!1479 s!10566)))))

(declare-fun b!1034115 () Bool)

(declare-fun nullable!962 (Regex!2869) Bool)

(assert (=> b!1034115 (= e!658836 (nullable!962 r!15766))))

(declare-fun b!1034116 () Bool)

(declare-fun res!464528 () Bool)

(assert (=> b!1034116 (=> res!464528 e!658835)))

(assert (=> b!1034116 (= res!464528 e!658834)))

(declare-fun res!464525 () Bool)

(assert (=> b!1034116 (=> (not res!464525) (not e!658834))))

(assert (=> b!1034116 (= res!464525 lt!356514)))

(declare-fun b!1034117 () Bool)

(declare-fun res!464527 () Bool)

(assert (=> b!1034117 (=> (not res!464527) (not e!658834))))

(assert (=> b!1034117 (= res!464527 (isEmpty!6472 (tail!1479 s!10566)))))

(assert (= (and d!296104 c!171616) b!1034115))

(assert (= (and d!296104 (not c!171616)) b!1034114))

(assert (= (and d!296104 c!171617) b!1034113))

(assert (= (and d!296104 (not c!171617)) b!1034106))

(assert (= (and b!1034106 c!171618) b!1034104))

(assert (= (and b!1034106 (not c!171618)) b!1034108))

(assert (= (and b!1034108 (not res!464531)) b!1034116))

(assert (= (and b!1034116 res!464525) b!1034107))

(assert (= (and b!1034107 res!464529) b!1034117))

(assert (= (and b!1034117 res!464527) b!1034105))

(assert (= (and b!1034116 (not res!464528)) b!1034110))

(assert (= (and b!1034110 res!464530) b!1034112))

(assert (= (and b!1034112 (not res!464524)) b!1034109))

(assert (= (and b!1034109 (not res!464526)) b!1034111))

(assert (= (or b!1034113 b!1034107 b!1034112) bm!71431))

(declare-fun m!1206081 () Bool)

(assert (=> b!1034111 m!1206081))

(declare-fun m!1206083 () Bool)

(assert (=> b!1034115 m!1206083))

(assert (=> d!296104 m!1206077))

(assert (=> d!296104 m!1206025))

(declare-fun m!1206085 () Bool)

(assert (=> b!1034117 m!1206085))

(assert (=> b!1034117 m!1206085))

(declare-fun m!1206087 () Bool)

(assert (=> b!1034117 m!1206087))

(assert (=> b!1034109 m!1206085))

(assert (=> b!1034109 m!1206085))

(assert (=> b!1034109 m!1206087))

(assert (=> b!1034114 m!1206081))

(assert (=> b!1034114 m!1206081))

(declare-fun m!1206089 () Bool)

(assert (=> b!1034114 m!1206089))

(assert (=> b!1034114 m!1206085))

(assert (=> b!1034114 m!1206089))

(assert (=> b!1034114 m!1206085))

(declare-fun m!1206091 () Bool)

(assert (=> b!1034114 m!1206091))

(assert (=> bm!71431 m!1206077))

(assert (=> b!1034105 m!1206081))

(assert (=> b!1033858 d!296104))

(declare-fun d!296106 () Bool)

(assert (=> d!296106 (= (matchR!1405 r!15766 s!10566) (matchRSpec!668 r!15766 s!10566))))

(declare-fun lt!356517 () Unit!15413)

(declare-fun choose!6594 (Regex!2869 List!10099) Unit!15413)

(assert (=> d!296106 (= lt!356517 (choose!6594 r!15766 s!10566))))

(assert (=> d!296106 (validRegex!1338 r!15766)))

(assert (=> d!296106 (= (mainMatchTheorem!668 r!15766 s!10566) lt!356517)))

(declare-fun bs!247525 () Bool)

(assert (= bs!247525 d!296106))

(assert (=> bs!247525 m!1206029))

(assert (=> bs!247525 m!1206027))

(declare-fun m!1206093 () Bool)

(assert (=> bs!247525 m!1206093))

(assert (=> bs!247525 m!1206025))

(assert (=> b!1033858 d!296106))

(declare-fun b!1034136 () Bool)

(declare-fun e!658857 () Bool)

(declare-fun call!71445 () Bool)

(assert (=> b!1034136 (= e!658857 call!71445)))

(declare-fun b!1034137 () Bool)

(declare-fun e!658856 () Bool)

(declare-fun e!658858 () Bool)

(assert (=> b!1034137 (= e!658856 e!658858)))

(declare-fun res!464546 () Bool)

(assert (=> b!1034137 (= res!464546 (not (nullable!962 (reg!3198 (regOne!6250 r!15766)))))))

(assert (=> b!1034137 (=> (not res!464546) (not e!658858))))

(declare-fun b!1034138 () Bool)

(declare-fun call!71444 () Bool)

(assert (=> b!1034138 (= e!658858 call!71444)))

(declare-fun b!1034139 () Bool)

(declare-fun res!464544 () Bool)

(declare-fun e!658859 () Bool)

(assert (=> b!1034139 (=> (not res!464544) (not e!658859))))

(declare-fun call!71443 () Bool)

(assert (=> b!1034139 (= res!464544 call!71443)))

(declare-fun e!658853 () Bool)

(assert (=> b!1034139 (= e!658853 e!658859)))

(declare-fun bm!71439 () Bool)

(declare-fun c!171624 () Bool)

(assert (=> bm!71439 (= call!71445 (validRegex!1338 (ite c!171624 (regTwo!6251 (regOne!6250 r!15766)) (regTwo!6250 (regOne!6250 r!15766)))))))

(declare-fun bm!71440 () Bool)

(declare-fun c!171623 () Bool)

(assert (=> bm!71440 (= call!71444 (validRegex!1338 (ite c!171623 (reg!3198 (regOne!6250 r!15766)) (ite c!171624 (regOne!6251 (regOne!6250 r!15766)) (regOne!6250 (regOne!6250 r!15766))))))))

(declare-fun b!1034140 () Bool)

(declare-fun e!658855 () Bool)

(assert (=> b!1034140 (= e!658855 e!658857)))

(declare-fun res!464543 () Bool)

(assert (=> b!1034140 (=> (not res!464543) (not e!658857))))

(assert (=> b!1034140 (= res!464543 call!71443)))

(declare-fun b!1034141 () Bool)

(declare-fun e!658854 () Bool)

(assert (=> b!1034141 (= e!658854 e!658856)))

(assert (=> b!1034141 (= c!171623 ((_ is Star!2869) (regOne!6250 r!15766)))))

(declare-fun b!1034142 () Bool)

(assert (=> b!1034142 (= e!658856 e!658853)))

(assert (=> b!1034142 (= c!171624 ((_ is Union!2869) (regOne!6250 r!15766)))))

(declare-fun b!1034143 () Bool)

(declare-fun res!464542 () Bool)

(assert (=> b!1034143 (=> res!464542 e!658855)))

(assert (=> b!1034143 (= res!464542 (not ((_ is Concat!4702) (regOne!6250 r!15766))))))

(assert (=> b!1034143 (= e!658853 e!658855)))

(declare-fun b!1034144 () Bool)

(assert (=> b!1034144 (= e!658859 call!71445)))

(declare-fun bm!71438 () Bool)

(assert (=> bm!71438 (= call!71443 call!71444)))

(declare-fun d!296108 () Bool)

(declare-fun res!464545 () Bool)

(assert (=> d!296108 (=> res!464545 e!658854)))

(assert (=> d!296108 (= res!464545 ((_ is ElementMatch!2869) (regOne!6250 r!15766)))))

(assert (=> d!296108 (= (validRegex!1338 (regOne!6250 r!15766)) e!658854)))

(assert (= (and d!296108 (not res!464545)) b!1034141))

(assert (= (and b!1034141 c!171623) b!1034137))

(assert (= (and b!1034141 (not c!171623)) b!1034142))

(assert (= (and b!1034137 res!464546) b!1034138))

(assert (= (and b!1034142 c!171624) b!1034139))

(assert (= (and b!1034142 (not c!171624)) b!1034143))

(assert (= (and b!1034139 res!464544) b!1034144))

(assert (= (and b!1034143 (not res!464542)) b!1034140))

(assert (= (and b!1034140 res!464543) b!1034136))

(assert (= (or b!1034144 b!1034136) bm!71439))

(assert (= (or b!1034139 b!1034140) bm!71438))

(assert (= (or b!1034138 bm!71438) bm!71440))

(declare-fun m!1206095 () Bool)

(assert (=> b!1034137 m!1206095))

(declare-fun m!1206097 () Bool)

(assert (=> bm!71439 m!1206097))

(declare-fun m!1206099 () Bool)

(assert (=> bm!71440 m!1206099))

(assert (=> b!1033854 d!296108))

(declare-fun b!1034145 () Bool)

(declare-fun e!658864 () Bool)

(declare-fun call!71448 () Bool)

(assert (=> b!1034145 (= e!658864 call!71448)))

(declare-fun b!1034146 () Bool)

(declare-fun e!658863 () Bool)

(declare-fun e!658865 () Bool)

(assert (=> b!1034146 (= e!658863 e!658865)))

(declare-fun res!464551 () Bool)

(assert (=> b!1034146 (= res!464551 (not (nullable!962 (reg!3198 (regTwo!6250 r!15766)))))))

(assert (=> b!1034146 (=> (not res!464551) (not e!658865))))

(declare-fun b!1034147 () Bool)

(declare-fun call!71447 () Bool)

(assert (=> b!1034147 (= e!658865 call!71447)))

(declare-fun b!1034148 () Bool)

(declare-fun res!464549 () Bool)

(declare-fun e!658866 () Bool)

(assert (=> b!1034148 (=> (not res!464549) (not e!658866))))

(declare-fun call!71446 () Bool)

(assert (=> b!1034148 (= res!464549 call!71446)))

(declare-fun e!658860 () Bool)

(assert (=> b!1034148 (= e!658860 e!658866)))

(declare-fun bm!71442 () Bool)

(declare-fun c!171626 () Bool)

(assert (=> bm!71442 (= call!71448 (validRegex!1338 (ite c!171626 (regTwo!6251 (regTwo!6250 r!15766)) (regTwo!6250 (regTwo!6250 r!15766)))))))

(declare-fun bm!71443 () Bool)

(declare-fun c!171625 () Bool)

(assert (=> bm!71443 (= call!71447 (validRegex!1338 (ite c!171625 (reg!3198 (regTwo!6250 r!15766)) (ite c!171626 (regOne!6251 (regTwo!6250 r!15766)) (regOne!6250 (regTwo!6250 r!15766))))))))

(declare-fun b!1034149 () Bool)

(declare-fun e!658862 () Bool)

(assert (=> b!1034149 (= e!658862 e!658864)))

(declare-fun res!464548 () Bool)

(assert (=> b!1034149 (=> (not res!464548) (not e!658864))))

(assert (=> b!1034149 (= res!464548 call!71446)))

(declare-fun b!1034150 () Bool)

(declare-fun e!658861 () Bool)

(assert (=> b!1034150 (= e!658861 e!658863)))

(assert (=> b!1034150 (= c!171625 ((_ is Star!2869) (regTwo!6250 r!15766)))))

(declare-fun b!1034151 () Bool)

(assert (=> b!1034151 (= e!658863 e!658860)))

(assert (=> b!1034151 (= c!171626 ((_ is Union!2869) (regTwo!6250 r!15766)))))

(declare-fun b!1034152 () Bool)

(declare-fun res!464547 () Bool)

(assert (=> b!1034152 (=> res!464547 e!658862)))

(assert (=> b!1034152 (= res!464547 (not ((_ is Concat!4702) (regTwo!6250 r!15766))))))

(assert (=> b!1034152 (= e!658860 e!658862)))

(declare-fun b!1034153 () Bool)

(assert (=> b!1034153 (= e!658866 call!71448)))

(declare-fun bm!71441 () Bool)

(assert (=> bm!71441 (= call!71446 call!71447)))

(declare-fun d!296110 () Bool)

(declare-fun res!464550 () Bool)

(assert (=> d!296110 (=> res!464550 e!658861)))

(assert (=> d!296110 (= res!464550 ((_ is ElementMatch!2869) (regTwo!6250 r!15766)))))

(assert (=> d!296110 (= (validRegex!1338 (regTwo!6250 r!15766)) e!658861)))

(assert (= (and d!296110 (not res!464550)) b!1034150))

(assert (= (and b!1034150 c!171625) b!1034146))

(assert (= (and b!1034150 (not c!171625)) b!1034151))

(assert (= (and b!1034146 res!464551) b!1034147))

(assert (= (and b!1034151 c!171626) b!1034148))

(assert (= (and b!1034151 (not c!171626)) b!1034152))

(assert (= (and b!1034148 res!464549) b!1034153))

(assert (= (and b!1034152 (not res!464547)) b!1034149))

(assert (= (and b!1034149 res!464548) b!1034145))

(assert (= (or b!1034153 b!1034145) bm!71442))

(assert (= (or b!1034148 b!1034149) bm!71441))

(assert (= (or b!1034147 bm!71441) bm!71443))

(declare-fun m!1206101 () Bool)

(assert (=> b!1034146 m!1206101))

(declare-fun m!1206103 () Bool)

(assert (=> bm!71442 m!1206103))

(declare-fun m!1206105 () Bool)

(assert (=> bm!71443 m!1206105))

(assert (=> b!1033857 d!296110))

(declare-fun b!1034154 () Bool)

(declare-fun e!658871 () Bool)

(declare-fun call!71451 () Bool)

(assert (=> b!1034154 (= e!658871 call!71451)))

(declare-fun b!1034155 () Bool)

(declare-fun e!658870 () Bool)

(declare-fun e!658872 () Bool)

(assert (=> b!1034155 (= e!658870 e!658872)))

(declare-fun res!464556 () Bool)

(assert (=> b!1034155 (= res!464556 (not (nullable!962 (reg!3198 r!15766))))))

(assert (=> b!1034155 (=> (not res!464556) (not e!658872))))

(declare-fun b!1034156 () Bool)

(declare-fun call!71450 () Bool)

(assert (=> b!1034156 (= e!658872 call!71450)))

(declare-fun b!1034157 () Bool)

(declare-fun res!464554 () Bool)

(declare-fun e!658873 () Bool)

(assert (=> b!1034157 (=> (not res!464554) (not e!658873))))

(declare-fun call!71449 () Bool)

(assert (=> b!1034157 (= res!464554 call!71449)))

(declare-fun e!658867 () Bool)

(assert (=> b!1034157 (= e!658867 e!658873)))

(declare-fun bm!71445 () Bool)

(declare-fun c!171628 () Bool)

(assert (=> bm!71445 (= call!71451 (validRegex!1338 (ite c!171628 (regTwo!6251 r!15766) (regTwo!6250 r!15766))))))

(declare-fun c!171627 () Bool)

(declare-fun bm!71446 () Bool)

(assert (=> bm!71446 (= call!71450 (validRegex!1338 (ite c!171627 (reg!3198 r!15766) (ite c!171628 (regOne!6251 r!15766) (regOne!6250 r!15766)))))))

(declare-fun b!1034158 () Bool)

(declare-fun e!658869 () Bool)

(assert (=> b!1034158 (= e!658869 e!658871)))

(declare-fun res!464553 () Bool)

(assert (=> b!1034158 (=> (not res!464553) (not e!658871))))

(assert (=> b!1034158 (= res!464553 call!71449)))

(declare-fun b!1034159 () Bool)

(declare-fun e!658868 () Bool)

(assert (=> b!1034159 (= e!658868 e!658870)))

(assert (=> b!1034159 (= c!171627 ((_ is Star!2869) r!15766))))

(declare-fun b!1034160 () Bool)

(assert (=> b!1034160 (= e!658870 e!658867)))

(assert (=> b!1034160 (= c!171628 ((_ is Union!2869) r!15766))))

(declare-fun b!1034161 () Bool)

(declare-fun res!464552 () Bool)

(assert (=> b!1034161 (=> res!464552 e!658869)))

(assert (=> b!1034161 (= res!464552 (not ((_ is Concat!4702) r!15766)))))

(assert (=> b!1034161 (= e!658867 e!658869)))

(declare-fun b!1034162 () Bool)

(assert (=> b!1034162 (= e!658873 call!71451)))

(declare-fun bm!71444 () Bool)

(assert (=> bm!71444 (= call!71449 call!71450)))

(declare-fun d!296112 () Bool)

(declare-fun res!464555 () Bool)

(assert (=> d!296112 (=> res!464555 e!658868)))

(assert (=> d!296112 (= res!464555 ((_ is ElementMatch!2869) r!15766))))

(assert (=> d!296112 (= (validRegex!1338 r!15766) e!658868)))

(assert (= (and d!296112 (not res!464555)) b!1034159))

(assert (= (and b!1034159 c!171627) b!1034155))

(assert (= (and b!1034159 (not c!171627)) b!1034160))

(assert (= (and b!1034155 res!464556) b!1034156))

(assert (= (and b!1034160 c!171628) b!1034157))

(assert (= (and b!1034160 (not c!171628)) b!1034161))

(assert (= (and b!1034157 res!464554) b!1034162))

(assert (= (and b!1034161 (not res!464552)) b!1034158))

(assert (= (and b!1034158 res!464553) b!1034154))

(assert (= (or b!1034162 b!1034154) bm!71445))

(assert (= (or b!1034157 b!1034158) bm!71444))

(assert (= (or b!1034156 bm!71444) bm!71446))

(declare-fun m!1206107 () Bool)

(assert (=> b!1034155 m!1206107))

(declare-fun m!1206109 () Bool)

(assert (=> bm!71445 m!1206109))

(declare-fun m!1206111 () Bool)

(assert (=> bm!71446 m!1206111))

(assert (=> start!89986 d!296112))

(declare-fun b!1034174 () Bool)

(declare-fun e!658876 () Bool)

(declare-fun tp!313029 () Bool)

(declare-fun tp!313030 () Bool)

(assert (=> b!1034174 (= e!658876 (and tp!313029 tp!313030))))

(declare-fun b!1034175 () Bool)

(declare-fun tp!313031 () Bool)

(assert (=> b!1034175 (= e!658876 tp!313031)))

(declare-fun b!1034173 () Bool)

(assert (=> b!1034173 (= e!658876 tp_is_empty!5381)))

(declare-fun b!1034176 () Bool)

(declare-fun tp!313032 () Bool)

(declare-fun tp!313033 () Bool)

(assert (=> b!1034176 (= e!658876 (and tp!313032 tp!313033))))

(assert (=> b!1033853 (= tp!312980 e!658876)))

(assert (= (and b!1033853 ((_ is ElementMatch!2869) (regOne!6250 r!15766))) b!1034173))

(assert (= (and b!1033853 ((_ is Concat!4702) (regOne!6250 r!15766))) b!1034174))

(assert (= (and b!1033853 ((_ is Star!2869) (regOne!6250 r!15766))) b!1034175))

(assert (= (and b!1033853 ((_ is Union!2869) (regOne!6250 r!15766))) b!1034176))

(declare-fun b!1034178 () Bool)

(declare-fun e!658877 () Bool)

(declare-fun tp!313034 () Bool)

(declare-fun tp!313035 () Bool)

(assert (=> b!1034178 (= e!658877 (and tp!313034 tp!313035))))

(declare-fun b!1034179 () Bool)

(declare-fun tp!313036 () Bool)

(assert (=> b!1034179 (= e!658877 tp!313036)))

(declare-fun b!1034177 () Bool)

(assert (=> b!1034177 (= e!658877 tp_is_empty!5381)))

(declare-fun b!1034180 () Bool)

(declare-fun tp!313037 () Bool)

(declare-fun tp!313038 () Bool)

(assert (=> b!1034180 (= e!658877 (and tp!313037 tp!313038))))

(assert (=> b!1033853 (= tp!312977 e!658877)))

(assert (= (and b!1033853 ((_ is ElementMatch!2869) (regTwo!6250 r!15766))) b!1034177))

(assert (= (and b!1033853 ((_ is Concat!4702) (regTwo!6250 r!15766))) b!1034178))

(assert (= (and b!1033853 ((_ is Star!2869) (regTwo!6250 r!15766))) b!1034179))

(assert (= (and b!1033853 ((_ is Union!2869) (regTwo!6250 r!15766))) b!1034180))

(declare-fun b!1034182 () Bool)

(declare-fun e!658878 () Bool)

(declare-fun tp!313039 () Bool)

(declare-fun tp!313040 () Bool)

(assert (=> b!1034182 (= e!658878 (and tp!313039 tp!313040))))

(declare-fun b!1034183 () Bool)

(declare-fun tp!313041 () Bool)

(assert (=> b!1034183 (= e!658878 tp!313041)))

(declare-fun b!1034181 () Bool)

(assert (=> b!1034181 (= e!658878 tp_is_empty!5381)))

(declare-fun b!1034184 () Bool)

(declare-fun tp!313042 () Bool)

(declare-fun tp!313043 () Bool)

(assert (=> b!1034184 (= e!658878 (and tp!313042 tp!313043))))

(assert (=> b!1033859 (= tp!312976 e!658878)))

(assert (= (and b!1033859 ((_ is ElementMatch!2869) (regOne!6251 r!15766))) b!1034181))

(assert (= (and b!1033859 ((_ is Concat!4702) (regOne!6251 r!15766))) b!1034182))

(assert (= (and b!1033859 ((_ is Star!2869) (regOne!6251 r!15766))) b!1034183))

(assert (= (and b!1033859 ((_ is Union!2869) (regOne!6251 r!15766))) b!1034184))

(declare-fun b!1034186 () Bool)

(declare-fun e!658879 () Bool)

(declare-fun tp!313044 () Bool)

(declare-fun tp!313045 () Bool)

(assert (=> b!1034186 (= e!658879 (and tp!313044 tp!313045))))

(declare-fun b!1034187 () Bool)

(declare-fun tp!313046 () Bool)

(assert (=> b!1034187 (= e!658879 tp!313046)))

(declare-fun b!1034185 () Bool)

(assert (=> b!1034185 (= e!658879 tp_is_empty!5381)))

(declare-fun b!1034188 () Bool)

(declare-fun tp!313047 () Bool)

(declare-fun tp!313048 () Bool)

(assert (=> b!1034188 (= e!658879 (and tp!313047 tp!313048))))

(assert (=> b!1033859 (= tp!312979 e!658879)))

(assert (= (and b!1033859 ((_ is ElementMatch!2869) (regTwo!6251 r!15766))) b!1034185))

(assert (= (and b!1033859 ((_ is Concat!4702) (regTwo!6251 r!15766))) b!1034186))

(assert (= (and b!1033859 ((_ is Star!2869) (regTwo!6251 r!15766))) b!1034187))

(assert (= (and b!1033859 ((_ is Union!2869) (regTwo!6251 r!15766))) b!1034188))

(declare-fun b!1034193 () Bool)

(declare-fun e!658882 () Bool)

(declare-fun tp!313051 () Bool)

(assert (=> b!1034193 (= e!658882 (and tp_is_empty!5381 tp!313051))))

(assert (=> b!1033856 (= tp!312975 e!658882)))

(assert (= (and b!1033856 ((_ is Cons!10083) (t!101145 s!10566))) b!1034193))

(declare-fun b!1034195 () Bool)

(declare-fun e!658883 () Bool)

(declare-fun tp!313052 () Bool)

(declare-fun tp!313053 () Bool)

(assert (=> b!1034195 (= e!658883 (and tp!313052 tp!313053))))

(declare-fun b!1034196 () Bool)

(declare-fun tp!313054 () Bool)

(assert (=> b!1034196 (= e!658883 tp!313054)))

(declare-fun b!1034194 () Bool)

(assert (=> b!1034194 (= e!658883 tp_is_empty!5381)))

(declare-fun b!1034197 () Bool)

(declare-fun tp!313055 () Bool)

(declare-fun tp!313056 () Bool)

(assert (=> b!1034197 (= e!658883 (and tp!313055 tp!313056))))

(assert (=> b!1033855 (= tp!312978 e!658883)))

(assert (= (and b!1033855 ((_ is ElementMatch!2869) (reg!3198 r!15766))) b!1034194))

(assert (= (and b!1033855 ((_ is Concat!4702) (reg!3198 r!15766))) b!1034195))

(assert (= (and b!1033855 ((_ is Star!2869) (reg!3198 r!15766))) b!1034196))

(assert (= (and b!1033855 ((_ is Union!2869) (reg!3198 r!15766))) b!1034197))

(check-sat (not bm!71439) (not bm!71445) (not b!1034182) (not b!1034196) (not b!1034105) (not bm!71442) (not b!1034109) (not b!1034115) (not b!1034187) (not b!1034114) (not b!1034069) (not b!1034188) (not b!1034179) (not b!1034176) (not b!1034178) (not b!1034175) (not b!1034146) (not b!1034117) (not b!1034183) (not b!1034155) (not b!1034184) (not bm!71428) (not b!1034137) (not bm!71440) (not bm!71427) (not d!296106) (not b!1034195) (not bm!71446) (not b!1034111) (not b!1034197) (not b!1034186) (not b!1034174) (not b!1034180) (not b!1034065) (not bm!71431) (not d!296104) (not b!1034193) (not bm!71443) tp_is_empty!5381)
(check-sat)
