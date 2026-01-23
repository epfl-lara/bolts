; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350998 () Bool)

(assert start!350998)

(declare-fun b!3730584 () Bool)

(declare-fun e!2308154 () Bool)

(declare-fun tp!1135232 () Bool)

(declare-fun tp!1135231 () Bool)

(assert (=> b!3730584 (= e!2308154 (and tp!1135232 tp!1135231))))

(declare-fun b!3730585 () Bool)

(declare-fun tp_is_empty!18869 () Bool)

(assert (=> b!3730585 (= e!2308154 tp_is_empty!18869)))

(declare-fun b!3730586 () Bool)

(declare-fun tp!1135230 () Bool)

(assert (=> b!3730586 (= e!2308154 tp!1135230)))

(declare-fun b!3730587 () Bool)

(declare-fun res!1514621 () Bool)

(declare-fun e!2308153 () Bool)

(assert (=> b!3730587 (=> (not res!1514621) (not e!2308153))))

(declare-datatypes ((C!22040 0))(
  ( (C!22041 (val!13068 Int)) )
))
(declare-datatypes ((Regex!10927 0))(
  ( (ElementMatch!10927 (c!645789 C!22040)) (Concat!17198 (regOne!22366 Regex!10927) (regTwo!22366 Regex!10927)) (EmptyExpr!10927) (Star!10927 (reg!11256 Regex!10927)) (EmptyLang!10927) (Union!10927 (regOne!22367 Regex!10927) (regTwo!22367 Regex!10927)) )
))
(declare-fun r!26968 () Regex!10927)

(declare-fun cNot!42 () C!22040)

(declare-datatypes ((List!39808 0))(
  ( (Nil!39684) (Cons!39684 (h!45104 C!22040) (t!302491 List!39808)) )
))
(declare-fun contains!8020 (List!39808 C!22040) Bool)

(declare-fun usedCharacters!1190 (Regex!10927) List!39808)

(assert (=> b!3730587 (= res!1514621 (not (contains!8020 (usedCharacters!1190 r!26968) cNot!42)))))

(declare-fun b!3730588 () Bool)

(assert (=> b!3730588 (= e!2308153 (contains!8020 (usedCharacters!1190 (regOne!22366 r!26968)) cNot!42))))

(declare-fun b!3730589 () Bool)

(declare-fun res!1514622 () Bool)

(assert (=> b!3730589 (=> (not res!1514622) (not e!2308153))))

(get-info :version)

(assert (=> b!3730589 (= res!1514622 (and (not ((_ is EmptyExpr!10927) r!26968)) (not ((_ is EmptyLang!10927) r!26968)) (not ((_ is ElementMatch!10927) r!26968)) (not ((_ is Union!10927) r!26968)) (not ((_ is Star!10927) r!26968))))))

(declare-fun res!1514619 () Bool)

(assert (=> start!350998 (=> (not res!1514619) (not e!2308153))))

(declare-fun validRegex!5034 (Regex!10927) Bool)

(assert (=> start!350998 (= res!1514619 (validRegex!5034 r!26968))))

(assert (=> start!350998 e!2308153))

(assert (=> start!350998 e!2308154))

(assert (=> start!350998 tp_is_empty!18869))

(declare-fun b!3730590 () Bool)

(declare-fun res!1514620 () Bool)

(assert (=> b!3730590 (=> (not res!1514620) (not e!2308153))))

(declare-fun nullable!3835 (Regex!10927) Bool)

(assert (=> b!3730590 (= res!1514620 (nullable!3835 (regOne!22366 r!26968)))))

(declare-fun b!3730591 () Bool)

(declare-fun tp!1135234 () Bool)

(declare-fun tp!1135233 () Bool)

(assert (=> b!3730591 (= e!2308154 (and tp!1135234 tp!1135233))))

(declare-fun b!3730592 () Bool)

(declare-fun res!1514618 () Bool)

(assert (=> b!3730592 (=> (not res!1514618) (not e!2308153))))

(assert (=> b!3730592 (= res!1514618 (validRegex!5034 (regOne!22366 r!26968)))))

(assert (= (and start!350998 res!1514619) b!3730587))

(assert (= (and b!3730587 res!1514621) b!3730589))

(assert (= (and b!3730589 res!1514622) b!3730590))

(assert (= (and b!3730590 res!1514620) b!3730592))

(assert (= (and b!3730592 res!1514618) b!3730588))

(assert (= (and start!350998 ((_ is ElementMatch!10927) r!26968)) b!3730585))

(assert (= (and start!350998 ((_ is Concat!17198) r!26968)) b!3730584))

(assert (= (and start!350998 ((_ is Star!10927) r!26968)) b!3730586))

(assert (= (and start!350998 ((_ is Union!10927) r!26968)) b!3730591))

(declare-fun m!4230139 () Bool)

(assert (=> b!3730590 m!4230139))

(declare-fun m!4230141 () Bool)

(assert (=> b!3730588 m!4230141))

(assert (=> b!3730588 m!4230141))

(declare-fun m!4230143 () Bool)

(assert (=> b!3730588 m!4230143))

(declare-fun m!4230145 () Bool)

(assert (=> b!3730592 m!4230145))

(declare-fun m!4230147 () Bool)

(assert (=> start!350998 m!4230147))

(declare-fun m!4230149 () Bool)

(assert (=> b!3730587 m!4230149))

(assert (=> b!3730587 m!4230149))

(declare-fun m!4230151 () Bool)

(assert (=> b!3730587 m!4230151))

(check-sat (not b!3730592) (not b!3730586) (not b!3730584) (not b!3730591) (not b!3730590) (not b!3730587) (not b!3730588) tp_is_empty!18869 (not start!350998))
(check-sat)
(get-model)

(declare-fun b!3730639 () Bool)

(declare-fun e!2308191 () Bool)

(declare-fun call!272457 () Bool)

(assert (=> b!3730639 (= e!2308191 call!272457)))

(declare-fun b!3730641 () Bool)

(declare-fun e!2308193 () Bool)

(assert (=> b!3730641 (= e!2308193 e!2308191)))

(declare-fun res!1514648 () Bool)

(assert (=> b!3730641 (= res!1514648 (not (nullable!3835 (reg!11256 (regOne!22366 r!26968)))))))

(assert (=> b!3730641 (=> (not res!1514648) (not e!2308191))))

(declare-fun c!645803 () Bool)

(declare-fun c!645802 () Bool)

(declare-fun bm!272449 () Bool)

(assert (=> bm!272449 (= call!272457 (validRegex!5034 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))

(declare-fun b!3730643 () Bool)

(declare-fun res!1514651 () Bool)

(declare-fun e!2308192 () Bool)

(assert (=> b!3730643 (=> (not res!1514651) (not e!2308192))))

(declare-fun call!272454 () Bool)

(assert (=> b!3730643 (= res!1514651 call!272454)))

(declare-fun e!2308200 () Bool)

(assert (=> b!3730643 (= e!2308200 e!2308192)))

(declare-fun b!3730645 () Bool)

(declare-fun call!272455 () Bool)

(assert (=> b!3730645 (= e!2308192 call!272455)))

(declare-fun b!3730647 () Bool)

(declare-fun e!2308199 () Bool)

(declare-fun e!2308190 () Bool)

(assert (=> b!3730647 (= e!2308199 e!2308190)))

(declare-fun res!1514655 () Bool)

(assert (=> b!3730647 (=> (not res!1514655) (not e!2308190))))

(assert (=> b!3730647 (= res!1514655 call!272454)))

(declare-fun bm!272450 () Bool)

(assert (=> bm!272450 (= call!272454 (validRegex!5034 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))

(declare-fun b!3730651 () Bool)

(assert (=> b!3730651 (= e!2308193 e!2308200)))

(assert (=> b!3730651 (= c!645802 ((_ is Union!10927) (regOne!22366 r!26968)))))

(declare-fun b!3730652 () Bool)

(declare-fun e!2308194 () Bool)

(assert (=> b!3730652 (= e!2308194 e!2308193)))

(assert (=> b!3730652 (= c!645803 ((_ is Star!10927) (regOne!22366 r!26968)))))

(declare-fun d!1090581 () Bool)

(declare-fun res!1514656 () Bool)

(assert (=> d!1090581 (=> res!1514656 e!2308194)))

(assert (=> d!1090581 (= res!1514656 ((_ is ElementMatch!10927) (regOne!22366 r!26968)))))

(assert (=> d!1090581 (= (validRegex!5034 (regOne!22366 r!26968)) e!2308194)))

(declare-fun bm!272451 () Bool)

(assert (=> bm!272451 (= call!272455 call!272457)))

(declare-fun b!3730654 () Bool)

(declare-fun res!1514654 () Bool)

(assert (=> b!3730654 (=> res!1514654 e!2308199)))

(assert (=> b!3730654 (= res!1514654 (not ((_ is Concat!17198) (regOne!22366 r!26968))))))

(assert (=> b!3730654 (= e!2308200 e!2308199)))

(declare-fun b!3730655 () Bool)

(assert (=> b!3730655 (= e!2308190 call!272455)))

(assert (= (and d!1090581 (not res!1514656)) b!3730652))

(assert (= (and b!3730652 c!645803) b!3730641))

(assert (= (and b!3730652 (not c!645803)) b!3730651))

(assert (= (and b!3730641 res!1514648) b!3730639))

(assert (= (and b!3730651 c!645802) b!3730643))

(assert (= (and b!3730651 (not c!645802)) b!3730654))

(assert (= (and b!3730643 res!1514651) b!3730645))

(assert (= (and b!3730654 (not res!1514654)) b!3730647))

(assert (= (and b!3730647 res!1514655) b!3730655))

(assert (= (or b!3730645 b!3730655) bm!272451))

(assert (= (or b!3730643 b!3730647) bm!272450))

(assert (= (or b!3730639 bm!272451) bm!272449))

(declare-fun m!4230167 () Bool)

(assert (=> b!3730641 m!4230167))

(declare-fun m!4230169 () Bool)

(assert (=> bm!272449 m!4230169))

(declare-fun m!4230171 () Bool)

(assert (=> bm!272450 m!4230171))

(assert (=> b!3730592 d!1090581))

(declare-fun d!1090587 () Bool)

(declare-fun lt!1298668 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5783 (List!39808) (InoxSet C!22040))

(assert (=> d!1090587 (= lt!1298668 (select (content!5783 (usedCharacters!1190 r!26968)) cNot!42))))

(declare-fun e!2308214 () Bool)

(assert (=> d!1090587 (= lt!1298668 e!2308214)))

(declare-fun res!1514668 () Bool)

(assert (=> d!1090587 (=> (not res!1514668) (not e!2308214))))

(assert (=> d!1090587 (= res!1514668 ((_ is Cons!39684) (usedCharacters!1190 r!26968)))))

(assert (=> d!1090587 (= (contains!8020 (usedCharacters!1190 r!26968) cNot!42) lt!1298668)))

(declare-fun b!3730666 () Bool)

(declare-fun e!2308215 () Bool)

(assert (=> b!3730666 (= e!2308214 e!2308215)))

(declare-fun res!1514669 () Bool)

(assert (=> b!3730666 (=> res!1514669 e!2308215)))

(assert (=> b!3730666 (= res!1514669 (= (h!45104 (usedCharacters!1190 r!26968)) cNot!42))))

(declare-fun b!3730667 () Bool)

(assert (=> b!3730667 (= e!2308215 (contains!8020 (t!302491 (usedCharacters!1190 r!26968)) cNot!42))))

(assert (= (and d!1090587 res!1514668) b!3730666))

(assert (= (and b!3730666 (not res!1514669)) b!3730667))

(assert (=> d!1090587 m!4230149))

(declare-fun m!4230179 () Bool)

(assert (=> d!1090587 m!4230179))

(declare-fun m!4230181 () Bool)

(assert (=> d!1090587 m!4230181))

(declare-fun m!4230183 () Bool)

(assert (=> b!3730667 m!4230183))

(assert (=> b!3730587 d!1090587))

(declare-fun b!3730708 () Bool)

(declare-fun c!645824 () Bool)

(assert (=> b!3730708 (= c!645824 ((_ is Star!10927) r!26968))))

(declare-fun e!2308236 () List!39808)

(declare-fun e!2308238 () List!39808)

(assert (=> b!3730708 (= e!2308236 e!2308238)))

(declare-fun b!3730709 () Bool)

(declare-fun call!272479 () List!39808)

(assert (=> b!3730709 (= e!2308238 call!272479)))

(declare-fun b!3730710 () Bool)

(declare-fun e!2308237 () List!39808)

(declare-fun call!272481 () List!39808)

(assert (=> b!3730710 (= e!2308237 call!272481)))

(declare-fun bm!272473 () Bool)

(declare-fun call!272478 () List!39808)

(assert (=> bm!272473 (= call!272478 call!272479)))

(declare-fun bm!272474 () Bool)

(declare-fun call!272480 () List!39808)

(declare-fun c!645826 () Bool)

(assert (=> bm!272474 (= call!272480 (usedCharacters!1190 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))))))

(declare-fun b!3730711 () Bool)

(assert (=> b!3730711 (= e!2308236 (Cons!39684 (c!645789 r!26968) Nil!39684))))

(declare-fun bm!272475 () Bool)

(declare-fun ++!9850 (List!39808 List!39808) List!39808)

(assert (=> bm!272475 (= call!272481 (++!9850 (ite c!645826 call!272480 call!272478) (ite c!645826 call!272478 call!272480)))))

(declare-fun d!1090591 () Bool)

(declare-fun c!645827 () Bool)

(assert (=> d!1090591 (= c!645827 (or ((_ is EmptyExpr!10927) r!26968) ((_ is EmptyLang!10927) r!26968)))))

(declare-fun e!2308239 () List!39808)

(assert (=> d!1090591 (= (usedCharacters!1190 r!26968) e!2308239)))

(declare-fun b!3730712 () Bool)

(assert (=> b!3730712 (= e!2308239 Nil!39684)))

(declare-fun b!3730713 () Bool)

(assert (=> b!3730713 (= e!2308239 e!2308236)))

(declare-fun c!645825 () Bool)

(assert (=> b!3730713 (= c!645825 ((_ is ElementMatch!10927) r!26968))))

(declare-fun b!3730714 () Bool)

(assert (=> b!3730714 (= e!2308237 call!272481)))

(declare-fun bm!272476 () Bool)

(assert (=> bm!272476 (= call!272479 (usedCharacters!1190 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))))))

(declare-fun b!3730715 () Bool)

(assert (=> b!3730715 (= e!2308238 e!2308237)))

(assert (=> b!3730715 (= c!645826 ((_ is Union!10927) r!26968))))

(assert (= (and d!1090591 c!645827) b!3730712))

(assert (= (and d!1090591 (not c!645827)) b!3730713))

(assert (= (and b!3730713 c!645825) b!3730711))

(assert (= (and b!3730713 (not c!645825)) b!3730708))

(assert (= (and b!3730708 c!645824) b!3730709))

(assert (= (and b!3730708 (not c!645824)) b!3730715))

(assert (= (and b!3730715 c!645826) b!3730714))

(assert (= (and b!3730715 (not c!645826)) b!3730710))

(assert (= (or b!3730714 b!3730710) bm!272474))

(assert (= (or b!3730714 b!3730710) bm!272473))

