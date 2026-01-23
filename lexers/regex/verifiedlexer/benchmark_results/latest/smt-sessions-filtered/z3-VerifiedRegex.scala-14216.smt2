; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744422 () Bool)

(assert start!744422)

(declare-fun res!3130921 () Bool)

(declare-fun e!4656432 () Bool)

(assert (=> start!744422 (=> (not res!3130921) (not e!4656432))))

(declare-datatypes ((C!42736 0))(
  ( (C!42737 (val!31830 Int)) )
))
(declare-datatypes ((Regex!21205 0))(
  ( (ElementMatch!21205 (c!1447783 C!42736)) (Concat!30050 (regOne!42922 Regex!21205) (regTwo!42922 Regex!21205)) (EmptyExpr!21205) (Star!21205 (reg!21534 Regex!21205)) (EmptyLang!21205) (Union!21205 (regOne!42923 Regex!21205) (regTwo!42923 Regex!21205)) )
))
(declare-fun r!14100 () Regex!21205)

(declare-fun validRegex!11615 (Regex!21205) Bool)

(assert (=> start!744422 (= res!3130921 (validRegex!11615 r!14100))))

(assert (=> start!744422 e!4656432))

(declare-fun e!4656433 () Bool)

(assert (=> start!744422 e!4656433))

(declare-fun e!4656431 () Bool)

(assert (=> start!744422 e!4656431))

(declare-fun b!7886750 () Bool)

(declare-fun lt!2681387 () Int)

(declare-fun regexDepth!509 (Regex!21205) Int)

(assert (=> b!7886750 (= e!4656432 (>= (+ lt!2681387 (regexDepth!509 (regOne!42923 r!14100))) (+ lt!2681387 (regexDepth!509 r!14100))))))

(declare-datatypes ((List!74062 0))(
  ( (Nil!73938) (Cons!73938 (h!80386 C!42736) (t!388797 List!74062)) )
))
(declare-fun s!9586 () List!74062)

(declare-fun size!42846 (List!74062) Int)

(assert (=> b!7886750 (= lt!2681387 (size!42846 s!9586))))

(declare-fun b!7886751 () Bool)

(declare-fun tp_is_empty!52809 () Bool)

(declare-fun tp!2346246 () Bool)

(assert (=> b!7886751 (= e!4656431 (and tp_is_empty!52809 tp!2346246))))

(declare-fun b!7886752 () Bool)

(declare-fun tp!2346242 () Bool)

(declare-fun tp!2346241 () Bool)

(assert (=> b!7886752 (= e!4656433 (and tp!2346242 tp!2346241))))

(declare-fun b!7886753 () Bool)

(declare-fun res!3130922 () Bool)

(assert (=> b!7886753 (=> (not res!3130922) (not e!4656432))))

(get-info :version)

(assert (=> b!7886753 (= res!3130922 (and (not ((_ is EmptyExpr!21205) r!14100)) (not ((_ is EmptyLang!21205) r!14100)) (not ((_ is ElementMatch!21205) r!14100)) ((_ is Union!21205) r!14100)))))

(declare-fun b!7886754 () Bool)

(declare-fun tp!2346244 () Bool)

(assert (=> b!7886754 (= e!4656433 tp!2346244)))

(declare-fun b!7886755 () Bool)

(assert (=> b!7886755 (= e!4656433 tp_is_empty!52809)))

(declare-fun b!7886756 () Bool)

(declare-fun tp!2346245 () Bool)

(declare-fun tp!2346243 () Bool)

(assert (=> b!7886756 (= e!4656433 (and tp!2346245 tp!2346243))))

(assert (= (and start!744422 res!3130921) b!7886753))

(assert (= (and b!7886753 res!3130922) b!7886750))

(assert (= (and start!744422 ((_ is ElementMatch!21205) r!14100)) b!7886755))

(assert (= (and start!744422 ((_ is Concat!30050) r!14100)) b!7886752))

(assert (= (and start!744422 ((_ is Star!21205) r!14100)) b!7886754))

(assert (= (and start!744422 ((_ is Union!21205) r!14100)) b!7886756))

(assert (= (and start!744422 ((_ is Cons!73938) s!9586)) b!7886751))

(declare-fun m!8269368 () Bool)

(assert (=> start!744422 m!8269368))

(declare-fun m!8269370 () Bool)

(assert (=> b!7886750 m!8269370))

(declare-fun m!8269372 () Bool)

