; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358600 () Bool)

(assert start!358600)

(declare-fun res!1551398 () Bool)

(declare-fun e!2366456 () Bool)

(assert (=> start!358600 (=> (not res!1551398) (not e!2366456))))

(declare-datatypes ((B!2585 0))(
  ( (B!2586 (val!13314 Int)) )
))
(declare-datatypes ((List!40567 0))(
  ( (Nil!40443) (Cons!40443 (h!45863 B!2585) (t!309156 List!40567)) )
))
(declare-fun l1!1027 () List!40567)

(get-info :version)

(assert (=> start!358600 (= res!1551398 ((_ is Cons!40443) l1!1027))))

(assert (=> start!358600 e!2366456))

(declare-fun e!2366457 () Bool)

(assert (=> start!358600 e!2366457))

(declare-fun e!2366458 () Bool)

(assert (=> start!358600 e!2366458))

(declare-fun b!3832164 () Bool)

(declare-fun l2!996 () List!40567)

(declare-fun isSuffix!998 (List!40567 List!40567) Bool)

(declare-fun ++!10206 (List!40567 List!40567) List!40567)

(assert (=> b!3832164 (= e!2366456 (not (isSuffix!998 l2!996 (++!10206 l1!1027 l2!996))))))

(assert (=> b!3832164 (isSuffix!998 l2!996 (++!10206 (t!309156 l1!1027) l2!996))))

(declare-datatypes ((Unit!58212 0))(
  ( (Unit!58213) )
))
(declare-fun lt!1330581 () Unit!58212)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!683 (List!40567 List!40567) Unit!58212)

(assert (=> b!3832164 (= lt!1330581 (lemmaConcatTwoListThenFSndIsSuffix!683 (t!309156 l1!1027) l2!996))))

(declare-fun b!3832165 () Bool)

(declare-fun tp_is_empty!19225 () Bool)

(declare-fun tp!1159393 () Bool)

(assert (=> b!3832165 (= e!2366457 (and tp_is_empty!19225 tp!1159393))))

(declare-fun b!3832166 () Bool)

(declare-fun tp!1159394 () Bool)

(assert (=> b!3832166 (= e!2366458 (and tp_is_empty!19225 tp!1159394))))

(assert (= (and start!358600 res!1551398) b!3832164))

(assert (= (and start!358600 ((_ is Cons!40443) l1!1027)) b!3832165))

(assert (= (and start!358600 ((_ is Cons!40443) l2!996)) b!3832166))

(declare-fun m!4386827 () Bool)

(assert (=> b!3832164 m!4386827))

(declare-fun m!4386829 () Bool)

(assert (=> b!3832164 m!4386829))

(declare-fun m!4386831 () Bool)

(assert (=> b!3832164 m!4386831))

(declare-fun m!4386833 () Bool)

(assert (=> b!3832164 m!4386833))

(assert (=> b!3832164 m!4386829))

(assert (=> b!3832164 m!4386827))

(declare-fun m!4386835 () Bool)

(assert (=> b!3832164 m!4386835))

(check-sat (not b!3832164) (not b!3832166) (not b!3832165) tp_is_empty!19225)
(check-sat)
(get-model)

(declare-fun d!1137584 () Bool)

(declare-fun e!2366468 () Bool)

(assert (=> d!1137584 e!2366468))

(declare-fun res!1551408 () Bool)

(assert (=> d!1137584 (=> res!1551408 e!2366468)))

(declare-fun lt!1330589 () Bool)

(assert (=> d!1137584 (= res!1551408 (not lt!1330589))))

(declare-fun drop!2135 (List!40567 Int) List!40567)

(declare-fun size!30486 (List!40567) Int)

(assert (=> d!1137584 (= lt!1330589 (= l2!996 (drop!2135 (++!10206 (t!309156 l1!1027) l2!996) (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)))))))

(assert (=> d!1137584 (= (isSuffix!998 l2!996 (++!10206 (t!309156 l1!1027) l2!996)) lt!1330589)))

(declare-fun b!3832180 () Bool)

(assert (=> b!3832180 (= e!2366468 (>= (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)))))

(assert (= (and d!1137584 (not res!1551408)) b!3832180))

(assert (=> d!1137584 m!4386827))

(declare-fun m!4386843 () Bool)

(assert (=> d!1137584 m!4386843))

(declare-fun m!4386845 () Bool)

(assert (=> d!1137584 m!4386845))

(assert (=> d!1137584 m!4386827))

(declare-fun m!4386847 () Bool)

(assert (=> d!1137584 m!4386847))

(assert (=> b!3832180 m!4386827))

(assert (=> b!3832180 m!4386843))

(assert (=> b!3832180 m!4386845))

(assert (=> b!3832164 d!1137584))

(declare-fun b!3832207 () Bool)

(declare-fun e!2366482 () Bool)

(declare-fun lt!1330598 () List!40567)

(assert (=> b!3832207 (= e!2366482 (or (not (= l2!996 Nil!40443)) (= lt!1330598 l1!1027)))))

(declare-fun d!1137588 () Bool)

