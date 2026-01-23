; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274486 () Bool)

(assert start!274486)

(declare-fun b_free!81095 () Bool)

(declare-fun b_next!81799 () Bool)

(assert (=> start!274486 (= b_free!81095 (not b_next!81799))))

(declare-fun tp!903050 () Bool)

(declare-fun b_and!206693 () Bool)

(assert (=> start!274486 (= tp!903050 b_and!206693)))

(declare-fun b!2827357 () Bool)

(declare-fun res!1176885 () Bool)

(declare-fun e!1789530 () Bool)

(assert (=> b!2827357 (=> (not res!1176885) (not e!1789530))))

(declare-datatypes ((B!2481 0))(
  ( (B!2482 (val!10460 Int)) )
))
(declare-datatypes ((List!33349 0))(
  ( (Nil!33225) (Cons!33225 (h!38645 B!2481) (t!231100 List!33349)) )
))
(declare-fun l2!930 () List!33349)

(declare-fun p!1912 () Int)

(declare-fun forall!6825 (List!33349 Int) Bool)

(assert (=> b!2827357 (= res!1176885 (forall!6825 (t!231100 l2!930) p!1912))))

(declare-fun b!2827358 () Bool)

(declare-fun ListPrimitiveSize!217 (List!33349) Int)

(assert (=> b!2827358 (= e!1789530 (>= (ListPrimitiveSize!217 (t!231100 l2!930)) (ListPrimitiveSize!217 l2!930)))))

(declare-fun b!2827359 () Bool)

(declare-fun res!1176883 () Bool)

(assert (=> b!2827359 (=> (not res!1176883) (not e!1789530))))

(declare-fun l1!953 () List!33349)

(declare-fun subseq!479 (List!33349 List!33349) Bool)

(assert (=> b!2827359 (= res!1176883 (subseq!479 l1!953 l2!930))))

(declare-fun res!1176886 () Bool)

(assert (=> start!274486 (=> (not res!1176886) (not e!1789530))))

(assert (=> start!274486 (= res!1176886 (forall!6825 l2!930 p!1912))))

(assert (=> start!274486 e!1789530))

(declare-fun e!1789529 () Bool)

(assert (=> start!274486 e!1789529))

(assert (=> start!274486 tp!903050))

(declare-fun e!1789528 () Bool)

(assert (=> start!274486 e!1789528))

(declare-fun b!2827360 () Bool)

(declare-fun res!1176887 () Bool)

(assert (=> b!2827360 (=> (not res!1176887) (not e!1789530))))

(get-info :version)

(assert (=> b!2827360 (= res!1176887 (and (not ((_ is Nil!33225) l1!953)) ((_ is Cons!33225) l2!930) (= (h!38645 l1!953) (h!38645 l2!930))))))

(declare-fun b!2827361 () Bool)

(declare-fun tp_is_empty!14531 () Bool)

(declare-fun tp!903052 () Bool)

(assert (=> b!2827361 (= e!1789529 (and tp_is_empty!14531 tp!903052))))

(declare-fun b!2827362 () Bool)

(declare-fun res!1176884 () Bool)

(assert (=> b!2827362 (=> (not res!1176884) (not e!1789530))))

(assert (=> b!2827362 (= res!1176884 (subseq!479 (t!231100 l1!953) (t!231100 l2!930)))))

(declare-fun b!2827363 () Bool)

(declare-fun tp!903051 () Bool)

(assert (=> b!2827363 (= e!1789528 (and tp_is_empty!14531 tp!903051))))

(assert (= (and start!274486 res!1176886) b!2827359))

(assert (= (and b!2827359 res!1176883) b!2827360))

(assert (= (and b!2827360 res!1176887) b!2827362))

(assert (= (and b!2827362 res!1176884) b!2827357))

(assert (= (and b!2827357 res!1176885) b!2827358))

(assert (= (and start!274486 ((_ is Cons!33225) l2!930)) b!2827361))

(assert (= (and start!274486 ((_ is Cons!33225) l1!953)) b!2827363))

(declare-fun m!3257083 () Bool)

(assert (=> b!2827359 m!3257083))

(declare-fun m!3257085 () Bool)

(assert (=> b!2827362 m!3257085))

(declare-fun m!3257087 () Bool)

(assert (=> b!2827357 m!3257087))

