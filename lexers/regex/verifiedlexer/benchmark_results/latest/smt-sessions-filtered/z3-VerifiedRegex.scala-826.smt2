; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45580 () Bool)

(assert start!45580)

(declare-fun b!475684 () Bool)

(declare-fun e!290423 () Bool)

(declare-fun tp!132668 () Bool)

(assert (=> b!475684 (= e!290423 tp!132668)))

(declare-fun b!475685 () Bool)

(declare-fun e!290422 () Bool)

(declare-datatypes ((C!3220 0))(
  ( (C!3221 (val!1596 Int)) )
))
(declare-datatypes ((Regex!1149 0))(
  ( (ElementMatch!1149 (c!95240 C!3220)) (Concat!2049 (regOne!2810 Regex!1149) (regTwo!2810 Regex!1149)) (EmptyExpr!1149) (Star!1149 (reg!1478 Regex!1149)) (EmptyLang!1149) (Union!1149 (regOne!2811 Regex!1149) (regTwo!2811 Regex!1149)) )
))
(declare-fun r!20230 () Regex!1149)

(declare-fun validRegex!377 (Regex!1149) Bool)

(assert (=> b!475685 (= e!290422 (not (validRegex!377 (regOne!2811 r!20230))))))

(declare-fun res!210819 () Bool)

(assert (=> start!45580 (=> (not res!210819) (not e!290422))))

(assert (=> start!45580 (= res!210819 (validRegex!377 r!20230))))

(assert (=> start!45580 e!290422))

(assert (=> start!45580 e!290423))

(declare-fun b!475686 () Bool)

(declare-fun tp_is_empty!2295 () Bool)

(assert (=> b!475686 (= e!290423 tp_is_empty!2295)))

(declare-fun b!475687 () Bool)

(declare-fun res!210817 () Bool)

(assert (=> b!475687 (=> (not res!210817) (not e!290422))))

(declare-fun lostCause!143 (Regex!1149) Bool)

(assert (=> b!475687 (= res!210817 (lostCause!143 r!20230))))

(declare-fun b!475688 () Bool)

(declare-fun tp!132667 () Bool)

(declare-fun tp!132671 () Bool)

(assert (=> b!475688 (= e!290423 (and tp!132667 tp!132671))))

(declare-fun b!475689 () Bool)

(declare-fun res!210818 () Bool)

(assert (=> b!475689 (=> (not res!210818) (not e!290422))))

(get-info :version)

(assert (=> b!475689 (= res!210818 (and (not ((_ is EmptyLang!1149) r!20230)) (not ((_ is EmptyExpr!1149) r!20230)) (not ((_ is ElementMatch!1149) r!20230)) ((_ is Union!1149) r!20230)))))

(declare-fun b!475690 () Bool)

(declare-fun tp!132669 () Bool)

(declare-fun tp!132670 () Bool)

(assert (=> b!475690 (= e!290423 (and tp!132669 tp!132670))))

(assert (= (and start!45580 res!210819) b!475687))

(assert (= (and b!475687 res!210817) b!475689))

(assert (= (and b!475689 res!210818) b!475685))

(assert (= (and start!45580 ((_ is ElementMatch!1149) r!20230)) b!475686))

(assert (= (and start!45580 ((_ is Concat!2049) r!20230)) b!475688))

(assert (= (and start!45580 ((_ is Star!1149) r!20230)) b!475684))

(assert (= (and start!45580 ((_ is Union!1149) r!20230)) b!475690))

(declare-fun m!747265 () Bool)

(assert (=> b!475685 m!747265))

(declare-fun m!747267 () Bool)

(assert (=> start!45580 m!747267))

(declare-fun m!747269 () Bool)

(assert (=> b!475687 m!747269))

(check-sat (not b!475684) tp_is_empty!2295 (not start!45580) (not b!475688) (not b!475685) (not b!475687) (not b!475690))
(check-sat)
(get-model)

(declare-fun d!179917 () Bool)

(declare-fun lostCauseFct!53 (Regex!1149) Bool)

