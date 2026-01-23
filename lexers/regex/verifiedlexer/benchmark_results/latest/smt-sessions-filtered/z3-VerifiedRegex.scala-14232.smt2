; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744840 () Bool)

(assert start!744840)

(declare-fun res!3132574 () Bool)

(declare-fun e!4661164 () Bool)

(assert (=> start!744840 (=> (not res!3132574) (not e!4661164))))

(declare-fun lt!2681752 () Int)

(declare-datatypes ((B!4025 0))(
  ( (B!4026 (val!31862 Int)) )
))
(declare-datatypes ((List!74112 0))(
  ( (Nil!73988) (Cons!73988 (h!80436 B!4025) (t!388847 List!74112)) )
))
(declare-fun suffix!251 () List!74112)

(declare-fun lt!2681751 () Int)

(declare-fun l!2923 () List!74112)

(declare-fun drop!2692 (List!74112 Int) List!74112)

(assert (=> start!744840 (= res!3132574 (= suffix!251 (drop!2692 l!2923 (- lt!2681751 lt!2681752))))))

(declare-fun size!42858 (List!74112) Int)

(assert (=> start!744840 (= lt!2681752 (size!42858 suffix!251))))

(assert (=> start!744840 (= lt!2681751 (size!42858 l!2923))))

(assert (=> start!744840 e!4661164))

(declare-fun e!4661166 () Bool)

(assert (=> start!744840 e!4661166))

(declare-fun e!4661165 () Bool)

(assert (=> start!744840 e!4661165))

(declare-fun b!7897080 () Bool)

(assert (=> b!7897080 (= e!4661164 (< lt!2681751 lt!2681752))))

(declare-fun b!7897081 () Bool)

(declare-fun tp_is_empty!52841 () Bool)

(declare-fun tp!2352713 () Bool)

(assert (=> b!7897081 (= e!4661166 (and tp_is_empty!52841 tp!2352713))))

(declare-fun b!7897082 () Bool)

(declare-fun tp!2352714 () Bool)

(assert (=> b!7897082 (= e!4661165 (and tp_is_empty!52841 tp!2352714))))

(assert (= (and start!744840 res!3132574) b!7897080))

(get-info :version)

(assert (= (and start!744840 ((_ is Cons!73988) l!2923)) b!7897081))

(assert (= (and start!744840 ((_ is Cons!73988) suffix!251)) b!7897082))

(declare-fun m!8272366 () Bool)

(assert (=> start!744840 m!8272366))

(declare-fun m!8272368 () Bool)

(assert (=> start!744840 m!8272368))

(declare-fun m!8272370 () Bool)

(assert (=> start!744840 m!8272370))

(check-sat (not start!744840) (not b!7897081) (not b!7897082) tp_is_empty!52841)
(check-sat)
(get-model)

(declare-fun b!7897119 () Bool)

(declare-fun e!4661189 () Bool)

(declare-fun lt!2681757 () List!74112)

(declare-fun e!4661191 () Int)

(assert (=> b!7897119 (= e!4661189 (= (size!42858 lt!2681757) e!4661191))))

(declare-fun c!1449491 () Bool)

(assert (=> b!7897119 (= c!1449491 (<= (- lt!2681751 lt!2681752) 0))))

(declare-fun e!4661190 () List!74112)

(declare-fun b!7897120 () Bool)

(assert (=> b!7897120 (= e!4661190 (drop!2692 (t!388847 l!2923) (- (- lt!2681751 lt!2681752) 1)))))

(declare-fun bm!732950 () Bool)

(declare-fun call!732955 () Int)

(assert (=> bm!732950 (= call!732955 (size!42858 l!2923))))

(declare-fun b!7897121 () Bool)

(declare-fun e!4661187 () List!74112)

(assert (=> b!7897121 (= e!4661187 Nil!73988)))

(declare-fun b!7897122 () Bool)

(assert (=> b!7897122 (= e!4661191 call!732955)))

(declare-fun d!2357545 () Bool)

(assert (=> d!2357545 e!4661189))

(declare-fun res!3132579 () Bool)

