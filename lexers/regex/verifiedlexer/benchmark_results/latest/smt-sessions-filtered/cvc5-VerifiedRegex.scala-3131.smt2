; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184484 () Bool)

(assert start!184484)

(declare-fun b!1848579 () Bool)

(assert (=> b!1848579 true))

(assert (=> b!1848579 true))

(declare-fun e!1181149 () Bool)

(declare-fun e!1181147 () Bool)

(assert (=> b!1848579 (= e!1181149 (not e!1181147))))

(declare-fun res!830018 () Bool)

(assert (=> b!1848579 (=> res!830018 e!1181147)))

(declare-fun lambda!73095 () Int)

(declare-fun Exists!968 (Int) Bool)

(assert (=> b!1848579 (= res!830018 (not (Exists!968 lambda!73095)))))

(assert (=> b!1848579 (Exists!968 lambda!73095)))

(declare-datatypes ((Unit!35103 0))(
  ( (Unit!35104) )
))
(declare-fun lt!715256 () Unit!35103)

(declare-datatypes ((C!10178 0))(
  ( (C!10179 (val!5815 Int)) )
))
(declare-datatypes ((Regex!5014 0))(
  ( (ElementMatch!5014 (c!301767 C!10178)) (Concat!8792 (regOne!10540 Regex!5014) (regTwo!10540 Regex!5014)) (EmptyExpr!5014) (Star!5014 (reg!5343 Regex!5014)) (EmptyLang!5014) (Union!5014 (regOne!10541 Regex!5014) (regTwo!10541 Regex!5014)) )
))
(declare-fun r!26091 () Regex!5014)

(declare-datatypes ((List!20495 0))(
  ( (Nil!20423) (Cons!20423 (h!25824 C!10178) (t!172268 List!20495)) )
))
(declare-fun prefix!1614 () List!20495)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!286 (Regex!5014 List!20495) Unit!35103)

(assert (=> b!1848579 (= lt!715256 (lemmaPrefixMatchThenExistsStringThatMatches!286 r!26091 prefix!1614))))

(declare-fun b!1848580 () Bool)

(declare-fun res!830021 () Bool)

(assert (=> b!1848580 (=> (not res!830021) (not e!1181149))))

(declare-fun c!13459 () C!10178)

(declare-fun contains!3779 (List!20495 C!10178) Bool)

(assert (=> b!1848580 (= res!830021 (contains!3779 prefix!1614 c!13459))))

(declare-fun b!1848581 () Bool)

(declare-fun e!1181146 () Bool)

(declare-fun tp!522732 () Bool)

(declare-fun tp!522737 () Bool)

(assert (=> b!1848581 (= e!1181146 (and tp!522732 tp!522737))))

(declare-fun b!1848582 () Bool)

(declare-fun res!830020 () Bool)

(assert (=> b!1848582 (=> (not res!830020) (not e!1181149))))

(declare-fun usedCharacters!319 (Regex!5014) List!20495)

(assert (=> b!1848582 (= res!830020 (not (contains!3779 (usedCharacters!319 r!26091) c!13459)))))

(declare-fun b!1848583 () Bool)

(declare-fun e!1181150 () Bool)

(declare-fun tp_is_empty!8477 () Bool)

(declare-fun tp!522733 () Bool)

(assert (=> b!1848583 (= e!1181150 (and tp_is_empty!8477 tp!522733))))

(declare-fun b!1848584 () Bool)

(declare-fun e!1181148 () Bool)

(assert (=> b!1848584 (= e!1181147 e!1181148)))

(declare-fun res!830022 () Bool)

(assert (=> b!1848584 (=> res!830022 e!1181148)))

(declare-fun lt!715255 () List!20495)

(declare-fun matchR!2451 (Regex!5014 List!20495) Bool)

(assert (=> b!1848584 (= res!830022 (not (matchR!2451 r!26091 lt!715255)))))

(declare-fun pickWitness!265 (Int) List!20495)

(assert (=> b!1848584 (= lt!715255 (pickWitness!265 lambda!73095))))

(declare-fun b!1848585 () Bool)

(declare-fun isPrefix!1887 (List!20495 List!20495) Bool)

(assert (=> b!1848585 (= e!1181148 (isPrefix!1887 prefix!1614 lt!715255))))

(declare-fun b!1848586 () Bool)

(assert (=> b!1848586 (= e!1181146 tp_is_empty!8477)))

(declare-fun res!830019 () Bool)

(assert (=> start!184484 (=> (not res!830019) (not e!1181149))))

(declare-fun validRegex!2058 (Regex!5014) Bool)

(assert (=> start!184484 (= res!830019 (validRegex!2058 r!26091))))

(assert (=> start!184484 e!1181149))

(assert (=> start!184484 e!1181146))

(assert (=> start!184484 e!1181150))

(assert (=> start!184484 tp_is_empty!8477))

(declare-fun b!1848587 () Bool)

(declare-fun res!830017 () Bool)

(assert (=> b!1848587 (=> (not res!830017) (not e!1181149))))

(declare-fun prefixMatch!791 (Regex!5014 List!20495) Bool)

(assert (=> b!1848587 (= res!830017 (prefixMatch!791 r!26091 prefix!1614))))

(declare-fun b!1848588 () Bool)

(declare-fun tp!522736 () Bool)

(declare-fun tp!522734 () Bool)

(assert (=> b!1848588 (= e!1181146 (and tp!522736 tp!522734))))

