; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285960 () Bool)

(assert start!285960)

(declare-fun b!2946987 () Bool)

(declare-fun e!1856490 () Bool)

(declare-fun tp_is_empty!15837 () Bool)

(assert (=> b!2946987 (= e!1856490 tp_is_empty!15837)))

(declare-fun b!2946988 () Bool)

(declare-fun e!1856489 () Bool)

(declare-fun tp!942524 () Bool)

(assert (=> b!2946988 (= e!1856489 (and tp_is_empty!15837 tp!942524))))

(declare-fun b!2946989 () Bool)

(declare-fun e!1856491 () Bool)

(declare-fun e!1856488 () Bool)

(assert (=> b!2946989 (= e!1856491 e!1856488)))

(declare-fun res!1216140 () Bool)

(assert (=> b!2946989 (=> res!1216140 e!1856488)))

(declare-datatypes ((C!18460 0))(
  ( (C!18461 (val!11266 Int)) )
))
(declare-datatypes ((Regex!9137 0))(
  ( (ElementMatch!9137 (c!482145 C!18460)) (Concat!14458 (regOne!18786 Regex!9137) (regTwo!18786 Regex!9137)) (EmptyExpr!9137) (Star!9137 (reg!9466 Regex!9137)) (EmptyLang!9137) (Union!9137 (regOne!18787 Regex!9137) (regTwo!18787 Regex!9137)) )
))
(declare-fun lt!1031363 () Regex!9137)

(declare-fun isEmptyLang!259 (Regex!9137) Bool)

(assert (=> b!2946989 (= res!1216140 (isEmptyLang!259 lt!1031363))))

(declare-fun lt!1031361 () Regex!9137)

(declare-fun r!17423 () Regex!9137)

(declare-fun simplify!142 (Regex!9137) Regex!9137)

(assert (=> b!2946989 (= lt!1031361 (simplify!142 (regTwo!18786 r!17423)))))

(assert (=> b!2946989 (= lt!1031363 (simplify!142 (regOne!18786 r!17423)))))

(declare-fun b!2946991 () Bool)

(declare-fun tp!942521 () Bool)

(declare-fun tp!942522 () Bool)

(assert (=> b!2946991 (= e!1856490 (and tp!942521 tp!942522))))

(declare-fun b!2946992 () Bool)

(declare-fun res!1216141 () Bool)

(assert (=> b!2946992 (=> res!1216141 e!1856491)))

(declare-datatypes ((List!35002 0))(
  ( (Nil!34878) (Cons!34878 (h!40298 C!18460) (t!234067 List!35002)) )
))
(declare-fun s!11993 () List!35002)

(declare-fun isEmpty!19139 (List!35002) Bool)

(assert (=> b!2946992 (= res!1216141 (isEmpty!19139 s!11993))))

(declare-fun b!2946993 () Bool)

(declare-fun validRegex!3870 (Regex!9137) Bool)

(assert (=> b!2946993 (= e!1856488 (validRegex!3870 (regOne!18786 r!17423)))))

(declare-fun b!2946994 () Bool)

(declare-fun e!1856487 () Bool)

(assert (=> b!2946994 (= e!1856487 (not e!1856491))))

(declare-fun res!1216137 () Bool)

(assert (=> b!2946994 (=> res!1216137 e!1856491)))

(declare-fun lt!1031360 () Bool)

(get-info :version)

(assert (=> b!2946994 (= res!1216137 (or lt!1031360 (not ((_ is Concat!14458) r!17423))))))

(declare-fun matchRSpec!1274 (Regex!9137 List!35002) Bool)

(assert (=> b!2946994 (= lt!1031360 (matchRSpec!1274 r!17423 s!11993))))

(declare-fun matchR!4019 (Regex!9137 List!35002) Bool)

(assert (=> b!2946994 (= lt!1031360 (matchR!4019 r!17423 s!11993))))

(declare-datatypes ((Unit!48653 0))(
  ( (Unit!48654) )
))
(declare-fun lt!1031362 () Unit!48653)

(declare-fun mainMatchTheorem!1274 (Regex!9137 List!35002) Unit!48653)

(assert (=> b!2946994 (= lt!1031362 (mainMatchTheorem!1274 r!17423 s!11993))))

(declare-fun b!2946995 () Bool)

(declare-fun res!1216139 () Bool)

(assert (=> b!2946995 (=> res!1216139 e!1856488)))

(declare-fun isEmptyExpr!340 (Regex!9137) Bool)

(assert (=> b!2946995 (= res!1216139 (isEmptyExpr!340 lt!1031361))))

(declare-fun b!2946996 () Bool)

(declare-fun res!1216136 () Bool)

(assert (=> b!2946996 (=> res!1216136 e!1856488)))

(assert (=> b!2946996 (= res!1216136 (isEmptyExpr!340 lt!1031363))))

(declare-fun b!2946997 () Bool)

(declare-fun res!1216138 () Bool)

(assert (=> b!2946997 (=> res!1216138 e!1856488)))

(assert (=> b!2946997 (= res!1216138 (isEmptyLang!259 lt!1031361))))

(declare-fun b!2946998 () Bool)

(declare-fun tp!942523 () Bool)

(declare-fun tp!942520 () Bool)

(assert (=> b!2946998 (= e!1856490 (and tp!942523 tp!942520))))

(declare-fun b!2946999 () Bool)

(declare-fun res!1216142 () Bool)

(assert (=> b!2946999 (=> res!1216142 e!1856488)))

(assert (=> b!2946999 (= res!1216142 (not (matchR!4019 (Concat!14458 lt!1031363 lt!1031361) s!11993)))))

(declare-fun res!1216135 () Bool)

(assert (=> start!285960 (=> (not res!1216135) (not e!1856487))))

(assert (=> start!285960 (= res!1216135 (validRegex!3870 r!17423))))

(assert (=> start!285960 e!1856487))

(assert (=> start!285960 e!1856490))

(assert (=> start!285960 e!1856489))

(declare-fun b!2946990 () Bool)

(declare-fun tp!942525 () Bool)

(assert (=> b!2946990 (= e!1856490 tp!942525)))

(assert (= (and start!285960 res!1216135) b!2946994))

(assert (= (and b!2946994 (not res!1216137)) b!2946992))

(assert (= (and b!2946992 (not res!1216141)) b!2946989))

(assert (= (and b!2946989 (not res!1216140)) b!2946997))

(assert (= (and b!2946997 (not res!1216138)) b!2946996))

(assert (= (and b!2946996 (not res!1216136)) b!2946995))

(assert (= (and b!2946995 (not res!1216139)) b!2946999))

(assert (= (and b!2946999 (not res!1216142)) b!2946993))

(assert (= (and start!285960 ((_ is ElementMatch!9137) r!17423)) b!2946987))

(assert (= (and start!285960 ((_ is Concat!14458) r!17423)) b!2946991))

(assert (= (and start!285960 ((_ is Star!9137) r!17423)) b!2946990))

(assert (= (and start!285960 ((_ is Union!9137) r!17423)) b!2946998))

(assert (= (and start!285960 ((_ is Cons!34878) s!11993)) b!2946988))

(declare-fun m!3328131 () Bool)

(assert (=> b!2946996 m!3328131))

(declare-fun m!3328133 () Bool)

(assert (=> b!2946992 m!3328133))

(declare-fun m!3328135 () Bool)

(assert (=> b!2946995 m!3328135))

(declare-fun m!3328137 () Bool)

(assert (=> b!2946994 m!3328137))

(declare-fun m!3328139 () Bool)

(assert (=> b!2946994 m!3328139))

(declare-fun m!3328141 () Bool)

(assert (=> b!2946994 m!3328141))

(declare-fun m!3328143 () Bool)

(assert (=> b!2946997 m!3328143))

(declare-fun m!3328145 () Bool)

(assert (=> start!285960 m!3328145))

(declare-fun m!3328147 () Bool)

(assert (=> b!2946989 m!3328147))

(declare-fun m!3328149 () Bool)

(assert (=> b!2946989 m!3328149))

(declare-fun m!3328151 () Bool)

(assert (=> b!2946989 m!3328151))

(declare-fun m!3328153 () Bool)

(assert (=> b!2946993 m!3328153))

(declare-fun m!3328155 () Bool)

(assert (=> b!2946999 m!3328155))

(check-sat (not b!2946991) (not b!2946998) (not start!285960) tp_is_empty!15837 (not b!2946988) (not b!2946994) (not b!2946989) (not b!2946996) (not b!2946992) (not b!2946990) (not b!2946995) (not b!2946997) (not b!2946993) (not b!2946999))
(check-sat)
(get-model)

(declare-fun b!2947045 () Bool)

(declare-fun res!1216169 () Bool)

(declare-fun e!1856531 () Bool)

(assert (=> b!2947045 (=> (not res!1216169) (not e!1856531))))

