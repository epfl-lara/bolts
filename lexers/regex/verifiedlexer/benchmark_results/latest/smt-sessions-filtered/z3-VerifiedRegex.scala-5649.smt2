; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282222 () Bool)

(assert start!282222)

(declare-fun b!2897102 () Bool)

(declare-fun res!1197879 () Bool)

(declare-fun e!1830172 () Bool)

(assert (=> b!2897102 (=> (not res!1197879) (not e!1830172))))

(declare-datatypes ((C!17888 0))(
  ( (C!17889 (val!10978 Int)) )
))
(declare-datatypes ((Regex!8853 0))(
  ( (ElementMatch!8853 (c!471640 C!17888)) (Concat!14174 (regOne!18218 Regex!8853) (regTwo!18218 Regex!8853)) (EmptyExpr!8853) (Star!8853 (reg!9182 Regex!8853)) (EmptyLang!8853) (Union!8853 (regOne!18219 Regex!8853) (regTwo!18219 Regex!8853)) )
))
(declare-fun r!23079 () Regex!8853)

(get-info :version)

(declare-datatypes ((List!34654 0))(
  ( (Nil!34530) (Cons!34530 (h!39950 C!17888) (t!233697 List!34654)) )
))
(declare-datatypes ((Option!6526 0))(
  ( (None!6525) (Some!6525 (v!34651 List!34654)) )
))
(declare-fun getLanguageWitness!560 (Regex!8853) Option!6526)

(assert (=> b!2897102 (= res!1197879 ((_ is Some!6525) (getLanguageWitness!560 (regTwo!18218 r!23079))))))

(declare-fun b!2897103 () Bool)

(declare-fun e!1830173 () Bool)

(declare-fun tp!929925 () Bool)

(declare-fun tp!929926 () Bool)

(assert (=> b!2897103 (= e!1830173 (and tp!929925 tp!929926))))

(declare-fun res!1197881 () Bool)

(declare-fun e!1830171 () Bool)

(assert (=> start!282222 (=> (not res!1197881) (not e!1830171))))

(declare-fun validRegex!3626 (Regex!8853) Bool)

(assert (=> start!282222 (= res!1197881 (validRegex!3626 r!23079))))

(assert (=> start!282222 e!1830171))

(assert (=> start!282222 e!1830173))

(declare-fun b!2897104 () Bool)

(assert (=> b!2897104 (= e!1830171 e!1830172)))

(declare-fun res!1197880 () Bool)

(assert (=> b!2897104 (=> (not res!1197880) (not e!1830172))))

(declare-fun lt!1021704 () Option!6526)

(assert (=> b!2897104 (= res!1197880 ((_ is Some!6525) lt!1021704))))

(assert (=> b!2897104 (= lt!1021704 (getLanguageWitness!560 (regOne!18218 r!23079)))))

(declare-fun b!2897105 () Bool)

(assert (=> b!2897105 (= e!1830172 (not (validRegex!3626 (regTwo!18218 r!23079))))))

(declare-fun matchR!3811 (Regex!8853 List!34654) Bool)

(declare-fun get!10470 (Option!6526) List!34654)

(assert (=> b!2897105 (matchR!3811 (regOne!18218 r!23079) (get!10470 lt!1021704))))

(declare-datatypes ((Unit!48111 0))(
  ( (Unit!48112) )
))
(declare-fun lt!1021703 () Unit!48111)

(declare-fun lemmaGetWitnessMatches!110 (Regex!8853) Unit!48111)

(assert (=> b!2897105 (= lt!1021703 (lemmaGetWitnessMatches!110 (regOne!18218 r!23079)))))

(declare-fun b!2897106 () Bool)

(declare-fun res!1197882 () Bool)

(assert (=> b!2897106 (=> (not res!1197882) (not e!1830171))))

(declare-fun isDefined!5090 (Option!6526) Bool)

(assert (=> b!2897106 (= res!1197882 (isDefined!5090 (getLanguageWitness!560 r!23079)))))

(declare-fun b!2897107 () Bool)

(declare-fun tp!929928 () Bool)

(assert (=> b!2897107 (= e!1830173 tp!929928)))

(declare-fun b!2897108 () Bool)

(declare-fun tp_is_empty!15293 () Bool)

(assert (=> b!2897108 (= e!1830173 tp_is_empty!15293)))

(declare-fun b!2897109 () Bool)

(declare-fun tp!929929 () Bool)

(declare-fun tp!929927 () Bool)

(assert (=> b!2897109 (= e!1830173 (and tp!929929 tp!929927))))

(declare-fun b!2897110 () Bool)

(declare-fun res!1197883 () Bool)

(assert (=> b!2897110 (=> (not res!1197883) (not e!1830171))))

(assert (=> b!2897110 (= res!1197883 (and (not ((_ is EmptyExpr!8853) r!23079)) (not ((_ is EmptyLang!8853) r!23079)) (not ((_ is ElementMatch!8853) r!23079)) (not ((_ is Star!8853) r!23079)) (not ((_ is Union!8853) r!23079))))))

(assert (= (and start!282222 res!1197881) b!2897106))

(assert (= (and b!2897106 res!1197882) b!2897110))

(assert (= (and b!2897110 res!1197883) b!2897104))

(assert (= (and b!2897104 res!1197880) b!2897102))

(assert (= (and b!2897102 res!1197879) b!2897105))

(assert (= (and start!282222 ((_ is ElementMatch!8853) r!23079)) b!2897108))

(assert (= (and start!282222 ((_ is Concat!14174) r!23079)) b!2897109))

(assert (= (and start!282222 ((_ is Star!8853) r!23079)) b!2897107))

(assert (= (and start!282222 ((_ is Union!8853) r!23079)) b!2897103))

(declare-fun m!3304541 () Bool)

(assert (=> b!2897105 m!3304541))

(declare-fun m!3304543 () Bool)

(assert (=> b!2897105 m!3304543))

(assert (=> b!2897105 m!3304543))

(declare-fun m!3304545 () Bool)

(assert (=> b!2897105 m!3304545))

(declare-fun m!3304547 () Bool)

(assert (=> b!2897105 m!3304547))

(declare-fun m!3304549 () Bool)

(assert (=> start!282222 m!3304549))

(declare-fun m!3304551 () Bool)

(assert (=> b!2897102 m!3304551))

(declare-fun m!3304553 () Bool)

(assert (=> b!2897106 m!3304553))

(assert (=> b!2897106 m!3304553))

(declare-fun m!3304555 () Bool)

(assert (=> b!2897106 m!3304555))

(declare-fun m!3304557 () Bool)

