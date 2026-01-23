; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278438 () Bool)

(assert start!278438)

(declare-fun b!2861437 () Bool)

(declare-fun res!1188152 () Bool)

(declare-fun e!1811501 () Bool)

(assert (=> b!2861437 (=> (not res!1188152) (not e!1811501))))

(declare-datatypes ((C!17404 0))(
  ( (C!17405 (val!10736 Int)) )
))
(declare-datatypes ((List!34208 0))(
  ( (Nil!34084) (Cons!34084 (h!39504 C!17404) (t!233243 List!34208)) )
))
(declare-fun prefix!1470 () List!34208)

(get-info :version)

(assert (=> b!2861437 (= res!1188152 (not ((_ is Nil!34084) prefix!1470)))))

(declare-fun res!1188153 () Bool)

(assert (=> start!278438 (=> (not res!1188153) (not e!1811501))))

(declare-datatypes ((Regex!8611 0))(
  ( (ElementMatch!8611 (c!461202 C!17404)) (Concat!13932 (regOne!17734 Regex!8611) (regTwo!17734 Regex!8611)) (EmptyExpr!8611) (Star!8611 (reg!8940 Regex!8611)) (EmptyLang!8611) (Union!8611 (regOne!17735 Regex!8611) (regTwo!17735 Regex!8611)) )
))
(declare-fun r!23423 () Regex!8611)

(declare-fun validRegex!3481 (Regex!8611) Bool)

(assert (=> start!278438 (= res!1188153 (validRegex!3481 r!23423))))

(assert (=> start!278438 e!1811501))

(declare-fun e!1811502 () Bool)

(assert (=> start!278438 e!1811502))

(declare-fun e!1811499 () Bool)

(assert (=> start!278438 e!1811499))

(declare-fun b!2861438 () Bool)

(declare-fun tp!921278 () Bool)

(declare-fun tp!921276 () Bool)

(assert (=> b!2861438 (= e!1811502 (and tp!921278 tp!921276))))

(declare-fun b!2861439 () Bool)

(declare-fun res!1188154 () Bool)

(declare-fun e!1811500 () Bool)

(assert (=> b!2861439 (=> (not res!1188154) (not e!1811500))))

(declare-fun lt!1014519 () Regex!8611)

(declare-fun prefixMatch!919 (Regex!8611 List!34208) Bool)

(assert (=> b!2861439 (= res!1188154 (prefixMatch!919 lt!1014519 (t!233243 prefix!1470)))))

(declare-fun b!2861440 () Bool)

(declare-fun size!26285 (List!34208) Int)

(assert (=> b!2861440 (= e!1811500 (>= (size!26285 (t!233243 prefix!1470)) (size!26285 prefix!1470)))))

(declare-fun b!2861441 () Bool)

(declare-fun tp!921275 () Bool)

(declare-fun tp!921277 () Bool)

(assert (=> b!2861441 (= e!1811502 (and tp!921275 tp!921277))))

(declare-fun b!2861442 () Bool)

(declare-fun tp_is_empty!14959 () Bool)

(declare-fun tp!921279 () Bool)

(assert (=> b!2861442 (= e!1811499 (and tp_is_empty!14959 tp!921279))))

(declare-fun b!2861443 () Bool)

(declare-fun res!1188150 () Bool)

(assert (=> b!2861443 (=> (not res!1188150) (not e!1811501))))

(assert (=> b!2861443 (= res!1188150 (prefixMatch!919 r!23423 prefix!1470))))

(declare-fun b!2861444 () Bool)

(assert (=> b!2861444 (= e!1811501 e!1811500)))

(declare-fun res!1188151 () Bool)

(assert (=> b!2861444 (=> (not res!1188151) (not e!1811500))))

(assert (=> b!2861444 (= res!1188151 (validRegex!3481 lt!1014519))))

(declare-fun derivativeStep!2300 (Regex!8611 C!17404) Regex!8611)

(assert (=> b!2861444 (= lt!1014519 (derivativeStep!2300 r!23423 (h!39504 prefix!1470)))))

(declare-fun b!2861445 () Bool)

(assert (=> b!2861445 (= e!1811502 tp_is_empty!14959)))

(declare-fun b!2861446 () Bool)

(declare-fun tp!921280 () Bool)

