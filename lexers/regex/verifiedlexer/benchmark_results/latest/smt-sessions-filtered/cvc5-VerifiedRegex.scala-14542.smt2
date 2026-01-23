; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755050 () Bool)

(assert start!755050)

(declare-fun b!8021257 () Bool)

(declare-fun e!4725174 () Bool)

(declare-fun tp_is_empty!54071 () Bool)

(declare-fun tp!2400679 () Bool)

(assert (=> b!8021257 (= e!4725174 (and tp_is_empty!54071 tp!2400679))))

(declare-fun b!8021258 () Bool)

(declare-fun res!3171683 () Bool)

(declare-fun e!4725177 () Bool)

(assert (=> b!8021258 (=> (not res!3171683) (not e!4725177))))

(declare-datatypes ((B!4183 0))(
  ( (B!4184 (val!32481 Int)) )
))
(declare-datatypes ((List!74993 0))(
  ( (Nil!74869) (Cons!74869 (h!81317 B!4183) (t!390736 List!74993)) )
))
(declare-fun p1!173 () List!74993)

(declare-fun p2!173 () List!74993)

(declare-fun size!43654 (List!74993) Int)

(assert (=> b!8021258 (= res!3171683 (= (size!43654 p1!173) (size!43654 p2!173)))))

(declare-fun b!8021259 () Bool)

(declare-fun res!3171680 () Bool)

(assert (=> b!8021259 (=> (not res!3171680) (not e!4725177))))

(declare-fun l!3353 () List!74993)

(declare-fun isPrefix!6800 (List!74993 List!74993) Bool)

(assert (=> b!8021259 (= res!3171680 (isPrefix!6800 p2!173 l!3353))))

(declare-fun res!3171679 () Bool)

(assert (=> start!755050 (=> (not res!3171679) (not e!4725177))))

(assert (=> start!755050 (= res!3171679 (isPrefix!6800 p1!173 l!3353))))

(assert (=> start!755050 e!4725177))

(assert (=> start!755050 e!4725174))

(declare-fun e!4725178 () Bool)

(assert (=> start!755050 e!4725178))

(declare-fun e!4725176 () Bool)

(assert (=> start!755050 e!4725176))

(declare-fun b!8021260 () Bool)

(declare-fun res!3171677 () Bool)

(declare-fun e!4725175 () Bool)

(assert (=> b!8021260 (=> (not res!3171677) (not e!4725175))))

(declare-fun lt!2719992 () List!74993)

(assert (=> b!8021260 (= res!3171677 (= (size!43654 (t!390736 p1!173)) (size!43654 lt!2719992)))))

(declare-fun b!8021261 () Bool)

(assert (=> b!8021261 (= e!4725177 e!4725175)))

(declare-fun res!3171681 () Bool)

(assert (=> b!8021261 (=> (not res!3171681) (not e!4725175))))

(declare-fun lt!2719993 () List!74993)

(assert (=> b!8021261 (= res!3171681 (isPrefix!6800 (t!390736 p1!173) lt!2719993))))

(declare-fun tail!15943 (List!74993) List!74993)

(assert (=> b!8021261 (= lt!2719993 (tail!15943 l!3353))))

(assert (=> b!8021261 (= lt!2719992 (tail!15943 p2!173))))

(declare-fun b!8021262 () Bool)

(declare-fun res!3171678 () Bool)

(assert (=> b!8021262 (=> (not res!3171678) (not e!4725177))))

(assert (=> b!8021262 (= res!3171678 (is-Cons!74869 p1!173))))

(declare-fun b!8021263 () Bool)

(declare-fun tp!2400677 () Bool)

(assert (=> b!8021263 (= e!4725176 (and tp_is_empty!54071 tp!2400677))))

(declare-fun b!8021264 () Bool)

(declare-fun ListPrimitiveSize!498 (List!74993) Int)

(assert (=> b!8021264 (= e!4725175 (>= (ListPrimitiveSize!498 (t!390736 p1!173)) (ListPrimitiveSize!498 p1!173)))))

(declare-fun b!8021265 () Bool)

(declare-fun res!3171682 () Bool)

(assert (=> b!8021265 (=> (not res!3171682) (not e!4725175))))

(assert (=> b!8021265 (= res!3171682 (isPrefix!6800 lt!2719992 lt!2719993))))

(declare-fun b!8021266 () Bool)

(declare-fun tp!2400678 () Bool)

(assert (=> b!8021266 (= e!4725178 (and tp_is_empty!54071 tp!2400678))))

