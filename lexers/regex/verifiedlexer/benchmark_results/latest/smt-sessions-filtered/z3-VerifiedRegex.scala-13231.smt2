; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720336 () Bool)

(assert start!720336)

(declare-fun b_free!134329 () Bool)

(declare-fun b_next!135119 () Bool)

(assert (=> start!720336 (= b_free!134329 (not b_next!135119))))

(declare-fun tp!2100800 () Bool)

(declare-fun b_and!351933 () Bool)

(assert (=> start!720336 (= tp!2100800 b_and!351933)))

(declare-fun b!7384529 () Bool)

(declare-fun e!4420181 () Bool)

(declare-fun tp_is_empty!48947 () Bool)

(declare-fun tp!2100801 () Bool)

(assert (=> b!7384529 (= e!4420181 (and tp_is_empty!48947 tp!2100801))))

(declare-fun res!2978106 () Bool)

(declare-fun e!4420180 () Bool)

(assert (=> start!720336 (=> (not res!2978106) (not e!4420180))))

(declare-datatypes ((B!3873 0))(
  ( (B!3874 (val!29848 Int)) )
))
(declare-datatypes ((List!71847 0))(
  ( (Nil!71723) (Cons!71723 (h!78171 B!3873) (t!386386 List!71847)) )
))
(declare-fun l1!1475 () List!71847)

(declare-fun p!2045 () Int)

(declare-fun forall!18133 (List!71847 Int) Bool)

(assert (=> start!720336 (= res!2978106 (forall!18133 l1!1475 p!2045))))

(assert (=> start!720336 e!4420180))

(assert (=> start!720336 e!4420181))

(assert (=> start!720336 tp!2100800))

(declare-fun e!4420182 () Bool)

(assert (=> start!720336 e!4420182))

(declare-fun b!7384530 () Bool)

(declare-fun l2!1444 () List!71847)

(declare-fun ++!17159 (List!71847 List!71847) List!71847)

(assert (=> b!7384530 (= e!4420180 (not (forall!18133 (++!17159 l1!1475 l2!1444) p!2045)))))

(declare-fun b!7384531 () Bool)

(declare-fun tp!2100799 () Bool)

(assert (=> b!7384531 (= e!4420182 (and tp_is_empty!48947 tp!2100799))))

(declare-fun b!7384532 () Bool)

(declare-fun res!2978107 () Bool)

(assert (=> b!7384532 (=> (not res!2978107) (not e!4420180))))

(assert (=> b!7384532 (= res!2978107 (forall!18133 l2!1444 p!2045))))

(declare-fun b!7384533 () Bool)

(declare-fun res!2978108 () Bool)

(assert (=> b!7384533 (=> (not res!2978108) (not e!4420180))))

(get-info :version)

(assert (=> b!7384533 (= res!2978108 (not ((_ is Cons!71723) l1!1475)))))

(assert (= (and start!720336 res!2978106) b!7384532))

(assert (= (and b!7384532 res!2978107) b!7384533))

(assert (= (and b!7384533 res!2978108) b!7384530))

(assert (= (and start!720336 ((_ is Cons!71723) l1!1475)) b!7384529))

(assert (= (and start!720336 ((_ is Cons!71723) l2!1444)) b!7384531))

(declare-fun m!8033378 () Bool)

(assert (=> start!720336 m!8033378))

(declare-fun m!8033380 () Bool)

(assert (=> b!7384530 m!8033380))

(assert (=> b!7384530 m!8033380))

(declare-fun m!8033382 () Bool)

(assert (=> b!7384530 m!8033382))

(declare-fun m!8033384 () Bool)

(assert (=> b!7384532 m!8033384))

(check-sat (not b!7384529) (not b_next!135119) tp_is_empty!48947 b_and!351933 (not start!720336) (not b!7384532) (not b!7384531) (not b!7384530))
(check-sat b_and!351933 (not b_next!135119))
(get-model)

(declare-fun d!2286312 () Bool)

(declare-fun res!2978121 () Bool)

(declare-fun e!4420195 () Bool)

(assert (=> d!2286312 (=> res!2978121 e!4420195)))

(assert (=> d!2286312 (= res!2978121 ((_ is Nil!71723) (++!17159 l1!1475 l2!1444)))))

(assert (=> d!2286312 (= (forall!18133 (++!17159 l1!1475 l2!1444) p!2045) e!4420195)))

(declare-fun b!7384546 () Bool)

(declare-fun e!4420196 () Bool)

(assert (=> b!7384546 (= e!4420195 e!4420196)))

(declare-fun res!2978122 () Bool)

(assert (=> b!7384546 (=> (not res!2978122) (not e!4420196))))

(declare-fun dynLambda!29547 (Int B!3873) Bool)

