; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724690 () Bool)

(assert start!724690)

(declare-fun b!7479207 () Bool)

(assert (=> b!7479207 true))

(assert (=> b!7479207 true))

(assert (=> b!7479207 true))

(declare-fun lambda!463409 () Int)

(declare-fun lambda!463408 () Int)

(assert (=> b!7479207 (not (= lambda!463409 lambda!463408))))

(assert (=> b!7479207 true))

(assert (=> b!7479207 true))

(assert (=> b!7479207 true))

(declare-fun bs!1932633 () Bool)

(declare-fun b!7479221 () Bool)

(assert (= bs!1932633 (and b!7479221 b!7479207)))

(declare-fun lambda!463410 () Int)

(declare-datatypes ((C!39492 0))(
  ( (C!39493 (val!30144 Int)) )
))
(declare-datatypes ((Regex!19609 0))(
  ( (ElementMatch!19609 (c!1381530 C!39492)) (Concat!28454 (regOne!39730 Regex!19609) (regTwo!39730 Regex!19609)) (EmptyExpr!19609) (Star!19609 (reg!19938 Regex!19609)) (EmptyLang!19609) (Union!19609 (regOne!39731 Regex!19609) (regTwo!39731 Regex!19609)) )
))
(declare-fun r1!5845 () Regex!19609)

(declare-fun lt!2627798 () Regex!19609)

(assert (=> bs!1932633 (= (= r1!5845 lt!2627798) (= lambda!463410 lambda!463408))))

(assert (=> bs!1932633 (not (= lambda!463410 lambda!463409))))

(assert (=> b!7479221 true))

(assert (=> b!7479221 true))

(assert (=> b!7479221 true))

(declare-fun lambda!463411 () Int)

(assert (=> bs!1932633 (not (= lambda!463411 lambda!463408))))

(assert (=> bs!1932633 (= (= r1!5845 lt!2627798) (= lambda!463411 lambda!463409))))

(assert (=> b!7479221 (not (= lambda!463411 lambda!463410))))

(assert (=> b!7479221 true))

(assert (=> b!7479221 true))

(assert (=> b!7479221 true))

(declare-fun e!4461371 () Bool)

(declare-fun e!4461375 () Bool)

(assert (=> b!7479207 (= e!4461371 e!4461375)))

(declare-fun res!3000599 () Bool)

(assert (=> b!7479207 (=> res!3000599 e!4461375)))

(declare-fun lt!2627792 () Bool)

(declare-fun lt!2627791 () Bool)

(assert (=> b!7479207 (= res!3000599 (or lt!2627792 (not lt!2627791)))))

(declare-fun Exists!4228 (Int) Bool)

(assert (=> b!7479207 (= (Exists!4228 lambda!463408) (Exists!4228 lambda!463409))))

(declare-datatypes ((List!72325 0))(
  ( (Nil!72201) (Cons!72201 (h!78649 C!39492) (t!386894 List!72325)) )
))
(declare-fun s!13591 () List!72325)

(declare-fun rTail!78 () Regex!19609)

(declare-datatypes ((Unit!166053 0))(
  ( (Unit!166054) )
))
(declare-fun lt!2627794 () Unit!166053)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2562 (Regex!19609 Regex!19609 List!72325) Unit!166053)

(assert (=> b!7479207 (= lt!2627794 (lemmaExistCutMatchRandMatchRSpecEquivalent!2562 lt!2627798 rTail!78 s!13591))))

(assert (=> b!7479207 (= lt!2627792 (Exists!4228 lambda!463408))))

(declare-datatypes ((tuple2!68668 0))(
  ( (tuple2!68669 (_1!37637 List!72325) (_2!37637 List!72325)) )
))
(declare-datatypes ((Option!17166 0))(
  ( (None!17165) (Some!17165 (v!54294 tuple2!68668)) )
))
(declare-fun isDefined!13855 (Option!17166) Bool)

(declare-fun findConcatSeparation!3288 (Regex!19609 Regex!19609 List!72325 List!72325 List!72325) Option!17166)

(assert (=> b!7479207 (= lt!2627792 (isDefined!13855 (findConcatSeparation!3288 lt!2627798 rTail!78 Nil!72201 s!13591 s!13591)))))

(declare-fun lt!2627793 () Unit!166053)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3046 (Regex!19609 Regex!19609 List!72325) Unit!166053)

(assert (=> b!7479207 (= lt!2627793 (lemmaFindConcatSeparationEquivalentToExists!3046 lt!2627798 rTail!78 s!13591))))

(declare-fun b!7479208 () Bool)

(declare-fun e!4461378 () Bool)

(declare-fun tp_is_empty!49507 () Bool)

(assert (=> b!7479208 (= e!4461378 tp_is_empty!49507)))

(declare-fun b!7479209 () Bool)

(declare-fun e!4461372 () Bool)

(declare-fun tp!2169303 () Bool)

(declare-fun tp!2169295 () Bool)

(assert (=> b!7479209 (= e!4461372 (and tp!2169303 tp!2169295))))

(declare-fun b!7479210 () Bool)

(assert (=> b!7479210 (= e!4461372 tp_is_empty!49507)))

(declare-fun b!7479211 () Bool)

(declare-fun e!4461373 () Bool)

(assert (=> b!7479211 (= e!4461373 tp_is_empty!49507)))

(declare-fun b!7479212 () Bool)

(declare-fun tp!2169301 () Bool)

(declare-fun tp!2169296 () Bool)

(assert (=> b!7479212 (= e!4461372 (and tp!2169301 tp!2169296))))

(declare-fun b!7479213 () Bool)

(declare-fun tp!2169298 () Bool)

(declare-fun tp!2169292 () Bool)

(assert (=> b!7479213 (= e!4461373 (and tp!2169298 tp!2169292))))

(declare-fun b!7479215 () Bool)

(declare-fun tp!2169304 () Bool)

(declare-fun tp!2169297 () Bool)

(assert (=> b!7479215 (= e!4461373 (and tp!2169304 tp!2169297))))

(declare-fun b!7479216 () Bool)

(declare-fun tp!2169307 () Bool)

(declare-fun tp!2169294 () Bool)

(assert (=> b!7479216 (= e!4461378 (and tp!2169307 tp!2169294))))

(declare-fun b!7479217 () Bool)

(declare-fun tp!2169299 () Bool)

(declare-fun tp!2169300 () Bool)

(assert (=> b!7479217 (= e!4461378 (and tp!2169299 tp!2169300))))

(declare-fun b!7479218 () Bool)

(declare-fun e!4461374 () Bool)

(assert (=> b!7479218 (= e!4461375 e!4461374)))

(declare-fun res!3000604 () Bool)

(assert (=> b!7479218 (=> res!3000604 e!4461374)))

(declare-fun lt!2627805 () Bool)

(declare-fun lt!2627803 () Bool)

(assert (=> b!7479218 (= res!3000604 (or (and (not lt!2627805) (not lt!2627803)) (not lt!2627805)))))

(declare-fun lt!2627795 () Regex!19609)

(declare-fun matchRSpec!4288 (Regex!19609 List!72325) Bool)

(assert (=> b!7479218 (= lt!2627803 (matchRSpec!4288 lt!2627795 s!13591))))

(declare-fun matchR!9373 (Regex!19609 List!72325) Bool)

(assert (=> b!7479218 (= lt!2627803 (matchR!9373 lt!2627795 s!13591))))

(declare-fun lt!2627788 () Unit!166053)

(declare-fun mainMatchTheorem!4282 (Regex!19609 List!72325) Unit!166053)

(assert (=> b!7479218 (= lt!2627788 (mainMatchTheorem!4282 lt!2627795 s!13591))))

(declare-fun lt!2627804 () Regex!19609)

(assert (=> b!7479218 (= lt!2627805 (matchRSpec!4288 lt!2627804 s!13591))))

(assert (=> b!7479218 (= lt!2627805 (matchR!9373 lt!2627804 s!13591))))

(declare-fun lt!2627797 () Unit!166053)

(assert (=> b!7479218 (= lt!2627797 (mainMatchTheorem!4282 lt!2627804 s!13591))))

(declare-fun b!7479219 () Bool)

(declare-fun res!3000602 () Bool)

(declare-fun e!4461377 () Bool)

(assert (=> b!7479219 (=> (not res!3000602) (not e!4461377))))

(declare-fun validRegex!10123 (Regex!19609) Bool)

(assert (=> b!7479219 (= res!3000602 (validRegex!10123 rTail!78))))

(declare-fun b!7479220 () Bool)

(declare-fun tp!2169306 () Bool)

(assert (=> b!7479220 (= e!4461373 tp!2169306)))

(declare-fun lt!2627800 () Option!17166)

(declare-fun get!25277 (Option!17166) tuple2!68668)

(assert (=> b!7479221 (= e!4461374 (matchR!9373 r1!5845 (_1!37637 (get!25277 lt!2627800))))))

(assert (=> b!7479221 (= (Exists!4228 lambda!463410) (Exists!4228 lambda!463411))))

(declare-fun lt!2627790 () Unit!166053)

(assert (=> b!7479221 (= lt!2627790 (lemmaExistCutMatchRandMatchRSpecEquivalent!2562 r1!5845 rTail!78 s!13591))))

(assert (=> b!7479221 (= (isDefined!13855 lt!2627800) (Exists!4228 lambda!463410))))

(assert (=> b!7479221 (= lt!2627800 (findConcatSeparation!3288 r1!5845 rTail!78 Nil!72201 s!13591 s!13591))))

(declare-fun lt!2627787 () Unit!166053)

(assert (=> b!7479221 (= lt!2627787 (lemmaFindConcatSeparationEquivalentToExists!3046 r1!5845 rTail!78 s!13591))))

(declare-fun b!7479222 () Bool)

(declare-fun tp!2169305 () Bool)

(assert (=> b!7479222 (= e!4461372 tp!2169305)))

(declare-fun b!7479223 () Bool)

(declare-fun res!3000603 () Bool)

(assert (=> b!7479223 (=> (not res!3000603) (not e!4461377))))

(declare-fun r2!5783 () Regex!19609)

(assert (=> b!7479223 (= res!3000603 (validRegex!10123 r2!5783))))

(declare-fun b!7479224 () Bool)

(assert (=> b!7479224 (= e!4461377 (not e!4461371))))

(declare-fun res!3000600 () Bool)

(assert (=> b!7479224 (=> res!3000600 e!4461371)))

(declare-fun lt!2627801 () Bool)

(assert (=> b!7479224 (= res!3000600 lt!2627801)))

(declare-fun lt!2627802 () Regex!19609)

(assert (=> b!7479224 (= lt!2627791 (matchRSpec!4288 lt!2627802 s!13591))))

(assert (=> b!7479224 (= lt!2627791 (matchR!9373 lt!2627802 s!13591))))

(declare-fun lt!2627796 () Unit!166053)

(assert (=> b!7479224 (= lt!2627796 (mainMatchTheorem!4282 lt!2627802 s!13591))))

(declare-fun lt!2627789 () Regex!19609)

(assert (=> b!7479224 (= lt!2627801 (matchRSpec!4288 lt!2627789 s!13591))))

(assert (=> b!7479224 (= lt!2627801 (matchR!9373 lt!2627789 s!13591))))

(declare-fun lt!2627799 () Unit!166053)

(assert (=> b!7479224 (= lt!2627799 (mainMatchTheorem!4282 lt!2627789 s!13591))))

(assert (=> b!7479224 (= lt!2627802 (Union!19609 lt!2627804 lt!2627795))))

(assert (=> b!7479224 (= lt!2627795 (Concat!28454 r2!5783 rTail!78))))

(assert (=> b!7479224 (= lt!2627804 (Concat!28454 r1!5845 rTail!78))))

(assert (=> b!7479224 (= lt!2627789 (Concat!28454 lt!2627798 rTail!78))))

(assert (=> b!7479224 (= lt!2627798 (Union!19609 r1!5845 r2!5783))))

(declare-fun b!7479225 () Bool)

(declare-fun tp!2169293 () Bool)

(assert (=> b!7479225 (= e!4461378 tp!2169293)))

(declare-fun res!3000601 () Bool)

(assert (=> start!724690 (=> (not res!3000601) (not e!4461377))))

(assert (=> start!724690 (= res!3000601 (validRegex!10123 r1!5845))))

(assert (=> start!724690 e!4461377))

(assert (=> start!724690 e!4461378))

(assert (=> start!724690 e!4461373))

(assert (=> start!724690 e!4461372))

(declare-fun e!4461376 () Bool)

(assert (=> start!724690 e!4461376))

(declare-fun b!7479214 () Bool)

(declare-fun tp!2169302 () Bool)

(assert (=> b!7479214 (= e!4461376 (and tp_is_empty!49507 tp!2169302))))

(assert (= (and start!724690 res!3000601) b!7479223))

(assert (= (and b!7479223 res!3000603) b!7479219))

(assert (= (and b!7479219 res!3000602) b!7479224))

(assert (= (and b!7479224 (not res!3000600)) b!7479207))

(assert (= (and b!7479207 (not res!3000599)) b!7479218))

(assert (= (and b!7479218 (not res!3000604)) b!7479221))

(get-info :version)

(assert (= (and start!724690 ((_ is ElementMatch!19609) r1!5845)) b!7479208))

(assert (= (and start!724690 ((_ is Concat!28454) r1!5845)) b!7479216))

(assert (= (and start!724690 ((_ is Star!19609) r1!5845)) b!7479225))

(assert (= (and start!724690 ((_ is Union!19609) r1!5845)) b!7479217))

(assert (= (and start!724690 ((_ is ElementMatch!19609) r2!5783)) b!7479211))

(assert (= (and start!724690 ((_ is Concat!28454) r2!5783)) b!7479215))

(assert (= (and start!724690 ((_ is Star!19609) r2!5783)) b!7479220))

(assert (= (and start!724690 ((_ is Union!19609) r2!5783)) b!7479213))

(assert (= (and start!724690 ((_ is ElementMatch!19609) rTail!78)) b!7479210))

(assert (= (and start!724690 ((_ is Concat!28454) rTail!78)) b!7479212))

(assert (= (and start!724690 ((_ is Star!19609) rTail!78)) b!7479222))

(assert (= (and start!724690 ((_ is Union!19609) rTail!78)) b!7479209))

(assert (= (and start!724690 ((_ is Cons!72201) s!13591)) b!7479214))

(declare-fun m!8072094 () Bool)

(assert (=> b!7479219 m!8072094))

(declare-fun m!8072096 () Bool)

(assert (=> b!7479223 m!8072096))

(declare-fun m!8072098 () Bool)

(assert (=> b!7479218 m!8072098))

(declare-fun m!8072100 () Bool)

(assert (=> b!7479218 m!8072100))

(declare-fun m!8072102 () Bool)

(assert (=> b!7479218 m!8072102))

(declare-fun m!8072104 () Bool)

(assert (=> b!7479218 m!8072104))

(declare-fun m!8072106 () Bool)

(assert (=> b!7479218 m!8072106))

(declare-fun m!8072108 () Bool)

(assert (=> b!7479218 m!8072108))

(declare-fun m!8072110 () Bool)

(assert (=> b!7479221 m!8072110))

(declare-fun m!8072112 () Bool)

(assert (=> b!7479221 m!8072112))

(declare-fun m!8072114 () Bool)

(assert (=> b!7479221 m!8072114))

(declare-fun m!8072116 () Bool)

(assert (=> b!7479221 m!8072116))

(declare-fun m!8072118 () Bool)

(assert (=> b!7479221 m!8072118))

(declare-fun m!8072120 () Bool)

(assert (=> b!7479221 m!8072120))

(declare-fun m!8072122 () Bool)

(assert (=> b!7479221 m!8072122))

(declare-fun m!8072124 () Bool)

(assert (=> b!7479221 m!8072124))

(assert (=> b!7479221 m!8072122))

(declare-fun m!8072126 () Bool)

(assert (=> b!7479207 m!8072126))

(assert (=> b!7479207 m!8072126))

(declare-fun m!8072128 () Bool)

(assert (=> b!7479207 m!8072128))

(declare-fun m!8072130 () Bool)

(assert (=> b!7479207 m!8072130))

(declare-fun m!8072132 () Bool)

(assert (=> b!7479207 m!8072132))

(declare-fun m!8072134 () Bool)

(assert (=> b!7479207 m!8072134))

(declare-fun m!8072136 () Bool)

(assert (=> b!7479207 m!8072136))

(assert (=> b!7479207 m!8072134))

(declare-fun m!8072138 () Bool)

(assert (=> start!724690 m!8072138))

(declare-fun m!8072140 () Bool)

(assert (=> b!7479224 m!8072140))

(declare-fun m!8072142 () Bool)

(assert (=> b!7479224 m!8072142))

(declare-fun m!8072144 () Bool)

(assert (=> b!7479224 m!8072144))

(declare-fun m!8072146 () Bool)

(assert (=> b!7479224 m!8072146))

(declare-fun m!8072148 () Bool)

(assert (=> b!7479224 m!8072148))

(declare-fun m!8072150 () Bool)

(assert (=> b!7479224 m!8072150))

(check-sat (not b!7479225) (not b!7479217) tp_is_empty!49507 (not b!7479216) (not b!7479224) (not start!724690) (not b!7479215) (not b!7479223) (not b!7479220) (not b!7479218) (not b!7479222) (not b!7479207) (not b!7479221) (not b!7479213) (not b!7479219) (not b!7479209) (not b!7479212) (not b!7479214))
(check-sat)
(get-model)

(declare-fun b!7479256 () Bool)

(declare-fun res!3000626 () Bool)

(declare-fun e!4461401 () Bool)

(assert (=> b!7479256 (=> (not res!3000626) (not e!4461401))))

(declare-fun call!686639 () Bool)

(assert (=> b!7479256 (= res!3000626 call!686639)))

(declare-fun e!4461402 () Bool)

(assert (=> b!7479256 (= e!4461402 e!4461401)))

(declare-fun b!7479257 () Bool)

(declare-fun e!4461398 () Bool)

(declare-fun e!4461399 () Bool)

(assert (=> b!7479257 (= e!4461398 e!4461399)))

(declare-fun res!3000627 () Bool)

(declare-fun nullable!8547 (Regex!19609) Bool)

(assert (=> b!7479257 (= res!3000627 (not (nullable!8547 (reg!19938 r1!5845))))))

(assert (=> b!7479257 (=> (not res!3000627) (not e!4461399))))

(declare-fun bm!686632 () Bool)

(declare-fun c!1381535 () Bool)

(assert (=> bm!686632 (= call!686639 (validRegex!10123 (ite c!1381535 (regOne!39731 r1!5845) (regOne!39730 r1!5845))))))

(declare-fun b!7479258 () Bool)

(declare-fun e!4461400 () Bool)

(declare-fun call!686638 () Bool)

(assert (=> b!7479258 (= e!4461400 call!686638)))

(declare-fun b!7479259 () Bool)

(assert (=> b!7479259 (= e!4461398 e!4461402)))

(assert (=> b!7479259 (= c!1381535 ((_ is Union!19609) r1!5845))))

(declare-fun b!7479260 () Bool)

(declare-fun e!4461403 () Bool)

(assert (=> b!7479260 (= e!4461403 e!4461398)))

(declare-fun c!1381536 () Bool)

(assert (=> b!7479260 (= c!1381536 ((_ is Star!19609) r1!5845))))

(declare-fun d!2299862 () Bool)

(declare-fun res!3000624 () Bool)

(assert (=> d!2299862 (=> res!3000624 e!4461403)))

(assert (=> d!2299862 (= res!3000624 ((_ is ElementMatch!19609) r1!5845))))

(assert (=> d!2299862 (= (validRegex!10123 r1!5845) e!4461403)))

(declare-fun bm!686633 () Bool)

(declare-fun call!686637 () Bool)

