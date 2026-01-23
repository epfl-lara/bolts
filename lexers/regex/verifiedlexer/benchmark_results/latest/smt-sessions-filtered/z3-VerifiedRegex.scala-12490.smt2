; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694992 () Bool)

(assert start!694992)

(declare-fun b_free!133841 () Bool)

(declare-fun b_next!134631 () Bool)

(assert (=> start!694992 (= b_free!133841 (not b_next!134631))))

(declare-fun tp!1966348 () Bool)

(declare-fun b_and!351031 () Bool)

(assert (=> start!694992 (= tp!1966348 b_and!351031)))

(declare-fun b!7133522 () Bool)

(declare-fun res!2910706 () Bool)

(declare-fun e!4287159 () Bool)

(assert (=> b!7133522 (=> (not res!2910706) (not e!4287159))))

(declare-datatypes ((B!3405 0))(
  ( (B!3406 (val!28174 Int)) )
))
(declare-datatypes ((List!69267 0))(
  ( (Nil!69143) (Cons!69143 (h!75591 B!3405) (t!383260 List!69267)) )
))
(declare-fun l2!1464 () List!69267)

(declare-fun l1!1495 () List!69267)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14143 (List!69267) (InoxSet B!3405))

(assert (=> b!7133522 (= res!2910706 (= ((_ map implies) (content!14143 l2!1464) (content!14143 l1!1495)) ((as const (InoxSet B!3405)) true)))))

(declare-fun b!7133524 () Bool)

(declare-fun e!4287158 () Bool)

(declare-fun tp_is_empty!45827 () Bool)

(declare-fun tp!1966349 () Bool)

(assert (=> b!7133524 (= e!4287158 (and tp_is_empty!45827 tp!1966349))))

(declare-fun res!2910707 () Bool)

(assert (=> start!694992 (=> (not res!2910707) (not e!4287159))))

(declare-fun p!2111 () Int)

(declare-fun forall!16941 (List!69267 Int) Bool)

(assert (=> start!694992 (= res!2910707 (forall!16941 l1!1495 p!2111))))

(assert (=> start!694992 e!4287159))

(assert (=> start!694992 e!4287158))

(assert (=> start!694992 tp!1966348))

(declare-fun e!4287160 () Bool)

(assert (=> start!694992 e!4287160))

(declare-fun b!7133523 () Bool)

(declare-fun ListPrimitiveSize!412 (List!69267) Int)

(assert (=> b!7133523 (= e!4287159 (< (ListPrimitiveSize!412 l2!1464) 0))))

(declare-fun b!7133525 () Bool)

(declare-fun tp!1966347 () Bool)

(assert (=> b!7133525 (= e!4287160 (and tp_is_empty!45827 tp!1966347))))

(assert (= (and start!694992 res!2910707) b!7133522))

(assert (= (and b!7133522 res!2910706) b!7133523))

(get-info :version)

(assert (= (and start!694992 ((_ is Cons!69143) l1!1495)) b!7133524))

(assert (= (and start!694992 ((_ is Cons!69143) l2!1464)) b!7133525))

(declare-fun m!7850582 () Bool)

(assert (=> b!7133522 m!7850582))

(declare-fun m!7850584 () Bool)

(assert (=> b!7133522 m!7850584))

(declare-fun m!7850586 () Bool)

(assert (=> start!694992 m!7850586))

(declare-fun m!7850588 () Bool)

(assert (=> b!7133523 m!7850588))

(check-sat (not b!7133522) (not b!7133524) (not b!7133525) tp_is_empty!45827 b_and!351031 (not b_next!134631) (not start!694992) (not b!7133523))
(check-sat b_and!351031 (not b_next!134631))
(get-model)

(declare-fun d!2225973 () Bool)

(declare-fun res!2910712 () Bool)

(declare-fun e!4287169 () Bool)

(assert (=> d!2225973 (=> res!2910712 e!4287169)))

(assert (=> d!2225973 (= res!2910712 ((_ is Nil!69143) l1!1495))))

(assert (=> d!2225973 (= (forall!16941 l1!1495 p!2111) e!4287169)))

(declare-fun b!7133538 () Bool)

(declare-fun e!4287170 () Bool)

(assert (=> b!7133538 (= e!4287169 e!4287170)))

(declare-fun res!2910713 () Bool)

(assert (=> b!7133538 (=> (not res!2910713) (not e!4287170))))

(declare-fun dynLambda!28123 (Int B!3405) Bool)

(assert (=> b!7133538 (= res!2910713 (dynLambda!28123 p!2111 (h!75591 l1!1495)))))

(declare-fun b!7133539 () Bool)

(assert (=> b!7133539 (= e!4287170 (forall!16941 (t!383260 l1!1495) p!2111))))

(assert (= (and d!2225973 (not res!2910712)) b!7133538))

(assert (= (and b!7133538 res!2910713) b!7133539))

(declare-fun b_lambda!272133 () Bool)

(assert (=> (not b_lambda!272133) (not b!7133538)))

(declare-fun t!383262 () Bool)

(declare-fun tb!262075 () Bool)

(assert (=> (and start!694992 (= p!2111 p!2111) t!383262) tb!262075))

