; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735548 () Bool)

(assert start!735548)

(declare-fun res!3060363 () Bool)

(declare-fun e!4541731 () Bool)

(assert (=> start!735548 (=> (not res!3060363) (not e!4541731))))

(declare-datatypes ((C!41204 0))(
  ( (C!41205 (val!31042 Int)) )
))
(declare-datatypes ((Regex!20439 0))(
  ( (ElementMatch!20439 (c!1407414 C!41204)) (Concat!29284 (regOne!41390 Regex!20439) (regTwo!41390 Regex!20439)) (EmptyExpr!20439) (Star!20439 (reg!20768 Regex!20439)) (EmptyLang!20439) (Union!20439 (regOne!41391 Regex!20439) (regTwo!41391 Regex!20439)) )
))
(declare-fun r!14126 () Regex!20439)

(declare-fun validRegex!10857 (Regex!20439) Bool)

(assert (=> start!735548 (= res!3060363 (validRegex!10857 r!14126))))

(assert (=> start!735548 e!4541731))

(declare-fun e!4541733 () Bool)

(assert (=> start!735548 e!4541733))

(declare-fun e!4541730 () Bool)

(assert (=> start!735548 e!4541730))

(declare-fun b!7640799 () Bool)

(declare-fun tp_is_empty!51233 () Bool)

(declare-fun tp!2230477 () Bool)

(assert (=> b!7640799 (= e!4541730 (and tp_is_empty!51233 tp!2230477))))

(declare-fun b!7640800 () Bool)

(declare-fun tp!2230480 () Bool)

(declare-fun tp!2230481 () Bool)

(assert (=> b!7640800 (= e!4541733 (and tp!2230480 tp!2230481))))

(declare-fun b!7640801 () Bool)

(assert (=> b!7640801 (= e!4541733 tp_is_empty!51233)))

(declare-fun b!7640802 () Bool)

(declare-fun e!4541732 () Bool)

(assert (=> b!7640802 (= e!4541732 (not (validRegex!10857 (regTwo!41391 r!14126))))))

(declare-fun b!7640803 () Bool)

(declare-fun tp!2230476 () Bool)

(declare-fun tp!2230478 () Bool)

(assert (=> b!7640803 (= e!4541733 (and tp!2230476 tp!2230478))))

(declare-fun b!7640804 () Bool)

(declare-fun tp!2230479 () Bool)

(assert (=> b!7640804 (= e!4541733 tp!2230479)))

(declare-fun b!7640805 () Bool)

(declare-fun res!3060362 () Bool)

(assert (=> b!7640805 (=> (not res!3060362) (not e!4541731))))

(declare-datatypes ((List!73290 0))(
  ( (Nil!73166) (Cons!73166 (h!79614 C!41204) (t!388025 List!73290)) )
))
(declare-fun s!9605 () List!73290)

(declare-fun matchR!9940 (Regex!20439 List!73290) Bool)

(assert (=> b!7640805 (= res!3060362 (matchR!9940 r!14126 s!9605))))

(declare-fun b!7640806 () Bool)

(assert (=> b!7640806 (= e!4541731 e!4541732)))

(declare-fun res!3060361 () Bool)

(assert (=> b!7640806 (=> res!3060361 e!4541732)))

(assert (=> b!7640806 (= res!3060361 (not (validRegex!10857 (regOne!41391 r!14126))))))

(declare-fun b!7640807 () Bool)

(declare-fun res!3060364 () Bool)

(assert (=> b!7640807 (=> (not res!3060364) (not e!4541731))))

(get-info :version)

(assert (=> b!7640807 (= res!3060364 (and (not ((_ is EmptyExpr!20439) r!14126)) (not ((_ is EmptyLang!20439) r!14126)) (not ((_ is ElementMatch!20439) r!14126)) ((_ is Union!20439) r!14126)))))

(assert (= (and start!735548 res!3060363) b!7640807))

(assert (= (and b!7640807 res!3060364) b!7640805))

(assert (= (and b!7640805 res!3060362) b!7640806))

(assert (= (and b!7640806 (not res!3060361)) b!7640802))

(assert (= (and start!735548 ((_ is ElementMatch!20439) r!14126)) b!7640801))

(assert (= (and start!735548 ((_ is Concat!29284) r!14126)) b!7640803))

(assert (= (and start!735548 ((_ is Star!20439) r!14126)) b!7640804))