(declare-fun call!194485 () Bool)

(assert (=> b!2947045 (= res!1216169 call!194485)))

(declare-fun e!1856528 () Bool)

(assert (=> b!2947045 (= e!1856528 e!1856531)))

(declare-fun b!2947046 () Bool)

(declare-fun e!1856527 () Bool)

(declare-fun e!1856530 () Bool)

(assert (=> b!2947046 (= e!1856527 e!1856530)))

(declare-fun res!1216168 () Bool)

(assert (=> b!2947046 (=> (not res!1216168) (not e!1856530))))

(declare-fun call!194486 () Bool)

(assert (=> b!2947046 (= res!1216168 call!194486)))

(declare-fun bm!194479 () Bool)

(declare-fun c!482156 () Bool)

(assert (=> bm!194479 (= call!194486 (validRegex!3870 (ite c!482156 (regTwo!18787 (regOne!18786 r!17423)) (regOne!18786 (regOne!18786 r!17423)))))))

(declare-fun b!2947047 () Bool)

(assert (=> b!2947047 (= e!1856530 call!194485)))

(declare-fun b!2947048 () Bool)

(assert (=> b!2947048 (= e!1856531 call!194486)))

(declare-fun d!840654 () Bool)

(declare-fun res!1216170 () Bool)

(declare-fun e!1856529 () Bool)

(assert (=> d!840654 (=> res!1216170 e!1856529)))

(assert (=> d!840654 (= res!1216170 ((_ is ElementMatch!9137) (regOne!18786 r!17423)))))

(assert (=> d!840654 (= (validRegex!3870 (regOne!18786 r!17423)) e!1856529)))

(declare-fun b!2947049 () Bool)

(declare-fun e!1856532 () Bool)

(assert (=> b!2947049 (= e!1856529 e!1856532)))

(declare-fun c!482157 () Bool)

(assert (=> b!2947049 (= c!482157 ((_ is Star!9137) (regOne!18786 r!17423)))))

(declare-fun bm!194480 () Bool)

(declare-fun call!194484 () Bool)

(assert (=> bm!194480 (= call!194484 (validRegex!3870 (ite c!482157 (reg!9466 (regOne!18786 r!17423)) (ite c!482156 (regOne!18787 (regOne!18786 r!17423)) (regTwo!18786 (regOne!18786 r!17423))))))))

(declare-fun bm!194481 () Bool)

(assert (=> bm!194481 (= call!194485 call!194484)))

(declare-fun b!2947050 () Bool)

(declare-fun e!1856533 () Bool)

(assert (=> b!2947050 (= e!1856532 e!1856533)))

(declare-fun res!1216172 () Bool)

(declare-fun nullable!2899 (Regex!9137) Bool)

(assert (=> b!2947050 (= res!1216172 (not (nullable!2899 (reg!9466 (regOne!18786 r!17423)))))))

(assert (=> b!2947050 (=> (not res!1216172) (not e!1856533))))

(declare-fun b!2947051 () Bool)

(assert (=> b!2947051 (= e!1856532 e!1856528)))

(assert (=> b!2947051 (= c!482156 ((_ is Union!9137) (regOne!18786 r!17423)))))

(declare-fun b!2947052 () Bool)

(assert (=> b!2947052 (= e!1856533 call!194484)))

(declare-fun b!2947053 () Bool)

(declare-fun res!1216171 () Bool)

(assert (=> b!2947053 (=> res!1216171 e!1856527)))

(assert (=> b!2947053 (= res!1216171 (not ((_ is Concat!14458) (regOne!18786 r!17423))))))

(assert (=> b!2947053 (= e!1856528 e!1856527)))

(assert (= (and d!840654 (not res!1216170)) b!2947049))

(assert (= (and b!2947049 c!482157) b!2947050))

(assert (= (and b!2947049 (not c!482157)) b!2947051))

(assert (= (and b!2947050 res!1216172) b!2947052))

(assert (= (and b!2947051 c!482156) b!2947045))

(assert (= (and b!2947051 (not c!482156)) b!2947053))

(assert (= (and b!2947045 res!1216169) b!2947048))

(assert (= (and b!2947053 (not res!1216171)) b!2947046))

(assert (= (and b!2947046 res!1216168) b!2947047))

(assert (= (or b!2947045 b!2947047) bm!194481))

(assert (= (or b!2947048 b!2947046) bm!194479))

(assert (= (or b!2947052 bm!194481) bm!194480))

(declare-fun m!3328163 () Bool)

(assert (=> bm!194479 m!3328163))

(declare-fun m!3328165 () Bool)

(assert (=> bm!194480 m!3328165))

(declare-fun m!3328167 () Bool)

(assert (=> b!2947050 m!3328167))

(assert (=> b!2946993 d!840654))

(declare-fun d!840662 () Bool)

(assert (=> d!840662 (= (isEmptyLang!259 lt!1031361) ((_ is EmptyLang!9137) lt!1031361))))

(assert (=> b!2946997 d!840662))

(declare-fun d!840664 () Bool)

(assert (=> d!840664 (= (isEmpty!19139 s!11993) ((_ is Nil!34878) s!11993))))

(assert (=> b!2946992 d!840664))

(declare-fun d!840666 () Bool)

(assert (=> d!840666 (= (isEmptyExpr!340 lt!1031361) ((_ is EmptyExpr!9137) lt!1031361))))

(assert (=> b!2946995 d!840666))

(declare-fun b!2947058 () Bool)

(declare-fun res!1216174 () Bool)

(declare-fun e!1856540 () Bool)

(assert (=> b!2947058 (=> (not res!1216174) (not e!1856540))))

(declare-fun call!194488 () Bool)

(assert (=> b!2947058 (= res!1216174 call!194488)))

(declare-fun e!1856537 () Bool)

(assert (=> b!2947058 (= e!1856537 e!1856540)))

(declare-fun b!2947059 () Bool)

(declare-fun e!1856536 () Bool)

(declare-fun e!1856539 () Bool)

(assert (=> b!2947059 (= e!1856536 e!1856539)))

(declare-fun res!1216173 () Bool)

(assert (=> b!2947059 (=> (not res!1216173) (not e!1856539))))

(declare-fun call!194489 () Bool)

(assert (=> b!2947059 (= res!1216173 call!194489)))

(declare-fun bm!194482 () Bool)

(declare-fun c!482160 () Bool)

(assert (=> bm!194482 (= call!194489 (validRegex!3870 (ite c!482160 (regTwo!18787 r!17423) (regOne!18786 r!17423))))))

(declare-fun b!2947060 () Bool)

(assert (=> b!2947060 (= e!1856539 call!194488)))

(declare-fun b!2947061 () Bool)

(assert (=> b!2947061 (= e!1856540 call!194489)))

(declare-fun d!840668 () Bool)

(declare-fun res!1216175 () Bool)

(declare-fun e!1856538 () Bool)

(assert (=> d!840668 (=> res!1216175 e!1856538)))

(assert (=> d!840668 (= res!1216175 ((_ is ElementMatch!9137) r!17423))))

(assert (=> d!840668 (= (validRegex!3870 r!17423) e!1856538)))

(declare-fun b!2947062 () Bool)

(declare-fun e!1856541 () Bool)

(assert (=> b!2947062 (= e!1856538 e!1856541)))

(declare-fun c!482161 () Bool)

(assert (=> b!2947062 (= c!482161 ((_ is Star!9137) r!17423))))

(declare-fun call!194487 () Bool)

(declare-fun bm!194483 () Bool)

(assert (=> bm!194483 (= call!194487 (validRegex!3870 (ite c!482161 (reg!9466 r!17423) (ite c!482160 (regOne!18787 r!17423) (regTwo!18786 r!17423)))))))

(declare-fun bm!194484 () Bool)

(assert (=> bm!194484 (= call!194488 call!194487)))

(declare-fun b!2947063 () Bool)

(declare-fun e!1856542 () Bool)

(assert (=> b!2947063 (= e!1856541 e!1856542)))

(declare-fun res!1216177 () Bool)

(assert (=> b!2947063 (= res!1216177 (not (nullable!2899 (reg!9466 r!17423))))))

(assert (=> b!2947063 (=> (not res!1216177) (not e!1856542))))

(declare-fun b!2947064 () Bool)

(assert (=> b!2947064 (= e!1856541 e!1856537)))

(assert (=> b!2947064 (= c!482160 ((_ is Union!9137) r!17423))))

(declare-fun b!2947065 () Bool)

(assert (=> b!2947065 (= e!1856542 call!194487)))

(declare-fun b!2947066 () Bool)

(declare-fun res!1216176 () Bool)

(assert (=> b!2947066 (=> res!1216176 e!1856536)))

(assert (=> b!2947066 (= res!1216176 (not ((_ is Concat!14458) r!17423)))))

(assert (=> b!2947066 (= e!1856537 e!1856536)))