(assert (=> d!179917 (= (lostCause!143 r!20230) (lostCauseFct!53 r!20230))))

(declare-fun bs!58701 () Bool)

(assert (= bs!58701 d!179917))

(declare-fun m!747273 () Bool)

(assert (=> bs!58701 m!747273))

(assert (=> b!475687 d!179917))

(declare-fun b!475736 () Bool)

(declare-fun res!210845 () Bool)

(declare-fun e!290460 () Bool)

(assert (=> b!475736 (=> (not res!210845) (not e!290460))))

(declare-fun call!33170 () Bool)

(assert (=> b!475736 (= res!210845 call!33170)))

(declare-fun e!290465 () Bool)

(assert (=> b!475736 (= e!290465 e!290460)))

(declare-fun b!475737 () Bool)

(declare-fun e!290459 () Bool)

(assert (=> b!475737 (= e!290459 call!33170)))

(declare-fun b!475738 () Bool)

(declare-fun e!290462 () Bool)

(declare-fun e!290463 () Bool)

(assert (=> b!475738 (= e!290462 e!290463)))

(declare-fun c!95252 () Bool)

(assert (=> b!475738 (= c!95252 ((_ is Star!1149) r!20230))))

(declare-fun b!475739 () Bool)

(declare-fun e!290464 () Bool)

(assert (=> b!475739 (= e!290464 e!290459)))

(declare-fun res!210849 () Bool)

(assert (=> b!475739 (=> (not res!210849) (not e!290459))))

(declare-fun call!33171 () Bool)

(assert (=> b!475739 (= res!210849 call!33171)))

(declare-fun b!475740 () Bool)

(assert (=> b!475740 (= e!290463 e!290465)))

(declare-fun c!95250 () Bool)

(assert (=> b!475740 (= c!95250 ((_ is Union!1149) r!20230))))

(declare-fun bm!33164 () Bool)

(declare-fun call!33169 () Bool)

(assert (=> bm!33164 (= call!33170 call!33169)))

(declare-fun d!179921 () Bool)

(declare-fun res!210847 () Bool)

(assert (=> d!179921 (=> res!210847 e!290462)))

(assert (=> d!179921 (= res!210847 ((_ is ElementMatch!1149) r!20230))))

(assert (=> d!179921 (= (validRegex!377 r!20230) e!290462)))

(declare-fun bm!33165 () Bool)

(assert (=> bm!33165 (= call!33171 (validRegex!377 (ite c!95250 (regTwo!2811 r!20230) (regOne!2810 r!20230))))))

(declare-fun b!475741 () Bool)

(declare-fun res!210846 () Bool)

(assert (=> b!475741 (=> res!210846 e!290464)))

(assert (=> b!475741 (= res!210846 (not ((_ is Concat!2049) r!20230)))))

(assert (=> b!475741 (= e!290465 e!290464)))

(declare-fun bm!33166 () Bool)

(assert (=> bm!33166 (= call!33169 (validRegex!377 (ite c!95252 (reg!1478 r!20230) (ite c!95250 (regOne!2811 r!20230) (regTwo!2810 r!20230)))))))

(declare-fun b!475742 () Bool)

(declare-fun e!290461 () Bool)

(assert (=> b!475742 (= e!290463 e!290461)))

(declare-fun res!210848 () Bool)

(declare-fun nullable!284 (Regex!1149) Bool)

(assert (=> b!475742 (= res!210848 (not (nullable!284 (reg!1478 r!20230))))))

(assert (=> b!475742 (=> (not res!210848) (not e!290461))))

(declare-fun b!475743 () Bool)

(assert (=> b!475743 (= e!290461 call!33169)))

(declare-fun b!475744 () Bool)

(assert (=> b!475744 (= e!290460 call!33171)))

(assert (= (and d!179921 (not res!210847)) b!475738))

(assert (= (and b!475738 c!95252) b!475742))

(assert (= (and b!475738 (not c!95252)) b!475740))

(assert (= (and b!475742 res!210848) b!475743))

(assert (= (and b!475740 c!95250) b!475736))