(assert (= (and start!735548 ((_ is Union!20439) r!14126)) b!7640800))

(assert (= (and start!735548 ((_ is Cons!73166) s!9605)) b!7640799))

(declare-fun m!8162898 () Bool)

(assert (=> start!735548 m!8162898))

(declare-fun m!8162900 () Bool)

(assert (=> b!7640802 m!8162900))

(declare-fun m!8162902 () Bool)

(assert (=> b!7640805 m!8162902))

(declare-fun m!8162904 () Bool)

(assert (=> b!7640806 m!8162904))

(check-sat (not b!7640802) (not b!7640806) tp_is_empty!51233 (not b!7640804) (not b!7640799) (not start!735548) (not b!7640805) (not b!7640803) (not b!7640800))
(check-sat)
(get-model)

(declare-fun b!7640849 () Bool)

(declare-fun res!3060393 () Bool)

(declare-fun e!4541773 () Bool)

(assert (=> b!7640849 (=> (not res!3060393) (not e!4541773))))

(declare-fun call!701320 () Bool)

(assert (=> b!7640849 (= res!3060393 call!701320)))

(declare-fun e!4541769 () Bool)

(assert (=> b!7640849 (= e!4541769 e!4541773)))

(declare-fun d!2325161 () Bool)

(declare-fun res!3060389 () Bool)

(declare-fun e!4541774 () Bool)

(assert (=> d!2325161 (=> res!3060389 e!4541774)))

(assert (=> d!2325161 (= res!3060389 ((_ is ElementMatch!20439) (regTwo!41391 r!14126)))))

(assert (=> d!2325161 (= (validRegex!10857 (regTwo!41391 r!14126)) e!4541774)))

(declare-fun bm!701314 () Bool)

(declare-fun c!1407426 () Bool)

(assert (=> bm!701314 (= call!701320 (validRegex!10857 (ite c!1407426 (regOne!41391 (regTwo!41391 r!14126)) (regOne!41390 (regTwo!41391 r!14126)))))))

(declare-fun b!7640852 () Bool)

(declare-fun res!3060390 () Bool)

(declare-fun e!4541775 () Bool)

(assert (=> b!7640852 (=> res!3060390 e!4541775)))

(assert (=> b!7640852 (= res!3060390 (not ((_ is Concat!29284) (regTwo!41391 r!14126))))))

(assert (=> b!7640852 (= e!4541769 e!4541775)))

(declare-fun b!7640854 () Bool)

(declare-fun e!4541764 () Bool)

(declare-fun call!701321 () Bool)

(assert (=> b!7640854 (= e!4541764 call!701321)))

(declare-fun bm!701315 () Bool)

(declare-fun call!701322 () Bool)

(assert (=> bm!701315 (= call!701322 call!701321)))

(declare-fun b!7640856 () Bool)

(declare-fun e!4541765 () Bool)

(assert (=> b!7640856 (= e!4541775 e!4541765)))

(declare-fun res!3060394 () Bool)

(assert (=> b!7640856 (=> (not res!3060394) (not e!4541765))))

(assert (=> b!7640856 (= res!3060394 call!701320)))

(declare-fun b!7640857 () Bool)

(declare-fun e!4541771 () Bool)

(assert (=> b!7640857 (= e!4541771 e!4541769)))

(assert (=> b!7640857 (= c!1407426 ((_ is Union!20439) (regTwo!41391 r!14126)))))

(declare-fun b!7640858 () Bool)

(assert (=> b!7640858 (= e!4541771 e!4541764)))

(declare-fun res!3060391 () Bool)

(declare-fun nullable!8946 (Regex!20439) Bool)

(assert (=> b!7640858 (= res!3060391 (not (nullable!8946 (reg!20768 (regTwo!41391 r!14126)))))))

(assert (=> b!7640858 (=> (not res!3060391) (not e!4541764))))

(declare-fun bm!701317 () Bool)

(declare-fun c!1407424 () Bool)

(assert (=> bm!701317 (= call!701321 (validRegex!10857 (ite c!1407424 (reg!20768 (regTwo!41391 r!14126)) (ite c!1407426 (regTwo!41391 (regTwo!41391 r!14126)) (regTwo!41390 (regTwo!41391 r!14126))))))))

(declare-fun b!7640859 () Bool)

(assert (=> b!7640859 (= e!4541773 call!701322)))

(declare-fun b!7640860 () Bool)

