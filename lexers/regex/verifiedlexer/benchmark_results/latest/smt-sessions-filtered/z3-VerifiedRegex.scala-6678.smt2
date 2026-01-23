; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350590 () Bool)

(assert start!350590)

(declare-fun res!1512967 () Bool)

(declare-fun e!2304474 () Bool)

(assert (=> start!350590 (=> (not res!1512967) (not e!2304474))))

(declare-datatypes ((C!21976 0))(
  ( (C!21977 (val!13036 Int)) )
))
(declare-datatypes ((Regex!10895 0))(
  ( (ElementMatch!10895 (c!643967 C!21976)) (Concat!17166 (regOne!22302 Regex!10895) (regTwo!22302 Regex!10895)) (EmptyExpr!10895) (Star!10895 (reg!11224 Regex!10895)) (EmptyLang!10895) (Union!10895 (regOne!22303 Regex!10895) (regTwo!22303 Regex!10895)) )
))
(declare-fun r!26968 () Regex!10895)

(declare-fun validRegex!5002 (Regex!10895) Bool)

(assert (=> start!350590 (= res!1512967 (validRegex!5002 r!26968))))

(assert (=> start!350590 e!2304474))

(declare-fun e!2304473 () Bool)

(assert (=> start!350590 e!2304473))

(declare-fun tp_is_empty!18805 () Bool)

(assert (=> start!350590 tp_is_empty!18805))

(declare-fun b!3723039 () Bool)

(assert (=> b!3723039 (= e!2304473 tp_is_empty!18805)))

(declare-fun b!3723040 () Bool)

(declare-fun res!1512968 () Bool)

(assert (=> b!3723040 (=> (not res!1512968) (not e!2304474))))

(declare-fun cNot!42 () C!21976)

(declare-datatypes ((List!39776 0))(
  ( (Nil!39652) (Cons!39652 (h!45072 C!21976) (t!302459 List!39776)) )
))
(declare-fun contains!7988 (List!39776 C!21976) Bool)

(declare-fun usedCharacters!1158 (Regex!10895) List!39776)

(assert (=> b!3723040 (= res!1512968 (not (contains!7988 (usedCharacters!1158 r!26968) cNot!42)))))

(declare-fun b!3723041 () Bool)

(declare-fun tp!1132382 () Bool)

(declare-fun tp!1132384 () Bool)

(assert (=> b!3723041 (= e!2304473 (and tp!1132382 tp!1132384))))

(declare-fun b!3723042 () Bool)

(declare-fun tp!1132380 () Bool)

(declare-fun tp!1132381 () Bool)

(assert (=> b!3723042 (= e!2304473 (and tp!1132380 tp!1132381))))

(declare-fun b!3723043 () Bool)

(declare-fun RegexPrimitiveSize!137 (Regex!10895) Int)

(assert (=> b!3723043 (= e!2304474 (< (RegexPrimitiveSize!137 r!26968) 0))))

(declare-fun b!3723044 () Bool)

(declare-fun tp!1132383 () Bool)

(assert (=> b!3723044 (= e!2304473 tp!1132383)))

(assert (= (and start!350590 res!1512967) b!3723040))

(assert (= (and b!3723040 res!1512968) b!3723043))

(get-info :version)

(assert (= (and start!350590 ((_ is ElementMatch!10895) r!26968)) b!3723039))

(assert (= (and start!350590 ((_ is Concat!17166) r!26968)) b!3723042))

(assert (= (and start!350590 ((_ is Star!10895) r!26968)) b!3723044))

(assert (= (and start!350590 ((_ is Union!10895) r!26968)) b!3723041))

(declare-fun m!4226633 () Bool)

(assert (=> start!350590 m!4226633))

(declare-fun m!4226635 () Bool)

(assert (=> b!3723040 m!4226635))

(assert (=> b!3723040 m!4226635))

(declare-fun m!4226637 () Bool)

(assert (=> b!3723040 m!4226637))

(declare-fun m!4226639 () Bool)

(assert (=> b!3723043 m!4226639))

(check-sat (not b!3723041) tp_is_empty!18805 (not b!3723042) (not b!3723040) (not start!350590) (not b!3723043) (not b!3723044))
(check-sat)
(get-model)

(declare-fun d!1089555 () Bool)

(declare-fun lt!1298244 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5752 (List!39776) (InoxSet C!21976))

(assert (=> d!1089555 (= lt!1298244 (select (content!5752 (usedCharacters!1158 r!26968)) cNot!42))))