(assert (=> b!7886750 m!8269372))

(declare-fun m!8269374 () Bool)

(assert (=> b!7886750 m!8269374))

(check-sat (not b!7886756) (not b!7886751) (not b!7886754) tp_is_empty!52809 (not b!7886750) (not start!744422) (not b!7886752))
(check-sat)
(get-model)

(declare-fun b!7886775 () Bool)

(declare-fun e!4656451 () Bool)

(declare-fun e!4656450 () Bool)

(assert (=> b!7886775 (= e!4656451 e!4656450)))

(declare-fun c!1447788 () Bool)

(assert (=> b!7886775 (= c!1447788 ((_ is Star!21205) r!14100))))

(declare-fun b!7886776 () Bool)

(declare-fun res!3130933 () Bool)

(declare-fun e!4656448 () Bool)

(assert (=> b!7886776 (=> res!3130933 e!4656448)))

(assert (=> b!7886776 (= res!3130933 (not ((_ is Concat!30050) r!14100)))))

(declare-fun e!4656454 () Bool)

(assert (=> b!7886776 (= e!4656454 e!4656448)))

(declare-fun bm!731574 () Bool)

(declare-fun call!731580 () Bool)

(declare-fun call!731581 () Bool)

(assert (=> bm!731574 (= call!731580 call!731581)))

(declare-fun b!7886777 () Bool)

(declare-fun e!4656452 () Bool)

(assert (=> b!7886777 (= e!4656450 e!4656452)))

(declare-fun res!3130937 () Bool)

(declare-fun nullable!9459 (Regex!21205) Bool)

(assert (=> b!7886777 (= res!3130937 (not (nullable!9459 (reg!21534 r!14100))))))

(assert (=> b!7886777 (=> (not res!3130937) (not e!4656452))))

(declare-fun b!7886778 () Bool)

(assert (=> b!7886778 (= e!4656452 call!731581)))

(declare-fun bm!731575 () Bool)

(declare-fun call!731579 () Bool)

(declare-fun c!1447789 () Bool)

(assert (=> bm!731575 (= call!731579 (validRegex!11615 (ite c!1447789 (regOne!42923 r!14100) (regTwo!42922 r!14100))))))

(declare-fun b!7886780 () Bool)

(declare-fun e!4656453 () Bool)

(assert (=> b!7886780 (= e!4656448 e!4656453)))

(declare-fun res!3130935 () Bool)

(assert (=> b!7886780 (=> (not res!3130935) (not e!4656453))))

(assert (=> b!7886780 (= res!3130935 call!731580)))

(declare-fun b!7886781 () Bool)

(assert (=> b!7886781 (= e!4656450 e!4656454)))

(assert (=> b!7886781 (= c!1447789 ((_ is Union!21205) r!14100))))

(declare-fun bm!731576 () Bool)

(assert (=> bm!731576 (= call!731581 (validRegex!11615 (ite c!1447788 (reg!21534 r!14100) (ite c!1447789 (regTwo!42923 r!14100) (regOne!42922 r!14100)))))))

(declare-fun b!7886782 () Bool)

(declare-fun res!3130936 () Bool)

(declare-fun e!4656449 () Bool)

(assert (=> b!7886782 (=> (not res!3130936) (not e!4656449))))

(assert (=> b!7886782 (= res!3130936 call!731579)))

(assert (=> b!7886782 (= e!4656454 e!4656449)))

(declare-fun b!7886783 () Bool)

(assert (=> b!7886783 (= e!4656449 call!731580)))

(declare-fun b!7886779 () Bool)

(assert (=> b!7886779 (= e!4656453 call!731579)))

(declare-fun d!2356521 () Bool)

(declare-fun res!3130934 () Bool)

(assert (=> d!2356521 (=> res!3130934 e!4656451)))

(assert (=> d!2356521 (= res!3130934 ((_ is ElementMatch!21205) r!14100))))

(assert (=> d!2356521 (= (validRegex!11615 r!14100) e!4656451)))

(assert (= (and d!2356521 (not res!3130934)) b!7886775))

(assert (= (and b!7886775 c!1447788) b!7886777))

(assert (= (and b!7886775 (not c!1447788)) b!7886781))

(assert (= (and b!7886777 res!3130937) b!7886778))

(assert (= (and b!7886781 c!1447789) b!7886782))

(assert (= (and b!7886781 (not c!1447789)) b!7886776))

(assert (= (and b!7886782 res!3130936) b!7886783))