(assert (=> d!1137588 e!2366482))

(declare-fun res!1551419 () Bool)

(assert (=> d!1137588 (=> (not res!1551419) (not e!2366482))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6002 (List!40567) (InoxSet B!2585))

(assert (=> d!1137588 (= res!1551419 (= (content!6002 lt!1330598) ((_ map or) (content!6002 l1!1027) (content!6002 l2!996))))))

(declare-fun e!2366483 () List!40567)

(assert (=> d!1137588 (= lt!1330598 e!2366483)))

(declare-fun c!668270 () Bool)

(assert (=> d!1137588 (= c!668270 ((_ is Nil!40443) l1!1027))))

(assert (=> d!1137588 (= (++!10206 l1!1027 l2!996) lt!1330598)))

(declare-fun b!3832205 () Bool)

(assert (=> b!3832205 (= e!2366483 (Cons!40443 (h!45863 l1!1027) (++!10206 (t!309156 l1!1027) l2!996)))))

(declare-fun b!3832204 () Bool)

(assert (=> b!3832204 (= e!2366483 l2!996)))

(declare-fun b!3832206 () Bool)

(declare-fun res!1551418 () Bool)

(assert (=> b!3832206 (=> (not res!1551418) (not e!2366482))))

(assert (=> b!3832206 (= res!1551418 (= (size!30486 lt!1330598) (+ (size!30486 l1!1027) (size!30486 l2!996))))))

(assert (= (and d!1137588 c!668270) b!3832204))

(assert (= (and d!1137588 (not c!668270)) b!3832205))

(assert (= (and d!1137588 res!1551419) b!3832206))

(assert (= (and b!3832206 res!1551418) b!3832207))

(declare-fun m!4386875 () Bool)

(assert (=> d!1137588 m!4386875))

(declare-fun m!4386877 () Bool)

(assert (=> d!1137588 m!4386877))

(declare-fun m!4386879 () Bool)

(assert (=> d!1137588 m!4386879))

(assert (=> b!3832205 m!4386827))

(declare-fun m!4386881 () Bool)

(assert (=> b!3832206 m!4386881))

(declare-fun m!4386883 () Bool)

(assert (=> b!3832206 m!4386883))

(assert (=> b!3832206 m!4386845))

(assert (=> b!3832164 d!1137588))

(declare-fun b!3832211 () Bool)

(declare-fun lt!1330599 () List!40567)

(declare-fun e!2366484 () Bool)

(assert (=> b!3832211 (= e!2366484 (or (not (= l2!996 Nil!40443)) (= lt!1330599 (t!309156 l1!1027))))))

(declare-fun d!1137596 () Bool)

(assert (=> d!1137596 e!2366484))

(declare-fun res!1551421 () Bool)

(assert (=> d!1137596 (=> (not res!1551421) (not e!2366484))))

(assert (=> d!1137596 (= res!1551421 (= (content!6002 lt!1330599) ((_ map or) (content!6002 (t!309156 l1!1027)) (content!6002 l2!996))))))

(declare-fun e!2366485 () List!40567)

(assert (=> d!1137596 (= lt!1330599 e!2366485)))

(declare-fun c!668271 () Bool)

(assert (=> d!1137596 (= c!668271 ((_ is Nil!40443) (t!309156 l1!1027)))))

(assert (=> d!1137596 (= (++!10206 (t!309156 l1!1027) l2!996) lt!1330599)))

(declare-fun b!3832209 () Bool)

(assert (=> b!3832209 (= e!2366485 (Cons!40443 (h!45863 (t!309156 l1!1027)) (++!10206 (t!309156 (t!309156 l1!1027)) l2!996)))))

(declare-fun b!3832208 () Bool)

(assert (=> b!3832208 (= e!2366485 l2!996)))

(declare-fun b!3832210 () Bool)

(declare-fun res!1551420 () Bool)

(assert (=> b!3832210 (=> (not res!1551420) (not e!2366484))))

(assert (=> b!3832210 (= res!1551420 (= (size!30486 lt!1330599) (+ (size!30486 (t!309156 l1!1027)) (size!30486 l2!996))))))

(assert (= (and d!1137596 c!668271) b!3832208))

(assert (= (and d!1137596 (not c!668271)) b!3832209))

(assert (= (and d!1137596 res!1551421) b!3832210))

(assert (= (and b!3832210 res!1551420) b!3832211))

(declare-fun m!4386885 () Bool)

(assert (=> d!1137596 m!4386885))

(declare-fun m!4386887 () Bool)

(assert (=> d!1137596 m!4386887))

(assert (=> d!1137596 m!4386879))

(declare-fun m!4386889 () Bool)

(assert (=> b!3832209 m!4386889))

(declare-fun m!4386891 () Bool)

(assert (=> b!3832210 m!4386891))

(declare-fun m!4386893 () Bool)

(assert (=> b!3832210 m!4386893))

(assert (=> b!3832210 m!4386845))

(assert (=> b!3832164 d!1137596))

(declare-fun d!1137598 () Bool)

(declare-fun e!2366486 () Bool)

(assert (=> d!1137598 e!2366486))

(declare-fun res!1551422 () Bool)

(assert (=> d!1137598 (=> res!1551422 e!2366486)))

(declare-fun lt!1330600 () Bool)

(assert (=> d!1137598 (= res!1551422 (not lt!1330600))))

(assert (=> d!1137598 (= lt!1330600 (= l2!996 (drop!2135 (++!10206 l1!1027 l2!996) (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)))))))