(assert (=> b!2897104 m!3304557))

(check-sat (not start!282222) (not b!2897109) (not b!2897105) (not b!2897102) tp_is_empty!15293 (not b!2897107) (not b!2897106) (not b!2897103) (not b!2897104))
(check-sat)
(get-model)

(declare-fun b!2897143 () Bool)

(declare-fun e!1830190 () Option!6526)

(assert (=> b!2897143 (= e!1830190 (Some!6525 (Cons!34530 (c!471640 (regTwo!18218 r!23079)) Nil!34530)))))

(declare-fun bm!188534 () Bool)

(declare-fun call!188539 () Option!6526)

(declare-fun c!471663 () Bool)

(assert (=> bm!188534 (= call!188539 (getLanguageWitness!560 (ite c!471663 (regTwo!18219 (regTwo!18218 r!23079)) (regOne!18218 (regTwo!18218 r!23079)))))))

(declare-fun b!2897144 () Bool)

(declare-fun e!1830196 () Option!6526)

(assert (=> b!2897144 (= e!1830196 (Some!6525 Nil!34530))))

(declare-fun b!2897145 () Bool)

(declare-fun e!1830192 () Option!6526)

(declare-fun e!1830194 () Option!6526)

(assert (=> b!2897145 (= e!1830192 e!1830194)))

(declare-fun lt!1021711 () Option!6526)

(assert (=> b!2897145 (= lt!1021711 call!188539)))

(declare-fun c!471657 () Bool)

(assert (=> b!2897145 (= c!471657 ((_ is Some!6525) lt!1021711))))

(declare-fun b!2897146 () Bool)

(declare-fun c!471659 () Bool)

(declare-fun lt!1021712 () Option!6526)

(assert (=> b!2897146 (= c!471659 ((_ is Some!6525) lt!1021712))))

(declare-fun call!188540 () Option!6526)

(assert (=> b!2897146 (= lt!1021712 call!188540)))

(declare-fun e!1830197 () Option!6526)

(assert (=> b!2897146 (= e!1830194 e!1830197)))

(declare-fun b!2897147 () Bool)

(assert (=> b!2897147 (= e!1830197 None!6525)))

(declare-fun b!2897148 () Bool)

(declare-fun e!1830191 () Option!6526)

(assert (=> b!2897148 (= e!1830191 (Some!6525 Nil!34530))))

(declare-fun b!2897149 () Bool)

(declare-fun c!471662 () Bool)

(assert (=> b!2897149 (= c!471662 ((_ is ElementMatch!8853) (regTwo!18218 r!23079)))))

(declare-fun e!1830193 () Option!6526)

(assert (=> b!2897149 (= e!1830193 e!1830190)))

(declare-fun b!2897150 () Bool)

(assert (=> b!2897150 (= e!1830194 None!6525)))

(declare-fun b!2897151 () Bool)

(assert (=> b!2897151 (= e!1830190 e!1830196)))

(declare-fun c!471658 () Bool)

(assert (=> b!2897151 (= c!471658 ((_ is Star!8853) (regTwo!18218 r!23079)))))

(declare-fun b!2897152 () Bool)

(assert (=> b!2897152 (= e!1830191 e!1830193)))

(declare-fun c!471660 () Bool)

(assert (=> b!2897152 (= c!471660 ((_ is EmptyLang!8853) (regTwo!18218 r!23079)))))

(declare-fun b!2897153 () Bool)

(declare-fun e!1830195 () Option!6526)

(assert (=> b!2897153 (= e!1830192 e!1830195)))

(declare-fun lt!1021713 () Option!6526)

(assert (=> b!2897153 (= lt!1021713 call!188540)))

(declare-fun c!471661 () Bool)

(assert (=> b!2897153 (= c!471661 ((_ is Some!6525) lt!1021713))))

(declare-fun b!2897154 () Bool)

(assert (=> b!2897154 (= e!1830193 None!6525)))

(declare-fun b!2897155 () Bool)

(declare-fun ++!8250 (List!34654 List!34654) List!34654)

(assert (=> b!2897155 (= e!1830197 (Some!6525 (++!8250 (v!34651 lt!1021711) (v!34651 lt!1021712))))))

(declare-fun b!2897156 () Bool)

(assert (=> b!2897156 (= e!1830195 lt!1021713)))

(declare-fun d!834990 () Bool)

(declare-fun c!471664 () Bool)

(assert (=> d!834990 (= c!471664 ((_ is EmptyExpr!8853) (regTwo!18218 r!23079)))))

(assert (=> d!834990 (= (getLanguageWitness!560 (regTwo!18218 r!23079)) e!1830191)))

(declare-fun b!2897157 () Bool)

(assert (=> b!2897157 (= e!1830195 call!188539)))

(declare-fun b!2897158 () Bool)

(assert (=> b!2897158 (= c!471663 ((_ is Union!8853) (regTwo!18218 r!23079)))))

(assert (=> b!2897158 (= e!1830196 e!1830192)))

(declare-fun bm!188535 () Bool)

(assert (=> bm!188535 (= call!188540 (getLanguageWitness!560 (ite c!471663 (regOne!18219 (regTwo!18218 r!23079)) (regTwo!18218 (regTwo!18218 r!23079)))))))

(assert (= (and d!834990 c!471664) b!2897148))

(assert (= (and d!834990 (not c!471664)) b!2897152))

(assert (= (and b!2897152 c!471660) b!2897154))

(assert (= (and b!2897152 (not c!471660)) b!2897149))

(assert (= (and b!2897149 c!471662) b!2897143))

(assert (= (and b!2897149 (not c!471662)) b!2897151))

(assert (= (and b!2897151 c!471658) b!2897144))

(assert (= (and b!2897151 (not c!471658)) b!2897158))

(assert (= (and b!2897158 c!471663) b!2897153))

(assert (= (and b!2897158 (not c!471663)) b!2897145))

(assert (= (and b!2897153 c!471661) b!2897156))

(assert (= (and b!2897153 (not c!471661)) b!2897157))

(assert (= (and b!2897145 c!471657) b!2897146))

(assert (= (and b!2897145 (not c!471657)) b!2897150))

(assert (= (and b!2897146 c!471659) b!2897155))

(assert (= (and b!2897146 (not c!471659)) b!2897147))

(assert (= (or b!2897157 b!2897145) bm!188534))

(assert (= (or b!2897153 b!2897146) bm!188535))

(declare-fun m!3304559 () Bool)

(assert (=> bm!188534 m!3304559))

(declare-fun m!3304561 () Bool)

(assert (=> b!2897155 m!3304561))

