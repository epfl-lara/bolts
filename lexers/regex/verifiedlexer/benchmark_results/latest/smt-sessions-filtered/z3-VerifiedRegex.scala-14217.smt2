; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744438 () Bool)

(assert start!744438)

(declare-fun b!7887069 () Bool)

(declare-fun e!4656599 () Bool)

(declare-fun tp_is_empty!52813 () Bool)

(assert (=> b!7887069 (= e!4656599 tp_is_empty!52813)))

(declare-fun b!7887070 () Bool)

(declare-fun res!3130994 () Bool)

(declare-fun e!4656597 () Bool)

(assert (=> b!7887070 (=> (not res!3130994) (not e!4656597))))

(declare-datatypes ((C!42740 0))(
  ( (C!42741 (val!31832 Int)) )
))
(declare-datatypes ((Regex!21207 0))(
  ( (ElementMatch!21207 (c!1447859 C!42740)) (Concat!30052 (regOne!42926 Regex!21207) (regTwo!42926 Regex!21207)) (EmptyExpr!21207) (Star!21207 (reg!21536 Regex!21207)) (EmptyLang!21207) (Union!21207 (regOne!42927 Regex!21207) (regTwo!42927 Regex!21207)) )
))
(declare-fun r!14100 () Regex!21207)

(get-info :version)

(assert (=> b!7887070 (= res!3130994 (and (not ((_ is EmptyExpr!21207) r!14100)) (not ((_ is EmptyLang!21207) r!14100)) (not ((_ is ElementMatch!21207) r!14100)) ((_ is Union!21207) r!14100)))))

(declare-fun res!3130992 () Bool)

(assert (=> start!744438 (=> (not res!3130992) (not e!4656597))))

(declare-fun validRegex!11617 (Regex!21207) Bool)

(assert (=> start!744438 (= res!3130992 (validRegex!11617 r!14100))))

(assert (=> start!744438 e!4656597))

(assert (=> start!744438 e!4656599))

(declare-fun e!4656598 () Bool)

(assert (=> start!744438 e!4656598))

(declare-fun b!7887071 () Bool)

(declare-fun res!3130993 () Bool)

(assert (=> b!7887071 (=> (not res!3130993) (not e!4656597))))

(declare-datatypes ((List!74064 0))(
  ( (Nil!73940) (Cons!73940 (h!80388 C!42740) (t!388799 List!74064)) )
))
(declare-fun s!9586 () List!74064)

(declare-fun matchRSpec!4672 (Regex!21207 List!74064) Bool)

(assert (=> b!7887071 (= res!3130993 (not (matchRSpec!4672 (regOne!42927 r!14100) s!9586)))))

(declare-fun b!7887072 () Bool)

(declare-fun tp!2346353 () Bool)

(assert (=> b!7887072 (= e!4656598 (and tp_is_empty!52813 tp!2346353))))

(declare-fun b!7887073 () Bool)

(declare-fun lt!2681407 () Int)

(declare-fun regexDepth!511 (Regex!21207) Int)

(assert (=> b!7887073 (= e!4656597 (>= (+ lt!2681407 (regexDepth!511 (regTwo!42927 r!14100))) (+ lt!2681407 (regexDepth!511 r!14100))))))

(declare-fun size!42848 (List!74064) Int)

(assert (=> b!7887073 (= lt!2681407 (size!42848 s!9586))))

(declare-fun b!7887074 () Bool)

(declare-fun tp!2346355 () Bool)

(declare-fun tp!2346358 () Bool)

(assert (=> b!7887074 (= e!4656599 (and tp!2346355 tp!2346358))))

(declare-fun b!7887075 () Bool)

(declare-fun tp!2346354 () Bool)

(declare-fun tp!2346357 () Bool)

(assert (=> b!7887075 (= e!4656599 (and tp!2346354 tp!2346357))))

(declare-fun b!7887076 () Bool)

(declare-fun tp!2346356 () Bool)

(assert (=> b!7887076 (= e!4656599 tp!2346356)))

(assert (= (and start!744438 res!3130992) b!7887070))

(assert (= (and b!7887070 res!3130994) b!7887071))

(assert (= (and b!7887071 res!3130993) b!7887073))

(assert (= (and start!744438 ((_ is ElementMatch!21207) r!14100)) b!7887069))

(assert (= (and start!744438 ((_ is Concat!30052) r!14100)) b!7887074))

(assert (= (and start!744438 ((_ is Star!21207) r!14100)) b!7887076))

(assert (= (and start!744438 ((_ is Union!21207) r!14100)) b!7887075))

(assert (= (and start!744438 ((_ is Cons!73940) s!9586)) b!7887072))

(declare-fun m!8269442 () Bool)

(assert (=> start!744438 m!8269442))

(declare-fun m!8269444 () Bool)

(assert (=> b!7887071 m!8269444))

(declare-fun m!8269446 () Bool)

(assert (=> b!7887073 m!8269446))

(declare-fun m!8269448 () Bool)

(assert (=> b!7887073 m!8269448))

(declare-fun m!8269450 () Bool)

(assert (=> b!7887073 m!8269450))

