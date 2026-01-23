; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282202 () Bool)

(assert start!282202)

(declare-fun res!1197788 () Bool)

(declare-fun e!1829924 () Bool)

(assert (=> start!282202 (=> (not res!1197788) (not e!1829924))))

(declare-datatypes ((C!17884 0))(
  ( (C!17885 (val!10976 Int)) )
))
(declare-datatypes ((Regex!8851 0))(
  ( (ElementMatch!8851 (c!471486 C!17884)) (Concat!14172 (regOne!18214 Regex!8851) (regTwo!18214 Regex!8851)) (EmptyExpr!8851) (Star!8851 (reg!9180 Regex!8851)) (EmptyLang!8851) (Union!8851 (regOne!18215 Regex!8851) (regTwo!18215 Regex!8851)) )
))
(declare-fun r!23079 () Regex!8851)

(declare-fun validRegex!3624 (Regex!8851) Bool)

(assert (=> start!282202 (= res!1197788 (validRegex!3624 r!23079))))

(assert (=> start!282202 e!1829924))

(declare-fun e!1829923 () Bool)

(assert (=> start!282202 e!1829923))

(declare-fun b!2896618 () Bool)

(declare-fun tp!929829 () Bool)

(assert (=> b!2896618 (= e!1829923 tp!929829)))

(declare-fun b!2896619 () Bool)

(declare-fun tp!929827 () Bool)

(declare-fun tp!929828 () Bool)

(assert (=> b!2896619 (= e!1829923 (and tp!929827 tp!929828))))

(declare-fun b!2896620 () Bool)

(declare-fun e!1829925 () Bool)

(assert (=> b!2896620 (= e!1829924 e!1829925)))

(declare-fun res!1197786 () Bool)

(assert (=> b!2896620 (=> (not res!1197786) (not e!1829925))))

(declare-datatypes ((List!34652 0))(
  ( (Nil!34528) (Cons!34528 (h!39948 C!17884) (t!233695 List!34652)) )
))
(declare-datatypes ((Option!6524 0))(
  ( (None!6523) (Some!6523 (v!34649 List!34652)) )
))
(declare-fun lt!1021654 () Option!6524)

(get-info :version)

(assert (=> b!2896620 (= res!1197786 ((_ is Some!6523) lt!1021654))))

(declare-fun getLanguageWitness!558 (Regex!8851) Option!6524)

(assert (=> b!2896620 (= lt!1021654 (getLanguageWitness!558 (regOne!18214 r!23079)))))

(declare-fun b!2896621 () Bool)

(declare-fun res!1197789 () Bool)

(assert (=> b!2896621 (=> (not res!1197789) (not e!1829925))))

(assert (=> b!2896621 (= res!1197789 ((_ is Some!6523) (getLanguageWitness!558 (regTwo!18214 r!23079))))))

(declare-fun b!2896622 () Bool)

(declare-fun res!1197787 () Bool)

(assert (=> b!2896622 (=> (not res!1197787) (not e!1829924))))

(assert (=> b!2896622 (= res!1197787 (and (not ((_ is EmptyExpr!8851) r!23079)) (not ((_ is EmptyLang!8851) r!23079)) (not ((_ is ElementMatch!8851) r!23079)) (not ((_ is Star!8851) r!23079)) (not ((_ is Union!8851) r!23079))))))

(declare-fun b!2896623 () Bool)

(declare-fun regexDepth!79 (Regex!8851) Int)

(assert (=> b!2896623 (= e!1829925 (>= (regexDepth!79 (regOne!18214 r!23079)) (regexDepth!79 r!23079)))))

(declare-fun b!2896624 () Bool)

(declare-fun res!1197783 () Bool)

(assert (=> b!2896624 (=> (not res!1197783) (not e!1829925))))

(declare-fun isDefined!5088 (Option!6524) Bool)

(assert (=> b!2896624 (= res!1197783 (isDefined!5088 lt!1021654))))

(declare-fun b!2896625 () Bool)

(declare-fun res!1197784 () Bool)

(assert (=> b!2896625 (=> (not res!1197784) (not e!1829924))))

(assert (=> b!2896625 (= res!1197784 (isDefined!5088 (getLanguageWitness!558 r!23079)))))

(declare-fun b!2896626 () Bool)

(declare-fun tp_is_empty!15289 () Bool)

(assert (=> b!2896626 (= e!1829923 tp_is_empty!15289)))

(declare-fun b!2896627 () Bool)

(declare-fun tp!929826 () Bool)

(declare-fun tp!929825 () Bool)

(assert (=> b!2896627 (= e!1829923 (and tp!929826 tp!929825))))

(declare-fun b!2896628 () Bool)

(declare-fun res!1197785 () Bool)

(assert (=> b!2896628 (=> (not res!1197785) (not e!1829925))))

(assert (=> b!2896628 (= res!1197785 (validRegex!3624 (regOne!18214 r!23079)))))

(assert (= (and start!282202 res!1197788) b!2896625))

(assert (= (and b!2896625 res!1197784) b!2896622))

(assert (= (and b!2896622 res!1197787) b!2896620))

(assert (= (and b!2896620 res!1197786) b!2896621))

(assert (= (and b!2896621 res!1197789) b!2896628))

(assert (= (and b!2896628 res!1197785) b!2896624))

(assert (= (and b!2896624 res!1197783) b!2896623))

(assert (= (and start!282202 ((_ is ElementMatch!8851) r!23079)) b!2896626))

(assert (= (and start!282202 ((_ is Concat!14172) r!23079)) b!2896619))

(assert (= (and start!282202 ((_ is Star!8851) r!23079)) b!2896618))

(assert (= (and start!282202 ((_ is Union!8851) r!23079)) b!2896627))

(declare-fun m!3304397 () Bool)

(assert (=> b!2896623 m!3304397))

(declare-fun m!3304399 () Bool)

(assert (=> b!2896623 m!3304399))

(declare-fun m!3304401 () Bool)

(assert (=> start!282202 m!3304401))

(declare-fun m!3304403 () Bool)

(assert (=> b!2896624 m!3304403))

(declare-fun m!3304405 () Bool)

(assert (=> b!2896620 m!3304405))

(declare-fun m!3304407 () Bool)

(assert (=> b!2896628 m!3304407))

(declare-fun m!3304409 () Bool)

(assert (=> b!2896625 m!3304409))

(assert (=> b!2896625 m!3304409))

(declare-fun m!3304411 () Bool)

(assert (=> b!2896625 m!3304411))

(declare-fun m!3304413 () Bool)

(assert (=> b!2896621 m!3304413))

(check-sat (not b!2896621) (not b!2896624) (not b!2896628) (not b!2896619) (not b!2896625) (not start!282202) (not b!2896627) (not b!2896620) tp_is_empty!15289 (not b!2896618) (not b!2896623))
(check-sat)
(get-model)

(declare-fun bm!188443 () Bool)

(declare-fun call!188449 () Option!6524)

(declare-fun c!471509 () Bool)

(assert (=> bm!188443 (= call!188449 (getLanguageWitness!558 (ite c!471509 (regTwo!18215 (regTwo!18214 r!23079)) (regOne!18214 (regTwo!18214 r!23079)))))))

(declare-fun b!2896688 () Bool)

(declare-fun e!1829963 () Option!6524)

(declare-fun lt!1021661 () Option!6524)

(assert (=> b!2896688 (= e!1829963 lt!1021661)))

(declare-fun b!2896689 () Bool)

