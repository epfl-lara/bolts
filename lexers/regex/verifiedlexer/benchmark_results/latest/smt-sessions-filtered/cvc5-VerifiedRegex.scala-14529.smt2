; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754866 () Bool)

(assert start!754866)

(declare-fun b!8019803 () Bool)

(declare-fun e!4724245 () Bool)

(declare-fun tp_is_empty!54019 () Bool)

(declare-fun tp!2400316 () Bool)

(assert (=> b!8019803 (= e!4724245 (and tp_is_empty!54019 tp!2400316))))

(declare-fun b!8019801 () Bool)

(declare-fun e!4724243 () Bool)

(declare-datatypes ((B!4131 0))(
  ( (B!4132 (val!32455 Int)) )
))
(declare-datatypes ((List!74967 0))(
  ( (Nil!74843) (Cons!74843 (h!81291 B!4131) (t!390710 List!74967)) )
))
(declare-fun s1!496 () List!74967)

(declare-fun ListPrimitiveSize!492 (List!74967) Int)

(assert (=> b!8019801 (= e!4724243 (< (ListPrimitiveSize!492 s1!496) 0))))

(declare-fun res!3171007 () Bool)

(assert (=> start!754866 (=> (not res!3171007) (not e!4724243))))

(declare-fun tl2!39 () List!74967)

(declare-fun hd2!39 () B!4131)

(declare-fun tot!47 () List!74967)

(declare-fun ++!18533 (List!74967 List!74967) List!74967)

(assert (=> start!754866 (= res!3171007 (= (++!18533 s1!496 (Cons!74843 hd2!39 tl2!39)) tot!47))))

(assert (=> start!754866 e!4724243))

(declare-fun e!4724242 () Bool)

(assert (=> start!754866 e!4724242))

(assert (=> start!754866 tp_is_empty!54019))

(assert (=> start!754866 e!4724245))

(declare-fun e!4724244 () Bool)

(assert (=> start!754866 e!4724244))

(declare-fun b!8019802 () Bool)

(declare-fun tp!2400317 () Bool)

(assert (=> b!8019802 (= e!4724242 (and tp_is_empty!54019 tp!2400317))))

(declare-fun b!8019804 () Bool)

(declare-fun tp!2400315 () Bool)

(assert (=> b!8019804 (= e!4724244 (and tp_is_empty!54019 tp!2400315))))

(assert (= (and start!754866 res!3171007) b!8019801))

(assert (= (and start!754866 (is-Cons!74843 s1!496)) b!8019802))

(assert (= (and start!754866 (is-Cons!74843 tl2!39)) b!8019803))

(assert (= (and start!754866 (is-Cons!74843 tot!47)) b!8019804))

(declare-fun m!8382828 () Bool)

(assert (=> b!8019801 m!8382828))

(declare-fun m!8382830 () Bool)

(assert (=> start!754866 m!8382830))

(push 1)

(assert (not b!8019802))

(assert (not b!8019801))

(assert tp_is_empty!54019)

(assert (not b!8019804))

(assert (not b!8019803))