(check-sat (not b!7887075) (not b!7887073) (not b!7887076) (not b!7887072) (not b!7887074) tp_is_empty!52813 (not start!744438) (not b!7887071))
(check-sat)
(get-model)

(declare-fun b!7887298 () Bool)

(assert (=> b!7887298 true))

(assert (=> b!7887298 true))

(declare-fun bs!1967442 () Bool)

(declare-fun b!7887302 () Bool)

(assert (= bs!1967442 (and b!7887302 b!7887298)))

(declare-fun lambda!472153 () Int)

(declare-fun lambda!472152 () Int)

(assert (=> bs!1967442 (not (= lambda!472153 lambda!472152))))

(assert (=> b!7887302 true))

(assert (=> b!7887302 true))

(declare-fun bm!731689 () Bool)

(declare-fun call!731694 () Bool)

(declare-fun isEmpty!42424 (List!74064) Bool)

(assert (=> bm!731689 (= call!731694 (isEmpty!42424 s!9586))))

(declare-fun b!7887292 () Bool)

(declare-fun e!4656721 () Bool)

(assert (=> b!7887292 (= e!4656721 call!731694)))

(declare-fun b!7887293 () Bool)

(declare-fun e!4656718 () Bool)

(assert (=> b!7887293 (= e!4656721 e!4656718)))

(declare-fun res!3131057 () Bool)

(assert (=> b!7887293 (= res!3131057 (not ((_ is EmptyLang!21207) (regOne!42927 r!14100))))))

(assert (=> b!7887293 (=> (not res!3131057) (not e!4656718))))

(declare-fun b!7887294 () Bool)

(declare-fun c!1447917 () Bool)

(assert (=> b!7887294 (= c!1447917 ((_ is Union!21207) (regOne!42927 r!14100)))))

(declare-fun e!4656722 () Bool)

(declare-fun e!4656720 () Bool)

(assert (=> b!7887294 (= e!4656722 e!4656720)))

(declare-fun b!7887295 () Bool)

(declare-fun e!4656719 () Bool)

(assert (=> b!7887295 (= e!4656719 (matchRSpec!4672 (regTwo!42927 (regOne!42927 r!14100)) s!9586))))

(declare-fun b!7887296 () Bool)

(declare-fun res!3131058 () Bool)

(declare-fun e!4656717 () Bool)

(assert (=> b!7887296 (=> res!3131058 e!4656717)))

(assert (=> b!7887296 (= res!3131058 call!731694)))

(declare-fun e!4656723 () Bool)

(assert (=> b!7887296 (= e!4656723 e!4656717)))

(declare-fun call!731695 () Bool)

(assert (=> b!7887298 (= e!4656717 call!731695)))

(declare-fun b!7887299 () Bool)

(assert (=> b!7887299 (= e!4656720 e!4656723)))

(declare-fun c!1447919 () Bool)

(assert (=> b!7887299 (= c!1447919 ((_ is Star!21207) (regOne!42927 r!14100)))))

(declare-fun bm!731690 () Bool)

(declare-fun Exists!4761 (Int) Bool)

(assert (=> bm!731690 (= call!731695 (Exists!4761 (ite c!1447919 lambda!472152 lambda!472153)))))

(declare-fun b!7887300 () Bool)

(assert (=> b!7887300 (= e!4656722 (= s!9586 (Cons!73940 (c!1447859 (regOne!42927 r!14100)) Nil!73940)))))

(declare-fun b!7887301 () Bool)

(assert (=> b!7887301 (= e!4656720 e!4656719)))

(declare-fun res!3131059 () Bool)

(assert (=> b!7887301 (= res!3131059 (matchRSpec!4672 (regOne!42927 (regOne!42927 r!14100)) s!9586))))

(assert (=> b!7887301 (=> res!3131059 e!4656719)))

(assert (=> b!7887302 (= e!4656723 call!731695)))

(declare-fun b!7887297 () Bool)

(declare-fun c!1447918 () Bool)

(assert (=> b!7887297 (= c!1447918 ((_ is ElementMatch!21207) (regOne!42927 r!14100)))))

(assert (=> b!7887297 (= e!4656718 e!4656722)))

(declare-fun d!2356540 () Bool)

(declare-fun c!1447920 () Bool)

(assert (=> d!2356540 (= c!1447920 ((_ is EmptyExpr!21207) (regOne!42927 r!14100)))))

(assert (=> d!2356540 (= (matchRSpec!4672 (regOne!42927 r!14100) s!9586) e!4656721)))

(assert (= (and d!2356540 c!1447920) b!7887292))

(assert (= (and d!2356540 (not c!1447920)) b!7887293))

(assert (= (and b!7887293 res!3131057) b!7887297))

(assert (= (and b!7887297 c!1447918) b!7887300))

(assert (= (and b!7887297 (not c!1447918)) b!7887294))

(assert (= (and b!7887294 c!1447917) b!7887301))

(assert (= (and b!7887294 (not c!1447917)) b!7887299))

(assert (= (and b!7887301 (not res!3131059)) b!7887295))

(assert (= (and b!7887299 c!1447919) b!7887296))

(assert (= (and b!7887299 (not c!1447919)) b!7887302))

(assert (= (and b!7887296 (not res!3131058)) b!7887298))