(assert (=> b!2896689 (= c!471509 ((_ is Union!8851) (regTwo!18214 r!23079)))))

(declare-fun e!1829965 () Option!6524)

(declare-fun e!1829969 () Option!6524)

(assert (=> b!2896689 (= e!1829965 e!1829969)))

(declare-fun b!2896690 () Bool)

(declare-fun e!1829964 () Option!6524)

(assert (=> b!2896690 (= e!1829964 e!1829965)))

(declare-fun c!471514 () Bool)

(assert (=> b!2896690 (= c!471514 ((_ is Star!8851) (regTwo!18214 r!23079)))))

(declare-fun b!2896691 () Bool)

(assert (=> b!2896691 (= e!1829969 e!1829963)))

(declare-fun call!188448 () Option!6524)

(assert (=> b!2896691 (= lt!1021661 call!188448)))

(declare-fun c!471512 () Bool)

(assert (=> b!2896691 (= c!471512 ((_ is Some!6523) lt!1021661))))

(declare-fun b!2896692 () Bool)

(declare-fun e!1829968 () Option!6524)

(declare-fun e!1829970 () Option!6524)

(assert (=> b!2896692 (= e!1829968 e!1829970)))

(declare-fun c!471513 () Bool)

(assert (=> b!2896692 (= c!471513 ((_ is EmptyLang!8851) (regTwo!18214 r!23079)))))

(declare-fun d!834953 () Bool)

(declare-fun c!471515 () Bool)

(assert (=> d!834953 (= c!471515 ((_ is EmptyExpr!8851) (regTwo!18214 r!23079)))))

(assert (=> d!834953 (= (getLanguageWitness!558 (regTwo!18214 r!23079)) e!1829968)))

(declare-fun b!2896693 () Bool)

(assert (=> b!2896693 (= e!1829968 (Some!6523 Nil!34528))))

(declare-fun b!2896694 () Bool)

(assert (=> b!2896694 (= e!1829963 call!188449)))

(declare-fun b!2896695 () Bool)

(declare-fun e!1829967 () Option!6524)

(declare-fun lt!1021663 () Option!6524)

(declare-fun lt!1021662 () Option!6524)

(declare-fun ++!8248 (List!34652 List!34652) List!34652)

(assert (=> b!2896695 (= e!1829967 (Some!6523 (++!8248 (v!34649 lt!1021663) (v!34649 lt!1021662))))))

(declare-fun b!2896696 () Bool)

(assert (=> b!2896696 (= e!1829970 None!6523)))

(declare-fun b!2896697 () Bool)

(assert (=> b!2896697 (= e!1829965 (Some!6523 Nil!34528))))

(declare-fun b!2896698 () Bool)

(declare-fun c!471516 () Bool)

(assert (=> b!2896698 (= c!471516 ((_ is ElementMatch!8851) (regTwo!18214 r!23079)))))

(assert (=> b!2896698 (= e!1829970 e!1829964)))

(declare-fun b!2896699 () Bool)

(declare-fun e!1829966 () Option!6524)

(assert (=> b!2896699 (= e!1829969 e!1829966)))

(assert (=> b!2896699 (= lt!1021663 call!188449)))

(declare-fun c!471510 () Bool)

(assert (=> b!2896699 (= c!471510 ((_ is Some!6523) lt!1021663))))

(declare-fun b!2896700 () Bool)

(assert (=> b!2896700 (= e!1829966 None!6523)))

(declare-fun b!2896701 () Bool)

(assert (=> b!2896701 (= e!1829964 (Some!6523 (Cons!34528 (c!471486 (regTwo!18214 r!23079)) Nil!34528)))))

(declare-fun b!2896702 () Bool)

(assert (=> b!2896702 (= e!1829967 None!6523)))

(declare-fun b!2896703 () Bool)

(declare-fun c!471511 () Bool)

(assert (=> b!2896703 (= c!471511 ((_ is Some!6523) lt!1021662))))

(assert (=> b!2896703 (= lt!1021662 call!188448)))

(assert (=> b!2896703 (= e!1829966 e!1829967)))

(declare-fun bm!188444 () Bool)

(assert (=> bm!188444 (= call!188448 (getLanguageWitness!558 (ite c!471509 (regOne!18215 (regTwo!18214 r!23079)) (regTwo!18214 (regTwo!18214 r!23079)))))))

(assert (= (and d!834953 c!471515) b!2896693))

(assert (= (and d!834953 (not c!471515)) b!2896692))

(assert (= (and b!2896692 c!471513) b!2896696))

(assert (= (and b!2896692 (not c!471513)) b!2896698))

(assert (= (and b!2896698 c!471516) b!2896701))

(assert (= (and b!2896698 (not c!471516)) b!2896690))

(assert (= (and b!2896690 c!471514) b!2896697))

(assert (= (and b!2896690 (not c!471514)) b!2896689))

(assert (= (and b!2896689 c!471509) b!2896691))

(assert (= (and b!2896689 (not c!471509)) b!2896699))

(assert (= (and b!2896691 c!471512) b!2896688))

(assert (= (and b!2896691 (not c!471512)) b!2896694))

(assert (= (and b!2896699 c!471510) b!2896703))

(assert (= (and b!2896699 (not c!471510)) b!2896700))

(assert (= (and b!2896703 c!471511) b!2896695))

(assert (= (and b!2896703 (not c!471511)) b!2896702))

(assert (= (or b!2896694 b!2896699) bm!188443))

(assert (= (or b!2896691 b!2896703) bm!188444))

(declare-fun m!3304423 () Bool)

(assert (=> bm!188443 m!3304423))

(declare-fun m!3304425 () Bool)

(assert (=> b!2896695 m!3304425))

(declare-fun m!3304427 () Bool)

(assert (=> bm!188444 m!3304427))

(assert (=> b!2896621 d!834953))

(declare-fun b!2896827 () Bool)

(declare-fun e!1830039 () Bool)

(declare-fun e!1830044 () Bool)

(assert (=> b!2896827 (= e!1830039 e!1830044)))

(declare-fun res!1197818 () Bool)

(declare-fun lt!1021681 () Int)

(declare-fun call!188477 () Int)

(assert (=> b!2896827 (= res!1197818 (> lt!1021681 call!188477))))

(assert (=> b!2896827 (=> (not res!1197818) (not e!1830044))))

(declare-fun b!2896828 () Bool)

(declare-fun e!1830038 () Int)

(declare-fun call!188478 () Int)

(assert (=> b!2896828 (= e!1830038 (+ 1 call!188478))))

(declare-fun b!2896829 () Bool)

(declare-fun c!471579 () Bool)

(assert (=> b!2896829 (= c!471579 ((_ is Union!8851) (regOne!18214 r!23079)))))

(declare-fun e!1830042 () Int)

(assert (=> b!2896829 (= e!1830042 e!1830038)))

(declare-fun bm!188472 () Bool)

(declare-fun call!188480 () Int)

(declare-fun call!188481 () Int)

(assert (=> bm!188472 (= call!188480 call!188481)))

(declare-fun b!2896830 () Bool)

(declare-fun e!1830045 () Bool)

(assert (=> b!2896830 (= e!1830045 (> lt!1021681 call!188477))))

(declare-fun bm!188473 () Bool)

(declare-fun call!188482 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!188473 (= call!188478 (maxBigInt!0 call!188480 call!188482))))

(declare-fun b!2896831 () Bool)

(declare-fun e!1830046 () Bool)

(declare-fun call!188483 () Int)

(assert (=> b!2896831 (= e!1830046 (> lt!1021681 call!188483))))

