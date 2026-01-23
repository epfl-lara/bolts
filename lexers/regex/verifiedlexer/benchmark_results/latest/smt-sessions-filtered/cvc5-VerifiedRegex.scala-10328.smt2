; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536684 () Bool)

(assert start!536684)

(declare-fun i!607 () Int)

(declare-datatypes ((T!105676 0))(
  ( (T!105677 (val!23731 Int)) )
))
(declare-fun err!4629 () T!105676)

(declare-fun b!5092639 () Bool)

(declare-datatypes ((List!58656 0))(
  ( (Nil!58532) (Cons!58532 (h!64980 T!105676) (t!371593 List!58656)) )
))
(declare-datatypes ((IArray!31355 0))(
  ( (IArray!31356 (innerList!15735 List!58656)) )
))
(declare-datatypes ((Conc!15647 0))(
  ( (Node!15647 (left!42943 Conc!15647) (right!43273 Conc!15647) (csize!31524 Int) (cheight!15858 Int)) (Leaf!25976 (xs!19029 IArray!31355) (csize!31525 Int)) (Empty!15647) )
))
(declare-fun t!3643 () Conc!15647)

(declare-fun e!3175927 () Bool)

(declare-fun apply!14282 (List!58656 Int) T!105676)

(declare-fun list!19121 (Conc!15647) List!58656)

(assert (=> b!5092639 (= e!3175927 (not (= err!4629 (apply!14282 (list!19121 t!3643) i!607))))))

(assert (=> b!5092639 true))

(declare-fun tp_is_empty!37173 () Bool)

(assert (=> b!5092639 tp_is_empty!37173))

(declare-fun b!5092640 () Bool)

(declare-fun e!3175929 () Bool)

(declare-fun e!3175928 () Bool)

(declare-fun inv!78002 (IArray!31355) Bool)

(assert (=> b!5092640 (= e!3175929 (and (inv!78002 (xs!19029 t!3643)) e!3175928))))

(declare-fun b!5092641 () Bool)

(declare-fun tp!1419592 () Bool)

(declare-fun tp!1419590 () Bool)

(declare-fun inv!78003 (Conc!15647) Bool)

(assert (=> b!5092641 (= e!3175929 (and (inv!78003 (left!42943 t!3643)) tp!1419590 (inv!78003 (right!43273 t!3643)) tp!1419592))))

(declare-fun b!5092642 () Bool)

(declare-fun tp!1419591 () Bool)

(assert (=> b!5092642 (= e!3175928 tp!1419591)))

(declare-fun b!5092643 () Bool)

(declare-fun res!2167266 () Bool)

(assert (=> b!5092643 (=> (not res!2167266) (not e!3175927))))

(declare-fun size!39238 (Conc!15647) Int)

(assert (=> b!5092643 (= res!2167266 (< i!607 (size!39238 t!3643)))))

(declare-fun b!5092644 () Bool)

(declare-fun res!2167265 () Bool)

(assert (=> b!5092644 (=> (not res!2167265) (not e!3175927))))

(assert (=> b!5092644 (= res!2167265 (and (not (is-Leaf!25976 t!3643)) (not (is-Node!15647 t!3643))))))

(declare-fun res!2167267 () Bool)

(assert (=> start!536684 (=> (not res!2167267) (not e!3175927))))

(assert (=> start!536684 (= res!2167267 (<= 0 i!607))))

(assert (=> start!536684 e!3175927))

(assert (=> start!536684 true))

(assert (=> start!536684 (and (inv!78003 t!3643) e!3175929)))

(assert (= (and start!536684 res!2167267) b!5092643))

(assert (= (and b!5092643 res!2167266) b!5092644))

(assert (= (and b!5092644 res!2167265) b!5092639))

(assert (= (and start!536684 (is-Node!15647 t!3643)) b!5092641))

(assert (= b!5092640 b!5092642))

(assert (= (and start!536684 (is-Leaf!25976 t!3643)) b!5092640))

(declare-fun m!6150898 () Bool)

(assert (=> b!5092641 m!6150898))

(declare-fun m!6150900 () Bool)

(assert (=> b!5092641 m!6150900))

(declare-fun m!6150902 () Bool)

(assert (=> b!5092639 m!6150902))

(assert (=> b!5092639 m!6150902))

(declare-fun m!6150904 () Bool)

(assert (=> b!5092639 m!6150904))

(declare-fun m!6150906 () Bool)

(assert (=> start!536684 m!6150906))

(declare-fun m!6150908 () Bool)

(assert (=> b!5092640 m!6150908))

(declare-fun m!6150910 () Bool)

(assert (=> b!5092643 m!6150910))

(push 1)

(assert (not b!5092641))

(assert (not b!5092640))

(assert (not b!5092642))

(assert (not start!536684))

(assert (not b!5092643))

(assert (not b!5092639))