(assert (= (or b!7887298 b!7887302) bm!731690))

(assert (= (or b!7887292 b!7887296) bm!731689))

(declare-fun m!8269488 () Bool)

(assert (=> bm!731689 m!8269488))

(declare-fun m!8269490 () Bool)

(assert (=> b!7887295 m!8269490))

(declare-fun m!8269492 () Bool)

(assert (=> bm!731690 m!8269492))

(declare-fun m!8269494 () Bool)

(assert (=> b!7887301 m!8269494))

(assert (=> b!7887071 d!2356540))

(declare-fun b!7887325 () Bool)

(declare-fun e!4656744 () Bool)

(declare-fun call!731702 () Bool)

(assert (=> b!7887325 (= e!4656744 call!731702)))

(declare-fun b!7887326 () Bool)

(declare-fun e!4656741 () Bool)

(declare-fun e!4656743 () Bool)

(assert (=> b!7887326 (= e!4656741 e!4656743)))

(declare-fun c!1447926 () Bool)

(assert (=> b!7887326 (= c!1447926 ((_ is Star!21207) r!14100))))

(declare-fun bm!731697 () Bool)

(declare-fun call!731704 () Bool)

(declare-fun c!1447925 () Bool)

(assert (=> bm!731697 (= call!731704 (validRegex!11617 (ite c!1447925 (regTwo!42927 r!14100) (regOne!42926 r!14100))))))

(declare-fun bm!731698 () Bool)

(assert (=> bm!731698 (= call!731702 (validRegex!11617 (ite c!1447926 (reg!21536 r!14100) (ite c!1447925 (regOne!42927 r!14100) (regTwo!42926 r!14100)))))))

(declare-fun b!7887327 () Bool)

(declare-fun res!3131070 () Bool)

(declare-fun e!4656738 () Bool)

(assert (=> b!7887327 (=> res!3131070 e!4656738)))

(assert (=> b!7887327 (= res!3131070 (not ((_ is Concat!30052) r!14100)))))

(declare-fun e!4656739 () Bool)

(assert (=> b!7887327 (= e!4656739 e!4656738)))

(declare-fun bm!731699 () Bool)

(declare-fun call!731703 () Bool)

(assert (=> bm!731699 (= call!731703 call!731702)))

(declare-fun b!7887329 () Bool)

(assert (=> b!7887329 (= e!4656743 e!4656739)))

(assert (=> b!7887329 (= c!1447925 ((_ is Union!21207) r!14100))))

(declare-fun b!7887330 () Bool)

(declare-fun e!4656740 () Bool)

(assert (=> b!7887330 (= e!4656738 e!4656740)))

(declare-fun res!3131072 () Bool)

(assert (=> b!7887330 (=> (not res!3131072) (not e!4656740))))

(assert (=> b!7887330 (= res!3131072 call!731704)))

(declare-fun b!7887331 () Bool)

(declare-fun res!3131073 () Bool)

(declare-fun e!4656742 () Bool)

(assert (=> b!7887331 (=> (not res!3131073) (not e!4656742))))

(assert (=> b!7887331 (= res!3131073 call!731703)))

(assert (=> b!7887331 (= e!4656739 e!4656742)))

(declare-fun b!7887328 () Bool)

(assert (=> b!7887328 (= e!4656743 e!4656744)))

(declare-fun res!3131074 () Bool)

(declare-fun nullable!9462 (Regex!21207) Bool)

(assert (=> b!7887328 (= res!3131074 (not (nullable!9462 (reg!21536 r!14100))))))

(assert (=> b!7887328 (=> (not res!3131074) (not e!4656744))))

(declare-fun d!2356550 () Bool)

(declare-fun res!3131071 () Bool)

(assert (=> d!2356550 (=> res!3131071 e!4656741)))

(assert (=> d!2356550 (= res!3131071 ((_ is ElementMatch!21207) r!14100))))

(assert (=> d!2356550 (= (validRegex!11617 r!14100) e!4656741)))

(declare-fun b!7887332 () Bool)

(assert (=> b!7887332 (= e!4656740 call!731703)))

(declare-fun b!7887333 () Bool)

(assert (=> b!7887333 (= e!4656742 call!731704)))

(assert (= (and d!2356550 (not res!3131071)) b!7887326))

(assert (= (and b!7887326 c!1447926) b!7887328))

(assert (= (and b!7887326 (not c!1447926)) b!7887329))

(assert (= (and b!7887328 res!3131074) b!7887325))

(assert (= (and b!7887329 c!1447925) b!7887331))

(assert (= (and b!7887329 (not c!1447925)) b!7887327))

(assert (= (and b!7887331 res!3131073) b!7887333))

(assert (= (and b!7887327 (not res!3131070)) b!7887330))

(assert (= (and b!7887330 res!3131072) b!7887332))

(assert (= (or b!7887333 b!7887330) bm!731697))

(assert (= (or b!7887331 b!7887332) bm!731699))

(assert (= (or b!7887325 bm!731699) bm!731698))

(declare-fun m!8269496 () Bool)

(assert (=> bm!731697 m!8269496))

(declare-fun m!8269498 () Bool)

(assert (=> bm!731698 m!8269498))

(declare-fun m!8269500 () Bool)

