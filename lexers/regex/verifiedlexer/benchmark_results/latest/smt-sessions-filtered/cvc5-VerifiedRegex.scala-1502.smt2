; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79668 () Bool)

(assert start!79668)

(declare-fun b!881646 () Bool)

(assert (=> b!881646 true))

(assert (=> b!881646 true))

(declare-fun lambda!27008 () Int)

(declare-fun lambda!27007 () Int)

(assert (=> b!881646 (not (= lambda!27008 lambda!27007))))

(assert (=> b!881646 true))

(assert (=> b!881646 true))

(declare-fun b!881640 () Bool)

(declare-fun e!578697 () Bool)

(declare-fun tp!278467 () Bool)

(assert (=> b!881640 (= e!578697 tp!278467)))

(declare-fun b!881641 () Bool)

(declare-fun tp!278470 () Bool)

(declare-fun tp!278468 () Bool)

(assert (=> b!881641 (= e!578697 (and tp!278470 tp!278468))))

(declare-fun b!881642 () Bool)

(declare-fun tp!278466 () Bool)

(declare-fun tp!278465 () Bool)

(assert (=> b!881642 (= e!578697 (and tp!278466 tp!278465))))

(declare-fun b!881643 () Bool)

(declare-fun res!400923 () Bool)

(declare-fun e!578699 () Bool)

(assert (=> b!881643 (=> res!400923 e!578699)))

(declare-datatypes ((C!5094 0))(
  ( (C!5095 (val!2795 Int)) )
))
(declare-datatypes ((Regex!2262 0))(
  ( (ElementMatch!2262 (c!142513 C!5094)) (Concat!4095 (regOne!5036 Regex!2262) (regTwo!5036 Regex!2262)) (EmptyExpr!2262) (Star!2262 (reg!2591 Regex!2262)) (EmptyLang!2262) (Union!2262 (regOne!5037 Regex!2262) (regTwo!5037 Regex!2262)) )
))
(declare-fun r!15766 () Regex!2262)

(declare-fun validRegex!731 (Regex!2262) Bool)

(assert (=> b!881643 (= res!400923 (not (validRegex!731 (regOne!5036 r!15766))))))

(declare-fun b!881644 () Bool)

(declare-fun tp_is_empty!4167 () Bool)

(assert (=> b!881644 (= e!578697 tp_is_empty!4167)))

(declare-fun b!881645 () Bool)

(declare-fun e!578696 () Bool)

(declare-fun e!578700 () Bool)

(assert (=> b!881645 (= e!578696 (not e!578700))))

(declare-fun res!400924 () Bool)

(assert (=> b!881645 (=> res!400924 e!578700)))

(declare-fun lt!330767 () Bool)

(assert (=> b!881645 (= res!400924 (or (not lt!330767) (and (is-Concat!4095 r!15766) (is-EmptyExpr!2262 (regOne!5036 r!15766))) (and (is-Concat!4095 r!15766) (is-EmptyExpr!2262 (regTwo!5036 r!15766))) (not (is-Concat!4095 r!15766))))))

(declare-datatypes ((List!9492 0))(
  ( (Nil!9476) (Cons!9476 (h!14877 C!5094) (t!100538 List!9492)) )
))
(declare-fun s!10566 () List!9492)

(declare-fun matchRSpec!63 (Regex!2262 List!9492) Bool)

(assert (=> b!881645 (= lt!330767 (matchRSpec!63 r!15766 s!10566))))

(declare-fun matchR!800 (Regex!2262 List!9492) Bool)

(assert (=> b!881645 (= lt!330767 (matchR!800 r!15766 s!10566))))

(declare-datatypes ((Unit!14103 0))(
  ( (Unit!14104) )
))
(declare-fun lt!330768 () Unit!14103)

(declare-fun mainMatchTheorem!63 (Regex!2262 List!9492) Unit!14103)

(assert (=> b!881645 (= lt!330768 (mainMatchTheorem!63 r!15766 s!10566))))

(declare-fun res!400926 () Bool)

(assert (=> start!79668 (=> (not res!400926) (not e!578696))))

(assert (=> start!79668 (= res!400926 (validRegex!731 r!15766))))

(assert (=> start!79668 e!578696))

(assert (=> start!79668 e!578697))

(declare-fun e!578698 () Bool)

(assert (=> start!79668 e!578698))

(assert (=> b!881646 (= e!578700 e!578699)))

(declare-fun res!400925 () Bool)

(assert (=> b!881646 (=> res!400925 e!578699)))

(declare-fun isEmpty!5671 (List!9492) Bool)

(assert (=> b!881646 (= res!400925 (isEmpty!5671 s!10566))))

(declare-fun Exists!57 (Int) Bool)

(assert (=> b!881646 (= (Exists!57 lambda!27007) (Exists!57 lambda!27008))))

(declare-fun lt!330769 () Unit!14103)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!47 (Regex!2262 Regex!2262 List!9492) Unit!14103)

(assert (=> b!881646 (= lt!330769 (lemmaExistCutMatchRandMatchRSpecEquivalent!47 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566))))

(declare-datatypes ((tuple2!10610 0))(
  ( (tuple2!10611 (_1!6131 List!9492) (_2!6131 List!9492)) )
))
(declare-datatypes ((Option!1947 0))(
  ( (None!1946) (Some!1946 (v!19363 tuple2!10610)) )
))
(declare-fun isDefined!1589 (Option!1947) Bool)

(declare-fun findConcatSeparation!53 (Regex!2262 Regex!2262 List!9492 List!9492 List!9492) Option!1947)

(assert (=> b!881646 (= (isDefined!1589 (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) Nil!9476 s!10566 s!10566)) (Exists!57 lambda!27007))))

(declare-fun lt!330766 () Unit!14103)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!53 (Regex!2262 Regex!2262 List!9492) Unit!14103)

(assert (=> b!881646 (= lt!330766 (lemmaFindConcatSeparationEquivalentToExists!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566))))

(declare-fun b!881647 () Bool)

(assert (=> b!881647 (= e!578699 (validRegex!731 (regTwo!5036 r!15766)))))

(declare-fun b!881648 () Bool)

(declare-fun tp!278469 () Bool)

(assert (=> b!881648 (= e!578698 (and tp_is_empty!4167 tp!278469))))

(assert (= (and start!79668 res!400926) b!881645))

(assert (= (and b!881645 (not res!400924)) b!881646))

(assert (= (and b!881646 (not res!400925)) b!881643))

(assert (= (and b!881643 (not res!400923)) b!881647))

(assert (= (and start!79668 (is-ElementMatch!2262 r!15766)) b!881644))

(assert (= (and start!79668 (is-Concat!4095 r!15766)) b!881641))

(assert (= (and start!79668 (is-Star!2262 r!15766)) b!881640))

(assert (= (and start!79668 (is-Union!2262 r!15766)) b!881642))