(assert (=> bm!686633 (= call!686637 (validRegex!10123 (ite c!1381536 (reg!19938 r1!5845) (ite c!1381535 (regTwo!39731 r1!5845) (regTwo!39730 r1!5845)))))))

(declare-fun b!7479261 () Bool)

(assert (=> b!7479261 (= e!4461401 call!686638)))

(declare-fun b!7479262 () Bool)

(assert (=> b!7479262 (= e!4461399 call!686637)))

(declare-fun bm!686634 () Bool)

(assert (=> bm!686634 (= call!686638 call!686637)))

(declare-fun b!7479263 () Bool)

(declare-fun e!4461397 () Bool)

(assert (=> b!7479263 (= e!4461397 e!4461400)))

(declare-fun res!3000623 () Bool)

(assert (=> b!7479263 (=> (not res!3000623) (not e!4461400))))

(assert (=> b!7479263 (= res!3000623 call!686639)))

(declare-fun b!7479264 () Bool)

(declare-fun res!3000625 () Bool)

(assert (=> b!7479264 (=> res!3000625 e!4461397)))

(assert (=> b!7479264 (= res!3000625 (not ((_ is Concat!28454) r1!5845)))))

(assert (=> b!7479264 (= e!4461402 e!4461397)))

(assert (= (and d!2299862 (not res!3000624)) b!7479260))

(assert (= (and b!7479260 c!1381536) b!7479257))

(assert (= (and b!7479260 (not c!1381536)) b!7479259))

(assert (= (and b!7479257 res!3000627) b!7479262))

(assert (= (and b!7479259 c!1381535) b!7479256))

(assert (= (and b!7479259 (not c!1381535)) b!7479264))

(assert (= (and b!7479256 res!3000626) b!7479261))

(assert (= (and b!7479264 (not res!3000625)) b!7479263))

(assert (= (and b!7479263 res!3000623) b!7479258))

(assert (= (or b!7479261 b!7479258) bm!686634))

(assert (= (or b!7479256 b!7479263) bm!686632))

(assert (= (or b!7479262 bm!686634) bm!686633))

(declare-fun m!8072162 () Bool)

(assert (=> b!7479257 m!8072162))

(declare-fun m!8072164 () Bool)

(assert (=> bm!686632 m!8072164))

(declare-fun m!8072166 () Bool)

(assert (=> bm!686633 m!8072166))

(assert (=> start!724690 d!2299862))

(declare-fun d!2299870 () Bool)

(declare-fun e!4461448 () Bool)

(assert (=> d!2299870 e!4461448))

(declare-fun res!3000674 () Bool)

(assert (=> d!2299870 (=> res!3000674 e!4461448)))

(declare-fun e!4461447 () Bool)

(assert (=> d!2299870 (= res!3000674 e!4461447)))

(declare-fun res!3000677 () Bool)

(assert (=> d!2299870 (=> (not res!3000677) (not e!4461447))))

(declare-fun lt!2627830 () Option!17166)

(assert (=> d!2299870 (= res!3000677 (isDefined!13855 lt!2627830))))

(declare-fun e!4461449 () Option!17166)

(assert (=> d!2299870 (= lt!2627830 e!4461449)))

(declare-fun c!1381553 () Bool)

(declare-fun e!4461445 () Bool)

(assert (=> d!2299870 (= c!1381553 e!4461445)))

(declare-fun res!3000676 () Bool)

(assert (=> d!2299870 (=> (not res!3000676) (not e!4461445))))

(assert (=> d!2299870 (= res!3000676 (matchR!9373 r1!5845 Nil!72201))))

(assert (=> d!2299870 (validRegex!10123 r1!5845)))

(assert (=> d!2299870 (= (findConcatSeparation!3288 r1!5845 rTail!78 Nil!72201 s!13591 s!13591) lt!2627830)))

(declare-fun b!7479342 () Bool)

(declare-fun res!3000675 () Bool)

(assert (=> b!7479342 (=> (not res!3000675) (not e!4461447))))

(assert (=> b!7479342 (= res!3000675 (matchR!9373 rTail!78 (_2!37637 (get!25277 lt!2627830))))))

(declare-fun b!7479343 () Bool)

(assert (=> b!7479343 (= e!4461445 (matchR!9373 rTail!78 s!13591))))

(declare-fun b!7479344 () Bool)

(declare-fun lt!2627831 () Unit!166053)

(declare-fun lt!2627829 () Unit!166053)

(assert (=> b!7479344 (= lt!2627831 lt!2627829)))

(declare-fun ++!17223 (List!72325 List!72325) List!72325)