(declare-fun b!2896832 () Bool)

(declare-fun c!471576 () Bool)

(assert (=> b!2896832 (= c!471576 ((_ is Star!8851) (regOne!18214 r!23079)))))

(declare-fun e!1830040 () Bool)

(assert (=> b!2896832 (= e!1830040 e!1830046)))

(declare-fun c!471578 () Bool)

(declare-fun bm!188474 () Bool)

(assert (=> bm!188474 (= call!188481 (regexDepth!79 (ite c!471578 (reg!9180 (regOne!18214 r!23079)) (ite c!471579 (regOne!18215 (regOne!18214 r!23079)) (regOne!18214 (regOne!18214 r!23079))))))))

(declare-fun b!2896834 () Bool)

(assert (=> b!2896834 (= e!1830046 (= lt!1021681 1))))

(declare-fun b!2896835 () Bool)

(declare-fun res!1197817 () Bool)

(assert (=> b!2896835 (=> (not res!1197817) (not e!1830045))))

(assert (=> b!2896835 (= res!1197817 (> lt!1021681 call!188483))))

(assert (=> b!2896835 (= e!1830040 e!1830045)))

(declare-fun b!2896836 () Bool)

(declare-fun e!1830047 () Int)

(assert (=> b!2896836 (= e!1830047 e!1830042)))

(assert (=> b!2896836 (= c!471578 ((_ is Star!8851) (regOne!18214 r!23079)))))

(declare-fun b!2896837 () Bool)

(declare-fun e!1830041 () Int)

(assert (=> b!2896837 (= e!1830038 e!1830041)))

(declare-fun c!471574 () Bool)

(assert (=> b!2896837 (= c!471574 ((_ is Concat!14172) (regOne!18214 r!23079)))))

(declare-fun b!2896838 () Bool)

(declare-fun call!188479 () Int)

(assert (=> b!2896838 (= e!1830044 (> lt!1021681 call!188479))))

(declare-fun b!2896839 () Bool)

(assert (=> b!2896839 (= e!1830041 1)))

(declare-fun b!2896840 () Bool)

(assert (=> b!2896840 (= e!1830047 1)))

(declare-fun b!2896841 () Bool)

(assert (=> b!2896841 (= e!1830042 (+ 1 call!188481))))

(declare-fun bm!188475 () Bool)

(declare-fun c!471577 () Bool)

(declare-fun c!471575 () Bool)

(assert (=> bm!188475 (= call!188479 (regexDepth!79 (ite c!471577 (regTwo!18215 (regOne!18214 r!23079)) (ite c!471575 (regOne!18214 (regOne!18214 r!23079)) (reg!9180 (regOne!18214 r!23079))))))))

(declare-fun bm!188476 () Bool)

(assert (=> bm!188476 (= call!188482 (regexDepth!79 (ite c!471579 (regTwo!18215 (regOne!18214 r!23079)) (regTwo!18214 (regOne!18214 r!23079)))))))

(declare-fun bm!188477 () Bool)

(assert (=> bm!188477 (= call!188483 call!188479)))

(declare-fun b!2896842 () Bool)

(assert (=> b!2896842 (= e!1830041 (+ 1 call!188478))))

(declare-fun bm!188478 () Bool)

(assert (=> bm!188478 (= call!188477 (regexDepth!79 (ite c!471577 (regOne!18215 (regOne!18214 r!23079)) (regTwo!18214 (regOne!18214 r!23079)))))))

(declare-fun b!2896843 () Bool)

(assert (=> b!2896843 (= e!1830039 e!1830040)))

(assert (=> b!2896843 (= c!471575 ((_ is Concat!14172) (regOne!18214 r!23079)))))

(declare-fun b!2896833 () Bool)

(declare-fun e!1830043 () Bool)

(assert (=> b!2896833 (= e!1830043 e!1830039)))

(assert (=> b!2896833 (= c!471577 ((_ is Union!8851) (regOne!18214 r!23079)))))

(declare-fun d!834961 () Bool)

(assert (=> d!834961 e!1830043))

(declare-fun res!1197816 () Bool)

(assert (=> d!834961 (=> (not res!1197816) (not e!1830043))))

(assert (=> d!834961 (= res!1197816 (> lt!1021681 0))))

(assert (=> d!834961 (= lt!1021681 e!1830047)))

(declare-fun c!471573 () Bool)

(assert (=> d!834961 (= c!471573 ((_ is ElementMatch!8851) (regOne!18214 r!23079)))))

(assert (=> d!834961 (= (regexDepth!79 (regOne!18214 r!23079)) lt!1021681)))

(assert (= (and d!834961 c!471573) b!2896840))

(assert (= (and d!834961 (not c!471573)) b!2896836))

(assert (= (and b!2896836 c!471578) b!2896841))

(assert (= (and b!2896836 (not c!471578)) b!2896829))

(assert (= (and b!2896829 c!471579) b!2896828))

(assert (= (and b!2896829 (not c!471579)) b!2896837))

(assert (= (and b!2896837 c!471574) b!2896842))

(assert (= (and b!2896837 (not c!471574)) b!2896839))

(assert (= (or b!2896828 b!2896842) bm!188472))

(assert (= (or b!2896828 b!2896842) bm!188476))

(assert (= (or b!2896828 b!2896842) bm!188473))

(assert (= (or b!2896841 bm!188472) bm!188474))

(assert (= (and d!834961 res!1197816) b!2896833))

(assert (= (and b!2896833 c!471577) b!2896827))

(assert (= (and b!2896833 (not c!471577)) b!2896843))

(assert (= (and b!2896827 res!1197818) b!2896838))

(assert (= (and b!2896843 c!471575) b!2896835))

(assert (= (and b!2896843 (not c!471575)) b!2896832))

(assert (= (and b!2896835 res!1197817) b!2896830))

(assert (= (and b!2896832 c!471576) b!2896831))

(assert (= (and b!2896832 (not c!471576)) b!2896834))

(assert (= (or b!2896835 b!2896831) bm!188477))

(assert (= (or b!2896838 bm!188477) bm!188475))

(assert (= (or b!2896827 b!2896830) bm!188478))

(declare-fun m!3304455 () Bool)

(assert (=> bm!188476 m!3304455))

(declare-fun m!3304457 () Bool)

(assert (=> bm!188473 m!3304457))

(declare-fun m!3304459 () Bool)

(assert (=> bm!188474 m!3304459))

(declare-fun m!3304461 () Bool)

(assert (=> bm!188478 m!3304461))

(declare-fun m!3304463 () Bool)

(assert (=> bm!188475 m!3304463))

(assert (=> b!2896623 d!834961))

(declare-fun b!2896844 () Bool)

(declare-fun e!1830049 () Bool)

(declare-fun e!1830054 () Bool)

(assert (=> b!2896844 (= e!1830049 e!1830054)))

(declare-fun res!1197821 () Bool)

(declare-fun lt!1021682 () Int)

(declare-fun call!188484 () Int)

(assert (=> b!2896844 (= res!1197821 (> lt!1021682 call!188484))))

(assert (=> b!2896844 (=> (not res!1197821) (not e!1830054))))

(declare-fun b!2896845 () Bool)

(declare-fun e!1830048 () Int)

(declare-fun call!188485 () Int)

(assert (=> b!2896845 (= e!1830048 (+ 1 call!188485))))

(declare-fun b!2896846 () Bool)

(declare-fun c!471586 () Bool)

(assert (=> b!2896846 (= c!471586 ((_ is Union!8851) r!23079))))