(assert (= (and start!79668 (is-Cons!9476 s!10566)) b!881648))

(declare-fun m!1129579 () Bool)

(assert (=> b!881643 m!1129579))

(declare-fun m!1129581 () Bool)

(assert (=> b!881647 m!1129581))

(declare-fun m!1129583 () Bool)

(assert (=> start!79668 m!1129583))

(declare-fun m!1129585 () Bool)

(assert (=> b!881646 m!1129585))

(declare-fun m!1129587 () Bool)

(assert (=> b!881646 m!1129587))

(declare-fun m!1129589 () Bool)

(assert (=> b!881646 m!1129589))

(declare-fun m!1129591 () Bool)

(assert (=> b!881646 m!1129591))

(declare-fun m!1129593 () Bool)

(assert (=> b!881646 m!1129593))

(declare-fun m!1129595 () Bool)

(assert (=> b!881646 m!1129595))

(assert (=> b!881646 m!1129595))

(declare-fun m!1129597 () Bool)

(assert (=> b!881646 m!1129597))

(assert (=> b!881646 m!1129587))

(declare-fun m!1129599 () Bool)

(assert (=> b!881645 m!1129599))

(declare-fun m!1129601 () Bool)

(assert (=> b!881645 m!1129601))

(declare-fun m!1129603 () Bool)

(assert (=> b!881645 m!1129603))

(push 1)

(assert (not b!881642))

(assert (not start!79668))

(assert (not b!881640))

(assert tp_is_empty!4167)

(assert (not b!881641))

(assert (not b!881646))

(assert (not b!881647))

(assert (not b!881643))

(assert (not b!881645))

(assert (not b!881648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!51485 () Bool)

(declare-fun call!51491 () Bool)

(declare-fun call!51492 () Bool)

(assert (=> bm!51485 (= call!51491 call!51492)))

(declare-fun bm!51486 () Bool)

(declare-fun call!51490 () Bool)

(declare-fun c!142519 () Bool)

(assert (=> bm!51486 (= call!51490 (validRegex!731 (ite c!142519 (regTwo!5037 r!15766) (regTwo!5036 r!15766))))))

(declare-fun c!142520 () Bool)

(declare-fun bm!51487 () Bool)

(assert (=> bm!51487 (= call!51492 (validRegex!731 (ite c!142520 (reg!2591 r!15766) (ite c!142519 (regOne!5037 r!15766) (regOne!5036 r!15766)))))))

(declare-fun b!881714 () Bool)

(declare-fun res!400965 () Bool)

(declare-fun e!578739 () Bool)

(assert (=> b!881714 (=> res!400965 e!578739)))

(assert (=> b!881714 (= res!400965 (not (is-Concat!4095 r!15766)))))

(declare-fun e!578740 () Bool)

(assert (=> b!881714 (= e!578740 e!578739)))

(declare-fun b!881715 () Bool)

(declare-fun e!578742 () Bool)

(assert (=> b!881715 (= e!578739 e!578742)))

(declare-fun res!400961 () Bool)

(assert (=> b!881715 (=> (not res!400961) (not e!578742))))

(assert (=> b!881715 (= res!400961 call!51491)))

(declare-fun d!276411 () Bool)

(declare-fun res!400964 () Bool)

(declare-fun e!578737 () Bool)

(assert (=> d!276411 (=> res!400964 e!578737)))

(assert (=> d!276411 (= res!400964 (is-ElementMatch!2262 r!15766))))

(assert (=> d!276411 (= (validRegex!731 r!15766) e!578737)))

(declare-fun b!881716 () Bool)

(declare-fun e!578736 () Bool)

(assert (=> b!881716 (= e!578736 call!51492)))

(declare-fun b!881717 () Bool)

(declare-fun e!578741 () Bool)

(assert (=> b!881717 (= e!578741 e!578740)))

(assert (=> b!881717 (= c!142519 (is-Union!2262 r!15766))))

(declare-fun b!881718 () Bool)

(declare-fun e!578738 () Bool)

(assert (=> b!881718 (= e!578738 call!51490)))

(declare-fun b!881719 () Bool)

(assert (=> b!881719 (= e!578742 call!51490)))

(declare-fun b!881720 () Bool)

(assert (=> b!881720 (= e!578737 e!578741)))

(assert (=> b!881720 (= c!142520 (is-Star!2262 r!15766))))

(declare-fun b!881721 () Bool)

(declare-fun res!400962 () Bool)

(assert (=> b!881721 (=> (not res!400962) (not e!578738))))

(assert (=> b!881721 (= res!400962 call!51491)))

(assert (=> b!881721 (= e!578740 e!578738)))

(declare-fun b!881722 () Bool)

(assert (=> b!881722 (= e!578741 e!578736)))

(declare-fun res!400963 () Bool)

(declare-fun nullable!574 (Regex!2262) Bool)

(assert (=> b!881722 (= res!400963 (not (nullable!574 (reg!2591 r!15766))))))

(assert (=> b!881722 (=> (not res!400963) (not e!578736))))

(assert (= (and d!276411 (not res!400964)) b!881720))

(assert (= (and b!881720 c!142520) b!881722))

(assert (= (and b!881720 (not c!142520)) b!881717))

(assert (= (and b!881722 res!400963) b!881716))

(assert (= (and b!881717 c!142519) b!881721))

(assert (= (and b!881717 (not c!142519)) b!881714))

(assert (= (and b!881721 res!400962) b!881718))

(assert (= (and b!881714 (not res!400965)) b!881715))

(assert (= (and b!881715 res!400961) b!881719))

(assert (= (or b!881718 b!881719) bm!51486))

(assert (= (or b!881721 b!881715) bm!51485))

(assert (= (or b!881716 bm!51485) bm!51487))

(declare-fun m!1129631 () Bool)

(assert (=> bm!51486 m!1129631))

(declare-fun m!1129633 () Bool)

(assert (=> bm!51487 m!1129633))

(declare-fun m!1129635 () Bool)

(assert (=> b!881722 m!1129635))

(assert (=> start!79668 d!276411))

(declare-fun d!276415 () Bool)

(assert (=> d!276415 (= (isEmpty!5671 s!10566) (is-Nil!9476 s!10566))))

(assert (=> b!881646 d!276415))

(declare-fun d!276417 () Bool)

(declare-fun choose!5221 (Int) Bool)

(assert (=> d!276417 (= (Exists!57 lambda!27008) (choose!5221 lambda!27008))))

(declare-fun bs!234445 () Bool)

(assert (= bs!234445 d!276417))

(declare-fun m!1129637 () Bool)

(assert (=> bs!234445 m!1129637))

(assert (=> b!881646 d!276417))

(declare-fun bs!234446 () Bool)

(declare-fun d!276419 () Bool)

(assert (= bs!234446 (and d!276419 b!881646)))

(declare-fun lambda!27019 () Int)

(assert (=> bs!234446 (= lambda!27019 lambda!27007)))

(assert (=> bs!234446 (not (= lambda!27019 lambda!27008))))

(assert (=> d!276419 true))

(assert (=> d!276419 true))

(assert (=> d!276419 true))

(assert (=> d!276419 (= (isDefined!1589 (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) Nil!9476 s!10566 s!10566)) (Exists!57 lambda!27019))))