(assert (=> b!7887328 m!8269500))

(assert (=> start!744438 d!2356550))

(declare-fun b!7887368 () Bool)

(declare-fun e!4656773 () Bool)

(declare-fun lt!2681417 () Int)

(assert (=> b!7887368 (= e!4656773 (= lt!2681417 1))))

(declare-fun bm!731714 () Bool)

(declare-fun call!731722 () Int)

(declare-fun c!1447946 () Bool)

(assert (=> bm!731714 (= call!731722 (regexDepth!511 (ite c!1447946 (regTwo!42927 (regTwo!42927 r!14100)) (regOne!42926 (regTwo!42927 r!14100)))))))

(declare-fun bm!731715 () Bool)

(declare-fun call!731721 () Int)

(declare-fun call!731724 () Int)

(assert (=> bm!731715 (= call!731721 call!731724)))

(declare-fun b!7887369 () Bool)

(declare-fun e!4656774 () Int)

(declare-fun e!4656768 () Int)

(assert (=> b!7887369 (= e!4656774 e!4656768)))

(declare-fun c!1447944 () Bool)

(assert (=> b!7887369 (= c!1447944 ((_ is Star!21207) (regTwo!42927 r!14100)))))

(declare-fun d!2356552 () Bool)

(declare-fun e!4656771 () Bool)

(assert (=> d!2356552 e!4656771))

(declare-fun res!3131081 () Bool)

(assert (=> d!2356552 (=> (not res!3131081) (not e!4656771))))

(assert (=> d!2356552 (= res!3131081 (> lt!2681417 0))))

(assert (=> d!2356552 (= lt!2681417 e!4656774)))

(declare-fun c!1447947 () Bool)

(assert (=> d!2356552 (= c!1447947 ((_ is ElementMatch!21207) (regTwo!42927 r!14100)))))

(assert (=> d!2356552 (= (regexDepth!511 (regTwo!42927 r!14100)) lt!2681417)))

(declare-fun b!7887370 () Bool)

(assert (=> b!7887370 (= e!4656773 (> lt!2681417 call!731721))))

(declare-fun b!7887371 () Bool)

(declare-fun e!4656769 () Bool)

(assert (=> b!7887371 (= e!4656769 (> lt!2681417 call!731721))))

(declare-fun bm!731716 () Bool)

(declare-fun c!1447943 () Bool)

(assert (=> bm!731716 (= call!731724 (regexDepth!511 (ite c!1447946 (regOne!42927 (regTwo!42927 r!14100)) (ite c!1447943 (regTwo!42926 (regTwo!42927 r!14100)) (reg!21536 (regTwo!42927 r!14100))))))))

(declare-fun b!7887372 () Bool)

(declare-fun e!4656770 () Bool)

(declare-fun e!4656767 () Bool)

(assert (=> b!7887372 (= e!4656770 e!4656767)))

(assert (=> b!7887372 (= c!1447943 ((_ is Concat!30052) (regTwo!42927 r!14100)))))

(declare-fun b!7887373 () Bool)

(declare-fun e!4656766 () Int)

(declare-fun e!4656765 () Int)

(assert (=> b!7887373 (= e!4656766 e!4656765)))

(declare-fun c!1447945 () Bool)

(assert (=> b!7887373 (= c!1447945 ((_ is Concat!30052) (regTwo!42927 r!14100)))))

(declare-fun bm!731717 () Bool)

(declare-fun call!731725 () Int)

(declare-fun c!1447941 () Bool)

(assert (=> bm!731717 (= call!731725 (regexDepth!511 (ite c!1447941 (regOne!42927 (regTwo!42927 r!14100)) (regTwo!42926 (regTwo!42927 r!14100)))))))

(declare-fun b!7887374 () Bool)

(declare-fun c!1447942 () Bool)

(assert (=> b!7887374 (= c!1447942 ((_ is Star!21207) (regTwo!42927 r!14100)))))

(assert (=> b!7887374 (= e!4656767 e!4656773)))

(declare-fun b!7887375 () Bool)

(assert (=> b!7887375 (= e!4656771 e!4656770)))

(assert (=> b!7887375 (= c!1447946 ((_ is Union!21207) (regTwo!42927 r!14100)))))

(declare-fun b!7887376 () Bool)

(declare-fun e!4656772 () Bool)

(assert (=> b!7887376 (= e!4656772 (> lt!2681417 call!731722))))

(declare-fun b!7887377 () Bool)

(assert (=> b!7887377 (= e!4656765 1)))

(declare-fun call!731719 () Int)

(declare-fun bm!731718 () Bool)

(declare-fun call!731720 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!731718 (= call!731720 (maxBigInt!0 (ite c!1447941 call!731725 call!731719) (ite c!1447941 call!731719 call!731725)))))

(declare-fun b!7887378 () Bool)

(assert (=> b!7887378 (= c!1447941 ((_ is Union!21207) (regTwo!42927 r!14100)))))

(assert (=> b!7887378 (= e!4656768 e!4656766)))

(declare-fun b!7887379 () Bool)

(assert (=> b!7887379 (= e!4656774 1)))

(declare-fun b!7887380 () Bool)

(assert (=> b!7887380 (= e!4656765 (+ 1 call!731720))))

