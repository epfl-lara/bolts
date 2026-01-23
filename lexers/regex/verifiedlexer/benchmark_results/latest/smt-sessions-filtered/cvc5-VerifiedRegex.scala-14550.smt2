; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755154 () Bool)

(assert start!755154)

(declare-fun b!8022190 () Bool)

(declare-fun e!4725768 () Bool)

(declare-fun tp_is_empty!54103 () Bool)

(declare-fun tp!2400941 () Bool)

(assert (=> b!8022190 (= e!4725768 (and tp_is_empty!54103 tp!2400941))))

(declare-fun b!8022191 () Bool)

(declare-fun res!3172177 () Bool)

(declare-fun e!4725769 () Bool)

(assert (=> b!8022191 (=> (not res!3172177) (not e!4725769))))

(declare-datatypes ((B!4215 0))(
  ( (B!4216 (val!32497 Int)) )
))
(declare-datatypes ((List!75009 0))(
  ( (Nil!74885) (Cons!74885 (h!81333 B!4215) (t!390752 List!75009)) )
))
(declare-fun l!3411 () List!75009)

(declare-fun p1!179 () List!75009)

(declare-fun s1!490 () List!75009)

(declare-fun ++!18553 (List!75009 List!75009) List!75009)

(assert (=> b!8022191 (= res!3172177 (= (++!18553 p1!179 s1!490) l!3411))))

(declare-fun b!8022192 () Bool)

(declare-fun res!3172179 () Bool)

(assert (=> b!8022192 (=> (not res!3172179) (not e!4725769))))

(declare-fun p2!179 () List!75009)

(declare-fun s2!455 () List!75009)

(assert (=> b!8022192 (= res!3172179 (= (++!18553 p2!179 s2!455) l!3411))))

(declare-fun b!8022193 () Bool)

(declare-fun e!4725766 () Bool)

(declare-fun tp!2400943 () Bool)

(assert (=> b!8022193 (= e!4725766 (and tp_is_empty!54103 tp!2400943))))

(declare-fun res!3172181 () Bool)

(assert (=> start!755154 (=> (not res!3172181) (not e!4725769))))

(declare-fun isPrefix!6816 (List!75009 List!75009) Bool)

(assert (=> start!755154 (= res!3172181 (isPrefix!6816 p1!179 l!3411))))

(assert (=> start!755154 e!4725769))

(assert (=> start!755154 e!4725766))

(declare-fun e!4725767 () Bool)

(assert (=> start!755154 e!4725767))

(assert (=> start!755154 e!4725768))

(declare-fun e!4725771 () Bool)

(assert (=> start!755154 e!4725771))

(declare-fun e!4725770 () Bool)

(assert (=> start!755154 e!4725770))

(declare-fun b!8022194 () Bool)

(declare-fun tp!2400942 () Bool)

(assert (=> b!8022194 (= e!4725770 (and tp_is_empty!54103 tp!2400942))))

(declare-fun b!8022195 () Bool)

(declare-fun res!3172178 () Bool)

(assert (=> b!8022195 (=> (not res!3172178) (not e!4725769))))

(assert (=> b!8022195 (= res!3172178 (isPrefix!6816 p2!179 l!3411))))

(declare-fun b!8022196 () Bool)

(declare-fun tp!2400944 () Bool)

(assert (=> b!8022196 (= e!4725767 (and tp_is_empty!54103 tp!2400944))))

(declare-fun b!8022197 () Bool)

(declare-fun res!3172180 () Bool)

(assert (=> b!8022197 (=> (not res!3172180) (not e!4725769))))

(assert (=> b!8022197 (= res!3172180 (and (= p1!179 p2!179) (is-Cons!74885 p1!179)))))

(declare-fun b!8022198 () Bool)

(declare-fun tail!15954 (List!75009) List!75009)

(assert (=> b!8022198 (= e!4725769 (not (isPrefix!6816 (t!390752 p1!179) (tail!15954 l!3411))))))

(declare-fun b!8022199 () Bool)

(declare-fun tp!2400940 () Bool)

(assert (=> b!8022199 (= e!4725771 (and tp_is_empty!54103 tp!2400940))))

(assert (= (and start!755154 res!3172181) b!8022195))

(assert (= (and b!8022195 res!3172178) b!8022191))

(assert (= (and b!8022191 res!3172177) b!8022192))

(assert (= (and b!8022192 res!3172179) b!8022197))

(assert (= (and b!8022197 res!3172180) b!8022198))

(assert (= (and start!755154 (is-Cons!74885 p2!179)) b!8022193))

(assert (= (and start!755154 (is-Cons!74885 s2!455)) b!8022196))

(assert (= (and start!755154 (is-Cons!74885 l!3411)) b!8022190))

(assert (= (and start!755154 (is-Cons!74885 p1!179)) b!8022199))

(assert (= (and start!755154 (is-Cons!74885 s1!490)) b!8022194))

(declare-fun m!8384894 () Bool)

(assert (=> b!8022191 m!8384894))

(declare-fun m!8384896 () Bool)

(assert (=> b!8022198 m!8384896))

(assert (=> b!8022198 m!8384896))

(declare-fun m!8384898 () Bool)

(assert (=> b!8022198 m!8384898))

(declare-fun m!8384900 () Bool)

(assert (=> start!755154 m!8384900))

(declare-fun m!8384902 () Bool)

(assert (=> b!8022192 m!8384902))

(declare-fun m!8384904 () Bool)

(assert (=> b!8022195 m!8384904))

(push 1)

(assert (not b!8022191))

(assert (not b!8022196))

(assert (not start!755154))

(assert tp_is_empty!54103)

(assert (not b!8022198))

(assert (not b!8022192))

(assert (not b!8022195))

(assert (not b!8022194))

(assert (not b!8022193))

(assert (not b!8022190))