(assert (=> d!1137598 (= (isSuffix!998 l2!996 (++!10206 l1!1027 l2!996)) lt!1330600)))

(declare-fun b!3832212 () Bool)

(assert (=> b!3832212 (= e!2366486 (>= (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)))))

(assert (= (and d!1137598 (not res!1551422)) b!3832212))

(assert (=> d!1137598 m!4386829))

(declare-fun m!4386895 () Bool)

(assert (=> d!1137598 m!4386895))

(assert (=> d!1137598 m!4386845))

(assert (=> d!1137598 m!4386829))

(declare-fun m!4386897 () Bool)

(assert (=> d!1137598 m!4386897))

(assert (=> b!3832212 m!4386829))

(assert (=> b!3832212 m!4386895))

(assert (=> b!3832212 m!4386845))

(assert (=> b!3832164 d!1137598))

(declare-fun d!1137600 () Bool)

(assert (=> d!1137600 (isSuffix!998 l2!996 (++!10206 (t!309156 l1!1027) l2!996))))

(declare-fun lt!1330603 () Unit!58212)

(declare-fun choose!22542 (List!40567 List!40567) Unit!58212)

(assert (=> d!1137600 (= lt!1330603 (choose!22542 (t!309156 l1!1027) l2!996))))

(assert (=> d!1137600 (= (lemmaConcatTwoListThenFSndIsSuffix!683 (t!309156 l1!1027) l2!996) lt!1330603)))

(declare-fun bs!582312 () Bool)

(assert (= bs!582312 d!1137600))

(assert (=> bs!582312 m!4386827))

(assert (=> bs!582312 m!4386827))

(assert (=> bs!582312 m!4386835))

(declare-fun m!4386899 () Bool)

(assert (=> bs!582312 m!4386899))

(assert (=> b!3832164 d!1137600))

(declare-fun b!3832217 () Bool)

(declare-fun e!2366489 () Bool)

(declare-fun tp!1159401 () Bool)

(assert (=> b!3832217 (= e!2366489 (and tp_is_empty!19225 tp!1159401))))

(assert (=> b!3832166 (= tp!1159394 e!2366489)))

(assert (= (and b!3832166 ((_ is Cons!40443) (t!309156 l2!996))) b!3832217))

(declare-fun b!3832218 () Bool)

(declare-fun e!2366490 () Bool)

(declare-fun tp!1159402 () Bool)

(assert (=> b!3832218 (= e!2366490 (and tp_is_empty!19225 tp!1159402))))

(assert (=> b!3832165 (= tp!1159393 e!2366490)))

(assert (= (and b!3832165 ((_ is Cons!40443) (t!309156 l1!1027))) b!3832218))

(check-sat (not d!1137600) (not b!3832218) tp_is_empty!19225 (not d!1137596) (not b!3832217) (not d!1137598) (not b!3832209) (not d!1137584) (not d!1137588) (not b!3832212) (not b!3832180) (not b!3832205) (not b!3832210) (not b!3832206))
(check-sat)
(get-model)

(declare-fun d!1137602 () Bool)

(declare-fun lt!1330606 () Int)

(assert (=> d!1137602 (>= lt!1330606 0)))

(declare-fun e!2366493 () Int)

(assert (=> d!1137602 (= lt!1330606 e!2366493)))

(declare-fun c!668274 () Bool)

(assert (=> d!1137602 (= c!668274 ((_ is Nil!40443) lt!1330598))))

(assert (=> d!1137602 (= (size!30486 lt!1330598) lt!1330606)))

(declare-fun b!3832223 () Bool)

(assert (=> b!3832223 (= e!2366493 0)))

(declare-fun b!3832224 () Bool)

(assert (=> b!3832224 (= e!2366493 (+ 1 (size!30486 (t!309156 lt!1330598))))))

(assert (= (and d!1137602 c!668274) b!3832223))

(assert (= (and d!1137602 (not c!668274)) b!3832224))

(declare-fun m!4386901 () Bool)

(assert (=> b!3832224 m!4386901))

(assert (=> b!3832206 d!1137602))

(declare-fun d!1137604 () Bool)

(declare-fun lt!1330607 () Int)

(assert (=> d!1137604 (>= lt!1330607 0)))

(declare-fun e!2366494 () Int)

(assert (=> d!1137604 (= lt!1330607 e!2366494)))

(declare-fun c!668275 () Bool)

(assert (=> d!1137604 (= c!668275 ((_ is Nil!40443) l1!1027))))

(assert (=> d!1137604 (= (size!30486 l1!1027) lt!1330607)))

(declare-fun b!3832225 () Bool)