(declare-fun result!349658 () Bool)

(assert (=> tb!262075 (= result!349658 true)))

(assert (=> b!7133538 t!383262))

(declare-fun b_and!351033 () Bool)

(assert (= b_and!351031 (and (=> t!383262 result!349658) b_and!351033)))

(declare-fun m!7850598 () Bool)

(assert (=> b!7133538 m!7850598))

(declare-fun m!7850600 () Bool)

(assert (=> b!7133539 m!7850600))

(assert (=> start!694992 d!2225973))

(declare-fun d!2225979 () Bool)

(declare-fun lt!2565242 () Int)

(assert (=> d!2225979 (>= lt!2565242 0)))

(declare-fun e!4287176 () Int)

(assert (=> d!2225979 (= lt!2565242 e!4287176)))

(declare-fun c!1330426 () Bool)

(assert (=> d!2225979 (= c!1330426 ((_ is Nil!69143) l2!1464))))

(assert (=> d!2225979 (= (ListPrimitiveSize!412 l2!1464) lt!2565242)))

(declare-fun b!7133550 () Bool)

(assert (=> b!7133550 (= e!4287176 0)))

(declare-fun b!7133551 () Bool)

(assert (=> b!7133551 (= e!4287176 (+ 1 (ListPrimitiveSize!412 (t!383260 l2!1464))))))

(assert (= (and d!2225979 c!1330426) b!7133550))

(assert (= (and d!2225979 (not c!1330426)) b!7133551))

(declare-fun m!7850604 () Bool)

(assert (=> b!7133551 m!7850604))

(assert (=> b!7133523 d!2225979))

(declare-fun d!2225983 () Bool)

(declare-fun c!1330429 () Bool)

(assert (=> d!2225983 (= c!1330429 ((_ is Nil!69143) l2!1464))))

(declare-fun e!4287187 () (InoxSet B!3405))

(assert (=> d!2225983 (= (content!14143 l2!1464) e!4287187)))

(declare-fun b!7133566 () Bool)

(assert (=> b!7133566 (= e!4287187 ((as const (Array B!3405 Bool)) false))))

(declare-fun b!7133567 () Bool)

(assert (=> b!7133567 (= e!4287187 ((_ map or) (store ((as const (Array B!3405 Bool)) false) (h!75591 l2!1464) true) (content!14143 (t!383260 l2!1464))))))

(assert (= (and d!2225983 c!1330429) b!7133566))

(assert (= (and d!2225983 (not c!1330429)) b!7133567))

(declare-fun m!7850610 () Bool)

(assert (=> b!7133567 m!7850610))

(declare-fun m!7850612 () Bool)

(assert (=> b!7133567 m!7850612))

(assert (=> b!7133522 d!2225983))

(declare-fun d!2225985 () Bool)

(declare-fun c!1330430 () Bool)

(assert (=> d!2225985 (= c!1330430 ((_ is Nil!69143) l1!1495))))

(declare-fun e!4287189 () (InoxSet B!3405))

(assert (=> d!2225985 (= (content!14143 l1!1495) e!4287189)))

(declare-fun b!7133569 () Bool)

(assert (=> b!7133569 (= e!4287189 ((as const (Array B!3405 Bool)) false))))

(declare-fun b!7133570 () Bool)

(assert (=> b!7133570 (= e!4287189 ((_ map or) (store ((as const (Array B!3405 Bool)) false) (h!75591 l1!1495) true) (content!14143 (t!383260 l1!1495))))))

(assert (= (and d!2225985 c!1330430) b!7133569))

(assert (= (and d!2225985 (not c!1330430)) b!7133570))

(declare-fun m!7850614 () Bool)

(assert (=> b!7133570 m!7850614))

(declare-fun m!7850616 () Bool)

(assert (=> b!7133570 m!7850616))

(assert (=> b!7133522 d!2225985))

(declare-fun b!7133576 () Bool)

(declare-fun e!4287193 () Bool)

(declare-fun tp!1966356 () Bool)

(assert (=> b!7133576 (= e!4287193 (and tp_is_empty!45827 tp!1966356))))

(assert (=> b!7133524 (= tp!1966349 e!4287193)))

(assert (= (and b!7133524 ((_ is Cons!69143) (t!383260 l1!1495))) b!7133576))

(declare-fun b!7133577 () Bool)

(declare-fun e!4287194 () Bool)

(declare-fun tp!1966357 () Bool)

(assert (=> b!7133577 (= e!4287194 (and tp_is_empty!45827 tp!1966357))))

(assert (=> b!7133525 (= tp!1966347 e!4287194)))

(assert (= (and b!7133525 ((_ is Cons!69143) (t!383260 l2!1464))) b!7133577))

(declare-fun b_lambda!272139 () Bool)

(assert (= b_lambda!272133 (or (and start!694992 b_free!133841) b_lambda!272139)))

(check-sat (not b!7133567) (not b_lambda!272139) tp_is_empty!45827 (not b!7133576) (not b!7133551) (not b!7133539) (not b_next!134631) (not b!7133577) b_and!351033 (not b!7133570))
(check-sat b_and!351033 (not b_next!134631))