(assert (= (and d!840668 (not res!1216175)) b!2947062))

(assert (= (and b!2947062 c!482161) b!2947063))

(assert (= (and b!2947062 (not c!482161)) b!2947064))

(assert (= (and b!2947063 res!1216177) b!2947065))

(assert (= (and b!2947064 c!482160) b!2947058))

(assert (= (and b!2947064 (not c!482160)) b!2947066))

(assert (= (and b!2947058 res!1216174) b!2947061))

(assert (= (and b!2947066 (not res!1216176)) b!2947059))

(assert (= (and b!2947059 res!1216173) b!2947060))

(assert (= (or b!2947058 b!2947060) bm!194484))

(assert (= (or b!2947061 b!2947059) bm!194482))

(assert (= (or b!2947065 bm!194484) bm!194483))

(declare-fun m!3328169 () Bool)

(assert (=> bm!194482 m!3328169))

(declare-fun m!3328171 () Bool)

(assert (=> bm!194483 m!3328171))

(declare-fun m!3328173 () Bool)

(assert (=> b!2947063 m!3328173))

(assert (=> start!285960 d!840668))

(declare-fun d!840670 () Bool)

(assert (=> d!840670 (= (isEmptyExpr!340 lt!1031363) ((_ is EmptyExpr!9137) lt!1031363))))

(assert (=> b!2946996 d!840670))

(declare-fun bm!194493 () Bool)

(declare-fun call!194498 () Bool)

(assert (=> bm!194493 (= call!194498 (isEmpty!19139 s!11993))))

(declare-fun b!2947164 () Bool)

(declare-fun res!1216235 () Bool)

(declare-fun e!1856597 () Bool)

(assert (=> b!2947164 (=> (not res!1216235) (not e!1856597))))

(declare-fun tail!4787 (List!35002) List!35002)

(assert (=> b!2947164 (= res!1216235 (isEmpty!19139 (tail!4787 s!11993)))))

(declare-fun e!1856601 () Bool)

(declare-fun b!2947166 () Bool)

(declare-fun derivativeStep!2502 (Regex!9137 C!18460) Regex!9137)

(declare-fun head!6561 (List!35002) C!18460)

(assert (=> b!2947166 (= e!1856601 (matchR!4019 (derivativeStep!2502 (Concat!14458 lt!1031363 lt!1031361) (head!6561 s!11993)) (tail!4787 s!11993)))))

(declare-fun b!2947167 () Bool)

(assert (=> b!2947167 (= e!1856597 (= (head!6561 s!11993) (c!482145 (Concat!14458 lt!1031363 lt!1031361))))))

(declare-fun b!2947168 () Bool)

(assert (=> b!2947168 (= e!1856601 (nullable!2899 (Concat!14458 lt!1031363 lt!1031361)))))

(declare-fun b!2947169 () Bool)

(declare-fun e!1856599 () Bool)

(declare-fun e!1856600 () Bool)

(assert (=> b!2947169 (= e!1856599 e!1856600)))

(declare-fun res!1216233 () Bool)

(assert (=> b!2947169 (=> res!1216233 e!1856600)))

(assert (=> b!2947169 (= res!1216233 call!194498)))

(declare-fun b!2947170 () Bool)

(declare-fun e!1856602 () Bool)

(declare-fun e!1856598 () Bool)

(assert (=> b!2947170 (= e!1856602 e!1856598)))

(declare-fun c!482187 () Bool)

(assert (=> b!2947170 (= c!482187 ((_ is EmptyLang!9137) (Concat!14458 lt!1031363 lt!1031361)))))

(declare-fun b!2947171 () Bool)

(declare-fun res!1216231 () Bool)

(declare-fun e!1856603 () Bool)

(assert (=> b!2947171 (=> res!1216231 e!1856603)))

(assert (=> b!2947171 (= res!1216231 (not ((_ is ElementMatch!9137) (Concat!14458 lt!1031363 lt!1031361))))))

(assert (=> b!2947171 (= e!1856598 e!1856603)))

(declare-fun b!2947172 () Bool)

(declare-fun lt!1031369 () Bool)

(assert (=> b!2947172 (= e!1856602 (= lt!1031369 call!194498))))

(declare-fun b!2947173 () Bool)

(assert (=> b!2947173 (= e!1856598 (not lt!1031369))))

(declare-fun b!2947174 () Bool)

(declare-fun res!1216234 () Bool)

(assert (=> b!2947174 (=> (not res!1216234) (not e!1856597))))

(assert (=> b!2947174 (= res!1216234 (not call!194498))))

(declare-fun b!2947175 () Bool)

(assert (=> b!2947175 (= e!1856600 (not (= (head!6561 s!11993) (c!482145 (Concat!14458 lt!1031363 lt!1031361)))))))

(declare-fun b!2947165 () Bool)

(declare-fun res!1216232 () Bool)

(assert (=> b!2947165 (=> res!1216232 e!1856603)))

(assert (=> b!2947165 (= res!1216232 e!1856597)))

(declare-fun res!1216230 () Bool)

(assert (=> b!2947165 (=> (not res!1216230) (not e!1856597))))

(assert (=> b!2947165 (= res!1216230 lt!1031369)))

(declare-fun d!840672 () Bool)

(assert (=> d!840672 e!1856602))

(declare-fun c!482186 () Bool)

(assert (=> d!840672 (= c!482186 ((_ is EmptyExpr!9137) (Concat!14458 lt!1031363 lt!1031361)))))

(assert (=> d!840672 (= lt!1031369 e!1856601)))

(declare-fun c!482185 () Bool)

(assert (=> d!840672 (= c!482185 (isEmpty!19139 s!11993))))

(assert (=> d!840672 (validRegex!3870 (Concat!14458 lt!1031363 lt!1031361))))

(assert (=> d!840672 (= (matchR!4019 (Concat!14458 lt!1031363 lt!1031361) s!11993) lt!1031369)))

(declare-fun b!2947176 () Bool)

(declare-fun res!1216236 () Bool)

(assert (=> b!2947176 (=> res!1216236 e!1856600)))

(assert (=> b!2947176 (= res!1216236 (not (isEmpty!19139 (tail!4787 s!11993))))))

(declare-fun b!2947177 () Bool)

(assert (=> b!2947177 (= e!1856603 e!1856599)))

(declare-fun res!1216229 () Bool)

(assert (=> b!2947177 (=> (not res!1216229) (not e!1856599))))

(assert (=> b!2947177 (= res!1216229 (not lt!1031369))))

(assert (= (and d!840672 c!482185) b!2947168))

(assert (= (and d!840672 (not c!482185)) b!2947166))

(assert (= (and d!840672 c!482186) b!2947172))

(assert (= (and d!840672 (not c!482186)) b!2947170))

(assert (= (and b!2947170 c!482187) b!2947173))

(assert (= (and b!2947170 (not c!482187)) b!2947171))

(assert (= (and b!2947171 (not res!1216231)) b!2947165))

(assert (= (and b!2947165 res!1216230) b!2947174))

(assert (= (and b!2947174 res!1216234) b!2947164))

(assert (= (and b!2947164 res!1216235) b!2947167))

(assert (= (and b!2947165 (not res!1216232)) b!2947177))

(assert (= (and b!2947177 res!1216229) b!2947169))

(assert (= (and b!2947169 (not res!1216233)) b!2947176))

(assert (= (and b!2947176 (not res!1216236)) b!2947175))

(assert (= (or b!2947172 b!2947169 b!2947174) bm!194493))

(declare-fun m!3328195 () Bool)

(assert (=> b!2947168 m!3328195))

(declare-fun m!3328197 () Bool)

(assert (=> b!2947175 m!3328197))

(assert (=> b!2947166 m!3328197))

(assert (=> b!2947166 m!3328197))

(declare-fun m!3328199 () Bool)

(assert (=> b!2947166 m!3328199))

(declare-fun m!3328201 () Bool)

(assert (=> b!2947166 m!3328201))

(assert (=> b!2947166 m!3328199))

(assert (=> b!2947166 m!3328201))

(declare-fun m!3328203 () Bool)

(assert (=> b!2947166 m!3328203))

(assert (=> d!840672 m!3328133))

(declare-fun m!3328205 () Bool)

(assert (=> d!840672 m!3328205))

(assert (=> b!2947176 m!3328201))

(assert (=> b!2947176 m!3328201))

(declare-fun m!3328207 () Bool)

(assert (=> b!2947176 m!3328207))

(assert (=> b!2947167 m!3328197))

(assert (=> b!2947164 m!3328201))

(assert (=> b!2947164 m!3328201))

(assert (=> b!2947164 m!3328207))

(assert (=> bm!194493 m!3328133))

(assert (=> b!2946999 d!840672))

(declare-fun b!2947389 () Bool)

(assert (=> b!2947389 true))

(assert (=> b!2947389 true))

(declare-fun bs!525593 () Bool)