(assert (=> b!7479344 (= (++!17223 (++!17223 Nil!72201 (Cons!72201 (h!78649 s!13591) Nil!72201)) (t!386894 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3099 (List!72325 C!39492 List!72325 List!72325) Unit!166053)

(assert (=> b!7479344 (= lt!2627829 (lemmaMoveElementToOtherListKeepsConcatEq!3099 Nil!72201 (h!78649 s!13591) (t!386894 s!13591) s!13591))))

(declare-fun e!4461446 () Option!17166)

(assert (=> b!7479344 (= e!4461446 (findConcatSeparation!3288 r1!5845 rTail!78 (++!17223 Nil!72201 (Cons!72201 (h!78649 s!13591) Nil!72201)) (t!386894 s!13591) s!13591))))

(declare-fun b!7479345 () Bool)

(assert (=> b!7479345 (= e!4461446 None!17165)))

(declare-fun b!7479346 () Bool)

(assert (=> b!7479346 (= e!4461447 (= (++!17223 (_1!37637 (get!25277 lt!2627830)) (_2!37637 (get!25277 lt!2627830))) s!13591))))

(declare-fun b!7479347 () Bool)

(assert (=> b!7479347 (= e!4461449 (Some!17165 (tuple2!68669 Nil!72201 s!13591)))))

(declare-fun b!7479348 () Bool)

(declare-fun res!3000673 () Bool)

(assert (=> b!7479348 (=> (not res!3000673) (not e!4461447))))

(assert (=> b!7479348 (= res!3000673 (matchR!9373 r1!5845 (_1!37637 (get!25277 lt!2627830))))))

(declare-fun b!7479349 () Bool)

(assert (=> b!7479349 (= e!4461448 (not (isDefined!13855 lt!2627830)))))

(declare-fun b!7479350 () Bool)

(assert (=> b!7479350 (= e!4461449 e!4461446)))

(declare-fun c!1381554 () Bool)

(assert (=> b!7479350 (= c!1381554 ((_ is Nil!72201) s!13591))))

(assert (= (and d!2299870 res!3000676) b!7479343))

(assert (= (and d!2299870 c!1381553) b!7479347))

(assert (= (and d!2299870 (not c!1381553)) b!7479350))

(assert (= (and b!7479350 c!1381554) b!7479345))

(assert (= (and b!7479350 (not c!1381554)) b!7479344))

(assert (= (and d!2299870 res!3000677) b!7479348))

(assert (= (and b!7479348 res!3000673) b!7479342))

(assert (= (and b!7479342 res!3000675) b!7479346))

(assert (= (and d!2299870 (not res!3000674)) b!7479349))

(declare-fun m!8072198 () Bool)

(assert (=> b!7479348 m!8072198))

(declare-fun m!8072200 () Bool)

(assert (=> b!7479348 m!8072200))

(assert (=> b!7479342 m!8072198))

(declare-fun m!8072202 () Bool)

(assert (=> b!7479342 m!8072202))

(declare-fun m!8072204 () Bool)

(assert (=> b!7479349 m!8072204))

(assert (=> d!2299870 m!8072204))

(declare-fun m!8072206 () Bool)

(assert (=> d!2299870 m!8072206))

(assert (=> d!2299870 m!8072138))

(declare-fun m!8072208 () Bool)

(assert (=> b!7479343 m!8072208))

(declare-fun m!8072210 () Bool)

(assert (=> b!7479344 m!8072210))

(assert (=> b!7479344 m!8072210))

(declare-fun m!8072212 () Bool)

(assert (=> b!7479344 m!8072212))

(declare-fun m!8072214 () Bool)

(assert (=> b!7479344 m!8072214))

(assert (=> b!7479344 m!8072210))

(declare-fun m!8072216 () Bool)

(assert (=> b!7479344 m!8072216))

(assert (=> b!7479346 m!8072198))

(declare-fun m!8072218 () Bool)

(assert (=> b!7479346 m!8072218))

(assert (=> b!7479221 d!2299870))

(declare-fun bs!1932647 () Bool)

(declare-fun d!2299880 () Bool)

(assert (= bs!1932647 (and d!2299880 b!7479207)))

(declare-fun lambda!463427 () Int)

(assert (=> bs!1932647 (= (= r1!5845 lt!2627798) (= lambda!463427 lambda!463408))))

(assert (=> bs!1932647 (not (= lambda!463427 lambda!463409))))

(declare-fun bs!1932651 () Bool)

(assert (= bs!1932651 (and d!2299880 b!7479221)))

(assert (=> bs!1932651 (= lambda!463427 lambda!463410)))

(assert (=> bs!1932651 (not (= lambda!463427 lambda!463411))))

(assert (=> d!2299880 true))

(assert (=> d!2299880 true))

(assert (=> d!2299880 true))

(assert (=> d!2299880 (= (isDefined!13855 (findConcatSeparation!3288 r1!5845 rTail!78 Nil!72201 s!13591 s!13591)) (Exists!4228 lambda!463427))))

(declare-fun lt!2627839 () Unit!166053)

(declare-fun choose!57822 (Regex!19609 Regex!19609 List!72325) Unit!166053)

(assert (=> d!2299880 (= lt!2627839 (choose!57822 r1!5845 rTail!78 s!13591))))

(assert (=> d!2299880 (validRegex!10123 r1!5845)))

(assert (=> d!2299880 (= (lemmaFindConcatSeparationEquivalentToExists!3046 r1!5845 rTail!78 s!13591) lt!2627839)))

(declare-fun bs!1932655 () Bool)

(assert (= bs!1932655 d!2299880))

(declare-fun m!8072242 () Bool)

(assert (=> bs!1932655 m!8072242))

(assert (=> bs!1932655 m!8072138))

(assert (=> bs!1932655 m!8072120))

(declare-fun m!8072244 () Bool)

(assert (=> bs!1932655 m!8072244))

(declare-fun m!8072246 () Bool)

(assert (=> bs!1932655 m!8072246))

(assert (=> bs!1932655 m!8072120))

(assert (=> b!7479221 d!2299880))

(declare-fun b!7479533 () Bool)

(declare-fun res!3000774 () Bool)

(declare-fun e!4461565 () Bool)

(assert (=> b!7479533 (=> (not res!3000774) (not e!4461565))))

(declare-fun isEmpty!41209 (List!72325) Bool)

(declare-fun tail!14915 (List!72325) List!72325)

(assert (=> b!7479533 (= res!3000774 (isEmpty!41209 (tail!14915 (_1!37637 (get!25277 lt!2627800)))))))

(declare-fun b!7479534 () Bool)

(declare-fun res!3000775 () Bool)

(declare-fun e!4461561 () Bool)

(assert (=> b!7479534 (=> res!3000775 e!4461561)))

(assert (=> b!7479534 (= res!3000775 (not ((_ is ElementMatch!19609) r1!5845)))))

(declare-fun e!4461562 () Bool)

(assert (=> b!7479534 (= e!4461562 e!4461561)))

(declare-fun b!7479535 () Bool)

(declare-fun res!3000779 () Bool)

(declare-fun e!4461559 () Bool)

(assert (=> b!7479535 (=> res!3000779 e!4461559)))

(assert (=> b!7479535 (= res!3000779 (not (isEmpty!41209 (tail!14915 (_1!37637 (get!25277 lt!2627800))))))))

(declare-fun b!7479536 () Bool)

(declare-fun lt!2627849 () Bool)

(assert (=> b!7479536 (= e!4461562 (not lt!2627849))))

(declare-fun b!7479537 () Bool)

(declare-fun head!15346 (List!72325) C!39492)

(assert (=> b!7479537 (= e!4461565 (= (head!15346 (_1!37637 (get!25277 lt!2627800))) (c!1381530 r1!5845)))))

(declare-fun b!7479538 () Bool)

(declare-fun e!4461564 () Bool)

(assert (=> b!7479538 (= e!4461564 (nullable!8547 r1!5845))))

(declare-fun b!7479539 () Bool)

(declare-fun derivativeStep!5606 (Regex!19609 C!39492) Regex!19609)

(assert (=> b!7479539 (= e!4461564 (matchR!9373 (derivativeStep!5606 r1!5845 (head!15346 (_1!37637 (get!25277 lt!2627800)))) (tail!14915 (_1!37637 (get!25277 lt!2627800)))))))

(declare-fun b!7479541 () Bool)

(declare-fun e!4461560 () Bool)

(assert (=> b!7479541 (= e!4461561 e!4461560)))

(declare-fun res!3000776 () Bool)

(assert (=> b!7479541 (=> (not res!3000776) (not e!4461560))))

(assert (=> b!7479541 (= res!3000776 (not lt!2627849))))

(declare-fun b!7479542 () Bool)

(assert (=> b!7479542 (= e!4461560 e!4461559)))

(declare-fun res!3000778 () Bool)

(assert (=> b!7479542 (=> res!3000778 e!4461559)))

(declare-fun call!686670 () Bool)

(assert (=> b!7479542 (= res!3000778 call!686670)))

(declare-fun b!7479543 () Bool)

(declare-fun e!4461563 () Bool)

(assert (=> b!7479543 (= e!4461563 (= lt!2627849 call!686670))))

(declare-fun b!7479544 () Bool)

(declare-fun res!3000780 () Bool)

(assert (=> b!7479544 (=> (not res!3000780) (not e!4461565))))

(assert (=> b!7479544 (= res!3000780 (not call!686670))))

(declare-fun b!7479545 () Bool)

(assert (=> b!7479545 (= e!4461559 (not (= (head!15346 (_1!37637 (get!25277 lt!2627800))) (c!1381530 r1!5845))))))

(declare-fun bm!686665 () Bool)

(assert (=> bm!686665 (= call!686670 (isEmpty!41209 (_1!37637 (get!25277 lt!2627800))))))

(declare-fun b!7479546 () Bool)

(assert (=> b!7479546 (= e!4461563 e!4461562)))

(declare-fun c!1381598 () Bool)

(assert (=> b!7479546 (= c!1381598 ((_ is EmptyLang!19609) r1!5845))))

(declare-fun d!2299888 () Bool)

(assert (=> d!2299888 e!4461563))

(declare-fun c!1381599 () Bool)

(assert (=> d!2299888 (= c!1381599 ((_ is EmptyExpr!19609) r1!5845))))

(assert (=> d!2299888 (= lt!2627849 e!4461564)))

(declare-fun c!1381600 () Bool)

(assert (=> d!2299888 (= c!1381600 (isEmpty!41209 (_1!37637 (get!25277 lt!2627800))))))

(assert (=> d!2299888 (validRegex!10123 r1!5845)))

(assert (=> d!2299888 (= (matchR!9373 r1!5845 (_1!37637 (get!25277 lt!2627800))) lt!2627849)))

(declare-fun b!7479540 () Bool)

(declare-fun res!3000781 () Bool)

(assert (=> b!7479540 (=> res!3000781 e!4461561)))

(assert (=> b!7479540 (= res!3000781 e!4461565)))

(declare-fun res!3000777 () Bool)

(assert (=> b!7479540 (=> (not res!3000777) (not e!4461565))))

(assert (=> b!7479540 (= res!3000777 lt!2627849)))

(assert (= (and d!2299888 c!1381600) b!7479538))

(assert (= (and d!2299888 (not c!1381600)) b!7479539))

(assert (= (and d!2299888 c!1381599) b!7479543))

(assert (= (and d!2299888 (not c!1381599)) b!7479546))

(assert (= (and b!7479546 c!1381598) b!7479536))

(assert (= (and b!7479546 (not c!1381598)) b!7479534))

(assert (= (and b!7479534 (not res!3000775)) b!7479540))

(assert (= (and b!7479540 res!3000777) b!7479544))

(assert (= (and b!7479544 res!3000780) b!7479533))

(assert (= (and b!7479533 res!3000774) b!7479537))

(assert (= (and b!7479540 (not res!3000781)) b!7479541))

(assert (= (and b!7479541 res!3000776) b!7479542))

(assert (= (and b!7479542 (not res!3000778)) b!7479535))

(assert (= (and b!7479535 (not res!3000779)) b!7479545))

(assert (= (or b!7479543 b!7479542 b!7479544) bm!686665))

(declare-fun m!8072330 () Bool)

(assert (=> b!7479533 m!8072330))

(assert (=> b!7479533 m!8072330))

(declare-fun m!8072332 () Bool)

(assert (=> b!7479533 m!8072332))

(declare-fun m!8072334 () Bool)

(assert (=> b!7479545 m!8072334))

(assert (=> b!7479539 m!8072334))

(assert (=> b!7479539 m!8072334))

(declare-fun m!8072336 () Bool)

(assert (=> b!7479539 m!8072336))

(assert (=> b!7479539 m!8072330))

(assert (=> b!7479539 m!8072336))

(assert (=> b!7479539 m!8072330))

(declare-fun m!8072338 () Bool)

(assert (=> b!7479539 m!8072338))

(declare-fun m!8072340 () Bool)

(assert (=> b!7479538 m!8072340))

(assert (=> b!7479537 m!8072334))

(declare-fun m!8072342 () Bool)

(assert (=> d!2299888 m!8072342))

(assert (=> d!2299888 m!8072138))

(assert (=> bm!686665 m!8072342))

(assert (=> b!7479535 m!8072330))

(assert (=> b!7479535 m!8072330))

(assert (=> b!7479535 m!8072332))

(assert (=> b!7479221 d!2299888))

(declare-fun d!2299918 () Bool)

(assert (=> d!2299918 (= (get!25277 lt!2627800) (v!54294 lt!2627800))))

(assert (=> b!7479221 d!2299918))

(declare-fun d!2299920 () Bool)

(declare-fun isEmpty!41210 (Option!17166) Bool)

(assert (=> d!2299920 (= (isDefined!13855 lt!2627800) (not (isEmpty!41210 lt!2627800)))))

(declare-fun bs!1932714 () Bool)

(assert (= bs!1932714 d!2299920))

(declare-fun m!8072350 () Bool)

(assert (=> bs!1932714 m!8072350))

(assert (=> b!7479221 d!2299920))

(declare-fun bs!1932742 () Bool)

(declare-fun d!2299924 () Bool)

(assert (= bs!1932742 (and d!2299924 b!7479207)))

(declare-fun lambda!463443 () Int)

(assert (=> bs!1932742 (= (= r1!5845 lt!2627798) (= lambda!463443 lambda!463408))))

(declare-fun bs!1932743 () Bool)

(assert (= bs!1932743 (and d!2299924 b!7479221)))

(assert (=> bs!1932743 (not (= lambda!463443 lambda!463411))))

(assert (=> bs!1932743 (= lambda!463443 lambda!463410)))

(assert (=> bs!1932742 (not (= lambda!463443 lambda!463409))))

(declare-fun bs!1932744 () Bool)

(assert (= bs!1932744 (and d!2299924 d!2299880)))

(assert (=> bs!1932744 (= lambda!463443 lambda!463427)))

(assert (=> d!2299924 true))

(assert (=> d!2299924 true))

(assert (=> d!2299924 true))

(declare-fun lambda!463444 () Int)

(assert (=> bs!1932742 (not (= lambda!463444 lambda!463408))))

(assert (=> bs!1932743 (= lambda!463444 lambda!463411)))

(assert (=> bs!1932742 (= (= r1!5845 lt!2627798) (= lambda!463444 lambda!463409))))

(assert (=> bs!1932744 (not (= lambda!463444 lambda!463427))))

(assert (=> bs!1932743 (not (= lambda!463444 lambda!463410))))

(declare-fun bs!1932745 () Bool)

(assert (= bs!1932745 d!2299924))

(assert (=> bs!1932745 (not (= lambda!463444 lambda!463443))))

(assert (=> d!2299924 true))

(assert (=> d!2299924 true))

(assert (=> d!2299924 true))

(assert (=> d!2299924 (= (Exists!4228 lambda!463443) (Exists!4228 lambda!463444))))

(declare-fun lt!2627856 () Unit!166053)

(declare-fun choose!57823 (Regex!19609 Regex!19609 List!72325) Unit!166053)

(assert (=> d!2299924 (= lt!2627856 (choose!57823 r1!5845 rTail!78 s!13591))))

(assert (=> d!2299924 (validRegex!10123 r1!5845)))

(assert (=> d!2299924 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2562 r1!5845 rTail!78 s!13591) lt!2627856)))

(declare-fun m!8072378 () Bool)

(assert (=> bs!1932745 m!8072378))

(declare-fun m!8072380 () Bool)

(assert (=> bs!1932745 m!8072380))

(declare-fun m!8072382 () Bool)

(assert (=> bs!1932745 m!8072382))

(assert (=> bs!1932745 m!8072138))

(assert (=> b!7479221 d!2299924))

(declare-fun d!2299934 () Bool)

(declare-fun choose!57824 (Int) Bool)

(assert (=> d!2299934 (= (Exists!4228 lambda!463410) (choose!57824 lambda!463410))))

(declare-fun bs!1932746 () Bool)

(assert (= bs!1932746 d!2299934))

(declare-fun m!8072384 () Bool)

(assert (=> bs!1932746 m!8072384))

(assert (=> b!7479221 d!2299934))

(declare-fun d!2299936 () Bool)

(assert (=> d!2299936 (= (Exists!4228 lambda!463411) (choose!57824 lambda!463411))))

(declare-fun bs!1932747 () Bool)

(assert (= bs!1932747 d!2299936))

(declare-fun m!8072386 () Bool)

(assert (=> bs!1932747 m!8072386))

(assert (=> b!7479221 d!2299936))

(declare-fun b!7479680 () Bool)

(declare-fun res!3000815 () Bool)

(declare-fun e!4461622 () Bool)

(assert (=> b!7479680 (=> (not res!3000815) (not e!4461622))))

(declare-fun call!686679 () Bool)

(assert (=> b!7479680 (= res!3000815 call!686679)))

(declare-fun e!4461623 () Bool)

(assert (=> b!7479680 (= e!4461623 e!4461622)))

(declare-fun b!7479681 () Bool)

(declare-fun e!4461619 () Bool)

(declare-fun e!4461620 () Bool)

(assert (=> b!7479681 (= e!4461619 e!4461620)))

(declare-fun res!3000816 () Bool)

(assert (=> b!7479681 (= res!3000816 (not (nullable!8547 (reg!19938 rTail!78))))))

(assert (=> b!7479681 (=> (not res!3000816) (not e!4461620))))

(declare-fun bm!686672 () Bool)

(declare-fun c!1381615 () Bool)

(assert (=> bm!686672 (= call!686679 (validRegex!10123 (ite c!1381615 (regOne!39731 rTail!78) (regOne!39730 rTail!78))))))

(declare-fun b!7479682 () Bool)

(declare-fun e!4461621 () Bool)

(declare-fun call!686678 () Bool)

(assert (=> b!7479682 (= e!4461621 call!686678)))

(declare-fun b!7479683 () Bool)

(assert (=> b!7479683 (= e!4461619 e!4461623)))

(assert (=> b!7479683 (= c!1381615 ((_ is Union!19609) rTail!78))))

(declare-fun b!7479684 () Bool)

(declare-fun e!4461624 () Bool)

(assert (=> b!7479684 (= e!4461624 e!4461619)))

(declare-fun c!1381616 () Bool)

(assert (=> b!7479684 (= c!1381616 ((_ is Star!19609) rTail!78))))

(declare-fun d!2299938 () Bool)

(declare-fun res!3000813 () Bool)

(assert (=> d!2299938 (=> res!3000813 e!4461624)))

(assert (=> d!2299938 (= res!3000813 ((_ is ElementMatch!19609) rTail!78))))

(assert (=> d!2299938 (= (validRegex!10123 rTail!78) e!4461624)))

(declare-fun bm!686673 () Bool)

(declare-fun call!686677 () Bool)

(assert (=> bm!686673 (= call!686677 (validRegex!10123 (ite c!1381616 (reg!19938 rTail!78) (ite c!1381615 (regTwo!39731 rTail!78) (regTwo!39730 rTail!78)))))))

(declare-fun b!7479685 () Bool)

(assert (=> b!7479685 (= e!4461622 call!686678)))

(declare-fun b!7479686 () Bool)

(assert (=> b!7479686 (= e!4461620 call!686677)))

(declare-fun bm!686674 () Bool)

(assert (=> bm!686674 (= call!686678 call!686677)))

(declare-fun b!7479687 () Bool)

(declare-fun e!4461618 () Bool)

(assert (=> b!7479687 (= e!4461618 e!4461621)))

(declare-fun res!3000812 () Bool)

(assert (=> b!7479687 (=> (not res!3000812) (not e!4461621))))

(assert (=> b!7479687 (= res!3000812 call!686679)))

(declare-fun b!7479688 () Bool)

(declare-fun res!3000814 () Bool)

(assert (=> b!7479688 (=> res!3000814 e!4461618)))

(assert (=> b!7479688 (= res!3000814 (not ((_ is Concat!28454) rTail!78)))))

(assert (=> b!7479688 (= e!4461623 e!4461618)))

(assert (= (and d!2299938 (not res!3000813)) b!7479684))

(assert (= (and b!7479684 c!1381616) b!7479681))

(assert (= (and b!7479684 (not c!1381616)) b!7479683))

(assert (= (and b!7479681 res!3000816) b!7479686))

(assert (= (and b!7479683 c!1381615) b!7479680))

(assert (= (and b!7479683 (not c!1381615)) b!7479688))

(assert (= (and b!7479680 res!3000815) b!7479685))

(assert (= (and b!7479688 (not res!3000814)) b!7479687))

(assert (= (and b!7479687 res!3000812) b!7479682))

(assert (= (or b!7479685 b!7479682) bm!686674))

(assert (= (or b!7479680 b!7479687) bm!686672))

(assert (= (or b!7479686 bm!686674) bm!686673))

(declare-fun m!8072388 () Bool)

(assert (=> b!7479681 m!8072388))

(declare-fun m!8072390 () Bool)

(assert (=> bm!686672 m!8072390))

(declare-fun m!8072392 () Bool)

(assert (=> bm!686673 m!8072392))

(assert (=> b!7479219 d!2299938))

(declare-fun b!7479689 () Bool)

(declare-fun res!3000817 () Bool)

(declare-fun e!4461631 () Bool)

(assert (=> b!7479689 (=> (not res!3000817) (not e!4461631))))

(assert (=> b!7479689 (= res!3000817 (isEmpty!41209 (tail!14915 s!13591)))))

(declare-fun b!7479690 () Bool)

(declare-fun res!3000818 () Bool)

(declare-fun e!4461627 () Bool)

(assert (=> b!7479690 (=> res!3000818 e!4461627)))

(assert (=> b!7479690 (= res!3000818 (not ((_ is ElementMatch!19609) lt!2627802)))))

(declare-fun e!4461628 () Bool)

(assert (=> b!7479690 (= e!4461628 e!4461627)))

(declare-fun b!7479691 () Bool)

(declare-fun res!3000822 () Bool)

(declare-fun e!4461625 () Bool)

(assert (=> b!7479691 (=> res!3000822 e!4461625)))

(assert (=> b!7479691 (= res!3000822 (not (isEmpty!41209 (tail!14915 s!13591))))))

(declare-fun b!7479692 () Bool)

(declare-fun lt!2627857 () Bool)

(assert (=> b!7479692 (= e!4461628 (not lt!2627857))))

(declare-fun b!7479693 () Bool)

(assert (=> b!7479693 (= e!4461631 (= (head!15346 s!13591) (c!1381530 lt!2627802)))))

(declare-fun b!7479694 () Bool)

(declare-fun e!4461630 () Bool)

(assert (=> b!7479694 (= e!4461630 (nullable!8547 lt!2627802))))

(declare-fun b!7479695 () Bool)

(assert (=> b!7479695 (= e!4461630 (matchR!9373 (derivativeStep!5606 lt!2627802 (head!15346 s!13591)) (tail!14915 s!13591)))))

(declare-fun b!7479697 () Bool)

(declare-fun e!4461626 () Bool)

(assert (=> b!7479697 (= e!4461627 e!4461626)))

(declare-fun res!3000819 () Bool)

(assert (=> b!7479697 (=> (not res!3000819) (not e!4461626))))

(assert (=> b!7479697 (= res!3000819 (not lt!2627857))))

(declare-fun b!7479698 () Bool)

(assert (=> b!7479698 (= e!4461626 e!4461625)))

(declare-fun res!3000821 () Bool)

(assert (=> b!7479698 (=> res!3000821 e!4461625)))

(declare-fun call!686680 () Bool)

(assert (=> b!7479698 (= res!3000821 call!686680)))

(declare-fun b!7479699 () Bool)

(declare-fun e!4461629 () Bool)

(assert (=> b!7479699 (= e!4461629 (= lt!2627857 call!686680))))

(declare-fun b!7479700 () Bool)

(declare-fun res!3000823 () Bool)

(assert (=> b!7479700 (=> (not res!3000823) (not e!4461631))))

(assert (=> b!7479700 (= res!3000823 (not call!686680))))

(declare-fun b!7479701 () Bool)

(assert (=> b!7479701 (= e!4461625 (not (= (head!15346 s!13591) (c!1381530 lt!2627802))))))

(declare-fun bm!686675 () Bool)

(assert (=> bm!686675 (= call!686680 (isEmpty!41209 s!13591))))

(declare-fun b!7479702 () Bool)

(assert (=> b!7479702 (= e!4461629 e!4461628)))

(declare-fun c!1381617 () Bool)

(assert (=> b!7479702 (= c!1381617 ((_ is EmptyLang!19609) lt!2627802))))

(declare-fun d!2299940 () Bool)

(assert (=> d!2299940 e!4461629))

(declare-fun c!1381618 () Bool)

(assert (=> d!2299940 (= c!1381618 ((_ is EmptyExpr!19609) lt!2627802))))

(assert (=> d!2299940 (= lt!2627857 e!4461630)))

(declare-fun c!1381619 () Bool)

(assert (=> d!2299940 (= c!1381619 (isEmpty!41209 s!13591))))

(assert (=> d!2299940 (validRegex!10123 lt!2627802)))

(assert (=> d!2299940 (= (matchR!9373 lt!2627802 s!13591) lt!2627857)))

(declare-fun b!7479696 () Bool)

(declare-fun res!3000824 () Bool)

(assert (=> b!7479696 (=> res!3000824 e!4461627)))

(assert (=> b!7479696 (= res!3000824 e!4461631)))

(declare-fun res!3000820 () Bool)

(assert (=> b!7479696 (=> (not res!3000820) (not e!4461631))))

(assert (=> b!7479696 (= res!3000820 lt!2627857)))

(assert (= (and d!2299940 c!1381619) b!7479694))

(assert (= (and d!2299940 (not c!1381619)) b!7479695))

(assert (= (and d!2299940 c!1381618) b!7479699))

(assert (= (and d!2299940 (not c!1381618)) b!7479702))

(assert (= (and b!7479702 c!1381617) b!7479692))

(assert (= (and b!7479702 (not c!1381617)) b!7479690))

(assert (= (and b!7479690 (not res!3000818)) b!7479696))

(assert (= (and b!7479696 res!3000820) b!7479700))

(assert (= (and b!7479700 res!3000823) b!7479689))

(assert (= (and b!7479689 res!3000817) b!7479693))

(assert (= (and b!7479696 (not res!3000824)) b!7479697))

(assert (= (and b!7479697 res!3000819) b!7479698))

(assert (= (and b!7479698 (not res!3000821)) b!7479691))

(assert (= (and b!7479691 (not res!3000822)) b!7479701))

(assert (= (or b!7479699 b!7479698 b!7479700) bm!686675))

(declare-fun m!8072394 () Bool)

(assert (=> b!7479689 m!8072394))

(assert (=> b!7479689 m!8072394))

(declare-fun m!8072396 () Bool)

(assert (=> b!7479689 m!8072396))

(declare-fun m!8072398 () Bool)

(assert (=> b!7479701 m!8072398))

(assert (=> b!7479695 m!8072398))

(assert (=> b!7479695 m!8072398))

(declare-fun m!8072400 () Bool)

(assert (=> b!7479695 m!8072400))

(assert (=> b!7479695 m!8072394))

(assert (=> b!7479695 m!8072400))

(assert (=> b!7479695 m!8072394))

(declare-fun m!8072402 () Bool)

(assert (=> b!7479695 m!8072402))

(declare-fun m!8072404 () Bool)

(assert (=> b!7479694 m!8072404))

(assert (=> b!7479693 m!8072398))

(declare-fun m!8072406 () Bool)

(assert (=> d!2299940 m!8072406))

(declare-fun m!8072408 () Bool)

(assert (=> d!2299940 m!8072408))

(assert (=> bm!686675 m!8072406))

(assert (=> b!7479691 m!8072394))

(assert (=> b!7479691 m!8072394))

(assert (=> b!7479691 m!8072396))

(assert (=> b!7479224 d!2299940))

(declare-fun bs!1932748 () Bool)

(declare-fun b!7479735 () Bool)

(assert (= bs!1932748 (and b!7479735 b!7479207)))

(declare-fun lambda!463449 () Int)

(assert (=> bs!1932748 (not (= lambda!463449 lambda!463408))))

(declare-fun bs!1932749 () Bool)

(assert (= bs!1932749 (and b!7479735 b!7479221)))

(assert (=> bs!1932749 (not (= lambda!463449 lambda!463411))))

(declare-fun bs!1932750 () Bool)

(assert (= bs!1932750 (and b!7479735 d!2299924)))

(assert (=> bs!1932750 (not (= lambda!463449 lambda!463444))))

(assert (=> bs!1932748 (not (= lambda!463449 lambda!463409))))

(declare-fun bs!1932751 () Bool)

(assert (= bs!1932751 (and b!7479735 d!2299880)))

(assert (=> bs!1932751 (not (= lambda!463449 lambda!463427))))

(assert (=> bs!1932749 (not (= lambda!463449 lambda!463410))))

(assert (=> bs!1932750 (not (= lambda!463449 lambda!463443))))

(assert (=> b!7479735 true))

(assert (=> b!7479735 true))

(declare-fun bs!1932752 () Bool)

(declare-fun b!7479736 () Bool)

(assert (= bs!1932752 (and b!7479736 b!7479207)))

(declare-fun lambda!463450 () Int)

(assert (=> bs!1932752 (not (= lambda!463450 lambda!463408))))

(declare-fun bs!1932753 () Bool)

(assert (= bs!1932753 (and b!7479736 b!7479735)))

(assert (=> bs!1932753 (not (= lambda!463450 lambda!463449))))

(declare-fun bs!1932754 () Bool)

(assert (= bs!1932754 (and b!7479736 b!7479221)))

(assert (=> bs!1932754 (= (and (= (regOne!39730 lt!2627789) r1!5845) (= (regTwo!39730 lt!2627789) rTail!78)) (= lambda!463450 lambda!463411))))

(declare-fun bs!1932755 () Bool)

(assert (= bs!1932755 (and b!7479736 d!2299924)))

(assert (=> bs!1932755 (= (and (= (regOne!39730 lt!2627789) r1!5845) (= (regTwo!39730 lt!2627789) rTail!78)) (= lambda!463450 lambda!463444))))

(assert (=> bs!1932752 (= (and (= (regOne!39730 lt!2627789) lt!2627798) (= (regTwo!39730 lt!2627789) rTail!78)) (= lambda!463450 lambda!463409))))

(declare-fun bs!1932756 () Bool)

(assert (= bs!1932756 (and b!7479736 d!2299880)))

(assert (=> bs!1932756 (not (= lambda!463450 lambda!463427))))

(assert (=> bs!1932754 (not (= lambda!463450 lambda!463410))))

(assert (=> bs!1932755 (not (= lambda!463450 lambda!463443))))

(assert (=> b!7479736 true))

(assert (=> b!7479736 true))

(declare-fun c!1381631 () Bool)

(declare-fun call!686685 () Bool)

(declare-fun bm!686680 () Bool)

(assert (=> bm!686680 (= call!686685 (Exists!4228 (ite c!1381631 lambda!463449 lambda!463450)))))

(declare-fun e!4461655 () Bool)

(assert (=> b!7479735 (= e!4461655 call!686685)))

(declare-fun e!4461656 () Bool)

(assert (=> b!7479736 (= e!4461656 call!686685)))

(declare-fun bm!686681 () Bool)

(declare-fun call!686686 () Bool)

(assert (=> bm!686681 (= call!686686 (isEmpty!41209 s!13591))))

(declare-fun b!7479738 () Bool)

(declare-fun c!1381629 () Bool)

(assert (=> b!7479738 (= c!1381629 ((_ is Union!19609) lt!2627789))))

(declare-fun e!4461650 () Bool)

(declare-fun e!4461651 () Bool)

(assert (=> b!7479738 (= e!4461650 e!4461651)))

(declare-fun b!7479739 () Bool)

(declare-fun e!4461652 () Bool)

(assert (=> b!7479739 (= e!4461651 e!4461652)))

(declare-fun res!3000841 () Bool)

(assert (=> b!7479739 (= res!3000841 (matchRSpec!4288 (regOne!39731 lt!2627789) s!13591))))

(assert (=> b!7479739 (=> res!3000841 e!4461652)))

(declare-fun b!7479740 () Bool)

(declare-fun c!1381628 () Bool)

(assert (=> b!7479740 (= c!1381628 ((_ is ElementMatch!19609) lt!2627789))))

(declare-fun e!4461654 () Bool)

(assert (=> b!7479740 (= e!4461654 e!4461650)))

(declare-fun b!7479741 () Bool)

(declare-fun e!4461653 () Bool)

(assert (=> b!7479741 (= e!4461653 call!686686)))

(declare-fun b!7479742 () Bool)

(assert (=> b!7479742 (= e!4461650 (= s!13591 (Cons!72201 (c!1381530 lt!2627789) Nil!72201)))))

(declare-fun b!7479743 () Bool)

(declare-fun res!3000843 () Bool)

(assert (=> b!7479743 (=> res!3000843 e!4461655)))

(assert (=> b!7479743 (= res!3000843 call!686686)))

(assert (=> b!7479743 (= e!4461656 e!4461655)))

(declare-fun b!7479737 () Bool)

(assert (=> b!7479737 (= e!4461653 e!4461654)))

(declare-fun res!3000842 () Bool)

(assert (=> b!7479737 (= res!3000842 (not ((_ is EmptyLang!19609) lt!2627789)))))

(assert (=> b!7479737 (=> (not res!3000842) (not e!4461654))))

(declare-fun d!2299942 () Bool)

(declare-fun c!1381630 () Bool)

(assert (=> d!2299942 (= c!1381630 ((_ is EmptyExpr!19609) lt!2627789))))

(assert (=> d!2299942 (= (matchRSpec!4288 lt!2627789 s!13591) e!4461653)))

(declare-fun b!7479744 () Bool)

(assert (=> b!7479744 (= e!4461652 (matchRSpec!4288 (regTwo!39731 lt!2627789) s!13591))))

(declare-fun b!7479745 () Bool)

(assert (=> b!7479745 (= e!4461651 e!4461656)))

(assert (=> b!7479745 (= c!1381631 ((_ is Star!19609) lt!2627789))))

(assert (= (and d!2299942 c!1381630) b!7479741))

(assert (= (and d!2299942 (not c!1381630)) b!7479737))

(assert (= (and b!7479737 res!3000842) b!7479740))

(assert (= (and b!7479740 c!1381628) b!7479742))

(assert (= (and b!7479740 (not c!1381628)) b!7479738))

(assert (= (and b!7479738 c!1381629) b!7479739))

(assert (= (and b!7479738 (not c!1381629)) b!7479745))

(assert (= (and b!7479739 (not res!3000841)) b!7479744))

(assert (= (and b!7479745 c!1381631) b!7479743))

(assert (= (and b!7479745 (not c!1381631)) b!7479736))

(assert (= (and b!7479743 (not res!3000843)) b!7479735))

(assert (= (or b!7479735 b!7479736) bm!686680))

(assert (= (or b!7479741 b!7479743) bm!686681))

(declare-fun m!8072410 () Bool)

(assert (=> bm!686680 m!8072410))

(assert (=> bm!686681 m!8072406))

(declare-fun m!8072412 () Bool)

(assert (=> b!7479739 m!8072412))

(declare-fun m!8072414 () Bool)

(assert (=> b!7479744 m!8072414))

(assert (=> b!7479224 d!2299942))

(declare-fun d!2299944 () Bool)

(assert (=> d!2299944 (= (matchR!9373 lt!2627802 s!13591) (matchRSpec!4288 lt!2627802 s!13591))))

(declare-fun lt!2627860 () Unit!166053)

(declare-fun choose!57825 (Regex!19609 List!72325) Unit!166053)

(assert (=> d!2299944 (= lt!2627860 (choose!57825 lt!2627802 s!13591))))

(assert (=> d!2299944 (validRegex!10123 lt!2627802)))

(assert (=> d!2299944 (= (mainMatchTheorem!4282 lt!2627802 s!13591) lt!2627860)))

(declare-fun bs!1932757 () Bool)

(assert (= bs!1932757 d!2299944))

(assert (=> bs!1932757 m!8072144))

(assert (=> bs!1932757 m!8072146))

(declare-fun m!8072416 () Bool)

(assert (=> bs!1932757 m!8072416))

(assert (=> bs!1932757 m!8072408))

(assert (=> b!7479224 d!2299944))

(declare-fun d!2299946 () Bool)

(assert (=> d!2299946 (= (matchR!9373 lt!2627789 s!13591) (matchRSpec!4288 lt!2627789 s!13591))))

(declare-fun lt!2627861 () Unit!166053)

(assert (=> d!2299946 (= lt!2627861 (choose!57825 lt!2627789 s!13591))))

(assert (=> d!2299946 (validRegex!10123 lt!2627789)))

(assert (=> d!2299946 (= (mainMatchTheorem!4282 lt!2627789 s!13591) lt!2627861)))

(declare-fun bs!1932758 () Bool)

(assert (= bs!1932758 d!2299946))

(assert (=> bs!1932758 m!8072140))

(assert (=> bs!1932758 m!8072148))

(declare-fun m!8072418 () Bool)

(assert (=> bs!1932758 m!8072418))

(declare-fun m!8072420 () Bool)

(assert (=> bs!1932758 m!8072420))

(assert (=> b!7479224 d!2299946))

(declare-fun bs!1932759 () Bool)

(declare-fun b!7479746 () Bool)

(assert (= bs!1932759 (and b!7479746 b!7479207)))

(declare-fun lambda!463451 () Int)

(assert (=> bs!1932759 (not (= lambda!463451 lambda!463408))))

(declare-fun bs!1932760 () Bool)

(assert (= bs!1932760 (and b!7479746 b!7479735)))

(assert (=> bs!1932760 (= (and (= (reg!19938 lt!2627802) (reg!19938 lt!2627789)) (= lt!2627802 lt!2627789)) (= lambda!463451 lambda!463449))))

(declare-fun bs!1932761 () Bool)

(assert (= bs!1932761 (and b!7479746 b!7479221)))

(assert (=> bs!1932761 (not (= lambda!463451 lambda!463411))))

(declare-fun bs!1932762 () Bool)

(assert (= bs!1932762 (and b!7479746 d!2299924)))

(assert (=> bs!1932762 (not (= lambda!463451 lambda!463444))))

(assert (=> bs!1932759 (not (= lambda!463451 lambda!463409))))

(declare-fun bs!1932763 () Bool)

(assert (= bs!1932763 (and b!7479746 d!2299880)))

(assert (=> bs!1932763 (not (= lambda!463451 lambda!463427))))

(declare-fun bs!1932764 () Bool)

(assert (= bs!1932764 (and b!7479746 b!7479736)))

(assert (=> bs!1932764 (not (= lambda!463451 lambda!463450))))

(assert (=> bs!1932761 (not (= lambda!463451 lambda!463410))))

(assert (=> bs!1932762 (not (= lambda!463451 lambda!463443))))

(assert (=> b!7479746 true))

(assert (=> b!7479746 true))

(declare-fun bs!1932765 () Bool)

(declare-fun b!7479747 () Bool)

(assert (= bs!1932765 (and b!7479747 b!7479207)))

(declare-fun lambda!463452 () Int)

(assert (=> bs!1932765 (not (= lambda!463452 lambda!463408))))

(declare-fun bs!1932766 () Bool)

(assert (= bs!1932766 (and b!7479747 b!7479735)))

(assert (=> bs!1932766 (not (= lambda!463452 lambda!463449))))

(declare-fun bs!1932767 () Bool)

(assert (= bs!1932767 (and b!7479747 b!7479221)))

(assert (=> bs!1932767 (= (and (= (regOne!39730 lt!2627802) r1!5845) (= (regTwo!39730 lt!2627802) rTail!78)) (= lambda!463452 lambda!463411))))

(declare-fun bs!1932768 () Bool)

(assert (= bs!1932768 (and b!7479747 d!2299924)))

(assert (=> bs!1932768 (= (and (= (regOne!39730 lt!2627802) r1!5845) (= (regTwo!39730 lt!2627802) rTail!78)) (= lambda!463452 lambda!463444))))

(assert (=> bs!1932765 (= (and (= (regOne!39730 lt!2627802) lt!2627798) (= (regTwo!39730 lt!2627802) rTail!78)) (= lambda!463452 lambda!463409))))

(declare-fun bs!1932769 () Bool)

(assert (= bs!1932769 (and b!7479747 d!2299880)))

(assert (=> bs!1932769 (not (= lambda!463452 lambda!463427))))

(declare-fun bs!1932770 () Bool)

(assert (= bs!1932770 (and b!7479747 b!7479736)))

(assert (=> bs!1932770 (= (and (= (regOne!39730 lt!2627802) (regOne!39730 lt!2627789)) (= (regTwo!39730 lt!2627802) (regTwo!39730 lt!2627789))) (= lambda!463452 lambda!463450))))

(declare-fun bs!1932771 () Bool)

(assert (= bs!1932771 (and b!7479747 b!7479746)))

(assert (=> bs!1932771 (not (= lambda!463452 lambda!463451))))

(assert (=> bs!1932767 (not (= lambda!463452 lambda!463410))))

(assert (=> bs!1932768 (not (= lambda!463452 lambda!463443))))

(assert (=> b!7479747 true))

(assert (=> b!7479747 true))

(declare-fun call!686687 () Bool)

(declare-fun c!1381635 () Bool)

(declare-fun bm!686682 () Bool)

(assert (=> bm!686682 (= call!686687 (Exists!4228 (ite c!1381635 lambda!463451 lambda!463452)))))

(declare-fun e!4461662 () Bool)

(assert (=> b!7479746 (= e!4461662 call!686687)))

(declare-fun e!4461663 () Bool)

(assert (=> b!7479747 (= e!4461663 call!686687)))

(declare-fun bm!686683 () Bool)

(declare-fun call!686688 () Bool)

(assert (=> bm!686683 (= call!686688 (isEmpty!41209 s!13591))))

(declare-fun b!7479749 () Bool)

(declare-fun c!1381633 () Bool)

(assert (=> b!7479749 (= c!1381633 ((_ is Union!19609) lt!2627802))))

(declare-fun e!4461657 () Bool)

(declare-fun e!4461658 () Bool)

(assert (=> b!7479749 (= e!4461657 e!4461658)))

(declare-fun b!7479750 () Bool)

(declare-fun e!4461659 () Bool)

(assert (=> b!7479750 (= e!4461658 e!4461659)))

(declare-fun res!3000844 () Bool)

(assert (=> b!7479750 (= res!3000844 (matchRSpec!4288 (regOne!39731 lt!2627802) s!13591))))

(assert (=> b!7479750 (=> res!3000844 e!4461659)))

(declare-fun b!7479751 () Bool)

(declare-fun c!1381632 () Bool)

(assert (=> b!7479751 (= c!1381632 ((_ is ElementMatch!19609) lt!2627802))))

(declare-fun e!4461661 () Bool)

(assert (=> b!7479751 (= e!4461661 e!4461657)))

(declare-fun b!7479752 () Bool)

(declare-fun e!4461660 () Bool)

(assert (=> b!7479752 (= e!4461660 call!686688)))

(declare-fun b!7479753 () Bool)

(assert (=> b!7479753 (= e!4461657 (= s!13591 (Cons!72201 (c!1381530 lt!2627802) Nil!72201)))))

(declare-fun b!7479754 () Bool)

(declare-fun res!3000846 () Bool)

(assert (=> b!7479754 (=> res!3000846 e!4461662)))

(assert (=> b!7479754 (= res!3000846 call!686688)))

(assert (=> b!7479754 (= e!4461663 e!4461662)))

(declare-fun b!7479748 () Bool)

(assert (=> b!7479748 (= e!4461660 e!4461661)))

(declare-fun res!3000845 () Bool)

(assert (=> b!7479748 (= res!3000845 (not ((_ is EmptyLang!19609) lt!2627802)))))

(assert (=> b!7479748 (=> (not res!3000845) (not e!4461661))))

(declare-fun d!2299948 () Bool)

(declare-fun c!1381634 () Bool)

(assert (=> d!2299948 (= c!1381634 ((_ is EmptyExpr!19609) lt!2627802))))

(assert (=> d!2299948 (= (matchRSpec!4288 lt!2627802 s!13591) e!4461660)))

(declare-fun b!7479755 () Bool)

(assert (=> b!7479755 (= e!4461659 (matchRSpec!4288 (regTwo!39731 lt!2627802) s!13591))))

(declare-fun b!7479756 () Bool)

(assert (=> b!7479756 (= e!4461658 e!4461663)))

(assert (=> b!7479756 (= c!1381635 ((_ is Star!19609) lt!2627802))))

(assert (= (and d!2299948 c!1381634) b!7479752))

(assert (= (and d!2299948 (not c!1381634)) b!7479748))

(assert (= (and b!7479748 res!3000845) b!7479751))

(assert (= (and b!7479751 c!1381632) b!7479753))

(assert (= (and b!7479751 (not c!1381632)) b!7479749))

(assert (= (and b!7479749 c!1381633) b!7479750))

(assert (= (and b!7479749 (not c!1381633)) b!7479756))

(assert (= (and b!7479750 (not res!3000844)) b!7479755))

(assert (= (and b!7479756 c!1381635) b!7479754))

(assert (= (and b!7479756 (not c!1381635)) b!7479747))

(assert (= (and b!7479754 (not res!3000846)) b!7479746))

(assert (= (or b!7479746 b!7479747) bm!686682))

(assert (= (or b!7479752 b!7479754) bm!686683))

(declare-fun m!8072422 () Bool)

(assert (=> bm!686682 m!8072422))

(assert (=> bm!686683 m!8072406))

(declare-fun m!8072424 () Bool)

(assert (=> b!7479750 m!8072424))

(declare-fun m!8072426 () Bool)

(assert (=> b!7479755 m!8072426))

(assert (=> b!7479224 d!2299948))

(declare-fun b!7479757 () Bool)

(declare-fun res!3000847 () Bool)

(declare-fun e!4461670 () Bool)

(assert (=> b!7479757 (=> (not res!3000847) (not e!4461670))))

(assert (=> b!7479757 (= res!3000847 (isEmpty!41209 (tail!14915 s!13591)))))

(declare-fun b!7479758 () Bool)

(declare-fun res!3000848 () Bool)

(declare-fun e!4461666 () Bool)

(assert (=> b!7479758 (=> res!3000848 e!4461666)))

(assert (=> b!7479758 (= res!3000848 (not ((_ is ElementMatch!19609) lt!2627789)))))

(declare-fun e!4461667 () Bool)

(assert (=> b!7479758 (= e!4461667 e!4461666)))

(declare-fun b!7479759 () Bool)

(declare-fun res!3000852 () Bool)

(declare-fun e!4461664 () Bool)

(assert (=> b!7479759 (=> res!3000852 e!4461664)))

(assert (=> b!7479759 (= res!3000852 (not (isEmpty!41209 (tail!14915 s!13591))))))

(declare-fun b!7479760 () Bool)

(declare-fun lt!2627862 () Bool)

(assert (=> b!7479760 (= e!4461667 (not lt!2627862))))

(declare-fun b!7479761 () Bool)

(assert (=> b!7479761 (= e!4461670 (= (head!15346 s!13591) (c!1381530 lt!2627789)))))

(declare-fun b!7479762 () Bool)

(declare-fun e!4461669 () Bool)

(assert (=> b!7479762 (= e!4461669 (nullable!8547 lt!2627789))))

(declare-fun b!7479763 () Bool)

(assert (=> b!7479763 (= e!4461669 (matchR!9373 (derivativeStep!5606 lt!2627789 (head!15346 s!13591)) (tail!14915 s!13591)))))

(declare-fun b!7479765 () Bool)

(declare-fun e!4461665 () Bool)

(assert (=> b!7479765 (= e!4461666 e!4461665)))

(declare-fun res!3000849 () Bool)

(assert (=> b!7479765 (=> (not res!3000849) (not e!4461665))))

(assert (=> b!7479765 (= res!3000849 (not lt!2627862))))

(declare-fun b!7479766 () Bool)

(assert (=> b!7479766 (= e!4461665 e!4461664)))

(declare-fun res!3000851 () Bool)

(assert (=> b!7479766 (=> res!3000851 e!4461664)))

(declare-fun call!686689 () Bool)

(assert (=> b!7479766 (= res!3000851 call!686689)))

(declare-fun b!7479767 () Bool)

(declare-fun e!4461668 () Bool)

(assert (=> b!7479767 (= e!4461668 (= lt!2627862 call!686689))))

(declare-fun b!7479768 () Bool)

(declare-fun res!3000853 () Bool)

(assert (=> b!7479768 (=> (not res!3000853) (not e!4461670))))

(assert (=> b!7479768 (= res!3000853 (not call!686689))))

(declare-fun b!7479769 () Bool)

(assert (=> b!7479769 (= e!4461664 (not (= (head!15346 s!13591) (c!1381530 lt!2627789))))))

(declare-fun bm!686684 () Bool)

(assert (=> bm!686684 (= call!686689 (isEmpty!41209 s!13591))))

(declare-fun b!7479770 () Bool)

(assert (=> b!7479770 (= e!4461668 e!4461667)))

(declare-fun c!1381636 () Bool)

(assert (=> b!7479770 (= c!1381636 ((_ is EmptyLang!19609) lt!2627789))))

(declare-fun d!2299950 () Bool)

(assert (=> d!2299950 e!4461668))

(declare-fun c!1381637 () Bool)

(assert (=> d!2299950 (= c!1381637 ((_ is EmptyExpr!19609) lt!2627789))))

(assert (=> d!2299950 (= lt!2627862 e!4461669)))

(declare-fun c!1381638 () Bool)

(assert (=> d!2299950 (= c!1381638 (isEmpty!41209 s!13591))))

(assert (=> d!2299950 (validRegex!10123 lt!2627789)))

(assert (=> d!2299950 (= (matchR!9373 lt!2627789 s!13591) lt!2627862)))

(declare-fun b!7479764 () Bool)

(declare-fun res!3000854 () Bool)

(assert (=> b!7479764 (=> res!3000854 e!4461666)))

(assert (=> b!7479764 (= res!3000854 e!4461670)))

(declare-fun res!3000850 () Bool)

(assert (=> b!7479764 (=> (not res!3000850) (not e!4461670))))

(assert (=> b!7479764 (= res!3000850 lt!2627862)))

(assert (= (and d!2299950 c!1381638) b!7479762))

(assert (= (and d!2299950 (not c!1381638)) b!7479763))

(assert (= (and d!2299950 c!1381637) b!7479767))

(assert (= (and d!2299950 (not c!1381637)) b!7479770))

(assert (= (and b!7479770 c!1381636) b!7479760))

(assert (= (and b!7479770 (not c!1381636)) b!7479758))

(assert (= (and b!7479758 (not res!3000848)) b!7479764))

(assert (= (and b!7479764 res!3000850) b!7479768))

(assert (= (and b!7479768 res!3000853) b!7479757))

(assert (= (and b!7479757 res!3000847) b!7479761))

(assert (= (and b!7479764 (not res!3000854)) b!7479765))

(assert (= (and b!7479765 res!3000849) b!7479766))

(assert (= (and b!7479766 (not res!3000851)) b!7479759))

(assert (= (and b!7479759 (not res!3000852)) b!7479769))

(assert (= (or b!7479767 b!7479766 b!7479768) bm!686684))

(assert (=> b!7479757 m!8072394))

(assert (=> b!7479757 m!8072394))

(assert (=> b!7479757 m!8072396))

(assert (=> b!7479769 m!8072398))

(assert (=> b!7479763 m!8072398))

(assert (=> b!7479763 m!8072398))

(declare-fun m!8072428 () Bool)

(assert (=> b!7479763 m!8072428))

(assert (=> b!7479763 m!8072394))

(assert (=> b!7479763 m!8072428))

(assert (=> b!7479763 m!8072394))

(declare-fun m!8072430 () Bool)

(assert (=> b!7479763 m!8072430))

(declare-fun m!8072432 () Bool)

(assert (=> b!7479762 m!8072432))

(assert (=> b!7479761 m!8072398))

(assert (=> d!2299950 m!8072406))

(assert (=> d!2299950 m!8072420))

(assert (=> bm!686684 m!8072406))

(assert (=> b!7479759 m!8072394))

(assert (=> b!7479759 m!8072394))

(assert (=> b!7479759 m!8072396))

(assert (=> b!7479224 d!2299950))

(declare-fun d!2299952 () Bool)

(assert (=> d!2299952 (= (isDefined!13855 (findConcatSeparation!3288 lt!2627798 rTail!78 Nil!72201 s!13591 s!13591)) (not (isEmpty!41210 (findConcatSeparation!3288 lt!2627798 rTail!78 Nil!72201 s!13591 s!13591))))))

(declare-fun bs!1932772 () Bool)

(assert (= bs!1932772 d!2299952))

(assert (=> bs!1932772 m!8072134))

(declare-fun m!8072434 () Bool)

(assert (=> bs!1932772 m!8072434))

(assert (=> b!7479207 d!2299952))

(declare-fun d!2299954 () Bool)

(assert (=> d!2299954 (= (Exists!4228 lambda!463409) (choose!57824 lambda!463409))))

(declare-fun bs!1932773 () Bool)

(assert (= bs!1932773 d!2299954))

(declare-fun m!8072436 () Bool)

(assert (=> bs!1932773 m!8072436))

(assert (=> b!7479207 d!2299954))

(declare-fun bs!1932774 () Bool)

(declare-fun d!2299956 () Bool)

(assert (= bs!1932774 (and d!2299956 b!7479207)))

(declare-fun lambda!463453 () Int)

(assert (=> bs!1932774 (= lambda!463453 lambda!463408)))

(declare-fun bs!1932775 () Bool)

(assert (= bs!1932775 (and d!2299956 b!7479735)))

(assert (=> bs!1932775 (not (= lambda!463453 lambda!463449))))

(declare-fun bs!1932776 () Bool)

(assert (= bs!1932776 (and d!2299956 b!7479221)))

(assert (=> bs!1932776 (not (= lambda!463453 lambda!463411))))

(assert (=> bs!1932774 (not (= lambda!463453 lambda!463409))))

(declare-fun bs!1932777 () Bool)

(assert (= bs!1932777 (and d!2299956 d!2299880)))

(assert (=> bs!1932777 (= (= lt!2627798 r1!5845) (= lambda!463453 lambda!463427))))

(declare-fun bs!1932778 () Bool)

(assert (= bs!1932778 (and d!2299956 b!7479736)))

(assert (=> bs!1932778 (not (= lambda!463453 lambda!463450))))

(declare-fun bs!1932779 () Bool)

(assert (= bs!1932779 (and d!2299956 b!7479746)))

(assert (=> bs!1932779 (not (= lambda!463453 lambda!463451))))

(assert (=> bs!1932776 (= (= lt!2627798 r1!5845) (= lambda!463453 lambda!463410))))

(declare-fun bs!1932780 () Bool)

(assert (= bs!1932780 (and d!2299956 d!2299924)))

(assert (=> bs!1932780 (= (= lt!2627798 r1!5845) (= lambda!463453 lambda!463443))))

(assert (=> bs!1932780 (not (= lambda!463453 lambda!463444))))

(declare-fun bs!1932781 () Bool)

(assert (= bs!1932781 (and d!2299956 b!7479747)))

(assert (=> bs!1932781 (not (= lambda!463453 lambda!463452))))

(assert (=> d!2299956 true))

(assert (=> d!2299956 true))

(assert (=> d!2299956 true))

(assert (=> d!2299956 (= (isDefined!13855 (findConcatSeparation!3288 lt!2627798 rTail!78 Nil!72201 s!13591 s!13591)) (Exists!4228 lambda!463453))))

(declare-fun lt!2627863 () Unit!166053)

(assert (=> d!2299956 (= lt!2627863 (choose!57822 lt!2627798 rTail!78 s!13591))))

(assert (=> d!2299956 (validRegex!10123 lt!2627798)))

(assert (=> d!2299956 (= (lemmaFindConcatSeparationEquivalentToExists!3046 lt!2627798 rTail!78 s!13591) lt!2627863)))

(declare-fun bs!1932782 () Bool)

(assert (= bs!1932782 d!2299956))

(declare-fun m!8072438 () Bool)

(assert (=> bs!1932782 m!8072438))

(declare-fun m!8072440 () Bool)

(assert (=> bs!1932782 m!8072440))

(assert (=> bs!1932782 m!8072134))

(assert (=> bs!1932782 m!8072136))

(declare-fun m!8072442 () Bool)

(assert (=> bs!1932782 m!8072442))

(assert (=> bs!1932782 m!8072134))

(assert (=> b!7479207 d!2299956))

(declare-fun bs!1932783 () Bool)

(declare-fun d!2299958 () Bool)

(assert (= bs!1932783 (and d!2299958 b!7479207)))

(declare-fun lambda!463454 () Int)

(assert (=> bs!1932783 (= lambda!463454 lambda!463408)))

(declare-fun bs!1932784 () Bool)

(assert (= bs!1932784 (and d!2299958 b!7479735)))

(assert (=> bs!1932784 (not (= lambda!463454 lambda!463449))))

(declare-fun bs!1932785 () Bool)

(assert (= bs!1932785 (and d!2299958 b!7479221)))

(assert (=> bs!1932785 (not (= lambda!463454 lambda!463411))))

(declare-fun bs!1932786 () Bool)

(assert (= bs!1932786 (and d!2299958 d!2299956)))

(assert (=> bs!1932786 (= lambda!463454 lambda!463453)))

(assert (=> bs!1932783 (not (= lambda!463454 lambda!463409))))

(declare-fun bs!1932787 () Bool)

(assert (= bs!1932787 (and d!2299958 d!2299880)))

(assert (=> bs!1932787 (= (= lt!2627798 r1!5845) (= lambda!463454 lambda!463427))))

(declare-fun bs!1932788 () Bool)

(assert (= bs!1932788 (and d!2299958 b!7479736)))

(assert (=> bs!1932788 (not (= lambda!463454 lambda!463450))))

(declare-fun bs!1932789 () Bool)

(assert (= bs!1932789 (and d!2299958 b!7479746)))

(assert (=> bs!1932789 (not (= lambda!463454 lambda!463451))))

(assert (=> bs!1932785 (= (= lt!2627798 r1!5845) (= lambda!463454 lambda!463410))))

(declare-fun bs!1932790 () Bool)

(assert (= bs!1932790 (and d!2299958 d!2299924)))

(assert (=> bs!1932790 (= (= lt!2627798 r1!5845) (= lambda!463454 lambda!463443))))

(assert (=> bs!1932790 (not (= lambda!463454 lambda!463444))))

(declare-fun bs!1932791 () Bool)

(assert (= bs!1932791 (and d!2299958 b!7479747)))

(assert (=> bs!1932791 (not (= lambda!463454 lambda!463452))))

(assert (=> d!2299958 true))

(assert (=> d!2299958 true))

(assert (=> d!2299958 true))

(declare-fun lambda!463455 () Int)

(assert (=> bs!1932783 (not (= lambda!463455 lambda!463408))))

(assert (=> bs!1932784 (not (= lambda!463455 lambda!463449))))

(assert (=> bs!1932785 (= (= lt!2627798 r1!5845) (= lambda!463455 lambda!463411))))

(assert (=> bs!1932786 (not (= lambda!463455 lambda!463453))))

(assert (=> bs!1932783 (= lambda!463455 lambda!463409)))

(declare-fun bs!1932792 () Bool)

(assert (= bs!1932792 d!2299958))

(assert (=> bs!1932792 (not (= lambda!463455 lambda!463454))))

(assert (=> bs!1932787 (not (= lambda!463455 lambda!463427))))

(assert (=> bs!1932788 (= (and (= lt!2627798 (regOne!39730 lt!2627789)) (= rTail!78 (regTwo!39730 lt!2627789))) (= lambda!463455 lambda!463450))))

(assert (=> bs!1932789 (not (= lambda!463455 lambda!463451))))

(assert (=> bs!1932785 (not (= lambda!463455 lambda!463410))))

(assert (=> bs!1932790 (not (= lambda!463455 lambda!463443))))

(assert (=> bs!1932790 (= (= lt!2627798 r1!5845) (= lambda!463455 lambda!463444))))

(assert (=> bs!1932791 (= (and (= lt!2627798 (regOne!39730 lt!2627802)) (= rTail!78 (regTwo!39730 lt!2627802))) (= lambda!463455 lambda!463452))))

(assert (=> d!2299958 true))

(assert (=> d!2299958 true))

(assert (=> d!2299958 true))

(assert (=> d!2299958 (= (Exists!4228 lambda!463454) (Exists!4228 lambda!463455))))

(declare-fun lt!2627864 () Unit!166053)

(assert (=> d!2299958 (= lt!2627864 (choose!57823 lt!2627798 rTail!78 s!13591))))

(assert (=> d!2299958 (validRegex!10123 lt!2627798)))

(assert (=> d!2299958 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2562 lt!2627798 rTail!78 s!13591) lt!2627864)))