(assert (= (and start!755050 res!3171679) b!8021259))

(assert (= (and b!8021259 res!3171680) b!8021258))

(assert (= (and b!8021258 res!3171683) b!8021262))

(assert (= (and b!8021262 res!3171678) b!8021261))

(assert (= (and b!8021261 res!3171681) b!8021265))

(assert (= (and b!8021265 res!3171682) b!8021260))

(assert (= (and b!8021260 res!3171677) b!8021264))

(assert (= (and start!755050 (is-Cons!74869 p1!173)) b!8021257))

(assert (= (and start!755050 (is-Cons!74869 l!3353)) b!8021266))

(assert (= (and start!755050 (is-Cons!74869 p2!173)) b!8021263))

(declare-fun m!8384150 () Bool)

(assert (=> b!8021258 m!8384150))

(declare-fun m!8384152 () Bool)

(assert (=> b!8021258 m!8384152))

(declare-fun m!8384154 () Bool)

(assert (=> b!8021264 m!8384154))

(declare-fun m!8384156 () Bool)

(assert (=> b!8021264 m!8384156))

(declare-fun m!8384158 () Bool)

(assert (=> b!8021260 m!8384158))

(declare-fun m!8384160 () Bool)

(assert (=> b!8021260 m!8384160))

(declare-fun m!8384162 () Bool)

(assert (=> b!8021259 m!8384162))

(declare-fun m!8384164 () Bool)

(assert (=> start!755050 m!8384164))

(declare-fun m!8384166 () Bool)

(assert (=> b!8021261 m!8384166))

(declare-fun m!8384168 () Bool)

(assert (=> b!8021261 m!8384168))

(declare-fun m!8384170 () Bool)

(assert (=> b!8021261 m!8384170))

(declare-fun m!8384172 () Bool)

(assert (=> b!8021265 m!8384172))

(push 1)

(assert (not b!8021259))

(assert (not b!8021258))

(assert (not b!8021264))

(assert (not b!8021261))

(assert (not b!8021265))

(assert (not start!755050))

(assert (not b!8021263))

(assert tp_is_empty!54071)

(assert (not b!8021257))

(assert (not b!8021266))