(assert tp_is_empty!37173)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648477 () Bool)

(declare-fun size!39240 (List!58656) Int)

(assert (=> d!1648477 (= (inv!78002 (xs!19029 t!3643)) (<= (size!39240 (innerList!15735 (xs!19029 t!3643))) 2147483647))))

(declare-fun bs!1191216 () Bool)

(assert (= bs!1191216 d!1648477))

(declare-fun m!6150926 () Bool)

(assert (=> bs!1191216 m!6150926))

(assert (=> b!5092640 d!1648477))

(declare-fun d!1648479 () Bool)

(declare-fun c!875311 () Bool)

(assert (=> d!1648479 (= c!875311 (is-Node!15647 (left!42943 t!3643)))))

(declare-fun e!3175943 () Bool)

(assert (=> d!1648479 (= (inv!78003 (left!42943 t!3643)) e!3175943)))

(declare-fun b!5092669 () Bool)

(declare-fun inv!78006 (Conc!15647) Bool)

(assert (=> b!5092669 (= e!3175943 (inv!78006 (left!42943 t!3643)))))

(declare-fun b!5092670 () Bool)

(declare-fun e!3175944 () Bool)

(assert (=> b!5092670 (= e!3175943 e!3175944)))

(declare-fun res!2167279 () Bool)

(assert (=> b!5092670 (= res!2167279 (not (is-Leaf!25976 (left!42943 t!3643))))))

(assert (=> b!5092670 (=> res!2167279 e!3175944)))

(declare-fun b!5092671 () Bool)

(declare-fun inv!78007 (Conc!15647) Bool)

(assert (=> b!5092671 (= e!3175944 (inv!78007 (left!42943 t!3643)))))

(assert (= (and d!1648479 c!875311) b!5092669))

(assert (= (and d!1648479 (not c!875311)) b!5092670))

(assert (= (and b!5092670 (not res!2167279)) b!5092671))

(declare-fun m!6150928 () Bool)

(assert (=> b!5092669 m!6150928))

(declare-fun m!6150930 () Bool)

(assert (=> b!5092671 m!6150930))

(assert (=> b!5092641 d!1648479))

(declare-fun d!1648483 () Bool)

(declare-fun c!875312 () Bool)

(assert (=> d!1648483 (= c!875312 (is-Node!15647 (right!43273 t!3643)))))

(declare-fun e!3175945 () Bool)

(assert (=> d!1648483 (= (inv!78003 (right!43273 t!3643)) e!3175945)))

(declare-fun b!5092672 () Bool)

(assert (=> b!5092672 (= e!3175945 (inv!78006 (right!43273 t!3643)))))

(declare-fun b!5092673 () Bool)

(declare-fun e!3175946 () Bool)

(assert (=> b!5092673 (= e!3175945 e!3175946)))

(declare-fun res!2167280 () Bool)

(assert (=> b!5092673 (= res!2167280 (not (is-Leaf!25976 (right!43273 t!3643))))))

(assert (=> b!5092673 (=> res!2167280 e!3175946)))

(declare-fun b!5092674 () Bool)

(assert (=> b!5092674 (= e!3175946 (inv!78007 (right!43273 t!3643)))))

(assert (= (and d!1648483 c!875312) b!5092672))

(assert (= (and d!1648483 (not c!875312)) b!5092673))

(assert (= (and b!5092673 (not res!2167280)) b!5092674))

(declare-fun m!6150932 () Bool)

(assert (=> b!5092672 m!6150932))

(declare-fun m!6150934 () Bool)

(assert (=> b!5092674 m!6150934))

(assert (=> b!5092641 d!1648483))

(declare-fun d!1648485 () Bool)

(declare-fun c!875313 () Bool)

(assert (=> d!1648485 (= c!875313 (is-Node!15647 t!3643))))

(declare-fun e!3175947 () Bool)

(assert (=> d!1648485 (= (inv!78003 t!3643) e!3175947)))

(declare-fun b!5092675 () Bool)

(assert (=> b!5092675 (= e!3175947 (inv!78006 t!3643))))

(declare-fun b!5092676 () Bool)

(declare-fun e!3175948 () Bool)

(assert (=> b!5092676 (= e!3175947 e!3175948)))

(declare-fun res!2167281 () Bool)

(assert (=> b!5092676 (= res!2167281 (not (is-Leaf!25976 t!3643)))))

(assert (=> b!5092676 (=> res!2167281 e!3175948)))

(declare-fun b!5092677 () Bool)

(assert (=> b!5092677 (= e!3175948 (inv!78007 t!3643))))

(assert (= (and d!1648485 c!875313) b!5092675))

(assert (= (and d!1648485 (not c!875313)) b!5092676))

(assert (= (and b!5092676 (not res!2167281)) b!5092677))

(declare-fun m!6150936 () Bool)