(declare-fun b!2947388 () Bool)

(assert (= bs!525593 (and b!2947388 b!2947389)))

(declare-fun lambda!109652 () Int)

(declare-fun lambda!109651 () Int)

(assert (=> bs!525593 (not (= lambda!109652 lambda!109651))))

(assert (=> b!2947388 true))

(assert (=> b!2947388 true))

(declare-fun b!2947384 () Bool)

(declare-fun e!1856707 () Bool)

(assert (=> b!2947384 (= e!1856707 (matchRSpec!1274 (regTwo!18787 r!17423) s!11993))))

(declare-fun b!2947385 () Bool)

(declare-fun e!1856710 () Bool)

(assert (=> b!2947385 (= e!1856710 (= s!11993 (Cons!34878 (c!482145 r!17423) Nil!34878)))))

(declare-fun b!2947386 () Bool)

(declare-fun e!1856711 () Bool)

(declare-fun e!1856712 () Bool)

(assert (=> b!2947386 (= e!1856711 e!1856712)))

(declare-fun res!1216286 () Bool)

(assert (=> b!2947386 (= res!1216286 (not ((_ is EmptyLang!9137) r!17423)))))

(assert (=> b!2947386 (=> (not res!1216286) (not e!1856712))))

(declare-fun bm!194533 () Bool)

(declare-fun call!194538 () Bool)

(assert (=> bm!194533 (= call!194538 (isEmpty!19139 s!11993))))

(declare-fun b!2947387 () Bool)

(declare-fun e!1856708 () Bool)

(declare-fun e!1856706 () Bool)

(assert (=> b!2947387 (= e!1856708 e!1856706)))

(declare-fun c!482250 () Bool)

(assert (=> b!2947387 (= c!482250 ((_ is Star!9137) r!17423))))

(declare-fun call!194539 () Bool)

(assert (=> b!2947388 (= e!1856706 call!194539)))

(declare-fun e!1856709 () Bool)

(assert (=> b!2947389 (= e!1856709 call!194539)))

(declare-fun b!2947390 () Bool)

(declare-fun res!1216288 () Bool)

(assert (=> b!2947390 (=> res!1216288 e!1856709)))

(assert (=> b!2947390 (= res!1216288 call!194538)))

(assert (=> b!2947390 (= e!1856706 e!1856709)))

(declare-fun b!2947391 () Bool)

(assert (=> b!2947391 (= e!1856711 call!194538)))

(declare-fun d!840680 () Bool)

(declare-fun c!482249 () Bool)

(assert (=> d!840680 (= c!482249 ((_ is EmptyExpr!9137) r!17423))))

(assert (=> d!840680 (= (matchRSpec!1274 r!17423 s!11993) e!1856711)))

(declare-fun bm!194534 () Bool)

(declare-fun Exists!1473 (Int) Bool)

(assert (=> bm!194534 (= call!194539 (Exists!1473 (ite c!482250 lambda!109651 lambda!109652)))))

(declare-fun b!2947392 () Bool)

(declare-fun c!482247 () Bool)

(assert (=> b!2947392 (= c!482247 ((_ is Union!9137) r!17423))))

(assert (=> b!2947392 (= e!1856710 e!1856708)))

(declare-fun b!2947393 () Bool)

(declare-fun c!482248 () Bool)

(assert (=> b!2947393 (= c!482248 ((_ is ElementMatch!9137) r!17423))))

(assert (=> b!2947393 (= e!1856712 e!1856710)))

(declare-fun b!2947394 () Bool)

(assert (=> b!2947394 (= e!1856708 e!1856707)))

(declare-fun res!1216287 () Bool)

(assert (=> b!2947394 (= res!1216287 (matchRSpec!1274 (regOne!18787 r!17423) s!11993))))

(assert (=> b!2947394 (=> res!1216287 e!1856707)))

(assert (= (and d!840680 c!482249) b!2947391))

(assert (= (and d!840680 (not c!482249)) b!2947386))

(assert (= (and b!2947386 res!1216286) b!2947393))

(assert (= (and b!2947393 c!482248) b!2947385))

(assert (= (and b!2947393 (not c!482248)) b!2947392))

(assert (= (and b!2947392 c!482247) b!2947394))

(assert (= (and b!2947392 (not c!482247)) b!2947387))

(assert (= (and b!2947394 (not res!1216287)) b!2947384))

(assert (= (and b!2947387 c!482250) b!2947390))

(assert (= (and b!2947387 (not c!482250)) b!2947388))

(assert (= (and b!2947390 (not res!1216288)) b!2947389))

(assert (= (or b!2947389 b!2947388) bm!194534))

(assert (= (or b!2947391 b!2947390) bm!194533))

(declare-fun m!3328261 () Bool)

(assert (=> b!2947384 m!3328261))

(assert (=> bm!194533 m!3328133))

(declare-fun m!3328263 () Bool)

(assert (=> bm!194534 m!3328263))

(declare-fun m!3328265 () Bool)

(assert (=> b!2947394 m!3328265))

(assert (=> b!2946994 d!840680))

(declare-fun bm!194535 () Bool)

(declare-fun call!194540 () Bool)

(assert (=> bm!194535 (= call!194540 (isEmpty!19139 s!11993))))

(declare-fun b!2947399 () Bool)

(declare-fun res!1216295 () Bool)

(declare-fun e!1856713 () Bool)

(assert (=> b!2947399 (=> (not res!1216295) (not e!1856713))))

(assert (=> b!2947399 (= res!1216295 (isEmpty!19139 (tail!4787 s!11993)))))

(declare-fun b!2947401 () Bool)

(declare-fun e!1856717 () Bool)

(assert (=> b!2947401 (= e!1856717 (matchR!4019 (derivativeStep!2502 r!17423 (head!6561 s!11993)) (tail!4787 s!11993)))))

(declare-fun b!2947402 () Bool)

(assert (=> b!2947402 (= e!1856713 (= (head!6561 s!11993) (c!482145 r!17423)))))

(declare-fun b!2947403 () Bool)

(assert (=> b!2947403 (= e!1856717 (nullable!2899 r!17423))))

(declare-fun b!2947404 () Bool)

(declare-fun e!1856715 () Bool)

(declare-fun e!1856716 () Bool)

(assert (=> b!2947404 (= e!1856715 e!1856716)))

(declare-fun res!1216293 () Bool)

(assert (=> b!2947404 (=> res!1216293 e!1856716)))

(assert (=> b!2947404 (= res!1216293 call!194540)))

(declare-fun b!2947405 () Bool)

(declare-fun e!1856718 () Bool)

(declare-fun e!1856714 () Bool)

(assert (=> b!2947405 (= e!1856718 e!1856714)))

(declare-fun c!482253 () Bool)

(assert (=> b!2947405 (= c!482253 ((_ is EmptyLang!9137) r!17423))))

(declare-fun b!2947406 () Bool)

(declare-fun res!1216291 () Bool)

(declare-fun e!1856719 () Bool)

(assert (=> b!2947406 (=> res!1216291 e!1856719)))

(assert (=> b!2947406 (= res!1216291 (not ((_ is ElementMatch!9137) r!17423)))))

(assert (=> b!2947406 (= e!1856714 e!1856719)))

(declare-fun b!2947407 () Bool)

(declare-fun lt!1031398 () Bool)

(assert (=> b!2947407 (= e!1856718 (= lt!1031398 call!194540))))

(declare-fun b!2947408 () Bool)

(assert (=> b!2947408 (= e!1856714 (not lt!1031398))))

(declare-fun b!2947409 () Bool)

(declare-fun res!1216294 () Bool)

(assert (=> b!2947409 (=> (not res!1216294) (not e!1856713))))

(assert (=> b!2947409 (= res!1216294 (not call!194540))))

(declare-fun b!2947410 () Bool)

(assert (=> b!2947410 (= e!1856716 (not (= (head!6561 s!11993) (c!482145 r!17423))))))

(declare-fun b!2947400 () Bool)

(declare-fun res!1216292 () Bool)

(assert (=> b!2947400 (=> res!1216292 e!1856719)))

(assert (=> b!2947400 (= res!1216292 e!1856713)))

(declare-fun res!1216290 () Bool)

(assert (=> b!2947400 (=> (not res!1216290) (not e!1856713))))

(assert (=> b!2947400 (= res!1216290 lt!1031398)))

(declare-fun d!840696 () Bool)

(assert (=> d!840696 e!1856718))

(declare-fun c!482252 () Bool)

(assert (=> d!840696 (= c!482252 ((_ is EmptyExpr!9137) r!17423))))

(assert (=> d!840696 (= lt!1031398 e!1856717)))

(declare-fun c!482251 () Bool)

(assert (=> d!840696 (= c!482251 (isEmpty!19139 s!11993))))

(assert (=> d!840696 (validRegex!3870 r!17423)))