(declare-fun lt!330784 () Unit!14103)

(declare-fun choose!5222 (Regex!2262 Regex!2262 List!9492) Unit!14103)

(assert (=> d!276419 (= lt!330784 (choose!5222 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566))))

(assert (=> d!276419 (validRegex!731 (regOne!5036 r!15766))))

(assert (=> d!276419 (= (lemmaFindConcatSeparationEquivalentToExists!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566) lt!330784)))

(declare-fun bs!234447 () Bool)

(assert (= bs!234447 d!276419))

(assert (=> bs!234447 m!1129579))

(assert (=> bs!234447 m!1129587))

(assert (=> bs!234447 m!1129589))

(assert (=> bs!234447 m!1129587))

(declare-fun m!1129639 () Bool)

(assert (=> bs!234447 m!1129639))

(declare-fun m!1129641 () Bool)

(assert (=> bs!234447 m!1129641))

(assert (=> b!881646 d!276419))

(declare-fun d!276421 () Bool)

(declare-fun e!578786 () Bool)

(assert (=> d!276421 e!578786))

(declare-fun res!401003 () Bool)

(assert (=> d!276421 (=> res!401003 e!578786)))

(declare-fun e!578785 () Bool)

(assert (=> d!276421 (= res!401003 e!578785)))

(declare-fun res!401004 () Bool)

(assert (=> d!276421 (=> (not res!401004) (not e!578785))))

(declare-fun lt!330793 () Option!1947)

(assert (=> d!276421 (= res!401004 (isDefined!1589 lt!330793))))

(declare-fun e!578783 () Option!1947)

(assert (=> d!276421 (= lt!330793 e!578783)))

(declare-fun c!142534 () Bool)

(declare-fun e!578784 () Bool)

(assert (=> d!276421 (= c!142534 e!578784)))

(declare-fun res!401001 () Bool)

(assert (=> d!276421 (=> (not res!401001) (not e!578784))))

(assert (=> d!276421 (= res!401001 (matchR!800 (regOne!5036 r!15766) Nil!9476))))

(assert (=> d!276421 (validRegex!731 (regOne!5036 r!15766))))

(assert (=> d!276421 (= (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) Nil!9476 s!10566 s!10566) lt!330793)))

(declare-fun b!881781 () Bool)

(declare-fun e!578787 () Option!1947)

(assert (=> b!881781 (= e!578783 e!578787)))

(declare-fun c!142533 () Bool)

(assert (=> b!881781 (= c!142533 (is-Nil!9476 s!10566))))

(declare-fun b!881782 () Bool)

(assert (=> b!881782 (= e!578787 None!1946)))

(declare-fun b!881783 () Bool)

(assert (=> b!881783 (= e!578783 (Some!1946 (tuple2!10611 Nil!9476 s!10566)))))

(declare-fun b!881784 () Bool)

(declare-fun ++!2469 (List!9492 List!9492) List!9492)

(declare-fun get!2945 (Option!1947) tuple2!10610)

(assert (=> b!881784 (= e!578785 (= (++!2469 (_1!6131 (get!2945 lt!330793)) (_2!6131 (get!2945 lt!330793))) s!10566))))

(declare-fun b!881785 () Bool)

(declare-fun lt!330792 () Unit!14103)

(declare-fun lt!330791 () Unit!14103)

(assert (=> b!881785 (= lt!330792 lt!330791)))

(assert (=> b!881785 (= (++!2469 (++!2469 Nil!9476 (Cons!9476 (h!14877 s!10566) Nil!9476)) (t!100538 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!98 (List!9492 C!5094 List!9492 List!9492) Unit!14103)

(assert (=> b!881785 (= lt!330791 (lemmaMoveElementToOtherListKeepsConcatEq!98 Nil!9476 (h!14877 s!10566) (t!100538 s!10566) s!10566))))

(assert (=> b!881785 (= e!578787 (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) (++!2469 Nil!9476 (Cons!9476 (h!14877 s!10566) Nil!9476)) (t!100538 s!10566) s!10566))))

(declare-fun b!881786 () Bool)

(declare-fun res!401002 () Bool)

(assert (=> b!881786 (=> (not res!401002) (not e!578785))))

(assert (=> b!881786 (= res!401002 (matchR!800 (regOne!5036 r!15766) (_1!6131 (get!2945 lt!330793))))))

(declare-fun b!881787 () Bool)

(assert (=> b!881787 (= e!578784 (matchR!800 (regTwo!5036 r!15766) s!10566))))

(declare-fun b!881788 () Bool)

(declare-fun res!401000 () Bool)

(assert (=> b!881788 (=> (not res!401000) (not e!578785))))

(assert (=> b!881788 (= res!401000 (matchR!800 (regTwo!5036 r!15766) (_2!6131 (get!2945 lt!330793))))))

(declare-fun b!881789 () Bool)

(assert (=> b!881789 (= e!578786 (not (isDefined!1589 lt!330793)))))

(assert (= (and d!276421 res!401001) b!881787))

(assert (= (and d!276421 c!142534) b!881783))

(assert (= (and d!276421 (not c!142534)) b!881781))

(assert (= (and b!881781 c!142533) b!881782))

(assert (= (and b!881781 (not c!142533)) b!881785))

(assert (= (and d!276421 res!401004) b!881786))

(assert (= (and b!881786 res!401002) b!881788))

(assert (= (and b!881788 res!401000) b!881784))

(assert (= (and d!276421 (not res!401003)) b!881789))

(declare-fun m!1129657 () Bool)

(assert (=> b!881784 m!1129657))

(declare-fun m!1129659 () Bool)

(assert (=> b!881784 m!1129659))

(declare-fun m!1129661 () Bool)

(assert (=> d!276421 m!1129661))

(declare-fun m!1129663 () Bool)

(assert (=> d!276421 m!1129663))

(assert (=> d!276421 m!1129579))

(assert (=> b!881786 m!1129657))

(declare-fun m!1129665 () Bool)

(assert (=> b!881786 m!1129665))

(assert (=> b!881788 m!1129657))

(declare-fun m!1129667 () Bool)

(assert (=> b!881788 m!1129667))

(declare-fun m!1129669 () Bool)

(assert (=> b!881787 m!1129669))

(declare-fun m!1129671 () Bool)

(assert (=> b!881785 m!1129671))

(assert (=> b!881785 m!1129671))

(declare-fun m!1129673 () Bool)

(assert (=> b!881785 m!1129673))

(declare-fun m!1129675 () Bool)

(assert (=> b!881785 m!1129675))

(assert (=> b!881785 m!1129671))

(declare-fun m!1129677 () Bool)

(assert (=> b!881785 m!1129677))

(assert (=> b!881789 m!1129661))

(assert (=> b!881646 d!276421))

(declare-fun bs!234449 () Bool)

(declare-fun d!276431 () Bool)

(assert (= bs!234449 (and d!276431 b!881646)))

(declare-fun lambda!27026 () Int)

(assert (=> bs!234449 (= lambda!27026 lambda!27007)))

(assert (=> bs!234449 (not (= lambda!27026 lambda!27008))))

(declare-fun bs!234450 () Bool)

(assert (= bs!234450 (and d!276431 d!276419)))

(assert (=> bs!234450 (= lambda!27026 lambda!27019)))

(assert (=> d!276431 true))

(assert (=> d!276431 true))

(assert (=> d!276431 true))

(declare-fun lambda!27027 () Int)

(assert (=> bs!234449 (not (= lambda!27027 lambda!27007))))

(assert (=> bs!234449 (= lambda!27027 lambda!27008)))

(assert (=> bs!234450 (not (= lambda!27027 lambda!27019))))

(declare-fun bs!234451 () Bool)

(assert (= bs!234451 d!276431))

(assert (=> bs!234451 (not (= lambda!27027 lambda!27026))))

(assert (=> d!276431 true))

(assert (=> d!276431 true))

(assert (=> d!276431 true))

(assert (=> d!276431 (= (Exists!57 lambda!27026) (Exists!57 lambda!27027))))

(declare-fun lt!330798 () Unit!14103)

(declare-fun choose!5223 (Regex!2262 Regex!2262 List!9492) Unit!14103)

(assert (=> d!276431 (= lt!330798 (choose!5223 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566))))

(assert (=> d!276431 (validRegex!731 (regOne!5036 r!15766))))

(assert (=> d!276431 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!47 (regOne!5036 r!15766) (regTwo!5036 r!15766) s!10566) lt!330798)))

(declare-fun m!1129679 () Bool)

(assert (=> bs!234451 m!1129679))

(declare-fun m!1129681 () Bool)

(assert (=> bs!234451 m!1129681))

(declare-fun m!1129683 () Bool)

(assert (=> bs!234451 m!1129683))

(assert (=> bs!234451 m!1129579))

(assert (=> b!881646 d!276431))

(declare-fun d!276433 () Bool)

(declare-fun isEmpty!5673 (Option!1947) Bool)

(assert (=> d!276433 (= (isDefined!1589 (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) Nil!9476 s!10566 s!10566)) (not (isEmpty!5673 (findConcatSeparation!53 (regOne!5036 r!15766) (regTwo!5036 r!15766) Nil!9476 s!10566 s!10566))))))