(assert (=> b!5092675 m!6150936))

(declare-fun m!6150938 () Bool)

(assert (=> b!5092677 m!6150938))

(assert (=> start!536684 d!1648485))

(declare-fun d!1648487 () Bool)

(declare-fun lt!2092683 () Int)

(assert (=> d!1648487 (= lt!2092683 (size!39240 (list!19121 t!3643)))))

(assert (=> d!1648487 (= lt!2092683 (ite (is-Empty!15647 t!3643) 0 (ite (is-Leaf!25976 t!3643) (csize!31525 t!3643) (csize!31524 t!3643))))))

(assert (=> d!1648487 (= (size!39238 t!3643) lt!2092683)))

(declare-fun bs!1191217 () Bool)

(assert (= bs!1191217 d!1648487))

(assert (=> bs!1191217 m!6150902))

(assert (=> bs!1191217 m!6150902))

(declare-fun m!6150940 () Bool)

(assert (=> bs!1191217 m!6150940))

(assert (=> b!5092643 d!1648487))

(declare-fun d!1648489 () Bool)

(declare-fun lt!2092688 () T!105676)

(declare-fun contains!19597 (List!58656 T!105676) Bool)

(assert (=> d!1648489 (contains!19597 (list!19121 t!3643) lt!2092688)))

(declare-fun e!3175958 () T!105676)

(assert (=> d!1648489 (= lt!2092688 e!3175958)))

(declare-fun c!875318 () Bool)

(assert (=> d!1648489 (= c!875318 (= i!607 0))))

(declare-fun e!3175957 () Bool)

(assert (=> d!1648489 e!3175957))

(declare-fun res!2167286 () Bool)

(assert (=> d!1648489 (=> (not res!2167286) (not e!3175957))))

(assert (=> d!1648489 (= res!2167286 (<= 0 i!607))))

(assert (=> d!1648489 (= (apply!14282 (list!19121 t!3643) i!607) lt!2092688)))

(declare-fun b!5092690 () Bool)

(assert (=> b!5092690 (= e!3175957 (< i!607 (size!39240 (list!19121 t!3643))))))

(declare-fun b!5092691 () Bool)

(declare-fun head!10808 (List!58656) T!105676)

(assert (=> b!5092691 (= e!3175958 (head!10808 (list!19121 t!3643)))))

(declare-fun b!5092692 () Bool)

(declare-fun tail!9963 (List!58656) List!58656)

(assert (=> b!5092692 (= e!3175958 (apply!14282 (tail!9963 (list!19121 t!3643)) (- i!607 1)))))

(assert (= (and d!1648489 res!2167286) b!5092690))

(assert (= (and d!1648489 c!875318) b!5092691))

(assert (= (and d!1648489 (not c!875318)) b!5092692))

(assert (=> d!1648489 m!6150902))

(declare-fun m!6150942 () Bool)

(assert (=> d!1648489 m!6150942))

(assert (=> b!5092690 m!6150902))

(assert (=> b!5092690 m!6150940))

(assert (=> b!5092691 m!6150902))

(declare-fun m!6150944 () Bool)

(assert (=> b!5092691 m!6150944))

(assert (=> b!5092692 m!6150902))

(declare-fun m!6150946 () Bool)

(assert (=> b!5092692 m!6150946))

(assert (=> b!5092692 m!6150946))

(declare-fun m!6150948 () Bool)

(assert (=> b!5092692 m!6150948))

(assert (=> b!5092639 d!1648489))

(declare-fun d!1648491 () Bool)

(declare-fun c!875324 () Bool)

(assert (=> d!1648491 (= c!875324 (is-Empty!15647 t!3643))))

(declare-fun e!3175965 () List!58656)

(assert (=> d!1648491 (= (list!19121 t!3643) e!3175965)))

(declare-fun b!5092704 () Bool)

(assert (=> b!5092704 (= e!3175965 Nil!58532)))

(declare-fun b!5092705 () Bool)

(declare-fun e!3175966 () List!58656)

(assert (=> b!5092705 (= e!3175965 e!3175966)))

(declare-fun c!875325 () Bool)

(assert (=> b!5092705 (= c!875325 (is-Leaf!25976 t!3643))))

(declare-fun b!5092706 () Bool)

(declare-fun list!19123 (IArray!31355) List!58656)

(assert (=> b!5092706 (= e!3175966 (list!19123 (xs!19029 t!3643)))))

(declare-fun b!5092707 () Bool)

(declare-fun ++!12845 (List!58656 List!58656) List!58656)

(assert (=> b!5092707 (= e!3175966 (++!12845 (list!19121 (left!42943 t!3643)) (list!19121 (right!43273 t!3643))))))

(assert (= (and d!1648491 c!875324) b!5092704))

(assert (= (and d!1648491 (not c!875324)) b!5092705))