(declare-fun m!3304563 () Bool)

(assert (=> bm!188535 m!3304563))

(assert (=> b!2897102 d!834990))

(declare-fun b!2897159 () Bool)

(declare-fun e!1830198 () Option!6526)

(assert (=> b!2897159 (= e!1830198 (Some!6525 (Cons!34530 (c!471640 (regOne!18218 r!23079)) Nil!34530)))))

(declare-fun bm!188536 () Bool)

(declare-fun call!188541 () Option!6526)

(declare-fun c!471671 () Bool)

(assert (=> bm!188536 (= call!188541 (getLanguageWitness!560 (ite c!471671 (regTwo!18219 (regOne!18218 r!23079)) (regOne!18218 (regOne!18218 r!23079)))))))

(declare-fun b!2897160 () Bool)

(declare-fun e!1830204 () Option!6526)

(assert (=> b!2897160 (= e!1830204 (Some!6525 Nil!34530))))

(declare-fun b!2897161 () Bool)

(declare-fun e!1830200 () Option!6526)

(declare-fun e!1830202 () Option!6526)

(assert (=> b!2897161 (= e!1830200 e!1830202)))

(declare-fun lt!1021714 () Option!6526)

(assert (=> b!2897161 (= lt!1021714 call!188541)))

(declare-fun c!471665 () Bool)

(assert (=> b!2897161 (= c!471665 ((_ is Some!6525) lt!1021714))))

(declare-fun b!2897162 () Bool)

(declare-fun c!471667 () Bool)

(declare-fun lt!1021715 () Option!6526)

(assert (=> b!2897162 (= c!471667 ((_ is Some!6525) lt!1021715))))

(declare-fun call!188542 () Option!6526)

(assert (=> b!2897162 (= lt!1021715 call!188542)))

(declare-fun e!1830205 () Option!6526)

(assert (=> b!2897162 (= e!1830202 e!1830205)))

(declare-fun b!2897163 () Bool)

(assert (=> b!2897163 (= e!1830205 None!6525)))

(declare-fun b!2897164 () Bool)

(declare-fun e!1830199 () Option!6526)

(assert (=> b!2897164 (= e!1830199 (Some!6525 Nil!34530))))

(declare-fun b!2897165 () Bool)

(declare-fun c!471670 () Bool)

(assert (=> b!2897165 (= c!471670 ((_ is ElementMatch!8853) (regOne!18218 r!23079)))))

(declare-fun e!1830201 () Option!6526)

(assert (=> b!2897165 (= e!1830201 e!1830198)))

(declare-fun b!2897166 () Bool)

(assert (=> b!2897166 (= e!1830202 None!6525)))

(declare-fun b!2897167 () Bool)

(assert (=> b!2897167 (= e!1830198 e!1830204)))

(declare-fun c!471666 () Bool)

(assert (=> b!2897167 (= c!471666 ((_ is Star!8853) (regOne!18218 r!23079)))))

(declare-fun b!2897168 () Bool)

(assert (=> b!2897168 (= e!1830199 e!1830201)))

(declare-fun c!471668 () Bool)

(assert (=> b!2897168 (= c!471668 ((_ is EmptyLang!8853) (regOne!18218 r!23079)))))

(declare-fun b!2897169 () Bool)

(declare-fun e!1830203 () Option!6526)

(assert (=> b!2897169 (= e!1830200 e!1830203)))

(declare-fun lt!1021716 () Option!6526)

(assert (=> b!2897169 (= lt!1021716 call!188542)))

(declare-fun c!471669 () Bool)

(assert (=> b!2897169 (= c!471669 ((_ is Some!6525) lt!1021716))))

(declare-fun b!2897170 () Bool)

(assert (=> b!2897170 (= e!1830201 None!6525)))

(declare-fun b!2897171 () Bool)

(assert (=> b!2897171 (= e!1830205 (Some!6525 (++!8250 (v!34651 lt!1021714) (v!34651 lt!1021715))))))

(declare-fun b!2897172 () Bool)

(assert (=> b!2897172 (= e!1830203 lt!1021716)))

(declare-fun d!834994 () Bool)

(declare-fun c!471672 () Bool)

(assert (=> d!834994 (= c!471672 ((_ is EmptyExpr!8853) (regOne!18218 r!23079)))))

(assert (=> d!834994 (= (getLanguageWitness!560 (regOne!18218 r!23079)) e!1830199)))

(declare-fun b!2897173 () Bool)

(assert (=> b!2897173 (= e!1830203 call!188541)))

(declare-fun b!2897174 () Bool)

(assert (=> b!2897174 (= c!471671 ((_ is Union!8853) (regOne!18218 r!23079)))))

(assert (=> b!2897174 (= e!1830204 e!1830200)))

(declare-fun bm!188537 () Bool)

(assert (=> bm!188537 (= call!188542 (getLanguageWitness!560 (ite c!471671 (regOne!18219 (regOne!18218 r!23079)) (regTwo!18218 (regOne!18218 r!23079)))))))

(assert (= (and d!834994 c!471672) b!2897164))

(assert (= (and d!834994 (not c!471672)) b!2897168))

(assert (= (and b!2897168 c!471668) b!2897170))

(assert (= (and b!2897168 (not c!471668)) b!2897165))

(assert (= (and b!2897165 c!471670) b!2897159))

(assert (= (and b!2897165 (not c!471670)) b!2897167))

(assert (= (and b!2897167 c!471666) b!2897160))

(assert (= (and b!2897167 (not c!471666)) b!2897174))

(assert (= (and b!2897174 c!471671) b!2897169))

(assert (= (and b!2897174 (not c!471671)) b!2897161))

(assert (= (and b!2897169 c!471669) b!2897172))

(assert (= (and b!2897169 (not c!471669)) b!2897173))

(assert (= (and b!2897161 c!471665) b!2897162))

(assert (= (and b!2897161 (not c!471665)) b!2897166))

(assert (= (and b!2897162 c!471667) b!2897171))

(assert (= (and b!2897162 (not c!471667)) b!2897163))

(assert (= (or b!2897173 b!2897161) bm!188536))

(assert (= (or b!2897169 b!2897162) bm!188537))

(declare-fun m!3304565 () Bool)

(assert (=> bm!188536 m!3304565))

(declare-fun m!3304567 () Bool)

(assert (=> b!2897171 m!3304567))

(declare-fun m!3304569 () Bool)

(assert (=> bm!188537 m!3304569))

(assert (=> b!2897104 d!834994))

(declare-fun b!2897225 () Bool)

(declare-fun e!1830242 () Bool)

(declare-fun e!1830240 () Bool)