(assert (=> d!840696 (= (matchR!4019 r!17423 s!11993) lt!1031398)))

(declare-fun b!2947411 () Bool)

(declare-fun res!1216296 () Bool)

(assert (=> b!2947411 (=> res!1216296 e!1856716)))

(assert (=> b!2947411 (= res!1216296 (not (isEmpty!19139 (tail!4787 s!11993))))))

(declare-fun b!2947412 () Bool)

(assert (=> b!2947412 (= e!1856719 e!1856715)))

(declare-fun res!1216289 () Bool)

(assert (=> b!2947412 (=> (not res!1216289) (not e!1856715))))

(assert (=> b!2947412 (= res!1216289 (not lt!1031398))))

(assert (= (and d!840696 c!482251) b!2947403))

(assert (= (and d!840696 (not c!482251)) b!2947401))

(assert (= (and d!840696 c!482252) b!2947407))

(assert (= (and d!840696 (not c!482252)) b!2947405))

(assert (= (and b!2947405 c!482253) b!2947408))

(assert (= (and b!2947405 (not c!482253)) b!2947406))

(assert (= (and b!2947406 (not res!1216291)) b!2947400))

(assert (= (and b!2947400 res!1216290) b!2947409))

(assert (= (and b!2947409 res!1216294) b!2947399))

(assert (= (and b!2947399 res!1216295) b!2947402))

(assert (= (and b!2947400 (not res!1216292)) b!2947412))

(assert (= (and b!2947412 res!1216289) b!2947404))

(assert (= (and b!2947404 (not res!1216293)) b!2947411))

(assert (= (and b!2947411 (not res!1216296)) b!2947410))

(assert (= (or b!2947407 b!2947404 b!2947409) bm!194535))

(declare-fun m!3328267 () Bool)

(assert (=> b!2947403 m!3328267))

(assert (=> b!2947410 m!3328197))

(assert (=> b!2947401 m!3328197))

(assert (=> b!2947401 m!3328197))

(declare-fun m!3328269 () Bool)

(assert (=> b!2947401 m!3328269))

(assert (=> b!2947401 m!3328201))

(assert (=> b!2947401 m!3328269))

(assert (=> b!2947401 m!3328201))

(declare-fun m!3328271 () Bool)

(assert (=> b!2947401 m!3328271))

(assert (=> d!840696 m!3328133))

(assert (=> d!840696 m!3328145))

(assert (=> b!2947411 m!3328201))

(assert (=> b!2947411 m!3328201))

(assert (=> b!2947411 m!3328207))

(assert (=> b!2947402 m!3328197))

(assert (=> b!2947399 m!3328201))

(assert (=> b!2947399 m!3328201))

(assert (=> b!2947399 m!3328207))

(assert (=> bm!194535 m!3328133))

(assert (=> b!2946994 d!840696))

(declare-fun d!840698 () Bool)

(assert (=> d!840698 (= (matchR!4019 r!17423 s!11993) (matchRSpec!1274 r!17423 s!11993))))

(declare-fun lt!1031401 () Unit!48653)

(declare-fun choose!17417 (Regex!9137 List!35002) Unit!48653)

(assert (=> d!840698 (= lt!1031401 (choose!17417 r!17423 s!11993))))

(assert (=> d!840698 (validRegex!3870 r!17423)))

(assert (=> d!840698 (= (mainMatchTheorem!1274 r!17423 s!11993) lt!1031401)))

(declare-fun bs!525594 () Bool)

(assert (= bs!525594 d!840698))

(assert (=> bs!525594 m!3328139))

(assert (=> bs!525594 m!3328137))

(declare-fun m!3328273 () Bool)

(assert (=> bs!525594 m!3328273))

(assert (=> bs!525594 m!3328145))

(assert (=> b!2946994 d!840698))

(declare-fun d!840700 () Bool)

(assert (=> d!840700 (= (isEmptyLang!259 lt!1031363) ((_ is EmptyLang!9137) lt!1031363))))

(assert (=> b!2946989 d!840700))

(declare-fun b!2947463 () Bool)

(declare-fun c!482279 () Bool)

(declare-fun e!1856752 () Bool)

(assert (=> b!2947463 (= c!482279 e!1856752)))

(declare-fun res!1216305 () Bool)

(assert (=> b!2947463 (=> res!1216305 e!1856752)))

(declare-fun call!194556 () Bool)

(assert (=> b!2947463 (= res!1216305 call!194556)))

(declare-fun lt!1031419 () Regex!9137)

(declare-fun call!194560 () Regex!9137)

(assert (=> b!2947463 (= lt!1031419 call!194560)))

(declare-fun e!1856750 () Regex!9137)

(declare-fun e!1856756 () Regex!9137)

(assert (=> b!2947463 (= e!1856750 e!1856756)))

(declare-fun b!2947464 () Bool)

(declare-fun e!1856760 () Bool)

(declare-fun lt!1031415 () Regex!9137)

(assert (=> b!2947464 (= e!1856760 (= (nullable!2899 lt!1031415) (nullable!2899 (regTwo!18786 r!17423))))))

(declare-fun b!2947465 () Bool)

(declare-fun e!1856748 () Regex!9137)

(assert (=> b!2947465 (= e!1856748 (regTwo!18786 r!17423))))

(declare-fun b!2947466 () Bool)

(declare-fun e!1856754 () Regex!9137)

(assert (=> b!2947466 (= e!1856754 EmptyLang!9137)))

(declare-fun b!2947467 () Bool)

(declare-fun e!1856755 () Regex!9137)

(declare-fun lt!1031414 () Regex!9137)

(declare-fun lt!1031418 () Regex!9137)

(assert (=> b!2947467 (= e!1856755 (Concat!14458 lt!1031414 lt!1031418))))

(declare-fun b!2947468 () Bool)

(declare-fun e!1856757 () Regex!9137)

(assert (=> b!2947468 (= e!1856757 e!1856750)))

(declare-fun c!482281 () Bool)

(assert (=> b!2947468 (= c!482281 ((_ is Star!9137) (regTwo!18786 r!17423)))))

(declare-fun b!2947469 () Bool)

(declare-fun e!1856751 () Regex!9137)

(declare-fun e!1856761 () Regex!9137)

(assert (=> b!2947469 (= e!1856751 e!1856761)))

(declare-fun lt!1031417 () Regex!9137)

(declare-fun call!194561 () Regex!9137)

(assert (=> b!2947469 (= lt!1031417 call!194561)))

(declare-fun lt!1031416 () Regex!9137)

(declare-fun call!194558 () Regex!9137)

(assert (=> b!2947469 (= lt!1031416 call!194558)))

(declare-fun c!482276 () Bool)

(declare-fun call!194555 () Bool)

(assert (=> b!2947469 (= c!482276 call!194555)))

(declare-fun call!194559 () Bool)

(declare-fun c!482286 () Bool)

(declare-fun bm!194550 () Bool)

(assert (=> bm!194550 (= call!194559 (isEmptyLang!259 (ite c!482286 lt!1031416 lt!1031418)))))

(declare-fun b!2947470 () Bool)

(declare-fun e!1856758 () Regex!9137)

(assert (=> b!2947470 (= e!1856758 (Union!9137 lt!1031417 lt!1031416))))

(declare-fun b!2947471 () Bool)

(declare-fun c!482280 () Bool)

(declare-fun call!194557 () Bool)

(assert (=> b!2947471 (= c!482280 call!194557)))

(declare-fun e!1856749 () Regex!9137)

(declare-fun e!1856759 () Regex!9137)

(assert (=> b!2947471 (= e!1856749 e!1856759)))

(declare-fun b!2947472 () Bool)

(assert (=> b!2947472 (= e!1856759 e!1856755)))

(declare-fun c!482285 () Bool)

(assert (=> b!2947472 (= c!482285 (isEmptyExpr!340 lt!1031418))))

(declare-fun b!2947474 () Bool)

(assert (=> b!2947474 (= e!1856752 call!194557)))

(declare-fun b!2947475 () Bool)

(assert (=> b!2947475 (= e!1856758 lt!1031417)))

(declare-fun b!2947476 () Bool)

(assert (=> b!2947476 (= c!482286 ((_ is Union!9137) (regTwo!18786 r!17423)))))

(assert (=> b!2947476 (= e!1856750 e!1856751)))

(declare-fun b!2947477 () Bool)

(assert (=> b!2947477 (= e!1856759 lt!1031418)))

(declare-fun bm!194551 () Bool)

(assert (=> bm!194551 (= call!194556 (isEmptyLang!259 (ite c!482281 lt!1031419 (ite c!482286 lt!1031417 lt!1031414))))))

(declare-fun b!2947478 () Bool)

(declare-fun c!482277 () Bool)

(assert (=> b!2947478 (= c!482277 call!194559)))

(assert (=> b!2947478 (= e!1856761 e!1856758)))

(declare-fun b!2947479 () Bool)