(assert (=> b!7640860 (= e!4541765 call!701322)))

(declare-fun b!7640861 () Bool)

(assert (=> b!7640861 (= e!4541774 e!4541771)))

(assert (=> b!7640861 (= c!1407424 ((_ is Star!20439) (regTwo!41391 r!14126)))))

(assert (= (and d!2325161 (not res!3060389)) b!7640861))

(assert (= (and b!7640861 c!1407424) b!7640858))

(assert (= (and b!7640861 (not c!1407424)) b!7640857))

(assert (= (and b!7640858 res!3060391) b!7640854))

(assert (= (and b!7640857 c!1407426) b!7640849))

(assert (= (and b!7640857 (not c!1407426)) b!7640852))

(assert (= (and b!7640849 res!3060393) b!7640859))

(assert (= (and b!7640852 (not res!3060390)) b!7640856))

(assert (= (and b!7640856 res!3060394) b!7640860))

(assert (= (or b!7640849 b!7640856) bm!701314))

(assert (= (or b!7640859 b!7640860) bm!701315))

(assert (= (or b!7640854 bm!701315) bm!701317))

(declare-fun m!8162908 () Bool)

(assert (=> bm!701314 m!8162908))

(declare-fun m!8162912 () Bool)

(assert (=> b!7640858 m!8162912))

(declare-fun m!8162916 () Bool)

(assert (=> bm!701317 m!8162916))

(assert (=> b!7640802 d!2325161))

(declare-fun b!7640863 () Bool)

(declare-fun res!3060402 () Bool)

(declare-fun e!4541783 () Bool)

(assert (=> b!7640863 (=> (not res!3060402) (not e!4541783))))

(declare-fun call!701325 () Bool)

(assert (=> b!7640863 (= res!3060402 call!701325)))

(declare-fun e!4541780 () Bool)

(assert (=> b!7640863 (= e!4541780 e!4541783)))

(declare-fun d!2325165 () Bool)

(declare-fun res!3060395 () Bool)

(declare-fun e!4541786 () Bool)

(assert (=> d!2325165 (=> res!3060395 e!4541786)))

(assert (=> d!2325165 (= res!3060395 ((_ is ElementMatch!20439) (regOne!41391 r!14126)))))

(assert (=> d!2325165 (= (validRegex!10857 (regOne!41391 r!14126)) e!4541786)))

(declare-fun bm!701319 () Bool)

(declare-fun c!1407429 () Bool)

(assert (=> bm!701319 (= call!701325 (validRegex!10857 (ite c!1407429 (regOne!41391 (regOne!41391 r!14126)) (regOne!41390 (regOne!41391 r!14126)))))))

(declare-fun b!7640866 () Bool)

(declare-fun res!3060398 () Bool)

(declare-fun e!4541789 () Bool)

(assert (=> b!7640866 (=> res!3060398 e!4541789)))

(assert (=> b!7640866 (= res!3060398 (not ((_ is Concat!29284) (regOne!41391 r!14126))))))

(assert (=> b!7640866 (= e!4541780 e!4541789)))

(declare-fun b!7640868 () Bool)

(declare-fun e!4541777 () Bool)

(declare-fun call!701327 () Bool)

(assert (=> b!7640868 (= e!4541777 call!701327)))

(declare-fun bm!701321 () Bool)

(declare-fun call!701328 () Bool)

(assert (=> bm!701321 (= call!701328 call!701327)))

(declare-fun b!7640870 () Bool)

(declare-fun e!4541778 () Bool)

(assert (=> b!7640870 (= e!4541789 e!4541778)))

(declare-fun res!3060404 () Bool)

(assert (=> b!7640870 (=> (not res!3060404) (not e!4541778))))

(assert (=> b!7640870 (= res!3060404 call!701325)))

(declare-fun b!7640872 () Bool)

(declare-fun e!4541781 () Bool)

(assert (=> b!7640872 (= e!4541781 e!4541780)))

(assert (=> b!7640872 (= c!1407429 ((_ is Union!20439) (regOne!41391 r!14126)))))

(declare-fun b!7640874 () Bool)

(assert (=> b!7640874 (= e!4541781 e!4541777)))

(declare-fun res!3060401 () Bool)

(assert (=> b!7640874 (= res!3060401 (not (nullable!8946 (reg!20768 (regOne!41391 r!14126)))))))