(assert (=> b!2861446 (= e!1811502 tp!921280)))

(assert (= (and start!278438 res!1188153) b!2861443))

(assert (= (and b!2861443 res!1188150) b!2861437))

(assert (= (and b!2861437 res!1188152) b!2861444))

(assert (= (and b!2861444 res!1188151) b!2861439))

(assert (= (and b!2861439 res!1188154) b!2861440))

(assert (= (and start!278438 ((_ is ElementMatch!8611) r!23423)) b!2861445))

(assert (= (and start!278438 ((_ is Concat!13932) r!23423)) b!2861438))

(assert (= (and start!278438 ((_ is Star!8611) r!23423)) b!2861446))

(assert (= (and start!278438 ((_ is Union!8611) r!23423)) b!2861441))

(assert (= (and start!278438 ((_ is Cons!34084) prefix!1470)) b!2861442))

(declare-fun m!3281187 () Bool)

(assert (=> b!2861444 m!3281187))

(declare-fun m!3281189 () Bool)

(assert (=> b!2861444 m!3281189))

(declare-fun m!3281191 () Bool)

(assert (=> start!278438 m!3281191))

(declare-fun m!3281193 () Bool)

(assert (=> b!2861440 m!3281193))

(declare-fun m!3281195 () Bool)

(assert (=> b!2861440 m!3281195))

(declare-fun m!3281197 () Bool)

(assert (=> b!2861439 m!3281197))

(declare-fun m!3281199 () Bool)

(assert (=> b!2861443 m!3281199))

(check-sat (not start!278438) (not b!2861438) (not b!2861444) (not b!2861442) (not b!2861439) (not b!2861441) (not b!2861443) (not b!2861440) tp_is_empty!14959 (not b!2861446))
(check-sat)
(get-model)

(declare-fun d!827217 () Bool)

(declare-fun c!461208 () Bool)

(declare-fun isEmpty!18618 (List!34208) Bool)

(assert (=> d!827217 (= c!461208 (isEmpty!18618 prefix!1470))))

(declare-fun e!1811508 () Bool)

(assert (=> d!827217 (= (prefixMatch!919 r!23423 prefix!1470) e!1811508)))

(declare-fun b!2861456 () Bool)

(declare-fun lostCause!763 (Regex!8611) Bool)

(assert (=> b!2861456 (= e!1811508 (not (lostCause!763 r!23423)))))

(declare-fun b!2861458 () Bool)

(declare-fun head!6293 (List!34208) C!17404)

(declare-fun tail!4518 (List!34208) List!34208)

(assert (=> b!2861458 (= e!1811508 (prefixMatch!919 (derivativeStep!2300 r!23423 (head!6293 prefix!1470)) (tail!4518 prefix!1470)))))

(assert (= (and d!827217 c!461208) b!2861456))

(assert (= (and d!827217 (not c!461208)) b!2861458))

(declare-fun m!3281201 () Bool)

(assert (=> d!827217 m!3281201))

(declare-fun m!3281205 () Bool)

(assert (=> b!2861456 m!3281205))

(declare-fun m!3281209 () Bool)

(assert (=> b!2861458 m!3281209))

(assert (=> b!2861458 m!3281209))

(declare-fun m!3281213 () Bool)

(assert (=> b!2861458 m!3281213))

(declare-fun m!3281217 () Bool)

(assert (=> b!2861458 m!3281217))

(assert (=> b!2861458 m!3281213))

(assert (=> b!2861458 m!3281217))

(declare-fun m!3281221 () Bool)

(assert (=> b!2861458 m!3281221))

(assert (=> b!2861443 d!827217))

(declare-fun b!2861504 () Bool)

(declare-fun e!1811549 () Bool)

(declare-fun e!1811547 () Bool)

(assert (=> b!2861504 (= e!1811549 e!1811547)))

(declare-fun res!1188182 () Bool)

(assert (=> b!2861504 (=> (not res!1188182) (not e!1811547))))

(declare-fun call!184632 () Bool)

(assert (=> b!2861504 (= res!1188182 call!184632)))

(declare-fun b!2861505 () Bool)

(declare-fun res!1188184 () Bool)

(assert (=> b!2861505 (=> res!1188184 e!1811549)))

(assert (=> b!2861505 (= res!1188184 (not ((_ is Concat!13932) r!23423)))))