(assert (=> b!2897225 (= e!1830242 e!1830240)))

(declare-fun res!1197896 () Bool)

(declare-fun nullable!2752 (Regex!8853) Bool)

(assert (=> b!2897225 (= res!1197896 (not (nullable!2752 (reg!9182 (regTwo!18218 r!23079)))))))

(assert (=> b!2897225 (=> (not res!1197896) (not e!1830240))))

(declare-fun b!2897226 () Bool)

(declare-fun call!188554 () Bool)

(assert (=> b!2897226 (= e!1830240 call!188554)))

(declare-fun b!2897227 () Bool)

(declare-fun e!1830237 () Bool)

(assert (=> b!2897227 (= e!1830242 e!1830237)))

(declare-fun c!471694 () Bool)

(assert (=> b!2897227 (= c!471694 ((_ is Union!8853) (regTwo!18218 r!23079)))))

(declare-fun b!2897228 () Bool)

(declare-fun e!1830241 () Bool)

(declare-fun e!1830239 () Bool)

(assert (=> b!2897228 (= e!1830241 e!1830239)))

(declare-fun res!1197897 () Bool)

(assert (=> b!2897228 (=> (not res!1197897) (not e!1830239))))

(declare-fun call!188553 () Bool)

(assert (=> b!2897228 (= res!1197897 call!188553)))

(declare-fun bm!188549 () Bool)

(declare-fun call!188555 () Bool)

(assert (=> bm!188549 (= call!188555 call!188554)))

(declare-fun b!2897229 () Bool)

(declare-fun res!1197894 () Bool)

(assert (=> b!2897229 (=> res!1197894 e!1830241)))

(assert (=> b!2897229 (= res!1197894 (not ((_ is Concat!14174) (regTwo!18218 r!23079))))))

(assert (=> b!2897229 (= e!1830237 e!1830241)))

(declare-fun b!2897230 () Bool)

(declare-fun e!1830238 () Bool)

(assert (=> b!2897230 (= e!1830238 e!1830242)))

(declare-fun c!471693 () Bool)

(assert (=> b!2897230 (= c!471693 ((_ is Star!8853) (regTwo!18218 r!23079)))))

(declare-fun b!2897231 () Bool)

(declare-fun e!1830236 () Bool)

(assert (=> b!2897231 (= e!1830236 call!188555)))

(declare-fun b!2897232 () Bool)

(declare-fun res!1197898 () Bool)

(assert (=> b!2897232 (=> (not res!1197898) (not e!1830236))))

(assert (=> b!2897232 (= res!1197898 call!188553)))

(assert (=> b!2897232 (= e!1830237 e!1830236)))

(declare-fun d!834996 () Bool)

(declare-fun res!1197895 () Bool)

(assert (=> d!834996 (=> res!1197895 e!1830238)))

(assert (=> d!834996 (= res!1197895 ((_ is ElementMatch!8853) (regTwo!18218 r!23079)))))

(assert (=> d!834996 (= (validRegex!3626 (regTwo!18218 r!23079)) e!1830238)))

(declare-fun bm!188548 () Bool)

(assert (=> bm!188548 (= call!188553 (validRegex!3626 (ite c!471694 (regOne!18219 (regTwo!18218 r!23079)) (regOne!18218 (regTwo!18218 r!23079)))))))

(declare-fun b!2897233 () Bool)

(assert (=> b!2897233 (= e!1830239 call!188555)))

(declare-fun bm!188550 () Bool)

(assert (=> bm!188550 (= call!188554 (validRegex!3626 (ite c!471693 (reg!9182 (regTwo!18218 r!23079)) (ite c!471694 (regTwo!18219 (regTwo!18218 r!23079)) (regTwo!18218 (regTwo!18218 r!23079))))))))

(assert (= (and d!834996 (not res!1197895)) b!2897230))

(assert (= (and b!2897230 c!471693) b!2897225))

(assert (= (and b!2897230 (not c!471693)) b!2897227))

(assert (= (and b!2897225 res!1197896) b!2897226))

(assert (= (and b!2897227 c!471694) b!2897232))

(assert (= (and b!2897227 (not c!471694)) b!2897229))

(assert (= (and b!2897232 res!1197898) b!2897231))

(assert (= (and b!2897229 (not res!1197894)) b!2897228))

(assert (= (and b!2897228 res!1197897) b!2897233))

(assert (= (or b!2897231 b!2897233) bm!188549))

(assert (= (or b!2897232 b!2897228) bm!188548))

(assert (= (or b!2897226 bm!188549) bm!188550))

(declare-fun m!3304571 () Bool)

(assert (=> b!2897225 m!3304571))

(declare-fun m!3304573 () Bool)

(assert (=> bm!188548 m!3304573))

(declare-fun m!3304575 () Bool)

(assert (=> bm!188550 m!3304575))

(assert (=> b!2897105 d!834996))

(declare-fun b!2897262 () Bool)

(declare-fun e!1830262 () Bool)

(declare-fun e!1830259 () Bool)

(assert (=> b!2897262 (= e!1830262 e!1830259)))

(declare-fun c!471701 () Bool)

(assert (=> b!2897262 (= c!471701 ((_ is EmptyLang!8853) (regOne!18218 r!23079)))))

(declare-fun b!2897263 () Bool)

(declare-fun res!1197922 () Bool)

(declare-fun e!1830258 () Bool)

(assert (=> b!2897263 (=> res!1197922 e!1830258)))

(assert (=> b!2897263 (= res!1197922 (not ((_ is ElementMatch!8853) (regOne!18218 r!23079))))))

(assert (=> b!2897263 (= e!1830259 e!1830258)))

(declare-fun d!834998 () Bool)

(assert (=> d!834998 e!1830262))

(declare-fun c!471702 () Bool)

(assert (=> d!834998 (= c!471702 ((_ is EmptyExpr!8853) (regOne!18218 r!23079)))))

(declare-fun lt!1021725 () Bool)

(declare-fun e!1830263 () Bool)

(assert (=> d!834998 (= lt!1021725 e!1830263)))

(declare-fun c!471703 () Bool)

(declare-fun isEmpty!18838 (List!34654) Bool)

(assert (=> d!834998 (= c!471703 (isEmpty!18838 (get!10470 lt!1021704)))))

(assert (=> d!834998 (validRegex!3626 (regOne!18218 r!23079))))

(assert (=> d!834998 (= (matchR!3811 (regOne!18218 r!23079) (get!10470 lt!1021704)) lt!1021725)))

(declare-fun b!2897264 () Bool)

(declare-fun res!1197919 () Bool)