(declare-fun m!8072444 () Bool)

(assert (=> bs!1932792 m!8072444))

(declare-fun m!8072446 () Bool)

(assert (=> bs!1932792 m!8072446))

(declare-fun m!8072448 () Bool)

(assert (=> bs!1932792 m!8072448))

(assert (=> bs!1932792 m!8072440))

(assert (=> b!7479207 d!2299958))

(declare-fun d!2299960 () Bool)

(declare-fun e!4461674 () Bool)

(assert (=> d!2299960 e!4461674))

(declare-fun res!3000856 () Bool)

(assert (=> d!2299960 (=> res!3000856 e!4461674)))

(declare-fun e!4461673 () Bool)

(assert (=> d!2299960 (= res!3000856 e!4461673)))

(declare-fun res!3000859 () Bool)

(assert (=> d!2299960 (=> (not res!3000859) (not e!4461673))))

(declare-fun lt!2627866 () Option!17166)

(assert (=> d!2299960 (= res!3000859 (isDefined!13855 lt!2627866))))

(declare-fun e!4461675 () Option!17166)

(assert (=> d!2299960 (= lt!2627866 e!4461675)))

(declare-fun c!1381639 () Bool)

(declare-fun e!4461671 () Bool)

(assert (=> d!2299960 (= c!1381639 e!4461671)))