(assert (=> b!2947479 (= e!1856756 EmptyExpr!9137)))

(declare-fun b!2947480 () Bool)

(assert (=> b!2947480 (= e!1856757 EmptyExpr!9137)))

(declare-fun b!2947481 () Bool)

(assert (=> b!2947481 (= e!1856754 e!1856748)))

(declare-fun c!482278 () Bool)

(assert (=> b!2947481 (= c!482278 ((_ is ElementMatch!9137) (regTwo!18786 r!17423)))))

(declare-fun bm!194552 () Bool)

(assert (=> bm!194552 (= call!194560 (simplify!142 (ite c!482281 (reg!9466 (regTwo!18786 r!17423)) (ite c!482286 (regOne!18787 (regTwo!18786 r!17423)) (regTwo!18786 (regTwo!18786 r!17423))))))))

(declare-fun b!2947482 () Bool)

(assert (=> b!2947482 (= e!1856755 lt!1031414)))

(declare-fun b!2947483 () Bool)

(assert (=> b!2947483 (= e!1856751 e!1856749)))

(assert (=> b!2947483 (= lt!1031414 call!194558)))

(assert (=> b!2947483 (= lt!1031418 call!194561)))

(declare-fun res!1216303 () Bool)

(assert (=> b!2947483 (= res!1216303 call!194555)))

(declare-fun e!1856753 () Bool)

(assert (=> b!2947483 (=> res!1216303 e!1856753)))

(declare-fun c!482283 () Bool)

(assert (=> b!2947483 (= c!482283 e!1856753)))

(declare-fun bm!194553 () Bool)

(assert (=> bm!194553 (= call!194558 (simplify!142 (ite c!482286 (regTwo!18787 (regTwo!18786 r!17423)) (regOne!18786 (regTwo!18786 r!17423)))))))

(declare-fun b!2947473 () Bool)

(assert (=> b!2947473 (= e!1856753 call!194559)))

(declare-fun d!840702 () Bool)

(assert (=> d!840702 e!1856760))

(declare-fun res!1216304 () Bool)

(assert (=> d!840702 (=> (not res!1216304) (not e!1856760))))

(assert (=> d!840702 (= res!1216304 (validRegex!3870 lt!1031415))))

(assert (=> d!840702 (= lt!1031415 e!1856754)))

(declare-fun c!482282 () Bool)

(assert (=> d!840702 (= c!482282 ((_ is EmptyLang!9137) (regTwo!18786 r!17423)))))

(assert (=> d!840702 (validRegex!3870 (regTwo!18786 r!17423))))

(assert (=> d!840702 (= (simplify!142 (regTwo!18786 r!17423)) lt!1031415)))

(declare-fun bm!194554 () Bool)

(assert (=> bm!194554 (= call!194555 call!194556)))

(declare-fun bm!194555 () Bool)

(assert (=> bm!194555 (= call!194561 call!194560)))

(declare-fun b!2947484 () Bool)

(assert (=> b!2947484 (= e!1856756 (Star!9137 lt!1031419))))

(declare-fun b!2947485 () Bool)

(assert (=> b!2947485 (= e!1856749 EmptyLang!9137)))

(declare-fun bm!194556 () Bool)

(assert (=> bm!194556 (= call!194557 (isEmptyExpr!340 (ite c!482281 lt!1031419 lt!1031414)))))

(declare-fun b!2947486 () Bool)

(assert (=> b!2947486 (= e!1856761 lt!1031416)))

(declare-fun b!2947487 () Bool)

(declare-fun c!482284 () Bool)

(assert (=> b!2947487 (= c!482284 ((_ is EmptyExpr!9137) (regTwo!18786 r!17423)))))

(assert (=> b!2947487 (= e!1856748 e!1856757)))

(assert (= (and d!840702 c!482282) b!2947466))

(assert (= (and d!840702 (not c!482282)) b!2947481))

(assert (= (and b!2947481 c!482278) b!2947465))

(assert (= (and b!2947481 (not c!482278)) b!2947487))

(assert (= (and b!2947487 c!482284) b!2947480))

(assert (= (and b!2947487 (not c!482284)) b!2947468))

(assert (= (and b!2947468 c!482281) b!2947463))

(assert (= (and b!2947468 (not c!482281)) b!2947476))

(assert (= (and b!2947463 (not res!1216305)) b!2947474))

(assert (= (and b!2947463 c!482279) b!2947479))

(assert (= (and b!2947463 (not c!482279)) b!2947484))

(assert (= (and b!2947476 c!482286) b!2947469))

(assert (= (and b!2947476 (not c!482286)) b!2947483))

(assert (= (and b!2947469 c!482276) b!2947486))

(assert (= (and b!2947469 (not c!482276)) b!2947478))

(assert (= (and b!2947478 c!482277) b!2947475))

(assert (= (and b!2947478 (not c!482277)) b!2947470))

(assert (= (and b!2947483 (not res!1216303)) b!2947473))

(assert (= (and b!2947483 c!482283) b!2947485))

(assert (= (and b!2947483 (not c!482283)) b!2947471))

(assert (= (and b!2947471 c!482280) b!2947477))

(assert (= (and b!2947471 (not c!482280)) b!2947472))

(assert (= (and b!2947472 c!482285) b!2947482))

(assert (= (and b!2947472 (not c!482285)) b!2947467))

(assert (= (or b!2947469 b!2947483) bm!194555))

(assert (= (or b!2947469 b!2947483) bm!194553))

(assert (= (or b!2947469 b!2947483) bm!194554))

(assert (= (or b!2947478 b!2947473) bm!194550))

(assert (= (or b!2947474 b!2947471) bm!194556))

(assert (= (or b!2947463 bm!194555) bm!194552))

(assert (= (or b!2947463 bm!194554) bm!194551))

(assert (= (and d!840702 res!1216304) b!2947464))

(declare-fun m!3328275 () Bool)

(assert (=> b!2947464 m!3328275))

(declare-fun m!3328277 () Bool)

(assert (=> b!2947464 m!3328277))

(declare-fun m!3328279 () Bool)

(assert (=> bm!194552 m!3328279))

(declare-fun m!3328281 () Bool)

(assert (=> bm!194553 m!3328281))

(declare-fun m!3328283 () Bool)

(assert (=> b!2947472 m!3328283))

(declare-fun m!3328285 () Bool)

(assert (=> d!840702 m!3328285))

(declare-fun m!3328287 () Bool)

(assert (=> d!840702 m!3328287))

(declare-fun m!3328289 () Bool)

(assert (=> bm!194551 m!3328289))

(declare-fun m!3328291 () Bool)

(assert (=> bm!194550 m!3328291))

(declare-fun m!3328293 () Bool)

(assert (=> bm!194556 m!3328293))

(assert (=> b!2946989 d!840702))

(declare-fun b!2947488 () Bool)

(declare-fun c!482290 () Bool)

(declare-fun e!1856766 () Bool)

(assert (=> b!2947488 (= c!482290 e!1856766)))

(declare-fun res!1216308 () Bool)

(assert (=> b!2947488 (=> res!1216308 e!1856766)))

(declare-fun call!194563 () Bool)

(assert (=> b!2947488 (= res!1216308 call!194563)))

(declare-fun lt!1031425 () Regex!9137)

(declare-fun call!194567 () Regex!9137)

(assert (=> b!2947488 (= lt!1031425 call!194567)))

(declare-fun e!1856764 () Regex!9137)

(declare-fun e!1856770 () Regex!9137)

(assert (=> b!2947488 (= e!1856764 e!1856770)))

(declare-fun b!2947489 () Bool)

(declare-fun e!1856774 () Bool)

(declare-fun lt!1031421 () Regex!9137)

(assert (=> b!2947489 (= e!1856774 (= (nullable!2899 lt!1031421) (nullable!2899 (regOne!18786 r!17423))))))

(declare-fun b!2947490 () Bool)

(declare-fun e!1856762 () Regex!9137)

(assert (=> b!2947490 (= e!1856762 (regOne!18786 r!17423))))

(declare-fun b!2947491 () Bool)

(declare-fun e!1856768 () Regex!9137)

(assert (=> b!2947491 (= e!1856768 EmptyLang!9137)))

(declare-fun b!2947492 () Bool)

(declare-fun e!1856769 () Regex!9137)

(declare-fun lt!1031420 () Regex!9137)

(declare-fun lt!1031424 () Regex!9137)

(assert (=> b!2947492 (= e!1856769 (Concat!14458 lt!1031420 lt!1031424))))

(declare-fun b!2947493 () Bool)

(declare-fun e!1856771 () Regex!9137)

(assert (=> b!2947493 (= e!1856771 e!1856764)))

(declare-fun c!482292 () Bool)

(assert (=> b!2947493 (= c!482292 ((_ is Star!9137) (regOne!18786 r!17423)))))