(assert (not b!8021260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391891 () Bool)

(declare-fun lt!2720002 () Int)

(assert (=> d!2391891 (>= lt!2720002 0)))

(declare-fun e!4725196 () Int)

(assert (=> d!2391891 (= lt!2720002 e!4725196)))

(declare-fun c!1472117 () Bool)

(assert (=> d!2391891 (= c!1472117 (is-Nil!74869 (t!390736 p1!173)))))

(assert (=> d!2391891 (= (size!43654 (t!390736 p1!173)) lt!2720002)))

(declare-fun b!8021301 () Bool)

(assert (=> b!8021301 (= e!4725196 0)))

(declare-fun b!8021302 () Bool)

(assert (=> b!8021302 (= e!4725196 (+ 1 (size!43654 (t!390736 (t!390736 p1!173)))))))

(assert (= (and d!2391891 c!1472117) b!8021301))

(assert (= (and d!2391891 (not c!1472117)) b!8021302))

(declare-fun m!8384198 () Bool)

(assert (=> b!8021302 m!8384198))

(assert (=> b!8021260 d!2391891))

(declare-fun d!2391895 () Bool)

(declare-fun lt!2720003 () Int)

(assert (=> d!2391895 (>= lt!2720003 0)))

(declare-fun e!4725197 () Int)

(assert (=> d!2391895 (= lt!2720003 e!4725197)))

(declare-fun c!1472118 () Bool)

(assert (=> d!2391895 (= c!1472118 (is-Nil!74869 lt!2719992))))

(assert (=> d!2391895 (= (size!43654 lt!2719992) lt!2720003)))

(declare-fun b!8021303 () Bool)

(assert (=> b!8021303 (= e!4725197 0)))

(declare-fun b!8021304 () Bool)

(assert (=> b!8021304 (= e!4725197 (+ 1 (size!43654 (t!390736 lt!2719992))))))

(assert (= (and d!2391895 c!1472118) b!8021303))

(assert (= (and d!2391895 (not c!1472118)) b!8021304))

(declare-fun m!8384200 () Bool)

(assert (=> b!8021304 m!8384200))

(assert (=> b!8021260 d!2391895))

(declare-fun b!8021314 () Bool)

(declare-fun res!3171716 () Bool)

(declare-fun e!4725205 () Bool)

(assert (=> b!8021314 (=> (not res!3171716) (not e!4725205))))

(declare-fun head!16408 (List!74993) B!4183)

(assert (=> b!8021314 (= res!3171716 (= (head!16408 (t!390736 p1!173)) (head!16408 lt!2719993)))))

(declare-fun b!8021316 () Bool)

(declare-fun e!4725206 () Bool)

(assert (=> b!8021316 (= e!4725206 (>= (size!43654 lt!2719993) (size!43654 (t!390736 p1!173))))))

(declare-fun d!2391897 () Bool)

(assert (=> d!2391897 e!4725206))

(declare-fun res!3171715 () Bool)

(assert (=> d!2391897 (=> res!3171715 e!4725206)))

(declare-fun lt!2720006 () Bool)

(assert (=> d!2391897 (= res!3171715 (not lt!2720006))))

(declare-fun e!4725204 () Bool)

(assert (=> d!2391897 (= lt!2720006 e!4725204)))

(declare-fun res!3171713 () Bool)

(assert (=> d!2391897 (=> res!3171713 e!4725204)))

(assert (=> d!2391897 (= res!3171713 (is-Nil!74869 (t!390736 p1!173)))))

(assert (=> d!2391897 (= (isPrefix!6800 (t!390736 p1!173) lt!2719993) lt!2720006)))

(declare-fun b!8021315 () Bool)

(assert (=> b!8021315 (= e!4725205 (isPrefix!6800 (tail!15943 (t!390736 p1!173)) (tail!15943 lt!2719993)))))

(declare-fun b!8021313 () Bool)

(assert (=> b!8021313 (= e!4725204 e!4725205)))

(declare-fun res!3171714 () Bool)

(assert (=> b!8021313 (=> (not res!3171714) (not e!4725205))))

(assert (=> b!8021313 (= res!3171714 (not (is-Nil!74869 lt!2719993)))))

(assert (= (and d!2391897 (not res!3171713)) b!8021313))

(assert (= (and b!8021313 res!3171714) b!8021314))

(assert (= (and b!8021314 res!3171716) b!8021315))

(assert (= (and d!2391897 (not res!3171715)) b!8021316))

(declare-fun m!8384202 () Bool)

(assert (=> b!8021314 m!8384202))

(declare-fun m!8384204 () Bool)

(assert (=> b!8021314 m!8384204))

(declare-fun m!8384206 () Bool)

(assert (=> b!8021316 m!8384206))

(assert (=> b!8021316 m!8384158))

(declare-fun m!8384208 () Bool)

(assert (=> b!8021315 m!8384208))

(declare-fun m!8384210 () Bool)

(assert (=> b!8021315 m!8384210))

(assert (=> b!8021315 m!8384208))

(assert (=> b!8021315 m!8384210))

(declare-fun m!8384212 () Bool)

(assert (=> b!8021315 m!8384212))

(assert (=> b!8021261 d!2391897))

(declare-fun d!2391899 () Bool)

(assert (=> d!2391899 (= (tail!15943 l!3353) (t!390736 l!3353))))

(assert (=> b!8021261 d!2391899))

(declare-fun d!2391901 () Bool)

(assert (=> d!2391901 (= (tail!15943 p2!173) (t!390736 p2!173))))

(assert (=> b!8021261 d!2391901))

(declare-fun b!8021324 () Bool)

(declare-fun res!3171726 () Bool)

(declare-fun e!4725212 () Bool)

(assert (=> b!8021324 (=> (not res!3171726) (not e!4725212))))

(assert (=> b!8021324 (= res!3171726 (= (head!16408 p2!173) (head!16408 l!3353)))))

(declare-fun b!8021326 () Bool)

(declare-fun e!4725213 () Bool)

(assert (=> b!8021326 (= e!4725213 (>= (size!43654 l!3353) (size!43654 p2!173)))))

(declare-fun d!2391903 () Bool)

(assert (=> d!2391903 e!4725213))

(declare-fun res!3171725 () Bool)

(assert (=> d!2391903 (=> res!3171725 e!4725213)))

(declare-fun lt!2720009 () Bool)

(assert (=> d!2391903 (= res!3171725 (not lt!2720009))))

(declare-fun e!4725211 () Bool)

(assert (=> d!2391903 (= lt!2720009 e!4725211)))

(declare-fun res!3171723 () Bool)

(assert (=> d!2391903 (=> res!3171723 e!4725211)))

(assert (=> d!2391903 (= res!3171723 (is-Nil!74869 p2!173))))

(assert (=> d!2391903 (= (isPrefix!6800 p2!173 l!3353) lt!2720009)))

(declare-fun b!8021325 () Bool)

(assert (=> b!8021325 (= e!4725212 (isPrefix!6800 (tail!15943 p2!173) (tail!15943 l!3353)))))

(declare-fun b!8021323 () Bool)

(assert (=> b!8021323 (= e!4725211 e!4725212)))

(declare-fun res!3171724 () Bool)

(assert (=> b!8021323 (=> (not res!3171724) (not e!4725212))))

(assert (=> b!8021323 (= res!3171724 (not (is-Nil!74869 l!3353)))))

(assert (= (and d!2391903 (not res!3171723)) b!8021323))

(assert (= (and b!8021323 res!3171724) b!8021324))

(assert (= (and b!8021324 res!3171726) b!8021325))

(assert (= (and d!2391903 (not res!3171725)) b!8021326))

(declare-fun m!8384214 () Bool)

(assert (=> b!8021324 m!8384214))

(declare-fun m!8384216 () Bool)

(assert (=> b!8021324 m!8384216))

(declare-fun m!8384218 () Bool)

(assert (=> b!8021326 m!8384218))

(assert (=> b!8021326 m!8384152))

(assert (=> b!8021325 m!8384170))

(assert (=> b!8021325 m!8384168))

(assert (=> b!8021325 m!8384170))

(assert (=> b!8021325 m!8384168))

(declare-fun m!8384220 () Bool)

(assert (=> b!8021325 m!8384220))

(assert (=> b!8021259 d!2391903))

(declare-fun d!2391905 () Bool)

(declare-fun lt!2720012 () Int)

(assert (=> d!2391905 (>= lt!2720012 0)))

(declare-fun e!4725218 () Int)

(assert (=> d!2391905 (= lt!2720012 e!4725218)))

(declare-fun c!1472121 () Bool)

(assert (=> d!2391905 (= c!1472121 (is-Nil!74869 (t!390736 p1!173)))))

(assert (=> d!2391905 (= (ListPrimitiveSize!498 (t!390736 p1!173)) lt!2720012)))

(declare-fun b!8021333 () Bool)

(assert (=> b!8021333 (= e!4725218 0)))

(declare-fun b!8021334 () Bool)

(assert (=> b!8021334 (= e!4725218 (+ 1 (ListPrimitiveSize!498 (t!390736 (t!390736 p1!173)))))))

(assert (= (and d!2391905 c!1472121) b!8021333))

(assert (= (and d!2391905 (not c!1472121)) b!8021334))

(declare-fun m!8384222 () Bool)

(assert (=> b!8021334 m!8384222))

(assert (=> b!8021264 d!2391905))

(declare-fun d!2391907 () Bool)

(declare-fun lt!2720013 () Int)

(assert (=> d!2391907 (>= lt!2720013 0)))

(declare-fun e!4725219 () Int)

(assert (=> d!2391907 (= lt!2720013 e!4725219)))

(declare-fun c!1472122 () Bool)

(assert (=> d!2391907 (= c!1472122 (is-Nil!74869 p1!173))))

(assert (=> d!2391907 (= (ListPrimitiveSize!498 p1!173) lt!2720013)))

(declare-fun b!8021335 () Bool)

(assert (=> b!8021335 (= e!4725219 0)))

(declare-fun b!8021336 () Bool)

(assert (=> b!8021336 (= e!4725219 (+ 1 (ListPrimitiveSize!498 (t!390736 p1!173))))))

(assert (= (and d!2391907 c!1472122) b!8021335))

(assert (= (and d!2391907 (not c!1472122)) b!8021336))

(assert (=> b!8021336 m!8384154))

(assert (=> b!8021264 d!2391907))

(declare-fun b!8021338 () Bool)

(declare-fun res!3171732 () Bool)

(declare-fun e!4725221 () Bool)

(assert (=> b!8021338 (=> (not res!3171732) (not e!4725221))))

(assert (=> b!8021338 (= res!3171732 (= (head!16408 lt!2719992) (head!16408 lt!2719993)))))

(declare-fun b!8021340 () Bool)

(declare-fun e!4725222 () Bool)

(assert (=> b!8021340 (= e!4725222 (>= (size!43654 lt!2719993) (size!43654 lt!2719992)))))

(declare-fun d!2391909 () Bool)

(assert (=> d!2391909 e!4725222))

(declare-fun res!3171731 () Bool)

(assert (=> d!2391909 (=> res!3171731 e!4725222)))

(declare-fun lt!2720014 () Bool)

(assert (=> d!2391909 (= res!3171731 (not lt!2720014))))

(declare-fun e!4725220 () Bool)

(assert (=> d!2391909 (= lt!2720014 e!4725220)))

(declare-fun res!3171729 () Bool)

(assert (=> d!2391909 (=> res!3171729 e!4725220)))

(assert (=> d!2391909 (= res!3171729 (is-Nil!74869 lt!2719992))))

(assert (=> d!2391909 (= (isPrefix!6800 lt!2719992 lt!2719993) lt!2720014)))

(declare-fun b!8021339 () Bool)

(assert (=> b!8021339 (= e!4725221 (isPrefix!6800 (tail!15943 lt!2719992) (tail!15943 lt!2719993)))))

(declare-fun b!8021337 () Bool)

(assert (=> b!8021337 (= e!4725220 e!4725221)))

(declare-fun res!3171730 () Bool)

(assert (=> b!8021337 (=> (not res!3171730) (not e!4725221))))

(assert (=> b!8021337 (= res!3171730 (not (is-Nil!74869 lt!2719993)))))

(assert (= (and d!2391909 (not res!3171729)) b!8021337))

(assert (= (and b!8021337 res!3171730) b!8021338))

(assert (= (and b!8021338 res!3171732) b!8021339))

(assert (= (and d!2391909 (not res!3171731)) b!8021340))

(declare-fun m!8384224 () Bool)

(assert (=> b!8021338 m!8384224))

(assert (=> b!8021338 m!8384204))

(assert (=> b!8021340 m!8384206))

(assert (=> b!8021340 m!8384160))

(declare-fun m!8384226 () Bool)

(assert (=> b!8021339 m!8384226))

(assert (=> b!8021339 m!8384210))

(assert (=> b!8021339 m!8384226))

(assert (=> b!8021339 m!8384210))

(declare-fun m!8384228 () Bool)

(assert (=> b!8021339 m!8384228))

(assert (=> b!8021265 d!2391909))

(declare-fun b!8021342 () Bool)

(declare-fun res!3171736 () Bool)

(declare-fun e!4725224 () Bool)

(assert (=> b!8021342 (=> (not res!3171736) (not e!4725224))))

(assert (=> b!8021342 (= res!3171736 (= (head!16408 p1!173) (head!16408 l!3353)))))

(declare-fun b!8021344 () Bool)

(declare-fun e!4725225 () Bool)

(assert (=> b!8021344 (= e!4725225 (>= (size!43654 l!3353) (size!43654 p1!173)))))

(declare-fun d!2391911 () Bool)

(assert (=> d!2391911 e!4725225))

(declare-fun res!3171735 () Bool)

(assert (=> d!2391911 (=> res!3171735 e!4725225)))

(declare-fun lt!2720015 () Bool)

(assert (=> d!2391911 (= res!3171735 (not lt!2720015))))

(declare-fun e!4725223 () Bool)

(assert (=> d!2391911 (= lt!2720015 e!4725223)))

(declare-fun res!3171733 () Bool)

(assert (=> d!2391911 (=> res!3171733 e!4725223)))

(assert (=> d!2391911 (= res!3171733 (is-Nil!74869 p1!173))))

(assert (=> d!2391911 (= (isPrefix!6800 p1!173 l!3353) lt!2720015)))

(declare-fun b!8021343 () Bool)

(assert (=> b!8021343 (= e!4725224 (isPrefix!6800 (tail!15943 p1!173) (tail!15943 l!3353)))))

(declare-fun b!8021341 () Bool)

(assert (=> b!8021341 (= e!4725223 e!4725224)))

(declare-fun res!3171734 () Bool)

(assert (=> b!8021341 (=> (not res!3171734) (not e!4725224))))

(assert (=> b!8021341 (= res!3171734 (not (is-Nil!74869 l!3353)))))

(assert (= (and d!2391911 (not res!3171733)) b!8021341))

(assert (= (and b!8021341 res!3171734) b!8021342))

(assert (= (and b!8021342 res!3171736) b!8021343))

(assert (= (and d!2391911 (not res!3171735)) b!8021344))

(declare-fun m!8384230 () Bool)

(assert (=> b!8021342 m!8384230))

(assert (=> b!8021342 m!8384216))

(assert (=> b!8021344 m!8384218))

(assert (=> b!8021344 m!8384150))

(declare-fun m!8384232 () Bool)

(assert (=> b!8021343 m!8384232))

(assert (=> b!8021343 m!8384168))

(assert (=> b!8021343 m!8384232))

(assert (=> b!8021343 m!8384168))

(declare-fun m!8384234 () Bool)

(assert (=> b!8021343 m!8384234))

(assert (=> start!755050 d!2391911))

(declare-fun d!2391913 () Bool)

(declare-fun lt!2720016 () Int)

(assert (=> d!2391913 (>= lt!2720016 0)))

(declare-fun e!4725226 () Int)

(assert (=> d!2391913 (= lt!2720016 e!4725226)))

(declare-fun c!1472123 () Bool)

(assert (=> d!2391913 (= c!1472123 (is-Nil!74869 p1!173))))

(assert (=> d!2391913 (= (size!43654 p1!173) lt!2720016)))

(declare-fun b!8021345 () Bool)

(assert (=> b!8021345 (= e!4725226 0)))

(declare-fun b!8021346 () Bool)

(assert (=> b!8021346 (= e!4725226 (+ 1 (size!43654 (t!390736 p1!173))))))

(assert (= (and d!2391913 c!1472123) b!8021345))

(assert (= (and d!2391913 (not c!1472123)) b!8021346))

(assert (=> b!8021346 m!8384158))

(assert (=> b!8021258 d!2391913))

(declare-fun d!2391915 () Bool)

(declare-fun lt!2720018 () Int)

(assert (=> d!2391915 (>= lt!2720018 0)))

(declare-fun e!4725230 () Int)

(assert (=> d!2391915 (= lt!2720018 e!4725230)))

(declare-fun c!1472124 () Bool)

(assert (=> d!2391915 (= c!1472124 (is-Nil!74869 p2!173))))

(assert (=> d!2391915 (= (size!43654 p2!173) lt!2720018)))

(declare-fun b!8021351 () Bool)

(assert (=> b!8021351 (= e!4725230 0)))

(declare-fun b!8021352 () Bool)

(assert (=> b!8021352 (= e!4725230 (+ 1 (size!43654 (t!390736 p2!173))))))

(assert (= (and d!2391915 c!1472124) b!8021351))

(assert (= (and d!2391915 (not c!1472124)) b!8021352))

(declare-fun m!8384236 () Bool)

(assert (=> b!8021352 m!8384236))

(assert (=> b!8021258 d!2391915))

(declare-fun b!8021357 () Bool)

(declare-fun e!4725233 () Bool)

(declare-fun tp!2400691 () Bool)

(assert (=> b!8021357 (= e!4725233 (and tp_is_empty!54071 tp!2400691))))

(assert (=> b!8021266 (= tp!2400678 e!4725233)))

(assert (= (and b!8021266 (is-Cons!74869 (t!390736 l!3353))) b!8021357))

(declare-fun b!8021358 () Bool)

(declare-fun e!4725234 () Bool)

(declare-fun tp!2400692 () Bool)

(assert (=> b!8021358 (= e!4725234 (and tp_is_empty!54071 tp!2400692))))

(assert (=> b!8021263 (= tp!2400677 e!4725234)))

(assert (= (and b!8021263 (is-Cons!74869 (t!390736 p2!173))) b!8021358))

(declare-fun b!8021359 () Bool)

(declare-fun e!4725235 () Bool)

(declare-fun tp!2400693 () Bool)

(assert (=> b!8021359 (= e!4725235 (and tp_is_empty!54071 tp!2400693))))

(assert (=> b!8021257 (= tp!2400679 e!4725235)))

(assert (= (and b!8021257 (is-Cons!74869 (t!390736 p1!173))) b!8021359))

(push 1)

(assert (not b!8021359))

(assert tp_is_empty!54071)

(assert (not b!8021304))

(assert (not b!8021358))

(assert (not b!8021316))

(assert (not b!8021344))

(assert (not b!8021338))

(assert (not b!8021315))

(assert (not b!8021314))

(assert (not b!8021343))

(assert (not b!8021357))

(assert (not b!8021324))

(assert (not b!8021325))

(assert (not b!8021336))

(assert (not b!8021339))

(assert (not b!8021340))

(assert (not b!8021326))

(assert (not b!8021346))

(assert (not b!8021342))

(assert (not b!8021334))

(assert (not b!8021352))

(assert (not b!8021302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