(assert (=> b!7640874 (=> (not res!3060401) (not e!4541777))))

(declare-fun bm!701322 () Bool)

(declare-fun c!1407427 () Bool)

(assert (=> bm!701322 (= call!701327 (validRegex!10857 (ite c!1407427 (reg!20768 (regOne!41391 r!14126)) (ite c!1407429 (regTwo!41391 (regOne!41391 r!14126)) (regTwo!41390 (regOne!41391 r!14126))))))))

(declare-fun b!7640877 () Bool)

(assert (=> b!7640877 (= e!4541783 call!701328)))

(declare-fun b!7640878 () Bool)

(assert (=> b!7640878 (= e!4541778 call!701328)))

(declare-fun b!7640879 () Bool)

(assert (=> b!7640879 (= e!4541786 e!4541781)))

(assert (=> b!7640879 (= c!1407427 ((_ is Star!20439) (regOne!41391 r!14126)))))

(assert (= (and d!2325165 (not res!3060395)) b!7640879))

(assert (= (and b!7640879 c!1407427) b!7640874))

(assert (= (and b!7640879 (not c!1407427)) b!7640872))

(assert (= (and b!7640874 res!3060401) b!7640868))

(assert (= (and b!7640872 c!1407429) b!7640863))

(assert (= (and b!7640872 (not c!1407429)) b!7640866))

(assert (= (and b!7640863 res!3060402) b!7640877))

(assert (= (and b!7640866 (not res!3060398)) b!7640870))

(assert (= (and b!7640870 res!3060404) b!7640878))

(assert (= (or b!7640863 b!7640870) bm!701319))

(assert (= (or b!7640877 b!7640878) bm!701321))

(assert (= (or b!7640868 bm!701321) bm!701322))

(declare-fun m!8162920 () Bool)

(assert (=> bm!701319 m!8162920))

(declare-fun m!8162924 () Bool)

(assert (=> b!7640874 m!8162924))

(declare-fun m!8162928 () Bool)

(assert (=> bm!701322 m!8162928))

(assert (=> b!7640806 d!2325165))

(declare-fun b!7640880 () Bool)

(declare-fun res!3060410 () Bool)

(declare-fun e!4541795 () Bool)

(assert (=> b!7640880 (=> (not res!3060410) (not e!4541795))))

(declare-fun call!701329 () Bool)

(assert (=> b!7640880 (= res!3060410 call!701329)))

(declare-fun e!4541793 () Bool)

(assert (=> b!7640880 (= e!4541793 e!4541795)))

(declare-fun d!2325169 () Bool)

(declare-fun res!3060405 () Bool)

(declare-fun e!4541796 () Bool)

(assert (=> d!2325169 (=> res!3060405 e!4541796)))

(assert (=> d!2325169 (= res!3060405 ((_ is ElementMatch!20439) r!14126))))

(assert (=> d!2325169 (= (validRegex!10857 r!14126) e!4541796)))

(declare-fun bm!701324 () Bool)

(declare-fun c!1407432 () Bool)

(assert (=> bm!701324 (= call!701329 (validRegex!10857 (ite c!1407432 (regOne!41391 r!14126) (regOne!41390 r!14126))))))

(declare-fun b!7640881 () Bool)

(declare-fun res!3060406 () Bool)

(declare-fun e!4541798 () Bool)

(assert (=> b!7640881 (=> res!3060406 e!4541798)))

(assert (=> b!7640881 (= res!3060406 (not ((_ is Concat!29284) r!14126)))))

(assert (=> b!7640881 (= e!4541793 e!4541798)))

(declare-fun b!7640882 () Bool)

(declare-fun e!4541790 () Bool)

(declare-fun call!701332 () Bool)

(assert (=> b!7640882 (= e!4541790 call!701332)))

(declare-fun bm!701325 () Bool)

(declare-fun call!701334 () Bool)

(assert (=> bm!701325 (= call!701334 call!701332)))

(declare-fun b!7640883 () Bool)

(declare-fun e!4541791 () Bool)

(assert (=> b!7640883 (= e!4541798 e!4541791)))

(declare-fun res!3060413 () Bool)

(assert (=> b!7640883 (=> (not res!3060413) (not e!4541791))))

(assert (=> b!7640883 (= res!3060413 call!701329)))

(declare-fun b!7640884 () Bool)

(declare-fun e!4541794 () Bool)

(assert (=> b!7640884 (= e!4541794 e!4541793)))