(assert (= (and b!475740 (not c!95250)) b!475741))

(assert (= (and b!475736 res!210845) b!475744))

(assert (= (and b!475741 (not res!210846)) b!475739))

(assert (= (and b!475739 res!210849) b!475737))

(assert (= (or b!475744 b!475739) bm!33165))

(assert (= (or b!475736 b!475737) bm!33164))

(assert (= (or b!475743 bm!33164) bm!33166))

(declare-fun m!747277 () Bool)

(assert (=> bm!33165 m!747277))

(declare-fun m!747281 () Bool)

(assert (=> bm!33166 m!747281))

(declare-fun m!747285 () Bool)

(assert (=> b!475742 m!747285))

(assert (=> start!45580 d!179921))

(declare-fun b!475754 () Bool)

(declare-fun res!210855 () Bool)

(declare-fun e!290474 () Bool)

(assert (=> b!475754 (=> (not res!210855) (not e!290474))))

(declare-fun call!33176 () Bool)

(assert (=> b!475754 (= res!210855 call!33176)))

(declare-fun e!290479 () Bool)

(assert (=> b!475754 (= e!290479 e!290474)))

(declare-fun b!475755 () Bool)

(declare-fun e!290473 () Bool)

(assert (=> b!475755 (= e!290473 call!33176)))

(declare-fun b!475756 () Bool)

(declare-fun e!290476 () Bool)

(declare-fun e!290477 () Bool)

(assert (=> b!475756 (= e!290476 e!290477)))

(declare-fun c!95256 () Bool)

(assert (=> b!475756 (= c!95256 ((_ is Star!1149) (regOne!2811 r!20230)))))

(declare-fun b!475757 () Bool)

(declare-fun e!290478 () Bool)

(assert (=> b!475757 (= e!290478 e!290473)))

(declare-fun res!210859 () Bool)

(assert (=> b!475757 (=> (not res!210859) (not e!290473))))

(declare-fun call!33177 () Bool)

(assert (=> b!475757 (= res!210859 call!33177)))

(declare-fun b!475758 () Bool)

(assert (=> b!475758 (= e!290477 e!290479)))

(declare-fun c!95255 () Bool)

(assert (=> b!475758 (= c!95255 ((_ is Union!1149) (regOne!2811 r!20230)))))

(declare-fun bm!33170 () Bool)

(declare-fun call!33175 () Bool)

(assert (=> bm!33170 (= call!33176 call!33175)))

(declare-fun d!179925 () Bool)

(declare-fun res!210857 () Bool)

(assert (=> d!179925 (=> res!210857 e!290476)))

(assert (=> d!179925 (= res!210857 ((_ is ElementMatch!1149) (regOne!2811 r!20230)))))

(assert (=> d!179925 (= (validRegex!377 (regOne!2811 r!20230)) e!290476)))

(declare-fun bm!33171 () Bool)

(assert (=> bm!33171 (= call!33177 (validRegex!377 (ite c!95255 (regTwo!2811 (regOne!2811 r!20230)) (regOne!2810 (regOne!2811 r!20230)))))))

(declare-fun b!475759 () Bool)

(declare-fun res!210856 () Bool)

(assert (=> b!475759 (=> res!210856 e!290478)))

(assert (=> b!475759 (= res!210856 (not ((_ is Concat!2049) (regOne!2811 r!20230))))))

(assert (=> b!475759 (= e!290479 e!290478)))

(declare-fun bm!33172 () Bool)

(assert (=> bm!33172 (= call!33175 (validRegex!377 (ite c!95256 (reg!1478 (regOne!2811 r!20230)) (ite c!95255 (regOne!2811 (regOne!2811 r!20230)) (regTwo!2810 (regOne!2811 r!20230))))))))

(declare-fun b!475760 () Bool)

(declare-fun e!290475 () Bool)

(assert (=> b!475760 (= e!290477 e!290475)))

(declare-fun res!210858 () Bool)

(assert (=> b!475760 (= res!210858 (not (nullable!284 (reg!1478 (regOne!2811 r!20230)))))))