(declare-fun m!3257089 () Bool)

(assert (=> start!274486 m!3257089))

(declare-fun m!3257091 () Bool)

(assert (=> b!2827358 m!3257091))

(declare-fun m!3257093 () Bool)

(assert (=> b!2827358 m!3257093))

(check-sat (not b!2827362) (not b!2827359) (not b!2827358) (not start!274486) (not b!2827363) tp_is_empty!14531 b_and!206693 (not b!2827357) (not b!2827361) (not b_next!81799))
(check-sat b_and!206693 (not b_next!81799))
(get-model)

(declare-fun d!820527 () Bool)

(declare-fun lt!1008548 () Int)

(assert (=> d!820527 (>= lt!1008548 0)))

(declare-fun e!1789533 () Int)

(assert (=> d!820527 (= lt!1008548 e!1789533)))

(declare-fun c!457526 () Bool)

(assert (=> d!820527 (= c!457526 ((_ is Nil!33225) (t!231100 l2!930)))))

(assert (=> d!820527 (= (ListPrimitiveSize!217 (t!231100 l2!930)) lt!1008548)))

(declare-fun b!2827368 () Bool)

(assert (=> b!2827368 (= e!1789533 0)))

(declare-fun b!2827369 () Bool)

(assert (=> b!2827369 (= e!1789533 (+ 1 (ListPrimitiveSize!217 (t!231100 (t!231100 l2!930)))))))

(assert (= (and d!820527 c!457526) b!2827368))

(assert (= (and d!820527 (not c!457526)) b!2827369))

(declare-fun m!3257095 () Bool)

(assert (=> b!2827369 m!3257095))

(assert (=> b!2827358 d!820527))

(declare-fun d!820529 () Bool)

(declare-fun lt!1008549 () Int)

(assert (=> d!820529 (>= lt!1008549 0)))

(declare-fun e!1789534 () Int)

(assert (=> d!820529 (= lt!1008549 e!1789534)))

(declare-fun c!457527 () Bool)

(assert (=> d!820529 (= c!457527 ((_ is Nil!33225) l2!930))))

(assert (=> d!820529 (= (ListPrimitiveSize!217 l2!930) lt!1008549)))

(declare-fun b!2827370 () Bool)

(assert (=> b!2827370 (= e!1789534 0)))

(declare-fun b!2827371 () Bool)

(assert (=> b!2827371 (= e!1789534 (+ 1 (ListPrimitiveSize!217 (t!231100 l2!930))))))

(assert (= (and d!820529 c!457527) b!2827370))

(assert (= (and d!820529 (not c!457527)) b!2827371))

(assert (=> b!2827371 m!3257091))

(assert (=> b!2827358 d!820529))

(declare-fun b!2827382 () Bool)

(declare-fun e!1789543 () Bool)

(assert (=> b!2827382 (= e!1789543 (subseq!479 (t!231100 l1!953) (t!231100 l2!930)))))

(declare-fun d!820531 () Bool)

(declare-fun res!1176896 () Bool)

(declare-fun e!1789546 () Bool)

(assert (=> d!820531 (=> res!1176896 e!1789546)))

(assert (=> d!820531 (= res!1176896 ((_ is Nil!33225) l1!953))))

(assert (=> d!820531 (= (subseq!479 l1!953 l2!930) e!1789546)))

(declare-fun b!2827381 () Bool)

(declare-fun e!1789544 () Bool)

(declare-fun e!1789545 () Bool)

(assert (=> b!2827381 (= e!1789544 e!1789545)))

(declare-fun res!1176899 () Bool)

(assert (=> b!2827381 (=> res!1176899 e!1789545)))

(assert (=> b!2827381 (= res!1176899 e!1789543)))

(declare-fun res!1176898 () Bool)

(assert (=> b!2827381 (=> (not res!1176898) (not e!1789543))))

(assert (=> b!2827381 (= res!1176898 (= (h!38645 l1!953) (h!38645 l2!930)))))

(declare-fun b!2827383 () Bool)

(assert (=> b!2827383 (= e!1789545 (subseq!479 l1!953 (t!231100 l2!930)))))

(declare-fun b!2827380 () Bool)

(assert (=> b!2827380 (= e!1789546 e!1789544)))

(declare-fun res!1176897 () Bool)