(assert (=> b!7640884 (= c!1407432 ((_ is Union!20439) r!14126))))

(declare-fun b!7640886 () Bool)

(assert (=> b!7640886 (= e!4541794 e!4541790)))

(declare-fun res!3060407 () Bool)

(assert (=> b!7640886 (= res!3060407 (not (nullable!8946 (reg!20768 r!14126))))))

(assert (=> b!7640886 (=> (not res!3060407) (not e!4541790))))

(declare-fun bm!701327 () Bool)

(declare-fun c!1407431 () Bool)

(assert (=> bm!701327 (= call!701332 (validRegex!10857 (ite c!1407431 (reg!20768 r!14126) (ite c!1407432 (regTwo!41391 r!14126) (regTwo!41390 r!14126)))))))

(declare-fun b!7640889 () Bool)

(assert (=> b!7640889 (= e!4541795 call!701334)))

(declare-fun b!7640891 () Bool)

(assert (=> b!7640891 (= e!4541791 call!701334)))

(declare-fun b!7640892 () Bool)

(assert (=> b!7640892 (= e!4541796 e!4541794)))

(assert (=> b!7640892 (= c!1407431 ((_ is Star!20439) r!14126))))

(assert (= (and d!2325169 (not res!3060405)) b!7640892))

(assert (= (and b!7640892 c!1407431) b!7640886))

(assert (= (and b!7640892 (not c!1407431)) b!7640884))

(assert (= (and b!7640886 res!3060407) b!7640882))

(assert (= (and b!7640884 c!1407432) b!7640880))

(assert (= (and b!7640884 (not c!1407432)) b!7640881))

(assert (= (and b!7640880 res!3060410) b!7640889))

(assert (= (and b!7640881 (not res!3060406)) b!7640883))

(assert (= (and b!7640883 res!3060413) b!7640891))

(assert (= (or b!7640880 b!7640883) bm!701324))

(assert (= (or b!7640889 b!7640891) bm!701325))

(assert (= (or b!7640882 bm!701325) bm!701327))

(declare-fun m!8162932 () Bool)

(assert (=> bm!701324 m!8162932))

(declare-fun m!8162934 () Bool)

(assert (=> b!7640886 m!8162934))

(declare-fun m!8162938 () Bool)

(assert (=> bm!701327 m!8162938))

(assert (=> start!735548 d!2325169))

(declare-fun b!7640964 () Bool)

(declare-fun e!4541844 () Bool)

(declare-fun lt!2660512 () Bool)

(assert (=> b!7640964 (= e!4541844 (not lt!2660512))))

(declare-fun b!7640966 () Bool)

(declare-fun e!4541842 () Bool)

(assert (=> b!7640966 (= e!4541842 e!4541844)))

(declare-fun c!1407452 () Bool)

(assert (=> b!7640966 (= c!1407452 ((_ is EmptyLang!20439) r!14126))))

(declare-fun b!7640968 () Bool)

(declare-fun e!4541840 () Bool)

(declare-fun e!4541838 () Bool)

(assert (=> b!7640968 (= e!4541840 e!4541838)))

(declare-fun res!3060461 () Bool)

(assert (=> b!7640968 (=> res!3060461 e!4541838)))

(declare-fun call!701340 () Bool)

(assert (=> b!7640968 (= res!3060461 call!701340)))

(declare-fun b!7640970 () Bool)

(declare-fun e!4541836 () Bool)

(declare-fun head!15717 (List!73290) C!41204)

(assert (=> b!7640970 (= e!4541836 (= (head!15717 s!9605) (c!1407414 r!14126)))))

(declare-fun b!7640973 () Bool)

(assert (=> b!7640973 (= e!4541842 (= lt!2660512 call!701340))))

(declare-fun b!7640974 () Bool)

(declare-fun res!3060459 () Bool)

(declare-fun e!4541845 () Bool)

(assert (=> b!7640974 (=> res!3060459 e!4541845)))

(assert (=> b!7640974 (= res!3060459 (not ((_ is ElementMatch!20439) r!14126)))))

(assert (=> b!7640974 (= e!4541844 e!4541845)))

(declare-fun b!7640975 () Bool)

(assert (=> b!7640975 (= e!4541838 (not (= (head!15717 s!9605) (c!1407414 r!14126))))))

(declare-fun b!7640976 () Bool)

(declare-fun res!3060457 () Bool)