(declare-fun e!1811546 () Bool)

(assert (=> b!2861505 (= e!1811546 e!1811549)))

(declare-fun b!2861506 () Bool)

(declare-fun call!184633 () Bool)

(assert (=> b!2861506 (= e!1811547 call!184633)))

(declare-fun b!2861507 () Bool)

(declare-fun e!1811550 () Bool)

(assert (=> b!2861507 (= e!1811550 e!1811546)))

(declare-fun c!461219 () Bool)

(assert (=> b!2861507 (= c!461219 ((_ is Union!8611) r!23423))))

(declare-fun b!2861508 () Bool)

(declare-fun e!1811544 () Bool)

(assert (=> b!2861508 (= e!1811544 e!1811550)))

(declare-fun c!461220 () Bool)

(assert (=> b!2861508 (= c!461220 ((_ is Star!8611) r!23423))))

(declare-fun b!2861509 () Bool)

(declare-fun res!1188183 () Bool)

(declare-fun e!1811548 () Bool)

(assert (=> b!2861509 (=> (not res!1188183) (not e!1811548))))

(assert (=> b!2861509 (= res!1188183 call!184632)))

(assert (=> b!2861509 (= e!1811546 e!1811548)))

(declare-fun bm!184627 () Bool)

(assert (=> bm!184627 (= call!184633 (validRegex!3481 (ite c!461219 (regTwo!17735 r!23423) (regTwo!17734 r!23423))))))

(declare-fun b!2861510 () Bool)

(declare-fun e!1811545 () Bool)

(declare-fun call!184634 () Bool)

(assert (=> b!2861510 (= e!1811545 call!184634)))

(declare-fun d!827223 () Bool)

(declare-fun res!1188181 () Bool)

(assert (=> d!827223 (=> res!1188181 e!1811544)))

(assert (=> d!827223 (= res!1188181 ((_ is ElementMatch!8611) r!23423))))

(assert (=> d!827223 (= (validRegex!3481 r!23423) e!1811544)))

(declare-fun bm!184628 () Bool)

(assert (=> bm!184628 (= call!184632 call!184634)))

(declare-fun bm!184629 () Bool)

(assert (=> bm!184629 (= call!184634 (validRegex!3481 (ite c!461220 (reg!8940 r!23423) (ite c!461219 (regOne!17735 r!23423) (regOne!17734 r!23423)))))))

(declare-fun b!2861511 () Bool)

(assert (=> b!2861511 (= e!1811550 e!1811545)))

(declare-fun res!1188180 () Bool)

(declare-fun nullable!2665 (Regex!8611) Bool)

(assert (=> b!2861511 (= res!1188180 (not (nullable!2665 (reg!8940 r!23423))))))

(assert (=> b!2861511 (=> (not res!1188180) (not e!1811545))))

(declare-fun b!2861512 () Bool)

(assert (=> b!2861512 (= e!1811548 call!184633)))

(assert (= (and d!827223 (not res!1188181)) b!2861508))

(assert (= (and b!2861508 c!461220) b!2861511))

(assert (= (and b!2861508 (not c!461220)) b!2861507))

(assert (= (and b!2861511 res!1188180) b!2861510))

(assert (= (and b!2861507 c!461219) b!2861509))

(assert (= (and b!2861507 (not c!461219)) b!2861505))

(assert (= (and b!2861509 res!1188183) b!2861512))

(assert (= (and b!2861505 (not res!1188184)) b!2861504))

(assert (= (and b!2861504 res!1188182) b!2861506))

(assert (= (or b!2861512 b!2861506) bm!184627))

(assert (= (or b!2861509 b!2861504) bm!184628))

(assert (= (or b!2861510 bm!184628) bm!184629))

(declare-fun m!3281229 () Bool)

(assert (=> bm!184627 m!3281229))

(declare-fun m!3281233 () Bool)

(assert (=> bm!184629 m!3281233))

(declare-fun m!3281235 () Bool)

(assert (=> b!2861511 m!3281235))

(assert (=> start!278438 d!827223))

(declare-fun d!827227 () Bool)

(declare-fun lt!1014524 () Int)

(assert (=> d!827227 (>= lt!1014524 0)))

(declare-fun e!1811555 () Int)

(assert (=> d!827227 (= lt!1014524 e!1811555)))