(declare-fun e!2304486 () Bool)

(assert (=> d!1089555 (= lt!1298244 e!2304486)))

(declare-fun res!1512980 () Bool)

(assert (=> d!1089555 (=> (not res!1512980) (not e!2304486))))

(assert (=> d!1089555 (= res!1512980 ((_ is Cons!39652) (usedCharacters!1158 r!26968)))))

(assert (=> d!1089555 (= (contains!7988 (usedCharacters!1158 r!26968) cNot!42) lt!1298244)))

(declare-fun b!3723055 () Bool)

(declare-fun e!2304485 () Bool)

(assert (=> b!3723055 (= e!2304486 e!2304485)))

(declare-fun res!1512979 () Bool)

(assert (=> b!3723055 (=> res!1512979 e!2304485)))

(assert (=> b!3723055 (= res!1512979 (= (h!45072 (usedCharacters!1158 r!26968)) cNot!42))))

(declare-fun b!3723056 () Bool)

(assert (=> b!3723056 (= e!2304485 (contains!7988 (t!302459 (usedCharacters!1158 r!26968)) cNot!42))))

(assert (= (and d!1089555 res!1512980) b!3723055))

(assert (= (and b!3723055 (not res!1512979)) b!3723056))

(assert (=> d!1089555 m!4226635))

(declare-fun m!4226647 () Bool)

(assert (=> d!1089555 m!4226647))

(declare-fun m!4226649 () Bool)

(assert (=> d!1089555 m!4226649))

(declare-fun m!4226651 () Bool)

(assert (=> b!3723056 m!4226651))

(assert (=> b!3723040 d!1089555))

(declare-fun call!270780 () List!39776)

(declare-fun c!643991 () Bool)

(declare-fun call!270778 () List!39776)

(declare-fun bm!270772 () Bool)

(declare-fun call!270777 () List!39776)

(declare-fun ++!9818 (List!39776 List!39776) List!39776)

(assert (=> bm!270772 (= call!270778 (++!9818 (ite c!643991 call!270780 call!270777) (ite c!643991 call!270777 call!270780)))))

(declare-fun bm!270773 () Bool)

(declare-fun call!270779 () List!39776)

(assert (=> bm!270773 (= call!270777 call!270779)))

(declare-fun b!3723097 () Bool)

(declare-fun e!2304508 () List!39776)

(assert (=> b!3723097 (= e!2304508 call!270778)))

(declare-fun b!3723098 () Bool)

(declare-fun e!2304507 () List!39776)

(declare-fun e!2304510 () List!39776)

(assert (=> b!3723098 (= e!2304507 e!2304510)))

(declare-fun c!643989 () Bool)

(assert (=> b!3723098 (= c!643989 ((_ is ElementMatch!10895) r!26968))))

(declare-fun bm!270774 () Bool)

(declare-fun c!643990 () Bool)

(assert (=> bm!270774 (= call!270779 (usedCharacters!1158 (ite c!643990 (reg!11224 r!26968) (ite c!643991 (regTwo!22303 r!26968) (regOne!22302 r!26968)))))))

(declare-fun b!3723099 () Bool)

(declare-fun e!2304509 () List!39776)

(assert (=> b!3723099 (= e!2304509 e!2304508)))

(assert (=> b!3723099 (= c!643991 ((_ is Union!10895) r!26968))))

(declare-fun b!3723100 () Bool)

(assert (=> b!3723100 (= e!2304507 Nil!39652)))

(declare-fun b!3723101 () Bool)

(assert (=> b!3723101 (= e!2304508 call!270778)))

(declare-fun d!1089559 () Bool)

(declare-fun c!643988 () Bool)

(assert (=> d!1089559 (= c!643988 (or ((_ is EmptyExpr!10895) r!26968) ((_ is EmptyLang!10895) r!26968)))))

(assert (=> d!1089559 (= (usedCharacters!1158 r!26968) e!2304507)))

(declare-fun b!3723102 () Bool)

(assert (=> b!3723102 (= e!2304509 call!270779)))

(declare-fun b!3723103 () Bool)

(assert (=> b!3723103 (= e!2304510 (Cons!39652 (c!643967 r!26968) Nil!39652))))

(declare-fun bm!270775 () Bool)

(assert (=> bm!270775 (= call!270780 (usedCharacters!1158 (ite c!643991 (regOne!22303 r!26968) (regTwo!22302 r!26968))))))