(assert (= (or b!3730714 b!3730710) bm!272475))

(assert (= (or b!3730709 bm!272473) bm!272476))

(declare-fun m!4230191 () Bool)

(assert (=> bm!272474 m!4230191))

(declare-fun m!4230193 () Bool)

(assert (=> bm!272475 m!4230193))

(declare-fun m!4230195 () Bool)

(assert (=> bm!272476 m!4230195))

(assert (=> b!3730587 d!1090591))

(declare-fun d!1090595 () Bool)

(declare-fun lt!1298670 () Bool)

(assert (=> d!1090595 (= lt!1298670 (select (content!5783 (usedCharacters!1190 (regOne!22366 r!26968))) cNot!42))))

(declare-fun e!2308242 () Bool)

(assert (=> d!1090595 (= lt!1298670 e!2308242)))

(declare-fun res!1514672 () Bool)

(assert (=> d!1090595 (=> (not res!1514672) (not e!2308242))))

(assert (=> d!1090595 (= res!1514672 ((_ is Cons!39684) (usedCharacters!1190 (regOne!22366 r!26968))))))

(assert (=> d!1090595 (= (contains!8020 (usedCharacters!1190 (regOne!22366 r!26968)) cNot!42) lt!1298670)))

(declare-fun b!3730718 () Bool)

(declare-fun e!2308243 () Bool)

(assert (=> b!3730718 (= e!2308242 e!2308243)))

(declare-fun res!1514673 () Bool)

(assert (=> b!3730718 (=> res!1514673 e!2308243)))

(assert (=> b!3730718 (= res!1514673 (= (h!45104 (usedCharacters!1190 (regOne!22366 r!26968))) cNot!42))))

(declare-fun b!3730719 () Bool)

(assert (=> b!3730719 (= e!2308243 (contains!8020 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968))) cNot!42))))

(assert (= (and d!1090595 res!1514672) b!3730718))

(assert (= (and b!3730718 (not res!1514673)) b!3730719))

(assert (=> d!1090595 m!4230141))

(declare-fun m!4230203 () Bool)

(assert (=> d!1090595 m!4230203))

(declare-fun m!4230205 () Bool)

(assert (=> d!1090595 m!4230205))

(declare-fun m!4230207 () Bool)

(assert (=> b!3730719 m!4230207))

(assert (=> b!3730588 d!1090595))

(declare-fun b!3730728 () Bool)

(declare-fun c!645832 () Bool)

(assert (=> b!3730728 (= c!645832 ((_ is Star!10927) (regOne!22366 r!26968)))))

(declare-fun e!2308248 () List!39808)

(declare-fun e!2308250 () List!39808)

(assert (=> b!3730728 (= e!2308248 e!2308250)))

(declare-fun b!3730729 () Bool)

(declare-fun call!272487 () List!39808)

(assert (=> b!3730729 (= e!2308250 call!272487)))

(declare-fun b!3730730 () Bool)

(declare-fun e!2308249 () List!39808)

(declare-fun call!272489 () List!39808)

(assert (=> b!3730730 (= e!2308249 call!272489)))

(declare-fun bm!272481 () Bool)

(declare-fun call!272486 () List!39808)

(assert (=> bm!272481 (= call!272486 call!272487)))

(declare-fun bm!272482 () Bool)

(declare-fun call!272488 () List!39808)

(declare-fun c!645834 () Bool)