(declare-fun c!461225 () Bool)

(assert (=> d!827227 (= c!461225 ((_ is Nil!34084) (t!233243 prefix!1470)))))

(assert (=> d!827227 (= (size!26285 (t!233243 prefix!1470)) lt!1014524)))

(declare-fun b!2861521 () Bool)

(assert (=> b!2861521 (= e!1811555 0)))

(declare-fun b!2861522 () Bool)

(assert (=> b!2861522 (= e!1811555 (+ 1 (size!26285 (t!233243 (t!233243 prefix!1470)))))))

(assert (= (and d!827227 c!461225) b!2861521))

(assert (= (and d!827227 (not c!461225)) b!2861522))

(declare-fun m!3281237 () Bool)

(assert (=> b!2861522 m!3281237))

(assert (=> b!2861440 d!827227))

(declare-fun d!827229 () Bool)

(declare-fun lt!1014526 () Int)

(assert (=> d!827229 (>= lt!1014526 0)))

(declare-fun e!1811557 () Int)

(assert (=> d!827229 (= lt!1014526 e!1811557)))

(declare-fun c!461227 () Bool)

(assert (=> d!827229 (= c!461227 ((_ is Nil!34084) prefix!1470))))

(assert (=> d!827229 (= (size!26285 prefix!1470) lt!1014526)))

(declare-fun b!2861525 () Bool)

(assert (=> b!2861525 (= e!1811557 0)))

(declare-fun b!2861526 () Bool)

(assert (=> b!2861526 (= e!1811557 (+ 1 (size!26285 (t!233243 prefix!1470))))))

(assert (= (and d!827229 c!461227) b!2861525))

(assert (= (and d!827229 (not c!461227)) b!2861526))

(assert (=> b!2861526 m!3281193))

(assert (=> b!2861440 d!827229))

(declare-fun d!827233 () Bool)

(declare-fun c!461229 () Bool)

(assert (=> d!827233 (= c!461229 (isEmpty!18618 (t!233243 prefix!1470)))))

(declare-fun e!1811559 () Bool)

(assert (=> d!827233 (= (prefixMatch!919 lt!1014519 (t!233243 prefix!1470)) e!1811559)))

(declare-fun b!2861529 () Bool)

(assert (=> b!2861529 (= e!1811559 (not (lostCause!763 lt!1014519)))))

(declare-fun b!2861530 () Bool)

(assert (=> b!2861530 (= e!1811559 (prefixMatch!919 (derivativeStep!2300 lt!1014519 (head!6293 (t!233243 prefix!1470))) (tail!4518 (t!233243 prefix!1470))))))

(assert (= (and d!827233 c!461229) b!2861529))

(assert (= (and d!827233 (not c!461229)) b!2861530))

(declare-fun m!3281241 () Bool)

(assert (=> d!827233 m!3281241))

(declare-fun m!3281243 () Bool)

(assert (=> b!2861529 m!3281243))

(declare-fun m!3281245 () Bool)

(assert (=> b!2861530 m!3281245))

(assert (=> b!2861530 m!3281245))

(declare-fun m!3281247 () Bool)

(assert (=> b!2861530 m!3281247))

(declare-fun m!3281249 () Bool)

(assert (=> b!2861530 m!3281249))

(assert (=> b!2861530 m!3281247))

(assert (=> b!2861530 m!3281249))

(declare-fun m!3281251 () Bool)

(assert (=> b!2861530 m!3281251))

(assert (=> b!2861439 d!827233))

(declare-fun b!2861540 () Bool)

(declare-fun e!1811572 () Bool)

(declare-fun e!1811570 () Bool)

(assert (=> b!2861540 (= e!1811572 e!1811570)))

(declare-fun res!1188192 () Bool)

(assert (=> b!2861540 (=> (not res!1188192) (not e!1811570))))

(declare-fun call!184638 () Bool)

(assert (=> b!2861540 (= res!1188192 call!184638)))

(declare-fun b!2861541 () Bool)

(declare-fun res!1188194 () Bool)

(assert (=> b!2861541 (=> res!1188194 e!1811572)))

(assert (=> b!2861541 (= res!1188194 (not ((_ is Concat!13932) lt!1014519)))))

(declare-fun e!1811569 () Bool)