(assert (=> b!475760 (=> (not res!210858) (not e!290475))))

(declare-fun b!475761 () Bool)

(assert (=> b!475761 (= e!290475 call!33175)))

(declare-fun b!475762 () Bool)

(assert (=> b!475762 (= e!290474 call!33177)))

(assert (= (and d!179925 (not res!210857)) b!475756))

(assert (= (and b!475756 c!95256) b!475760))

(assert (= (and b!475756 (not c!95256)) b!475758))

(assert (= (and b!475760 res!210858) b!475761))

(assert (= (and b!475758 c!95255) b!475754))

(assert (= (and b!475758 (not c!95255)) b!475759))

(assert (= (and b!475754 res!210855) b!475762))

(assert (= (and b!475759 (not res!210856)) b!475757))

(assert (= (and b!475757 res!210859) b!475755))

(assert (= (or b!475762 b!475757) bm!33171))

(assert (= (or b!475754 b!475755) bm!33170))

(assert (= (or b!475761 bm!33170) bm!33172))

(declare-fun m!747291 () Bool)

(assert (=> bm!33171 m!747291))

(declare-fun m!747295 () Bool)

(assert (=> bm!33172 m!747295))

(declare-fun m!747297 () Bool)

(assert (=> b!475760 m!747297))

(assert (=> b!475685 d!179925))

(declare-fun b!475787 () Bool)

(declare-fun e!290484 () Bool)

(declare-fun tp!132697 () Bool)

(declare-fun tp!132700 () Bool)

(assert (=> b!475787 (= e!290484 (and tp!132697 tp!132700))))

(declare-fun b!475789 () Bool)

(declare-fun tp!132701 () Bool)

(assert (=> b!475789 (= e!290484 tp!132701)))

(declare-fun b!475785 () Bool)

(assert (=> b!475785 (= e!290484 tp_is_empty!2295)))

(declare-fun b!475790 () Bool)

(declare-fun tp!132694 () Bool)

(declare-fun tp!132698 () Bool)

(assert (=> b!475790 (= e!290484 (and tp!132694 tp!132698))))

(assert (=> b!475688 (= tp!132667 e!290484)))

(assert (= (and b!475688 ((_ is ElementMatch!1149) (regOne!2810 r!20230))) b!475785))

(assert (= (and b!475688 ((_ is Concat!2049) (regOne!2810 r!20230))) b!475787))

(assert (= (and b!475688 ((_ is Star!1149) (regOne!2810 r!20230))) b!475789))

(assert (= (and b!475688 ((_ is Union!1149) (regOne!2810 r!20230))) b!475790))

(declare-fun b!475793 () Bool)

(declare-fun e!290486 () Bool)

(declare-fun tp!132705 () Bool)

(declare-fun tp!132709 () Bool)

(assert (=> b!475793 (= e!290486 (and tp!132705 tp!132709))))

(declare-fun b!475795 () Bool)

(declare-fun tp!132710 () Bool)

(assert (=> b!475795 (= e!290486 tp!132710)))

(declare-fun b!475791 () Bool)

(assert (=> b!475791 (= e!290486 tp_is_empty!2295)))

(declare-fun b!475797 () Bool)

(declare-fun tp!132702 () Bool)

(declare-fun tp!132707 () Bool)

(assert (=> b!475797 (= e!290486 (and tp!132702 tp!132707))))

(assert (=> b!475688 (= tp!132671 e!290486)))

(assert (= (and b!475688 ((_ is ElementMatch!1149) (regTwo!2810 r!20230))) b!475791))

(assert (= (and b!475688 ((_ is Concat!2049) (regTwo!2810 r!20230))) b!475793))

(assert (= (and b!475688 ((_ is Star!1149) (regTwo!2810 r!20230))) b!475795))

(assert (= (and b!475688 ((_ is Union!1149) (regTwo!2810 r!20230))) b!475797))

(declare-fun b!475803 () Bool)

(declare-fun e!290488 () Bool)

(declare-fun tp!132717 () Bool)

(declare-fun tp!132720 () Bool)

