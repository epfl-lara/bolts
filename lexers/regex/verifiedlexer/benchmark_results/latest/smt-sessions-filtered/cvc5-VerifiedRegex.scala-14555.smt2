; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755246 () Bool)

(assert start!755246)

(declare-fun b!8023208 () Bool)

(declare-fun res!3172762 () Bool)

(declare-fun e!4726392 () Bool)

(assert (=> b!8023208 (=> (not res!3172762) (not e!4726392))))

(declare-datatypes ((B!4235 0))(
  ( (B!4236 (val!32507 Int)) )
))
(declare-datatypes ((List!75019 0))(
  ( (Nil!74895) (Cons!74895 (h!81343 B!4235) (t!390762 List!75019)) )
))
(declare-fun p1!179 () List!75019)

(declare-fun p2!179 () List!75019)

(assert (=> b!8023208 (= res!3172762 (and (= p1!179 p2!179) (is-Cons!74895 p1!179)))))

(declare-fun b!8023209 () Bool)

(declare-fun res!3172763 () Bool)

(declare-fun e!4726395 () Bool)

(assert (=> b!8023209 (=> (not res!3172763) (not e!4726395))))

(declare-fun lt!2720367 () List!75019)

(declare-fun s1!490 () List!75019)

(declare-fun ++!18563 (List!75019 List!75019) List!75019)

(assert (=> b!8023209 (= res!3172763 (= (++!18563 (t!390762 p1!179) s1!490) lt!2720367))))

(declare-fun b!8023210 () Bool)

(declare-fun e!4726394 () Bool)

(declare-fun tp_is_empty!54123 () Bool)

(declare-fun tp!2401171 () Bool)

(assert (=> b!8023210 (= e!4726394 (and tp_is_empty!54123 tp!2401171))))

(declare-fun b!8023211 () Bool)

(declare-fun ListPrimitiveSize!502 (List!75019) Int)

(assert (=> b!8023211 (= e!4726395 (>= (ListPrimitiveSize!502 (t!390762 p1!179)) (ListPrimitiveSize!502 p1!179)))))

(declare-fun res!3172766 () Bool)

(assert (=> start!755246 (=> (not res!3172766) (not e!4726392))))

(declare-fun l!3411 () List!75019)

(declare-fun isPrefix!6826 (List!75019 List!75019) Bool)

(assert (=> start!755246 (= res!3172766 (isPrefix!6826 p1!179 l!3411))))

(assert (=> start!755246 e!4726392))

(declare-fun e!4726390 () Bool)

(assert (=> start!755246 e!4726390))

(declare-fun e!4726391 () Bool)

(assert (=> start!755246 e!4726391))

(assert (=> start!755246 e!4726394))

(declare-fun e!4726396 () Bool)

(assert (=> start!755246 e!4726396))

(declare-fun e!4726393 () Bool)

(assert (=> start!755246 e!4726393))

(declare-fun b!8023212 () Bool)

(assert (=> b!8023212 (= e!4726392 e!4726395)))

(declare-fun res!3172767 () Bool)

(assert (=> b!8023212 (=> (not res!3172767) (not e!4726395))))

(assert (=> b!8023212 (= res!3172767 (isPrefix!6826 (t!390762 p1!179) lt!2720367))))

(declare-fun tail!15964 (List!75019) List!75019)

(assert (=> b!8023212 (= lt!2720367 (tail!15964 l!3411))))

(declare-fun lt!2720368 () List!75019)

(assert (=> b!8023212 (= lt!2720368 (tail!15964 p2!179))))

(declare-fun b!8023213 () Bool)

(declare-fun res!3172765 () Bool)

(assert (=> b!8023213 (=> (not res!3172765) (not e!4726392))))

(assert (=> b!8023213 (= res!3172765 (isPrefix!6826 p2!179 l!3411))))

(declare-fun b!8023214 () Bool)

(declare-fun tp!2401170 () Bool)

(assert (=> b!8023214 (= e!4726393 (and tp_is_empty!54123 tp!2401170))))

(declare-fun b!8023215 () Bool)

(declare-fun res!3172764 () Bool)

(assert (=> b!8023215 (=> (not res!3172764) (not e!4726395))))

(declare-fun s2!455 () List!75019)

(assert (=> b!8023215 (= res!3172764 (= (++!18563 lt!2720368 s2!455) lt!2720367))))

(declare-fun b!8023216 () Bool)

(declare-fun res!3172761 () Bool)

(assert (=> b!8023216 (=> (not res!3172761) (not e!4726392))))