(assert (=> b!2861541 (= e!1811569 e!1811572)))

(declare-fun b!2861542 () Bool)

(declare-fun call!184639 () Bool)

(assert (=> b!2861542 (= e!1811570 call!184639)))

(declare-fun b!2861543 () Bool)

(declare-fun e!1811573 () Bool)

(assert (=> b!2861543 (= e!1811573 e!1811569)))

(declare-fun c!461232 () Bool)

(assert (=> b!2861543 (= c!461232 ((_ is Union!8611) lt!1014519))))

(declare-fun b!2861544 () Bool)

(declare-fun e!1811567 () Bool)

(assert (=> b!2861544 (= e!1811567 e!1811573)))

(declare-fun c!461233 () Bool)

(assert (=> b!2861544 (= c!461233 ((_ is Star!8611) lt!1014519))))

(declare-fun b!2861545 () Bool)

(declare-fun res!1188193 () Bool)

(declare-fun e!1811571 () Bool)

(assert (=> b!2861545 (=> (not res!1188193) (not e!1811571))))

(assert (=> b!2861545 (= res!1188193 call!184638)))

(assert (=> b!2861545 (= e!1811569 e!1811571)))

(declare-fun bm!184633 () Bool)

(assert (=> bm!184633 (= call!184639 (validRegex!3481 (ite c!461232 (regTwo!17735 lt!1014519) (regTwo!17734 lt!1014519))))))

(declare-fun b!2861546 () Bool)

(declare-fun e!1811568 () Bool)

(declare-fun call!184640 () Bool)

(assert (=> b!2861546 (= e!1811568 call!184640)))

(declare-fun d!827237 () Bool)

(declare-fun res!1188191 () Bool)

(assert (=> d!827237 (=> res!1188191 e!1811567)))

(assert (=> d!827237 (= res!1188191 ((_ is ElementMatch!8611) lt!1014519))))

(assert (=> d!827237 (= (validRegex!3481 lt!1014519) e!1811567)))

(declare-fun bm!184634 () Bool)

(assert (=> bm!184634 (= call!184638 call!184640)))

(declare-fun bm!184635 () Bool)

(assert (=> bm!184635 (= call!184640 (validRegex!3481 (ite c!461233 (reg!8940 lt!1014519) (ite c!461232 (regOne!17735 lt!1014519) (regOne!17734 lt!1014519)))))))

(declare-fun b!2861547 () Bool)

(assert (=> b!2861547 (= e!1811573 e!1811568)))

(declare-fun res!1188190 () Bool)

(assert (=> b!2861547 (= res!1188190 (not (nullable!2665 (reg!8940 lt!1014519))))))

(assert (=> b!2861547 (=> (not res!1188190) (not e!1811568))))

(declare-fun b!2861548 () Bool)

(assert (=> b!2861548 (= e!1811571 call!184639)))

(assert (= (and d!827237 (not res!1188191)) b!2861544))

(assert (= (and b!2861544 c!461233) b!2861547))

(assert (= (and b!2861544 (not c!461233)) b!2861543))

(assert (= (and b!2861547 res!1188190) b!2861546))

(assert (= (and b!2861543 c!461232) b!2861545))

(assert (= (and b!2861543 (not c!461232)) b!2861541))

(assert (= (and b!2861545 res!1188193) b!2861548))

(assert (= (and b!2861541 (not res!1188194)) b!2861540))

(assert (= (and b!2861540 res!1188192) b!2861542))

(assert (= (or b!2861548 b!2861542) bm!184633))

(assert (= (or b!2861545 b!2861540) bm!184634))

(assert (= (or b!2861546 bm!184634) bm!184635))

(declare-fun m!3281259 () Bool)

(assert (=> bm!184633 m!3281259))

(declare-fun m!3281261 () Bool)

(assert (=> bm!184635 m!3281261))

(declare-fun m!3281263 () Bool)

(assert (=> b!2861547 m!3281263))

(assert (=> b!2861444 d!827237))

(declare-fun b!2861599 () Bool)

(declare-fun e!1811603 () Regex!8611)

(declare-fun e!1811602 () Regex!8611)

(assert (=> b!2861599 (= e!1811603 e!1811602)))

(declare-fun c!461260 () Bool)

(assert (=> b!2861599 (= c!461260 ((_ is Star!8611) r!23423))))

