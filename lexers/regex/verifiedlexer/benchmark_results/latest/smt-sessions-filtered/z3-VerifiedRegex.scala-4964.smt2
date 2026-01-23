; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252296 () Bool)

(assert start!252296)

(declare-fun b!2598474 () Bool)

(declare-fun e!1640127 () Bool)

(declare-datatypes ((B!2277 0))(
  ( (B!2278 (val!9606 Int)) )
))
(declare-datatypes ((List!30039 0))(
  ( (Nil!29939) (Cons!29939 (h!35359 B!2277) (t!213052 List!30039)) )
))
(declare-fun l!3796 () List!30039)

(declare-fun ListPrimitiveSize!189 (List!30039) Int)

(assert (=> b!2598474 (= e!1640127 (>= (ListPrimitiveSize!189 (t!213052 l!3796)) (ListPrimitiveSize!189 l!3796)))))

(declare-fun b!2598476 () Bool)

(declare-fun e!1640126 () Bool)

(declare-fun tp_is_empty!13557 () Bool)

(declare-fun tp!823510 () Bool)

(assert (=> b!2598476 (= e!1640126 (and tp_is_empty!13557 tp!823510))))

(declare-fun b!2598477 () Bool)

(declare-fun res!1094119 () Bool)

(assert (=> b!2598477 (=> (not res!1094119) (not e!1640127))))

(declare-fun e!9468 () B!2277)

(declare-fun contains!5487 (List!30039 B!2277) Bool)

(assert (=> b!2598477 (= res!1094119 (contains!5487 l!3796 e!9468))))

(declare-fun b!2598478 () Bool)

(declare-fun res!1094120 () Bool)

(assert (=> b!2598478 (=> (not res!1094120) (not e!1640127))))

(get-info :version)

(assert (=> b!2598478 (= res!1094120 (and ((_ is Cons!29939) l!3796) (not (= (h!35359 l!3796) e!9468))))))

(declare-fun b!2598479 () Bool)

(declare-fun res!1094122 () Bool)

(assert (=> b!2598479 (=> (not res!1094122) (not e!1640127))))

(assert (=> b!2598479 (= res!1094122 (contains!5487 (t!213052 l!3796) e!9468))))

(declare-fun res!1094123 () Bool)

(assert (=> start!252296 (=> (not res!1094123) (not e!1640127))))

(declare-fun noDuplicate!487 (List!30039) Bool)

(assert (=> start!252296 (= res!1094123 (noDuplicate!487 l!3796))))

(assert (=> start!252296 e!1640127))

(assert (=> start!252296 e!1640126))

(assert (=> start!252296 tp_is_empty!13557))

(declare-fun b!2598475 () Bool)

(declare-fun res!1094121 () Bool)

(assert (=> b!2598475 (=> (not res!1094121) (not e!1640127))))

(assert (=> b!2598475 (= res!1094121 (noDuplicate!487 (t!213052 l!3796)))))

(assert (= (and start!252296 res!1094123) b!2598477))

(assert (= (and b!2598477 res!1094119) b!2598478))

(assert (= (and b!2598478 res!1094120) b!2598475))

(assert (= (and b!2598475 res!1094121) b!2598479))

(assert (= (and b!2598479 res!1094122) b!2598474))

(assert (= (and start!252296 ((_ is Cons!29939) l!3796)) b!2598476))

(declare-fun m!2934529 () Bool)

(assert (=> start!252296 m!2934529))

(declare-fun m!2934531 () Bool)

(assert (=> b!2598477 m!2934531))

(declare-fun m!2934533 () Bool)

(assert (=> b!2598475 m!2934533))

(declare-fun m!2934535 () Bool)

(assert (=> b!2598479 m!2934535))

(declare-fun m!2934537 () Bool)

(assert (=> b!2598474 m!2934537))

(declare-fun m!2934539 () Bool)

(assert (=> b!2598474 m!2934539))

(check-sat (not b!2598477) (not start!252296) (not b!2598474) (not b!2598475) (not b!2598479) tp_is_empty!13557 (not b!2598476))
(check-sat)
(get-model)

(declare-fun d!736287 () Bool)

(declare-fun res!1094132 () Bool)

(declare-fun e!1640136 () Bool)

(assert (=> d!736287 (=> res!1094132 e!1640136)))

