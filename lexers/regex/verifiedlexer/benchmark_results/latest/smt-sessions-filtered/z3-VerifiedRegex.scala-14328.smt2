; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748186 () Bool)

(assert start!748186)

(declare-fun b!7924608 () Bool)

(declare-fun e!4677040 () Bool)

(declare-datatypes ((T!145762 0))(
  ( (T!145763 (val!32054 Int)) )
))
(declare-fun v!5484 () T!145762)

(declare-datatypes ((List!74566 0))(
  ( (Nil!74442) (Cons!74442 (h!80890 T!145762) (t!390155 List!74566)) )
))
(declare-datatypes ((IArray!31853 0))(
  ( (IArray!31854 (innerList!15984 List!74566)) )
))
(declare-datatypes ((Conc!15896 0))(
  ( (Node!15896 (left!56864 Conc!15896) (right!57194 Conc!15896) (csize!32022 Int) (cheight!16107 Int)) (Leaf!30225 (xs!19284 IArray!31853) (csize!32023 Int)) (Empty!15896) )
))
(declare-fun inv!95686 (Conc!15896) Bool)

(declare-fun fill!271 (Int T!145762) IArray!31853)

(assert (=> b!7924608 (= e!4677040 (not (inv!95686 (Leaf!30225 (fill!271 1 v!5484) 1))))))

(declare-fun b!7924609 () Bool)

(declare-fun e!4677041 () Bool)

(declare-fun t!4440 () Conc!15896)

(declare-fun e!4677042 () Bool)

(declare-fun inv!95687 (IArray!31853) Bool)

(assert (=> b!7924609 (= e!4677041 (and (inv!95687 (xs!19284 t!4440)) e!4677042))))

(declare-fun b!7924610 () Bool)

(declare-fun tp!2358324 () Bool)

(declare-fun tp!2358326 () Bool)

(assert (=> b!7924610 (= e!4677041 (and (inv!95686 (left!56864 t!4440)) tp!2358324 (inv!95686 (right!57194 t!4440)) tp!2358326))))

(declare-fun b!7924611 () Bool)

(declare-fun res!3144596 () Bool)

(assert (=> b!7924611 (=> (not res!3144596) (not e!4677040))))

(get-info :version)

(assert (=> b!7924611 (= res!3144596 ((_ is Empty!15896) t!4440))))

(declare-fun b!7924612 () Bool)

(declare-fun tp!2358325 () Bool)

(assert (=> b!7924612 (= e!4677042 tp!2358325)))

(declare-fun res!3144595 () Bool)

(assert (=> start!748186 (=> (not res!3144595) (not e!4677040))))

(declare-fun isBalanced!4522 (Conc!15896) Bool)

(assert (=> start!748186 (= res!3144595 (isBalanced!4522 t!4440))))

(assert (=> start!748186 e!4677040))

(assert (=> start!748186 (and (inv!95686 t!4440) e!4677041)))

(declare-fun tp_is_empty!53217 () Bool)

(assert (=> start!748186 tp_is_empty!53217))

(assert (= (and start!748186 res!3144595) b!7924611))

(assert (= (and b!7924611 res!3144596) b!7924608))

(assert (= (and start!748186 ((_ is Node!15896) t!4440)) b!7924610))

(assert (= b!7924609 b!7924612))

(assert (= (and start!748186 ((_ is Leaf!30225) t!4440)) b!7924609))

(declare-fun m!8304838 () Bool)

(assert (=> b!7924608 m!8304838))

(declare-fun m!8304840 () Bool)

(assert (=> b!7924608 m!8304840))

(declare-fun m!8304842 () Bool)

(assert (=> b!7924609 m!8304842))

(declare-fun m!8304844 () Bool)

(assert (=> b!7924610 m!8304844))

(declare-fun m!8304846 () Bool)

(assert (=> b!7924610 m!8304846))

(declare-fun m!8304848 () Bool)

(assert (=> start!748186 m!8304848))

(declare-fun m!8304850 () Bool)

(assert (=> start!748186 m!8304850))

(check-sat (not b!7924612) tp_is_empty!53217 (not start!748186) (not b!7924608) (not b!7924610) (not b!7924609))
(check-sat)
(get-model)

(declare-fun d!2366267 () Bool)

(declare-fun size!43235 (List!74566) Int)

(assert (=> d!2366267 (= (inv!95687 (xs!19284 t!4440)) (<= (size!43235 (innerList!15984 (xs!19284 t!4440))) 2147483647))))

(declare-fun bs!1968710 () Bool)

(assert (= bs!1968710 d!2366267))

(declare-fun m!8304854 () Bool)

(assert (=> bs!1968710 m!8304854))

(assert (=> b!7924609 d!2366267))

(declare-fun d!2366271 () Bool)

(declare-fun c!1454959 () Bool)

(assert (=> d!2366271 (= c!1454959 ((_ is Node!15896) (left!56864 t!4440)))))

(declare-fun e!4677051 () Bool)

(assert (=> d!2366271 (= (inv!95686 (left!56864 t!4440)) e!4677051)))

(declare-fun b!7924631 () Bool)

(declare-fun inv!95688 (Conc!15896) Bool)

(assert (=> b!7924631 (= e!4677051 (inv!95688 (left!56864 t!4440)))))

(declare-fun b!7924632 () Bool)

(declare-fun e!4677052 () Bool)

(assert (=> b!7924632 (= e!4677051 e!4677052)))

(declare-fun res!3144611 () Bool)

(assert (=> b!7924632 (= res!3144611 (not ((_ is Leaf!30225) (left!56864 t!4440))))))

(assert (=> b!7924632 (=> res!3144611 e!4677052)))

(declare-fun b!7924633 () Bool)

(declare-fun inv!95689 (Conc!15896) Bool)

(assert (=> b!7924633 (= e!4677052 (inv!95689 (left!56864 t!4440)))))

(assert (= (and d!2366271 c!1454959) b!7924631))

(assert (= (and d!2366271 (not c!1454959)) b!7924632))

(assert (= (and b!7924632 (not res!3144611)) b!7924633))

(declare-fun m!8304856 () Bool)

(assert (=> b!7924631 m!8304856))

(declare-fun m!8304858 () Bool)

(assert (=> b!7924633 m!8304858))

(assert (=> b!7924610 d!2366271))

(declare-fun d!2366273 () Bool)

(declare-fun c!1454960 () Bool)

(assert (=> d!2366273 (= c!1454960 ((_ is Node!15896) (right!57194 t!4440)))))

(declare-fun e!4677053 () Bool)

(assert (=> d!2366273 (= (inv!95686 (right!57194 t!4440)) e!4677053)))

(declare-fun b!7924634 () Bool)

(assert (=> b!7924634 (= e!4677053 (inv!95688 (right!57194 t!4440)))))

(declare-fun b!7924635 () Bool)

(declare-fun e!4677054 () Bool)

(assert (=> b!7924635 (= e!4677053 e!4677054)))

(declare-fun res!3144612 () Bool)

(assert (=> b!7924635 (= res!3144612 (not ((_ is Leaf!30225) (right!57194 t!4440))))))

(assert (=> b!7924635 (=> res!3144612 e!4677054)))

(declare-fun b!7924636 () Bool)

(assert (=> b!7924636 (= e!4677054 (inv!95689 (right!57194 t!4440)))))

(assert (= (and d!2366273 c!1454960) b!7924634))

(assert (= (and d!2366273 (not c!1454960)) b!7924635))

(assert (= (and b!7924635 (not res!3144612)) b!7924636))

(declare-fun m!8304860 () Bool)

(assert (=> b!7924634 m!8304860))

(declare-fun m!8304862 () Bool)

(assert (=> b!7924636 m!8304862))

(assert (=> b!7924610 d!2366273))

(declare-fun b!7924667 () Bool)

(declare-fun e!4677070 () Bool)

(declare-fun e!4677069 () Bool)

(assert (=> b!7924667 (= e!4677070 e!4677069)))

(declare-fun res!3144637 () Bool)

(assert (=> b!7924667 (=> (not res!3144637) (not e!4677069))))

(declare-fun height!2211 (Conc!15896) Int)

(assert (=> b!7924667 (= res!3144637 (<= (- 1) (- (height!2211 (left!56864 t!4440)) (height!2211 (right!57194 t!4440)))))))

(declare-fun b!7924668 () Bool)

(declare-fun res!3144636 () Bool)

(assert (=> b!7924668 (=> (not res!3144636) (not e!4677069))))

(declare-fun isEmpty!42764 (Conc!15896) Bool)

(assert (=> b!7924668 (= res!3144636 (not (isEmpty!42764 (left!56864 t!4440))))))

(declare-fun d!2366275 () Bool)

(declare-fun res!3144638 () Bool)

(assert (=> d!2366275 (=> res!3144638 e!4677070)))

(assert (=> d!2366275 (= res!3144638 (not ((_ is Node!15896) t!4440)))))

(assert (=> d!2366275 (= (isBalanced!4522 t!4440) e!4677070)))

(declare-fun b!7924669 () Bool)

(declare-fun res!3144640 () Bool)

(assert (=> b!7924669 (=> (not res!3144640) (not e!4677069))))

(assert (=> b!7924669 (= res!3144640 (<= (- (height!2211 (left!56864 t!4440)) (height!2211 (right!57194 t!4440))) 1))))

(declare-fun b!7924670 () Bool)

(assert (=> b!7924670 (= e!4677069 (not (isEmpty!42764 (right!57194 t!4440))))))

(declare-fun b!7924671 () Bool)

(declare-fun res!3144639 () Bool)

(assert (=> b!7924671 (=> (not res!3144639) (not e!4677069))))

(assert (=> b!7924671 (= res!3144639 (isBalanced!4522 (left!56864 t!4440)))))

(declare-fun b!7924672 () Bool)

(declare-fun res!3144635 () Bool)

(assert (=> b!7924672 (=> (not res!3144635) (not e!4677069))))

(assert (=> b!7924672 (= res!3144635 (isBalanced!4522 (right!57194 t!4440)))))

(assert (= (and d!2366275 (not res!3144638)) b!7924667))

(assert (= (and b!7924667 res!3144637) b!7924669))

(assert (= (and b!7924669 res!3144640) b!7924671))

(assert (= (and b!7924671 res!3144639) b!7924672))

(assert (= (and b!7924672 res!3144635) b!7924668))

(assert (= (and b!7924668 res!3144636) b!7924670))

(declare-fun m!8304884 () Bool)

(assert (=> b!7924671 m!8304884))

(declare-fun m!8304886 () Bool)

(assert (=> b!7924672 m!8304886))

(declare-fun m!8304888 () Bool)

(assert (=> b!7924669 m!8304888))

(declare-fun m!8304890 () Bool)

(assert (=> b!7924669 m!8304890))

(declare-fun m!8304892 () Bool)

(assert (=> b!7924668 m!8304892))

(assert (=> b!7924667 m!8304888))

(assert (=> b!7924667 m!8304890))

(declare-fun m!8304894 () Bool)

(assert (=> b!7924670 m!8304894))

(assert (=> start!748186 d!2366275))

(declare-fun d!2366283 () Bool)

(declare-fun c!1454965 () Bool)

(assert (=> d!2366283 (= c!1454965 ((_ is Node!15896) t!4440))))

(declare-fun e!4677071 () Bool)

(assert (=> d!2366283 (= (inv!95686 t!4440) e!4677071)))

(declare-fun b!7924673 () Bool)

(assert (=> b!7924673 (= e!4677071 (inv!95688 t!4440))))

(declare-fun b!7924674 () Bool)

(declare-fun e!4677072 () Bool)

(assert (=> b!7924674 (= e!4677071 e!4677072)))

(declare-fun res!3144641 () Bool)

(assert (=> b!7924674 (= res!3144641 (not ((_ is Leaf!30225) t!4440)))))

(assert (=> b!7924674 (=> res!3144641 e!4677072)))

(declare-fun b!7924675 () Bool)

(assert (=> b!7924675 (= e!4677072 (inv!95689 t!4440))))

(assert (= (and d!2366283 c!1454965) b!7924673))

(assert (= (and d!2366283 (not c!1454965)) b!7924674))

(assert (= (and b!7924674 (not res!3144641)) b!7924675))

(declare-fun m!8304896 () Bool)

(assert (=> b!7924673 m!8304896))

(declare-fun m!8304898 () Bool)

(assert (=> b!7924675 m!8304898))

(assert (=> start!748186 d!2366283))

(declare-fun d!2366285 () Bool)

(declare-fun c!1454966 () Bool)

(assert (=> d!2366285 (= c!1454966 ((_ is Node!15896) (Leaf!30225 (fill!271 1 v!5484) 1)))))

(declare-fun e!4677073 () Bool)

(assert (=> d!2366285 (= (inv!95686 (Leaf!30225 (fill!271 1 v!5484) 1)) e!4677073)))

(declare-fun b!7924676 () Bool)

(assert (=> b!7924676 (= e!4677073 (inv!95688 (Leaf!30225 (fill!271 1 v!5484) 1)))))

(declare-fun b!7924677 () Bool)

(declare-fun e!4677074 () Bool)

(assert (=> b!7924677 (= e!4677073 e!4677074)))

(declare-fun res!3144642 () Bool)

(assert (=> b!7924677 (= res!3144642 (not ((_ is Leaf!30225) (Leaf!30225 (fill!271 1 v!5484) 1))))))

(assert (=> b!7924677 (=> res!3144642 e!4677074)))

(declare-fun b!7924678 () Bool)

(assert (=> b!7924678 (= e!4677074 (inv!95689 (Leaf!30225 (fill!271 1 v!5484) 1)))))

(assert (= (and d!2366285 c!1454966) b!7924676))

(assert (= (and d!2366285 (not c!1454966)) b!7924677))

(assert (= (and b!7924677 (not res!3144642)) b!7924678))

(declare-fun m!8304900 () Bool)

(assert (=> b!7924676 m!8304900))

(declare-fun m!8304902 () Bool)

(assert (=> b!7924678 m!8304902))

(assert (=> b!7924608 d!2366285))

(declare-fun d!2366287 () Bool)

(declare-fun lt!2692644 () IArray!31853)

(declare-fun fill!273 (Int T!145762) List!74566)

(assert (=> d!2366287 (= lt!2692644 (IArray!31854 (fill!273 1 v!5484)))))

(declare-fun choose!59822 (Int T!145762) IArray!31853)

(assert (=> d!2366287 (= lt!2692644 (choose!59822 1 v!5484))))

(assert (=> d!2366287 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2366287 (= (fill!271 1 v!5484) lt!2692644)))

(declare-fun bs!1968712 () Bool)

(assert (= bs!1968712 d!2366287))

(declare-fun m!8304916 () Bool)

(assert (=> bs!1968712 m!8304916))

(declare-fun m!8304918 () Bool)

(assert (=> bs!1968712 m!8304918))

(assert (=> b!7924608 d!2366287))

(declare-fun b!7924709 () Bool)

(declare-fun tp!2358346 () Bool)

(declare-fun tp!2358347 () Bool)

(declare-fun e!4677092 () Bool)

(assert (=> b!7924709 (= e!4677092 (and (inv!95686 (left!56864 (left!56864 t!4440))) tp!2358346 (inv!95686 (right!57194 (left!56864 t!4440))) tp!2358347))))

(declare-fun b!7924711 () Bool)

(declare-fun e!4677093 () Bool)

(declare-fun tp!2358345 () Bool)

(assert (=> b!7924711 (= e!4677093 tp!2358345)))

(declare-fun b!7924710 () Bool)

(assert (=> b!7924710 (= e!4677092 (and (inv!95687 (xs!19284 (left!56864 t!4440))) e!4677093))))

(assert (=> b!7924610 (= tp!2358324 (and (inv!95686 (left!56864 t!4440)) e!4677092))))

(assert (= (and b!7924610 ((_ is Node!15896) (left!56864 t!4440))) b!7924709))

(assert (= b!7924710 b!7924711))

(assert (= (and b!7924610 ((_ is Leaf!30225) (left!56864 t!4440))) b!7924710))

(declare-fun m!8304932 () Bool)

(assert (=> b!7924709 m!8304932))

(declare-fun m!8304934 () Bool)

(assert (=> b!7924709 m!8304934))

(declare-fun m!8304936 () Bool)

(assert (=> b!7924710 m!8304936))

(assert (=> b!7924610 m!8304844))

(declare-fun tp!2358352 () Bool)

(declare-fun e!4677096 () Bool)

(declare-fun tp!2358353 () Bool)

(declare-fun b!7924715 () Bool)

(assert (=> b!7924715 (= e!4677096 (and (inv!95686 (left!56864 (right!57194 t!4440))) tp!2358352 (inv!95686 (right!57194 (right!57194 t!4440))) tp!2358353))))

(declare-fun b!7924717 () Bool)

(declare-fun e!4677097 () Bool)

(declare-fun tp!2358351 () Bool)

(assert (=> b!7924717 (= e!4677097 tp!2358351)))

(declare-fun b!7924716 () Bool)

(assert (=> b!7924716 (= e!4677096 (and (inv!95687 (xs!19284 (right!57194 t!4440))) e!4677097))))

(assert (=> b!7924610 (= tp!2358326 (and (inv!95686 (right!57194 t!4440)) e!4677096))))

(assert (= (and b!7924610 ((_ is Node!15896) (right!57194 t!4440))) b!7924715))

(assert (= b!7924716 b!7924717))

(assert (= (and b!7924610 ((_ is Leaf!30225) (right!57194 t!4440))) b!7924716))

(declare-fun m!8304938 () Bool)

(assert (=> b!7924715 m!8304938))

(declare-fun m!8304940 () Bool)

(assert (=> b!7924715 m!8304940))

(declare-fun m!8304942 () Bool)

(assert (=> b!7924716 m!8304942))

(assert (=> b!7924610 m!8304846))

(declare-fun b!7924722 () Bool)

(declare-fun e!4677100 () Bool)

(declare-fun tp!2358356 () Bool)

(assert (=> b!7924722 (= e!4677100 (and tp_is_empty!53217 tp!2358356))))

(assert (=> b!7924612 (= tp!2358325 e!4677100)))

(assert (= (and b!7924612 ((_ is Cons!74442) (innerList!15984 (xs!19284 t!4440)))) b!7924722))

(check-sat (not b!7924717) (not b!7924672) (not b!7924710) (not b!7924676) (not b!7924716) (not b!7924633) (not b!7924675) (not b!7924671) (not b!7924722) (not b!7924631) (not d!2366287) (not b!7924673) tp_is_empty!53217 (not b!7924711) (not b!7924669) (not b!7924709) (not b!7924610) (not b!7924670) (not b!7924678) (not b!7924715) (not b!7924668) (not b!7924667) (not b!7924634) (not d!2366267) (not b!7924636))
(check-sat)
(get-model)

(declare-fun d!2366293 () Bool)

(declare-fun res!3144651 () Bool)

(declare-fun e!4677103 () Bool)

(assert (=> d!2366293 (=> (not res!3144651) (not e!4677103))))

(declare-fun size!43236 (Conc!15896) Int)

(assert (=> d!2366293 (= res!3144651 (= (csize!32022 (right!57194 t!4440)) (+ (size!43236 (left!56864 (right!57194 t!4440))) (size!43236 (right!57194 (right!57194 t!4440))))))))

(assert (=> d!2366293 (= (inv!95688 (right!57194 t!4440)) e!4677103)))

(declare-fun b!7924729 () Bool)

(declare-fun res!3144652 () Bool)

(assert (=> b!7924729 (=> (not res!3144652) (not e!4677103))))

(assert (=> b!7924729 (= res!3144652 (and (not (= (left!56864 (right!57194 t!4440)) Empty!15896)) (not (= (right!57194 (right!57194 t!4440)) Empty!15896))))))

(declare-fun b!7924730 () Bool)

(declare-fun res!3144653 () Bool)

(assert (=> b!7924730 (=> (not res!3144653) (not e!4677103))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7924730 (= res!3144653 (= (cheight!16107 (right!57194 t!4440)) (+ (max!0 (height!2211 (left!56864 (right!57194 t!4440))) (height!2211 (right!57194 (right!57194 t!4440)))) 1)))))

(declare-fun b!7924731 () Bool)

(assert (=> b!7924731 (= e!4677103 (<= 0 (cheight!16107 (right!57194 t!4440))))))