(declare-fun bs!234452 () Bool)

(assert (= bs!234452 d!276433))

(assert (=> bs!234452 m!1129587))

(declare-fun m!1129685 () Bool)

(assert (=> bs!234452 m!1129685))

(assert (=> b!881646 d!276433))

(declare-fun d!276435 () Bool)

(assert (=> d!276435 (= (Exists!57 lambda!27007) (choose!5221 lambda!27007))))

(declare-fun bs!234453 () Bool)

(assert (= bs!234453 d!276435))

(declare-fun m!1129687 () Bool)

(assert (=> bs!234453 m!1129687))

(assert (=> b!881646 d!276435))

(declare-fun bm!51500 () Bool)

(declare-fun call!51506 () Bool)

(declare-fun call!51507 () Bool)

(assert (=> bm!51500 (= call!51506 call!51507)))

(declare-fun bm!51501 () Bool)

(declare-fun call!51505 () Bool)

(declare-fun c!142535 () Bool)

(assert (=> bm!51501 (= call!51505 (validRegex!731 (ite c!142535 (regTwo!5037 (regTwo!5036 r!15766)) (regTwo!5036 (regTwo!5036 r!15766)))))))

(declare-fun bm!51502 () Bool)

(declare-fun c!142536 () Bool)

(assert (=> bm!51502 (= call!51507 (validRegex!731 (ite c!142536 (reg!2591 (regTwo!5036 r!15766)) (ite c!142535 (regOne!5037 (regTwo!5036 r!15766)) (regOne!5036 (regTwo!5036 r!15766))))))))

(declare-fun b!881802 () Bool)

(declare-fun res!401021 () Bool)

(declare-fun e!578797 () Bool)

(assert (=> b!881802 (=> res!401021 e!578797)))

(assert (=> b!881802 (= res!401021 (not (is-Concat!4095 (regTwo!5036 r!15766))))))

(declare-fun e!578798 () Bool)

(assert (=> b!881802 (= e!578798 e!578797)))

(declare-fun b!881803 () Bool)

(declare-fun e!578800 () Bool)

(assert (=> b!881803 (= e!578797 e!578800)))

(declare-fun res!401017 () Bool)

(assert (=> b!881803 (=> (not res!401017) (not e!578800))))

(assert (=> b!881803 (= res!401017 call!51506)))

(declare-fun d!276437 () Bool)

(declare-fun res!401020 () Bool)

(declare-fun e!578795 () Bool)

(assert (=> d!276437 (=> res!401020 e!578795)))

(assert (=> d!276437 (= res!401020 (is-ElementMatch!2262 (regTwo!5036 r!15766)))))

(assert (=> d!276437 (= (validRegex!731 (regTwo!5036 r!15766)) e!578795)))

(declare-fun b!881804 () Bool)

(declare-fun e!578794 () Bool)

(assert (=> b!881804 (= e!578794 call!51507)))

(declare-fun b!881805 () Bool)

(declare-fun e!578799 () Bool)

(assert (=> b!881805 (= e!578799 e!578798)))

(assert (=> b!881805 (= c!142535 (is-Union!2262 (regTwo!5036 r!15766)))))

(declare-fun b!881806 () Bool)

(declare-fun e!578796 () Bool)

(assert (=> b!881806 (= e!578796 call!51505)))

(declare-fun b!881807 () Bool)

(assert (=> b!881807 (= e!578800 call!51505)))

(declare-fun b!881808 () Bool)

(assert (=> b!881808 (= e!578795 e!578799)))

(assert (=> b!881808 (= c!142536 (is-Star!2262 (regTwo!5036 r!15766)))))

(declare-fun b!881809 () Bool)

(declare-fun res!401018 () Bool)

(assert (=> b!881809 (=> (not res!401018) (not e!578796))))

(assert (=> b!881809 (= res!401018 call!51506)))

(assert (=> b!881809 (= e!578798 e!578796)))

(declare-fun b!881810 () Bool)

(assert (=> b!881810 (= e!578799 e!578794)))

(declare-fun res!401019 () Bool)

(assert (=> b!881810 (= res!401019 (not (nullable!574 (reg!2591 (regTwo!5036 r!15766)))))))