(assert (=> b!2897264 (=> res!1197919 e!1830258)))

(declare-fun e!1830261 () Bool)

(assert (=> b!2897264 (= res!1197919 e!1830261)))

(declare-fun res!1197918 () Bool)

(assert (=> b!2897264 (=> (not res!1197918) (not e!1830261))))

(assert (=> b!2897264 (= res!1197918 lt!1021725)))

(declare-fun b!2897265 () Bool)

(declare-fun e!1830257 () Bool)

(declare-fun head!6394 (List!34654) C!17888)

(assert (=> b!2897265 (= e!1830257 (not (= (head!6394 (get!10470 lt!1021704)) (c!471640 (regOne!18218 r!23079)))))))

(declare-fun b!2897266 () Bool)

(declare-fun call!188558 () Bool)

(assert (=> b!2897266 (= e!1830262 (= lt!1021725 call!188558))))

(declare-fun b!2897267 () Bool)

(declare-fun e!1830260 () Bool)

(assert (=> b!2897267 (= e!1830260 e!1830257)))

(declare-fun res!1197916 () Bool)

(assert (=> b!2897267 (=> res!1197916 e!1830257)))

(assert (=> b!2897267 (= res!1197916 call!188558)))

(declare-fun b!2897268 () Bool)

(assert (=> b!2897268 (= e!1830261 (= (head!6394 (get!10470 lt!1021704)) (c!471640 (regOne!18218 r!23079))))))

(declare-fun b!2897269 () Bool)

(assert (=> b!2897269 (= e!1830258 e!1830260)))

(declare-fun res!1197921 () Bool)

(assert (=> b!2897269 (=> (not res!1197921) (not e!1830260))))

(assert (=> b!2897269 (= res!1197921 (not lt!1021725))))

(declare-fun b!2897270 () Bool)

(declare-fun res!1197917 () Bool)

(assert (=> b!2897270 (=> res!1197917 e!1830257)))

(declare-fun tail!4619 (List!34654) List!34654)

(assert (=> b!2897270 (= res!1197917 (not (isEmpty!18838 (tail!4619 (get!10470 lt!1021704)))))))

(declare-fun b!2897271 () Bool)

(assert (=> b!2897271 (= e!1830263 (nullable!2752 (regOne!18218 r!23079)))))

(declare-fun bm!188553 () Bool)

(assert (=> bm!188553 (= call!188558 (isEmpty!18838 (get!10470 lt!1021704)))))

(declare-fun b!2897272 () Bool)

(declare-fun res!1197915 () Bool)

(assert (=> b!2897272 (=> (not res!1197915) (not e!1830261))))

(assert (=> b!2897272 (= res!1197915 (not call!188558))))

(declare-fun b!2897273 () Bool)

(assert (=> b!2897273 (= e!1830259 (not lt!1021725))))

(declare-fun b!2897274 () Bool)

(declare-fun derivativeStep!2365 (Regex!8853 C!17888) Regex!8853)

(assert (=> b!2897274 (= e!1830263 (matchR!3811 (derivativeStep!2365 (regOne!18218 r!23079) (head!6394 (get!10470 lt!1021704))) (tail!4619 (get!10470 lt!1021704))))))

(declare-fun b!2897275 () Bool)

(declare-fun res!1197920 () Bool)

(assert (=> b!2897275 (=> (not res!1197920) (not e!1830261))))

(assert (=> b!2897275 (= res!1197920 (isEmpty!18838 (tail!4619 (get!10470 lt!1021704))))))

(assert (= (and d!834998 c!471703) b!2897271))

(assert (= (and d!834998 (not c!471703)) b!2897274))

(assert (= (and d!834998 c!471702) b!2897266))

(assert (= (and d!834998 (not c!471702)) b!2897262))

(assert (= (and b!2897262 c!471701) b!2897273))

(assert (= (and b!2897262 (not c!471701)) b!2897263))

(assert (= (and b!2897263 (not res!1197922)) b!2897264))

(assert (= (and b!2897264 res!1197918) b!2897272))

(assert (= (and b!2897272 res!1197915) b!2897275))

(assert (= (and b!2897275 res!1197920) b!2897268))

(assert (= (and b!2897264 (not res!1197919)) b!2897269))

(assert (= (and b!2897269 res!1197921) b!2897267))

(assert (= (and b!2897267 (not res!1197916)) b!2897270))

(assert (= (and b!2897270 (not res!1197917)) b!2897265))

(assert (= (or b!2897266 b!2897267 b!2897272) bm!188553))

(assert (=> b!2897268 m!3304543))

(declare-fun m!3304577 () Bool)

(assert (=> b!2897268 m!3304577))

(assert (=> b!2897275 m!3304543))

(declare-fun m!3304579 () Bool)

(assert (=> b!2897275 m!3304579))

(assert (=> b!2897275 m!3304579))

(declare-fun m!3304581 () Bool)

(assert (=> b!2897275 m!3304581))

(declare-fun m!3304583 () Bool)

(assert (=> b!2897271 m!3304583))

(assert (=> bm!188553 m!3304543))

(declare-fun m!3304585 () Bool)

(assert (=> bm!188553 m!3304585))

(assert (=> b!2897274 m!3304543))

(assert (=> b!2897274 m!3304577))

(assert (=> b!2897274 m!3304577))

(declare-fun m!3304587 () Bool)

(assert (=> b!2897274 m!3304587))

(assert (=> b!2897274 m!3304543))

(assert (=> b!2897274 m!3304579))

(assert (=> b!2897274 m!3304587))

(assert (=> b!2897274 m!3304579))

(declare-fun m!3304589 () Bool)

(assert (=> b!2897274 m!3304589))

(assert (=> d!834998 m!3304543))

(assert (=> d!834998 m!3304585))

(declare-fun m!3304591 () Bool)

(assert (=> d!834998 m!3304591))

(assert (=> b!2897270 m!3304543))

(assert (=> b!2897270 m!3304579))

(assert (=> b!2897270 m!3304579))

(assert (=> b!2897270 m!3304581))

(assert (=> b!2897265 m!3304543))

(assert (=> b!2897265 m!3304577))

(assert (=> b!2897105 d!834998))

(declare-fun d!835000 () Bool)

(assert (=> d!835000 (= (get!10470 lt!1021704) (v!34651 lt!1021704))))

(assert (=> b!2897105 d!835000))

(declare-fun d!835002 () Bool)

(assert (=> d!835002 (matchR!3811 (regOne!18218 r!23079) (get!10470 (getLanguageWitness!560 (regOne!18218 r!23079))))))