(assert (=> d!736287 (= res!1094132 ((_ is Nil!29939) (t!213052 l!3796)))))

(assert (=> d!736287 (= (noDuplicate!487 (t!213052 l!3796)) e!1640136)))

(declare-fun b!2598488 () Bool)

(declare-fun e!1640137 () Bool)

(assert (=> b!2598488 (= e!1640136 e!1640137)))

(declare-fun res!1094133 () Bool)

(assert (=> b!2598488 (=> (not res!1094133) (not e!1640137))))

(assert (=> b!2598488 (= res!1094133 (not (contains!5487 (t!213052 (t!213052 l!3796)) (h!35359 (t!213052 l!3796)))))))

(declare-fun b!2598489 () Bool)

(assert (=> b!2598489 (= e!1640137 (noDuplicate!487 (t!213052 (t!213052 l!3796))))))

(assert (= (and d!736287 (not res!1094132)) b!2598488))

(assert (= (and b!2598488 res!1094133) b!2598489))

(declare-fun m!2934541 () Bool)

(assert (=> b!2598488 m!2934541))

(declare-fun m!2934543 () Bool)

(assert (=> b!2598489 m!2934543))

(assert (=> b!2598475 d!736287))

(declare-fun d!736289 () Bool)

(declare-fun lt!914950 () Int)

(assert (=> d!736289 (>= lt!914950 0)))

(declare-fun e!1640144 () Int)

(assert (=> d!736289 (= lt!914950 e!1640144)))

(declare-fun c!418507 () Bool)

(assert (=> d!736289 (= c!418507 ((_ is Nil!29939) (t!213052 l!3796)))))

(assert (=> d!736289 (= (ListPrimitiveSize!189 (t!213052 l!3796)) lt!914950)))

(declare-fun b!2598498 () Bool)

(assert (=> b!2598498 (= e!1640144 0)))

(declare-fun b!2598499 () Bool)

(assert (=> b!2598499 (= e!1640144 (+ 1 (ListPrimitiveSize!189 (t!213052 (t!213052 l!3796)))))))

(assert (= (and d!736289 c!418507) b!2598498))

(assert (= (and d!736289 (not c!418507)) b!2598499))

(declare-fun m!2934555 () Bool)

(assert (=> b!2598499 m!2934555))

(assert (=> b!2598474 d!736289))

(declare-fun d!736295 () Bool)

(declare-fun lt!914951 () Int)

(assert (=> d!736295 (>= lt!914951 0)))

(declare-fun e!1640149 () Int)

(assert (=> d!736295 (= lt!914951 e!1640149)))

(declare-fun c!418508 () Bool)

(assert (=> d!736295 (= c!418508 ((_ is Nil!29939) l!3796))))

(assert (=> d!736295 (= (ListPrimitiveSize!189 l!3796) lt!914951)))

(declare-fun b!2598504 () Bool)

(assert (=> b!2598504 (= e!1640149 0)))

(declare-fun b!2598505 () Bool)

(assert (=> b!2598505 (= e!1640149 (+ 1 (ListPrimitiveSize!189 (t!213052 l!3796))))))

(assert (= (and d!736295 c!418508) b!2598504))

(assert (= (and d!736295 (not c!418508)) b!2598505))

(assert (=> b!2598505 m!2934537))

(assert (=> b!2598474 d!736295))

(declare-fun d!736297 () Bool)

(declare-fun lt!914956 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4223 (List!30039) (InoxSet B!2277))

(assert (=> d!736297 (= lt!914956 (select (content!4223 (t!213052 l!3796)) e!9468))))

(declare-fun e!1640159 () Bool)

(assert (=> d!736297 (= lt!914956 e!1640159)))

(declare-fun res!1094148 () Bool)

(assert (=> d!736297 (=> (not res!1094148) (not e!1640159))))

(assert (=> d!736297 (= res!1094148 ((_ is Cons!29939) (t!213052 l!3796)))))

(assert (=> d!736297 (= (contains!5487 (t!213052 l!3796) e!9468) lt!914956)))

(declare-fun b!2598516 () Bool)

(declare-fun e!1640158 () Bool)

(assert (=> b!2598516 (= e!1640159 e!1640158)))

(declare-fun res!1094149 () Bool)

(assert (=> b!2598516 (=> res!1094149 e!1640158)))