(declare-fun e!1830052 () Int)

(assert (=> b!2896846 (= e!1830052 e!1830048)))

(declare-fun bm!188479 () Bool)

(declare-fun call!188487 () Int)

(declare-fun call!188488 () Int)

(assert (=> bm!188479 (= call!188487 call!188488)))

(declare-fun b!2896847 () Bool)

(declare-fun e!1830055 () Bool)

(assert (=> b!2896847 (= e!1830055 (> lt!1021682 call!188484))))

(declare-fun bm!188480 () Bool)

(declare-fun call!188489 () Int)

(assert (=> bm!188480 (= call!188485 (maxBigInt!0 call!188487 call!188489))))

(declare-fun b!2896848 () Bool)

(declare-fun e!1830056 () Bool)

(declare-fun call!188490 () Int)

(assert (=> b!2896848 (= e!1830056 (> lt!1021682 call!188490))))

(declare-fun b!2896849 () Bool)

(declare-fun c!471583 () Bool)

(assert (=> b!2896849 (= c!471583 ((_ is Star!8851) r!23079))))

(declare-fun e!1830050 () Bool)

(assert (=> b!2896849 (= e!1830050 e!1830056)))

(declare-fun c!471585 () Bool)

(declare-fun bm!188481 () Bool)

(assert (=> bm!188481 (= call!188488 (regexDepth!79 (ite c!471585 (reg!9180 r!23079) (ite c!471586 (regOne!18215 r!23079) (regOne!18214 r!23079)))))))

(declare-fun b!2896851 () Bool)

(assert (=> b!2896851 (= e!1830056 (= lt!1021682 1))))

(declare-fun b!2896852 () Bool)

(declare-fun res!1197820 () Bool)

(assert (=> b!2896852 (=> (not res!1197820) (not e!1830055))))

(assert (=> b!2896852 (= res!1197820 (> lt!1021682 call!188490))))

(assert (=> b!2896852 (= e!1830050 e!1830055)))

(declare-fun b!2896853 () Bool)

(declare-fun e!1830057 () Int)

(assert (=> b!2896853 (= e!1830057 e!1830052)))

(assert (=> b!2896853 (= c!471585 ((_ is Star!8851) r!23079))))

(declare-fun b!2896854 () Bool)

(declare-fun e!1830051 () Int)

(assert (=> b!2896854 (= e!1830048 e!1830051)))

(declare-fun c!471581 () Bool)

(assert (=> b!2896854 (= c!471581 ((_ is Concat!14172) r!23079))))

(declare-fun b!2896855 () Bool)

(declare-fun call!188486 () Int)

(assert (=> b!2896855 (= e!1830054 (> lt!1021682 call!188486))))

(declare-fun b!2896856 () Bool)

(assert (=> b!2896856 (= e!1830051 1)))

(declare-fun b!2896857 () Bool)

(assert (=> b!2896857 (= e!1830057 1)))

(declare-fun b!2896858 () Bool)

(assert (=> b!2896858 (= e!1830052 (+ 1 call!188488))))

(declare-fun c!471582 () Bool)

(declare-fun c!471584 () Bool)

(declare-fun bm!188482 () Bool)

(assert (=> bm!188482 (= call!188486 (regexDepth!79 (ite c!471584 (regTwo!18215 r!23079) (ite c!471582 (regOne!18214 r!23079) (reg!9180 r!23079)))))))

(declare-fun bm!188483 () Bool)

(assert (=> bm!188483 (= call!188489 (regexDepth!79 (ite c!471586 (regTwo!18215 r!23079) (regTwo!18214 r!23079))))))

(declare-fun bm!188484 () Bool)

(assert (=> bm!188484 (= call!188490 call!188486)))

(declare-fun b!2896859 () Bool)

(assert (=> b!2896859 (= e!1830051 (+ 1 call!188485))))

(declare-fun bm!188485 () Bool)

(assert (=> bm!188485 (= call!188484 (regexDepth!79 (ite c!471584 (regOne!18215 r!23079) (regTwo!18214 r!23079))))))

(declare-fun b!2896860 () Bool)

(assert (=> b!2896860 (= e!1830049 e!1830050)))

(assert (=> b!2896860 (= c!471582 ((_ is Concat!14172) r!23079))))

(declare-fun b!2896850 () Bool)

(declare-fun e!1830053 () Bool)

(assert (=> b!2896850 (= e!1830053 e!1830049)))

(assert (=> b!2896850 (= c!471584 ((_ is Union!8851) r!23079))))

(declare-fun d!834973 () Bool)

(assert (=> d!834973 e!1830053))

(declare-fun res!1197819 () Bool)

(assert (=> d!834973 (=> (not res!1197819) (not e!1830053))))

(assert (=> d!834973 (= res!1197819 (> lt!1021682 0))))

(assert (=> d!834973 (= lt!1021682 e!1830057)))

(declare-fun c!471580 () Bool)

(assert (=> d!834973 (= c!471580 ((_ is ElementMatch!8851) r!23079))))

(assert (=> d!834973 (= (regexDepth!79 r!23079) lt!1021682)))

(assert (= (and d!834973 c!471580) b!2896857))

(assert (= (and d!834973 (not c!471580)) b!2896853))

(assert (= (and b!2896853 c!471585) b!2896858))

(assert (= (and b!2896853 (not c!471585)) b!2896846))

(assert (= (and b!2896846 c!471586) b!2896845))

(assert (= (and b!2896846 (not c!471586)) b!2896854))

(assert (= (and b!2896854 c!471581) b!2896859))

(assert (= (and b!2896854 (not c!471581)) b!2896856))

(assert (= (or b!2896845 b!2896859) bm!188479))

(assert (= (or b!2896845 b!2896859) bm!188483))

(assert (= (or b!2896845 b!2896859) bm!188480))

(assert (= (or b!2896858 bm!188479) bm!188481))

(assert (= (and d!834973 res!1197819) b!2896850))

(assert (= (and b!2896850 c!471584) b!2896844))

(assert (= (and b!2896850 (not c!471584)) b!2896860))

(assert (= (and b!2896844 res!1197821) b!2896855))

(assert (= (and b!2896860 c!471582) b!2896852))

(assert (= (and b!2896860 (not c!471582)) b!2896849))

(assert (= (and b!2896852 res!1197820) b!2896847))

(assert (= (and b!2896849 c!471583) b!2896848))

(assert (= (and b!2896849 (not c!471583)) b!2896851))

(assert (= (or b!2896852 b!2896848) bm!188484))

(assert (= (or b!2896855 bm!188484) bm!188482))

(assert (= (or b!2896844 b!2896847) bm!188485))

(declare-fun m!3304465 () Bool)

(assert (=> bm!188483 m!3304465))

(declare-fun m!3304467 () Bool)

(assert (=> bm!188480 m!3304467))

(declare-fun m!3304469 () Bool)

(assert (=> bm!188481 m!3304469))

(declare-fun m!3304471 () Bool)

(assert (=> bm!188485 m!3304471))

(declare-fun m!3304473 () Bool)

(assert (=> bm!188482 m!3304473))

(assert (=> b!2896623 d!834973))

(declare-fun d!834975 () Bool)

(declare-fun res!1197840 () Bool)

(declare-fun e!1830096 () Bool)

(assert (=> d!834975 (=> res!1197840 e!1830096)))

(assert (=> d!834975 (= res!1197840 ((_ is ElementMatch!8851) (regOne!18214 r!23079)))))