(declare-fun res!3000858 () Bool)

(assert (=> d!2299960 (=> (not res!3000858) (not e!4461671))))

(assert (=> d!2299960 (= res!3000858 (matchR!9373 lt!2627798 Nil!72201))))

(assert (=> d!2299960 (validRegex!10123 lt!2627798)))

(assert (=> d!2299960 (= (findConcatSeparation!3288 lt!2627798 rTail!78 Nil!72201 s!13591 s!13591) lt!2627866)))

(declare-fun b!7479771 () Bool)

(declare-fun res!3000857 () Bool)

(assert (=> b!7479771 (=> (not res!3000857) (not e!4461673))))

(assert (=> b!7479771 (= res!3000857 (matchR!9373 rTail!78 (_2!37637 (get!25277 lt!2627866))))))

(declare-fun b!7479772 () Bool)

(assert (=> b!7479772 (= e!4461671 (matchR!9373 rTail!78 s!13591))))

(declare-fun b!7479773 () Bool)

(declare-fun lt!2627867 () Unit!166053)

(declare-fun lt!2627865 () Unit!166053)

(assert (=> b!7479773 (= lt!2627867 lt!2627865)))

(assert (=> b!7479773 (= (++!17223 (++!17223 Nil!72201 (Cons!72201 (h!78649 s!13591) Nil!72201)) (t!386894 s!13591)) s!13591)))

(assert (=> b!7479773 (= lt!2627865 (lemmaMoveElementToOtherListKeepsConcatEq!3099 Nil!72201 (h!78649 s!13591) (t!386894 s!13591) s!13591))))

(declare-fun e!4461672 () Option!17166)

(assert (=> b!7479773 (= e!4461672 (findConcatSeparation!3288 lt!2627798 rTail!78 (++!17223 Nil!72201 (Cons!72201 (h!78649 s!13591) Nil!72201)) (t!386894 s!13591) s!13591))))

(declare-fun b!7479774 () Bool)

(assert (=> b!7479774 (= e!4461672 None!17165)))

(declare-fun b!7479775 () Bool)

(assert (=> b!7479775 (= e!4461673 (= (++!17223 (_1!37637 (get!25277 lt!2627866)) (_2!37637 (get!25277 lt!2627866))) s!13591))))

(declare-fun b!7479776 () Bool)

(assert (=> b!7479776 (= e!4461675 (Some!17165 (tuple2!68669 Nil!72201 s!13591)))))

(declare-fun b!7479777 () Bool)

(declare-fun res!3000855 () Bool)

(assert (=> b!7479777 (=> (not res!3000855) (not e!4461673))))

(assert (=> b!7479777 (= res!3000855 (matchR!9373 lt!2627798 (_1!37637 (get!25277 lt!2627866))))))

(declare-fun b!7479778 () Bool)

(assert (=> b!7479778 (= e!4461674 (not (isDefined!13855 lt!2627866)))))

(declare-fun b!7479779 () Bool)

(assert (=> b!7479779 (= e!4461675 e!4461672)))

(declare-fun c!1381640 () Bool)

(assert (=> b!7479779 (= c!1381640 ((_ is Nil!72201) s!13591))))

(assert (= (and d!2299960 res!3000858) b!7479772))

(assert (= (and d!2299960 c!1381639) b!7479776))

(assert (= (and d!2299960 (not c!1381639)) b!7479779))

(assert (= (and b!7479779 c!1381640) b!7479774))

(assert (= (and b!7479779 (not c!1381640)) b!7479773))

(assert (= (and d!2299960 res!3000859) b!7479777))

(assert (= (and b!7479777 res!3000855) b!7479771))

(assert (= (and b!7479771 res!3000857) b!7479775))

(assert (= (and d!2299960 (not res!3000856)) b!7479778))

(declare-fun m!8072450 () Bool)

(assert (=> b!7479777 m!8072450))

(declare-fun m!8072452 () Bool)

(assert (=> b!7479777 m!8072452))

(assert (=> b!7479771 m!8072450))

(declare-fun m!8072454 () Bool)

(assert (=> b!7479771 m!8072454))

(declare-fun m!8072456 () Bool)

(assert (=> b!7479778 m!8072456))

(assert (=> d!2299960 m!8072456))

(declare-fun m!8072458 () Bool)

(assert (=> d!2299960 m!8072458))

(assert (=> d!2299960 m!8072440))

(assert (=> b!7479772 m!8072208))

(assert (=> b!7479773 m!8072210))

(assert (=> b!7479773 m!8072210))

(assert (=> b!7479773 m!8072212))

(assert (=> b!7479773 m!8072214))

(assert (=> b!7479773 m!8072210))

(declare-fun m!8072460 () Bool)

(assert (=> b!7479773 m!8072460))

(assert (=> b!7479775 m!8072450))

(declare-fun m!8072462 () Bool)

(assert (=> b!7479775 m!8072462))

(assert (=> b!7479207 d!2299960))

(declare-fun d!2299962 () Bool)

(assert (=> d!2299962 (= (Exists!4228 lambda!463408) (choose!57824 lambda!463408))))

(declare-fun bs!1932793 () Bool)

(assert (= bs!1932793 d!2299962))

(declare-fun m!8072464 () Bool)

(assert (=> bs!1932793 m!8072464))

(assert (=> b!7479207 d!2299962))

(declare-fun b!7479780 () Bool)

(declare-fun res!3000863 () Bool)

(declare-fun e!4461680 () Bool)

(assert (=> b!7479780 (=> (not res!3000863) (not e!4461680))))

(declare-fun call!686692 () Bool)

(assert (=> b!7479780 (= res!3000863 call!686692)))

(declare-fun e!4461681 () Bool)

(assert (=> b!7479780 (= e!4461681 e!4461680)))

(declare-fun b!7479781 () Bool)

(declare-fun e!4461677 () Bool)

(declare-fun e!4461678 () Bool)

(assert (=> b!7479781 (= e!4461677 e!4461678)))

(declare-fun res!3000864 () Bool)

(assert (=> b!7479781 (= res!3000864 (not (nullable!8547 (reg!19938 r2!5783))))))

(assert (=> b!7479781 (=> (not res!3000864) (not e!4461678))))

(declare-fun bm!686685 () Bool)

(declare-fun c!1381641 () Bool)

(assert (=> bm!686685 (= call!686692 (validRegex!10123 (ite c!1381641 (regOne!39731 r2!5783) (regOne!39730 r2!5783))))))

(declare-fun b!7479782 () Bool)

(declare-fun e!4461679 () Bool)

(declare-fun call!686691 () Bool)

(assert (=> b!7479782 (= e!4461679 call!686691)))

(declare-fun b!7479783 () Bool)

(assert (=> b!7479783 (= e!4461677 e!4461681)))

(assert (=> b!7479783 (= c!1381641 ((_ is Union!19609) r2!5783))))

(declare-fun b!7479784 () Bool)

(declare-fun e!4461682 () Bool)

(assert (=> b!7479784 (= e!4461682 e!4461677)))

(declare-fun c!1381642 () Bool)

(assert (=> b!7479784 (= c!1381642 ((_ is Star!19609) r2!5783))))

(declare-fun d!2299964 () Bool)

(declare-fun res!3000861 () Bool)

(assert (=> d!2299964 (=> res!3000861 e!4461682)))

(assert (=> d!2299964 (= res!3000861 ((_ is ElementMatch!19609) r2!5783))))

(assert (=> d!2299964 (= (validRegex!10123 r2!5783) e!4461682)))

(declare-fun call!686690 () Bool)

(declare-fun bm!686686 () Bool)

(assert (=> bm!686686 (= call!686690 (validRegex!10123 (ite c!1381642 (reg!19938 r2!5783) (ite c!1381641 (regTwo!39731 r2!5783) (regTwo!39730 r2!5783)))))))

(declare-fun b!7479785 () Bool)

(assert (=> b!7479785 (= e!4461680 call!686691)))

(declare-fun b!7479786 () Bool)

(assert (=> b!7479786 (= e!4461678 call!686690)))

(declare-fun bm!686687 () Bool)

(assert (=> bm!686687 (= call!686691 call!686690)))

(declare-fun b!7479787 () Bool)

(declare-fun e!4461676 () Bool)

(assert (=> b!7479787 (= e!4461676 e!4461679)))

(declare-fun res!3000860 () Bool)

(assert (=> b!7479787 (=> (not res!3000860) (not e!4461679))))

(assert (=> b!7479787 (= res!3000860 call!686692)))

(declare-fun b!7479788 () Bool)

(declare-fun res!3000862 () Bool)

(assert (=> b!7479788 (=> res!3000862 e!4461676)))

(assert (=> b!7479788 (= res!3000862 (not ((_ is Concat!28454) r2!5783)))))

(assert (=> b!7479788 (= e!4461681 e!4461676)))

(assert (= (and d!2299964 (not res!3000861)) b!7479784))

(assert (= (and b!7479784 c!1381642) b!7479781))

(assert (= (and b!7479784 (not c!1381642)) b!7479783))

(assert (= (and b!7479781 res!3000864) b!7479786))

(assert (= (and b!7479783 c!1381641) b!7479780))

(assert (= (and b!7479783 (not c!1381641)) b!7479788))

(assert (= (and b!7479780 res!3000863) b!7479785))

(assert (= (and b!7479788 (not res!3000862)) b!7479787))

(assert (= (and b!7479787 res!3000860) b!7479782))

(assert (= (or b!7479785 b!7479782) bm!686687))

(assert (= (or b!7479780 b!7479787) bm!686685))

(assert (= (or b!7479786 bm!686687) bm!686686))

(declare-fun m!8072466 () Bool)

(assert (=> b!7479781 m!8072466))

(declare-fun m!8072468 () Bool)

(assert (=> bm!686685 m!8072468))

(declare-fun m!8072470 () Bool)

(assert (=> bm!686686 m!8072470))

(assert (=> b!7479223 d!2299964))

(declare-fun bs!1932794 () Bool)

(declare-fun b!7479789 () Bool)

(assert (= bs!1932794 (and b!7479789 b!7479207)))

(declare-fun lambda!463456 () Int)

(assert (=> bs!1932794 (not (= lambda!463456 lambda!463408))))

(declare-fun bs!1932795 () Bool)

(assert (= bs!1932795 (and b!7479789 b!7479735)))

(assert (=> bs!1932795 (= (and (= (reg!19938 lt!2627804) (reg!19938 lt!2627789)) (= lt!2627804 lt!2627789)) (= lambda!463456 lambda!463449))))

(declare-fun bs!1932796 () Bool)

(assert (= bs!1932796 (and b!7479789 b!7479221)))

(assert (=> bs!1932796 (not (= lambda!463456 lambda!463411))))

(declare-fun bs!1932797 () Bool)

(assert (= bs!1932797 (and b!7479789 d!2299956)))

(assert (=> bs!1932797 (not (= lambda!463456 lambda!463453))))

(assert (=> bs!1932794 (not (= lambda!463456 lambda!463409))))

(declare-fun bs!1932798 () Bool)

(assert (= bs!1932798 (and b!7479789 d!2299958)))

(assert (=> bs!1932798 (not (= lambda!463456 lambda!463454))))

(declare-fun bs!1932799 () Bool)

(assert (= bs!1932799 (and b!7479789 d!2299880)))

