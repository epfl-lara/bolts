; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725032 () Bool)

(assert start!725032)

(declare-fun b!7487716 () Bool)

(assert (=> b!7487716 true))

(assert (=> b!7487716 true))

(assert (=> b!7487716 true))

(declare-fun b!7487712 () Bool)

(declare-fun e!4465368 () Bool)

(declare-fun tp!2173197 () Bool)

(declare-fun tp!2173188 () Bool)

(assert (=> b!7487712 (= e!4465368 (and tp!2173197 tp!2173188))))

(declare-fun b!7487713 () Bool)

(declare-fun e!4465369 () Bool)

(declare-fun tp!2173187 () Bool)

(declare-fun tp!2173185 () Bool)

(assert (=> b!7487713 (= e!4465369 (and tp!2173187 tp!2173185))))

(declare-fun b!7487714 () Bool)

(declare-fun e!4465366 () Bool)

(declare-fun tp!2173191 () Bool)

(assert (=> b!7487714 (= e!4465366 tp!2173191)))

(declare-fun b!7487715 () Bool)

(declare-fun tp!2173190 () Bool)

(declare-fun tp!2173189 () Bool)

(assert (=> b!7487715 (= e!4465369 (and tp!2173190 tp!2173189))))

(declare-fun e!4465365 () Bool)

(declare-datatypes ((C!39526 0))(
  ( (C!39527 (val!30161 Int)) )
))
(declare-datatypes ((Regex!19626 0))(
  ( (ElementMatch!19626 (c!1382689 C!39526)) (Concat!28471 (regOne!39764 Regex!19626) (regTwo!39764 Regex!19626)) (EmptyExpr!19626) (Star!19626 (reg!19955 Regex!19626)) (EmptyLang!19626) (Union!19626 (regOne!39765 Regex!19626) (regTwo!39765 Regex!19626)) )
))
(declare-fun lt!2628974 () Regex!19626)

(declare-fun validRegex!10140 (Regex!19626) Bool)

(assert (=> b!7487716 (= e!4465365 (validRegex!10140 lt!2628974))))

(declare-datatypes ((List!72340 0))(
  ( (Nil!72216) (Cons!72216 (h!78664 C!39526) (t!386909 List!72340)) )
))
(declare-fun s!13591 () List!72340)

(declare-fun rTail!78 () Regex!19626)

(declare-fun lambda!463922 () Int)

(declare-datatypes ((tuple2!68690 0))(
  ( (tuple2!68691 (_1!37648 List!72340) (_2!37648 List!72340)) )
))
(declare-datatypes ((Option!17177 0))(
  ( (None!17176) (Some!17176 (v!54305 tuple2!68690)) )
))
(declare-fun isDefined!13866 (Option!17177) Bool)

(declare-fun findConcatSeparation!3299 (Regex!19626 Regex!19626 List!72340 List!72340 List!72340) Option!17177)

(declare-fun Exists!4243 (Int) Bool)

(assert (=> b!7487716 (= (isDefined!13866 (findConcatSeparation!3299 lt!2628974 rTail!78 Nil!72216 s!13591 s!13591)) (Exists!4243 lambda!463922))))

(declare-datatypes ((Unit!166083 0))(
  ( (Unit!166084) )
))
(declare-fun lt!2628970 () Unit!166083)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3057 (Regex!19626 Regex!19626 List!72340) Unit!166083)

(assert (=> b!7487716 (= lt!2628970 (lemmaFindConcatSeparationEquivalentToExists!3057 lt!2628974 rTail!78 s!13591))))

(declare-fun res!3003564 () Bool)

(declare-fun e!4465370 () Bool)

(assert (=> start!725032 (=> (not res!3003564) (not e!4465370))))

(declare-fun r1!5845 () Regex!19626)

(assert (=> start!725032 (= res!3003564 (validRegex!10140 r1!5845))))

(assert (=> start!725032 e!4465370))

(assert (=> start!725032 e!4465366))

(assert (=> start!725032 e!4465368))

(assert (=> start!725032 e!4465369))

(declare-fun e!4465367 () Bool)

(assert (=> start!725032 e!4465367))

(declare-fun b!7487717 () Bool)

(declare-fun tp_is_empty!49541 () Bool)

(assert (=> b!7487717 (= e!4465368 tp_is_empty!49541)))

(declare-fun b!7487718 () Bool)

(declare-fun tp!2173195 () Bool)

(assert (=> b!7487718 (= e!4465369 tp!2173195)))

(declare-fun b!7487719 () Bool)

(declare-fun tp!2173186 () Bool)

(assert (=> b!7487719 (= e!4465368 tp!2173186)))

(declare-fun b!7487720 () Bool)

(declare-fun res!3003563 () Bool)

(assert (=> b!7487720 (=> (not res!3003563) (not e!4465370))))

(assert (=> b!7487720 (= res!3003563 (validRegex!10140 rTail!78))))

(declare-fun b!7487721 () Bool)

(declare-fun tp!2173193 () Bool)

(declare-fun tp!2173196 () Bool)

(assert (=> b!7487721 (= e!4465368 (and tp!2173193 tp!2173196))))

(declare-fun b!7487722 () Bool)

(declare-fun tp!2173183 () Bool)

(assert (=> b!7487722 (= e!4465367 (and tp_is_empty!49541 tp!2173183))))

(declare-fun b!7487723 () Bool)

(assert (=> b!7487723 (= e!4465366 tp_is_empty!49541)))

(declare-fun b!7487724 () Bool)

(declare-fun res!3003562 () Bool)

(assert (=> b!7487724 (=> (not res!3003562) (not e!4465370))))

(declare-fun r2!5783 () Regex!19626)

(assert (=> b!7487724 (= res!3003562 (validRegex!10140 r2!5783))))

(declare-fun b!7487725 () Bool)

(declare-fun tp!2173182 () Bool)

(declare-fun tp!2173194 () Bool)

(assert (=> b!7487725 (= e!4465366 (and tp!2173182 tp!2173194))))

(declare-fun b!7487726 () Bool)

(declare-fun tp!2173184 () Bool)

(declare-fun tp!2173192 () Bool)

(assert (=> b!7487726 (= e!4465366 (and tp!2173184 tp!2173192))))

(declare-fun b!7487727 () Bool)

(assert (=> b!7487727 (= e!4465370 (not e!4465365))))

(declare-fun res!3003561 () Bool)

(assert (=> b!7487727 (=> res!3003561 e!4465365)))

(declare-fun lt!2628972 () Bool)

(assert (=> b!7487727 (= res!3003561 (not lt!2628972))))

(declare-fun lt!2628973 () Regex!19626)

(declare-fun matchR!9388 (Regex!19626 List!72340) Bool)

(declare-fun matchRSpec!4303 (Regex!19626 List!72340) Bool)

(assert (=> b!7487727 (= (matchR!9388 lt!2628973 s!13591) (matchRSpec!4303 lt!2628973 s!13591))))

(declare-fun lt!2628975 () Unit!166083)

(declare-fun mainMatchTheorem!4297 (Regex!19626 List!72340) Unit!166083)

(assert (=> b!7487727 (= lt!2628975 (mainMatchTheorem!4297 lt!2628973 s!13591))))

(declare-fun lt!2628976 () Regex!19626)

(assert (=> b!7487727 (= lt!2628972 (matchRSpec!4303 lt!2628976 s!13591))))

(assert (=> b!7487727 (= lt!2628972 (matchR!9388 lt!2628976 s!13591))))

(declare-fun lt!2628971 () Unit!166083)

(assert (=> b!7487727 (= lt!2628971 (mainMatchTheorem!4297 lt!2628976 s!13591))))

(assert (=> b!7487727 (= lt!2628973 (Union!19626 (Concat!28471 r1!5845 rTail!78) (Concat!28471 r2!5783 rTail!78)))))

(assert (=> b!7487727 (= lt!2628976 (Concat!28471 lt!2628974 rTail!78))))

(assert (=> b!7487727 (= lt!2628974 (Union!19626 r1!5845 r2!5783))))

(declare-fun b!7487728 () Bool)

(assert (=> b!7487728 (= e!4465369 tp_is_empty!49541)))

(assert (= (and start!725032 res!3003564) b!7487724))

(assert (= (and b!7487724 res!3003562) b!7487720))

(assert (= (and b!7487720 res!3003563) b!7487727))

(assert (= (and b!7487727 (not res!3003561)) b!7487716))

(assert (= (and start!725032 (is-ElementMatch!19626 r1!5845)) b!7487723))

(assert (= (and start!725032 (is-Concat!28471 r1!5845)) b!7487725))

(assert (= (and start!725032 (is-Star!19626 r1!5845)) b!7487714))

(assert (= (and start!725032 (is-Union!19626 r1!5845)) b!7487726))

(assert (= (and start!725032 (is-ElementMatch!19626 r2!5783)) b!7487717))

(assert (= (and start!725032 (is-Concat!28471 r2!5783)) b!7487721))

(assert (= (and start!725032 (is-Star!19626 r2!5783)) b!7487719))

(assert (= (and start!725032 (is-Union!19626 r2!5783)) b!7487712))

(assert (= (and start!725032 (is-ElementMatch!19626 rTail!78)) b!7487728))

(assert (= (and start!725032 (is-Concat!28471 rTail!78)) b!7487715))

(assert (= (and start!725032 (is-Star!19626 rTail!78)) b!7487718))

(assert (= (and start!725032 (is-Union!19626 rTail!78)) b!7487713))

(assert (= (and start!725032 (is-Cons!72216 s!13591)) b!7487722))

(declare-fun m!8075848 () Bool)

(assert (=> b!7487727 m!8075848))

(declare-fun m!8075850 () Bool)

(assert (=> b!7487727 m!8075850))

(declare-fun m!8075852 () Bool)

(assert (=> b!7487727 m!8075852))

(declare-fun m!8075854 () Bool)

(assert (=> b!7487727 m!8075854))

(declare-fun m!8075856 () Bool)

(assert (=> b!7487727 m!8075856))

(declare-fun m!8075858 () Bool)

(assert (=> b!7487727 m!8075858))

(declare-fun m!8075860 () Bool)

(assert (=> b!7487720 m!8075860))

(declare-fun m!8075862 () Bool)

(assert (=> b!7487724 m!8075862))

(declare-fun m!8075864 () Bool)

(assert (=> start!725032 m!8075864))

(declare-fun m!8075866 () Bool)

(assert (=> b!7487716 m!8075866))

(declare-fun m!8075868 () Bool)

(assert (=> b!7487716 m!8075868))

(declare-fun m!8075870 () Bool)

(assert (=> b!7487716 m!8075870))

(declare-fun m!8075872 () Bool)

(assert (=> b!7487716 m!8075872))

(assert (=> b!7487716 m!8075866))

(declare-fun m!8075874 () Bool)

(assert (=> b!7487716 m!8075874))

(push 1)

(assert (not b!7487719))

(assert (not b!7487715))

(assert (not b!7487720))

(assert (not b!7487712))

(assert (not b!7487726))

(assert (not b!7487714))

(assert (not b!7487713))

(assert (not b!7487721))

(assert (not b!7487722))

(assert tp_is_empty!49541)

(assert (not b!7487727))

(assert (not b!7487725))

(assert (not b!7487724))

(assert (not b!7487718))

(assert (not start!725032))