(assert (=> d!834975 (= (validRegex!3624 (regOne!18214 r!23079)) e!1830096)))

(declare-fun c!471606 () Bool)

(declare-fun bm!188506 () Bool)

(declare-fun call!188512 () Bool)

(declare-fun c!471605 () Bool)

(assert (=> bm!188506 (= call!188512 (validRegex!3624 (ite c!471605 (reg!9180 (regOne!18214 r!23079)) (ite c!471606 (regTwo!18215 (regOne!18214 r!23079)) (regTwo!18214 (regOne!18214 r!23079))))))))

(declare-fun b!2896913 () Bool)

(declare-fun e!1830094 () Bool)

(declare-fun e!1830098 () Bool)

(assert (=> b!2896913 (= e!1830094 e!1830098)))

(assert (=> b!2896913 (= c!471606 ((_ is Union!8851) (regOne!18214 r!23079)))))

(declare-fun b!2896914 () Bool)

(declare-fun e!1830097 () Bool)

(assert (=> b!2896914 (= e!1830094 e!1830097)))

(declare-fun res!1197841 () Bool)

(declare-fun nullable!2751 (Regex!8851) Bool)

(assert (=> b!2896914 (= res!1197841 (not (nullable!2751 (reg!9180 (regOne!18214 r!23079)))))))

(assert (=> b!2896914 (=> (not res!1197841) (not e!1830097))))

(declare-fun b!2896915 () Bool)

(declare-fun e!1830092 () Bool)

(declare-fun call!188511 () Bool)

(assert (=> b!2896915 (= e!1830092 call!188511)))

(declare-fun bm!188507 () Bool)

(declare-fun call!188513 () Bool)

(assert (=> bm!188507 (= call!188513 (validRegex!3624 (ite c!471606 (regOne!18215 (regOne!18214 r!23079)) (regOne!18214 (regOne!18214 r!23079)))))))

(declare-fun b!2896916 () Bool)

(declare-fun res!1197838 () Bool)

(declare-fun e!1830093 () Bool)

(assert (=> b!2896916 (=> res!1197838 e!1830093)))

(assert (=> b!2896916 (= res!1197838 (not ((_ is Concat!14172) (regOne!18214 r!23079))))))

(assert (=> b!2896916 (= e!1830098 e!1830093)))

(declare-fun b!2896917 () Bool)

(declare-fun res!1197839 () Bool)

(assert (=> b!2896917 (=> (not res!1197839) (not e!1830092))))

(assert (=> b!2896917 (= res!1197839 call!188513)))

(assert (=> b!2896917 (= e!1830098 e!1830092)))

(declare-fun b!2896918 () Bool)

(assert (=> b!2896918 (= e!1830097 call!188512)))

(declare-fun b!2896919 () Bool)

(declare-fun e!1830095 () Bool)

(assert (=> b!2896919 (= e!1830093 e!1830095)))

(declare-fun res!1197842 () Bool)

(assert (=> b!2896919 (=> (not res!1197842) (not e!1830095))))

(assert (=> b!2896919 (= res!1197842 call!188513)))

(declare-fun bm!188508 () Bool)

(assert (=> bm!188508 (= call!188511 call!188512)))

(declare-fun b!2896920 () Bool)

(assert (=> b!2896920 (= e!1830095 call!188511)))

(declare-fun b!2896921 () Bool)

(assert (=> b!2896921 (= e!1830096 e!1830094)))

(assert (=> b!2896921 (= c!471605 ((_ is Star!8851) (regOne!18214 r!23079)))))

(assert (= (and d!834975 (not res!1197840)) b!2896921))

(assert (= (and b!2896921 c!471605) b!2896914))

(assert (= (and b!2896921 (not c!471605)) b!2896913))

(assert (= (and b!2896914 res!1197841) b!2896918))

(assert (= (and b!2896913 c!471606) b!2896917))

(assert (= (and b!2896913 (not c!471606)) b!2896916))

(assert (= (and b!2896917 res!1197839) b!2896915))

(assert (= (and b!2896916 (not res!1197838)) b!2896919))

(assert (= (and b!2896919 res!1197842) b!2896920))

(assert (= (or b!2896915 b!2896920) bm!188508))

(assert (= (or b!2896917 b!2896919) bm!188507))

(assert (= (or b!2896918 bm!188508) bm!188506))

(declare-fun m!3304475 () Bool)

(assert (=> bm!188506 m!3304475))

(declare-fun m!3304477 () Bool)

(assert (=> b!2896914 m!3304477))

(declare-fun m!3304479 () Bool)

(assert (=> bm!188507 m!3304479))

(assert (=> b!2896628 d!834975))

(declare-fun d!834977 () Bool)

(declare-fun isEmpty!18837 (Option!6524) Bool)

(assert (=> d!834977 (= (isDefined!5088 lt!1021654) (not (isEmpty!18837 lt!1021654)))))

(declare-fun bs!523957 () Bool)

(assert (= bs!523957 d!834977))

(declare-fun m!3304481 () Bool)

(assert (=> bs!523957 m!3304481))

(assert (=> b!2896624 d!834977))

(declare-fun d!834979 () Bool)

(declare-fun res!1197845 () Bool)

(declare-fun e!1830103 () Bool)

(assert (=> d!834979 (=> res!1197845 e!1830103)))

(assert (=> d!834979 (= res!1197845 ((_ is ElementMatch!8851) r!23079))))

(assert (=> d!834979 (= (validRegex!3624 r!23079) e!1830103)))

(declare-fun c!471607 () Bool)

(declare-fun bm!188509 () Bool)

(declare-fun call!188515 () Bool)

(declare-fun c!471608 () Bool)

(assert (=> bm!188509 (= call!188515 (validRegex!3624 (ite c!471607 (reg!9180 r!23079) (ite c!471608 (regTwo!18215 r!23079) (regTwo!18214 r!23079)))))))

(declare-fun b!2896922 () Bool)

(declare-fun e!1830101 () Bool)

(declare-fun e!1830105 () Bool)

(assert (=> b!2896922 (= e!1830101 e!1830105)))

(assert (=> b!2896922 (= c!471608 ((_ is Union!8851) r!23079))))

(declare-fun b!2896923 () Bool)

(declare-fun e!1830104 () Bool)

(assert (=> b!2896923 (= e!1830101 e!1830104)))

(declare-fun res!1197846 () Bool)

(assert (=> b!2896923 (= res!1197846 (not (nullable!2751 (reg!9180 r!23079))))))

(assert (=> b!2896923 (=> (not res!1197846) (not e!1830104))))

(declare-fun b!2896924 () Bool)

(declare-fun e!1830099 () Bool)

(declare-fun call!188514 () Bool)

(assert (=> b!2896924 (= e!1830099 call!188514)))

(declare-fun bm!188510 () Bool)

(declare-fun call!188516 () Bool)

(assert (=> bm!188510 (= call!188516 (validRegex!3624 (ite c!471608 (regOne!18215 r!23079) (regOne!18214 r!23079))))))

(declare-fun b!2896925 () Bool)

(declare-fun res!1197843 () Bool)

(declare-fun e!1830100 () Bool)

(assert (=> b!2896925 (=> res!1197843 e!1830100)))

(assert (=> b!2896925 (= res!1197843 (not ((_ is Concat!14172) r!23079)))))

(assert (=> b!2896925 (= e!1830105 e!1830100)))

(declare-fun b!2896926 () Bool)

(declare-fun res!1197844 () Bool)

(assert (=> b!2896926 (=> (not res!1197844) (not e!1830099))))

