; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740144 () Bool)

(assert start!740144)

(declare-fun b!7772572 () Bool)

(declare-fun e!4605151 () Bool)

(declare-fun tp_is_empty!51883 () Bool)

(assert (=> b!7772572 (= e!4605151 tp_is_empty!51883)))

(declare-fun b!7772573 () Bool)

(declare-fun e!4605152 () Bool)

(declare-datatypes ((C!41854 0))(
  ( (C!41855 (val!31367 Int)) )
))
(declare-datatypes ((Regex!20764 0))(
  ( (ElementMatch!20764 (c!1432573 C!41854)) (Concat!29609 (regOne!42040 Regex!20764) (regTwo!42040 Regex!20764)) (EmptyExpr!20764) (Star!20764 (reg!21093 Regex!20764)) (EmptyLang!20764) (Union!20764 (regOne!42041 Regex!20764) (regTwo!42041 Regex!20764)) )
))
(declare-fun r1!6279 () Regex!20764)

(declare-fun r2!6217 () Regex!20764)

(declare-fun validRegex!11178 (Regex!20764) Bool)

(assert (=> b!7772573 (= e!4605152 (not (validRegex!11178 (Concat!29609 r1!6279 r2!6217))))))

(declare-fun b!7772574 () Bool)

(declare-fun tp!2283455 () Bool)

(assert (=> b!7772574 (= e!4605151 tp!2283455)))

(declare-fun b!7772575 () Bool)

(declare-fun tp!2283451 () Bool)

(declare-fun tp!2283450 () Bool)

(assert (=> b!7772575 (= e!4605151 (and tp!2283451 tp!2283450))))

(declare-fun b!7772577 () Bool)

(declare-fun e!4605150 () Bool)

(declare-fun tp!2283446 () Bool)

(declare-fun tp!2283448 () Bool)

(assert (=> b!7772577 (= e!4605150 (and tp!2283446 tp!2283448))))

(declare-fun b!7772578 () Bool)

(declare-fun res!3098313 () Bool)

(assert (=> b!7772578 (=> (not res!3098313) (not e!4605152))))

(assert (=> b!7772578 (= res!3098313 (validRegex!11178 r2!6217))))

(declare-fun b!7772579 () Bool)

(declare-fun tp!2283454 () Bool)

(declare-fun tp!2283452 () Bool)

(assert (=> b!7772579 (= e!4605151 (and tp!2283454 tp!2283452))))

(declare-fun res!3098314 () Bool)

(assert (=> start!740144 (=> (not res!3098314) (not e!4605152))))

(assert (=> start!740144 (= res!3098314 (validRegex!11178 r1!6279))))

(assert (=> start!740144 e!4605152))

(assert (=> start!740144 e!4605151))

(assert (=> start!740144 e!4605150))

(declare-fun b!7772576 () Bool)

(declare-fun tp!2283449 () Bool)

(declare-fun tp!2283453 () Bool)

(assert (=> b!7772576 (= e!4605150 (and tp!2283449 tp!2283453))))

(declare-fun b!7772580 () Bool)

(assert (=> b!7772580 (= e!4605150 tp_is_empty!51883)))

(declare-fun b!7772581 () Bool)

(declare-fun tp!2283447 () Bool)

(assert (=> b!7772581 (= e!4605150 tp!2283447)))

(assert (= (and start!740144 res!3098314) b!7772578))

(assert (= (and b!7772578 res!3098313) b!7772573))

(assert (= (and start!740144 (is-ElementMatch!20764 r1!6279)) b!7772572))

(assert (= (and start!740144 (is-Concat!29609 r1!6279)) b!7772575))

(assert (= (and start!740144 (is-Star!20764 r1!6279)) b!7772574))

(assert (= (and start!740144 (is-Union!20764 r1!6279)) b!7772579))

(assert (= (and start!740144 (is-ElementMatch!20764 r2!6217)) b!7772580))

(assert (= (and start!740144 (is-Concat!29609 r2!6217)) b!7772577))

(assert (= (and start!740144 (is-Star!20764 r2!6217)) b!7772581))

(assert (= (and start!740144 (is-Union!20764 r2!6217)) b!7772576))

(declare-fun m!8225686 () Bool)

(assert (=> b!7772573 m!8225686))