(declare-fun b!2861600 () Bool)

(declare-fun e!1811599 () Regex!8611)

(declare-fun call!184661 () Regex!8611)

(assert (=> b!2861600 (= e!1811599 (Union!8611 (Concat!13932 call!184661 (regTwo!17734 r!23423)) EmptyLang!8611))))

(declare-fun b!2861601 () Bool)

(declare-fun call!184664 () Regex!8611)

(assert (=> b!2861601 (= e!1811602 (Concat!13932 call!184664 r!23423))))

(declare-fun b!2861602 () Bool)

(declare-fun c!461259 () Bool)

(assert (=> b!2861602 (= c!461259 (nullable!2665 (regOne!17734 r!23423)))))

(assert (=> b!2861602 (= e!1811602 e!1811599)))

(declare-fun b!2861603 () Bool)

(declare-fun c!461262 () Bool)

(assert (=> b!2861603 (= c!461262 ((_ is Union!8611) r!23423))))

(declare-fun e!1811601 () Regex!8611)

(assert (=> b!2861603 (= e!1811601 e!1811603)))

(declare-fun b!2861604 () Bool)

(declare-fun e!1811600 () Regex!8611)

(assert (=> b!2861604 (= e!1811600 EmptyLang!8611)))

(declare-fun b!2861605 () Bool)

(declare-fun call!184662 () Regex!8611)

(declare-fun call!184663 () Regex!8611)

(assert (=> b!2861605 (= e!1811603 (Union!8611 call!184662 call!184663))))

(declare-fun bm!184656 () Bool)

(assert (=> bm!184656 (= call!184664 call!184663)))

(declare-fun b!2861606 () Bool)

(assert (=> b!2861606 (= e!1811601 (ite (= (h!39504 prefix!1470) (c!461202 r!23423)) EmptyExpr!8611 EmptyLang!8611))))

(declare-fun bm!184657 () Bool)

(assert (=> bm!184657 (= call!184663 (derivativeStep!2300 (ite c!461262 (regTwo!17735 r!23423) (ite c!461260 (reg!8940 r!23423) (ite c!461259 (regTwo!17734 r!23423) (regOne!17734 r!23423)))) (h!39504 prefix!1470)))))

(declare-fun b!2861607 () Bool)

(assert (=> b!2861607 (= e!1811599 (Union!8611 (Concat!13932 call!184662 (regTwo!17734 r!23423)) call!184661))))

(declare-fun bm!184658 () Bool)

(assert (=> bm!184658 (= call!184662 (derivativeStep!2300 (ite c!461262 (regOne!17735 r!23423) (regOne!17734 r!23423)) (h!39504 prefix!1470)))))

(declare-fun b!2861608 () Bool)

(assert (=> b!2861608 (= e!1811600 e!1811601)))

(declare-fun c!461263 () Bool)

(assert (=> b!2861608 (= c!461263 ((_ is ElementMatch!8611) r!23423))))

(declare-fun d!827241 () Bool)

(declare-fun lt!1014533 () Regex!8611)

(assert (=> d!827241 (validRegex!3481 lt!1014533)))

(assert (=> d!827241 (= lt!1014533 e!1811600)))

(declare-fun c!461261 () Bool)

(assert (=> d!827241 (= c!461261 (or ((_ is EmptyExpr!8611) r!23423) ((_ is EmptyLang!8611) r!23423)))))

(assert (=> d!827241 (validRegex!3481 r!23423)))

(assert (=> d!827241 (= (derivativeStep!2300 r!23423 (h!39504 prefix!1470)) lt!1014533)))

(declare-fun bm!184659 () Bool)

(assert (=> bm!184659 (= call!184661 call!184664)))

(assert (= (and d!827241 c!461261) b!2861604))

(assert (= (and d!827241 (not c!461261)) b!2861608))

(assert (= (and b!2861608 c!461263) b!2861606))

(assert (= (and b!2861608 (not c!461263)) b!2861603))

(assert (= (and b!2861603 c!461262) b!2861605))

(assert (= (and b!2861603 (not c!461262)) b!2861599))

(assert (= (and b!2861599 c!461260) b!2861601))

(assert (= (and b!2861599 (not c!461260)) b!2861602))

(assert (= (and b!2861602 c!461259) b!2861607))