(assert (=> b!2896926 (= res!1197844 call!188516)))

(assert (=> b!2896926 (= e!1830105 e!1830099)))

(declare-fun b!2896927 () Bool)

(assert (=> b!2896927 (= e!1830104 call!188515)))

(declare-fun b!2896928 () Bool)

(declare-fun e!1830102 () Bool)

(assert (=> b!2896928 (= e!1830100 e!1830102)))

(declare-fun res!1197847 () Bool)

(assert (=> b!2896928 (=> (not res!1197847) (not e!1830102))))

(assert (=> b!2896928 (= res!1197847 call!188516)))

(declare-fun bm!188511 () Bool)

(assert (=> bm!188511 (= call!188514 call!188515)))

(declare-fun b!2896929 () Bool)

(assert (=> b!2896929 (= e!1830102 call!188514)))

(declare-fun b!2896930 () Bool)

(assert (=> b!2896930 (= e!1830103 e!1830101)))

(assert (=> b!2896930 (= c!471607 ((_ is Star!8851) r!23079))))

(assert (= (and d!834979 (not res!1197845)) b!2896930))

(assert (= (and b!2896930 c!471607) b!2896923))

(assert (= (and b!2896930 (not c!471607)) b!2896922))

(assert (= (and b!2896923 res!1197846) b!2896927))

(assert (= (and b!2896922 c!471608) b!2896926))

(assert (= (and b!2896922 (not c!471608)) b!2896925))

(assert (= (and b!2896926 res!1197844) b!2896924))

(assert (= (and b!2896925 (not res!1197843)) b!2896928))

(assert (= (and b!2896928 res!1197847) b!2896929))

(assert (= (or b!2896924 b!2896929) bm!188511))

(assert (= (or b!2896926 b!2896928) bm!188510))

(assert (= (or b!2896927 bm!188511) bm!188509))

(declare-fun m!3304483 () Bool)

(assert (=> bm!188509 m!3304483))

(declare-fun m!3304485 () Bool)

(assert (=> b!2896923 m!3304485))

(declare-fun m!3304487 () Bool)

(assert (=> bm!188510 m!3304487))

(assert (=> start!282202 d!834979))

(declare-fun d!834981 () Bool)

(assert (=> d!834981 (= (isDefined!5088 (getLanguageWitness!558 r!23079)) (not (isEmpty!18837 (getLanguageWitness!558 r!23079))))))

(declare-fun bs!523958 () Bool)

(assert (= bs!523958 d!834981))

(assert (=> bs!523958 m!3304409))

(declare-fun m!3304489 () Bool)

(assert (=> bs!523958 m!3304489))

(assert (=> b!2896625 d!834981))

(declare-fun bm!188512 () Bool)

(declare-fun call!188518 () Option!6524)

(declare-fun c!471609 () Bool)

(assert (=> bm!188512 (= call!188518 (getLanguageWitness!558 (ite c!471609 (regTwo!18215 r!23079) (regOne!18214 r!23079))))))

(declare-fun b!2896931 () Bool)

(declare-fun e!1830106 () Option!6524)

(declare-fun lt!1021685 () Option!6524)

(assert (=> b!2896931 (= e!1830106 lt!1021685)))

(declare-fun b!2896932 () Bool)

(assert (=> b!2896932 (= c!471609 ((_ is Union!8851) r!23079))))

(declare-fun e!1830108 () Option!6524)

(declare-fun e!1830112 () Option!6524)

(assert (=> b!2896932 (= e!1830108 e!1830112)))

(declare-fun b!2896933 () Bool)

(declare-fun e!1830107 () Option!6524)

(assert (=> b!2896933 (= e!1830107 e!1830108)))

(declare-fun c!471614 () Bool)

(assert (=> b!2896933 (= c!471614 ((_ is Star!8851) r!23079))))

(declare-fun b!2896934 () Bool)

(assert (=> b!2896934 (= e!1830112 e!1830106)))

(declare-fun call!188517 () Option!6524)

(assert (=> b!2896934 (= lt!1021685 call!188517)))

(declare-fun c!471612 () Bool)

(assert (=> b!2896934 (= c!471612 ((_ is Some!6523) lt!1021685))))

(declare-fun b!2896935 () Bool)

(declare-fun e!1830111 () Option!6524)

(declare-fun e!1830113 () Option!6524)

(assert (=> b!2896935 (= e!1830111 e!1830113)))

(declare-fun c!471613 () Bool)

(assert (=> b!2896935 (= c!471613 ((_ is EmptyLang!8851) r!23079))))

(declare-fun d!834983 () Bool)

(declare-fun c!471615 () Bool)

(assert (=> d!834983 (= c!471615 ((_ is EmptyExpr!8851) r!23079))))

(assert (=> d!834983 (= (getLanguageWitness!558 r!23079) e!1830111)))

(declare-fun b!2896936 () Bool)

(assert (=> b!2896936 (= e!1830111 (Some!6523 Nil!34528))))

(declare-fun b!2896937 () Bool)

(assert (=> b!2896937 (= e!1830106 call!188518)))

(declare-fun b!2896938 () Bool)

(declare-fun e!1830110 () Option!6524)

(declare-fun lt!1021687 () Option!6524)

(declare-fun lt!1021686 () Option!6524)

(assert (=> b!2896938 (= e!1830110 (Some!6523 (++!8248 (v!34649 lt!1021687) (v!34649 lt!1021686))))))

(declare-fun b!2896939 () Bool)

(assert (=> b!2896939 (= e!1830113 None!6523)))

(declare-fun b!2896940 () Bool)

(assert (=> b!2896940 (= e!1830108 (Some!6523 Nil!34528))))

(declare-fun b!2896941 () Bool)

(declare-fun c!471616 () Bool)

(assert (=> b!2896941 (= c!471616 ((_ is ElementMatch!8851) r!23079))))

(assert (=> b!2896941 (= e!1830113 e!1830107)))

(declare-fun b!2896942 () Bool)

(declare-fun e!1830109 () Option!6524)

(assert (=> b!2896942 (= e!1830112 e!1830109)))

(assert (=> b!2896942 (= lt!1021687 call!188518)))

(declare-fun c!471610 () Bool)

(assert (=> b!2896942 (= c!471610 ((_ is Some!6523) lt!1021687))))

(declare-fun b!2896943 () Bool)

(assert (=> b!2896943 (= e!1830109 None!6523)))

(declare-fun b!2896944 () Bool)

(assert (=> b!2896944 (= e!1830107 (Some!6523 (Cons!34528 (c!471486 r!23079) Nil!34528)))))

(declare-fun b!2896945 () Bool)

(assert (=> b!2896945 (= e!1830110 None!6523)))

(declare-fun b!2896946 () Bool)

(declare-fun c!471611 () Bool)

(assert (=> b!2896946 (= c!471611 ((_ is Some!6523) lt!1021686))))

(assert (=> b!2896946 (= lt!1021686 call!188517)))

(assert (=> b!2896946 (= e!1830109 e!1830110)))

(declare-fun bm!188513 () Bool)

(assert (=> bm!188513 (= call!188517 (getLanguageWitness!558 (ite c!471609 (regOne!18215 r!23079) (regTwo!18214 r!23079))))))

(assert (= (and d!834983 c!471615) b!2896936))

(assert (= (and d!834983 (not c!471615)) b!2896935))

(assert (= (and b!2896935 c!471613) b!2896939))

(assert (= (and b!2896935 (not c!471613)) b!2896941))