(assert (= (and b!7886776 (not res!3130933)) b!7886780))

(assert (= (and b!7886780 res!3130935) b!7886779))

(assert (= (or b!7886783 b!7886780) bm!731574))

(assert (= (or b!7886782 b!7886779) bm!731575))

(assert (= (or b!7886778 bm!731574) bm!731576))

(declare-fun m!8269376 () Bool)

(assert (=> b!7886777 m!8269376))

(declare-fun m!8269378 () Bool)

(assert (=> bm!731575 m!8269378))

(declare-fun m!8269380 () Bool)

(assert (=> bm!731576 m!8269380))

(assert (=> start!744422 d!2356521))

(declare-fun b!7886869 () Bool)

(declare-fun e!4656506 () Int)

(declare-fun call!731617 () Int)

(assert (=> b!7886869 (= e!4656506 (+ 1 call!731617))))

(declare-fun bm!731612 () Bool)

(declare-fun c!1447827 () Bool)

(declare-fun c!1447831 () Bool)

(declare-fun call!731618 () Int)

(assert (=> bm!731612 (= call!731618 (regexDepth!509 (ite c!1447831 (reg!21534 (regOne!42923 r!14100)) (ite c!1447827 (regTwo!42923 (regOne!42923 r!14100)) (regOne!42922 (regOne!42923 r!14100))))))))

(declare-fun b!7886870 () Bool)

(declare-fun e!4656512 () Int)

(assert (=> b!7886870 (= e!4656512 (+ 1 call!731618))))

(declare-fun b!7886871 () Bool)

(declare-fun e!4656510 () Bool)

(declare-fun lt!2681393 () Int)

(declare-fun call!731620 () Int)

(assert (=> b!7886871 (= e!4656510 (> lt!2681393 call!731620))))

(declare-fun call!731623 () Int)

(declare-fun bm!731613 () Bool)

(declare-fun call!731621 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!731613 (= call!731617 (maxBigInt!0 (ite c!1447827 call!731623 call!731621) (ite c!1447827 call!731621 call!731623)))))

(declare-fun b!7886872 () Bool)

(declare-fun e!4656508 () Bool)

(declare-fun call!731622 () Int)

(assert (=> b!7886872 (= e!4656508 (> lt!2681393 call!731622))))

(declare-fun bm!731614 () Bool)

(declare-fun call!731619 () Int)

(assert (=> bm!731614 (= call!731622 call!731619)))

(declare-fun bm!731615 () Bool)

(assert (=> bm!731615 (= call!731623 (regexDepth!509 (ite c!1447827 (regOne!42923 (regOne!42923 r!14100)) (regTwo!42922 (regOne!42923 r!14100)))))))

(declare-fun b!7886873 () Bool)

(declare-fun e!4656513 () Int)

(assert (=> b!7886873 (= e!4656506 e!4656513)))

(declare-fun c!1447829 () Bool)

(assert (=> b!7886873 (= c!1447829 ((_ is Concat!30050) (regOne!42923 r!14100)))))

(declare-fun b!7886874 () Bool)

(declare-fun e!4656505 () Bool)

(assert (=> b!7886874 (= e!4656505 (= lt!2681393 1))))

(declare-fun b!7886875 () Bool)

(declare-fun e!4656511 () Bool)

(assert (=> b!7886875 (= e!4656511 e!4656510)))

(declare-fun res!3130953 () Bool)

(assert (=> b!7886875 (= res!3130953 (> lt!2681393 call!731619))))

(assert (=> b!7886875 (=> (not res!3130953) (not e!4656510))))

(declare-fun b!7886876 () Bool)

(assert (=> b!7886876 (= e!4656505 (> lt!2681393 call!731622))))

(declare-fun bm!731616 () Bool)

(declare-fun c!1447825 () Bool)

(assert (=> bm!731616 (= call!731620 (regexDepth!509 (ite c!1447825 (regTwo!42923 (regOne!42923 r!14100)) (regOne!42922 (regOne!42923 r!14100)))))))

(declare-fun d!2356525 () Bool)

(declare-fun e!4656507 () Bool)

(assert (=> d!2356525 e!4656507))

(declare-fun res!3130955 () Bool)

(assert (=> d!2356525 (=> (not res!3130955) (not e!4656507))))

(assert (=> d!2356525 (= res!3130955 (> lt!2681393 0))))

(declare-fun e!4656509 () Int)

