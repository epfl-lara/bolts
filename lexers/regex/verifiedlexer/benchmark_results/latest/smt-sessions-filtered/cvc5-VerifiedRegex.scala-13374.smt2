; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724732 () Bool)

(assert start!724732)

(declare-fun b!7479992 () Bool)

(assert (=> b!7479992 true))

(assert (=> b!7479992 true))

(assert (=> b!7479992 true))

(declare-fun lambda!463473 () Int)

(declare-fun lambda!463472 () Int)

(assert (=> b!7479992 (not (= lambda!463473 lambda!463472))))

(assert (=> b!7479992 true))

(assert (=> b!7479992 true))

(assert (=> b!7479992 true))

(declare-fun bs!1932844 () Bool)

(declare-fun b!7479997 () Bool)

(assert (= bs!1932844 (and b!7479997 b!7479992)))

(declare-fun lambda!463474 () Int)

(declare-datatypes ((C!39494 0))(
  ( (C!39495 (val!30145 Int)) )
))
(declare-datatypes ((Regex!19610 0))(
  ( (ElementMatch!19610 (c!1381657 C!39494)) (Concat!28455 (regOne!39732 Regex!19610) (regTwo!39732 Regex!19610)) (EmptyExpr!19610) (Star!19610 (reg!19939 Regex!19610)) (EmptyLang!19610) (Union!19610 (regOne!39733 Regex!19610) (regTwo!39733 Regex!19610)) )
))
(declare-fun r1!5845 () Regex!19610)

(declare-fun lt!2627913 () Regex!19610)

(assert (=> bs!1932844 (= (= r1!5845 lt!2627913) (= lambda!463474 lambda!463472))))

(assert (=> bs!1932844 (not (= lambda!463474 lambda!463473))))

(assert (=> b!7479997 true))

(assert (=> b!7479997 true))

(assert (=> b!7479997 true))

(declare-fun lambda!463475 () Int)

(assert (=> bs!1932844 (not (= lambda!463475 lambda!463472))))

(assert (=> bs!1932844 (= (= r1!5845 lt!2627913) (= lambda!463475 lambda!463473))))

(assert (=> b!7479997 (not (= lambda!463475 lambda!463474))))

(assert (=> b!7479997 true))

(assert (=> b!7479997 true))

(assert (=> b!7479997 true))

(declare-fun b!7479978 () Bool)

(declare-fun e!4461764 () Bool)

(declare-fun tp!2169516 () Bool)

(declare-fun tp!2169518 () Bool)

(assert (=> b!7479978 (= e!4461764 (and tp!2169516 tp!2169518))))

(declare-fun b!7479979 () Bool)

(declare-fun e!4461769 () Bool)

(declare-fun rTail!78 () Regex!19610)

(declare-datatypes ((List!72326 0))(
  ( (Nil!72202) (Cons!72202 (h!78650 C!39494) (t!386895 List!72326)) )
))
(declare-datatypes ((tuple2!68670 0))(
  ( (tuple2!68671 (_1!37638 List!72326) (_2!37638 List!72326)) )
))
(declare-fun lt!2627930 () tuple2!68670)

(declare-fun matchR!9374 (Regex!19610 List!72326) Bool)

(assert (=> b!7479979 (= e!4461769 (matchR!9374 rTail!78 (_2!37638 lt!2627930)))))

(declare-fun b!7479980 () Bool)

(declare-fun e!4461765 () Bool)

(declare-fun e!4461762 () Bool)

(assert (=> b!7479980 (= e!4461765 e!4461762)))

(declare-fun res!3000927 () Bool)

(assert (=> b!7479980 (=> res!3000927 e!4461762)))

(declare-fun lt!2627912 () Bool)

(declare-fun lt!2627916 () Bool)

(assert (=> b!7479980 (= res!3000927 (or (and (not lt!2627912) (not lt!2627916)) (not lt!2627912)))))

(declare-fun lt!2627925 () Regex!19610)

(declare-fun s!13591 () List!72326)

(declare-fun matchRSpec!4289 (Regex!19610 List!72326) Bool)

(assert (=> b!7479980 (= lt!2627916 (matchRSpec!4289 lt!2627925 s!13591))))

(assert (=> b!7479980 (= lt!2627916 (matchR!9374 lt!2627925 s!13591))))

(declare-datatypes ((Unit!166055 0))(
  ( (Unit!166056) )
))
(declare-fun lt!2627928 () Unit!166055)

(declare-fun mainMatchTheorem!4283 (Regex!19610 List!72326) Unit!166055)

(assert (=> b!7479980 (= lt!2627928 (mainMatchTheorem!4283 lt!2627925 s!13591))))

(declare-fun lt!2627917 () Regex!19610)

(assert (=> b!7479980 (= lt!2627912 (matchRSpec!4289 lt!2627917 s!13591))))

(assert (=> b!7479980 (= lt!2627912 (matchR!9374 lt!2627917 s!13591))))

(declare-fun lt!2627915 () Unit!166055)

(assert (=> b!7479980 (= lt!2627915 (mainMatchTheorem!4283 lt!2627917 s!13591))))

(declare-fun b!7479981 () Bool)

(declare-fun e!4461768 () Bool)

(declare-fun tp_is_empty!49509 () Bool)

(assert (=> b!7479981 (= e!4461768 tp_is_empty!49509)))

(declare-fun b!7479982 () Bool)

(declare-fun e!4461763 () Bool)

(assert (=> b!7479982 (= e!4461763 tp_is_empty!49509)))

(declare-fun b!7479983 () Bool)

(assert (=> b!7479983 (= e!4461764 tp_is_empty!49509)))

(declare-fun b!7479984 () Bool)

(declare-fun res!3000929 () Bool)

(declare-fun e!4461767 () Bool)

(assert (=> b!7479984 (=> (not res!3000929) (not e!4461767))))

(declare-fun r2!5783 () Regex!19610)

(declare-fun validRegex!10124 (Regex!19610) Bool)

(assert (=> b!7479984 (= res!3000929 (validRegex!10124 r2!5783))))

(declare-fun b!7479985 () Bool)

(declare-fun e!4461761 () Bool)

(declare-fun tp!2169527 () Bool)

(assert (=> b!7479985 (= e!4461761 (and tp_is_empty!49509 tp!2169527))))

(declare-fun b!7479986 () Bool)

(declare-fun tp!2169523 () Bool)

(declare-fun tp!2169530 () Bool)

(assert (=> b!7479986 (= e!4461763 (and tp!2169523 tp!2169530))))

(declare-fun b!7479987 () Bool)

(declare-fun tp!2169526 () Bool)

(assert (=> b!7479987 (= e!4461763 tp!2169526)))

(declare-fun b!7479988 () Bool)

(declare-fun res!3000925 () Bool)

(assert (=> b!7479988 (=> (not res!3000925) (not e!4461767))))

(assert (=> b!7479988 (= res!3000925 (validRegex!10124 rTail!78))))

(declare-fun res!3000928 () Bool)

(assert (=> start!724732 (=> (not res!3000928) (not e!4461767))))

(assert (=> start!724732 (= res!3000928 (validRegex!10124 r1!5845))))

(assert (=> start!724732 e!4461767))

(assert (=> start!724732 e!4461768))

(assert (=> start!724732 e!4461763))

(assert (=> start!724732 e!4461764))

(assert (=> start!724732 e!4461761))

(declare-fun b!7479989 () Bool)

(declare-fun e!4461766 () Bool)

(assert (=> b!7479989 (= e!4461767 (not e!4461766))))

(declare-fun res!3000926 () Bool)

(assert (=> b!7479989 (=> res!3000926 e!4461766)))

(declare-fun lt!2627926 () Bool)

(assert (=> b!7479989 (= res!3000926 lt!2627926)))

(declare-fun lt!2627927 () Bool)

(declare-fun lt!2627918 () Regex!19610)

(assert (=> b!7479989 (= lt!2627927 (matchRSpec!4289 lt!2627918 s!13591))))

(assert (=> b!7479989 (= lt!2627927 (matchR!9374 lt!2627918 s!13591))))

(declare-fun lt!2627919 () Unit!166055)

(assert (=> b!7479989 (= lt!2627919 (mainMatchTheorem!4283 lt!2627918 s!13591))))

(declare-fun lt!2627914 () Regex!19610)

(assert (=> b!7479989 (= lt!2627926 (matchRSpec!4289 lt!2627914 s!13591))))

(assert (=> b!7479989 (= lt!2627926 (matchR!9374 lt!2627914 s!13591))))

(declare-fun lt!2627920 () Unit!166055)

(assert (=> b!7479989 (= lt!2627920 (mainMatchTheorem!4283 lt!2627914 s!13591))))

(assert (=> b!7479989 (= lt!2627918 (Union!19610 lt!2627917 lt!2627925))))

(assert (=> b!7479989 (= lt!2627925 (Concat!28455 r2!5783 rTail!78))))

(assert (=> b!7479989 (= lt!2627917 (Concat!28455 r1!5845 rTail!78))))

(assert (=> b!7479989 (= lt!2627914 (Concat!28455 lt!2627913 rTail!78))))

(assert (=> b!7479989 (= lt!2627913 (Union!19610 r1!5845 r2!5783))))

(declare-fun b!7479990 () Bool)

(declare-fun tp!2169528 () Bool)

(declare-fun tp!2169517 () Bool)

(assert (=> b!7479990 (= e!4461768 (and tp!2169528 tp!2169517))))

(declare-fun b!7479991 () Bool)

(declare-fun tp!2169522 () Bool)

(declare-fun tp!2169520 () Bool)

(assert (=> b!7479991 (= e!4461763 (and tp!2169522 tp!2169520))))

(assert (=> b!7479992 (= e!4461766 e!4461765)))

(declare-fun res!3000931 () Bool)

(assert (=> b!7479992 (=> res!3000931 e!4461765)))

(declare-fun lt!2627922 () Bool)

(assert (=> b!7479992 (= res!3000931 (or lt!2627922 (not lt!2627927)))))

(declare-fun Exists!4229 (Int) Bool)

(assert (=> b!7479992 (= (Exists!4229 lambda!463472) (Exists!4229 lambda!463473))))

(declare-fun lt!2627923 () Unit!166055)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2563 (Regex!19610 Regex!19610 List!72326) Unit!166055)

(assert (=> b!7479992 (= lt!2627923 (lemmaExistCutMatchRandMatchRSpecEquivalent!2563 lt!2627913 rTail!78 s!13591))))

(assert (=> b!7479992 (= lt!2627922 (Exists!4229 lambda!463472))))

(declare-datatypes ((Option!17167 0))(
  ( (None!17166) (Some!17166 (v!54295 tuple2!68670)) )
))
(declare-fun isDefined!13856 (Option!17167) Bool)

(declare-fun findConcatSeparation!3289 (Regex!19610 Regex!19610 List!72326 List!72326 List!72326) Option!17167)

(assert (=> b!7479992 (= lt!2627922 (isDefined!13856 (findConcatSeparation!3289 lt!2627913 rTail!78 Nil!72202 s!13591 s!13591)))))

(declare-fun lt!2627924 () Unit!166055)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3047 (Regex!19610 Regex!19610 List!72326) Unit!166055)

(assert (=> b!7479992 (= lt!2627924 (lemmaFindConcatSeparationEquivalentToExists!3047 lt!2627913 rTail!78 s!13591))))

(declare-fun b!7479993 () Bool)

(declare-fun tp!2169531 () Bool)

(assert (=> b!7479993 (= e!4461764 tp!2169531)))

(declare-fun b!7479994 () Bool)

(declare-fun tp!2169529 () Bool)

(assert (=> b!7479994 (= e!4461768 tp!2169529)))

(declare-fun b!7479995 () Bool)

(declare-fun tp!2169521 () Bool)

(declare-fun tp!2169524 () Bool)

(assert (=> b!7479995 (= e!4461764 (and tp!2169521 tp!2169524))))

(declare-fun b!7479996 () Bool)

(declare-fun tp!2169519 () Bool)

(declare-fun tp!2169525 () Bool)

(assert (=> b!7479996 (= e!4461768 (and tp!2169519 tp!2169525))))

(assert (=> b!7479997 (= e!4461762 e!4461769)))

(declare-fun res!3000930 () Bool)

(assert (=> b!7479997 (=> res!3000930 e!4461769)))

(assert (=> b!7479997 (= res!3000930 (not (matchR!9374 r1!5845 (_1!37638 lt!2627930))))))

(declare-fun lt!2627921 () Option!17167)

(declare-fun get!25279 (Option!17167) tuple2!68670)

(assert (=> b!7479997 (= lt!2627930 (get!25279 lt!2627921))))

(assert (=> b!7479997 (= (Exists!4229 lambda!463474) (Exists!4229 lambda!463475))))

(declare-fun lt!2627929 () Unit!166055)

(assert (=> b!7479997 (= lt!2627929 (lemmaExistCutMatchRandMatchRSpecEquivalent!2563 r1!5845 rTail!78 s!13591))))

(assert (=> b!7479997 (= (isDefined!13856 lt!2627921) (Exists!4229 lambda!463474))))

(assert (=> b!7479997 (= lt!2627921 (findConcatSeparation!3289 r1!5845 rTail!78 Nil!72202 s!13591 s!13591))))

(declare-fun lt!2627931 () Unit!166055)

(assert (=> b!7479997 (= lt!2627931 (lemmaFindConcatSeparationEquivalentToExists!3047 r1!5845 rTail!78 s!13591))))

(assert (= (and start!724732 res!3000928) b!7479984))

(assert (= (and b!7479984 res!3000929) b!7479988))

(assert (= (and b!7479988 res!3000925) b!7479989))

(assert (= (and b!7479989 (not res!3000926)) b!7479992))

(assert (= (and b!7479992 (not res!3000931)) b!7479980))

(assert (= (and b!7479980 (not res!3000927)) b!7479997))

(assert (= (and b!7479997 (not res!3000930)) b!7479979))

(assert (= (and start!724732 (is-ElementMatch!19610 r1!5845)) b!7479981))

(assert (= (and start!724732 (is-Concat!28455 r1!5845)) b!7479990))

(assert (= (and start!724732 (is-Star!19610 r1!5845)) b!7479994))

(assert (= (and start!724732 (is-Union!19610 r1!5845)) b!7479996))

(assert (= (and start!724732 (is-ElementMatch!19610 r2!5783)) b!7479982))

(assert (= (and start!724732 (is-Concat!28455 r2!5783)) b!7479986))

(assert (= (and start!724732 (is-Star!19610 r2!5783)) b!7479987))

(assert (= (and start!724732 (is-Union!19610 r2!5783)) b!7479991))

(assert (= (and start!724732 (is-ElementMatch!19610 rTail!78)) b!7479983))

(assert (= (and start!724732 (is-Concat!28455 rTail!78)) b!7479978))

(assert (= (and start!724732 (is-Star!19610 rTail!78)) b!7479993))

(assert (= (and start!724732 (is-Union!19610 rTail!78)) b!7479995))

(assert (= (and start!724732 (is-Cons!72202 s!13591)) b!7479985))

(declare-fun m!8072504 () Bool)

(assert (=> b!7479979 m!8072504))

(declare-fun m!8072506 () Bool)

(assert (=> b!7479992 m!8072506))

(declare-fun m!8072508 () Bool)

(assert (=> b!7479992 m!8072508))

(declare-fun m!8072510 () Bool)

(assert (=> b!7479992 m!8072510))

(assert (=> b!7479992 m!8072506))

(declare-fun m!8072512 () Bool)

(assert (=> b!7479992 m!8072512))

(assert (=> b!7479992 m!8072512))

(declare-fun m!8072514 () Bool)

(assert (=> b!7479992 m!8072514))

(declare-fun m!8072516 () Bool)

(assert (=> b!7479992 m!8072516))

(declare-fun m!8072518 () Bool)

(assert (=> b!7479988 m!8072518))

(declare-fun m!8072520 () Bool)

(assert (=> b!7479989 m!8072520))

(declare-fun m!8072522 () Bool)

(assert (=> b!7479989 m!8072522))

(declare-fun m!8072524 () Bool)

(assert (=> b!7479989 m!8072524))

(declare-fun m!8072526 () Bool)

(assert (=> b!7479989 m!8072526))

(declare-fun m!8072528 () Bool)

(assert (=> b!7479989 m!8072528))

(declare-fun m!8072530 () Bool)

(assert (=> b!7479989 m!8072530))

(declare-fun m!8072532 () Bool)

(assert (=> b!7479984 m!8072532))

(declare-fun m!8072534 () Bool)

(assert (=> b!7479997 m!8072534))

(declare-fun m!8072536 () Bool)

(assert (=> b!7479997 m!8072536))

(declare-fun m!8072538 () Bool)

(assert (=> b!7479997 m!8072538))

(declare-fun m!8072540 () Bool)

(assert (=> b!7479997 m!8072540))

(declare-fun m!8072542 () Bool)

(assert (=> b!7479997 m!8072542))

(declare-fun m!8072544 () Bool)

(assert (=> b!7479997 m!8072544))

(declare-fun m!8072546 () Bool)

(assert (=> b!7479997 m!8072546))

(declare-fun m!8072548 () Bool)

(assert (=> b!7479997 m!8072548))

(assert (=> b!7479997 m!8072548))

(declare-fun m!8072550 () Bool)

(assert (=> start!724732 m!8072550))

(declare-fun m!8072552 () Bool)

(assert (=> b!7479980 m!8072552))

(declare-fun m!8072554 () Bool)

(assert (=> b!7479980 m!8072554))

(declare-fun m!8072556 () Bool)

(assert (=> b!7479980 m!8072556))

(declare-fun m!8072558 () Bool)

(assert (=> b!7479980 m!8072558))

(declare-fun m!8072560 () Bool)

(assert (=> b!7479980 m!8072560))

(declare-fun m!8072562 () Bool)

(assert (=> b!7479980 m!8072562))

(push 1)

(assert (not b!7479993))

(assert (not b!7479991))

(assert (not b!7479996))

(assert (not b!7479978))

(assert (not b!7479987))

(assert (not b!7479990))

(assert (not b!7479979))

(assert (not b!7479980))

(assert (not b!7479984))

(assert tp_is_empty!49509)

(assert (not b!7479988))

(assert (not b!7479994))

(assert (not b!7479997))

(assert (not b!7479989))

(assert (not b!7479986))

(assert (not b!7479995))

(assert (not b!7479992))

(assert (not b!7479985))

