; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725698 () Bool)

(assert start!725698)

(declare-fun res!3009162 () Bool)

(declare-fun e!4472085 () Bool)

(assert (=> start!725698 (=> res!3009162 e!4472085)))

(declare-datatypes ((C!39600 0))(
  ( (C!39601 (val!30198 Int)) )
))
(declare-datatypes ((List!72377 0))(
  ( (Nil!72253) (Cons!72253 (h!78701 C!39600) (t!386946 List!72377)) )
))
(declare-fun input!5498 () List!72377)

(declare-fun ++!17266 (List!72377 List!72377) List!72377)

(assert (=> start!725698 (= res!3009162 (not (= (++!17266 Nil!72253 input!5498) input!5498)))))

(declare-fun sizeTr!439 (List!72377 Int) Int)

(declare-fun size!42208 (List!72377) Int)

(assert (=> start!725698 (= (sizeTr!439 input!5498 0) (size!42208 input!5498))))

(declare-datatypes ((Unit!166157 0))(
  ( (Unit!166158) )
))
(declare-fun lt!2631643 () Unit!166157)

(declare-fun lemmaSizeTrEqualsSize!438 (List!72377 Int) Unit!166157)

(assert (=> start!725698 (= lt!2631643 (lemmaSizeTrEqualsSize!438 input!5498 0))))

(assert (=> start!725698 (not e!4472085)))

(declare-fun e!4472086 () Bool)

(assert (=> start!725698 e!4472086))

(declare-fun b!7501152 () Bool)

(assert (=> b!7501152 (= e!4472085 (= 0 (size!42208 Nil!72253)))))

(declare-fun b!7501153 () Bool)

(declare-fun tp_is_empty!49615 () Bool)

(declare-fun tp!2177439 () Bool)

(assert (=> b!7501153 (= e!4472086 (and tp_is_empty!49615 tp!2177439))))

(assert (= (and start!725698 (not res!3009162)) b!7501152))

(get-info :version)

(assert (= (and start!725698 ((_ is Cons!72253) input!5498)) b!7501153))

(declare-fun m!8082914 () Bool)

(assert (=> start!725698 m!8082914))

(declare-fun m!8082916 () Bool)

(assert (=> start!725698 m!8082916))

(declare-fun m!8082918 () Bool)

(assert (=> start!725698 m!8082918))

(declare-fun m!8082920 () Bool)

(assert (=> start!725698 m!8082920))

(declare-fun m!8082922 () Bool)

(assert (=> b!7501152 m!8082922))

(check-sat (not start!725698) (not b!7501152) (not b!7501153) tp_is_empty!49615)
(check-sat)
(get-model)

(declare-fun b!7501182 () Bool)

(declare-fun res!3009174 () Bool)

(declare-fun e!4472099 () Bool)

(assert (=> b!7501182 (=> (not res!3009174) (not e!4472099))))

(declare-fun lt!2631649 () List!72377)

(assert (=> b!7501182 (= res!3009174 (= (size!42208 lt!2631649) (+ (size!42208 Nil!72253) (size!42208 input!5498))))))

(declare-fun b!7501183 () Bool)

(assert (=> b!7501183 (= e!4472099 (or (not (= input!5498 Nil!72253)) (= lt!2631649 Nil!72253)))))

(declare-fun d!2302559 () Bool)

(assert (=> d!2302559 e!4472099))

(declare-fun res!3009173 () Bool)