(declare-fun b!1848589 () Bool)

(declare-fun tp!522735 () Bool)

(assert (=> b!1848589 (= e!1181146 tp!522735)))

(assert (= (and start!184484 res!830019) b!1848580))

(assert (= (and b!1848580 res!830021) b!1848582))

(assert (= (and b!1848582 res!830020) b!1848587))

(assert (= (and b!1848587 res!830017) b!1848579))

(assert (= (and b!1848579 (not res!830018)) b!1848584))

(assert (= (and b!1848584 (not res!830022)) b!1848585))

(assert (= (and start!184484 (is-ElementMatch!5014 r!26091)) b!1848586))

(assert (= (and start!184484 (is-Concat!8792 r!26091)) b!1848581))

(assert (= (and start!184484 (is-Star!5014 r!26091)) b!1848589))

(assert (= (and start!184484 (is-Union!5014 r!26091)) b!1848588))

(assert (= (and start!184484 (is-Cons!20423 prefix!1614)) b!1848583))

(declare-fun m!2276193 () Bool)

(assert (=> b!1848587 m!2276193))

(declare-fun m!2276195 () Bool)

(assert (=> b!1848584 m!2276195))

(declare-fun m!2276197 () Bool)

(assert (=> b!1848584 m!2276197))

(declare-fun m!2276199 () Bool)

(assert (=> b!1848585 m!2276199))

(declare-fun m!2276201 () Bool)

(assert (=> b!1848580 m!2276201))

(declare-fun m!2276203 () Bool)

(assert (=> b!1848579 m!2276203))

(assert (=> b!1848579 m!2276203))

(declare-fun m!2276205 () Bool)

(assert (=> b!1848579 m!2276205))

(declare-fun m!2276207 () Bool)

(assert (=> start!184484 m!2276207))

(declare-fun m!2276209 () Bool)

(assert (=> b!1848582 m!2276209))

(assert (=> b!1848582 m!2276209))

(declare-fun m!2276211 () Bool)

(assert (=> b!1848582 m!2276211))

(push 1)

(assert (not b!1848582))

(assert (not b!1848588))

(assert (not b!1848584))

(assert tp_is_empty!8477)

(assert (not start!184484))

(assert (not b!1848581))

(assert (not b!1848583))

(assert (not b!1848580))

(assert (not b!1848589))

(assert (not b!1848579))

(assert (not b!1848587))