(assert (=> d!2356525 (= lt!2681393 e!4656509)))

(declare-fun c!1447826 () Bool)

(assert (=> d!2356525 (= c!1447826 ((_ is ElementMatch!21205) (regOne!42923 r!14100)))))

(assert (=> d!2356525 (= (regexDepth!509 (regOne!42923 r!14100)) lt!2681393)))

(declare-fun b!7886877 () Bool)

(declare-fun e!4656514 () Bool)

(assert (=> b!7886877 (= e!4656511 e!4656514)))

(declare-fun c!1447830 () Bool)

(assert (=> b!7886877 (= c!1447830 ((_ is Concat!30050) (regOne!42923 r!14100)))))

(declare-fun b!7886878 () Bool)

(assert (=> b!7886878 (= e!4656507 e!4656511)))

(assert (=> b!7886878 (= c!1447825 ((_ is Union!21205) (regOne!42923 r!14100)))))

(declare-fun bm!731617 () Bool)

(assert (=> bm!731617 (= call!731621 call!731618)))

(declare-fun b!7886879 () Bool)

(assert (=> b!7886879 (= e!4656509 1)))

(declare-fun b!7886880 () Bool)

(assert (=> b!7886880 (= e!4656513 (+ 1 call!731617))))

(declare-fun b!7886881 () Bool)

(assert (=> b!7886881 (= c!1447827 ((_ is Union!21205) (regOne!42923 r!14100)))))

(assert (=> b!7886881 (= e!4656512 e!4656506)))

(declare-fun b!7886882 () Bool)

(assert (=> b!7886882 (= e!4656513 1)))

(declare-fun b!7886883 () Bool)

(declare-fun c!1447828 () Bool)

(assert (=> b!7886883 (= c!1447828 ((_ is Star!21205) (regOne!42923 r!14100)))))

(assert (=> b!7886883 (= e!4656514 e!4656505)))

(declare-fun b!7886884 () Bool)

(assert (=> b!7886884 (= e!4656509 e!4656512)))

(assert (=> b!7886884 (= c!1447831 ((_ is Star!21205) (regOne!42923 r!14100)))))

(declare-fun bm!731618 () Bool)

(assert (=> bm!731618 (= call!731619 (regexDepth!509 (ite c!1447825 (regOne!42923 (regOne!42923 r!14100)) (ite c!1447830 (regTwo!42922 (regOne!42923 r!14100)) (reg!21534 (regOne!42923 r!14100))))))))

(declare-fun b!7886885 () Bool)

(declare-fun res!3130954 () Bool)

(assert (=> b!7886885 (=> (not res!3130954) (not e!4656508))))

(assert (=> b!7886885 (= res!3130954 (> lt!2681393 call!731620))))

(assert (=> b!7886885 (= e!4656514 e!4656508)))

(assert (= (and d!2356525 c!1447826) b!7886879))

(assert (= (and d!2356525 (not c!1447826)) b!7886884))

(assert (= (and b!7886884 c!1447831) b!7886870))

(assert (= (and b!7886884 (not c!1447831)) b!7886881))

(assert (= (and b!7886881 c!1447827) b!7886869))

(assert (= (and b!7886881 (not c!1447827)) b!7886873))

(assert (= (and b!7886873 c!1447829) b!7886880))

(assert (= (and b!7886873 (not c!1447829)) b!7886882))

(assert (= (or b!7886869 b!7886880) bm!731615))

(assert (= (or b!7886869 b!7886880) bm!731617))

(assert (= (or b!7886869 b!7886880) bm!731613))

(assert (= (or b!7886870 bm!731617) bm!731612))

(assert (= (and d!2356525 res!3130955) b!7886878))

(assert (= (and b!7886878 c!1447825) b!7886875))

(assert (= (and b!7886878 (not c!1447825)) b!7886877))

(assert (= (and b!7886875 res!3130953) b!7886871))

(assert (= (and b!7886877 c!1447830) b!7886885))

(assert (= (and b!7886877 (not c!1447830)) b!7886883))

(assert (= (and b!7886885 res!3130954) b!7886872))

(assert (= (and b!7886883 c!1447828) b!7886876))

(assert (= (and b!7886883 (not c!1447828)) b!7886874))

(assert (= (or b!7886872 b!7886876) bm!731614))

(assert (= (or b!7886875 bm!731614) bm!731618))

(assert (= (or b!7886871 b!7886885) bm!731616))