(assert (=> b!7640976 (=> (not res!3060457) (not e!4541836))))

(declare-fun isEmpty!41797 (List!73290) Bool)

(declare-fun tail!15257 (List!73290) List!73290)

(assert (=> b!7640976 (= res!3060457 (isEmpty!41797 (tail!15257 s!9605)))))

(declare-fun b!7640977 () Bool)

(declare-fun res!3060458 () Bool)

(assert (=> b!7640977 (=> res!3060458 e!4541838)))

(assert (=> b!7640977 (= res!3060458 (not (isEmpty!41797 (tail!15257 s!9605))))))

(declare-fun b!7640978 () Bool)

(declare-fun res!3060456 () Bool)

(assert (=> b!7640978 (=> res!3060456 e!4541845)))

(assert (=> b!7640978 (= res!3060456 e!4541836)))

(declare-fun res!3060454 () Bool)

(assert (=> b!7640978 (=> (not res!3060454) (not e!4541836))))

(assert (=> b!7640978 (= res!3060454 lt!2660512)))

(declare-fun bm!701335 () Bool)

(assert (=> bm!701335 (= call!701340 (isEmpty!41797 s!9605))))

(declare-fun b!7640979 () Bool)

(declare-fun e!4541843 () Bool)

(declare-fun derivativeStep!5917 (Regex!20439 C!41204) Regex!20439)

(assert (=> b!7640979 (= e!4541843 (matchR!9940 (derivativeStep!5917 r!14126 (head!15717 s!9605)) (tail!15257 s!9605)))))

(declare-fun b!7640972 () Bool)

(assert (=> b!7640972 (= e!4541845 e!4541840)))

(declare-fun res!3060460 () Bool)

(assert (=> b!7640972 (=> (not res!3060460) (not e!4541840))))

(assert (=> b!7640972 (= res!3060460 (not lt!2660512))))

(declare-fun d!2325171 () Bool)

(assert (=> d!2325171 e!4541842))

(declare-fun c!1407450 () Bool)

(assert (=> d!2325171 (= c!1407450 ((_ is EmptyExpr!20439) r!14126))))

(assert (=> d!2325171 (= lt!2660512 e!4541843)))

(declare-fun c!1407449 () Bool)

(assert (=> d!2325171 (= c!1407449 (isEmpty!41797 s!9605))))

(assert (=> d!2325171 (validRegex!10857 r!14126)))

(assert (=> d!2325171 (= (matchR!9940 r!14126 s!9605) lt!2660512)))

(declare-fun b!7640980 () Bool)

(declare-fun res!3060462 () Bool)

(assert (=> b!7640980 (=> (not res!3060462) (not e!4541836))))

(assert (=> b!7640980 (= res!3060462 (not call!701340))))

(declare-fun b!7640981 () Bool)

(assert (=> b!7640981 (= e!4541843 (nullable!8946 r!14126))))

(assert (= (and d!2325171 c!1407449) b!7640981))

(assert (= (and d!2325171 (not c!1407449)) b!7640979))

(assert (= (and d!2325171 c!1407450) b!7640973))

(assert (= (and d!2325171 (not c!1407450)) b!7640966))

(assert (= (and b!7640966 c!1407452) b!7640964))

(assert (= (and b!7640966 (not c!1407452)) b!7640974))

(assert (= (and b!7640974 (not res!3060459)) b!7640978))

(assert (= (and b!7640978 res!3060454) b!7640980))

(assert (= (and b!7640980 res!3060462) b!7640976))

(assert (= (and b!7640976 res!3060457) b!7640970))

(assert (= (and b!7640978 (not res!3060456)) b!7640972))

(assert (= (and b!7640972 res!3060460) b!7640968))

(assert (= (and b!7640968 (not res!3060461)) b!7640977))

(assert (= (and b!7640977 (not res!3060458)) b!7640975))

(assert (= (or b!7640973 b!7640968 b!7640980) bm!701335))

(declare-fun m!8162944 () Bool)

(assert (=> bm!701335 m!8162944))

(declare-fun m!8162948 () Bool)

(assert (=> b!7640976 m!8162948))

(assert (=> b!7640976 m!8162948))

(declare-fun m!8162952 () Bool)

(assert (=> b!7640976 m!8162952))

(declare-fun m!8162956 () Bool)

(assert (=> b!7640970 m!8162956))