(assert (= (and d!2366293 res!3144651) b!7924729))

(assert (= (and b!7924729 res!3144652) b!7924730))

(assert (= (and b!7924730 res!3144653) b!7924731))

(declare-fun m!8304944 () Bool)

(assert (=> d!2366293 m!8304944))

(declare-fun m!8304946 () Bool)

(assert (=> d!2366293 m!8304946))

(declare-fun m!8304948 () Bool)

(assert (=> b!7924730 m!8304948))

(declare-fun m!8304950 () Bool)

(assert (=> b!7924730 m!8304950))

(assert (=> b!7924730 m!8304948))

(assert (=> b!7924730 m!8304950))

(declare-fun m!8304952 () Bool)

(assert (=> b!7924730 m!8304952))

(assert (=> b!7924634 d!2366293))

(declare-fun d!2366295 () Bool)

(declare-fun res!3144658 () Bool)

(declare-fun e!4677106 () Bool)

(assert (=> d!2366295 (=> (not res!3144658) (not e!4677106))))

(declare-fun list!19400 (IArray!31853) List!74566)

(assert (=> d!2366295 (= res!3144658 (<= (size!43235 (list!19400 (xs!19284 (left!56864 t!4440)))) 512))))

(assert (=> d!2366295 (= (inv!95689 (left!56864 t!4440)) e!4677106)))

(declare-fun b!7924736 () Bool)

(declare-fun res!3144659 () Bool)

(assert (=> b!7924736 (=> (not res!3144659) (not e!4677106))))

(assert (=> b!7924736 (= res!3144659 (= (csize!32023 (left!56864 t!4440)) (size!43235 (list!19400 (xs!19284 (left!56864 t!4440))))))))

(declare-fun b!7924737 () Bool)

(assert (=> b!7924737 (= e!4677106 (and (> (csize!32023 (left!56864 t!4440)) 0) (<= (csize!32023 (left!56864 t!4440)) 512)))))

(assert (= (and d!2366295 res!3144658) b!7924736))

(assert (= (and b!7924736 res!3144659) b!7924737))

(declare-fun m!8304954 () Bool)

(assert (=> d!2366295 m!8304954))

(assert (=> d!2366295 m!8304954))

(declare-fun m!8304956 () Bool)

(assert (=> d!2366295 m!8304956))

(assert (=> b!7924736 m!8304954))

(assert (=> b!7924736 m!8304954))

(assert (=> b!7924736 m!8304956))

(assert (=> b!7924633 d!2366295))

(declare-fun d!2366297 () Bool)

(declare-fun c!1454969 () Bool)

(assert (=> d!2366297 (= c!1454969 ((_ is Node!15896) (left!56864 (right!57194 t!4440))))))

(declare-fun e!4677107 () Bool)

(assert (=> d!2366297 (= (inv!95686 (left!56864 (right!57194 t!4440))) e!4677107)))

(declare-fun b!7924738 () Bool)

(assert (=> b!7924738 (= e!4677107 (inv!95688 (left!56864 (right!57194 t!4440))))))

(declare-fun b!7924739 () Bool)

(declare-fun e!4677108 () Bool)

(assert (=> b!7924739 (= e!4677107 e!4677108)))

(declare-fun res!3144660 () Bool)

(assert (=> b!7924739 (= res!3144660 (not ((_ is Leaf!30225) (left!56864 (right!57194 t!4440)))))))

(assert (=> b!7924739 (=> res!3144660 e!4677108)))

(declare-fun b!7924740 () Bool)

(assert (=> b!7924740 (= e!4677108 (inv!95689 (left!56864 (right!57194 t!4440))))))

(assert (= (and d!2366297 c!1454969) b!7924738))

(assert (= (and d!2366297 (not c!1454969)) b!7924739))

(assert (= (and b!7924739 (not res!3144660)) b!7924740))

(declare-fun m!8304958 () Bool)

(assert (=> b!7924738 m!8304958))

(declare-fun m!8304960 () Bool)

(assert (=> b!7924740 m!8304960))

(assert (=> b!7924715 d!2366297))

(declare-fun d!2366299 () Bool)

(declare-fun c!1454970 () Bool)

(assert (=> d!2366299 (= c!1454970 ((_ is Node!15896) (right!57194 (right!57194 t!4440))))))

(declare-fun e!4677109 () Bool)

(assert (=> d!2366299 (= (inv!95686 (right!57194 (right!57194 t!4440))) e!4677109)))

(declare-fun b!7924741 () Bool)

(assert (=> b!7924741 (= e!4677109 (inv!95688 (right!57194 (right!57194 t!4440))))))

(declare-fun b!7924742 () Bool)

(declare-fun e!4677110 () Bool)

(assert (=> b!7924742 (= e!4677109 e!4677110)))

(declare-fun res!3144661 () Bool)

(assert (=> b!7924742 (= res!3144661 (not ((_ is Leaf!30225) (right!57194 (right!57194 t!4440)))))))

(assert (=> b!7924742 (=> res!3144661 e!4677110)))

(declare-fun b!7924743 () Bool)

(assert (=> b!7924743 (= e!4677110 (inv!95689 (right!57194 (right!57194 t!4440))))))

(assert (= (and d!2366299 c!1454970) b!7924741))

(assert (= (and d!2366299 (not c!1454970)) b!7924742))

(assert (= (and b!7924742 (not res!3144661)) b!7924743))

(declare-fun m!8304962 () Bool)

(assert (=> b!7924741 m!8304962))

(declare-fun m!8304964 () Bool)

(assert (=> b!7924743 m!8304964))

(assert (=> b!7924715 d!2366299))

(assert (=> b!7924610 d!2366271))

(assert (=> b!7924610 d!2366273))

(declare-fun d!2366301 () Bool)

(assert (=> d!2366301 (= (inv!95687 (xs!19284 (right!57194 t!4440))) (<= (size!43235 (innerList!15984 (xs!19284 (right!57194 t!4440)))) 2147483647))))

(declare-fun bs!1968713 () Bool)

(assert (= bs!1968713 d!2366301))

(declare-fun m!8304966 () Bool)

(assert (=> bs!1968713 m!8304966))

(assert (=> b!7924716 d!2366301))

(declare-fun d!2366303 () Bool)

(declare-fun res!3144662 () Bool)

(declare-fun e!4677111 () Bool)

(assert (=> d!2366303 (=> (not res!3144662) (not e!4677111))))

(assert (=> d!2366303 (= res!3144662 (<= (size!43235 (list!19400 (xs!19284 (right!57194 t!4440)))) 512))))

(assert (=> d!2366303 (= (inv!95689 (right!57194 t!4440)) e!4677111)))

(declare-fun b!7924744 () Bool)

(declare-fun res!3144663 () Bool)

(assert (=> b!7924744 (=> (not res!3144663) (not e!4677111))))

(assert (=> b!7924744 (= res!3144663 (= (csize!32023 (right!57194 t!4440)) (size!43235 (list!19400 (xs!19284 (right!57194 t!4440))))))))

(declare-fun b!7924745 () Bool)

(assert (=> b!7924745 (= e!4677111 (and (> (csize!32023 (right!57194 t!4440)) 0) (<= (csize!32023 (right!57194 t!4440)) 512)))))

(assert (= (and d!2366303 res!3144662) b!7924744))

(assert (= (and b!7924744 res!3144663) b!7924745))

(declare-fun m!8304968 () Bool)

(assert (=> d!2366303 m!8304968))

(assert (=> d!2366303 m!8304968))

(declare-fun m!8304970 () Bool)

(assert (=> d!2366303 m!8304970))

(assert (=> b!7924744 m!8304968))

(assert (=> b!7924744 m!8304968))

(assert (=> b!7924744 m!8304970))

(assert (=> b!7924636 d!2366303))

(declare-fun d!2366305 () Bool)

(assert (=> d!2366305 (= (height!2211 (left!56864 t!4440)) (ite ((_ is Empty!15896) (left!56864 t!4440)) 0 (ite ((_ is Leaf!30225) (left!56864 t!4440)) 1 (cheight!16107 (left!56864 t!4440)))))))

(assert (=> b!7924667 d!2366305))

(declare-fun d!2366307 () Bool)

(assert (=> d!2366307 (= (height!2211 (right!57194 t!4440)) (ite ((_ is Empty!15896) (right!57194 t!4440)) 0 (ite ((_ is Leaf!30225) (right!57194 t!4440)) 1 (cheight!16107 (right!57194 t!4440)))))))

(assert (=> b!7924667 d!2366307))

(declare-fun d!2366309 () Bool)

(declare-fun res!3144664 () Bool)

(declare-fun e!4677112 () Bool)

(assert (=> d!2366309 (=> (not res!3144664) (not e!4677112))))

(assert (=> d!2366309 (= res!3144664 (<= (size!43235 (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1)))) 512))))

(assert (=> d!2366309 (= (inv!95689 (Leaf!30225 (fill!271 1 v!5484) 1)) e!4677112)))

(declare-fun b!7924746 () Bool)

(declare-fun res!3144665 () Bool)

(assert (=> b!7924746 (=> (not res!3144665) (not e!4677112))))