(assert (= (and b!2861602 (not c!461259)) b!2861600))

(assert (= (or b!2861607 b!2861600) bm!184659))

(assert (= (or b!2861601 bm!184659) bm!184656))

(assert (= (or b!2861605 bm!184656) bm!184657))

(assert (= (or b!2861605 b!2861607) bm!184658))

(declare-fun m!3281273 () Bool)

(assert (=> b!2861602 m!3281273))

(declare-fun m!3281275 () Bool)

(assert (=> bm!184657 m!3281275))

(declare-fun m!3281277 () Bool)

(assert (=> bm!184658 m!3281277))

(declare-fun m!3281279 () Bool)

(assert (=> d!827241 m!3281279))

(assert (=> d!827241 m!3281191))

(assert (=> b!2861444 d!827241))

(declare-fun e!1811609 () Bool)

(assert (=> b!2861438 (= tp!921278 e!1811609)))

(declare-fun b!2861631 () Bool)

(assert (=> b!2861631 (= e!1811609 tp_is_empty!14959)))

(declare-fun b!2861633 () Bool)

(declare-fun tp!921303 () Bool)

(assert (=> b!2861633 (= e!1811609 tp!921303)))

(declare-fun b!2861632 () Bool)

(declare-fun tp!921304 () Bool)

(declare-fun tp!921301 () Bool)

(assert (=> b!2861632 (= e!1811609 (and tp!921304 tp!921301))))

(declare-fun b!2861634 () Bool)

(declare-fun tp!921302 () Bool)

(declare-fun tp!921305 () Bool)

(assert (=> b!2861634 (= e!1811609 (and tp!921302 tp!921305))))

(assert (= (and b!2861438 ((_ is ElementMatch!8611) (regOne!17734 r!23423))) b!2861631))

(assert (= (and b!2861438 ((_ is Concat!13932) (regOne!17734 r!23423))) b!2861632))

(assert (= (and b!2861438 ((_ is Star!8611) (regOne!17734 r!23423))) b!2861633))

(assert (= (and b!2861438 ((_ is Union!8611) (regOne!17734 r!23423))) b!2861634))

(declare-fun e!1811611 () Bool)

(assert (=> b!2861438 (= tp!921276 e!1811611)))

(declare-fun b!2861639 () Bool)

(assert (=> b!2861639 (= e!1811611 tp_is_empty!14959)))

(declare-fun b!2861641 () Bool)

(declare-fun tp!921313 () Bool)

(assert (=> b!2861641 (= e!1811611 tp!921313)))

(declare-fun b!2861640 () Bool)

(declare-fun tp!921314 () Bool)

(declare-fun tp!921311 () Bool)

(assert (=> b!2861640 (= e!1811611 (and tp!921314 tp!921311))))

(declare-fun b!2861642 () Bool)

(declare-fun tp!921312 () Bool)

(declare-fun tp!921315 () Bool)

(assert (=> b!2861642 (= e!1811611 (and tp!921312 tp!921315))))

(assert (= (and b!2861438 ((_ is ElementMatch!8611) (regTwo!17734 r!23423))) b!2861639))

(assert (= (and b!2861438 ((_ is Concat!13932) (regTwo!17734 r!23423))) b!2861640))

(assert (= (and b!2861438 ((_ is Star!8611) (regTwo!17734 r!23423))) b!2861641))

(assert (= (and b!2861438 ((_ is Union!8611) (regTwo!17734 r!23423))) b!2861642))

(declare-fun b!2861655 () Bool)

(declare-fun e!1811616 () Bool)

(declare-fun tp!921328 () Bool)

(assert (=> b!2861655 (= e!1811616 (and tp_is_empty!14959 tp!921328))))

(assert (=> b!2861442 (= tp!921279 e!1811616)))

(assert (= (and b!2861442 ((_ is Cons!34084) (t!233243 prefix!1470))) b!2861655))

(declare-fun e!1811617 () Bool)

(assert (=> b!2861441 (= tp!921275 e!1811617)))

(declare-fun b!2861660 () Bool)

(assert (=> b!2861660 (= e!1811617 tp_is_empty!14959)))

(declare-fun b!2861662 () Bool)

(declare-fun tp!921331 () Bool)

(assert (=> b!2861662 (= e!1811617 tp!921331)))