(assert (not b!1848585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565544 () Bool)

(declare-fun c!301771 () Bool)

(declare-fun isEmpty!12775 (List!20495) Bool)

(assert (=> d!565544 (= c!301771 (isEmpty!12775 prefix!1614))))

(declare-fun e!1181174 () Bool)

(assert (=> d!565544 (= (prefixMatch!791 r!26091 prefix!1614) e!1181174)))

(declare-fun b!1848641 () Bool)

(declare-fun lostCause!630 (Regex!5014) Bool)

(assert (=> b!1848641 (= e!1181174 (not (lostCause!630 r!26091)))))

(declare-fun b!1848642 () Bool)

(declare-fun derivativeStep!1322 (Regex!5014 C!10178) Regex!5014)

(declare-fun head!4326 (List!20495) C!10178)

(declare-fun tail!2789 (List!20495) List!20495)

(assert (=> b!1848642 (= e!1181174 (prefixMatch!791 (derivativeStep!1322 r!26091 (head!4326 prefix!1614)) (tail!2789 prefix!1614)))))

(assert (= (and d!565544 c!301771) b!1848641))

(assert (= (and d!565544 (not c!301771)) b!1848642))

(declare-fun m!2276233 () Bool)

(assert (=> d!565544 m!2276233))

(declare-fun m!2276235 () Bool)

(assert (=> b!1848641 m!2276235))

(declare-fun m!2276237 () Bool)

(assert (=> b!1848642 m!2276237))

(assert (=> b!1848642 m!2276237))

(declare-fun m!2276239 () Bool)

(assert (=> b!1848642 m!2276239))

(declare-fun m!2276241 () Bool)

(assert (=> b!1848642 m!2276241))

(assert (=> b!1848642 m!2276239))

(assert (=> b!1848642 m!2276241))

(declare-fun m!2276243 () Bool)

(assert (=> b!1848642 m!2276243))

(assert (=> b!1848587 d!565544))

(declare-fun d!565548 () Bool)

(declare-fun lt!715268 () Bool)

(declare-fun content!3045 (List!20495) (Set C!10178))

(assert (=> d!565548 (= lt!715268 (set.member c!13459 (content!3045 (usedCharacters!319 r!26091))))))

(declare-fun e!1181186 () Bool)

(assert (=> d!565548 (= lt!715268 e!1181186)))

(declare-fun res!830058 () Bool)

(assert (=> d!565548 (=> (not res!830058) (not e!1181186))))

(assert (=> d!565548 (= res!830058 (is-Cons!20423 (usedCharacters!319 r!26091)))))

(assert (=> d!565548 (= (contains!3779 (usedCharacters!319 r!26091) c!13459) lt!715268)))

(declare-fun b!1848653 () Bool)

(declare-fun e!1181185 () Bool)

(assert (=> b!1848653 (= e!1181186 e!1181185)))

(declare-fun res!830057 () Bool)

(assert (=> b!1848653 (=> res!830057 e!1181185)))

(assert (=> b!1848653 (= res!830057 (= (h!25824 (usedCharacters!319 r!26091)) c!13459))))

(declare-fun b!1848654 () Bool)

(assert (=> b!1848654 (= e!1181185 (contains!3779 (t!172268 (usedCharacters!319 r!26091)) c!13459))))

(assert (= (and d!565548 res!830058) b!1848653))

(assert (= (and b!1848653 (not res!830057)) b!1848654))

(assert (=> d!565548 m!2276209))

(declare-fun m!2276251 () Bool)

(assert (=> d!565548 m!2276251))

(declare-fun m!2276253 () Bool)

(assert (=> d!565548 m!2276253))

(declare-fun m!2276255 () Bool)

(assert (=> b!1848654 m!2276255))

(assert (=> b!1848582 d!565548))

(declare-fun bm!115230 () Bool)

(declare-fun call!115238 () List!20495)

(declare-fun c!301785 () Bool)

(assert (=> bm!115230 (= call!115238 (usedCharacters!319 (ite c!301785 (regOne!10541 r!26091) (regTwo!10540 r!26091))))))

(declare-fun b!1848677 () Bool)

(declare-fun e!1181199 () List!20495)

(declare-fun e!1181198 () List!20495)

(assert (=> b!1848677 (= e!1181199 e!1181198)))

(assert (=> b!1848677 (= c!301785 (is-Union!5014 r!26091))))

(declare-fun b!1848678 () Bool)

(declare-fun e!1181201 () List!20495)

(assert (=> b!1848678 (= e!1181201 (Cons!20423 (c!301767 r!26091) Nil!20423))))

(declare-fun b!1848679 () Bool)

(declare-fun e!1181200 () List!20495)

(assert (=> b!1848679 (= e!1181200 e!1181201)))

(declare-fun c!301786 () Bool)

(assert (=> b!1848679 (= c!301786 (is-ElementMatch!5014 r!26091))))

(declare-fun b!1848680 () Bool)

(declare-fun c!301783 () Bool)

(assert (=> b!1848680 (= c!301783 (is-Star!5014 r!26091))))

(assert (=> b!1848680 (= e!1181201 e!1181199)))

(declare-fun bm!115231 () Bool)

(declare-fun call!115236 () List!20495)

(declare-fun call!115235 () List!20495)

(assert (=> bm!115231 (= call!115236 call!115235)))

(declare-fun d!565552 () Bool)

(declare-fun c!301784 () Bool)

(assert (=> d!565552 (= c!301784 (or (is-EmptyExpr!5014 r!26091) (is-EmptyLang!5014 r!26091)))))

(assert (=> d!565552 (= (usedCharacters!319 r!26091) e!1181200)))

(declare-fun bm!115232 () Bool)

(declare-fun call!115237 () List!20495)

(declare-fun ++!5539 (List!20495 List!20495) List!20495)

(assert (=> bm!115232 (= call!115237 (++!5539 (ite c!301785 call!115238 call!115236) (ite c!301785 call!115236 call!115238)))))

(declare-fun b!1848681 () Bool)

(assert (=> b!1848681 (= e!1181199 call!115235)))

(declare-fun b!1848682 () Bool)

(assert (=> b!1848682 (= e!1181198 call!115237)))

(declare-fun b!1848683 () Bool)

(assert (=> b!1848683 (= e!1181198 call!115237)))

(declare-fun bm!115233 () Bool)

(assert (=> bm!115233 (= call!115235 (usedCharacters!319 (ite c!301783 (reg!5343 r!26091) (ite c!301785 (regTwo!10541 r!26091) (regOne!10540 r!26091)))))))

(declare-fun b!1848684 () Bool)

(assert (=> b!1848684 (= e!1181200 Nil!20423)))

(assert (= (and d!565552 c!301784) b!1848684))

(assert (= (and d!565552 (not c!301784)) b!1848679))

(assert (= (and b!1848679 c!301786) b!1848678))

(assert (= (and b!1848679 (not c!301786)) b!1848680))

(assert (= (and b!1848680 c!301783) b!1848681))

(assert (= (and b!1848680 (not c!301783)) b!1848677))

(assert (= (and b!1848677 c!301785) b!1848683))

(assert (= (and b!1848677 (not c!301785)) b!1848682))

(assert (= (or b!1848683 b!1848682) bm!115231))

(assert (= (or b!1848683 b!1848682) bm!115230))

(assert (= (or b!1848683 b!1848682) bm!115232))

(assert (= (or b!1848681 bm!115231) bm!115233))

(declare-fun m!2276271 () Bool)

(assert (=> bm!115230 m!2276271))

(declare-fun m!2276273 () Bool)

(assert (=> bm!115232 m!2276273))

(declare-fun m!2276275 () Bool)

(assert (=> bm!115233 m!2276275))

(assert (=> b!1848582 d!565552))

(declare-fun b!1848723 () Bool)

(declare-fun e!1181234 () Bool)

(declare-fun e!1181236 () Bool)

(assert (=> b!1848723 (= e!1181234 e!1181236)))

(declare-fun res!830084 () Bool)

(assert (=> b!1848723 (=> (not res!830084) (not e!1181236))))

(declare-fun call!115251 () Bool)

(assert (=> b!1848723 (= res!830084 call!115251)))

(declare-fun d!565558 () Bool)

(declare-fun res!830085 () Bool)

(declare-fun e!1181235 () Bool)

(assert (=> d!565558 (=> res!830085 e!1181235)))

(assert (=> d!565558 (= res!830085 (is-ElementMatch!5014 r!26091))))

(assert (=> d!565558 (= (validRegex!2058 r!26091) e!1181235)))

(declare-fun b!1848724 () Bool)

(declare-fun e!1181233 () Bool)

(declare-fun e!1181237 () Bool)

(assert (=> b!1848724 (= e!1181233 e!1181237)))

(declare-fun c!301796 () Bool)

(assert (=> b!1848724 (= c!301796 (is-Union!5014 r!26091))))

(declare-fun c!301795 () Bool)

(declare-fun call!115252 () Bool)

(declare-fun bm!115246 () Bool)

(assert (=> bm!115246 (= call!115252 (validRegex!2058 (ite c!301795 (reg!5343 r!26091) (ite c!301796 (regOne!10541 r!26091) (regOne!10540 r!26091)))))))

(declare-fun b!1848725 () Bool)

(declare-fun call!115253 () Bool)

(assert (=> b!1848725 (= e!1181236 call!115253)))

(declare-fun b!1848726 () Bool)

(declare-fun e!1181238 () Bool)

(assert (=> b!1848726 (= e!1181233 e!1181238)))

(declare-fun res!830081 () Bool)

(declare-fun nullable!1558 (Regex!5014) Bool)

(assert (=> b!1848726 (= res!830081 (not (nullable!1558 (reg!5343 r!26091))))))

(assert (=> b!1848726 (=> (not res!830081) (not e!1181238))))

(declare-fun bm!115247 () Bool)

(assert (=> bm!115247 (= call!115253 (validRegex!2058 (ite c!301796 (regTwo!10541 r!26091) (regTwo!10540 r!26091))))))

(declare-fun b!1848727 () Bool)

(assert (=> b!1848727 (= e!1181238 call!115252)))

(declare-fun b!1848728 () Bool)

(declare-fun res!830083 () Bool)

(declare-fun e!1181232 () Bool)

(assert (=> b!1848728 (=> (not res!830083) (not e!1181232))))

(assert (=> b!1848728 (= res!830083 call!115251)))

(assert (=> b!1848728 (= e!1181237 e!1181232)))

(declare-fun b!1848729 () Bool)

(declare-fun res!830082 () Bool)

(assert (=> b!1848729 (=> res!830082 e!1181234)))

(assert (=> b!1848729 (= res!830082 (not (is-Concat!8792 r!26091)))))

(assert (=> b!1848729 (= e!1181237 e!1181234)))

(declare-fun bm!115248 () Bool)

(assert (=> bm!115248 (= call!115251 call!115252)))

(declare-fun b!1848730 () Bool)

(assert (=> b!1848730 (= e!1181235 e!1181233)))

(assert (=> b!1848730 (= c!301795 (is-Star!5014 r!26091))))

(declare-fun b!1848731 () Bool)

(assert (=> b!1848731 (= e!1181232 call!115253)))

(assert (= (and d!565558 (not res!830085)) b!1848730))

(assert (= (and b!1848730 c!301795) b!1848726))

(assert (= (and b!1848730 (not c!301795)) b!1848724))

(assert (= (and b!1848726 res!830081) b!1848727))

(assert (= (and b!1848724 c!301796) b!1848728))

(assert (= (and b!1848724 (not c!301796)) b!1848729))

(assert (= (and b!1848728 res!830083) b!1848731))

(assert (= (and b!1848729 (not res!830082)) b!1848723))

(assert (= (and b!1848723 res!830084) b!1848725))

(assert (= (or b!1848731 b!1848725) bm!115247))

(assert (= (or b!1848728 b!1848723) bm!115248))

(assert (= (or b!1848727 bm!115248) bm!115246))

(declare-fun m!2276281 () Bool)

(assert (=> bm!115246 m!2276281))

(declare-fun m!2276283 () Bool)

(assert (=> b!1848726 m!2276283))

(declare-fun m!2276285 () Bool)

(assert (=> bm!115247 m!2276285))

(assert (=> start!184484 d!565558))

(declare-fun b!1848760 () Bool)

(declare-fun e!1181259 () Bool)

(declare-fun size!16141 (List!20495) Int)

(assert (=> b!1848760 (= e!1181259 (>= (size!16141 lt!715255) (size!16141 prefix!1614)))))

(declare-fun d!565562 () Bool)

(assert (=> d!565562 e!1181259))

(declare-fun res!830110 () Bool)

(assert (=> d!565562 (=> res!830110 e!1181259)))

(declare-fun lt!715276 () Bool)

(assert (=> d!565562 (= res!830110 (not lt!715276))))

(declare-fun e!1181258 () Bool)

(assert (=> d!565562 (= lt!715276 e!1181258)))

(declare-fun res!830109 () Bool)

(assert (=> d!565562 (=> res!830109 e!1181258)))

(assert (=> d!565562 (= res!830109 (is-Nil!20423 prefix!1614))))

(assert (=> d!565562 (= (isPrefix!1887 prefix!1614 lt!715255) lt!715276)))

(declare-fun b!1848757 () Bool)

(declare-fun e!1181260 () Bool)

(assert (=> b!1848757 (= e!1181258 e!1181260)))

(declare-fun res!830108 () Bool)

(assert (=> b!1848757 (=> (not res!830108) (not e!1181260))))

(assert (=> b!1848757 (= res!830108 (not (is-Nil!20423 lt!715255)))))

(declare-fun b!1848758 () Bool)

(declare-fun res!830107 () Bool)

(assert (=> b!1848758 (=> (not res!830107) (not e!1181260))))

(assert (=> b!1848758 (= res!830107 (= (head!4326 prefix!1614) (head!4326 lt!715255)))))

(declare-fun b!1848759 () Bool)

(assert (=> b!1848759 (= e!1181260 (isPrefix!1887 (tail!2789 prefix!1614) (tail!2789 lt!715255)))))

(assert (= (and d!565562 (not res!830109)) b!1848757))

(assert (= (and b!1848757 res!830108) b!1848758))

(assert (= (and b!1848758 res!830107) b!1848759))

(assert (= (and d!565562 (not res!830110)) b!1848760))

(declare-fun m!2276293 () Bool)

(assert (=> b!1848760 m!2276293))

(declare-fun m!2276295 () Bool)

(assert (=> b!1848760 m!2276295))

(assert (=> b!1848758 m!2276237))

(declare-fun m!2276297 () Bool)

(assert (=> b!1848758 m!2276297))

(assert (=> b!1848759 m!2276241))

(declare-fun m!2276299 () Bool)

(assert (=> b!1848759 m!2276299))

(assert (=> b!1848759 m!2276241))

(assert (=> b!1848759 m!2276299))

(declare-fun m!2276301 () Bool)

(assert (=> b!1848759 m!2276301))

(assert (=> b!1848585 d!565562))

(declare-fun d!565566 () Bool)

(declare-fun lt!715277 () Bool)

(assert (=> d!565566 (= lt!715277 (set.member c!13459 (content!3045 prefix!1614)))))

(declare-fun e!1181262 () Bool)

(assert (=> d!565566 (= lt!715277 e!1181262)))

(declare-fun res!830112 () Bool)

(assert (=> d!565566 (=> (not res!830112) (not e!1181262))))

(assert (=> d!565566 (= res!830112 (is-Cons!20423 prefix!1614))))

(assert (=> d!565566 (= (contains!3779 prefix!1614 c!13459) lt!715277)))

(declare-fun b!1848761 () Bool)

(declare-fun e!1181261 () Bool)

(assert (=> b!1848761 (= e!1181262 e!1181261)))

(declare-fun res!830111 () Bool)

(assert (=> b!1848761 (=> res!830111 e!1181261)))

(assert (=> b!1848761 (= res!830111 (= (h!25824 prefix!1614) c!13459))))

(declare-fun b!1848762 () Bool)

(assert (=> b!1848762 (= e!1181261 (contains!3779 (t!172268 prefix!1614) c!13459))))

(assert (= (and d!565566 res!830112) b!1848761))

(assert (= (and b!1848761 (not res!830111)) b!1848762))

(declare-fun m!2276303 () Bool)

(assert (=> d!565566 m!2276303))

(declare-fun m!2276305 () Bool)

(assert (=> d!565566 m!2276305))

(declare-fun m!2276307 () Bool)

(assert (=> b!1848762 m!2276307))

(assert (=> b!1848580 d!565566))

(declare-fun d!565568 () Bool)

(declare-fun choose!11633 (Int) Bool)

(assert (=> d!565568 (= (Exists!968 lambda!73095) (choose!11633 lambda!73095))))

(declare-fun bs!409753 () Bool)

(assert (= bs!409753 d!565568))

(declare-fun m!2276309 () Bool)

(assert (=> bs!409753 m!2276309))

(assert (=> b!1848579 d!565568))

(declare-fun bs!409754 () Bool)

(declare-fun d!565570 () Bool)

(assert (= bs!409754 (and d!565570 b!1848579)))

(declare-fun lambda!73108 () Int)

(assert (=> bs!409754 (= lambda!73108 lambda!73095)))

(assert (=> d!565570 true))

(assert (=> d!565570 true))

(assert (=> d!565570 (Exists!968 lambda!73108)))

(declare-fun lt!715282 () Unit!35103)

(declare-fun choose!11634 (Regex!5014 List!20495) Unit!35103)

(assert (=> d!565570 (= lt!715282 (choose!11634 r!26091 prefix!1614))))

(assert (=> d!565570 (validRegex!2058 r!26091)))

(assert (=> d!565570 (= (lemmaPrefixMatchThenExistsStringThatMatches!286 r!26091 prefix!1614) lt!715282)))

(declare-fun bs!409755 () Bool)

(assert (= bs!409755 d!565570))

(declare-fun m!2276327 () Bool)

(assert (=> bs!409755 m!2276327))

(declare-fun m!2276329 () Bool)

(assert (=> bs!409755 m!2276329))

(assert (=> bs!409755 m!2276207))

(assert (=> b!1848579 d!565570))

(declare-fun b!1848851 () Bool)

(declare-fun e!1181314 () Bool)

(declare-fun e!1181311 () Bool)

(assert (=> b!1848851 (= e!1181314 e!1181311)))

(declare-fun c!301825 () Bool)

(assert (=> b!1848851 (= c!301825 (is-EmptyLang!5014 r!26091))))

(declare-fun b!1848852 () Bool)

(declare-fun e!1181313 () Bool)

(assert (=> b!1848852 (= e!1181313 (not (= (head!4326 lt!715255) (c!301767 r!26091))))))

(declare-fun b!1848853 () Bool)

(declare-fun e!1181315 () Bool)

(assert (=> b!1848853 (= e!1181315 (nullable!1558 r!26091))))

(declare-fun b!1848854 () Bool)

(declare-fun res!830158 () Bool)

(declare-fun e!1181316 () Bool)

(assert (=> b!1848854 (=> res!830158 e!1181316)))

(declare-fun e!1181310 () Bool)

(assert (=> b!1848854 (= res!830158 e!1181310)))

(declare-fun res!830159 () Bool)

(assert (=> b!1848854 (=> (not res!830159) (not e!1181310))))

(declare-fun lt!715287 () Bool)

(assert (=> b!1848854 (= res!830159 lt!715287)))

(declare-fun b!1848855 () Bool)

(assert (=> b!1848855 (= e!1181311 (not lt!715287))))

(declare-fun b!1848857 () Bool)

(assert (=> b!1848857 (= e!1181310 (= (head!4326 lt!715255) (c!301767 r!26091)))))

(declare-fun b!1848858 () Bool)

(declare-fun call!115273 () Bool)

(assert (=> b!1848858 (= e!1181314 (= lt!715287 call!115273))))

(declare-fun b!1848859 () Bool)

(declare-fun res!830156 () Bool)

(assert (=> b!1848859 (=> res!830156 e!1181316)))

(assert (=> b!1848859 (= res!830156 (not (is-ElementMatch!5014 r!26091)))))

(assert (=> b!1848859 (= e!1181311 e!1181316)))

(declare-fun b!1848860 () Bool)

(declare-fun e!1181312 () Bool)

(assert (=> b!1848860 (= e!1181312 e!1181313)))

(declare-fun res!830157 () Bool)

(assert (=> b!1848860 (=> res!830157 e!1181313)))

(assert (=> b!1848860 (= res!830157 call!115273)))

(declare-fun b!1848856 () Bool)

(assert (=> b!1848856 (= e!1181315 (matchR!2451 (derivativeStep!1322 r!26091 (head!4326 lt!715255)) (tail!2789 lt!715255)))))

(declare-fun d!565576 () Bool)

(assert (=> d!565576 e!1181314))

(declare-fun c!301823 () Bool)

(assert (=> d!565576 (= c!301823 (is-EmptyExpr!5014 r!26091))))

(assert (=> d!565576 (= lt!715287 e!1181315)))

(declare-fun c!301824 () Bool)

(assert (=> d!565576 (= c!301824 (isEmpty!12775 lt!715255))))

(assert (=> d!565576 (validRegex!2058 r!26091)))

(assert (=> d!565576 (= (matchR!2451 r!26091 lt!715255) lt!715287)))

(declare-fun b!1848861 () Bool)

(declare-fun res!830153 () Bool)

(assert (=> b!1848861 (=> (not res!830153) (not e!1181310))))

(assert (=> b!1848861 (= res!830153 (not call!115273))))

(declare-fun b!1848862 () Bool)

(declare-fun res!830160 () Bool)

(assert (=> b!1848862 (=> res!830160 e!1181313)))

(assert (=> b!1848862 (= res!830160 (not (isEmpty!12775 (tail!2789 lt!715255))))))

(declare-fun bm!115268 () Bool)

(assert (=> bm!115268 (= call!115273 (isEmpty!12775 lt!715255))))

(declare-fun b!1848863 () Bool)

(assert (=> b!1848863 (= e!1181316 e!1181312)))

(declare-fun res!830154 () Bool)

(assert (=> b!1848863 (=> (not res!830154) (not e!1181312))))

(assert (=> b!1848863 (= res!830154 (not lt!715287))))

(declare-fun b!1848864 () Bool)

(declare-fun res!830155 () Bool)

(assert (=> b!1848864 (=> (not res!830155) (not e!1181310))))

(assert (=> b!1848864 (= res!830155 (isEmpty!12775 (tail!2789 lt!715255)))))

(assert (= (and d!565576 c!301824) b!1848853))

(assert (= (and d!565576 (not c!301824)) b!1848856))

(assert (= (and d!565576 c!301823) b!1848858))

(assert (= (and d!565576 (not c!301823)) b!1848851))

(assert (= (and b!1848851 c!301825) b!1848855))

(assert (= (and b!1848851 (not c!301825)) b!1848859))

(assert (= (and b!1848859 (not res!830156)) b!1848854))

(assert (= (and b!1848854 res!830159) b!1848861))

(assert (= (and b!1848861 res!830153) b!1848864))

(assert (= (and b!1848864 res!830155) b!1848857))

(assert (= (and b!1848854 (not res!830158)) b!1848863))

(assert (= (and b!1848863 res!830154) b!1848860))

(assert (= (and b!1848860 (not res!830157)) b!1848862))

(assert (= (and b!1848862 (not res!830160)) b!1848852))

(assert (= (or b!1848858 b!1848860 b!1848861) bm!115268))

(assert (=> b!1848856 m!2276297))

(assert (=> b!1848856 m!2276297))

(declare-fun m!2276337 () Bool)

(assert (=> b!1848856 m!2276337))

(assert (=> b!1848856 m!2276299))

(assert (=> b!1848856 m!2276337))

(assert (=> b!1848856 m!2276299))

(declare-fun m!2276339 () Bool)

(assert (=> b!1848856 m!2276339))

(assert (=> b!1848864 m!2276299))

(assert (=> b!1848864 m!2276299))

(declare-fun m!2276341 () Bool)

(assert (=> b!1848864 m!2276341))

(declare-fun m!2276343 () Bool)

(assert (=> d!565576 m!2276343))

(assert (=> d!565576 m!2276207))

(assert (=> b!1848862 m!2276299))

(assert (=> b!1848862 m!2276299))

(assert (=> b!1848862 m!2276341))

(assert (=> bm!115268 m!2276343))

(declare-fun m!2276345 () Bool)

(assert (=> b!1848853 m!2276345))

(assert (=> b!1848857 m!2276297))

(assert (=> b!1848852 m!2276297))

(assert (=> b!1848584 d!565576))

(declare-fun d!565580 () Bool)

(declare-fun lt!715290 () List!20495)

(declare-fun dynLambda!10154 (Int List!20495) Bool)

(assert (=> d!565580 (dynLambda!10154 lambda!73095 lt!715290)))

(declare-fun choose!11635 (Int) List!20495)

(assert (=> d!565580 (= lt!715290 (choose!11635 lambda!73095))))

(assert (=> d!565580 (Exists!968 lambda!73095)))

(assert (=> d!565580 (= (pickWitness!265 lambda!73095) lt!715290)))

(declare-fun b_lambda!61397 () Bool)

(assert (=> (not b_lambda!61397) (not d!565580)))

(declare-fun bs!409756 () Bool)

(assert (= bs!409756 d!565580))

(declare-fun m!2276347 () Bool)

(assert (=> bs!409756 m!2276347))

(declare-fun m!2276349 () Bool)

(assert (=> bs!409756 m!2276349))

(assert (=> bs!409756 m!2276203))

(assert (=> b!1848584 d!565580))

(declare-fun b!1848891 () Bool)

(declare-fun e!1181326 () Bool)

(declare-fun tp!522766 () Bool)

(assert (=> b!1848891 (= e!1181326 tp!522766)))

(declare-fun b!1848890 () Bool)

(declare-fun tp!522769 () Bool)

(declare-fun tp!522767 () Bool)

(assert (=> b!1848890 (= e!1181326 (and tp!522769 tp!522767))))

(declare-fun b!1848892 () Bool)

(declare-fun tp!522768 () Bool)

(declare-fun tp!522770 () Bool)

(assert (=> b!1848892 (= e!1181326 (and tp!522768 tp!522770))))

(assert (=> b!1848581 (= tp!522732 e!1181326)))

(declare-fun b!1848889 () Bool)

(assert (=> b!1848889 (= e!1181326 tp_is_empty!8477)))

(assert (= (and b!1848581 (is-ElementMatch!5014 (regOne!10540 r!26091))) b!1848889))

(assert (= (and b!1848581 (is-Concat!8792 (regOne!10540 r!26091))) b!1848890))

(assert (= (and b!1848581 (is-Star!5014 (regOne!10540 r!26091))) b!1848891))

(assert (= (and b!1848581 (is-Union!5014 (regOne!10540 r!26091))) b!1848892))

(declare-fun b!1848895 () Bool)

(declare-fun e!1181327 () Bool)

(declare-fun tp!522771 () Bool)

(assert (=> b!1848895 (= e!1181327 tp!522771)))

(declare-fun b!1848894 () Bool)

(declare-fun tp!522774 () Bool)

(declare-fun tp!522772 () Bool)

(assert (=> b!1848894 (= e!1181327 (and tp!522774 tp!522772))))

(declare-fun b!1848896 () Bool)

(declare-fun tp!522773 () Bool)

(declare-fun tp!522775 () Bool)

(assert (=> b!1848896 (= e!1181327 (and tp!522773 tp!522775))))

(assert (=> b!1848581 (= tp!522737 e!1181327)))

(declare-fun b!1848893 () Bool)

(assert (=> b!1848893 (= e!1181327 tp_is_empty!8477)))

(assert (= (and b!1848581 (is-ElementMatch!5014 (regTwo!10540 r!26091))) b!1848893))

(assert (= (and b!1848581 (is-Concat!8792 (regTwo!10540 r!26091))) b!1848894))

(assert (= (and b!1848581 (is-Star!5014 (regTwo!10540 r!26091))) b!1848895))

(assert (= (and b!1848581 (is-Union!5014 (regTwo!10540 r!26091))) b!1848896))

(declare-fun b!1848899 () Bool)

(declare-fun e!1181328 () Bool)

(declare-fun tp!522776 () Bool)

(assert (=> b!1848899 (= e!1181328 tp!522776)))

(declare-fun b!1848898 () Bool)

(declare-fun tp!522779 () Bool)

(declare-fun tp!522777 () Bool)

(assert (=> b!1848898 (= e!1181328 (and tp!522779 tp!522777))))

(declare-fun b!1848900 () Bool)

(declare-fun tp!522778 () Bool)

(declare-fun tp!522780 () Bool)

(assert (=> b!1848900 (= e!1181328 (and tp!522778 tp!522780))))

(assert (=> b!1848589 (= tp!522735 e!1181328)))

(declare-fun b!1848897 () Bool)

(assert (=> b!1848897 (= e!1181328 tp_is_empty!8477)))

(assert (= (and b!1848589 (is-ElementMatch!5014 (reg!5343 r!26091))) b!1848897))

(assert (= (and b!1848589 (is-Concat!8792 (reg!5343 r!26091))) b!1848898))

(assert (= (and b!1848589 (is-Star!5014 (reg!5343 r!26091))) b!1848899))

(assert (= (and b!1848589 (is-Union!5014 (reg!5343 r!26091))) b!1848900))

(declare-fun b!1848905 () Bool)

(declare-fun e!1181331 () Bool)

(declare-fun tp!522783 () Bool)

(assert (=> b!1848905 (= e!1181331 (and tp_is_empty!8477 tp!522783))))

(assert (=> b!1848583 (= tp!522733 e!1181331)))

(assert (= (and b!1848583 (is-Cons!20423 (t!172268 prefix!1614))) b!1848905))

(declare-fun b!1848908 () Bool)

(declare-fun e!1181332 () Bool)

(declare-fun tp!522784 () Bool)

(assert (=> b!1848908 (= e!1181332 tp!522784)))

(declare-fun b!1848907 () Bool)

(declare-fun tp!522787 () Bool)

(declare-fun tp!522785 () Bool)

(assert (=> b!1848907 (= e!1181332 (and tp!522787 tp!522785))))

(declare-fun b!1848909 () Bool)

(declare-fun tp!522786 () Bool)

(declare-fun tp!522788 () Bool)

(assert (=> b!1848909 (= e!1181332 (and tp!522786 tp!522788))))

(assert (=> b!1848588 (= tp!522736 e!1181332)))

(declare-fun b!1848906 () Bool)

(assert (=> b!1848906 (= e!1181332 tp_is_empty!8477)))

(assert (= (and b!1848588 (is-ElementMatch!5014 (regOne!10541 r!26091))) b!1848906))

(assert (= (and b!1848588 (is-Concat!8792 (regOne!10541 r!26091))) b!1848907))

(assert (= (and b!1848588 (is-Star!5014 (regOne!10541 r!26091))) b!1848908))

(assert (= (and b!1848588 (is-Union!5014 (regOne!10541 r!26091))) b!1848909))

(declare-fun b!1848912 () Bool)

(declare-fun e!1181333 () Bool)

(declare-fun tp!522789 () Bool)

(assert (=> b!1848912 (= e!1181333 tp!522789)))

(declare-fun b!1848911 () Bool)

(declare-fun tp!522792 () Bool)

(declare-fun tp!522790 () Bool)

(assert (=> b!1848911 (= e!1181333 (and tp!522792 tp!522790))))

(declare-fun b!1848913 () Bool)

(declare-fun tp!522791 () Bool)

(declare-fun tp!522793 () Bool)

(assert (=> b!1848913 (= e!1181333 (and tp!522791 tp!522793))))

(assert (=> b!1848588 (= tp!522734 e!1181333)))

(declare-fun b!1848910 () Bool)

(assert (=> b!1848910 (= e!1181333 tp_is_empty!8477)))

(assert (= (and b!1848588 (is-ElementMatch!5014 (regTwo!10541 r!26091))) b!1848910))

(assert (= (and b!1848588 (is-Concat!8792 (regTwo!10541 r!26091))) b!1848911))

(assert (= (and b!1848588 (is-Star!5014 (regTwo!10541 r!26091))) b!1848912))

(assert (= (and b!1848588 (is-Union!5014 (regTwo!10541 r!26091))) b!1848913))

(declare-fun b_lambda!61399 () Bool)

(assert (= b_lambda!61397 (or b!1848579 b_lambda!61399)))

(declare-fun bs!409757 () Bool)

(declare-fun d!565584 () Bool)

(assert (= bs!409757 (and d!565584 b!1848579)))

(declare-fun res!830169 () Bool)

(declare-fun e!1181334 () Bool)

(assert (=> bs!409757 (=> (not res!830169) (not e!1181334))))

(assert (=> bs!409757 (= res!830169 (matchR!2451 r!26091 lt!715290))))

(assert (=> bs!409757 (= (dynLambda!10154 lambda!73095 lt!715290) e!1181334)))

(declare-fun b!1848914 () Bool)

(assert (=> b!1848914 (= e!1181334 (isPrefix!1887 prefix!1614 lt!715290))))

(assert (= (and bs!409757 res!830169) b!1848914))

(declare-fun m!2276361 () Bool)

(assert (=> bs!409757 m!2276361))

(declare-fun m!2276363 () Bool)

(assert (=> b!1848914 m!2276363))

(assert (=> d!565580 d!565584))

(push 1)

(assert (not b!1848905))

(assert (not b!1848907))

(assert (not b!1848758))

(assert (not b!1848911))

(assert (not d!565566))

(assert (not b!1848862))

(assert (not b!1848853))

(assert tp_is_empty!8477)

(assert (not d!565570))

(assert (not b!1848896))

(assert (not bm!115268))

(assert (not b!1848900))

(assert (not b!1848914))

(assert (not b!1848898))

(assert (not b!1848913))

(assert (not bm!115247))

(assert (not b!1848759))

(assert (not bm!115233))

(assert (not b!1848864))

(assert (not b!1848894))

(assert (not b_lambda!61399))

(assert (not d!565544))

(assert (not b!1848856))

(assert (not b!1848760))

(assert (not d!565568))

(assert (not d!565548))

(assert (not d!565580))

(assert (not b!1848890))

(assert (not b!1848895))

(assert (not b!1848762))

(assert (not b!1848891))

(assert (not b!1848852))

(assert (not b!1848909))

(assert (not b!1848892))

(assert (not b!1848654))

(assert (not d!565576))

(assert (not b!1848912))

(assert (not b!1848641))

(assert (not bs!409757))

(assert (not bm!115230))

(assert (not b!1848857))

(assert (not bm!115232))

(assert (not b!1848899))

(assert (not b!1848642))

(assert (not b!1848908))

(assert (not b!1848726))

(assert (not bm!115246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