(declare-fun lt!1021731 () Unit!48111)

(declare-fun choose!17076 (Regex!8853) Unit!48111)

(assert (=> d!835002 (= lt!1021731 (choose!17076 (regOne!18218 r!23079)))))

(assert (=> d!835002 (validRegex!3626 (regOne!18218 r!23079))))

(assert (=> d!835002 (= (lemmaGetWitnessMatches!110 (regOne!18218 r!23079)) lt!1021731)))

(declare-fun bs!523961 () Bool)

(assert (= bs!523961 d!835002))

(assert (=> bs!523961 m!3304591))

(declare-fun m!3304599 () Bool)

(assert (=> bs!523961 m!3304599))

(assert (=> bs!523961 m!3304557))

(declare-fun m!3304601 () Bool)

(assert (=> bs!523961 m!3304601))

(assert (=> bs!523961 m!3304557))

(assert (=> bs!523961 m!3304601))

(declare-fun m!3304603 () Bool)

(assert (=> bs!523961 m!3304603))

(assert (=> b!2897105 d!835002))

(declare-fun b!2897292 () Bool)

(declare-fun e!1830278 () Bool)

(declare-fun e!1830276 () Bool)

(assert (=> b!2897292 (= e!1830278 e!1830276)))

(declare-fun res!1197925 () Bool)

(assert (=> b!2897292 (= res!1197925 (not (nullable!2752 (reg!9182 r!23079))))))

(assert (=> b!2897292 (=> (not res!1197925) (not e!1830276))))

(declare-fun b!2897293 () Bool)

(declare-fun call!188562 () Bool)

(assert (=> b!2897293 (= e!1830276 call!188562)))

(declare-fun b!2897294 () Bool)

(declare-fun e!1830273 () Bool)

(assert (=> b!2897294 (= e!1830278 e!1830273)))

(declare-fun c!471713 () Bool)

(assert (=> b!2897294 (= c!471713 ((_ is Union!8853) r!23079))))

(declare-fun b!2897295 () Bool)

(declare-fun e!1830277 () Bool)

(declare-fun e!1830275 () Bool)

(assert (=> b!2897295 (= e!1830277 e!1830275)))

(declare-fun res!1197926 () Bool)

(assert (=> b!2897295 (=> (not res!1197926) (not e!1830275))))

(declare-fun call!188561 () Bool)

(assert (=> b!2897295 (= res!1197926 call!188561)))

(declare-fun bm!188557 () Bool)

(declare-fun call!188563 () Bool)

(assert (=> bm!188557 (= call!188563 call!188562)))

(declare-fun b!2897296 () Bool)

(declare-fun res!1197923 () Bool)

(assert (=> b!2897296 (=> res!1197923 e!1830277)))

(assert (=> b!2897296 (= res!1197923 (not ((_ is Concat!14174) r!23079)))))

(assert (=> b!2897296 (= e!1830273 e!1830277)))

(declare-fun b!2897297 () Bool)

(declare-fun e!1830274 () Bool)

(assert (=> b!2897297 (= e!1830274 e!1830278)))

(declare-fun c!471712 () Bool)

(assert (=> b!2897297 (= c!471712 ((_ is Star!8853) r!23079))))

(declare-fun b!2897298 () Bool)

(declare-fun e!1830272 () Bool)

(assert (=> b!2897298 (= e!1830272 call!188563)))

(declare-fun b!2897299 () Bool)

(declare-fun res!1197927 () Bool)

(assert (=> b!2897299 (=> (not res!1197927) (not e!1830272))))

(assert (=> b!2897299 (= res!1197927 call!188561)))

(assert (=> b!2897299 (= e!1830273 e!1830272)))

(declare-fun d!835006 () Bool)

(declare-fun res!1197924 () Bool)

(assert (=> d!835006 (=> res!1197924 e!1830274)))

(assert (=> d!835006 (= res!1197924 ((_ is ElementMatch!8853) r!23079))))

(assert (=> d!835006 (= (validRegex!3626 r!23079) e!1830274)))

(declare-fun bm!188556 () Bool)

(assert (=> bm!188556 (= call!188561 (validRegex!3626 (ite c!471713 (regOne!18219 r!23079) (regOne!18218 r!23079))))))

(declare-fun b!2897300 () Bool)

(assert (=> b!2897300 (= e!1830275 call!188563)))

(declare-fun bm!188558 () Bool)

(assert (=> bm!188558 (= call!188562 (validRegex!3626 (ite c!471712 (reg!9182 r!23079) (ite c!471713 (regTwo!18219 r!23079) (regTwo!18218 r!23079)))))))

(assert (= (and d!835006 (not res!1197924)) b!2897297))

(assert (= (and b!2897297 c!471712) b!2897292))

(assert (= (and b!2897297 (not c!471712)) b!2897294))

(assert (= (and b!2897292 res!1197925) b!2897293))

(assert (= (and b!2897294 c!471713) b!2897299))

(assert (= (and b!2897294 (not c!471713)) b!2897296))

(assert (= (and b!2897299 res!1197927) b!2897298))

(assert (= (and b!2897296 (not res!1197923)) b!2897295))

(assert (= (and b!2897295 res!1197926) b!2897300))

(assert (= (or b!2897298 b!2897300) bm!188557))

(assert (= (or b!2897299 b!2897295) bm!188556))

(assert (= (or b!2897293 bm!188557) bm!188558))

(declare-fun m!3304605 () Bool)

(assert (=> b!2897292 m!3304605))

(declare-fun m!3304607 () Bool)

(assert (=> bm!188556 m!3304607))

(declare-fun m!3304609 () Bool)

(assert (=> bm!188558 m!3304609))

(assert (=> start!282222 d!835006))

(declare-fun d!835008 () Bool)

(declare-fun isEmpty!18839 (Option!6526) Bool)

(assert (=> d!835008 (= (isDefined!5090 (getLanguageWitness!560 r!23079)) (not (isEmpty!18839 (getLanguageWitness!560 r!23079))))))

(declare-fun bs!523962 () Bool)

(assert (= bs!523962 d!835008))

(assert (=> bs!523962 m!3304553))

(declare-fun m!3304611 () Bool)

(assert (=> bs!523962 m!3304611))

(assert (=> b!2897106 d!835008))

(declare-fun b!2897301 () Bool)

(declare-fun e!1830279 () Option!6526)

(assert (=> b!2897301 (= e!1830279 (Some!6525 (Cons!34530 (c!471640 r!23079) Nil!34530)))))

(declare-fun bm!188559 () Bool)

(declare-fun call!188564 () Option!6526)

(declare-fun c!471720 () Bool)