(assert (=> b!3832225 (= e!2366494 0)))

(declare-fun b!3832226 () Bool)

(assert (=> b!3832226 (= e!2366494 (+ 1 (size!30486 (t!309156 l1!1027))))))

(assert (= (and d!1137604 c!668275) b!3832225))

(assert (= (and d!1137604 (not c!668275)) b!3832226))

(assert (=> b!3832226 m!4386893))

(assert (=> b!3832206 d!1137604))

(declare-fun d!1137606 () Bool)

(declare-fun lt!1330608 () Int)

(assert (=> d!1137606 (>= lt!1330608 0)))

(declare-fun e!2366495 () Int)

(assert (=> d!1137606 (= lt!1330608 e!2366495)))

(declare-fun c!668276 () Bool)

(assert (=> d!1137606 (= c!668276 ((_ is Nil!40443) l2!996))))

(assert (=> d!1137606 (= (size!30486 l2!996) lt!1330608)))

(declare-fun b!3832227 () Bool)

(assert (=> b!3832227 (= e!2366495 0)))

(declare-fun b!3832228 () Bool)

(assert (=> b!3832228 (= e!2366495 (+ 1 (size!30486 (t!309156 l2!996))))))

(assert (= (and d!1137606 c!668276) b!3832227))

(assert (= (and d!1137606 (not c!668276)) b!3832228))

(declare-fun m!4386903 () Bool)

(assert (=> b!3832228 m!4386903))

(assert (=> b!3832206 d!1137606))

(declare-fun d!1137610 () Bool)

(declare-fun lt!1330610 () Int)

(assert (=> d!1137610 (>= lt!1330610 0)))

(declare-fun e!2366498 () Int)

(assert (=> d!1137610 (= lt!1330610 e!2366498)))

(declare-fun c!668278 () Bool)

(assert (=> d!1137610 (= c!668278 ((_ is Nil!40443) (++!10206 l1!1027 l2!996)))))

(assert (=> d!1137610 (= (size!30486 (++!10206 l1!1027 l2!996)) lt!1330610)))

(declare-fun b!3832233 () Bool)

(assert (=> b!3832233 (= e!2366498 0)))

(declare-fun b!3832234 () Bool)

(assert (=> b!3832234 (= e!2366498 (+ 1 (size!30486 (t!309156 (++!10206 l1!1027 l2!996)))))))

(assert (= (and d!1137610 c!668278) b!3832233))

(assert (= (and d!1137610 (not c!668278)) b!3832234))

(declare-fun m!4386905 () Bool)

(assert (=> b!3832234 m!4386905))

(assert (=> b!3832212 d!1137610))

(assert (=> b!3832212 d!1137606))

(assert (=> b!3832205 d!1137596))

(declare-fun b!3832281 () Bool)

(declare-fun e!2366525 () List!40567)

(assert (=> b!3832281 (= e!2366525 Nil!40443)))

(declare-fun b!3832282 () Bool)

(declare-fun e!2366523 () List!40567)

(assert (=> b!3832282 (= e!2366523 (drop!2135 (t!309156 (++!10206 (t!309156 l1!1027) l2!996)) (- (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)) 1)))))

(declare-fun b!3832283 () Bool)

(declare-fun e!2366527 () Int)

(declare-fun e!2366526 () Int)

(assert (=> b!3832283 (= e!2366527 e!2366526)))

(declare-fun call!281811 () Int)

(declare-fun c!668301 () Bool)

(assert (=> b!3832283 (= c!668301 (>= (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)) call!281811))))

(declare-fun b!3832284 () Bool)

(assert (=> b!3832284 (= e!2366527 call!281811)))

(declare-fun b!3832285 () Bool)

(declare-fun e!2366524 () Bool)

(declare-fun lt!1330620 () List!40567)

(assert (=> b!3832285 (= e!2366524 (= (size!30486 lt!1330620) e!2366527))))

(declare-fun c!668302 () Bool)

(assert (=> b!3832285 (= c!668302 (<= (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)) 0))))

(declare-fun b!3832286 () Bool)

(assert (=> b!3832286 (= e!2366523 (++!10206 (t!309156 l1!1027) l2!996))))

(declare-fun b!3832287 () Bool)

(assert (=> b!3832287 (= e!2366526 0)))

(declare-fun bm!281806 () Bool)

(assert (=> bm!281806 (= call!281811 (size!30486 (++!10206 (t!309156 l1!1027) l2!996)))))

(declare-fun d!1137612 () Bool)

(assert (=> d!1137612 e!2366524))

(declare-fun res!1551427 () Bool)

(assert (=> d!1137612 (=> (not res!1551427) (not e!2366524))))

(assert (=> d!1137612 (= res!1551427 (= ((_ map implies) (content!6002 lt!1330620) (content!6002 (++!10206 (t!309156 l1!1027) l2!996))) ((as const (InoxSet B!2585)) true)))))

(assert (=> d!1137612 (= lt!1330620 e!2366525)))

(declare-fun c!668304 () Bool)