(declare-fun b!7887381 () Bool)

(declare-fun call!731723 () Int)

(assert (=> b!7887381 (= e!4656768 (+ 1 call!731723))))

(declare-fun b!7887382 () Bool)

(assert (=> b!7887382 (= e!4656766 (+ 1 call!731720))))

(declare-fun bm!731719 () Bool)

(assert (=> bm!731719 (= call!731719 call!731723)))

(declare-fun b!7887383 () Bool)

(assert (=> b!7887383 (= e!4656770 e!4656772)))

(declare-fun res!3131083 () Bool)

(assert (=> b!7887383 (= res!3131083 (> lt!2681417 call!731724))))

(assert (=> b!7887383 (=> (not res!3131083) (not e!4656772))))

(declare-fun b!7887384 () Bool)

(declare-fun res!3131082 () Bool)

(assert (=> b!7887384 (=> (not res!3131082) (not e!4656769))))

(assert (=> b!7887384 (= res!3131082 (> lt!2681417 call!731722))))

(assert (=> b!7887384 (= e!4656767 e!4656769)))

(declare-fun bm!731720 () Bool)

(assert (=> bm!731720 (= call!731723 (regexDepth!511 (ite c!1447944 (reg!21536 (regTwo!42927 r!14100)) (ite c!1447941 (regTwo!42927 (regTwo!42927 r!14100)) (regOne!42926 (regTwo!42927 r!14100))))))))

(assert (= (and d!2356552 c!1447947) b!7887379))

(assert (= (and d!2356552 (not c!1447947)) b!7887369))

(assert (= (and b!7887369 c!1447944) b!7887381))

(assert (= (and b!7887369 (not c!1447944)) b!7887378))

(assert (= (and b!7887378 c!1447941) b!7887382))

(assert (= (and b!7887378 (not c!1447941)) b!7887373))

(assert (= (and b!7887373 c!1447945) b!7887380))

(assert (= (and b!7887373 (not c!1447945)) b!7887377))

(assert (= (or b!7887382 b!7887380) bm!731717))

(assert (= (or b!7887382 b!7887380) bm!731719))

(assert (= (or b!7887382 b!7887380) bm!731718))

(assert (= (or b!7887381 bm!731719) bm!731720))

(assert (= (and d!2356552 res!3131081) b!7887375))

(assert (= (and b!7887375 c!1447946) b!7887383))

(assert (= (and b!7887375 (not c!1447946)) b!7887372))

(assert (= (and b!7887383 res!3131083) b!7887376))

(assert (= (and b!7887372 c!1447943) b!7887384))

(assert (= (and b!7887372 (not c!1447943)) b!7887374))

(assert (= (and b!7887384 res!3131082) b!7887371))

(assert (= (and b!7887374 c!1447942) b!7887370))

(assert (= (and b!7887374 (not c!1447942)) b!7887368))

(assert (= (or b!7887371 b!7887370) bm!731715))

(assert (= (or b!7887383 bm!731715) bm!731716))

(assert (= (or b!7887376 b!7887384) bm!731714))

(declare-fun m!8269502 () Bool)

(assert (=> bm!731716 m!8269502))

(declare-fun m!8269504 () Bool)

(assert (=> bm!731714 m!8269504))

(declare-fun m!8269506 () Bool)

(assert (=> bm!731717 m!8269506))

(declare-fun m!8269508 () Bool)

(assert (=> bm!731718 m!8269508))

(declare-fun m!8269510 () Bool)

(assert (=> bm!731720 m!8269510))

(assert (=> b!7887073 d!2356552))

(declare-fun b!7887385 () Bool)

(declare-fun e!4656783 () Bool)

(declare-fun lt!2681418 () Int)

(assert (=> b!7887385 (= e!4656783 (= lt!2681418 1))))

(declare-fun bm!731721 () Bool)

(declare-fun call!731729 () Int)

(declare-fun c!1447953 () Bool)

(assert (=> bm!731721 (= call!731729 (regexDepth!511 (ite c!1447953 (regTwo!42927 r!14100) (regOne!42926 r!14100))))))

(declare-fun bm!731722 () Bool)

(declare-fun call!731728 () Int)

(declare-fun call!731731 () Int)

(assert (=> bm!731722 (= call!731728 call!731731)))

(declare-fun b!7887386 () Bool)

(declare-fun e!4656784 () Int)

(declare-fun e!4656778 () Int)

(assert (=> b!7887386 (= e!4656784 e!4656778)))

(declare-fun c!1447951 () Bool)

(assert (=> b!7887386 (= c!1447951 ((_ is Star!21207) r!14100))))

(declare-fun d!2356554 () Bool)

(declare-fun e!4656781 () Bool)

(assert (=> d!2356554 e!4656781))

(declare-fun res!3131084 () Bool)

(assert (=> d!2356554 (=> (not res!3131084) (not e!4656781))))

(assert (=> d!2356554 (= res!3131084 (> lt!2681418 0))))

(assert (=> d!2356554 (= lt!2681418 e!4656784)))

(declare-fun c!1447954 () Bool)

(assert (=> d!2356554 (= c!1447954 ((_ is ElementMatch!21207) r!14100))))