(assert (=> b!7384546 (= res!2978122 (dynLambda!29547 p!2045 (h!78171 (++!17159 l1!1475 l2!1444))))))

(declare-fun b!7384547 () Bool)

(assert (=> b!7384547 (= e!4420196 (forall!18133 (t!386386 (++!17159 l1!1475 l2!1444)) p!2045))))

(assert (= (and d!2286312 (not res!2978121)) b!7384546))

(assert (= (and b!7384546 res!2978122) b!7384547))

(declare-fun b_lambda!284903 () Bool)

(assert (=> (not b_lambda!284903) (not b!7384546)))

(declare-fun t!386392 () Bool)

(declare-fun tb!262439 () Bool)

(assert (=> (and start!720336 (= p!2045 p!2045) t!386392) tb!262439))

(declare-fun result!354758 () Bool)

(assert (=> tb!262439 (= result!354758 true)))

(assert (=> b!7384546 t!386392))

(declare-fun b_and!351939 () Bool)

(assert (= b_and!351933 (and (=> t!386392 result!354758) b_and!351939)))

(declare-fun m!8033394 () Bool)

(assert (=> b!7384546 m!8033394))

(declare-fun m!8033396 () Bool)

(assert (=> b!7384547 m!8033396))

(assert (=> b!7384530 d!2286312))

(declare-fun d!2286318 () Bool)

(declare-fun e!4420209 () Bool)

(assert (=> d!2286318 e!4420209))

(declare-fun res!2978135 () Bool)

(assert (=> d!2286318 (=> (not res!2978135) (not e!4420209))))

(declare-fun lt!2617525 () List!71847)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15198 (List!71847) (InoxSet B!3873))

(assert (=> d!2286318 (= res!2978135 (= (content!15198 lt!2617525) ((_ map or) (content!15198 l1!1475) (content!15198 l2!1444))))))

(declare-fun e!4420210 () List!71847)

(assert (=> d!2286318 (= lt!2617525 e!4420210)))

(declare-fun c!1372599 () Bool)

(assert (=> d!2286318 (= c!1372599 ((_ is Nil!71723) l1!1475))))

(assert (=> d!2286318 (= (++!17159 l1!1475 l2!1444) lt!2617525)))

(declare-fun b!7384573 () Bool)

(assert (=> b!7384573 (= e!4420209 (or (not (= l2!1444 Nil!71723)) (= lt!2617525 l1!1475)))))

(declare-fun b!7384570 () Bool)

(assert (=> b!7384570 (= e!4420210 l2!1444)))

(declare-fun b!7384571 () Bool)

(assert (=> b!7384571 (= e!4420210 (Cons!71723 (h!78171 l1!1475) (++!17159 (t!386386 l1!1475) l2!1444)))))

(declare-fun b!7384572 () Bool)

(declare-fun res!2978136 () Bool)

(assert (=> b!7384572 (=> (not res!2978136) (not e!4420209))))

(declare-fun size!42176 (List!71847) Int)

(assert (=> b!7384572 (= res!2978136 (= (size!42176 lt!2617525) (+ (size!42176 l1!1475) (size!42176 l2!1444))))))

(assert (= (and d!2286318 c!1372599) b!7384570))

(assert (= (and d!2286318 (not c!1372599)) b!7384571))

(assert (= (and d!2286318 res!2978135) b!7384572))

(assert (= (and b!7384572 res!2978136) b!7384573))

(declare-fun m!8033416 () Bool)

(assert (=> d!2286318 m!8033416))

(declare-fun m!8033418 () Bool)

(assert (=> d!2286318 m!8033418))

(declare-fun m!8033420 () Bool)

(assert (=> d!2286318 m!8033420))

(declare-fun m!8033422 () Bool)

(assert (=> b!7384571 m!8033422))

(declare-fun m!8033424 () Bool)

(assert (=> b!7384572 m!8033424))

(declare-fun m!8033426 () Bool)

(assert (=> b!7384572 m!8033426))

(declare-fun m!8033428 () Bool)

(assert (=> b!7384572 m!8033428))

(assert (=> b!7384530 d!2286318))

(declare-fun d!2286322 () Bool)

(declare-fun res!2978137 () Bool)

(declare-fun e!4420213 () Bool)

(assert (=> d!2286322 (=> res!2978137 e!4420213)))

(assert (=> d!2286322 (= res!2978137 ((_ is Nil!71723) l2!1444))))

(assert (=> d!2286322 (= (forall!18133 l2!1444 p!2045) e!4420213)))

(declare-fun b!7384578 () Bool)

(declare-fun e!4420214 () Bool)

(assert (=> b!7384578 (= e!4420213 e!4420214)))

(declare-fun res!2978138 () Bool)

(assert (=> b!7384578 (=> (not res!2978138) (not e!4420214))))

(assert (=> b!7384578 (= res!2978138 (dynLambda!29547 p!2045 (h!78171 l2!1444)))))