(declare-fun b!3723104 () Bool)

(assert (=> b!3723104 (= c!643990 ((_ is Star!10895) r!26968))))

(assert (=> b!3723104 (= e!2304510 e!2304509)))

(assert (= (and d!1089559 c!643988) b!3723100))

(assert (= (and d!1089559 (not c!643988)) b!3723098))

(assert (= (and b!3723098 c!643989) b!3723103))

(assert (= (and b!3723098 (not c!643989)) b!3723104))

(assert (= (and b!3723104 c!643990) b!3723102))

(assert (= (and b!3723104 (not c!643990)) b!3723099))

(assert (= (and b!3723099 c!643991) b!3723101))

(assert (= (and b!3723099 (not c!643991)) b!3723097))

(assert (= (or b!3723101 b!3723097) bm!270775))

(assert (= (or b!3723101 b!3723097) bm!270773))

(assert (= (or b!3723101 b!3723097) bm!270772))

(assert (= (or b!3723102 bm!270773) bm!270774))

(declare-fun m!4226659 () Bool)

(assert (=> bm!270772 m!4226659))

(declare-fun m!4226661 () Bool)

(assert (=> bm!270774 m!4226661))

(declare-fun m!4226663 () Bool)

(assert (=> bm!270775 m!4226663))

(assert (=> b!3723040 d!1089559))

(declare-fun call!270798 () Bool)

(declare-fun bm!270791 () Bool)

(declare-fun c!644002 () Bool)

(declare-fun c!644003 () Bool)

(assert (=> bm!270791 (= call!270798 (validRegex!5002 (ite c!644003 (reg!11224 r!26968) (ite c!644002 (regTwo!22303 r!26968) (regTwo!22302 r!26968)))))))

(declare-fun b!3723150 () Bool)

(declare-fun e!2304550 () Bool)

(declare-fun e!2304552 () Bool)

(assert (=> b!3723150 (= e!2304550 e!2304552)))

(declare-fun res!1513010 () Bool)

(declare-fun nullable!3802 (Regex!10895) Bool)

(assert (=> b!3723150 (= res!1513010 (not (nullable!3802 (reg!11224 r!26968))))))

(assert (=> b!3723150 (=> (not res!1513010) (not e!2304552))))

(declare-fun b!3723151 () Bool)

(declare-fun e!2304551 () Bool)

(declare-fun call!270796 () Bool)

(assert (=> b!3723151 (= e!2304551 call!270796)))

(declare-fun b!3723152 () Bool)

(declare-fun e!2304546 () Bool)

(assert (=> b!3723152 (= e!2304546 e!2304550)))

(assert (=> b!3723152 (= c!644003 ((_ is Star!10895) r!26968))))

(declare-fun d!1089563 () Bool)

(declare-fun res!1513008 () Bool)

(assert (=> d!1089563 (=> res!1513008 e!2304546)))

(assert (=> d!1089563 (= res!1513008 ((_ is ElementMatch!10895) r!26968))))

(assert (=> d!1089563 (= (validRegex!5002 r!26968) e!2304546)))

(declare-fun b!3723153 () Bool)

(assert (=> b!3723153 (= e!2304552 call!270798)))

(declare-fun bm!270792 () Bool)

(declare-fun call!270797 () Bool)

(assert (=> bm!270792 (= call!270797 (validRegex!5002 (ite c!644002 (regOne!22303 r!26968) (regOne!22302 r!26968))))))

(declare-fun b!3723154 () Bool)

(declare-fun e!2304547 () Bool)

(assert (=> b!3723154 (= e!2304547 e!2304551)))

(declare-fun res!1513007 () Bool)

(assert (=> b!3723154 (=> (not res!1513007) (not e!2304551))))

(assert (=> b!3723154 (= res!1513007 call!270797)))

(declare-fun b!3723155 () Bool)

(declare-fun res!1513006 () Bool)

(assert (=> b!3723155 (=> res!1513006 e!2304547)))

(assert (=> b!3723155 (= res!1513006 (not ((_ is Concat!17166) r!26968)))))

(declare-fun e!2304549 () Bool)

(assert (=> b!3723155 (= e!2304549 e!2304547)))

(declare-fun b!3723156 () Bool)

(declare-fun res!1513009 () Bool)

(declare-fun e!2304548 () Bool)

(assert (=> b!3723156 (=> (not res!1513009) (not e!2304548))))