(assert (=> d!2356554 (= (regexDepth!511 r!14100) lt!2681418)))

(declare-fun b!7887387 () Bool)

(assert (=> b!7887387 (= e!4656783 (> lt!2681418 call!731728))))

(declare-fun b!7887388 () Bool)

(declare-fun e!4656779 () Bool)

(assert (=> b!7887388 (= e!4656779 (> lt!2681418 call!731728))))

(declare-fun c!1447950 () Bool)

(declare-fun bm!731723 () Bool)

(assert (=> bm!731723 (= call!731731 (regexDepth!511 (ite c!1447953 (regOne!42927 r!14100) (ite c!1447950 (regTwo!42926 r!14100) (reg!21536 r!14100)))))))

(declare-fun b!7887389 () Bool)

(declare-fun e!4656780 () Bool)

(declare-fun e!4656777 () Bool)

(assert (=> b!7887389 (= e!4656780 e!4656777)))

(assert (=> b!7887389 (= c!1447950 ((_ is Concat!30052) r!14100))))

(declare-fun b!7887390 () Bool)

(declare-fun e!4656776 () Int)

(declare-fun e!4656775 () Int)

(assert (=> b!7887390 (= e!4656776 e!4656775)))

(declare-fun c!1447952 () Bool)

(assert (=> b!7887390 (= c!1447952 ((_ is Concat!30052) r!14100))))

(declare-fun bm!731724 () Bool)

(declare-fun call!731732 () Int)

(declare-fun c!1447948 () Bool)

(assert (=> bm!731724 (= call!731732 (regexDepth!511 (ite c!1447948 (regOne!42927 r!14100) (regTwo!42926 r!14100))))))

(declare-fun b!7887391 () Bool)

(declare-fun c!1447949 () Bool)

(assert (=> b!7887391 (= c!1447949 ((_ is Star!21207) r!14100))))

(assert (=> b!7887391 (= e!4656777 e!4656783)))

(declare-fun b!7887392 () Bool)

(assert (=> b!7887392 (= e!4656781 e!4656780)))

(assert (=> b!7887392 (= c!1447953 ((_ is Union!21207) r!14100))))

(declare-fun b!7887393 () Bool)

(declare-fun e!4656782 () Bool)

(assert (=> b!7887393 (= e!4656782 (> lt!2681418 call!731729))))

(declare-fun b!7887394 () Bool)

(assert (=> b!7887394 (= e!4656775 1)))

(declare-fun bm!731725 () Bool)

(declare-fun call!731726 () Int)

(declare-fun call!731727 () Int)

(assert (=> bm!731725 (= call!731727 (maxBigInt!0 (ite c!1447948 call!731732 call!731726) (ite c!1447948 call!731726 call!731732)))))

(declare-fun b!7887395 () Bool)

(assert (=> b!7887395 (= c!1447948 ((_ is Union!21207) r!14100))))

(assert (=> b!7887395 (= e!4656778 e!4656776)))

(declare-fun b!7887396 () Bool)

(assert (=> b!7887396 (= e!4656784 1)))

(declare-fun b!7887397 () Bool)

(assert (=> b!7887397 (= e!4656775 (+ 1 call!731727))))

(declare-fun b!7887398 () Bool)

(declare-fun call!731730 () Int)

(assert (=> b!7887398 (= e!4656778 (+ 1 call!731730))))

(declare-fun b!7887399 () Bool)

(assert (=> b!7887399 (= e!4656776 (+ 1 call!731727))))

(declare-fun bm!731726 () Bool)

(assert (=> bm!731726 (= call!731726 call!731730)))

(declare-fun b!7887400 () Bool)

(assert (=> b!7887400 (= e!4656780 e!4656782)))

(declare-fun res!3131086 () Bool)

(assert (=> b!7887400 (= res!3131086 (> lt!2681418 call!731731))))

(assert (=> b!7887400 (=> (not res!3131086) (not e!4656782))))

(declare-fun b!7887401 () Bool)

(declare-fun res!3131085 () Bool)

(assert (=> b!7887401 (=> (not res!3131085) (not e!4656779))))

(assert (=> b!7887401 (= res!3131085 (> lt!2681418 call!731729))))

(assert (=> b!7887401 (= e!4656777 e!4656779)))

(declare-fun bm!731727 () Bool)

(assert (=> bm!731727 (= call!731730 (regexDepth!511 (ite c!1447951 (reg!21536 r!14100) (ite c!1447948 (regTwo!42927 r!14100) (regOne!42926 r!14100)))))))

(assert (= (and d!2356554 c!1447954) b!7887396))

(assert (= (and d!2356554 (not c!1447954)) b!7887386))

(assert (= (and b!7887386 c!1447951) b!7887398))

(assert (= (and b!7887386 (not c!1447951)) b!7887395))

(assert (= (and b!7887395 c!1447948) b!7887399))

(assert (= (and b!7887395 (not c!1447948)) b!7887390))

(assert (= (and b!7887390 c!1447952) b!7887397))

(assert (= (and b!7887390 (not c!1447952)) b!7887394))

(assert (= (or b!7887399 b!7887397) bm!731724))

(assert (= (or b!7887399 b!7887397) bm!731726))