(assert (=> b!7924746 (= res!3144665 (= (csize!32023 (Leaf!30225 (fill!271 1 v!5484) 1)) (size!43235 (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(declare-fun b!7924747 () Bool)

(assert (=> b!7924747 (= e!4677112 (and (> (csize!32023 (Leaf!30225 (fill!271 1 v!5484) 1)) 0) (<= (csize!32023 (Leaf!30225 (fill!271 1 v!5484) 1)) 512)))))

(assert (= (and d!2366309 res!3144664) b!7924746))

(assert (= (and b!7924746 res!3144665) b!7924747))

(declare-fun m!8304972 () Bool)

(assert (=> d!2366309 m!8304972))

(assert (=> d!2366309 m!8304972))

(declare-fun m!8304974 () Bool)

(assert (=> d!2366309 m!8304974))

(assert (=> b!7924746 m!8304972))

(assert (=> b!7924746 m!8304972))

(assert (=> b!7924746 m!8304974))

(assert (=> b!7924678 d!2366309))

(declare-fun d!2366311 () Bool)

(declare-fun res!3144666 () Bool)

(declare-fun e!4677113 () Bool)

(assert (=> d!2366311 (=> (not res!3144666) (not e!4677113))))

(assert (=> d!2366311 (= res!3144666 (= (csize!32022 (left!56864 t!4440)) (+ (size!43236 (left!56864 (left!56864 t!4440))) (size!43236 (right!57194 (left!56864 t!4440))))))))

(assert (=> d!2366311 (= (inv!95688 (left!56864 t!4440)) e!4677113)))

(declare-fun b!7924748 () Bool)

(declare-fun res!3144667 () Bool)

(assert (=> b!7924748 (=> (not res!3144667) (not e!4677113))))

(assert (=> b!7924748 (= res!3144667 (and (not (= (left!56864 (left!56864 t!4440)) Empty!15896)) (not (= (right!57194 (left!56864 t!4440)) Empty!15896))))))

(declare-fun b!7924749 () Bool)

(declare-fun res!3144668 () Bool)

(assert (=> b!7924749 (=> (not res!3144668) (not e!4677113))))

(assert (=> b!7924749 (= res!3144668 (= (cheight!16107 (left!56864 t!4440)) (+ (max!0 (height!2211 (left!56864 (left!56864 t!4440))) (height!2211 (right!57194 (left!56864 t!4440)))) 1)))))

(declare-fun b!7924750 () Bool)

(assert (=> b!7924750 (= e!4677113 (<= 0 (cheight!16107 (left!56864 t!4440))))))

(assert (= (and d!2366311 res!3144666) b!7924748))

(assert (= (and b!7924748 res!3144667) b!7924749))

(assert (= (and b!7924749 res!3144668) b!7924750))

(declare-fun m!8304976 () Bool)

(assert (=> d!2366311 m!8304976))

(declare-fun m!8304978 () Bool)

(assert (=> d!2366311 m!8304978))

(declare-fun m!8304980 () Bool)

(assert (=> b!7924749 m!8304980))

(declare-fun m!8304982 () Bool)

(assert (=> b!7924749 m!8304982))

(assert (=> b!7924749 m!8304980))

(assert (=> b!7924749 m!8304982))

(declare-fun m!8304984 () Bool)

(assert (=> b!7924749 m!8304984))

(assert (=> b!7924631 d!2366311))

(declare-fun d!2366313 () Bool)

(declare-fun c!1454971 () Bool)

(assert (=> d!2366313 (= c!1454971 ((_ is Node!15896) (left!56864 (left!56864 t!4440))))))

(declare-fun e!4677114 () Bool)

(assert (=> d!2366313 (= (inv!95686 (left!56864 (left!56864 t!4440))) e!4677114)))

(declare-fun b!7924751 () Bool)

(assert (=> b!7924751 (= e!4677114 (inv!95688 (left!56864 (left!56864 t!4440))))))

(declare-fun b!7924752 () Bool)

(declare-fun e!4677115 () Bool)

(assert (=> b!7924752 (= e!4677114 e!4677115)))

(declare-fun res!3144669 () Bool)

(assert (=> b!7924752 (= res!3144669 (not ((_ is Leaf!30225) (left!56864 (left!56864 t!4440)))))))

(assert (=> b!7924752 (=> res!3144669 e!4677115)))

(declare-fun b!7924753 () Bool)

(assert (=> b!7924753 (= e!4677115 (inv!95689 (left!56864 (left!56864 t!4440))))))

(assert (= (and d!2366313 c!1454971) b!7924751))

(assert (= (and d!2366313 (not c!1454971)) b!7924752))

(assert (= (and b!7924752 (not res!3144669)) b!7924753))

(declare-fun m!8304986 () Bool)

(assert (=> b!7924751 m!8304986))

(declare-fun m!8304988 () Bool)

(assert (=> b!7924753 m!8304988))

(assert (=> b!7924709 d!2366313))

(declare-fun d!2366315 () Bool)

(declare-fun c!1454972 () Bool)

(assert (=> d!2366315 (= c!1454972 ((_ is Node!15896) (right!57194 (left!56864 t!4440))))))

(declare-fun e!4677116 () Bool)

(assert (=> d!2366315 (= (inv!95686 (right!57194 (left!56864 t!4440))) e!4677116)))

(declare-fun b!7924754 () Bool)

(assert (=> b!7924754 (= e!4677116 (inv!95688 (right!57194 (left!56864 t!4440))))))

(declare-fun b!7924755 () Bool)

(declare-fun e!4677117 () Bool)

(assert (=> b!7924755 (= e!4677116 e!4677117)))

(declare-fun res!3144670 () Bool)

(assert (=> b!7924755 (= res!3144670 (not ((_ is Leaf!30225) (right!57194 (left!56864 t!4440)))))))

(assert (=> b!7924755 (=> res!3144670 e!4677117)))

(declare-fun b!7924756 () Bool)

(assert (=> b!7924756 (= e!4677117 (inv!95689 (right!57194 (left!56864 t!4440))))))

(assert (= (and d!2366315 c!1454972) b!7924754))

(assert (= (and d!2366315 (not c!1454972)) b!7924755))

(assert (= (and b!7924755 (not res!3144670)) b!7924756))

(declare-fun m!8304990 () Bool)

(assert (=> b!7924754 m!8304990))

(declare-fun m!8304992 () Bool)

(assert (=> b!7924756 m!8304992))

(assert (=> b!7924709 d!2366315))

(declare-fun d!2366317 () Bool)

(assert (=> d!2366317 (= (inv!95687 (xs!19284 (left!56864 t!4440))) (<= (size!43235 (innerList!15984 (xs!19284 (left!56864 t!4440)))) 2147483647))))

(declare-fun bs!1968714 () Bool)

(assert (= bs!1968714 d!2366317))

(declare-fun m!8304994 () Bool)

(assert (=> bs!1968714 m!8304994))

(assert (=> b!7924710 d!2366317))

(declare-fun b!7924757 () Bool)

(declare-fun e!4677119 () Bool)

(declare-fun e!4677118 () Bool)

(assert (=> b!7924757 (= e!4677119 e!4677118)))

(declare-fun res!3144673 () Bool)

(assert (=> b!7924757 (=> (not res!3144673) (not e!4677118))))

(assert (=> b!7924757 (= res!3144673 (<= (- 1) (- (height!2211 (left!56864 (left!56864 t!4440))) (height!2211 (right!57194 (left!56864 t!4440))))))))

(declare-fun b!7924758 () Bool)

(declare-fun res!3144672 () Bool)

(assert (=> b!7924758 (=> (not res!3144672) (not e!4677118))))

(assert (=> b!7924758 (= res!3144672 (not (isEmpty!42764 (left!56864 (left!56864 t!4440)))))))

(declare-fun d!2366319 () Bool)

(declare-fun res!3144674 () Bool)

(assert (=> d!2366319 (=> res!3144674 e!4677119)))

(assert (=> d!2366319 (= res!3144674 (not ((_ is Node!15896) (left!56864 t!4440))))))

(assert (=> d!2366319 (= (isBalanced!4522 (left!56864 t!4440)) e!4677119)))

(declare-fun b!7924759 () Bool)

(declare-fun res!3144676 () Bool)

(assert (=> b!7924759 (=> (not res!3144676) (not e!4677118))))

(assert (=> b!7924759 (= res!3144676 (<= (- (height!2211 (left!56864 (left!56864 t!4440))) (height!2211 (right!57194 (left!56864 t!4440)))) 1))))

(declare-fun b!7924760 () Bool)

(assert (=> b!7924760 (= e!4677118 (not (isEmpty!42764 (right!57194 (left!56864 t!4440)))))))

(declare-fun b!7924761 () Bool)

(declare-fun res!3144675 () Bool)

(assert (=> b!7924761 (=> (not res!3144675) (not e!4677118))))

(assert (=> b!7924761 (= res!3144675 (isBalanced!4522 (left!56864 (left!56864 t!4440))))))

(declare-fun b!7924762 () Bool)

(declare-fun res!3144671 () Bool)

(assert (=> b!7924762 (=> (not res!3144671) (not e!4677118))))

(assert (=> b!7924762 (= res!3144671 (isBalanced!4522 (right!57194 (left!56864 t!4440))))))

(assert (= (and d!2366319 (not res!3144674)) b!7924757))

(assert (= (and b!7924757 res!3144673) b!7924759))

(assert (= (and b!7924759 res!3144676) b!7924761))

(assert (= (and b!7924761 res!3144675) b!7924762))

(assert (= (and b!7924762 res!3144671) b!7924758))

(assert (= (and b!7924758 res!3144672) b!7924760))

(declare-fun m!8304996 () Bool)

(assert (=> b!7924761 m!8304996))

(declare-fun m!8304998 () Bool)

(assert (=> b!7924762 m!8304998))

(assert (=> b!7924759 m!8304980))

(assert (=> b!7924759 m!8304982))

(declare-fun m!8305000 () Bool)

(assert (=> b!7924758 m!8305000))

(assert (=> b!7924757 m!8304980))

(assert (=> b!7924757 m!8304982))

(declare-fun m!8305002 () Bool)

(assert (=> b!7924760 m!8305002))

(assert (=> b!7924671 d!2366319))

(declare-fun d!2366321 () Bool)

(declare-fun res!3144677 () Bool)

(declare-fun e!4677120 () Bool)

(assert (=> d!2366321 (=> (not res!3144677) (not e!4677120))))

(assert (=> d!2366321 (= res!3144677 (= (csize!32022 (Leaf!30225 (fill!271 1 v!5484) 1)) (+ (size!43236 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (size!43236 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(assert (=> d!2366321 (= (inv!95688 (Leaf!30225 (fill!271 1 v!5484) 1)) e!4677120)))

(declare-fun b!7924763 () Bool)

(declare-fun res!3144678 () Bool)

(assert (=> b!7924763 (=> (not res!3144678) (not e!4677120))))

(assert (=> b!7924763 (= res!3144678 (and (not (= (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1)) Empty!15896)) (not (= (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1)) Empty!15896))))))

(declare-fun b!7924764 () Bool)

(declare-fun res!3144679 () Bool)

(assert (=> b!7924764 (=> (not res!3144679) (not e!4677120))))

(assert (=> b!7924764 (= res!3144679 (= (cheight!16107 (Leaf!30225 (fill!271 1 v!5484) 1)) (+ (max!0 (height!2211 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (height!2211 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1)))) 1)))))

(declare-fun b!7924765 () Bool)

(assert (=> b!7924765 (= e!4677120 (<= 0 (cheight!16107 (Leaf!30225 (fill!271 1 v!5484) 1))))))

(assert (= (and d!2366321 res!3144677) b!7924763))

(assert (= (and b!7924763 res!3144678) b!7924764))

(assert (= (and b!7924764 res!3144679) b!7924765))

(declare-fun m!8305004 () Bool)

(assert (=> d!2366321 m!8305004))

(declare-fun m!8305006 () Bool)

(assert (=> d!2366321 m!8305006))

(declare-fun m!8305008 () Bool)

(assert (=> b!7924764 m!8305008))

(declare-fun m!8305010 () Bool)

(assert (=> b!7924764 m!8305010))

(assert (=> b!7924764 m!8305008))

(assert (=> b!7924764 m!8305010))

(declare-fun m!8305012 () Bool)

(assert (=> b!7924764 m!8305012))

(assert (=> b!7924676 d!2366321))

(declare-fun b!7924766 () Bool)

(declare-fun e!4677122 () Bool)

(declare-fun e!4677121 () Bool)

(assert (=> b!7924766 (= e!4677122 e!4677121)))

(declare-fun res!3144682 () Bool)

(assert (=> b!7924766 (=> (not res!3144682) (not e!4677121))))

(assert (=> b!7924766 (= res!3144682 (<= (- 1) (- (height!2211 (left!56864 (right!57194 t!4440))) (height!2211 (right!57194 (right!57194 t!4440))))))))

(declare-fun b!7924767 () Bool)

(declare-fun res!3144681 () Bool)

(assert (=> b!7924767 (=> (not res!3144681) (not e!4677121))))

(assert (=> b!7924767 (= res!3144681 (not (isEmpty!42764 (left!56864 (right!57194 t!4440)))))))

(declare-fun d!2366323 () Bool)

(declare-fun res!3144683 () Bool)

(assert (=> d!2366323 (=> res!3144683 e!4677122)))

(assert (=> d!2366323 (= res!3144683 (not ((_ is Node!15896) (right!57194 t!4440))))))

(assert (=> d!2366323 (= (isBalanced!4522 (right!57194 t!4440)) e!4677122)))

(declare-fun b!7924768 () Bool)

(declare-fun res!3144685 () Bool)

(assert (=> b!7924768 (=> (not res!3144685) (not e!4677121))))

(assert (=> b!7924768 (= res!3144685 (<= (- (height!2211 (left!56864 (right!57194 t!4440))) (height!2211 (right!57194 (right!57194 t!4440)))) 1))))

(declare-fun b!7924769 () Bool)

(assert (=> b!7924769 (= e!4677121 (not (isEmpty!42764 (right!57194 (right!57194 t!4440)))))))

(declare-fun b!7924770 () Bool)

(declare-fun res!3144684 () Bool)

(assert (=> b!7924770 (=> (not res!3144684) (not e!4677121))))

(assert (=> b!7924770 (= res!3144684 (isBalanced!4522 (left!56864 (right!57194 t!4440))))))

(declare-fun b!7924771 () Bool)

(declare-fun res!3144680 () Bool)

(assert (=> b!7924771 (=> (not res!3144680) (not e!4677121))))

(assert (=> b!7924771 (= res!3144680 (isBalanced!4522 (right!57194 (right!57194 t!4440))))))

(assert (= (and d!2366323 (not res!3144683)) b!7924766))

(assert (= (and b!7924766 res!3144682) b!7924768))

(assert (= (and b!7924768 res!3144685) b!7924770))

(assert (= (and b!7924770 res!3144684) b!7924771))

(assert (= (and b!7924771 res!3144680) b!7924767))

(assert (= (and b!7924767 res!3144681) b!7924769))

(declare-fun m!8305014 () Bool)

(assert (=> b!7924770 m!8305014))

(declare-fun m!8305016 () Bool)

(assert (=> b!7924771 m!8305016))

(assert (=> b!7924768 m!8304948))

(assert (=> b!7924768 m!8304950))

(declare-fun m!8305018 () Bool)

(assert (=> b!7924767 m!8305018))

(assert (=> b!7924766 m!8304948))

(assert (=> b!7924766 m!8304950))

(declare-fun m!8305020 () Bool)

(assert (=> b!7924769 m!8305020))

(assert (=> b!7924672 d!2366323))

(declare-fun d!2366325 () Bool)

(declare-fun res!3144686 () Bool)

(declare-fun e!4677123 () Bool)

(assert (=> d!2366325 (=> (not res!3144686) (not e!4677123))))

(assert (=> d!2366325 (= res!3144686 (<= (size!43235 (list!19400 (xs!19284 t!4440))) 512))))

(assert (=> d!2366325 (= (inv!95689 t!4440) e!4677123)))

(declare-fun b!7924772 () Bool)

(declare-fun res!3144687 () Bool)

(assert (=> b!7924772 (=> (not res!3144687) (not e!4677123))))

(assert (=> b!7924772 (= res!3144687 (= (csize!32023 t!4440) (size!43235 (list!19400 (xs!19284 t!4440)))))))

(declare-fun b!7924773 () Bool)

(assert (=> b!7924773 (= e!4677123 (and (> (csize!32023 t!4440) 0) (<= (csize!32023 t!4440) 512)))))

(assert (= (and d!2366325 res!3144686) b!7924772))

(assert (= (and b!7924772 res!3144687) b!7924773))

(declare-fun m!8305022 () Bool)

(assert (=> d!2366325 m!8305022))

(assert (=> d!2366325 m!8305022))

(declare-fun m!8305024 () Bool)

(assert (=> d!2366325 m!8305024))

(assert (=> b!7924772 m!8305022))

(assert (=> b!7924772 m!8305022))

(assert (=> b!7924772 m!8305024))

(assert (=> b!7924675 d!2366325))

(declare-fun d!2366327 () Bool)

(declare-fun lt!2692647 () Bool)

(declare-fun isEmpty!42766 (List!74566) Bool)

(declare-fun list!19403 (Conc!15896) List!74566)

(assert (=> d!2366327 (= lt!2692647 (isEmpty!42766 (list!19403 (left!56864 t!4440))))))

(assert (=> d!2366327 (= lt!2692647 (= (size!43236 (left!56864 t!4440)) 0))))

(assert (=> d!2366327 (= (isEmpty!42764 (left!56864 t!4440)) lt!2692647)))

(declare-fun bs!1968715 () Bool)

(assert (= bs!1968715 d!2366327))

(declare-fun m!8305026 () Bool)

(assert (=> bs!1968715 m!8305026))

(assert (=> bs!1968715 m!8305026))

(declare-fun m!8305028 () Bool)

(assert (=> bs!1968715 m!8305028))

(declare-fun m!8305030 () Bool)

(assert (=> bs!1968715 m!8305030))

(assert (=> b!7924668 d!2366327))

(declare-fun d!2366329 () Bool)

(declare-fun lt!2692650 () Int)

(assert (=> d!2366329 (>= lt!2692650 0)))

(declare-fun e!4677126 () Int)

(assert (=> d!2366329 (= lt!2692650 e!4677126)))

(declare-fun c!1454975 () Bool)

(assert (=> d!2366329 (= c!1454975 ((_ is Nil!74442) (innerList!15984 (xs!19284 t!4440))))))

(assert (=> d!2366329 (= (size!43235 (innerList!15984 (xs!19284 t!4440))) lt!2692650)))

(declare-fun b!7924778 () Bool)

(assert (=> b!7924778 (= e!4677126 0)))

(declare-fun b!7924779 () Bool)

(assert (=> b!7924779 (= e!4677126 (+ 1 (size!43235 (t!390155 (innerList!15984 (xs!19284 t!4440))))))))

(assert (= (and d!2366329 c!1454975) b!7924778))

(assert (= (and d!2366329 (not c!1454975)) b!7924779))

(declare-fun m!8305032 () Bool)

(assert (=> b!7924779 m!8305032))

(assert (=> d!2366267 d!2366329))

(declare-fun d!2366331 () Bool)

(declare-fun e!4677131 () Bool)

(assert (=> d!2366331 e!4677131))

(declare-fun res!3144690 () Bool)

(assert (=> d!2366331 (=> (not res!3144690) (not e!4677131))))

(declare-fun lt!2692655 () List!74566)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15778 (List!74566) (InoxSet T!145762))

(assert (=> d!2366331 (= res!3144690 (= (content!15778 lt!2692655) (ite (<= 1 0) ((as const (Array T!145762 Bool)) false) (store ((as const (Array T!145762 Bool)) false) v!5484 true))))))

(declare-fun e!4677132 () List!74566)

(assert (=> d!2366331 (= lt!2692655 e!4677132)))

(declare-fun c!1454978 () Bool)

(assert (=> d!2366331 (= c!1454978 (<= 1 0))))

(assert (=> d!2366331 (= (fill!273 1 v!5484) lt!2692655)))

(declare-fun b!7924786 () Bool)

(assert (=> b!7924786 (= e!4677132 Nil!74442)))

(declare-fun b!7924787 () Bool)

(assert (=> b!7924787 (= e!4677132 (Cons!74442 v!5484 (fill!273 (- 1 1) v!5484)))))

(declare-fun b!7924788 () Bool)

(assert (=> b!7924788 (= e!4677131 (= (size!43235 lt!2692655) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2366331 c!1454978) b!7924786))

(assert (= (and d!2366331 (not c!1454978)) b!7924787))

(assert (= (and d!2366331 res!3144690) b!7924788))

(declare-fun m!8305034 () Bool)

(assert (=> d!2366331 m!8305034))

(declare-fun m!8305036 () Bool)

(assert (=> d!2366331 m!8305036))

(declare-fun m!8305038 () Bool)

(assert (=> b!7924787 m!8305038))

(declare-fun m!8305040 () Bool)

(assert (=> b!7924788 m!8305040))

(assert (=> d!2366287 d!2366331))

(declare-fun d!2366335 () Bool)

(declare-fun _$14!1615 () IArray!31853)

(assert (=> d!2366335 (= _$14!1615 (IArray!31854 (fill!273 1 v!5484)))))

(declare-fun e!4677135 () Bool)

(assert (=> d!2366335 (and (inv!95687 _$14!1615) e!4677135)))

(assert (=> d!2366335 (= (choose!59822 1 v!5484) _$14!1615)))

(declare-fun b!7924791 () Bool)

(declare-fun tp!2358359 () Bool)

(assert (=> b!7924791 (= e!4677135 tp!2358359)))

(assert (= d!2366335 b!7924791))

(assert (=> d!2366335 m!8304916))

(declare-fun m!8305054 () Bool)

(assert (=> d!2366335 m!8305054))

(assert (=> d!2366287 d!2366335))

(assert (=> b!7924669 d!2366305))

(assert (=> b!7924669 d!2366307))

(declare-fun d!2366341 () Bool)

(declare-fun lt!2692660 () Bool)

(assert (=> d!2366341 (= lt!2692660 (isEmpty!42766 (list!19403 (right!57194 t!4440))))))

(assert (=> d!2366341 (= lt!2692660 (= (size!43236 (right!57194 t!4440)) 0))))

(assert (=> d!2366341 (= (isEmpty!42764 (right!57194 t!4440)) lt!2692660)))

(declare-fun bs!1968718 () Bool)

(assert (= bs!1968718 d!2366341))

(declare-fun m!8305056 () Bool)

(assert (=> bs!1968718 m!8305056))

(assert (=> bs!1968718 m!8305056))

(declare-fun m!8305058 () Bool)

(assert (=> bs!1968718 m!8305058))

(declare-fun m!8305060 () Bool)

(assert (=> bs!1968718 m!8305060))

(assert (=> b!7924670 d!2366341))

(declare-fun d!2366343 () Bool)

(declare-fun res!3144691 () Bool)

(declare-fun e!4677138 () Bool)

(assert (=> d!2366343 (=> (not res!3144691) (not e!4677138))))

(assert (=> d!2366343 (= res!3144691 (= (csize!32022 t!4440) (+ (size!43236 (left!56864 t!4440)) (size!43236 (right!57194 t!4440)))))))

(assert (=> d!2366343 (= (inv!95688 t!4440) e!4677138)))

(declare-fun b!7924796 () Bool)

(declare-fun res!3144692 () Bool)

(assert (=> b!7924796 (=> (not res!3144692) (not e!4677138))))

(assert (=> b!7924796 (= res!3144692 (and (not (= (left!56864 t!4440) Empty!15896)) (not (= (right!57194 t!4440) Empty!15896))))))

(declare-fun b!7924797 () Bool)

(declare-fun res!3144693 () Bool)

(assert (=> b!7924797 (=> (not res!3144693) (not e!4677138))))

(assert (=> b!7924797 (= res!3144693 (= (cheight!16107 t!4440) (+ (max!0 (height!2211 (left!56864 t!4440)) (height!2211 (right!57194 t!4440))) 1)))))

(declare-fun b!7924798 () Bool)

(assert (=> b!7924798 (= e!4677138 (<= 0 (cheight!16107 t!4440)))))

(assert (= (and d!2366343 res!3144691) b!7924796))

(assert (= (and b!7924796 res!3144692) b!7924797))

(assert (= (and b!7924797 res!3144693) b!7924798))

(assert (=> d!2366343 m!8305030))

(assert (=> d!2366343 m!8305060))

(assert (=> b!7924797 m!8304888))

(assert (=> b!7924797 m!8304890))

(assert (=> b!7924797 m!8304888))

(assert (=> b!7924797 m!8304890))

(declare-fun m!8305062 () Bool)

(assert (=> b!7924797 m!8305062))

(assert (=> b!7924673 d!2366343))

(declare-fun b!7924799 () Bool)

(declare-fun tp!2358361 () Bool)

(declare-fun tp!2358362 () Bool)

(declare-fun e!4677139 () Bool)

(assert (=> b!7924799 (= e!4677139 (and (inv!95686 (left!56864 (left!56864 (left!56864 t!4440)))) tp!2358361 (inv!95686 (right!57194 (left!56864 (left!56864 t!4440)))) tp!2358362))))

(declare-fun b!7924801 () Bool)

(declare-fun e!4677140 () Bool)

(declare-fun tp!2358360 () Bool)

(assert (=> b!7924801 (= e!4677140 tp!2358360)))

(declare-fun b!7924800 () Bool)

(assert (=> b!7924800 (= e!4677139 (and (inv!95687 (xs!19284 (left!56864 (left!56864 t!4440)))) e!4677140))))

(assert (=> b!7924709 (= tp!2358346 (and (inv!95686 (left!56864 (left!56864 t!4440))) e!4677139))))

(assert (= (and b!7924709 ((_ is Node!15896) (left!56864 (left!56864 t!4440)))) b!7924799))

(assert (= b!7924800 b!7924801))

(assert (= (and b!7924709 ((_ is Leaf!30225) (left!56864 (left!56864 t!4440)))) b!7924800))

(declare-fun m!8305064 () Bool)

(assert (=> b!7924799 m!8305064))

(declare-fun m!8305066 () Bool)

(assert (=> b!7924799 m!8305066))

(declare-fun m!8305068 () Bool)

(assert (=> b!7924800 m!8305068))

(assert (=> b!7924709 m!8304932))

(declare-fun e!4677142 () Bool)

(declare-fun b!7924804 () Bool)

(declare-fun tp!2358365 () Bool)

(declare-fun tp!2358364 () Bool)

(assert (=> b!7924804 (= e!4677142 (and (inv!95686 (left!56864 (right!57194 (left!56864 t!4440)))) tp!2358364 (inv!95686 (right!57194 (right!57194 (left!56864 t!4440)))) tp!2358365))))

(declare-fun b!7924806 () Bool)

(declare-fun e!4677143 () Bool)

(declare-fun tp!2358363 () Bool)

(assert (=> b!7924806 (= e!4677143 tp!2358363)))

(declare-fun b!7924805 () Bool)

(assert (=> b!7924805 (= e!4677142 (and (inv!95687 (xs!19284 (right!57194 (left!56864 t!4440)))) e!4677143))))

(assert (=> b!7924709 (= tp!2358347 (and (inv!95686 (right!57194 (left!56864 t!4440))) e!4677142))))

(assert (= (and b!7924709 ((_ is Node!15896) (right!57194 (left!56864 t!4440)))) b!7924804))

(assert (= b!7924805 b!7924806))

(assert (= (and b!7924709 ((_ is Leaf!30225) (right!57194 (left!56864 t!4440)))) b!7924805))

(declare-fun m!8305072 () Bool)

(assert (=> b!7924804 m!8305072))

(declare-fun m!8305074 () Bool)

(assert (=> b!7924804 m!8305074))

(declare-fun m!8305076 () Bool)

(assert (=> b!7924805 m!8305076))

(assert (=> b!7924709 m!8304934))

(declare-fun b!7924807 () Bool)

(declare-fun tp!2358368 () Bool)

(declare-fun tp!2358367 () Bool)

(declare-fun e!4677144 () Bool)

(assert (=> b!7924807 (= e!4677144 (and (inv!95686 (left!56864 (left!56864 (right!57194 t!4440)))) tp!2358367 (inv!95686 (right!57194 (left!56864 (right!57194 t!4440)))) tp!2358368))))

(declare-fun b!7924809 () Bool)

(declare-fun e!4677145 () Bool)

(declare-fun tp!2358366 () Bool)

(assert (=> b!7924809 (= e!4677145 tp!2358366)))

(declare-fun b!7924808 () Bool)

(assert (=> b!7924808 (= e!4677144 (and (inv!95687 (xs!19284 (left!56864 (right!57194 t!4440)))) e!4677145))))

(assert (=> b!7924715 (= tp!2358352 (and (inv!95686 (left!56864 (right!57194 t!4440))) e!4677144))))

(assert (= (and b!7924715 ((_ is Node!15896) (left!56864 (right!57194 t!4440)))) b!7924807))

(assert (= b!7924808 b!7924809))

(assert (= (and b!7924715 ((_ is Leaf!30225) (left!56864 (right!57194 t!4440)))) b!7924808))

(declare-fun m!8305078 () Bool)

(assert (=> b!7924807 m!8305078))

(declare-fun m!8305080 () Bool)

(assert (=> b!7924807 m!8305080))

(declare-fun m!8305082 () Bool)

(assert (=> b!7924808 m!8305082))

(assert (=> b!7924715 m!8304938))

(declare-fun e!4677146 () Bool)

(declare-fun tp!2358371 () Bool)

(declare-fun tp!2358370 () Bool)

(declare-fun b!7924810 () Bool)

(assert (=> b!7924810 (= e!4677146 (and (inv!95686 (left!56864 (right!57194 (right!57194 t!4440)))) tp!2358370 (inv!95686 (right!57194 (right!57194 (right!57194 t!4440)))) tp!2358371))))

(declare-fun b!7924812 () Bool)

(declare-fun e!4677147 () Bool)

(declare-fun tp!2358369 () Bool)

(assert (=> b!7924812 (= e!4677147 tp!2358369)))

(declare-fun b!7924811 () Bool)

(assert (=> b!7924811 (= e!4677146 (and (inv!95687 (xs!19284 (right!57194 (right!57194 t!4440)))) e!4677147))))

(assert (=> b!7924715 (= tp!2358353 (and (inv!95686 (right!57194 (right!57194 t!4440))) e!4677146))))

(assert (= (and b!7924715 ((_ is Node!15896) (right!57194 (right!57194 t!4440)))) b!7924810))

(assert (= b!7924811 b!7924812))

(assert (= (and b!7924715 ((_ is Leaf!30225) (right!57194 (right!57194 t!4440)))) b!7924811))

(declare-fun m!8305084 () Bool)

(assert (=> b!7924810 m!8305084))

(declare-fun m!8305086 () Bool)

(assert (=> b!7924810 m!8305086))

(declare-fun m!8305088 () Bool)

(assert (=> b!7924811 m!8305088))

(assert (=> b!7924715 m!8304940))

(declare-fun b!7924813 () Bool)

(declare-fun e!4677148 () Bool)

(declare-fun tp!2358372 () Bool)

(assert (=> b!7924813 (= e!4677148 (and tp_is_empty!53217 tp!2358372))))

(assert (=> b!7924711 (= tp!2358345 e!4677148)))

(assert (= (and b!7924711 ((_ is Cons!74442) (innerList!15984 (xs!19284 (left!56864 t!4440))))) b!7924813))

(declare-fun b!7924814 () Bool)

(declare-fun e!4677149 () Bool)

(declare-fun tp!2358373 () Bool)

(assert (=> b!7924814 (= e!4677149 (and tp_is_empty!53217 tp!2358373))))

(assert (=> b!7924717 (= tp!2358351 e!4677149)))

(assert (= (and b!7924717 ((_ is Cons!74442) (innerList!15984 (xs!19284 (right!57194 t!4440))))) b!7924814))

(declare-fun b!7924815 () Bool)

(declare-fun e!4677150 () Bool)

(declare-fun tp!2358374 () Bool)

(assert (=> b!7924815 (= e!4677150 (and tp_is_empty!53217 tp!2358374))))

(assert (=> b!7924722 (= tp!2358356 e!4677150)))

(assert (= (and b!7924722 ((_ is Cons!74442) (t!390155 (innerList!15984 (xs!19284 t!4440))))) b!7924815))

(check-sat (not b!7924766) (not b!7924743) (not b!7924769) (not d!2366303) (not b!7924797) (not b!7924787) (not b!7924812) (not b!7924764) (not b!7924799) (not d!2366317) (not b!7924814) (not b!7924770) (not b!7924811) (not b!7924754) tp_is_empty!53217 (not b!7924758) (not b!7924767) (not b!7924791) (not b!7924805) (not b!7924779) (not b!7924808) (not d!2366309) (not b!7924740) (not d!2366311) (not b!7924759) (not b!7924736) (not b!7924753) (not b!7924749) (not b!7924772) (not b!7924741) (not d!2366321) (not b!7924788) (not b!7924813) (not b!7924762) (not b!7924771) (not b!7924806) (not b!7924709) (not b!7924800) (not b!7924730) (not b!7924746) (not b!7924810) (not d!2366293) (not b!7924715) (not d!2366343) (not b!7924768) (not d!2366335) (not b!7924761) (not d!2366327) (not b!7924760) (not b!7924744) (not b!7924751) (not d!2366301) (not d!2366295) (not d!2366331) (not b!7924804) (not b!7924756) (not b!7924809) (not d!2366341) (not b!7924757) (not b!7924738) (not b!7924801) (not b!7924807) (not b!7924815) (not d!2366325))
(check-sat)
(get-model)

(declare-fun b!7924897 () Bool)

(declare-fun e!4677196 () Bool)

(declare-fun e!4677195 () Bool)

(assert (=> b!7924897 (= e!4677196 e!4677195)))

(declare-fun res!3144745 () Bool)

(assert (=> b!7924897 (=> (not res!3144745) (not e!4677195))))

(assert (=> b!7924897 (= res!3144745 (<= (- 1) (- (height!2211 (left!56864 (right!57194 (left!56864 t!4440)))) (height!2211 (right!57194 (right!57194 (left!56864 t!4440)))))))))

(declare-fun b!7924898 () Bool)

(declare-fun res!3144744 () Bool)

(assert (=> b!7924898 (=> (not res!3144744) (not e!4677195))))

(assert (=> b!7924898 (= res!3144744 (not (isEmpty!42764 (left!56864 (right!57194 (left!56864 t!4440))))))))

(declare-fun d!2366385 () Bool)

(declare-fun res!3144746 () Bool)

(assert (=> d!2366385 (=> res!3144746 e!4677196)))

(assert (=> d!2366385 (= res!3144746 (not ((_ is Node!15896) (right!57194 (left!56864 t!4440)))))))

(assert (=> d!2366385 (= (isBalanced!4522 (right!57194 (left!56864 t!4440))) e!4677196)))

(declare-fun b!7924899 () Bool)

(declare-fun res!3144748 () Bool)

(assert (=> b!7924899 (=> (not res!3144748) (not e!4677195))))

(assert (=> b!7924899 (= res!3144748 (<= (- (height!2211 (left!56864 (right!57194 (left!56864 t!4440)))) (height!2211 (right!57194 (right!57194 (left!56864 t!4440))))) 1))))

(declare-fun b!7924900 () Bool)

(assert (=> b!7924900 (= e!4677195 (not (isEmpty!42764 (right!57194 (right!57194 (left!56864 t!4440))))))))

(declare-fun b!7924901 () Bool)

(declare-fun res!3144747 () Bool)

(assert (=> b!7924901 (=> (not res!3144747) (not e!4677195))))

(assert (=> b!7924901 (= res!3144747 (isBalanced!4522 (left!56864 (right!57194 (left!56864 t!4440)))))))

(declare-fun b!7924902 () Bool)

(declare-fun res!3144743 () Bool)

(assert (=> b!7924902 (=> (not res!3144743) (not e!4677195))))

(assert (=> b!7924902 (= res!3144743 (isBalanced!4522 (right!57194 (right!57194 (left!56864 t!4440)))))))

(assert (= (and d!2366385 (not res!3144746)) b!7924897))

(assert (= (and b!7924897 res!3144745) b!7924899))

(assert (= (and b!7924899 res!3144748) b!7924901))

(assert (= (and b!7924901 res!3144747) b!7924902))

(assert (= (and b!7924902 res!3144743) b!7924898))

(assert (= (and b!7924898 res!3144744) b!7924900))

(declare-fun m!8305208 () Bool)

(assert (=> b!7924901 m!8305208))

(declare-fun m!8305210 () Bool)

(assert (=> b!7924902 m!8305210))

(declare-fun m!8305212 () Bool)

(assert (=> b!7924899 m!8305212))

(declare-fun m!8305214 () Bool)

(assert (=> b!7924899 m!8305214))

(declare-fun m!8305216 () Bool)

(assert (=> b!7924898 m!8305216))

(assert (=> b!7924897 m!8305212))

(assert (=> b!7924897 m!8305214))

(declare-fun m!8305218 () Bool)

(assert (=> b!7924900 m!8305218))

(assert (=> b!7924762 d!2366385))

(declare-fun d!2366387 () Bool)

(assert (=> d!2366387 (= (height!2211 (left!56864 (right!57194 t!4440))) (ite ((_ is Empty!15896) (left!56864 (right!57194 t!4440))) 0 (ite ((_ is Leaf!30225) (left!56864 (right!57194 t!4440))) 1 (cheight!16107 (left!56864 (right!57194 t!4440))))))))

(assert (=> b!7924768 d!2366387))

(declare-fun d!2366389 () Bool)

(assert (=> d!2366389 (= (height!2211 (right!57194 (right!57194 t!4440))) (ite ((_ is Empty!15896) (right!57194 (right!57194 t!4440))) 0 (ite ((_ is Leaf!30225) (right!57194 (right!57194 t!4440))) 1 (cheight!16107 (right!57194 (right!57194 t!4440))))))))

(assert (=> b!7924768 d!2366389))

(declare-fun d!2366391 () Bool)

(declare-fun lt!2692665 () Bool)

(assert (=> d!2366391 (= lt!2692665 (isEmpty!42766 (list!19403 (right!57194 (left!56864 t!4440)))))))

(assert (=> d!2366391 (= lt!2692665 (= (size!43236 (right!57194 (left!56864 t!4440))) 0))))

(assert (=> d!2366391 (= (isEmpty!42764 (right!57194 (left!56864 t!4440))) lt!2692665)))

(declare-fun bs!1968721 () Bool)

(assert (= bs!1968721 d!2366391))

(declare-fun m!8305220 () Bool)

(assert (=> bs!1968721 m!8305220))

(assert (=> bs!1968721 m!8305220))

(declare-fun m!8305222 () Bool)

(assert (=> bs!1968721 m!8305222))

(assert (=> bs!1968721 m!8304978))

(assert (=> b!7924760 d!2366391))

(assert (=> d!2366335 d!2366331))

(declare-fun d!2366393 () Bool)

(assert (=> d!2366393 (= (inv!95687 _$14!1615) (<= (size!43235 (innerList!15984 _$14!1615)) 2147483647))))

(declare-fun bs!1968722 () Bool)

(assert (= bs!1968722 d!2366393))

(declare-fun m!8305224 () Bool)

(assert (=> bs!1968722 m!8305224))

(assert (=> d!2366335 d!2366393))

(declare-fun d!2366395 () Bool)

(declare-fun c!1454989 () Bool)

(assert (=> d!2366395 (= c!1454989 ((_ is Node!15896) (left!56864 (right!57194 (right!57194 t!4440)))))))

(declare-fun e!4677197 () Bool)

(assert (=> d!2366395 (= (inv!95686 (left!56864 (right!57194 (right!57194 t!4440)))) e!4677197)))

(declare-fun b!7924903 () Bool)

(assert (=> b!7924903 (= e!4677197 (inv!95688 (left!56864 (right!57194 (right!57194 t!4440)))))))

(declare-fun b!7924904 () Bool)

(declare-fun e!4677198 () Bool)

(assert (=> b!7924904 (= e!4677197 e!4677198)))

(declare-fun res!3144749 () Bool)

(assert (=> b!7924904 (= res!3144749 (not ((_ is Leaf!30225) (left!56864 (right!57194 (right!57194 t!4440))))))))

(assert (=> b!7924904 (=> res!3144749 e!4677198)))

(declare-fun b!7924905 () Bool)

(assert (=> b!7924905 (= e!4677198 (inv!95689 (left!56864 (right!57194 (right!57194 t!4440)))))))

(assert (= (and d!2366395 c!1454989) b!7924903))

(assert (= (and d!2366395 (not c!1454989)) b!7924904))

(assert (= (and b!7924904 (not res!3144749)) b!7924905))

(declare-fun m!8305226 () Bool)

(assert (=> b!7924903 m!8305226))

(declare-fun m!8305228 () Bool)

(assert (=> b!7924905 m!8305228))

(assert (=> b!7924810 d!2366395))

(declare-fun d!2366397 () Bool)

(declare-fun c!1454990 () Bool)

(assert (=> d!2366397 (= c!1454990 ((_ is Node!15896) (right!57194 (right!57194 (right!57194 t!4440)))))))

(declare-fun e!4677199 () Bool)

(assert (=> d!2366397 (= (inv!95686 (right!57194 (right!57194 (right!57194 t!4440)))) e!4677199)))

(declare-fun b!7924906 () Bool)

(assert (=> b!7924906 (= e!4677199 (inv!95688 (right!57194 (right!57194 (right!57194 t!4440)))))))

(declare-fun b!7924907 () Bool)

(declare-fun e!4677200 () Bool)

(assert (=> b!7924907 (= e!4677199 e!4677200)))

(declare-fun res!3144750 () Bool)

(assert (=> b!7924907 (= res!3144750 (not ((_ is Leaf!30225) (right!57194 (right!57194 (right!57194 t!4440))))))))

(assert (=> b!7924907 (=> res!3144750 e!4677200)))

(declare-fun b!7924908 () Bool)

(assert (=> b!7924908 (= e!4677200 (inv!95689 (right!57194 (right!57194 (right!57194 t!4440)))))))

(assert (= (and d!2366397 c!1454990) b!7924906))

(assert (= (and d!2366397 (not c!1454990)) b!7924907))

(assert (= (and b!7924907 (not res!3144750)) b!7924908))

(declare-fun m!8305230 () Bool)

(assert (=> b!7924906 m!8305230))

(declare-fun m!8305232 () Bool)

(assert (=> b!7924908 m!8305232))

(assert (=> b!7924810 d!2366397))

(declare-fun b!7924909 () Bool)

(declare-fun e!4677202 () Bool)

(declare-fun e!4677201 () Bool)

(assert (=> b!7924909 (= e!4677202 e!4677201)))

(declare-fun res!3144753 () Bool)

(assert (=> b!7924909 (=> (not res!3144753) (not e!4677201))))

(assert (=> b!7924909 (= res!3144753 (<= (- 1) (- (height!2211 (left!56864 (left!56864 (right!57194 t!4440)))) (height!2211 (right!57194 (left!56864 (right!57194 t!4440)))))))))

(declare-fun b!7924910 () Bool)

(declare-fun res!3144752 () Bool)

(assert (=> b!7924910 (=> (not res!3144752) (not e!4677201))))

(assert (=> b!7924910 (= res!3144752 (not (isEmpty!42764 (left!56864 (left!56864 (right!57194 t!4440))))))))

(declare-fun d!2366399 () Bool)

(declare-fun res!3144754 () Bool)

(assert (=> d!2366399 (=> res!3144754 e!4677202)))

(assert (=> d!2366399 (= res!3144754 (not ((_ is Node!15896) (left!56864 (right!57194 t!4440)))))))

(assert (=> d!2366399 (= (isBalanced!4522 (left!56864 (right!57194 t!4440))) e!4677202)))

(declare-fun b!7924911 () Bool)

(declare-fun res!3144756 () Bool)

(assert (=> b!7924911 (=> (not res!3144756) (not e!4677201))))

(assert (=> b!7924911 (= res!3144756 (<= (- (height!2211 (left!56864 (left!56864 (right!57194 t!4440)))) (height!2211 (right!57194 (left!56864 (right!57194 t!4440))))) 1))))

(declare-fun b!7924912 () Bool)

(assert (=> b!7924912 (= e!4677201 (not (isEmpty!42764 (right!57194 (left!56864 (right!57194 t!4440))))))))

(declare-fun b!7924913 () Bool)

(declare-fun res!3144755 () Bool)

(assert (=> b!7924913 (=> (not res!3144755) (not e!4677201))))

(assert (=> b!7924913 (= res!3144755 (isBalanced!4522 (left!56864 (left!56864 (right!57194 t!4440)))))))

(declare-fun b!7924914 () Bool)

(declare-fun res!3144751 () Bool)

(assert (=> b!7924914 (=> (not res!3144751) (not e!4677201))))

(assert (=> b!7924914 (= res!3144751 (isBalanced!4522 (right!57194 (left!56864 (right!57194 t!4440)))))))

(assert (= (and d!2366399 (not res!3144754)) b!7924909))

(assert (= (and b!7924909 res!3144753) b!7924911))

(assert (= (and b!7924911 res!3144756) b!7924913))

(assert (= (and b!7924913 res!3144755) b!7924914))

(assert (= (and b!7924914 res!3144751) b!7924910))

(assert (= (and b!7924910 res!3144752) b!7924912))

(declare-fun m!8305234 () Bool)

(assert (=> b!7924913 m!8305234))

(declare-fun m!8305236 () Bool)

(assert (=> b!7924914 m!8305236))

(declare-fun m!8305238 () Bool)

(assert (=> b!7924911 m!8305238))

(declare-fun m!8305240 () Bool)

(assert (=> b!7924911 m!8305240))

(declare-fun m!8305242 () Bool)

(assert (=> b!7924910 m!8305242))

(assert (=> b!7924909 m!8305238))

(assert (=> b!7924909 m!8305240))

(declare-fun m!8305244 () Bool)

(assert (=> b!7924912 m!8305244))

(assert (=> b!7924770 d!2366399))

(declare-fun d!2366401 () Bool)

(assert (=> d!2366401 (= (inv!95687 (xs!19284 (left!56864 (right!57194 t!4440)))) (<= (size!43235 (innerList!15984 (xs!19284 (left!56864 (right!57194 t!4440))))) 2147483647))))

(declare-fun bs!1968723 () Bool)

(assert (= bs!1968723 d!2366401))

(declare-fun m!8305246 () Bool)

(assert (=> bs!1968723 m!8305246))

(assert (=> b!7924808 d!2366401))

(declare-fun d!2366403 () Bool)

(assert (=> d!2366403 (= (isEmpty!42766 (list!19403 (right!57194 t!4440))) ((_ is Nil!74442) (list!19403 (right!57194 t!4440))))))

(assert (=> d!2366341 d!2366403))

(declare-fun b!7924923 () Bool)

(declare-fun e!4677207 () List!74566)

(assert (=> b!7924923 (= e!4677207 Nil!74442)))

(declare-fun b!7924924 () Bool)

(declare-fun e!4677208 () List!74566)

(assert (=> b!7924924 (= e!4677207 e!4677208)))

(declare-fun c!1454996 () Bool)

(assert (=> b!7924924 (= c!1454996 ((_ is Leaf!30225) (right!57194 t!4440)))))

(declare-fun b!7924925 () Bool)

(assert (=> b!7924925 (= e!4677208 (list!19400 (xs!19284 (right!57194 t!4440))))))

(declare-fun d!2366405 () Bool)

(declare-fun c!1454995 () Bool)

(assert (=> d!2366405 (= c!1454995 ((_ is Empty!15896) (right!57194 t!4440)))))

(assert (=> d!2366405 (= (list!19403 (right!57194 t!4440)) e!4677207)))

(declare-fun b!7924926 () Bool)

(declare-fun ++!18254 (List!74566 List!74566) List!74566)

(assert (=> b!7924926 (= e!4677208 (++!18254 (list!19403 (left!56864 (right!57194 t!4440))) (list!19403 (right!57194 (right!57194 t!4440)))))))

(assert (= (and d!2366405 c!1454995) b!7924923))

(assert (= (and d!2366405 (not c!1454995)) b!7924924))

(assert (= (and b!7924924 c!1454996) b!7924925))

(assert (= (and b!7924924 (not c!1454996)) b!7924926))

(assert (=> b!7924925 m!8304968))

(declare-fun m!8305248 () Bool)

(assert (=> b!7924926 m!8305248))

(declare-fun m!8305250 () Bool)

(assert (=> b!7924926 m!8305250))

(assert (=> b!7924926 m!8305248))

(assert (=> b!7924926 m!8305250))

(declare-fun m!8305252 () Bool)

(assert (=> b!7924926 m!8305252))

(assert (=> d!2366341 d!2366405))

(declare-fun d!2366407 () Bool)

(declare-fun lt!2692668 () Int)

(assert (=> d!2366407 (= lt!2692668 (size!43235 (list!19403 (right!57194 t!4440))))))

(assert (=> d!2366407 (= lt!2692668 (ite ((_ is Empty!15896) (right!57194 t!4440)) 0 (ite ((_ is Leaf!30225) (right!57194 t!4440)) (csize!32023 (right!57194 t!4440)) (csize!32022 (right!57194 t!4440)))))))

(assert (=> d!2366407 (= (size!43236 (right!57194 t!4440)) lt!2692668)))

(declare-fun bs!1968724 () Bool)

(assert (= bs!1968724 d!2366407))

(assert (=> bs!1968724 m!8305056))

(assert (=> bs!1968724 m!8305056))

(declare-fun m!8305254 () Bool)

(assert (=> bs!1968724 m!8305254))

(assert (=> d!2366341 d!2366407))

(declare-fun d!2366409 () Bool)

(declare-fun res!3144757 () Bool)

(declare-fun e!4677209 () Bool)

(assert (=> d!2366409 (=> (not res!3144757) (not e!4677209))))

(assert (=> d!2366409 (= res!3144757 (= (csize!32022 (left!56864 (left!56864 t!4440))) (+ (size!43236 (left!56864 (left!56864 (left!56864 t!4440)))) (size!43236 (right!57194 (left!56864 (left!56864 t!4440)))))))))

(assert (=> d!2366409 (= (inv!95688 (left!56864 (left!56864 t!4440))) e!4677209)))

(declare-fun b!7924927 () Bool)

(declare-fun res!3144758 () Bool)

(assert (=> b!7924927 (=> (not res!3144758) (not e!4677209))))

(assert (=> b!7924927 (= res!3144758 (and (not (= (left!56864 (left!56864 (left!56864 t!4440))) Empty!15896)) (not (= (right!57194 (left!56864 (left!56864 t!4440))) Empty!15896))))))

(declare-fun b!7924928 () Bool)

(declare-fun res!3144759 () Bool)

(assert (=> b!7924928 (=> (not res!3144759) (not e!4677209))))

(assert (=> b!7924928 (= res!3144759 (= (cheight!16107 (left!56864 (left!56864 t!4440))) (+ (max!0 (height!2211 (left!56864 (left!56864 (left!56864 t!4440)))) (height!2211 (right!57194 (left!56864 (left!56864 t!4440))))) 1)))))

(declare-fun b!7924929 () Bool)

(assert (=> b!7924929 (= e!4677209 (<= 0 (cheight!16107 (left!56864 (left!56864 t!4440)))))))

(assert (= (and d!2366409 res!3144757) b!7924927))

(assert (= (and b!7924927 res!3144758) b!7924928))

(assert (= (and b!7924928 res!3144759) b!7924929))

(declare-fun m!8305256 () Bool)

(assert (=> d!2366409 m!8305256))

(declare-fun m!8305258 () Bool)

(assert (=> d!2366409 m!8305258))

(declare-fun m!8305260 () Bool)

(assert (=> b!7924928 m!8305260))

(declare-fun m!8305262 () Bool)

(assert (=> b!7924928 m!8305262))

(assert (=> b!7924928 m!8305260))

(assert (=> b!7924928 m!8305262))

(declare-fun m!8305264 () Bool)

(assert (=> b!7924928 m!8305264))

(assert (=> b!7924751 d!2366409))

(declare-fun d!2366411 () Bool)

(declare-fun lt!2692669 () Int)

(assert (=> d!2366411 (>= lt!2692669 0)))

(declare-fun e!4677210 () Int)

(assert (=> d!2366411 (= lt!2692669 e!4677210)))

(declare-fun c!1454997 () Bool)

(assert (=> d!2366411 (= c!1454997 ((_ is Nil!74442) (innerList!15984 (xs!19284 (left!56864 t!4440)))))))

(assert (=> d!2366411 (= (size!43235 (innerList!15984 (xs!19284 (left!56864 t!4440)))) lt!2692669)))

(declare-fun b!7924930 () Bool)

(assert (=> b!7924930 (= e!4677210 0)))

(declare-fun b!7924931 () Bool)

(assert (=> b!7924931 (= e!4677210 (+ 1 (size!43235 (t!390155 (innerList!15984 (xs!19284 (left!56864 t!4440)))))))))

(assert (= (and d!2366411 c!1454997) b!7924930))

(assert (= (and d!2366411 (not c!1454997)) b!7924931))

(declare-fun m!8305266 () Bool)

(assert (=> b!7924931 m!8305266))

(assert (=> d!2366317 d!2366411))

(declare-fun d!2366413 () Bool)

(declare-fun res!3144760 () Bool)

(declare-fun e!4677211 () Bool)

(assert (=> d!2366413 (=> (not res!3144760) (not e!4677211))))

(assert (=> d!2366413 (= res!3144760 (<= (size!43235 (list!19400 (xs!19284 (left!56864 (left!56864 t!4440))))) 512))))

(assert (=> d!2366413 (= (inv!95689 (left!56864 (left!56864 t!4440))) e!4677211)))

(declare-fun b!7924932 () Bool)

(declare-fun res!3144761 () Bool)

(assert (=> b!7924932 (=> (not res!3144761) (not e!4677211))))

(assert (=> b!7924932 (= res!3144761 (= (csize!32023 (left!56864 (left!56864 t!4440))) (size!43235 (list!19400 (xs!19284 (left!56864 (left!56864 t!4440)))))))))

(declare-fun b!7924933 () Bool)

(assert (=> b!7924933 (= e!4677211 (and (> (csize!32023 (left!56864 (left!56864 t!4440))) 0) (<= (csize!32023 (left!56864 (left!56864 t!4440))) 512)))))

(assert (= (and d!2366413 res!3144760) b!7924932))

(assert (= (and b!7924932 res!3144761) b!7924933))

(declare-fun m!8305268 () Bool)

(assert (=> d!2366413 m!8305268))

(assert (=> d!2366413 m!8305268))

(declare-fun m!8305270 () Bool)

(assert (=> d!2366413 m!8305270))

(assert (=> b!7924932 m!8305268))

(assert (=> b!7924932 m!8305268))

(assert (=> b!7924932 m!8305270))

(assert (=> b!7924753 d!2366413))

(declare-fun d!2366415 () Bool)

(declare-fun lt!2692670 () Int)

(assert (=> d!2366415 (>= lt!2692670 0)))

(declare-fun e!4677212 () Int)

(assert (=> d!2366415 (= lt!2692670 e!4677212)))

(declare-fun c!1454998 () Bool)

(assert (=> d!2366415 (= c!1454998 ((_ is Nil!74442) (list!19400 (xs!19284 t!4440))))))

(assert (=> d!2366415 (= (size!43235 (list!19400 (xs!19284 t!4440))) lt!2692670)))

(declare-fun b!7924934 () Bool)

(assert (=> b!7924934 (= e!4677212 0)))

(declare-fun b!7924935 () Bool)

(assert (=> b!7924935 (= e!4677212 (+ 1 (size!43235 (t!390155 (list!19400 (xs!19284 t!4440))))))))

(assert (= (and d!2366415 c!1454998) b!7924934))

(assert (= (and d!2366415 (not c!1454998)) b!7924935))

(declare-fun m!8305272 () Bool)

(assert (=> b!7924935 m!8305272))

(assert (=> d!2366325 d!2366415))

(declare-fun d!2366417 () Bool)

(assert (=> d!2366417 (= (list!19400 (xs!19284 t!4440)) (innerList!15984 (xs!19284 t!4440)))))

(assert (=> d!2366325 d!2366417))

(declare-fun d!2366419 () Bool)

(declare-fun lt!2692671 () Int)

(assert (=> d!2366419 (>= lt!2692671 0)))

(declare-fun e!4677213 () Int)

(assert (=> d!2366419 (= lt!2692671 e!4677213)))

(declare-fun c!1454999 () Bool)

(assert (=> d!2366419 (= c!1454999 ((_ is Nil!74442) (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1)))))))

(assert (=> d!2366419 (= (size!43235 (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1)))) lt!2692671)))

(declare-fun b!7924936 () Bool)

(assert (=> b!7924936 (= e!4677213 0)))

(declare-fun b!7924937 () Bool)

(assert (=> b!7924937 (= e!4677213 (+ 1 (size!43235 (t!390155 (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1)))))))))

(assert (= (and d!2366419 c!1454999) b!7924936))

(assert (= (and d!2366419 (not c!1454999)) b!7924937))

(declare-fun m!8305274 () Bool)

(assert (=> b!7924937 m!8305274))

(assert (=> d!2366309 d!2366419))

(declare-fun d!2366421 () Bool)

(assert (=> d!2366421 (= (list!19400 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1))) (innerList!15984 (xs!19284 (Leaf!30225 (fill!271 1 v!5484) 1))))))

(assert (=> d!2366309 d!2366421))

(declare-fun d!2366423 () Bool)

(declare-fun res!3144762 () Bool)

(declare-fun e!4677214 () Bool)

(assert (=> d!2366423 (=> (not res!3144762) (not e!4677214))))

(assert (=> d!2366423 (= res!3144762 (<= (size!43235 (list!19400 (xs!19284 (left!56864 (right!57194 t!4440))))) 512))))

(assert (=> d!2366423 (= (inv!95689 (left!56864 (right!57194 t!4440))) e!4677214)))

(declare-fun b!7924938 () Bool)

(declare-fun res!3144763 () Bool)

(assert (=> b!7924938 (=> (not res!3144763) (not e!4677214))))

(assert (=> b!7924938 (= res!3144763 (= (csize!32023 (left!56864 (right!57194 t!4440))) (size!43235 (list!19400 (xs!19284 (left!56864 (right!57194 t!4440)))))))))

(declare-fun b!7924939 () Bool)

(assert (=> b!7924939 (= e!4677214 (and (> (csize!32023 (left!56864 (right!57194 t!4440))) 0) (<= (csize!32023 (left!56864 (right!57194 t!4440))) 512)))))

(assert (= (and d!2366423 res!3144762) b!7924938))

(assert (= (and b!7924938 res!3144763) b!7924939))

(declare-fun m!8305276 () Bool)

(assert (=> d!2366423 m!8305276))

(assert (=> d!2366423 m!8305276))

(declare-fun m!8305278 () Bool)

(assert (=> d!2366423 m!8305278))

(assert (=> b!7924938 m!8305276))

(assert (=> b!7924938 m!8305276))

(assert (=> b!7924938 m!8305278))

(assert (=> b!7924740 d!2366423))

(declare-fun d!2366425 () Bool)

(declare-fun lt!2692672 () Int)

(assert (=> d!2366425 (>= lt!2692672 0)))

(declare-fun e!4677215 () Int)

(assert (=> d!2366425 (= lt!2692672 e!4677215)))

(declare-fun c!1455000 () Bool)

(assert (=> d!2366425 (= c!1455000 ((_ is Nil!74442) (t!390155 (innerList!15984 (xs!19284 t!4440)))))))

(assert (=> d!2366425 (= (size!43235 (t!390155 (innerList!15984 (xs!19284 t!4440)))) lt!2692672)))

(declare-fun b!7924940 () Bool)

(assert (=> b!7924940 (= e!4677215 0)))

(declare-fun b!7924941 () Bool)

(assert (=> b!7924941 (= e!4677215 (+ 1 (size!43235 (t!390155 (t!390155 (innerList!15984 (xs!19284 t!4440)))))))))

(assert (= (and d!2366425 c!1455000) b!7924940))

(assert (= (and d!2366425 (not c!1455000)) b!7924941))

(declare-fun m!8305280 () Bool)

(assert (=> b!7924941 m!8305280))

(assert (=> b!7924779 d!2366425))

(declare-fun d!2366427 () Bool)

(assert (=> d!2366427 (= (inv!95687 (xs!19284 (left!56864 (left!56864 t!4440)))) (<= (size!43235 (innerList!15984 (xs!19284 (left!56864 (left!56864 t!4440))))) 2147483647))))

(declare-fun bs!1968725 () Bool)

(assert (= bs!1968725 d!2366427))

(declare-fun m!8305282 () Bool)

(assert (=> bs!1968725 m!8305282))

(assert (=> b!7924800 d!2366427))

(declare-fun d!2366429 () Bool)

(declare-fun lt!2692673 () Int)

(assert (=> d!2366429 (= lt!2692673 (size!43235 (list!19403 (left!56864 (right!57194 t!4440)))))))

(assert (=> d!2366429 (= lt!2692673 (ite ((_ is Empty!15896) (left!56864 (right!57194 t!4440))) 0 (ite ((_ is Leaf!30225) (left!56864 (right!57194 t!4440))) (csize!32023 (left!56864 (right!57194 t!4440))) (csize!32022 (left!56864 (right!57194 t!4440))))))))

(assert (=> d!2366429 (= (size!43236 (left!56864 (right!57194 t!4440))) lt!2692673)))

(declare-fun bs!1968726 () Bool)

(assert (= bs!1968726 d!2366429))

(assert (=> bs!1968726 m!8305248))

(assert (=> bs!1968726 m!8305248))

(declare-fun m!8305284 () Bool)

(assert (=> bs!1968726 m!8305284))

(assert (=> d!2366293 d!2366429))

(declare-fun d!2366431 () Bool)

(declare-fun lt!2692674 () Int)

(assert (=> d!2366431 (= lt!2692674 (size!43235 (list!19403 (right!57194 (right!57194 t!4440)))))))

(assert (=> d!2366431 (= lt!2692674 (ite ((_ is Empty!15896) (right!57194 (right!57194 t!4440))) 0 (ite ((_ is Leaf!30225) (right!57194 (right!57194 t!4440))) (csize!32023 (right!57194 (right!57194 t!4440))) (csize!32022 (right!57194 (right!57194 t!4440))))))))

(assert (=> d!2366431 (= (size!43236 (right!57194 (right!57194 t!4440))) lt!2692674)))

(declare-fun bs!1968727 () Bool)

(assert (= bs!1968727 d!2366431))

(assert (=> bs!1968727 m!8305250))

(assert (=> bs!1968727 m!8305250))

(declare-fun m!8305286 () Bool)

(assert (=> bs!1968727 m!8305286))

(assert (=> d!2366293 d!2366431))

(declare-fun d!2366433 () Bool)

(declare-fun lt!2692675 () Int)

(assert (=> d!2366433 (>= lt!2692675 0)))

(declare-fun e!4677216 () Int)

(assert (=> d!2366433 (= lt!2692675 e!4677216)))

(declare-fun c!1455001 () Bool)

(assert (=> d!2366433 (= c!1455001 ((_ is Nil!74442) (innerList!15984 (xs!19284 (right!57194 t!4440)))))))

(assert (=> d!2366433 (= (size!43235 (innerList!15984 (xs!19284 (right!57194 t!4440)))) lt!2692675)))

(declare-fun b!7924942 () Bool)

(assert (=> b!7924942 (= e!4677216 0)))

(declare-fun b!7924943 () Bool)

(assert (=> b!7924943 (= e!4677216 (+ 1 (size!43235 (t!390155 (innerList!15984 (xs!19284 (right!57194 t!4440)))))))))

(assert (= (and d!2366433 c!1455001) b!7924942))

(assert (= (and d!2366433 (not c!1455001)) b!7924943))

(declare-fun m!8305288 () Bool)

(assert (=> b!7924943 m!8305288))

(assert (=> d!2366301 d!2366433))

(declare-fun d!2366435 () Bool)

(declare-fun res!3144764 () Bool)

(declare-fun e!4677217 () Bool)

(assert (=> d!2366435 (=> (not res!3144764) (not e!4677217))))

(assert (=> d!2366435 (= res!3144764 (= (csize!32022 (left!56864 (right!57194 t!4440))) (+ (size!43236 (left!56864 (left!56864 (right!57194 t!4440)))) (size!43236 (right!57194 (left!56864 (right!57194 t!4440)))))))))

(assert (=> d!2366435 (= (inv!95688 (left!56864 (right!57194 t!4440))) e!4677217)))

(declare-fun b!7924944 () Bool)

(declare-fun res!3144765 () Bool)

(assert (=> b!7924944 (=> (not res!3144765) (not e!4677217))))

(assert (=> b!7924944 (= res!3144765 (and (not (= (left!56864 (left!56864 (right!57194 t!4440))) Empty!15896)) (not (= (right!57194 (left!56864 (right!57194 t!4440))) Empty!15896))))))

(declare-fun b!7924945 () Bool)

(declare-fun res!3144766 () Bool)

(assert (=> b!7924945 (=> (not res!3144766) (not e!4677217))))

(assert (=> b!7924945 (= res!3144766 (= (cheight!16107 (left!56864 (right!57194 t!4440))) (+ (max!0 (height!2211 (left!56864 (left!56864 (right!57194 t!4440)))) (height!2211 (right!57194 (left!56864 (right!57194 t!4440))))) 1)))))

(declare-fun b!7924946 () Bool)

(assert (=> b!7924946 (= e!4677217 (<= 0 (cheight!16107 (left!56864 (right!57194 t!4440)))))))

(assert (= (and d!2366435 res!3144764) b!7924944))

(assert (= (and b!7924944 res!3144765) b!7924945))

(assert (= (and b!7924945 res!3144766) b!7924946))

(declare-fun m!8305290 () Bool)

(assert (=> d!2366435 m!8305290))

(declare-fun m!8305292 () Bool)

(assert (=> d!2366435 m!8305292))

(assert (=> b!7924945 m!8305238))

(assert (=> b!7924945 m!8305240))

(assert (=> b!7924945 m!8305238))

(assert (=> b!7924945 m!8305240))

(declare-fun m!8305294 () Bool)

(assert (=> b!7924945 m!8305294))

(assert (=> b!7924738 d!2366435))

(declare-fun d!2366437 () Bool)

(assert (=> d!2366437 (= (inv!95687 (xs!19284 (right!57194 (left!56864 t!4440)))) (<= (size!43235 (innerList!15984 (xs!19284 (right!57194 (left!56864 t!4440))))) 2147483647))))

(declare-fun bs!1968728 () Bool)

(assert (= bs!1968728 d!2366437))

(declare-fun m!8305296 () Bool)

(assert (=> bs!1968728 m!8305296))

(assert (=> b!7924805 d!2366437))

(declare-fun d!2366439 () Bool)

(assert (=> d!2366439 (= (max!0 (height!2211 (left!56864 (right!57194 t!4440))) (height!2211 (right!57194 (right!57194 t!4440)))) (ite (< (height!2211 (left!56864 (right!57194 t!4440))) (height!2211 (right!57194 (right!57194 t!4440)))) (height!2211 (right!57194 (right!57194 t!4440))) (height!2211 (left!56864 (right!57194 t!4440)))))))

(assert (=> b!7924730 d!2366439))

(assert (=> b!7924730 d!2366387))

(assert (=> b!7924730 d!2366389))

(declare-fun d!2366441 () Bool)

(declare-fun c!1455004 () Bool)

(assert (=> d!2366441 (= c!1455004 ((_ is Nil!74442) lt!2692655))))

(declare-fun e!4677220 () (InoxSet T!145762))

(assert (=> d!2366441 (= (content!15778 lt!2692655) e!4677220)))

(declare-fun b!7924951 () Bool)

(assert (=> b!7924951 (= e!4677220 ((as const (Array T!145762 Bool)) false))))

(declare-fun b!7924952 () Bool)

(assert (=> b!7924952 (= e!4677220 ((_ map or) (store ((as const (Array T!145762 Bool)) false) (h!80890 lt!2692655) true) (content!15778 (t!390155 lt!2692655))))))

(assert (= (and d!2366441 c!1455004) b!7924951))

(assert (= (and d!2366441 (not c!1455004)) b!7924952))

(declare-fun m!8305298 () Bool)

(assert (=> b!7924952 m!8305298))

(declare-fun m!8305300 () Bool)

(assert (=> b!7924952 m!8305300))

(assert (=> d!2366331 d!2366441))

(declare-fun d!2366443 () Bool)

(declare-fun res!3144767 () Bool)

(declare-fun e!4677221 () Bool)

(assert (=> d!2366443 (=> (not res!3144767) (not e!4677221))))

(assert (=> d!2366443 (= res!3144767 (= (csize!32022 (right!57194 (left!56864 t!4440))) (+ (size!43236 (left!56864 (right!57194 (left!56864 t!4440)))) (size!43236 (right!57194 (right!57194 (left!56864 t!4440)))))))))

(assert (=> d!2366443 (= (inv!95688 (right!57194 (left!56864 t!4440))) e!4677221)))

(declare-fun b!7924953 () Bool)

(declare-fun res!3144768 () Bool)

(assert (=> b!7924953 (=> (not res!3144768) (not e!4677221))))

(assert (=> b!7924953 (= res!3144768 (and (not (= (left!56864 (right!57194 (left!56864 t!4440))) Empty!15896)) (not (= (right!57194 (right!57194 (left!56864 t!4440))) Empty!15896))))))

(declare-fun b!7924954 () Bool)

(declare-fun res!3144769 () Bool)

(assert (=> b!7924954 (=> (not res!3144769) (not e!4677221))))

(assert (=> b!7924954 (= res!3144769 (= (cheight!16107 (right!57194 (left!56864 t!4440))) (+ (max!0 (height!2211 (left!56864 (right!57194 (left!56864 t!4440)))) (height!2211 (right!57194 (right!57194 (left!56864 t!4440))))) 1)))))

(declare-fun b!7924955 () Bool)

(assert (=> b!7924955 (= e!4677221 (<= 0 (cheight!16107 (right!57194 (left!56864 t!4440)))))))

(assert (= (and d!2366443 res!3144767) b!7924953))

(assert (= (and b!7924953 res!3144768) b!7924954))

(assert (= (and b!7924954 res!3144769) b!7924955))

(declare-fun m!8305302 () Bool)

(assert (=> d!2366443 m!8305302))

(declare-fun m!8305304 () Bool)

(assert (=> d!2366443 m!8305304))

(assert (=> b!7924954 m!8305212))

(assert (=> b!7924954 m!8305214))

(assert (=> b!7924954 m!8305212))

(assert (=> b!7924954 m!8305214))

(declare-fun m!8305306 () Bool)

(assert (=> b!7924954 m!8305306))

(assert (=> b!7924754 d!2366443))

(assert (=> b!7924766 d!2366387))

(assert (=> b!7924766 d!2366389))

(declare-fun d!2366445 () Bool)

(declare-fun lt!2692676 () Bool)

(assert (=> d!2366445 (= lt!2692676 (isEmpty!42766 (list!19403 (left!56864 (left!56864 t!4440)))))))

(assert (=> d!2366445 (= lt!2692676 (= (size!43236 (left!56864 (left!56864 t!4440))) 0))))

(assert (=> d!2366445 (= (isEmpty!42764 (left!56864 (left!56864 t!4440))) lt!2692676)))

(declare-fun bs!1968729 () Bool)

(assert (= bs!1968729 d!2366445))

(declare-fun m!8305308 () Bool)

(assert (=> bs!1968729 m!8305308))

(assert (=> bs!1968729 m!8305308))

(declare-fun m!8305310 () Bool)

(assert (=> bs!1968729 m!8305310))

(assert (=> bs!1968729 m!8304976))

(assert (=> b!7924758 d!2366445))

(declare-fun d!2366447 () Bool)

(declare-fun res!3144770 () Bool)

(declare-fun e!4677222 () Bool)

(assert (=> d!2366447 (=> (not res!3144770) (not e!4677222))))

(assert (=> d!2366447 (= res!3144770 (<= (size!43235 (list!19400 (xs!19284 (right!57194 (left!56864 t!4440))))) 512))))

(assert (=> d!2366447 (= (inv!95689 (right!57194 (left!56864 t!4440))) e!4677222)))

(declare-fun b!7924956 () Bool)

(declare-fun res!3144771 () Bool)

(assert (=> b!7924956 (=> (not res!3144771) (not e!4677222))))

(assert (=> b!7924956 (= res!3144771 (= (csize!32023 (right!57194 (left!56864 t!4440))) (size!43235 (list!19400 (xs!19284 (right!57194 (left!56864 t!4440)))))))))

(declare-fun b!7924957 () Bool)

(assert (=> b!7924957 (= e!4677222 (and (> (csize!32023 (right!57194 (left!56864 t!4440))) 0) (<= (csize!32023 (right!57194 (left!56864 t!4440))) 512)))))

(assert (= (and d!2366447 res!3144770) b!7924956))

(assert (= (and b!7924956 res!3144771) b!7924957))

(declare-fun m!8305312 () Bool)

(assert (=> d!2366447 m!8305312))

(assert (=> d!2366447 m!8305312))

(declare-fun m!8305314 () Bool)

(assert (=> d!2366447 m!8305314))

(assert (=> b!7924956 m!8305312))

(assert (=> b!7924956 m!8305312))

(assert (=> b!7924956 m!8305314))

(assert (=> b!7924756 d!2366447))

(assert (=> b!7924772 d!2366415))

(assert (=> b!7924772 d!2366417))

(assert (=> b!7924746 d!2366419))

(assert (=> b!7924746 d!2366421))

(declare-fun d!2366449 () Bool)

(declare-fun lt!2692677 () Int)

(assert (=> d!2366449 (= lt!2692677 (size!43235 (list!19403 (left!56864 (left!56864 t!4440)))))))

(assert (=> d!2366449 (= lt!2692677 (ite ((_ is Empty!15896) (left!56864 (left!56864 t!4440))) 0 (ite ((_ is Leaf!30225) (left!56864 (left!56864 t!4440))) (csize!32023 (left!56864 (left!56864 t!4440))) (csize!32022 (left!56864 (left!56864 t!4440))))))))

(assert (=> d!2366449 (= (size!43236 (left!56864 (left!56864 t!4440))) lt!2692677)))

(declare-fun bs!1968730 () Bool)

(assert (= bs!1968730 d!2366449))

(assert (=> bs!1968730 m!8305308))

(assert (=> bs!1968730 m!8305308))

(declare-fun m!8305316 () Bool)

(assert (=> bs!1968730 m!8305316))

(assert (=> d!2366311 d!2366449))

(declare-fun d!2366451 () Bool)

(declare-fun lt!2692678 () Int)

(assert (=> d!2366451 (= lt!2692678 (size!43235 (list!19403 (right!57194 (left!56864 t!4440)))))))

(assert (=> d!2366451 (= lt!2692678 (ite ((_ is Empty!15896) (right!57194 (left!56864 t!4440))) 0 (ite ((_ is Leaf!30225) (right!57194 (left!56864 t!4440))) (csize!32023 (right!57194 (left!56864 t!4440))) (csize!32022 (right!57194 (left!56864 t!4440))))))))

(assert (=> d!2366451 (= (size!43236 (right!57194 (left!56864 t!4440))) lt!2692678)))

(declare-fun bs!1968731 () Bool)

(assert (= bs!1968731 d!2366451))

(assert (=> bs!1968731 m!8305220))

(assert (=> bs!1968731 m!8305220))

(declare-fun m!8305318 () Bool)

(assert (=> bs!1968731 m!8305318))

(assert (=> d!2366311 d!2366451))

(declare-fun d!2366453 () Bool)

(assert (=> d!2366453 (= (isEmpty!42766 (list!19403 (left!56864 t!4440))) ((_ is Nil!74442) (list!19403 (left!56864 t!4440))))))

(assert (=> d!2366327 d!2366453))

(declare-fun b!7924958 () Bool)

(declare-fun e!4677223 () List!74566)

(assert (=> b!7924958 (= e!4677223 Nil!74442)))

(declare-fun b!7924959 () Bool)

(declare-fun e!4677224 () List!74566)

(assert (=> b!7924959 (= e!4677223 e!4677224)))

(declare-fun c!1455006 () Bool)

(assert (=> b!7924959 (= c!1455006 ((_ is Leaf!30225) (left!56864 t!4440)))))

(declare-fun b!7924960 () Bool)

(assert (=> b!7924960 (= e!4677224 (list!19400 (xs!19284 (left!56864 t!4440))))))

(declare-fun d!2366455 () Bool)

(declare-fun c!1455005 () Bool)

(assert (=> d!2366455 (= c!1455005 ((_ is Empty!15896) (left!56864 t!4440)))))

(assert (=> d!2366455 (= (list!19403 (left!56864 t!4440)) e!4677223)))

(declare-fun b!7924961 () Bool)

(assert (=> b!7924961 (= e!4677224 (++!18254 (list!19403 (left!56864 (left!56864 t!4440))) (list!19403 (right!57194 (left!56864 t!4440)))))))

(assert (= (and d!2366455 c!1455005) b!7924958))

(assert (= (and d!2366455 (not c!1455005)) b!7924959))

(assert (= (and b!7924959 c!1455006) b!7924960))

(assert (= (and b!7924959 (not c!1455006)) b!7924961))

(assert (=> b!7924960 m!8304954))

(assert (=> b!7924961 m!8305308))

(assert (=> b!7924961 m!8305220))

(assert (=> b!7924961 m!8305308))

(assert (=> b!7924961 m!8305220))

(declare-fun m!8305320 () Bool)

(assert (=> b!7924961 m!8305320))

(assert (=> d!2366327 d!2366455))

(declare-fun d!2366457 () Bool)

(declare-fun lt!2692679 () Int)

(assert (=> d!2366457 (= lt!2692679 (size!43235 (list!19403 (left!56864 t!4440))))))

(assert (=> d!2366457 (= lt!2692679 (ite ((_ is Empty!15896) (left!56864 t!4440)) 0 (ite ((_ is Leaf!30225) (left!56864 t!4440)) (csize!32023 (left!56864 t!4440)) (csize!32022 (left!56864 t!4440)))))))

(assert (=> d!2366457 (= (size!43236 (left!56864 t!4440)) lt!2692679)))

(declare-fun bs!1968732 () Bool)

(assert (= bs!1968732 d!2366457))

(assert (=> bs!1968732 m!8305026))

(assert (=> bs!1968732 m!8305026))

(declare-fun m!8305322 () Bool)

(assert (=> bs!1968732 m!8305322))

(assert (=> d!2366327 d!2366457))

(declare-fun d!2366459 () Bool)

(declare-fun res!3144772 () Bool)

(declare-fun e!4677225 () Bool)

(assert (=> d!2366459 (=> (not res!3144772) (not e!4677225))))

(assert (=> d!2366459 (= res!3144772 (= (csize!32022 (right!57194 (right!57194 t!4440))) (+ (size!43236 (left!56864 (right!57194 (right!57194 t!4440)))) (size!43236 (right!57194 (right!57194 (right!57194 t!4440)))))))))

(assert (=> d!2366459 (= (inv!95688 (right!57194 (right!57194 t!4440))) e!4677225)))

(declare-fun b!7924962 () Bool)

(declare-fun res!3144773 () Bool)

(assert (=> b!7924962 (=> (not res!3144773) (not e!4677225))))

(assert (=> b!7924962 (= res!3144773 (and (not (= (left!56864 (right!57194 (right!57194 t!4440))) Empty!15896)) (not (= (right!57194 (right!57194 (right!57194 t!4440))) Empty!15896))))))

(declare-fun b!7924963 () Bool)

(declare-fun res!3144774 () Bool)

(assert (=> b!7924963 (=> (not res!3144774) (not e!4677225))))

(assert (=> b!7924963 (= res!3144774 (= (cheight!16107 (right!57194 (right!57194 t!4440))) (+ (max!0 (height!2211 (left!56864 (right!57194 (right!57194 t!4440)))) (height!2211 (right!57194 (right!57194 (right!57194 t!4440))))) 1)))))

(declare-fun b!7924964 () Bool)

(assert (=> b!7924964 (= e!4677225 (<= 0 (cheight!16107 (right!57194 (right!57194 t!4440)))))))

(assert (= (and d!2366459 res!3144772) b!7924962))

(assert (= (and b!7924962 res!3144773) b!7924963))

(assert (= (and b!7924963 res!3144774) b!7924964))

(declare-fun m!8305324 () Bool)

(assert (=> d!2366459 m!8305324))

(declare-fun m!8305326 () Bool)

(assert (=> d!2366459 m!8305326))

(declare-fun m!8305328 () Bool)

(assert (=> b!7924963 m!8305328))

(declare-fun m!8305330 () Bool)

(assert (=> b!7924963 m!8305330))

(assert (=> b!7924963 m!8305328))

(assert (=> b!7924963 m!8305330))

(declare-fun m!8305332 () Bool)

(assert (=> b!7924963 m!8305332))

(assert (=> b!7924741 d!2366459))

(declare-fun b!7924965 () Bool)

(declare-fun e!4677227 () Bool)

(declare-fun e!4677226 () Bool)

(assert (=> b!7924965 (= e!4677227 e!4677226)))

(declare-fun res!3144777 () Bool)

(assert (=> b!7924965 (=> (not res!3144777) (not e!4677226))))

(assert (=> b!7924965 (= res!3144777 (<= (- 1) (- (height!2211 (left!56864 (right!57194 (right!57194 t!4440)))) (height!2211 (right!57194 (right!57194 (right!57194 t!4440)))))))))

(declare-fun b!7924966 () Bool)

(declare-fun res!3144776 () Bool)

(assert (=> b!7924966 (=> (not res!3144776) (not e!4677226))))

(assert (=> b!7924966 (= res!3144776 (not (isEmpty!42764 (left!56864 (right!57194 (right!57194 t!4440))))))))

(declare-fun d!2366461 () Bool)

(declare-fun res!3144778 () Bool)

(assert (=> d!2366461 (=> res!3144778 e!4677227)))

(assert (=> d!2366461 (= res!3144778 (not ((_ is Node!15896) (right!57194 (right!57194 t!4440)))))))

(assert (=> d!2366461 (= (isBalanced!4522 (right!57194 (right!57194 t!4440))) e!4677227)))

(declare-fun b!7924967 () Bool)

(declare-fun res!3144780 () Bool)

(assert (=> b!7924967 (=> (not res!3144780) (not e!4677226))))

(assert (=> b!7924967 (= res!3144780 (<= (- (height!2211 (left!56864 (right!57194 (right!57194 t!4440)))) (height!2211 (right!57194 (right!57194 (right!57194 t!4440))))) 1))))

(declare-fun b!7924968 () Bool)

(assert (=> b!7924968 (= e!4677226 (not (isEmpty!42764 (right!57194 (right!57194 (right!57194 t!4440))))))))

(declare-fun b!7924969 () Bool)

(declare-fun res!3144779 () Bool)

(assert (=> b!7924969 (=> (not res!3144779) (not e!4677226))))

(assert (=> b!7924969 (= res!3144779 (isBalanced!4522 (left!56864 (right!57194 (right!57194 t!4440)))))))

(declare-fun b!7924970 () Bool)

(declare-fun res!3144775 () Bool)

(assert (=> b!7924970 (=> (not res!3144775) (not e!4677226))))

(assert (=> b!7924970 (= res!3144775 (isBalanced!4522 (right!57194 (right!57194 (right!57194 t!4440)))))))

(assert (= (and d!2366461 (not res!3144778)) b!7924965))

(assert (= (and b!7924965 res!3144777) b!7924967))

(assert (= (and b!7924967 res!3144780) b!7924969))

(assert (= (and b!7924969 res!3144779) b!7924970))

(assert (= (and b!7924970 res!3144775) b!7924966))

(assert (= (and b!7924966 res!3144776) b!7924968))

(declare-fun m!8305334 () Bool)

(assert (=> b!7924969 m!8305334))

(declare-fun m!8305336 () Bool)

(assert (=> b!7924970 m!8305336))

(assert (=> b!7924967 m!8305328))

(assert (=> b!7924967 m!8305330))

(declare-fun m!8305338 () Bool)

(assert (=> b!7924966 m!8305338))

(assert (=> b!7924965 m!8305328))

(assert (=> b!7924965 m!8305330))

(declare-fun m!8305340 () Bool)

(assert (=> b!7924968 m!8305340))

(assert (=> b!7924771 d!2366461))

(declare-fun d!2366463 () Bool)

(declare-fun lt!2692680 () Int)

(assert (=> d!2366463 (>= lt!2692680 0)))

(declare-fun e!4677228 () Int)

(assert (=> d!2366463 (= lt!2692680 e!4677228)))

(declare-fun c!1455007 () Bool)

(assert (=> d!2366463 (= c!1455007 ((_ is Nil!74442) (list!19400 (xs!19284 (left!56864 t!4440)))))))

(assert (=> d!2366463 (= (size!43235 (list!19400 (xs!19284 (left!56864 t!4440)))) lt!2692680)))

(declare-fun b!7924971 () Bool)

(assert (=> b!7924971 (= e!4677228 0)))

(declare-fun b!7924972 () Bool)

(assert (=> b!7924972 (= e!4677228 (+ 1 (size!43235 (t!390155 (list!19400 (xs!19284 (left!56864 t!4440)))))))))

(assert (= (and d!2366463 c!1455007) b!7924971))

(assert (= (and d!2366463 (not c!1455007)) b!7924972))

(declare-fun m!8305342 () Bool)

(assert (=> b!7924972 m!8305342))

(assert (=> d!2366295 d!2366463))

(declare-fun d!2366465 () Bool)

(assert (=> d!2366465 (= (list!19400 (xs!19284 (left!56864 t!4440))) (innerList!15984 (xs!19284 (left!56864 t!4440))))))

(assert (=> d!2366295 d!2366465))

(declare-fun d!2366467 () Bool)

(assert (=> d!2366467 (= (max!0 (height!2211 (left!56864 t!4440)) (height!2211 (right!57194 t!4440))) (ite (< (height!2211 (left!56864 t!4440)) (height!2211 (right!57194 t!4440))) (height!2211 (right!57194 t!4440)) (height!2211 (left!56864 t!4440))))))

(assert (=> b!7924797 d!2366467))

(assert (=> b!7924797 d!2366305))

(assert (=> b!7924797 d!2366307))

(assert (=> b!7924736 d!2366463))

(assert (=> b!7924736 d!2366465))

(declare-fun d!2366469 () Bool)

(assert (=> d!2366469 (= (height!2211 (left!56864 (left!56864 t!4440))) (ite ((_ is Empty!15896) (left!56864 (left!56864 t!4440))) 0 (ite ((_ is Leaf!30225) (left!56864 (left!56864 t!4440))) 1 (cheight!16107 (left!56864 (left!56864 t!4440))))))))

(assert (=> b!7924759 d!2366469))

(declare-fun d!2366471 () Bool)

(assert (=> d!2366471 (= (height!2211 (right!57194 (left!56864 t!4440))) (ite ((_ is Empty!15896) (right!57194 (left!56864 t!4440))) 0 (ite ((_ is Leaf!30225) (right!57194 (left!56864 t!4440))) 1 (cheight!16107 (right!57194 (left!56864 t!4440))))))))

(assert (=> b!7924759 d!2366471))

(declare-fun d!2366473 () Bool)

(declare-fun lt!2692681 () Bool)

(assert (=> d!2366473 (= lt!2692681 (isEmpty!42766 (list!19403 (right!57194 (right!57194 t!4440)))))))

(assert (=> d!2366473 (= lt!2692681 (= (size!43236 (right!57194 (right!57194 t!4440))) 0))))

(assert (=> d!2366473 (= (isEmpty!42764 (right!57194 (right!57194 t!4440))) lt!2692681)))

(declare-fun bs!1968733 () Bool)

(assert (= bs!1968733 d!2366473))

(assert (=> bs!1968733 m!8305250))

(assert (=> bs!1968733 m!8305250))

(declare-fun m!8305344 () Bool)

(assert (=> bs!1968733 m!8305344))

(assert (=> bs!1968733 m!8304946))

(assert (=> b!7924769 d!2366473))

(declare-fun d!2366475 () Bool)

(assert (=> d!2366475 (= (inv!95687 (xs!19284 (right!57194 (right!57194 t!4440)))) (<= (size!43235 (innerList!15984 (xs!19284 (right!57194 (right!57194 t!4440))))) 2147483647))))

(declare-fun bs!1968734 () Bool)

(assert (= bs!1968734 d!2366475))

(declare-fun m!8305346 () Bool)

(assert (=> bs!1968734 m!8305346))

(assert (=> b!7924811 d!2366475))

(declare-fun b!7924973 () Bool)

(declare-fun e!4677230 () Bool)

(declare-fun e!4677229 () Bool)

(assert (=> b!7924973 (= e!4677230 e!4677229)))

(declare-fun res!3144783 () Bool)

(assert (=> b!7924973 (=> (not res!3144783) (not e!4677229))))

(assert (=> b!7924973 (= res!3144783 (<= (- 1) (- (height!2211 (left!56864 (left!56864 (left!56864 t!4440)))) (height!2211 (right!57194 (left!56864 (left!56864 t!4440)))))))))

(declare-fun b!7924974 () Bool)

(declare-fun res!3144782 () Bool)

(assert (=> b!7924974 (=> (not res!3144782) (not e!4677229))))

(assert (=> b!7924974 (= res!3144782 (not (isEmpty!42764 (left!56864 (left!56864 (left!56864 t!4440))))))))

(declare-fun d!2366477 () Bool)

(declare-fun res!3144784 () Bool)

(assert (=> d!2366477 (=> res!3144784 e!4677230)))

(assert (=> d!2366477 (= res!3144784 (not ((_ is Node!15896) (left!56864 (left!56864 t!4440)))))))

(assert (=> d!2366477 (= (isBalanced!4522 (left!56864 (left!56864 t!4440))) e!4677230)))

(declare-fun b!7924975 () Bool)

(declare-fun res!3144786 () Bool)

(assert (=> b!7924975 (=> (not res!3144786) (not e!4677229))))

(assert (=> b!7924975 (= res!3144786 (<= (- (height!2211 (left!56864 (left!56864 (left!56864 t!4440)))) (height!2211 (right!57194 (left!56864 (left!56864 t!4440))))) 1))))

(declare-fun b!7924976 () Bool)

(assert (=> b!7924976 (= e!4677229 (not (isEmpty!42764 (right!57194 (left!56864 (left!56864 t!4440))))))))

(declare-fun b!7924977 () Bool)

(declare-fun res!3144785 () Bool)

(assert (=> b!7924977 (=> (not res!3144785) (not e!4677229))))

(assert (=> b!7924977 (= res!3144785 (isBalanced!4522 (left!56864 (left!56864 (left!56864 t!4440)))))))

(declare-fun b!7924978 () Bool)

(declare-fun res!3144781 () Bool)

(assert (=> b!7924978 (=> (not res!3144781) (not e!4677229))))

(assert (=> b!7924978 (= res!3144781 (isBalanced!4522 (right!57194 (left!56864 (left!56864 t!4440)))))))

(assert (= (and d!2366477 (not res!3144784)) b!7924973))

(assert (= (and b!7924973 res!3144783) b!7924975))

(assert (= (and b!7924975 res!3144786) b!7924977))

(assert (= (and b!7924977 res!3144785) b!7924978))

(assert (= (and b!7924978 res!3144781) b!7924974))

(assert (= (and b!7924974 res!3144782) b!7924976))

(declare-fun m!8305348 () Bool)

(assert (=> b!7924977 m!8305348))

(declare-fun m!8305350 () Bool)

(assert (=> b!7924978 m!8305350))

(assert (=> b!7924975 m!8305260))

(assert (=> b!7924975 m!8305262))

(declare-fun m!8305352 () Bool)

(assert (=> b!7924974 m!8305352))

(assert (=> b!7924973 m!8305260))

(assert (=> b!7924973 m!8305262))

(declare-fun m!8305354 () Bool)

(assert (=> b!7924976 m!8305354))

(assert (=> b!7924761 d!2366477))

(declare-fun d!2366479 () Bool)

(declare-fun c!1455008 () Bool)

(assert (=> d!2366479 (= c!1455008 ((_ is Node!15896) (left!56864 (left!56864 (right!57194 t!4440)))))))

(declare-fun e!4677231 () Bool)

(assert (=> d!2366479 (= (inv!95686 (left!56864 (left!56864 (right!57194 t!4440)))) e!4677231)))

(declare-fun b!7924979 () Bool)

(assert (=> b!7924979 (= e!4677231 (inv!95688 (left!56864 (left!56864 (right!57194 t!4440)))))))

(declare-fun b!7924980 () Bool)

(declare-fun e!4677232 () Bool)

(assert (=> b!7924980 (= e!4677231 e!4677232)))

(declare-fun res!3144787 () Bool)

(assert (=> b!7924980 (= res!3144787 (not ((_ is Leaf!30225) (left!56864 (left!56864 (right!57194 t!4440))))))))

(assert (=> b!7924980 (=> res!3144787 e!4677232)))

(declare-fun b!7924981 () Bool)

(assert (=> b!7924981 (= e!4677232 (inv!95689 (left!56864 (left!56864 (right!57194 t!4440)))))))

(assert (= (and d!2366479 c!1455008) b!7924979))

(assert (= (and d!2366479 (not c!1455008)) b!7924980))

(assert (= (and b!7924980 (not res!3144787)) b!7924981))

(declare-fun m!8305356 () Bool)

(assert (=> b!7924979 m!8305356))

(declare-fun m!8305358 () Bool)

(assert (=> b!7924981 m!8305358))

(assert (=> b!7924807 d!2366479))

(declare-fun d!2366481 () Bool)

(declare-fun c!1455009 () Bool)

(assert (=> d!2366481 (= c!1455009 ((_ is Node!15896) (right!57194 (left!56864 (right!57194 t!4440)))))))

(declare-fun e!4677233 () Bool)

(assert (=> d!2366481 (= (inv!95686 (right!57194 (left!56864 (right!57194 t!4440)))) e!4677233)))

(declare-fun b!7924982 () Bool)

(assert (=> b!7924982 (= e!4677233 (inv!95688 (right!57194 (left!56864 (right!57194 t!4440)))))))

(declare-fun b!7924983 () Bool)

(declare-fun e!4677234 () Bool)

(assert (=> b!7924983 (= e!4677233 e!4677234)))

(declare-fun res!3144788 () Bool)

(assert (=> b!7924983 (= res!3144788 (not ((_ is Leaf!30225) (right!57194 (left!56864 (right!57194 t!4440))))))))

(assert (=> b!7924983 (=> res!3144788 e!4677234)))

(declare-fun b!7924984 () Bool)

(assert (=> b!7924984 (= e!4677234 (inv!95689 (right!57194 (left!56864 (right!57194 t!4440)))))))

(assert (= (and d!2366481 c!1455009) b!7924982))

(assert (= (and d!2366481 (not c!1455009)) b!7924983))

(assert (= (and b!7924983 (not res!3144788)) b!7924984))

(declare-fun m!8305360 () Bool)

(assert (=> b!7924982 m!8305360))

(declare-fun m!8305362 () Bool)

(assert (=> b!7924984 m!8305362))

(assert (=> b!7924807 d!2366481))

(assert (=> b!7924709 d!2366313))

(assert (=> b!7924709 d!2366315))

(declare-fun d!2366483 () Bool)

(assert (=> d!2366483 (= (max!0 (height!2211 (left!56864 (left!56864 t!4440))) (height!2211 (right!57194 (left!56864 t!4440)))) (ite (< (height!2211 (left!56864 (left!56864 t!4440))) (height!2211 (right!57194 (left!56864 t!4440)))) (height!2211 (right!57194 (left!56864 t!4440))) (height!2211 (left!56864 (left!56864 t!4440)))))))

(assert (=> b!7924749 d!2366483))

(assert (=> b!7924749 d!2366469))

(assert (=> b!7924749 d!2366471))

(declare-fun d!2366485 () Bool)

(declare-fun e!4677235 () Bool)

(assert (=> d!2366485 e!4677235))

(declare-fun res!3144789 () Bool)

(assert (=> d!2366485 (=> (not res!3144789) (not e!4677235))))

(declare-fun lt!2692682 () List!74566)

(assert (=> d!2366485 (= res!3144789 (= (content!15778 lt!2692682) (ite (<= (- 1 1) 0) ((as const (Array T!145762 Bool)) false) (store ((as const (Array T!145762 Bool)) false) v!5484 true))))))

(declare-fun e!4677236 () List!74566)

(assert (=> d!2366485 (= lt!2692682 e!4677236)))

(declare-fun c!1455010 () Bool)

(assert (=> d!2366485 (= c!1455010 (<= (- 1 1) 0))))

(assert (=> d!2366485 (= (fill!273 (- 1 1) v!5484) lt!2692682)))

(declare-fun b!7924985 () Bool)

(assert (=> b!7924985 (= e!4677236 Nil!74442)))

(declare-fun b!7924986 () Bool)

(assert (=> b!7924986 (= e!4677236 (Cons!74442 v!5484 (fill!273 (- (- 1 1) 1) v!5484)))))

(declare-fun b!7924987 () Bool)

(assert (=> b!7924987 (= e!4677235 (= (size!43235 lt!2692682) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!2366485 c!1455010) b!7924985))

(assert (= (and d!2366485 (not c!1455010)) b!7924986))

(assert (= (and d!2366485 res!3144789) b!7924987))

(declare-fun m!8305364 () Bool)

(assert (=> d!2366485 m!8305364))

(assert (=> d!2366485 m!8305036))

(declare-fun m!8305366 () Bool)

(assert (=> b!7924986 m!8305366))

(declare-fun m!8305368 () Bool)

(assert (=> b!7924987 m!8305368))

(assert (=> b!7924787 d!2366485))

(declare-fun d!2366487 () Bool)

(declare-fun res!3144790 () Bool)

(declare-fun e!4677237 () Bool)

(assert (=> d!2366487 (=> (not res!3144790) (not e!4677237))))

(assert (=> d!2366487 (= res!3144790 (<= (size!43235 (list!19400 (xs!19284 (right!57194 (right!57194 t!4440))))) 512))))

(assert (=> d!2366487 (= (inv!95689 (right!57194 (right!57194 t!4440))) e!4677237)))

(declare-fun b!7924988 () Bool)

(declare-fun res!3144791 () Bool)

(assert (=> b!7924988 (=> (not res!3144791) (not e!4677237))))

(assert (=> b!7924988 (= res!3144791 (= (csize!32023 (right!57194 (right!57194 t!4440))) (size!43235 (list!19400 (xs!19284 (right!57194 (right!57194 t!4440)))))))))

(declare-fun b!7924989 () Bool)

(assert (=> b!7924989 (= e!4677237 (and (> (csize!32023 (right!57194 (right!57194 t!4440))) 0) (<= (csize!32023 (right!57194 (right!57194 t!4440))) 512)))))

(assert (= (and d!2366487 res!3144790) b!7924988))

(assert (= (and b!7924988 res!3144791) b!7924989))

(declare-fun m!8305370 () Bool)

(assert (=> d!2366487 m!8305370))

(assert (=> d!2366487 m!8305370))

(declare-fun m!8305372 () Bool)

(assert (=> d!2366487 m!8305372))

(assert (=> b!7924988 m!8305370))

(assert (=> b!7924988 m!8305370))

(assert (=> b!7924988 m!8305372))

(assert (=> b!7924743 d!2366487))

(declare-fun d!2366489 () Bool)

(declare-fun c!1455011 () Bool)

(assert (=> d!2366489 (= c!1455011 ((_ is Node!15896) (left!56864 (left!56864 (left!56864 t!4440)))))))

(declare-fun e!4677238 () Bool)

(assert (=> d!2366489 (= (inv!95686 (left!56864 (left!56864 (left!56864 t!4440)))) e!4677238)))

(declare-fun b!7924990 () Bool)

(assert (=> b!7924990 (= e!4677238 (inv!95688 (left!56864 (left!56864 (left!56864 t!4440)))))))

(declare-fun b!7924991 () Bool)

(declare-fun e!4677239 () Bool)

(assert (=> b!7924991 (= e!4677238 e!4677239)))

(declare-fun res!3144792 () Bool)

(assert (=> b!7924991 (= res!3144792 (not ((_ is Leaf!30225) (left!56864 (left!56864 (left!56864 t!4440))))))))

(assert (=> b!7924991 (=> res!3144792 e!4677239)))

(declare-fun b!7924992 () Bool)

(assert (=> b!7924992 (= e!4677239 (inv!95689 (left!56864 (left!56864 (left!56864 t!4440)))))))

(assert (= (and d!2366489 c!1455011) b!7924990))

(assert (= (and d!2366489 (not c!1455011)) b!7924991))

(assert (= (and b!7924991 (not res!3144792)) b!7924992))

(declare-fun m!8305374 () Bool)

(assert (=> b!7924990 m!8305374))

(declare-fun m!8305376 () Bool)

(assert (=> b!7924992 m!8305376))

(assert (=> b!7924799 d!2366489))

(declare-fun d!2366491 () Bool)

(declare-fun c!1455012 () Bool)

(assert (=> d!2366491 (= c!1455012 ((_ is Node!15896) (right!57194 (left!56864 (left!56864 t!4440)))))))

(declare-fun e!4677240 () Bool)

(assert (=> d!2366491 (= (inv!95686 (right!57194 (left!56864 (left!56864 t!4440)))) e!4677240)))

(declare-fun b!7924993 () Bool)

(assert (=> b!7924993 (= e!4677240 (inv!95688 (right!57194 (left!56864 (left!56864 t!4440)))))))

(declare-fun b!7924994 () Bool)

(declare-fun e!4677241 () Bool)

(assert (=> b!7924994 (= e!4677240 e!4677241)))

(declare-fun res!3144793 () Bool)

(assert (=> b!7924994 (= res!3144793 (not ((_ is Leaf!30225) (right!57194 (left!56864 (left!56864 t!4440))))))))

(assert (=> b!7924994 (=> res!3144793 e!4677241)))

(declare-fun b!7924995 () Bool)

(assert (=> b!7924995 (= e!4677241 (inv!95689 (right!57194 (left!56864 (left!56864 t!4440)))))))

(assert (= (and d!2366491 c!1455012) b!7924993))

(assert (= (and d!2366491 (not c!1455012)) b!7924994))

(assert (= (and b!7924994 (not res!3144793)) b!7924995))

(declare-fun m!8305378 () Bool)

(assert (=> b!7924993 m!8305378))

(declare-fun m!8305380 () Bool)

(assert (=> b!7924995 m!8305380))

(assert (=> b!7924799 d!2366491))

(assert (=> b!7924715 d!2366297))

(assert (=> b!7924715 d!2366299))

(declare-fun d!2366493 () Bool)

(declare-fun lt!2692683 () Int)

(assert (=> d!2366493 (>= lt!2692683 0)))

(declare-fun e!4677242 () Int)

(assert (=> d!2366493 (= lt!2692683 e!4677242)))

(declare-fun c!1455013 () Bool)

(assert (=> d!2366493 (= c!1455013 ((_ is Nil!74442) lt!2692655))))

(assert (=> d!2366493 (= (size!43235 lt!2692655) lt!2692683)))

(declare-fun b!7924996 () Bool)

(assert (=> b!7924996 (= e!4677242 0)))

(declare-fun b!7924997 () Bool)

(assert (=> b!7924997 (= e!4677242 (+ 1 (size!43235 (t!390155 lt!2692655))))))

(assert (= (and d!2366493 c!1455013) b!7924996))

(assert (= (and d!2366493 (not c!1455013)) b!7924997))

(declare-fun m!8305382 () Bool)

(assert (=> b!7924997 m!8305382))

(assert (=> b!7924788 d!2366493))

(declare-fun d!2366495 () Bool)

(declare-fun c!1455014 () Bool)

(assert (=> d!2366495 (= c!1455014 ((_ is Node!15896) (left!56864 (right!57194 (left!56864 t!4440)))))))

(declare-fun e!4677243 () Bool)

(assert (=> d!2366495 (= (inv!95686 (left!56864 (right!57194 (left!56864 t!4440)))) e!4677243)))

(declare-fun b!7924998 () Bool)

(assert (=> b!7924998 (= e!4677243 (inv!95688 (left!56864 (right!57194 (left!56864 t!4440)))))))

(declare-fun b!7924999 () Bool)

(declare-fun e!4677244 () Bool)

(assert (=> b!7924999 (= e!4677243 e!4677244)))

(declare-fun res!3144794 () Bool)

(assert (=> b!7924999 (= res!3144794 (not ((_ is Leaf!30225) (left!56864 (right!57194 (left!56864 t!4440))))))))

(assert (=> b!7924999 (=> res!3144794 e!4677244)))

(declare-fun b!7925000 () Bool)

(assert (=> b!7925000 (= e!4677244 (inv!95689 (left!56864 (right!57194 (left!56864 t!4440)))))))

(assert (= (and d!2366495 c!1455014) b!7924998))

(assert (= (and d!2366495 (not c!1455014)) b!7924999))

(assert (= (and b!7924999 (not res!3144794)) b!7925000))

(declare-fun m!8305384 () Bool)

(assert (=> b!7924998 m!8305384))

(declare-fun m!8305386 () Bool)

(assert (=> b!7925000 m!8305386))

(assert (=> b!7924804 d!2366495))

(declare-fun d!2366497 () Bool)

(declare-fun c!1455015 () Bool)

(assert (=> d!2366497 (= c!1455015 ((_ is Node!15896) (right!57194 (right!57194 (left!56864 t!4440)))))))

(declare-fun e!4677245 () Bool)

(assert (=> d!2366497 (= (inv!95686 (right!57194 (right!57194 (left!56864 t!4440)))) e!4677245)))

(declare-fun b!7925001 () Bool)

(assert (=> b!7925001 (= e!4677245 (inv!95688 (right!57194 (right!57194 (left!56864 t!4440)))))))

(declare-fun b!7925002 () Bool)

(declare-fun e!4677246 () Bool)

(assert (=> b!7925002 (= e!4677245 e!4677246)))

(declare-fun res!3144795 () Bool)

(assert (=> b!7925002 (= res!3144795 (not ((_ is Leaf!30225) (right!57194 (right!57194 (left!56864 t!4440))))))))

(assert (=> b!7925002 (=> res!3144795 e!4677246)))

(declare-fun b!7925003 () Bool)

(assert (=> b!7925003 (= e!4677246 (inv!95689 (right!57194 (right!57194 (left!56864 t!4440)))))))

(assert (= (and d!2366497 c!1455015) b!7925001))

(assert (= (and d!2366497 (not c!1455015)) b!7925002))

(assert (= (and b!7925002 (not res!3144795)) b!7925003))

(declare-fun m!8305388 () Bool)

(assert (=> b!7925001 m!8305388))

(declare-fun m!8305390 () Bool)

(assert (=> b!7925003 m!8305390))

(assert (=> b!7924804 d!2366497))

(declare-fun d!2366499 () Bool)

(declare-fun lt!2692684 () Int)

(assert (=> d!2366499 (= lt!2692684 (size!43235 (list!19403 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1)))))))

(assert (=> d!2366499 (= lt!2692684 (ite ((_ is Empty!15896) (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) 0 (ite ((_ is Leaf!30225) (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (csize!32023 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (csize!32022 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(assert (=> d!2366499 (= (size!43236 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) lt!2692684)))

(declare-fun bs!1968735 () Bool)

(assert (= bs!1968735 d!2366499))

(declare-fun m!8305392 () Bool)

(assert (=> bs!1968735 m!8305392))

(assert (=> bs!1968735 m!8305392))

(declare-fun m!8305394 () Bool)

(assert (=> bs!1968735 m!8305394))

(assert (=> d!2366321 d!2366499))

(declare-fun d!2366501 () Bool)

(declare-fun lt!2692685 () Int)

(assert (=> d!2366501 (= lt!2692685 (size!43235 (list!19403 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1)))))))

(assert (=> d!2366501 (= lt!2692685 (ite ((_ is Empty!15896) (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) 0 (ite ((_ is Leaf!30225) (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) (csize!32023 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) (csize!32022 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(assert (=> d!2366501 (= (size!43236 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) lt!2692685)))

(declare-fun bs!1968736 () Bool)

(assert (= bs!1968736 d!2366501))

(declare-fun m!8305396 () Bool)

(assert (=> bs!1968736 m!8305396))

(assert (=> bs!1968736 m!8305396))

(declare-fun m!8305398 () Bool)

(assert (=> bs!1968736 m!8305398))

(assert (=> d!2366321 d!2366501))

(declare-fun d!2366503 () Bool)

(assert (=> d!2366503 (= (max!0 (height!2211 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (height!2211 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1)))) (ite (< (height!2211 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (height!2211 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1)))) (height!2211 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) (height!2211 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1)))))))

(assert (=> b!7924764 d!2366503))

(declare-fun d!2366505 () Bool)

(assert (=> d!2366505 (= (height!2211 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) (ite ((_ is Empty!15896) (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) 0 (ite ((_ is Leaf!30225) (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))) 1 (cheight!16107 (left!56864 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(assert (=> b!7924764 d!2366505))

(declare-fun d!2366507 () Bool)

(assert (=> d!2366507 (= (height!2211 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) (ite ((_ is Empty!15896) (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) 0 (ite ((_ is Leaf!30225) (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))) 1 (cheight!16107 (right!57194 (Leaf!30225 (fill!271 1 v!5484) 1))))))))

(assert (=> b!7924764 d!2366507))

(assert (=> b!7924757 d!2366469))

(assert (=> b!7924757 d!2366471))

(assert (=> d!2366343 d!2366457))

(assert (=> d!2366343 d!2366407))

(declare-fun d!2366509 () Bool)

(declare-fun lt!2692686 () Int)

(assert (=> d!2366509 (>= lt!2692686 0)))

(declare-fun e!4677247 () Int)

(assert (=> d!2366509 (= lt!2692686 e!4677247)))

(declare-fun c!1455016 () Bool)

(assert (=> d!2366509 (= c!1455016 ((_ is Nil!74442) (list!19400 (xs!19284 (right!57194 t!4440)))))))

(assert (=> d!2366509 (= (size!43235 (list!19400 (xs!19284 (right!57194 t!4440)))) lt!2692686)))

(declare-fun b!7925004 () Bool)

(assert (=> b!7925004 (= e!4677247 0)))

(declare-fun b!7925005 () Bool)

(assert (=> b!7925005 (= e!4677247 (+ 1 (size!43235 (t!390155 (list!19400 (xs!19284 (right!57194 t!4440)))))))))

(assert (= (and d!2366509 c!1455016) b!7925004))

(assert (= (and d!2366509 (not c!1455016)) b!7925005))

(declare-fun m!8305400 () Bool)

(assert (=> b!7925005 m!8305400))

(assert (=> b!7924744 d!2366509))

(declare-fun d!2366511 () Bool)

(assert (=> d!2366511 (= (list!19400 (xs!19284 (right!57194 t!4440))) (innerList!15984 (xs!19284 (right!57194 t!4440))))))

(assert (=> b!7924744 d!2366511))

(declare-fun d!2366513 () Bool)

(declare-fun lt!2692687 () Bool)

(assert (=> d!2366513 (= lt!2692687 (isEmpty!42766 (list!19403 (left!56864 (right!57194 t!4440)))))))

(assert (=> d!2366513 (= lt!2692687 (= (size!43236 (left!56864 (right!57194 t!4440))) 0))))

(assert (=> d!2366513 (= (isEmpty!42764 (left!56864 (right!57194 t!4440))) lt!2692687)))

(declare-fun bs!1968737 () Bool)

(assert (= bs!1968737 d!2366513))

(assert (=> bs!1968737 m!8305248))

(assert (=> bs!1968737 m!8305248))

(declare-fun m!8305402 () Bool)

(assert (=> bs!1968737 m!8305402))

(assert (=> bs!1968737 m!8304944))

(assert (=> b!7924767 d!2366513))

(assert (=> d!2366303 d!2366509))

(assert (=> d!2366303 d!2366511))

(declare-fun b!7925006 () Bool)

(declare-fun e!4677248 () Bool)

(declare-fun tp!2358393 () Bool)

(assert (=> b!7925006 (= e!4677248 (and tp_is_empty!53217 tp!2358393))))

(assert (=> b!7924812 (= tp!2358369 e!4677248)))

(assert (= (and b!7924812 ((_ is Cons!74442) (innerList!15984 (xs!19284 (right!57194 (right!57194 t!4440)))))) b!7925006))

(declare-fun b!7925007 () Bool)

(declare-fun e!4677249 () Bool)

(declare-fun tp!2358394 () Bool)

(assert (=> b!7925007 (= e!4677249 (and tp_is_empty!53217 tp!2358394))))

(assert (=> b!7924806 (= tp!2358363 e!4677249)))

(assert (= (and b!7924806 ((_ is Cons!74442) (innerList!15984 (xs!19284 (right!57194 (left!56864 t!4440)))))) b!7925007))

(declare-fun b!7925008 () Bool)

(declare-fun tp!2358396 () Bool)

(declare-fun e!4677250 () Bool)

(declare-fun tp!2358397 () Bool)

(assert (=> b!7925008 (= e!4677250 (and (inv!95686 (left!56864 (left!56864 (left!56864 (left!56864 t!4440))))) tp!2358396 (inv!95686 (right!57194 (left!56864 (left!56864 (left!56864 t!4440))))) tp!2358397))))

(declare-fun b!7925010 () Bool)

(declare-fun e!4677251 () Bool)

(declare-fun tp!2358395 () Bool)

(assert (=> b!7925010 (= e!4677251 tp!2358395)))

(declare-fun b!7925009 () Bool)

(assert (=> b!7925009 (= e!4677250 (and (inv!95687 (xs!19284 (left!56864 (left!56864 (left!56864 t!4440))))) e!4677251))))

(assert (=> b!7924799 (= tp!2358361 (and (inv!95686 (left!56864 (left!56864 (left!56864 t!4440)))) e!4677250))))

(assert (= (and b!7924799 ((_ is Node!15896) (left!56864 (left!56864 (left!56864 t!4440))))) b!7925008))

(assert (= b!7925009 b!7925010))

(assert (= (and b!7924799 ((_ is Leaf!30225) (left!56864 (left!56864 (left!56864 t!4440))))) b!7925009))

(declare-fun m!8305404 () Bool)

(assert (=> b!7925008 m!8305404))

(declare-fun m!8305406 () Bool)

(assert (=> b!7925008 m!8305406))

(declare-fun m!8305408 () Bool)

(assert (=> b!7925009 m!8305408))

(assert (=> b!7924799 m!8305064))

(declare-fun e!4677252 () Bool)

(declare-fun tp!2358400 () Bool)

(declare-fun b!7925011 () Bool)

(declare-fun tp!2358399 () Bool)

(assert (=> b!7925011 (= e!4677252 (and (inv!95686 (left!56864 (right!57194 (left!56864 (left!56864 t!4440))))) tp!2358399 (inv!95686 (right!57194 (right!57194 (left!56864 (left!56864 t!4440))))) tp!2358400))))

(declare-fun b!7925013 () Bool)

(declare-fun e!4677253 () Bool)

(declare-fun tp!2358398 () Bool)

(assert (=> b!7925013 (= e!4677253 tp!2358398)))

(declare-fun b!7925012 () Bool)

(assert (=> b!7925012 (= e!4677252 (and (inv!95687 (xs!19284 (right!57194 (left!56864 (left!56864 t!4440))))) e!4677253))))

(assert (=> b!7924799 (= tp!2358362 (and (inv!95686 (right!57194 (left!56864 (left!56864 t!4440)))) e!4677252))))

(assert (= (and b!7924799 ((_ is Node!15896) (right!57194 (left!56864 (left!56864 t!4440))))) b!7925011))

(assert (= b!7925012 b!7925013))

(assert (= (and b!7924799 ((_ is Leaf!30225) (right!57194 (left!56864 (left!56864 t!4440))))) b!7925012))

(declare-fun m!8305410 () Bool)

(assert (=> b!7925011 m!8305410))

(declare-fun m!8305412 () Bool)

(assert (=> b!7925011 m!8305412))

(declare-fun m!8305414 () Bool)

(assert (=> b!7925012 m!8305414))

(assert (=> b!7924799 m!8305066))

(declare-fun b!7925014 () Bool)

(declare-fun e!4677254 () Bool)

(declare-fun tp!2358401 () Bool)

(assert (=> b!7925014 (= e!4677254 (and tp_is_empty!53217 tp!2358401))))

(assert (=> b!7924791 (= tp!2358359 e!4677254)))

(assert (= (and b!7924791 ((_ is Cons!74442) (innerList!15984 _$14!1615))) b!7925014))

(declare-fun b!7925015 () Bool)

(declare-fun e!4677255 () Bool)

(declare-fun tp!2358402 () Bool)

(assert (=> b!7925015 (= e!4677255 (and tp_is_empty!53217 tp!2358402))))

(assert (=> b!7924814 (= tp!2358373 e!4677255)))

(assert (= (and b!7924814 ((_ is Cons!74442) (t!390155 (innerList!15984 (xs!19284 (right!57194 t!4440)))))) b!7925015))

(declare-fun b!7925016 () Bool)

(declare-fun e!4677256 () Bool)

(declare-fun tp!2358403 () Bool)

(assert (=> b!7925016 (= e!4677256 (and tp_is_empty!53217 tp!2358403))))

(assert (=> b!7924801 (= tp!2358360 e!4677256)))

(assert (= (and b!7924801 ((_ is Cons!74442) (innerList!15984 (xs!19284 (left!56864 (left!56864 t!4440)))))) b!7925016))

(declare-fun e!4677257 () Bool)

(declare-fun tp!2358406 () Bool)

(declare-fun tp!2358405 () Bool)

(declare-fun b!7925017 () Bool)

(assert (=> b!7925017 (= e!4677257 (and (inv!95686 (left!56864 (left!56864 (right!57194 (right!57194 t!4440))))) tp!2358405 (inv!95686 (right!57194 (left!56864 (right!57194 (right!57194 t!4440))))) tp!2358406))))

(declare-fun b!7925019 () Bool)

(declare-fun e!4677258 () Bool)

(declare-fun tp!2358404 () Bool)

(assert (=> b!7925019 (= e!4677258 tp!2358404)))

(declare-fun b!7925018 () Bool)

(assert (=> b!7925018 (= e!4677257 (and (inv!95687 (xs!19284 (left!56864 (right!57194 (right!57194 t!4440))))) e!4677258))))

(assert (=> b!7924810 (= tp!2358370 (and (inv!95686 (left!56864 (right!57194 (right!57194 t!4440)))) e!4677257))))

(assert (= (and b!7924810 ((_ is Node!15896) (left!56864 (right!57194 (right!57194 t!4440))))) b!7925017))

(assert (= b!7925018 b!7925019))

(assert (= (and b!7924810 ((_ is Leaf!30225) (left!56864 (right!57194 (right!57194 t!4440))))) b!7925018))

(declare-fun m!8305416 () Bool)

(assert (=> b!7925017 m!8305416))

(declare-fun m!8305418 () Bool)

(assert (=> b!7925017 m!8305418))

(declare-fun m!8305420 () Bool)

(assert (=> b!7925018 m!8305420))

(assert (=> b!7924810 m!8305084))

(declare-fun tp!2358408 () Bool)

(declare-fun e!4677259 () Bool)

(declare-fun b!7925020 () Bool)

(declare-fun tp!2358409 () Bool)

(assert (=> b!7925020 (= e!4677259 (and (inv!95686 (left!56864 (right!57194 (right!57194 (right!57194 t!4440))))) tp!2358408 (inv!95686 (right!57194 (right!57194 (right!57194 (right!57194 t!4440))))) tp!2358409))))

(declare-fun b!7925022 () Bool)

(declare-fun e!4677260 () Bool)

(declare-fun tp!2358407 () Bool)

(assert (=> b!7925022 (= e!4677260 tp!2358407)))

(declare-fun b!7925021 () Bool)

(assert (=> b!7925021 (= e!4677259 (and (inv!95687 (xs!19284 (right!57194 (right!57194 (right!57194 t!4440))))) e!4677260))))

(assert (=> b!7924810 (= tp!2358371 (and (inv!95686 (right!57194 (right!57194 (right!57194 t!4440)))) e!4677259))))

(assert (= (and b!7924810 ((_ is Node!15896) (right!57194 (right!57194 (right!57194 t!4440))))) b!7925020))

(assert (= b!7925021 b!7925022))

(assert (= (and b!7924810 ((_ is Leaf!30225) (right!57194 (right!57194 (right!57194 t!4440))))) b!7925021))

(declare-fun m!8305422 () Bool)

(assert (=> b!7925020 m!8305422))

(declare-fun m!8305424 () Bool)

(assert (=> b!7925020 m!8305424))

(declare-fun m!8305426 () Bool)

(assert (=> b!7925021 m!8305426))

(assert (=> b!7924810 m!8305086))

(declare-fun tp!2358411 () Bool)

(declare-fun b!7925023 () Bool)

(declare-fun tp!2358412 () Bool)

(declare-fun e!4677261 () Bool)

(assert (=> b!7925023 (= e!4677261 (and (inv!95686 (left!56864 (left!56864 (right!57194 (left!56864 t!4440))))) tp!2358411 (inv!95686 (right!57194 (left!56864 (right!57194 (left!56864 t!4440))))) tp!2358412))))

(declare-fun b!7925025 () Bool)

(declare-fun e!4677262 () Bool)

(declare-fun tp!2358410 () Bool)

(assert (=> b!7925025 (= e!4677262 tp!2358410)))

(declare-fun b!7925024 () Bool)

(assert (=> b!7925024 (= e!4677261 (and (inv!95687 (xs!19284 (left!56864 (right!57194 (left!56864 t!4440))))) e!4677262))))

(assert (=> b!7924804 (= tp!2358364 (and (inv!95686 (left!56864 (right!57194 (left!56864 t!4440)))) e!4677261))))

(assert (= (and b!7924804 ((_ is Node!15896) (left!56864 (right!57194 (left!56864 t!4440))))) b!7925023))

(assert (= b!7925024 b!7925025))

(assert (= (and b!7924804 ((_ is Leaf!30225) (left!56864 (right!57194 (left!56864 t!4440))))) b!7925024))

(declare-fun m!8305428 () Bool)

(assert (=> b!7925023 m!8305428))

(declare-fun m!8305430 () Bool)

(assert (=> b!7925023 m!8305430))

(declare-fun m!8305432 () Bool)

(assert (=> b!7925024 m!8305432))

(assert (=> b!7924804 m!8305072))

(declare-fun b!7925026 () Bool)

(declare-fun e!4677263 () Bool)

(declare-fun tp!2358415 () Bool)

(declare-fun tp!2358414 () Bool)

(assert (=> b!7925026 (= e!4677263 (and (inv!95686 (left!56864 (right!57194 (right!57194 (left!56864 t!4440))))) tp!2358414 (inv!95686 (right!57194 (right!57194 (right!57194 (left!56864 t!4440))))) tp!2358415))))

(declare-fun b!7925028 () Bool)

(declare-fun e!4677264 () Bool)

(declare-fun tp!2358413 () Bool)

(assert (=> b!7925028 (= e!4677264 tp!2358413)))

(declare-fun b!7925027 () Bool)

(assert (=> b!7925027 (= e!4677263 (and (inv!95687 (xs!19284 (right!57194 (right!57194 (left!56864 t!4440))))) e!4677264))))

(assert (=> b!7924804 (= tp!2358365 (and (inv!95686 (right!57194 (right!57194 (left!56864 t!4440)))) e!4677263))))

(assert (= (and b!7924804 ((_ is Node!15896) (right!57194 (right!57194 (left!56864 t!4440))))) b!7925026))

(assert (= b!7925027 b!7925028))

(assert (= (and b!7924804 ((_ is Leaf!30225) (right!57194 (right!57194 (left!56864 t!4440))))) b!7925027))

(declare-fun m!8305434 () Bool)

(assert (=> b!7925026 m!8305434))

(declare-fun m!8305436 () Bool)

(assert (=> b!7925026 m!8305436))

(declare-fun m!8305438 () Bool)

(assert (=> b!7925027 m!8305438))

(assert (=> b!7924804 m!8305074))

(declare-fun b!7925029 () Bool)

(declare-fun e!4677265 () Bool)

(declare-fun tp!2358416 () Bool)

(assert (=> b!7925029 (= e!4677265 (and tp_is_empty!53217 tp!2358416))))

(assert (=> b!7924813 (= tp!2358372 e!4677265)))

(assert (= (and b!7924813 ((_ is Cons!74442) (t!390155 (innerList!15984 (xs!19284 (left!56864 t!4440)))))) b!7925029))

(declare-fun b!7925030 () Bool)

(declare-fun e!4677266 () Bool)

(declare-fun tp!2358419 () Bool)

(declare-fun tp!2358418 () Bool)

(assert (=> b!7925030 (= e!4677266 (and (inv!95686 (left!56864 (left!56864 (left!56864 (right!57194 t!4440))))) tp!2358418 (inv!95686 (right!57194 (left!56864 (left!56864 (right!57194 t!4440))))) tp!2358419))))

(declare-fun b!7925032 () Bool)

(declare-fun e!4677267 () Bool)

(declare-fun tp!2358417 () Bool)

(assert (=> b!7925032 (= e!4677267 tp!2358417)))

(declare-fun b!7925031 () Bool)

(assert (=> b!7925031 (= e!4677266 (and (inv!95687 (xs!19284 (left!56864 (left!56864 (right!57194 t!4440))))) e!4677267))))

(assert (=> b!7924807 (= tp!2358367 (and (inv!95686 (left!56864 (left!56864 (right!57194 t!4440)))) e!4677266))))

(assert (= (and b!7924807 ((_ is Node!15896) (left!56864 (left!56864 (right!57194 t!4440))))) b!7925030))

(assert (= b!7925031 b!7925032))

(assert (= (and b!7924807 ((_ is Leaf!30225) (left!56864 (left!56864 (right!57194 t!4440))))) b!7925031))

(declare-fun m!8305440 () Bool)

(assert (=> b!7925030 m!8305440))

(declare-fun m!8305442 () Bool)

(assert (=> b!7925030 m!8305442))

(declare-fun m!8305444 () Bool)

(assert (=> b!7925031 m!8305444))

(assert (=> b!7924807 m!8305078))

(declare-fun tp!2358421 () Bool)

(declare-fun tp!2358422 () Bool)

(declare-fun b!7925033 () Bool)

(declare-fun e!4677268 () Bool)

(assert (=> b!7925033 (= e!4677268 (and (inv!95686 (left!56864 (right!57194 (left!56864 (right!57194 t!4440))))) tp!2358421 (inv!95686 (right!57194 (right!57194 (left!56864 (right!57194 t!4440))))) tp!2358422))))

(declare-fun b!7925035 () Bool)

(declare-fun e!4677269 () Bool)

(declare-fun tp!2358420 () Bool)

(assert (=> b!7925035 (= e!4677269 tp!2358420)))

(declare-fun b!7925034 () Bool)

(assert (=> b!7925034 (= e!4677268 (and (inv!95687 (xs!19284 (right!57194 (left!56864 (right!57194 t!4440))))) e!4677269))))

(assert (=> b!7924807 (= tp!2358368 (and (inv!95686 (right!57194 (left!56864 (right!57194 t!4440)))) e!4677268))))

(assert (= (and b!7924807 ((_ is Node!15896) (right!57194 (left!56864 (right!57194 t!4440))))) b!7925033))

(assert (= b!7925034 b!7925035))

(assert (= (and b!7924807 ((_ is Leaf!30225) (right!57194 (left!56864 (right!57194 t!4440))))) b!7925034))

(declare-fun m!8305446 () Bool)

(assert (=> b!7925033 m!8305446))

(declare-fun m!8305448 () Bool)

(assert (=> b!7925033 m!8305448))

(declare-fun m!8305450 () Bool)

(assert (=> b!7925034 m!8305450))

(assert (=> b!7924807 m!8305080))

(declare-fun b!7925036 () Bool)

(declare-fun e!4677270 () Bool)

(declare-fun tp!2358423 () Bool)

(assert (=> b!7925036 (= e!4677270 (and tp_is_empty!53217 tp!2358423))))

(assert (=> b!7924809 (= tp!2358366 e!4677270)))

(assert (= (and b!7924809 ((_ is Cons!74442) (innerList!15984 (xs!19284 (left!56864 (right!57194 t!4440)))))) b!7925036))

(declare-fun b!7925037 () Bool)

(declare-fun e!4677271 () Bool)

(declare-fun tp!2358424 () Bool)

(assert (=> b!7925037 (= e!4677271 (and tp_is_empty!53217 tp!2358424))))

(assert (=> b!7924815 (= tp!2358374 e!4677271)))

(assert (= (and b!7924815 ((_ is Cons!74442) (t!390155 (t!390155 (innerList!15984 (xs!19284 t!4440)))))) b!7925037))

(check-sat (not b!7925006) (not b!7924900) (not b!7925008) (not b!7925012) (not b!7924799) (not b!7924981) (not b!7925029) (not b!7925003) (not d!2366473) (not b!7924938) (not b!7925027) (not b!7924972) (not d!2366457) (not b!7924990) (not b!7924984) (not b!7924977) (not b!7925018) (not b!7925023) tp_is_empty!53217 (not b!7924935) (not b!7925015) (not b!7925028) (not b!7924943) (not b!7924965) (not d!2366413) (not b!7924952) (not b!7925025) (not b!7925037) (not b!7925022) (not b!7925016) (not b!7924937) (not b!7924926) (not b!7924978) (not b!7924906) (not d!2366459) (not b!7925024) (not d!2366437) (not b!7925013) (not b!7924945) (not b!7924966) (not b!7924997) (not d!2366449) (not b!7924968) (not b!7925035) (not b!7924969) (not b!7924993) (not b!7924905) (not b!7924902) (not d!2366475) (not b!7924976) (not b!7924899) (not b!7924979) (not b!7924912) (not d!2366447) (not b!7924910) (not b!7924941) (not b!7925007) (not b!7924925) (not b!7924914) (not d!2366513) (not d!2366401) (not b!7925020) (not b!7924961) (not d!2366445) (not b!7924901) (not b!7924973) (not b!7925000) (not b!7925005) (not b!7924954) (not b!7924974) (not d!2366391) (not b!7925001) (not b!7924810) (not b!7924932) (not d!2366499) (not b!7925021) (not b!7924992) (not d!2366487) (not b!7925034) (not b!7924987) (not b!7925009) (not d!2366409) (not b!7925014) (not b!7925017) (not b!7925036) (not d!2366501) (not b!7924956) (not d!2366485) (not b!7924909) (not b!7925030) (not b!7924897) (not d!2366431) (not b!7924995) (not b!7925019) (not b!7924975) (not b!7924998) (not d!2366423) (not d!2366451) (not b!7925010) (not b!7925033) (not b!7924903) (not d!2366427) (not d!2366429) (not b!7924804) (not b!7924908) (not b!7924913) (not b!7924911) (not b!7924970) (not d!2366393) (not b!7924982) (not d!2366435) (not d!2366443) (not b!7925031) (not b!7924960) (not b!7924931) (not b!7924963) (not b!7924898) (not b!7924807) (not d!2366407) (not b!7924986) (not b!7925026) (not b!7924967) (not b!7924928) (not b!7924988) (not b!7925032) (not b!7925011))
(check-sat)