(assert (=> b!881810 (=> (not res!401019) (not e!578794))))

(assert (= (and d!276437 (not res!401020)) b!881808))

(assert (= (and b!881808 c!142536) b!881810))

(assert (= (and b!881808 (not c!142536)) b!881805))

(assert (= (and b!881810 res!401019) b!881804))

(assert (= (and b!881805 c!142535) b!881809))

(assert (= (and b!881805 (not c!142535)) b!881802))

(assert (= (and b!881809 res!401018) b!881806))

(assert (= (and b!881802 (not res!401021)) b!881803))

(assert (= (and b!881803 res!401017) b!881807))

(assert (= (or b!881806 b!881807) bm!51501))

(assert (= (or b!881809 b!881803) bm!51500))

(assert (= (or b!881804 bm!51500) bm!51502))

(declare-fun m!1129689 () Bool)

(assert (=> bm!51501 m!1129689))

(declare-fun m!1129691 () Bool)

(assert (=> bm!51502 m!1129691))

(declare-fun m!1129693 () Bool)

(assert (=> b!881810 m!1129693))

(assert (=> b!881647 d!276437))

(declare-fun bm!51503 () Bool)

(declare-fun call!51509 () Bool)

(declare-fun call!51510 () Bool)

(assert (=> bm!51503 (= call!51509 call!51510)))

(declare-fun bm!51504 () Bool)

(declare-fun call!51508 () Bool)

(declare-fun c!142537 () Bool)

(assert (=> bm!51504 (= call!51508 (validRegex!731 (ite c!142537 (regTwo!5037 (regOne!5036 r!15766)) (regTwo!5036 (regOne!5036 r!15766)))))))

(declare-fun bm!51505 () Bool)

(declare-fun c!142538 () Bool)

(assert (=> bm!51505 (= call!51510 (validRegex!731 (ite c!142538 (reg!2591 (regOne!5036 r!15766)) (ite c!142537 (regOne!5037 (regOne!5036 r!15766)) (regOne!5036 (regOne!5036 r!15766))))))))

(declare-fun b!881811 () Bool)

(declare-fun res!401026 () Bool)

(declare-fun e!578804 () Bool)

(assert (=> b!881811 (=> res!401026 e!578804)))

(assert (=> b!881811 (= res!401026 (not (is-Concat!4095 (regOne!5036 r!15766))))))

(declare-fun e!578805 () Bool)

(assert (=> b!881811 (= e!578805 e!578804)))

(declare-fun b!881812 () Bool)

(declare-fun e!578807 () Bool)

(assert (=> b!881812 (= e!578804 e!578807)))

(declare-fun res!401022 () Bool)

(assert (=> b!881812 (=> (not res!401022) (not e!578807))))

(assert (=> b!881812 (= res!401022 call!51509)))

(declare-fun d!276439 () Bool)

(declare-fun res!401025 () Bool)

(declare-fun e!578802 () Bool)

(assert (=> d!276439 (=> res!401025 e!578802)))

(assert (=> d!276439 (= res!401025 (is-ElementMatch!2262 (regOne!5036 r!15766)))))

(assert (=> d!276439 (= (validRegex!731 (regOne!5036 r!15766)) e!578802)))

(declare-fun b!881813 () Bool)

(declare-fun e!578801 () Bool)

(assert (=> b!881813 (= e!578801 call!51510)))

(declare-fun b!881814 () Bool)

(declare-fun e!578806 () Bool)

(assert (=> b!881814 (= e!578806 e!578805)))

(assert (=> b!881814 (= c!142537 (is-Union!2262 (regOne!5036 r!15766)))))

(declare-fun b!881815 () Bool)

(declare-fun e!578803 () Bool)

(assert (=> b!881815 (= e!578803 call!51508)))

(declare-fun b!881816 () Bool)

(assert (=> b!881816 (= e!578807 call!51508)))

(declare-fun b!881817 () Bool)

(assert (=> b!881817 (= e!578802 e!578806)))

(assert (=> b!881817 (= c!142538 (is-Star!2262 (regOne!5036 r!15766)))))

(declare-fun b!881818 () Bool)

(declare-fun res!401023 () Bool)

(assert (=> b!881818 (=> (not res!401023) (not e!578803))))

(assert (=> b!881818 (= res!401023 call!51509)))

(assert (=> b!881818 (= e!578805 e!578803)))

(declare-fun b!881819 () Bool)

(assert (=> b!881819 (= e!578806 e!578801)))

(declare-fun res!401024 () Bool)

(assert (=> b!881819 (= res!401024 (not (nullable!574 (reg!2591 (regOne!5036 r!15766)))))))

(assert (=> b!881819 (=> (not res!401024) (not e!578801))))

(assert (= (and d!276439 (not res!401025)) b!881817))

(assert (= (and b!881817 c!142538) b!881819))

(assert (= (and b!881817 (not c!142538)) b!881814))

(assert (= (and b!881819 res!401024) b!881813))

(assert (= (and b!881814 c!142537) b!881818))

(assert (= (and b!881814 (not c!142537)) b!881811))

(assert (= (and b!881818 res!401023) b!881815))

(assert (= (and b!881811 (not res!401026)) b!881812))

(assert (= (and b!881812 res!401022) b!881816))

(assert (= (or b!881815 b!881816) bm!51504))

(assert (= (or b!881818 b!881812) bm!51503))

(assert (= (or b!881813 bm!51503) bm!51505))

(declare-fun m!1129695 () Bool)

(assert (=> bm!51504 m!1129695))

(declare-fun m!1129697 () Bool)

(assert (=> bm!51505 m!1129697))

(declare-fun m!1129699 () Bool)

(assert (=> b!881819 m!1129699))

(assert (=> b!881643 d!276439))

(declare-fun bs!234457 () Bool)

(declare-fun b!881861 () Bool)

(assert (= bs!234457 (and b!881861 b!881646)))

(declare-fun lambda!27033 () Int)

(assert (=> bs!234457 (not (= lambda!27033 lambda!27008))))

(declare-fun bs!234458 () Bool)

(assert (= bs!234458 (and b!881861 d!276419)))

(assert (=> bs!234458 (not (= lambda!27033 lambda!27019))))

(declare-fun bs!234459 () Bool)

(assert (= bs!234459 (and b!881861 d!276431)))

(assert (=> bs!234459 (not (= lambda!27033 lambda!27026))))

(assert (=> bs!234457 (not (= lambda!27033 lambda!27007))))

(assert (=> bs!234459 (not (= lambda!27033 lambda!27027))))

(assert (=> b!881861 true))

(assert (=> b!881861 true))

(declare-fun bs!234460 () Bool)

(declare-fun b!881854 () Bool)

(assert (= bs!234460 (and b!881854 b!881646)))

(declare-fun lambda!27034 () Int)

(assert (=> bs!234460 (= lambda!27034 lambda!27008)))

