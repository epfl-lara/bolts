; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87516 () Bool)

(assert start!87516)

(declare-fun res!680359 () Bool)

(declare-fun e!569941 () Bool)

(assert (=> start!87516 (=> (not res!680359) (not e!569941))))

(declare-datatypes ((B!1390 0))(
  ( (B!1391 (val!11779 Int)) )
))
(declare-datatypes ((tuple2!15194 0))(
  ( (tuple2!15195 (_1!7607 (_ BitVec 64)) (_2!7607 B!1390)) )
))
(declare-datatypes ((List!21512 0))(
  ( (Nil!21509) (Cons!21508 (h!22706 tuple2!15194) (t!30521 List!21512)) )
))
(declare-fun l!412 () List!21512)

(declare-fun isStrictlySorted!549 (List!21512) Bool)

(assert (=> start!87516 (= res!680359 (isStrictlySorted!549 l!412))))

(assert (=> start!87516 e!569941))

(declare-fun e!569942 () Bool)

(assert (=> start!87516 e!569942))

(declare-fun b!1013106 () Bool)

(declare-fun ListPrimitiveSize!98 (List!21512) Int)

(assert (=> b!1013106 (= e!569941 (< (ListPrimitiveSize!98 l!412) 0))))

(declare-fun b!1013107 () Bool)

(declare-fun tp_is_empty!23457 () Bool)

(declare-fun tp!70395 () Bool)

(assert (=> b!1013107 (= e!569942 (and tp_is_empty!23457 tp!70395))))

(assert (= (and start!87516 res!680359) b!1013106))

(get-info :version)

(assert (= (and start!87516 ((_ is Cons!21508) l!412)) b!1013107))

(declare-fun m!936421 () Bool)

(assert (=> start!87516 m!936421))

(declare-fun m!936423 () Bool)

(assert (=> b!1013106 m!936423))

(check-sat (not b!1013106) (not start!87516) (not b!1013107) tp_is_empty!23457)
(check-sat)
(get-model)

(declare-fun d!120369 () Bool)

(declare-fun lt!447858 () Int)

(assert (=> d!120369 (>= lt!447858 0)))

(declare-fun e!569959 () Int)

(assert (=> d!120369 (= lt!447858 e!569959)))

(declare-fun c!102357 () Bool)

(assert (=> d!120369 (= c!102357 ((_ is Nil!21509) l!412))))

(assert (=> d!120369 (= (ListPrimitiveSize!98 l!412) lt!447858)))

(declare-fun b!1013124 () Bool)

(assert (=> b!1013124 (= e!569959 0)))

(declare-fun b!1013125 () Bool)

(assert (=> b!1013125 (= e!569959 (+ 1 (ListPrimitiveSize!98 (t!30521 l!412))))))

(assert (= (and d!120369 c!102357) b!1013124))

(assert (= (and d!120369 (not c!102357)) b!1013125))

(declare-fun m!936429 () Bool)

(assert (=> b!1013125 m!936429))

(assert (=> b!1013106 d!120369))

(declare-fun d!120375 () Bool)

(declare-fun res!680379 () Bool)

(declare-fun e!569972 () Bool)

(assert (=> d!120375 (=> res!680379 e!569972)))

(assert (=> d!120375 (= res!680379 (or ((_ is Nil!21509) l!412) ((_ is Nil!21509) (t!30521 l!412))))))

(assert (=> d!120375 (= (isStrictlySorted!549 l!412) e!569972)))

(declare-fun b!1013144 () Bool)

(declare-fun e!569973 () Bool)

(assert (=> b!1013144 (= e!569972 e!569973)))

(declare-fun res!680380 () Bool)

(assert (=> b!1013144 (=> (not res!680380) (not e!569973))))

(assert (=> b!1013144 (= res!680380 (bvslt (_1!7607 (h!22706 l!412)) (_1!7607 (h!22706 (t!30521 l!412)))))))

(declare-fun b!1013145 () Bool)

(assert (=> b!1013145 (= e!569973 (isStrictlySorted!549 (t!30521 l!412)))))

(assert (= (and d!120375 (not res!680379)) b!1013144))

(assert (= (and b!1013144 res!680380) b!1013145))

(declare-fun m!936435 () Bool)

(assert (=> b!1013145 m!936435))

(assert (=> start!87516 d!120375))

(declare-fun b!1013158 () Bool)

(declare-fun e!569980 () Bool)

(declare-fun tp!70401 () Bool)

(assert (=> b!1013158 (= e!569980 (and tp_is_empty!23457 tp!70401))))

(assert (=> b!1013107 (= tp!70395 e!569980)))

(assert (= (and b!1013107 ((_ is Cons!21508) (t!30521 l!412))) b!1013158))

(check-sat (not b!1013125) (not b!1013145) (not b!1013158) tp_is_empty!23457)
(check-sat)