(assert (=> b!7640979 m!8162956))

(assert (=> b!7640979 m!8162956))

(declare-fun m!8162960 () Bool)

(assert (=> b!7640979 m!8162960))

(assert (=> b!7640979 m!8162948))

(assert (=> b!7640979 m!8162960))

(assert (=> b!7640979 m!8162948))

(declare-fun m!8162964 () Bool)

(assert (=> b!7640979 m!8162964))

(assert (=> b!7640977 m!8162948))

(assert (=> b!7640977 m!8162948))

(assert (=> b!7640977 m!8162952))

(assert (=> d!2325171 m!8162944))

(assert (=> d!2325171 m!8162898))

(declare-fun m!8162968 () Bool)

(assert (=> b!7640981 m!8162968))

(assert (=> b!7640975 m!8162956))

(assert (=> b!7640805 d!2325171))

(declare-fun b!7640990 () Bool)

(declare-fun e!4541850 () Bool)

(declare-fun tp!2230486 () Bool)

(assert (=> b!7640990 (= e!4541850 (and tp_is_empty!51233 tp!2230486))))

(assert (=> b!7640799 (= tp!2230477 e!4541850)))

(assert (= (and b!7640799 ((_ is Cons!73166) (t!388025 s!9605))) b!7640990))

(declare-fun b!7641015 () Bool)

(declare-fun e!4541857 () Bool)

(declare-fun tp!2230509 () Bool)

(declare-fun tp!2230511 () Bool)

(assert (=> b!7641015 (= e!4541857 (and tp!2230509 tp!2230511))))

(declare-fun b!7641019 () Bool)

(declare-fun tp!2230512 () Bool)

(declare-fun tp!2230517 () Bool)

(assert (=> b!7641019 (= e!4541857 (and tp!2230512 tp!2230517))))

(assert (=> b!7640800 (= tp!2230480 e!4541857)))

(declare-fun b!7641017 () Bool)

(declare-fun tp!2230514 () Bool)

(assert (=> b!7641017 (= e!4541857 tp!2230514)))

(declare-fun b!7641013 () Bool)

(assert (=> b!7641013 (= e!4541857 tp_is_empty!51233)))

(assert (= (and b!7640800 ((_ is ElementMatch!20439) (regOne!41391 r!14126))) b!7641013))

(assert (= (and b!7640800 ((_ is Concat!29284) (regOne!41391 r!14126))) b!7641015))

(assert (= (and b!7640800 ((_ is Star!20439) (regOne!41391 r!14126))) b!7641017))

(assert (= (and b!7640800 ((_ is Union!20439) (regOne!41391 r!14126))) b!7641019))

(declare-fun b!7641021 () Bool)

(declare-fun e!4541858 () Bool)

(declare-fun tp!2230518 () Bool)

(declare-fun tp!2230519 () Bool)

(assert (=> b!7641021 (= e!4541858 (and tp!2230518 tp!2230519))))

(declare-fun b!7641023 () Bool)

(declare-fun tp!2230520 () Bool)

(declare-fun tp!2230522 () Bool)

(assert (=> b!7641023 (= e!4541858 (and tp!2230520 tp!2230522))))

(assert (=> b!7640800 (= tp!2230481 e!4541858)))

(declare-fun b!7641022 () Bool)

(declare-fun tp!2230521 () Bool)

(assert (=> b!7641022 (= e!4541858 tp!2230521)))

(declare-fun b!7641020 () Bool)

(assert (=> b!7641020 (= e!4541858 tp_is_empty!51233)))

(assert (= (and b!7640800 ((_ is ElementMatch!20439) (regTwo!41391 r!14126))) b!7641020))

(assert (= (and b!7640800 ((_ is Concat!29284) (regTwo!41391 r!14126))) b!7641021))

(assert (= (and b!7640800 ((_ is Star!20439) (regTwo!41391 r!14126))) b!7641022))

(assert (= (and b!7640800 ((_ is Union!20439) (regTwo!41391 r!14126))) b!7641023))

(declare-fun b!7641030 () Bool)

(declare-fun e!4541861 () Bool)

(declare-fun tp!2230528 () Bool)

(declare-fun tp!2230530 () Bool)

(assert (=> b!7641030 (= e!4541861 (and tp!2230528 tp!2230530))))

(declare-fun b!7641034 () Bool)

(declare-fun tp!2230532 () Bool)

(declare-fun tp!2230536 () Bool)