(assert (= (or b!7887399 b!7887397) bm!731725))

(assert (= (or b!7887398 bm!731726) bm!731727))

(assert (= (and d!2356554 res!3131084) b!7887392))

(assert (= (and b!7887392 c!1447953) b!7887400))

(assert (= (and b!7887392 (not c!1447953)) b!7887389))

(assert (= (and b!7887400 res!3131086) b!7887393))

(assert (= (and b!7887389 c!1447950) b!7887401))

(assert (= (and b!7887389 (not c!1447950)) b!7887391))

(assert (= (and b!7887401 res!3131085) b!7887388))

(assert (= (and b!7887391 c!1447949) b!7887387))

(assert (= (and b!7887391 (not c!1447949)) b!7887385))

(assert (= (or b!7887388 b!7887387) bm!731722))

(assert (= (or b!7887400 bm!731722) bm!731723))

(assert (= (or b!7887393 b!7887401) bm!731721))

(declare-fun m!8269512 () Bool)

(assert (=> bm!731723 m!8269512))

(declare-fun m!8269514 () Bool)

(assert (=> bm!731721 m!8269514))

(declare-fun m!8269516 () Bool)

(assert (=> bm!731724 m!8269516))

(declare-fun m!8269518 () Bool)

(assert (=> bm!731725 m!8269518))

(declare-fun m!8269520 () Bool)

(assert (=> bm!731727 m!8269520))

(assert (=> b!7887073 d!2356554))

(declare-fun d!2356556 () Bool)

(declare-fun lt!2681421 () Int)

(assert (=> d!2356556 (>= lt!2681421 0)))

(declare-fun e!4656787 () Int)

(assert (=> d!2356556 (= lt!2681421 e!4656787)))

(declare-fun c!1447957 () Bool)

(assert (=> d!2356556 (= c!1447957 ((_ is Nil!73940) s!9586))))

(assert (=> d!2356556 (= (size!42848 s!9586) lt!2681421)))

(declare-fun b!7887406 () Bool)

(assert (=> b!7887406 (= e!4656787 0)))

(declare-fun b!7887407 () Bool)

(assert (=> b!7887407 (= e!4656787 (+ 1 (size!42848 (t!388799 s!9586))))))

(assert (= (and d!2356556 c!1447957) b!7887406))

(assert (= (and d!2356556 (not c!1447957)) b!7887407))

(declare-fun m!8269522 () Bool)

(assert (=> b!7887407 m!8269522))

(assert (=> b!7887073 d!2356556))

(declare-fun e!4656790 () Bool)

(assert (=> b!7887076 (= tp!2346356 e!4656790)))

(declare-fun b!7887421 () Bool)

(declare-fun tp!2346411 () Bool)

(declare-fun tp!2346408 () Bool)

(assert (=> b!7887421 (= e!4656790 (and tp!2346411 tp!2346408))))

(declare-fun b!7887420 () Bool)

(declare-fun tp!2346407 () Bool)

(assert (=> b!7887420 (= e!4656790 tp!2346407)))

(declare-fun b!7887419 () Bool)

(declare-fun tp!2346409 () Bool)

(declare-fun tp!2346410 () Bool)

(assert (=> b!7887419 (= e!4656790 (and tp!2346409 tp!2346410))))

(declare-fun b!7887418 () Bool)

(assert (=> b!7887418 (= e!4656790 tp_is_empty!52813)))

(assert (= (and b!7887076 ((_ is ElementMatch!21207) (reg!21536 r!14100))) b!7887418))

(assert (= (and b!7887076 ((_ is Concat!30052) (reg!21536 r!14100))) b!7887419))

(assert (= (and b!7887076 ((_ is Star!21207) (reg!21536 r!14100))) b!7887420))

(assert (= (and b!7887076 ((_ is Union!21207) (reg!21536 r!14100))) b!7887421))

(declare-fun e!4656791 () Bool)

(assert (=> b!7887075 (= tp!2346354 e!4656791)))

(declare-fun b!7887425 () Bool)

(declare-fun tp!2346416 () Bool)

(declare-fun tp!2346413 () Bool)

(assert (=> b!7887425 (= e!4656791 (and tp!2346416 tp!2346413))))

(declare-fun b!7887424 () Bool)

(declare-fun tp!2346412 () Bool)

(assert (=> b!7887424 (= e!4656791 tp!2346412)))

(declare-fun b!7887423 () Bool)

(declare-fun tp!2346414 () Bool)

(declare-fun tp!2346415 () Bool)

(assert (=> b!7887423 (= e!4656791 (and tp!2346414 tp!2346415))))

(declare-fun b!7887422 () Bool)

(assert (=> b!7887422 (= e!4656791 tp_is_empty!52813)))

(assert (= (and b!7887075 ((_ is ElementMatch!21207) (regOne!42927 r!14100))) b!7887422))

(assert (= (and b!7887075 ((_ is Concat!30052) (regOne!42927 r!14100))) b!7887423))

(assert (= (and b!7887075 ((_ is Star!21207) (regOne!42927 r!14100))) b!7887424))

(assert (= (and b!7887075 ((_ is Union!21207) (regOne!42927 r!14100))) b!7887425))

(declare-fun e!4656792 () Bool)