(assert (=> b!3723156 (= res!1513009 call!270797)))

(assert (=> b!3723156 (= e!2304549 e!2304548)))

(declare-fun b!3723157 () Bool)

(assert (=> b!3723157 (= e!2304550 e!2304549)))

(assert (=> b!3723157 (= c!644002 ((_ is Union!10895) r!26968))))

(declare-fun b!3723158 () Bool)

(assert (=> b!3723158 (= e!2304548 call!270796)))

(declare-fun bm!270793 () Bool)

(assert (=> bm!270793 (= call!270796 call!270798)))

(assert (= (and d!1089563 (not res!1513008)) b!3723152))

(assert (= (and b!3723152 c!644003) b!3723150))

(assert (= (and b!3723152 (not c!644003)) b!3723157))

(assert (= (and b!3723150 res!1513010) b!3723153))

(assert (= (and b!3723157 c!644002) b!3723156))

(assert (= (and b!3723157 (not c!644002)) b!3723155))

(assert (= (and b!3723156 res!1513009) b!3723158))

(assert (= (and b!3723155 (not res!1513006)) b!3723154))

(assert (= (and b!3723154 res!1513007) b!3723151))

(assert (= (or b!3723158 b!3723151) bm!270793))

(assert (= (or b!3723156 b!3723154) bm!270792))

(assert (= (or b!3723153 bm!270793) bm!270791))

(declare-fun m!4226671 () Bool)

(assert (=> bm!270791 m!4226671))

(declare-fun m!4226673 () Bool)

(assert (=> b!3723150 m!4226673))

(declare-fun m!4226675 () Bool)

(assert (=> bm!270792 m!4226675))

(assert (=> start!350590 d!1089563))

(declare-fun b!3723219 () Bool)

(declare-fun c!644029 () Bool)

(assert (=> b!3723219 (= c!644029 ((_ is EmptyLang!10895) r!26968))))

(declare-fun e!2304582 () Int)

(declare-fun e!2304580 () Int)

(assert (=> b!3723219 (= e!2304582 e!2304580)))

(declare-fun bm!270809 () Bool)

(declare-fun call!270814 () Int)

(declare-fun c!644032 () Bool)

(declare-fun c!644031 () Bool)

(assert (=> bm!270809 (= call!270814 (RegexPrimitiveSize!137 (ite c!644031 (regOne!22302 r!26968) (ite c!644032 (reg!11224 r!26968) (regOne!22303 r!26968)))))))

(declare-fun b!3723220 () Bool)

(declare-fun e!2304581 () Int)

(declare-fun call!270815 () Int)

(assert (=> b!3723220 (= e!2304581 (+ 1 call!270814 call!270815))))

(declare-fun b!3723221 () Bool)

(declare-fun e!2304584 () Int)

(assert (=> b!3723221 (= e!2304584 0)))

(declare-fun bm!270810 () Bool)

(assert (=> bm!270810 (= call!270815 (RegexPrimitiveSize!137 (ite c!644031 (regTwo!22302 r!26968) (regTwo!22303 r!26968))))))

(declare-fun b!3723222 () Bool)

(assert (=> b!3723222 (= e!2304584 e!2304582)))

(assert (=> b!3723222 (= c!644032 ((_ is Star!10895) r!26968))))

(declare-fun d!1089567 () Bool)

(declare-fun lt!1298250 () Int)

(assert (=> d!1089567 (>= lt!1298250 0)))

(declare-fun e!2304583 () Int)

(assert (=> d!1089567 (= lt!1298250 e!2304583)))

(declare-fun c!644030 () Bool)

(assert (=> d!1089567 (= c!644030 ((_ is ElementMatch!10895) r!26968))))

(assert (=> d!1089567 (= (RegexPrimitiveSize!137 r!26968) lt!1298250)))

(declare-fun b!3723223 () Bool)

(declare-fun call!270816 () Int)

(assert (=> b!3723223 (= e!2304580 (+ 1 call!270816 call!270815))))

(declare-fun b!3723224 () Bool)

(assert (=> b!3723224 (= e!2304580 0)))

(declare-fun bm!270811 () Bool)

(assert (=> bm!270811 (= call!270816 call!270814)))

(declare-fun b!3723225 () Bool)

(declare-fun c!644033 () Bool)

(assert (=> b!3723225 (= c!644033 ((_ is EmptyExpr!10895) r!26968))))

(assert (=> b!3723225 (= e!2304581 e!2304584)))