(assert (=> d!1137612 (= c!668304 ((_ is Nil!40443) (++!10206 (t!309156 l1!1027) l2!996)))))

(assert (=> d!1137612 (= (drop!2135 (++!10206 (t!309156 l1!1027) l2!996) (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996))) lt!1330620)))

(declare-fun b!3832288 () Bool)

(assert (=> b!3832288 (= e!2366526 (- call!281811 (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996))))))

(declare-fun b!3832289 () Bool)

(assert (=> b!3832289 (= e!2366525 e!2366523)))

(declare-fun c!668303 () Bool)

(assert (=> b!3832289 (= c!668303 (<= (- (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) (size!30486 l2!996)) 0))))

(assert (= (and d!1137612 c!668304) b!3832281))

(assert (= (and d!1137612 (not c!668304)) b!3832289))

(assert (= (and b!3832289 c!668303) b!3832286))

(assert (= (and b!3832289 (not c!668303)) b!3832282))

(assert (= (and d!1137612 res!1551427) b!3832285))

(assert (= (and b!3832285 c!668302) b!3832284))

(assert (= (and b!3832285 (not c!668302)) b!3832283))

(assert (= (and b!3832283 c!668301) b!3832287))

(assert (= (and b!3832283 (not c!668301)) b!3832288))

(assert (= (or b!3832284 b!3832283 b!3832288) bm!281806))

(declare-fun m!4386933 () Bool)

(assert (=> b!3832282 m!4386933))

(declare-fun m!4386935 () Bool)

(assert (=> b!3832285 m!4386935))

(assert (=> bm!281806 m!4386827))

(assert (=> bm!281806 m!4386843))

(declare-fun m!4386937 () Bool)

(assert (=> d!1137612 m!4386937))

(assert (=> d!1137612 m!4386827))

(declare-fun m!4386939 () Bool)

(assert (=> d!1137612 m!4386939))

(assert (=> d!1137584 d!1137612))

(declare-fun d!1137628 () Bool)

(declare-fun lt!1330621 () Int)

(assert (=> d!1137628 (>= lt!1330621 0)))

(declare-fun e!2366534 () Int)

(assert (=> d!1137628 (= lt!1330621 e!2366534)))

(declare-fun c!668309 () Bool)

(assert (=> d!1137628 (= c!668309 ((_ is Nil!40443) (++!10206 (t!309156 l1!1027) l2!996)))))

(assert (=> d!1137628 (= (size!30486 (++!10206 (t!309156 l1!1027) l2!996)) lt!1330621)))

(declare-fun b!3832300 () Bool)

(assert (=> b!3832300 (= e!2366534 0)))

(declare-fun b!3832301 () Bool)

(assert (=> b!3832301 (= e!2366534 (+ 1 (size!30486 (t!309156 (++!10206 (t!309156 l1!1027) l2!996)))))))

(assert (= (and d!1137628 c!668309) b!3832300))

(assert (= (and d!1137628 (not c!668309)) b!3832301))

(declare-fun m!4386941 () Bool)

(assert (=> b!3832301 m!4386941))

(assert (=> d!1137584 d!1137628))

(assert (=> d!1137584 d!1137606))

(declare-fun b!3832302 () Bool)

(declare-fun e!2366537 () List!40567)

(assert (=> b!3832302 (= e!2366537 Nil!40443)))

(declare-fun b!3832303 () Bool)

(declare-fun e!2366535 () List!40567)

(assert (=> b!3832303 (= e!2366535 (drop!2135 (t!309156 (++!10206 l1!1027 l2!996)) (- (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)) 1)))))

(declare-fun b!3832304 () Bool)

(declare-fun e!2366539 () Int)

(declare-fun e!2366538 () Int)

(assert (=> b!3832304 (= e!2366539 e!2366538)))

(declare-fun call!281814 () Int)

(declare-fun c!668310 () Bool)

(assert (=> b!3832304 (= c!668310 (>= (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)) call!281814))))

(declare-fun b!3832305 () Bool)

(assert (=> b!3832305 (= e!2366539 call!281814)))

(declare-fun b!3832306 () Bool)

(declare-fun e!2366536 () Bool)

(declare-fun lt!1330622 () List!40567)

(assert (=> b!3832306 (= e!2366536 (= (size!30486 lt!1330622) e!2366539))))

(declare-fun c!668311 () Bool)

(assert (=> b!3832306 (= c!668311 (<= (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)) 0))))

(declare-fun b!3832307 () Bool)

(assert (=> b!3832307 (= e!2366535 (++!10206 l1!1027 l2!996))))

(declare-fun b!3832308 () Bool)

(assert (=> b!3832308 (= e!2366538 0)))

(declare-fun bm!281809 () Bool)

(assert (=> bm!281809 (= call!281814 (size!30486 (++!10206 l1!1027 l2!996)))))

(declare-fun d!1137630 () Bool)

(assert (=> d!1137630 e!2366536))

(declare-fun res!1551430 () Bool)

(assert (=> d!1137630 (=> (not res!1551430) (not e!2366536))))