(assert (=> d!2302559 (=> (not res!3009173) (not e!4472099))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15271 (List!72377) (InoxSet C!39600))

(assert (=> d!2302559 (= res!3009173 (= (content!15271 lt!2631649) ((_ map or) (content!15271 Nil!72253) (content!15271 input!5498))))))

(declare-fun e!4472101 () List!72377)

(assert (=> d!2302559 (= lt!2631649 e!4472101)))

(declare-fun c!1384797 () Bool)

(assert (=> d!2302559 (= c!1384797 ((_ is Nil!72253) Nil!72253))))

(assert (=> d!2302559 (= (++!17266 Nil!72253 input!5498) lt!2631649)))

(declare-fun b!7501180 () Bool)

(assert (=> b!7501180 (= e!4472101 input!5498)))

(declare-fun b!7501181 () Bool)

(assert (=> b!7501181 (= e!4472101 (Cons!72253 (h!78701 Nil!72253) (++!17266 (t!386946 Nil!72253) input!5498)))))

(assert (= (and d!2302559 c!1384797) b!7501180))

(assert (= (and d!2302559 (not c!1384797)) b!7501181))

(assert (= (and d!2302559 res!3009173) b!7501182))

(assert (= (and b!7501182 res!3009174) b!7501183))

(declare-fun m!8082936 () Bool)

(assert (=> b!7501182 m!8082936))

(assert (=> b!7501182 m!8082922))

(assert (=> b!7501182 m!8082918))

(declare-fun m!8082938 () Bool)

(assert (=> d!2302559 m!8082938))

(declare-fun m!8082940 () Bool)

(assert (=> d!2302559 m!8082940))

(declare-fun m!8082942 () Bool)

(assert (=> d!2302559 m!8082942))

(declare-fun m!8082944 () Bool)

(assert (=> b!7501181 m!8082944))

(assert (=> start!725698 d!2302559))

(declare-fun d!2302565 () Bool)

(declare-fun c!1384803 () Bool)

(assert (=> d!2302565 (= c!1384803 ((_ is Nil!72253) input!5498))))

(declare-fun e!4472107 () Int)

(assert (=> d!2302565 (= (sizeTr!439 input!5498 0) e!4472107)))

(declare-fun b!7501194 () Bool)

(assert (=> b!7501194 (= e!4472107 0)))

(declare-fun b!7501195 () Bool)

(assert (=> b!7501195 (= e!4472107 (sizeTr!439 (t!386946 input!5498) (+ 0 1)))))

(assert (= (and d!2302565 c!1384803) b!7501194))

(assert (= (and d!2302565 (not c!1384803)) b!7501195))

(declare-fun m!8082948 () Bool)

(assert (=> b!7501195 m!8082948))

(assert (=> start!725698 d!2302565))

(declare-fun d!2302569 () Bool)

(declare-fun lt!2631659 () Int)

(assert (=> d!2302569 (>= lt!2631659 0)))

(declare-fun e!4472113 () Int)

(assert (=> d!2302569 (= lt!2631659 e!4472113)))

(declare-fun c!1384807 () Bool)

(assert (=> d!2302569 (= c!1384807 ((_ is Nil!72253) input!5498))))

(assert (=> d!2302569 (= (size!42208 input!5498) lt!2631659)))

(declare-fun b!7501206 () Bool)

(assert (=> b!7501206 (= e!4472113 0)))

(declare-fun b!7501207 () Bool)

(assert (=> b!7501207 (= e!4472113 (+ 1 (size!42208 (t!386946 input!5498))))))

(assert (= (and d!2302569 c!1384807) b!7501206))

(assert (= (and d!2302569 (not c!1384807)) b!7501207))

(declare-fun m!8082954 () Bool)

(assert (=> b!7501207 m!8082954))

(assert (=> start!725698 d!2302569))

(declare-fun d!2302573 () Bool)

(assert (=> d!2302573 (= (sizeTr!439 input!5498 0) (+ (size!42208 input!5498) 0))))

(declare-fun lt!2631662 () Unit!166157)

(declare-fun choose!57987 (List!72377 Int) Unit!166157)

(assert (=> d!2302573 (= lt!2631662 (choose!57987 input!5498 0))))

(assert (=> d!2302573 (= (lemmaSizeTrEqualsSize!438 input!5498 0) lt!2631662)))

(declare-fun bs!1937695 () Bool)

(assert (= bs!1937695 d!2302573))

(assert (=> bs!1937695 m!8082916))

(assert (=> bs!1937695 m!8082918))

(declare-fun m!8082956 () Bool)

(assert (=> bs!1937695 m!8082956))

(assert (=> start!725698 d!2302573))

(declare-fun d!2302575 () Bool)

(declare-fun lt!2631663 () Int)

(assert (=> d!2302575 (>= lt!2631663 0)))

(declare-fun e!4472115 () Int)

(assert (=> d!2302575 (= lt!2631663 e!4472115)))

(declare-fun c!1384808 () Bool)

(assert (=> d!2302575 (= c!1384808 ((_ is Nil!72253) Nil!72253))))

(assert (=> d!2302575 (= (size!42208 Nil!72253) lt!2631663)))

(declare-fun b!7501209 () Bool)

(assert (=> b!7501209 (= e!4472115 0)))

(declare-fun b!7501210 () Bool)

(assert (=> b!7501210 (= e!4472115 (+ 1 (size!42208 (t!386946 Nil!72253))))))

(assert (= (and d!2302575 c!1384808) b!7501209))

(assert (= (and d!2302575 (not c!1384808)) b!7501210))

(declare-fun m!8082958 () Bool)

(assert (=> b!7501210 m!8082958))

(assert (=> b!7501152 d!2302575))

(declare-fun b!7501215 () Bool)

(declare-fun e!4472118 () Bool)

(declare-fun tp!2177445 () Bool)

(assert (=> b!7501215 (= e!4472118 (and tp_is_empty!49615 tp!2177445))))

(assert (=> b!7501153 (= tp!2177439 e!4472118)))

(assert (= (and b!7501153 ((_ is Cons!72253) (t!386946 input!5498))) b!7501215))

(check-sat (not b!7501181) tp_is_empty!49615 (not d!2302559) (not b!7501207) (not b!7501182) (not b!7501195) (not d!2302573) (not b!7501210) (not b!7501215))
(check-sat)