(assert (=> bs!1932799 (not (= lambda!463456 lambda!463427))))

(assert (=> bs!1932798 (not (= lambda!463456 lambda!463455))))

(declare-fun bs!1932800 () Bool)

(assert (= bs!1932800 (and b!7479789 b!7479736)))

(assert (=> bs!1932800 (not (= lambda!463456 lambda!463450))))

(declare-fun bs!1932801 () Bool)

(assert (= bs!1932801 (and b!7479789 b!7479746)))

(assert (=> bs!1932801 (= (and (= (reg!19938 lt!2627804) (reg!19938 lt!2627802)) (= lt!2627804 lt!2627802)) (= lambda!463456 lambda!463451))))

(assert (=> bs!1932796 (not (= lambda!463456 lambda!463410))))

(declare-fun bs!1932802 () Bool)

(assert (= bs!1932802 (and b!7479789 d!2299924)))

(assert (=> bs!1932802 (not (= lambda!463456 lambda!463443))))

(assert (=> bs!1932802 (not (= lambda!463456 lambda!463444))))

(declare-fun bs!1932803 () Bool)

(assert (= bs!1932803 (and b!7479789 b!7479747)))

(assert (=> bs!1932803 (not (= lambda!463456 lambda!463452))))

(assert (=> b!7479789 true))

(assert (=> b!7479789 true))

(declare-fun bs!1932804 () Bool)

(declare-fun b!7479790 () Bool)

(assert (= bs!1932804 (and b!7479790 b!7479207)))

(declare-fun lambda!463457 () Int)

(assert (=> bs!1932804 (not (= lambda!463457 lambda!463408))))

(declare-fun bs!1932805 () Bool)

(assert (= bs!1932805 (and b!7479790 b!7479735)))

(assert (=> bs!1932805 (not (= lambda!463457 lambda!463449))))

(declare-fun bs!1932806 () Bool)

(assert (= bs!1932806 (and b!7479790 b!7479221)))

(assert (=> bs!1932806 (= (and (= (regOne!39730 lt!2627804) r1!5845) (= (regTwo!39730 lt!2627804) rTail!78)) (= lambda!463457 lambda!463411))))

(declare-fun bs!1932807 () Bool)

(assert (= bs!1932807 (and b!7479790 d!2299956)))

(assert (=> bs!1932807 (not (= lambda!463457 lambda!463453))))

(assert (=> bs!1932804 (= (and (= (regOne!39730 lt!2627804) lt!2627798) (= (regTwo!39730 lt!2627804) rTail!78)) (= lambda!463457 lambda!463409))))

(declare-fun bs!1932808 () Bool)

(assert (= bs!1932808 (and b!7479790 d!2299958)))

(assert (=> bs!1932808 (not (= lambda!463457 lambda!463454))))

(declare-fun bs!1932809 () Bool)

(assert (= bs!1932809 (and b!7479790 d!2299880)))

(assert (=> bs!1932809 (not (= lambda!463457 lambda!463427))))

(assert (=> bs!1932808 (= (and (= (regOne!39730 lt!2627804) lt!2627798) (= (regTwo!39730 lt!2627804) rTail!78)) (= lambda!463457 lambda!463455))))

(declare-fun bs!1932810 () Bool)

(assert (= bs!1932810 (and b!7479790 b!7479789)))

(assert (=> bs!1932810 (not (= lambda!463457 lambda!463456))))

(declare-fun bs!1932811 () Bool)

(assert (= bs!1932811 (and b!7479790 b!7479736)))

(assert (=> bs!1932811 (= (and (= (regOne!39730 lt!2627804) (regOne!39730 lt!2627789)) (= (regTwo!39730 lt!2627804) (regTwo!39730 lt!2627789))) (= lambda!463457 lambda!463450))))

(declare-fun bs!1932812 () Bool)

(assert (= bs!1932812 (and b!7479790 b!7479746)))

(assert (=> bs!1932812 (not (= lambda!463457 lambda!463451))))

(assert (=> bs!1932806 (not (= lambda!463457 lambda!463410))))

(declare-fun bs!1932813 () Bool)

(assert (= bs!1932813 (and b!7479790 d!2299924)))

(assert (=> bs!1932813 (not (= lambda!463457 lambda!463443))))

(assert (=> bs!1932813 (= (and (= (regOne!39730 lt!2627804) r1!5845) (= (regTwo!39730 lt!2627804) rTail!78)) (= lambda!463457 lambda!463444))))

(declare-fun bs!1932814 () Bool)

(assert (= bs!1932814 (and b!7479790 b!7479747)))

(assert (=> bs!1932814 (= (and (= (regOne!39730 lt!2627804) (regOne!39730 lt!2627802)) (= (regTwo!39730 lt!2627804) (regTwo!39730 lt!2627802))) (= lambda!463457 lambda!463452))))

(assert (=> b!7479790 true))

(assert (=> b!7479790 true))

(declare-fun call!686693 () Bool)

(declare-fun c!1381646 () Bool)

(declare-fun bm!686688 () Bool)

(assert (=> bm!686688 (= call!686693 (Exists!4228 (ite c!1381646 lambda!463456 lambda!463457)))))

(declare-fun e!4461688 () Bool)

(assert (=> b!7479789 (= e!4461688 call!686693)))

(declare-fun e!4461689 () Bool)

(assert (=> b!7479790 (= e!4461689 call!686693)))

(declare-fun bm!686689 () Bool)

(declare-fun call!686694 () Bool)

(assert (=> bm!686689 (= call!686694 (isEmpty!41209 s!13591))))

(declare-fun b!7479792 () Bool)

(declare-fun c!1381644 () Bool)

(assert (=> b!7479792 (= c!1381644 ((_ is Union!19609) lt!2627804))))

(declare-fun e!4461683 () Bool)

(declare-fun e!4461684 () Bool)

(assert (=> b!7479792 (= e!4461683 e!4461684)))

(declare-fun b!7479793 () Bool)

(declare-fun e!4461685 () Bool)

(assert (=> b!7479793 (= e!4461684 e!4461685)))

(declare-fun res!3000865 () Bool)

(assert (=> b!7479793 (= res!3000865 (matchRSpec!4288 (regOne!39731 lt!2627804) s!13591))))

(assert (=> b!7479793 (=> res!3000865 e!4461685)))

(declare-fun b!7479794 () Bool)

(declare-fun c!1381643 () Bool)

(assert (=> b!7479794 (= c!1381643 ((_ is ElementMatch!19609) lt!2627804))))

(declare-fun e!4461687 () Bool)

(assert (=> b!7479794 (= e!4461687 e!4461683)))

(declare-fun b!7479795 () Bool)

(declare-fun e!4461686 () Bool)

(assert (=> b!7479795 (= e!4461686 call!686694)))

(declare-fun b!7479796 () Bool)

(assert (=> b!7479796 (= e!4461683 (= s!13591 (Cons!72201 (c!1381530 lt!2627804) Nil!72201)))))

(declare-fun b!7479797 () Bool)

(declare-fun res!3000867 () Bool)

(assert (=> b!7479797 (=> res!3000867 e!4461688)))

(assert (=> b!7479797 (= res!3000867 call!686694)))

(assert (=> b!7479797 (= e!4461689 e!4461688)))

(declare-fun b!7479791 () Bool)

(assert (=> b!7479791 (= e!4461686 e!4461687)))

(declare-fun res!3000866 () Bool)

(assert (=> b!7479791 (= res!3000866 (not ((_ is EmptyLang!19609) lt!2627804)))))

(assert (=> b!7479791 (=> (not res!3000866) (not e!4461687))))

(declare-fun d!2299966 () Bool)

(declare-fun c!1381645 () Bool)

(assert (=> d!2299966 (= c!1381645 ((_ is EmptyExpr!19609) lt!2627804))))

(assert (=> d!2299966 (= (matchRSpec!4288 lt!2627804 s!13591) e!4461686)))

(declare-fun b!7479798 () Bool)

(assert (=> b!7479798 (= e!4461685 (matchRSpec!4288 (regTwo!39731 lt!2627804) s!13591))))

(declare-fun b!7479799 () Bool)

(assert (=> b!7479799 (= e!4461684 e!4461689)))

(assert (=> b!7479799 (= c!1381646 ((_ is Star!19609) lt!2627804))))

(assert (= (and d!2299966 c!1381645) b!7479795))

(assert (= (and d!2299966 (not c!1381645)) b!7479791))

(assert (= (and b!7479791 res!3000866) b!7479794))

(assert (= (and b!7479794 c!1381643) b!7479796))

(assert (= (and b!7479794 (not c!1381643)) b!7479792))

(assert (= (and b!7479792 c!1381644) b!7479793))

(assert (= (and b!7479792 (not c!1381644)) b!7479799))

(assert (= (and b!7479793 (not res!3000865)) b!7479798))

(assert (= (and b!7479799 c!1381646) b!7479797))

(assert (= (and b!7479799 (not c!1381646)) b!7479790))

(assert (= (and b!7479797 (not res!3000867)) b!7479789))

(assert (= (or b!7479789 b!7479790) bm!686688))

(assert (= (or b!7479795 b!7479797) bm!686689))

(declare-fun m!8072472 () Bool)

(assert (=> bm!686688 m!8072472))

(assert (=> bm!686689 m!8072406))

(declare-fun m!8072474 () Bool)

(assert (=> b!7479793 m!8072474))

(declare-fun m!8072476 () Bool)

(assert (=> b!7479798 m!8072476))

(assert (=> b!7479218 d!2299966))

(declare-fun b!7479800 () Bool)

(declare-fun res!3000868 () Bool)

(declare-fun e!4461696 () Bool)

(assert (=> b!7479800 (=> (not res!3000868) (not e!4461696))))

(assert (=> b!7479800 (= res!3000868 (isEmpty!41209 (tail!14915 s!13591)))))

(declare-fun b!7479801 () Bool)

(declare-fun res!3000869 () Bool)

(declare-fun e!4461692 () Bool)

(assert (=> b!7479801 (=> res!3000869 e!4461692)))

(assert (=> b!7479801 (= res!3000869 (not ((_ is ElementMatch!19609) lt!2627795)))))

(declare-fun e!4461693 () Bool)

(assert (=> b!7479801 (= e!4461693 e!4461692)))

(declare-fun b!7479802 () Bool)

(declare-fun res!3000873 () Bool)

(declare-fun e!4461690 () Bool)

(assert (=> b!7479802 (=> res!3000873 e!4461690)))

(assert (=> b!7479802 (= res!3000873 (not (isEmpty!41209 (tail!14915 s!13591))))))

(declare-fun b!7479803 () Bool)

(declare-fun lt!2627868 () Bool)

(assert (=> b!7479803 (= e!4461693 (not lt!2627868))))

(declare-fun b!7479804 () Bool)

(assert (=> b!7479804 (= e!4461696 (= (head!15346 s!13591) (c!1381530 lt!2627795)))))

(declare-fun b!7479805 () Bool)

(declare-fun e!4461695 () Bool)

(assert (=> b!7479805 (= e!4461695 (nullable!8547 lt!2627795))))

(declare-fun b!7479806 () Bool)

(assert (=> b!7479806 (= e!4461695 (matchR!9373 (derivativeStep!5606 lt!2627795 (head!15346 s!13591)) (tail!14915 s!13591)))))

(declare-fun b!7479808 () Bool)

(declare-fun e!4461691 () Bool)

(assert (=> b!7479808 (= e!4461692 e!4461691)))

(declare-fun res!3000870 () Bool)

(assert (=> b!7479808 (=> (not res!3000870) (not e!4461691))))

(assert (=> b!7479808 (= res!3000870 (not lt!2627868))))

(declare-fun b!7479809 () Bool)

(assert (=> b!7479809 (= e!4461691 e!4461690)))

(declare-fun res!3000872 () Bool)

(assert (=> b!7479809 (=> res!3000872 e!4461690)))

(declare-fun call!686695 () Bool)

(assert (=> b!7479809 (= res!3000872 call!686695)))

(declare-fun b!7479810 () Bool)

(declare-fun e!4461694 () Bool)

(assert (=> b!7479810 (= e!4461694 (= lt!2627868 call!686695))))

(declare-fun b!7479811 () Bool)

(declare-fun res!3000874 () Bool)

(assert (=> b!7479811 (=> (not res!3000874) (not e!4461696))))

(assert (=> b!7479811 (= res!3000874 (not call!686695))))

(declare-fun b!7479812 () Bool)

(assert (=> b!7479812 (= e!4461690 (not (= (head!15346 s!13591) (c!1381530 lt!2627795))))))

(declare-fun bm!686690 () Bool)

(assert (=> bm!686690 (= call!686695 (isEmpty!41209 s!13591))))

(declare-fun b!7479813 () Bool)

(assert (=> b!7479813 (= e!4461694 e!4461693)))

(declare-fun c!1381647 () Bool)

(assert (=> b!7479813 (= c!1381647 ((_ is EmptyLang!19609) lt!2627795))))

(declare-fun d!2299968 () Bool)

(assert (=> d!2299968 e!4461694))

(declare-fun c!1381648 () Bool)

(assert (=> d!2299968 (= c!1381648 ((_ is EmptyExpr!19609) lt!2627795))))

(assert (=> d!2299968 (= lt!2627868 e!4461695)))

(declare-fun c!1381649 () Bool)

(assert (=> d!2299968 (= c!1381649 (isEmpty!41209 s!13591))))

(assert (=> d!2299968 (validRegex!10123 lt!2627795)))

(assert (=> d!2299968 (= (matchR!9373 lt!2627795 s!13591) lt!2627868)))

(declare-fun b!7479807 () Bool)

(declare-fun res!3000875 () Bool)

(assert (=> b!7479807 (=> res!3000875 e!4461692)))

(assert (=> b!7479807 (= res!3000875 e!4461696)))

(declare-fun res!3000871 () Bool)

(assert (=> b!7479807 (=> (not res!3000871) (not e!4461696))))

(assert (=> b!7479807 (= res!3000871 lt!2627868)))

(assert (= (and d!2299968 c!1381649) b!7479805))

(assert (= (and d!2299968 (not c!1381649)) b!7479806))

(assert (= (and d!2299968 c!1381648) b!7479810))

(assert (= (and d!2299968 (not c!1381648)) b!7479813))

(assert (= (and b!7479813 c!1381647) b!7479803))

(assert (= (and b!7479813 (not c!1381647)) b!7479801))

(assert (= (and b!7479801 (not res!3000869)) b!7479807))

(assert (= (and b!7479807 res!3000871) b!7479811))

(assert (= (and b!7479811 res!3000874) b!7479800))

(assert (= (and b!7479800 res!3000868) b!7479804))

(assert (= (and b!7479807 (not res!3000875)) b!7479808))

(assert (= (and b!7479808 res!3000870) b!7479809))

(assert (= (and b!7479809 (not res!3000872)) b!7479802))

(assert (= (and b!7479802 (not res!3000873)) b!7479812))

(assert (= (or b!7479810 b!7479809 b!7479811) bm!686690))

(assert (=> b!7479800 m!8072394))

(assert (=> b!7479800 m!8072394))

(assert (=> b!7479800 m!8072396))

(assert (=> b!7479812 m!8072398))

(assert (=> b!7479806 m!8072398))

(assert (=> b!7479806 m!8072398))

(declare-fun m!8072478 () Bool)

(assert (=> b!7479806 m!8072478))

(assert (=> b!7479806 m!8072394))

(assert (=> b!7479806 m!8072478))

(assert (=> b!7479806 m!8072394))

(declare-fun m!8072480 () Bool)

(assert (=> b!7479806 m!8072480))

(declare-fun m!8072482 () Bool)

(assert (=> b!7479805 m!8072482))

(assert (=> b!7479804 m!8072398))

(assert (=> d!2299968 m!8072406))

(declare-fun m!8072484 () Bool)

(assert (=> d!2299968 m!8072484))

(assert (=> bm!686690 m!8072406))

(assert (=> b!7479802 m!8072394))

(assert (=> b!7479802 m!8072394))

(assert (=> b!7479802 m!8072396))

(assert (=> b!7479218 d!2299968))

(declare-fun bs!1932815 () Bool)

(declare-fun b!7479814 () Bool)

(assert (= bs!1932815 (and b!7479814 b!7479207)))

(declare-fun lambda!463458 () Int)

(assert (=> bs!1932815 (not (= lambda!463458 lambda!463408))))

(declare-fun bs!1932816 () Bool)

(assert (= bs!1932816 (and b!7479814 b!7479735)))

(assert (=> bs!1932816 (= (and (= (reg!19938 lt!2627795) (reg!19938 lt!2627789)) (= lt!2627795 lt!2627789)) (= lambda!463458 lambda!463449))))

(declare-fun bs!1932817 () Bool)

(assert (= bs!1932817 (and b!7479814 b!7479221)))

(assert (=> bs!1932817 (not (= lambda!463458 lambda!463411))))

(declare-fun bs!1932818 () Bool)

(assert (= bs!1932818 (and b!7479814 d!2299956)))

(assert (=> bs!1932818 (not (= lambda!463458 lambda!463453))))

(assert (=> bs!1932815 (not (= lambda!463458 lambda!463409))))

(declare-fun bs!1932819 () Bool)

(assert (= bs!1932819 (and b!7479814 d!2299958)))

(assert (=> bs!1932819 (not (= lambda!463458 lambda!463454))))

(declare-fun bs!1932820 () Bool)

(assert (= bs!1932820 (and b!7479814 b!7479790)))

(assert (=> bs!1932820 (not (= lambda!463458 lambda!463457))))

(declare-fun bs!1932821 () Bool)

(assert (= bs!1932821 (and b!7479814 d!2299880)))

(assert (=> bs!1932821 (not (= lambda!463458 lambda!463427))))

(assert (=> bs!1932819 (not (= lambda!463458 lambda!463455))))

(declare-fun bs!1932822 () Bool)

(assert (= bs!1932822 (and b!7479814 b!7479789)))

(assert (=> bs!1932822 (= (and (= (reg!19938 lt!2627795) (reg!19938 lt!2627804)) (= lt!2627795 lt!2627804)) (= lambda!463458 lambda!463456))))

(declare-fun bs!1932823 () Bool)

(assert (= bs!1932823 (and b!7479814 b!7479736)))

(assert (=> bs!1932823 (not (= lambda!463458 lambda!463450))))

(declare-fun bs!1932824 () Bool)

(assert (= bs!1932824 (and b!7479814 b!7479746)))

(assert (=> bs!1932824 (= (and (= (reg!19938 lt!2627795) (reg!19938 lt!2627802)) (= lt!2627795 lt!2627802)) (= lambda!463458 lambda!463451))))

(assert (=> bs!1932817 (not (= lambda!463458 lambda!463410))))

(declare-fun bs!1932825 () Bool)

(assert (= bs!1932825 (and b!7479814 d!2299924)))

(assert (=> bs!1932825 (not (= lambda!463458 lambda!463443))))

(assert (=> bs!1932825 (not (= lambda!463458 lambda!463444))))

(declare-fun bs!1932826 () Bool)

(assert (= bs!1932826 (and b!7479814 b!7479747)))

(assert (=> bs!1932826 (not (= lambda!463458 lambda!463452))))

(assert (=> b!7479814 true))

(assert (=> b!7479814 true))

(declare-fun bs!1932827 () Bool)

(declare-fun b!7479815 () Bool)

(assert (= bs!1932827 (and b!7479815 b!7479207)))

(declare-fun lambda!463459 () Int)

(assert (=> bs!1932827 (not (= lambda!463459 lambda!463408))))

(declare-fun bs!1932828 () Bool)

(assert (= bs!1932828 (and b!7479815 b!7479735)))

(assert (=> bs!1932828 (not (= lambda!463459 lambda!463449))))

(declare-fun bs!1932829 () Bool)

(assert (= bs!1932829 (and b!7479815 b!7479221)))