(assert (=> d!1137630 (= res!1551430 (= ((_ map implies) (content!6002 lt!1330622) (content!6002 (++!10206 l1!1027 l2!996))) ((as const (InoxSet B!2585)) true)))))

(assert (=> d!1137630 (= lt!1330622 e!2366537)))

(declare-fun c!668313 () Bool)

(assert (=> d!1137630 (= c!668313 ((_ is Nil!40443) (++!10206 l1!1027 l2!996)))))

(assert (=> d!1137630 (= (drop!2135 (++!10206 l1!1027 l2!996) (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996))) lt!1330622)))

(declare-fun b!3832309 () Bool)

(assert (=> b!3832309 (= e!2366538 (- call!281814 (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996))))))

(declare-fun b!3832310 () Bool)

(assert (=> b!3832310 (= e!2366537 e!2366535)))

(declare-fun c!668312 () Bool)

(assert (=> b!3832310 (= c!668312 (<= (- (size!30486 (++!10206 l1!1027 l2!996)) (size!30486 l2!996)) 0))))

(assert (= (and d!1137630 c!668313) b!3832302))

(assert (= (and d!1137630 (not c!668313)) b!3832310))

(assert (= (and b!3832310 c!668312) b!3832307))

(assert (= (and b!3832310 (not c!668312)) b!3832303))

(assert (= (and d!1137630 res!1551430) b!3832306))

(assert (= (and b!3832306 c!668311) b!3832305))

(assert (= (and b!3832306 (not c!668311)) b!3832304))

(assert (= (and b!3832304 c!668310) b!3832308))

(assert (= (and b!3832304 (not c!668310)) b!3832309))

(assert (= (or b!3832305 b!3832304 b!3832309) bm!281809))

(declare-fun m!4386943 () Bool)

(assert (=> b!3832303 m!4386943))

(declare-fun m!4386945 () Bool)

(assert (=> b!3832306 m!4386945))

(assert (=> bm!281809 m!4386829))

(assert (=> bm!281809 m!4386895))

(declare-fun m!4386947 () Bool)

(assert (=> d!1137630 m!4386947))

(assert (=> d!1137630 m!4386829))

(declare-fun m!4386949 () Bool)

(assert (=> d!1137630 m!4386949))

(assert (=> d!1137598 d!1137630))

(assert (=> d!1137598 d!1137610))

(assert (=> d!1137598 d!1137606))

(assert (=> b!3832180 d!1137628))

(assert (=> b!3832180 d!1137606))

(declare-fun d!1137632 () Bool)

(declare-fun c!668320 () Bool)

(assert (=> d!1137632 (= c!668320 ((_ is Nil!40443) lt!1330599))))

(declare-fun e!2366547 () (InoxSet B!2585))

(assert (=> d!1137632 (= (content!6002 lt!1330599) e!2366547)))

(declare-fun b!3832324 () Bool)

(assert (=> b!3832324 (= e!2366547 ((as const (Array B!2585 Bool)) false))))

(declare-fun b!3832325 () Bool)

(assert (=> b!3832325 (= e!2366547 ((_ map or) (store ((as const (Array B!2585 Bool)) false) (h!45863 lt!1330599) true) (content!6002 (t!309156 lt!1330599))))))

(assert (= (and d!1137632 c!668320) b!3832324))

(assert (= (and d!1137632 (not c!668320)) b!3832325))

(declare-fun m!4386959 () Bool)

(assert (=> b!3832325 m!4386959))

(declare-fun m!4386961 () Bool)

(assert (=> b!3832325 m!4386961))

(assert (=> d!1137596 d!1137632))

(declare-fun d!1137636 () Bool)

(declare-fun c!668325 () Bool)

(assert (=> d!1137636 (= c!668325 ((_ is Nil!40443) (t!309156 l1!1027)))))

(declare-fun e!2366553 () (InoxSet B!2585))

(assert (=> d!1137636 (= (content!6002 (t!309156 l1!1027)) e!2366553)))

(declare-fun b!3832335 () Bool)

(assert (=> b!3832335 (= e!2366553 ((as const (Array B!2585 Bool)) false))))

(declare-fun b!3832336 () Bool)

(assert (=> b!3832336 (= e!2366553 ((_ map or) (store ((as const (Array B!2585 Bool)) false) (h!45863 (t!309156 l1!1027)) true) (content!6002 (t!309156 (t!309156 l1!1027)))))))

(assert (= (and d!1137636 c!668325) b!3832335))

(assert (= (and d!1137636 (not c!668325)) b!3832336))

(declare-fun m!4386963 () Bool)

(assert (=> b!3832336 m!4386963))

(declare-fun m!4386965 () Bool)

(assert (=> b!3832336 m!4386965))

(assert (=> d!1137596 d!1137636))

(declare-fun d!1137638 () Bool)

(declare-fun c!668326 () Bool)

(assert (=> d!1137638 (= c!668326 ((_ is Nil!40443) l2!996))))

(declare-fun e!2366554 () (InoxSet B!2585))

(assert (=> d!1137638 (= (content!6002 l2!996) e!2366554)))