(assert (=> b!8023216 (= res!3172761 (= (++!18563 p2!179 s2!455) l!3411))))

(declare-fun b!8023217 () Bool)

(declare-fun tp!2401172 () Bool)

(assert (=> b!8023217 (= e!4726390 (and tp_is_empty!54123 tp!2401172))))

(declare-fun b!8023218 () Bool)

(declare-fun tp!2401173 () Bool)

(assert (=> b!8023218 (= e!4726391 (and tp_is_empty!54123 tp!2401173))))

(declare-fun b!8023219 () Bool)

(declare-fun tp!2401174 () Bool)

(assert (=> b!8023219 (= e!4726396 (and tp_is_empty!54123 tp!2401174))))

(declare-fun b!8023220 () Bool)

(declare-fun res!3172768 () Bool)

(assert (=> b!8023220 (=> (not res!3172768) (not e!4726395))))

(assert (=> b!8023220 (= res!3172768 (isPrefix!6826 lt!2720368 lt!2720367))))

(declare-fun b!8023221 () Bool)

(declare-fun res!3172770 () Bool)

(assert (=> b!8023221 (=> (not res!3172770) (not e!4726392))))

(assert (=> b!8023221 (= res!3172770 (= (++!18563 p1!179 s1!490) l!3411))))

(declare-fun b!8023222 () Bool)

(declare-fun res!3172769 () Bool)

(assert (=> b!8023222 (=> (not res!3172769) (not e!4726395))))

(assert (=> b!8023222 (= res!3172769 (= (t!390762 p1!179) lt!2720368))))

(assert (= (and start!755246 res!3172766) b!8023213))

(assert (= (and b!8023213 res!3172765) b!8023221))

(assert (= (and b!8023221 res!3172770) b!8023216))

(assert (= (and b!8023216 res!3172761) b!8023208))

(assert (= (and b!8023208 res!3172762) b!8023212))

(assert (= (and b!8023212 res!3172767) b!8023220))

(assert (= (and b!8023220 res!3172768) b!8023209))

(assert (= (and b!8023209 res!3172763) b!8023215))

(assert (= (and b!8023215 res!3172764) b!8023222))

(assert (= (and b!8023222 res!3172769) b!8023211))

(assert (= (and start!755246 (is-Cons!74895 p2!179)) b!8023217))

(assert (= (and start!755246 (is-Cons!74895 s2!455)) b!8023218))

(assert (= (and start!755246 (is-Cons!74895 l!3411)) b!8023210))

(assert (= (and start!755246 (is-Cons!74895 p1!179)) b!8023219))

(assert (= (and start!755246 (is-Cons!74895 s1!490)) b!8023214))

(declare-fun m!8385926 () Bool)

(assert (=> b!8023212 m!8385926))

(declare-fun m!8385928 () Bool)

(assert (=> b!8023212 m!8385928))

(declare-fun m!8385930 () Bool)

(assert (=> b!8023212 m!8385930))

(declare-fun m!8385932 () Bool)

(assert (=> b!8023211 m!8385932))

(declare-fun m!8385934 () Bool)

(assert (=> b!8023211 m!8385934))

(declare-fun m!8385936 () Bool)

(assert (=> start!755246 m!8385936))

(declare-fun m!8385938 () Bool)

(assert (=> b!8023221 m!8385938))

(declare-fun m!8385940 () Bool)

(assert (=> b!8023215 m!8385940))

(declare-fun m!8385942 () Bool)

(assert (=> b!8023220 m!8385942))

(declare-fun m!8385944 () Bool)

(assert (=> b!8023209 m!8385944))

(declare-fun m!8385946 () Bool)

(assert (=> b!8023216 m!8385946))

(declare-fun m!8385948 () Bool)

(assert (=> b!8023213 m!8385948))

(push 1)

(assert (not b!8023219))

(assert (not b!8023210))

(assert (not b!8023217))

(assert (not b!8023212))

(assert (not b!8023215))

(assert (not b!8023216))

(assert (not b!8023220))

(assert (not start!755246))

(assert (not b!8023221))

(assert tp_is_empty!54123)

(assert (not b!8023211))

(assert (not b!8023218))

(assert (not b!8023214))

(assert (not b!8023213))