(declare-fun b!2947494 () Bool)

(declare-fun e!1856765 () Regex!9137)

(declare-fun e!1856775 () Regex!9137)

(assert (=> b!2947494 (= e!1856765 e!1856775)))

(declare-fun lt!1031423 () Regex!9137)

(declare-fun call!194568 () Regex!9137)

(assert (=> b!2947494 (= lt!1031423 call!194568)))

(declare-fun lt!1031422 () Regex!9137)

(declare-fun call!194565 () Regex!9137)

(assert (=> b!2947494 (= lt!1031422 call!194565)))

(declare-fun c!482287 () Bool)

(declare-fun call!194562 () Bool)

(assert (=> b!2947494 (= c!482287 call!194562)))

(declare-fun call!194566 () Bool)

(declare-fun c!482297 () Bool)

(declare-fun bm!194557 () Bool)

(assert (=> bm!194557 (= call!194566 (isEmptyLang!259 (ite c!482297 lt!1031422 lt!1031424)))))

(declare-fun b!2947495 () Bool)

(declare-fun e!1856772 () Regex!9137)

(assert (=> b!2947495 (= e!1856772 (Union!9137 lt!1031423 lt!1031422))))

(declare-fun b!2947496 () Bool)

(declare-fun c!482291 () Bool)

(declare-fun call!194564 () Bool)

(assert (=> b!2947496 (= c!482291 call!194564)))

(declare-fun e!1856763 () Regex!9137)

(declare-fun e!1856773 () Regex!9137)

(assert (=> b!2947496 (= e!1856763 e!1856773)))

(declare-fun b!2947497 () Bool)

(assert (=> b!2947497 (= e!1856773 e!1856769)))

(declare-fun c!482296 () Bool)

(assert (=> b!2947497 (= c!482296 (isEmptyExpr!340 lt!1031424))))

(declare-fun b!2947499 () Bool)

(assert (=> b!2947499 (= e!1856766 call!194564)))

(declare-fun b!2947500 () Bool)

(assert (=> b!2947500 (= e!1856772 lt!1031423)))

(declare-fun b!2947501 () Bool)

(assert (=> b!2947501 (= c!482297 ((_ is Union!9137) (regOne!18786 r!17423)))))

(assert (=> b!2947501 (= e!1856764 e!1856765)))

(declare-fun b!2947502 () Bool)

(assert (=> b!2947502 (= e!1856773 lt!1031424)))

(declare-fun bm!194558 () Bool)

(assert (=> bm!194558 (= call!194563 (isEmptyLang!259 (ite c!482292 lt!1031425 (ite c!482297 lt!1031423 lt!1031420))))))

(declare-fun b!2947503 () Bool)

(declare-fun c!482288 () Bool)

(assert (=> b!2947503 (= c!482288 call!194566)))

(assert (=> b!2947503 (= e!1856775 e!1856772)))

(declare-fun b!2947504 () Bool)

(assert (=> b!2947504 (= e!1856770 EmptyExpr!9137)))

(declare-fun b!2947505 () Bool)

(assert (=> b!2947505 (= e!1856771 EmptyExpr!9137)))

(declare-fun b!2947506 () Bool)

(assert (=> b!2947506 (= e!1856768 e!1856762)))

(declare-fun c!482289 () Bool)

(assert (=> b!2947506 (= c!482289 ((_ is ElementMatch!9137) (regOne!18786 r!17423)))))

(declare-fun bm!194559 () Bool)

(assert (=> bm!194559 (= call!194567 (simplify!142 (ite c!482292 (reg!9466 (regOne!18786 r!17423)) (ite c!482297 (regOne!18787 (regOne!18786 r!17423)) (regTwo!18786 (regOne!18786 r!17423))))))))

(declare-fun b!2947507 () Bool)

(assert (=> b!2947507 (= e!1856769 lt!1031420)))

(declare-fun b!2947508 () Bool)

(assert (=> b!2947508 (= e!1856765 e!1856763)))

(assert (=> b!2947508 (= lt!1031420 call!194565)))

(assert (=> b!2947508 (= lt!1031424 call!194568)))

(declare-fun res!1216306 () Bool)

(assert (=> b!2947508 (= res!1216306 call!194562)))

(declare-fun e!1856767 () Bool)

(assert (=> b!2947508 (=> res!1216306 e!1856767)))

(declare-fun c!482294 () Bool)

(assert (=> b!2947508 (= c!482294 e!1856767)))

(declare-fun bm!194560 () Bool)

(assert (=> bm!194560 (= call!194565 (simplify!142 (ite c!482297 (regTwo!18787 (regOne!18786 r!17423)) (regOne!18786 (regOne!18786 r!17423)))))))

(declare-fun b!2947498 () Bool)

(assert (=> b!2947498 (= e!1856767 call!194566)))

(declare-fun d!840704 () Bool)

(assert (=> d!840704 e!1856774))

(declare-fun res!1216307 () Bool)

(assert (=> d!840704 (=> (not res!1216307) (not e!1856774))))

(assert (=> d!840704 (= res!1216307 (validRegex!3870 lt!1031421))))

(assert (=> d!840704 (= lt!1031421 e!1856768)))

(declare-fun c!482293 () Bool)

(assert (=> d!840704 (= c!482293 ((_ is EmptyLang!9137) (regOne!18786 r!17423)))))

(assert (=> d!840704 (validRegex!3870 (regOne!18786 r!17423))))

(assert (=> d!840704 (= (simplify!142 (regOne!18786 r!17423)) lt!1031421)))

(declare-fun bm!194561 () Bool)

(assert (=> bm!194561 (= call!194562 call!194563)))

(declare-fun bm!194562 () Bool)

(assert (=> bm!194562 (= call!194568 call!194567)))

(declare-fun b!2947509 () Bool)

(assert (=> b!2947509 (= e!1856770 (Star!9137 lt!1031425))))

(declare-fun b!2947510 () Bool)

(assert (=> b!2947510 (= e!1856763 EmptyLang!9137)))

(declare-fun bm!194563 () Bool)

(assert (=> bm!194563 (= call!194564 (isEmptyExpr!340 (ite c!482292 lt!1031425 lt!1031420)))))

(declare-fun b!2947511 () Bool)

(assert (=> b!2947511 (= e!1856775 lt!1031422)))

(declare-fun b!2947512 () Bool)

(declare-fun c!482295 () Bool)

(assert (=> b!2947512 (= c!482295 ((_ is EmptyExpr!9137) (regOne!18786 r!17423)))))

(assert (=> b!2947512 (= e!1856762 e!1856771)))

(assert (= (and d!840704 c!482293) b!2947491))

(assert (= (and d!840704 (not c!482293)) b!2947506))

(assert (= (and b!2947506 c!482289) b!2947490))

(assert (= (and b!2947506 (not c!482289)) b!2947512))

(assert (= (and b!2947512 c!482295) b!2947505))

(assert (= (and b!2947512 (not c!482295)) b!2947493))

(assert (= (and b!2947493 c!482292) b!2947488))

(assert (= (and b!2947493 (not c!482292)) b!2947501))

(assert (= (and b!2947488 (not res!1216308)) b!2947499))

(assert (= (and b!2947488 c!482290) b!2947504))

(assert (= (and b!2947488 (not c!482290)) b!2947509))

(assert (= (and b!2947501 c!482297) b!2947494))

(assert (= (and b!2947501 (not c!482297)) b!2947508))

(assert (= (and b!2947494 c!482287) b!2947511))

(assert (= (and b!2947494 (not c!482287)) b!2947503))

(assert (= (and b!2947503 c!482288) b!2947500))

(assert (= (and b!2947503 (not c!482288)) b!2947495))

(assert (= (and b!2947508 (not res!1216306)) b!2947498))

(assert (= (and b!2947508 c!482294) b!2947510))

(assert (= (and b!2947508 (not c!482294)) b!2947496))

(assert (= (and b!2947496 c!482291) b!2947502))

(assert (= (and b!2947496 (not c!482291)) b!2947497))

(assert (= (and b!2947497 c!482296) b!2947507))

(assert (= (and b!2947497 (not c!482296)) b!2947492))

(assert (= (or b!2947494 b!2947508) bm!194562))

(assert (= (or b!2947494 b!2947508) bm!194560))

(assert (= (or b!2947494 b!2947508) bm!194561))

(assert (= (or b!2947503 b!2947498) bm!194557))

(assert (= (or b!2947499 b!2947496) bm!194563))

(assert (= (or b!2947488 bm!194562) bm!194559))

(assert (= (or b!2947488 bm!194561) bm!194558))

(assert (= (and d!840704 res!1216307) b!2947489))

(declare-fun m!3328295 () Bool)

(assert (=> b!2947489 m!3328295))

(declare-fun m!3328297 () Bool)

(assert (=> b!2947489 m!3328297))

(declare-fun m!3328299 () Bool)