(declare-fun bs!234461 () Bool)

(assert (= bs!234461 (and b!881854 d!276419)))

(assert (=> bs!234461 (not (= lambda!27034 lambda!27019))))

(declare-fun bs!234462 () Bool)

(assert (= bs!234462 (and b!881854 b!881861)))

(assert (=> bs!234462 (not (= lambda!27034 lambda!27033))))

(declare-fun bs!234463 () Bool)

(assert (= bs!234463 (and b!881854 d!276431)))

(assert (=> bs!234463 (not (= lambda!27034 lambda!27026))))

(assert (=> bs!234460 (not (= lambda!27034 lambda!27007))))

(assert (=> bs!234463 (= lambda!27034 lambda!27027)))

(assert (=> b!881854 true))

(assert (=> b!881854 true))

(declare-fun c!142548 () Bool)

(declare-fun call!51516 () Bool)

(declare-fun bm!51510 () Bool)

(assert (=> bm!51510 (= call!51516 (Exists!57 (ite c!142548 lambda!27033 lambda!27034)))))

(declare-fun b!881852 () Bool)

(declare-fun e!578826 () Bool)

(declare-fun e!578829 () Bool)

(assert (=> b!881852 (= e!578826 e!578829)))

(assert (=> b!881852 (= c!142548 (is-Star!2262 r!15766))))

(declare-fun b!881853 () Bool)

(declare-fun e!578832 () Bool)

(assert (=> b!881853 (= e!578832 (matchRSpec!63 (regTwo!5037 r!15766) s!10566))))

(declare-fun b!881855 () Bool)

(assert (=> b!881855 (= e!578826 e!578832)))

(declare-fun res!401045 () Bool)

(assert (=> b!881855 (= res!401045 (matchRSpec!63 (regOne!5037 r!15766) s!10566))))

(assert (=> b!881855 (=> res!401045 e!578832)))

(declare-fun b!881856 () Bool)

(declare-fun e!578831 () Bool)

(assert (=> b!881856 (= e!578831 (= s!10566 (Cons!9476 (c!142513 r!15766) Nil!9476)))))

(declare-fun b!881857 () Bool)

(declare-fun e!578830 () Bool)

(declare-fun call!51515 () Bool)

(assert (=> b!881857 (= e!578830 call!51515)))

(declare-fun bm!51511 () Bool)

(assert (=> bm!51511 (= call!51515 (isEmpty!5671 s!10566))))

(declare-fun b!881858 () Bool)

(declare-fun res!401043 () Bool)

(declare-fun e!578827 () Bool)

(assert (=> b!881858 (=> res!401043 e!578827)))

(assert (=> b!881858 (= res!401043 call!51515)))

(assert (=> b!881858 (= e!578829 e!578827)))

(declare-fun b!881859 () Bool)

(declare-fun c!142549 () Bool)

(assert (=> b!881859 (= c!142549 (is-Union!2262 r!15766))))

(assert (=> b!881859 (= e!578831 e!578826)))

(assert (=> b!881854 (= e!578829 call!51516)))

(declare-fun d!276441 () Bool)

(declare-fun c!142550 () Bool)

(assert (=> d!276441 (= c!142550 (is-EmptyExpr!2262 r!15766))))

(assert (=> d!276441 (= (matchRSpec!63 r!15766 s!10566) e!578830)))

(declare-fun b!881860 () Bool)

(declare-fun e!578828 () Bool)

(assert (=> b!881860 (= e!578830 e!578828)))

(declare-fun res!401044 () Bool)

(assert (=> b!881860 (= res!401044 (not (is-EmptyLang!2262 r!15766)))))

(assert (=> b!881860 (=> (not res!401044) (not e!578828))))

(assert (=> b!881861 (= e!578827 call!51516)))

(declare-fun b!881862 () Bool)

(declare-fun c!142547 () Bool)

(assert (=> b!881862 (= c!142547 (is-ElementMatch!2262 r!15766))))

(assert (=> b!881862 (= e!578828 e!578831)))

(assert (= (and d!276441 c!142550) b!881857))

(assert (= (and d!276441 (not c!142550)) b!881860))

(assert (= (and b!881860 res!401044) b!881862))

(assert (= (and b!881862 c!142547) b!881856))

(assert (= (and b!881862 (not c!142547)) b!881859))

(assert (= (and b!881859 c!142549) b!881855))

(assert (= (and b!881859 (not c!142549)) b!881852))

(assert (= (and b!881855 (not res!401045)) b!881853))

(assert (= (and b!881852 c!142548) b!881858))

(assert (= (and b!881852 (not c!142548)) b!881854))

(assert (= (and b!881858 (not res!401043)) b!881861))

(assert (= (or b!881861 b!881854) bm!51510))

(assert (= (or b!881857 b!881858) bm!51511))

(declare-fun m!1129707 () Bool)

(assert (=> bm!51510 m!1129707))

(declare-fun m!1129709 () Bool)

(assert (=> b!881853 m!1129709))

(declare-fun m!1129711 () Bool)

(assert (=> b!881855 m!1129711))

(assert (=> bm!51511 m!1129593))

(assert (=> b!881645 d!276441))

(declare-fun b!881891 () Bool)

(declare-fun e!578851 () Bool)

(declare-fun e!578848 () Bool)

(assert (=> b!881891 (= e!578851 e!578848)))

(declare-fun res!401066 () Bool)

(assert (=> b!881891 (=> res!401066 e!578848)))

(declare-fun call!51519 () Bool)

(assert (=> b!881891 (= res!401066 call!51519)))

(declare-fun b!881892 () Bool)

(declare-fun res!401068 () Bool)

(declare-fun e!578853 () Bool)

(assert (=> b!881892 (=> res!401068 e!578853)))

(declare-fun e!578852 () Bool)

(assert (=> b!881892 (= res!401068 e!578852)))

(declare-fun res!401063 () Bool)

(assert (=> b!881892 (=> (not res!401063) (not e!578852))))

(declare-fun lt!330802 () Bool)

(assert (=> b!881892 (= res!401063 lt!330802)))

(declare-fun b!881893 () Bool)

(assert (=> b!881893 (= e!578853 e!578851)))

(declare-fun res!401062 () Bool)

(assert (=> b!881893 (=> (not res!401062) (not e!578851))))

(assert (=> b!881893 (= res!401062 (not lt!330802))))

(declare-fun b!881894 () Bool)

(declare-fun e!578850 () Bool)

(assert (=> b!881894 (= e!578850 (not lt!330802))))

(declare-fun b!881895 () Bool)

(declare-fun res!401064 () Bool)

(assert (=> b!881895 (=> res!401064 e!578853)))

(assert (=> b!881895 (= res!401064 (not (is-ElementMatch!2262 r!15766)))))

(assert (=> b!881895 (= e!578850 e!578853)))

(declare-fun b!881896 () Bool)

(declare-fun e!578849 () Bool)