(declare-fun b!2861661 () Bool)

(declare-fun tp!921332 () Bool)

(declare-fun tp!921329 () Bool)

(assert (=> b!2861661 (= e!1811617 (and tp!921332 tp!921329))))

(declare-fun b!2861663 () Bool)

(declare-fun tp!921330 () Bool)

(declare-fun tp!921333 () Bool)

(assert (=> b!2861663 (= e!1811617 (and tp!921330 tp!921333))))

(assert (= (and b!2861441 ((_ is ElementMatch!8611) (regOne!17735 r!23423))) b!2861660))

(assert (= (and b!2861441 ((_ is Concat!13932) (regOne!17735 r!23423))) b!2861661))

(assert (= (and b!2861441 ((_ is Star!8611) (regOne!17735 r!23423))) b!2861662))

(assert (= (and b!2861441 ((_ is Union!8611) (regOne!17735 r!23423))) b!2861663))

(declare-fun e!1811620 () Bool)

(assert (=> b!2861441 (= tp!921277 e!1811620)))

(declare-fun b!2861664 () Bool)

(assert (=> b!2861664 (= e!1811620 tp_is_empty!14959)))

(declare-fun b!2861666 () Bool)

(declare-fun tp!921338 () Bool)

(assert (=> b!2861666 (= e!1811620 tp!921338)))

(declare-fun b!2861665 () Bool)

(declare-fun tp!921339 () Bool)

(declare-fun tp!921336 () Bool)

(assert (=> b!2861665 (= e!1811620 (and tp!921339 tp!921336))))

(declare-fun b!2861667 () Bool)

(declare-fun tp!921337 () Bool)

(declare-fun tp!921340 () Bool)

(assert (=> b!2861667 (= e!1811620 (and tp!921337 tp!921340))))

(assert (= (and b!2861441 ((_ is ElementMatch!8611) (regTwo!17735 r!23423))) b!2861664))

(assert (= (and b!2861441 ((_ is Concat!13932) (regTwo!17735 r!23423))) b!2861665))

(assert (= (and b!2861441 ((_ is Star!8611) (regTwo!17735 r!23423))) b!2861666))

(assert (= (and b!2861441 ((_ is Union!8611) (regTwo!17735 r!23423))) b!2861667))

(declare-fun e!1811623 () Bool)

(assert (=> b!2861446 (= tp!921280 e!1811623)))

(declare-fun b!2861673 () Bool)

(assert (=> b!2861673 (= e!1811623 tp_is_empty!14959)))

(declare-fun b!2861675 () Bool)

(declare-fun tp!921349 () Bool)

(assert (=> b!2861675 (= e!1811623 tp!921349)))

(declare-fun b!2861674 () Bool)

(declare-fun tp!921350 () Bool)

(declare-fun tp!921347 () Bool)

(assert (=> b!2861674 (= e!1811623 (and tp!921350 tp!921347))))

(declare-fun b!2861676 () Bool)

(declare-fun tp!921348 () Bool)

(declare-fun tp!921351 () Bool)

(assert (=> b!2861676 (= e!1811623 (and tp!921348 tp!921351))))

(assert (= (and b!2861446 ((_ is ElementMatch!8611) (reg!8940 r!23423))) b!2861673))

(assert (= (and b!2861446 ((_ is Concat!13932) (reg!8940 r!23423))) b!2861674))

(assert (= (and b!2861446 ((_ is Star!8611) (reg!8940 r!23423))) b!2861675))

(assert (= (and b!2861446 ((_ is Union!8611) (reg!8940 r!23423))) b!2861676))

(check-sat (not b!2861662) (not bm!184658) (not b!2861674) (not b!2861547) (not b!2861602) (not b!2861632) (not b!2861663) (not bm!184633) (not b!2861522) (not b!2861530) (not b!2861634) (not b!2861655) (not b!2861666) (not b!2861642) (not bm!184627) (not b!2861676) (not b!2861640) (not b!2861667) (not b!2861529) (not b!2861661) (not b!2861641) (not b!2861458) (not b!2861526) (not bm!184629) (not d!827241) (not bm!184635) (not b!2861633) tp_is_empty!14959 (not b!2861665) (not b!2861456) (not b!2861675) (not b!2861511) (not d!827233) (not bm!184657) (not d!827217))
(check-sat)