(assert (=> b!2827380 (=> (not res!1176897) (not e!1789544))))

(assert (=> b!2827380 (= res!1176897 ((_ is Cons!33225) l2!930))))

(assert (= (and d!820531 (not res!1176896)) b!2827380))

(assert (= (and b!2827380 res!1176897) b!2827381))

(assert (= (and b!2827381 res!1176898) b!2827382))

(assert (= (and b!2827381 (not res!1176899)) b!2827383))

(assert (=> b!2827382 m!3257085))

(declare-fun m!3257097 () Bool)

(assert (=> b!2827383 m!3257097))

(assert (=> b!2827359 d!820531))

(declare-fun d!820535 () Bool)

(declare-fun res!1176904 () Bool)

(declare-fun e!1789551 () Bool)

(assert (=> d!820535 (=> res!1176904 e!1789551)))

(assert (=> d!820535 (= res!1176904 ((_ is Nil!33225) l2!930))))

(assert (=> d!820535 (= (forall!6825 l2!930 p!1912) e!1789551)))

(declare-fun b!2827388 () Bool)

(declare-fun e!1789552 () Bool)

(assert (=> b!2827388 (= e!1789551 e!1789552)))

(declare-fun res!1176905 () Bool)

(assert (=> b!2827388 (=> (not res!1176905) (not e!1789552))))

(declare-fun dynLambda!13969 (Int B!2481) Bool)

(assert (=> b!2827388 (= res!1176905 (dynLambda!13969 p!1912 (h!38645 l2!930)))))

(declare-fun b!2827389 () Bool)

(assert (=> b!2827389 (= e!1789552 (forall!6825 (t!231100 l2!930) p!1912))))

(assert (= (and d!820535 (not res!1176904)) b!2827388))

(assert (= (and b!2827388 res!1176905) b!2827389))

(declare-fun b_lambda!84867 () Bool)

(assert (=> (not b_lambda!84867) (not b!2827388)))

(declare-fun t!231102 () Bool)

(declare-fun tb!154109 () Bool)

(assert (=> (and start!274486 (= p!1912 p!1912) t!231102) tb!154109))

(declare-fun result!192030 () Bool)

(assert (=> tb!154109 (= result!192030 true)))

(assert (=> b!2827388 t!231102))

(declare-fun b_and!206695 () Bool)

(assert (= b_and!206693 (and (=> t!231102 result!192030) b_and!206695)))

(declare-fun m!3257099 () Bool)

(assert (=> b!2827388 m!3257099))

(assert (=> b!2827389 m!3257087))

(assert (=> start!274486 d!820535))

(declare-fun d!820537 () Bool)

(declare-fun res!1176906 () Bool)

(declare-fun e!1789553 () Bool)

(assert (=> d!820537 (=> res!1176906 e!1789553)))

(assert (=> d!820537 (= res!1176906 ((_ is Nil!33225) (t!231100 l2!930)))))

(assert (=> d!820537 (= (forall!6825 (t!231100 l2!930) p!1912) e!1789553)))

(declare-fun b!2827390 () Bool)

(declare-fun e!1789554 () Bool)

(assert (=> b!2827390 (= e!1789553 e!1789554)))

(declare-fun res!1176907 () Bool)

(assert (=> b!2827390 (=> (not res!1176907) (not e!1789554))))

(assert (=> b!2827390 (= res!1176907 (dynLambda!13969 p!1912 (h!38645 (t!231100 l2!930))))))

(declare-fun b!2827391 () Bool)

(assert (=> b!2827391 (= e!1789554 (forall!6825 (t!231100 (t!231100 l2!930)) p!1912))))

(assert (= (and d!820537 (not res!1176906)) b!2827390))

(assert (= (and b!2827390 res!1176907) b!2827391))

(declare-fun b_lambda!84869 () Bool)

(assert (=> (not b_lambda!84869) (not b!2827390)))

(declare-fun t!231104 () Bool)

(declare-fun tb!154111 () Bool)

(assert (=> (and start!274486 (= p!1912 p!1912) t!231104) tb!154111))

(declare-fun result!192032 () Bool)

(assert (=> tb!154111 (= result!192032 true)))

(assert (=> b!2827390 t!231104))

(declare-fun b_and!206697 () Bool)