(assert (not start!754866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!4724263 () Bool)

(declare-fun b!8019828 () Bool)

(declare-fun lt!2719654 () List!74967)

(assert (=> b!8019828 (= e!4724263 (or (not (= (Cons!74843 hd2!39 tl2!39) Nil!74843)) (= lt!2719654 s1!496)))))

(declare-fun b!8019827 () Bool)

(declare-fun res!3171016 () Bool)

(assert (=> b!8019827 (=> (not res!3171016) (not e!4724263))))

(declare-fun size!43631 (List!74967) Int)

(assert (=> b!8019827 (= res!3171016 (= (size!43631 lt!2719654) (+ (size!43631 s1!496) (size!43631 (Cons!74843 hd2!39 tl2!39)))))))

(declare-fun e!4724262 () List!74967)

(declare-fun b!8019826 () Bool)

(assert (=> b!8019826 (= e!4724262 (Cons!74843 (h!81291 s1!496) (++!18533 (t!390710 s1!496) (Cons!74843 hd2!39 tl2!39))))))

(declare-fun d!2391386 () Bool)

(assert (=> d!2391386 e!4724263))

(declare-fun res!3171015 () Bool)

(assert (=> d!2391386 (=> (not res!3171015) (not e!4724263))))

(declare-fun content!15930 (List!74967) (Set B!4131))

(assert (=> d!2391386 (= res!3171015 (= (content!15930 lt!2719654) (set.union (content!15930 s1!496) (content!15930 (Cons!74843 hd2!39 tl2!39)))))))

(assert (=> d!2391386 (= lt!2719654 e!4724262)))

(declare-fun c!1471927 () Bool)

(assert (=> d!2391386 (= c!1471927 (is-Nil!74843 s1!496))))

(assert (=> d!2391386 (= (++!18533 s1!496 (Cons!74843 hd2!39 tl2!39)) lt!2719654)))

(declare-fun b!8019825 () Bool)

(assert (=> b!8019825 (= e!4724262 (Cons!74843 hd2!39 tl2!39))))

(assert (= (and d!2391386 c!1471927) b!8019825))

(assert (= (and d!2391386 (not c!1471927)) b!8019826))

(assert (= (and d!2391386 res!3171015) b!8019827))

(assert (= (and b!8019827 res!3171016) b!8019828))

(declare-fun m!8382836 () Bool)

(assert (=> b!8019827 m!8382836))

(declare-fun m!8382838 () Bool)

(assert (=> b!8019827 m!8382838))

(declare-fun m!8382840 () Bool)

(assert (=> b!8019827 m!8382840))

(declare-fun m!8382842 () Bool)

(assert (=> b!8019826 m!8382842))

(declare-fun m!8382844 () Bool)

(assert (=> d!2391386 m!8382844))

(declare-fun m!8382846 () Bool)

(assert (=> d!2391386 m!8382846))

(declare-fun m!8382848 () Bool)

(assert (=> d!2391386 m!8382848))

(assert (=> start!754866 d!2391386))

(declare-fun d!2391390 () Bool)

(declare-fun lt!2719657 () Int)

(assert (=> d!2391390 (>= lt!2719657 0)))

(declare-fun e!4724266 () Int)

(assert (=> d!2391390 (= lt!2719657 e!4724266)))

(declare-fun c!1471930 () Bool)

(assert (=> d!2391390 (= c!1471930 (is-Nil!74843 s1!496))))

(assert (=> d!2391390 (= (ListPrimitiveSize!492 s1!496) lt!2719657)))

(declare-fun b!8019833 () Bool)

(assert (=> b!8019833 (= e!4724266 0)))

(declare-fun b!8019834 () Bool)

(assert (=> b!8019834 (= e!4724266 (+ 1 (ListPrimitiveSize!492 (t!390710 s1!496))))))

(assert (= (and d!2391390 c!1471930) b!8019833))

(assert (= (and d!2391390 (not c!1471930)) b!8019834))

(declare-fun m!8382850 () Bool)

(assert (=> b!8019834 m!8382850))

(assert (=> b!8019801 d!2391390))

(declare-fun b!8019839 () Bool)

(declare-fun e!4724269 () Bool)

(declare-fun tp!2400329 () Bool)

(assert (=> b!8019839 (= e!4724269 (and tp_is_empty!54019 tp!2400329))))

(assert (=> b!8019803 (= tp!2400316 e!4724269)))

(assert (= (and b!8019803 (is-Cons!74843 (t!390710 tl2!39))) b!8019839))

(declare-fun b!8019840 () Bool)

(declare-fun e!4724270 () Bool)

(declare-fun tp!2400330 () Bool)

(assert (=> b!8019840 (= e!4724270 (and tp_is_empty!54019 tp!2400330))))

(assert (=> b!8019804 (= tp!2400315 e!4724270)))

(assert (= (and b!8019804 (is-Cons!74843 (t!390710 tot!47))) b!8019840))

(declare-fun b!8019841 () Bool)

(declare-fun e!4724271 () Bool)

(declare-fun tp!2400331 () Bool)

(assert (=> b!8019841 (= e!4724271 (and tp_is_empty!54019 tp!2400331))))

(assert (=> b!8019802 (= tp!2400317 e!4724271)))

(assert (= (and b!8019802 (is-Cons!74843 (t!390710 s1!496))) b!8019841))

(push 1)

(assert (not b!8019834))

(assert (not b!8019840))

(assert (not d!2391386))

(assert (not b!8019839))

(assert (not b!8019827))

(assert tp_is_empty!54019)

(assert (not b!8019841))

(assert (not b!8019826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