(assert (=> bm!272482 (= call!272488 (usedCharacters!1190 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))

(declare-fun b!3730731 () Bool)

(assert (=> b!3730731 (= e!2308248 (Cons!39684 (c!645789 (regOne!22366 r!26968)) Nil!39684))))

(declare-fun bm!272483 () Bool)

(assert (=> bm!272483 (= call!272489 (++!9850 (ite c!645834 call!272488 call!272486) (ite c!645834 call!272486 call!272488)))))

(declare-fun d!1090599 () Bool)

(declare-fun c!645835 () Bool)

(assert (=> d!1090599 (= c!645835 (or ((_ is EmptyExpr!10927) (regOne!22366 r!26968)) ((_ is EmptyLang!10927) (regOne!22366 r!26968))))))

(declare-fun e!2308251 () List!39808)

(assert (=> d!1090599 (= (usedCharacters!1190 (regOne!22366 r!26968)) e!2308251)))

(declare-fun b!3730732 () Bool)

(assert (=> b!3730732 (= e!2308251 Nil!39684)))

(declare-fun b!3730733 () Bool)

(assert (=> b!3730733 (= e!2308251 e!2308248)))

(declare-fun c!645833 () Bool)

(assert (=> b!3730733 (= c!645833 ((_ is ElementMatch!10927) (regOne!22366 r!26968)))))

(declare-fun b!3730734 () Bool)

(assert (=> b!3730734 (= e!2308249 call!272489)))

(declare-fun bm!272484 () Bool)

(assert (=> bm!272484 (= call!272487 (usedCharacters!1190 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))

(declare-fun b!3730735 () Bool)

(assert (=> b!3730735 (= e!2308250 e!2308249)))

(assert (=> b!3730735 (= c!645834 ((_ is Union!10927) (regOne!22366 r!26968)))))

(assert (= (and d!1090599 c!645835) b!3730732))

(assert (= (and d!1090599 (not c!645835)) b!3730733))

(assert (= (and b!3730733 c!645833) b!3730731))

(assert (= (and b!3730733 (not c!645833)) b!3730728))

(assert (= (and b!3730728 c!645832) b!3730729))

(assert (= (and b!3730728 (not c!645832)) b!3730735))

(assert (= (and b!3730735 c!645834) b!3730734))

(assert (= (and b!3730735 (not c!645834)) b!3730730))

(assert (= (or b!3730734 b!3730730) bm!272482))

(assert (= (or b!3730734 b!3730730) bm!272481))

(assert (= (or b!3730734 b!3730730) bm!272483))

(assert (= (or b!3730729 bm!272481) bm!272484))

(declare-fun m!4230215 () Bool)

(assert (=> bm!272482 m!4230215))

(declare-fun m!4230217 () Bool)

(assert (=> bm!272483 m!4230217))

(declare-fun m!4230219 () Bool)

(assert (=> bm!272484 m!4230219))

(assert (=> b!3730588 d!1090599))

(declare-fun b!3730744 () Bool)

(declare-fun e!2308255 () Bool)

(declare-fun call!272492 () Bool)

(assert (=> b!3730744 (= e!2308255 call!272492)))

(declare-fun b!3730745 () Bool)

(declare-fun e!2308257 () Bool)

(assert (=> b!3730745 (= e!2308257 e!2308255)))

(declare-fun res!1514674 () Bool)

(assert (=> b!3730745 (= res!1514674 (not (nullable!3835 (reg!11256 r!26968))))))

(assert (=> b!3730745 (=> (not res!1514674) (not e!2308255))))

(declare-fun c!645837 () Bool)

(declare-fun bm!272485 () Bool)

(declare-fun c!645836 () Bool)

(assert (=> bm!272485 (= call!272492 (validRegex!5034 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))

(declare-fun b!3730746 () Bool)

(declare-fun res!1514675 () Bool)

(declare-fun e!2308256 () Bool)

(assert (=> b!3730746 (=> (not res!1514675) (not e!2308256))))

(declare-fun call!272490 () Bool)

(assert (=> b!3730746 (= res!1514675 call!272490)))

(declare-fun e!2308260 () Bool)

(assert (=> b!3730746 (= e!2308260 e!2308256)))

(declare-fun b!3730747 () Bool)

(declare-fun call!272491 () Bool)

(assert (=> b!3730747 (= e!2308256 call!272491)))

(declare-fun b!3730748 () Bool)

(declare-fun e!2308259 () Bool)

(declare-fun e!2308254 () Bool)

(assert (=> b!3730748 (= e!2308259 e!2308254)))

(declare-fun res!1514677 () Bool)

(assert (=> b!3730748 (=> (not res!1514677) (not e!2308254))))

(assert (=> b!3730748 (= res!1514677 call!272490)))

(declare-fun bm!272486 () Bool)

(assert (=> bm!272486 (= call!272490 (validRegex!5034 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))

(declare-fun b!3730749 () Bool)

(assert (=> b!3730749 (= e!2308257 e!2308260)))

(assert (=> b!3730749 (= c!645836 ((_ is Union!10927) r!26968))))

(declare-fun b!3730750 () Bool)

(declare-fun e!2308258 () Bool)

(assert (=> b!3730750 (= e!2308258 e!2308257)))

(assert (=> b!3730750 (= c!645837 ((_ is Star!10927) r!26968))))

(declare-fun d!1090601 () Bool)

(declare-fun res!1514678 () Bool)

(assert (=> d!1090601 (=> res!1514678 e!2308258)))

(assert (=> d!1090601 (= res!1514678 ((_ is ElementMatch!10927) r!26968))))

(assert (=> d!1090601 (= (validRegex!5034 r!26968) e!2308258)))

(declare-fun bm!272487 () Bool)

(assert (=> bm!272487 (= call!272491 call!272492)))

(declare-fun b!3730751 () Bool)

(declare-fun res!1514676 () Bool)

(assert (=> b!3730751 (=> res!1514676 e!2308259)))

(assert (=> b!3730751 (= res!1514676 (not ((_ is Concat!17198) r!26968)))))

(assert (=> b!3730751 (= e!2308260 e!2308259)))

(declare-fun b!3730752 () Bool)

(assert (=> b!3730752 (= e!2308254 call!272491)))

(assert (= (and d!1090601 (not res!1514678)) b!3730750))

(assert (= (and b!3730750 c!645837) b!3730745))

(assert (= (and b!3730750 (not c!645837)) b!3730749))

(assert (= (and b!3730745 res!1514674) b!3730744))

(assert (= (and b!3730749 c!645836) b!3730746))

(assert (= (and b!3730749 (not c!645836)) b!3730751))

(assert (= (and b!3730746 res!1514675) b!3730747))

(assert (= (and b!3730751 (not res!1514676)) b!3730748))

(assert (= (and b!3730748 res!1514677) b!3730752))

(assert (= (or b!3730747 b!3730752) bm!272487))

(assert (= (or b!3730746 b!3730748) bm!272486))

(assert (= (or b!3730744 bm!272487) bm!272485))

(declare-fun m!4230221 () Bool)

(assert (=> b!3730745 m!4230221))

(declare-fun m!4230223 () Bool)

(assert (=> bm!272485 m!4230223))

(declare-fun m!4230225 () Bool)

(assert (=> bm!272486 m!4230225))

(assert (=> start!350998 d!1090601))

(declare-fun d!1090603 () Bool)

(declare-fun nullableFct!1088 (Regex!10927) Bool)

(assert (=> d!1090603 (= (nullable!3835 (regOne!22366 r!26968)) (nullableFct!1088 (regOne!22366 r!26968)))))

(declare-fun bs!575091 () Bool)

(assert (= bs!575091 d!1090603))

(declare-fun m!4230227 () Bool)

(assert (=> bs!575091 m!4230227))

(assert (=> b!3730590 d!1090603))

(declare-fun b!3730786 () Bool)

(declare-fun e!2308268 () Bool)

(declare-fun tp!1135281 () Bool)

(declare-fun tp!1135284 () Bool)

(assert (=> b!3730786 (= e!2308268 (and tp!1135281 tp!1135284))))

(declare-fun b!3730787 () Bool)

(declare-fun tp!1135282 () Bool)

(assert (=> b!3730787 (= e!2308268 tp!1135282)))

(declare-fun b!3730788 () Bool)

(declare-fun tp!1135280 () Bool)

(declare-fun tp!1135283 () Bool)

(assert (=> b!3730788 (= e!2308268 (and tp!1135280 tp!1135283))))

(assert (=> b!3730586 (= tp!1135230 e!2308268)))

(declare-fun b!3730785 () Bool)

(assert (=> b!3730785 (= e!2308268 tp_is_empty!18869)))

(assert (= (and b!3730586 ((_ is ElementMatch!10927) (reg!11256 r!26968))) b!3730785))

(assert (= (and b!3730586 ((_ is Concat!17198) (reg!11256 r!26968))) b!3730786))

(assert (= (and b!3730586 ((_ is Star!10927) (reg!11256 r!26968))) b!3730787))

(assert (= (and b!3730586 ((_ is Union!10927) (reg!11256 r!26968))) b!3730788))

(declare-fun b!3730790 () Bool)

(declare-fun e!2308269 () Bool)

(declare-fun tp!1135286 () Bool)

(declare-fun tp!1135289 () Bool)

(assert (=> b!3730790 (= e!2308269 (and tp!1135286 tp!1135289))))

(declare-fun b!3730791 () Bool)

(declare-fun tp!1135287 () Bool)

(assert (=> b!3730791 (= e!2308269 tp!1135287)))

(declare-fun b!3730792 () Bool)

(declare-fun tp!1135285 () Bool)

(declare-fun tp!1135288 () Bool)

(assert (=> b!3730792 (= e!2308269 (and tp!1135285 tp!1135288))))

(assert (=> b!3730584 (= tp!1135232 e!2308269)))

(declare-fun b!3730789 () Bool)

(assert (=> b!3730789 (= e!2308269 tp_is_empty!18869)))

(assert (= (and b!3730584 ((_ is ElementMatch!10927) (regOne!22366 r!26968))) b!3730789))

(assert (= (and b!3730584 ((_ is Concat!17198) (regOne!22366 r!26968))) b!3730790))

(assert (= (and b!3730584 ((_ is Star!10927) (regOne!22366 r!26968))) b!3730791))

(assert (= (and b!3730584 ((_ is Union!10927) (regOne!22366 r!26968))) b!3730792))

(declare-fun b!3730794 () Bool)

(declare-fun e!2308270 () Bool)

(declare-fun tp!1135291 () Bool)

(declare-fun tp!1135294 () Bool)

(assert (=> b!3730794 (= e!2308270 (and tp!1135291 tp!1135294))))

(declare-fun b!3730795 () Bool)

(declare-fun tp!1135292 () Bool)

(assert (=> b!3730795 (= e!2308270 tp!1135292)))

(declare-fun b!3730796 () Bool)

(declare-fun tp!1135290 () Bool)

(declare-fun tp!1135293 () Bool)

(assert (=> b!3730796 (= e!2308270 (and tp!1135290 tp!1135293))))

(assert (=> b!3730584 (= tp!1135231 e!2308270)))

(declare-fun b!3730793 () Bool)

(assert (=> b!3730793 (= e!2308270 tp_is_empty!18869)))

(assert (= (and b!3730584 ((_ is ElementMatch!10927) (regTwo!22366 r!26968))) b!3730793))

(assert (= (and b!3730584 ((_ is Concat!17198) (regTwo!22366 r!26968))) b!3730794))

(assert (= (and b!3730584 ((_ is Star!10927) (regTwo!22366 r!26968))) b!3730795))

(assert (= (and b!3730584 ((_ is Union!10927) (regTwo!22366 r!26968))) b!3730796))

(declare-fun b!3730798 () Bool)

(declare-fun e!2308271 () Bool)

(declare-fun tp!1135296 () Bool)

(declare-fun tp!1135299 () Bool)

(assert (=> b!3730798 (= e!2308271 (and tp!1135296 tp!1135299))))

(declare-fun b!3730799 () Bool)

(declare-fun tp!1135297 () Bool)

(assert (=> b!3730799 (= e!2308271 tp!1135297)))

(declare-fun b!3730800 () Bool)

(declare-fun tp!1135295 () Bool)

(declare-fun tp!1135298 () Bool)

(assert (=> b!3730800 (= e!2308271 (and tp!1135295 tp!1135298))))

(assert (=> b!3730591 (= tp!1135234 e!2308271)))

(declare-fun b!3730797 () Bool)

(assert (=> b!3730797 (= e!2308271 tp_is_empty!18869)))

(assert (= (and b!3730591 ((_ is ElementMatch!10927) (regOne!22367 r!26968))) b!3730797))

(assert (= (and b!3730591 ((_ is Concat!17198) (regOne!22367 r!26968))) b!3730798))

(assert (= (and b!3730591 ((_ is Star!10927) (regOne!22367 r!26968))) b!3730799))

(assert (= (and b!3730591 ((_ is Union!10927) (regOne!22367 r!26968))) b!3730800))

(declare-fun b!3730802 () Bool)

(declare-fun e!2308272 () Bool)

(declare-fun tp!1135301 () Bool)

(declare-fun tp!1135304 () Bool)

(assert (=> b!3730802 (= e!2308272 (and tp!1135301 tp!1135304))))

(declare-fun b!3730803 () Bool)

(declare-fun tp!1135302 () Bool)

(assert (=> b!3730803 (= e!2308272 tp!1135302)))

(declare-fun b!3730804 () Bool)

(declare-fun tp!1135300 () Bool)

(declare-fun tp!1135303 () Bool)

(assert (=> b!3730804 (= e!2308272 (and tp!1135300 tp!1135303))))

(assert (=> b!3730591 (= tp!1135233 e!2308272)))

(declare-fun b!3730801 () Bool)

(assert (=> b!3730801 (= e!2308272 tp_is_empty!18869)))

(assert (= (and b!3730591 ((_ is ElementMatch!10927) (regTwo!22367 r!26968))) b!3730801))

(assert (= (and b!3730591 ((_ is Concat!17198) (regTwo!22367 r!26968))) b!3730802))

(assert (= (and b!3730591 ((_ is Star!10927) (regTwo!22367 r!26968))) b!3730803))

(assert (= (and b!3730591 ((_ is Union!10927) (regTwo!22367 r!26968))) b!3730804))

(check-sat (not bm!272483) (not b!3730803) tp_is_empty!18869 (not d!1090603) (not bm!272486) (not b!3730788) (not b!3730786) (not bm!272485) (not d!1090587) (not bm!272450) (not b!3730787) (not b!3730667) (not b!3730804) (not b!3730790) (not b!3730796) (not bm!272475) (not bm!272474) (not b!3730800) (not bm!272476) (not bm!272482) (not b!3730791) (not b!3730745) (not b!3730795) (not b!3730794) (not b!3730802) (not b!3730641) (not b!3730798) (not d!1090595) (not b!3730792) (not b!3730719) (not bm!272484) (not b!3730799) (not bm!272449))
(check-sat)
(get-model)

(declare-fun b!3730805 () Bool)

(declare-fun e!2308274 () Bool)

(declare-fun call!272495 () Bool)

(assert (=> b!3730805 (= e!2308274 call!272495)))

(declare-fun b!3730806 () Bool)

(declare-fun e!2308276 () Bool)

(assert (=> b!3730806 (= e!2308276 e!2308274)))

(declare-fun res!1514679 () Bool)

(assert (=> b!3730806 (= res!1514679 (not (nullable!3835 (reg!11256 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))))

(assert (=> b!3730806 (=> (not res!1514679) (not e!2308274))))

(declare-fun bm!272488 () Bool)

(declare-fun c!645838 () Bool)

(declare-fun c!645839 () Bool)

(assert (=> bm!272488 (= call!272495 (validRegex!5034 (ite c!645839 (reg!11256 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))) (ite c!645838 (regTwo!22367 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))) (regTwo!22366 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))))))

(declare-fun b!3730807 () Bool)

(declare-fun res!1514680 () Bool)

(declare-fun e!2308275 () Bool)

(assert (=> b!3730807 (=> (not res!1514680) (not e!2308275))))

(declare-fun call!272493 () Bool)

(assert (=> b!3730807 (= res!1514680 call!272493)))

(declare-fun e!2308279 () Bool)

(assert (=> b!3730807 (= e!2308279 e!2308275)))

(declare-fun b!3730808 () Bool)

(declare-fun call!272494 () Bool)

(assert (=> b!3730808 (= e!2308275 call!272494)))

(declare-fun b!3730809 () Bool)

(declare-fun e!2308278 () Bool)

(declare-fun e!2308273 () Bool)

(assert (=> b!3730809 (= e!2308278 e!2308273)))

(declare-fun res!1514682 () Bool)

(assert (=> b!3730809 (=> (not res!1514682) (not e!2308273))))

(assert (=> b!3730809 (= res!1514682 call!272493)))

(declare-fun bm!272489 () Bool)

(assert (=> bm!272489 (= call!272493 (validRegex!5034 (ite c!645838 (regOne!22367 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))) (regOne!22366 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))))

(declare-fun b!3730810 () Bool)

(assert (=> b!3730810 (= e!2308276 e!2308279)))

(assert (=> b!3730810 (= c!645838 ((_ is Union!10927) (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))

(declare-fun b!3730811 () Bool)

(declare-fun e!2308277 () Bool)

(assert (=> b!3730811 (= e!2308277 e!2308276)))

(assert (=> b!3730811 (= c!645839 ((_ is Star!10927) (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))

(declare-fun d!1090605 () Bool)

(declare-fun res!1514683 () Bool)

(assert (=> d!1090605 (=> res!1514683 e!2308277)))

(assert (=> d!1090605 (= res!1514683 ((_ is ElementMatch!10927) (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))

(assert (=> d!1090605 (= (validRegex!5034 (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))) e!2308277)))

(declare-fun bm!272490 () Bool)

(assert (=> bm!272490 (= call!272494 call!272495)))

(declare-fun b!3730812 () Bool)

(declare-fun res!1514681 () Bool)

(assert (=> b!3730812 (=> res!1514681 e!2308278)))

(assert (=> b!3730812 (= res!1514681 (not ((_ is Concat!17198) (ite c!645803 (reg!11256 (regOne!22366 r!26968)) (ite c!645802 (regTwo!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))))

(assert (=> b!3730812 (= e!2308279 e!2308278)))

(declare-fun b!3730813 () Bool)

(assert (=> b!3730813 (= e!2308273 call!272494)))

(assert (= (and d!1090605 (not res!1514683)) b!3730811))

(assert (= (and b!3730811 c!645839) b!3730806))

(assert (= (and b!3730811 (not c!645839)) b!3730810))

(assert (= (and b!3730806 res!1514679) b!3730805))

(assert (= (and b!3730810 c!645838) b!3730807))

(assert (= (and b!3730810 (not c!645838)) b!3730812))

(assert (= (and b!3730807 res!1514680) b!3730808))

(assert (= (and b!3730812 (not res!1514681)) b!3730809))

(assert (= (and b!3730809 res!1514682) b!3730813))

(assert (= (or b!3730808 b!3730813) bm!272490))

(assert (= (or b!3730807 b!3730809) bm!272489))

(assert (= (or b!3730805 bm!272490) bm!272488))

(declare-fun m!4230229 () Bool)

(assert (=> b!3730806 m!4230229))

(declare-fun m!4230231 () Bool)

(assert (=> bm!272488 m!4230231))

(declare-fun m!4230233 () Bool)

(assert (=> bm!272489 m!4230233))

(assert (=> bm!272449 d!1090605))

(declare-fun d!1090607 () Bool)

(declare-fun c!645842 () Bool)

(assert (=> d!1090607 (= c!645842 ((_ is Nil!39684) (usedCharacters!1190 r!26968)))))

(declare-fun e!2308282 () (InoxSet C!22040))

(assert (=> d!1090607 (= (content!5783 (usedCharacters!1190 r!26968)) e!2308282)))

(declare-fun b!3730818 () Bool)

(assert (=> b!3730818 (= e!2308282 ((as const (Array C!22040 Bool)) false))))

(declare-fun b!3730819 () Bool)

(assert (=> b!3730819 (= e!2308282 ((_ map or) (store ((as const (Array C!22040 Bool)) false) (h!45104 (usedCharacters!1190 r!26968)) true) (content!5783 (t!302491 (usedCharacters!1190 r!26968)))))))

(assert (= (and d!1090607 c!645842) b!3730818))

(assert (= (and d!1090607 (not c!645842)) b!3730819))

(declare-fun m!4230235 () Bool)

(assert (=> b!3730819 m!4230235))

(declare-fun m!4230237 () Bool)

(assert (=> b!3730819 m!4230237))

(assert (=> d!1090587 d!1090607))

(declare-fun d!1090611 () Bool)

(assert (=> d!1090611 (= (nullable!3835 (reg!11256 r!26968)) (nullableFct!1088 (reg!11256 r!26968)))))

(declare-fun bs!575092 () Bool)

(assert (= bs!575092 d!1090611))

(declare-fun m!4230239 () Bool)

(assert (=> bs!575092 m!4230239))

(assert (=> b!3730745 d!1090611))

(declare-fun b!3730828 () Bool)

(declare-fun c!645847 () Bool)

(assert (=> b!3730828 (= c!645847 ((_ is Star!10927) (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))

(declare-fun e!2308287 () List!39808)

(declare-fun e!2308289 () List!39808)

(assert (=> b!3730828 (= e!2308287 e!2308289)))

(declare-fun b!3730829 () Bool)

(declare-fun call!272501 () List!39808)

(assert (=> b!3730829 (= e!2308289 call!272501)))

(declare-fun b!3730830 () Bool)

(declare-fun e!2308288 () List!39808)

(declare-fun call!272503 () List!39808)

(assert (=> b!3730830 (= e!2308288 call!272503)))

(declare-fun bm!272495 () Bool)

(declare-fun call!272500 () List!39808)

(assert (=> bm!272495 (= call!272500 call!272501)))

(declare-fun call!272502 () List!39808)

(declare-fun c!645849 () Bool)

(declare-fun bm!272496 () Bool)

(assert (=> bm!272496 (= call!272502 (usedCharacters!1190 (ite c!645849 (regOne!22367 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) (regTwo!22366 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))))

(declare-fun b!3730831 () Bool)

(assert (=> b!3730831 (= e!2308287 (Cons!39684 (c!645789 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) Nil!39684))))

(declare-fun bm!272497 () Bool)

(assert (=> bm!272497 (= call!272503 (++!9850 (ite c!645849 call!272502 call!272500) (ite c!645849 call!272500 call!272502)))))

(declare-fun d!1090613 () Bool)

(declare-fun c!645850 () Bool)

(assert (=> d!1090613 (= c!645850 (or ((_ is EmptyExpr!10927) (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) ((_ is EmptyLang!10927) (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))))

(declare-fun e!2308290 () List!39808)

(assert (=> d!1090613 (= (usedCharacters!1190 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) e!2308290)))

(declare-fun b!3730832 () Bool)

(assert (=> b!3730832 (= e!2308290 Nil!39684)))

(declare-fun b!3730833 () Bool)

(assert (=> b!3730833 (= e!2308290 e!2308287)))

(declare-fun c!645848 () Bool)

(assert (=> b!3730833 (= c!645848 ((_ is ElementMatch!10927) (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))

(declare-fun b!3730834 () Bool)

(assert (=> b!3730834 (= e!2308288 call!272503)))

(declare-fun bm!272498 () Bool)

(assert (=> bm!272498 (= call!272501 (usedCharacters!1190 (ite c!645847 (reg!11256 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) (ite c!645849 (regTwo!22367 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))) (regOne!22366 (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))))))

(declare-fun b!3730835 () Bool)

(assert (=> b!3730835 (= e!2308289 e!2308288)))

(assert (=> b!3730835 (= c!645849 ((_ is Union!10927) (ite c!645832 (reg!11256 (regOne!22366 r!26968)) (ite c!645834 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))

(assert (= (and d!1090613 c!645850) b!3730832))

(assert (= (and d!1090613 (not c!645850)) b!3730833))

(assert (= (and b!3730833 c!645848) b!3730831))

(assert (= (and b!3730833 (not c!645848)) b!3730828))

(assert (= (and b!3730828 c!645847) b!3730829))

(assert (= (and b!3730828 (not c!645847)) b!3730835))

(assert (= (and b!3730835 c!645849) b!3730834))

(assert (= (and b!3730835 (not c!645849)) b!3730830))

(assert (= (or b!3730834 b!3730830) bm!272496))

(assert (= (or b!3730834 b!3730830) bm!272495))

(assert (= (or b!3730834 b!3730830) bm!272497))

(assert (= (or b!3730829 bm!272495) bm!272498))

(declare-fun m!4230247 () Bool)

(assert (=> bm!272496 m!4230247))

(declare-fun m!4230249 () Bool)

(assert (=> bm!272497 m!4230249))

(declare-fun m!4230251 () Bool)

(assert (=> bm!272498 m!4230251))

(assert (=> bm!272484 d!1090613))

(declare-fun b!3730845 () Bool)

(declare-fun e!2308299 () Bool)

(declare-fun call!272509 () Bool)

(assert (=> b!3730845 (= e!2308299 call!272509)))

(declare-fun b!3730846 () Bool)

(declare-fun e!2308301 () Bool)

(assert (=> b!3730846 (= e!2308301 e!2308299)))

(declare-fun res!1514689 () Bool)

(assert (=> b!3730846 (= res!1514689 (not (nullable!3835 (reg!11256 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))))

(assert (=> b!3730846 (=> (not res!1514689) (not e!2308299))))

(declare-fun bm!272502 () Bool)

(declare-fun c!645853 () Bool)

(declare-fun c!645854 () Bool)

(assert (=> bm!272502 (= call!272509 (validRegex!5034 (ite c!645854 (reg!11256 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))) (ite c!645853 (regTwo!22367 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))) (regTwo!22366 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))))

(declare-fun b!3730847 () Bool)

(declare-fun res!1514690 () Bool)

(declare-fun e!2308300 () Bool)

(assert (=> b!3730847 (=> (not res!1514690) (not e!2308300))))

(declare-fun call!272507 () Bool)

(assert (=> b!3730847 (= res!1514690 call!272507)))

(declare-fun e!2308304 () Bool)

(assert (=> b!3730847 (= e!2308304 e!2308300)))

(declare-fun b!3730848 () Bool)

(declare-fun call!272508 () Bool)

(assert (=> b!3730848 (= e!2308300 call!272508)))

(declare-fun b!3730849 () Bool)

(declare-fun e!2308303 () Bool)

(declare-fun e!2308298 () Bool)

(assert (=> b!3730849 (= e!2308303 e!2308298)))

(declare-fun res!1514692 () Bool)

(assert (=> b!3730849 (=> (not res!1514692) (not e!2308298))))

(assert (=> b!3730849 (= res!1514692 call!272507)))

(declare-fun bm!272503 () Bool)

(assert (=> bm!272503 (= call!272507 (validRegex!5034 (ite c!645853 (regOne!22367 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))) (regOne!22366 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))))

(declare-fun b!3730850 () Bool)

(assert (=> b!3730850 (= e!2308301 e!2308304)))

(assert (=> b!3730850 (= c!645853 ((_ is Union!10927) (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))

(declare-fun b!3730851 () Bool)

(declare-fun e!2308302 () Bool)

(assert (=> b!3730851 (= e!2308302 e!2308301)))

(assert (=> b!3730851 (= c!645854 ((_ is Star!10927) (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))

(declare-fun d!1090617 () Bool)

(declare-fun res!1514693 () Bool)

(assert (=> d!1090617 (=> res!1514693 e!2308302)))

(assert (=> d!1090617 (= res!1514693 ((_ is ElementMatch!10927) (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))

(assert (=> d!1090617 (= (validRegex!5034 (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))) e!2308302)))

(declare-fun bm!272504 () Bool)

(assert (=> bm!272504 (= call!272508 call!272509)))

(declare-fun b!3730852 () Bool)

(declare-fun res!1514691 () Bool)

(assert (=> b!3730852 (=> res!1514691 e!2308303)))

(assert (=> b!3730852 (= res!1514691 (not ((_ is Concat!17198) (ite c!645802 (regOne!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968))))))))

(assert (=> b!3730852 (= e!2308304 e!2308303)))

(declare-fun b!3730853 () Bool)

(assert (=> b!3730853 (= e!2308298 call!272508)))

(assert (= (and d!1090617 (not res!1514693)) b!3730851))

(assert (= (and b!3730851 c!645854) b!3730846))

(assert (= (and b!3730851 (not c!645854)) b!3730850))

(assert (= (and b!3730846 res!1514689) b!3730845))

(assert (= (and b!3730850 c!645853) b!3730847))

(assert (= (and b!3730850 (not c!645853)) b!3730852))

(assert (= (and b!3730847 res!1514690) b!3730848))

(assert (= (and b!3730852 (not res!1514691)) b!3730849))

(assert (= (and b!3730849 res!1514692) b!3730853))

(assert (= (or b!3730848 b!3730853) bm!272504))

(assert (= (or b!3730847 b!3730849) bm!272503))

(assert (= (or b!3730845 bm!272504) bm!272502))

(declare-fun m!4230257 () Bool)

(assert (=> b!3730846 m!4230257))

(declare-fun m!4230261 () Bool)

(assert (=> bm!272502 m!4230261))

(declare-fun m!4230263 () Bool)

(assert (=> bm!272503 m!4230263))

(assert (=> bm!272450 d!1090617))

(declare-fun e!2308327 () List!39808)

(declare-fun b!3730890 () Bool)

(assert (=> b!3730890 (= e!2308327 (Cons!39684 (h!45104 (ite c!645834 call!272488 call!272486)) (++!9850 (t!302491 (ite c!645834 call!272488 call!272486)) (ite c!645834 call!272486 call!272488))))))

(declare-fun d!1090621 () Bool)

(declare-fun e!2308328 () Bool)

(assert (=> d!1090621 e!2308328))

(declare-fun res!1514707 () Bool)

(assert (=> d!1090621 (=> (not res!1514707) (not e!2308328))))

(declare-fun lt!1298675 () List!39808)

(assert (=> d!1090621 (= res!1514707 (= (content!5783 lt!1298675) ((_ map or) (content!5783 (ite c!645834 call!272488 call!272486)) (content!5783 (ite c!645834 call!272486 call!272488)))))))

(assert (=> d!1090621 (= lt!1298675 e!2308327)))

(declare-fun c!645866 () Bool)

(assert (=> d!1090621 (= c!645866 ((_ is Nil!39684) (ite c!645834 call!272488 call!272486)))))

(assert (=> d!1090621 (= (++!9850 (ite c!645834 call!272488 call!272486) (ite c!645834 call!272486 call!272488)) lt!1298675)))

(declare-fun b!3730891 () Bool)

(declare-fun res!1514708 () Bool)

(assert (=> b!3730891 (=> (not res!1514708) (not e!2308328))))

(declare-fun size!30037 (List!39808) Int)

(assert (=> b!3730891 (= res!1514708 (= (size!30037 lt!1298675) (+ (size!30037 (ite c!645834 call!272488 call!272486)) (size!30037 (ite c!645834 call!272486 call!272488)))))))

(declare-fun b!3730892 () Bool)

(assert (=> b!3730892 (= e!2308328 (or (not (= (ite c!645834 call!272486 call!272488) Nil!39684)) (= lt!1298675 (ite c!645834 call!272488 call!272486))))))

(declare-fun b!3730889 () Bool)

(assert (=> b!3730889 (= e!2308327 (ite c!645834 call!272486 call!272488))))

(assert (= (and d!1090621 c!645866) b!3730889))

(assert (= (and d!1090621 (not c!645866)) b!3730890))

(assert (= (and d!1090621 res!1514707) b!3730891))

(assert (= (and b!3730891 res!1514708) b!3730892))

(declare-fun m!4230293 () Bool)

(assert (=> b!3730890 m!4230293))

(declare-fun m!4230295 () Bool)

(assert (=> d!1090621 m!4230295))

(declare-fun m!4230297 () Bool)

(assert (=> d!1090621 m!4230297))

(declare-fun m!4230299 () Bool)

(assert (=> d!1090621 m!4230299))

(declare-fun m!4230301 () Bool)

(assert (=> b!3730891 m!4230301))

(declare-fun m!4230303 () Bool)

(assert (=> b!3730891 m!4230303))

(declare-fun m!4230305 () Bool)

(assert (=> b!3730891 m!4230305))

(assert (=> bm!272483 d!1090621))

(declare-fun b!3730901 () Bool)

(declare-fun c!645871 () Bool)

(assert (=> b!3730901 (= c!645871 ((_ is Star!10927) (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))))))

(declare-fun e!2308333 () List!39808)

(declare-fun e!2308335 () List!39808)

(assert (=> b!3730901 (= e!2308333 e!2308335)))

(declare-fun b!3730902 () Bool)

(declare-fun call!272522 () List!39808)

(assert (=> b!3730902 (= e!2308335 call!272522)))

(declare-fun b!3730903 () Bool)

(declare-fun e!2308334 () List!39808)

(declare-fun call!272524 () List!39808)

(assert (=> b!3730903 (= e!2308334 call!272524)))

(declare-fun bm!272516 () Bool)

(declare-fun call!272521 () List!39808)

(assert (=> bm!272516 (= call!272521 call!272522)))

(declare-fun bm!272517 () Bool)

(declare-fun call!272523 () List!39808)

(declare-fun c!645873 () Bool)

(assert (=> bm!272517 (= call!272523 (usedCharacters!1190 (ite c!645873 (regOne!22367 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) (regTwo!22366 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))))))))

(declare-fun b!3730904 () Bool)

(assert (=> b!3730904 (= e!2308333 (Cons!39684 (c!645789 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) Nil!39684))))

(declare-fun bm!272518 () Bool)

(assert (=> bm!272518 (= call!272524 (++!9850 (ite c!645873 call!272523 call!272521) (ite c!645873 call!272521 call!272523)))))

(declare-fun d!1090635 () Bool)

(declare-fun c!645874 () Bool)

(assert (=> d!1090635 (= c!645874 (or ((_ is EmptyExpr!10927) (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) ((_ is EmptyLang!10927) (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968)))))))

(declare-fun e!2308336 () List!39808)

(assert (=> d!1090635 (= (usedCharacters!1190 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) e!2308336)))

(declare-fun b!3730905 () Bool)

(assert (=> b!3730905 (= e!2308336 Nil!39684)))

(declare-fun b!3730906 () Bool)

(assert (=> b!3730906 (= e!2308336 e!2308333)))

(declare-fun c!645872 () Bool)

(assert (=> b!3730906 (= c!645872 ((_ is ElementMatch!10927) (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))))))

(declare-fun b!3730907 () Bool)

(assert (=> b!3730907 (= e!2308334 call!272524)))

(declare-fun bm!272519 () Bool)

(assert (=> bm!272519 (= call!272522 (usedCharacters!1190 (ite c!645871 (reg!11256 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) (ite c!645873 (regTwo!22367 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))) (regOne!22366 (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968)))))))))

(declare-fun b!3730908 () Bool)

(assert (=> b!3730908 (= e!2308335 e!2308334)))

(assert (=> b!3730908 (= c!645873 ((_ is Union!10927) (ite c!645826 (regOne!22367 r!26968) (regTwo!22366 r!26968))))))

(assert (= (and d!1090635 c!645874) b!3730905))

(assert (= (and d!1090635 (not c!645874)) b!3730906))

(assert (= (and b!3730906 c!645872) b!3730904))

(assert (= (and b!3730906 (not c!645872)) b!3730901))

(assert (= (and b!3730901 c!645871) b!3730902))

(assert (= (and b!3730901 (not c!645871)) b!3730908))

(assert (= (and b!3730908 c!645873) b!3730907))

(assert (= (and b!3730908 (not c!645873)) b!3730903))

(assert (= (or b!3730907 b!3730903) bm!272517))

(assert (= (or b!3730907 b!3730903) bm!272516))

(assert (= (or b!3730907 b!3730903) bm!272518))

(assert (= (or b!3730902 bm!272516) bm!272519))

(declare-fun m!4230315 () Bool)

(assert (=> bm!272517 m!4230315))

(declare-fun m!4230317 () Bool)

(assert (=> bm!272518 m!4230317))

(declare-fun m!4230319 () Bool)

(assert (=> bm!272519 m!4230319))

(assert (=> bm!272474 d!1090635))

(declare-fun e!2308342 () List!39808)

(declare-fun b!3730920 () Bool)

(assert (=> b!3730920 (= e!2308342 (Cons!39684 (h!45104 (ite c!645826 call!272480 call!272478)) (++!9850 (t!302491 (ite c!645826 call!272480 call!272478)) (ite c!645826 call!272478 call!272480))))))

(declare-fun d!1090641 () Bool)

(declare-fun e!2308343 () Bool)

(assert (=> d!1090641 e!2308343))

(declare-fun res!1514709 () Bool)

(assert (=> d!1090641 (=> (not res!1514709) (not e!2308343))))

(declare-fun lt!1298676 () List!39808)

(assert (=> d!1090641 (= res!1514709 (= (content!5783 lt!1298676) ((_ map or) (content!5783 (ite c!645826 call!272480 call!272478)) (content!5783 (ite c!645826 call!272478 call!272480)))))))

(assert (=> d!1090641 (= lt!1298676 e!2308342)))

(declare-fun c!645880 () Bool)

(assert (=> d!1090641 (= c!645880 ((_ is Nil!39684) (ite c!645826 call!272480 call!272478)))))

(assert (=> d!1090641 (= (++!9850 (ite c!645826 call!272480 call!272478) (ite c!645826 call!272478 call!272480)) lt!1298676)))

(declare-fun b!3730921 () Bool)

(declare-fun res!1514710 () Bool)

(assert (=> b!3730921 (=> (not res!1514710) (not e!2308343))))

(assert (=> b!3730921 (= res!1514710 (= (size!30037 lt!1298676) (+ (size!30037 (ite c!645826 call!272480 call!272478)) (size!30037 (ite c!645826 call!272478 call!272480)))))))

(declare-fun b!3730922 () Bool)

(assert (=> b!3730922 (= e!2308343 (or (not (= (ite c!645826 call!272478 call!272480) Nil!39684)) (= lt!1298676 (ite c!645826 call!272480 call!272478))))))

(declare-fun b!3730919 () Bool)

(assert (=> b!3730919 (= e!2308342 (ite c!645826 call!272478 call!272480))))

(assert (= (and d!1090641 c!645880) b!3730919))

(assert (= (and d!1090641 (not c!645880)) b!3730920))

(assert (= (and d!1090641 res!1514709) b!3730921))

(assert (= (and b!3730921 res!1514710) b!3730922))

(declare-fun m!4230327 () Bool)

(assert (=> b!3730920 m!4230327))

(declare-fun m!4230329 () Bool)

(assert (=> d!1090641 m!4230329))

(declare-fun m!4230331 () Bool)

(assert (=> d!1090641 m!4230331))

(declare-fun m!4230333 () Bool)

(assert (=> d!1090641 m!4230333))

(declare-fun m!4230335 () Bool)

(assert (=> b!3730921 m!4230335))

(declare-fun m!4230337 () Bool)

(assert (=> b!3730921 m!4230337))

(declare-fun m!4230339 () Bool)

(assert (=> b!3730921 m!4230339))

(assert (=> bm!272475 d!1090641))

(declare-fun d!1090645 () Bool)

(declare-fun lt!1298677 () Bool)

(assert (=> d!1090645 (= lt!1298677 (select (content!5783 (t!302491 (usedCharacters!1190 r!26968))) cNot!42))))

(declare-fun e!2308351 () Bool)

(assert (=> d!1090645 (= lt!1298677 e!2308351)))

(declare-fun res!1514716 () Bool)

(assert (=> d!1090645 (=> (not res!1514716) (not e!2308351))))

(assert (=> d!1090645 (= res!1514716 ((_ is Cons!39684) (t!302491 (usedCharacters!1190 r!26968))))))

(assert (=> d!1090645 (= (contains!8020 (t!302491 (usedCharacters!1190 r!26968)) cNot!42) lt!1298677)))

(declare-fun b!3730932 () Bool)

(declare-fun e!2308352 () Bool)

(assert (=> b!3730932 (= e!2308351 e!2308352)))

(declare-fun res!1514717 () Bool)

(assert (=> b!3730932 (=> res!1514717 e!2308352)))

(assert (=> b!3730932 (= res!1514717 (= (h!45104 (t!302491 (usedCharacters!1190 r!26968))) cNot!42))))

(declare-fun b!3730933 () Bool)

(assert (=> b!3730933 (= e!2308352 (contains!8020 (t!302491 (t!302491 (usedCharacters!1190 r!26968))) cNot!42))))

(assert (= (and d!1090645 res!1514716) b!3730932))

(assert (= (and b!3730932 (not res!1514717)) b!3730933))

(assert (=> d!1090645 m!4230237))

(declare-fun m!4230341 () Bool)

(assert (=> d!1090645 m!4230341))

(declare-fun m!4230343 () Bool)

(assert (=> b!3730933 m!4230343))

(assert (=> b!3730667 d!1090645))

(declare-fun d!1090647 () Bool)

(assert (=> d!1090647 (= (nullable!3835 (reg!11256 (regOne!22366 r!26968))) (nullableFct!1088 (reg!11256 (regOne!22366 r!26968))))))

(declare-fun bs!575094 () Bool)

(assert (= bs!575094 d!1090647))

(declare-fun m!4230345 () Bool)

(assert (=> bs!575094 m!4230345))

(assert (=> b!3730641 d!1090647))

(declare-fun b!3730934 () Bool)

(declare-fun c!645883 () Bool)

(assert (=> b!3730934 (= c!645883 ((_ is Star!10927) (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))

(declare-fun e!2308353 () List!39808)

(declare-fun e!2308355 () List!39808)

(assert (=> b!3730934 (= e!2308353 e!2308355)))

(declare-fun b!3730935 () Bool)

(declare-fun call!272533 () List!39808)

(assert (=> b!3730935 (= e!2308355 call!272533)))

(declare-fun b!3730936 () Bool)

(declare-fun e!2308354 () List!39808)

(declare-fun call!272535 () List!39808)

(assert (=> b!3730936 (= e!2308354 call!272535)))

(declare-fun bm!272527 () Bool)

(declare-fun call!272532 () List!39808)

(assert (=> bm!272527 (= call!272532 call!272533)))

(declare-fun call!272534 () List!39808)

(declare-fun bm!272528 () Bool)

(declare-fun c!645885 () Bool)

(assert (=> bm!272528 (= call!272534 (usedCharacters!1190 (ite c!645885 (regOne!22367 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) (regTwo!22366 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))))

(declare-fun b!3730937 () Bool)

(assert (=> b!3730937 (= e!2308353 (Cons!39684 (c!645789 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) Nil!39684))))

(declare-fun bm!272529 () Bool)

(assert (=> bm!272529 (= call!272535 (++!9850 (ite c!645885 call!272534 call!272532) (ite c!645885 call!272532 call!272534)))))

(declare-fun d!1090649 () Bool)

(declare-fun c!645886 () Bool)

(assert (=> d!1090649 (= c!645886 (or ((_ is EmptyExpr!10927) (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) ((_ is EmptyLang!10927) (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))

(declare-fun e!2308356 () List!39808)

(assert (=> d!1090649 (= (usedCharacters!1190 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) e!2308356)))

(declare-fun b!3730938 () Bool)

(assert (=> b!3730938 (= e!2308356 Nil!39684)))

(declare-fun b!3730939 () Bool)

(assert (=> b!3730939 (= e!2308356 e!2308353)))

(declare-fun c!645884 () Bool)

(assert (=> b!3730939 (= c!645884 ((_ is ElementMatch!10927) (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))

(declare-fun b!3730940 () Bool)

(assert (=> b!3730940 (= e!2308354 call!272535)))

(declare-fun bm!272530 () Bool)

(assert (=> bm!272530 (= call!272533 (usedCharacters!1190 (ite c!645883 (reg!11256 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) (ite c!645885 (regTwo!22367 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))) (regOne!22366 (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968))))))))))

(declare-fun b!3730941 () Bool)

(assert (=> b!3730941 (= e!2308355 e!2308354)))

(assert (=> b!3730941 (= c!645885 ((_ is Union!10927) (ite c!645834 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))

(assert (= (and d!1090649 c!645886) b!3730938))

(assert (= (and d!1090649 (not c!645886)) b!3730939))

(assert (= (and b!3730939 c!645884) b!3730937))

(assert (= (and b!3730939 (not c!645884)) b!3730934))

(assert (= (and b!3730934 c!645883) b!3730935))

(assert (= (and b!3730934 (not c!645883)) b!3730941))

(assert (= (and b!3730941 c!645885) b!3730940))

(assert (= (and b!3730941 (not c!645885)) b!3730936))

(assert (= (or b!3730940 b!3730936) bm!272528))

(assert (= (or b!3730940 b!3730936) bm!272527))

(assert (= (or b!3730940 b!3730936) bm!272529))

(assert (= (or b!3730935 bm!272527) bm!272530))

(declare-fun m!4230353 () Bool)

(assert (=> bm!272528 m!4230353))

(declare-fun m!4230355 () Bool)

(assert (=> bm!272529 m!4230355))

(declare-fun m!4230357 () Bool)

(assert (=> bm!272530 m!4230357))

(assert (=> bm!272482 d!1090649))

(declare-fun d!1090653 () Bool)

(declare-fun c!645887 () Bool)

(assert (=> d!1090653 (= c!645887 ((_ is Nil!39684) (usedCharacters!1190 (regOne!22366 r!26968))))))

(declare-fun e!2308357 () (InoxSet C!22040))

(assert (=> d!1090653 (= (content!5783 (usedCharacters!1190 (regOne!22366 r!26968))) e!2308357)))

(declare-fun b!3730942 () Bool)

(assert (=> b!3730942 (= e!2308357 ((as const (Array C!22040 Bool)) false))))

(declare-fun b!3730943 () Bool)

(assert (=> b!3730943 (= e!2308357 ((_ map or) (store ((as const (Array C!22040 Bool)) false) (h!45104 (usedCharacters!1190 (regOne!22366 r!26968))) true) (content!5783 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968))))))))

(assert (= (and d!1090653 c!645887) b!3730942))

(assert (= (and d!1090653 (not c!645887)) b!3730943))

(declare-fun m!4230359 () Bool)

(assert (=> b!3730943 m!4230359))

(declare-fun m!4230361 () Bool)

(assert (=> b!3730943 m!4230361))

(assert (=> d!1090595 d!1090653))

(declare-fun b!3730944 () Bool)

(declare-fun e!2308359 () Bool)

(declare-fun call!272538 () Bool)

(assert (=> b!3730944 (= e!2308359 call!272538)))

(declare-fun b!3730945 () Bool)

(declare-fun e!2308361 () Bool)

(assert (=> b!3730945 (= e!2308361 e!2308359)))

(declare-fun res!1514718 () Bool)

(assert (=> b!3730945 (= res!1514718 (not (nullable!3835 (reg!11256 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))))

(assert (=> b!3730945 (=> (not res!1514718) (not e!2308359))))

(declare-fun bm!272531 () Bool)

(declare-fun c!645888 () Bool)

(declare-fun c!645889 () Bool)

(assert (=> bm!272531 (= call!272538 (validRegex!5034 (ite c!645889 (reg!11256 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))) (ite c!645888 (regTwo!22367 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))) (regTwo!22366 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968)))))))))

(declare-fun b!3730946 () Bool)

(declare-fun res!1514719 () Bool)

(declare-fun e!2308360 () Bool)

(assert (=> b!3730946 (=> (not res!1514719) (not e!2308360))))

(declare-fun call!272536 () Bool)

(assert (=> b!3730946 (= res!1514719 call!272536)))

(declare-fun e!2308364 () Bool)

(assert (=> b!3730946 (= e!2308364 e!2308360)))

(declare-fun b!3730947 () Bool)

(declare-fun call!272537 () Bool)

(assert (=> b!3730947 (= e!2308360 call!272537)))

(declare-fun b!3730948 () Bool)

(declare-fun e!2308363 () Bool)

(declare-fun e!2308358 () Bool)

(assert (=> b!3730948 (= e!2308363 e!2308358)))

(declare-fun res!1514721 () Bool)

(assert (=> b!3730948 (=> (not res!1514721) (not e!2308358))))

(assert (=> b!3730948 (= res!1514721 call!272536)))

(declare-fun bm!272532 () Bool)

(assert (=> bm!272532 (= call!272536 (validRegex!5034 (ite c!645888 (regOne!22367 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))) (regOne!22366 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))))

(declare-fun b!3730949 () Bool)

(assert (=> b!3730949 (= e!2308361 e!2308364)))

(assert (=> b!3730949 (= c!645888 ((_ is Union!10927) (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))

(declare-fun b!3730950 () Bool)

(declare-fun e!2308362 () Bool)

(assert (=> b!3730950 (= e!2308362 e!2308361)))

(assert (=> b!3730950 (= c!645889 ((_ is Star!10927) (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))

(declare-fun d!1090655 () Bool)

(declare-fun res!1514722 () Bool)

(assert (=> d!1090655 (=> res!1514722 e!2308362)))

(assert (=> d!1090655 (= res!1514722 ((_ is ElementMatch!10927) (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))))))

(assert (=> d!1090655 (= (validRegex!5034 (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968))) e!2308362)))

(declare-fun bm!272533 () Bool)

(assert (=> bm!272533 (= call!272537 call!272538)))

(declare-fun b!3730951 () Bool)

(declare-fun res!1514720 () Bool)

(assert (=> b!3730951 (=> res!1514720 e!2308363)))

(assert (=> b!3730951 (= res!1514720 (not ((_ is Concat!17198) (ite c!645836 (regOne!22367 r!26968) (regOne!22366 r!26968)))))))

(assert (=> b!3730951 (= e!2308364 e!2308363)))

(declare-fun b!3730952 () Bool)

(assert (=> b!3730952 (= e!2308358 call!272537)))

(assert (= (and d!1090655 (not res!1514722)) b!3730950))

(assert (= (and b!3730950 c!645889) b!3730945))

(assert (= (and b!3730950 (not c!645889)) b!3730949))

(assert (= (and b!3730945 res!1514718) b!3730944))

(assert (= (and b!3730949 c!645888) b!3730946))

(assert (= (and b!3730949 (not c!645888)) b!3730951))

(assert (= (and b!3730946 res!1514719) b!3730947))

(assert (= (and b!3730951 (not res!1514720)) b!3730948))

(assert (= (and b!3730948 res!1514721) b!3730952))

(assert (= (or b!3730947 b!3730952) bm!272533))

(assert (= (or b!3730946 b!3730948) bm!272532))

(assert (= (or b!3730944 bm!272533) bm!272531))

(declare-fun m!4230363 () Bool)

(assert (=> b!3730945 m!4230363))

(declare-fun m!4230365 () Bool)

(assert (=> bm!272531 m!4230365))

(declare-fun m!4230367 () Bool)

(assert (=> bm!272532 m!4230367))

(assert (=> bm!272486 d!1090655))

(declare-fun d!1090657 () Bool)

(declare-fun lt!1298678 () Bool)

(assert (=> d!1090657 (= lt!1298678 (select (content!5783 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968)))) cNot!42))))

(declare-fun e!2308365 () Bool)

(assert (=> d!1090657 (= lt!1298678 e!2308365)))

(declare-fun res!1514723 () Bool)

(assert (=> d!1090657 (=> (not res!1514723) (not e!2308365))))

(assert (=> d!1090657 (= res!1514723 ((_ is Cons!39684) (t!302491 (usedCharacters!1190 (regOne!22366 r!26968)))))))

(assert (=> d!1090657 (= (contains!8020 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968))) cNot!42) lt!1298678)))

(declare-fun b!3730953 () Bool)

(declare-fun e!2308366 () Bool)

(assert (=> b!3730953 (= e!2308365 e!2308366)))

(declare-fun res!1514724 () Bool)

(assert (=> b!3730953 (=> res!1514724 e!2308366)))

(assert (=> b!3730953 (= res!1514724 (= (h!45104 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968)))) cNot!42))))

(declare-fun b!3730954 () Bool)

(assert (=> b!3730954 (= e!2308366 (contains!8020 (t!302491 (t!302491 (usedCharacters!1190 (regOne!22366 r!26968)))) cNot!42))))

(assert (= (and d!1090657 res!1514723) b!3730953))

(assert (= (and b!3730953 (not res!1514724)) b!3730954))

(assert (=> d!1090657 m!4230361))

(declare-fun m!4230369 () Bool)

(assert (=> d!1090657 m!4230369))

(declare-fun m!4230371 () Bool)

(assert (=> b!3730954 m!4230371))

(assert (=> b!3730719 d!1090657))

(declare-fun b!3730955 () Bool)

(declare-fun e!2308368 () Bool)

(declare-fun call!272541 () Bool)

(assert (=> b!3730955 (= e!2308368 call!272541)))

(declare-fun b!3730956 () Bool)

(declare-fun e!2308370 () Bool)

(assert (=> b!3730956 (= e!2308370 e!2308368)))

(declare-fun res!1514725 () Bool)

(assert (=> b!3730956 (= res!1514725 (not (nullable!3835 (reg!11256 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))))

(assert (=> b!3730956 (=> (not res!1514725) (not e!2308368))))

(declare-fun bm!272534 () Bool)

(declare-fun c!645891 () Bool)

(declare-fun c!645890 () Bool)

(assert (=> bm!272534 (= call!272541 (validRegex!5034 (ite c!645891 (reg!11256 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))) (ite c!645890 (regTwo!22367 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))) (regTwo!22366 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968))))))))))

(declare-fun b!3730957 () Bool)

(declare-fun res!1514726 () Bool)

(declare-fun e!2308369 () Bool)

(assert (=> b!3730957 (=> (not res!1514726) (not e!2308369))))

(declare-fun call!272539 () Bool)

(assert (=> b!3730957 (= res!1514726 call!272539)))

(declare-fun e!2308373 () Bool)

(assert (=> b!3730957 (= e!2308373 e!2308369)))

(declare-fun b!3730958 () Bool)

(declare-fun call!272540 () Bool)

(assert (=> b!3730958 (= e!2308369 call!272540)))

(declare-fun b!3730959 () Bool)

(declare-fun e!2308372 () Bool)

(declare-fun e!2308367 () Bool)

(assert (=> b!3730959 (= e!2308372 e!2308367)))

(declare-fun res!1514728 () Bool)

(assert (=> b!3730959 (=> (not res!1514728) (not e!2308367))))

(assert (=> b!3730959 (= res!1514728 call!272539)))

(declare-fun bm!272535 () Bool)

(assert (=> bm!272535 (= call!272539 (validRegex!5034 (ite c!645890 (regOne!22367 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))) (regOne!22366 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))))

(declare-fun b!3730960 () Bool)

(assert (=> b!3730960 (= e!2308370 e!2308373)))

(assert (=> b!3730960 (= c!645890 ((_ is Union!10927) (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))

(declare-fun b!3730961 () Bool)

(declare-fun e!2308371 () Bool)

(assert (=> b!3730961 (= e!2308371 e!2308370)))

(assert (=> b!3730961 (= c!645891 ((_ is Star!10927) (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))

(declare-fun d!1090659 () Bool)

(declare-fun res!1514729 () Bool)

(assert (=> d!1090659 (=> res!1514729 e!2308371)))

(assert (=> d!1090659 (= res!1514729 ((_ is ElementMatch!10927) (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))))))

(assert (=> d!1090659 (= (validRegex!5034 (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968)))) e!2308371)))

(declare-fun bm!272536 () Bool)

(assert (=> bm!272536 (= call!272540 call!272541)))

(declare-fun b!3730962 () Bool)

(declare-fun res!1514727 () Bool)

(assert (=> b!3730962 (=> res!1514727 e!2308372)))

(assert (=> b!3730962 (= res!1514727 (not ((_ is Concat!17198) (ite c!645837 (reg!11256 r!26968) (ite c!645836 (regTwo!22367 r!26968) (regTwo!22366 r!26968))))))))

(assert (=> b!3730962 (= e!2308373 e!2308372)))

(declare-fun b!3730963 () Bool)

(assert (=> b!3730963 (= e!2308367 call!272540)))

(assert (= (and d!1090659 (not res!1514729)) b!3730961))

(assert (= (and b!3730961 c!645891) b!3730956))

(assert (= (and b!3730961 (not c!645891)) b!3730960))

(assert (= (and b!3730956 res!1514725) b!3730955))

(assert (= (and b!3730960 c!645890) b!3730957))

(assert (= (and b!3730960 (not c!645890)) b!3730962))

(assert (= (and b!3730957 res!1514726) b!3730958))

(assert (= (and b!3730962 (not res!1514727)) b!3730959))

(assert (= (and b!3730959 res!1514728) b!3730963))

(assert (= (or b!3730958 b!3730963) bm!272536))

(assert (= (or b!3730957 b!3730959) bm!272535))

(assert (= (or b!3730955 bm!272536) bm!272534))

(declare-fun m!4230373 () Bool)

(assert (=> b!3730956 m!4230373))

(declare-fun m!4230375 () Bool)

(assert (=> bm!272534 m!4230375))

(declare-fun m!4230377 () Bool)

(assert (=> bm!272535 m!4230377))

(assert (=> bm!272485 d!1090659))

(declare-fun c!645894 () Bool)

(declare-fun b!3730968 () Bool)

(assert (=> b!3730968 (= c!645894 ((_ is Star!10927) (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))))))

(declare-fun e!2308376 () List!39808)

(declare-fun e!2308378 () List!39808)

(assert (=> b!3730968 (= e!2308376 e!2308378)))

(declare-fun b!3730969 () Bool)

(declare-fun call!272543 () List!39808)

(assert (=> b!3730969 (= e!2308378 call!272543)))

(declare-fun b!3730970 () Bool)

(declare-fun e!2308377 () List!39808)

(declare-fun call!272545 () List!39808)

(assert (=> b!3730970 (= e!2308377 call!272545)))

(declare-fun bm!272537 () Bool)

(declare-fun call!272542 () List!39808)

(assert (=> bm!272537 (= call!272542 call!272543)))

(declare-fun c!645896 () Bool)

(declare-fun bm!272538 () Bool)

(declare-fun call!272544 () List!39808)

(assert (=> bm!272538 (= call!272544 (usedCharacters!1190 (ite c!645896 (regOne!22367 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) (regTwo!22366 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))))))))

(declare-fun b!3730971 () Bool)

(assert (=> b!3730971 (= e!2308376 (Cons!39684 (c!645789 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) Nil!39684))))

(declare-fun bm!272539 () Bool)

(assert (=> bm!272539 (= call!272545 (++!9850 (ite c!645896 call!272544 call!272542) (ite c!645896 call!272542 call!272544)))))

(declare-fun c!645897 () Bool)

(declare-fun d!1090661 () Bool)

(assert (=> d!1090661 (= c!645897 (or ((_ is EmptyExpr!10927) (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) ((_ is EmptyLang!10927) (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968))))))))

(declare-fun e!2308379 () List!39808)

(assert (=> d!1090661 (= (usedCharacters!1190 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) e!2308379)))

(declare-fun b!3730972 () Bool)

(assert (=> b!3730972 (= e!2308379 Nil!39684)))

(declare-fun b!3730973 () Bool)

(assert (=> b!3730973 (= e!2308379 e!2308376)))

(declare-fun c!645895 () Bool)

(assert (=> b!3730973 (= c!645895 ((_ is ElementMatch!10927) (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))))))

(declare-fun b!3730974 () Bool)

(assert (=> b!3730974 (= e!2308377 call!272545)))

(declare-fun bm!272540 () Bool)

(assert (=> bm!272540 (= call!272543 (usedCharacters!1190 (ite c!645894 (reg!11256 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) (ite c!645896 (regTwo!22367 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))) (regOne!22366 (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968))))))))))

(declare-fun b!3730975 () Bool)

(assert (=> b!3730975 (= e!2308378 e!2308377)))

(assert (=> b!3730975 (= c!645896 ((_ is Union!10927) (ite c!645824 (reg!11256 r!26968) (ite c!645826 (regTwo!22367 r!26968) (regOne!22366 r!26968)))))))

(assert (= (and d!1090661 c!645897) b!3730972))

(assert (= (and d!1090661 (not c!645897)) b!3730973))

(assert (= (and b!3730973 c!645895) b!3730971))

(assert (= (and b!3730973 (not c!645895)) b!3730968))

(assert (= (and b!3730968 c!645894) b!3730969))

(assert (= (and b!3730968 (not c!645894)) b!3730975))

(assert (= (and b!3730975 c!645896) b!3730974))

(assert (= (and b!3730975 (not c!645896)) b!3730970))

(assert (= (or b!3730974 b!3730970) bm!272538))

(assert (= (or b!3730974 b!3730970) bm!272537))

(assert (= (or b!3730974 b!3730970) bm!272539))

(assert (= (or b!3730969 bm!272537) bm!272540))

(declare-fun m!4230379 () Bool)

(assert (=> bm!272538 m!4230379))

(declare-fun m!4230381 () Bool)

(assert (=> bm!272539 m!4230381))

(declare-fun m!4230383 () Bool)

(assert (=> bm!272540 m!4230383))

(assert (=> bm!272476 d!1090661))

(declare-fun b!3731012 () Bool)

(declare-fun e!2308408 () Bool)

(declare-fun e!2308413 () Bool)

(assert (=> b!3731012 (= e!2308408 e!2308413)))

(declare-fun c!645903 () Bool)

(assert (=> b!3731012 (= c!645903 ((_ is Union!10927) (regOne!22366 r!26968)))))

(declare-fun b!3731013 () Bool)

(declare-fun e!2308410 () Bool)

(assert (=> b!3731013 (= e!2308413 e!2308410)))

(declare-fun res!1514759 () Bool)

(declare-fun call!272555 () Bool)

(assert (=> b!3731013 (= res!1514759 call!272555)))

(assert (=> b!3731013 (=> (not res!1514759) (not e!2308410))))

(declare-fun b!3731014 () Bool)

(declare-fun call!272554 () Bool)

(assert (=> b!3731014 (= e!2308410 call!272554)))

(declare-fun b!3731015 () Bool)

(declare-fun e!2308411 () Bool)

(assert (=> b!3731015 (= e!2308411 call!272555)))

(declare-fun b!3731016 () Bool)

(assert (=> b!3731016 (= e!2308413 e!2308411)))

(declare-fun res!1514756 () Bool)

(assert (=> b!3731016 (= res!1514756 call!272554)))

(assert (=> b!3731016 (=> res!1514756 e!2308411)))

(declare-fun d!1090663 () Bool)

(declare-fun res!1514758 () Bool)

(declare-fun e!2308409 () Bool)

(assert (=> d!1090663 (=> res!1514758 e!2308409)))

(assert (=> d!1090663 (= res!1514758 ((_ is EmptyExpr!10927) (regOne!22366 r!26968)))))

(assert (=> d!1090663 (= (nullableFct!1088 (regOne!22366 r!26968)) e!2308409)))

(declare-fun b!3731017 () Bool)

(declare-fun e!2308412 () Bool)

(assert (=> b!3731017 (= e!2308409 e!2308412)))

(declare-fun res!1514760 () Bool)

(assert (=> b!3731017 (=> (not res!1514760) (not e!2308412))))

(assert (=> b!3731017 (= res!1514760 (and (not ((_ is EmptyLang!10927) (regOne!22366 r!26968))) (not ((_ is ElementMatch!10927) (regOne!22366 r!26968)))))))

(declare-fun bm!272549 () Bool)

(assert (=> bm!272549 (= call!272554 (nullable!3835 (ite c!645903 (regOne!22367 (regOne!22366 r!26968)) (regTwo!22366 (regOne!22366 r!26968)))))))

(declare-fun b!3731018 () Bool)

(assert (=> b!3731018 (= e!2308412 e!2308408)))

(declare-fun res!1514757 () Bool)

(assert (=> b!3731018 (=> res!1514757 e!2308408)))

(assert (=> b!3731018 (= res!1514757 ((_ is Star!10927) (regOne!22366 r!26968)))))

(declare-fun bm!272550 () Bool)

(assert (=> bm!272550 (= call!272555 (nullable!3835 (ite c!645903 (regTwo!22367 (regOne!22366 r!26968)) (regOne!22366 (regOne!22366 r!26968)))))))

(assert (= (and d!1090663 (not res!1514758)) b!3731017))

(assert (= (and b!3731017 res!1514760) b!3731018))

(assert (= (and b!3731018 (not res!1514757)) b!3731012))

(assert (= (and b!3731012 c!645903) b!3731016))

(assert (= (and b!3731012 (not c!645903)) b!3731013))

(assert (= (and b!3731016 (not res!1514756)) b!3731015))

(assert (= (and b!3731013 res!1514759) b!3731014))

(assert (= (or b!3731015 b!3731013) bm!272550))

(assert (= (or b!3731016 b!3731014) bm!272549))

(declare-fun m!4230401 () Bool)

(assert (=> bm!272549 m!4230401))

(declare-fun m!4230403 () Bool)

(assert (=> bm!272550 m!4230403))

(assert (=> d!1090603 d!1090663))

(declare-fun b!3731020 () Bool)

(declare-fun e!2308414 () Bool)

(declare-fun tp!1135306 () Bool)

(declare-fun tp!1135309 () Bool)

(assert (=> b!3731020 (= e!2308414 (and tp!1135306 tp!1135309))))

(declare-fun b!3731021 () Bool)

(declare-fun tp!1135307 () Bool)

(assert (=> b!3731021 (= e!2308414 tp!1135307)))

(declare-fun b!3731022 () Bool)

(declare-fun tp!1135305 () Bool)

(declare-fun tp!1135308 () Bool)

(assert (=> b!3731022 (= e!2308414 (and tp!1135305 tp!1135308))))

(assert (=> b!3730796 (= tp!1135290 e!2308414)))

(declare-fun b!3731019 () Bool)

(assert (=> b!3731019 (= e!2308414 tp_is_empty!18869)))

(assert (= (and b!3730796 ((_ is ElementMatch!10927) (regOne!22367 (regTwo!22366 r!26968)))) b!3731019))

(assert (= (and b!3730796 ((_ is Concat!17198) (regOne!22367 (regTwo!22366 r!26968)))) b!3731020))

(assert (= (and b!3730796 ((_ is Star!10927) (regOne!22367 (regTwo!22366 r!26968)))) b!3731021))

(assert (= (and b!3730796 ((_ is Union!10927) (regOne!22367 (regTwo!22366 r!26968)))) b!3731022))

(declare-fun b!3731031 () Bool)

(declare-fun e!2308421 () Bool)

(declare-fun tp!1135311 () Bool)

(declare-fun tp!1135314 () Bool)

(assert (=> b!3731031 (= e!2308421 (and tp!1135311 tp!1135314))))

(declare-fun b!3731032 () Bool)

(declare-fun tp!1135312 () Bool)

(assert (=> b!3731032 (= e!2308421 tp!1135312)))

(declare-fun b!3731033 () Bool)

(declare-fun tp!1135310 () Bool)

(declare-fun tp!1135313 () Bool)

(assert (=> b!3731033 (= e!2308421 (and tp!1135310 tp!1135313))))

(assert (=> b!3730796 (= tp!1135293 e!2308421)))

(declare-fun b!3731030 () Bool)

(assert (=> b!3731030 (= e!2308421 tp_is_empty!18869)))

(assert (= (and b!3730796 ((_ is ElementMatch!10927) (regTwo!22367 (regTwo!22366 r!26968)))) b!3731030))

(assert (= (and b!3730796 ((_ is Concat!17198) (regTwo!22367 (regTwo!22366 r!26968)))) b!3731031))

(assert (= (and b!3730796 ((_ is Star!10927) (regTwo!22367 (regTwo!22366 r!26968)))) b!3731032))

(assert (= (and b!3730796 ((_ is Union!10927) (regTwo!22367 (regTwo!22366 r!26968)))) b!3731033))

(declare-fun b!3731035 () Bool)

(declare-fun e!2308422 () Bool)

(declare-fun tp!1135316 () Bool)

(declare-fun tp!1135319 () Bool)

(assert (=> b!3731035 (= e!2308422 (and tp!1135316 tp!1135319))))

(declare-fun b!3731036 () Bool)

(declare-fun tp!1135317 () Bool)

(assert (=> b!3731036 (= e!2308422 tp!1135317)))

(declare-fun b!3731037 () Bool)

(declare-fun tp!1135315 () Bool)

(declare-fun tp!1135318 () Bool)

(assert (=> b!3731037 (= e!2308422 (and tp!1135315 tp!1135318))))

(assert (=> b!3730787 (= tp!1135282 e!2308422)))

(declare-fun b!3731034 () Bool)

(assert (=> b!3731034 (= e!2308422 tp_is_empty!18869)))

(assert (= (and b!3730787 ((_ is ElementMatch!10927) (reg!11256 (reg!11256 r!26968)))) b!3731034))

(assert (= (and b!3730787 ((_ is Concat!17198) (reg!11256 (reg!11256 r!26968)))) b!3731035))

(assert (= (and b!3730787 ((_ is Star!10927) (reg!11256 (reg!11256 r!26968)))) b!3731036))

(assert (= (and b!3730787 ((_ is Union!10927) (reg!11256 (reg!11256 r!26968)))) b!3731037))

(declare-fun b!3731039 () Bool)

(declare-fun e!2308423 () Bool)

(declare-fun tp!1135321 () Bool)

(declare-fun tp!1135324 () Bool)

(assert (=> b!3731039 (= e!2308423 (and tp!1135321 tp!1135324))))

(declare-fun b!3731040 () Bool)

(declare-fun tp!1135322 () Bool)

(assert (=> b!3731040 (= e!2308423 tp!1135322)))

(declare-fun b!3731041 () Bool)

(declare-fun tp!1135320 () Bool)

(declare-fun tp!1135323 () Bool)

(assert (=> b!3731041 (= e!2308423 (and tp!1135320 tp!1135323))))

(assert (=> b!3730800 (= tp!1135295 e!2308423)))

(declare-fun b!3731038 () Bool)

(assert (=> b!3731038 (= e!2308423 tp_is_empty!18869)))

(assert (= (and b!3730800 ((_ is ElementMatch!10927) (regOne!22367 (regOne!22367 r!26968)))) b!3731038))

(assert (= (and b!3730800 ((_ is Concat!17198) (regOne!22367 (regOne!22367 r!26968)))) b!3731039))

(assert (= (and b!3730800 ((_ is Star!10927) (regOne!22367 (regOne!22367 r!26968)))) b!3731040))

(assert (= (and b!3730800 ((_ is Union!10927) (regOne!22367 (regOne!22367 r!26968)))) b!3731041))

(declare-fun b!3731045 () Bool)

(declare-fun e!2308430 () Bool)

(declare-fun tp!1135326 () Bool)

(declare-fun tp!1135329 () Bool)

(assert (=> b!3731045 (= e!2308430 (and tp!1135326 tp!1135329))))

(declare-fun b!3731046 () Bool)

(declare-fun tp!1135327 () Bool)

(assert (=> b!3731046 (= e!2308430 tp!1135327)))

(declare-fun b!3731048 () Bool)

(declare-fun tp!1135325 () Bool)

(declare-fun tp!1135328 () Bool)

(assert (=> b!3731048 (= e!2308430 (and tp!1135325 tp!1135328))))

(assert (=> b!3730800 (= tp!1135298 e!2308430)))

(declare-fun b!3731043 () Bool)

(assert (=> b!3731043 (= e!2308430 tp_is_empty!18869)))

(assert (= (and b!3730800 ((_ is ElementMatch!10927) (regTwo!22367 (regOne!22367 r!26968)))) b!3731043))

(assert (= (and b!3730800 ((_ is Concat!17198) (regTwo!22367 (regOne!22367 r!26968)))) b!3731045))

(assert (= (and b!3730800 ((_ is Star!10927) (regTwo!22367 (regOne!22367 r!26968)))) b!3731046))

(assert (= (and b!3730800 ((_ is Union!10927) (regTwo!22367 (regOne!22367 r!26968)))) b!3731048))

(declare-fun b!3731056 () Bool)

(declare-fun e!2308432 () Bool)

(declare-fun tp!1135331 () Bool)

(declare-fun tp!1135334 () Bool)

(assert (=> b!3731056 (= e!2308432 (and tp!1135331 tp!1135334))))

(declare-fun b!3731057 () Bool)

(declare-fun tp!1135332 () Bool)

(assert (=> b!3731057 (= e!2308432 tp!1135332)))

(declare-fun b!3731058 () Bool)

(declare-fun tp!1135330 () Bool)

(declare-fun tp!1135333 () Bool)

(assert (=> b!3731058 (= e!2308432 (and tp!1135330 tp!1135333))))

(assert (=> b!3730786 (= tp!1135281 e!2308432)))

(declare-fun b!3731055 () Bool)

(assert (=> b!3731055 (= e!2308432 tp_is_empty!18869)))

(assert (= (and b!3730786 ((_ is ElementMatch!10927) (regOne!22366 (reg!11256 r!26968)))) b!3731055))

(assert (= (and b!3730786 ((_ is Concat!17198) (regOne!22366 (reg!11256 r!26968)))) b!3731056))

(assert (= (and b!3730786 ((_ is Star!10927) (regOne!22366 (reg!11256 r!26968)))) b!3731057))

(assert (= (and b!3730786 ((_ is Union!10927) (regOne!22366 (reg!11256 r!26968)))) b!3731058))

(declare-fun b!3731060 () Bool)

(declare-fun e!2308433 () Bool)

(declare-fun tp!1135336 () Bool)

(declare-fun tp!1135339 () Bool)

(assert (=> b!3731060 (= e!2308433 (and tp!1135336 tp!1135339))))

(declare-fun b!3731061 () Bool)

(declare-fun tp!1135337 () Bool)

(assert (=> b!3731061 (= e!2308433 tp!1135337)))

(declare-fun b!3731062 () Bool)

(declare-fun tp!1135335 () Bool)

(declare-fun tp!1135338 () Bool)

(assert (=> b!3731062 (= e!2308433 (and tp!1135335 tp!1135338))))

(assert (=> b!3730786 (= tp!1135284 e!2308433)))

(declare-fun b!3731059 () Bool)

(assert (=> b!3731059 (= e!2308433 tp_is_empty!18869)))

(assert (= (and b!3730786 ((_ is ElementMatch!10927) (regTwo!22366 (reg!11256 r!26968)))) b!3731059))

(assert (= (and b!3730786 ((_ is Concat!17198) (regTwo!22366 (reg!11256 r!26968)))) b!3731060))

(assert (= (and b!3730786 ((_ is Star!10927) (regTwo!22366 (reg!11256 r!26968)))) b!3731061))

(assert (= (and b!3730786 ((_ is Union!10927) (regTwo!22366 (reg!11256 r!26968)))) b!3731062))

(declare-fun b!3731064 () Bool)

(declare-fun e!2308434 () Bool)

(declare-fun tp!1135341 () Bool)

(declare-fun tp!1135344 () Bool)

(assert (=> b!3731064 (= e!2308434 (and tp!1135341 tp!1135344))))

(declare-fun b!3731065 () Bool)

(declare-fun tp!1135342 () Bool)

(assert (=> b!3731065 (= e!2308434 tp!1135342)))

(declare-fun b!3731066 () Bool)

(declare-fun tp!1135340 () Bool)

(declare-fun tp!1135343 () Bool)

(assert (=> b!3731066 (= e!2308434 (and tp!1135340 tp!1135343))))

(assert (=> b!3730791 (= tp!1135287 e!2308434)))

(declare-fun b!3731063 () Bool)

(assert (=> b!3731063 (= e!2308434 tp_is_empty!18869)))

(assert (= (and b!3730791 ((_ is ElementMatch!10927) (reg!11256 (regOne!22366 r!26968)))) b!3731063))

(assert (= (and b!3730791 ((_ is Concat!17198) (reg!11256 (regOne!22366 r!26968)))) b!3731064))

(assert (= (and b!3730791 ((_ is Star!10927) (reg!11256 (regOne!22366 r!26968)))) b!3731065))

(assert (= (and b!3730791 ((_ is Union!10927) (reg!11256 (regOne!22366 r!26968)))) b!3731066))

(declare-fun b!3731068 () Bool)

(declare-fun e!2308435 () Bool)

(declare-fun tp!1135346 () Bool)

(declare-fun tp!1135349 () Bool)

(assert (=> b!3731068 (= e!2308435 (and tp!1135346 tp!1135349))))

(declare-fun b!3731069 () Bool)

(declare-fun tp!1135347 () Bool)

(assert (=> b!3731069 (= e!2308435 tp!1135347)))

(declare-fun b!3731070 () Bool)

(declare-fun tp!1135345 () Bool)

(declare-fun tp!1135348 () Bool)

(assert (=> b!3731070 (= e!2308435 (and tp!1135345 tp!1135348))))

(assert (=> b!3730788 (= tp!1135280 e!2308435)))

(declare-fun b!3731067 () Bool)

(assert (=> b!3731067 (= e!2308435 tp_is_empty!18869)))

(assert (= (and b!3730788 ((_ is ElementMatch!10927) (regOne!22367 (reg!11256 r!26968)))) b!3731067))

(assert (= (and b!3730788 ((_ is Concat!17198) (regOne!22367 (reg!11256 r!26968)))) b!3731068))

(assert (= (and b!3730788 ((_ is Star!10927) (regOne!22367 (reg!11256 r!26968)))) b!3731069))

(assert (= (and b!3730788 ((_ is Union!10927) (regOne!22367 (reg!11256 r!26968)))) b!3731070))

(declare-fun b!3731076 () Bool)

(declare-fun e!2308438 () Bool)

(declare-fun tp!1135351 () Bool)

(declare-fun tp!1135354 () Bool)

(assert (=> b!3731076 (= e!2308438 (and tp!1135351 tp!1135354))))

(declare-fun b!3731077 () Bool)

(declare-fun tp!1135352 () Bool)

(assert (=> b!3731077 (= e!2308438 tp!1135352)))

(declare-fun b!3731078 () Bool)

(declare-fun tp!1135350 () Bool)

(declare-fun tp!1135353 () Bool)

(assert (=> b!3731078 (= e!2308438 (and tp!1135350 tp!1135353))))

(assert (=> b!3730788 (= tp!1135283 e!2308438)))

(declare-fun b!3731075 () Bool)

(assert (=> b!3731075 (= e!2308438 tp_is_empty!18869)))

(assert (= (and b!3730788 ((_ is ElementMatch!10927) (regTwo!22367 (reg!11256 r!26968)))) b!3731075))

(assert (= (and b!3730788 ((_ is Concat!17198) (regTwo!22367 (reg!11256 r!26968)))) b!3731076))

(assert (= (and b!3730788 ((_ is Star!10927) (regTwo!22367 (reg!11256 r!26968)))) b!3731077))

(assert (= (and b!3730788 ((_ is Union!10927) (regTwo!22367 (reg!11256 r!26968)))) b!3731078))

(declare-fun b!3731080 () Bool)

(declare-fun e!2308439 () Bool)

(declare-fun tp!1135356 () Bool)

(declare-fun tp!1135359 () Bool)

(assert (=> b!3731080 (= e!2308439 (and tp!1135356 tp!1135359))))

(declare-fun b!3731081 () Bool)

(declare-fun tp!1135357 () Bool)

(assert (=> b!3731081 (= e!2308439 tp!1135357)))

(declare-fun b!3731082 () Bool)

(declare-fun tp!1135355 () Bool)

(declare-fun tp!1135358 () Bool)

(assert (=> b!3731082 (= e!2308439 (and tp!1135355 tp!1135358))))

(assert (=> b!3730792 (= tp!1135285 e!2308439)))

(declare-fun b!3731079 () Bool)

(assert (=> b!3731079 (= e!2308439 tp_is_empty!18869)))

(assert (= (and b!3730792 ((_ is ElementMatch!10927) (regOne!22367 (regOne!22366 r!26968)))) b!3731079))

(assert (= (and b!3730792 ((_ is Concat!17198) (regOne!22367 (regOne!22366 r!26968)))) b!3731080))

(assert (= (and b!3730792 ((_ is Star!10927) (regOne!22367 (regOne!22366 r!26968)))) b!3731081))

(assert (= (and b!3730792 ((_ is Union!10927) (regOne!22367 (regOne!22366 r!26968)))) b!3731082))

(declare-fun b!3731084 () Bool)

(declare-fun e!2308440 () Bool)

(declare-fun tp!1135361 () Bool)

(declare-fun tp!1135364 () Bool)

(assert (=> b!3731084 (= e!2308440 (and tp!1135361 tp!1135364))))

(declare-fun b!3731085 () Bool)

(declare-fun tp!1135362 () Bool)

(assert (=> b!3731085 (= e!2308440 tp!1135362)))

(declare-fun b!3731086 () Bool)

(declare-fun tp!1135360 () Bool)

(declare-fun tp!1135363 () Bool)

(assert (=> b!3731086 (= e!2308440 (and tp!1135360 tp!1135363))))

(assert (=> b!3730792 (= tp!1135288 e!2308440)))

(declare-fun b!3731083 () Bool)

(assert (=> b!3731083 (= e!2308440 tp_is_empty!18869)))

(assert (= (and b!3730792 ((_ is ElementMatch!10927) (regTwo!22367 (regOne!22366 r!26968)))) b!3731083))

(assert (= (and b!3730792 ((_ is Concat!17198) (regTwo!22367 (regOne!22366 r!26968)))) b!3731084))

(assert (= (and b!3730792 ((_ is Star!10927) (regTwo!22367 (regOne!22366 r!26968)))) b!3731085))

(assert (= (and b!3730792 ((_ is Union!10927) (regTwo!22367 (regOne!22366 r!26968)))) b!3731086))

(declare-fun b!3731092 () Bool)

(declare-fun e!2308442 () Bool)

(declare-fun tp!1135371 () Bool)

(declare-fun tp!1135374 () Bool)

(assert (=> b!3731092 (= e!2308442 (and tp!1135371 tp!1135374))))

(declare-fun b!3731093 () Bool)

(declare-fun tp!1135372 () Bool)

(assert (=> b!3731093 (= e!2308442 tp!1135372)))

(declare-fun b!3731094 () Bool)

(declare-fun tp!1135370 () Bool)

(declare-fun tp!1135373 () Bool)

(assert (=> b!3731094 (= e!2308442 (and tp!1135370 tp!1135373))))

(assert (=> b!3730798 (= tp!1135296 e!2308442)))

(declare-fun b!3731091 () Bool)

(assert (=> b!3731091 (= e!2308442 tp_is_empty!18869)))

(assert (= (and b!3730798 ((_ is ElementMatch!10927) (regOne!22366 (regOne!22367 r!26968)))) b!3731091))

(assert (= (and b!3730798 ((_ is Concat!17198) (regOne!22366 (regOne!22367 r!26968)))) b!3731092))

(assert (= (and b!3730798 ((_ is Star!10927) (regOne!22366 (regOne!22367 r!26968)))) b!3731093))

(assert (= (and b!3730798 ((_ is Union!10927) (regOne!22366 (regOne!22367 r!26968)))) b!3731094))

(declare-fun b!3731100 () Bool)

(declare-fun e!2308444 () Bool)

(declare-fun tp!1135381 () Bool)

(declare-fun tp!1135384 () Bool)

(assert (=> b!3731100 (= e!2308444 (and tp!1135381 tp!1135384))))

(declare-fun b!3731101 () Bool)

(declare-fun tp!1135382 () Bool)

(assert (=> b!3731101 (= e!2308444 tp!1135382)))

(declare-fun b!3731102 () Bool)

(declare-fun tp!1135380 () Bool)

(declare-fun tp!1135383 () Bool)

(assert (=> b!3731102 (= e!2308444 (and tp!1135380 tp!1135383))))

(assert (=> b!3730798 (= tp!1135299 e!2308444)))

(declare-fun b!3731099 () Bool)

(assert (=> b!3731099 (= e!2308444 tp_is_empty!18869)))

(assert (= (and b!3730798 ((_ is ElementMatch!10927) (regTwo!22366 (regOne!22367 r!26968)))) b!3731099))

(assert (= (and b!3730798 ((_ is Concat!17198) (regTwo!22366 (regOne!22367 r!26968)))) b!3731100))

(assert (= (and b!3730798 ((_ is Star!10927) (regTwo!22366 (regOne!22367 r!26968)))) b!3731101))

(assert (= (and b!3730798 ((_ is Union!10927) (regTwo!22366 (regOne!22367 r!26968)))) b!3731102))

(declare-fun b!3731108 () Bool)

(declare-fun e!2308446 () Bool)

(declare-fun tp!1135391 () Bool)

(declare-fun tp!1135394 () Bool)

(assert (=> b!3731108 (= e!2308446 (and tp!1135391 tp!1135394))))

(declare-fun b!3731109 () Bool)

(declare-fun tp!1135392 () Bool)

(assert (=> b!3731109 (= e!2308446 tp!1135392)))

(declare-fun b!3731110 () Bool)

(declare-fun tp!1135390 () Bool)

(declare-fun tp!1135393 () Bool)

(assert (=> b!3731110 (= e!2308446 (and tp!1135390 tp!1135393))))

(assert (=> b!3730803 (= tp!1135302 e!2308446)))

(declare-fun b!3731107 () Bool)

(assert (=> b!3731107 (= e!2308446 tp_is_empty!18869)))

(assert (= (and b!3730803 ((_ is ElementMatch!10927) (reg!11256 (regTwo!22367 r!26968)))) b!3731107))

(assert (= (and b!3730803 ((_ is Concat!17198) (reg!11256 (regTwo!22367 r!26968)))) b!3731108))

(assert (= (and b!3730803 ((_ is Star!10927) (reg!11256 (regTwo!22367 r!26968)))) b!3731109))

(assert (= (and b!3730803 ((_ is Union!10927) (reg!11256 (regTwo!22367 r!26968)))) b!3731110))

(declare-fun b!3731116 () Bool)

(declare-fun e!2308448 () Bool)

(declare-fun tp!1135400 () Bool)

(declare-fun tp!1135404 () Bool)

(assert (=> b!3731116 (= e!2308448 (and tp!1135400 tp!1135404))))

(declare-fun b!3731117 () Bool)

(declare-fun tp!1135402 () Bool)

(assert (=> b!3731117 (= e!2308448 tp!1135402)))

(declare-fun b!3731118 () Bool)

(declare-fun tp!1135397 () Bool)

(declare-fun tp!1135403 () Bool)

(assert (=> b!3731118 (= e!2308448 (and tp!1135397 tp!1135403))))

(assert (=> b!3730802 (= tp!1135301 e!2308448)))

(declare-fun b!3731114 () Bool)

(assert (=> b!3731114 (= e!2308448 tp_is_empty!18869)))

(assert (= (and b!3730802 ((_ is ElementMatch!10927) (regOne!22366 (regTwo!22367 r!26968)))) b!3731114))

(assert (= (and b!3730802 ((_ is Concat!17198) (regOne!22366 (regTwo!22367 r!26968)))) b!3731116))

(assert (= (and b!3730802 ((_ is Star!10927) (regOne!22366 (regTwo!22367 r!26968)))) b!3731117))

(assert (= (and b!3730802 ((_ is Union!10927) (regOne!22366 (regTwo!22367 r!26968)))) b!3731118))

(declare-fun b!3731122 () Bool)

(declare-fun e!2308449 () Bool)

(declare-fun tp!1135408 () Bool)

(declare-fun tp!1135414 () Bool)

(assert (=> b!3731122 (= e!2308449 (and tp!1135408 tp!1135414))))

(declare-fun b!3731124 () Bool)

(declare-fun tp!1135410 () Bool)

(assert (=> b!3731124 (= e!2308449 tp!1135410)))

(declare-fun b!3731126 () Bool)

(declare-fun tp!1135406 () Bool)

(declare-fun tp!1135412 () Bool)

(assert (=> b!3731126 (= e!2308449 (and tp!1135406 tp!1135412))))

(assert (=> b!3730802 (= tp!1135304 e!2308449)))

(declare-fun b!3731120 () Bool)

(assert (=> b!3731120 (= e!2308449 tp_is_empty!18869)))

(assert (= (and b!3730802 ((_ is ElementMatch!10927) (regTwo!22366 (regTwo!22367 r!26968)))) b!3731120))

(assert (= (and b!3730802 ((_ is Concat!17198) (regTwo!22366 (regTwo!22367 r!26968)))) b!3731122))

(assert (= (and b!3730802 ((_ is Star!10927) (regTwo!22366 (regTwo!22367 r!26968)))) b!3731124))

(assert (= (and b!3730802 ((_ is Union!10927) (regTwo!22366 (regTwo!22367 r!26968)))) b!3731126))

(declare-fun b!3731128 () Bool)

(declare-fun e!2308451 () Bool)

(declare-fun tp!1135417 () Bool)

(declare-fun tp!1135422 () Bool)

(assert (=> b!3731128 (= e!2308451 (and tp!1135417 tp!1135422))))

(declare-fun b!3731130 () Bool)

(declare-fun tp!1135419 () Bool)

(assert (=> b!3731130 (= e!2308451 tp!1135419)))

(declare-fun b!3731132 () Bool)

(declare-fun tp!1135415 () Bool)

(declare-fun tp!1135420 () Bool)

(assert (=> b!3731132 (= e!2308451 (and tp!1135415 tp!1135420))))

(assert (=> b!3730804 (= tp!1135300 e!2308451)))

(declare-fun b!3731127 () Bool)

(assert (=> b!3731127 (= e!2308451 tp_is_empty!18869)))

(assert (= (and b!3730804 ((_ is ElementMatch!10927) (regOne!22367 (regTwo!22367 r!26968)))) b!3731127))

(assert (= (and b!3730804 ((_ is Concat!17198) (regOne!22367 (regTwo!22367 r!26968)))) b!3731128))

(assert (= (and b!3730804 ((_ is Star!10927) (regOne!22367 (regTwo!22367 r!26968)))) b!3731130))

(assert (= (and b!3730804 ((_ is Union!10927) (regOne!22367 (regTwo!22367 r!26968)))) b!3731132))

(declare-fun b!3731137 () Bool)

(declare-fun e!2308453 () Bool)

(declare-fun tp!1135428 () Bool)

(declare-fun tp!1135433 () Bool)

(assert (=> b!3731137 (= e!2308453 (and tp!1135428 tp!1135433))))

(declare-fun b!3731139 () Bool)

(declare-fun tp!1135429 () Bool)

(assert (=> b!3731139 (= e!2308453 tp!1135429)))

(declare-fun b!3731141 () Bool)

(declare-fun tp!1135425 () Bool)

(declare-fun tp!1135431 () Bool)

(assert (=> b!3731141 (= e!2308453 (and tp!1135425 tp!1135431))))

(assert (=> b!3730804 (= tp!1135303 e!2308453)))

(declare-fun b!3731135 () Bool)

(assert (=> b!3731135 (= e!2308453 tp_is_empty!18869)))

(assert (= (and b!3730804 ((_ is ElementMatch!10927) (regTwo!22367 (regTwo!22367 r!26968)))) b!3731135))

(assert (= (and b!3730804 ((_ is Concat!17198) (regTwo!22367 (regTwo!22367 r!26968)))) b!3731137))

(assert (= (and b!3730804 ((_ is Star!10927) (regTwo!22367 (regTwo!22367 r!26968)))) b!3731139))

(assert (= (and b!3730804 ((_ is Union!10927) (regTwo!22367 (regTwo!22367 r!26968)))) b!3731141))

(declare-fun b!3731144 () Bool)

(declare-fun e!2308455 () Bool)

(declare-fun tp!1135436 () Bool)

(declare-fun tp!1135441 () Bool)

(assert (=> b!3731144 (= e!2308455 (and tp!1135436 tp!1135441))))

(declare-fun b!3731145 () Bool)

(declare-fun tp!1135437 () Bool)

(assert (=> b!3731145 (= e!2308455 tp!1135437)))

(declare-fun b!3731146 () Bool)

(declare-fun tp!1135435 () Bool)

(declare-fun tp!1135439 () Bool)

(assert (=> b!3731146 (= e!2308455 (and tp!1135435 tp!1135439))))

(assert (=> b!3730790 (= tp!1135286 e!2308455)))

(declare-fun b!3731143 () Bool)

(assert (=> b!3731143 (= e!2308455 tp_is_empty!18869)))

(assert (= (and b!3730790 ((_ is ElementMatch!10927) (regOne!22366 (regOne!22366 r!26968)))) b!3731143))

(assert (= (and b!3730790 ((_ is Concat!17198) (regOne!22366 (regOne!22366 r!26968)))) b!3731144))

(assert (= (and b!3730790 ((_ is Star!10927) (regOne!22366 (regOne!22366 r!26968)))) b!3731145))

(assert (= (and b!3730790 ((_ is Union!10927) (regOne!22366 (regOne!22366 r!26968)))) b!3731146))

(declare-fun b!3731152 () Bool)

(declare-fun e!2308457 () Bool)

(declare-fun tp!1135446 () Bool)

(declare-fun tp!1135451 () Bool)

(assert (=> b!3731152 (= e!2308457 (and tp!1135446 tp!1135451))))

(declare-fun b!3731153 () Bool)

(declare-fun tp!1135448 () Bool)

(assert (=> b!3731153 (= e!2308457 tp!1135448)))

(declare-fun b!3731155 () Bool)

(declare-fun tp!1135445 () Bool)

(declare-fun tp!1135450 () Bool)

(assert (=> b!3731155 (= e!2308457 (and tp!1135445 tp!1135450))))

(assert (=> b!3730790 (= tp!1135289 e!2308457)))

(declare-fun b!3731151 () Bool)

(assert (=> b!3731151 (= e!2308457 tp_is_empty!18869)))

(assert (= (and b!3730790 ((_ is ElementMatch!10927) (regTwo!22366 (regOne!22366 r!26968)))) b!3731151))

(assert (= (and b!3730790 ((_ is Concat!17198) (regTwo!22366 (regOne!22366 r!26968)))) b!3731152))

(assert (= (and b!3730790 ((_ is Star!10927) (regTwo!22366 (regOne!22366 r!26968)))) b!3731153))

(assert (= (and b!3730790 ((_ is Union!10927) (regTwo!22366 (regOne!22366 r!26968)))) b!3731155))

(declare-fun b!3731160 () Bool)

(declare-fun e!2308459 () Bool)

(declare-fun tp!1135456 () Bool)

(declare-fun tp!1135459 () Bool)

(assert (=> b!3731160 (= e!2308459 (and tp!1135456 tp!1135459))))

(declare-fun b!3731161 () Bool)

(declare-fun tp!1135457 () Bool)

(assert (=> b!3731161 (= e!2308459 tp!1135457)))

(declare-fun b!3731162 () Bool)

(declare-fun tp!1135455 () Bool)

(declare-fun tp!1135458 () Bool)

(assert (=> b!3731162 (= e!2308459 (and tp!1135455 tp!1135458))))

(assert (=> b!3730795 (= tp!1135292 e!2308459)))

(declare-fun b!3731159 () Bool)

(assert (=> b!3731159 (= e!2308459 tp_is_empty!18869)))

(assert (= (and b!3730795 ((_ is ElementMatch!10927) (reg!11256 (regTwo!22366 r!26968)))) b!3731159))

(assert (= (and b!3730795 ((_ is Concat!17198) (reg!11256 (regTwo!22366 r!26968)))) b!3731160))

(assert (= (and b!3730795 ((_ is Star!10927) (reg!11256 (regTwo!22366 r!26968)))) b!3731161))

(assert (= (and b!3730795 ((_ is Union!10927) (reg!11256 (regTwo!22366 r!26968)))) b!3731162))

(declare-fun b!3731168 () Bool)

(declare-fun e!2308461 () Bool)

(declare-fun tp!1135466 () Bool)

(declare-fun tp!1135469 () Bool)

(assert (=> b!3731168 (= e!2308461 (and tp!1135466 tp!1135469))))

(declare-fun b!3731169 () Bool)

(declare-fun tp!1135467 () Bool)

(assert (=> b!3731169 (= e!2308461 tp!1135467)))

(declare-fun b!3731170 () Bool)

(declare-fun tp!1135465 () Bool)

(declare-fun tp!1135468 () Bool)

(assert (=> b!3731170 (= e!2308461 (and tp!1135465 tp!1135468))))

(assert (=> b!3730794 (= tp!1135291 e!2308461)))

(declare-fun b!3731167 () Bool)

(assert (=> b!3731167 (= e!2308461 tp_is_empty!18869)))

(assert (= (and b!3730794 ((_ is ElementMatch!10927) (regOne!22366 (regTwo!22366 r!26968)))) b!3731167))

(assert (= (and b!3730794 ((_ is Concat!17198) (regOne!22366 (regTwo!22366 r!26968)))) b!3731168))

(assert (= (and b!3730794 ((_ is Star!10927) (regOne!22366 (regTwo!22366 r!26968)))) b!3731169))

(assert (= (and b!3730794 ((_ is Union!10927) (regOne!22366 (regTwo!22366 r!26968)))) b!3731170))

(declare-fun b!3731176 () Bool)

(declare-fun e!2308463 () Bool)

(declare-fun tp!1135476 () Bool)

(declare-fun tp!1135479 () Bool)

(assert (=> b!3731176 (= e!2308463 (and tp!1135476 tp!1135479))))

(declare-fun b!3731177 () Bool)

(declare-fun tp!1135477 () Bool)

(assert (=> b!3731177 (= e!2308463 tp!1135477)))

(declare-fun b!3731178 () Bool)

(declare-fun tp!1135475 () Bool)

(declare-fun tp!1135478 () Bool)

(assert (=> b!3731178 (= e!2308463 (and tp!1135475 tp!1135478))))

(assert (=> b!3730794 (= tp!1135294 e!2308463)))

(declare-fun b!3731175 () Bool)

(assert (=> b!3731175 (= e!2308463 tp_is_empty!18869)))

(assert (= (and b!3730794 ((_ is ElementMatch!10927) (regTwo!22366 (regTwo!22366 r!26968)))) b!3731175))

(assert (= (and b!3730794 ((_ is Concat!17198) (regTwo!22366 (regTwo!22366 r!26968)))) b!3731176))

(assert (= (and b!3730794 ((_ is Star!10927) (regTwo!22366 (regTwo!22366 r!26968)))) b!3731177))

(assert (= (and b!3730794 ((_ is Union!10927) (regTwo!22366 (regTwo!22366 r!26968)))) b!3731178))

(declare-fun b!3731184 () Bool)

(declare-fun e!2308465 () Bool)

(declare-fun tp!1135487 () Bool)

(declare-fun tp!1135492 () Bool)

(assert (=> b!3731184 (= e!2308465 (and tp!1135487 tp!1135492))))

(declare-fun b!3731186 () Bool)

(declare-fun tp!1135489 () Bool)

(assert (=> b!3731186 (= e!2308465 tp!1135489)))

(declare-fun b!3731188 () Bool)

(declare-fun tp!1135485 () Bool)

(declare-fun tp!1135490 () Bool)

(assert (=> b!3731188 (= e!2308465 (and tp!1135485 tp!1135490))))

(assert (=> b!3730799 (= tp!1135297 e!2308465)))

(declare-fun b!3731183 () Bool)

(assert (=> b!3731183 (= e!2308465 tp_is_empty!18869)))

(assert (= (and b!3730799 ((_ is ElementMatch!10927) (reg!11256 (regOne!22367 r!26968)))) b!3731183))

(assert (= (and b!3730799 ((_ is Concat!17198) (reg!11256 (regOne!22367 r!26968)))) b!3731184))

(assert (= (and b!3730799 ((_ is Star!10927) (reg!11256 (regOne!22367 r!26968)))) b!3731186))

(assert (= (and b!3730799 ((_ is Union!10927) (reg!11256 (regOne!22367 r!26968)))) b!3731188))

(check-sat (not b!3731170) (not d!1090645) (not b!3731109) (not bm!272498) (not b!3731068) (not bm!272530) (not b!3731110) (not bm!272518) (not b!3731102) (not bm!272550) (not b!3731184) (not bm!272519) (not bm!272532) (not b!3731186) (not b!3731061) (not bm!272535) (not bm!272528) (not b!3731069) tp_is_empty!18869 (not b!3731037) (not b!3731168) (not b!3731085) (not b!3731080) (not b!3731031) (not b!3731122) (not bm!272503) (not b!3731070) (not b!3731041) (not bm!272529) (not b!3731118) (not bm!272497) (not b!3731048) (not b!3731161) (not b!3731132) (not b!3731040) (not b!3731188) (not b!3731169) (not b!3730890) (not b!3731039) (not b!3731033) (not b!3730933) (not b!3731077) (not b!3731082) (not b!3731177) (not b!3731108) (not d!1090647) (not b!3731128) (not b!3731145) (not bm!272489) (not b!3731092) (not b!3731084) (not b!3731065) (not b!3731086) (not b!3731062) (not b!3731021) (not b!3731130) (not b!3731036) (not b!3731064) (not b!3731126) (not b!3731100) (not b!3731093) (not b!3730943) (not b!3731101) (not b!3731022) (not b!3731178) (not b!3731057) (not b!3730954) (not b!3731116) (not b!3731162) (not d!1090641) (not b!3731058) (not bm!272502) (not bm!272540) (not b!3731160) (not b!3730945) (not d!1090611) (not b!3731176) (not b!3730846) (not b!3731146) (not b!3731094) (not b!3731078) (not b!3731144) (not b!3731060) (not b!3731076) (not b!3731124) (not b!3731056) (not b!3730819) (not b!3731020) (not b!3731137) (not bm!272496) (not bm!272517) (not bm!272538) (not bm!272539) (not b!3731153) (not b!3731141) (not d!1090657) (not b!3730806) (not b!3731155) (not b!3731081) (not b!3730921) (not bm!272488) (not b!3731045) (not bm!272549) (not b!3730956) (not b!3730920) (not b!3731117) (not b!3731066) (not b!3731152) (not b!3731032) (not b!3731046) (not b!3730891) (not d!1090621) (not b!3731139) (not bm!272534) (not b!3731035) (not bm!272531))
(check-sat)