(declare-fun b!3832337 () Bool)

(assert (=> b!3832337 (= e!2366554 ((as const (Array B!2585 Bool)) false))))

(declare-fun b!3832338 () Bool)

(assert (=> b!3832338 (= e!2366554 ((_ map or) (store ((as const (Array B!2585 Bool)) false) (h!45863 l2!996) true) (content!6002 (t!309156 l2!996))))))

(assert (= (and d!1137638 c!668326) b!3832337))

(assert (= (and d!1137638 (not c!668326)) b!3832338))

(declare-fun m!4386975 () Bool)

(assert (=> b!3832338 m!4386975))

(declare-fun m!4386977 () Bool)

(assert (=> b!3832338 m!4386977))

(assert (=> d!1137596 d!1137638))

(assert (=> d!1137600 d!1137584))

(assert (=> d!1137600 d!1137596))

(declare-fun d!1137642 () Bool)

(assert (=> d!1137642 (isSuffix!998 l2!996 (++!10206 (t!309156 l1!1027) l2!996))))

(assert (=> d!1137642 true))

(declare-fun _$47!945 () Unit!58212)

(assert (=> d!1137642 (= (choose!22542 (t!309156 l1!1027) l2!996) _$47!945)))

(declare-fun bs!582313 () Bool)

(assert (= bs!582313 d!1137642))

(assert (=> bs!582313 m!4386827))

(assert (=> bs!582313 m!4386827))

(assert (=> bs!582313 m!4386835))

(assert (=> d!1137600 d!1137642))

(declare-fun d!1137648 () Bool)

(declare-fun c!668329 () Bool)

(assert (=> d!1137648 (= c!668329 ((_ is Nil!40443) lt!1330598))))

(declare-fun e!2366557 () (InoxSet B!2585))

(assert (=> d!1137648 (= (content!6002 lt!1330598) e!2366557)))

(declare-fun b!3832343 () Bool)

(assert (=> b!3832343 (= e!2366557 ((as const (Array B!2585 Bool)) false))))

(declare-fun b!3832344 () Bool)

(assert (=> b!3832344 (= e!2366557 ((_ map or) (store ((as const (Array B!2585 Bool)) false) (h!45863 lt!1330598) true) (content!6002 (t!309156 lt!1330598))))))

(assert (= (and d!1137648 c!668329) b!3832343))

(assert (= (and d!1137648 (not c!668329)) b!3832344))

(declare-fun m!4386985 () Bool)

(assert (=> b!3832344 m!4386985))

(declare-fun m!4386987 () Bool)

(assert (=> b!3832344 m!4386987))

(assert (=> d!1137588 d!1137648))

(declare-fun d!1137652 () Bool)

(declare-fun c!668331 () Bool)

(assert (=> d!1137652 (= c!668331 ((_ is Nil!40443) l1!1027))))

(declare-fun e!2366559 () (InoxSet B!2585))

(assert (=> d!1137652 (= (content!6002 l1!1027) e!2366559)))

(declare-fun b!3832347 () Bool)

(assert (=> b!3832347 (= e!2366559 ((as const (Array B!2585 Bool)) false))))

(declare-fun b!3832348 () Bool)

(assert (=> b!3832348 (= e!2366559 ((_ map or) (store ((as const (Array B!2585 Bool)) false) (h!45863 l1!1027) true) (content!6002 (t!309156 l1!1027))))))

(assert (= (and d!1137652 c!668331) b!3832347))

(assert (= (and d!1137652 (not c!668331)) b!3832348))

(declare-fun m!4386991 () Bool)

(assert (=> b!3832348 m!4386991))

(assert (=> b!3832348 m!4386887))

(assert (=> d!1137588 d!1137652))

(assert (=> d!1137588 d!1137638))

(declare-fun d!1137658 () Bool)

(declare-fun lt!1330628 () Int)

(assert (=> d!1137658 (>= lt!1330628 0)))

(declare-fun e!2366562 () Int)

(assert (=> d!1137658 (= lt!1330628 e!2366562)))

(declare-fun c!668334 () Bool)

(assert (=> d!1137658 (= c!668334 ((_ is Nil!40443) lt!1330599))))

(assert (=> d!1137658 (= (size!30486 lt!1330599) lt!1330628)))

(declare-fun b!3832353 () Bool)

(assert (=> b!3832353 (= e!2366562 0)))

(declare-fun b!3832354 () Bool)

(assert (=> b!3832354 (= e!2366562 (+ 1 (size!30486 (t!309156 lt!1330599))))))

(assert (= (and d!1137658 c!668334) b!3832353))

(assert (= (and d!1137658 (not c!668334)) b!3832354))

(declare-fun m!4386995 () Bool)

(assert (=> b!3832354 m!4386995))

(assert (=> b!3832210 d!1137658))

(declare-fun d!1137662 () Bool)

(declare-fun lt!1330630 () Int)

(assert (=> d!1137662 (>= lt!1330630 0)))

(declare-fun e!2366564 () Int)

(assert (=> d!1137662 (= lt!1330630 e!2366564)))