(declare-fun b!3723226 () Bool)

(assert (=> b!3723226 (= e!2304582 (+ 1 call!270816))))

(declare-fun b!3723227 () Bool)

(assert (=> b!3723227 (= e!2304583 e!2304581)))

(assert (=> b!3723227 (= c!644031 ((_ is Concat!17166) r!26968))))

(declare-fun b!3723228 () Bool)

(assert (=> b!3723228 (= e!2304583 1)))

(assert (= (and d!1089567 c!644030) b!3723228))

(assert (= (and d!1089567 (not c!644030)) b!3723227))

(assert (= (and b!3723227 c!644031) b!3723220))

(assert (= (and b!3723227 (not c!644031)) b!3723225))

(assert (= (and b!3723225 c!644033) b!3723221))

(assert (= (and b!3723225 (not c!644033)) b!3723222))

(assert (= (and b!3723222 c!644032) b!3723226))

(assert (= (and b!3723222 (not c!644032)) b!3723219))

(assert (= (and b!3723219 c!644029) b!3723224))

(assert (= (and b!3723219 (not c!644029)) b!3723223))

(assert (= (or b!3723226 b!3723223) bm!270811))

(assert (= (or b!3723220 bm!270811) bm!270809))

(assert (= (or b!3723220 b!3723223) bm!270810))

(declare-fun m!4226681 () Bool)

(assert (=> bm!270809 m!4226681))

(declare-fun m!4226683 () Bool)

(assert (=> bm!270810 m!4226683))

(assert (=> b!3723043 d!1089567))

(declare-fun b!3723259 () Bool)

(declare-fun e!2304592 () Bool)

(assert (=> b!3723259 (= e!2304592 tp_is_empty!18805)))

(declare-fun b!3723262 () Bool)

(declare-fun tp!1132433 () Bool)

(declare-fun tp!1132430 () Bool)

(assert (=> b!3723262 (= e!2304592 (and tp!1132433 tp!1132430))))

(declare-fun b!3723261 () Bool)

(declare-fun tp!1132434 () Bool)

(assert (=> b!3723261 (= e!2304592 tp!1132434)))

(declare-fun b!3723260 () Bool)

(declare-fun tp!1132431 () Bool)

(declare-fun tp!1132432 () Bool)

(assert (=> b!3723260 (= e!2304592 (and tp!1132431 tp!1132432))))

(assert (=> b!3723042 (= tp!1132380 e!2304592)))

(assert (= (and b!3723042 ((_ is ElementMatch!10895) (regOne!22302 r!26968))) b!3723259))

(assert (= (and b!3723042 ((_ is Concat!17166) (regOne!22302 r!26968))) b!3723260))

(assert (= (and b!3723042 ((_ is Star!10895) (regOne!22302 r!26968))) b!3723261))

(assert (= (and b!3723042 ((_ is Union!10895) (regOne!22302 r!26968))) b!3723262))

(declare-fun b!3723263 () Bool)

(declare-fun e!2304593 () Bool)

(assert (=> b!3723263 (= e!2304593 tp_is_empty!18805)))

(declare-fun b!3723266 () Bool)

(declare-fun tp!1132438 () Bool)

(declare-fun tp!1132435 () Bool)

(assert (=> b!3723266 (= e!2304593 (and tp!1132438 tp!1132435))))

(declare-fun b!3723265 () Bool)

(declare-fun tp!1132439 () Bool)

(assert (=> b!3723265 (= e!2304593 tp!1132439)))

(declare-fun b!3723264 () Bool)

(declare-fun tp!1132436 () Bool)

(declare-fun tp!1132437 () Bool)

(assert (=> b!3723264 (= e!2304593 (and tp!1132436 tp!1132437))))

(assert (=> b!3723042 (= tp!1132381 e!2304593)))

(assert (= (and b!3723042 ((_ is ElementMatch!10895) (regTwo!22302 r!26968))) b!3723263))

(assert (= (and b!3723042 ((_ is Concat!17166) (regTwo!22302 r!26968))) b!3723264))

(assert (= (and b!3723042 ((_ is Star!10895) (regTwo!22302 r!26968))) b!3723265))

(assert (= (and b!3723042 ((_ is Union!10895) (regTwo!22302 r!26968))) b!3723266))

(declare-fun b!3723267 () Bool)

(declare-fun e!2304594 () Bool)

(assert (=> b!3723267 (= e!2304594 tp_is_empty!18805)))