(assert (=> bs!1932829 (= (and (= (regOne!39730 lt!2627795) r1!5845) (= (regTwo!39730 lt!2627795) rTail!78)) (= lambda!463459 lambda!463411))))

(declare-fun bs!1932830 () Bool)

(assert (= bs!1932830 (and b!7479815 d!2299956)))

(assert (=> bs!1932830 (not (= lambda!463459 lambda!463453))))

(assert (=> bs!1932827 (= (and (= (regOne!39730 lt!2627795) lt!2627798) (= (regTwo!39730 lt!2627795) rTail!78)) (= lambda!463459 lambda!463409))))

(declare-fun bs!1932831 () Bool)

(assert (= bs!1932831 (and b!7479815 d!2299958)))

(assert (=> bs!1932831 (not (= lambda!463459 lambda!463454))))

(declare-fun bs!1932832 () Bool)

(assert (= bs!1932832 (and b!7479815 b!7479790)))

(assert (=> bs!1932832 (= (and (= (regOne!39730 lt!2627795) (regOne!39730 lt!2627804)) (= (regTwo!39730 lt!2627795) (regTwo!39730 lt!2627804))) (= lambda!463459 lambda!463457))))

(declare-fun bs!1932833 () Bool)

(assert (= bs!1932833 (and b!7479815 d!2299880)))

(assert (=> bs!1932833 (not (= lambda!463459 lambda!463427))))

(assert (=> bs!1932831 (= (and (= (regOne!39730 lt!2627795) lt!2627798) (= (regTwo!39730 lt!2627795) rTail!78)) (= lambda!463459 lambda!463455))))

(declare-fun bs!1932834 () Bool)

(assert (= bs!1932834 (and b!7479815 b!7479789)))

(assert (=> bs!1932834 (not (= lambda!463459 lambda!463456))))

(declare-fun bs!1932835 () Bool)

(assert (= bs!1932835 (and b!7479815 b!7479736)))

(assert (=> bs!1932835 (= (and (= (regOne!39730 lt!2627795) (regOne!39730 lt!2627789)) (= (regTwo!39730 lt!2627795) (regTwo!39730 lt!2627789))) (= lambda!463459 lambda!463450))))

(declare-fun bs!1932836 () Bool)

(assert (= bs!1932836 (and b!7479815 b!7479746)))

(assert (=> bs!1932836 (not (= lambda!463459 lambda!463451))))

(declare-fun bs!1932837 () Bool)

(assert (= bs!1932837 (and b!7479815 b!7479814)))

(assert (=> bs!1932837 (not (= lambda!463459 lambda!463458))))

(assert (=> bs!1932829 (not (= lambda!463459 lambda!463410))))

(declare-fun bs!1932838 () Bool)

(assert (= bs!1932838 (and b!7479815 d!2299924)))

(assert (=> bs!1932838 (not (= lambda!463459 lambda!463443))))

(assert (=> bs!1932838 (= (and (= (regOne!39730 lt!2627795) r1!5845) (= (regTwo!39730 lt!2627795) rTail!78)) (= lambda!463459 lambda!463444))))

(declare-fun bs!1932839 () Bool)

(assert (= bs!1932839 (and b!7479815 b!7479747)))

(assert (=> bs!1932839 (= (and (= (regOne!39730 lt!2627795) (regOne!39730 lt!2627802)) (= (regTwo!39730 lt!2627795) (regTwo!39730 lt!2627802))) (= lambda!463459 lambda!463452))))

(assert (=> b!7479815 true))

(assert (=> b!7479815 true))

(declare-fun call!686696 () Bool)

(declare-fun bm!686691 () Bool)

(declare-fun c!1381653 () Bool)

(assert (=> bm!686691 (= call!686696 (Exists!4228 (ite c!1381653 lambda!463458 lambda!463459)))))

(declare-fun e!4461702 () Bool)

(assert (=> b!7479814 (= e!4461702 call!686696)))

(declare-fun e!4461703 () Bool)

(assert (=> b!7479815 (= e!4461703 call!686696)))

(declare-fun bm!686692 () Bool)

(declare-fun call!686697 () Bool)

(assert (=> bm!686692 (= call!686697 (isEmpty!41209 s!13591))))

(declare-fun b!7479817 () Bool)

(declare-fun c!1381651 () Bool)

(assert (=> b!7479817 (= c!1381651 ((_ is Union!19609) lt!2627795))))

(declare-fun e!4461697 () Bool)

(declare-fun e!4461698 () Bool)

(assert (=> b!7479817 (= e!4461697 e!4461698)))

(declare-fun b!7479818 () Bool)

(declare-fun e!4461699 () Bool)

(assert (=> b!7479818 (= e!4461698 e!4461699)))

(declare-fun res!3000876 () Bool)

(assert (=> b!7479818 (= res!3000876 (matchRSpec!4288 (regOne!39731 lt!2627795) s!13591))))

(assert (=> b!7479818 (=> res!3000876 e!4461699)))

(declare-fun b!7479819 () Bool)

(declare-fun c!1381650 () Bool)

(assert (=> b!7479819 (= c!1381650 ((_ is ElementMatch!19609) lt!2627795))))

(declare-fun e!4461701 () Bool)

(assert (=> b!7479819 (= e!4461701 e!4461697)))

(declare-fun b!7479820 () Bool)

(declare-fun e!4461700 () Bool)

(assert (=> b!7479820 (= e!4461700 call!686697)))

(declare-fun b!7479821 () Bool)

(assert (=> b!7479821 (= e!4461697 (= s!13591 (Cons!72201 (c!1381530 lt!2627795) Nil!72201)))))

(declare-fun b!7479822 () Bool)

(declare-fun res!3000878 () Bool)

(assert (=> b!7479822 (=> res!3000878 e!4461702)))

(assert (=> b!7479822 (= res!3000878 call!686697)))

(assert (=> b!7479822 (= e!4461703 e!4461702)))

(declare-fun b!7479816 () Bool)

(assert (=> b!7479816 (= e!4461700 e!4461701)))

(declare-fun res!3000877 () Bool)

(assert (=> b!7479816 (= res!3000877 (not ((_ is EmptyLang!19609) lt!2627795)))))

(assert (=> b!7479816 (=> (not res!3000877) (not e!4461701))))

(declare-fun d!2299970 () Bool)

(declare-fun c!1381652 () Bool)

(assert (=> d!2299970 (= c!1381652 ((_ is EmptyExpr!19609) lt!2627795))))

(assert (=> d!2299970 (= (matchRSpec!4288 lt!2627795 s!13591) e!4461700)))

(declare-fun b!7479823 () Bool)

(assert (=> b!7479823 (= e!4461699 (matchRSpec!4288 (regTwo!39731 lt!2627795) s!13591))))

(declare-fun b!7479824 () Bool)

(assert (=> b!7479824 (= e!4461698 e!4461703)))

(assert (=> b!7479824 (= c!1381653 ((_ is Star!19609) lt!2627795))))

(assert (= (and d!2299970 c!1381652) b!7479820))

(assert (= (and d!2299970 (not c!1381652)) b!7479816))

(assert (= (and b!7479816 res!3000877) b!7479819))

(assert (= (and b!7479819 c!1381650) b!7479821))

(assert (= (and b!7479819 (not c!1381650)) b!7479817))

(assert (= (and b!7479817 c!1381651) b!7479818))

(assert (= (and b!7479817 (not c!1381651)) b!7479824))

(assert (= (and b!7479818 (not res!3000876)) b!7479823))

(assert (= (and b!7479824 c!1381653) b!7479822))

(assert (= (and b!7479824 (not c!1381653)) b!7479815))

(assert (= (and b!7479822 (not res!3000878)) b!7479814))

(assert (= (or b!7479814 b!7479815) bm!686691))

(assert (= (or b!7479820 b!7479822) bm!686692))

(declare-fun m!8072486 () Bool)

(assert (=> bm!686691 m!8072486))

(assert (=> bm!686692 m!8072406))

(declare-fun m!8072488 () Bool)

(assert (=> b!7479818 m!8072488))

(declare-fun m!8072490 () Bool)

(assert (=> b!7479823 m!8072490))

(assert (=> b!7479218 d!2299970))

(declare-fun b!7479825 () Bool)

(declare-fun res!3000879 () Bool)

(declare-fun e!4461710 () Bool)

(assert (=> b!7479825 (=> (not res!3000879) (not e!4461710))))

(assert (=> b!7479825 (= res!3000879 (isEmpty!41209 (tail!14915 s!13591)))))

(declare-fun b!7479826 () Bool)

(declare-fun res!3000880 () Bool)

(declare-fun e!4461706 () Bool)

(assert (=> b!7479826 (=> res!3000880 e!4461706)))

(assert (=> b!7479826 (= res!3000880 (not ((_ is ElementMatch!19609) lt!2627804)))))

(declare-fun e!4461707 () Bool)

(assert (=> b!7479826 (= e!4461707 e!4461706)))

(declare-fun b!7479827 () Bool)

(declare-fun res!3000884 () Bool)

(declare-fun e!4461704 () Bool)

(assert (=> b!7479827 (=> res!3000884 e!4461704)))

(assert (=> b!7479827 (= res!3000884 (not (isEmpty!41209 (tail!14915 s!13591))))))

(declare-fun b!7479828 () Bool)

(declare-fun lt!2627869 () Bool)

(assert (=> b!7479828 (= e!4461707 (not lt!2627869))))

(declare-fun b!7479829 () Bool)

(assert (=> b!7479829 (= e!4461710 (= (head!15346 s!13591) (c!1381530 lt!2627804)))))

(declare-fun b!7479830 () Bool)

(declare-fun e!4461709 () Bool)

(assert (=> b!7479830 (= e!4461709 (nullable!8547 lt!2627804))))

(declare-fun b!7479831 () Bool)

(assert (=> b!7479831 (= e!4461709 (matchR!9373 (derivativeStep!5606 lt!2627804 (head!15346 s!13591)) (tail!14915 s!13591)))))

(declare-fun b!7479833 () Bool)

(declare-fun e!4461705 () Bool)

(assert (=> b!7479833 (= e!4461706 e!4461705)))

(declare-fun res!3000881 () Bool)

(assert (=> b!7479833 (=> (not res!3000881) (not e!4461705))))

(assert (=> b!7479833 (= res!3000881 (not lt!2627869))))

(declare-fun b!7479834 () Bool)

(assert (=> b!7479834 (= e!4461705 e!4461704)))

(declare-fun res!3000883 () Bool)

(assert (=> b!7479834 (=> res!3000883 e!4461704)))

(declare-fun call!686698 () Bool)

(assert (=> b!7479834 (= res!3000883 call!686698)))

(declare-fun b!7479835 () Bool)

(declare-fun e!4461708 () Bool)

(assert (=> b!7479835 (= e!4461708 (= lt!2627869 call!686698))))

(declare-fun b!7479836 () Bool)

(declare-fun res!3000885 () Bool)

(assert (=> b!7479836 (=> (not res!3000885) (not e!4461710))))

(assert (=> b!7479836 (= res!3000885 (not call!686698))))

(declare-fun b!7479837 () Bool)

(assert (=> b!7479837 (= e!4461704 (not (= (head!15346 s!13591) (c!1381530 lt!2627804))))))

(declare-fun bm!686693 () Bool)

(assert (=> bm!686693 (= call!686698 (isEmpty!41209 s!13591))))

(declare-fun b!7479838 () Bool)

(assert (=> b!7479838 (= e!4461708 e!4461707)))

(declare-fun c!1381654 () Bool)

(assert (=> b!7479838 (= c!1381654 ((_ is EmptyLang!19609) lt!2627804))))

(declare-fun d!2299972 () Bool)

(assert (=> d!2299972 e!4461708))

(declare-fun c!1381655 () Bool)

(assert (=> d!2299972 (= c!1381655 ((_ is EmptyExpr!19609) lt!2627804))))

(assert (=> d!2299972 (= lt!2627869 e!4461709)))

(declare-fun c!1381656 () Bool)

(assert (=> d!2299972 (= c!1381656 (isEmpty!41209 s!13591))))

(assert (=> d!2299972 (validRegex!10123 lt!2627804)))

(assert (=> d!2299972 (= (matchR!9373 lt!2627804 s!13591) lt!2627869)))

(declare-fun b!7479832 () Bool)

(declare-fun res!3000886 () Bool)

(assert (=> b!7479832 (=> res!3000886 e!4461706)))

(assert (=> b!7479832 (= res!3000886 e!4461710)))

(declare-fun res!3000882 () Bool)

(assert (=> b!7479832 (=> (not res!3000882) (not e!4461710))))

(assert (=> b!7479832 (= res!3000882 lt!2627869)))

(assert (= (and d!2299972 c!1381656) b!7479830))

(assert (= (and d!2299972 (not c!1381656)) b!7479831))

(assert (= (and d!2299972 c!1381655) b!7479835))

(assert (= (and d!2299972 (not c!1381655)) b!7479838))

(assert (= (and b!7479838 c!1381654) b!7479828))

(assert (= (and b!7479838 (not c!1381654)) b!7479826))

(assert (= (and b!7479826 (not res!3000880)) b!7479832))

(assert (= (and b!7479832 res!3000882) b!7479836))

(assert (= (and b!7479836 res!3000885) b!7479825))

(assert (= (and b!7479825 res!3000879) b!7479829))

(assert (= (and b!7479832 (not res!3000886)) b!7479833))

(assert (= (and b!7479833 res!3000881) b!7479834))

(assert (= (and b!7479834 (not res!3000883)) b!7479827))

(assert (= (and b!7479827 (not res!3000884)) b!7479837))

(assert (= (or b!7479835 b!7479834 b!7479836) bm!686693))

(assert (=> b!7479825 m!8072394))

(assert (=> b!7479825 m!8072394))

(assert (=> b!7479825 m!8072396))

(assert (=> b!7479837 m!8072398))

(assert (=> b!7479831 m!8072398))

(assert (=> b!7479831 m!8072398))

(declare-fun m!8072492 () Bool)

(assert (=> b!7479831 m!8072492))

(assert (=> b!7479831 m!8072394))

(assert (=> b!7479831 m!8072492))

(assert (=> b!7479831 m!8072394))

(declare-fun m!8072494 () Bool)

(assert (=> b!7479831 m!8072494))

(declare-fun m!8072496 () Bool)

(assert (=> b!7479830 m!8072496))

(assert (=> b!7479829 m!8072398))

(assert (=> d!2299972 m!8072406))

(declare-fun m!8072498 () Bool)

(assert (=> d!2299972 m!8072498))

(assert (=> bm!686693 m!8072406))

(assert (=> b!7479827 m!8072394))

(assert (=> b!7479827 m!8072394))

(assert (=> b!7479827 m!8072396))

(assert (=> b!7479218 d!2299972))

(declare-fun d!2299974 () Bool)

(assert (=> d!2299974 (= (matchR!9373 lt!2627804 s!13591) (matchRSpec!4288 lt!2627804 s!13591))))

(declare-fun lt!2627870 () Unit!166053)

(assert (=> d!2299974 (= lt!2627870 (choose!57825 lt!2627804 s!13591))))

(assert (=> d!2299974 (validRegex!10123 lt!2627804)))

(assert (=> d!2299974 (= (mainMatchTheorem!4282 lt!2627804 s!13591) lt!2627870)))

(declare-fun bs!1932840 () Bool)

(assert (= bs!1932840 d!2299974))

(assert (=> bs!1932840 m!8072108))

(assert (=> bs!1932840 m!8072100))

(declare-fun m!8072500 () Bool)

(assert (=> bs!1932840 m!8072500))

(assert (=> bs!1932840 m!8072498))

(assert (=> b!7479218 d!2299974))

(declare-fun d!2299976 () Bool)

(assert (=> d!2299976 (= (matchR!9373 lt!2627795 s!13591) (matchRSpec!4288 lt!2627795 s!13591))))

(declare-fun lt!2627871 () Unit!166053)

(assert (=> d!2299976 (= lt!2627871 (choose!57825 lt!2627795 s!13591))))

(assert (=> d!2299976 (validRegex!10123 lt!2627795)))

(assert (=> d!2299976 (= (mainMatchTheorem!4282 lt!2627795 s!13591) lt!2627871)))

(declare-fun bs!1932841 () Bool)

(assert (= bs!1932841 d!2299976))

(assert (=> bs!1932841 m!8072106))

(assert (=> bs!1932841 m!8072098))

(declare-fun m!8072502 () Bool)

(assert (=> bs!1932841 m!8072502))

(assert (=> bs!1932841 m!8072484))

(assert (=> b!7479218 d!2299976))

(declare-fun b!7479852 () Bool)

(declare-fun e!4461713 () Bool)

(declare-fun tp!2169410 () Bool)

(declare-fun tp!2169408 () Bool)

(assert (=> b!7479852 (= e!4461713 (and tp!2169410 tp!2169408))))

(assert (=> b!7479217 (= tp!2169299 e!4461713)))

(declare-fun b!7479850 () Bool)

(declare-fun tp!2169406 () Bool)

(declare-fun tp!2169409 () Bool)

(assert (=> b!7479850 (= e!4461713 (and tp!2169406 tp!2169409))))

(declare-fun b!7479851 () Bool)

(declare-fun tp!2169407 () Bool)

(assert (=> b!7479851 (= e!4461713 tp!2169407)))

(declare-fun b!7479849 () Bool)

(assert (=> b!7479849 (= e!4461713 tp_is_empty!49507)))

(assert (= (and b!7479217 ((_ is ElementMatch!19609) (regOne!39731 r1!5845))) b!7479849))

(assert (= (and b!7479217 ((_ is Concat!28454) (regOne!39731 r1!5845))) b!7479850))

(assert (= (and b!7479217 ((_ is Star!19609) (regOne!39731 r1!5845))) b!7479851))

(assert (= (and b!7479217 ((_ is Union!19609) (regOne!39731 r1!5845))) b!7479852))

(declare-fun b!7479856 () Bool)

(declare-fun e!4461714 () Bool)

(declare-fun tp!2169415 () Bool)

(declare-fun tp!2169413 () Bool)

(assert (=> b!7479856 (= e!4461714 (and tp!2169415 tp!2169413))))

(assert (=> b!7479217 (= tp!2169300 e!4461714)))

(declare-fun b!7479854 () Bool)

(declare-fun tp!2169411 () Bool)

(declare-fun tp!2169414 () Bool)

(assert (=> b!7479854 (= e!4461714 (and tp!2169411 tp!2169414))))

(declare-fun b!7479855 () Bool)

(declare-fun tp!2169412 () Bool)

(assert (=> b!7479855 (= e!4461714 tp!2169412)))

(declare-fun b!7479853 () Bool)

(assert (=> b!7479853 (= e!4461714 tp_is_empty!49507)))

(assert (= (and b!7479217 ((_ is ElementMatch!19609) (regTwo!39731 r1!5845))) b!7479853))

(assert (= (and b!7479217 ((_ is Concat!28454) (regTwo!39731 r1!5845))) b!7479854))

(assert (= (and b!7479217 ((_ is Star!19609) (regTwo!39731 r1!5845))) b!7479855))

(assert (= (and b!7479217 ((_ is Union!19609) (regTwo!39731 r1!5845))) b!7479856))

(declare-fun b!7479860 () Bool)

(declare-fun e!4461715 () Bool)

(declare-fun tp!2169420 () Bool)

(declare-fun tp!2169418 () Bool)

(assert (=> b!7479860 (= e!4461715 (and tp!2169420 tp!2169418))))

(assert (=> b!7479212 (= tp!2169301 e!4461715)))

(declare-fun b!7479858 () Bool)

(declare-fun tp!2169416 () Bool)

(declare-fun tp!2169419 () Bool)

(assert (=> b!7479858 (= e!4461715 (and tp!2169416 tp!2169419))))