(assert (=> bm!188559 (= call!188564 (getLanguageWitness!560 (ite c!471720 (regTwo!18219 r!23079) (regOne!18218 r!23079))))))

(declare-fun b!2897302 () Bool)

(declare-fun e!1830285 () Option!6526)

(assert (=> b!2897302 (= e!1830285 (Some!6525 Nil!34530))))

(declare-fun b!2897303 () Bool)

(declare-fun e!1830281 () Option!6526)

(declare-fun e!1830283 () Option!6526)

(assert (=> b!2897303 (= e!1830281 e!1830283)))

(declare-fun lt!1021732 () Option!6526)

(assert (=> b!2897303 (= lt!1021732 call!188564)))

(declare-fun c!471714 () Bool)

(assert (=> b!2897303 (= c!471714 ((_ is Some!6525) lt!1021732))))

(declare-fun b!2897304 () Bool)

(declare-fun c!471716 () Bool)

(declare-fun lt!1021733 () Option!6526)

(assert (=> b!2897304 (= c!471716 ((_ is Some!6525) lt!1021733))))

(declare-fun call!188565 () Option!6526)

(assert (=> b!2897304 (= lt!1021733 call!188565)))

(declare-fun e!1830286 () Option!6526)

(assert (=> b!2897304 (= e!1830283 e!1830286)))

(declare-fun b!2897305 () Bool)

(assert (=> b!2897305 (= e!1830286 None!6525)))

(declare-fun b!2897306 () Bool)

(declare-fun e!1830280 () Option!6526)

(assert (=> b!2897306 (= e!1830280 (Some!6525 Nil!34530))))

(declare-fun b!2897307 () Bool)

(declare-fun c!471719 () Bool)

(assert (=> b!2897307 (= c!471719 ((_ is ElementMatch!8853) r!23079))))

(declare-fun e!1830282 () Option!6526)

(assert (=> b!2897307 (= e!1830282 e!1830279)))

(declare-fun b!2897308 () Bool)

(assert (=> b!2897308 (= e!1830283 None!6525)))

(declare-fun b!2897309 () Bool)

(assert (=> b!2897309 (= e!1830279 e!1830285)))

(declare-fun c!471715 () Bool)

(assert (=> b!2897309 (= c!471715 ((_ is Star!8853) r!23079))))

(declare-fun b!2897310 () Bool)

(assert (=> b!2897310 (= e!1830280 e!1830282)))

(declare-fun c!471717 () Bool)

(assert (=> b!2897310 (= c!471717 ((_ is EmptyLang!8853) r!23079))))

(declare-fun b!2897311 () Bool)

(declare-fun e!1830284 () Option!6526)

(assert (=> b!2897311 (= e!1830281 e!1830284)))

(declare-fun lt!1021734 () Option!6526)

(assert (=> b!2897311 (= lt!1021734 call!188565)))

(declare-fun c!471718 () Bool)

(assert (=> b!2897311 (= c!471718 ((_ is Some!6525) lt!1021734))))

(declare-fun b!2897312 () Bool)

(assert (=> b!2897312 (= e!1830282 None!6525)))

(declare-fun b!2897313 () Bool)

(assert (=> b!2897313 (= e!1830286 (Some!6525 (++!8250 (v!34651 lt!1021732) (v!34651 lt!1021733))))))

(declare-fun b!2897314 () Bool)

(assert (=> b!2897314 (= e!1830284 lt!1021734)))

(declare-fun d!835010 () Bool)

(declare-fun c!471721 () Bool)

(assert (=> d!835010 (= c!471721 ((_ is EmptyExpr!8853) r!23079))))

(assert (=> d!835010 (= (getLanguageWitness!560 r!23079) e!1830280)))

(declare-fun b!2897315 () Bool)

(assert (=> b!2897315 (= e!1830284 call!188564)))

(declare-fun b!2897316 () Bool)

(assert (=> b!2897316 (= c!471720 ((_ is Union!8853) r!23079))))

(assert (=> b!2897316 (= e!1830285 e!1830281)))

(declare-fun bm!188560 () Bool)

(assert (=> bm!188560 (= call!188565 (getLanguageWitness!560 (ite c!471720 (regOne!18219 r!23079) (regTwo!18218 r!23079))))))

(assert (= (and d!835010 c!471721) b!2897306))

(assert (= (and d!835010 (not c!471721)) b!2897310))

(assert (= (and b!2897310 c!471717) b!2897312))

(assert (= (and b!2897310 (not c!471717)) b!2897307))

(assert (= (and b!2897307 c!471719) b!2897301))

(assert (= (and b!2897307 (not c!471719)) b!2897309))

(assert (= (and b!2897309 c!471715) b!2897302))

(assert (= (and b!2897309 (not c!471715)) b!2897316))

(assert (= (and b!2897316 c!471720) b!2897311))

(assert (= (and b!2897316 (not c!471720)) b!2897303))

(assert (= (and b!2897311 c!471718) b!2897314))

(assert (= (and b!2897311 (not c!471718)) b!2897315))

(assert (= (and b!2897303 c!471714) b!2897304))

(assert (= (and b!2897303 (not c!471714)) b!2897308))

(assert (= (and b!2897304 c!471716) b!2897313))

(assert (= (and b!2897304 (not c!471716)) b!2897305))

(assert (= (or b!2897315 b!2897303) bm!188559))

(assert (= (or b!2897311 b!2897304) bm!188560))

(declare-fun m!3304613 () Bool)

(assert (=> bm!188559 m!3304613))

(declare-fun m!3304615 () Bool)

(assert (=> b!2897313 m!3304615))

(declare-fun m!3304617 () Bool)

(assert (=> bm!188560 m!3304617))

(assert (=> b!2897106 d!835010))

(declare-fun b!2897346 () Bool)

(declare-fun e!1830303 () Bool)

(declare-fun tp!929940 () Bool)

(declare-fun tp!929941 () Bool)

(assert (=> b!2897346 (= e!1830303 (and tp!929940 tp!929941))))

(declare-fun b!2897347 () Bool)

(declare-fun tp!929944 () Bool)

(assert (=> b!2897347 (= e!1830303 tp!929944)))

(declare-fun b!2897348 () Bool)

(declare-fun tp!929942 () Bool)

(declare-fun tp!929943 () Bool)

(assert (=> b!2897348 (= e!1830303 (and tp!929942 tp!929943))))

(declare-fun b!2897345 () Bool)

(assert (=> b!2897345 (= e!1830303 tp_is_empty!15293)))

(assert (=> b!2897107 (= tp!929928 e!1830303)))