(declare-fun derivativeStep!387 (Regex!2262 C!5094) Regex!2262)

(declare-fun head!1540 (List!9492) C!5094)

(declare-fun tail!1102 (List!9492) List!9492)

(assert (=> b!881896 (= e!578849 (matchR!800 (derivativeStep!387 r!15766 (head!1540 s!10566)) (tail!1102 s!10566)))))

(declare-fun b!881897 () Bool)

(declare-fun e!578847 () Bool)

(assert (=> b!881897 (= e!578847 e!578850)))

(declare-fun c!142559 () Bool)

(assert (=> b!881897 (= c!142559 (is-EmptyLang!2262 r!15766))))

(declare-fun b!881898 () Bool)

(declare-fun res!401069 () Bool)

(assert (=> b!881898 (=> res!401069 e!578848)))

(assert (=> b!881898 (= res!401069 (not (isEmpty!5671 (tail!1102 s!10566))))))

(declare-fun d!276447 () Bool)

(assert (=> d!276447 e!578847))

(declare-fun c!142557 () Bool)

(assert (=> d!276447 (= c!142557 (is-EmptyExpr!2262 r!15766))))

(assert (=> d!276447 (= lt!330802 e!578849)))

(declare-fun c!142558 () Bool)

(assert (=> d!276447 (= c!142558 (isEmpty!5671 s!10566))))

(assert (=> d!276447 (validRegex!731 r!15766)))

(assert (=> d!276447 (= (matchR!800 r!15766 s!10566) lt!330802)))

(declare-fun b!881899 () Bool)

(declare-fun res!401067 () Bool)

(assert (=> b!881899 (=> (not res!401067) (not e!578852))))

(assert (=> b!881899 (= res!401067 (not call!51519))))

(declare-fun b!881900 () Bool)

(assert (=> b!881900 (= e!578847 (= lt!330802 call!51519))))

(declare-fun b!881901 () Bool)

(declare-fun res!401065 () Bool)

(assert (=> b!881901 (=> (not res!401065) (not e!578852))))

(assert (=> b!881901 (= res!401065 (isEmpty!5671 (tail!1102 s!10566)))))

(declare-fun b!881902 () Bool)

(assert (=> b!881902 (= e!578848 (not (= (head!1540 s!10566) (c!142513 r!15766))))))

(declare-fun b!881903 () Bool)

(assert (=> b!881903 (= e!578852 (= (head!1540 s!10566) (c!142513 r!15766)))))

(declare-fun bm!51514 () Bool)

(assert (=> bm!51514 (= call!51519 (isEmpty!5671 s!10566))))

(declare-fun b!881904 () Bool)

(assert (=> b!881904 (= e!578849 (nullable!574 r!15766))))

(assert (= (and d!276447 c!142558) b!881904))

(assert (= (and d!276447 (not c!142558)) b!881896))

(assert (= (and d!276447 c!142557) b!881900))

(assert (= (and d!276447 (not c!142557)) b!881897))

(assert (= (and b!881897 c!142559) b!881894))

(assert (= (and b!881897 (not c!142559)) b!881895))

(assert (= (and b!881895 (not res!401064)) b!881892))

(assert (= (and b!881892 res!401063) b!881899))

(assert (= (and b!881899 res!401067) b!881901))

(assert (= (and b!881901 res!401065) b!881903))

(assert (= (and b!881892 (not res!401068)) b!881893))

(assert (= (and b!881893 res!401062) b!881891))

(assert (= (and b!881891 (not res!401066)) b!881898))

(assert (= (and b!881898 (not res!401069)) b!881902))

(assert (= (or b!881900 b!881891 b!881899) bm!51514))

(declare-fun m!1129713 () Bool)

(assert (=> b!881902 m!1129713))

(assert (=> bm!51514 m!1129593))

(assert (=> b!881896 m!1129713))

(assert (=> b!881896 m!1129713))

(declare-fun m!1129715 () Bool)

(assert (=> b!881896 m!1129715))

(declare-fun m!1129717 () Bool)

(assert (=> b!881896 m!1129717))

(assert (=> b!881896 m!1129715))

(assert (=> b!881896 m!1129717))

(declare-fun m!1129719 () Bool)

(assert (=> b!881896 m!1129719))

(assert (=> b!881898 m!1129717))

(assert (=> b!881898 m!1129717))

(declare-fun m!1129721 () Bool)

(assert (=> b!881898 m!1129721))

(declare-fun m!1129723 () Bool)

(assert (=> b!881904 m!1129723))

(assert (=> d!276447 m!1129593))

(assert (=> d!276447 m!1129583))

(assert (=> b!881901 m!1129717))

(assert (=> b!881901 m!1129717))

(assert (=> b!881901 m!1129721))

(assert (=> b!881903 m!1129713))

(assert (=> b!881645 d!276447))

(declare-fun d!276449 () Bool)

(assert (=> d!276449 (= (matchR!800 r!15766 s!10566) (matchRSpec!63 r!15766 s!10566))))

(declare-fun lt!330811 () Unit!14103)

(declare-fun choose!5224 (Regex!2262 List!9492) Unit!14103)

(assert (=> d!276449 (= lt!330811 (choose!5224 r!15766 s!10566))))

(assert (=> d!276449 (validRegex!731 r!15766)))

(assert (=> d!276449 (= (mainMatchTheorem!63 r!15766 s!10566) lt!330811)))

(declare-fun bs!234464 () Bool)

(assert (= bs!234464 d!276449))

(assert (=> bs!234464 m!1129601))

(assert (=> bs!234464 m!1129599))

(declare-fun m!1129725 () Bool)

(assert (=> bs!234464 m!1129725))

(assert (=> bs!234464 m!1129583))

(assert (=> b!881645 d!276449))

(declare-fun e!578866 () Bool)

(assert (=> b!881640 (= tp!278467 e!578866)))

(declare-fun b!881933 () Bool)

(assert (=> b!881933 (= e!578866 tp_is_empty!4167)))

(declare-fun b!881936 () Bool)

(declare-fun tp!278500 () Bool)

(declare-fun tp!278502 () Bool)

(assert (=> b!881936 (= e!578866 (and tp!278500 tp!278502))))

(declare-fun b!881934 () Bool)

(declare-fun tp!278503 () Bool)

(declare-fun tp!278501 () Bool)

(assert (=> b!881934 (= e!578866 (and tp!278503 tp!278501))))

(declare-fun b!881935 () Bool)

(declare-fun tp!278499 () Bool)

(assert (=> b!881935 (= e!578866 tp!278499)))

(assert (= (and b!881640 (is-ElementMatch!2262 (reg!2591 r!15766))) b!881933))

(assert (= (and b!881640 (is-Concat!4095 (reg!2591 r!15766))) b!881934))

(assert (= (and b!881640 (is-Star!2262 (reg!2591 r!15766))) b!881935))