(assert (=> b!2598516 (= res!1094149 (= (h!35359 (t!213052 l!3796)) e!9468))))

(declare-fun b!2598517 () Bool)

(assert (=> b!2598517 (= e!1640158 (contains!5487 (t!213052 (t!213052 l!3796)) e!9468))))

(assert (= (and d!736297 res!1094148) b!2598516))

(assert (= (and b!2598516 (not res!1094149)) b!2598517))

(declare-fun m!2934561 () Bool)

(assert (=> d!736297 m!2934561))

(declare-fun m!2934563 () Bool)

(assert (=> d!736297 m!2934563))

(declare-fun m!2934565 () Bool)

(assert (=> b!2598517 m!2934565))

(assert (=> b!2598479 d!736297))

(declare-fun d!736301 () Bool)

(declare-fun res!1094150 () Bool)

(declare-fun e!1640160 () Bool)

(assert (=> d!736301 (=> res!1094150 e!1640160)))

(assert (=> d!736301 (= res!1094150 ((_ is Nil!29939) l!3796))))

(assert (=> d!736301 (= (noDuplicate!487 l!3796) e!1640160)))

(declare-fun b!2598518 () Bool)

(declare-fun e!1640161 () Bool)

(assert (=> b!2598518 (= e!1640160 e!1640161)))

(declare-fun res!1094151 () Bool)

(assert (=> b!2598518 (=> (not res!1094151) (not e!1640161))))

(assert (=> b!2598518 (= res!1094151 (not (contains!5487 (t!213052 l!3796) (h!35359 l!3796))))))

(declare-fun b!2598519 () Bool)

(assert (=> b!2598519 (= e!1640161 (noDuplicate!487 (t!213052 l!3796)))))

(assert (= (and d!736301 (not res!1094150)) b!2598518))

(assert (= (and b!2598518 res!1094151) b!2598519))

(declare-fun m!2934567 () Bool)

(assert (=> b!2598518 m!2934567))

(assert (=> b!2598519 m!2934533))

(assert (=> start!252296 d!736301))

(declare-fun d!736303 () Bool)

(declare-fun lt!914957 () Bool)

(assert (=> d!736303 (= lt!914957 (select (content!4223 l!3796) e!9468))))

(declare-fun e!1640163 () Bool)

(assert (=> d!736303 (= lt!914957 e!1640163)))

(declare-fun res!1094152 () Bool)

(assert (=> d!736303 (=> (not res!1094152) (not e!1640163))))

(assert (=> d!736303 (= res!1094152 ((_ is Cons!29939) l!3796))))

(assert (=> d!736303 (= (contains!5487 l!3796 e!9468) lt!914957)))

(declare-fun b!2598520 () Bool)

(declare-fun e!1640162 () Bool)

(assert (=> b!2598520 (= e!1640163 e!1640162)))

(declare-fun res!1094153 () Bool)

(assert (=> b!2598520 (=> res!1094153 e!1640162)))

(assert (=> b!2598520 (= res!1094153 (= (h!35359 l!3796) e!9468))))

(declare-fun b!2598521 () Bool)

(assert (=> b!2598521 (= e!1640162 (contains!5487 (t!213052 l!3796) e!9468))))

(assert (= (and d!736303 res!1094152) b!2598520))

(assert (= (and b!2598520 (not res!1094153)) b!2598521))

(declare-fun m!2934569 () Bool)

(assert (=> d!736303 m!2934569))

(declare-fun m!2934571 () Bool)

(assert (=> d!736303 m!2934571))

(assert (=> b!2598521 m!2934535))

(assert (=> b!2598477 d!736303))

(declare-fun b!2598530 () Bool)

(declare-fun e!1640168 () Bool)

(declare-fun tp!823513 () Bool)

(assert (=> b!2598530 (= e!1640168 (and tp_is_empty!13557 tp!823513))))

(assert (=> b!2598476 (= tp!823510 e!1640168)))

(assert (= (and b!2598476 ((_ is Cons!29939) (t!213052 l!3796))) b!2598530))

(check-sat (not b!2598505) (not d!736297) (not b!2598489) (not b!2598488) (not b!2598518) (not b!2598517) (not b!2598521) tp_is_empty!13557 (not b!2598530) (not d!736303) (not b!2598499) (not b!2598519))
(check-sat)