(declare-fun m!8225688 () Bool)

(assert (=> b!7772578 m!8225688))

(declare-fun m!8225690 () Bool)

(assert (=> start!740144 m!8225690))

(push 1)

(assert tp_is_empty!51883)

(assert (not b!7772577))

(assert (not b!7772573))

(assert (not b!7772579))

(assert (not b!7772576))

(assert (not b!7772575))

(assert (not b!7772574))

(assert (not b!7772578))

(assert (not start!740144))

(assert (not b!7772581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7772630 () Bool)

(declare-fun e!4605179 () Bool)

(declare-fun call!720391 () Bool)

(assert (=> b!7772630 (= e!4605179 call!720391)))

(declare-fun d!2344630 () Bool)

(declare-fun res!3098335 () Bool)

(declare-fun e!4605178 () Bool)

(assert (=> d!2344630 (=> res!3098335 e!4605178)))

(assert (=> d!2344630 (= res!3098335 (is-ElementMatch!20764 r2!6217))))

(assert (=> d!2344630 (= (validRegex!11178 r2!6217) e!4605178)))

(declare-fun b!7772631 () Bool)

(declare-fun e!4605177 () Bool)

(declare-fun call!720389 () Bool)

(assert (=> b!7772631 (= e!4605177 call!720389)))

(declare-fun b!7772632 () Bool)

(declare-fun e!4605182 () Bool)

(assert (=> b!7772632 (= e!4605182 e!4605179)))

(declare-fun res!3098333 () Bool)

(declare-fun nullable!9154 (Regex!20764) Bool)

(assert (=> b!7772632 (= res!3098333 (not (nullable!9154 (reg!21093 r2!6217))))))

(assert (=> b!7772632 (=> (not res!3098333) (not e!4605179))))

(declare-fun b!7772633 () Bool)

(declare-fun e!4605181 () Bool)

(assert (=> b!7772633 (= e!4605182 e!4605181)))

(declare-fun c!1432579 () Bool)

(assert (=> b!7772633 (= c!1432579 (is-Union!20764 r2!6217))))

(declare-fun b!7772634 () Bool)

(declare-fun e!4605176 () Bool)

(assert (=> b!7772634 (= e!4605176 call!720389)))

(declare-fun b!7772635 () Bool)

(assert (=> b!7772635 (= e!4605178 e!4605182)))

(declare-fun c!1432580 () Bool)

(assert (=> b!7772635 (= c!1432580 (is-Star!20764 r2!6217))))

(declare-fun b!7772636 () Bool)

(declare-fun e!4605180 () Bool)

(assert (=> b!7772636 (= e!4605180 e!4605177)))

(declare-fun res!3098331 () Bool)

(assert (=> b!7772636 (=> (not res!3098331) (not e!4605177))))

(declare-fun call!720390 () Bool)

(assert (=> b!7772636 (= res!3098331 call!720390)))

(declare-fun b!7772637 () Bool)

(declare-fun res!3098334 () Bool)

(assert (=> b!7772637 (=> res!3098334 e!4605180)))

(assert (=> b!7772637 (= res!3098334 (not (is-Concat!29609 r2!6217)))))

(assert (=> b!7772637 (= e!4605181 e!4605180)))

(declare-fun b!7772638 () Bool)

(declare-fun res!3098332 () Bool)

(assert (=> b!7772638 (=> (not res!3098332) (not e!4605176))))

(assert (=> b!7772638 (= res!3098332 call!720390)))

(assert (=> b!7772638 (= e!4605181 e!4605176)))

(declare-fun bm!720384 () Bool)

(assert (=> bm!720384 (= call!720391 (validRegex!11178 (ite c!1432580 (reg!21093 r2!6217) (ite c!1432579 (regOne!42041 r2!6217) (regOne!42040 r2!6217)))))))

(declare-fun bm!720385 () Bool)

(assert (=> bm!720385 (= call!720390 call!720391)))

(declare-fun bm!720386 () Bool)

(assert (=> bm!720386 (= call!720389 (validRegex!11178 (ite c!1432579 (regTwo!42041 r2!6217) (regTwo!42040 r2!6217))))))

(assert (= (and d!2344630 (not res!3098335)) b!7772635))

(assert (= (and b!7772635 c!1432580) b!7772632))

(assert (= (and b!7772635 (not c!1432580)) b!7772633))

(assert (= (and b!7772632 res!3098333) b!7772630))

(assert (= (and b!7772633 c!1432579) b!7772638))

(assert (= (and b!7772633 (not c!1432579)) b!7772637))

(assert (= (and b!7772638 res!3098332) b!7772634))

(assert (= (and b!7772637 (not res!3098334)) b!7772636))

(assert (= (and b!7772636 res!3098331) b!7772631))

(assert (= (or b!7772638 b!7772636) bm!720385))

(assert (= (or b!7772634 b!7772631) bm!720386))

(assert (= (or b!7772630 bm!720385) bm!720384))

(declare-fun m!8225698 () Bool)

(assert (=> b!7772632 m!8225698))

(declare-fun m!8225700 () Bool)

(assert (=> bm!720384 m!8225700))

(declare-fun m!8225702 () Bool)

(assert (=> bm!720386 m!8225702))

(assert (=> b!7772578 d!2344630))

(declare-fun b!7772639 () Bool)

(declare-fun e!4605186 () Bool)

(declare-fun call!720394 () Bool)

(assert (=> b!7772639 (= e!4605186 call!720394)))

(declare-fun d!2344634 () Bool)

(declare-fun res!3098340 () Bool)

(declare-fun e!4605185 () Bool)

(assert (=> d!2344634 (=> res!3098340 e!4605185)))

(assert (=> d!2344634 (= res!3098340 (is-ElementMatch!20764 (Concat!29609 r1!6279 r2!6217)))))

(assert (=> d!2344634 (= (validRegex!11178 (Concat!29609 r1!6279 r2!6217)) e!4605185)))

(declare-fun b!7772640 () Bool)

(declare-fun e!4605184 () Bool)

(declare-fun call!720392 () Bool)

(assert (=> b!7772640 (= e!4605184 call!720392)))

(declare-fun b!7772641 () Bool)

(declare-fun e!4605189 () Bool)

(assert (=> b!7772641 (= e!4605189 e!4605186)))

(declare-fun res!3098338 () Bool)

(assert (=> b!7772641 (= res!3098338 (not (nullable!9154 (reg!21093 (Concat!29609 r1!6279 r2!6217)))))))

(assert (=> b!7772641 (=> (not res!3098338) (not e!4605186))))

(declare-fun b!7772642 () Bool)

(declare-fun e!4605188 () Bool)

(assert (=> b!7772642 (= e!4605189 e!4605188)))

(declare-fun c!1432581 () Bool)

(assert (=> b!7772642 (= c!1432581 (is-Union!20764 (Concat!29609 r1!6279 r2!6217)))))

(declare-fun b!7772643 () Bool)

(declare-fun e!4605183 () Bool)

(assert (=> b!7772643 (= e!4605183 call!720392)))

(declare-fun b!7772644 () Bool)

(assert (=> b!7772644 (= e!4605185 e!4605189)))

(declare-fun c!1432582 () Bool)

(assert (=> b!7772644 (= c!1432582 (is-Star!20764 (Concat!29609 r1!6279 r2!6217)))))

(declare-fun b!7772645 () Bool)

(declare-fun e!4605187 () Bool)

(assert (=> b!7772645 (= e!4605187 e!4605184)))

(declare-fun res!3098336 () Bool)

(assert (=> b!7772645 (=> (not res!3098336) (not e!4605184))))

(declare-fun call!720393 () Bool)

(assert (=> b!7772645 (= res!3098336 call!720393)))

(declare-fun b!7772646 () Bool)

(declare-fun res!3098339 () Bool)

(assert (=> b!7772646 (=> res!3098339 e!4605187)))

(assert (=> b!7772646 (= res!3098339 (not (is-Concat!29609 (Concat!29609 r1!6279 r2!6217))))))

(assert (=> b!7772646 (= e!4605188 e!4605187)))

(declare-fun b!7772647 () Bool)

(declare-fun res!3098337 () Bool)

(assert (=> b!7772647 (=> (not res!3098337) (not e!4605183))))

(assert (=> b!7772647 (= res!3098337 call!720393)))

(assert (=> b!7772647 (= e!4605188 e!4605183)))

(declare-fun bm!720387 () Bool)

(assert (=> bm!720387 (= call!720394 (validRegex!11178 (ite c!1432582 (reg!21093 (Concat!29609 r1!6279 r2!6217)) (ite c!1432581 (regOne!42041 (Concat!29609 r1!6279 r2!6217)) (regOne!42040 (Concat!29609 r1!6279 r2!6217))))))))

(declare-fun bm!720388 () Bool)

(assert (=> bm!720388 (= call!720393 call!720394)))

(declare-fun bm!720389 () Bool)

(assert (=> bm!720389 (= call!720392 (validRegex!11178 (ite c!1432581 (regTwo!42041 (Concat!29609 r1!6279 r2!6217)) (regTwo!42040 (Concat!29609 r1!6279 r2!6217)))))))

(assert (= (and d!2344634 (not res!3098340)) b!7772644))

(assert (= (and b!7772644 c!1432582) b!7772641))

(assert (= (and b!7772644 (not c!1432582)) b!7772642))

(assert (= (and b!7772641 res!3098338) b!7772639))

(assert (= (and b!7772642 c!1432581) b!7772647))

(assert (= (and b!7772642 (not c!1432581)) b!7772646))

(assert (= (and b!7772647 res!3098337) b!7772643))

(assert (= (and b!7772646 (not res!3098339)) b!7772645))

(assert (= (and b!7772645 res!3098336) b!7772640))

(assert (= (or b!7772647 b!7772645) bm!720388))

(assert (= (or b!7772643 b!7772640) bm!720389))

(assert (= (or b!7772639 bm!720388) bm!720387))

(declare-fun m!8225704 () Bool)

(assert (=> b!7772641 m!8225704))

(declare-fun m!8225706 () Bool)

(assert (=> bm!720387 m!8225706))

(declare-fun m!8225708 () Bool)

(assert (=> bm!720389 m!8225708))

(assert (=> b!7772573 d!2344634))

(declare-fun b!7772648 () Bool)

(declare-fun e!4605193 () Bool)

(declare-fun call!720397 () Bool)

(assert (=> b!7772648 (= e!4605193 call!720397)))

(declare-fun d!2344636 () Bool)

(declare-fun res!3098345 () Bool)

(declare-fun e!4605192 () Bool)

(assert (=> d!2344636 (=> res!3098345 e!4605192)))

(assert (=> d!2344636 (= res!3098345 (is-ElementMatch!20764 r1!6279))))

(assert (=> d!2344636 (= (validRegex!11178 r1!6279) e!4605192)))

(declare-fun b!7772649 () Bool)

(declare-fun e!4605191 () Bool)

(declare-fun call!720395 () Bool)

(assert (=> b!7772649 (= e!4605191 call!720395)))

(declare-fun b!7772650 () Bool)

(declare-fun e!4605196 () Bool)

(assert (=> b!7772650 (= e!4605196 e!4605193)))

(declare-fun res!3098343 () Bool)

(assert (=> b!7772650 (= res!3098343 (not (nullable!9154 (reg!21093 r1!6279))))))

(assert (=> b!7772650 (=> (not res!3098343) (not e!4605193))))

(declare-fun b!7772651 () Bool)

(declare-fun e!4605195 () Bool)

(assert (=> b!7772651 (= e!4605196 e!4605195)))

(declare-fun c!1432583 () Bool)

(assert (=> b!7772651 (= c!1432583 (is-Union!20764 r1!6279))))

(declare-fun b!7772652 () Bool)

(declare-fun e!4605190 () Bool)

(assert (=> b!7772652 (= e!4605190 call!720395)))

(declare-fun b!7772653 () Bool)

(assert (=> b!7772653 (= e!4605192 e!4605196)))

(declare-fun c!1432584 () Bool)

(assert (=> b!7772653 (= c!1432584 (is-Star!20764 r1!6279))))

(declare-fun b!7772654 () Bool)

(declare-fun e!4605194 () Bool)

(assert (=> b!7772654 (= e!4605194 e!4605191)))

(declare-fun res!3098341 () Bool)

(assert (=> b!7772654 (=> (not res!3098341) (not e!4605191))))

(declare-fun call!720396 () Bool)

(assert (=> b!7772654 (= res!3098341 call!720396)))

(declare-fun b!7772655 () Bool)

(declare-fun res!3098344 () Bool)

(assert (=> b!7772655 (=> res!3098344 e!4605194)))

(assert (=> b!7772655 (= res!3098344 (not (is-Concat!29609 r1!6279)))))

(assert (=> b!7772655 (= e!4605195 e!4605194)))

(declare-fun b!7772656 () Bool)

(declare-fun res!3098342 () Bool)

(assert (=> b!7772656 (=> (not res!3098342) (not e!4605190))))

(assert (=> b!7772656 (= res!3098342 call!720396)))

(assert (=> b!7772656 (= e!4605195 e!4605190)))

(declare-fun bm!720390 () Bool)

(assert (=> bm!720390 (= call!720397 (validRegex!11178 (ite c!1432584 (reg!21093 r1!6279) (ite c!1432583 (regOne!42041 r1!6279) (regOne!42040 r1!6279)))))))

(declare-fun bm!720391 () Bool)

(assert (=> bm!720391 (= call!720396 call!720397)))

(declare-fun bm!720392 () Bool)

(assert (=> bm!720392 (= call!720395 (validRegex!11178 (ite c!1432583 (regTwo!42041 r1!6279) (regTwo!42040 r1!6279))))))

(assert (= (and d!2344636 (not res!3098345)) b!7772653))

(assert (= (and b!7772653 c!1432584) b!7772650))

(assert (= (and b!7772653 (not c!1432584)) b!7772651))

(assert (= (and b!7772650 res!3098343) b!7772648))

(assert (= (and b!7772651 c!1432583) b!7772656))

(assert (= (and b!7772651 (not c!1432583)) b!7772655))

(assert (= (and b!7772656 res!3098342) b!7772652))

(assert (= (and b!7772655 (not res!3098344)) b!7772654))

(assert (= (and b!7772654 res!3098341) b!7772649))

(assert (= (or b!7772656 b!7772654) bm!720391))

(assert (= (or b!7772652 b!7772649) bm!720392))

(assert (= (or b!7772648 bm!720391) bm!720390))

(declare-fun m!8225710 () Bool)

(assert (=> b!7772650 m!8225710))

(declare-fun m!8225712 () Bool)

(assert (=> bm!720390 m!8225712))

(declare-fun m!8225714 () Bool)

(assert (=> bm!720392 m!8225714))

(assert (=> start!740144 d!2344636))

(declare-fun b!7772667 () Bool)

(declare-fun e!4605199 () Bool)

(assert (=> b!7772667 (= e!4605199 tp_is_empty!51883)))

(declare-fun b!7772669 () Bool)

(declare-fun tp!2283500 () Bool)

(assert (=> b!7772669 (= e!4605199 tp!2283500)))

(declare-fun b!7772670 () Bool)

(declare-fun tp!2283498 () Bool)

(declare-fun tp!2283499 () Bool)

(assert (=> b!7772670 (= e!4605199 (and tp!2283498 tp!2283499))))

(assert (=> b!7772576 (= tp!2283449 e!4605199)))

(declare-fun b!7772668 () Bool)

(declare-fun tp!2283496 () Bool)

(declare-fun tp!2283497 () Bool)

(assert (=> b!7772668 (= e!4605199 (and tp!2283496 tp!2283497))))

(assert (= (and b!7772576 (is-ElementMatch!20764 (regOne!42041 r2!6217))) b!7772667))

(assert (= (and b!7772576 (is-Concat!29609 (regOne!42041 r2!6217))) b!7772668))

(assert (= (and b!7772576 (is-Star!20764 (regOne!42041 r2!6217))) b!7772669))

(assert (= (and b!7772576 (is-Union!20764 (regOne!42041 r2!6217))) b!7772670))

(declare-fun b!7772671 () Bool)

(declare-fun e!4605200 () Bool)

(assert (=> b!7772671 (= e!4605200 tp_is_empty!51883)))

(declare-fun b!7772673 () Bool)

(declare-fun tp!2283505 () Bool)

(assert (=> b!7772673 (= e!4605200 tp!2283505)))

(declare-fun b!7772674 () Bool)

(declare-fun tp!2283503 () Bool)

(declare-fun tp!2283504 () Bool)

(assert (=> b!7772674 (= e!4605200 (and tp!2283503 tp!2283504))))

(assert (=> b!7772576 (= tp!2283453 e!4605200)))

(declare-fun b!7772672 () Bool)

(declare-fun tp!2283501 () Bool)

(declare-fun tp!2283502 () Bool)

(assert (=> b!7772672 (= e!4605200 (and tp!2283501 tp!2283502))))

(assert (= (and b!7772576 (is-ElementMatch!20764 (regTwo!42041 r2!6217))) b!7772671))

(assert (= (and b!7772576 (is-Concat!29609 (regTwo!42041 r2!6217))) b!7772672))

(assert (= (and b!7772576 (is-Star!20764 (regTwo!42041 r2!6217))) b!7772673))

(assert (= (and b!7772576 (is-Union!20764 (regTwo!42041 r2!6217))) b!7772674))

(declare-fun b!7772675 () Bool)

(declare-fun e!4605201 () Bool)

(assert (=> b!7772675 (= e!4605201 tp_is_empty!51883)))

(declare-fun b!7772677 () Bool)

(declare-fun tp!2283510 () Bool)

(assert (=> b!7772677 (= e!4605201 tp!2283510)))

(declare-fun b!7772678 () Bool)

(declare-fun tp!2283508 () Bool)

(declare-fun tp!2283509 () Bool)

(assert (=> b!7772678 (= e!4605201 (and tp!2283508 tp!2283509))))

(assert (=> b!7772577 (= tp!2283446 e!4605201)))

(declare-fun b!7772676 () Bool)

(declare-fun tp!2283506 () Bool)

(declare-fun tp!2283507 () Bool)

(assert (=> b!7772676 (= e!4605201 (and tp!2283506 tp!2283507))))

(assert (= (and b!7772577 (is-ElementMatch!20764 (regOne!42040 r2!6217))) b!7772675))

(assert (= (and b!7772577 (is-Concat!29609 (regOne!42040 r2!6217))) b!7772676))

(assert (= (and b!7772577 (is-Star!20764 (regOne!42040 r2!6217))) b!7772677))

(assert (= (and b!7772577 (is-Union!20764 (regOne!42040 r2!6217))) b!7772678))

(declare-fun b!7772679 () Bool)

(declare-fun e!4605202 () Bool)

(assert (=> b!7772679 (= e!4605202 tp_is_empty!51883)))

(declare-fun b!7772681 () Bool)

(declare-fun tp!2283515 () Bool)

(assert (=> b!7772681 (= e!4605202 tp!2283515)))

(declare-fun b!7772682 () Bool)

(declare-fun tp!2283513 () Bool)

(declare-fun tp!2283514 () Bool)

(assert (=> b!7772682 (= e!4605202 (and tp!2283513 tp!2283514))))

(assert (=> b!7772577 (= tp!2283448 e!4605202)))

(declare-fun b!7772680 () Bool)

(declare-fun tp!2283511 () Bool)

(declare-fun tp!2283512 () Bool)

(assert (=> b!7772680 (= e!4605202 (and tp!2283511 tp!2283512))))

(assert (= (and b!7772577 (is-ElementMatch!20764 (regTwo!42040 r2!6217))) b!7772679))

(assert (= (and b!7772577 (is-Concat!29609 (regTwo!42040 r2!6217))) b!7772680))

(assert (= (and b!7772577 (is-Star!20764 (regTwo!42040 r2!6217))) b!7772681))

(assert (= (and b!7772577 (is-Union!20764 (regTwo!42040 r2!6217))) b!7772682))

(declare-fun b!7772685 () Bool)

(declare-fun e!4605205 () Bool)

(assert (=> b!7772685 (= e!4605205 tp_is_empty!51883)))

(declare-fun b!7772687 () Bool)

(declare-fun tp!2283520 () Bool)

(assert (=> b!7772687 (= e!4605205 tp!2283520)))

(declare-fun b!7772688 () Bool)

(declare-fun tp!2283518 () Bool)

(declare-fun tp!2283519 () Bool)

(assert (=> b!7772688 (= e!4605205 (and tp!2283518 tp!2283519))))

(assert (=> b!7772579 (= tp!2283454 e!4605205)))

(declare-fun b!7772686 () Bool)

(declare-fun tp!2283516 () Bool)

(declare-fun tp!2283517 () Bool)

(assert (=> b!7772686 (= e!4605205 (and tp!2283516 tp!2283517))))

(assert (= (and b!7772579 (is-ElementMatch!20764 (regOne!42041 r1!6279))) b!7772685))

(assert (= (and b!7772579 (is-Concat!29609 (regOne!42041 r1!6279))) b!7772686))

(assert (= (and b!7772579 (is-Star!20764 (regOne!42041 r1!6279))) b!7772687))

(assert (= (and b!7772579 (is-Union!20764 (regOne!42041 r1!6279))) b!7772688))

(declare-fun b!7772691 () Bool)

(declare-fun e!4605206 () Bool)

(assert (=> b!7772691 (= e!4605206 tp_is_empty!51883)))

(declare-fun b!7772693 () Bool)

(declare-fun tp!2283525 () Bool)

(assert (=> b!7772693 (= e!4605206 tp!2283525)))

(declare-fun b!7772694 () Bool)

(declare-fun tp!2283523 () Bool)

(declare-fun tp!2283524 () Bool)

(assert (=> b!7772694 (= e!4605206 (and tp!2283523 tp!2283524))))

(assert (=> b!7772579 (= tp!2283452 e!4605206)))

(declare-fun b!7772692 () Bool)

(declare-fun tp!2283521 () Bool)

(declare-fun tp!2283522 () Bool)

(assert (=> b!7772692 (= e!4605206 (and tp!2283521 tp!2283522))))

(assert (= (and b!7772579 (is-ElementMatch!20764 (regTwo!42041 r1!6279))) b!7772691))

(assert (= (and b!7772579 (is-Concat!29609 (regTwo!42041 r1!6279))) b!7772692))

(assert (= (and b!7772579 (is-Star!20764 (regTwo!42041 r1!6279))) b!7772693))

(assert (= (and b!7772579 (is-Union!20764 (regTwo!42041 r1!6279))) b!7772694))

(declare-fun b!7772697 () Bool)

(declare-fun e!4605209 () Bool)

(assert (=> b!7772697 (= e!4605209 tp_is_empty!51883)))

(declare-fun b!7772699 () Bool)

(declare-fun tp!2283530 () Bool)

(assert (=> b!7772699 (= e!4605209 tp!2283530)))

(declare-fun b!7772700 () Bool)

(declare-fun tp!2283528 () Bool)

(declare-fun tp!2283529 () Bool)

(assert (=> b!7772700 (= e!4605209 (and tp!2283528 tp!2283529))))

(assert (=> b!7772574 (= tp!2283455 e!4605209)))

(declare-fun b!7772698 () Bool)

(declare-fun tp!2283526 () Bool)

(declare-fun tp!2283527 () Bool)

(assert (=> b!7772698 (= e!4605209 (and tp!2283526 tp!2283527))))

(assert (= (and b!7772574 (is-ElementMatch!20764 (reg!21093 r1!6279))) b!7772697))

(assert (= (and b!7772574 (is-Concat!29609 (reg!21093 r1!6279))) b!7772698))

(assert (= (and b!7772574 (is-Star!20764 (reg!21093 r1!6279))) b!7772699))

(assert (= (and b!7772574 (is-Union!20764 (reg!21093 r1!6279))) b!7772700))

(declare-fun b!7772703 () Bool)

(declare-fun e!4605212 () Bool)

(assert (=> b!7772703 (= e!4605212 tp_is_empty!51883)))

(declare-fun b!7772705 () Bool)

(declare-fun tp!2283535 () Bool)

(assert (=> b!7772705 (= e!4605212 tp!2283535)))

(declare-fun b!7772706 () Bool)

(declare-fun tp!2283533 () Bool)

(declare-fun tp!2283534 () Bool)

(assert (=> b!7772706 (= e!4605212 (and tp!2283533 tp!2283534))))

(assert (=> b!7772575 (= tp!2283451 e!4605212)))

(declare-fun b!7772704 () Bool)

(declare-fun tp!2283531 () Bool)

(declare-fun tp!2283532 () Bool)

(assert (=> b!7772704 (= e!4605212 (and tp!2283531 tp!2283532))))

(assert (= (and b!7772575 (is-ElementMatch!20764 (regOne!42040 r1!6279))) b!7772703))

(assert (= (and b!7772575 (is-Concat!29609 (regOne!42040 r1!6279))) b!7772704))

(assert (= (and b!7772575 (is-Star!20764 (regOne!42040 r1!6279))) b!7772705))

(assert (= (and b!7772575 (is-Union!20764 (regOne!42040 r1!6279))) b!7772706))

(declare-fun b!7772711 () Bool)

(declare-fun e!4605217 () Bool)

(assert (=> b!7772711 (= e!4605217 tp_is_empty!51883)))

(declare-fun b!7772713 () Bool)

(declare-fun tp!2283540 () Bool)

(assert (=> b!7772713 (= e!4605217 tp!2283540)))

(declare-fun b!7772714 () Bool)

(declare-fun tp!2283538 () Bool)

(declare-fun tp!2283539 () Bool)

(assert (=> b!7772714 (= e!4605217 (and tp!2283538 tp!2283539))))

(assert (=> b!7772575 (= tp!2283450 e!4605217)))

(declare-fun b!7772712 () Bool)

(declare-fun tp!2283536 () Bool)

(declare-fun tp!2283537 () Bool)

(assert (=> b!7772712 (= e!4605217 (and tp!2283536 tp!2283537))))

(assert (= (and b!7772575 (is-ElementMatch!20764 (regTwo!42040 r1!6279))) b!7772711))

(assert (= (and b!7772575 (is-Concat!29609 (regTwo!42040 r1!6279))) b!7772712))

(assert (= (and b!7772575 (is-Star!20764 (regTwo!42040 r1!6279))) b!7772713))

(assert (= (and b!7772575 (is-Union!20764 (regTwo!42040 r1!6279))) b!7772714))

(declare-fun b!7772719 () Bool)

(declare-fun e!4605220 () Bool)

(assert (=> b!7772719 (= e!4605220 tp_is_empty!51883)))

(declare-fun b!7772721 () Bool)

(declare-fun tp!2283545 () Bool)

(assert (=> b!7772721 (= e!4605220 tp!2283545)))

(declare-fun b!7772722 () Bool)

(declare-fun tp!2283543 () Bool)

(declare-fun tp!2283544 () Bool)

(assert (=> b!7772722 (= e!4605220 (and tp!2283543 tp!2283544))))

(assert (=> b!7772581 (= tp!2283447 e!4605220)))

(declare-fun b!7772720 () Bool)

(declare-fun tp!2283541 () Bool)

(declare-fun tp!2283542 () Bool)

(assert (=> b!7772720 (= e!4605220 (and tp!2283541 tp!2283542))))

(assert (= (and b!7772581 (is-ElementMatch!20764 (reg!21093 r2!6217))) b!7772719))

(assert (= (and b!7772581 (is-Concat!29609 (reg!21093 r2!6217))) b!7772720))

(assert (= (and b!7772581 (is-Star!20764 (reg!21093 r2!6217))) b!7772721))

(assert (= (and b!7772581 (is-Union!20764 (reg!21093 r2!6217))) b!7772722))

(push 1)

(assert (not b!7772678))

(assert (not b!7772673))

(assert (not bm!720390))

(assert (not b!7772686))

(assert (not b!7772669))

(assert (not b!7772699))

(assert (not b!7772694))

(assert (not b!7772688))

(assert (not b!7772692))

(assert (not b!7772712))

(assert (not b!7772682))

(assert (not b!7772632))

(assert (not b!7772706))

(assert (not b!7772693))

(assert (not b!7772668))

(assert (not b!7772650))

(assert tp_is_empty!51883)

(assert (not b!7772704))

(assert (not b!7772687))

(assert (not bm!720386))

(assert (not bm!720392))

(assert (not b!7772720))

(assert (not bm!720387))

(assert (not b!7772680))

(assert (not b!7772677))

(assert (not b!7772672))

(assert (not b!7772674))

(assert (not b!7772700))

(assert (not b!7772670))

(assert (not bm!720384))

(assert (not b!7772705))

(assert (not b!7772721))

(assert (not b!7772714))

(assert (not b!7772681))

(assert (not b!7772641))

(assert (not b!7772676))

(assert (not bm!720389))

(assert (not b!7772722))

(assert (not b!7772713))

(assert (not b!7772698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