(assert (= (and b!881640 (is-Union!2262 (reg!2591 r!15766))) b!881936))

(declare-fun e!578867 () Bool)

(assert (=> b!881641 (= tp!278470 e!578867)))

(declare-fun b!881937 () Bool)

(assert (=> b!881937 (= e!578867 tp_is_empty!4167)))

(declare-fun b!881940 () Bool)

(declare-fun tp!278505 () Bool)

(declare-fun tp!278507 () Bool)

(assert (=> b!881940 (= e!578867 (and tp!278505 tp!278507))))

(declare-fun b!881938 () Bool)

(declare-fun tp!278508 () Bool)

(declare-fun tp!278506 () Bool)

(assert (=> b!881938 (= e!578867 (and tp!278508 tp!278506))))

(declare-fun b!881939 () Bool)

(declare-fun tp!278504 () Bool)

(assert (=> b!881939 (= e!578867 tp!278504)))

(assert (= (and b!881641 (is-ElementMatch!2262 (regOne!5036 r!15766))) b!881937))

(assert (= (and b!881641 (is-Concat!4095 (regOne!5036 r!15766))) b!881938))

(assert (= (and b!881641 (is-Star!2262 (regOne!5036 r!15766))) b!881939))

(assert (= (and b!881641 (is-Union!2262 (regOne!5036 r!15766))) b!881940))

(declare-fun e!578868 () Bool)

(assert (=> b!881641 (= tp!278468 e!578868)))

(declare-fun b!881941 () Bool)

(assert (=> b!881941 (= e!578868 tp_is_empty!4167)))

(declare-fun b!881944 () Bool)

(declare-fun tp!278510 () Bool)

(declare-fun tp!278512 () Bool)

(assert (=> b!881944 (= e!578868 (and tp!278510 tp!278512))))

(declare-fun b!881942 () Bool)

(declare-fun tp!278513 () Bool)

(declare-fun tp!278511 () Bool)

(assert (=> b!881942 (= e!578868 (and tp!278513 tp!278511))))

(declare-fun b!881943 () Bool)

(declare-fun tp!278509 () Bool)

(assert (=> b!881943 (= e!578868 tp!278509)))

(assert (= (and b!881641 (is-ElementMatch!2262 (regTwo!5036 r!15766))) b!881941))

(assert (= (and b!881641 (is-Concat!4095 (regTwo!5036 r!15766))) b!881942))

(assert (= (and b!881641 (is-Star!2262 (regTwo!5036 r!15766))) b!881943))

(assert (= (and b!881641 (is-Union!2262 (regTwo!5036 r!15766))) b!881944))

(declare-fun e!578869 () Bool)

(assert (=> b!881642 (= tp!278466 e!578869)))

(declare-fun b!881945 () Bool)

(assert (=> b!881945 (= e!578869 tp_is_empty!4167)))

(declare-fun b!881948 () Bool)

(declare-fun tp!278515 () Bool)

(declare-fun tp!278517 () Bool)

(assert (=> b!881948 (= e!578869 (and tp!278515 tp!278517))))

(declare-fun b!881946 () Bool)

(declare-fun tp!278518 () Bool)

(declare-fun tp!278516 () Bool)

(assert (=> b!881946 (= e!578869 (and tp!278518 tp!278516))))

(declare-fun b!881947 () Bool)

(declare-fun tp!278514 () Bool)

(assert (=> b!881947 (= e!578869 tp!278514)))

(assert (= (and b!881642 (is-ElementMatch!2262 (regOne!5037 r!15766))) b!881945))

(assert (= (and b!881642 (is-Concat!4095 (regOne!5037 r!15766))) b!881946))

(assert (= (and b!881642 (is-Star!2262 (regOne!5037 r!15766))) b!881947))

(assert (= (and b!881642 (is-Union!2262 (regOne!5037 r!15766))) b!881948))

(declare-fun e!578870 () Bool)

(assert (=> b!881642 (= tp!278465 e!578870)))

(declare-fun b!881949 () Bool)

(assert (=> b!881949 (= e!578870 tp_is_empty!4167)))

(declare-fun b!881952 () Bool)

(declare-fun tp!278520 () Bool)

(declare-fun tp!278522 () Bool)

(assert (=> b!881952 (= e!578870 (and tp!278520 tp!278522))))

(declare-fun b!881950 () Bool)

(declare-fun tp!278523 () Bool)

(declare-fun tp!278521 () Bool)

(assert (=> b!881950 (= e!578870 (and tp!278523 tp!278521))))

(declare-fun b!881951 () Bool)

(declare-fun tp!278519 () Bool)

(assert (=> b!881951 (= e!578870 tp!278519)))

(assert (= (and b!881642 (is-ElementMatch!2262 (regTwo!5037 r!15766))) b!881949))

(assert (= (and b!881642 (is-Concat!4095 (regTwo!5037 r!15766))) b!881950))

(assert (= (and b!881642 (is-Star!2262 (regTwo!5037 r!15766))) b!881951))

(assert (= (and b!881642 (is-Union!2262 (regTwo!5037 r!15766))) b!881952))

(declare-fun b!881957 () Bool)

(declare-fun e!578873 () Bool)

(declare-fun tp!278526 () Bool)

(assert (=> b!881957 (= e!578873 (and tp_is_empty!4167 tp!278526))))

(assert (=> b!881648 (= tp!278469 e!578873)))

(assert (= (and b!881648 (is-Cons!9476 (t!100538 s!10566))) b!881957))

(push 1)

(assert (not bm!51487))

(assert (not b!881819))

(assert (not b!881810))

(assert (not b!881957))

(assert (not b!881785))

(assert (not b!881942))

(assert (not bm!51514))

(assert (not d!276417))

(assert (not b!881896))

(assert (not d!276419))

(assert (not b!881952))

(assert (not b!881722))

(assert (not b!881855))

(assert (not bm!51504))

(assert (not b!881898))

(assert (not b!881901))

(assert (not b!881902))

(assert (not b!881934))

(assert tp_is_empty!4167)

(assert (not d!276421))

(assert (not d!276449))

(assert (not b!881946))

(assert (not b!881944))

(assert (not b!881904))

(assert (not b!881903))

(assert (not b!881853))

(assert (not b!881784))

(assert (not b!881939))

(assert (not b!881935))

(assert (not bm!51505))

(assert (not d!276435))

(assert (not d!276447))

(assert (not b!881947))

(assert (not b!881950))

(assert (not b!881789))

(assert (not b!881938))

(assert (not b!881786))

(assert (not bm!51511))

(assert (not bm!51486))

(assert (not d!276431))

(assert (not b!881940))

(assert (not b!881788))

(assert (not bm!51502))

(assert (not b!881936))

(assert (not d!276433))

(assert (not b!881948))

(assert (not bm!51501))

(assert (not b!881787))

(assert (not bm!51510))

(assert (not b!881943))

(assert (not b!881951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