(assert (not start!724732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2299981 () Bool)

(assert (=> d!2299981 (= (matchR!9374 lt!2627917 s!13591) (matchRSpec!4289 lt!2627917 s!13591))))

(declare-fun lt!2627996 () Unit!166055)

(declare-fun choose!57826 (Regex!19610 List!72326) Unit!166055)

(assert (=> d!2299981 (= lt!2627996 (choose!57826 lt!2627917 s!13591))))

(assert (=> d!2299981 (validRegex!10124 lt!2627917)))

(assert (=> d!2299981 (= (mainMatchTheorem!4283 lt!2627917 s!13591) lt!2627996)))

(declare-fun bs!1932846 () Bool)

(assert (= bs!1932846 d!2299981))

(assert (=> bs!1932846 m!8072554))

(assert (=> bs!1932846 m!8072552))

(declare-fun m!8072624 () Bool)

(assert (=> bs!1932846 m!8072624))

(declare-fun m!8072626 () Bool)

(assert (=> bs!1932846 m!8072626))

(assert (=> b!7479980 d!2299981))

(declare-fun d!2299983 () Bool)

(assert (=> d!2299983 (= (matchR!9374 lt!2627925 s!13591) (matchRSpec!4289 lt!2627925 s!13591))))

(declare-fun lt!2627997 () Unit!166055)

(assert (=> d!2299983 (= lt!2627997 (choose!57826 lt!2627925 s!13591))))

(assert (=> d!2299983 (validRegex!10124 lt!2627925)))

(assert (=> d!2299983 (= (mainMatchTheorem!4283 lt!2627925 s!13591) lt!2627997)))

(declare-fun bs!1932847 () Bool)

(assert (= bs!1932847 d!2299983))

(assert (=> bs!1932847 m!8072562))

(assert (=> bs!1932847 m!8072560))

(declare-fun m!8072628 () Bool)

(assert (=> bs!1932847 m!8072628))

(declare-fun m!8072630 () Bool)

(assert (=> bs!1932847 m!8072630))

(assert (=> b!7479980 d!2299983))

(declare-fun b!7480118 () Bool)

(declare-fun res!3000995 () Bool)

(declare-fun e!4461826 () Bool)

(assert (=> b!7480118 (=> (not res!3000995) (not e!4461826))))

(declare-fun call!686701 () Bool)

(assert (=> b!7480118 (= res!3000995 (not call!686701))))

(declare-fun b!7480119 () Bool)

(declare-fun e!4461825 () Bool)

(declare-fun lt!2628001 () Bool)

(assert (=> b!7480119 (= e!4461825 (= lt!2628001 call!686701))))

(declare-fun bm!686696 () Bool)

(declare-fun isEmpty!41211 (List!72326) Bool)

(assert (=> bm!686696 (= call!686701 (isEmpty!41211 s!13591))))

(declare-fun b!7480120 () Bool)

(declare-fun res!3000999 () Bool)

(assert (=> b!7480120 (=> (not res!3000999) (not e!4461826))))

(declare-fun tail!14916 (List!72326) List!72326)

(assert (=> b!7480120 (= res!3000999 (isEmpty!41211 (tail!14916 s!13591)))))

(declare-fun b!7480122 () Bool)

(declare-fun e!4461824 () Bool)

(declare-fun e!4461827 () Bool)

(assert (=> b!7480122 (= e!4461824 e!4461827)))

(declare-fun res!3000996 () Bool)

(assert (=> b!7480122 (=> (not res!3000996) (not e!4461827))))

(assert (=> b!7480122 (= res!3000996 (not lt!2628001))))

(declare-fun b!7480123 () Bool)

(declare-fun head!15347 (List!72326) C!39494)

(assert (=> b!7480123 (= e!4461826 (= (head!15347 s!13591) (c!1381657 lt!2627917)))))

(declare-fun b!7480124 () Bool)

(declare-fun e!4461823 () Bool)

(assert (=> b!7480124 (= e!4461823 (not (= (head!15347 s!13591) (c!1381657 lt!2627917))))))

(declare-fun b!7480125 () Bool)

(declare-fun res!3000994 () Bool)

(assert (=> b!7480125 (=> res!3000994 e!4461824)))

(assert (=> b!7480125 (= res!3000994 e!4461826)))

(declare-fun res!3001000 () Bool)

(assert (=> b!7480125 (=> (not res!3001000) (not e!4461826))))

(assert (=> b!7480125 (= res!3001000 lt!2628001)))

(declare-fun d!2299985 () Bool)

(assert (=> d!2299985 e!4461825))

(declare-fun c!1381667 () Bool)

(assert (=> d!2299985 (= c!1381667 (is-EmptyExpr!19610 lt!2627917))))

(declare-fun e!4461828 () Bool)

(assert (=> d!2299985 (= lt!2628001 e!4461828)))

(declare-fun c!1381666 () Bool)

(assert (=> d!2299985 (= c!1381666 (isEmpty!41211 s!13591))))

(assert (=> d!2299985 (validRegex!10124 lt!2627917)))

(assert (=> d!2299985 (= (matchR!9374 lt!2627917 s!13591) lt!2628001)))

(declare-fun b!7480121 () Bool)

(assert (=> b!7480121 (= e!4461827 e!4461823)))

(declare-fun res!3000998 () Bool)

(assert (=> b!7480121 (=> res!3000998 e!4461823)))

(assert (=> b!7480121 (= res!3000998 call!686701)))

(declare-fun b!7480126 () Bool)

(declare-fun e!4461829 () Bool)

(assert (=> b!7480126 (= e!4461825 e!4461829)))

(declare-fun c!1381665 () Bool)

(assert (=> b!7480126 (= c!1381665 (is-EmptyLang!19610 lt!2627917))))

(declare-fun b!7480127 () Bool)

(declare-fun res!3000993 () Bool)

(assert (=> b!7480127 (=> res!3000993 e!4461823)))

(assert (=> b!7480127 (= res!3000993 (not (isEmpty!41211 (tail!14916 s!13591))))))

(declare-fun b!7480128 () Bool)

(declare-fun derivativeStep!5607 (Regex!19610 C!39494) Regex!19610)

(assert (=> b!7480128 (= e!4461828 (matchR!9374 (derivativeStep!5607 lt!2627917 (head!15347 s!13591)) (tail!14916 s!13591)))))

(declare-fun b!7480129 () Bool)

(declare-fun res!3000997 () Bool)

(assert (=> b!7480129 (=> res!3000997 e!4461824)))

(assert (=> b!7480129 (= res!3000997 (not (is-ElementMatch!19610 lt!2627917)))))

(assert (=> b!7480129 (= e!4461829 e!4461824)))

(declare-fun b!7480130 () Bool)

(assert (=> b!7480130 (= e!4461829 (not lt!2628001))))

(declare-fun b!7480131 () Bool)

(declare-fun nullable!8548 (Regex!19610) Bool)

(assert (=> b!7480131 (= e!4461828 (nullable!8548 lt!2627917))))

(assert (= (and d!2299985 c!1381666) b!7480131))

(assert (= (and d!2299985 (not c!1381666)) b!7480128))

(assert (= (and d!2299985 c!1381667) b!7480119))

(assert (= (and d!2299985 (not c!1381667)) b!7480126))

(assert (= (and b!7480126 c!1381665) b!7480130))

(assert (= (and b!7480126 (not c!1381665)) b!7480129))

(assert (= (and b!7480129 (not res!3000997)) b!7480125))

(assert (= (and b!7480125 res!3001000) b!7480118))

(assert (= (and b!7480118 res!3000995) b!7480120))

(assert (= (and b!7480120 res!3000999) b!7480123))

(assert (= (and b!7480125 (not res!3000994)) b!7480122))

(assert (= (and b!7480122 res!3000996) b!7480121))

(assert (= (and b!7480121 (not res!3000998)) b!7480127))

(assert (= (and b!7480127 (not res!3000993)) b!7480124))

(assert (= (or b!7480119 b!7480118 b!7480121) bm!686696))

(declare-fun m!8072636 () Bool)

(assert (=> b!7480124 m!8072636))

(declare-fun m!8072638 () Bool)

(assert (=> b!7480131 m!8072638))

(declare-fun m!8072640 () Bool)

(assert (=> d!2299985 m!8072640))

(assert (=> d!2299985 m!8072626))

(assert (=> b!7480123 m!8072636))

(declare-fun m!8072642 () Bool)

(assert (=> b!7480127 m!8072642))

(assert (=> b!7480127 m!8072642))

(declare-fun m!8072644 () Bool)

(assert (=> b!7480127 m!8072644))

(assert (=> b!7480128 m!8072636))

(assert (=> b!7480128 m!8072636))

(declare-fun m!8072646 () Bool)

(assert (=> b!7480128 m!8072646))

(assert (=> b!7480128 m!8072642))

(assert (=> b!7480128 m!8072646))

(assert (=> b!7480128 m!8072642))

(declare-fun m!8072648 () Bool)

(assert (=> b!7480128 m!8072648))

(assert (=> b!7480120 m!8072642))

(assert (=> b!7480120 m!8072642))

(assert (=> b!7480120 m!8072644))

(assert (=> bm!686696 m!8072640))

(assert (=> b!7479980 d!2299985))

(declare-fun bs!1932849 () Bool)

(declare-fun b!7480203 () Bool)

(assert (= bs!1932849 (and b!7480203 b!7479992)))

(declare-fun lambda!463500 () Int)

(assert (=> bs!1932849 (not (= lambda!463500 lambda!463472))))

(assert (=> bs!1932849 (not (= lambda!463500 lambda!463473))))

(declare-fun bs!1932850 () Bool)

(assert (= bs!1932850 (and b!7480203 b!7479997)))

(assert (=> bs!1932850 (not (= lambda!463500 lambda!463474))))

(assert (=> bs!1932850 (not (= lambda!463500 lambda!463475))))

(assert (=> b!7480203 true))

(assert (=> b!7480203 true))

(declare-fun bs!1932851 () Bool)

(declare-fun b!7480204 () Bool)

(assert (= bs!1932851 (and b!7480204 b!7479992)))

(declare-fun lambda!463501 () Int)

(assert (=> bs!1932851 (= (and (= (regOne!39732 lt!2627925) lt!2627913) (= (regTwo!39732 lt!2627925) rTail!78)) (= lambda!463501 lambda!463473))))

(assert (=> bs!1932851 (not (= lambda!463501 lambda!463472))))

(declare-fun bs!1932852 () Bool)

(assert (= bs!1932852 (and b!7480204 b!7480203)))

(assert (=> bs!1932852 (not (= lambda!463501 lambda!463500))))

(declare-fun bs!1932853 () Bool)

(assert (= bs!1932853 (and b!7480204 b!7479997)))

(assert (=> bs!1932853 (= (and (= (regOne!39732 lt!2627925) r1!5845) (= (regTwo!39732 lt!2627925) rTail!78)) (= lambda!463501 lambda!463475))))

(assert (=> bs!1932853 (not (= lambda!463501 lambda!463474))))

(assert (=> b!7480204 true))

(assert (=> b!7480204 true))

(declare-fun b!7480196 () Bool)

(declare-fun e!4461872 () Bool)

(declare-fun e!4461868 () Bool)

(assert (=> b!7480196 (= e!4461872 e!4461868)))

(declare-fun res!3001035 () Bool)

(assert (=> b!7480196 (= res!3001035 (matchRSpec!4289 (regOne!39733 lt!2627925) s!13591))))

(assert (=> b!7480196 (=> res!3001035 e!4461868)))

(declare-fun b!7480197 () Bool)

(declare-fun e!4461866 () Bool)

(assert (=> b!7480197 (= e!4461872 e!4461866)))

(declare-fun c!1381685 () Bool)

(assert (=> b!7480197 (= c!1381685 (is-Star!19610 lt!2627925))))

(declare-fun b!7480198 () Bool)

(declare-fun c!1381686 () Bool)

(assert (=> b!7480198 (= c!1381686 (is-Union!19610 lt!2627925))))

(declare-fun e!4461869 () Bool)

(assert (=> b!7480198 (= e!4461869 e!4461872)))

(declare-fun b!7480199 () Bool)

(declare-fun e!4461871 () Bool)

(declare-fun call!686708 () Bool)

(assert (=> b!7480199 (= e!4461871 call!686708)))

(declare-fun d!2299989 () Bool)

(declare-fun c!1381687 () Bool)

(assert (=> d!2299989 (= c!1381687 (is-EmptyExpr!19610 lt!2627925))))

(assert (=> d!2299989 (= (matchRSpec!4289 lt!2627925 s!13591) e!4461871)))

(declare-fun b!7480200 () Bool)

(declare-fun c!1381684 () Bool)

(assert (=> b!7480200 (= c!1381684 (is-ElementMatch!19610 lt!2627925))))

(declare-fun e!4461870 () Bool)

(assert (=> b!7480200 (= e!4461870 e!4461869)))

(declare-fun b!7480201 () Bool)

(assert (=> b!7480201 (= e!4461868 (matchRSpec!4289 (regTwo!39733 lt!2627925) s!13591))))

(declare-fun b!7480202 () Bool)

(declare-fun res!3001033 () Bool)

(declare-fun e!4461867 () Bool)

(assert (=> b!7480202 (=> res!3001033 e!4461867)))

(assert (=> b!7480202 (= res!3001033 call!686708)))

(assert (=> b!7480202 (= e!4461866 e!4461867)))

(declare-fun call!686709 () Bool)

(declare-fun bm!686703 () Bool)

(assert (=> bm!686703 (= call!686709 (Exists!4229 (ite c!1381685 lambda!463500 lambda!463501)))))

(declare-fun bm!686704 () Bool)

(assert (=> bm!686704 (= call!686708 (isEmpty!41211 s!13591))))

(assert (=> b!7480203 (= e!4461867 call!686709)))

(assert (=> b!7480204 (= e!4461866 call!686709)))

(declare-fun b!7480205 () Bool)

(assert (=> b!7480205 (= e!4461871 e!4461870)))

(declare-fun res!3001034 () Bool)

(assert (=> b!7480205 (= res!3001034 (not (is-EmptyLang!19610 lt!2627925)))))

(assert (=> b!7480205 (=> (not res!3001034) (not e!4461870))))

(declare-fun b!7480206 () Bool)

(assert (=> b!7480206 (= e!4461869 (= s!13591 (Cons!72202 (c!1381657 lt!2627925) Nil!72202)))))

(assert (= (and d!2299989 c!1381687) b!7480199))

(assert (= (and d!2299989 (not c!1381687)) b!7480205))

(assert (= (and b!7480205 res!3001034) b!7480200))

(assert (= (and b!7480200 c!1381684) b!7480206))

(assert (= (and b!7480200 (not c!1381684)) b!7480198))

(assert (= (and b!7480198 c!1381686) b!7480196))

(assert (= (and b!7480198 (not c!1381686)) b!7480197))

(assert (= (and b!7480196 (not res!3001035)) b!7480201))

(assert (= (and b!7480197 c!1381685) b!7480202))

(assert (= (and b!7480197 (not c!1381685)) b!7480204))

(assert (= (and b!7480202 (not res!3001033)) b!7480203))

(assert (= (or b!7480203 b!7480204) bm!686703))

(assert (= (or b!7480199 b!7480202) bm!686704))

(declare-fun m!8072650 () Bool)

(assert (=> b!7480196 m!8072650))

(declare-fun m!8072652 () Bool)

(assert (=> b!7480201 m!8072652))

(declare-fun m!8072654 () Bool)

(assert (=> bm!686703 m!8072654))

(assert (=> bm!686704 m!8072640))

(assert (=> b!7479980 d!2299989))

(declare-fun bs!1932854 () Bool)

(declare-fun b!7480214 () Bool)

(assert (= bs!1932854 (and b!7480214 b!7479992)))

(declare-fun lambda!463502 () Int)

(assert (=> bs!1932854 (not (= lambda!463502 lambda!463473))))

(assert (=> bs!1932854 (not (= lambda!463502 lambda!463472))))

(declare-fun bs!1932855 () Bool)

(assert (= bs!1932855 (and b!7480214 b!7480204)))

(assert (=> bs!1932855 (not (= lambda!463502 lambda!463501))))

(declare-fun bs!1932856 () Bool)

(assert (= bs!1932856 (and b!7480214 b!7480203)))

(assert (=> bs!1932856 (= (and (= (reg!19939 lt!2627917) (reg!19939 lt!2627925)) (= lt!2627917 lt!2627925)) (= lambda!463502 lambda!463500))))

(declare-fun bs!1932857 () Bool)

(assert (= bs!1932857 (and b!7480214 b!7479997)))

(assert (=> bs!1932857 (not (= lambda!463502 lambda!463475))))

(assert (=> bs!1932857 (not (= lambda!463502 lambda!463474))))

(assert (=> b!7480214 true))

(assert (=> b!7480214 true))

(declare-fun bs!1932858 () Bool)

(declare-fun b!7480215 () Bool)

(assert (= bs!1932858 (and b!7480215 b!7480214)))

(declare-fun lambda!463503 () Int)

(assert (=> bs!1932858 (not (= lambda!463503 lambda!463502))))

(declare-fun bs!1932859 () Bool)

(assert (= bs!1932859 (and b!7480215 b!7479992)))

(assert (=> bs!1932859 (= (and (= (regOne!39732 lt!2627917) lt!2627913) (= (regTwo!39732 lt!2627917) rTail!78)) (= lambda!463503 lambda!463473))))

(assert (=> bs!1932859 (not (= lambda!463503 lambda!463472))))

(declare-fun bs!1932860 () Bool)

(assert (= bs!1932860 (and b!7480215 b!7480204)))

(assert (=> bs!1932860 (= (and (= (regOne!39732 lt!2627917) (regOne!39732 lt!2627925)) (= (regTwo!39732 lt!2627917) (regTwo!39732 lt!2627925))) (= lambda!463503 lambda!463501))))

(declare-fun bs!1932861 () Bool)

(assert (= bs!1932861 (and b!7480215 b!7480203)))

(assert (=> bs!1932861 (not (= lambda!463503 lambda!463500))))

(declare-fun bs!1932862 () Bool)

(assert (= bs!1932862 (and b!7480215 b!7479997)))

(assert (=> bs!1932862 (= (and (= (regOne!39732 lt!2627917) r1!5845) (= (regTwo!39732 lt!2627917) rTail!78)) (= lambda!463503 lambda!463475))))

(assert (=> bs!1932862 (not (= lambda!463503 lambda!463474))))

(assert (=> b!7480215 true))

(assert (=> b!7480215 true))

(declare-fun b!7480207 () Bool)

(declare-fun e!4461879 () Bool)

(declare-fun e!4461875 () Bool)

(assert (=> b!7480207 (= e!4461879 e!4461875)))

(declare-fun res!3001038 () Bool)

(assert (=> b!7480207 (= res!3001038 (matchRSpec!4289 (regOne!39733 lt!2627917) s!13591))))

(assert (=> b!7480207 (=> res!3001038 e!4461875)))

(declare-fun b!7480208 () Bool)

(declare-fun e!4461873 () Bool)

(assert (=> b!7480208 (= e!4461879 e!4461873)))

(declare-fun c!1381689 () Bool)

(assert (=> b!7480208 (= c!1381689 (is-Star!19610 lt!2627917))))

(declare-fun b!7480209 () Bool)

(declare-fun c!1381690 () Bool)

(assert (=> b!7480209 (= c!1381690 (is-Union!19610 lt!2627917))))

(declare-fun e!4461876 () Bool)

(assert (=> b!7480209 (= e!4461876 e!4461879)))

(declare-fun b!7480210 () Bool)

(declare-fun e!4461878 () Bool)

(declare-fun call!686712 () Bool)

(assert (=> b!7480210 (= e!4461878 call!686712)))

(declare-fun d!2299991 () Bool)

(declare-fun c!1381691 () Bool)

(assert (=> d!2299991 (= c!1381691 (is-EmptyExpr!19610 lt!2627917))))

(assert (=> d!2299991 (= (matchRSpec!4289 lt!2627917 s!13591) e!4461878)))

(declare-fun b!7480211 () Bool)

(declare-fun c!1381688 () Bool)

(assert (=> b!7480211 (= c!1381688 (is-ElementMatch!19610 lt!2627917))))

(declare-fun e!4461877 () Bool)

(assert (=> b!7480211 (= e!4461877 e!4461876)))

(declare-fun b!7480212 () Bool)

(assert (=> b!7480212 (= e!4461875 (matchRSpec!4289 (regTwo!39733 lt!2627917) s!13591))))

(declare-fun b!7480213 () Bool)

(declare-fun res!3001036 () Bool)

(declare-fun e!4461874 () Bool)

(assert (=> b!7480213 (=> res!3001036 e!4461874)))

(assert (=> b!7480213 (= res!3001036 call!686712)))

(assert (=> b!7480213 (= e!4461873 e!4461874)))

(declare-fun call!686713 () Bool)

(declare-fun bm!686707 () Bool)

(assert (=> bm!686707 (= call!686713 (Exists!4229 (ite c!1381689 lambda!463502 lambda!463503)))))

(declare-fun bm!686708 () Bool)

(assert (=> bm!686708 (= call!686712 (isEmpty!41211 s!13591))))

(assert (=> b!7480214 (= e!4461874 call!686713)))

(assert (=> b!7480215 (= e!4461873 call!686713)))

(declare-fun b!7480216 () Bool)

(assert (=> b!7480216 (= e!4461878 e!4461877)))

(declare-fun res!3001037 () Bool)

(assert (=> b!7480216 (= res!3001037 (not (is-EmptyLang!19610 lt!2627917)))))

(assert (=> b!7480216 (=> (not res!3001037) (not e!4461877))))

(declare-fun b!7480217 () Bool)

(assert (=> b!7480217 (= e!4461876 (= s!13591 (Cons!72202 (c!1381657 lt!2627917) Nil!72202)))))

(assert (= (and d!2299991 c!1381691) b!7480210))

(assert (= (and d!2299991 (not c!1381691)) b!7480216))

(assert (= (and b!7480216 res!3001037) b!7480211))

(assert (= (and b!7480211 c!1381688) b!7480217))

(assert (= (and b!7480211 (not c!1381688)) b!7480209))

(assert (= (and b!7480209 c!1381690) b!7480207))

(assert (= (and b!7480209 (not c!1381690)) b!7480208))

(assert (= (and b!7480207 (not res!3001038)) b!7480212))

(assert (= (and b!7480208 c!1381689) b!7480213))

(assert (= (and b!7480208 (not c!1381689)) b!7480215))

(assert (= (and b!7480213 (not res!3001036)) b!7480214))

(assert (= (or b!7480214 b!7480215) bm!686707))

(assert (= (or b!7480210 b!7480213) bm!686708))

(declare-fun m!8072656 () Bool)

(assert (=> b!7480207 m!8072656))

(declare-fun m!8072658 () Bool)

(assert (=> b!7480212 m!8072658))

(declare-fun m!8072660 () Bool)

(assert (=> bm!686707 m!8072660))

(assert (=> bm!686708 m!8072640))

(assert (=> b!7479980 d!2299991))

(declare-fun b!7480218 () Bool)

(declare-fun res!3001041 () Bool)

(declare-fun e!4461883 () Bool)

(assert (=> b!7480218 (=> (not res!3001041) (not e!4461883))))

(declare-fun call!686714 () Bool)

(assert (=> b!7480218 (= res!3001041 (not call!686714))))

(declare-fun b!7480219 () Bool)

(declare-fun e!4461882 () Bool)

(declare-fun lt!2628002 () Bool)

(assert (=> b!7480219 (= e!4461882 (= lt!2628002 call!686714))))

(declare-fun bm!686709 () Bool)

(assert (=> bm!686709 (= call!686714 (isEmpty!41211 s!13591))))

(declare-fun b!7480220 () Bool)

(declare-fun res!3001045 () Bool)

(assert (=> b!7480220 (=> (not res!3001045) (not e!4461883))))

(assert (=> b!7480220 (= res!3001045 (isEmpty!41211 (tail!14916 s!13591)))))

(declare-fun b!7480222 () Bool)

(declare-fun e!4461881 () Bool)

(declare-fun e!4461884 () Bool)

(assert (=> b!7480222 (= e!4461881 e!4461884)))

(declare-fun res!3001042 () Bool)

(assert (=> b!7480222 (=> (not res!3001042) (not e!4461884))))

(assert (=> b!7480222 (= res!3001042 (not lt!2628002))))

(declare-fun b!7480223 () Bool)

(assert (=> b!7480223 (= e!4461883 (= (head!15347 s!13591) (c!1381657 lt!2627925)))))

(declare-fun b!7480224 () Bool)

(declare-fun e!4461880 () Bool)

(assert (=> b!7480224 (= e!4461880 (not (= (head!15347 s!13591) (c!1381657 lt!2627925))))))

(declare-fun b!7480225 () Bool)

(declare-fun res!3001040 () Bool)

(assert (=> b!7480225 (=> res!3001040 e!4461881)))

(assert (=> b!7480225 (= res!3001040 e!4461883)))

(declare-fun res!3001046 () Bool)

(assert (=> b!7480225 (=> (not res!3001046) (not e!4461883))))

(assert (=> b!7480225 (= res!3001046 lt!2628002)))

(declare-fun d!2299993 () Bool)

(assert (=> d!2299993 e!4461882))

(declare-fun c!1381694 () Bool)

(assert (=> d!2299993 (= c!1381694 (is-EmptyExpr!19610 lt!2627925))))

(declare-fun e!4461885 () Bool)

(assert (=> d!2299993 (= lt!2628002 e!4461885)))

(declare-fun c!1381693 () Bool)

(assert (=> d!2299993 (= c!1381693 (isEmpty!41211 s!13591))))

(assert (=> d!2299993 (validRegex!10124 lt!2627925)))

(assert (=> d!2299993 (= (matchR!9374 lt!2627925 s!13591) lt!2628002)))

(declare-fun b!7480221 () Bool)

(assert (=> b!7480221 (= e!4461884 e!4461880)))

(declare-fun res!3001044 () Bool)

(assert (=> b!7480221 (=> res!3001044 e!4461880)))

(assert (=> b!7480221 (= res!3001044 call!686714)))

(declare-fun b!7480226 () Bool)

(declare-fun e!4461886 () Bool)

(assert (=> b!7480226 (= e!4461882 e!4461886)))

(declare-fun c!1381692 () Bool)

(assert (=> b!7480226 (= c!1381692 (is-EmptyLang!19610 lt!2627925))))

(declare-fun b!7480227 () Bool)

(declare-fun res!3001039 () Bool)

(assert (=> b!7480227 (=> res!3001039 e!4461880)))

(assert (=> b!7480227 (= res!3001039 (not (isEmpty!41211 (tail!14916 s!13591))))))

(declare-fun b!7480228 () Bool)

(assert (=> b!7480228 (= e!4461885 (matchR!9374 (derivativeStep!5607 lt!2627925 (head!15347 s!13591)) (tail!14916 s!13591)))))

(declare-fun b!7480229 () Bool)

(declare-fun res!3001043 () Bool)

(assert (=> b!7480229 (=> res!3001043 e!4461881)))

(assert (=> b!7480229 (= res!3001043 (not (is-ElementMatch!19610 lt!2627925)))))

(assert (=> b!7480229 (= e!4461886 e!4461881)))

(declare-fun b!7480230 () Bool)

(assert (=> b!7480230 (= e!4461886 (not lt!2628002))))

(declare-fun b!7480231 () Bool)

(assert (=> b!7480231 (= e!4461885 (nullable!8548 lt!2627925))))

(assert (= (and d!2299993 c!1381693) b!7480231))

(assert (= (and d!2299993 (not c!1381693)) b!7480228))

(assert (= (and d!2299993 c!1381694) b!7480219))

(assert (= (and d!2299993 (not c!1381694)) b!7480226))

(assert (= (and b!7480226 c!1381692) b!7480230))

(assert (= (and b!7480226 (not c!1381692)) b!7480229))

(assert (= (and b!7480229 (not res!3001043)) b!7480225))

(assert (= (and b!7480225 res!3001046) b!7480218))

(assert (= (and b!7480218 res!3001041) b!7480220))

(assert (= (and b!7480220 res!3001045) b!7480223))

(assert (= (and b!7480225 (not res!3001040)) b!7480222))

(assert (= (and b!7480222 res!3001042) b!7480221))

(assert (= (and b!7480221 (not res!3001044)) b!7480227))

(assert (= (and b!7480227 (not res!3001039)) b!7480224))

(assert (= (or b!7480219 b!7480218 b!7480221) bm!686709))

(assert (=> b!7480224 m!8072636))

(declare-fun m!8072662 () Bool)

(assert (=> b!7480231 m!8072662))

(assert (=> d!2299993 m!8072640))

(assert (=> d!2299993 m!8072630))

(assert (=> b!7480223 m!8072636))

(assert (=> b!7480227 m!8072642))

(assert (=> b!7480227 m!8072642))

(assert (=> b!7480227 m!8072644))

(assert (=> b!7480228 m!8072636))

(assert (=> b!7480228 m!8072636))

(declare-fun m!8072664 () Bool)

(assert (=> b!7480228 m!8072664))

(assert (=> b!7480228 m!8072642))

(assert (=> b!7480228 m!8072664))

(assert (=> b!7480228 m!8072642))

(declare-fun m!8072666 () Bool)

(assert (=> b!7480228 m!8072666))

(assert (=> b!7480220 m!8072642))

(assert (=> b!7480220 m!8072642))

(assert (=> b!7480220 m!8072644))

(assert (=> bm!686709 m!8072640))

(assert (=> b!7479980 d!2299993))

(declare-fun b!7480232 () Bool)

(declare-fun res!3001049 () Bool)

(declare-fun e!4461890 () Bool)

(assert (=> b!7480232 (=> (not res!3001049) (not e!4461890))))

(declare-fun call!686715 () Bool)

(assert (=> b!7480232 (= res!3001049 (not call!686715))))

(declare-fun b!7480233 () Bool)

(declare-fun e!4461889 () Bool)

(declare-fun lt!2628003 () Bool)

(assert (=> b!7480233 (= e!4461889 (= lt!2628003 call!686715))))

(declare-fun bm!686710 () Bool)

(assert (=> bm!686710 (= call!686715 (isEmpty!41211 (_2!37638 lt!2627930)))))

(declare-fun b!7480234 () Bool)

(declare-fun res!3001053 () Bool)

(assert (=> b!7480234 (=> (not res!3001053) (not e!4461890))))

(assert (=> b!7480234 (= res!3001053 (isEmpty!41211 (tail!14916 (_2!37638 lt!2627930))))))

(declare-fun b!7480236 () Bool)

(declare-fun e!4461888 () Bool)

(declare-fun e!4461891 () Bool)

(assert (=> b!7480236 (= e!4461888 e!4461891)))

(declare-fun res!3001050 () Bool)

(assert (=> b!7480236 (=> (not res!3001050) (not e!4461891))))

(assert (=> b!7480236 (= res!3001050 (not lt!2628003))))

(declare-fun b!7480237 () Bool)

(assert (=> b!7480237 (= e!4461890 (= (head!15347 (_2!37638 lt!2627930)) (c!1381657 rTail!78)))))

(declare-fun b!7480238 () Bool)

(declare-fun e!4461887 () Bool)

(assert (=> b!7480238 (= e!4461887 (not (= (head!15347 (_2!37638 lt!2627930)) (c!1381657 rTail!78))))))

(declare-fun b!7480239 () Bool)

(declare-fun res!3001048 () Bool)

(assert (=> b!7480239 (=> res!3001048 e!4461888)))

(assert (=> b!7480239 (= res!3001048 e!4461890)))

(declare-fun res!3001054 () Bool)

(assert (=> b!7480239 (=> (not res!3001054) (not e!4461890))))

(assert (=> b!7480239 (= res!3001054 lt!2628003)))

(declare-fun d!2299995 () Bool)

(assert (=> d!2299995 e!4461889))

(declare-fun c!1381697 () Bool)

(assert (=> d!2299995 (= c!1381697 (is-EmptyExpr!19610 rTail!78))))

(declare-fun e!4461892 () Bool)

(assert (=> d!2299995 (= lt!2628003 e!4461892)))

(declare-fun c!1381696 () Bool)

(assert (=> d!2299995 (= c!1381696 (isEmpty!41211 (_2!37638 lt!2627930)))))

(assert (=> d!2299995 (validRegex!10124 rTail!78)))

(assert (=> d!2299995 (= (matchR!9374 rTail!78 (_2!37638 lt!2627930)) lt!2628003)))

(declare-fun b!7480235 () Bool)

(assert (=> b!7480235 (= e!4461891 e!4461887)))

(declare-fun res!3001052 () Bool)

(assert (=> b!7480235 (=> res!3001052 e!4461887)))

(assert (=> b!7480235 (= res!3001052 call!686715)))

(declare-fun b!7480240 () Bool)

(declare-fun e!4461893 () Bool)

(assert (=> b!7480240 (= e!4461889 e!4461893)))

(declare-fun c!1381695 () Bool)

(assert (=> b!7480240 (= c!1381695 (is-EmptyLang!19610 rTail!78))))

(declare-fun b!7480241 () Bool)

(declare-fun res!3001047 () Bool)

(assert (=> b!7480241 (=> res!3001047 e!4461887)))

(assert (=> b!7480241 (= res!3001047 (not (isEmpty!41211 (tail!14916 (_2!37638 lt!2627930)))))))

(declare-fun b!7480242 () Bool)

(assert (=> b!7480242 (= e!4461892 (matchR!9374 (derivativeStep!5607 rTail!78 (head!15347 (_2!37638 lt!2627930))) (tail!14916 (_2!37638 lt!2627930))))))

(declare-fun b!7480243 () Bool)

(declare-fun res!3001051 () Bool)

(assert (=> b!7480243 (=> res!3001051 e!4461888)))

(assert (=> b!7480243 (= res!3001051 (not (is-ElementMatch!19610 rTail!78)))))

(assert (=> b!7480243 (= e!4461893 e!4461888)))

(declare-fun b!7480244 () Bool)

(assert (=> b!7480244 (= e!4461893 (not lt!2628003))))

(declare-fun b!7480245 () Bool)

(assert (=> b!7480245 (= e!4461892 (nullable!8548 rTail!78))))

(assert (= (and d!2299995 c!1381696) b!7480245))

(assert (= (and d!2299995 (not c!1381696)) b!7480242))

(assert (= (and d!2299995 c!1381697) b!7480233))

(assert (= (and d!2299995 (not c!1381697)) b!7480240))

(assert (= (and b!7480240 c!1381695) b!7480244))

(assert (= (and b!7480240 (not c!1381695)) b!7480243))

(assert (= (and b!7480243 (not res!3001051)) b!7480239))

(assert (= (and b!7480239 res!3001054) b!7480232))

(assert (= (and b!7480232 res!3001049) b!7480234))

(assert (= (and b!7480234 res!3001053) b!7480237))

(assert (= (and b!7480239 (not res!3001048)) b!7480236))

(assert (= (and b!7480236 res!3001050) b!7480235))

(assert (= (and b!7480235 (not res!3001052)) b!7480241))

(assert (= (and b!7480241 (not res!3001047)) b!7480238))

(assert (= (or b!7480233 b!7480232 b!7480235) bm!686710))

(declare-fun m!8072668 () Bool)

(assert (=> b!7480238 m!8072668))

(declare-fun m!8072670 () Bool)

(assert (=> b!7480245 m!8072670))

(declare-fun m!8072672 () Bool)

(assert (=> d!2299995 m!8072672))

(assert (=> d!2299995 m!8072518))

(assert (=> b!7480237 m!8072668))

(declare-fun m!8072674 () Bool)

(assert (=> b!7480241 m!8072674))

(assert (=> b!7480241 m!8072674))

(declare-fun m!8072676 () Bool)

(assert (=> b!7480241 m!8072676))

(assert (=> b!7480242 m!8072668))

(assert (=> b!7480242 m!8072668))

(declare-fun m!8072678 () Bool)

(assert (=> b!7480242 m!8072678))

(assert (=> b!7480242 m!8072674))

(assert (=> b!7480242 m!8072678))

(assert (=> b!7480242 m!8072674))

(declare-fun m!8072680 () Bool)

(assert (=> b!7480242 m!8072680))

(assert (=> b!7480234 m!8072674))

(assert (=> b!7480234 m!8072674))

(assert (=> b!7480234 m!8072676))

(assert (=> bm!686710 m!8072672))

(assert (=> b!7479979 d!2299995))

(declare-fun b!7480275 () Bool)

(declare-fun e!4461913 () Option!17167)

(assert (=> b!7480275 (= e!4461913 None!17166)))

(declare-fun b!7480277 () Bool)

(declare-fun e!4461912 () Bool)

(assert (=> b!7480277 (= e!4461912 (matchR!9374 rTail!78 s!13591))))

(declare-fun b!7480278 () Bool)

(declare-fun e!4461915 () Option!17167)

(assert (=> b!7480278 (= e!4461915 e!4461913)))

(declare-fun c!1381706 () Bool)

(assert (=> b!7480278 (= c!1381706 (is-Nil!72202 s!13591))))

(declare-fun b!7480279 () Bool)

(declare-fun res!3001072 () Bool)

(declare-fun e!4461911 () Bool)

(assert (=> b!7480279 (=> (not res!3001072) (not e!4461911))))

(declare-fun lt!2628010 () Option!17167)

(assert (=> b!7480279 (= res!3001072 (matchR!9374 rTail!78 (_2!37638 (get!25279 lt!2628010))))))

(declare-fun d!2299997 () Bool)

(declare-fun e!4461914 () Bool)

(assert (=> d!2299997 e!4461914))

(declare-fun res!3001068 () Bool)

(assert (=> d!2299997 (=> res!3001068 e!4461914)))

(assert (=> d!2299997 (= res!3001068 e!4461911)))

(declare-fun res!3001071 () Bool)

(assert (=> d!2299997 (=> (not res!3001071) (not e!4461911))))

(assert (=> d!2299997 (= res!3001071 (isDefined!13856 lt!2628010))))

(assert (=> d!2299997 (= lt!2628010 e!4461915)))

(declare-fun c!1381707 () Bool)

(assert (=> d!2299997 (= c!1381707 e!4461912)))

(declare-fun res!3001069 () Bool)

(assert (=> d!2299997 (=> (not res!3001069) (not e!4461912))))

(assert (=> d!2299997 (= res!3001069 (matchR!9374 lt!2627913 Nil!72202))))

(assert (=> d!2299997 (validRegex!10124 lt!2627913)))

(assert (=> d!2299997 (= (findConcatSeparation!3289 lt!2627913 rTail!78 Nil!72202 s!13591 s!13591) lt!2628010)))

(declare-fun b!7480276 () Bool)

(assert (=> b!7480276 (= e!4461915 (Some!17166 (tuple2!68671 Nil!72202 s!13591)))))

(declare-fun b!7480280 () Bool)

(assert (=> b!7480280 (= e!4461914 (not (isDefined!13856 lt!2628010)))))

(declare-fun b!7480281 () Bool)

(declare-fun ++!17224 (List!72326 List!72326) List!72326)

(assert (=> b!7480281 (= e!4461911 (= (++!17224 (_1!37638 (get!25279 lt!2628010)) (_2!37638 (get!25279 lt!2628010))) s!13591))))

(declare-fun b!7480282 () Bool)

(declare-fun res!3001070 () Bool)

(assert (=> b!7480282 (=> (not res!3001070) (not e!4461911))))

(assert (=> b!7480282 (= res!3001070 (matchR!9374 lt!2627913 (_1!37638 (get!25279 lt!2628010))))))

(declare-fun b!7480283 () Bool)

(declare-fun lt!2628011 () Unit!166055)

(declare-fun lt!2628012 () Unit!166055)

(assert (=> b!7480283 (= lt!2628011 lt!2628012)))

(assert (=> b!7480283 (= (++!17224 (++!17224 Nil!72202 (Cons!72202 (h!78650 s!13591) Nil!72202)) (t!386895 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3100 (List!72326 C!39494 List!72326 List!72326) Unit!166055)

(assert (=> b!7480283 (= lt!2628012 (lemmaMoveElementToOtherListKeepsConcatEq!3100 Nil!72202 (h!78650 s!13591) (t!386895 s!13591) s!13591))))

(assert (=> b!7480283 (= e!4461913 (findConcatSeparation!3289 lt!2627913 rTail!78 (++!17224 Nil!72202 (Cons!72202 (h!78650 s!13591) Nil!72202)) (t!386895 s!13591) s!13591))))

(assert (= (and d!2299997 res!3001069) b!7480277))

(assert (= (and d!2299997 c!1381707) b!7480276))

(assert (= (and d!2299997 (not c!1381707)) b!7480278))

(assert (= (and b!7480278 c!1381706) b!7480275))

(assert (= (and b!7480278 (not c!1381706)) b!7480283))

(assert (= (and d!2299997 res!3001071) b!7480282))

(assert (= (and b!7480282 res!3001070) b!7480279))

(assert (= (and b!7480279 res!3001072) b!7480281))

(assert (= (and d!2299997 (not res!3001068)) b!7480280))

(declare-fun m!8072690 () Bool)

(assert (=> d!2299997 m!8072690))

(declare-fun m!8072692 () Bool)

(assert (=> d!2299997 m!8072692))

(declare-fun m!8072694 () Bool)

(assert (=> d!2299997 m!8072694))

(declare-fun m!8072696 () Bool)

(assert (=> b!7480277 m!8072696))

(declare-fun m!8072698 () Bool)

(assert (=> b!7480281 m!8072698))

(declare-fun m!8072700 () Bool)

(assert (=> b!7480281 m!8072700))

(assert (=> b!7480279 m!8072698))

(declare-fun m!8072702 () Bool)

(assert (=> b!7480279 m!8072702))

(assert (=> b!7480280 m!8072690))

(assert (=> b!7480282 m!8072698))

(declare-fun m!8072704 () Bool)

(assert (=> b!7480282 m!8072704))

(declare-fun m!8072706 () Bool)

(assert (=> b!7480283 m!8072706))

(assert (=> b!7480283 m!8072706))

(declare-fun m!8072708 () Bool)

(assert (=> b!7480283 m!8072708))

(declare-fun m!8072710 () Bool)

(assert (=> b!7480283 m!8072710))

(assert (=> b!7480283 m!8072706))

(declare-fun m!8072712 () Bool)

(assert (=> b!7480283 m!8072712))

(assert (=> b!7479992 d!2299997))

(declare-fun d!2300001 () Bool)

(declare-fun isEmpty!41212 (Option!17167) Bool)

(assert (=> d!2300001 (= (isDefined!13856 (findConcatSeparation!3289 lt!2627913 rTail!78 Nil!72202 s!13591 s!13591)) (not (isEmpty!41212 (findConcatSeparation!3289 lt!2627913 rTail!78 Nil!72202 s!13591 s!13591))))))

(declare-fun bs!1932868 () Bool)

(assert (= bs!1932868 d!2300001))

(assert (=> bs!1932868 m!8072512))

(declare-fun m!8072714 () Bool)

(assert (=> bs!1932868 m!8072714))

(assert (=> b!7479992 d!2300001))

(declare-fun d!2300003 () Bool)

(declare-fun choose!57828 (Int) Bool)

(assert (=> d!2300003 (= (Exists!4229 lambda!463473) (choose!57828 lambda!463473))))

(declare-fun bs!1932869 () Bool)

(assert (= bs!1932869 d!2300003))

(declare-fun m!8072716 () Bool)

(assert (=> bs!1932869 m!8072716))

(assert (=> b!7479992 d!2300003))

(declare-fun d!2300005 () Bool)

(assert (=> d!2300005 (= (Exists!4229 lambda!463472) (choose!57828 lambda!463472))))

(declare-fun bs!1932870 () Bool)

(assert (= bs!1932870 d!2300005))

(declare-fun m!8072718 () Bool)

(assert (=> bs!1932870 m!8072718))

(assert (=> b!7479992 d!2300005))

(declare-fun bs!1932871 () Bool)

(declare-fun d!2300007 () Bool)

(assert (= bs!1932871 (and d!2300007 b!7480214)))

(declare-fun lambda!463508 () Int)

(assert (=> bs!1932871 (not (= lambda!463508 lambda!463502))))

(declare-fun bs!1932872 () Bool)

(assert (= bs!1932872 (and d!2300007 b!7479992)))

(assert (=> bs!1932872 (not (= lambda!463508 lambda!463473))))

(assert (=> bs!1932872 (= lambda!463508 lambda!463472)))

(declare-fun bs!1932873 () Bool)

(assert (= bs!1932873 (and d!2300007 b!7480215)))

(assert (=> bs!1932873 (not (= lambda!463508 lambda!463503))))

(declare-fun bs!1932874 () Bool)

(assert (= bs!1932874 (and d!2300007 b!7480204)))

(assert (=> bs!1932874 (not (= lambda!463508 lambda!463501))))

(declare-fun bs!1932875 () Bool)

(assert (= bs!1932875 (and d!2300007 b!7480203)))

(assert (=> bs!1932875 (not (= lambda!463508 lambda!463500))))

(declare-fun bs!1932876 () Bool)

(assert (= bs!1932876 (and d!2300007 b!7479997)))

(assert (=> bs!1932876 (not (= lambda!463508 lambda!463475))))

(assert (=> bs!1932876 (= (= lt!2627913 r1!5845) (= lambda!463508 lambda!463474))))

(assert (=> d!2300007 true))

(assert (=> d!2300007 true))

(assert (=> d!2300007 true))

(assert (=> d!2300007 (= (isDefined!13856 (findConcatSeparation!3289 lt!2627913 rTail!78 Nil!72202 s!13591 s!13591)) (Exists!4229 lambda!463508))))

(declare-fun lt!2628017 () Unit!166055)

(declare-fun choose!57829 (Regex!19610 Regex!19610 List!72326) Unit!166055)

(assert (=> d!2300007 (= lt!2628017 (choose!57829 lt!2627913 rTail!78 s!13591))))

(assert (=> d!2300007 (validRegex!10124 lt!2627913)))

(assert (=> d!2300007 (= (lemmaFindConcatSeparationEquivalentToExists!3047 lt!2627913 rTail!78 s!13591) lt!2628017)))

(declare-fun bs!1932877 () Bool)

(assert (= bs!1932877 d!2300007))

(assert (=> bs!1932877 m!8072512))

(assert (=> bs!1932877 m!8072512))

(assert (=> bs!1932877 m!8072514))

(declare-fun m!8072720 () Bool)

(assert (=> bs!1932877 m!8072720))

(declare-fun m!8072722 () Bool)

(assert (=> bs!1932877 m!8072722))

(assert (=> bs!1932877 m!8072694))

(assert (=> b!7479992 d!2300007))

(declare-fun bs!1932879 () Bool)

(declare-fun d!2300009 () Bool)

(assert (= bs!1932879 (and d!2300009 b!7480214)))

(declare-fun lambda!463513 () Int)

(assert (=> bs!1932879 (not (= lambda!463513 lambda!463502))))

(declare-fun bs!1932880 () Bool)

(assert (= bs!1932880 (and d!2300009 b!7479992)))

(assert (=> bs!1932880 (not (= lambda!463513 lambda!463473))))

(declare-fun bs!1932881 () Bool)

(assert (= bs!1932881 (and d!2300009 d!2300007)))

(assert (=> bs!1932881 (= lambda!463513 lambda!463508)))

(assert (=> bs!1932880 (= lambda!463513 lambda!463472)))

(declare-fun bs!1932882 () Bool)

(assert (= bs!1932882 (and d!2300009 b!7480215)))

(assert (=> bs!1932882 (not (= lambda!463513 lambda!463503))))

(declare-fun bs!1932883 () Bool)

(assert (= bs!1932883 (and d!2300009 b!7480204)))

(assert (=> bs!1932883 (not (= lambda!463513 lambda!463501))))

(declare-fun bs!1932884 () Bool)

(assert (= bs!1932884 (and d!2300009 b!7480203)))

(assert (=> bs!1932884 (not (= lambda!463513 lambda!463500))))

(declare-fun bs!1932885 () Bool)

(assert (= bs!1932885 (and d!2300009 b!7479997)))

(assert (=> bs!1932885 (not (= lambda!463513 lambda!463475))))

(assert (=> bs!1932885 (= (= lt!2627913 r1!5845) (= lambda!463513 lambda!463474))))

(assert (=> d!2300009 true))

(assert (=> d!2300009 true))

(assert (=> d!2300009 true))

(declare-fun lambda!463514 () Int)

(assert (=> bs!1932879 (not (= lambda!463514 lambda!463502))))

(assert (=> bs!1932880 (= lambda!463514 lambda!463473)))

(assert (=> bs!1932881 (not (= lambda!463514 lambda!463508))))

(assert (=> bs!1932880 (not (= lambda!463514 lambda!463472))))

(assert (=> bs!1932882 (= (and (= lt!2627913 (regOne!39732 lt!2627917)) (= rTail!78 (regTwo!39732 lt!2627917))) (= lambda!463514 lambda!463503))))

(assert (=> bs!1932883 (= (and (= lt!2627913 (regOne!39732 lt!2627925)) (= rTail!78 (regTwo!39732 lt!2627925))) (= lambda!463514 lambda!463501))))

(assert (=> bs!1932884 (not (= lambda!463514 lambda!463500))))

(declare-fun bs!1932886 () Bool)

(assert (= bs!1932886 d!2300009))

(assert (=> bs!1932886 (not (= lambda!463514 lambda!463513))))

(assert (=> bs!1932885 (= (= lt!2627913 r1!5845) (= lambda!463514 lambda!463475))))

(assert (=> bs!1932885 (not (= lambda!463514 lambda!463474))))

(assert (=> d!2300009 true))

(assert (=> d!2300009 true))

(assert (=> d!2300009 true))

(assert (=> d!2300009 (= (Exists!4229 lambda!463513) (Exists!4229 lambda!463514))))

(declare-fun lt!2628023 () Unit!166055)

(declare-fun choose!57830 (Regex!19610 Regex!19610 List!72326) Unit!166055)

(assert (=> d!2300009 (= lt!2628023 (choose!57830 lt!2627913 rTail!78 s!13591))))

(assert (=> d!2300009 (validRegex!10124 lt!2627913)))

(assert (=> d!2300009 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2563 lt!2627913 rTail!78 s!13591) lt!2628023)))

(declare-fun m!8072746 () Bool)

(assert (=> bs!1932886 m!8072746))

(declare-fun m!8072748 () Bool)

(assert (=> bs!1932886 m!8072748))

(declare-fun m!8072750 () Bool)

(assert (=> bs!1932886 m!8072750))

(assert (=> bs!1932886 m!8072694))

(assert (=> b!7479992 d!2300009))

(declare-fun b!7480363 () Bool)

(declare-fun e!4461959 () Option!17167)

(assert (=> b!7480363 (= e!4461959 None!17166)))

(declare-fun b!7480365 () Bool)

(declare-fun e!4461958 () Bool)

(assert (=> b!7480365 (= e!4461958 (matchR!9374 rTail!78 s!13591))))

(declare-fun b!7480366 () Bool)

(declare-fun e!4461961 () Option!17167)

(assert (=> b!7480366 (= e!4461961 e!4461959)))

(declare-fun c!1381724 () Bool)

(assert (=> b!7480366 (= c!1381724 (is-Nil!72202 s!13591))))

(declare-fun b!7480367 () Bool)

(declare-fun res!3001124 () Bool)

(declare-fun e!4461957 () Bool)

(assert (=> b!7480367 (=> (not res!3001124) (not e!4461957))))

(declare-fun lt!2628024 () Option!17167)

(assert (=> b!7480367 (= res!3001124 (matchR!9374 rTail!78 (_2!37638 (get!25279 lt!2628024))))))

(declare-fun d!2300017 () Bool)

(declare-fun e!4461960 () Bool)

(assert (=> d!2300017 e!4461960))

(declare-fun res!3001120 () Bool)

(assert (=> d!2300017 (=> res!3001120 e!4461960)))

(assert (=> d!2300017 (= res!3001120 e!4461957)))

(declare-fun res!3001123 () Bool)

(assert (=> d!2300017 (=> (not res!3001123) (not e!4461957))))

(assert (=> d!2300017 (= res!3001123 (isDefined!13856 lt!2628024))))

(assert (=> d!2300017 (= lt!2628024 e!4461961)))

(declare-fun c!1381725 () Bool)

(assert (=> d!2300017 (= c!1381725 e!4461958)))

(declare-fun res!3001121 () Bool)

(assert (=> d!2300017 (=> (not res!3001121) (not e!4461958))))

(assert (=> d!2300017 (= res!3001121 (matchR!9374 r1!5845 Nil!72202))))

(assert (=> d!2300017 (validRegex!10124 r1!5845)))

(assert (=> d!2300017 (= (findConcatSeparation!3289 r1!5845 rTail!78 Nil!72202 s!13591 s!13591) lt!2628024)))

(declare-fun b!7480364 () Bool)

(assert (=> b!7480364 (= e!4461961 (Some!17166 (tuple2!68671 Nil!72202 s!13591)))))

(declare-fun b!7480368 () Bool)

(assert (=> b!7480368 (= e!4461960 (not (isDefined!13856 lt!2628024)))))

(declare-fun b!7480369 () Bool)

(assert (=> b!7480369 (= e!4461957 (= (++!17224 (_1!37638 (get!25279 lt!2628024)) (_2!37638 (get!25279 lt!2628024))) s!13591))))

(declare-fun b!7480370 () Bool)

(declare-fun res!3001122 () Bool)

(assert (=> b!7480370 (=> (not res!3001122) (not e!4461957))))

(assert (=> b!7480370 (= res!3001122 (matchR!9374 r1!5845 (_1!37638 (get!25279 lt!2628024))))))

(declare-fun b!7480371 () Bool)

(declare-fun lt!2628025 () Unit!166055)

(declare-fun lt!2628026 () Unit!166055)

(assert (=> b!7480371 (= lt!2628025 lt!2628026)))

(assert (=> b!7480371 (= (++!17224 (++!17224 Nil!72202 (Cons!72202 (h!78650 s!13591) Nil!72202)) (t!386895 s!13591)) s!13591)))

(assert (=> b!7480371 (= lt!2628026 (lemmaMoveElementToOtherListKeepsConcatEq!3100 Nil!72202 (h!78650 s!13591) (t!386895 s!13591) s!13591))))

(assert (=> b!7480371 (= e!4461959 (findConcatSeparation!3289 r1!5845 rTail!78 (++!17224 Nil!72202 (Cons!72202 (h!78650 s!13591) Nil!72202)) (t!386895 s!13591) s!13591))))

(assert (= (and d!2300017 res!3001121) b!7480365))

(assert (= (and d!2300017 c!1381725) b!7480364))

(assert (= (and d!2300017 (not c!1381725)) b!7480366))

(assert (= (and b!7480366 c!1381724) b!7480363))

(assert (= (and b!7480366 (not c!1381724)) b!7480371))

(assert (= (and d!2300017 res!3001123) b!7480370))

(assert (= (and b!7480370 res!3001122) b!7480367))

(assert (= (and b!7480367 res!3001124) b!7480369))

(assert (= (and d!2300017 (not res!3001120)) b!7480368))

(declare-fun m!8072752 () Bool)

(assert (=> d!2300017 m!8072752))

(declare-fun m!8072754 () Bool)

(assert (=> d!2300017 m!8072754))

(assert (=> d!2300017 m!8072550))

(assert (=> b!7480365 m!8072696))

(declare-fun m!8072756 () Bool)

(assert (=> b!7480369 m!8072756))

(declare-fun m!8072758 () Bool)

(assert (=> b!7480369 m!8072758))

(assert (=> b!7480367 m!8072756))

(declare-fun m!8072760 () Bool)

(assert (=> b!7480367 m!8072760))

(assert (=> b!7480368 m!8072752))

(assert (=> b!7480370 m!8072756))

(declare-fun m!8072762 () Bool)

(assert (=> b!7480370 m!8072762))

(assert (=> b!7480371 m!8072706))

(assert (=> b!7480371 m!8072706))

(assert (=> b!7480371 m!8072708))

(assert (=> b!7480371 m!8072710))

(assert (=> b!7480371 m!8072706))

(declare-fun m!8072764 () Bool)

(assert (=> b!7480371 m!8072764))

(assert (=> b!7479997 d!2300017))

(declare-fun d!2300019 () Bool)

(assert (=> d!2300019 (= (isDefined!13856 lt!2627921) (not (isEmpty!41212 lt!2627921)))))

(declare-fun bs!1932891 () Bool)

(assert (= bs!1932891 d!2300019))

(declare-fun m!8072766 () Bool)

(assert (=> bs!1932891 m!8072766))

(assert (=> b!7479997 d!2300019))

(declare-fun d!2300021 () Bool)

(assert (=> d!2300021 (= (get!25279 lt!2627921) (v!54295 lt!2627921))))

(assert (=> b!7479997 d!2300021))

(declare-fun b!7480372 () Bool)

(declare-fun res!3001127 () Bool)

(declare-fun e!4461965 () Bool)

(assert (=> b!7480372 (=> (not res!3001127) (not e!4461965))))

(declare-fun call!686724 () Bool)

(assert (=> b!7480372 (= res!3001127 (not call!686724))))

(declare-fun b!7480373 () Bool)

(declare-fun e!4461964 () Bool)

(declare-fun lt!2628027 () Bool)

(assert (=> b!7480373 (= e!4461964 (= lt!2628027 call!686724))))

(declare-fun bm!686719 () Bool)

(assert (=> bm!686719 (= call!686724 (isEmpty!41211 (_1!37638 lt!2627930)))))

(declare-fun b!7480374 () Bool)

(declare-fun res!3001131 () Bool)

(assert (=> b!7480374 (=> (not res!3001131) (not e!4461965))))

(assert (=> b!7480374 (= res!3001131 (isEmpty!41211 (tail!14916 (_1!37638 lt!2627930))))))

(declare-fun b!7480376 () Bool)

(declare-fun e!4461963 () Bool)

(declare-fun e!4461966 () Bool)

(assert (=> b!7480376 (= e!4461963 e!4461966)))

(declare-fun res!3001128 () Bool)

(assert (=> b!7480376 (=> (not res!3001128) (not e!4461966))))

(assert (=> b!7480376 (= res!3001128 (not lt!2628027))))

(declare-fun b!7480377 () Bool)

(assert (=> b!7480377 (= e!4461965 (= (head!15347 (_1!37638 lt!2627930)) (c!1381657 r1!5845)))))

(declare-fun b!7480378 () Bool)

(declare-fun e!4461962 () Bool)

(assert (=> b!7480378 (= e!4461962 (not (= (head!15347 (_1!37638 lt!2627930)) (c!1381657 r1!5845))))))

(declare-fun b!7480379 () Bool)

(declare-fun res!3001126 () Bool)

(assert (=> b!7480379 (=> res!3001126 e!4461963)))

(assert (=> b!7480379 (= res!3001126 e!4461965)))

(declare-fun res!3001132 () Bool)

(assert (=> b!7480379 (=> (not res!3001132) (not e!4461965))))

(assert (=> b!7480379 (= res!3001132 lt!2628027)))

(declare-fun d!2300023 () Bool)

(assert (=> d!2300023 e!4461964))

(declare-fun c!1381728 () Bool)

(assert (=> d!2300023 (= c!1381728 (is-EmptyExpr!19610 r1!5845))))

(declare-fun e!4461967 () Bool)

(assert (=> d!2300023 (= lt!2628027 e!4461967)))

(declare-fun c!1381727 () Bool)

(assert (=> d!2300023 (= c!1381727 (isEmpty!41211 (_1!37638 lt!2627930)))))

(assert (=> d!2300023 (validRegex!10124 r1!5845)))

(assert (=> d!2300023 (= (matchR!9374 r1!5845 (_1!37638 lt!2627930)) lt!2628027)))

(declare-fun b!7480375 () Bool)

(assert (=> b!7480375 (= e!4461966 e!4461962)))

(declare-fun res!3001130 () Bool)

(assert (=> b!7480375 (=> res!3001130 e!4461962)))

(assert (=> b!7480375 (= res!3001130 call!686724)))

(declare-fun b!7480380 () Bool)

(declare-fun e!4461968 () Bool)

(assert (=> b!7480380 (= e!4461964 e!4461968)))

(declare-fun c!1381726 () Bool)

(assert (=> b!7480380 (= c!1381726 (is-EmptyLang!19610 r1!5845))))

(declare-fun b!7480381 () Bool)

(declare-fun res!3001125 () Bool)

(assert (=> b!7480381 (=> res!3001125 e!4461962)))

(assert (=> b!7480381 (= res!3001125 (not (isEmpty!41211 (tail!14916 (_1!37638 lt!2627930)))))))

(declare-fun b!7480382 () Bool)

(assert (=> b!7480382 (= e!4461967 (matchR!9374 (derivativeStep!5607 r1!5845 (head!15347 (_1!37638 lt!2627930))) (tail!14916 (_1!37638 lt!2627930))))))

(declare-fun b!7480383 () Bool)

(declare-fun res!3001129 () Bool)

(assert (=> b!7480383 (=> res!3001129 e!4461963)))

(assert (=> b!7480383 (= res!3001129 (not (is-ElementMatch!19610 r1!5845)))))

(assert (=> b!7480383 (= e!4461968 e!4461963)))

(declare-fun b!7480384 () Bool)

(assert (=> b!7480384 (= e!4461968 (not lt!2628027))))

(declare-fun b!7480385 () Bool)

(assert (=> b!7480385 (= e!4461967 (nullable!8548 r1!5845))))

(assert (= (and d!2300023 c!1381727) b!7480385))

(assert (= (and d!2300023 (not c!1381727)) b!7480382))

(assert (= (and d!2300023 c!1381728) b!7480373))

(assert (= (and d!2300023 (not c!1381728)) b!7480380))

(assert (= (and b!7480380 c!1381726) b!7480384))

(assert (= (and b!7480380 (not c!1381726)) b!7480383))

(assert (= (and b!7480383 (not res!3001129)) b!7480379))

(assert (= (and b!7480379 res!3001132) b!7480372))

(assert (= (and b!7480372 res!3001127) b!7480374))

(assert (= (and b!7480374 res!3001131) b!7480377))

(assert (= (and b!7480379 (not res!3001126)) b!7480376))

(assert (= (and b!7480376 res!3001128) b!7480375))

(assert (= (and b!7480375 (not res!3001130)) b!7480381))

(assert (= (and b!7480381 (not res!3001125)) b!7480378))

(assert (= (or b!7480373 b!7480372 b!7480375) bm!686719))

(declare-fun m!8072768 () Bool)

(assert (=> b!7480378 m!8072768))

(declare-fun m!8072770 () Bool)

(assert (=> b!7480385 m!8072770))

(declare-fun m!8072772 () Bool)

(assert (=> d!2300023 m!8072772))

(assert (=> d!2300023 m!8072550))

(assert (=> b!7480377 m!8072768))

(declare-fun m!8072774 () Bool)

(assert (=> b!7480381 m!8072774))

(assert (=> b!7480381 m!8072774))

(declare-fun m!8072776 () Bool)

(assert (=> b!7480381 m!8072776))

(assert (=> b!7480382 m!8072768))

(assert (=> b!7480382 m!8072768))

(declare-fun m!8072778 () Bool)

(assert (=> b!7480382 m!8072778))

(assert (=> b!7480382 m!8072774))

(assert (=> b!7480382 m!8072778))

(assert (=> b!7480382 m!8072774))

(declare-fun m!8072780 () Bool)

(assert (=> b!7480382 m!8072780))

(assert (=> b!7480374 m!8072774))

(assert (=> b!7480374 m!8072774))

(assert (=> b!7480374 m!8072776))

(assert (=> bm!686719 m!8072772))

(assert (=> b!7479997 d!2300023))

(declare-fun d!2300025 () Bool)

(assert (=> d!2300025 (= (Exists!4229 lambda!463475) (choose!57828 lambda!463475))))

(declare-fun bs!1932895 () Bool)

(assert (= bs!1932895 d!2300025))

(declare-fun m!8072782 () Bool)

(assert (=> bs!1932895 m!8072782))

(assert (=> b!7479997 d!2300025))

(declare-fun bs!1932898 () Bool)

(declare-fun d!2300027 () Bool)

(assert (= bs!1932898 (and d!2300027 d!2300009)))

(declare-fun lambda!463517 () Int)

(assert (=> bs!1932898 (not (= lambda!463517 lambda!463514))))

(declare-fun bs!1932899 () Bool)

(assert (= bs!1932899 (and d!2300027 b!7480214)))

(assert (=> bs!1932899 (not (= lambda!463517 lambda!463502))))

(declare-fun bs!1932900 () Bool)

(assert (= bs!1932900 (and d!2300027 b!7479992)))

(assert (=> bs!1932900 (not (= lambda!463517 lambda!463473))))

(declare-fun bs!1932901 () Bool)

(assert (= bs!1932901 (and d!2300027 d!2300007)))

(assert (=> bs!1932901 (= (= r1!5845 lt!2627913) (= lambda!463517 lambda!463508))))

(assert (=> bs!1932900 (= (= r1!5845 lt!2627913) (= lambda!463517 lambda!463472))))

(declare-fun bs!1932902 () Bool)

(assert (= bs!1932902 (and d!2300027 b!7480215)))

(assert (=> bs!1932902 (not (= lambda!463517 lambda!463503))))

(declare-fun bs!1932903 () Bool)

(assert (= bs!1932903 (and d!2300027 b!7480204)))

(assert (=> bs!1932903 (not (= lambda!463517 lambda!463501))))

(declare-fun bs!1932904 () Bool)

(assert (= bs!1932904 (and d!2300027 b!7480203)))

(assert (=> bs!1932904 (not (= lambda!463517 lambda!463500))))

(assert (=> bs!1932898 (= (= r1!5845 lt!2627913) (= lambda!463517 lambda!463513))))

(declare-fun bs!1932905 () Bool)

(assert (= bs!1932905 (and d!2300027 b!7479997)))

(assert (=> bs!1932905 (not (= lambda!463517 lambda!463475))))

(assert (=> bs!1932905 (= lambda!463517 lambda!463474)))

(assert (=> d!2300027 true))

(assert (=> d!2300027 true))

(assert (=> d!2300027 true))

(declare-fun lambda!463518 () Int)

(assert (=> bs!1932898 (= (= r1!5845 lt!2627913) (= lambda!463518 lambda!463514))))

(assert (=> bs!1932899 (not (= lambda!463518 lambda!463502))))

(assert (=> bs!1932900 (= (= r1!5845 lt!2627913) (= lambda!463518 lambda!463473))))

(assert (=> bs!1932901 (not (= lambda!463518 lambda!463508))))

(assert (=> bs!1932900 (not (= lambda!463518 lambda!463472))))

(declare-fun bs!1932906 () Bool)

(assert (= bs!1932906 d!2300027))

(assert (=> bs!1932906 (not (= lambda!463518 lambda!463517))))

(assert (=> bs!1932902 (= (and (= r1!5845 (regOne!39732 lt!2627917)) (= rTail!78 (regTwo!39732 lt!2627917))) (= lambda!463518 lambda!463503))))

(assert (=> bs!1932903 (= (and (= r1!5845 (regOne!39732 lt!2627925)) (= rTail!78 (regTwo!39732 lt!2627925))) (= lambda!463518 lambda!463501))))

(assert (=> bs!1932904 (not (= lambda!463518 lambda!463500))))

(assert (=> bs!1932898 (not (= lambda!463518 lambda!463513))))

(assert (=> bs!1932905 (= lambda!463518 lambda!463475)))

(assert (=> bs!1932905 (not (= lambda!463518 lambda!463474))))

(assert (=> d!2300027 true))

(assert (=> d!2300027 true))

(assert (=> d!2300027 true))

(assert (=> d!2300027 (= (Exists!4229 lambda!463517) (Exists!4229 lambda!463518))))

(declare-fun lt!2628028 () Unit!166055)

(assert (=> d!2300027 (= lt!2628028 (choose!57830 r1!5845 rTail!78 s!13591))))

(assert (=> d!2300027 (validRegex!10124 r1!5845)))

(assert (=> d!2300027 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2563 r1!5845 rTail!78 s!13591) lt!2628028)))

(declare-fun m!8072790 () Bool)

(assert (=> bs!1932906 m!8072790))

(declare-fun m!8072792 () Bool)

(assert (=> bs!1932906 m!8072792))

(declare-fun m!8072794 () Bool)

(assert (=> bs!1932906 m!8072794))

(assert (=> bs!1932906 m!8072550))

(assert (=> b!7479997 d!2300027))

(declare-fun d!2300031 () Bool)

(assert (=> d!2300031 (= (Exists!4229 lambda!463474) (choose!57828 lambda!463474))))

(declare-fun bs!1932908 () Bool)

(assert (= bs!1932908 d!2300031))

(declare-fun m!8072798 () Bool)

(assert (=> bs!1932908 m!8072798))

(assert (=> b!7479997 d!2300031))

(declare-fun bs!1932909 () Bool)

(declare-fun d!2300035 () Bool)

(assert (= bs!1932909 (and d!2300035 d!2300009)))

(declare-fun lambda!463519 () Int)

(assert (=> bs!1932909 (not (= lambda!463519 lambda!463514))))

(declare-fun bs!1932910 () Bool)

(assert (= bs!1932910 (and d!2300035 d!2300027)))

(assert (=> bs!1932910 (not (= lambda!463519 lambda!463518))))

(declare-fun bs!1932911 () Bool)

(assert (= bs!1932911 (and d!2300035 b!7480214)))

(assert (=> bs!1932911 (not (= lambda!463519 lambda!463502))))

(declare-fun bs!1932912 () Bool)

(assert (= bs!1932912 (and d!2300035 b!7479992)))

(assert (=> bs!1932912 (not (= lambda!463519 lambda!463473))))

(declare-fun bs!1932913 () Bool)

(assert (= bs!1932913 (and d!2300035 d!2300007)))

(assert (=> bs!1932913 (= (= r1!5845 lt!2627913) (= lambda!463519 lambda!463508))))

(assert (=> bs!1932912 (= (= r1!5845 lt!2627913) (= lambda!463519 lambda!463472))))

(assert (=> bs!1932910 (= lambda!463519 lambda!463517)))

(declare-fun bs!1932914 () Bool)

(assert (= bs!1932914 (and d!2300035 b!7480215)))

(assert (=> bs!1932914 (not (= lambda!463519 lambda!463503))))

(declare-fun bs!1932915 () Bool)

(assert (= bs!1932915 (and d!2300035 b!7480204)))

(assert (=> bs!1932915 (not (= lambda!463519 lambda!463501))))

(declare-fun bs!1932916 () Bool)

(assert (= bs!1932916 (and d!2300035 b!7480203)))

(assert (=> bs!1932916 (not (= lambda!463519 lambda!463500))))

(assert (=> bs!1932909 (= (= r1!5845 lt!2627913) (= lambda!463519 lambda!463513))))

(declare-fun bs!1932917 () Bool)

(assert (= bs!1932917 (and d!2300035 b!7479997)))

(assert (=> bs!1932917 (not (= lambda!463519 lambda!463475))))

(assert (=> bs!1932917 (= lambda!463519 lambda!463474)))

(assert (=> d!2300035 true))

(assert (=> d!2300035 true))

(assert (=> d!2300035 true))

(assert (=> d!2300035 (= (isDefined!13856 (findConcatSeparation!3289 r1!5845 rTail!78 Nil!72202 s!13591 s!13591)) (Exists!4229 lambda!463519))))

(declare-fun lt!2628029 () Unit!166055)

(assert (=> d!2300035 (= lt!2628029 (choose!57829 r1!5845 rTail!78 s!13591))))

(assert (=> d!2300035 (validRegex!10124 r1!5845)))

(assert (=> d!2300035 (= (lemmaFindConcatSeparationEquivalentToExists!3047 r1!5845 rTail!78 s!13591) lt!2628029)))

(declare-fun bs!1932918 () Bool)

(assert (= bs!1932918 d!2300035))

(assert (=> bs!1932918 m!8072546))

(assert (=> bs!1932918 m!8072546))

(declare-fun m!8072800 () Bool)

(assert (=> bs!1932918 m!8072800))

(declare-fun m!8072802 () Bool)

(assert (=> bs!1932918 m!8072802))

(declare-fun m!8072804 () Bool)

(assert (=> bs!1932918 m!8072804))

(assert (=> bs!1932918 m!8072550))

(assert (=> b!7479997 d!2300035))

(declare-fun b!7480404 () Bool)

(declare-fun res!3001146 () Bool)

(declare-fun e!4461984 () Bool)

(assert (=> b!7480404 (=> res!3001146 e!4461984)))

(assert (=> b!7480404 (= res!3001146 (not (is-Concat!28455 rTail!78)))))

(declare-fun e!4461987 () Bool)

(assert (=> b!7480404 (= e!4461987 e!4461984)))

(declare-fun b!7480405 () Bool)

(declare-fun e!4461988 () Bool)

(declare-fun call!686733 () Bool)

(assert (=> b!7480405 (= e!4461988 call!686733)))

(declare-fun b!7480406 () Bool)

(declare-fun e!4461986 () Bool)

(assert (=> b!7480406 (= e!4461986 e!4461987)))

(declare-fun c!1381733 () Bool)

(assert (=> b!7480406 (= c!1381733 (is-Union!19610 rTail!78))))

(declare-fun bm!686726 () Bool)

(declare-fun call!686732 () Bool)

(assert (=> bm!686726 (= call!686732 (validRegex!10124 (ite c!1381733 (regOne!39733 rTail!78) (regOne!39732 rTail!78))))))

(declare-fun b!7480407 () Bool)

(declare-fun e!4461985 () Bool)

(assert (=> b!7480407 (= e!4461986 e!4461985)))

(declare-fun res!3001144 () Bool)

(assert (=> b!7480407 (= res!3001144 (not (nullable!8548 (reg!19939 rTail!78))))))

(assert (=> b!7480407 (=> (not res!3001144) (not e!4461985))))

(declare-fun b!7480408 () Bool)

(declare-fun e!4461983 () Bool)

(assert (=> b!7480408 (= e!4461983 e!4461986)))

(declare-fun c!1381734 () Bool)

(assert (=> b!7480408 (= c!1381734 (is-Star!19610 rTail!78))))

(declare-fun b!7480409 () Bool)

(declare-fun call!686731 () Bool)

(assert (=> b!7480409 (= e!4461985 call!686731)))

(declare-fun d!2300037 () Bool)

(declare-fun res!3001143 () Bool)

(assert (=> d!2300037 (=> res!3001143 e!4461983)))

(assert (=> d!2300037 (= res!3001143 (is-ElementMatch!19610 rTail!78))))

(assert (=> d!2300037 (= (validRegex!10124 rTail!78) e!4461983)))

(declare-fun b!7480410 () Bool)

(declare-fun e!4461989 () Bool)

(assert (=> b!7480410 (= e!4461984 e!4461989)))

(declare-fun res!3001147 () Bool)

(assert (=> b!7480410 (=> (not res!3001147) (not e!4461989))))

(assert (=> b!7480410 (= res!3001147 call!686732)))

(declare-fun bm!686727 () Bool)

(assert (=> bm!686727 (= call!686733 call!686731)))

(declare-fun bm!686728 () Bool)

(assert (=> bm!686728 (= call!686731 (validRegex!10124 (ite c!1381734 (reg!19939 rTail!78) (ite c!1381733 (regTwo!39733 rTail!78) (regTwo!39732 rTail!78)))))))

(declare-fun b!7480411 () Bool)

(assert (=> b!7480411 (= e!4461989 call!686733)))

(declare-fun b!7480412 () Bool)

(declare-fun res!3001145 () Bool)

(assert (=> b!7480412 (=> (not res!3001145) (not e!4461988))))

(assert (=> b!7480412 (= res!3001145 call!686732)))

(assert (=> b!7480412 (= e!4461987 e!4461988)))

(assert (= (and d!2300037 (not res!3001143)) b!7480408))

(assert (= (and b!7480408 c!1381734) b!7480407))

(assert (= (and b!7480408 (not c!1381734)) b!7480406))

(assert (= (and b!7480407 res!3001144) b!7480409))

(assert (= (and b!7480406 c!1381733) b!7480412))

(assert (= (and b!7480406 (not c!1381733)) b!7480404))

(assert (= (and b!7480412 res!3001145) b!7480405))

(assert (= (and b!7480404 (not res!3001146)) b!7480410))

(assert (= (and b!7480410 res!3001147) b!7480411))

(assert (= (or b!7480405 b!7480411) bm!686727))

(assert (= (or b!7480412 b!7480410) bm!686726))

(assert (= (or b!7480409 bm!686727) bm!686728))

(declare-fun m!8072806 () Bool)

(assert (=> bm!686726 m!8072806))

(declare-fun m!8072808 () Bool)

(assert (=> b!7480407 m!8072808))

(declare-fun m!8072810 () Bool)

(assert (=> bm!686728 m!8072810))

(assert (=> b!7479988 d!2300037))

(declare-fun b!7480413 () Bool)

(declare-fun res!3001151 () Bool)

(declare-fun e!4461991 () Bool)

(assert (=> b!7480413 (=> res!3001151 e!4461991)))

(assert (=> b!7480413 (= res!3001151 (not (is-Concat!28455 r1!5845)))))

(declare-fun e!4461994 () Bool)

(assert (=> b!7480413 (= e!4461994 e!4461991)))

(declare-fun b!7480414 () Bool)

(declare-fun e!4461995 () Bool)

(declare-fun call!686736 () Bool)

(assert (=> b!7480414 (= e!4461995 call!686736)))

(declare-fun b!7480415 () Bool)

(declare-fun e!4461993 () Bool)

(assert (=> b!7480415 (= e!4461993 e!4461994)))

(declare-fun c!1381735 () Bool)

(assert (=> b!7480415 (= c!1381735 (is-Union!19610 r1!5845))))

(declare-fun bm!686729 () Bool)

(declare-fun call!686735 () Bool)

(assert (=> bm!686729 (= call!686735 (validRegex!10124 (ite c!1381735 (regOne!39733 r1!5845) (regOne!39732 r1!5845))))))

(declare-fun b!7480416 () Bool)

(declare-fun e!4461992 () Bool)

(assert (=> b!7480416 (= e!4461993 e!4461992)))

(declare-fun res!3001149 () Bool)

(assert (=> b!7480416 (= res!3001149 (not (nullable!8548 (reg!19939 r1!5845))))))

(assert (=> b!7480416 (=> (not res!3001149) (not e!4461992))))

(declare-fun b!7480417 () Bool)

(declare-fun e!4461990 () Bool)

(assert (=> b!7480417 (= e!4461990 e!4461993)))

(declare-fun c!1381736 () Bool)

(assert (=> b!7480417 (= c!1381736 (is-Star!19610 r1!5845))))

(declare-fun b!7480418 () Bool)

(declare-fun call!686734 () Bool)

(assert (=> b!7480418 (= e!4461992 call!686734)))

(declare-fun d!2300039 () Bool)

(declare-fun res!3001148 () Bool)

(assert (=> d!2300039 (=> res!3001148 e!4461990)))

(assert (=> d!2300039 (= res!3001148 (is-ElementMatch!19610 r1!5845))))

(assert (=> d!2300039 (= (validRegex!10124 r1!5845) e!4461990)))

(declare-fun b!7480419 () Bool)

(declare-fun e!4461996 () Bool)

(assert (=> b!7480419 (= e!4461991 e!4461996)))

(declare-fun res!3001152 () Bool)

(assert (=> b!7480419 (=> (not res!3001152) (not e!4461996))))

(assert (=> b!7480419 (= res!3001152 call!686735)))

(declare-fun bm!686730 () Bool)

(assert (=> bm!686730 (= call!686736 call!686734)))

(declare-fun bm!686731 () Bool)

(assert (=> bm!686731 (= call!686734 (validRegex!10124 (ite c!1381736 (reg!19939 r1!5845) (ite c!1381735 (regTwo!39733 r1!5845) (regTwo!39732 r1!5845)))))))

(declare-fun b!7480420 () Bool)

(assert (=> b!7480420 (= e!4461996 call!686736)))

(declare-fun b!7480421 () Bool)

(declare-fun res!3001150 () Bool)

(assert (=> b!7480421 (=> (not res!3001150) (not e!4461995))))

(assert (=> b!7480421 (= res!3001150 call!686735)))

(assert (=> b!7480421 (= e!4461994 e!4461995)))

(assert (= (and d!2300039 (not res!3001148)) b!7480417))

(assert (= (and b!7480417 c!1381736) b!7480416))

(assert (= (and b!7480417 (not c!1381736)) b!7480415))

(assert (= (and b!7480416 res!3001149) b!7480418))

(assert (= (and b!7480415 c!1381735) b!7480421))

(assert (= (and b!7480415 (not c!1381735)) b!7480413))

(assert (= (and b!7480421 res!3001150) b!7480414))

(assert (= (and b!7480413 (not res!3001151)) b!7480419))

(assert (= (and b!7480419 res!3001152) b!7480420))

(assert (= (or b!7480414 b!7480420) bm!686730))

(assert (= (or b!7480421 b!7480419) bm!686729))

(assert (= (or b!7480418 bm!686730) bm!686731))

(declare-fun m!8072812 () Bool)

(assert (=> bm!686729 m!8072812))

(declare-fun m!8072814 () Bool)

(assert (=> b!7480416 m!8072814))

(declare-fun m!8072816 () Bool)

(assert (=> bm!686731 m!8072816))

(assert (=> start!724732 d!2300039))

(declare-fun b!7480422 () Bool)

(declare-fun res!3001156 () Bool)

(declare-fun e!4461998 () Bool)

(assert (=> b!7480422 (=> res!3001156 e!4461998)))

(assert (=> b!7480422 (= res!3001156 (not (is-Concat!28455 r2!5783)))))

(declare-fun e!4462001 () Bool)

(assert (=> b!7480422 (= e!4462001 e!4461998)))

(declare-fun b!7480423 () Bool)

(declare-fun e!4462002 () Bool)

(declare-fun call!686739 () Bool)

(assert (=> b!7480423 (= e!4462002 call!686739)))

(declare-fun b!7480424 () Bool)

(declare-fun e!4462000 () Bool)

(assert (=> b!7480424 (= e!4462000 e!4462001)))

(declare-fun c!1381737 () Bool)

(assert (=> b!7480424 (= c!1381737 (is-Union!19610 r2!5783))))

(declare-fun bm!686732 () Bool)

(declare-fun call!686738 () Bool)

(assert (=> bm!686732 (= call!686738 (validRegex!10124 (ite c!1381737 (regOne!39733 r2!5783) (regOne!39732 r2!5783))))))

(declare-fun b!7480425 () Bool)

(declare-fun e!4461999 () Bool)

(assert (=> b!7480425 (= e!4462000 e!4461999)))

(declare-fun res!3001154 () Bool)

(assert (=> b!7480425 (= res!3001154 (not (nullable!8548 (reg!19939 r2!5783))))))

(assert (=> b!7480425 (=> (not res!3001154) (not e!4461999))))

(declare-fun b!7480426 () Bool)

(declare-fun e!4461997 () Bool)

(assert (=> b!7480426 (= e!4461997 e!4462000)))

(declare-fun c!1381738 () Bool)

(assert (=> b!7480426 (= c!1381738 (is-Star!19610 r2!5783))))

(declare-fun b!7480427 () Bool)

(declare-fun call!686737 () Bool)

(assert (=> b!7480427 (= e!4461999 call!686737)))

(declare-fun d!2300041 () Bool)

(declare-fun res!3001153 () Bool)

(assert (=> d!2300041 (=> res!3001153 e!4461997)))

(assert (=> d!2300041 (= res!3001153 (is-ElementMatch!19610 r2!5783))))

(assert (=> d!2300041 (= (validRegex!10124 r2!5783) e!4461997)))

(declare-fun b!7480428 () Bool)

(declare-fun e!4462003 () Bool)

(assert (=> b!7480428 (= e!4461998 e!4462003)))

(declare-fun res!3001157 () Bool)

(assert (=> b!7480428 (=> (not res!3001157) (not e!4462003))))

(assert (=> b!7480428 (= res!3001157 call!686738)))

(declare-fun bm!686733 () Bool)

(assert (=> bm!686733 (= call!686739 call!686737)))

(declare-fun bm!686734 () Bool)

(assert (=> bm!686734 (= call!686737 (validRegex!10124 (ite c!1381738 (reg!19939 r2!5783) (ite c!1381737 (regTwo!39733 r2!5783) (regTwo!39732 r2!5783)))))))

(declare-fun b!7480429 () Bool)

(assert (=> b!7480429 (= e!4462003 call!686739)))

(declare-fun b!7480430 () Bool)

(declare-fun res!3001155 () Bool)

(assert (=> b!7480430 (=> (not res!3001155) (not e!4462002))))

(assert (=> b!7480430 (= res!3001155 call!686738)))

(assert (=> b!7480430 (= e!4462001 e!4462002)))

(assert (= (and d!2300041 (not res!3001153)) b!7480426))

(assert (= (and b!7480426 c!1381738) b!7480425))

(assert (= (and b!7480426 (not c!1381738)) b!7480424))

(assert (= (and b!7480425 res!3001154) b!7480427))

(assert (= (and b!7480424 c!1381737) b!7480430))

(assert (= (and b!7480424 (not c!1381737)) b!7480422))

(assert (= (and b!7480430 res!3001155) b!7480423))

(assert (= (and b!7480422 (not res!3001156)) b!7480428))

(assert (= (and b!7480428 res!3001157) b!7480429))

(assert (= (or b!7480423 b!7480429) bm!686733))

(assert (= (or b!7480430 b!7480428) bm!686732))

(assert (= (or b!7480427 bm!686733) bm!686734))

(declare-fun m!8072818 () Bool)

(assert (=> bm!686732 m!8072818))

(declare-fun m!8072820 () Bool)

(assert (=> b!7480425 m!8072820))

(declare-fun m!8072822 () Bool)

(assert (=> bm!686734 m!8072822))

(assert (=> b!7479984 d!2300041))

(declare-fun d!2300043 () Bool)

(assert (=> d!2300043 (= (matchR!9374 lt!2627918 s!13591) (matchRSpec!4289 lt!2627918 s!13591))))

(declare-fun lt!2628030 () Unit!166055)

(assert (=> d!2300043 (= lt!2628030 (choose!57826 lt!2627918 s!13591))))

(assert (=> d!2300043 (validRegex!10124 lt!2627918)))

(assert (=> d!2300043 (= (mainMatchTheorem!4283 lt!2627918 s!13591) lt!2628030)))

(declare-fun bs!1932919 () Bool)

(assert (= bs!1932919 d!2300043))

(assert (=> bs!1932919 m!8072526))

(assert (=> bs!1932919 m!8072524))

(declare-fun m!8072824 () Bool)

(assert (=> bs!1932919 m!8072824))

(declare-fun m!8072826 () Bool)

(assert (=> bs!1932919 m!8072826))

(assert (=> b!7479989 d!2300043))

(declare-fun b!7480431 () Bool)

(declare-fun res!3001160 () Bool)

(declare-fun e!4462007 () Bool)

(assert (=> b!7480431 (=> (not res!3001160) (not e!4462007))))

(declare-fun call!686740 () Bool)

(assert (=> b!7480431 (= res!3001160 (not call!686740))))

(declare-fun b!7480432 () Bool)

(declare-fun e!4462006 () Bool)

(declare-fun lt!2628031 () Bool)

(assert (=> b!7480432 (= e!4462006 (= lt!2628031 call!686740))))

(declare-fun bm!686735 () Bool)

(assert (=> bm!686735 (= call!686740 (isEmpty!41211 s!13591))))

(declare-fun b!7480433 () Bool)

(declare-fun res!3001164 () Bool)

(assert (=> b!7480433 (=> (not res!3001164) (not e!4462007))))

(assert (=> b!7480433 (= res!3001164 (isEmpty!41211 (tail!14916 s!13591)))))

(declare-fun b!7480435 () Bool)

(declare-fun e!4462005 () Bool)

(declare-fun e!4462008 () Bool)

(assert (=> b!7480435 (= e!4462005 e!4462008)))

(declare-fun res!3001161 () Bool)

(assert (=> b!7480435 (=> (not res!3001161) (not e!4462008))))

(assert (=> b!7480435 (= res!3001161 (not lt!2628031))))

(declare-fun b!7480436 () Bool)

(assert (=> b!7480436 (= e!4462007 (= (head!15347 s!13591) (c!1381657 lt!2627918)))))

(declare-fun b!7480437 () Bool)

(declare-fun e!4462004 () Bool)

(assert (=> b!7480437 (= e!4462004 (not (= (head!15347 s!13591) (c!1381657 lt!2627918))))))

(declare-fun b!7480438 () Bool)

(declare-fun res!3001159 () Bool)

(assert (=> b!7480438 (=> res!3001159 e!4462005)))

(assert (=> b!7480438 (= res!3001159 e!4462007)))

(declare-fun res!3001165 () Bool)

(assert (=> b!7480438 (=> (not res!3001165) (not e!4462007))))

(assert (=> b!7480438 (= res!3001165 lt!2628031)))

(declare-fun d!2300045 () Bool)

(assert (=> d!2300045 e!4462006))

(declare-fun c!1381741 () Bool)

(assert (=> d!2300045 (= c!1381741 (is-EmptyExpr!19610 lt!2627918))))

(declare-fun e!4462009 () Bool)

(assert (=> d!2300045 (= lt!2628031 e!4462009)))

(declare-fun c!1381740 () Bool)

(assert (=> d!2300045 (= c!1381740 (isEmpty!41211 s!13591))))

(assert (=> d!2300045 (validRegex!10124 lt!2627918)))

(assert (=> d!2300045 (= (matchR!9374 lt!2627918 s!13591) lt!2628031)))

(declare-fun b!7480434 () Bool)

(assert (=> b!7480434 (= e!4462008 e!4462004)))

(declare-fun res!3001163 () Bool)

(assert (=> b!7480434 (=> res!3001163 e!4462004)))

(assert (=> b!7480434 (= res!3001163 call!686740)))

(declare-fun b!7480439 () Bool)

(declare-fun e!4462010 () Bool)

(assert (=> b!7480439 (= e!4462006 e!4462010)))

(declare-fun c!1381739 () Bool)

(assert (=> b!7480439 (= c!1381739 (is-EmptyLang!19610 lt!2627918))))

(declare-fun b!7480440 () Bool)

(declare-fun res!3001158 () Bool)

(assert (=> b!7480440 (=> res!3001158 e!4462004)))

(assert (=> b!7480440 (= res!3001158 (not (isEmpty!41211 (tail!14916 s!13591))))))

(declare-fun b!7480441 () Bool)

(assert (=> b!7480441 (= e!4462009 (matchR!9374 (derivativeStep!5607 lt!2627918 (head!15347 s!13591)) (tail!14916 s!13591)))))

(declare-fun b!7480442 () Bool)

(declare-fun res!3001162 () Bool)

(assert (=> b!7480442 (=> res!3001162 e!4462005)))

(assert (=> b!7480442 (= res!3001162 (not (is-ElementMatch!19610 lt!2627918)))))

(assert (=> b!7480442 (= e!4462010 e!4462005)))

(declare-fun b!7480443 () Bool)

(assert (=> b!7480443 (= e!4462010 (not lt!2628031))))

(declare-fun b!7480444 () Bool)

(assert (=> b!7480444 (= e!4462009 (nullable!8548 lt!2627918))))

(assert (= (and d!2300045 c!1381740) b!7480444))

(assert (= (and d!2300045 (not c!1381740)) b!7480441))

(assert (= (and d!2300045 c!1381741) b!7480432))

(assert (= (and d!2300045 (not c!1381741)) b!7480439))

(assert (= (and b!7480439 c!1381739) b!7480443))

(assert (= (and b!7480439 (not c!1381739)) b!7480442))

(assert (= (and b!7480442 (not res!3001162)) b!7480438))

(assert (= (and b!7480438 res!3001165) b!7480431))

(assert (= (and b!7480431 res!3001160) b!7480433))

(assert (= (and b!7480433 res!3001164) b!7480436))

(assert (= (and b!7480438 (not res!3001159)) b!7480435))

(assert (= (and b!7480435 res!3001161) b!7480434))

(assert (= (and b!7480434 (not res!3001163)) b!7480440))

(assert (= (and b!7480440 (not res!3001158)) b!7480437))

(assert (= (or b!7480432 b!7480431 b!7480434) bm!686735))

(assert (=> b!7480437 m!8072636))

(declare-fun m!8072828 () Bool)

(assert (=> b!7480444 m!8072828))

(assert (=> d!2300045 m!8072640))

(assert (=> d!2300045 m!8072826))

(assert (=> b!7480436 m!8072636))

(assert (=> b!7480440 m!8072642))

(assert (=> b!7480440 m!8072642))

(assert (=> b!7480440 m!8072644))

(assert (=> b!7480441 m!8072636))

(assert (=> b!7480441 m!8072636))

(declare-fun m!8072830 () Bool)

(assert (=> b!7480441 m!8072830))

(assert (=> b!7480441 m!8072642))

(assert (=> b!7480441 m!8072830))

(assert (=> b!7480441 m!8072642))

(declare-fun m!8072832 () Bool)

(assert (=> b!7480441 m!8072832))

(assert (=> b!7480433 m!8072642))

(assert (=> b!7480433 m!8072642))

(assert (=> b!7480433 m!8072644))

(assert (=> bm!686735 m!8072640))

(assert (=> b!7479989 d!2300045))

(declare-fun b!7480445 () Bool)

(declare-fun res!3001168 () Bool)

(declare-fun e!4462014 () Bool)

(assert (=> b!7480445 (=> (not res!3001168) (not e!4462014))))

(declare-fun call!686741 () Bool)

(assert (=> b!7480445 (= res!3001168 (not call!686741))))

(declare-fun b!7480446 () Bool)

(declare-fun e!4462013 () Bool)

(declare-fun lt!2628034 () Bool)

(assert (=> b!7480446 (= e!4462013 (= lt!2628034 call!686741))))

(declare-fun bm!686736 () Bool)

(assert (=> bm!686736 (= call!686741 (isEmpty!41211 s!13591))))

(declare-fun b!7480447 () Bool)

(declare-fun res!3001172 () Bool)

(assert (=> b!7480447 (=> (not res!3001172) (not e!4462014))))

(assert (=> b!7480447 (= res!3001172 (isEmpty!41211 (tail!14916 s!13591)))))

(declare-fun b!7480449 () Bool)

(declare-fun e!4462012 () Bool)

(declare-fun e!4462015 () Bool)

(assert (=> b!7480449 (= e!4462012 e!4462015)))

(declare-fun res!3001169 () Bool)

(assert (=> b!7480449 (=> (not res!3001169) (not e!4462015))))

(assert (=> b!7480449 (= res!3001169 (not lt!2628034))))

(declare-fun b!7480450 () Bool)

(assert (=> b!7480450 (= e!4462014 (= (head!15347 s!13591) (c!1381657 lt!2627914)))))

(declare-fun b!7480451 () Bool)

(declare-fun e!4462011 () Bool)

(assert (=> b!7480451 (= e!4462011 (not (= (head!15347 s!13591) (c!1381657 lt!2627914))))))

(declare-fun b!7480452 () Bool)

(declare-fun res!3001167 () Bool)

(assert (=> b!7480452 (=> res!3001167 e!4462012)))

(assert (=> b!7480452 (= res!3001167 e!4462014)))

(declare-fun res!3001173 () Bool)

(assert (=> b!7480452 (=> (not res!3001173) (not e!4462014))))

(assert (=> b!7480452 (= res!3001173 lt!2628034)))

(declare-fun d!2300047 () Bool)

(assert (=> d!2300047 e!4462013))

(declare-fun c!1381744 () Bool)

(assert (=> d!2300047 (= c!1381744 (is-EmptyExpr!19610 lt!2627914))))

(declare-fun e!4462016 () Bool)

(assert (=> d!2300047 (= lt!2628034 e!4462016)))

(declare-fun c!1381743 () Bool)

(assert (=> d!2300047 (= c!1381743 (isEmpty!41211 s!13591))))

(assert (=> d!2300047 (validRegex!10124 lt!2627914)))

(assert (=> d!2300047 (= (matchR!9374 lt!2627914 s!13591) lt!2628034)))

(declare-fun b!7480448 () Bool)

(assert (=> b!7480448 (= e!4462015 e!4462011)))

(declare-fun res!3001171 () Bool)

(assert (=> b!7480448 (=> res!3001171 e!4462011)))

(assert (=> b!7480448 (= res!3001171 call!686741)))

(declare-fun b!7480453 () Bool)

(declare-fun e!4462017 () Bool)

(assert (=> b!7480453 (= e!4462013 e!4462017)))

(declare-fun c!1381742 () Bool)

(assert (=> b!7480453 (= c!1381742 (is-EmptyLang!19610 lt!2627914))))

(declare-fun b!7480454 () Bool)

(declare-fun res!3001166 () Bool)

(assert (=> b!7480454 (=> res!3001166 e!4462011)))

(assert (=> b!7480454 (= res!3001166 (not (isEmpty!41211 (tail!14916 s!13591))))))

(declare-fun b!7480455 () Bool)

(assert (=> b!7480455 (= e!4462016 (matchR!9374 (derivativeStep!5607 lt!2627914 (head!15347 s!13591)) (tail!14916 s!13591)))))

(declare-fun b!7480456 () Bool)

(declare-fun res!3001170 () Bool)

(assert (=> b!7480456 (=> res!3001170 e!4462012)))

(assert (=> b!7480456 (= res!3001170 (not (is-ElementMatch!19610 lt!2627914)))))

(assert (=> b!7480456 (= e!4462017 e!4462012)))

(declare-fun b!7480457 () Bool)

(assert (=> b!7480457 (= e!4462017 (not lt!2628034))))

(declare-fun b!7480458 () Bool)

(assert (=> b!7480458 (= e!4462016 (nullable!8548 lt!2627914))))

(assert (= (and d!2300047 c!1381743) b!7480458))

(assert (= (and d!2300047 (not c!1381743)) b!7480455))

(assert (= (and d!2300047 c!1381744) b!7480446))

(assert (= (and d!2300047 (not c!1381744)) b!7480453))

(assert (= (and b!7480453 c!1381742) b!7480457))

(assert (= (and b!7480453 (not c!1381742)) b!7480456))

(assert (= (and b!7480456 (not res!3001170)) b!7480452))

(assert (= (and b!7480452 res!3001173) b!7480445))

(assert (= (and b!7480445 res!3001168) b!7480447))

(assert (= (and b!7480447 res!3001172) b!7480450))

(assert (= (and b!7480452 (not res!3001167)) b!7480449))

(assert (= (and b!7480449 res!3001169) b!7480448))

(assert (= (and b!7480448 (not res!3001171)) b!7480454))

(assert (= (and b!7480454 (not res!3001166)) b!7480451))

(assert (= (or b!7480446 b!7480445 b!7480448) bm!686736))

(assert (=> b!7480451 m!8072636))

(declare-fun m!8072834 () Bool)

(assert (=> b!7480458 m!8072834))

(assert (=> d!2300047 m!8072640))

(declare-fun m!8072836 () Bool)

(assert (=> d!2300047 m!8072836))

(assert (=> b!7480450 m!8072636))

(assert (=> b!7480454 m!8072642))

(assert (=> b!7480454 m!8072642))

(assert (=> b!7480454 m!8072644))

(assert (=> b!7480455 m!8072636))

(assert (=> b!7480455 m!8072636))

(declare-fun m!8072838 () Bool)

(assert (=> b!7480455 m!8072838))

(assert (=> b!7480455 m!8072642))

(assert (=> b!7480455 m!8072838))

(assert (=> b!7480455 m!8072642))

(declare-fun m!8072840 () Bool)

(assert (=> b!7480455 m!8072840))

(assert (=> b!7480447 m!8072642))

(assert (=> b!7480447 m!8072642))

(assert (=> b!7480447 m!8072644))

(assert (=> bm!686736 m!8072640))

(assert (=> b!7479989 d!2300047))

(declare-fun bs!1932920 () Bool)

(declare-fun b!7480466 () Bool)

(assert (= bs!1932920 (and b!7480466 d!2300009)))

(declare-fun lambda!463520 () Int)

(assert (=> bs!1932920 (not (= lambda!463520 lambda!463514))))

(declare-fun bs!1932921 () Bool)

(assert (= bs!1932921 (and b!7480466 d!2300027)))

(assert (=> bs!1932921 (not (= lambda!463520 lambda!463518))))

(declare-fun bs!1932922 () Bool)

(assert (= bs!1932922 (and b!7480466 b!7480214)))

(assert (=> bs!1932922 (= (and (= (reg!19939 lt!2627918) (reg!19939 lt!2627917)) (= lt!2627918 lt!2627917)) (= lambda!463520 lambda!463502))))

(declare-fun bs!1932923 () Bool)

(assert (= bs!1932923 (and b!7480466 b!7479992)))

(assert (=> bs!1932923 (not (= lambda!463520 lambda!463473))))

(declare-fun bs!1932924 () Bool)

(assert (= bs!1932924 (and b!7480466 d!2300007)))

(assert (=> bs!1932924 (not (= lambda!463520 lambda!463508))))

(assert (=> bs!1932923 (not (= lambda!463520 lambda!463472))))

(declare-fun bs!1932925 () Bool)

(assert (= bs!1932925 (and b!7480466 d!2300035)))

(assert (=> bs!1932925 (not (= lambda!463520 lambda!463519))))

(assert (=> bs!1932921 (not (= lambda!463520 lambda!463517))))

(declare-fun bs!1932926 () Bool)

(assert (= bs!1932926 (and b!7480466 b!7480215)))

(assert (=> bs!1932926 (not (= lambda!463520 lambda!463503))))

(declare-fun bs!1932927 () Bool)

(assert (= bs!1932927 (and b!7480466 b!7480204)))

(assert (=> bs!1932927 (not (= lambda!463520 lambda!463501))))

(declare-fun bs!1932928 () Bool)

(assert (= bs!1932928 (and b!7480466 b!7480203)))

(assert (=> bs!1932928 (= (and (= (reg!19939 lt!2627918) (reg!19939 lt!2627925)) (= lt!2627918 lt!2627925)) (= lambda!463520 lambda!463500))))

(assert (=> bs!1932920 (not (= lambda!463520 lambda!463513))))

(declare-fun bs!1932929 () Bool)

(assert (= bs!1932929 (and b!7480466 b!7479997)))

(assert (=> bs!1932929 (not (= lambda!463520 lambda!463475))))

(assert (=> bs!1932929 (not (= lambda!463520 lambda!463474))))

(assert (=> b!7480466 true))

(assert (=> b!7480466 true))

(declare-fun bs!1932930 () Bool)

(declare-fun b!7480467 () Bool)

(assert (= bs!1932930 (and b!7480467 d!2300009)))

(declare-fun lambda!463523 () Int)

(assert (=> bs!1932930 (= (and (= (regOne!39732 lt!2627918) lt!2627913) (= (regTwo!39732 lt!2627918) rTail!78)) (= lambda!463523 lambda!463514))))

(declare-fun bs!1932931 () Bool)

(assert (= bs!1932931 (and b!7480467 d!2300027)))

(assert (=> bs!1932931 (= (and (= (regOne!39732 lt!2627918) r1!5845) (= (regTwo!39732 lt!2627918) rTail!78)) (= lambda!463523 lambda!463518))))

(declare-fun bs!1932932 () Bool)

(assert (= bs!1932932 (and b!7480467 b!7480214)))

(assert (=> bs!1932932 (not (= lambda!463523 lambda!463502))))

(declare-fun bs!1932933 () Bool)

(assert (= bs!1932933 (and b!7480467 b!7479992)))

(assert (=> bs!1932933 (= (and (= (regOne!39732 lt!2627918) lt!2627913) (= (regTwo!39732 lt!2627918) rTail!78)) (= lambda!463523 lambda!463473))))

(declare-fun bs!1932934 () Bool)

(assert (= bs!1932934 (and b!7480467 d!2300007)))

(assert (=> bs!1932934 (not (= lambda!463523 lambda!463508))))

(assert (=> bs!1932933 (not (= lambda!463523 lambda!463472))))

(assert (=> bs!1932931 (not (= lambda!463523 lambda!463517))))

(declare-fun bs!1932935 () Bool)

(assert (= bs!1932935 (and b!7480467 b!7480215)))

(assert (=> bs!1932935 (= (and (= (regOne!39732 lt!2627918) (regOne!39732 lt!2627917)) (= (regTwo!39732 lt!2627918) (regTwo!39732 lt!2627917))) (= lambda!463523 lambda!463503))))

(declare-fun bs!1932936 () Bool)

(assert (= bs!1932936 (and b!7480467 b!7480204)))

(assert (=> bs!1932936 (= (and (= (regOne!39732 lt!2627918) (regOne!39732 lt!2627925)) (= (regTwo!39732 lt!2627918) (regTwo!39732 lt!2627925))) (= lambda!463523 lambda!463501))))

(declare-fun bs!1932937 () Bool)

(assert (= bs!1932937 (and b!7480467 b!7480203)))

(assert (=> bs!1932937 (not (= lambda!463523 lambda!463500))))

(assert (=> bs!1932930 (not (= lambda!463523 lambda!463513))))

(declare-fun bs!1932938 () Bool)

(assert (= bs!1932938 (and b!7480467 b!7479997)))

(assert (=> bs!1932938 (= (and (= (regOne!39732 lt!2627918) r1!5845) (= (regTwo!39732 lt!2627918) rTail!78)) (= lambda!463523 lambda!463475))))

(assert (=> bs!1932938 (not (= lambda!463523 lambda!463474))))

(declare-fun bs!1932939 () Bool)

(assert (= bs!1932939 (and b!7480467 d!2300035)))

(assert (=> bs!1932939 (not (= lambda!463523 lambda!463519))))

(declare-fun bs!1932940 () Bool)

(assert (= bs!1932940 (and b!7480467 b!7480466)))

(assert (=> bs!1932940 (not (= lambda!463523 lambda!463520))))

(assert (=> b!7480467 true))

(assert (=> b!7480467 true))

(declare-fun b!7480459 () Bool)

(declare-fun e!4462024 () Bool)

(declare-fun e!4462020 () Bool)

(assert (=> b!7480459 (= e!4462024 e!4462020)))

(declare-fun res!3001176 () Bool)

(assert (=> b!7480459 (= res!3001176 (matchRSpec!4289 (regOne!39733 lt!2627918) s!13591))))

(assert (=> b!7480459 (=> res!3001176 e!4462020)))

(declare-fun b!7480460 () Bool)

(declare-fun e!4462018 () Bool)

(assert (=> b!7480460 (= e!4462024 e!4462018)))

(declare-fun c!1381746 () Bool)

(assert (=> b!7480460 (= c!1381746 (is-Star!19610 lt!2627918))))

(declare-fun b!7480461 () Bool)

(declare-fun c!1381747 () Bool)

(assert (=> b!7480461 (= c!1381747 (is-Union!19610 lt!2627918))))

(declare-fun e!4462021 () Bool)

(assert (=> b!7480461 (= e!4462021 e!4462024)))

(declare-fun b!7480462 () Bool)

(declare-fun e!4462023 () Bool)

(declare-fun call!686742 () Bool)

(assert (=> b!7480462 (= e!4462023 call!686742)))

(declare-fun d!2300049 () Bool)

(declare-fun c!1381748 () Bool)

(assert (=> d!2300049 (= c!1381748 (is-EmptyExpr!19610 lt!2627918))))

(assert (=> d!2300049 (= (matchRSpec!4289 lt!2627918 s!13591) e!4462023)))

(declare-fun b!7480463 () Bool)

(declare-fun c!1381745 () Bool)

(assert (=> b!7480463 (= c!1381745 (is-ElementMatch!19610 lt!2627918))))

(declare-fun e!4462022 () Bool)

(assert (=> b!7480463 (= e!4462022 e!4462021)))

(declare-fun b!7480464 () Bool)

(assert (=> b!7480464 (= e!4462020 (matchRSpec!4289 (regTwo!39733 lt!2627918) s!13591))))

(declare-fun b!7480465 () Bool)

(declare-fun res!3001174 () Bool)

(declare-fun e!4462019 () Bool)

(assert (=> b!7480465 (=> res!3001174 e!4462019)))

(assert (=> b!7480465 (= res!3001174 call!686742)))

(assert (=> b!7480465 (= e!4462018 e!4462019)))

(declare-fun bm!686737 () Bool)

(declare-fun call!686743 () Bool)

(assert (=> bm!686737 (= call!686743 (Exists!4229 (ite c!1381746 lambda!463520 lambda!463523)))))

(declare-fun bm!686738 () Bool)

(assert (=> bm!686738 (= call!686742 (isEmpty!41211 s!13591))))

(assert (=> b!7480466 (= e!4462019 call!686743)))

(assert (=> b!7480467 (= e!4462018 call!686743)))

(declare-fun b!7480468 () Bool)

(assert (=> b!7480468 (= e!4462023 e!4462022)))

(declare-fun res!3001175 () Bool)

(assert (=> b!7480468 (= res!3001175 (not (is-EmptyLang!19610 lt!2627918)))))

(assert (=> b!7480468 (=> (not res!3001175) (not e!4462022))))

(declare-fun b!7480469 () Bool)

(assert (=> b!7480469 (= e!4462021 (= s!13591 (Cons!72202 (c!1381657 lt!2627918) Nil!72202)))))

(assert (= (and d!2300049 c!1381748) b!7480462))

(assert (= (and d!2300049 (not c!1381748)) b!7480468))

(assert (= (and b!7480468 res!3001175) b!7480463))

(assert (= (and b!7480463 c!1381745) b!7480469))

(assert (= (and b!7480463 (not c!1381745)) b!7480461))

(assert (= (and b!7480461 c!1381747) b!7480459))

(assert (= (and b!7480461 (not c!1381747)) b!7480460))

(assert (= (and b!7480459 (not res!3001176)) b!7480464))

(assert (= (and b!7480460 c!1381746) b!7480465))

(assert (= (and b!7480460 (not c!1381746)) b!7480467))

(assert (= (and b!7480465 (not res!3001174)) b!7480466))

(assert (= (or b!7480466 b!7480467) bm!686737))

(assert (= (or b!7480462 b!7480465) bm!686738))

(declare-fun m!8072842 () Bool)

(assert (=> b!7480459 m!8072842))

(declare-fun m!8072844 () Bool)

(assert (=> b!7480464 m!8072844))

(declare-fun m!8072846 () Bool)

(assert (=> bm!686737 m!8072846))

(assert (=> bm!686738 m!8072640))

(assert (=> b!7479989 d!2300049))

(declare-fun d!2300051 () Bool)

(assert (=> d!2300051 (= (matchR!9374 lt!2627914 s!13591) (matchRSpec!4289 lt!2627914 s!13591))))

(declare-fun lt!2628035 () Unit!166055)

(assert (=> d!2300051 (= lt!2628035 (choose!57826 lt!2627914 s!13591))))

(assert (=> d!2300051 (validRegex!10124 lt!2627914)))

(assert (=> d!2300051 (= (mainMatchTheorem!4283 lt!2627914 s!13591) lt!2628035)))

(declare-fun bs!1932941 () Bool)

(assert (= bs!1932941 d!2300051))

(assert (=> bs!1932941 m!8072530))

(assert (=> bs!1932941 m!8072522))

(declare-fun m!8072848 () Bool)

(assert (=> bs!1932941 m!8072848))

(assert (=> bs!1932941 m!8072836))

(assert (=> b!7479989 d!2300051))

(declare-fun bs!1932942 () Bool)

(declare-fun b!7480485 () Bool)

(assert (= bs!1932942 (and b!7480485 d!2300009)))

(declare-fun lambda!463526 () Int)

(assert (=> bs!1932942 (not (= lambda!463526 lambda!463514))))

(declare-fun bs!1932943 () Bool)

(assert (= bs!1932943 (and b!7480485 d!2300027)))

(assert (=> bs!1932943 (not (= lambda!463526 lambda!463518))))

(declare-fun bs!1932944 () Bool)

(assert (= bs!1932944 (and b!7480485 b!7480214)))

(assert (=> bs!1932944 (= (and (= (reg!19939 lt!2627914) (reg!19939 lt!2627917)) (= lt!2627914 lt!2627917)) (= lambda!463526 lambda!463502))))

(declare-fun bs!1932945 () Bool)

(assert (= bs!1932945 (and b!7480485 b!7480467)))

(assert (=> bs!1932945 (not (= lambda!463526 lambda!463523))))

(declare-fun bs!1932946 () Bool)

(assert (= bs!1932946 (and b!7480485 b!7479992)))

(assert (=> bs!1932946 (not (= lambda!463526 lambda!463473))))

(declare-fun bs!1932947 () Bool)

(assert (= bs!1932947 (and b!7480485 d!2300007)))

(assert (=> bs!1932947 (not (= lambda!463526 lambda!463508))))

(assert (=> bs!1932946 (not (= lambda!463526 lambda!463472))))

(assert (=> bs!1932943 (not (= lambda!463526 lambda!463517))))

(declare-fun bs!1932948 () Bool)

(assert (= bs!1932948 (and b!7480485 b!7480215)))

(assert (=> bs!1932948 (not (= lambda!463526 lambda!463503))))

(declare-fun bs!1932949 () Bool)

(assert (= bs!1932949 (and b!7480485 b!7480204)))

(assert (=> bs!1932949 (not (= lambda!463526 lambda!463501))))

(declare-fun bs!1932950 () Bool)

(assert (= bs!1932950 (and b!7480485 b!7480203)))

(assert (=> bs!1932950 (= (and (= (reg!19939 lt!2627914) (reg!19939 lt!2627925)) (= lt!2627914 lt!2627925)) (= lambda!463526 lambda!463500))))

(assert (=> bs!1932942 (not (= lambda!463526 lambda!463513))))

(declare-fun bs!1932951 () Bool)

(assert (= bs!1932951 (and b!7480485 b!7479997)))

(assert (=> bs!1932951 (not (= lambda!463526 lambda!463475))))

(assert (=> bs!1932951 (not (= lambda!463526 lambda!463474))))

(declare-fun bs!1932952 () Bool)

(assert (= bs!1932952 (and b!7480485 d!2300035)))

(assert (=> bs!1932952 (not (= lambda!463526 lambda!463519))))

(declare-fun bs!1932953 () Bool)

(assert (= bs!1932953 (and b!7480485 b!7480466)))

(assert (=> bs!1932953 (= (and (= (reg!19939 lt!2627914) (reg!19939 lt!2627918)) (= lt!2627914 lt!2627918)) (= lambda!463526 lambda!463520))))

(assert (=> b!7480485 true))

(assert (=> b!7480485 true))

(declare-fun bs!1932954 () Bool)

(declare-fun b!7480486 () Bool)

(assert (= bs!1932954 (and b!7480486 d!2300009)))

(declare-fun lambda!463527 () Int)

(assert (=> bs!1932954 (= (and (= (regOne!39732 lt!2627914) lt!2627913) (= (regTwo!39732 lt!2627914) rTail!78)) (= lambda!463527 lambda!463514))))

(declare-fun bs!1932955 () Bool)

(assert (= bs!1932955 (and b!7480486 d!2300027)))

(assert (=> bs!1932955 (= (and (= (regOne!39732 lt!2627914) r1!5845) (= (regTwo!39732 lt!2627914) rTail!78)) (= lambda!463527 lambda!463518))))

(declare-fun bs!1932956 () Bool)

(assert (= bs!1932956 (and b!7480486 b!7480467)))

(assert (=> bs!1932956 (= (and (= (regOne!39732 lt!2627914) (regOne!39732 lt!2627918)) (= (regTwo!39732 lt!2627914) (regTwo!39732 lt!2627918))) (= lambda!463527 lambda!463523))))

(declare-fun bs!1932957 () Bool)

(assert (= bs!1932957 (and b!7480486 b!7479992)))

(assert (=> bs!1932957 (= (and (= (regOne!39732 lt!2627914) lt!2627913) (= (regTwo!39732 lt!2627914) rTail!78)) (= lambda!463527 lambda!463473))))

(declare-fun bs!1932958 () Bool)

(assert (= bs!1932958 (and b!7480486 d!2300007)))

(assert (=> bs!1932958 (not (= lambda!463527 lambda!463508))))

(assert (=> bs!1932957 (not (= lambda!463527 lambda!463472))))

(assert (=> bs!1932955 (not (= lambda!463527 lambda!463517))))

(declare-fun bs!1932959 () Bool)

(assert (= bs!1932959 (and b!7480486 b!7480215)))

(assert (=> bs!1932959 (= (and (= (regOne!39732 lt!2627914) (regOne!39732 lt!2627917)) (= (regTwo!39732 lt!2627914) (regTwo!39732 lt!2627917))) (= lambda!463527 lambda!463503))))

(declare-fun bs!1932961 () Bool)

(assert (= bs!1932961 (and b!7480486 b!7480204)))

(assert (=> bs!1932961 (= (and (= (regOne!39732 lt!2627914) (regOne!39732 lt!2627925)) (= (regTwo!39732 lt!2627914) (regTwo!39732 lt!2627925))) (= lambda!463527 lambda!463501))))

(declare-fun bs!1932962 () Bool)

(assert (= bs!1932962 (and b!7480486 b!7480203)))

(assert (=> bs!1932962 (not (= lambda!463527 lambda!463500))))

(assert (=> bs!1932954 (not (= lambda!463527 lambda!463513))))

(declare-fun bs!1932964 () Bool)

(assert (= bs!1932964 (and b!7480486 b!7480214)))

(assert (=> bs!1932964 (not (= lambda!463527 lambda!463502))))

(declare-fun bs!1932965 () Bool)

(assert (= bs!1932965 (and b!7480486 b!7480485)))

(assert (=> bs!1932965 (not (= lambda!463527 lambda!463526))))

(declare-fun bs!1932966 () Bool)

(assert (= bs!1932966 (and b!7480486 b!7479997)))

(assert (=> bs!1932966 (= (and (= (regOne!39732 lt!2627914) r1!5845) (= (regTwo!39732 lt!2627914) rTail!78)) (= lambda!463527 lambda!463475))))

(assert (=> bs!1932966 (not (= lambda!463527 lambda!463474))))

(declare-fun bs!1932968 () Bool)

(assert (= bs!1932968 (and b!7480486 d!2300035)))

(assert (=> bs!1932968 (not (= lambda!463527 lambda!463519))))

(declare-fun bs!1932970 () Bool)

(assert (= bs!1932970 (and b!7480486 b!7480466)))

(assert (=> bs!1932970 (not (= lambda!463527 lambda!463520))))

(assert (=> b!7480486 true))

(assert (=> b!7480486 true))

(declare-fun b!7480478 () Bool)

(declare-fun e!4462035 () Bool)

(declare-fun e!4462031 () Bool)

(assert (=> b!7480478 (= e!4462035 e!4462031)))

(declare-fun res!3001187 () Bool)

(assert (=> b!7480478 (= res!3001187 (matchRSpec!4289 (regOne!39733 lt!2627914) s!13591))))

(assert (=> b!7480478 (=> res!3001187 e!4462031)))

(declare-fun b!7480479 () Bool)

(declare-fun e!4462029 () Bool)

(assert (=> b!7480479 (= e!4462035 e!4462029)))

(declare-fun c!1381750 () Bool)

(assert (=> b!7480479 (= c!1381750 (is-Star!19610 lt!2627914))))

(declare-fun b!7480480 () Bool)

(declare-fun c!1381751 () Bool)

(assert (=> b!7480480 (= c!1381751 (is-Union!19610 lt!2627914))))

(declare-fun e!4462032 () Bool)

(assert (=> b!7480480 (= e!4462032 e!4462035)))

(declare-fun b!7480481 () Bool)

(declare-fun e!4462034 () Bool)

(declare-fun call!686744 () Bool)

(assert (=> b!7480481 (= e!4462034 call!686744)))

(declare-fun d!2300053 () Bool)

(declare-fun c!1381752 () Bool)

(assert (=> d!2300053 (= c!1381752 (is-EmptyExpr!19610 lt!2627914))))

(assert (=> d!2300053 (= (matchRSpec!4289 lt!2627914 s!13591) e!4462034)))

(declare-fun b!7480482 () Bool)

(declare-fun c!1381749 () Bool)

(assert (=> b!7480482 (= c!1381749 (is-ElementMatch!19610 lt!2627914))))

(declare-fun e!4462033 () Bool)

(assert (=> b!7480482 (= e!4462033 e!4462032)))

(declare-fun b!7480483 () Bool)

(assert (=> b!7480483 (= e!4462031 (matchRSpec!4289 (regTwo!39733 lt!2627914) s!13591))))

(declare-fun b!7480484 () Bool)

(declare-fun res!3001185 () Bool)

(declare-fun e!4462030 () Bool)

(assert (=> b!7480484 (=> res!3001185 e!4462030)))

(assert (=> b!7480484 (= res!3001185 call!686744)))

(assert (=> b!7480484 (= e!4462029 e!4462030)))

(declare-fun call!686745 () Bool)

(declare-fun bm!686739 () Bool)

(assert (=> bm!686739 (= call!686745 (Exists!4229 (ite c!1381750 lambda!463526 lambda!463527)))))

(declare-fun bm!686740 () Bool)

(assert (=> bm!686740 (= call!686744 (isEmpty!41211 s!13591))))

(assert (=> b!7480485 (= e!4462030 call!686745)))

(assert (=> b!7480486 (= e!4462029 call!686745)))

(declare-fun b!7480487 () Bool)

(assert (=> b!7480487 (= e!4462034 e!4462033)))

(declare-fun res!3001186 () Bool)

(assert (=> b!7480487 (= res!3001186 (not (is-EmptyLang!19610 lt!2627914)))))

(assert (=> b!7480487 (=> (not res!3001186) (not e!4462033))))

(declare-fun b!7480488 () Bool)

(assert (=> b!7480488 (= e!4462032 (= s!13591 (Cons!72202 (c!1381657 lt!2627914) Nil!72202)))))

(assert (= (and d!2300053 c!1381752) b!7480481))

(assert (= (and d!2300053 (not c!1381752)) b!7480487))

(assert (= (and b!7480487 res!3001186) b!7480482))

(assert (= (and b!7480482 c!1381749) b!7480488))

(assert (= (and b!7480482 (not c!1381749)) b!7480480))

(assert (= (and b!7480480 c!1381751) b!7480478))

(assert (= (and b!7480480 (not c!1381751)) b!7480479))

(assert (= (and b!7480478 (not res!3001187)) b!7480483))

(assert (= (and b!7480479 c!1381750) b!7480484))

(assert (= (and b!7480479 (not c!1381750)) b!7480486))

(assert (= (and b!7480484 (not res!3001185)) b!7480485))

(assert (= (or b!7480485 b!7480486) bm!686739))

(assert (= (or b!7480481 b!7480484) bm!686740))

(declare-fun m!8072850 () Bool)

(assert (=> b!7480478 m!8072850))

(declare-fun m!8072852 () Bool)

(assert (=> b!7480483 m!8072852))

(declare-fun m!8072854 () Bool)

(assert (=> bm!686739 m!8072854))

(assert (=> bm!686740 m!8072640))

(assert (=> b!7479989 d!2300053))

(declare-fun b!7480499 () Bool)

(declare-fun e!4462038 () Bool)

(assert (=> b!7480499 (= e!4462038 tp_is_empty!49509)))

(declare-fun b!7480502 () Bool)

(declare-fun tp!2169593 () Bool)

(declare-fun tp!2169591 () Bool)

(assert (=> b!7480502 (= e!4462038 (and tp!2169593 tp!2169591))))

(declare-fun b!7480500 () Bool)

(declare-fun tp!2169590 () Bool)

(declare-fun tp!2169592 () Bool)

(assert (=> b!7480500 (= e!4462038 (and tp!2169590 tp!2169592))))

(declare-fun b!7480501 () Bool)

(declare-fun tp!2169594 () Bool)

(assert (=> b!7480501 (= e!4462038 tp!2169594)))

(assert (=> b!7479996 (= tp!2169519 e!4462038)))

(assert (= (and b!7479996 (is-ElementMatch!19610 (regOne!39733 r1!5845))) b!7480499))

(assert (= (and b!7479996 (is-Concat!28455 (regOne!39733 r1!5845))) b!7480500))

(assert (= (and b!7479996 (is-Star!19610 (regOne!39733 r1!5845))) b!7480501))

(assert (= (and b!7479996 (is-Union!19610 (regOne!39733 r1!5845))) b!7480502))

(declare-fun b!7480503 () Bool)

(declare-fun e!4462039 () Bool)

(assert (=> b!7480503 (= e!4462039 tp_is_empty!49509)))

(declare-fun b!7480506 () Bool)

(declare-fun tp!2169598 () Bool)

(declare-fun tp!2169596 () Bool)

(assert (=> b!7480506 (= e!4462039 (and tp!2169598 tp!2169596))))

(declare-fun b!7480504 () Bool)

(declare-fun tp!2169595 () Bool)

(declare-fun tp!2169597 () Bool)

(assert (=> b!7480504 (= e!4462039 (and tp!2169595 tp!2169597))))

(declare-fun b!7480505 () Bool)

(declare-fun tp!2169599 () Bool)

(assert (=> b!7480505 (= e!4462039 tp!2169599)))

(assert (=> b!7479996 (= tp!2169525 e!4462039)))

(assert (= (and b!7479996 (is-ElementMatch!19610 (regTwo!39733 r1!5845))) b!7480503))

(assert (= (and b!7479996 (is-Concat!28455 (regTwo!39733 r1!5845))) b!7480504))

(assert (= (and b!7479996 (is-Star!19610 (regTwo!39733 r1!5845))) b!7480505))

(assert (= (and b!7479996 (is-Union!19610 (regTwo!39733 r1!5845))) b!7480506))

(declare-fun b!7480511 () Bool)

(declare-fun e!4462042 () Bool)

(declare-fun tp!2169602 () Bool)

(assert (=> b!7480511 (= e!4462042 (and tp_is_empty!49509 tp!2169602))))

(assert (=> b!7479985 (= tp!2169527 e!4462042)))

(assert (= (and b!7479985 (is-Cons!72202 (t!386895 s!13591))) b!7480511))

(declare-fun b!7480512 () Bool)

(declare-fun e!4462043 () Bool)

(assert (=> b!7480512 (= e!4462043 tp_is_empty!49509)))

(declare-fun b!7480515 () Bool)

(declare-fun tp!2169606 () Bool)

(declare-fun tp!2169604 () Bool)

(assert (=> b!7480515 (= e!4462043 (and tp!2169606 tp!2169604))))

(declare-fun b!7480513 () Bool)

(declare-fun tp!2169603 () Bool)

(declare-fun tp!2169605 () Bool)

(assert (=> b!7480513 (= e!4462043 (and tp!2169603 tp!2169605))))

(declare-fun b!7480514 () Bool)

(declare-fun tp!2169607 () Bool)

(assert (=> b!7480514 (= e!4462043 tp!2169607)))

(assert (=> b!7479990 (= tp!2169528 e!4462043)))

(assert (= (and b!7479990 (is-ElementMatch!19610 (regOne!39732 r1!5845))) b!7480512))

(assert (= (and b!7479990 (is-Concat!28455 (regOne!39732 r1!5845))) b!7480513))

(assert (= (and b!7479990 (is-Star!19610 (regOne!39732 r1!5845))) b!7480514))

(assert (= (and b!7479990 (is-Union!19610 (regOne!39732 r1!5845))) b!7480515))

(declare-fun b!7480516 () Bool)

(declare-fun e!4462044 () Bool)

(assert (=> b!7480516 (= e!4462044 tp_is_empty!49509)))

(declare-fun b!7480519 () Bool)

(declare-fun tp!2169611 () Bool)

(declare-fun tp!2169609 () Bool)

(assert (=> b!7480519 (= e!4462044 (and tp!2169611 tp!2169609))))

(declare-fun b!7480517 () Bool)

(declare-fun tp!2169608 () Bool)

(declare-fun tp!2169610 () Bool)

(assert (=> b!7480517 (= e!4462044 (and tp!2169608 tp!2169610))))

(declare-fun b!7480518 () Bool)

(declare-fun tp!2169612 () Bool)

(assert (=> b!7480518 (= e!4462044 tp!2169612)))

(assert (=> b!7479990 (= tp!2169517 e!4462044)))

(assert (= (and b!7479990 (is-ElementMatch!19610 (regTwo!39732 r1!5845))) b!7480516))

(assert (= (and b!7479990 (is-Concat!28455 (regTwo!39732 r1!5845))) b!7480517))

(assert (= (and b!7479990 (is-Star!19610 (regTwo!39732 r1!5845))) b!7480518))

(assert (= (and b!7479990 (is-Union!19610 (regTwo!39732 r1!5845))) b!7480519))

(declare-fun b!7480520 () Bool)

(declare-fun e!4462045 () Bool)

(assert (=> b!7480520 (= e!4462045 tp_is_empty!49509)))

(declare-fun b!7480523 () Bool)

(declare-fun tp!2169616 () Bool)

(declare-fun tp!2169614 () Bool)

(assert (=> b!7480523 (= e!4462045 (and tp!2169616 tp!2169614))))

(declare-fun b!7480521 () Bool)

(declare-fun tp!2169613 () Bool)

(declare-fun tp!2169615 () Bool)

(assert (=> b!7480521 (= e!4462045 (and tp!2169613 tp!2169615))))

(declare-fun b!7480522 () Bool)

(declare-fun tp!2169617 () Bool)

(assert (=> b!7480522 (= e!4462045 tp!2169617)))

(assert (=> b!7479995 (= tp!2169521 e!4462045)))

(assert (= (and b!7479995 (is-ElementMatch!19610 (regOne!39733 rTail!78))) b!7480520))

(assert (= (and b!7479995 (is-Concat!28455 (regOne!39733 rTail!78))) b!7480521))

(assert (= (and b!7479995 (is-Star!19610 (regOne!39733 rTail!78))) b!7480522))

(assert (= (and b!7479995 (is-Union!19610 (regOne!39733 rTail!78))) b!7480523))

(declare-fun b!7480524 () Bool)

(declare-fun e!4462046 () Bool)

(assert (=> b!7480524 (= e!4462046 tp_is_empty!49509)))

(declare-fun b!7480527 () Bool)

(declare-fun tp!2169621 () Bool)

(declare-fun tp!2169619 () Bool)

(assert (=> b!7480527 (= e!4462046 (and tp!2169621 tp!2169619))))

(declare-fun b!7480525 () Bool)

(declare-fun tp!2169618 () Bool)

(declare-fun tp!2169620 () Bool)

(assert (=> b!7480525 (= e!4462046 (and tp!2169618 tp!2169620))))

(declare-fun b!7480526 () Bool)

(declare-fun tp!2169622 () Bool)

(assert (=> b!7480526 (= e!4462046 tp!2169622)))

(assert (=> b!7479995 (= tp!2169524 e!4462046)))

(assert (= (and b!7479995 (is-ElementMatch!19610 (regTwo!39733 rTail!78))) b!7480524))

(assert (= (and b!7479995 (is-Concat!28455 (regTwo!39733 rTail!78))) b!7480525))

(assert (= (and b!7479995 (is-Star!19610 (regTwo!39733 rTail!78))) b!7480526))

(assert (= (and b!7479995 (is-Union!19610 (regTwo!39733 rTail!78))) b!7480527))

(declare-fun b!7480528 () Bool)

(declare-fun e!4462047 () Bool)

(assert (=> b!7480528 (= e!4462047 tp_is_empty!49509)))

(declare-fun b!7480531 () Bool)

(declare-fun tp!2169626 () Bool)

(declare-fun tp!2169624 () Bool)

(assert (=> b!7480531 (= e!4462047 (and tp!2169626 tp!2169624))))

(declare-fun b!7480529 () Bool)

(declare-fun tp!2169623 () Bool)

(declare-fun tp!2169625 () Bool)

(assert (=> b!7480529 (= e!4462047 (and tp!2169623 tp!2169625))))

(declare-fun b!7480530 () Bool)

(declare-fun tp!2169627 () Bool)

(assert (=> b!7480530 (= e!4462047 tp!2169627)))

(assert (=> b!7479986 (= tp!2169523 e!4462047)))

(assert (= (and b!7479986 (is-ElementMatch!19610 (regOne!39732 r2!5783))) b!7480528))

(assert (= (and b!7479986 (is-Concat!28455 (regOne!39732 r2!5783))) b!7480529))

(assert (= (and b!7479986 (is-Star!19610 (regOne!39732 r2!5783))) b!7480530))

(assert (= (and b!7479986 (is-Union!19610 (regOne!39732 r2!5783))) b!7480531))

(declare-fun b!7480532 () Bool)

(declare-fun e!4462048 () Bool)

(assert (=> b!7480532 (= e!4462048 tp_is_empty!49509)))

(declare-fun b!7480535 () Bool)

(declare-fun tp!2169631 () Bool)

(declare-fun tp!2169629 () Bool)

(assert (=> b!7480535 (= e!4462048 (and tp!2169631 tp!2169629))))

(declare-fun b!7480533 () Bool)

(declare-fun tp!2169628 () Bool)

(declare-fun tp!2169630 () Bool)

(assert (=> b!7480533 (= e!4462048 (and tp!2169628 tp!2169630))))

(declare-fun b!7480534 () Bool)

(declare-fun tp!2169632 () Bool)

(assert (=> b!7480534 (= e!4462048 tp!2169632)))

(assert (=> b!7479986 (= tp!2169530 e!4462048)))

(assert (= (and b!7479986 (is-ElementMatch!19610 (regTwo!39732 r2!5783))) b!7480532))

(assert (= (and b!7479986 (is-Concat!28455 (regTwo!39732 r2!5783))) b!7480533))

(assert (= (and b!7479986 (is-Star!19610 (regTwo!39732 r2!5783))) b!7480534))

(assert (= (and b!7479986 (is-Union!19610 (regTwo!39732 r2!5783))) b!7480535))

(declare-fun b!7480536 () Bool)

(declare-fun e!4462049 () Bool)

(assert (=> b!7480536 (= e!4462049 tp_is_empty!49509)))

(declare-fun b!7480539 () Bool)

(declare-fun tp!2169636 () Bool)

(declare-fun tp!2169634 () Bool)

(assert (=> b!7480539 (= e!4462049 (and tp!2169636 tp!2169634))))

(declare-fun b!7480537 () Bool)

(declare-fun tp!2169633 () Bool)

(declare-fun tp!2169635 () Bool)

(assert (=> b!7480537 (= e!4462049 (and tp!2169633 tp!2169635))))

(declare-fun b!7480538 () Bool)

(declare-fun tp!2169637 () Bool)

(assert (=> b!7480538 (= e!4462049 tp!2169637)))

(assert (=> b!7479991 (= tp!2169522 e!4462049)))

(assert (= (and b!7479991 (is-ElementMatch!19610 (regOne!39733 r2!5783))) b!7480536))

(assert (= (and b!7479991 (is-Concat!28455 (regOne!39733 r2!5783))) b!7480537))

(assert (= (and b!7479991 (is-Star!19610 (regOne!39733 r2!5783))) b!7480538))

(assert (= (and b!7479991 (is-Union!19610 (regOne!39733 r2!5783))) b!7480539))

(declare-fun b!7480540 () Bool)

(declare-fun e!4462050 () Bool)

(assert (=> b!7480540 (= e!4462050 tp_is_empty!49509)))

(declare-fun b!7480543 () Bool)

(declare-fun tp!2169641 () Bool)

(declare-fun tp!2169639 () Bool)

(assert (=> b!7480543 (= e!4462050 (and tp!2169641 tp!2169639))))

(declare-fun b!7480541 () Bool)

(declare-fun tp!2169638 () Bool)

(declare-fun tp!2169640 () Bool)

(assert (=> b!7480541 (= e!4462050 (and tp!2169638 tp!2169640))))

(declare-fun b!7480542 () Bool)

(declare-fun tp!2169642 () Bool)

(assert (=> b!7480542 (= e!4462050 tp!2169642)))

(assert (=> b!7479991 (= tp!2169520 e!4462050)))

(assert (= (and b!7479991 (is-ElementMatch!19610 (regTwo!39733 r2!5783))) b!7480540))

(assert (= (and b!7479991 (is-Concat!28455 (regTwo!39733 r2!5783))) b!7480541))

(assert (= (and b!7479991 (is-Star!19610 (regTwo!39733 r2!5783))) b!7480542))

(assert (= (and b!7479991 (is-Union!19610 (regTwo!39733 r2!5783))) b!7480543))

(declare-fun b!7480544 () Bool)

(declare-fun e!4462051 () Bool)

(assert (=> b!7480544 (= e!4462051 tp_is_empty!49509)))

(declare-fun b!7480547 () Bool)

(declare-fun tp!2169646 () Bool)

(declare-fun tp!2169644 () Bool)

(assert (=> b!7480547 (= e!4462051 (and tp!2169646 tp!2169644))))

(declare-fun b!7480545 () Bool)

(declare-fun tp!2169643 () Bool)

(declare-fun tp!2169645 () Bool)

(assert (=> b!7480545 (= e!4462051 (and tp!2169643 tp!2169645))))

(declare-fun b!7480546 () Bool)

(declare-fun tp!2169647 () Bool)

(assert (=> b!7480546 (= e!4462051 tp!2169647)))

(assert (=> b!7479993 (= tp!2169531 e!4462051)))

(assert (= (and b!7479993 (is-ElementMatch!19610 (reg!19939 rTail!78))) b!7480544))

(assert (= (and b!7479993 (is-Concat!28455 (reg!19939 rTail!78))) b!7480545))

(assert (= (and b!7479993 (is-Star!19610 (reg!19939 rTail!78))) b!7480546))

(assert (= (and b!7479993 (is-Union!19610 (reg!19939 rTail!78))) b!7480547))

(declare-fun b!7480548 () Bool)

(declare-fun e!4462052 () Bool)

(assert (=> b!7480548 (= e!4462052 tp_is_empty!49509)))

(declare-fun b!7480551 () Bool)

(declare-fun tp!2169651 () Bool)

(declare-fun tp!2169649 () Bool)

(assert (=> b!7480551 (= e!4462052 (and tp!2169651 tp!2169649))))

(declare-fun b!7480549 () Bool)

(declare-fun tp!2169648 () Bool)

(declare-fun tp!2169650 () Bool)

(assert (=> b!7480549 (= e!4462052 (and tp!2169648 tp!2169650))))

(declare-fun b!7480550 () Bool)

(declare-fun tp!2169652 () Bool)

(assert (=> b!7480550 (= e!4462052 tp!2169652)))

(assert (=> b!7479987 (= tp!2169526 e!4462052)))

(assert (= (and b!7479987 (is-ElementMatch!19610 (reg!19939 r2!5783))) b!7480548))

(assert (= (and b!7479987 (is-Concat!28455 (reg!19939 r2!5783))) b!7480549))

(assert (= (and b!7479987 (is-Star!19610 (reg!19939 r2!5783))) b!7480550))

(assert (= (and b!7479987 (is-Union!19610 (reg!19939 r2!5783))) b!7480551))

(declare-fun b!7480552 () Bool)

(declare-fun e!4462053 () Bool)

(assert (=> b!7480552 (= e!4462053 tp_is_empty!49509)))

(declare-fun b!7480555 () Bool)

(declare-fun tp!2169656 () Bool)

(declare-fun tp!2169654 () Bool)

(assert (=> b!7480555 (= e!4462053 (and tp!2169656 tp!2169654))))

(declare-fun b!7480553 () Bool)

(declare-fun tp!2169653 () Bool)

(declare-fun tp!2169655 () Bool)

(assert (=> b!7480553 (= e!4462053 (and tp!2169653 tp!2169655))))

(declare-fun b!7480554 () Bool)

(declare-fun tp!2169657 () Bool)

(assert (=> b!7480554 (= e!4462053 tp!2169657)))

(assert (=> b!7479978 (= tp!2169516 e!4462053)))

(assert (= (and b!7479978 (is-ElementMatch!19610 (regOne!39732 rTail!78))) b!7480552))

(assert (= (and b!7479978 (is-Concat!28455 (regOne!39732 rTail!78))) b!7480553))

(assert (= (and b!7479978 (is-Star!19610 (regOne!39732 rTail!78))) b!7480554))

(assert (= (and b!7479978 (is-Union!19610 (regOne!39732 rTail!78))) b!7480555))

(declare-fun b!7480556 () Bool)

(declare-fun e!4462054 () Bool)

(assert (=> b!7480556 (= e!4462054 tp_is_empty!49509)))

(declare-fun b!7480559 () Bool)

(declare-fun tp!2169661 () Bool)

(declare-fun tp!2169659 () Bool)

(assert (=> b!7480559 (= e!4462054 (and tp!2169661 tp!2169659))))

(declare-fun b!7480557 () Bool)

(declare-fun tp!2169658 () Bool)

(declare-fun tp!2169660 () Bool)

(assert (=> b!7480557 (= e!4462054 (and tp!2169658 tp!2169660))))

(declare-fun b!7480558 () Bool)

(declare-fun tp!2169662 () Bool)

(assert (=> b!7480558 (= e!4462054 tp!2169662)))

(assert (=> b!7479978 (= tp!2169518 e!4462054)))

(assert (= (and b!7479978 (is-ElementMatch!19610 (regTwo!39732 rTail!78))) b!7480556))

(assert (= (and b!7479978 (is-Concat!28455 (regTwo!39732 rTail!78))) b!7480557))

(assert (= (and b!7479978 (is-Star!19610 (regTwo!39732 rTail!78))) b!7480558))

(assert (= (and b!7479978 (is-Union!19610 (regTwo!39732 rTail!78))) b!7480559))

(declare-fun b!7480560 () Bool)

(declare-fun e!4462055 () Bool)

(assert (=> b!7480560 (= e!4462055 tp_is_empty!49509)))

(declare-fun b!7480563 () Bool)

(declare-fun tp!2169666 () Bool)

(declare-fun tp!2169664 () Bool)

(assert (=> b!7480563 (= e!4462055 (and tp!2169666 tp!2169664))))

(declare-fun b!7480561 () Bool)

(declare-fun tp!2169663 () Bool)

(declare-fun tp!2169665 () Bool)

(assert (=> b!7480561 (= e!4462055 (and tp!2169663 tp!2169665))))

(declare-fun b!7480562 () Bool)

(declare-fun tp!2169667 () Bool)

(assert (=> b!7480562 (= e!4462055 tp!2169667)))

(assert (=> b!7479994 (= tp!2169529 e!4462055)))

(assert (= (and b!7479994 (is-ElementMatch!19610 (reg!19939 r1!5845))) b!7480560))

(assert (= (and b!7479994 (is-Concat!28455 (reg!19939 r1!5845))) b!7480561))

(assert (= (and b!7479994 (is-Star!19610 (reg!19939 r1!5845))) b!7480562))

(assert (= (and b!7479994 (is-Union!19610 (reg!19939 r1!5845))) b!7480563))

(push 1)

(assert (not d!2300051))

(assert (not bm!686735))

(assert (not b!7480551))

(assert tp_is_empty!49509)

(assert (not d!2300047))

(assert (not b!7480245))

(assert (not b!7480234))

(assert (not b!7480437))

(assert (not b!7480517))

(assert (not b!7480207))

(assert (not b!7480539))

(assert (not b!7480555))

(assert (not b!7480365))

(assert (not b!7480228))

(assert (not d!2300035))

(assert (not bm!686728))

(assert (not b!7480128))

(assert (not d!2299983))

(assert (not b!7480501))

(assert (not b!7480522))

(assert (not b!7480242))

(assert (not bm!686739))

(assert (not b!7480559))

(assert (not b!7480526))

(assert (not d!2300007))

(assert (not b!7480282))

(assert (not b!7480231))

(assert (not b!7480370))

(assert (not b!7480241))

(assert (not b!7480441))

(assert (not b!7480523))

(assert (not b!7480455))

(assert (not bm!686729))

(assert (not b!7480451))

(assert (not b!7480529))

(assert (not b!7480506))

(assert (not b!7480550))

(assert (not d!2299985))

(assert (not b!7480549))

(assert (not b!7480277))

(assert (not b!7480454))

(assert (not b!7480500))

(assert (not b!7480561))

(assert (not d!2299995))

(assert (not d!2299993))

(assert (not bm!686731))

(assert (not b!7480558))

(assert (not b!7480127))

(assert (not b!7480377))

(assert (not bm!686734))

(assert (not b!7480505))

(assert (not b!7480283))

(assert (not b!7480557))

(assert (not b!7480562))

(assert (not b!7480502))

(assert (not b!7480458))

(assert (not b!7480541))

(assert (not b!7480201))

(assert (not bm!686719))

(assert (not b!7480368))

(assert (not b!7480123))

(assert (not b!7480374))

(assert (not b!7480381))

(assert (not b!7480515))

(assert (not b!7480527))

(assert (not b!7480212))

(assert (not b!7480124))

(assert (not b!7480436))

(assert (not b!7480483))

(assert (not d!2300005))

(assert (not b!7480519))

(assert (not bm!686740))

(assert (not b!7480378))

(assert (not b!7480281))

(assert (not bm!686737))

(assert (not bm!686710))

(assert (not b!7480538))

(assert (not b!7480444))

(assert (not bm!686736))

(assert (not b!7480478))

(assert (not b!7480546))

(assert (not b!7480459))

(assert (not d!2300023))

(assert (not b!7480534))

(assert (not b!7480543))

(assert (not b!7480131))

(assert (not d!2300027))

(assert (not b!7480280))

(assert (not b!7480385))

(assert (not b!7480447))

(assert (not b!7480504))

(assert (not bm!686704))

(assert (not d!2300001))

(assert (not d!2300009))

(assert (not bm!686726))

(assert (not d!2300019))

(assert (not b!7480220))

(assert (not b!7480223))

(assert (not bm!686732))

(assert (not b!7480440))

(assert (not b!7480554))

(assert (not b!7480530))

(assert (not b!7480238))

(assert (not b!7480542))

(assert (not bm!686696))

(assert (not b!7480407))

(assert (not bm!686709))

(assert (not b!7480425))

(assert (not b!7480450))

(assert (not b!7480382))

(assert (not d!2300017))

(assert (not b!7480513))

(assert (not b!7480120))

(assert (not b!7480547))

(assert (not d!2299981))

(assert (not b!7480514))

(assert (not b!7480521))

(assert (not d!2299997))

(assert (not bm!686738))

(assert (not b!7480279))

(assert (not b!7480537))

(assert (not b!7480525))

(assert (not d!2300043))

(assert (not b!7480196))

(assert (not bm!686703))

(assert (not b!7480533))

(assert (not bm!686708))

(assert (not d!2300031))

(assert (not d!2300003))

(assert (not d!2300025))

(assert (not b!7480511))

(assert (not b!7480464))

(assert (not b!7480535))

(assert (not d!2300045))

(assert (not bm!686707))

(assert (not b!7480531))

(assert (not b!7480367))

(assert (not b!7480433))

(assert (not b!7480553))

(assert (not b!7480371))

(assert (not b!7480518))

(assert (not b!7480369))

(assert (not b!7480563))

(assert (not b!7480227))

(assert (not b!7480224))

(assert (not b!7480416))

(assert (not b!7480237))

(assert (not b!7480545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

