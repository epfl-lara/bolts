; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231028 () Bool)

(assert start!231028)

(declare-fun res!1000646 () Bool)

(declare-fun e!1505431 () Bool)

(assert (=> start!231028 (=> (not res!1000646) (not e!1505431))))

(declare-datatypes ((B!1853 0))(
  ( (B!1854 (val!8138 Int)) )
))
(declare-datatypes ((List!27950 0))(
  ( (Nil!27852) (Cons!27852 (h!33253 B!1853) (t!207809 List!27950)) )
))
(declare-fun l1!1275 () List!27950)

(declare-fun l3!250 () List!27950)

(declare-fun subseq!437 (List!27950 List!27950) Bool)

(assert (=> start!231028 (= res!1000646 (subseq!437 l1!1275 l3!250))))

(assert (=> start!231028 e!1505431))

(declare-fun e!1505434 () Bool)

(assert (=> start!231028 e!1505434))

(declare-fun e!1505433 () Bool)

(assert (=> start!231028 e!1505433))

(declare-fun e!1505432 () Bool)

(assert (=> start!231028 e!1505432))

(declare-fun b!2357368 () Bool)

(declare-fun tp_is_empty!11109 () Bool)

(declare-fun tp!753579 () Bool)

(assert (=> b!2357368 (= e!1505432 (and tp_is_empty!11109 tp!753579))))

(declare-fun b!2357369 () Bool)

(declare-fun res!1000647 () Bool)

(assert (=> b!2357369 (=> (not res!1000647) (not e!1505431))))

(declare-fun l2!1244 () List!27950)

(get-info :version)

(assert (=> b!2357369 (= res!1000647 ((_ is Cons!27852) l2!1244))))

(declare-fun b!2357370 () Bool)

(declare-fun ListPrimitiveSize!161 (List!27950) Int)

(assert (=> b!2357370 (= e!1505431 (>= (ListPrimitiveSize!161 (t!207809 l2!1244)) (ListPrimitiveSize!161 l2!1244)))))

(declare-fun b!2357371 () Bool)

(declare-fun tp!753577 () Bool)

(assert (=> b!2357371 (= e!1505434 (and tp_is_empty!11109 tp!753577))))

(declare-fun b!2357372 () Bool)

(declare-fun tp!753578 () Bool)

(assert (=> b!2357372 (= e!1505433 (and tp_is_empty!11109 tp!753578))))

(assert (= (and start!231028 res!1000646) b!2357369))

(assert (= (and b!2357369 res!1000647) b!2357370))

(assert (= (and start!231028 ((_ is Cons!27852) l1!1275)) b!2357371))

(assert (= (and start!231028 ((_ is Cons!27852) l3!250)) b!2357372))

(assert (= (and start!231028 ((_ is Cons!27852) l2!1244)) b!2357368))

(declare-fun m!2770445 () Bool)

(assert (=> start!231028 m!2770445))

(declare-fun m!2770447 () Bool)

(assert (=> b!2357370 m!2770447))

(declare-fun m!2770449 () Bool)

(assert (=> b!2357370 m!2770449))

(check-sat tp_is_empty!11109 (not b!2357371) (not b!2357372) (not start!231028) (not b!2357370) (not b!2357368))
(check-sat)
(get-model)

(declare-fun b!2357397 () Bool)

(declare-fun e!1505455 () Bool)

(declare-fun e!1505456 () Bool)

(assert (=> b!2357397 (= e!1505455 e!1505456)))

(declare-fun res!1000666 () Bool)

(assert (=> b!2357397 (=> (not res!1000666) (not e!1505456))))

(assert (=> b!2357397 (= res!1000666 ((_ is Cons!27852) l3!250))))

(declare-fun d!693211 () Bool)

(declare-fun res!1000664 () Bool)

(assert (=> d!693211 (=> res!1000664 e!1505455)))

(assert (=> d!693211 (= res!1000664 ((_ is Nil!27852) l1!1275))))

(assert (=> d!693211 (= (subseq!437 l1!1275 l3!250) e!1505455)))

(declare-fun b!2357400 () Bool)

(declare-fun e!1505458 () Bool)

(assert (=> b!2357400 (= e!1505458 (subseq!437 l1!1275 (t!207809 l3!250)))))

(declare-fun b!2357398 () Bool)

(assert (=> b!2357398 (= e!1505456 e!1505458)))

(declare-fun res!1000665 () Bool)

(assert (=> b!2357398 (=> res!1000665 e!1505458)))

(declare-fun e!1505457 () Bool)