(declare-fun b!3723270 () Bool)

(declare-fun tp!1132443 () Bool)

(declare-fun tp!1132440 () Bool)

(assert (=> b!3723270 (= e!2304594 (and tp!1132443 tp!1132440))))

(declare-fun b!3723269 () Bool)

(declare-fun tp!1132444 () Bool)

(assert (=> b!3723269 (= e!2304594 tp!1132444)))

(declare-fun b!3723268 () Bool)

(declare-fun tp!1132441 () Bool)

(declare-fun tp!1132442 () Bool)

(assert (=> b!3723268 (= e!2304594 (and tp!1132441 tp!1132442))))

(assert (=> b!3723041 (= tp!1132382 e!2304594)))

(assert (= (and b!3723041 ((_ is ElementMatch!10895) (regOne!22303 r!26968))) b!3723267))

(assert (= (and b!3723041 ((_ is Concat!17166) (regOne!22303 r!26968))) b!3723268))

(assert (= (and b!3723041 ((_ is Star!10895) (regOne!22303 r!26968))) b!3723269))

(assert (= (and b!3723041 ((_ is Union!10895) (regOne!22303 r!26968))) b!3723270))

(declare-fun b!3723271 () Bool)

(declare-fun e!2304595 () Bool)

(assert (=> b!3723271 (= e!2304595 tp_is_empty!18805)))

(declare-fun b!3723274 () Bool)

(declare-fun tp!1132448 () Bool)

(declare-fun tp!1132445 () Bool)

(assert (=> b!3723274 (= e!2304595 (and tp!1132448 tp!1132445))))

(declare-fun b!3723273 () Bool)

(declare-fun tp!1132449 () Bool)

(assert (=> b!3723273 (= e!2304595 tp!1132449)))

(declare-fun b!3723272 () Bool)

(declare-fun tp!1132446 () Bool)

(declare-fun tp!1132447 () Bool)

(assert (=> b!3723272 (= e!2304595 (and tp!1132446 tp!1132447))))

(assert (=> b!3723041 (= tp!1132384 e!2304595)))

(assert (= (and b!3723041 ((_ is ElementMatch!10895) (regTwo!22303 r!26968))) b!3723271))

(assert (= (and b!3723041 ((_ is Concat!17166) (regTwo!22303 r!26968))) b!3723272))

(assert (= (and b!3723041 ((_ is Star!10895) (regTwo!22303 r!26968))) b!3723273))

(assert (= (and b!3723041 ((_ is Union!10895) (regTwo!22303 r!26968))) b!3723274))

(declare-fun b!3723275 () Bool)

(declare-fun e!2304596 () Bool)

(assert (=> b!3723275 (= e!2304596 tp_is_empty!18805)))

(declare-fun b!3723278 () Bool)

(declare-fun tp!1132453 () Bool)

(declare-fun tp!1132450 () Bool)

(assert (=> b!3723278 (= e!2304596 (and tp!1132453 tp!1132450))))

(declare-fun b!3723277 () Bool)

(declare-fun tp!1132454 () Bool)

(assert (=> b!3723277 (= e!2304596 tp!1132454)))

(declare-fun b!3723276 () Bool)

(declare-fun tp!1132451 () Bool)

(declare-fun tp!1132452 () Bool)

(assert (=> b!3723276 (= e!2304596 (and tp!1132451 tp!1132452))))

(assert (=> b!3723044 (= tp!1132383 e!2304596)))

(assert (= (and b!3723044 ((_ is ElementMatch!10895) (reg!11224 r!26968))) b!3723275))

(assert (= (and b!3723044 ((_ is Concat!17166) (reg!11224 r!26968))) b!3723276))

(assert (= (and b!3723044 ((_ is Star!10895) (reg!11224 r!26968))) b!3723277))

(assert (= (and b!3723044 ((_ is Union!10895) (reg!11224 r!26968))) b!3723278))

(check-sat (not bm!270774) (not b!3723262) (not bm!270809) (not b!3723276) (not b!3723278) (not b!3723150) (not d!1089555) (not bm!270810) (not b!3723265) (not bm!270775) (not b!3723277) (not b!3723269) tp_is_empty!18805 (not b!3723056) (not bm!270791) (not b!3723264) (not b!3723273) (not bm!270772) (not b!3723272) (not b!3723261) (not b!3723268) (not b!3723274) (not b!3723270) (not b!3723266) (not bm!270792) (not b!3723260))
(check-sat)