(declare-fun c!668336 () Bool)

(assert (=> d!1137662 (= c!668336 ((_ is Nil!40443) (t!309156 l1!1027)))))

(assert (=> d!1137662 (= (size!30486 (t!309156 l1!1027)) lt!1330630)))

(declare-fun b!3832357 () Bool)

(assert (=> b!3832357 (= e!2366564 0)))

(declare-fun b!3832358 () Bool)

(assert (=> b!3832358 (= e!2366564 (+ 1 (size!30486 (t!309156 (t!309156 l1!1027)))))))

(assert (= (and d!1137662 c!668336) b!3832357))

(assert (= (and d!1137662 (not c!668336)) b!3832358))

(declare-fun m!4386997 () Bool)

(assert (=> b!3832358 m!4386997))

(assert (=> b!3832210 d!1137662))

(assert (=> b!3832210 d!1137606))

(declare-fun lt!1330631 () List!40567)

(declare-fun b!3832364 () Bool)

(declare-fun e!2366567 () Bool)

(assert (=> b!3832364 (= e!2366567 (or (not (= l2!996 Nil!40443)) (= lt!1330631 (t!309156 (t!309156 l1!1027)))))))

(declare-fun d!1137664 () Bool)

(assert (=> d!1137664 e!2366567))

(declare-fun res!1551434 () Bool)

(assert (=> d!1137664 (=> (not res!1551434) (not e!2366567))))

(assert (=> d!1137664 (= res!1551434 (= (content!6002 lt!1330631) ((_ map or) (content!6002 (t!309156 (t!309156 l1!1027))) (content!6002 l2!996))))))

(declare-fun e!2366568 () List!40567)

(assert (=> d!1137664 (= lt!1330631 e!2366568)))

(declare-fun c!668337 () Bool)

(assert (=> d!1137664 (= c!668337 ((_ is Nil!40443) (t!309156 (t!309156 l1!1027))))))

(assert (=> d!1137664 (= (++!10206 (t!309156 (t!309156 l1!1027)) l2!996) lt!1330631)))

(declare-fun b!3832362 () Bool)

(assert (=> b!3832362 (= e!2366568 (Cons!40443 (h!45863 (t!309156 (t!309156 l1!1027))) (++!10206 (t!309156 (t!309156 (t!309156 l1!1027))) l2!996)))))

(declare-fun b!3832361 () Bool)

(assert (=> b!3832361 (= e!2366568 l2!996)))

(declare-fun b!3832363 () Bool)

(declare-fun res!1551433 () Bool)

(assert (=> b!3832363 (=> (not res!1551433) (not e!2366567))))

(assert (=> b!3832363 (= res!1551433 (= (size!30486 lt!1330631) (+ (size!30486 (t!309156 (t!309156 l1!1027))) (size!30486 l2!996))))))

(assert (= (and d!1137664 c!668337) b!3832361))

(assert (= (and d!1137664 (not c!668337)) b!3832362))

(assert (= (and d!1137664 res!1551434) b!3832363))

(assert (= (and b!3832363 res!1551433) b!3832364))

(declare-fun m!4386999 () Bool)

(assert (=> d!1137664 m!4386999))

(assert (=> d!1137664 m!4386965))

(assert (=> d!1137664 m!4386879))

(declare-fun m!4387001 () Bool)

(assert (=> b!3832362 m!4387001))

(declare-fun m!4387003 () Bool)

(assert (=> b!3832363 m!4387003))

(assert (=> b!3832363 m!4386997))

(assert (=> b!3832363 m!4386845))

(assert (=> b!3832209 d!1137664))

(declare-fun b!3832365 () Bool)

(declare-fun e!2366569 () Bool)

(declare-fun tp!1159405 () Bool)

(assert (=> b!3832365 (= e!2366569 (and tp_is_empty!19225 tp!1159405))))

(assert (=> b!3832217 (= tp!1159401 e!2366569)))

(assert (= (and b!3832217 ((_ is Cons!40443) (t!309156 (t!309156 l2!996)))) b!3832365))

(declare-fun b!3832366 () Bool)

(declare-fun e!2366570 () Bool)

(declare-fun tp!1159406 () Bool)

(assert (=> b!3832366 (= e!2366570 (and tp_is_empty!19225 tp!1159406))))

(assert (=> b!3832218 (= tp!1159402 e!2366570)))

(assert (= (and b!3832218 ((_ is Cons!40443) (t!309156 (t!309156 l1!1027)))) b!3832366))

(check-sat (not b!3832325) (not b!3832362) (not b!3832348) (not b!3832344) (not b!3832306) (not b!3832226) (not b!3832365) (not b!3832301) (not b!3832234) (not b!3832363) (not b!3832338) (not b!3832358) (not d!1137642) (not b!3832282) (not b!3832303) (not d!1137664) (not b!3832228) (not bm!281809) (not b!3832224) (not d!1137630) (not b!3832285) tp_is_empty!19225 (not b!3832354) (not d!1137612) (not bm!281806) (not b!3832366) (not b!3832336))
(check-sat)