(declare-fun m!8269392 () Bool)

(assert (=> bm!731613 m!8269392))

(declare-fun m!8269394 () Bool)

(assert (=> bm!731612 m!8269394))

(declare-fun m!8269396 () Bool)

(assert (=> bm!731615 m!8269396))

(declare-fun m!8269398 () Bool)

(assert (=> bm!731616 m!8269398))

(declare-fun m!8269400 () Bool)

(assert (=> bm!731618 m!8269400))

(assert (=> b!7886750 d!2356525))

(declare-fun b!7886903 () Bool)

(declare-fun e!4656526 () Int)

(declare-fun call!731631 () Int)

(assert (=> b!7886903 (= e!4656526 (+ 1 call!731631))))

(declare-fun bm!731626 () Bool)

(declare-fun c!1447841 () Bool)

(declare-fun call!731632 () Int)

(declare-fun c!1447845 () Bool)

(assert (=> bm!731626 (= call!731632 (regexDepth!509 (ite c!1447845 (reg!21534 r!14100) (ite c!1447841 (regTwo!42923 r!14100) (regOne!42922 r!14100)))))))

(declare-fun b!7886904 () Bool)

(declare-fun e!4656532 () Int)

(assert (=> b!7886904 (= e!4656532 (+ 1 call!731632))))

(declare-fun b!7886905 () Bool)

(declare-fun e!4656530 () Bool)

(declare-fun lt!2681395 () Int)

(declare-fun call!731634 () Int)

(assert (=> b!7886905 (= e!4656530 (> lt!2681395 call!731634))))

(declare-fun bm!731627 () Bool)

(declare-fun call!731635 () Int)

(declare-fun call!731637 () Int)

(assert (=> bm!731627 (= call!731631 (maxBigInt!0 (ite c!1447841 call!731637 call!731635) (ite c!1447841 call!731635 call!731637)))))

(declare-fun b!7886906 () Bool)

(declare-fun e!4656528 () Bool)

(declare-fun call!731636 () Int)

(assert (=> b!7886906 (= e!4656528 (> lt!2681395 call!731636))))

(declare-fun bm!731628 () Bool)

(declare-fun call!731633 () Int)

(assert (=> bm!731628 (= call!731636 call!731633)))

(declare-fun bm!731629 () Bool)

(assert (=> bm!731629 (= call!731637 (regexDepth!509 (ite c!1447841 (regOne!42923 r!14100) (regTwo!42922 r!14100))))))

(declare-fun b!7886907 () Bool)

(declare-fun e!4656533 () Int)

(assert (=> b!7886907 (= e!4656526 e!4656533)))

(declare-fun c!1447843 () Bool)

(assert (=> b!7886907 (= c!1447843 ((_ is Concat!30050) r!14100))))

(declare-fun b!7886908 () Bool)

(declare-fun e!4656525 () Bool)

(assert (=> b!7886908 (= e!4656525 (= lt!2681395 1))))

(declare-fun b!7886909 () Bool)

(declare-fun e!4656531 () Bool)

(assert (=> b!7886909 (= e!4656531 e!4656530)))

(declare-fun res!3130959 () Bool)

(assert (=> b!7886909 (= res!3130959 (> lt!2681395 call!731633))))

(assert (=> b!7886909 (=> (not res!3130959) (not e!4656530))))

(declare-fun b!7886910 () Bool)

(assert (=> b!7886910 (= e!4656525 (> lt!2681395 call!731636))))

(declare-fun bm!731630 () Bool)

(declare-fun c!1447839 () Bool)

(assert (=> bm!731630 (= call!731634 (regexDepth!509 (ite c!1447839 (regTwo!42923 r!14100) (regOne!42922 r!14100))))))

(declare-fun d!2356529 () Bool)

(declare-fun e!4656527 () Bool)

(assert (=> d!2356529 e!4656527))

(declare-fun res!3130961 () Bool)

(assert (=> d!2356529 (=> (not res!3130961) (not e!4656527))))

(assert (=> d!2356529 (= res!3130961 (> lt!2681395 0))))

(declare-fun e!4656529 () Int)

(assert (=> d!2356529 (= lt!2681395 e!4656529)))

(declare-fun c!1447840 () Bool)

(assert (=> d!2356529 (= c!1447840 ((_ is ElementMatch!21205) r!14100))))

(assert (=> d!2356529 (= (regexDepth!509 r!14100) lt!2681395)))

(declare-fun b!7886911 () Bool)