(assert (= (and b!2896941 c!471616) b!2896944))

(assert (= (and b!2896941 (not c!471616)) b!2896933))

(assert (= (and b!2896933 c!471614) b!2896940))

(assert (= (and b!2896933 (not c!471614)) b!2896932))

(assert (= (and b!2896932 c!471609) b!2896934))

(assert (= (and b!2896932 (not c!471609)) b!2896942))

(assert (= (and b!2896934 c!471612) b!2896931))

(assert (= (and b!2896934 (not c!471612)) b!2896937))

(assert (= (and b!2896942 c!471610) b!2896946))

(assert (= (and b!2896942 (not c!471610)) b!2896943))

(assert (= (and b!2896946 c!471611) b!2896938))

(assert (= (and b!2896946 (not c!471611)) b!2896945))

(assert (= (or b!2896937 b!2896942) bm!188512))

(assert (= (or b!2896934 b!2896946) bm!188513))

(declare-fun m!3304491 () Bool)

(assert (=> bm!188512 m!3304491))

(declare-fun m!3304493 () Bool)

(assert (=> b!2896938 m!3304493))

(declare-fun m!3304495 () Bool)

(assert (=> bm!188513 m!3304495))

(assert (=> b!2896625 d!834983))

(declare-fun bm!188514 () Bool)

(declare-fun call!188520 () Option!6524)

(declare-fun c!471617 () Bool)

(assert (=> bm!188514 (= call!188520 (getLanguageWitness!558 (ite c!471617 (regTwo!18215 (regOne!18214 r!23079)) (regOne!18214 (regOne!18214 r!23079)))))))

(declare-fun b!2896947 () Bool)

(declare-fun e!1830114 () Option!6524)

(declare-fun lt!1021688 () Option!6524)

(assert (=> b!2896947 (= e!1830114 lt!1021688)))

(declare-fun b!2896948 () Bool)

(assert (=> b!2896948 (= c!471617 ((_ is Union!8851) (regOne!18214 r!23079)))))

(declare-fun e!1830116 () Option!6524)

(declare-fun e!1830124 () Option!6524)

(assert (=> b!2896948 (= e!1830116 e!1830124)))

(declare-fun b!2896949 () Bool)

(declare-fun e!1830115 () Option!6524)

(assert (=> b!2896949 (= e!1830115 e!1830116)))

(declare-fun c!471623 () Bool)

(assert (=> b!2896949 (= c!471623 ((_ is Star!8851) (regOne!18214 r!23079)))))

(declare-fun b!2896950 () Bool)

(assert (=> b!2896950 (= e!1830124 e!1830114)))

(declare-fun call!188519 () Option!6524)

(assert (=> b!2896950 (= lt!1021688 call!188519)))

(declare-fun c!471620 () Bool)

(assert (=> b!2896950 (= c!471620 ((_ is Some!6523) lt!1021688))))

(declare-fun b!2896951 () Bool)

(declare-fun e!1830122 () Option!6524)

(declare-fun e!1830126 () Option!6524)

(assert (=> b!2896951 (= e!1830122 e!1830126)))

(declare-fun c!471621 () Bool)

(assert (=> b!2896951 (= c!471621 ((_ is EmptyLang!8851) (regOne!18214 r!23079)))))

(declare-fun d!834985 () Bool)

(declare-fun c!471625 () Bool)

(assert (=> d!834985 (= c!471625 ((_ is EmptyExpr!8851) (regOne!18214 r!23079)))))

(assert (=> d!834985 (= (getLanguageWitness!558 (regOne!18214 r!23079)) e!1830122)))

(declare-fun b!2896952 () Bool)

(assert (=> b!2896952 (= e!1830122 (Some!6523 Nil!34528))))

(declare-fun b!2896953 () Bool)

(assert (=> b!2896953 (= e!1830114 call!188520)))

(declare-fun b!2896954 () Bool)

(declare-fun e!1830118 () Option!6524)

(declare-fun lt!1021690 () Option!6524)

(declare-fun lt!1021689 () Option!6524)

(assert (=> b!2896954 (= e!1830118 (Some!6523 (++!8248 (v!34649 lt!1021690) (v!34649 lt!1021689))))))

(declare-fun b!2896955 () Bool)

(assert (=> b!2896955 (= e!1830126 None!6523)))

(declare-fun b!2896956 () Bool)

(assert (=> b!2896956 (= e!1830116 (Some!6523 Nil!34528))))

(declare-fun b!2896957 () Bool)

(declare-fun c!471627 () Bool)

(assert (=> b!2896957 (= c!471627 ((_ is ElementMatch!8851) (regOne!18214 r!23079)))))

(assert (=> b!2896957 (= e!1830126 e!1830115)))

(declare-fun b!2896958 () Bool)

(declare-fun e!1830117 () Option!6524)

(assert (=> b!2896958 (= e!1830124 e!1830117)))

(assert (=> b!2896958 (= lt!1021690 call!188520)))

(declare-fun c!471618 () Bool)

(assert (=> b!2896958 (= c!471618 ((_ is Some!6523) lt!1021690))))

(declare-fun b!2896959 () Bool)

(assert (=> b!2896959 (= e!1830117 None!6523)))

(declare-fun b!2896960 () Bool)

(assert (=> b!2896960 (= e!1830115 (Some!6523 (Cons!34528 (c!471486 (regOne!18214 r!23079)) Nil!34528)))))

(declare-fun b!2896961 () Bool)

(assert (=> b!2896961 (= e!1830118 None!6523)))

(declare-fun b!2896962 () Bool)

(declare-fun c!471619 () Bool)

(assert (=> b!2896962 (= c!471619 ((_ is Some!6523) lt!1021689))))

(assert (=> b!2896962 (= lt!1021689 call!188519)))

(assert (=> b!2896962 (= e!1830117 e!1830118)))

(declare-fun bm!188515 () Bool)

(assert (=> bm!188515 (= call!188519 (getLanguageWitness!558 (ite c!471617 (regOne!18215 (regOne!18214 r!23079)) (regTwo!18214 (regOne!18214 r!23079)))))))

(assert (= (and d!834985 c!471625) b!2896952))

(assert (= (and d!834985 (not c!471625)) b!2896951))

(assert (= (and b!2896951 c!471621) b!2896955))

(assert (= (and b!2896951 (not c!471621)) b!2896957))

(assert (= (and b!2896957 c!471627) b!2896960))

(assert (= (and b!2896957 (not c!471627)) b!2896949))

(assert (= (and b!2896949 c!471623) b!2896956))

(assert (= (and b!2896949 (not c!471623)) b!2896948))

(assert (= (and b!2896948 c!471617) b!2896950))

(assert (= (and b!2896948 (not c!471617)) b!2896958))

(assert (= (and b!2896950 c!471620) b!2896947))

(assert (= (and b!2896950 (not c!471620)) b!2896953))

(assert (= (and b!2896958 c!471618) b!2896962))

(assert (= (and b!2896958 (not c!471618)) b!2896959))

(assert (= (and b!2896962 c!471619) b!2896954))

(assert (= (and b!2896962 (not c!471619)) b!2896961))

(assert (= (or b!2896953 b!2896958) bm!188514))

(assert (= (or b!2896950 b!2896962) bm!188515))

(declare-fun m!3304497 () Bool)

(assert (=> bm!188514 m!3304497))

(declare-fun m!3304499 () Bool)

(assert (=> b!2896954 m!3304499))

(declare-fun m!3304501 () Bool)

(assert (=> bm!188515 m!3304501))