(declare-fun b!7384579 () Bool)

(assert (=> b!7384579 (= e!4420214 (forall!18133 (t!386386 l2!1444) p!2045))))

(assert (= (and d!2286322 (not res!2978137)) b!7384578))

(assert (= (and b!7384578 res!2978138) b!7384579))

(declare-fun b_lambda!284907 () Bool)

(assert (=> (not b_lambda!284907) (not b!7384578)))

(declare-fun t!386396 () Bool)

(declare-fun tb!262443 () Bool)

(assert (=> (and start!720336 (= p!2045 p!2045) t!386396) tb!262443))

(declare-fun result!354764 () Bool)

(assert (=> tb!262443 (= result!354764 true)))

(assert (=> b!7384578 t!386396))

(declare-fun b_and!351943 () Bool)

(assert (= b_and!351939 (and (=> t!386396 result!354764) b_and!351943)))

(declare-fun m!8033430 () Bool)

(assert (=> b!7384578 m!8033430))

(declare-fun m!8033432 () Bool)

(assert (=> b!7384579 m!8033432))

(assert (=> b!7384532 d!2286322))

(declare-fun d!2286324 () Bool)

(declare-fun res!2978139 () Bool)

(declare-fun e!4420217 () Bool)

(assert (=> d!2286324 (=> res!2978139 e!4420217)))

(assert (=> d!2286324 (= res!2978139 ((_ is Nil!71723) l1!1475))))

(assert (=> d!2286324 (= (forall!18133 l1!1475 p!2045) e!4420217)))

(declare-fun b!7384582 () Bool)

(declare-fun e!4420218 () Bool)

(assert (=> b!7384582 (= e!4420217 e!4420218)))

(declare-fun res!2978140 () Bool)

(assert (=> b!7384582 (=> (not res!2978140) (not e!4420218))))

(assert (=> b!7384582 (= res!2978140 (dynLambda!29547 p!2045 (h!78171 l1!1475)))))

(declare-fun b!7384583 () Bool)

(assert (=> b!7384583 (= e!4420218 (forall!18133 (t!386386 l1!1475) p!2045))))

(assert (= (and d!2286324 (not res!2978139)) b!7384582))

(assert (= (and b!7384582 res!2978140) b!7384583))

(declare-fun b_lambda!284915 () Bool)

(assert (=> (not b_lambda!284915) (not b!7384582)))

(declare-fun t!386398 () Bool)

(declare-fun tb!262445 () Bool)

(assert (=> (and start!720336 (= p!2045 p!2045) t!386398) tb!262445))

(declare-fun result!354766 () Bool)

(assert (=> tb!262445 (= result!354766 true)))

(assert (=> b!7384582 t!386398))

(declare-fun b_and!351945 () Bool)

(assert (= b_and!351943 (and (=> t!386398 result!354766) b_and!351945)))

(declare-fun m!8033434 () Bool)

(assert (=> b!7384582 m!8033434))

(declare-fun m!8033436 () Bool)

(assert (=> b!7384583 m!8033436))

(assert (=> start!720336 d!2286324))

(declare-fun b!7384588 () Bool)

(declare-fun e!4420221 () Bool)

(declare-fun tp!2100808 () Bool)

(assert (=> b!7384588 (= e!4420221 (and tp_is_empty!48947 tp!2100808))))

(assert (=> b!7384531 (= tp!2100799 e!4420221)))

(assert (= (and b!7384531 ((_ is Cons!71723) (t!386386 l2!1444))) b!7384588))

(declare-fun b!7384589 () Bool)

(declare-fun e!4420222 () Bool)

(declare-fun tp!2100809 () Bool)

(assert (=> b!7384589 (= e!4420222 (and tp_is_empty!48947 tp!2100809))))

(assert (=> b!7384529 (= tp!2100801 e!4420222)))

(assert (= (and b!7384529 ((_ is Cons!71723) (t!386386 l1!1475))) b!7384589))

(declare-fun b_lambda!284917 () Bool)

(assert (= b_lambda!284907 (or (and start!720336 b_free!134329) b_lambda!284917)))

(declare-fun b_lambda!284919 () Bool)

(assert (= b_lambda!284915 (or (and start!720336 b_free!134329) b_lambda!284919)))

(declare-fun b_lambda!284921 () Bool)

(assert (= b_lambda!284903 (or (and start!720336 b_free!134329) b_lambda!284921)))

(check-sat b_and!351945 (not b_next!135119) tp_is_empty!48947 (not b_lambda!284919) (not b_lambda!284921) (not b!7384588) (not b!7384547) (not b!7384572) (not b!7384589) (not d!2286318) (not b!7384571) (not b!7384583) (not b_lambda!284917) (not b!7384579))
(check-sat b_and!351945 (not b_next!135119))