(assert (=> bm!194559 m!3328299))

(declare-fun m!3328301 () Bool)

(assert (=> bm!194560 m!3328301))

(declare-fun m!3328303 () Bool)

(assert (=> b!2947497 m!3328303))

(declare-fun m!3328305 () Bool)

(assert (=> d!840704 m!3328305))

(assert (=> d!840704 m!3328153))

(declare-fun m!3328307 () Bool)

(assert (=> bm!194558 m!3328307))

(declare-fun m!3328309 () Bool)

(assert (=> bm!194557 m!3328309))

(declare-fun m!3328311 () Bool)

(assert (=> bm!194563 m!3328311))

(assert (=> b!2946989 d!840704))

(declare-fun b!2947525 () Bool)

(declare-fun e!1856778 () Bool)

(declare-fun tp!942576 () Bool)

(assert (=> b!2947525 (= e!1856778 tp!942576)))

(declare-fun b!2947523 () Bool)

(assert (=> b!2947523 (= e!1856778 tp_is_empty!15837)))

(declare-fun b!2947526 () Bool)

(declare-fun tp!942575 () Bool)

(declare-fun tp!942574 () Bool)

(assert (=> b!2947526 (= e!1856778 (and tp!942575 tp!942574))))

(declare-fun b!2947524 () Bool)

(declare-fun tp!942577 () Bool)

(declare-fun tp!942578 () Bool)

(assert (=> b!2947524 (= e!1856778 (and tp!942577 tp!942578))))

(assert (=> b!2946998 (= tp!942523 e!1856778)))

(assert (= (and b!2946998 ((_ is ElementMatch!9137) (regOne!18787 r!17423))) b!2947523))

(assert (= (and b!2946998 ((_ is Concat!14458) (regOne!18787 r!17423))) b!2947524))

(assert (= (and b!2946998 ((_ is Star!9137) (regOne!18787 r!17423))) b!2947525))

(assert (= (and b!2946998 ((_ is Union!9137) (regOne!18787 r!17423))) b!2947526))

(declare-fun b!2947529 () Bool)

(declare-fun e!1856779 () Bool)

(declare-fun tp!942581 () Bool)

(assert (=> b!2947529 (= e!1856779 tp!942581)))

(declare-fun b!2947527 () Bool)

(assert (=> b!2947527 (= e!1856779 tp_is_empty!15837)))

(declare-fun b!2947530 () Bool)

(declare-fun tp!942580 () Bool)

(declare-fun tp!942579 () Bool)

(assert (=> b!2947530 (= e!1856779 (and tp!942580 tp!942579))))

(declare-fun b!2947528 () Bool)

(declare-fun tp!942582 () Bool)

(declare-fun tp!942583 () Bool)

(assert (=> b!2947528 (= e!1856779 (and tp!942582 tp!942583))))

(assert (=> b!2946998 (= tp!942520 e!1856779)))

(assert (= (and b!2946998 ((_ is ElementMatch!9137) (regTwo!18787 r!17423))) b!2947527))

(assert (= (and b!2946998 ((_ is Concat!14458) (regTwo!18787 r!17423))) b!2947528))

(assert (= (and b!2946998 ((_ is Star!9137) (regTwo!18787 r!17423))) b!2947529))

(assert (= (and b!2946998 ((_ is Union!9137) (regTwo!18787 r!17423))) b!2947530))

(declare-fun b!2947535 () Bool)

(declare-fun e!1856782 () Bool)

(declare-fun tp!942586 () Bool)

(assert (=> b!2947535 (= e!1856782 (and tp_is_empty!15837 tp!942586))))

(assert (=> b!2946988 (= tp!942524 e!1856782)))

(assert (= (and b!2946988 ((_ is Cons!34878) (t!234067 s!11993))) b!2947535))

(declare-fun b!2947538 () Bool)

(declare-fun e!1856783 () Bool)

(declare-fun tp!942589 () Bool)

(assert (=> b!2947538 (= e!1856783 tp!942589)))

(declare-fun b!2947536 () Bool)

(assert (=> b!2947536 (= e!1856783 tp_is_empty!15837)))

(declare-fun b!2947539 () Bool)

(declare-fun tp!942588 () Bool)

(declare-fun tp!942587 () Bool)

(assert (=> b!2947539 (= e!1856783 (and tp!942588 tp!942587))))

(declare-fun b!2947537 () Bool)

(declare-fun tp!942590 () Bool)

(declare-fun tp!942591 () Bool)

(assert (=> b!2947537 (= e!1856783 (and tp!942590 tp!942591))))

(assert (=> b!2946991 (= tp!942521 e!1856783)))

(assert (= (and b!2946991 ((_ is ElementMatch!9137) (regOne!18786 r!17423))) b!2947536))

(assert (= (and b!2946991 ((_ is Concat!14458) (regOne!18786 r!17423))) b!2947537))

(assert (= (and b!2946991 ((_ is Star!9137) (regOne!18786 r!17423))) b!2947538))

(assert (= (and b!2946991 ((_ is Union!9137) (regOne!18786 r!17423))) b!2947539))

(declare-fun b!2947542 () Bool)

(declare-fun e!1856784 () Bool)

(declare-fun tp!942594 () Bool)

(assert (=> b!2947542 (= e!1856784 tp!942594)))

(declare-fun b!2947540 () Bool)

(assert (=> b!2947540 (= e!1856784 tp_is_empty!15837)))

(declare-fun b!2947543 () Bool)

(declare-fun tp!942593 () Bool)

(declare-fun tp!942592 () Bool)

(assert (=> b!2947543 (= e!1856784 (and tp!942593 tp!942592))))

(declare-fun b!2947541 () Bool)

(declare-fun tp!942595 () Bool)

(declare-fun tp!942596 () Bool)

(assert (=> b!2947541 (= e!1856784 (and tp!942595 tp!942596))))

(assert (=> b!2946991 (= tp!942522 e!1856784)))

(assert (= (and b!2946991 ((_ is ElementMatch!9137) (regTwo!18786 r!17423))) b!2947540))

(assert (= (and b!2946991 ((_ is Concat!14458) (regTwo!18786 r!17423))) b!2947541))

(assert (= (and b!2946991 ((_ is Star!9137) (regTwo!18786 r!17423))) b!2947542))

(assert (= (and b!2946991 ((_ is Union!9137) (regTwo!18786 r!17423))) b!2947543))

(declare-fun b!2947546 () Bool)

(declare-fun e!1856785 () Bool)

(declare-fun tp!942599 () Bool)

(assert (=> b!2947546 (= e!1856785 tp!942599)))

(declare-fun b!2947544 () Bool)

(assert (=> b!2947544 (= e!1856785 tp_is_empty!15837)))

(declare-fun b!2947547 () Bool)

(declare-fun tp!942598 () Bool)

(declare-fun tp!942597 () Bool)

(assert (=> b!2947547 (= e!1856785 (and tp!942598 tp!942597))))

(declare-fun b!2947545 () Bool)

(declare-fun tp!942600 () Bool)

(declare-fun tp!942601 () Bool)

(assert (=> b!2947545 (= e!1856785 (and tp!942600 tp!942601))))

(assert (=> b!2946990 (= tp!942525 e!1856785)))

(assert (= (and b!2946990 ((_ is ElementMatch!9137) (reg!9466 r!17423))) b!2947544))

(assert (= (and b!2946990 ((_ is Concat!14458) (reg!9466 r!17423))) b!2947545))

(assert (= (and b!2946990 ((_ is Star!9137) (reg!9466 r!17423))) b!2947546))

(assert (= (and b!2946990 ((_ is Union!9137) (reg!9466 r!17423))) b!2947547))

(check-sat (not bm!194493) (not b!2947529) (not bm!194563) (not b!2947542) (not bm!194534) (not d!840696) (not bm!194551) (not bm!194535) (not b!2947524) (not b!2947497) (not b!2947539) (not b!2947403) (not d!840704) (not b!2947538) (not b!2947175) (not d!840698) (not b!2947530) (not b!2947164) (not b!2947541) (not bm!194552) (not b!2947535) (not b!2947399) (not b!2947167) (not b!2947526) (not b!2947401) (not bm!194533) (not bm!194482) (not bm!194556) tp_is_empty!15837 (not b!2947063) (not b!2947402) (not b!2947176) (not b!2947547) (not b!2947050) (not b!2947384) (not d!840702) (not b!2947525) (not b!2947166) (not bm!194479) (not bm!194550) (not b!2947464) (not b!2947411) (not b!2947168) (not bm!194557) (not b!2947543) (not bm!194480) (not bm!194560) (not b!2947489) (not b!2947472) (not bm!194483) (not bm!194559) (not bm!194553) (not b!2947545) (not b!2947546) (not b!2947394) (not b!2947410) (not bm!194558) (not d!840672) (not b!2947537) (not b!2947528))
(check-sat)