(declare-fun e!4656534 () Bool)

(assert (=> b!7886911 (= e!4656531 e!4656534)))

(declare-fun c!1447844 () Bool)

(assert (=> b!7886911 (= c!1447844 ((_ is Concat!30050) r!14100))))

(declare-fun b!7886912 () Bool)

(assert (=> b!7886912 (= e!4656527 e!4656531)))

(assert (=> b!7886912 (= c!1447839 ((_ is Union!21205) r!14100))))

(declare-fun bm!731631 () Bool)

(assert (=> bm!731631 (= call!731635 call!731632)))

(declare-fun b!7886913 () Bool)

(assert (=> b!7886913 (= e!4656529 1)))

(declare-fun b!7886914 () Bool)

(assert (=> b!7886914 (= e!4656533 (+ 1 call!731631))))

(declare-fun b!7886915 () Bool)

(assert (=> b!7886915 (= c!1447841 ((_ is Union!21205) r!14100))))

(assert (=> b!7886915 (= e!4656532 e!4656526)))

(declare-fun b!7886916 () Bool)

(assert (=> b!7886916 (= e!4656533 1)))

(declare-fun b!7886917 () Bool)

(declare-fun c!1447842 () Bool)

(assert (=> b!7886917 (= c!1447842 ((_ is Star!21205) r!14100))))

(assert (=> b!7886917 (= e!4656534 e!4656525)))

(declare-fun b!7886918 () Bool)

(assert (=> b!7886918 (= e!4656529 e!4656532)))

(assert (=> b!7886918 (= c!1447845 ((_ is Star!21205) r!14100))))

(declare-fun bm!731632 () Bool)

(assert (=> bm!731632 (= call!731633 (regexDepth!509 (ite c!1447839 (regOne!42923 r!14100) (ite c!1447844 (regTwo!42922 r!14100) (reg!21534 r!14100)))))))

(declare-fun b!7886919 () Bool)

(declare-fun res!3130960 () Bool)

(assert (=> b!7886919 (=> (not res!3130960) (not e!4656528))))

(assert (=> b!7886919 (= res!3130960 (> lt!2681395 call!731634))))

(assert (=> b!7886919 (= e!4656534 e!4656528)))

(assert (= (and d!2356529 c!1447840) b!7886913))

(assert (= (and d!2356529 (not c!1447840)) b!7886918))

(assert (= (and b!7886918 c!1447845) b!7886904))

(assert (= (and b!7886918 (not c!1447845)) b!7886915))

(assert (= (and b!7886915 c!1447841) b!7886903))

(assert (= (and b!7886915 (not c!1447841)) b!7886907))

(assert (= (and b!7886907 c!1447843) b!7886914))

(assert (= (and b!7886907 (not c!1447843)) b!7886916))

(assert (= (or b!7886903 b!7886914) bm!731629))

(assert (= (or b!7886903 b!7886914) bm!731631))

(assert (= (or b!7886903 b!7886914) bm!731627))

(assert (= (or b!7886904 bm!731631) bm!731626))

(assert (= (and d!2356529 res!3130961) b!7886912))

(assert (= (and b!7886912 c!1447839) b!7886909))

(assert (= (and b!7886912 (not c!1447839)) b!7886911))

(assert (= (and b!7886909 res!3130959) b!7886905))

(assert (= (and b!7886911 c!1447844) b!7886919))

(assert (= (and b!7886911 (not c!1447844)) b!7886917))

(assert (= (and b!7886919 res!3130960) b!7886906))

(assert (= (and b!7886917 c!1447842) b!7886910))

(assert (= (and b!7886917 (not c!1447842)) b!7886908))

(assert (= (or b!7886906 b!7886910) bm!731628))

(assert (= (or b!7886909 bm!731628) bm!731632))

(assert (= (or b!7886905 b!7886919) bm!731630))

(declare-fun m!8269412 () Bool)

(assert (=> bm!731627 m!8269412))

(declare-fun m!8269414 () Bool)

(assert (=> bm!731626 m!8269414))

(declare-fun m!8269416 () Bool)

(assert (=> bm!731629 m!8269416))

(declare-fun m!8269418 () Bool)

(assert (=> bm!731630 m!8269418))

(declare-fun m!8269420 () Bool)

(assert (=> bm!731632 m!8269420))

(assert (=> b!7886750 d!2356529))

(declare-fun d!2356533 () Bool)