(assert (=> d!2357545 (=> (not res!3132579) (not e!4661189))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15702 (List!74112) (InoxSet B!4025))

(assert (=> d!2357545 (= res!3132579 (= ((_ map implies) (content!15702 lt!2681757) (content!15702 l!2923)) ((as const (InoxSet B!4025)) true)))))

(assert (=> d!2357545 (= lt!2681757 e!4661187)))

(declare-fun c!1449490 () Bool)

(assert (=> d!2357545 (= c!1449490 ((_ is Nil!73988) l!2923))))

(assert (=> d!2357545 (= (drop!2692 l!2923 (- lt!2681751 lt!2681752)) lt!2681757)))

(declare-fun b!7897123 () Bool)

(declare-fun e!4661188 () Int)

(assert (=> b!7897123 (= e!4661188 (- call!732955 (- lt!2681751 lt!2681752)))))

(declare-fun b!7897124 () Bool)

(assert (=> b!7897124 (= e!4661190 l!2923)))

(declare-fun b!7897125 () Bool)

(assert (=> b!7897125 (= e!4661191 e!4661188)))

(declare-fun c!1449492 () Bool)

(assert (=> b!7897125 (= c!1449492 (>= (- lt!2681751 lt!2681752) call!732955))))

(declare-fun b!7897126 () Bool)

(assert (=> b!7897126 (= e!4661187 e!4661190)))

(declare-fun c!1449489 () Bool)

(assert (=> b!7897126 (= c!1449489 (<= (- lt!2681751 lt!2681752) 0))))

(declare-fun b!7897127 () Bool)

(assert (=> b!7897127 (= e!4661188 0)))

(assert (= (and d!2357545 c!1449490) b!7897121))

(assert (= (and d!2357545 (not c!1449490)) b!7897126))

(assert (= (and b!7897126 c!1449489) b!7897124))

(assert (= (and b!7897126 (not c!1449489)) b!7897120))

(assert (= (and d!2357545 res!3132579) b!7897119))

(assert (= (and b!7897119 c!1449491) b!7897122))

(assert (= (and b!7897119 (not c!1449491)) b!7897125))

(assert (= (and b!7897125 c!1449492) b!7897127))

(assert (= (and b!7897125 (not c!1449492)) b!7897123))

(assert (= (or b!7897122 b!7897125 b!7897123) bm!732950))

(declare-fun m!8272372 () Bool)

(assert (=> b!7897119 m!8272372))

(declare-fun m!8272374 () Bool)

(assert (=> b!7897120 m!8272374))

(assert (=> bm!732950 m!8272370))

(declare-fun m!8272376 () Bool)

(assert (=> d!2357545 m!8272376))

(declare-fun m!8272378 () Bool)

(assert (=> d!2357545 m!8272378))

(assert (=> start!744840 d!2357545))

(declare-fun d!2357549 () Bool)

(declare-fun lt!2681761 () Int)

(assert (=> d!2357549 (>= lt!2681761 0)))

(declare-fun e!4661199 () Int)

(assert (=> d!2357549 (= lt!2681761 e!4661199)))

(declare-fun c!1449499 () Bool)

(assert (=> d!2357549 (= c!1449499 ((_ is Nil!73988) suffix!251))))

(assert (=> d!2357549 (= (size!42858 suffix!251) lt!2681761)))

(declare-fun b!7897141 () Bool)

(assert (=> b!7897141 (= e!4661199 0)))

(declare-fun b!7897142 () Bool)

(assert (=> b!7897142 (= e!4661199 (+ 1 (size!42858 (t!388847 suffix!251))))))

(assert (= (and d!2357549 c!1449499) b!7897141))

(assert (= (and d!2357549 (not c!1449499)) b!7897142))

(declare-fun m!8272388 () Bool)

(assert (=> b!7897142 m!8272388))

(assert (=> start!744840 d!2357549))

(declare-fun d!2357553 () Bool)

(declare-fun lt!2681762 () Int)

(assert (=> d!2357553 (>= lt!2681762 0)))

(declare-fun e!4661200 () Int)

(assert (=> d!2357553 (= lt!2681762 e!4661200)))

(declare-fun c!1449500 () Bool)

(assert (=> d!2357553 (= c!1449500 ((_ is Nil!73988) l!2923))))

(assert (=> d!2357553 (= (size!42858 l!2923) lt!2681762)))

(declare-fun b!7897143 () Bool)

(assert (=> b!7897143 (= e!4661200 0)))

(declare-fun b!7897144 () Bool)

(assert (=> b!7897144 (= e!4661200 (+ 1 (size!42858 (t!388847 l!2923))))))

(assert (= (and d!2357553 c!1449500) b!7897143))

(assert (= (and d!2357553 (not c!1449500)) b!7897144))

(declare-fun m!8272390 () Bool)

(assert (=> b!7897144 m!8272390))

(assert (=> start!744840 d!2357553))

(declare-fun b!7897153 () Bool)

(declare-fun e!4661205 () Bool)

(declare-fun tp!2352717 () Bool)

(assert (=> b!7897153 (= e!4661205 (and tp_is_empty!52841 tp!2352717))))

(assert (=> b!7897081 (= tp!2352713 e!4661205)))

(assert (= (and b!7897081 ((_ is Cons!73988) (t!388847 l!2923))) b!7897153))

(declare-fun b!7897154 () Bool)

(declare-fun e!4661206 () Bool)

(declare-fun tp!2352718 () Bool)

(assert (=> b!7897154 (= e!4661206 (and tp_is_empty!52841 tp!2352718))))

(assert (=> b!7897082 (= tp!2352714 e!4661206)))

(assert (= (and b!7897082 ((_ is Cons!73988) (t!388847 suffix!251))) b!7897154))

(check-sat (not b!7897153) (not b!7897142) (not b!7897120) (not b!7897154) tp_is_empty!52841 (not d!2357545) (not b!7897144) (not bm!732950) (not b!7897119))
(check-sat)