(assert (=> b!475803 (= e!290488 (and tp!132717 tp!132720))))

(declare-fun b!475805 () Bool)

(declare-fun tp!132721 () Bool)

(assert (=> b!475805 (= e!290488 tp!132721)))

(declare-fun b!475801 () Bool)

(assert (=> b!475801 (= e!290488 tp_is_empty!2295)))

(declare-fun b!475806 () Bool)

(declare-fun tp!132714 () Bool)

(declare-fun tp!132718 () Bool)

(assert (=> b!475806 (= e!290488 (and tp!132714 tp!132718))))

(assert (=> b!475684 (= tp!132668 e!290488)))

(assert (= (and b!475684 ((_ is ElementMatch!1149) (reg!1478 r!20230))) b!475801))

(assert (= (and b!475684 ((_ is Concat!2049) (reg!1478 r!20230))) b!475803))

(assert (= (and b!475684 ((_ is Star!1149) (reg!1478 r!20230))) b!475805))

(assert (= (and b!475684 ((_ is Union!1149) (reg!1478 r!20230))) b!475806))

(declare-fun b!475812 () Bool)

(declare-fun e!290490 () Bool)

(declare-fun tp!132727 () Bool)

(declare-fun tp!132730 () Bool)

(assert (=> b!475812 (= e!290490 (and tp!132727 tp!132730))))

(declare-fun b!475813 () Bool)

(declare-fun tp!132731 () Bool)

(assert (=> b!475813 (= e!290490 tp!132731)))

(declare-fun b!475810 () Bool)

(assert (=> b!475810 (= e!290490 tp_is_empty!2295)))

(declare-fun b!475814 () Bool)

(declare-fun tp!132725 () Bool)

(declare-fun tp!132729 () Bool)

(assert (=> b!475814 (= e!290490 (and tp!132725 tp!132729))))

(assert (=> b!475690 (= tp!132669 e!290490)))

(assert (= (and b!475690 ((_ is ElementMatch!1149) (regOne!2811 r!20230))) b!475810))

(assert (= (and b!475690 ((_ is Concat!2049) (regOne!2811 r!20230))) b!475812))

(assert (= (and b!475690 ((_ is Star!1149) (regOne!2811 r!20230))) b!475813))

(assert (= (and b!475690 ((_ is Union!1149) (regOne!2811 r!20230))) b!475814))

(declare-fun b!475817 () Bool)

(declare-fun e!290492 () Bool)

(declare-fun tp!132735 () Bool)

(declare-fun tp!132739 () Bool)

(assert (=> b!475817 (= e!290492 (and tp!132735 tp!132739))))

(declare-fun b!475819 () Bool)

(declare-fun tp!132740 () Bool)

(assert (=> b!475819 (= e!290492 tp!132740)))

(declare-fun b!475815 () Bool)

(assert (=> b!475815 (= e!290492 tp_is_empty!2295)))

(declare-fun b!475821 () Bool)

(declare-fun tp!132732 () Bool)

(declare-fun tp!132737 () Bool)

(assert (=> b!475821 (= e!290492 (and tp!132732 tp!132737))))

(assert (=> b!475690 (= tp!132670 e!290492)))

(assert (= (and b!475690 ((_ is ElementMatch!1149) (regTwo!2811 r!20230))) b!475815))

(assert (= (and b!475690 ((_ is Concat!2049) (regTwo!2811 r!20230))) b!475817))

(assert (= (and b!475690 ((_ is Star!1149) (regTwo!2811 r!20230))) b!475819))

(assert (= (and b!475690 ((_ is Union!1149) (regTwo!2811 r!20230))) b!475821))

(check-sat (not b!475812) (not b!475817) (not b!475793) (not b!475806) (not b!475760) (not b!475805) (not bm!33166) (not bm!33165) (not b!475813) (not b!475795) (not bm!33172) (not b!475821) (not b!475742) (not bm!33171) (not d!179917) (not b!475814) (not b!475797) (not b!475787) (not b!475819) (not b!475803) tp_is_empty!2295 (not b!475790) (not b!475789))
(check-sat)