(assert (=> b!2357398 (= res!1000665 e!1505457)))

(declare-fun res!1000667 () Bool)

(assert (=> b!2357398 (=> (not res!1000667) (not e!1505457))))

(assert (=> b!2357398 (= res!1000667 (= (h!33253 l1!1275) (h!33253 l3!250)))))

(declare-fun b!2357399 () Bool)

(assert (=> b!2357399 (= e!1505457 (subseq!437 (t!207809 l1!1275) (t!207809 l3!250)))))

(assert (= (and d!693211 (not res!1000664)) b!2357397))

(assert (= (and b!2357397 res!1000666) b!2357398))

(assert (= (and b!2357398 res!1000667) b!2357399))

(assert (= (and b!2357398 (not res!1000665)) b!2357400))

(declare-fun m!2770453 () Bool)

(assert (=> b!2357400 m!2770453))

(declare-fun m!2770455 () Bool)

(assert (=> b!2357399 m!2770455))

(assert (=> start!231028 d!693211))

(declare-fun d!693217 () Bool)

(declare-fun lt!863098 () Int)

(assert (=> d!693217 (>= lt!863098 0)))

(declare-fun e!1505470 () Int)

(assert (=> d!693217 (= lt!863098 e!1505470)))

(declare-fun c!374790 () Bool)

(assert (=> d!693217 (= c!374790 ((_ is Nil!27852) (t!207809 l2!1244)))))

(assert (=> d!693217 (= (ListPrimitiveSize!161 (t!207809 l2!1244)) lt!863098)))

(declare-fun b!2357416 () Bool)

(assert (=> b!2357416 (= e!1505470 0)))

(declare-fun b!2357417 () Bool)

(assert (=> b!2357417 (= e!1505470 (+ 1 (ListPrimitiveSize!161 (t!207809 (t!207809 l2!1244)))))))

(assert (= (and d!693217 c!374790) b!2357416))

(assert (= (and d!693217 (not c!374790)) b!2357417))

(declare-fun m!2770461 () Bool)

(assert (=> b!2357417 m!2770461))

(assert (=> b!2357370 d!693217))

(declare-fun d!693219 () Bool)

(declare-fun lt!863099 () Int)

(assert (=> d!693219 (>= lt!863099 0)))

(declare-fun e!1505471 () Int)

(assert (=> d!693219 (= lt!863099 e!1505471)))

(declare-fun c!374791 () Bool)

(assert (=> d!693219 (= c!374791 ((_ is Nil!27852) l2!1244))))

(assert (=> d!693219 (= (ListPrimitiveSize!161 l2!1244) lt!863099)))

(declare-fun b!2357418 () Bool)

(assert (=> b!2357418 (= e!1505471 0)))

(declare-fun b!2357419 () Bool)

(assert (=> b!2357419 (= e!1505471 (+ 1 (ListPrimitiveSize!161 (t!207809 l2!1244))))))

(assert (= (and d!693219 c!374791) b!2357418))

(assert (= (and d!693219 (not c!374791)) b!2357419))

(assert (=> b!2357419 m!2770447))

(assert (=> b!2357370 d!693219))

(declare-fun b!2357424 () Bool)

(declare-fun e!1505474 () Bool)

(declare-fun tp!753587 () Bool)

(assert (=> b!2357424 (= e!1505474 (and tp_is_empty!11109 tp!753587))))

(assert (=> b!2357371 (= tp!753577 e!1505474)))

(assert (= (and b!2357371 ((_ is Cons!27852) (t!207809 l1!1275))) b!2357424))

(declare-fun b!2357425 () Bool)

(declare-fun e!1505475 () Bool)

(declare-fun tp!753588 () Bool)

(assert (=> b!2357425 (= e!1505475 (and tp_is_empty!11109 tp!753588))))

(assert (=> b!2357372 (= tp!753578 e!1505475)))

(assert (= (and b!2357372 ((_ is Cons!27852) (t!207809 l3!250))) b!2357425))

(declare-fun b!2357426 () Bool)

(declare-fun e!1505476 () Bool)

(declare-fun tp!753589 () Bool)

(assert (=> b!2357426 (= e!1505476 (and tp_is_empty!11109 tp!753589))))

(assert (=> b!2357368 (= tp!753579 e!1505476)))

(assert (= (and b!2357368 ((_ is Cons!27852) (t!207809 l2!1244))) b!2357426))

(check-sat tp_is_empty!11109 (not b!2357399) (not b!2357417) (not b!2357419) (not b!2357425) (not b!2357426) (not b!2357424) (not b!2357400))
(check-sat)