(assert (not b!8023209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8023277 () Bool)

(declare-fun res!3172810 () Bool)

(declare-fun e!4726426 () Bool)

(assert (=> b!8023277 (=> (not res!3172810) (not e!4726426))))

(declare-fun head!16427 (List!75019) B!4235)

(assert (=> b!8023277 (= res!3172810 (= (head!16427 p1!179) (head!16427 l!3411)))))

(declare-fun b!8023278 () Bool)

(assert (=> b!8023278 (= e!4726426 (isPrefix!6826 (tail!15964 p1!179) (tail!15964 l!3411)))))

(declare-fun b!8023276 () Bool)

(declare-fun e!4726425 () Bool)

(assert (=> b!8023276 (= e!4726425 e!4726426)))

(declare-fun res!3172811 () Bool)

(assert (=> b!8023276 (=> (not res!3172811) (not e!4726426))))

(assert (=> b!8023276 (= res!3172811 (not (is-Nil!74895 l!3411)))))

(declare-fun b!8023279 () Bool)

(declare-fun e!4726424 () Bool)

(declare-fun size!43676 (List!75019) Int)

(assert (=> b!8023279 (= e!4726424 (>= (size!43676 l!3411) (size!43676 p1!179)))))

(declare-fun d!2392438 () Bool)

(assert (=> d!2392438 e!4726424))

(declare-fun res!3172809 () Bool)

(assert (=> d!2392438 (=> res!3172809 e!4726424)))

(declare-fun lt!2720377 () Bool)

(assert (=> d!2392438 (= res!3172809 (not lt!2720377))))

(assert (=> d!2392438 (= lt!2720377 e!4726425)))

(declare-fun res!3172812 () Bool)

(assert (=> d!2392438 (=> res!3172812 e!4726425)))

(assert (=> d!2392438 (= res!3172812 (is-Nil!74895 p1!179))))

(assert (=> d!2392438 (= (isPrefix!6826 p1!179 l!3411) lt!2720377)))

(assert (= (and d!2392438 (not res!3172812)) b!8023276))

(assert (= (and b!8023276 res!3172811) b!8023277))

(assert (= (and b!8023277 res!3172810) b!8023278))

(assert (= (and d!2392438 (not res!3172809)) b!8023279))

(declare-fun m!8385974 () Bool)

(assert (=> b!8023277 m!8385974))

(declare-fun m!8385976 () Bool)

(assert (=> b!8023277 m!8385976))

(declare-fun m!8385978 () Bool)

(assert (=> b!8023278 m!8385978))

(assert (=> b!8023278 m!8385928))

(assert (=> b!8023278 m!8385978))

(assert (=> b!8023278 m!8385928))

(declare-fun m!8385980 () Bool)

(assert (=> b!8023278 m!8385980))

(declare-fun m!8385982 () Bool)

(assert (=> b!8023279 m!8385982))

(declare-fun m!8385984 () Bool)

(assert (=> b!8023279 m!8385984))

(assert (=> start!755246 d!2392438))

(declare-fun b!8023281 () Bool)

(declare-fun res!3172814 () Bool)

(declare-fun e!4726429 () Bool)

(assert (=> b!8023281 (=> (not res!3172814) (not e!4726429))))

(assert (=> b!8023281 (= res!3172814 (= (head!16427 lt!2720368) (head!16427 lt!2720367)))))

(declare-fun b!8023282 () Bool)

(assert (=> b!8023282 (= e!4726429 (isPrefix!6826 (tail!15964 lt!2720368) (tail!15964 lt!2720367)))))

(declare-fun b!8023280 () Bool)

(declare-fun e!4726428 () Bool)

(assert (=> b!8023280 (= e!4726428 e!4726429)))

(declare-fun res!3172815 () Bool)

(assert (=> b!8023280 (=> (not res!3172815) (not e!4726429))))

(assert (=> b!8023280 (= res!3172815 (not (is-Nil!74895 lt!2720367)))))

(declare-fun b!8023283 () Bool)

(declare-fun e!4726427 () Bool)

(assert (=> b!8023283 (= e!4726427 (>= (size!43676 lt!2720367) (size!43676 lt!2720368)))))

(declare-fun d!2392442 () Bool)

(assert (=> d!2392442 e!4726427))

(declare-fun res!3172813 () Bool)

(assert (=> d!2392442 (=> res!3172813 e!4726427)))

(declare-fun lt!2720378 () Bool)

(assert (=> d!2392442 (= res!3172813 (not lt!2720378))))

(assert (=> d!2392442 (= lt!2720378 e!4726428)))

(declare-fun res!3172816 () Bool)

(assert (=> d!2392442 (=> res!3172816 e!4726428)))

(assert (=> d!2392442 (= res!3172816 (is-Nil!74895 lt!2720368))))

(assert (=> d!2392442 (= (isPrefix!6826 lt!2720368 lt!2720367) lt!2720378)))

(assert (= (and d!2392442 (not res!3172816)) b!8023280))

(assert (= (and b!8023280 res!3172815) b!8023281))

(assert (= (and b!8023281 res!3172814) b!8023282))

(assert (= (and d!2392442 (not res!3172813)) b!8023283))

(declare-fun m!8385986 () Bool)

(assert (=> b!8023281 m!8385986))

(declare-fun m!8385988 () Bool)

(assert (=> b!8023281 m!8385988))

(declare-fun m!8385990 () Bool)

(assert (=> b!8023282 m!8385990))

(declare-fun m!8385992 () Bool)

(assert (=> b!8023282 m!8385992))

(assert (=> b!8023282 m!8385990))

(assert (=> b!8023282 m!8385992))

(declare-fun m!8385994 () Bool)

(assert (=> b!8023282 m!8385994))

(declare-fun m!8385996 () Bool)

(assert (=> b!8023283 m!8385996))

(declare-fun m!8385998 () Bool)

(assert (=> b!8023283 m!8385998))

(assert (=> b!8023220 d!2392442))

(declare-fun b!8023294 () Bool)

(declare-fun res!3172822 () Bool)

(declare-fun e!4726434 () Bool)

(assert (=> b!8023294 (=> (not res!3172822) (not e!4726434))))

(declare-fun lt!2720383 () List!75019)

(assert (=> b!8023294 (= res!3172822 (= (size!43676 lt!2720383) (+ (size!43676 lt!2720368) (size!43676 s2!455))))))

(declare-fun d!2392444 () Bool)

(assert (=> d!2392444 e!4726434))

(declare-fun res!3172821 () Bool)

(assert (=> d!2392444 (=> (not res!3172821) (not e!4726434))))

(declare-fun content!15952 (List!75019) (Set B!4235))

(assert (=> d!2392444 (= res!3172821 (= (content!15952 lt!2720383) (set.union (content!15952 lt!2720368) (content!15952 s2!455))))))

(declare-fun e!4726435 () List!75019)

(assert (=> d!2392444 (= lt!2720383 e!4726435)))

(declare-fun c!1472284 () Bool)

(assert (=> d!2392444 (= c!1472284 (is-Nil!74895 lt!2720368))))

(assert (=> d!2392444 (= (++!18563 lt!2720368 s2!455) lt!2720383)))

(declare-fun b!8023295 () Bool)

(assert (=> b!8023295 (= e!4726434 (or (not (= s2!455 Nil!74895)) (= lt!2720383 lt!2720368)))))

(declare-fun b!8023292 () Bool)

(assert (=> b!8023292 (= e!4726435 s2!455)))

(declare-fun b!8023293 () Bool)

(assert (=> b!8023293 (= e!4726435 (Cons!74895 (h!81343 lt!2720368) (++!18563 (t!390762 lt!2720368) s2!455)))))

(assert (= (and d!2392444 c!1472284) b!8023292))

(assert (= (and d!2392444 (not c!1472284)) b!8023293))

(assert (= (and d!2392444 res!3172821) b!8023294))

(assert (= (and b!8023294 res!3172822) b!8023295))

(declare-fun m!8386000 () Bool)

(assert (=> b!8023294 m!8386000))

(assert (=> b!8023294 m!8385998))

(declare-fun m!8386002 () Bool)

(assert (=> b!8023294 m!8386002))

(declare-fun m!8386004 () Bool)

(assert (=> d!2392444 m!8386004))

(declare-fun m!8386006 () Bool)

(assert (=> d!2392444 m!8386006))

(declare-fun m!8386008 () Bool)

(assert (=> d!2392444 m!8386008))

(declare-fun m!8386010 () Bool)

(assert (=> b!8023293 m!8386010))

(assert (=> b!8023215 d!2392444))

(declare-fun b!8023302 () Bool)

(declare-fun res!3172824 () Bool)

(declare-fun e!4726438 () Bool)

(assert (=> b!8023302 (=> (not res!3172824) (not e!4726438))))

(declare-fun lt!2720384 () List!75019)

(assert (=> b!8023302 (= res!3172824 (= (size!43676 lt!2720384) (+ (size!43676 p1!179) (size!43676 s1!490))))))

(declare-fun d!2392446 () Bool)

(assert (=> d!2392446 e!4726438))

(declare-fun res!3172823 () Bool)

(assert (=> d!2392446 (=> (not res!3172823) (not e!4726438))))

(assert (=> d!2392446 (= res!3172823 (= (content!15952 lt!2720384) (set.union (content!15952 p1!179) (content!15952 s1!490))))))

(declare-fun e!4726439 () List!75019)

(assert (=> d!2392446 (= lt!2720384 e!4726439)))

(declare-fun c!1472287 () Bool)

(assert (=> d!2392446 (= c!1472287 (is-Nil!74895 p1!179))))

(assert (=> d!2392446 (= (++!18563 p1!179 s1!490) lt!2720384)))

(declare-fun b!8023303 () Bool)

(assert (=> b!8023303 (= e!4726438 (or (not (= s1!490 Nil!74895)) (= lt!2720384 p1!179)))))

(declare-fun b!8023300 () Bool)

(assert (=> b!8023300 (= e!4726439 s1!490)))

(declare-fun b!8023301 () Bool)

(assert (=> b!8023301 (= e!4726439 (Cons!74895 (h!81343 p1!179) (++!18563 (t!390762 p1!179) s1!490)))))

(assert (= (and d!2392446 c!1472287) b!8023300))

(assert (= (and d!2392446 (not c!1472287)) b!8023301))

(assert (= (and d!2392446 res!3172823) b!8023302))

(assert (= (and b!8023302 res!3172824) b!8023303))

(declare-fun m!8386012 () Bool)

(assert (=> b!8023302 m!8386012))

(assert (=> b!8023302 m!8385984))

(declare-fun m!8386014 () Bool)

(assert (=> b!8023302 m!8386014))

(declare-fun m!8386016 () Bool)

(assert (=> d!2392446 m!8386016))

(declare-fun m!8386018 () Bool)

(assert (=> d!2392446 m!8386018))

(declare-fun m!8386020 () Bool)

(assert (=> d!2392446 m!8386020))

(assert (=> b!8023301 m!8385944))

(assert (=> b!8023221 d!2392446))

(declare-fun b!8023306 () Bool)

(declare-fun res!3172826 () Bool)

(declare-fun e!4726440 () Bool)

(assert (=> b!8023306 (=> (not res!3172826) (not e!4726440))))

(declare-fun lt!2720385 () List!75019)

(assert (=> b!8023306 (= res!3172826 (= (size!43676 lt!2720385) (+ (size!43676 (t!390762 p1!179)) (size!43676 s1!490))))))

(declare-fun d!2392448 () Bool)

(assert (=> d!2392448 e!4726440))

(declare-fun res!3172825 () Bool)

(assert (=> d!2392448 (=> (not res!3172825) (not e!4726440))))

(assert (=> d!2392448 (= res!3172825 (= (content!15952 lt!2720385) (set.union (content!15952 (t!390762 p1!179)) (content!15952 s1!490))))))

(declare-fun e!4726441 () List!75019)

(assert (=> d!2392448 (= lt!2720385 e!4726441)))

(declare-fun c!1472288 () Bool)

(assert (=> d!2392448 (= c!1472288 (is-Nil!74895 (t!390762 p1!179)))))

(assert (=> d!2392448 (= (++!18563 (t!390762 p1!179) s1!490) lt!2720385)))

(declare-fun b!8023307 () Bool)

(assert (=> b!8023307 (= e!4726440 (or (not (= s1!490 Nil!74895)) (= lt!2720385 (t!390762 p1!179))))))

(declare-fun b!8023304 () Bool)

(assert (=> b!8023304 (= e!4726441 s1!490)))

(declare-fun b!8023305 () Bool)

(assert (=> b!8023305 (= e!4726441 (Cons!74895 (h!81343 (t!390762 p1!179)) (++!18563 (t!390762 (t!390762 p1!179)) s1!490)))))

(assert (= (and d!2392448 c!1472288) b!8023304))

(assert (= (and d!2392448 (not c!1472288)) b!8023305))

(assert (= (and d!2392448 res!3172825) b!8023306))

(assert (= (and b!8023306 res!3172826) b!8023307))

(declare-fun m!8386022 () Bool)

(assert (=> b!8023306 m!8386022))

(declare-fun m!8386024 () Bool)

(assert (=> b!8023306 m!8386024))

(assert (=> b!8023306 m!8386014))

(declare-fun m!8386026 () Bool)

(assert (=> d!2392448 m!8386026))

(declare-fun m!8386028 () Bool)

(assert (=> d!2392448 m!8386028))

(assert (=> d!2392448 m!8386020))

(declare-fun m!8386030 () Bool)

(assert (=> b!8023305 m!8386030))

(assert (=> b!8023209 d!2392448))

(declare-fun b!8023313 () Bool)

(declare-fun res!3172832 () Bool)

(declare-fun e!4726446 () Bool)

(assert (=> b!8023313 (=> (not res!3172832) (not e!4726446))))

(assert (=> b!8023313 (= res!3172832 (= (head!16427 (t!390762 p1!179)) (head!16427 lt!2720367)))))

(declare-fun b!8023314 () Bool)

(assert (=> b!8023314 (= e!4726446 (isPrefix!6826 (tail!15964 (t!390762 p1!179)) (tail!15964 lt!2720367)))))

(declare-fun b!8023312 () Bool)

(declare-fun e!4726445 () Bool)

(assert (=> b!8023312 (= e!4726445 e!4726446)))

(declare-fun res!3172833 () Bool)

(assert (=> b!8023312 (=> (not res!3172833) (not e!4726446))))

(assert (=> b!8023312 (= res!3172833 (not (is-Nil!74895 lt!2720367)))))

(declare-fun b!8023315 () Bool)

(declare-fun e!4726444 () Bool)

(assert (=> b!8023315 (= e!4726444 (>= (size!43676 lt!2720367) (size!43676 (t!390762 p1!179))))))

(declare-fun d!2392450 () Bool)

(assert (=> d!2392450 e!4726444))

(declare-fun res!3172831 () Bool)

(assert (=> d!2392450 (=> res!3172831 e!4726444)))

(declare-fun lt!2720386 () Bool)

(assert (=> d!2392450 (= res!3172831 (not lt!2720386))))

(assert (=> d!2392450 (= lt!2720386 e!4726445)))

(declare-fun res!3172834 () Bool)

(assert (=> d!2392450 (=> res!3172834 e!4726445)))

(assert (=> d!2392450 (= res!3172834 (is-Nil!74895 (t!390762 p1!179)))))

(assert (=> d!2392450 (= (isPrefix!6826 (t!390762 p1!179) lt!2720367) lt!2720386)))

(assert (= (and d!2392450 (not res!3172834)) b!8023312))

(assert (= (and b!8023312 res!3172833) b!8023313))

(assert (= (and b!8023313 res!3172832) b!8023314))

(assert (= (and d!2392450 (not res!3172831)) b!8023315))

(declare-fun m!8386032 () Bool)

(assert (=> b!8023313 m!8386032))

(assert (=> b!8023313 m!8385988))

(declare-fun m!8386034 () Bool)

(assert (=> b!8023314 m!8386034))

(assert (=> b!8023314 m!8385992))

(assert (=> b!8023314 m!8386034))

(assert (=> b!8023314 m!8385992))

(declare-fun m!8386036 () Bool)

(assert (=> b!8023314 m!8386036))

(assert (=> b!8023315 m!8385996))

(assert (=> b!8023315 m!8386024))

(assert (=> b!8023212 d!2392450))

(declare-fun d!2392452 () Bool)

(assert (=> d!2392452 (= (tail!15964 l!3411) (t!390762 l!3411))))

(assert (=> b!8023212 d!2392452))

(declare-fun d!2392454 () Bool)

(assert (=> d!2392454 (= (tail!15964 p2!179) (t!390762 p2!179))))

(assert (=> b!8023212 d!2392454))

(declare-fun b!8023317 () Bool)

(declare-fun res!3172836 () Bool)

(declare-fun e!4726449 () Bool)

(assert (=> b!8023317 (=> (not res!3172836) (not e!4726449))))

(assert (=> b!8023317 (= res!3172836 (= (head!16427 p2!179) (head!16427 l!3411)))))

(declare-fun b!8023318 () Bool)

(assert (=> b!8023318 (= e!4726449 (isPrefix!6826 (tail!15964 p2!179) (tail!15964 l!3411)))))

(declare-fun b!8023316 () Bool)

(declare-fun e!4726448 () Bool)

(assert (=> b!8023316 (= e!4726448 e!4726449)))

(declare-fun res!3172837 () Bool)

(assert (=> b!8023316 (=> (not res!3172837) (not e!4726449))))

(assert (=> b!8023316 (= res!3172837 (not (is-Nil!74895 l!3411)))))

(declare-fun b!8023319 () Bool)

(declare-fun e!4726447 () Bool)

(assert (=> b!8023319 (= e!4726447 (>= (size!43676 l!3411) (size!43676 p2!179)))))

(declare-fun d!2392456 () Bool)

(assert (=> d!2392456 e!4726447))

(declare-fun res!3172835 () Bool)

(assert (=> d!2392456 (=> res!3172835 e!4726447)))

(declare-fun lt!2720387 () Bool)

(assert (=> d!2392456 (= res!3172835 (not lt!2720387))))

(assert (=> d!2392456 (= lt!2720387 e!4726448)))

(declare-fun res!3172838 () Bool)

(assert (=> d!2392456 (=> res!3172838 e!4726448)))

(assert (=> d!2392456 (= res!3172838 (is-Nil!74895 p2!179))))

(assert (=> d!2392456 (= (isPrefix!6826 p2!179 l!3411) lt!2720387)))

(assert (= (and d!2392456 (not res!3172838)) b!8023316))

(assert (= (and b!8023316 res!3172837) b!8023317))

(assert (= (and b!8023317 res!3172836) b!8023318))

(assert (= (and d!2392456 (not res!3172835)) b!8023319))

(declare-fun m!8386038 () Bool)

(assert (=> b!8023317 m!8386038))

(assert (=> b!8023317 m!8385976))

(assert (=> b!8023318 m!8385930))

(assert (=> b!8023318 m!8385928))

(assert (=> b!8023318 m!8385930))

(assert (=> b!8023318 m!8385928))

(declare-fun m!8386040 () Bool)

(assert (=> b!8023318 m!8386040))

(assert (=> b!8023319 m!8385982))

(declare-fun m!8386042 () Bool)

(assert (=> b!8023319 m!8386042))

(assert (=> b!8023213 d!2392456))

(declare-fun b!8023322 () Bool)

(declare-fun res!3172840 () Bool)

(declare-fun e!4726450 () Bool)

(assert (=> b!8023322 (=> (not res!3172840) (not e!4726450))))

(declare-fun lt!2720388 () List!75019)

(assert (=> b!8023322 (= res!3172840 (= (size!43676 lt!2720388) (+ (size!43676 p2!179) (size!43676 s2!455))))))

(declare-fun d!2392458 () Bool)

(assert (=> d!2392458 e!4726450))

(declare-fun res!3172839 () Bool)

(assert (=> d!2392458 (=> (not res!3172839) (not e!4726450))))

(assert (=> d!2392458 (= res!3172839 (= (content!15952 lt!2720388) (set.union (content!15952 p2!179) (content!15952 s2!455))))))

(declare-fun e!4726451 () List!75019)

(assert (=> d!2392458 (= lt!2720388 e!4726451)))

(declare-fun c!1472289 () Bool)

(assert (=> d!2392458 (= c!1472289 (is-Nil!74895 p2!179))))

(assert (=> d!2392458 (= (++!18563 p2!179 s2!455) lt!2720388)))

(declare-fun b!8023323 () Bool)

(assert (=> b!8023323 (= e!4726450 (or (not (= s2!455 Nil!74895)) (= lt!2720388 p2!179)))))

(declare-fun b!8023320 () Bool)

(assert (=> b!8023320 (= e!4726451 s2!455)))

(declare-fun b!8023321 () Bool)

(assert (=> b!8023321 (= e!4726451 (Cons!74895 (h!81343 p2!179) (++!18563 (t!390762 p2!179) s2!455)))))

(assert (= (and d!2392458 c!1472289) b!8023320))

(assert (= (and d!2392458 (not c!1472289)) b!8023321))

(assert (= (and d!2392458 res!3172839) b!8023322))

(assert (= (and b!8023322 res!3172840) b!8023323))

(declare-fun m!8386044 () Bool)

(assert (=> b!8023322 m!8386044))

(assert (=> b!8023322 m!8386042))

(assert (=> b!8023322 m!8386002))

(declare-fun m!8386046 () Bool)

(assert (=> d!2392458 m!8386046))

(declare-fun m!8386048 () Bool)

(assert (=> d!2392458 m!8386048))

(assert (=> d!2392458 m!8386008))

(declare-fun m!8386050 () Bool)

(assert (=> b!8023321 m!8386050))

(assert (=> b!8023216 d!2392458))

(declare-fun d!2392460 () Bool)

(declare-fun lt!2720391 () Int)

(assert (=> d!2392460 (>= lt!2720391 0)))

(declare-fun e!4726454 () Int)

(assert (=> d!2392460 (= lt!2720391 e!4726454)))

(declare-fun c!1472292 () Bool)

(assert (=> d!2392460 (= c!1472292 (is-Nil!74895 (t!390762 p1!179)))))

(assert (=> d!2392460 (= (ListPrimitiveSize!502 (t!390762 p1!179)) lt!2720391)))

(declare-fun b!8023328 () Bool)

(assert (=> b!8023328 (= e!4726454 0)))

(declare-fun b!8023329 () Bool)

(assert (=> b!8023329 (= e!4726454 (+ 1 (ListPrimitiveSize!502 (t!390762 (t!390762 p1!179)))))))

(assert (= (and d!2392460 c!1472292) b!8023328))

(assert (= (and d!2392460 (not c!1472292)) b!8023329))

(declare-fun m!8386052 () Bool)

(assert (=> b!8023329 m!8386052))

(assert (=> b!8023211 d!2392460))

(declare-fun d!2392462 () Bool)

(declare-fun lt!2720393 () Int)

(assert (=> d!2392462 (>= lt!2720393 0)))

(declare-fun e!4726457 () Int)

(assert (=> d!2392462 (= lt!2720393 e!4726457)))

(declare-fun c!1472294 () Bool)

(assert (=> d!2392462 (= c!1472294 (is-Nil!74895 p1!179))))

(assert (=> d!2392462 (= (ListPrimitiveSize!502 p1!179) lt!2720393)))

(declare-fun b!8023334 () Bool)

(assert (=> b!8023334 (= e!4726457 0)))

(declare-fun b!8023335 () Bool)

(assert (=> b!8023335 (= e!4726457 (+ 1 (ListPrimitiveSize!502 (t!390762 p1!179))))))

(assert (= (and d!2392462 c!1472294) b!8023334))

(assert (= (and d!2392462 (not c!1472294)) b!8023335))

(assert (=> b!8023335 m!8385932))

(assert (=> b!8023211 d!2392462))

(declare-fun b!8023340 () Bool)

(declare-fun e!4726460 () Bool)

(declare-fun tp!2401192 () Bool)

(assert (=> b!8023340 (= e!4726460 (and tp_is_empty!54123 tp!2401192))))

(assert (=> b!8023210 (= tp!2401171 e!4726460)))

(assert (= (and b!8023210 (is-Cons!74895 (t!390762 l!3411))) b!8023340))

(declare-fun b!8023341 () Bool)

(declare-fun e!4726461 () Bool)

(declare-fun tp!2401193 () Bool)

(assert (=> b!8023341 (= e!4726461 (and tp_is_empty!54123 tp!2401193))))

(assert (=> b!8023219 (= tp!2401174 e!4726461)))

(assert (= (and b!8023219 (is-Cons!74895 (t!390762 p1!179))) b!8023341))

(declare-fun b!8023342 () Bool)

(declare-fun e!4726462 () Bool)

(declare-fun tp!2401194 () Bool)

(assert (=> b!8023342 (= e!4726462 (and tp_is_empty!54123 tp!2401194))))

(assert (=> b!8023214 (= tp!2401170 e!4726462)))

(assert (= (and b!8023214 (is-Cons!74895 (t!390762 s1!490))) b!8023342))

(declare-fun b!8023343 () Bool)

(declare-fun e!4726463 () Bool)

(declare-fun tp!2401195 () Bool)

(assert (=> b!8023343 (= e!4726463 (and tp_is_empty!54123 tp!2401195))))

(assert (=> b!8023218 (= tp!2401173 e!4726463)))

(assert (= (and b!8023218 (is-Cons!74895 (t!390762 s2!455))) b!8023343))

(declare-fun b!8023344 () Bool)

(declare-fun e!4726464 () Bool)

(declare-fun tp!2401196 () Bool)

(assert (=> b!8023344 (= e!4726464 (and tp_is_empty!54123 tp!2401196))))

(assert (=> b!8023217 (= tp!2401172 e!4726464)))

(assert (= (and b!8023217 (is-Cons!74895 (t!390762 p2!179))) b!8023344))

(push 1)

(assert (not b!8023329))

(assert (not b!8023305))

(assert (not b!8023278))

(assert (not b!8023318))

(assert (not b!8023306))

(assert (not b!8023341))

(assert (not d!2392448))

(assert (not b!8023301))

(assert tp_is_empty!54123)

(assert (not b!8023294))

(assert (not b!8023279))

(assert (not b!8023283))

(assert (not d!2392458))

(assert (not b!8023335))

(assert (not b!8023277))

(assert (not b!8023321))

(assert (not b!8023314))

(assert (not b!8023281))

(assert (not b!8023322))

(assert (not b!8023315))

(assert (not b!8023302))

(assert (not b!8023282))

(assert (not b!8023342))

(assert (not b!8023317))

(assert (not b!8023313))

(assert (not b!8023343))

(assert (not b!8023340))

(assert (not d!2392446))

(assert (not b!8023319))

(assert (not b!8023293))

(assert (not b!8023344))

(assert (not d!2392444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