(assert (not b!7487716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7487821 () Bool)

(declare-fun e!4465409 () Bool)

(declare-fun e!4465407 () Bool)

(assert (=> b!7487821 (= e!4465409 e!4465407)))

(declare-fun res!3003600 () Bool)

(assert (=> b!7487821 (=> (not res!3003600) (not e!4465407))))

(declare-fun lt!2629000 () Bool)

(assert (=> b!7487821 (= res!3003600 (not lt!2629000))))

(declare-fun b!7487822 () Bool)

(declare-fun e!4465405 () Bool)

(declare-fun derivativeStep!5621 (Regex!19626 C!39526) Regex!19626)

(declare-fun head!15361 (List!72340) C!39526)

(declare-fun tail!14930 (List!72340) List!72340)

(assert (=> b!7487822 (= e!4465405 (matchR!9388 (derivativeStep!5621 lt!2628973 (head!15361 s!13591)) (tail!14930 s!13591)))))

(declare-fun b!7487823 () Bool)

(declare-fun e!4465408 () Bool)

(assert (=> b!7487823 (= e!4465407 e!4465408)))

(declare-fun res!3003597 () Bool)

(assert (=> b!7487823 (=> res!3003597 e!4465408)))

(declare-fun call!687367 () Bool)

(assert (=> b!7487823 (= res!3003597 call!687367)))

(declare-fun b!7487824 () Bool)

(declare-fun e!4465406 () Bool)

(assert (=> b!7487824 (= e!4465406 (not lt!2629000))))

(declare-fun b!7487825 () Bool)

(assert (=> b!7487825 (= e!4465408 (not (= (head!15361 s!13591) (c!1382689 lt!2628973))))))

(declare-fun b!7487826 () Bool)

(declare-fun res!3003602 () Bool)

(assert (=> b!7487826 (=> res!3003602 e!4465409)))

(declare-fun e!4465411 () Bool)

(assert (=> b!7487826 (= res!3003602 e!4465411)))

(declare-fun res!3003599 () Bool)

(assert (=> b!7487826 (=> (not res!3003599) (not e!4465411))))

(assert (=> b!7487826 (= res!3003599 lt!2629000)))

(declare-fun d!2300875 () Bool)

(declare-fun e!4465410 () Bool)

(assert (=> d!2300875 e!4465410))

(declare-fun c!1382697 () Bool)

(assert (=> d!2300875 (= c!1382697 (is-EmptyExpr!19626 lt!2628973))))

(assert (=> d!2300875 (= lt!2629000 e!4465405)))

(declare-fun c!1382699 () Bool)

(declare-fun isEmpty!41235 (List!72340) Bool)

(assert (=> d!2300875 (= c!1382699 (isEmpty!41235 s!13591))))

(assert (=> d!2300875 (validRegex!10140 lt!2628973)))

(assert (=> d!2300875 (= (matchR!9388 lt!2628973 s!13591) lt!2629000)))

(declare-fun b!7487820 () Bool)

(assert (=> b!7487820 (= e!4465411 (= (head!15361 s!13591) (c!1382689 lt!2628973)))))

(declare-fun b!7487827 () Bool)

(declare-fun res!3003598 () Bool)

(assert (=> b!7487827 (=> (not res!3003598) (not e!4465411))))

(assert (=> b!7487827 (= res!3003598 (isEmpty!41235 (tail!14930 s!13591)))))

(declare-fun b!7487828 () Bool)

(declare-fun res!3003604 () Bool)

(assert (=> b!7487828 (=> res!3003604 e!4465408)))

(assert (=> b!7487828 (= res!3003604 (not (isEmpty!41235 (tail!14930 s!13591))))))

(declare-fun b!7487829 () Bool)

(declare-fun res!3003603 () Bool)

(assert (=> b!7487829 (=> res!3003603 e!4465409)))

(assert (=> b!7487829 (= res!3003603 (not (is-ElementMatch!19626 lt!2628973)))))

(assert (=> b!7487829 (= e!4465406 e!4465409)))

(declare-fun bm!687362 () Bool)

(assert (=> bm!687362 (= call!687367 (isEmpty!41235 s!13591))))

(declare-fun b!7487830 () Bool)

(declare-fun nullable!8564 (Regex!19626) Bool)

(assert (=> b!7487830 (= e!4465405 (nullable!8564 lt!2628973))))

(declare-fun b!7487831 () Bool)

(declare-fun res!3003601 () Bool)

(assert (=> b!7487831 (=> (not res!3003601) (not e!4465411))))

(assert (=> b!7487831 (= res!3003601 (not call!687367))))

(declare-fun b!7487832 () Bool)

(assert (=> b!7487832 (= e!4465410 (= lt!2629000 call!687367))))

(declare-fun b!7487833 () Bool)

(assert (=> b!7487833 (= e!4465410 e!4465406)))

(declare-fun c!1382698 () Bool)

(assert (=> b!7487833 (= c!1382698 (is-EmptyLang!19626 lt!2628973))))

(assert (= (and d!2300875 c!1382699) b!7487830))

(assert (= (and d!2300875 (not c!1382699)) b!7487822))

(assert (= (and d!2300875 c!1382697) b!7487832))

(assert (= (and d!2300875 (not c!1382697)) b!7487833))

(assert (= (and b!7487833 c!1382698) b!7487824))

(assert (= (and b!7487833 (not c!1382698)) b!7487829))

(assert (= (and b!7487829 (not res!3003603)) b!7487826))

(assert (= (and b!7487826 res!3003599) b!7487831))

(assert (= (and b!7487831 res!3003601) b!7487827))

(assert (= (and b!7487827 res!3003598) b!7487820))

(assert (= (and b!7487826 (not res!3003602)) b!7487821))

(assert (= (and b!7487821 res!3003600) b!7487823))

(assert (= (and b!7487823 (not res!3003597)) b!7487828))

(assert (= (and b!7487828 (not res!3003604)) b!7487825))

(assert (= (or b!7487832 b!7487831 b!7487823) bm!687362))

(declare-fun m!8075904 () Bool)

(assert (=> d!2300875 m!8075904))

(declare-fun m!8075906 () Bool)

(assert (=> d!2300875 m!8075906))

(assert (=> bm!687362 m!8075904))

(declare-fun m!8075908 () Bool)

(assert (=> b!7487828 m!8075908))

(assert (=> b!7487828 m!8075908))

(declare-fun m!8075910 () Bool)

(assert (=> b!7487828 m!8075910))

(declare-fun m!8075912 () Bool)

(assert (=> b!7487820 m!8075912))

(declare-fun m!8075914 () Bool)

(assert (=> b!7487830 m!8075914))

(assert (=> b!7487822 m!8075912))

(assert (=> b!7487822 m!8075912))

(declare-fun m!8075916 () Bool)

(assert (=> b!7487822 m!8075916))

(assert (=> b!7487822 m!8075908))

(assert (=> b!7487822 m!8075916))

(assert (=> b!7487822 m!8075908))

(declare-fun m!8075918 () Bool)

(assert (=> b!7487822 m!8075918))

(assert (=> b!7487825 m!8075912))

(assert (=> b!7487827 m!8075908))

(assert (=> b!7487827 m!8075908))

(assert (=> b!7487827 m!8075910))

(assert (=> b!7487727 d!2300875))

(declare-fun d!2300879 () Bool)

(assert (=> d!2300879 (= (matchR!9388 lt!2628973 s!13591) (matchRSpec!4303 lt!2628973 s!13591))))

(declare-fun lt!2629003 () Unit!166083)

(declare-fun choose!57872 (Regex!19626 List!72340) Unit!166083)

(assert (=> d!2300879 (= lt!2629003 (choose!57872 lt!2628973 s!13591))))

(assert (=> d!2300879 (validRegex!10140 lt!2628973)))

(assert (=> d!2300879 (= (mainMatchTheorem!4297 lt!2628973 s!13591) lt!2629003)))

(declare-fun bs!1934388 () Bool)

(assert (= bs!1934388 d!2300879))

(assert (=> bs!1934388 m!8075858))

(assert (=> bs!1934388 m!8075856))

(declare-fun m!8075920 () Bool)

(assert (=> bs!1934388 m!8075920))

(assert (=> bs!1934388 m!8075906))

(assert (=> b!7487727 d!2300879))

(declare-fun bs!1934390 () Bool)

(declare-fun b!7487902 () Bool)

(assert (= bs!1934390 (and b!7487902 b!7487716)))

(declare-fun lambda!463930 () Int)

(assert (=> bs!1934390 (not (= lambda!463930 lambda!463922))))

(assert (=> b!7487902 true))

(assert (=> b!7487902 true))

(declare-fun bs!1934391 () Bool)

(declare-fun b!7487911 () Bool)

(assert (= bs!1934391 (and b!7487911 b!7487716)))

(declare-fun lambda!463931 () Int)

(assert (=> bs!1934391 (not (= lambda!463931 lambda!463922))))

(declare-fun bs!1934392 () Bool)

(assert (= bs!1934392 (and b!7487911 b!7487902)))

(assert (=> bs!1934392 (not (= lambda!463931 lambda!463930))))

(assert (=> b!7487911 true))

(assert (=> b!7487911 true))

(declare-fun e!4465463 () Bool)

(declare-fun call!687385 () Bool)

(assert (=> b!7487902 (= e!4465463 call!687385)))

(declare-fun b!7487903 () Bool)

(declare-fun res!3003641 () Bool)

(assert (=> b!7487903 (=> res!3003641 e!4465463)))

(declare-fun call!687384 () Bool)

(assert (=> b!7487903 (= res!3003641 call!687384)))

(declare-fun e!4465459 () Bool)

(assert (=> b!7487903 (= e!4465459 e!4465463)))

(declare-fun b!7487904 () Bool)

(declare-fun c!1382716 () Bool)

(assert (=> b!7487904 (= c!1382716 (is-Union!19626 lt!2628973))))

(declare-fun e!4465458 () Bool)

(declare-fun e!4465460 () Bool)

(assert (=> b!7487904 (= e!4465458 e!4465460)))

(declare-fun d!2300881 () Bool)

(declare-fun c!1382718 () Bool)

(assert (=> d!2300881 (= c!1382718 (is-EmptyExpr!19626 lt!2628973))))

(declare-fun e!4465461 () Bool)

(assert (=> d!2300881 (= (matchRSpec!4303 lt!2628973 s!13591) e!4465461)))

(declare-fun c!1382717 () Bool)

(declare-fun bm!687379 () Bool)

(assert (=> bm!687379 (= call!687385 (Exists!4243 (ite c!1382717 lambda!463930 lambda!463931)))))

(declare-fun b!7487905 () Bool)

(assert (=> b!7487905 (= e!4465461 call!687384)))

(declare-fun b!7487906 () Bool)

(declare-fun e!4465464 () Bool)

(assert (=> b!7487906 (= e!4465460 e!4465464)))

(declare-fun res!3003642 () Bool)

(assert (=> b!7487906 (= res!3003642 (matchRSpec!4303 (regOne!39765 lt!2628973) s!13591))))

(assert (=> b!7487906 (=> res!3003642 e!4465464)))

(declare-fun b!7487907 () Bool)

(declare-fun c!1382719 () Bool)

(assert (=> b!7487907 (= c!1382719 (is-ElementMatch!19626 lt!2628973))))

(declare-fun e!4465462 () Bool)

(assert (=> b!7487907 (= e!4465462 e!4465458)))

(declare-fun bm!687380 () Bool)

(assert (=> bm!687380 (= call!687384 (isEmpty!41235 s!13591))))

(declare-fun b!7487908 () Bool)

(assert (=> b!7487908 (= e!4465460 e!4465459)))

(assert (=> b!7487908 (= c!1382717 (is-Star!19626 lt!2628973))))

(declare-fun b!7487909 () Bool)

(assert (=> b!7487909 (= e!4465461 e!4465462)))

(declare-fun res!3003643 () Bool)

(assert (=> b!7487909 (= res!3003643 (not (is-EmptyLang!19626 lt!2628973)))))

(assert (=> b!7487909 (=> (not res!3003643) (not e!4465462))))

(declare-fun b!7487910 () Bool)

(assert (=> b!7487910 (= e!4465458 (= s!13591 (Cons!72216 (c!1382689 lt!2628973) Nil!72216)))))

(assert (=> b!7487911 (= e!4465459 call!687385)))

(declare-fun b!7487912 () Bool)

(assert (=> b!7487912 (= e!4465464 (matchRSpec!4303 (regTwo!39765 lt!2628973) s!13591))))

(assert (= (and d!2300881 c!1382718) b!7487905))

(assert (= (and d!2300881 (not c!1382718)) b!7487909))

(assert (= (and b!7487909 res!3003643) b!7487907))

(assert (= (and b!7487907 c!1382719) b!7487910))

(assert (= (and b!7487907 (not c!1382719)) b!7487904))

(assert (= (and b!7487904 c!1382716) b!7487906))

(assert (= (and b!7487904 (not c!1382716)) b!7487908))

(assert (= (and b!7487906 (not res!3003642)) b!7487912))

(assert (= (and b!7487908 c!1382717) b!7487903))

(assert (= (and b!7487908 (not c!1382717)) b!7487911))

(assert (= (and b!7487903 (not res!3003641)) b!7487902))

(assert (= (or b!7487902 b!7487911) bm!687379))

(assert (= (or b!7487905 b!7487903) bm!687380))

(declare-fun m!8075936 () Bool)

(assert (=> bm!687379 m!8075936))

(declare-fun m!8075938 () Bool)

(assert (=> b!7487906 m!8075938))

(assert (=> bm!687380 m!8075904))

(declare-fun m!8075940 () Bool)

(assert (=> b!7487912 m!8075940))

(assert (=> b!7487727 d!2300881))

(declare-fun bs!1934393 () Bool)

(declare-fun b!7487913 () Bool)

(assert (= bs!1934393 (and b!7487913 b!7487716)))

(declare-fun lambda!463932 () Int)

(assert (=> bs!1934393 (not (= lambda!463932 lambda!463922))))

(declare-fun bs!1934394 () Bool)

(assert (= bs!1934394 (and b!7487913 b!7487902)))

(assert (=> bs!1934394 (= (and (= (reg!19955 lt!2628976) (reg!19955 lt!2628973)) (= lt!2628976 lt!2628973)) (= lambda!463932 lambda!463930))))

(declare-fun bs!1934395 () Bool)

(assert (= bs!1934395 (and b!7487913 b!7487911)))

(assert (=> bs!1934395 (not (= lambda!463932 lambda!463931))))

(assert (=> b!7487913 true))

(assert (=> b!7487913 true))

(declare-fun bs!1934396 () Bool)

(declare-fun b!7487922 () Bool)

(assert (= bs!1934396 (and b!7487922 b!7487716)))

(declare-fun lambda!463933 () Int)

(assert (=> bs!1934396 (not (= lambda!463933 lambda!463922))))

(declare-fun bs!1934397 () Bool)

(assert (= bs!1934397 (and b!7487922 b!7487902)))

(assert (=> bs!1934397 (not (= lambda!463933 lambda!463930))))

(declare-fun bs!1934398 () Bool)

(assert (= bs!1934398 (and b!7487922 b!7487911)))

(assert (=> bs!1934398 (= (and (= (regOne!39764 lt!2628976) (regOne!39764 lt!2628973)) (= (regTwo!39764 lt!2628976) (regTwo!39764 lt!2628973))) (= lambda!463933 lambda!463931))))

(declare-fun bs!1934399 () Bool)

(assert (= bs!1934399 (and b!7487922 b!7487913)))

(assert (=> bs!1934399 (not (= lambda!463933 lambda!463932))))

(assert (=> b!7487922 true))

(assert (=> b!7487922 true))

(declare-fun e!4465470 () Bool)

(declare-fun call!687387 () Bool)

(assert (=> b!7487913 (= e!4465470 call!687387)))

(declare-fun b!7487914 () Bool)

(declare-fun res!3003644 () Bool)

(assert (=> b!7487914 (=> res!3003644 e!4465470)))

(declare-fun call!687386 () Bool)

(assert (=> b!7487914 (= res!3003644 call!687386)))

(declare-fun e!4465466 () Bool)

(assert (=> b!7487914 (= e!4465466 e!4465470)))

(declare-fun b!7487915 () Bool)

(declare-fun c!1382720 () Bool)

(assert (=> b!7487915 (= c!1382720 (is-Union!19626 lt!2628976))))

(declare-fun e!4465465 () Bool)

(declare-fun e!4465467 () Bool)

(assert (=> b!7487915 (= e!4465465 e!4465467)))

(declare-fun d!2300889 () Bool)

(declare-fun c!1382722 () Bool)

(assert (=> d!2300889 (= c!1382722 (is-EmptyExpr!19626 lt!2628976))))

(declare-fun e!4465468 () Bool)

(assert (=> d!2300889 (= (matchRSpec!4303 lt!2628976 s!13591) e!4465468)))

(declare-fun bm!687381 () Bool)

(declare-fun c!1382721 () Bool)

(assert (=> bm!687381 (= call!687387 (Exists!4243 (ite c!1382721 lambda!463932 lambda!463933)))))

(declare-fun b!7487916 () Bool)

(assert (=> b!7487916 (= e!4465468 call!687386)))

(declare-fun b!7487917 () Bool)

(declare-fun e!4465471 () Bool)

(assert (=> b!7487917 (= e!4465467 e!4465471)))

(declare-fun res!3003645 () Bool)

(assert (=> b!7487917 (= res!3003645 (matchRSpec!4303 (regOne!39765 lt!2628976) s!13591))))

(assert (=> b!7487917 (=> res!3003645 e!4465471)))

(declare-fun b!7487918 () Bool)

(declare-fun c!1382723 () Bool)

(assert (=> b!7487918 (= c!1382723 (is-ElementMatch!19626 lt!2628976))))

(declare-fun e!4465469 () Bool)

(assert (=> b!7487918 (= e!4465469 e!4465465)))

(declare-fun bm!687382 () Bool)

(assert (=> bm!687382 (= call!687386 (isEmpty!41235 s!13591))))

(declare-fun b!7487919 () Bool)

(assert (=> b!7487919 (= e!4465467 e!4465466)))

(assert (=> b!7487919 (= c!1382721 (is-Star!19626 lt!2628976))))

(declare-fun b!7487920 () Bool)

(assert (=> b!7487920 (= e!4465468 e!4465469)))

(declare-fun res!3003646 () Bool)

(assert (=> b!7487920 (= res!3003646 (not (is-EmptyLang!19626 lt!2628976)))))

(assert (=> b!7487920 (=> (not res!3003646) (not e!4465469))))

(declare-fun b!7487921 () Bool)

(assert (=> b!7487921 (= e!4465465 (= s!13591 (Cons!72216 (c!1382689 lt!2628976) Nil!72216)))))

(assert (=> b!7487922 (= e!4465466 call!687387)))

(declare-fun b!7487923 () Bool)

(assert (=> b!7487923 (= e!4465471 (matchRSpec!4303 (regTwo!39765 lt!2628976) s!13591))))

(assert (= (and d!2300889 c!1382722) b!7487916))

(assert (= (and d!2300889 (not c!1382722)) b!7487920))

(assert (= (and b!7487920 res!3003646) b!7487918))

(assert (= (and b!7487918 c!1382723) b!7487921))

(assert (= (and b!7487918 (not c!1382723)) b!7487915))

(assert (= (and b!7487915 c!1382720) b!7487917))

(assert (= (and b!7487915 (not c!1382720)) b!7487919))

(assert (= (and b!7487917 (not res!3003645)) b!7487923))

(assert (= (and b!7487919 c!1382721) b!7487914))

(assert (= (and b!7487919 (not c!1382721)) b!7487922))

(assert (= (and b!7487914 (not res!3003644)) b!7487913))

(assert (= (or b!7487913 b!7487922) bm!687381))

(assert (= (or b!7487916 b!7487914) bm!687382))

(declare-fun m!8075942 () Bool)

(assert (=> bm!687381 m!8075942))

(declare-fun m!8075944 () Bool)

(assert (=> b!7487917 m!8075944))

(assert (=> bm!687382 m!8075904))

(declare-fun m!8075946 () Bool)

(assert (=> b!7487923 m!8075946))

(assert (=> b!7487727 d!2300889))

(declare-fun d!2300891 () Bool)

(assert (=> d!2300891 (= (matchR!9388 lt!2628976 s!13591) (matchRSpec!4303 lt!2628976 s!13591))))

(declare-fun lt!2629004 () Unit!166083)

(assert (=> d!2300891 (= lt!2629004 (choose!57872 lt!2628976 s!13591))))

(assert (=> d!2300891 (validRegex!10140 lt!2628976)))

(assert (=> d!2300891 (= (mainMatchTheorem!4297 lt!2628976 s!13591) lt!2629004)))

(declare-fun bs!1934400 () Bool)

(assert (= bs!1934400 d!2300891))

(assert (=> bs!1934400 m!8075852))

(assert (=> bs!1934400 m!8075850))

(declare-fun m!8075948 () Bool)

(assert (=> bs!1934400 m!8075948))

(declare-fun m!8075950 () Bool)

(assert (=> bs!1934400 m!8075950))

(assert (=> b!7487727 d!2300891))

(declare-fun b!7487925 () Bool)

(declare-fun e!4465476 () Bool)

(declare-fun e!4465474 () Bool)

(assert (=> b!7487925 (= e!4465476 e!4465474)))

(declare-fun res!3003650 () Bool)

(assert (=> b!7487925 (=> (not res!3003650) (not e!4465474))))

(declare-fun lt!2629005 () Bool)

(assert (=> b!7487925 (= res!3003650 (not lt!2629005))))

(declare-fun b!7487926 () Bool)

(declare-fun e!4465472 () Bool)

(assert (=> b!7487926 (= e!4465472 (matchR!9388 (derivativeStep!5621 lt!2628976 (head!15361 s!13591)) (tail!14930 s!13591)))))

(declare-fun b!7487927 () Bool)

(declare-fun e!4465475 () Bool)

(assert (=> b!7487927 (= e!4465474 e!4465475)))

(declare-fun res!3003647 () Bool)

(assert (=> b!7487927 (=> res!3003647 e!4465475)))

(declare-fun call!687388 () Bool)

(assert (=> b!7487927 (= res!3003647 call!687388)))

(declare-fun b!7487928 () Bool)

(declare-fun e!4465473 () Bool)

(assert (=> b!7487928 (= e!4465473 (not lt!2629005))))

(declare-fun b!7487929 () Bool)

(assert (=> b!7487929 (= e!4465475 (not (= (head!15361 s!13591) (c!1382689 lt!2628976))))))

(declare-fun b!7487930 () Bool)

(declare-fun res!3003652 () Bool)

(assert (=> b!7487930 (=> res!3003652 e!4465476)))

(declare-fun e!4465478 () Bool)

(assert (=> b!7487930 (= res!3003652 e!4465478)))

(declare-fun res!3003649 () Bool)

(assert (=> b!7487930 (=> (not res!3003649) (not e!4465478))))

(assert (=> b!7487930 (= res!3003649 lt!2629005)))

(declare-fun d!2300893 () Bool)

(declare-fun e!4465477 () Bool)

(assert (=> d!2300893 e!4465477))

(declare-fun c!1382724 () Bool)

(assert (=> d!2300893 (= c!1382724 (is-EmptyExpr!19626 lt!2628976))))

(assert (=> d!2300893 (= lt!2629005 e!4465472)))

(declare-fun c!1382726 () Bool)

(assert (=> d!2300893 (= c!1382726 (isEmpty!41235 s!13591))))

(assert (=> d!2300893 (validRegex!10140 lt!2628976)))

(assert (=> d!2300893 (= (matchR!9388 lt!2628976 s!13591) lt!2629005)))

(declare-fun b!7487924 () Bool)

(assert (=> b!7487924 (= e!4465478 (= (head!15361 s!13591) (c!1382689 lt!2628976)))))

(declare-fun b!7487931 () Bool)

(declare-fun res!3003648 () Bool)

(assert (=> b!7487931 (=> (not res!3003648) (not e!4465478))))

(assert (=> b!7487931 (= res!3003648 (isEmpty!41235 (tail!14930 s!13591)))))

(declare-fun b!7487932 () Bool)

(declare-fun res!3003654 () Bool)

(assert (=> b!7487932 (=> res!3003654 e!4465475)))

(assert (=> b!7487932 (= res!3003654 (not (isEmpty!41235 (tail!14930 s!13591))))))

(declare-fun b!7487933 () Bool)

(declare-fun res!3003653 () Bool)

(assert (=> b!7487933 (=> res!3003653 e!4465476)))

(assert (=> b!7487933 (= res!3003653 (not (is-ElementMatch!19626 lt!2628976)))))

(assert (=> b!7487933 (= e!4465473 e!4465476)))

(declare-fun bm!687383 () Bool)

(assert (=> bm!687383 (= call!687388 (isEmpty!41235 s!13591))))

(declare-fun b!7487934 () Bool)

(assert (=> b!7487934 (= e!4465472 (nullable!8564 lt!2628976))))

(declare-fun b!7487935 () Bool)

(declare-fun res!3003651 () Bool)

(assert (=> b!7487935 (=> (not res!3003651) (not e!4465478))))

(assert (=> b!7487935 (= res!3003651 (not call!687388))))

(declare-fun b!7487936 () Bool)

(assert (=> b!7487936 (= e!4465477 (= lt!2629005 call!687388))))

(declare-fun b!7487937 () Bool)

(assert (=> b!7487937 (= e!4465477 e!4465473)))

(declare-fun c!1382725 () Bool)

(assert (=> b!7487937 (= c!1382725 (is-EmptyLang!19626 lt!2628976))))

(assert (= (and d!2300893 c!1382726) b!7487934))

(assert (= (and d!2300893 (not c!1382726)) b!7487926))

(assert (= (and d!2300893 c!1382724) b!7487936))

(assert (= (and d!2300893 (not c!1382724)) b!7487937))

(assert (= (and b!7487937 c!1382725) b!7487928))

(assert (= (and b!7487937 (not c!1382725)) b!7487933))

(assert (= (and b!7487933 (not res!3003653)) b!7487930))

(assert (= (and b!7487930 res!3003649) b!7487935))

(assert (= (and b!7487935 res!3003651) b!7487931))

(assert (= (and b!7487931 res!3003648) b!7487924))

(assert (= (and b!7487930 (not res!3003652)) b!7487925))

(assert (= (and b!7487925 res!3003650) b!7487927))

(assert (= (and b!7487927 (not res!3003647)) b!7487932))

(assert (= (and b!7487932 (not res!3003654)) b!7487929))

(assert (= (or b!7487936 b!7487935 b!7487927) bm!687383))

(assert (=> d!2300893 m!8075904))

(assert (=> d!2300893 m!8075950))

(assert (=> bm!687383 m!8075904))

(assert (=> b!7487932 m!8075908))

(assert (=> b!7487932 m!8075908))

(assert (=> b!7487932 m!8075910))

(assert (=> b!7487924 m!8075912))

(declare-fun m!8075952 () Bool)

(assert (=> b!7487934 m!8075952))

(assert (=> b!7487926 m!8075912))

(assert (=> b!7487926 m!8075912))

(declare-fun m!8075954 () Bool)

(assert (=> b!7487926 m!8075954))

(assert (=> b!7487926 m!8075908))

(assert (=> b!7487926 m!8075954))

(assert (=> b!7487926 m!8075908))

(declare-fun m!8075956 () Bool)

(assert (=> b!7487926 m!8075956))

(assert (=> b!7487929 m!8075912))

(assert (=> b!7487931 m!8075908))

(assert (=> b!7487931 m!8075908))

(assert (=> b!7487931 m!8075910))

(assert (=> b!7487727 d!2300893))

(declare-fun d!2300895 () Bool)

(declare-fun isEmpty!41236 (Option!17177) Bool)

(assert (=> d!2300895 (= (isDefined!13866 (findConcatSeparation!3299 lt!2628974 rTail!78 Nil!72216 s!13591 s!13591)) (not (isEmpty!41236 (findConcatSeparation!3299 lt!2628974 rTail!78 Nil!72216 s!13591 s!13591))))))

(declare-fun bs!1934401 () Bool)

(assert (= bs!1934401 d!2300895))

(assert (=> bs!1934401 m!8075866))

(declare-fun m!8075958 () Bool)

(assert (=> bs!1934401 m!8075958))

(assert (=> b!7487716 d!2300895))

(declare-fun d!2300897 () Bool)

(declare-fun choose!57873 (Int) Bool)

(assert (=> d!2300897 (= (Exists!4243 lambda!463922) (choose!57873 lambda!463922))))

(declare-fun bs!1934402 () Bool)

(assert (= bs!1934402 d!2300897))

(declare-fun m!8075960 () Bool)

(assert (=> bs!1934402 m!8075960))

(assert (=> b!7487716 d!2300897))

(declare-fun b!7487974 () Bool)

(declare-fun e!4465502 () Option!17177)

(assert (=> b!7487974 (= e!4465502 None!17176)))

(declare-fun b!7487975 () Bool)

(declare-fun lt!2629018 () Unit!166083)

(declare-fun lt!2629020 () Unit!166083)

(assert (=> b!7487975 (= lt!2629018 lt!2629020)))

(declare-fun ++!17234 (List!72340 List!72340) List!72340)

(assert (=> b!7487975 (= (++!17234 (++!17234 Nil!72216 (Cons!72216 (h!78664 s!13591) Nil!72216)) (t!386909 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3110 (List!72340 C!39526 List!72340 List!72340) Unit!166083)

(assert (=> b!7487975 (= lt!2629020 (lemmaMoveElementToOtherListKeepsConcatEq!3110 Nil!72216 (h!78664 s!13591) (t!386909 s!13591) s!13591))))

(assert (=> b!7487975 (= e!4465502 (findConcatSeparation!3299 lt!2628974 rTail!78 (++!17234 Nil!72216 (Cons!72216 (h!78664 s!13591) Nil!72216)) (t!386909 s!13591) s!13591))))

(declare-fun b!7487976 () Bool)

(declare-fun res!3003676 () Bool)

(declare-fun e!4465500 () Bool)

(assert (=> b!7487976 (=> (not res!3003676) (not e!4465500))))

(declare-fun lt!2629019 () Option!17177)

(declare-fun get!25297 (Option!17177) tuple2!68690)

(assert (=> b!7487976 (= res!3003676 (matchR!9388 rTail!78 (_2!37648 (get!25297 lt!2629019))))))

(declare-fun b!7487977 () Bool)

(declare-fun e!4465501 () Bool)

(assert (=> b!7487977 (= e!4465501 (not (isDefined!13866 lt!2629019)))))

(declare-fun b!7487978 () Bool)

(declare-fun e!4465499 () Option!17177)

(assert (=> b!7487978 (= e!4465499 e!4465502)))

(declare-fun c!1382735 () Bool)

(assert (=> b!7487978 (= c!1382735 (is-Nil!72216 s!13591))))

(declare-fun d!2300899 () Bool)

(assert (=> d!2300899 e!4465501))

(declare-fun res!3003677 () Bool)

(assert (=> d!2300899 (=> res!3003677 e!4465501)))

(assert (=> d!2300899 (= res!3003677 e!4465500)))

(declare-fun res!3003678 () Bool)

(assert (=> d!2300899 (=> (not res!3003678) (not e!4465500))))

(assert (=> d!2300899 (= res!3003678 (isDefined!13866 lt!2629019))))

(assert (=> d!2300899 (= lt!2629019 e!4465499)))

(declare-fun c!1382736 () Bool)

(declare-fun e!4465503 () Bool)

(assert (=> d!2300899 (= c!1382736 e!4465503)))

(declare-fun res!3003679 () Bool)

(assert (=> d!2300899 (=> (not res!3003679) (not e!4465503))))

(assert (=> d!2300899 (= res!3003679 (matchR!9388 lt!2628974 Nil!72216))))

(assert (=> d!2300899 (validRegex!10140 lt!2628974)))

(assert (=> d!2300899 (= (findConcatSeparation!3299 lt!2628974 rTail!78 Nil!72216 s!13591 s!13591) lt!2629019)))

(declare-fun b!7487979 () Bool)

(assert (=> b!7487979 (= e!4465499 (Some!17176 (tuple2!68691 Nil!72216 s!13591)))))

(declare-fun b!7487980 () Bool)

(assert (=> b!7487980 (= e!4465503 (matchR!9388 rTail!78 s!13591))))

(declare-fun b!7487981 () Bool)

(declare-fun res!3003675 () Bool)

(assert (=> b!7487981 (=> (not res!3003675) (not e!4465500))))

(assert (=> b!7487981 (= res!3003675 (matchR!9388 lt!2628974 (_1!37648 (get!25297 lt!2629019))))))

(declare-fun b!7487982 () Bool)

(assert (=> b!7487982 (= e!4465500 (= (++!17234 (_1!37648 (get!25297 lt!2629019)) (_2!37648 (get!25297 lt!2629019))) s!13591))))

(assert (= (and d!2300899 res!3003679) b!7487980))

(assert (= (and d!2300899 c!1382736) b!7487979))

(assert (= (and d!2300899 (not c!1382736)) b!7487978))

(assert (= (and b!7487978 c!1382735) b!7487974))

(assert (= (and b!7487978 (not c!1382735)) b!7487975))

(assert (= (and d!2300899 res!3003678) b!7487981))

(assert (= (and b!7487981 res!3003675) b!7487976))

(assert (= (and b!7487976 res!3003676) b!7487982))

(assert (= (and d!2300899 (not res!3003677)) b!7487977))

(declare-fun m!8075962 () Bool)

(assert (=> b!7487976 m!8075962))

(declare-fun m!8075964 () Bool)

(assert (=> b!7487976 m!8075964))

(declare-fun m!8075966 () Bool)

(assert (=> b!7487975 m!8075966))

(assert (=> b!7487975 m!8075966))

(declare-fun m!8075968 () Bool)

(assert (=> b!7487975 m!8075968))

(declare-fun m!8075970 () Bool)

(assert (=> b!7487975 m!8075970))

(assert (=> b!7487975 m!8075966))

(declare-fun m!8075972 () Bool)

(assert (=> b!7487975 m!8075972))

(declare-fun m!8075974 () Bool)

(assert (=> b!7487977 m!8075974))

(assert (=> b!7487982 m!8075962))

(declare-fun m!8075976 () Bool)

(assert (=> b!7487982 m!8075976))

(assert (=> d!2300899 m!8075974))

(declare-fun m!8075978 () Bool)

(assert (=> d!2300899 m!8075978))

(assert (=> d!2300899 m!8075874))

(declare-fun m!8075980 () Bool)

(assert (=> b!7487980 m!8075980))

(assert (=> b!7487981 m!8075962))

(declare-fun m!8075982 () Bool)

(assert (=> b!7487981 m!8075982))

(assert (=> b!7487716 d!2300899))

(declare-fun bs!1934403 () Bool)

(declare-fun d!2300901 () Bool)

(assert (= bs!1934403 (and d!2300901 b!7487911)))

(declare-fun lambda!463936 () Int)

(assert (=> bs!1934403 (not (= lambda!463936 lambda!463931))))

(declare-fun bs!1934404 () Bool)

(assert (= bs!1934404 (and d!2300901 b!7487913)))

(assert (=> bs!1934404 (not (= lambda!463936 lambda!463932))))

(declare-fun bs!1934405 () Bool)

(assert (= bs!1934405 (and d!2300901 b!7487902)))

(assert (=> bs!1934405 (not (= lambda!463936 lambda!463930))))

(declare-fun bs!1934406 () Bool)

(assert (= bs!1934406 (and d!2300901 b!7487716)))

(assert (=> bs!1934406 (= lambda!463936 lambda!463922)))

(declare-fun bs!1934407 () Bool)

(assert (= bs!1934407 (and d!2300901 b!7487922)))

(assert (=> bs!1934407 (not (= lambda!463936 lambda!463933))))

(assert (=> d!2300901 true))

(assert (=> d!2300901 true))

(assert (=> d!2300901 true))

(assert (=> d!2300901 (= (isDefined!13866 (findConcatSeparation!3299 lt!2628974 rTail!78 Nil!72216 s!13591 s!13591)) (Exists!4243 lambda!463936))))

(declare-fun lt!2629026 () Unit!166083)

(declare-fun choose!57874 (Regex!19626 Regex!19626 List!72340) Unit!166083)

(assert (=> d!2300901 (= lt!2629026 (choose!57874 lt!2628974 rTail!78 s!13591))))

(assert (=> d!2300901 (validRegex!10140 lt!2628974)))

(assert (=> d!2300901 (= (lemmaFindConcatSeparationEquivalentToExists!3057 lt!2628974 rTail!78 s!13591) lt!2629026)))

(declare-fun bs!1934408 () Bool)

(assert (= bs!1934408 d!2300901))

(assert (=> bs!1934408 m!8075874))

(assert (=> bs!1934408 m!8075866))

(assert (=> bs!1934408 m!8075868))

(assert (=> bs!1934408 m!8075866))

(declare-fun m!8076004 () Bool)

(assert (=> bs!1934408 m!8076004))

(declare-fun m!8076008 () Bool)

(assert (=> bs!1934408 m!8076008))

(assert (=> b!7487716 d!2300901))

(declare-fun b!7488014 () Bool)

(declare-fun e!4465529 () Bool)

(declare-fun call!687396 () Bool)

(assert (=> b!7488014 (= e!4465529 call!687396)))

(declare-fun b!7488015 () Bool)

(declare-fun e!4465528 () Bool)

(declare-fun call!687395 () Bool)

(assert (=> b!7488015 (= e!4465528 call!687395)))

(declare-fun b!7488016 () Bool)

(declare-fun e!4465526 () Bool)

(assert (=> b!7488016 (= e!4465526 call!687396)))

(declare-fun b!7488017 () Bool)

(declare-fun e!4465525 () Bool)

(declare-fun e!4465527 () Bool)

(assert (=> b!7488017 (= e!4465525 e!4465527)))

(declare-fun c!1382744 () Bool)

(assert (=> b!7488017 (= c!1382744 (is-Star!19626 lt!2628974))))

(declare-fun c!1382743 () Bool)

(declare-fun bm!687390 () Bool)

(assert (=> bm!687390 (= call!687395 (validRegex!10140 (ite c!1382744 (reg!19955 lt!2628974) (ite c!1382743 (regTwo!39765 lt!2628974) (regTwo!39764 lt!2628974)))))))

(declare-fun d!2300903 () Bool)

(declare-fun res!3003703 () Bool)

(assert (=> d!2300903 (=> res!3003703 e!4465525)))

(assert (=> d!2300903 (= res!3003703 (is-ElementMatch!19626 lt!2628974))))

(assert (=> d!2300903 (= (validRegex!10140 lt!2628974) e!4465525)))

(declare-fun b!7488018 () Bool)

(declare-fun res!3003699 () Bool)

(assert (=> b!7488018 (=> (not res!3003699) (not e!4465526))))

(declare-fun call!687397 () Bool)

(assert (=> b!7488018 (= res!3003699 call!687397)))

(declare-fun e!4465530 () Bool)

(assert (=> b!7488018 (= e!4465530 e!4465526)))

(declare-fun bm!687391 () Bool)

(assert (=> bm!687391 (= call!687397 (validRegex!10140 (ite c!1382743 (regOne!39765 lt!2628974) (regOne!39764 lt!2628974))))))

(declare-fun b!7488019 () Bool)

(declare-fun res!3003701 () Bool)

(declare-fun e!4465531 () Bool)

(assert (=> b!7488019 (=> res!3003701 e!4465531)))

(assert (=> b!7488019 (= res!3003701 (not (is-Concat!28471 lt!2628974)))))

(assert (=> b!7488019 (= e!4465530 e!4465531)))

(declare-fun b!7488020 () Bool)

(assert (=> b!7488020 (= e!4465531 e!4465529)))

(declare-fun res!3003700 () Bool)

(assert (=> b!7488020 (=> (not res!3003700) (not e!4465529))))

(assert (=> b!7488020 (= res!3003700 call!687397)))

(declare-fun bm!687392 () Bool)

(assert (=> bm!687392 (= call!687396 call!687395)))

(declare-fun b!7488021 () Bool)

(assert (=> b!7488021 (= e!4465527 e!4465530)))

(assert (=> b!7488021 (= c!1382743 (is-Union!19626 lt!2628974))))

(declare-fun b!7488022 () Bool)

(assert (=> b!7488022 (= e!4465527 e!4465528)))

(declare-fun res!3003702 () Bool)

(assert (=> b!7488022 (= res!3003702 (not (nullable!8564 (reg!19955 lt!2628974))))))

(assert (=> b!7488022 (=> (not res!3003702) (not e!4465528))))

(assert (= (and d!2300903 (not res!3003703)) b!7488017))

(assert (= (and b!7488017 c!1382744) b!7488022))

(assert (= (and b!7488017 (not c!1382744)) b!7488021))

(assert (= (and b!7488022 res!3003702) b!7488015))

(assert (= (and b!7488021 c!1382743) b!7488018))

(assert (= (and b!7488021 (not c!1382743)) b!7488019))

(assert (= (and b!7488018 res!3003699) b!7488016))

(assert (= (and b!7488019 (not res!3003701)) b!7488020))

(assert (= (and b!7488020 res!3003700) b!7488014))

(assert (= (or b!7488016 b!7488014) bm!687392))

(assert (= (or b!7488018 b!7488020) bm!687391))

(assert (= (or b!7488015 bm!687392) bm!687390))

(declare-fun m!8076010 () Bool)

(assert (=> bm!687390 m!8076010))

(declare-fun m!8076012 () Bool)

(assert (=> bm!687391 m!8076012))

(declare-fun m!8076014 () Bool)

(assert (=> b!7488022 m!8076014))

(assert (=> b!7487716 d!2300903))

(declare-fun b!7488023 () Bool)

(declare-fun e!4465536 () Bool)

(declare-fun call!687399 () Bool)

(assert (=> b!7488023 (= e!4465536 call!687399)))

(declare-fun b!7488024 () Bool)

(declare-fun e!4465535 () Bool)

(declare-fun call!687398 () Bool)

(assert (=> b!7488024 (= e!4465535 call!687398)))

(declare-fun b!7488025 () Bool)

(declare-fun e!4465533 () Bool)

(assert (=> b!7488025 (= e!4465533 call!687399)))

(declare-fun b!7488026 () Bool)

(declare-fun e!4465532 () Bool)

(declare-fun e!4465534 () Bool)

(assert (=> b!7488026 (= e!4465532 e!4465534)))

(declare-fun c!1382746 () Bool)

(assert (=> b!7488026 (= c!1382746 (is-Star!19626 r1!5845))))

(declare-fun c!1382745 () Bool)

(declare-fun bm!687393 () Bool)

(assert (=> bm!687393 (= call!687398 (validRegex!10140 (ite c!1382746 (reg!19955 r1!5845) (ite c!1382745 (regTwo!39765 r1!5845) (regTwo!39764 r1!5845)))))))

(declare-fun d!2300907 () Bool)

(declare-fun res!3003708 () Bool)

(assert (=> d!2300907 (=> res!3003708 e!4465532)))

(assert (=> d!2300907 (= res!3003708 (is-ElementMatch!19626 r1!5845))))

(assert (=> d!2300907 (= (validRegex!10140 r1!5845) e!4465532)))

(declare-fun b!7488027 () Bool)

(declare-fun res!3003704 () Bool)

(assert (=> b!7488027 (=> (not res!3003704) (not e!4465533))))

(declare-fun call!687400 () Bool)

(assert (=> b!7488027 (= res!3003704 call!687400)))

(declare-fun e!4465537 () Bool)

(assert (=> b!7488027 (= e!4465537 e!4465533)))

(declare-fun bm!687394 () Bool)

(assert (=> bm!687394 (= call!687400 (validRegex!10140 (ite c!1382745 (regOne!39765 r1!5845) (regOne!39764 r1!5845))))))

(declare-fun b!7488028 () Bool)

(declare-fun res!3003706 () Bool)

(declare-fun e!4465538 () Bool)

(assert (=> b!7488028 (=> res!3003706 e!4465538)))

(assert (=> b!7488028 (= res!3003706 (not (is-Concat!28471 r1!5845)))))

(assert (=> b!7488028 (= e!4465537 e!4465538)))

(declare-fun b!7488029 () Bool)

(assert (=> b!7488029 (= e!4465538 e!4465536)))

(declare-fun res!3003705 () Bool)

(assert (=> b!7488029 (=> (not res!3003705) (not e!4465536))))

(assert (=> b!7488029 (= res!3003705 call!687400)))

(declare-fun bm!687395 () Bool)

(assert (=> bm!687395 (= call!687399 call!687398)))

(declare-fun b!7488030 () Bool)

(assert (=> b!7488030 (= e!4465534 e!4465537)))

(assert (=> b!7488030 (= c!1382745 (is-Union!19626 r1!5845))))

(declare-fun b!7488031 () Bool)

(assert (=> b!7488031 (= e!4465534 e!4465535)))

(declare-fun res!3003707 () Bool)

(assert (=> b!7488031 (= res!3003707 (not (nullable!8564 (reg!19955 r1!5845))))))

(assert (=> b!7488031 (=> (not res!3003707) (not e!4465535))))

(assert (= (and d!2300907 (not res!3003708)) b!7488026))

(assert (= (and b!7488026 c!1382746) b!7488031))

(assert (= (and b!7488026 (not c!1382746)) b!7488030))

(assert (= (and b!7488031 res!3003707) b!7488024))

(assert (= (and b!7488030 c!1382745) b!7488027))

(assert (= (and b!7488030 (not c!1382745)) b!7488028))

(assert (= (and b!7488027 res!3003704) b!7488025))

(assert (= (and b!7488028 (not res!3003706)) b!7488029))

(assert (= (and b!7488029 res!3003705) b!7488023))

(assert (= (or b!7488025 b!7488023) bm!687395))

(assert (= (or b!7488027 b!7488029) bm!687394))

(assert (= (or b!7488024 bm!687395) bm!687393))

(declare-fun m!8076016 () Bool)

(assert (=> bm!687393 m!8076016))

(declare-fun m!8076018 () Bool)

(assert (=> bm!687394 m!8076018))

(declare-fun m!8076020 () Bool)

(assert (=> b!7488031 m!8076020))

(assert (=> start!725032 d!2300907))

(declare-fun b!7488032 () Bool)

(declare-fun e!4465543 () Bool)

(declare-fun call!687402 () Bool)

(assert (=> b!7488032 (= e!4465543 call!687402)))

(declare-fun b!7488033 () Bool)

(declare-fun e!4465542 () Bool)

(declare-fun call!687401 () Bool)

(assert (=> b!7488033 (= e!4465542 call!687401)))

(declare-fun b!7488034 () Bool)

(declare-fun e!4465540 () Bool)

(assert (=> b!7488034 (= e!4465540 call!687402)))

(declare-fun b!7488035 () Bool)

(declare-fun e!4465539 () Bool)

(declare-fun e!4465541 () Bool)

(assert (=> b!7488035 (= e!4465539 e!4465541)))

(declare-fun c!1382748 () Bool)

(assert (=> b!7488035 (= c!1382748 (is-Star!19626 rTail!78))))

(declare-fun bm!687396 () Bool)

(declare-fun c!1382747 () Bool)

(assert (=> bm!687396 (= call!687401 (validRegex!10140 (ite c!1382748 (reg!19955 rTail!78) (ite c!1382747 (regTwo!39765 rTail!78) (regTwo!39764 rTail!78)))))))

(declare-fun d!2300909 () Bool)

(declare-fun res!3003713 () Bool)

(assert (=> d!2300909 (=> res!3003713 e!4465539)))

(assert (=> d!2300909 (= res!3003713 (is-ElementMatch!19626 rTail!78))))

(assert (=> d!2300909 (= (validRegex!10140 rTail!78) e!4465539)))

(declare-fun b!7488036 () Bool)

(declare-fun res!3003709 () Bool)

(assert (=> b!7488036 (=> (not res!3003709) (not e!4465540))))

(declare-fun call!687403 () Bool)

(assert (=> b!7488036 (= res!3003709 call!687403)))

(declare-fun e!4465544 () Bool)

(assert (=> b!7488036 (= e!4465544 e!4465540)))

(declare-fun bm!687397 () Bool)

(assert (=> bm!687397 (= call!687403 (validRegex!10140 (ite c!1382747 (regOne!39765 rTail!78) (regOne!39764 rTail!78))))))

(declare-fun b!7488037 () Bool)

(declare-fun res!3003711 () Bool)

(declare-fun e!4465545 () Bool)

(assert (=> b!7488037 (=> res!3003711 e!4465545)))

(assert (=> b!7488037 (= res!3003711 (not (is-Concat!28471 rTail!78)))))

(assert (=> b!7488037 (= e!4465544 e!4465545)))

(declare-fun b!7488038 () Bool)

(assert (=> b!7488038 (= e!4465545 e!4465543)))

(declare-fun res!3003710 () Bool)

(assert (=> b!7488038 (=> (not res!3003710) (not e!4465543))))

(assert (=> b!7488038 (= res!3003710 call!687403)))

(declare-fun bm!687398 () Bool)

(assert (=> bm!687398 (= call!687402 call!687401)))

(declare-fun b!7488039 () Bool)

(assert (=> b!7488039 (= e!4465541 e!4465544)))

(assert (=> b!7488039 (= c!1382747 (is-Union!19626 rTail!78))))

(declare-fun b!7488040 () Bool)

(assert (=> b!7488040 (= e!4465541 e!4465542)))

(declare-fun res!3003712 () Bool)

(assert (=> b!7488040 (= res!3003712 (not (nullable!8564 (reg!19955 rTail!78))))))

(assert (=> b!7488040 (=> (not res!3003712) (not e!4465542))))

(assert (= (and d!2300909 (not res!3003713)) b!7488035))

(assert (= (and b!7488035 c!1382748) b!7488040))

(assert (= (and b!7488035 (not c!1382748)) b!7488039))

(assert (= (and b!7488040 res!3003712) b!7488033))

(assert (= (and b!7488039 c!1382747) b!7488036))

(assert (= (and b!7488039 (not c!1382747)) b!7488037))

(assert (= (and b!7488036 res!3003709) b!7488034))

(assert (= (and b!7488037 (not res!3003711)) b!7488038))

(assert (= (and b!7488038 res!3003710) b!7488032))

(assert (= (or b!7488034 b!7488032) bm!687398))

(assert (= (or b!7488036 b!7488038) bm!687397))

(assert (= (or b!7488033 bm!687398) bm!687396))

(declare-fun m!8076022 () Bool)

(assert (=> bm!687396 m!8076022))

(declare-fun m!8076024 () Bool)

(assert (=> bm!687397 m!8076024))

(declare-fun m!8076026 () Bool)

(assert (=> b!7488040 m!8076026))

(assert (=> b!7487720 d!2300909))

(declare-fun b!7488041 () Bool)

(declare-fun e!4465550 () Bool)

(declare-fun call!687405 () Bool)

(assert (=> b!7488041 (= e!4465550 call!687405)))

(declare-fun b!7488042 () Bool)

(declare-fun e!4465549 () Bool)

(declare-fun call!687404 () Bool)

(assert (=> b!7488042 (= e!4465549 call!687404)))

(declare-fun b!7488043 () Bool)

(declare-fun e!4465547 () Bool)

(assert (=> b!7488043 (= e!4465547 call!687405)))

(declare-fun b!7488044 () Bool)

(declare-fun e!4465546 () Bool)

(declare-fun e!4465548 () Bool)

(assert (=> b!7488044 (= e!4465546 e!4465548)))

(declare-fun c!1382750 () Bool)

(assert (=> b!7488044 (= c!1382750 (is-Star!19626 r2!5783))))

(declare-fun c!1382749 () Bool)

(declare-fun bm!687399 () Bool)

(assert (=> bm!687399 (= call!687404 (validRegex!10140 (ite c!1382750 (reg!19955 r2!5783) (ite c!1382749 (regTwo!39765 r2!5783) (regTwo!39764 r2!5783)))))))

(declare-fun d!2300911 () Bool)

(declare-fun res!3003718 () Bool)

(assert (=> d!2300911 (=> res!3003718 e!4465546)))

(assert (=> d!2300911 (= res!3003718 (is-ElementMatch!19626 r2!5783))))

(assert (=> d!2300911 (= (validRegex!10140 r2!5783) e!4465546)))

(declare-fun b!7488045 () Bool)

(declare-fun res!3003714 () Bool)

(assert (=> b!7488045 (=> (not res!3003714) (not e!4465547))))

(declare-fun call!687406 () Bool)

(assert (=> b!7488045 (= res!3003714 call!687406)))

(declare-fun e!4465551 () Bool)

(assert (=> b!7488045 (= e!4465551 e!4465547)))

(declare-fun bm!687400 () Bool)

(assert (=> bm!687400 (= call!687406 (validRegex!10140 (ite c!1382749 (regOne!39765 r2!5783) (regOne!39764 r2!5783))))))

(declare-fun b!7488046 () Bool)

(declare-fun res!3003716 () Bool)

(declare-fun e!4465552 () Bool)

(assert (=> b!7488046 (=> res!3003716 e!4465552)))

(assert (=> b!7488046 (= res!3003716 (not (is-Concat!28471 r2!5783)))))

(assert (=> b!7488046 (= e!4465551 e!4465552)))

(declare-fun b!7488047 () Bool)

(assert (=> b!7488047 (= e!4465552 e!4465550)))

(declare-fun res!3003715 () Bool)

(assert (=> b!7488047 (=> (not res!3003715) (not e!4465550))))

(assert (=> b!7488047 (= res!3003715 call!687406)))

(declare-fun bm!687401 () Bool)

(assert (=> bm!687401 (= call!687405 call!687404)))

(declare-fun b!7488048 () Bool)

(assert (=> b!7488048 (= e!4465548 e!4465551)))

(assert (=> b!7488048 (= c!1382749 (is-Union!19626 r2!5783))))

(declare-fun b!7488049 () Bool)

(assert (=> b!7488049 (= e!4465548 e!4465549)))

(declare-fun res!3003717 () Bool)

(assert (=> b!7488049 (= res!3003717 (not (nullable!8564 (reg!19955 r2!5783))))))

(assert (=> b!7488049 (=> (not res!3003717) (not e!4465549))))

(assert (= (and d!2300911 (not res!3003718)) b!7488044))

(assert (= (and b!7488044 c!1382750) b!7488049))

(assert (= (and b!7488044 (not c!1382750)) b!7488048))

(assert (= (and b!7488049 res!3003717) b!7488042))

(assert (= (and b!7488048 c!1382749) b!7488045))

(assert (= (and b!7488048 (not c!1382749)) b!7488046))

(assert (= (and b!7488045 res!3003714) b!7488043))

(assert (= (and b!7488046 (not res!3003716)) b!7488047))

(assert (= (and b!7488047 res!3003715) b!7488041))

(assert (= (or b!7488043 b!7488041) bm!687401))

(assert (= (or b!7488045 b!7488047) bm!687400))

(assert (= (or b!7488042 bm!687401) bm!687399))

(declare-fun m!8076028 () Bool)

(assert (=> bm!687399 m!8076028))

(declare-fun m!8076030 () Bool)

(assert (=> bm!687400 m!8076030))

(declare-fun m!8076032 () Bool)

(assert (=> b!7488049 m!8076032))

(assert (=> b!7487724 d!2300911))

(declare-fun b!7488062 () Bool)

(declare-fun e!4465555 () Bool)

(declare-fun tp!2173259 () Bool)

(assert (=> b!7488062 (= e!4465555 tp!2173259)))

(declare-fun b!7488060 () Bool)

(assert (=> b!7488060 (= e!4465555 tp_is_empty!49541)))

(declare-fun b!7488063 () Bool)

(declare-fun tp!2173256 () Bool)

(declare-fun tp!2173258 () Bool)

(assert (=> b!7488063 (= e!4465555 (and tp!2173256 tp!2173258))))

(declare-fun b!7488061 () Bool)

(declare-fun tp!2173260 () Bool)

(declare-fun tp!2173257 () Bool)

(assert (=> b!7488061 (= e!4465555 (and tp!2173260 tp!2173257))))

(assert (=> b!7487713 (= tp!2173187 e!4465555)))

(assert (= (and b!7487713 (is-ElementMatch!19626 (regOne!39765 rTail!78))) b!7488060))

(assert (= (and b!7487713 (is-Concat!28471 (regOne!39765 rTail!78))) b!7488061))

(assert (= (and b!7487713 (is-Star!19626 (regOne!39765 rTail!78))) b!7488062))

(assert (= (and b!7487713 (is-Union!19626 (regOne!39765 rTail!78))) b!7488063))

(declare-fun b!7488066 () Bool)

(declare-fun e!4465556 () Bool)

(declare-fun tp!2173264 () Bool)

(assert (=> b!7488066 (= e!4465556 tp!2173264)))

(declare-fun b!7488064 () Bool)

(assert (=> b!7488064 (= e!4465556 tp_is_empty!49541)))

(declare-fun b!7488067 () Bool)

(declare-fun tp!2173261 () Bool)

(declare-fun tp!2173263 () Bool)

(assert (=> b!7488067 (= e!4465556 (and tp!2173261 tp!2173263))))

(declare-fun b!7488065 () Bool)

(declare-fun tp!2173265 () Bool)

(declare-fun tp!2173262 () Bool)

(assert (=> b!7488065 (= e!4465556 (and tp!2173265 tp!2173262))))

(assert (=> b!7487713 (= tp!2173185 e!4465556)))

(assert (= (and b!7487713 (is-ElementMatch!19626 (regTwo!39765 rTail!78))) b!7488064))

(assert (= (and b!7487713 (is-Concat!28471 (regTwo!39765 rTail!78))) b!7488065))

(assert (= (and b!7487713 (is-Star!19626 (regTwo!39765 rTail!78))) b!7488066))

(assert (= (and b!7487713 (is-Union!19626 (regTwo!39765 rTail!78))) b!7488067))

(declare-fun b!7488070 () Bool)

(declare-fun e!4465557 () Bool)

(declare-fun tp!2173269 () Bool)

(assert (=> b!7488070 (= e!4465557 tp!2173269)))

(declare-fun b!7488068 () Bool)

(assert (=> b!7488068 (= e!4465557 tp_is_empty!49541)))

(declare-fun b!7488071 () Bool)

(declare-fun tp!2173266 () Bool)

(declare-fun tp!2173268 () Bool)

(assert (=> b!7488071 (= e!4465557 (and tp!2173266 tp!2173268))))

(declare-fun b!7488069 () Bool)

(declare-fun tp!2173270 () Bool)

(declare-fun tp!2173267 () Bool)

(assert (=> b!7488069 (= e!4465557 (and tp!2173270 tp!2173267))))

(assert (=> b!7487718 (= tp!2173195 e!4465557)))

(assert (= (and b!7487718 (is-ElementMatch!19626 (reg!19955 rTail!78))) b!7488068))

(assert (= (and b!7487718 (is-Concat!28471 (reg!19955 rTail!78))) b!7488069))

(assert (= (and b!7487718 (is-Star!19626 (reg!19955 rTail!78))) b!7488070))

(assert (= (and b!7487718 (is-Union!19626 (reg!19955 rTail!78))) b!7488071))

(declare-fun b!7488074 () Bool)

(declare-fun e!4465558 () Bool)

(declare-fun tp!2173274 () Bool)

(assert (=> b!7488074 (= e!4465558 tp!2173274)))

(declare-fun b!7488072 () Bool)

(assert (=> b!7488072 (= e!4465558 tp_is_empty!49541)))

(declare-fun b!7488075 () Bool)

(declare-fun tp!2173271 () Bool)

(declare-fun tp!2173273 () Bool)

(assert (=> b!7488075 (= e!4465558 (and tp!2173271 tp!2173273))))

(declare-fun b!7488073 () Bool)

(declare-fun tp!2173275 () Bool)

(declare-fun tp!2173272 () Bool)

(assert (=> b!7488073 (= e!4465558 (and tp!2173275 tp!2173272))))

(assert (=> b!7487712 (= tp!2173197 e!4465558)))

(assert (= (and b!7487712 (is-ElementMatch!19626 (regOne!39765 r2!5783))) b!7488072))

(assert (= (and b!7487712 (is-Concat!28471 (regOne!39765 r2!5783))) b!7488073))

(assert (= (and b!7487712 (is-Star!19626 (regOne!39765 r2!5783))) b!7488074))

(assert (= (and b!7487712 (is-Union!19626 (regOne!39765 r2!5783))) b!7488075))

(declare-fun b!7488078 () Bool)

(declare-fun e!4465559 () Bool)

(declare-fun tp!2173279 () Bool)

(assert (=> b!7488078 (= e!4465559 tp!2173279)))

(declare-fun b!7488076 () Bool)

(assert (=> b!7488076 (= e!4465559 tp_is_empty!49541)))

(declare-fun b!7488079 () Bool)

(declare-fun tp!2173276 () Bool)

(declare-fun tp!2173278 () Bool)

(assert (=> b!7488079 (= e!4465559 (and tp!2173276 tp!2173278))))

(declare-fun b!7488077 () Bool)

(declare-fun tp!2173280 () Bool)

(declare-fun tp!2173277 () Bool)

(assert (=> b!7488077 (= e!4465559 (and tp!2173280 tp!2173277))))

(assert (=> b!7487712 (= tp!2173188 e!4465559)))

(assert (= (and b!7487712 (is-ElementMatch!19626 (regTwo!39765 r2!5783))) b!7488076))

(assert (= (and b!7487712 (is-Concat!28471 (regTwo!39765 r2!5783))) b!7488077))

(assert (= (and b!7487712 (is-Star!19626 (regTwo!39765 r2!5783))) b!7488078))

(assert (= (and b!7487712 (is-Union!19626 (regTwo!39765 r2!5783))) b!7488079))

(declare-fun b!7488084 () Bool)

(declare-fun e!4465562 () Bool)

(declare-fun tp!2173283 () Bool)

(assert (=> b!7488084 (= e!4465562 (and tp_is_empty!49541 tp!2173283))))

(assert (=> b!7487722 (= tp!2173183 e!4465562)))

(assert (= (and b!7487722 (is-Cons!72216 (t!386909 s!13591))) b!7488084))

(declare-fun b!7488087 () Bool)

(declare-fun e!4465563 () Bool)

(declare-fun tp!2173287 () Bool)

(assert (=> b!7488087 (= e!4465563 tp!2173287)))

(declare-fun b!7488085 () Bool)

(assert (=> b!7488085 (= e!4465563 tp_is_empty!49541)))

(declare-fun b!7488088 () Bool)

(declare-fun tp!2173284 () Bool)

(declare-fun tp!2173286 () Bool)

(assert (=> b!7488088 (= e!4465563 (and tp!2173284 tp!2173286))))

(declare-fun b!7488086 () Bool)

(declare-fun tp!2173288 () Bool)

(declare-fun tp!2173285 () Bool)

(assert (=> b!7488086 (= e!4465563 (and tp!2173288 tp!2173285))))

(assert (=> b!7487721 (= tp!2173193 e!4465563)))

(assert (= (and b!7487721 (is-ElementMatch!19626 (regOne!39764 r2!5783))) b!7488085))

(assert (= (and b!7487721 (is-Concat!28471 (regOne!39764 r2!5783))) b!7488086))

(assert (= (and b!7487721 (is-Star!19626 (regOne!39764 r2!5783))) b!7488087))

(assert (= (and b!7487721 (is-Union!19626 (regOne!39764 r2!5783))) b!7488088))

(declare-fun b!7488091 () Bool)

(declare-fun e!4465564 () Bool)

(declare-fun tp!2173292 () Bool)

(assert (=> b!7488091 (= e!4465564 tp!2173292)))

(declare-fun b!7488089 () Bool)

(assert (=> b!7488089 (= e!4465564 tp_is_empty!49541)))

(declare-fun b!7488092 () Bool)

(declare-fun tp!2173289 () Bool)

(declare-fun tp!2173291 () Bool)

(assert (=> b!7488092 (= e!4465564 (and tp!2173289 tp!2173291))))

(declare-fun b!7488090 () Bool)

(declare-fun tp!2173293 () Bool)

(declare-fun tp!2173290 () Bool)

(assert (=> b!7488090 (= e!4465564 (and tp!2173293 tp!2173290))))

(assert (=> b!7487721 (= tp!2173196 e!4465564)))

(assert (= (and b!7487721 (is-ElementMatch!19626 (regTwo!39764 r2!5783))) b!7488089))

(assert (= (and b!7487721 (is-Concat!28471 (regTwo!39764 r2!5783))) b!7488090))

(assert (= (and b!7487721 (is-Star!19626 (regTwo!39764 r2!5783))) b!7488091))

(assert (= (and b!7487721 (is-Union!19626 (regTwo!39764 r2!5783))) b!7488092))

(declare-fun b!7488095 () Bool)

(declare-fun e!4465565 () Bool)

(declare-fun tp!2173297 () Bool)

(assert (=> b!7488095 (= e!4465565 tp!2173297)))

(declare-fun b!7488093 () Bool)

(assert (=> b!7488093 (= e!4465565 tp_is_empty!49541)))

(declare-fun b!7488096 () Bool)

(declare-fun tp!2173294 () Bool)

(declare-fun tp!2173296 () Bool)

(assert (=> b!7488096 (= e!4465565 (and tp!2173294 tp!2173296))))

(declare-fun b!7488094 () Bool)

(declare-fun tp!2173298 () Bool)

(declare-fun tp!2173295 () Bool)

(assert (=> b!7488094 (= e!4465565 (and tp!2173298 tp!2173295))))

(assert (=> b!7487726 (= tp!2173184 e!4465565)))

(assert (= (and b!7487726 (is-ElementMatch!19626 (regOne!39765 r1!5845))) b!7488093))

(assert (= (and b!7487726 (is-Concat!28471 (regOne!39765 r1!5845))) b!7488094))

(assert (= (and b!7487726 (is-Star!19626 (regOne!39765 r1!5845))) b!7488095))

(assert (= (and b!7487726 (is-Union!19626 (regOne!39765 r1!5845))) b!7488096))

(declare-fun b!7488099 () Bool)

(declare-fun e!4465566 () Bool)

(declare-fun tp!2173302 () Bool)

(assert (=> b!7488099 (= e!4465566 tp!2173302)))

(declare-fun b!7488097 () Bool)

(assert (=> b!7488097 (= e!4465566 tp_is_empty!49541)))

(declare-fun b!7488100 () Bool)

(declare-fun tp!2173299 () Bool)

(declare-fun tp!2173301 () Bool)

(assert (=> b!7488100 (= e!4465566 (and tp!2173299 tp!2173301))))

(declare-fun b!7488098 () Bool)

(declare-fun tp!2173303 () Bool)

(declare-fun tp!2173300 () Bool)

(assert (=> b!7488098 (= e!4465566 (and tp!2173303 tp!2173300))))

(assert (=> b!7487726 (= tp!2173192 e!4465566)))

(assert (= (and b!7487726 (is-ElementMatch!19626 (regTwo!39765 r1!5845))) b!7488097))

(assert (= (and b!7487726 (is-Concat!28471 (regTwo!39765 r1!5845))) b!7488098))

(assert (= (and b!7487726 (is-Star!19626 (regTwo!39765 r1!5845))) b!7488099))

(assert (= (and b!7487726 (is-Union!19626 (regTwo!39765 r1!5845))) b!7488100))

(declare-fun b!7488103 () Bool)

(declare-fun e!4465567 () Bool)

(declare-fun tp!2173307 () Bool)

(assert (=> b!7488103 (= e!4465567 tp!2173307)))

(declare-fun b!7488101 () Bool)

(assert (=> b!7488101 (= e!4465567 tp_is_empty!49541)))

(declare-fun b!7488104 () Bool)

(declare-fun tp!2173304 () Bool)

(declare-fun tp!2173306 () Bool)

(assert (=> b!7488104 (= e!4465567 (and tp!2173304 tp!2173306))))

(declare-fun b!7488102 () Bool)

(declare-fun tp!2173308 () Bool)

(declare-fun tp!2173305 () Bool)

(assert (=> b!7488102 (= e!4465567 (and tp!2173308 tp!2173305))))

(assert (=> b!7487715 (= tp!2173190 e!4465567)))

(assert (= (and b!7487715 (is-ElementMatch!19626 (regOne!39764 rTail!78))) b!7488101))

(assert (= (and b!7487715 (is-Concat!28471 (regOne!39764 rTail!78))) b!7488102))

(assert (= (and b!7487715 (is-Star!19626 (regOne!39764 rTail!78))) b!7488103))

(assert (= (and b!7487715 (is-Union!19626 (regOne!39764 rTail!78))) b!7488104))

(declare-fun b!7488107 () Bool)

(declare-fun e!4465568 () Bool)

(declare-fun tp!2173312 () Bool)

(assert (=> b!7488107 (= e!4465568 tp!2173312)))

(declare-fun b!7488105 () Bool)

(assert (=> b!7488105 (= e!4465568 tp_is_empty!49541)))

(declare-fun b!7488108 () Bool)

(declare-fun tp!2173309 () Bool)

(declare-fun tp!2173311 () Bool)

(assert (=> b!7488108 (= e!4465568 (and tp!2173309 tp!2173311))))

(declare-fun b!7488106 () Bool)

(declare-fun tp!2173313 () Bool)

(declare-fun tp!2173310 () Bool)

(assert (=> b!7488106 (= e!4465568 (and tp!2173313 tp!2173310))))

(assert (=> b!7487715 (= tp!2173189 e!4465568)))

(assert (= (and b!7487715 (is-ElementMatch!19626 (regTwo!39764 rTail!78))) b!7488105))

(assert (= (and b!7487715 (is-Concat!28471 (regTwo!39764 rTail!78))) b!7488106))

(assert (= (and b!7487715 (is-Star!19626 (regTwo!39764 rTail!78))) b!7488107))

(assert (= (and b!7487715 (is-Union!19626 (regTwo!39764 rTail!78))) b!7488108))

(declare-fun b!7488111 () Bool)

(declare-fun e!4465569 () Bool)

(declare-fun tp!2173317 () Bool)

(assert (=> b!7488111 (= e!4465569 tp!2173317)))

(declare-fun b!7488109 () Bool)

(assert (=> b!7488109 (= e!4465569 tp_is_empty!49541)))

(declare-fun b!7488112 () Bool)

(declare-fun tp!2173314 () Bool)

(declare-fun tp!2173316 () Bool)

(assert (=> b!7488112 (= e!4465569 (and tp!2173314 tp!2173316))))

(declare-fun b!7488110 () Bool)

(declare-fun tp!2173318 () Bool)

(declare-fun tp!2173315 () Bool)

(assert (=> b!7488110 (= e!4465569 (and tp!2173318 tp!2173315))))

(assert (=> b!7487725 (= tp!2173182 e!4465569)))

(assert (= (and b!7487725 (is-ElementMatch!19626 (regOne!39764 r1!5845))) b!7488109))

(assert (= (and b!7487725 (is-Concat!28471 (regOne!39764 r1!5845))) b!7488110))

(assert (= (and b!7487725 (is-Star!19626 (regOne!39764 r1!5845))) b!7488111))

(assert (= (and b!7487725 (is-Union!19626 (regOne!39764 r1!5845))) b!7488112))

(declare-fun b!7488115 () Bool)

(declare-fun e!4465572 () Bool)

(declare-fun tp!2173322 () Bool)

(assert (=> b!7488115 (= e!4465572 tp!2173322)))

(declare-fun b!7488113 () Bool)

(assert (=> b!7488113 (= e!4465572 tp_is_empty!49541)))

(declare-fun b!7488117 () Bool)

(declare-fun tp!2173319 () Bool)

(declare-fun tp!2173321 () Bool)

(assert (=> b!7488117 (= e!4465572 (and tp!2173319 tp!2173321))))

(declare-fun b!7488114 () Bool)

(declare-fun tp!2173323 () Bool)

(declare-fun tp!2173320 () Bool)

(assert (=> b!7488114 (= e!4465572 (and tp!2173323 tp!2173320))))

(assert (=> b!7487725 (= tp!2173194 e!4465572)))

(assert (= (and b!7487725 (is-ElementMatch!19626 (regTwo!39764 r1!5845))) b!7488113))

(assert (= (and b!7487725 (is-Concat!28471 (regTwo!39764 r1!5845))) b!7488114))

(assert (= (and b!7487725 (is-Star!19626 (regTwo!39764 r1!5845))) b!7488115))

(assert (= (and b!7487725 (is-Union!19626 (regTwo!39764 r1!5845))) b!7488117))

(declare-fun b!7488123 () Bool)

(declare-fun e!4465573 () Bool)

(declare-fun tp!2173327 () Bool)

(assert (=> b!7488123 (= e!4465573 tp!2173327)))

(declare-fun b!7488121 () Bool)

(assert (=> b!7488121 (= e!4465573 tp_is_empty!49541)))

(declare-fun b!7488124 () Bool)

(declare-fun tp!2173324 () Bool)

(declare-fun tp!2173326 () Bool)

(assert (=> b!7488124 (= e!4465573 (and tp!2173324 tp!2173326))))

(declare-fun b!7488122 () Bool)

(declare-fun tp!2173328 () Bool)

(declare-fun tp!2173325 () Bool)

(assert (=> b!7488122 (= e!4465573 (and tp!2173328 tp!2173325))))

(assert (=> b!7487714 (= tp!2173191 e!4465573)))

(assert (= (and b!7487714 (is-ElementMatch!19626 (reg!19955 r1!5845))) b!7488121))

(assert (= (and b!7487714 (is-Concat!28471 (reg!19955 r1!5845))) b!7488122))

(assert (= (and b!7487714 (is-Star!19626 (reg!19955 r1!5845))) b!7488123))

(assert (= (and b!7487714 (is-Union!19626 (reg!19955 r1!5845))) b!7488124))

(declare-fun b!7488127 () Bool)

(declare-fun e!4465574 () Bool)

(declare-fun tp!2173332 () Bool)

(assert (=> b!7488127 (= e!4465574 tp!2173332)))

(declare-fun b!7488125 () Bool)

(assert (=> b!7488125 (= e!4465574 tp_is_empty!49541)))

(declare-fun b!7488128 () Bool)

(declare-fun tp!2173329 () Bool)

(declare-fun tp!2173331 () Bool)

(assert (=> b!7488128 (= e!4465574 (and tp!2173329 tp!2173331))))

(declare-fun b!7488126 () Bool)

(declare-fun tp!2173333 () Bool)

(declare-fun tp!2173330 () Bool)

(assert (=> b!7488126 (= e!4465574 (and tp!2173333 tp!2173330))))

(assert (=> b!7487719 (= tp!2173186 e!4465574)))

(assert (= (and b!7487719 (is-ElementMatch!19626 (reg!19955 r2!5783))) b!7488125))

(assert (= (and b!7487719 (is-Concat!28471 (reg!19955 r2!5783))) b!7488126))

(assert (= (and b!7487719 (is-Star!19626 (reg!19955 r2!5783))) b!7488127))

(assert (= (and b!7487719 (is-Union!19626 (reg!19955 r2!5783))) b!7488128))

(push 1)

(assert (not b!7488079))

(assert (not b!7488074))

(assert (not b!7488106))

(assert (not b!7488107))

(assert (not b!7488078))

(assert (not b!7488061))

(assert (not bm!687391))

(assert (not d!2300897))

(assert (not b!7487975))

(assert (not bm!687379))

(assert (not b!7488102))

(assert (not b!7488067))

(assert (not d!2300893))

(assert (not b!7487827))

(assert (not b!7488090))

(assert (not b!7487934))

(assert (not b!7487917))

(assert (not b!7487977))

(assert (not b!7488095))

(assert (not b!7488094))

(assert (not b!7487820))

(assert (not b!7488086))

(assert (not b!7488103))

(assert (not d!2300879))

(assert (not b!7487828))

(assert (not bm!687399))

(assert (not b!7488031))

(assert (not b!7488091))

(assert (not b!7488122))

(assert (not b!7487929))

(assert (not d!2300891))

(assert (not bm!687400))

(assert (not b!7488114))

(assert (not b!7487924))

(assert (not b!7488084))

(assert (not b!7487926))

(assert (not d!2300901))

(assert (not b!7488087))

(assert (not b!7488077))

(assert (not b!7487976))

(assert (not b!7488123))

(assert (not b!7488127))

(assert (not bm!687382))

(assert (not b!7488062))

(assert (not b!7488099))

(assert (not b!7488066))

(assert (not b!7488110))

(assert (not d!2300895))

(assert (not b!7488092))

(assert (not bm!687396))

(assert (not b!7488112))

(assert (not b!7488073))

(assert (not b!7487822))

(assert (not bm!687394))

(assert (not bm!687397))

(assert (not b!7488126))

(assert (not b!7488111))

(assert (not b!7488088))

(assert (not b!7488100))

(assert (not b!7488070))

(assert (not b!7488022))

(assert (not bm!687380))

(assert (not bm!687383))

(assert (not d!2300875))

(assert (not b!7487980))

(assert (not b!7487825))

(assert (not b!7487906))

(assert (not b!7487982))

(assert (not b!7488069))

(assert (not d!2300899))

(assert (not bm!687362))

(assert (not bm!687390))

(assert (not b!7488049))

(assert (not b!7488065))

(assert (not b!7488063))

(assert (not bm!687393))

(assert (not b!7488071))

(assert (not bm!687381))

(assert (not b!7488098))

(assert (not b!7487981))

(assert (not b!7487830))

(assert (not b!7488040))

(assert (not b!7488108))

(assert (not b!7487923))

(assert (not b!7488128))

(assert (not b!7488124))

(assert (not b!7487932))

(assert (not b!7488075))

(assert (not b!7487931))

(assert (not b!7487912))

(assert (not b!7488104))

(assert (not b!7488117))

(assert tp_is_empty!49541)

(assert (not b!7488096))

(assert (not b!7488115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