(declare-fun b!7479859 () Bool)

(declare-fun tp!2169417 () Bool)

(assert (=> b!7479859 (= e!4461715 tp!2169417)))

(declare-fun b!7479857 () Bool)

(assert (=> b!7479857 (= e!4461715 tp_is_empty!49507)))

(assert (= (and b!7479212 ((_ is ElementMatch!19609) (regOne!39730 rTail!78))) b!7479857))

(assert (= (and b!7479212 ((_ is Concat!28454) (regOne!39730 rTail!78))) b!7479858))

(assert (= (and b!7479212 ((_ is Star!19609) (regOne!39730 rTail!78))) b!7479859))

(assert (= (and b!7479212 ((_ is Union!19609) (regOne!39730 rTail!78))) b!7479860))

(declare-fun b!7479864 () Bool)

(declare-fun e!4461716 () Bool)

(declare-fun tp!2169425 () Bool)

(declare-fun tp!2169423 () Bool)

(assert (=> b!7479864 (= e!4461716 (and tp!2169425 tp!2169423))))

(assert (=> b!7479212 (= tp!2169296 e!4461716)))

(declare-fun b!7479862 () Bool)

(declare-fun tp!2169421 () Bool)

(declare-fun tp!2169424 () Bool)

(assert (=> b!7479862 (= e!4461716 (and tp!2169421 tp!2169424))))

(declare-fun b!7479863 () Bool)

(declare-fun tp!2169422 () Bool)

(assert (=> b!7479863 (= e!4461716 tp!2169422)))

(declare-fun b!7479861 () Bool)

(assert (=> b!7479861 (= e!4461716 tp_is_empty!49507)))

(assert (= (and b!7479212 ((_ is ElementMatch!19609) (regTwo!39730 rTail!78))) b!7479861))

(assert (= (and b!7479212 ((_ is Concat!28454) (regTwo!39730 rTail!78))) b!7479862))

(assert (= (and b!7479212 ((_ is Star!19609) (regTwo!39730 rTail!78))) b!7479863))

(assert (= (and b!7479212 ((_ is Union!19609) (regTwo!39730 rTail!78))) b!7479864))

(declare-fun b!7479868 () Bool)

(declare-fun e!4461717 () Bool)

(declare-fun tp!2169430 () Bool)

(declare-fun tp!2169428 () Bool)

(assert (=> b!7479868 (= e!4461717 (and tp!2169430 tp!2169428))))

(assert (=> b!7479222 (= tp!2169305 e!4461717)))

(declare-fun b!7479866 () Bool)

(declare-fun tp!2169426 () Bool)

(declare-fun tp!2169429 () Bool)

(assert (=> b!7479866 (= e!4461717 (and tp!2169426 tp!2169429))))

(declare-fun b!7479867 () Bool)

(declare-fun tp!2169427 () Bool)

(assert (=> b!7479867 (= e!4461717 tp!2169427)))

(declare-fun b!7479865 () Bool)

(assert (=> b!7479865 (= e!4461717 tp_is_empty!49507)))

(assert (= (and b!7479222 ((_ is ElementMatch!19609) (reg!19938 rTail!78))) b!7479865))

(assert (= (and b!7479222 ((_ is Concat!28454) (reg!19938 rTail!78))) b!7479866))

(assert (= (and b!7479222 ((_ is Star!19609) (reg!19938 rTail!78))) b!7479867))

(assert (= (and b!7479222 ((_ is Union!19609) (reg!19938 rTail!78))) b!7479868))

(declare-fun b!7479872 () Bool)

(declare-fun e!4461718 () Bool)

(declare-fun tp!2169435 () Bool)

(declare-fun tp!2169433 () Bool)

(assert (=> b!7479872 (= e!4461718 (and tp!2169435 tp!2169433))))

(assert (=> b!7479216 (= tp!2169307 e!4461718)))

(declare-fun b!7479870 () Bool)

(declare-fun tp!2169431 () Bool)

(declare-fun tp!2169434 () Bool)

(assert (=> b!7479870 (= e!4461718 (and tp!2169431 tp!2169434))))

(declare-fun b!7479871 () Bool)

(declare-fun tp!2169432 () Bool)

(assert (=> b!7479871 (= e!4461718 tp!2169432)))

(declare-fun b!7479869 () Bool)

(assert (=> b!7479869 (= e!4461718 tp_is_empty!49507)))

(assert (= (and b!7479216 ((_ is ElementMatch!19609) (regOne!39730 r1!5845))) b!7479869))

(assert (= (and b!7479216 ((_ is Concat!28454) (regOne!39730 r1!5845))) b!7479870))

(assert (= (and b!7479216 ((_ is Star!19609) (regOne!39730 r1!5845))) b!7479871))

(assert (= (and b!7479216 ((_ is Union!19609) (regOne!39730 r1!5845))) b!7479872))

(declare-fun b!7479876 () Bool)

(declare-fun e!4461719 () Bool)

(declare-fun tp!2169440 () Bool)

(declare-fun tp!2169438 () Bool)

(assert (=> b!7479876 (= e!4461719 (and tp!2169440 tp!2169438))))

(assert (=> b!7479216 (= tp!2169294 e!4461719)))

(declare-fun b!7479874 () Bool)

(declare-fun tp!2169436 () Bool)

(declare-fun tp!2169439 () Bool)

(assert (=> b!7479874 (= e!4461719 (and tp!2169436 tp!2169439))))

(declare-fun b!7479875 () Bool)

(declare-fun tp!2169437 () Bool)

(assert (=> b!7479875 (= e!4461719 tp!2169437)))

(declare-fun b!7479873 () Bool)

(assert (=> b!7479873 (= e!4461719 tp_is_empty!49507)))

(assert (= (and b!7479216 ((_ is ElementMatch!19609) (regTwo!39730 r1!5845))) b!7479873))

(assert (= (and b!7479216 ((_ is Concat!28454) (regTwo!39730 r1!5845))) b!7479874))

(assert (= (and b!7479216 ((_ is Star!19609) (regTwo!39730 r1!5845))) b!7479875))

(assert (= (and b!7479216 ((_ is Union!19609) (regTwo!39730 r1!5845))) b!7479876))

(declare-fun b!7479880 () Bool)

(declare-fun e!4461720 () Bool)

(declare-fun tp!2169445 () Bool)

(declare-fun tp!2169443 () Bool)

(assert (=> b!7479880 (= e!4461720 (and tp!2169445 tp!2169443))))

(assert (=> b!7479215 (= tp!2169304 e!4461720)))

(declare-fun b!7479878 () Bool)

(declare-fun tp!2169441 () Bool)

(declare-fun tp!2169444 () Bool)

(assert (=> b!7479878 (= e!4461720 (and tp!2169441 tp!2169444))))

(declare-fun b!7479879 () Bool)

(declare-fun tp!2169442 () Bool)

(assert (=> b!7479879 (= e!4461720 tp!2169442)))

(declare-fun b!7479877 () Bool)

(assert (=> b!7479877 (= e!4461720 tp_is_empty!49507)))

(assert (= (and b!7479215 ((_ is ElementMatch!19609) (regOne!39730 r2!5783))) b!7479877))

(assert (= (and b!7479215 ((_ is Concat!28454) (regOne!39730 r2!5783))) b!7479878))

(assert (= (and b!7479215 ((_ is Star!19609) (regOne!39730 r2!5783))) b!7479879))

(assert (= (and b!7479215 ((_ is Union!19609) (regOne!39730 r2!5783))) b!7479880))

(declare-fun b!7479884 () Bool)

(declare-fun e!4461721 () Bool)

(declare-fun tp!2169450 () Bool)

(declare-fun tp!2169448 () Bool)

(assert (=> b!7479884 (= e!4461721 (and tp!2169450 tp!2169448))))

(assert (=> b!7479215 (= tp!2169297 e!4461721)))

(declare-fun b!7479882 () Bool)

(declare-fun tp!2169446 () Bool)

(declare-fun tp!2169449 () Bool)

(assert (=> b!7479882 (= e!4461721 (and tp!2169446 tp!2169449))))

(declare-fun b!7479883 () Bool)

(declare-fun tp!2169447 () Bool)

(assert (=> b!7479883 (= e!4461721 tp!2169447)))

(declare-fun b!7479881 () Bool)

(assert (=> b!7479881 (= e!4461721 tp_is_empty!49507)))

(assert (= (and b!7479215 ((_ is ElementMatch!19609) (regTwo!39730 r2!5783))) b!7479881))

(assert (= (and b!7479215 ((_ is Concat!28454) (regTwo!39730 r2!5783))) b!7479882))

(assert (= (and b!7479215 ((_ is Star!19609) (regTwo!39730 r2!5783))) b!7479883))

(assert (= (and b!7479215 ((_ is Union!19609) (regTwo!39730 r2!5783))) b!7479884))

(declare-fun b!7479888 () Bool)

(declare-fun e!4461722 () Bool)

(declare-fun tp!2169455 () Bool)

(declare-fun tp!2169453 () Bool)

(assert (=> b!7479888 (= e!4461722 (and tp!2169455 tp!2169453))))

(assert (=> b!7479225 (= tp!2169293 e!4461722)))

(declare-fun b!7479886 () Bool)

(declare-fun tp!2169451 () Bool)

(declare-fun tp!2169454 () Bool)

(assert (=> b!7479886 (= e!4461722 (and tp!2169451 tp!2169454))))

(declare-fun b!7479887 () Bool)

(declare-fun tp!2169452 () Bool)

(assert (=> b!7479887 (= e!4461722 tp!2169452)))

(declare-fun b!7479885 () Bool)

(assert (=> b!7479885 (= e!4461722 tp_is_empty!49507)))

(assert (= (and b!7479225 ((_ is ElementMatch!19609) (reg!19938 r1!5845))) b!7479885))

(assert (= (and b!7479225 ((_ is Concat!28454) (reg!19938 r1!5845))) b!7479886))

(assert (= (and b!7479225 ((_ is Star!19609) (reg!19938 r1!5845))) b!7479887))

(assert (= (and b!7479225 ((_ is Union!19609) (reg!19938 r1!5845))) b!7479888))

(declare-fun b!7479892 () Bool)

(declare-fun e!4461723 () Bool)

(declare-fun tp!2169460 () Bool)

(declare-fun tp!2169458 () Bool)

(assert (=> b!7479892 (= e!4461723 (and tp!2169460 tp!2169458))))

(assert (=> b!7479209 (= tp!2169303 e!4461723)))

(declare-fun b!7479890 () Bool)

(declare-fun tp!2169456 () Bool)

(declare-fun tp!2169459 () Bool)

(assert (=> b!7479890 (= e!4461723 (and tp!2169456 tp!2169459))))

(declare-fun b!7479891 () Bool)

(declare-fun tp!2169457 () Bool)

(assert (=> b!7479891 (= e!4461723 tp!2169457)))

(declare-fun b!7479889 () Bool)

(assert (=> b!7479889 (= e!4461723 tp_is_empty!49507)))

(assert (= (and b!7479209 ((_ is ElementMatch!19609) (regOne!39731 rTail!78))) b!7479889))

(assert (= (and b!7479209 ((_ is Concat!28454) (regOne!39731 rTail!78))) b!7479890))

(assert (= (and b!7479209 ((_ is Star!19609) (regOne!39731 rTail!78))) b!7479891))

(assert (= (and b!7479209 ((_ is Union!19609) (regOne!39731 rTail!78))) b!7479892))

(declare-fun b!7479896 () Bool)

(declare-fun e!4461724 () Bool)

(declare-fun tp!2169465 () Bool)

(declare-fun tp!2169463 () Bool)

(assert (=> b!7479896 (= e!4461724 (and tp!2169465 tp!2169463))))

(assert (=> b!7479209 (= tp!2169295 e!4461724)))

(declare-fun b!7479894 () Bool)

(declare-fun tp!2169461 () Bool)

(declare-fun tp!2169464 () Bool)

(assert (=> b!7479894 (= e!4461724 (and tp!2169461 tp!2169464))))

(declare-fun b!7479895 () Bool)

(declare-fun tp!2169462 () Bool)

(assert (=> b!7479895 (= e!4461724 tp!2169462)))

(declare-fun b!7479893 () Bool)

(assert (=> b!7479893 (= e!4461724 tp_is_empty!49507)))

(assert (= (and b!7479209 ((_ is ElementMatch!19609) (regTwo!39731 rTail!78))) b!7479893))

(assert (= (and b!7479209 ((_ is Concat!28454) (regTwo!39731 rTail!78))) b!7479894))

(assert (= (and b!7479209 ((_ is Star!19609) (regTwo!39731 rTail!78))) b!7479895))

(assert (= (and b!7479209 ((_ is Union!19609) (regTwo!39731 rTail!78))) b!7479896))

(declare-fun b!7479900 () Bool)

(declare-fun e!4461725 () Bool)

(declare-fun tp!2169470 () Bool)

(declare-fun tp!2169468 () Bool)

(assert (=> b!7479900 (= e!4461725 (and tp!2169470 tp!2169468))))

(assert (=> b!7479220 (= tp!2169306 e!4461725)))

(declare-fun b!7479898 () Bool)

(declare-fun tp!2169466 () Bool)

(declare-fun tp!2169469 () Bool)

(assert (=> b!7479898 (= e!4461725 (and tp!2169466 tp!2169469))))

(declare-fun b!7479899 () Bool)

(declare-fun tp!2169467 () Bool)

(assert (=> b!7479899 (= e!4461725 tp!2169467)))

(declare-fun b!7479897 () Bool)

(assert (=> b!7479897 (= e!4461725 tp_is_empty!49507)))

(assert (= (and b!7479220 ((_ is ElementMatch!19609) (reg!19938 r2!5783))) b!7479897))

(assert (= (and b!7479220 ((_ is Concat!28454) (reg!19938 r2!5783))) b!7479898))

(assert (= (and b!7479220 ((_ is Star!19609) (reg!19938 r2!5783))) b!7479899))

(assert (= (and b!7479220 ((_ is Union!19609) (reg!19938 r2!5783))) b!7479900))

(declare-fun b!7479905 () Bool)

(declare-fun e!4461728 () Bool)

(declare-fun tp!2169473 () Bool)

(assert (=> b!7479905 (= e!4461728 (and tp_is_empty!49507 tp!2169473))))

(assert (=> b!7479214 (= tp!2169302 e!4461728)))

(assert (= (and b!7479214 ((_ is Cons!72201) (t!386894 s!13591))) b!7479905))

(declare-fun b!7479909 () Bool)

(declare-fun e!4461729 () Bool)

(declare-fun tp!2169478 () Bool)

(declare-fun tp!2169476 () Bool)

(assert (=> b!7479909 (= e!4461729 (and tp!2169478 tp!2169476))))

(assert (=> b!7479213 (= tp!2169298 e!4461729)))

(declare-fun b!7479907 () Bool)

(declare-fun tp!2169474 () Bool)

(declare-fun tp!2169477 () Bool)

(assert (=> b!7479907 (= e!4461729 (and tp!2169474 tp!2169477))))

(declare-fun b!7479908 () Bool)

(declare-fun tp!2169475 () Bool)

(assert (=> b!7479908 (= e!4461729 tp!2169475)))

(declare-fun b!7479906 () Bool)

(assert (=> b!7479906 (= e!4461729 tp_is_empty!49507)))

(assert (= (and b!7479213 ((_ is ElementMatch!19609) (regOne!39731 r2!5783))) b!7479906))

(assert (= (and b!7479213 ((_ is Concat!28454) (regOne!39731 r2!5783))) b!7479907))

(assert (= (and b!7479213 ((_ is Star!19609) (regOne!39731 r2!5783))) b!7479908))

(assert (= (and b!7479213 ((_ is Union!19609) (regOne!39731 r2!5783))) b!7479909))

(declare-fun b!7479913 () Bool)

(declare-fun e!4461730 () Bool)

(declare-fun tp!2169483 () Bool)

(declare-fun tp!2169481 () Bool)

(assert (=> b!7479913 (= e!4461730 (and tp!2169483 tp!2169481))))

(assert (=> b!7479213 (= tp!2169292 e!4461730)))

(declare-fun b!7479911 () Bool)

(declare-fun tp!2169479 () Bool)

(declare-fun tp!2169482 () Bool)

(assert (=> b!7479911 (= e!4461730 (and tp!2169479 tp!2169482))))

(declare-fun b!7479912 () Bool)

(declare-fun tp!2169480 () Bool)

(assert (=> b!7479912 (= e!4461730 tp!2169480)))

(declare-fun b!7479910 () Bool)

(assert (=> b!7479910 (= e!4461730 tp_is_empty!49507)))

(assert (= (and b!7479213 ((_ is ElementMatch!19609) (regTwo!39731 r2!5783))) b!7479910))

(assert (= (and b!7479213 ((_ is Concat!28454) (regTwo!39731 r2!5783))) b!7479911))

(assert (= (and b!7479213 ((_ is Star!19609) (regTwo!39731 r2!5783))) b!7479912))

(assert (= (and b!7479213 ((_ is Union!19609) (regTwo!39731 r2!5783))) b!7479913))

(check-sat (not b!7479894) (not b!7479880) (not b!7479866) (not b!7479533) (not bm!686691) (not b!7479535) (not b!7479346) (not b!7479907) (not b!7479890) (not b!7479859) (not b!7479892) (not bm!686692) (not b!7479829) (not d!2299972) (not b!7479887) (not b!7479860) (not b!7479343) (not b!7479691) (not b!7479900) (not b!7479831) (not b!7479804) (not b!7479694) (not b!7479909) (not b!7479701) (not b!7479912) (not bm!686673) (not b!7479868) (not d!2299958) (not b!7479763) (not d!2299960) (not b!7479342) (not b!7479538) (not b!7479781) (not bm!686685) (not b!7479882) (not b!7479879) (not bm!686672) (not b!7479762) (not d!2299936) (not b!7479755) (not b!7479349) (not d!2299976) (not b!7479744) (not d!2299954) tp_is_empty!49507 (not b!7479852) (not b!7479911) (not bm!686681) (not b!7479850) (not b!7479798) (not b!7479825) (not b!7479344) (not b!7479771) (not b!7479545) (not d!2299952) (not b!7479870) (not bm!686680) (not bm!686633) (not b!7479884) (not b!7479913) (not b!7479862) (not b!7479689) (not b!7479827) (not d!2299888) (not b!7479739) (not b!7479863) (not bm!686689) (not b!7479851) (not bm!686665) (not d!2299950) (not d!2299944) (not b!7479871) (not b!7479896) (not b!7479793) (not b!7479874) (not b!7479875) (not b!7479883) (not d!2299974) (not bm!686682) (not bm!686690) (not b!7479895) (not b!7479898) (not d!2299934) (not b!7479802) (not b!7479750) (not b!7479759) (not b!7479681) (not b!7479830) (not bm!686632) (not b!7479908) (not d!2299920) (not b!7479778) (not d!2299870) (not b!7479905) (not b!7479769) (not d!2299968) (not b!7479775) (not b!7479899) (not b!7479348) (not b!7479818) (not bm!686683) (not b!7479695) (not b!7479854) (not b!7479858) (not b!7479888) (not b!7479800) (not d!2299962) (not b!7479837) (not b!7479757) (not b!7479891) (not b!7479761) (not d!2299946) (not b!7479806) (not bm!686693) (not b!7479855) (not b!7479805) (not b!7479539) (not d!2299940) (not b!7479773) (not b!7479772) (not b!7479867) (not b!7479876) (not b!7479856) (not b!7479777) (not d!2299880) (not b!7479823) (not b!7479864) (not bm!686686) (not bm!686688) (not b!7479812) (not b!7479693) (not b!7479537) (not d!2299956) (not b!7479878) (not b!7479872) (not b!7479886) (not bm!686675) (not d!2299924) (not bm!686684) (not b!7479257))
(check-sat)