(assert (= b_and!206695 (and (=> t!231104 result!192032) b_and!206697)))

(declare-fun m!3257101 () Bool)

(assert (=> b!2827390 m!3257101))

(declare-fun m!3257103 () Bool)

(assert (=> b!2827391 m!3257103))

(assert (=> b!2827357 d!820537))

(declare-fun b!2827394 () Bool)

(declare-fun e!1789555 () Bool)

(assert (=> b!2827394 (= e!1789555 (subseq!479 (t!231100 (t!231100 l1!953)) (t!231100 (t!231100 l2!930))))))

(declare-fun d!820539 () Bool)

(declare-fun res!1176908 () Bool)

(declare-fun e!1789558 () Bool)

(assert (=> d!820539 (=> res!1176908 e!1789558)))

(assert (=> d!820539 (= res!1176908 ((_ is Nil!33225) (t!231100 l1!953)))))

(assert (=> d!820539 (= (subseq!479 (t!231100 l1!953) (t!231100 l2!930)) e!1789558)))

(declare-fun b!2827393 () Bool)

(declare-fun e!1789556 () Bool)

(declare-fun e!1789557 () Bool)

(assert (=> b!2827393 (= e!1789556 e!1789557)))

(declare-fun res!1176911 () Bool)

(assert (=> b!2827393 (=> res!1176911 e!1789557)))

(assert (=> b!2827393 (= res!1176911 e!1789555)))

(declare-fun res!1176910 () Bool)

(assert (=> b!2827393 (=> (not res!1176910) (not e!1789555))))

(assert (=> b!2827393 (= res!1176910 (= (h!38645 (t!231100 l1!953)) (h!38645 (t!231100 l2!930))))))

(declare-fun b!2827395 () Bool)

(assert (=> b!2827395 (= e!1789557 (subseq!479 (t!231100 l1!953) (t!231100 (t!231100 l2!930))))))

(declare-fun b!2827392 () Bool)

(assert (=> b!2827392 (= e!1789558 e!1789556)))

(declare-fun res!1176909 () Bool)

(assert (=> b!2827392 (=> (not res!1176909) (not e!1789556))))

(assert (=> b!2827392 (= res!1176909 ((_ is Cons!33225) (t!231100 l2!930)))))

(assert (= (and d!820539 (not res!1176908)) b!2827392))

(assert (= (and b!2827392 res!1176909) b!2827393))

(assert (= (and b!2827393 res!1176910) b!2827394))

(assert (= (and b!2827393 (not res!1176911)) b!2827395))

(declare-fun m!3257105 () Bool)

(assert (=> b!2827394 m!3257105))

(declare-fun m!3257107 () Bool)

(assert (=> b!2827395 m!3257107))

(assert (=> b!2827362 d!820539))

(declare-fun b!2827400 () Bool)

(declare-fun e!1789561 () Bool)

(declare-fun tp!903055 () Bool)

(assert (=> b!2827400 (= e!1789561 (and tp_is_empty!14531 tp!903055))))

(assert (=> b!2827363 (= tp!903051 e!1789561)))

(assert (= (and b!2827363 ((_ is Cons!33225) (t!231100 l1!953))) b!2827400))

(declare-fun b!2827401 () Bool)

(declare-fun e!1789562 () Bool)

(declare-fun tp!903056 () Bool)

(assert (=> b!2827401 (= e!1789562 (and tp_is_empty!14531 tp!903056))))

(assert (=> b!2827361 (= tp!903052 e!1789562)))

(assert (= (and b!2827361 ((_ is Cons!33225) (t!231100 l2!930))) b!2827401))

(declare-fun b_lambda!84871 () Bool)

(assert (= b_lambda!84869 (or (and start!274486 b_free!81095) b_lambda!84871)))

(declare-fun b_lambda!84873 () Bool)

(assert (= b_lambda!84867 (or (and start!274486 b_free!81095) b_lambda!84873)))

(check-sat (not b!2827371) (not b!2827369) (not b!2827395) (not b!2827382) (not b!2827401) (not b!2827389) b_and!206697 (not b!2827394) (not b_next!81799) (not b!2827400) (not b_lambda!84873) (not b!2827383) (not b_lambda!84871) tp_is_empty!14531 (not b!2827391))
(check-sat b_and!206697 (not b_next!81799))