(assert (=> b!7887075 (= tp!2346357 e!4656792)))

(declare-fun b!7887429 () Bool)

(declare-fun tp!2346421 () Bool)

(declare-fun tp!2346418 () Bool)

(assert (=> b!7887429 (= e!4656792 (and tp!2346421 tp!2346418))))

(declare-fun b!7887428 () Bool)

(declare-fun tp!2346417 () Bool)

(assert (=> b!7887428 (= e!4656792 tp!2346417)))

(declare-fun b!7887427 () Bool)

(declare-fun tp!2346419 () Bool)

(declare-fun tp!2346420 () Bool)

(assert (=> b!7887427 (= e!4656792 (and tp!2346419 tp!2346420))))

(declare-fun b!7887426 () Bool)

(assert (=> b!7887426 (= e!4656792 tp_is_empty!52813)))

(assert (= (and b!7887075 ((_ is ElementMatch!21207) (regTwo!42927 r!14100))) b!7887426))

(assert (= (and b!7887075 ((_ is Concat!30052) (regTwo!42927 r!14100))) b!7887427))

(assert (= (and b!7887075 ((_ is Star!21207) (regTwo!42927 r!14100))) b!7887428))

(assert (= (and b!7887075 ((_ is Union!21207) (regTwo!42927 r!14100))) b!7887429))

(declare-fun e!4656793 () Bool)

(assert (=> b!7887074 (= tp!2346355 e!4656793)))

(declare-fun b!7887433 () Bool)

(declare-fun tp!2346426 () Bool)

(declare-fun tp!2346423 () Bool)

(assert (=> b!7887433 (= e!4656793 (and tp!2346426 tp!2346423))))

(declare-fun b!7887432 () Bool)

(declare-fun tp!2346422 () Bool)

(assert (=> b!7887432 (= e!4656793 tp!2346422)))

(declare-fun b!7887431 () Bool)

(declare-fun tp!2346424 () Bool)

(declare-fun tp!2346425 () Bool)

(assert (=> b!7887431 (= e!4656793 (and tp!2346424 tp!2346425))))

(declare-fun b!7887430 () Bool)

(assert (=> b!7887430 (= e!4656793 tp_is_empty!52813)))

(assert (= (and b!7887074 ((_ is ElementMatch!21207) (regOne!42926 r!14100))) b!7887430))

(assert (= (and b!7887074 ((_ is Concat!30052) (regOne!42926 r!14100))) b!7887431))

(assert (= (and b!7887074 ((_ is Star!21207) (regOne!42926 r!14100))) b!7887432))

(assert (= (and b!7887074 ((_ is Union!21207) (regOne!42926 r!14100))) b!7887433))

(declare-fun e!4656794 () Bool)

(assert (=> b!7887074 (= tp!2346358 e!4656794)))

(declare-fun b!7887437 () Bool)

(declare-fun tp!2346431 () Bool)

(declare-fun tp!2346428 () Bool)

(assert (=> b!7887437 (= e!4656794 (and tp!2346431 tp!2346428))))

(declare-fun b!7887436 () Bool)

(declare-fun tp!2346427 () Bool)

(assert (=> b!7887436 (= e!4656794 tp!2346427)))

(declare-fun b!7887435 () Bool)

(declare-fun tp!2346429 () Bool)

(declare-fun tp!2346430 () Bool)

(assert (=> b!7887435 (= e!4656794 (and tp!2346429 tp!2346430))))

(declare-fun b!7887434 () Bool)

(assert (=> b!7887434 (= e!4656794 tp_is_empty!52813)))

(assert (= (and b!7887074 ((_ is ElementMatch!21207) (regTwo!42926 r!14100))) b!7887434))

(assert (= (and b!7887074 ((_ is Concat!30052) (regTwo!42926 r!14100))) b!7887435))

(assert (= (and b!7887074 ((_ is Star!21207) (regTwo!42926 r!14100))) b!7887436))

(assert (= (and b!7887074 ((_ is Union!21207) (regTwo!42926 r!14100))) b!7887437))

(declare-fun b!7887442 () Bool)

(declare-fun e!4656797 () Bool)

(declare-fun tp!2346434 () Bool)

(assert (=> b!7887442 (= e!4656797 (and tp_is_empty!52813 tp!2346434))))

(assert (=> b!7887072 (= tp!2346353 e!4656797)))

(assert (= (and b!7887072 ((_ is Cons!73940) (t!388799 s!9586))) b!7887442))

(check-sat (not b!7887436) (not bm!731689) (not b!7887428) (not bm!731718) (not bm!731690) tp_is_empty!52813 (not bm!731714) (not bm!731697) (not b!7887424) (not bm!731717) (not bm!731698) (not b!7887328) (not bm!731721) (not b!7887437) (not bm!731720) (not b!7887433) (not b!7887432) (not b!7887442) (not b!7887427) (not b!7887419) (not b!7887429) (not bm!731727) (not b!7887407) (not b!7887420) (not b!7887421) (not bm!731723) (not b!7887431) (not bm!731716) (not b!7887435) (not bm!731724) (not b!7887425) (not b!7887301) (not b!7887423) (not bm!731725) (not b!7887295))
(check-sat)