(assert (= (and b!5092705 c!875325) b!5092706))

(assert (= (and b!5092705 (not c!875325)) b!5092707))

(declare-fun m!6150960 () Bool)

(assert (=> b!5092706 m!6150960))

(declare-fun m!6150962 () Bool)

(assert (=> b!5092707 m!6150962))

(declare-fun m!6150964 () Bool)

(assert (=> b!5092707 m!6150964))

(assert (=> b!5092707 m!6150962))

(assert (=> b!5092707 m!6150964))

(declare-fun m!6150966 () Bool)

(assert (=> b!5092707 m!6150966))

(assert (=> b!5092639 d!1648491))

(declare-fun tp!1419610 () Bool)

(declare-fun b!5092716 () Bool)

(declare-fun e!3175972 () Bool)

(declare-fun tp!1419609 () Bool)

(assert (=> b!5092716 (= e!3175972 (and (inv!78003 (left!42943 (left!42943 t!3643))) tp!1419609 (inv!78003 (right!43273 (left!42943 t!3643))) tp!1419610))))

(declare-fun b!5092718 () Bool)

(declare-fun e!3175971 () Bool)

(declare-fun tp!1419608 () Bool)

(assert (=> b!5092718 (= e!3175971 tp!1419608)))

(declare-fun b!5092717 () Bool)

(assert (=> b!5092717 (= e!3175972 (and (inv!78002 (xs!19029 (left!42943 t!3643))) e!3175971))))

(assert (=> b!5092641 (= tp!1419590 (and (inv!78003 (left!42943 t!3643)) e!3175972))))

(assert (= (and b!5092641 (is-Node!15647 (left!42943 t!3643))) b!5092716))

(assert (= b!5092717 b!5092718))

(assert (= (and b!5092641 (is-Leaf!25976 (left!42943 t!3643))) b!5092717))

(declare-fun m!6150968 () Bool)

(assert (=> b!5092716 m!6150968))

(declare-fun m!6150970 () Bool)

(assert (=> b!5092716 m!6150970))

(declare-fun m!6150972 () Bool)

(assert (=> b!5092717 m!6150972))

(assert (=> b!5092641 m!6150898))

(declare-fun e!3175974 () Bool)

(declare-fun b!5092719 () Bool)

(declare-fun tp!1419612 () Bool)

(declare-fun tp!1419613 () Bool)

(assert (=> b!5092719 (= e!3175974 (and (inv!78003 (left!42943 (right!43273 t!3643))) tp!1419612 (inv!78003 (right!43273 (right!43273 t!3643))) tp!1419613))))

(declare-fun b!5092721 () Bool)

(declare-fun e!3175973 () Bool)

(declare-fun tp!1419611 () Bool)

(assert (=> b!5092721 (= e!3175973 tp!1419611)))

(declare-fun b!5092720 () Bool)

(assert (=> b!5092720 (= e!3175974 (and (inv!78002 (xs!19029 (right!43273 t!3643))) e!3175973))))

(assert (=> b!5092641 (= tp!1419592 (and (inv!78003 (right!43273 t!3643)) e!3175974))))

(assert (= (and b!5092641 (is-Node!15647 (right!43273 t!3643))) b!5092719))

(assert (= b!5092720 b!5092721))

(assert (= (and b!5092641 (is-Leaf!25976 (right!43273 t!3643))) b!5092720))

(declare-fun m!6150974 () Bool)

(assert (=> b!5092719 m!6150974))

(declare-fun m!6150976 () Bool)

(assert (=> b!5092719 m!6150976))

(declare-fun m!6150978 () Bool)

(assert (=> b!5092720 m!6150978))

(assert (=> b!5092641 m!6150900))

(declare-fun b!5092726 () Bool)

(declare-fun e!3175977 () Bool)

(declare-fun tp!1419616 () Bool)

(assert (=> b!5092726 (= e!3175977 (and tp_is_empty!37173 tp!1419616))))

(assert (=> b!5092642 (= tp!1419591 e!3175977)))

(assert (= (and b!5092642 (is-Cons!58532 (innerList!15735 (xs!19029 t!3643)))) b!5092726))

(push 1)

(assert (not b!5092692))

(assert (not d!1648487))

(assert (not d!1648477))

(assert (not b!5092717))

(assert (not b!5092691))

(assert (not b!5092707))

(assert (not b!5092706))

(assert (not b!5092718))

(assert (not b!5092675))

(assert (not b!5092726))

(assert (not b!5092690))

(assert (not b!5092720))

(assert tp_is_empty!37173)

(assert (not b!5092674))

(assert (not b!5092641))

(assert (not b!5092669))

(assert (not b!5092721))

(assert (not b!5092677))

(assert (not d!1648489))

(assert (not b!5092719))

(assert (not b!5092672))

(assert (not b!5092716))

(assert (not b!5092671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