(declare-fun lt!2681401 () Int)

(assert (=> d!2356533 (>= lt!2681401 0)))

(declare-fun e!4656540 () Int)

(assert (=> d!2356533 (= lt!2681401 e!4656540)))

(declare-fun c!1447851 () Bool)

(assert (=> d!2356533 (= c!1447851 ((_ is Nil!73938) s!9586))))

(assert (=> d!2356533 (= (size!42846 s!9586) lt!2681401)))

(declare-fun b!7886930 () Bool)

(assert (=> b!7886930 (= e!4656540 0)))

(declare-fun b!7886931 () Bool)

(assert (=> b!7886931 (= e!4656540 (+ 1 (size!42846 (t!388797 s!9586))))))

(assert (= (and d!2356533 c!1447851) b!7886930))

(assert (= (and d!2356533 (not c!1447851)) b!7886931))

(declare-fun m!8269424 () Bool)

(assert (=> b!7886931 m!8269424))

(assert (=> b!7886750 d!2356533))

(declare-fun b!7886944 () Bool)

(declare-fun e!4656543 () Bool)

(declare-fun tp!2346257 () Bool)

(assert (=> b!7886944 (= e!4656543 tp!2346257)))

(declare-fun b!7886942 () Bool)

(assert (=> b!7886942 (= e!4656543 tp_is_empty!52809)))

(assert (=> b!7886756 (= tp!2346245 e!4656543)))

(declare-fun b!7886945 () Bool)

(declare-fun tp!2346258 () Bool)

(declare-fun tp!2346259 () Bool)

(assert (=> b!7886945 (= e!4656543 (and tp!2346258 tp!2346259))))

(declare-fun b!7886943 () Bool)

(declare-fun tp!2346260 () Bool)

(declare-fun tp!2346261 () Bool)

(assert (=> b!7886943 (= e!4656543 (and tp!2346260 tp!2346261))))

(assert (= (and b!7886756 ((_ is ElementMatch!21205) (regOne!42923 r!14100))) b!7886942))

(assert (= (and b!7886756 ((_ is Concat!30050) (regOne!42923 r!14100))) b!7886943))

(assert (= (and b!7886756 ((_ is Star!21205) (regOne!42923 r!14100))) b!7886944))

(assert (= (and b!7886756 ((_ is Union!21205) (regOne!42923 r!14100))) b!7886945))

(declare-fun b!7886948 () Bool)

(declare-fun e!4656544 () Bool)

(declare-fun tp!2346262 () Bool)

(assert (=> b!7886948 (= e!4656544 tp!2346262)))

(declare-fun b!7886946 () Bool)

(assert (=> b!7886946 (= e!4656544 tp_is_empty!52809)))

(assert (=> b!7886756 (= tp!2346243 e!4656544)))

(declare-fun b!7886949 () Bool)

(declare-fun tp!2346263 () Bool)

(declare-fun tp!2346264 () Bool)

(assert (=> b!7886949 (= e!4656544 (and tp!2346263 tp!2346264))))

(declare-fun b!7886947 () Bool)

(declare-fun tp!2346265 () Bool)

(declare-fun tp!2346266 () Bool)

(assert (=> b!7886947 (= e!4656544 (and tp!2346265 tp!2346266))))

(assert (= (and b!7886756 ((_ is ElementMatch!21205) (regTwo!42923 r!14100))) b!7886946))

(assert (= (and b!7886756 ((_ is Concat!30050) (regTwo!42923 r!14100))) b!7886947))

(assert (= (and b!7886756 ((_ is Star!21205) (regTwo!42923 r!14100))) b!7886948))

(assert (= (and b!7886756 ((_ is Union!21205) (regTwo!42923 r!14100))) b!7886949))

(declare-fun b!7886954 () Bool)

(declare-fun e!4656547 () Bool)

(declare-fun tp!2346269 () Bool)

(assert (=> b!7886954 (= e!4656547 (and tp_is_empty!52809 tp!2346269))))

(assert (=> b!7886751 (= tp!2346246 e!4656547)))

(assert (= (and b!7886751 ((_ is Cons!73938) (t!388797 s!9586))) b!7886954))

(declare-fun b!7886957 () Bool)

(declare-fun e!4656548 () Bool)

(declare-fun tp!2346270 () Bool)

(assert (=> b!7886957 (= e!4656548 tp!2346270)))

(declare-fun b!7886955 () Bool)