(assert (= (and b!2897107 ((_ is ElementMatch!8853) (reg!9182 r!23079))) b!2897345))

(assert (= (and b!2897107 ((_ is Concat!14174) (reg!9182 r!23079))) b!2897346))

(assert (= (and b!2897107 ((_ is Star!8853) (reg!9182 r!23079))) b!2897347))

(assert (= (and b!2897107 ((_ is Union!8853) (reg!9182 r!23079))) b!2897348))

(declare-fun b!2897350 () Bool)

(declare-fun e!1830304 () Bool)

(declare-fun tp!929945 () Bool)

(declare-fun tp!929946 () Bool)

(assert (=> b!2897350 (= e!1830304 (and tp!929945 tp!929946))))

(declare-fun b!2897351 () Bool)

(declare-fun tp!929949 () Bool)

(assert (=> b!2897351 (= e!1830304 tp!929949)))

(declare-fun b!2897352 () Bool)

(declare-fun tp!929947 () Bool)

(declare-fun tp!929948 () Bool)

(assert (=> b!2897352 (= e!1830304 (and tp!929947 tp!929948))))

(declare-fun b!2897349 () Bool)

(assert (=> b!2897349 (= e!1830304 tp_is_empty!15293)))

(assert (=> b!2897103 (= tp!929925 e!1830304)))

(assert (= (and b!2897103 ((_ is ElementMatch!8853) (regOne!18219 r!23079))) b!2897349))

(assert (= (and b!2897103 ((_ is Concat!14174) (regOne!18219 r!23079))) b!2897350))

(assert (= (and b!2897103 ((_ is Star!8853) (regOne!18219 r!23079))) b!2897351))

(assert (= (and b!2897103 ((_ is Union!8853) (regOne!18219 r!23079))) b!2897352))

(declare-fun b!2897354 () Bool)

(declare-fun e!1830305 () Bool)

(declare-fun tp!929950 () Bool)

(declare-fun tp!929951 () Bool)

(assert (=> b!2897354 (= e!1830305 (and tp!929950 tp!929951))))

(declare-fun b!2897355 () Bool)

(declare-fun tp!929954 () Bool)

(assert (=> b!2897355 (= e!1830305 tp!929954)))

(declare-fun b!2897356 () Bool)

(declare-fun tp!929952 () Bool)

(declare-fun tp!929953 () Bool)

(assert (=> b!2897356 (= e!1830305 (and tp!929952 tp!929953))))

(declare-fun b!2897353 () Bool)

(assert (=> b!2897353 (= e!1830305 tp_is_empty!15293)))

(assert (=> b!2897103 (= tp!929926 e!1830305)))

(assert (= (and b!2897103 ((_ is ElementMatch!8853) (regTwo!18219 r!23079))) b!2897353))

(assert (= (and b!2897103 ((_ is Concat!14174) (regTwo!18219 r!23079))) b!2897354))

(assert (= (and b!2897103 ((_ is Star!8853) (regTwo!18219 r!23079))) b!2897355))

(assert (= (and b!2897103 ((_ is Union!8853) (regTwo!18219 r!23079))) b!2897356))

(declare-fun b!2897358 () Bool)

(declare-fun e!1830306 () Bool)

(declare-fun tp!929955 () Bool)

(declare-fun tp!929956 () Bool)

(assert (=> b!2897358 (= e!1830306 (and tp!929955 tp!929956))))

(declare-fun b!2897359 () Bool)

(declare-fun tp!929959 () Bool)

(assert (=> b!2897359 (= e!1830306 tp!929959)))

(declare-fun b!2897360 () Bool)

(declare-fun tp!929957 () Bool)

(declare-fun tp!929958 () Bool)

(assert (=> b!2897360 (= e!1830306 (and tp!929957 tp!929958))))

(declare-fun b!2897357 () Bool)

(assert (=> b!2897357 (= e!1830306 tp_is_empty!15293)))

(assert (=> b!2897109 (= tp!929929 e!1830306)))

(assert (= (and b!2897109 ((_ is ElementMatch!8853) (regOne!18218 r!23079))) b!2897357))

(assert (= (and b!2897109 ((_ is Concat!14174) (regOne!18218 r!23079))) b!2897358))

(assert (= (and b!2897109 ((_ is Star!8853) (regOne!18218 r!23079))) b!2897359))

(assert (= (and b!2897109 ((_ is Union!8853) (regOne!18218 r!23079))) b!2897360))

(declare-fun b!2897362 () Bool)

(declare-fun e!1830307 () Bool)

(declare-fun tp!929960 () Bool)

(declare-fun tp!929961 () Bool)

(assert (=> b!2897362 (= e!1830307 (and tp!929960 tp!929961))))

(declare-fun b!2897363 () Bool)

(declare-fun tp!929964 () Bool)

(assert (=> b!2897363 (= e!1830307 tp!929964)))

(declare-fun b!2897364 () Bool)

(declare-fun tp!929962 () Bool)

(declare-fun tp!929963 () Bool)

(assert (=> b!2897364 (= e!1830307 (and tp!929962 tp!929963))))

(declare-fun b!2897361 () Bool)

(assert (=> b!2897361 (= e!1830307 tp_is_empty!15293)))

(assert (=> b!2897109 (= tp!929927 e!1830307)))

(assert (= (and b!2897109 ((_ is ElementMatch!8853) (regTwo!18218 r!23079))) b!2897361))

(assert (= (and b!2897109 ((_ is Concat!14174) (regTwo!18218 r!23079))) b!2897362))

(assert (= (and b!2897109 ((_ is Star!8853) (regTwo!18218 r!23079))) b!2897363))

(assert (= (and b!2897109 ((_ is Union!8853) (regTwo!18218 r!23079))) b!2897364))

(check-sat (not b!2897363) (not b!2897355) (not b!2897354) (not bm!188553) (not b!2897359) (not bm!188548) tp_is_empty!15293 (not bm!188535) (not b!2897346) (not bm!188550) (not bm!188537) (not d!834998) (not b!2897356) (not bm!188556) (not bm!188558) (not b!2897270) (not b!2897362) (not b!2897171) (not b!2897225) (not b!2897348) (not b!2897360) (not bm!188560) (not b!2897351) (not bm!188534) (not b!2897155) (not d!835008) (not d!835002) (not bm!188559) (not b!2897292) (not b!2897350) (not b!2897275) (not b!2897358) (not bm!188536) (not b!2897271) (not b!2897268) (not b!2897313) (not b!2897347) (not b!2897364) (not b!2897265) (not b!2897274) (not b!2897352))
(check-sat)