(assert (=> b!2896620 d!834985))

(declare-fun b!2897008 () Bool)

(declare-fun e!1830144 () Bool)

(declare-fun tp!929843 () Bool)

(declare-fun tp!929840 () Bool)

(assert (=> b!2897008 (= e!1830144 (and tp!929843 tp!929840))))

(declare-fun b!2897007 () Bool)

(assert (=> b!2897007 (= e!1830144 tp_is_empty!15289)))

(declare-fun b!2897010 () Bool)

(declare-fun tp!929841 () Bool)

(declare-fun tp!929842 () Bool)

(assert (=> b!2897010 (= e!1830144 (and tp!929841 tp!929842))))

(assert (=> b!2896627 (= tp!929826 e!1830144)))

(declare-fun b!2897009 () Bool)

(declare-fun tp!929844 () Bool)

(assert (=> b!2897009 (= e!1830144 tp!929844)))

(assert (= (and b!2896627 ((_ is ElementMatch!8851) (regOne!18215 r!23079))) b!2897007))

(assert (= (and b!2896627 ((_ is Concat!14172) (regOne!18215 r!23079))) b!2897008))

(assert (= (and b!2896627 ((_ is Star!8851) (regOne!18215 r!23079))) b!2897009))

(assert (= (and b!2896627 ((_ is Union!8851) (regOne!18215 r!23079))) b!2897010))

(declare-fun b!2897018 () Bool)

(declare-fun e!1830147 () Bool)

(declare-fun tp!929850 () Bool)

(declare-fun tp!929845 () Bool)

(assert (=> b!2897018 (= e!1830147 (and tp!929850 tp!929845))))

(declare-fun b!2897017 () Bool)

(assert (=> b!2897017 (= e!1830147 tp_is_empty!15289)))

(declare-fun b!2897020 () Bool)

(declare-fun tp!929848 () Bool)

(declare-fun tp!929849 () Bool)

(assert (=> b!2897020 (= e!1830147 (and tp!929848 tp!929849))))

(assert (=> b!2896627 (= tp!929825 e!1830147)))

(declare-fun b!2897019 () Bool)

(declare-fun tp!929851 () Bool)

(assert (=> b!2897019 (= e!1830147 tp!929851)))

(assert (= (and b!2896627 ((_ is ElementMatch!8851) (regTwo!18215 r!23079))) b!2897017))

(assert (= (and b!2896627 ((_ is Concat!14172) (regTwo!18215 r!23079))) b!2897018))

(assert (= (and b!2896627 ((_ is Star!8851) (regTwo!18215 r!23079))) b!2897019))

(assert (= (and b!2896627 ((_ is Union!8851) (regTwo!18215 r!23079))) b!2897020))

(declare-fun b!2897026 () Bool)

(declare-fun e!1830148 () Bool)

(declare-fun tp!929861 () Bool)

(declare-fun tp!929858 () Bool)

(assert (=> b!2897026 (= e!1830148 (and tp!929861 tp!929858))))

(declare-fun b!2897025 () Bool)

(assert (=> b!2897025 (= e!1830148 tp_is_empty!15289)))

(declare-fun b!2897028 () Bool)

(declare-fun tp!929859 () Bool)

(declare-fun tp!929860 () Bool)

(assert (=> b!2897028 (= e!1830148 (and tp!929859 tp!929860))))

(assert (=> b!2896618 (= tp!929829 e!1830148)))

(declare-fun b!2897027 () Bool)

(declare-fun tp!929862 () Bool)

(assert (=> b!2897027 (= e!1830148 tp!929862)))

(assert (= (and b!2896618 ((_ is ElementMatch!8851) (reg!9180 r!23079))) b!2897025))

(assert (= (and b!2896618 ((_ is Concat!14172) (reg!9180 r!23079))) b!2897026))

(assert (= (and b!2896618 ((_ is Star!8851) (reg!9180 r!23079))) b!2897027))

(assert (= (and b!2896618 ((_ is Union!8851) (reg!9180 r!23079))) b!2897028))

(declare-fun b!2897030 () Bool)

(declare-fun e!1830149 () Bool)

(declare-fun tp!929868 () Bool)

(declare-fun tp!929865 () Bool)

(assert (=> b!2897030 (= e!1830149 (and tp!929868 tp!929865))))

(declare-fun b!2897029 () Bool)

(assert (=> b!2897029 (= e!1830149 tp_is_empty!15289)))

(declare-fun b!2897032 () Bool)

(declare-fun tp!929866 () Bool)

(declare-fun tp!929867 () Bool)

(assert (=> b!2897032 (= e!1830149 (and tp!929866 tp!929867))))

(assert (=> b!2896619 (= tp!929827 e!1830149)))

(declare-fun b!2897031 () Bool)

(declare-fun tp!929869 () Bool)

(assert (=> b!2897031 (= e!1830149 tp!929869)))

(assert (= (and b!2896619 ((_ is ElementMatch!8851) (regOne!18214 r!23079))) b!2897029))

(assert (= (and b!2896619 ((_ is Concat!14172) (regOne!18214 r!23079))) b!2897030))

(assert (= (and b!2896619 ((_ is Star!8851) (regOne!18214 r!23079))) b!2897031))

(assert (= (and b!2896619 ((_ is Union!8851) (regOne!18214 r!23079))) b!2897032))

(declare-fun b!2897034 () Bool)

(declare-fun e!1830150 () Bool)

(declare-fun tp!929873 () Bool)

(declare-fun tp!929870 () Bool)

(assert (=> b!2897034 (= e!1830150 (and tp!929873 tp!929870))))

(declare-fun b!2897033 () Bool)

(assert (=> b!2897033 (= e!1830150 tp_is_empty!15289)))

(declare-fun b!2897036 () Bool)

(declare-fun tp!929871 () Bool)

(declare-fun tp!929872 () Bool)

(assert (=> b!2897036 (= e!1830150 (and tp!929871 tp!929872))))

(assert (=> b!2896619 (= tp!929828 e!1830150)))

(declare-fun b!2897035 () Bool)

(declare-fun tp!929874 () Bool)

(assert (=> b!2897035 (= e!1830150 tp!929874)))

(assert (= (and b!2896619 ((_ is ElementMatch!8851) (regTwo!18214 r!23079))) b!2897033))

(assert (= (and b!2896619 ((_ is Concat!14172) (regTwo!18214 r!23079))) b!2897034))

(assert (= (and b!2896619 ((_ is Star!8851) (regTwo!18214 r!23079))) b!2897035))

(assert (= (and b!2896619 ((_ is Union!8851) (regTwo!18214 r!23079))) b!2897036))

(check-sat (not b!2896923) (not b!2897020) (not b!2896695) (not bm!188513) (not bm!188480) (not bm!188507) (not b!2897027) (not bm!188485) (not b!2897010) (not b!2897034) (not bm!188514) (not bm!188474) (not bm!188510) (not b!2897036) (not bm!188481) (not b!2897035) (not bm!188482) (not b!2896954) (not b!2897028) (not b!2897019) (not bm!188515) (not bm!188512) (not bm!188509) (not b!2896914) (not bm!188483) (not bm!188443) (not bm!188473) (not b!2897031) (not bm!188444) (not b!2897009) (not bm!188475) (not d!834977) (not b!2897026) (not bm!188478) (not d!834981) (not bm!188506) (not b!2897030) (not b!2897018) (not b!2897032) tp_is_empty!15289 (not bm!188476) (not b!2897008) (not b!2896938))
(check-sat)