(assert (not b!8022199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!2720189 () List!75009)

(declare-fun e!4725795 () Bool)

(declare-fun b!8022241 () Bool)

(assert (=> b!8022241 (= e!4725795 (or (not (= s2!455 Nil!74885)) (= lt!2720189 p2!179)))))

(declare-fun b!8022238 () Bool)

(declare-fun e!4725794 () List!75009)

(assert (=> b!8022238 (= e!4725794 s2!455)))

(declare-fun d!2392145 () Bool)

(assert (=> d!2392145 e!4725795))

(declare-fun res!3172202 () Bool)

(assert (=> d!2392145 (=> (not res!3172202) (not e!4725795))))

(declare-fun content!15942 (List!75009) (Set B!4215))

(assert (=> d!2392145 (= res!3172202 (= (content!15942 lt!2720189) (set.union (content!15942 p2!179) (content!15942 s2!455))))))

(assert (=> d!2392145 (= lt!2720189 e!4725794)))

(declare-fun c!1472192 () Bool)

(assert (=> d!2392145 (= c!1472192 (is-Nil!74885 p2!179))))

(assert (=> d!2392145 (= (++!18553 p2!179 s2!455) lt!2720189)))

(declare-fun b!8022239 () Bool)

(assert (=> b!8022239 (= e!4725794 (Cons!74885 (h!81333 p2!179) (++!18553 (t!390752 p2!179) s2!455)))))

(declare-fun b!8022240 () Bool)

(declare-fun res!3172201 () Bool)

(assert (=> b!8022240 (=> (not res!3172201) (not e!4725795))))

(declare-fun size!43666 (List!75009) Int)

(assert (=> b!8022240 (= res!3172201 (= (size!43666 lt!2720189) (+ (size!43666 p2!179) (size!43666 s2!455))))))

(assert (= (and d!2392145 c!1472192) b!8022238))

(assert (= (and d!2392145 (not c!1472192)) b!8022239))

(assert (= (and d!2392145 res!3172202) b!8022240))

(assert (= (and b!8022240 res!3172201) b!8022241))

(declare-fun m!8384918 () Bool)

(assert (=> d!2392145 m!8384918))

(declare-fun m!8384920 () Bool)

(assert (=> d!2392145 m!8384920))

(declare-fun m!8384922 () Bool)

(assert (=> d!2392145 m!8384922))

(declare-fun m!8384924 () Bool)

(assert (=> b!8022239 m!8384924))

(declare-fun m!8384926 () Bool)

(assert (=> b!8022240 m!8384926))

(declare-fun m!8384928 () Bool)

(assert (=> b!8022240 m!8384928))

(declare-fun m!8384930 () Bool)

(assert (=> b!8022240 m!8384930))

(assert (=> b!8022192 d!2392145))

(declare-fun d!2392149 () Bool)

(declare-fun e!4725804 () Bool)

(assert (=> d!2392149 e!4725804))

(declare-fun res!3172213 () Bool)

(assert (=> d!2392149 (=> res!3172213 e!4725804)))

(declare-fun lt!2720192 () Bool)

(assert (=> d!2392149 (= res!3172213 (not lt!2720192))))

(declare-fun e!4725802 () Bool)

(assert (=> d!2392149 (= lt!2720192 e!4725802)))

(declare-fun res!3172212 () Bool)

(assert (=> d!2392149 (=> res!3172212 e!4725802)))

(assert (=> d!2392149 (= res!3172212 (is-Nil!74885 (t!390752 p1!179)))))

(assert (=> d!2392149 (= (isPrefix!6816 (t!390752 p1!179) (tail!15954 l!3411)) lt!2720192)))

(declare-fun b!8022252 () Bool)

(declare-fun e!4725803 () Bool)

(assert (=> b!8022252 (= e!4725803 (isPrefix!6816 (tail!15954 (t!390752 p1!179)) (tail!15954 (tail!15954 l!3411))))))

(declare-fun b!8022253 () Bool)

(assert (=> b!8022253 (= e!4725804 (>= (size!43666 (tail!15954 l!3411)) (size!43666 (t!390752 p1!179))))))

(declare-fun b!8022250 () Bool)

(assert (=> b!8022250 (= e!4725802 e!4725803)))

(declare-fun res!3172214 () Bool)

(assert (=> b!8022250 (=> (not res!3172214) (not e!4725803))))

(assert (=> b!8022250 (= res!3172214 (not (is-Nil!74885 (tail!15954 l!3411))))))

(declare-fun b!8022251 () Bool)

(declare-fun res!3172211 () Bool)

(assert (=> b!8022251 (=> (not res!3172211) (not e!4725803))))

(declare-fun head!16417 (List!75009) B!4215)

(assert (=> b!8022251 (= res!3172211 (= (head!16417 (t!390752 p1!179)) (head!16417 (tail!15954 l!3411))))))

(assert (= (and d!2392149 (not res!3172212)) b!8022250))

(assert (= (and b!8022250 res!3172214) b!8022251))

(assert (= (and b!8022251 res!3172211) b!8022252))

(assert (= (and d!2392149 (not res!3172213)) b!8022253))

(declare-fun m!8384932 () Bool)

(assert (=> b!8022252 m!8384932))

(assert (=> b!8022252 m!8384896))

(declare-fun m!8384934 () Bool)

(assert (=> b!8022252 m!8384934))

(assert (=> b!8022252 m!8384932))

(assert (=> b!8022252 m!8384934))

(declare-fun m!8384936 () Bool)

(assert (=> b!8022252 m!8384936))

(assert (=> b!8022253 m!8384896))

(declare-fun m!8384938 () Bool)

(assert (=> b!8022253 m!8384938))

(declare-fun m!8384940 () Bool)

(assert (=> b!8022253 m!8384940))

(declare-fun m!8384942 () Bool)

(assert (=> b!8022251 m!8384942))

(assert (=> b!8022251 m!8384896))

(declare-fun m!8384944 () Bool)

(assert (=> b!8022251 m!8384944))

(assert (=> b!8022198 d!2392149))

(declare-fun d!2392151 () Bool)

(assert (=> d!2392151 (= (tail!15954 l!3411) (t!390752 l!3411))))

(assert (=> b!8022198 d!2392151))

(declare-fun d!2392153 () Bool)

(declare-fun e!4725807 () Bool)

(assert (=> d!2392153 e!4725807))

(declare-fun res!3172217 () Bool)

(assert (=> d!2392153 (=> res!3172217 e!4725807)))

(declare-fun lt!2720193 () Bool)

(assert (=> d!2392153 (= res!3172217 (not lt!2720193))))

(declare-fun e!4725805 () Bool)

(assert (=> d!2392153 (= lt!2720193 e!4725805)))

(declare-fun res!3172216 () Bool)

(assert (=> d!2392153 (=> res!3172216 e!4725805)))

(assert (=> d!2392153 (= res!3172216 (is-Nil!74885 p1!179))))

(assert (=> d!2392153 (= (isPrefix!6816 p1!179 l!3411) lt!2720193)))

(declare-fun b!8022256 () Bool)

(declare-fun e!4725806 () Bool)

(assert (=> b!8022256 (= e!4725806 (isPrefix!6816 (tail!15954 p1!179) (tail!15954 l!3411)))))

(declare-fun b!8022257 () Bool)

(assert (=> b!8022257 (= e!4725807 (>= (size!43666 l!3411) (size!43666 p1!179)))))

(declare-fun b!8022254 () Bool)

(assert (=> b!8022254 (= e!4725805 e!4725806)))

(declare-fun res!3172218 () Bool)

(assert (=> b!8022254 (=> (not res!3172218) (not e!4725806))))

(assert (=> b!8022254 (= res!3172218 (not (is-Nil!74885 l!3411)))))

(declare-fun b!8022255 () Bool)

(declare-fun res!3172215 () Bool)

(assert (=> b!8022255 (=> (not res!3172215) (not e!4725806))))

(assert (=> b!8022255 (= res!3172215 (= (head!16417 p1!179) (head!16417 l!3411)))))

(assert (= (and d!2392153 (not res!3172216)) b!8022254))

(assert (= (and b!8022254 res!3172218) b!8022255))

(assert (= (and b!8022255 res!3172215) b!8022256))

(assert (= (and d!2392153 (not res!3172217)) b!8022257))

(declare-fun m!8384946 () Bool)

(assert (=> b!8022256 m!8384946))

(assert (=> b!8022256 m!8384896))

(assert (=> b!8022256 m!8384946))

(assert (=> b!8022256 m!8384896))

(declare-fun m!8384948 () Bool)

(assert (=> b!8022256 m!8384948))

(declare-fun m!8384950 () Bool)

(assert (=> b!8022257 m!8384950))

(declare-fun m!8384952 () Bool)

(assert (=> b!8022257 m!8384952))

(declare-fun m!8384954 () Bool)

(assert (=> b!8022255 m!8384954))

(declare-fun m!8384956 () Bool)

(assert (=> b!8022255 m!8384956))

(assert (=> start!755154 d!2392153))

(declare-fun d!2392155 () Bool)

(declare-fun e!4725810 () Bool)

(assert (=> d!2392155 e!4725810))

(declare-fun res!3172221 () Bool)

(assert (=> d!2392155 (=> res!3172221 e!4725810)))

(declare-fun lt!2720194 () Bool)

(assert (=> d!2392155 (= res!3172221 (not lt!2720194))))

(declare-fun e!4725808 () Bool)

(assert (=> d!2392155 (= lt!2720194 e!4725808)))

(declare-fun res!3172220 () Bool)

(assert (=> d!2392155 (=> res!3172220 e!4725808)))

(assert (=> d!2392155 (= res!3172220 (is-Nil!74885 p2!179))))

(assert (=> d!2392155 (= (isPrefix!6816 p2!179 l!3411) lt!2720194)))

(declare-fun b!8022260 () Bool)

(declare-fun e!4725809 () Bool)

(assert (=> b!8022260 (= e!4725809 (isPrefix!6816 (tail!15954 p2!179) (tail!15954 l!3411)))))

(declare-fun b!8022261 () Bool)

(assert (=> b!8022261 (= e!4725810 (>= (size!43666 l!3411) (size!43666 p2!179)))))

(declare-fun b!8022258 () Bool)

(assert (=> b!8022258 (= e!4725808 e!4725809)))

(declare-fun res!3172222 () Bool)

(assert (=> b!8022258 (=> (not res!3172222) (not e!4725809))))

(assert (=> b!8022258 (= res!3172222 (not (is-Nil!74885 l!3411)))))

(declare-fun b!8022259 () Bool)

(declare-fun res!3172219 () Bool)

(assert (=> b!8022259 (=> (not res!3172219) (not e!4725809))))

(assert (=> b!8022259 (= res!3172219 (= (head!16417 p2!179) (head!16417 l!3411)))))

(assert (= (and d!2392155 (not res!3172220)) b!8022258))

(assert (= (and b!8022258 res!3172222) b!8022259))

(assert (= (and b!8022259 res!3172219) b!8022260))

(assert (= (and d!2392155 (not res!3172221)) b!8022261))

(declare-fun m!8384958 () Bool)

(assert (=> b!8022260 m!8384958))

(assert (=> b!8022260 m!8384896))

(assert (=> b!8022260 m!8384958))

(assert (=> b!8022260 m!8384896))

(declare-fun m!8384960 () Bool)

(assert (=> b!8022260 m!8384960))

(assert (=> b!8022261 m!8384950))

(assert (=> b!8022261 m!8384928))

(declare-fun m!8384962 () Bool)

(assert (=> b!8022259 m!8384962))

(assert (=> b!8022259 m!8384956))

(assert (=> b!8022195 d!2392155))

(declare-fun b!8022265 () Bool)

(declare-fun lt!2720195 () List!75009)

(declare-fun e!4725812 () Bool)

(assert (=> b!8022265 (= e!4725812 (or (not (= s1!490 Nil!74885)) (= lt!2720195 p1!179)))))

(declare-fun b!8022262 () Bool)

(declare-fun e!4725811 () List!75009)

(assert (=> b!8022262 (= e!4725811 s1!490)))

(declare-fun d!2392157 () Bool)

(assert (=> d!2392157 e!4725812))

(declare-fun res!3172224 () Bool)

(assert (=> d!2392157 (=> (not res!3172224) (not e!4725812))))

(assert (=> d!2392157 (= res!3172224 (= (content!15942 lt!2720195) (set.union (content!15942 p1!179) (content!15942 s1!490))))))

(assert (=> d!2392157 (= lt!2720195 e!4725811)))

(declare-fun c!1472193 () Bool)

(assert (=> d!2392157 (= c!1472193 (is-Nil!74885 p1!179))))

(assert (=> d!2392157 (= (++!18553 p1!179 s1!490) lt!2720195)))

(declare-fun b!8022263 () Bool)

(assert (=> b!8022263 (= e!4725811 (Cons!74885 (h!81333 p1!179) (++!18553 (t!390752 p1!179) s1!490)))))

(declare-fun b!8022264 () Bool)

(declare-fun res!3172223 () Bool)

(assert (=> b!8022264 (=> (not res!3172223) (not e!4725812))))

(assert (=> b!8022264 (= res!3172223 (= (size!43666 lt!2720195) (+ (size!43666 p1!179) (size!43666 s1!490))))))

(assert (= (and d!2392157 c!1472193) b!8022262))

(assert (= (and d!2392157 (not c!1472193)) b!8022263))

(assert (= (and d!2392157 res!3172224) b!8022264))

(assert (= (and b!8022264 res!3172223) b!8022265))

(declare-fun m!8384964 () Bool)

(assert (=> d!2392157 m!8384964))

(declare-fun m!8384966 () Bool)

(assert (=> d!2392157 m!8384966))

(declare-fun m!8384968 () Bool)

(assert (=> d!2392157 m!8384968))

(declare-fun m!8384970 () Bool)

(assert (=> b!8022263 m!8384970))

(declare-fun m!8384972 () Bool)

(assert (=> b!8022264 m!8384972))

(assert (=> b!8022264 m!8384952))

(declare-fun m!8384974 () Bool)

(assert (=> b!8022264 m!8384974))

(assert (=> b!8022191 d!2392157))

(declare-fun b!8022276 () Bool)

(declare-fun e!4725819 () Bool)

(declare-fun tp!2400962 () Bool)

(assert (=> b!8022276 (= e!4725819 (and tp_is_empty!54103 tp!2400962))))

(assert (=> b!8022193 (= tp!2400943 e!4725819)))

(assert (= (and b!8022193 (is-Cons!74885 (t!390752 p2!179))) b!8022276))

(declare-fun b!8022277 () Bool)

(declare-fun e!4725820 () Bool)

(declare-fun tp!2400963 () Bool)

(assert (=> b!8022277 (= e!4725820 (and tp_is_empty!54103 tp!2400963))))

(assert (=> b!8022199 (= tp!2400940 e!4725820)))

(assert (= (and b!8022199 (is-Cons!74885 (t!390752 p1!179))) b!8022277))

(declare-fun b!8022280 () Bool)

(declare-fun e!4725823 () Bool)

(declare-fun tp!2400964 () Bool)

(assert (=> b!8022280 (= e!4725823 (and tp_is_empty!54103 tp!2400964))))

(assert (=> b!8022194 (= tp!2400942 e!4725823)))

(assert (= (and b!8022194 (is-Cons!74885 (t!390752 s1!490))) b!8022280))

(declare-fun b!8022281 () Bool)

(declare-fun e!4725824 () Bool)

(declare-fun tp!2400965 () Bool)

(assert (=> b!8022281 (= e!4725824 (and tp_is_empty!54103 tp!2400965))))

(assert (=> b!8022190 (= tp!2400941 e!4725824)))

(assert (= (and b!8022190 (is-Cons!74885 (t!390752 l!3411))) b!8022281))

(declare-fun b!8022282 () Bool)

(declare-fun e!4725825 () Bool)

(declare-fun tp!2400966 () Bool)

(assert (=> b!8022282 (= e!4725825 (and tp_is_empty!54103 tp!2400966))))

(assert (=> b!8022196 (= tp!2400944 e!4725825)))

(assert (= (and b!8022196 (is-Cons!74885 (t!390752 s2!455))) b!8022282))

(push 1)

(assert (not b!8022259))

(assert (not b!8022282))

(assert tp_is_empty!54103)

(assert (not b!8022277))

(assert (not b!8022253))

(assert (not b!8022255))

(assert (not b!8022264))

(assert (not b!8022240))

(assert (not b!8022251))

(assert (not b!8022280))

(assert (not d!2392157))

(assert (not b!8022260))

(assert (not b!8022239))

(assert (not b!8022257))

(assert (not b!8022256))

(assert (not b!8022252))

(assert (not b!8022276))

(assert (not b!8022263))

(assert (not d!2392145))

(assert (not b!8022281))

(assert (not b!8022261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2392169 () Bool)

(declare-fun lt!2720207 () Int)

(assert (=> d!2392169 (>= lt!2720207 0)))

(declare-fun e!4725852 () Int)

(assert (=> d!2392169 (= lt!2720207 e!4725852)))

(declare-fun c!1472200 () Bool)

(assert (=> d!2392169 (= c!1472200 (is-Nil!74885 lt!2720189))))

(assert (=> d!2392169 (= (size!43666 lt!2720189) lt!2720207)))

(declare-fun b!8022324 () Bool)

(assert (=> b!8022324 (= e!4725852 0)))

(declare-fun b!8022325 () Bool)

(assert (=> b!8022325 (= e!4725852 (+ 1 (size!43666 (t!390752 lt!2720189))))))

(assert (= (and d!2392169 c!1472200) b!8022324))

(assert (= (and d!2392169 (not c!1472200)) b!8022325))

(declare-fun m!8385034 () Bool)

(assert (=> b!8022325 m!8385034))

(assert (=> b!8022240 d!2392169))

(declare-fun d!2392171 () Bool)

(declare-fun lt!2720208 () Int)

(assert (=> d!2392171 (>= lt!2720208 0)))

(declare-fun e!4725853 () Int)

(assert (=> d!2392171 (= lt!2720208 e!4725853)))

(declare-fun c!1472201 () Bool)

(assert (=> d!2392171 (= c!1472201 (is-Nil!74885 p2!179))))

(assert (=> d!2392171 (= (size!43666 p2!179) lt!2720208)))

(declare-fun b!8022326 () Bool)

(assert (=> b!8022326 (= e!4725853 0)))

(declare-fun b!8022327 () Bool)

(assert (=> b!8022327 (= e!4725853 (+ 1 (size!43666 (t!390752 p2!179))))))

(assert (= (and d!2392171 c!1472201) b!8022326))

(assert (= (and d!2392171 (not c!1472201)) b!8022327))

(declare-fun m!8385036 () Bool)

(assert (=> b!8022327 m!8385036))

(assert (=> b!8022240 d!2392171))

(declare-fun d!2392173 () Bool)

(declare-fun lt!2720209 () Int)

(assert (=> d!2392173 (>= lt!2720209 0)))

(declare-fun e!4725854 () Int)

(assert (=> d!2392173 (= lt!2720209 e!4725854)))

(declare-fun c!1472202 () Bool)

(assert (=> d!2392173 (= c!1472202 (is-Nil!74885 s2!455))))

(assert (=> d!2392173 (= (size!43666 s2!455) lt!2720209)))

(declare-fun b!8022328 () Bool)

(assert (=> b!8022328 (= e!4725854 0)))

(declare-fun b!8022329 () Bool)

(assert (=> b!8022329 (= e!4725854 (+ 1 (size!43666 (t!390752 s2!455))))))

(assert (= (and d!2392173 c!1472202) b!8022328))

(assert (= (and d!2392173 (not c!1472202)) b!8022329))

(declare-fun m!8385038 () Bool)

(assert (=> b!8022329 m!8385038))

(assert (=> b!8022240 d!2392173))

(declare-fun d!2392175 () Bool)

(declare-fun lt!2720210 () Int)

(assert (=> d!2392175 (>= lt!2720210 0)))

(declare-fun e!4725855 () Int)

(assert (=> d!2392175 (= lt!2720210 e!4725855)))

(declare-fun c!1472203 () Bool)

(assert (=> d!2392175 (= c!1472203 (is-Nil!74885 l!3411))))

(assert (=> d!2392175 (= (size!43666 l!3411) lt!2720210)))

(declare-fun b!8022330 () Bool)

(assert (=> b!8022330 (= e!4725855 0)))

(declare-fun b!8022331 () Bool)

(assert (=> b!8022331 (= e!4725855 (+ 1 (size!43666 (t!390752 l!3411))))))

(assert (= (and d!2392175 c!1472203) b!8022330))

(assert (= (and d!2392175 (not c!1472203)) b!8022331))

(declare-fun m!8385040 () Bool)

(assert (=> b!8022331 m!8385040))

(assert (=> b!8022261 d!2392175))

(assert (=> b!8022261 d!2392171))

(declare-fun d!2392177 () Bool)

(assert (=> d!2392177 (= (head!16417 (t!390752 p1!179)) (h!81333 (t!390752 p1!179)))))

(assert (=> b!8022251 d!2392177))

(declare-fun d!2392179 () Bool)

(assert (=> d!2392179 (= (head!16417 (tail!15954 l!3411)) (h!81333 (tail!15954 l!3411)))))

(assert (=> b!8022251 d!2392179))

(declare-fun d!2392181 () Bool)

(declare-fun e!4725858 () Bool)

(assert (=> d!2392181 e!4725858))

(declare-fun res!3172255 () Bool)

(assert (=> d!2392181 (=> res!3172255 e!4725858)))

(declare-fun lt!2720211 () Bool)

(assert (=> d!2392181 (= res!3172255 (not lt!2720211))))

(declare-fun e!4725856 () Bool)

(assert (=> d!2392181 (= lt!2720211 e!4725856)))

(declare-fun res!3172254 () Bool)

(assert (=> d!2392181 (=> res!3172254 e!4725856)))

(assert (=> d!2392181 (= res!3172254 (is-Nil!74885 (tail!15954 (t!390752 p1!179))))))

(assert (=> d!2392181 (= (isPrefix!6816 (tail!15954 (t!390752 p1!179)) (tail!15954 (tail!15954 l!3411))) lt!2720211)))

(declare-fun b!8022334 () Bool)

(declare-fun e!4725857 () Bool)

(assert (=> b!8022334 (= e!4725857 (isPrefix!6816 (tail!15954 (tail!15954 (t!390752 p1!179))) (tail!15954 (tail!15954 (tail!15954 l!3411)))))))

(declare-fun b!8022335 () Bool)

(assert (=> b!8022335 (= e!4725858 (>= (size!43666 (tail!15954 (tail!15954 l!3411))) (size!43666 (tail!15954 (t!390752 p1!179)))))))

(declare-fun b!8022332 () Bool)

(assert (=> b!8022332 (= e!4725856 e!4725857)))

(declare-fun res!3172256 () Bool)

(assert (=> b!8022332 (=> (not res!3172256) (not e!4725857))))

(assert (=> b!8022332 (= res!3172256 (not (is-Nil!74885 (tail!15954 (tail!15954 l!3411)))))))

(declare-fun b!8022333 () Bool)

(declare-fun res!3172253 () Bool)

(assert (=> b!8022333 (=> (not res!3172253) (not e!4725857))))

(assert (=> b!8022333 (= res!3172253 (= (head!16417 (tail!15954 (t!390752 p1!179))) (head!16417 (tail!15954 (tail!15954 l!3411)))))))

(assert (= (and d!2392181 (not res!3172254)) b!8022332))

(assert (= (and b!8022332 res!3172256) b!8022333))

(assert (= (and b!8022333 res!3172253) b!8022334))

(assert (= (and d!2392181 (not res!3172255)) b!8022335))

(assert (=> b!8022334 m!8384932))

(declare-fun m!8385042 () Bool)

(assert (=> b!8022334 m!8385042))

(assert (=> b!8022334 m!8384934))

(declare-fun m!8385044 () Bool)

(assert (=> b!8022334 m!8385044))

(assert (=> b!8022334 m!8385042))

(assert (=> b!8022334 m!8385044))

(declare-fun m!8385046 () Bool)

(assert (=> b!8022334 m!8385046))

(assert (=> b!8022335 m!8384934))

(declare-fun m!8385048 () Bool)

(assert (=> b!8022335 m!8385048))

(assert (=> b!8022335 m!8384932))

(declare-fun m!8385050 () Bool)

(assert (=> b!8022335 m!8385050))

(assert (=> b!8022333 m!8384932))

(declare-fun m!8385052 () Bool)

(assert (=> b!8022333 m!8385052))

(assert (=> b!8022333 m!8384934))

(declare-fun m!8385054 () Bool)

(assert (=> b!8022333 m!8385054))

(assert (=> b!8022252 d!2392181))

(declare-fun d!2392183 () Bool)

(assert (=> d!2392183 (= (tail!15954 (t!390752 p1!179)) (t!390752 (t!390752 p1!179)))))

(assert (=> b!8022252 d!2392183))

(declare-fun d!2392185 () Bool)

(assert (=> d!2392185 (= (tail!15954 (tail!15954 l!3411)) (t!390752 (tail!15954 l!3411)))))

(assert (=> b!8022252 d!2392185))

(declare-fun d!2392187 () Bool)

(assert (=> d!2392187 (= (head!16417 p1!179) (h!81333 p1!179))))

(assert (=> b!8022255 d!2392187))

(declare-fun d!2392189 () Bool)

(assert (=> d!2392189 (= (head!16417 l!3411) (h!81333 l!3411))))

(assert (=> b!8022255 d!2392189))

(declare-fun d!2392191 () Bool)

(declare-fun lt!2720212 () Int)

(assert (=> d!2392191 (>= lt!2720212 0)))

(declare-fun e!4725859 () Int)

(assert (=> d!2392191 (= lt!2720212 e!4725859)))

(declare-fun c!1472204 () Bool)

(assert (=> d!2392191 (= c!1472204 (is-Nil!74885 (tail!15954 l!3411)))))

(assert (=> d!2392191 (= (size!43666 (tail!15954 l!3411)) lt!2720212)))

(declare-fun b!8022336 () Bool)

(assert (=> b!8022336 (= e!4725859 0)))

(declare-fun b!8022337 () Bool)

(assert (=> b!8022337 (= e!4725859 (+ 1 (size!43666 (t!390752 (tail!15954 l!3411)))))))

(assert (= (and d!2392191 c!1472204) b!8022336))

(assert (= (and d!2392191 (not c!1472204)) b!8022337))

(declare-fun m!8385056 () Bool)

(assert (=> b!8022337 m!8385056))

(assert (=> b!8022253 d!2392191))

(declare-fun d!2392193 () Bool)

(declare-fun lt!2720213 () Int)

(assert (=> d!2392193 (>= lt!2720213 0)))

(declare-fun e!4725860 () Int)

(assert (=> d!2392193 (= lt!2720213 e!4725860)))

(declare-fun c!1472205 () Bool)

(assert (=> d!2392193 (= c!1472205 (is-Nil!74885 (t!390752 p1!179)))))

(assert (=> d!2392193 (= (size!43666 (t!390752 p1!179)) lt!2720213)))

(declare-fun b!8022338 () Bool)

(assert (=> b!8022338 (= e!4725860 0)))

(declare-fun b!8022339 () Bool)

(assert (=> b!8022339 (= e!4725860 (+ 1 (size!43666 (t!390752 (t!390752 p1!179)))))))

(assert (= (and d!2392193 c!1472205) b!8022338))

(assert (= (and d!2392193 (not c!1472205)) b!8022339))

(declare-fun m!8385058 () Bool)

(assert (=> b!8022339 m!8385058))

(assert (=> b!8022253 d!2392193))

(declare-fun d!2392195 () Bool)

(declare-fun e!4725863 () Bool)

(assert (=> d!2392195 e!4725863))

(declare-fun res!3172259 () Bool)

(assert (=> d!2392195 (=> res!3172259 e!4725863)))

(declare-fun lt!2720214 () Bool)

(assert (=> d!2392195 (= res!3172259 (not lt!2720214))))

(declare-fun e!4725861 () Bool)

(assert (=> d!2392195 (= lt!2720214 e!4725861)))

(declare-fun res!3172258 () Bool)

(assert (=> d!2392195 (=> res!3172258 e!4725861)))

(assert (=> d!2392195 (= res!3172258 (is-Nil!74885 (tail!15954 p1!179)))))

(assert (=> d!2392195 (= (isPrefix!6816 (tail!15954 p1!179) (tail!15954 l!3411)) lt!2720214)))

(declare-fun b!8022342 () Bool)

(declare-fun e!4725862 () Bool)

(assert (=> b!8022342 (= e!4725862 (isPrefix!6816 (tail!15954 (tail!15954 p1!179)) (tail!15954 (tail!15954 l!3411))))))

(declare-fun b!8022343 () Bool)

(assert (=> b!8022343 (= e!4725863 (>= (size!43666 (tail!15954 l!3411)) (size!43666 (tail!15954 p1!179))))))

(declare-fun b!8022340 () Bool)

(assert (=> b!8022340 (= e!4725861 e!4725862)))

(declare-fun res!3172260 () Bool)

(assert (=> b!8022340 (=> (not res!3172260) (not e!4725862))))

(assert (=> b!8022340 (= res!3172260 (not (is-Nil!74885 (tail!15954 l!3411))))))

(declare-fun b!8022341 () Bool)

(declare-fun res!3172257 () Bool)

(assert (=> b!8022341 (=> (not res!3172257) (not e!4725862))))

(assert (=> b!8022341 (= res!3172257 (= (head!16417 (tail!15954 p1!179)) (head!16417 (tail!15954 l!3411))))))

(assert (= (and d!2392195 (not res!3172258)) b!8022340))

(assert (= (and b!8022340 res!3172260) b!8022341))

(assert (= (and b!8022341 res!3172257) b!8022342))

(assert (= (and d!2392195 (not res!3172259)) b!8022343))

(assert (=> b!8022342 m!8384946))

(declare-fun m!8385060 () Bool)

(assert (=> b!8022342 m!8385060))

(assert (=> b!8022342 m!8384896))

(assert (=> b!8022342 m!8384934))

(assert (=> b!8022342 m!8385060))

(assert (=> b!8022342 m!8384934))

(declare-fun m!8385062 () Bool)

(assert (=> b!8022342 m!8385062))

(assert (=> b!8022343 m!8384896))

(assert (=> b!8022343 m!8384938))

(assert (=> b!8022343 m!8384946))

(declare-fun m!8385064 () Bool)

(assert (=> b!8022343 m!8385064))

(assert (=> b!8022341 m!8384946))

(declare-fun m!8385066 () Bool)

(assert (=> b!8022341 m!8385066))

(assert (=> b!8022341 m!8384896))

(assert (=> b!8022341 m!8384944))

(assert (=> b!8022256 d!2392195))

(declare-fun d!2392197 () Bool)

(assert (=> d!2392197 (= (tail!15954 p1!179) (t!390752 p1!179))))

(assert (=> b!8022256 d!2392197))

(assert (=> b!8022256 d!2392151))

(declare-fun e!4725865 () Bool)

(declare-fun b!8022347 () Bool)

(declare-fun lt!2720215 () List!75009)

(assert (=> b!8022347 (= e!4725865 (or (not (= s1!490 Nil!74885)) (= lt!2720215 (t!390752 p1!179))))))

(declare-fun b!8022344 () Bool)

(declare-fun e!4725864 () List!75009)

(assert (=> b!8022344 (= e!4725864 s1!490)))

(declare-fun d!2392199 () Bool)

(assert (=> d!2392199 e!4725865))

(declare-fun res!3172262 () Bool)

(assert (=> d!2392199 (=> (not res!3172262) (not e!4725865))))

(assert (=> d!2392199 (= res!3172262 (= (content!15942 lt!2720215) (set.union (content!15942 (t!390752 p1!179)) (content!15942 s1!490))))))

(assert (=> d!2392199 (= lt!2720215 e!4725864)))

(declare-fun c!1472206 () Bool)

(assert (=> d!2392199 (= c!1472206 (is-Nil!74885 (t!390752 p1!179)))))

(assert (=> d!2392199 (= (++!18553 (t!390752 p1!179) s1!490) lt!2720215)))

(declare-fun b!8022345 () Bool)

(assert (=> b!8022345 (= e!4725864 (Cons!74885 (h!81333 (t!390752 p1!179)) (++!18553 (t!390752 (t!390752 p1!179)) s1!490)))))

(declare-fun b!8022346 () Bool)

(declare-fun res!3172261 () Bool)

(assert (=> b!8022346 (=> (not res!3172261) (not e!4725865))))

(assert (=> b!8022346 (= res!3172261 (= (size!43666 lt!2720215) (+ (size!43666 (t!390752 p1!179)) (size!43666 s1!490))))))

(assert (= (and d!2392199 c!1472206) b!8022344))

(assert (= (and d!2392199 (not c!1472206)) b!8022345))

(assert (= (and d!2392199 res!3172262) b!8022346))

(assert (= (and b!8022346 res!3172261) b!8022347))

(declare-fun m!8385068 () Bool)

(assert (=> d!2392199 m!8385068))

(declare-fun m!8385070 () Bool)

(assert (=> d!2392199 m!8385070))

(assert (=> d!2392199 m!8384968))

(declare-fun m!8385072 () Bool)

(assert (=> b!8022345 m!8385072))

(declare-fun m!8385074 () Bool)

(assert (=> b!8022346 m!8385074))

(assert (=> b!8022346 m!8384940))

(assert (=> b!8022346 m!8384974))

(assert (=> b!8022263 d!2392199))

(declare-fun d!2392201 () Bool)

(declare-fun lt!2720216 () Int)

(assert (=> d!2392201 (>= lt!2720216 0)))

(declare-fun e!4725866 () Int)

(assert (=> d!2392201 (= lt!2720216 e!4725866)))

(declare-fun c!1472207 () Bool)

(assert (=> d!2392201 (= c!1472207 (is-Nil!74885 lt!2720195))))

(assert (=> d!2392201 (= (size!43666 lt!2720195) lt!2720216)))

(declare-fun b!8022348 () Bool)

(assert (=> b!8022348 (= e!4725866 0)))

(declare-fun b!8022349 () Bool)

(assert (=> b!8022349 (= e!4725866 (+ 1 (size!43666 (t!390752 lt!2720195))))))

(assert (= (and d!2392201 c!1472207) b!8022348))

(assert (= (and d!2392201 (not c!1472207)) b!8022349))

(declare-fun m!8385076 () Bool)

(assert (=> b!8022349 m!8385076))

(assert (=> b!8022264 d!2392201))

(declare-fun d!2392203 () Bool)

(declare-fun lt!2720217 () Int)

(assert (=> d!2392203 (>= lt!2720217 0)))

(declare-fun e!4725867 () Int)

(assert (=> d!2392203 (= lt!2720217 e!4725867)))

(declare-fun c!1472208 () Bool)

(assert (=> d!2392203 (= c!1472208 (is-Nil!74885 p1!179))))

(assert (=> d!2392203 (= (size!43666 p1!179) lt!2720217)))

(declare-fun b!8022350 () Bool)

(assert (=> b!8022350 (= e!4725867 0)))

(declare-fun b!8022351 () Bool)

(assert (=> b!8022351 (= e!4725867 (+ 1 (size!43666 (t!390752 p1!179))))))

(assert (= (and d!2392203 c!1472208) b!8022350))

(assert (= (and d!2392203 (not c!1472208)) b!8022351))

(assert (=> b!8022351 m!8384940))

(assert (=> b!8022264 d!2392203))

(declare-fun d!2392205 () Bool)

(declare-fun lt!2720218 () Int)

(assert (=> d!2392205 (>= lt!2720218 0)))

(declare-fun e!4725868 () Int)

(assert (=> d!2392205 (= lt!2720218 e!4725868)))

(declare-fun c!1472209 () Bool)

(assert (=> d!2392205 (= c!1472209 (is-Nil!74885 s1!490))))

(assert (=> d!2392205 (= (size!43666 s1!490) lt!2720218)))

(declare-fun b!8022352 () Bool)

(assert (=> b!8022352 (= e!4725868 0)))

(declare-fun b!8022353 () Bool)

(assert (=> b!8022353 (= e!4725868 (+ 1 (size!43666 (t!390752 s1!490))))))

(assert (= (and d!2392205 c!1472209) b!8022352))

(assert (= (and d!2392205 (not c!1472209)) b!8022353))

(declare-fun m!8385078 () Bool)

(assert (=> b!8022353 m!8385078))

(assert (=> b!8022264 d!2392205))

(assert (=> b!8022257 d!2392175))

(assert (=> b!8022257 d!2392203))

(declare-fun d!2392207 () Bool)

(declare-fun c!1472212 () Bool)

(assert (=> d!2392207 (= c!1472212 (is-Nil!74885 lt!2720195))))

(declare-fun e!4725871 () (Set B!4215))

(assert (=> d!2392207 (= (content!15942 lt!2720195) e!4725871)))

(declare-fun b!8022358 () Bool)

(assert (=> b!8022358 (= e!4725871 (as set.empty (Set B!4215)))))

(declare-fun b!8022359 () Bool)

(assert (=> b!8022359 (= e!4725871 (set.union (set.insert (h!81333 lt!2720195) (as set.empty (Set B!4215))) (content!15942 (t!390752 lt!2720195))))))

(assert (= (and d!2392207 c!1472212) b!8022358))

(assert (= (and d!2392207 (not c!1472212)) b!8022359))

(declare-fun m!8385080 () Bool)

(assert (=> b!8022359 m!8385080))

(declare-fun m!8385082 () Bool)

(assert (=> b!8022359 m!8385082))

(assert (=> d!2392157 d!2392207))

(declare-fun d!2392209 () Bool)

(declare-fun c!1472213 () Bool)

(assert (=> d!2392209 (= c!1472213 (is-Nil!74885 p1!179))))

(declare-fun e!4725872 () (Set B!4215))

(assert (=> d!2392209 (= (content!15942 p1!179) e!4725872)))

(declare-fun b!8022360 () Bool)

(assert (=> b!8022360 (= e!4725872 (as set.empty (Set B!4215)))))

(declare-fun b!8022361 () Bool)

(assert (=> b!8022361 (= e!4725872 (set.union (set.insert (h!81333 p1!179) (as set.empty (Set B!4215))) (content!15942 (t!390752 p1!179))))))

(assert (= (and d!2392209 c!1472213) b!8022360))

(assert (= (and d!2392209 (not c!1472213)) b!8022361))

(declare-fun m!8385084 () Bool)

(assert (=> b!8022361 m!8385084))

(assert (=> b!8022361 m!8385070))

(assert (=> d!2392157 d!2392209))

(declare-fun d!2392211 () Bool)

(declare-fun c!1472214 () Bool)

(assert (=> d!2392211 (= c!1472214 (is-Nil!74885 s1!490))))

(declare-fun e!4725873 () (Set B!4215))

(assert (=> d!2392211 (= (content!15942 s1!490) e!4725873)))

(declare-fun b!8022362 () Bool)

(assert (=> b!8022362 (= e!4725873 (as set.empty (Set B!4215)))))

(declare-fun b!8022363 () Bool)

(assert (=> b!8022363 (= e!4725873 (set.union (set.insert (h!81333 s1!490) (as set.empty (Set B!4215))) (content!15942 (t!390752 s1!490))))))

(assert (= (and d!2392211 c!1472214) b!8022362))

(assert (= (and d!2392211 (not c!1472214)) b!8022363))

(declare-fun m!8385086 () Bool)

(assert (=> b!8022363 m!8385086))

(declare-fun m!8385088 () Bool)

(assert (=> b!8022363 m!8385088))

(assert (=> d!2392157 d!2392211))

(declare-fun lt!2720219 () List!75009)

(declare-fun b!8022367 () Bool)

(declare-fun e!4725875 () Bool)

(assert (=> b!8022367 (= e!4725875 (or (not (= s2!455 Nil!74885)) (= lt!2720219 (t!390752 p2!179))))))

(declare-fun b!8022364 () Bool)

(declare-fun e!4725874 () List!75009)

(assert (=> b!8022364 (= e!4725874 s2!455)))

(declare-fun d!2392213 () Bool)

(assert (=> d!2392213 e!4725875))

(declare-fun res!3172264 () Bool)

(assert (=> d!2392213 (=> (not res!3172264) (not e!4725875))))

(assert (=> d!2392213 (= res!3172264 (= (content!15942 lt!2720219) (set.union (content!15942 (t!390752 p2!179)) (content!15942 s2!455))))))

(assert (=> d!2392213 (= lt!2720219 e!4725874)))

(declare-fun c!1472215 () Bool)

(assert (=> d!2392213 (= c!1472215 (is-Nil!74885 (t!390752 p2!179)))))

(assert (=> d!2392213 (= (++!18553 (t!390752 p2!179) s2!455) lt!2720219)))

(declare-fun b!8022365 () Bool)

(assert (=> b!8022365 (= e!4725874 (Cons!74885 (h!81333 (t!390752 p2!179)) (++!18553 (t!390752 (t!390752 p2!179)) s2!455)))))

(declare-fun b!8022366 () Bool)

(declare-fun res!3172263 () Bool)

(assert (=> b!8022366 (=> (not res!3172263) (not e!4725875))))

(assert (=> b!8022366 (= res!3172263 (= (size!43666 lt!2720219) (+ (size!43666 (t!390752 p2!179)) (size!43666 s2!455))))))

(assert (= (and d!2392213 c!1472215) b!8022364))

(assert (= (and d!2392213 (not c!1472215)) b!8022365))

(assert (= (and d!2392213 res!3172264) b!8022366))

(assert (= (and b!8022366 res!3172263) b!8022367))

(declare-fun m!8385090 () Bool)

(assert (=> d!2392213 m!8385090))

(declare-fun m!8385092 () Bool)

(assert (=> d!2392213 m!8385092))

(assert (=> d!2392213 m!8384922))

(declare-fun m!8385094 () Bool)

(assert (=> b!8022365 m!8385094))

(declare-fun m!8385096 () Bool)

(assert (=> b!8022366 m!8385096))

(assert (=> b!8022366 m!8385036))

(assert (=> b!8022366 m!8384930))

(assert (=> b!8022239 d!2392213))

(declare-fun d!2392215 () Bool)

(declare-fun c!1472216 () Bool)

(assert (=> d!2392215 (= c!1472216 (is-Nil!74885 lt!2720189))))

(declare-fun e!4725876 () (Set B!4215))

(assert (=> d!2392215 (= (content!15942 lt!2720189) e!4725876)))

(declare-fun b!8022368 () Bool)

(assert (=> b!8022368 (= e!4725876 (as set.empty (Set B!4215)))))

(declare-fun b!8022369 () Bool)

(assert (=> b!8022369 (= e!4725876 (set.union (set.insert (h!81333 lt!2720189) (as set.empty (Set B!4215))) (content!15942 (t!390752 lt!2720189))))))

(assert (= (and d!2392215 c!1472216) b!8022368))

(assert (= (and d!2392215 (not c!1472216)) b!8022369))

(declare-fun m!8385098 () Bool)

(assert (=> b!8022369 m!8385098))

(declare-fun m!8385100 () Bool)

(assert (=> b!8022369 m!8385100))

(assert (=> d!2392145 d!2392215))

(declare-fun d!2392217 () Bool)

(declare-fun c!1472217 () Bool)

(assert (=> d!2392217 (= c!1472217 (is-Nil!74885 p2!179))))

(declare-fun e!4725877 () (Set B!4215))

(assert (=> d!2392217 (= (content!15942 p2!179) e!4725877)))

(declare-fun b!8022370 () Bool)

(assert (=> b!8022370 (= e!4725877 (as set.empty (Set B!4215)))))

(declare-fun b!8022371 () Bool)

(assert (=> b!8022371 (= e!4725877 (set.union (set.insert (h!81333 p2!179) (as set.empty (Set B!4215))) (content!15942 (t!390752 p2!179))))))

(assert (= (and d!2392217 c!1472217) b!8022370))

(assert (= (and d!2392217 (not c!1472217)) b!8022371))

(declare-fun m!8385102 () Bool)

(assert (=> b!8022371 m!8385102))

(assert (=> b!8022371 m!8385092))

(assert (=> d!2392145 d!2392217))

(declare-fun d!2392219 () Bool)

(declare-fun c!1472218 () Bool)

(assert (=> d!2392219 (= c!1472218 (is-Nil!74885 s2!455))))

(declare-fun e!4725878 () (Set B!4215))

(assert (=> d!2392219 (= (content!15942 s2!455) e!4725878)))

(declare-fun b!8022372 () Bool)

(assert (=> b!8022372 (= e!4725878 (as set.empty (Set B!4215)))))

(declare-fun b!8022373 () Bool)

(assert (=> b!8022373 (= e!4725878 (set.union (set.insert (h!81333 s2!455) (as set.empty (Set B!4215))) (content!15942 (t!390752 s2!455))))))

(assert (= (and d!2392219 c!1472218) b!8022372))

(assert (= (and d!2392219 (not c!1472218)) b!8022373))

(declare-fun m!8385104 () Bool)

(assert (=> b!8022373 m!8385104))

(declare-fun m!8385106 () Bool)

(assert (=> b!8022373 m!8385106))

(assert (=> d!2392145 d!2392219))

(declare-fun d!2392221 () Bool)

(assert (=> d!2392221 (= (head!16417 p2!179) (h!81333 p2!179))))

(assert (=> b!8022259 d!2392221))

(assert (=> b!8022259 d!2392189))

(declare-fun d!2392223 () Bool)

(declare-fun e!4725881 () Bool)

(assert (=> d!2392223 e!4725881))

(declare-fun res!3172267 () Bool)

(assert (=> d!2392223 (=> res!3172267 e!4725881)))

(declare-fun lt!2720220 () Bool)

(assert (=> d!2392223 (= res!3172267 (not lt!2720220))))

(declare-fun e!4725879 () Bool)

(assert (=> d!2392223 (= lt!2720220 e!4725879)))

(declare-fun res!3172266 () Bool)

(assert (=> d!2392223 (=> res!3172266 e!4725879)))

(assert (=> d!2392223 (= res!3172266 (is-Nil!74885 (tail!15954 p2!179)))))

(assert (=> d!2392223 (= (isPrefix!6816 (tail!15954 p2!179) (tail!15954 l!3411)) lt!2720220)))

(declare-fun b!8022376 () Bool)

(declare-fun e!4725880 () Bool)

(assert (=> b!8022376 (= e!4725880 (isPrefix!6816 (tail!15954 (tail!15954 p2!179)) (tail!15954 (tail!15954 l!3411))))))

(declare-fun b!8022377 () Bool)

(assert (=> b!8022377 (= e!4725881 (>= (size!43666 (tail!15954 l!3411)) (size!43666 (tail!15954 p2!179))))))

(declare-fun b!8022374 () Bool)

(assert (=> b!8022374 (= e!4725879 e!4725880)))

(declare-fun res!3172268 () Bool)

(assert (=> b!8022374 (=> (not res!3172268) (not e!4725880))))

(assert (=> b!8022374 (= res!3172268 (not (is-Nil!74885 (tail!15954 l!3411))))))

(declare-fun b!8022375 () Bool)

(declare-fun res!3172265 () Bool)

(assert (=> b!8022375 (=> (not res!3172265) (not e!4725880))))

(assert (=> b!8022375 (= res!3172265 (= (head!16417 (tail!15954 p2!179)) (head!16417 (tail!15954 l!3411))))))

(assert (= (and d!2392223 (not res!3172266)) b!8022374))

(assert (= (and b!8022374 res!3172268) b!8022375))

(assert (= (and b!8022375 res!3172265) b!8022376))

(assert (= (and d!2392223 (not res!3172267)) b!8022377))

(assert (=> b!8022376 m!8384958))

(declare-fun m!8385108 () Bool)

(assert (=> b!8022376 m!8385108))

(assert (=> b!8022376 m!8384896))

(assert (=> b!8022376 m!8384934))

(assert (=> b!8022376 m!8385108))

(assert (=> b!8022376 m!8384934))

(declare-fun m!8385110 () Bool)

(assert (=> b!8022376 m!8385110))

(assert (=> b!8022377 m!8384896))

(assert (=> b!8022377 m!8384938))

(assert (=> b!8022377 m!8384958))

(declare-fun m!8385112 () Bool)

(assert (=> b!8022377 m!8385112))

(assert (=> b!8022375 m!8384958))

(declare-fun m!8385114 () Bool)

(assert (=> b!8022375 m!8385114))

(assert (=> b!8022375 m!8384896))

(assert (=> b!8022375 m!8384944))

(assert (=> b!8022260 d!2392223))

(declare-fun d!2392225 () Bool)

(assert (=> d!2392225 (= (tail!15954 p2!179) (t!390752 p2!179))))

(assert (=> b!8022260 d!2392225))

(assert (=> b!8022260 d!2392151))

(declare-fun b!8022378 () Bool)

(declare-fun e!4725882 () Bool)

(declare-fun tp!2400974 () Bool)

(assert (=> b!8022378 (= e!4725882 (and tp_is_empty!54103 tp!2400974))))

(assert (=> b!8022282 (= tp!2400966 e!4725882)))

(assert (= (and b!8022282 (is-Cons!74885 (t!390752 (t!390752 s2!455)))) b!8022378))

(declare-fun b!8022379 () Bool)

(declare-fun e!4725883 () Bool)

(declare-fun tp!2400975 () Bool)

(assert (=> b!8022379 (= e!4725883 (and tp_is_empty!54103 tp!2400975))))

(assert (=> b!8022277 (= tp!2400963 e!4725883)))

(assert (= (and b!8022277 (is-Cons!74885 (t!390752 (t!390752 p1!179)))) b!8022379))

(declare-fun b!8022380 () Bool)

(declare-fun e!4725884 () Bool)

(declare-fun tp!2400976 () Bool)

(assert (=> b!8022380 (= e!4725884 (and tp_is_empty!54103 tp!2400976))))

(assert (=> b!8022281 (= tp!2400965 e!4725884)))

(assert (= (and b!8022281 (is-Cons!74885 (t!390752 (t!390752 l!3411)))) b!8022380))

(declare-fun b!8022381 () Bool)

(declare-fun e!4725885 () Bool)

(declare-fun tp!2400977 () Bool)

(assert (=> b!8022381 (= e!4725885 (and tp_is_empty!54103 tp!2400977))))

(assert (=> b!8022276 (= tp!2400962 e!4725885)))

(assert (= (and b!8022276 (is-Cons!74885 (t!390752 (t!390752 p2!179)))) b!8022381))

(declare-fun b!8022382 () Bool)

(declare-fun e!4725886 () Bool)

(declare-fun tp!2400978 () Bool)

(assert (=> b!8022382 (= e!4725886 (and tp_is_empty!54103 tp!2400978))))

(assert (=> b!8022280 (= tp!2400964 e!4725886)))

(assert (= (and b!8022280 (is-Cons!74885 (t!390752 (t!390752 s1!490)))) b!8022382))

(push 1)

(assert (not b!8022365))

(assert (not b!8022381))

(assert (not b!8022371))

(assert (not b!8022341))

(assert (not b!8022361))

(assert (not b!8022375))

(assert (not b!8022335))

(assert (not b!8022343))

(assert (not b!8022331))

(assert (not b!8022329))

(assert (not b!8022366))

(assert (not b!8022359))

(assert (not b!8022327))

(assert (not b!8022377))

(assert (not b!8022342))

(assert (not b!8022353))

(assert (not b!8022363))

(assert tp_is_empty!54103)

(assert (not b!8022382))

(assert (not d!2392213))

(assert (not b!8022351))

(assert (not b!8022333))

(assert (not b!8022345))

(assert (not b!8022378))

(assert (not b!8022339))

(assert (not b!8022334))

(assert (not b!8022369))

(assert (not b!8022373))

(assert (not b!8022337))

(assert (not b!8022376))

(assert (not b!8022346))

(assert (not d!2392199))

(assert (not b!8022379))

(assert (not b!8022325))

(assert (not b!8022349))

(assert (not b!8022380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