(assert (=> b!7641034 (= e!4541861 (and tp!2230532 tp!2230536))))

(assert (=> b!7640803 (= tp!2230476 e!4541861)))

(declare-fun b!7641032 () Bool)

(declare-fun tp!2230533 () Bool)

(assert (=> b!7641032 (= e!4541861 tp!2230533)))

(declare-fun b!7641028 () Bool)

(assert (=> b!7641028 (= e!4541861 tp_is_empty!51233)))

(assert (= (and b!7640803 ((_ is ElementMatch!20439) (regOne!41390 r!14126))) b!7641028))

(assert (= (and b!7640803 ((_ is Concat!29284) (regOne!41390 r!14126))) b!7641030))

(assert (= (and b!7640803 ((_ is Star!20439) (regOne!41390 r!14126))) b!7641032))

(assert (= (and b!7640803 ((_ is Union!20439) (regOne!41390 r!14126))) b!7641034))

(declare-fun b!7641037 () Bool)

(declare-fun e!4541862 () Bool)

(declare-fun tp!2230538 () Bool)

(declare-fun tp!2230539 () Bool)

(assert (=> b!7641037 (= e!4541862 (and tp!2230538 tp!2230539))))

(declare-fun b!7641039 () Bool)

(declare-fun tp!2230540 () Bool)

(declare-fun tp!2230542 () Bool)

(assert (=> b!7641039 (= e!4541862 (and tp!2230540 tp!2230542))))

(assert (=> b!7640803 (= tp!2230478 e!4541862)))

(declare-fun b!7641038 () Bool)

(declare-fun tp!2230541 () Bool)

(assert (=> b!7641038 (= e!4541862 tp!2230541)))

(declare-fun b!7641036 () Bool)

(assert (=> b!7641036 (= e!4541862 tp_is_empty!51233)))

(assert (= (and b!7640803 ((_ is ElementMatch!20439) (regTwo!41390 r!14126))) b!7641036))

(assert (= (and b!7640803 ((_ is Concat!29284) (regTwo!41390 r!14126))) b!7641037))

(assert (= (and b!7640803 ((_ is Star!20439) (regTwo!41390 r!14126))) b!7641038))

(assert (= (and b!7640803 ((_ is Union!20439) (regTwo!41390 r!14126))) b!7641039))

(declare-fun b!7641045 () Bool)

(declare-fun e!4541864 () Bool)

(declare-fun tp!2230548 () Bool)

(declare-fun tp!2230549 () Bool)

(assert (=> b!7641045 (= e!4541864 (and tp!2230548 tp!2230549))))

(declare-fun b!7641047 () Bool)

(declare-fun tp!2230550 () Bool)

(declare-fun tp!2230552 () Bool)

(assert (=> b!7641047 (= e!4541864 (and tp!2230550 tp!2230552))))

(assert (=> b!7640804 (= tp!2230479 e!4541864)))

(declare-fun b!7641046 () Bool)

(declare-fun tp!2230551 () Bool)

(assert (=> b!7641046 (= e!4541864 tp!2230551)))

(declare-fun b!7641044 () Bool)

(assert (=> b!7641044 (= e!4541864 tp_is_empty!51233)))

(assert (= (and b!7640804 ((_ is ElementMatch!20439) (reg!20768 r!14126))) b!7641044))

(assert (= (and b!7640804 ((_ is Concat!29284) (reg!20768 r!14126))) b!7641045))

(assert (= (and b!7640804 ((_ is Star!20439) (reg!20768 r!14126))) b!7641046))

(assert (= (and b!7640804 ((_ is Union!20439) (reg!20768 r!14126))) b!7641047))

(check-sat (not b!7641017) (not b!7641032) (not bm!701319) (not b!7641023) (not b!7640970) (not b!7640979) (not d!2325171) (not bm!701317) (not b!7640990) (not b!7641037) (not b!7640981) (not b!7641034) (not b!7640976) (not b!7641039) (not b!7640975) (not b!7640886) (not bm!701327) (not b!7641022) (not b!7640874) (not b!7641015) (not bm!701322) (not b!7641046) tp_is_empty!51233 (not b!7641030) (not b!7641045) (not b!7641019) (not bm!701335) (not b!7641038) (not bm!701314) (not b!7640858) (not b!7641021) (not b!7640977) (not b!7641047) (not bm!701324))
(check-sat)