(assert (=> b!7886955 (= e!4656548 tp_is_empty!52809)))

(assert (=> b!7886754 (= tp!2346244 e!4656548)))

(declare-fun b!7886958 () Bool)

(declare-fun tp!2346271 () Bool)

(declare-fun tp!2346272 () Bool)

(assert (=> b!7886958 (= e!4656548 (and tp!2346271 tp!2346272))))

(declare-fun b!7886956 () Bool)

(declare-fun tp!2346273 () Bool)

(declare-fun tp!2346274 () Bool)

(assert (=> b!7886956 (= e!4656548 (and tp!2346273 tp!2346274))))

(assert (= (and b!7886754 ((_ is ElementMatch!21205) (reg!21534 r!14100))) b!7886955))

(assert (= (and b!7886754 ((_ is Concat!30050) (reg!21534 r!14100))) b!7886956))

(assert (= (and b!7886754 ((_ is Star!21205) (reg!21534 r!14100))) b!7886957))

(assert (= (and b!7886754 ((_ is Union!21205) (reg!21534 r!14100))) b!7886958))

(declare-fun b!7886961 () Bool)

(declare-fun e!4656549 () Bool)

(declare-fun tp!2346275 () Bool)

(assert (=> b!7886961 (= e!4656549 tp!2346275)))

(declare-fun b!7886959 () Bool)

(assert (=> b!7886959 (= e!4656549 tp_is_empty!52809)))

(assert (=> b!7886752 (= tp!2346242 e!4656549)))

(declare-fun b!7886962 () Bool)

(declare-fun tp!2346276 () Bool)

(declare-fun tp!2346277 () Bool)

(assert (=> b!7886962 (= e!4656549 (and tp!2346276 tp!2346277))))

(declare-fun b!7886960 () Bool)

(declare-fun tp!2346278 () Bool)

(declare-fun tp!2346279 () Bool)

(assert (=> b!7886960 (= e!4656549 (and tp!2346278 tp!2346279))))

(assert (= (and b!7886752 ((_ is ElementMatch!21205) (regOne!42922 r!14100))) b!7886959))

(assert (= (and b!7886752 ((_ is Concat!30050) (regOne!42922 r!14100))) b!7886960))

(assert (= (and b!7886752 ((_ is Star!21205) (regOne!42922 r!14100))) b!7886961))

(assert (= (and b!7886752 ((_ is Union!21205) (regOne!42922 r!14100))) b!7886962))

(declare-fun b!7886969 () Bool)

(declare-fun e!4656552 () Bool)

(declare-fun tp!2346280 () Bool)

(assert (=> b!7886969 (= e!4656552 tp!2346280)))

(declare-fun b!7886967 () Bool)

(assert (=> b!7886967 (= e!4656552 tp_is_empty!52809)))

(assert (=> b!7886752 (= tp!2346241 e!4656552)))

(declare-fun b!7886970 () Bool)

(declare-fun tp!2346281 () Bool)

(declare-fun tp!2346282 () Bool)

(assert (=> b!7886970 (= e!4656552 (and tp!2346281 tp!2346282))))

(declare-fun b!7886968 () Bool)

(declare-fun tp!2346283 () Bool)

(declare-fun tp!2346284 () Bool)

(assert (=> b!7886968 (= e!4656552 (and tp!2346283 tp!2346284))))

(assert (= (and b!7886752 ((_ is ElementMatch!21205) (regTwo!42922 r!14100))) b!7886967))

(assert (= (and b!7886752 ((_ is Concat!30050) (regTwo!42922 r!14100))) b!7886968))

(assert (= (and b!7886752 ((_ is Star!21205) (regTwo!42922 r!14100))) b!7886969))

(assert (= (and b!7886752 ((_ is Union!21205) (regTwo!42922 r!14100))) b!7886970))

(check-sat (not b!7886968) (not bm!731616) (not b!7886949) (not b!7886944) (not bm!731618) (not b!7886970) (not bm!731576) (not bm!731629) (not b!7886969) (not bm!731612) (not b!7886777) (not bm!731615) (not b!7886957) (not bm!731630) (not b!7886945) (not bm!731575) (not b!7886961) (not b!7886943) (not bm!731627) (not b!7886962) (not b!7886956) (not bm!731632) (not b!7886958) tp_is_empty!52809 (not b!7886931) (not b!7886947) (not b!7886960) (not bm!731626) (not b!7886954) (not bm!731613) (not b!7886948))
(check-sat)
