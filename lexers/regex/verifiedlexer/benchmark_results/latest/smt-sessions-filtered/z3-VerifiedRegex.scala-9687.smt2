; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507806 () Bool)

(assert start!507806)

(declare-fun b!4859606 () Bool)

(declare-fun res!2074625 () Bool)

(declare-fun e!3038069 () Bool)

(assert (=> b!4859606 (=> (not res!2074625) (not e!3038069))))

(declare-datatypes ((B!2933 0))(
  ( (B!2934 (val!22422 Int)) )
))
(declare-datatypes ((List!55890 0))(
  ( (Nil!55766) (Cons!55766 (h!62214 B!2933) (t!363510 List!55890)) )
))
(declare-fun l2!1268 () List!55890)

(declare-fun isEmpty!29855 (List!55890) Bool)

(assert (=> b!4859606 (= res!2074625 (isEmpty!29855 l2!1268))))

(declare-fun b!4859607 () Bool)

(declare-fun e!3038071 () Bool)

(declare-fun tp_is_empty!35551 () Bool)

(declare-fun tp!1366896 () Bool)

(assert (=> b!4859607 (= e!3038071 (and tp_is_empty!35551 tp!1366896))))

(declare-fun b!4859608 () Bool)

(declare-fun l1!1299 () List!55890)

(assert (=> b!4859608 (= e!3038069 (isEmpty!29855 l1!1299))))

(declare-fun b!4859610 () Bool)

(declare-fun e!3038070 () Bool)

(declare-fun tp!1366897 () Bool)

(assert (=> b!4859610 (= e!3038070 (and tp_is_empty!35551 tp!1366897))))

(declare-fun b!4859611 () Bool)

(declare-fun e!3038072 () Bool)

(assert (=> b!4859611 (= e!3038072 (isEmpty!29855 (t!363510 l1!1299)))))

(declare-fun b!4859609 () Bool)

(declare-fun res!2074624 () Bool)

(assert (=> b!4859609 (=> (not res!2074624) (not e!3038069))))

(assert (=> b!4859609 (= res!2074624 e!3038072)))

(declare-fun res!2074627 () Bool)

(assert (=> b!4859609 (=> res!2074627 e!3038072)))

(get-info :version)

(assert (=> b!4859609 (= res!2074627 (not ((_ is Cons!55766) l1!1299)))))

(declare-fun res!2074626 () Bool)

(assert (=> start!507806 (=> (not res!2074626) (not e!3038069))))

(declare-fun ++!12151 (List!55890 List!55890) List!55890)

(assert (=> start!507806 (= res!2074626 (not (isEmpty!29855 (++!12151 l1!1299 l2!1268))))))

(assert (=> start!507806 e!3038069))

(assert (=> start!507806 e!3038070))

(assert (=> start!507806 e!3038071))

(assert (= (and start!507806 res!2074626) b!4859609))

(assert (= (and b!4859609 (not res!2074627)) b!4859611))

(assert (= (and b!4859609 res!2074624) b!4859606))

(assert (= (and b!4859606 res!2074625) b!4859608))

(assert (= (and start!507806 ((_ is Cons!55766) l1!1299)) b!4859610))

(assert (= (and start!507806 ((_ is Cons!55766) l2!1268)) b!4859607))

(declare-fun m!5857914 () Bool)

(assert (=> b!4859606 m!5857914))

(declare-fun m!5857916 () Bool)

(assert (=> b!4859608 m!5857916))

(declare-fun m!5857918 () Bool)

(assert (=> b!4859611 m!5857918))

(declare-fun m!5857920 () Bool)

(assert (=> start!507806 m!5857920))

(assert (=> start!507806 m!5857920))

(declare-fun m!5857922 () Bool)

(assert (=> start!507806 m!5857922))

(check-sat (not start!507806) (not b!4859608) (not b!4859606) (not b!4859607) tp_is_empty!35551 (not b!4859611) (not b!4859610))
(check-sat)
(get-model)

(declare-fun d!1559952 () Bool)

(assert (=> d!1559952 (= (isEmpty!29855 (t!363510 l1!1299)) ((_ is Nil!55766) (t!363510 l1!1299)))))

(assert (=> b!4859611 d!1559952))

(declare-fun d!1559956 () Bool)

(assert (=> d!1559956 (= (isEmpty!29855 l2!1268) ((_ is Nil!55766) l2!1268))))

(assert (=> b!4859606 d!1559956))

(declare-fun d!1559960 () Bool)

(assert (=> d!1559960 (= (isEmpty!29855 l1!1299) ((_ is Nil!55766) l1!1299))))

(assert (=> b!4859608 d!1559960))

(declare-fun d!1559962 () Bool)

(assert (=> d!1559962 (= (isEmpty!29855 (++!12151 l1!1299 l2!1268)) ((_ is Nil!55766) (++!12151 l1!1299 l2!1268)))))

(assert (=> start!507806 d!1559962))

(declare-fun d!1559966 () Bool)

(declare-fun e!3038083 () Bool)

(assert (=> d!1559966 e!3038083))

(declare-fun res!2074637 () Bool)

(assert (=> d!1559966 (=> (not res!2074637) (not e!3038083))))

(declare-fun lt!1992075 () List!55890)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9943 (List!55890) (InoxSet B!2933))

(assert (=> d!1559966 (= res!2074637 (= (content!9943 lt!1992075) ((_ map or) (content!9943 l1!1299) (content!9943 l2!1268))))))

(declare-fun e!3038082 () List!55890)

(assert (=> d!1559966 (= lt!1992075 e!3038082)))

(declare-fun c!826703 () Bool)

(assert (=> d!1559966 (= c!826703 ((_ is Nil!55766) l1!1299))))

(assert (=> d!1559966 (= (++!12151 l1!1299 l2!1268) lt!1992075)))

(declare-fun b!4859629 () Bool)

(assert (=> b!4859629 (= e!3038082 l2!1268)))

(declare-fun b!4859633 () Bool)

(declare-fun res!2074639 () Bool)

(assert (=> b!4859633 (=> (not res!2074639) (not e!3038083))))

(declare-fun size!36747 (List!55890) Int)

(assert (=> b!4859633 (= res!2074639 (= (size!36747 lt!1992075) (+ (size!36747 l1!1299) (size!36747 l2!1268))))))

(declare-fun b!4859631 () Bool)

(assert (=> b!4859631 (= e!3038082 (Cons!55766 (h!62214 l1!1299) (++!12151 (t!363510 l1!1299) l2!1268)))))

(declare-fun b!4859635 () Bool)

(assert (=> b!4859635 (= e!3038083 (or (not (= l2!1268 Nil!55766)) (= lt!1992075 l1!1299)))))

(assert (= (and d!1559966 c!826703) b!4859629))

(assert (= (and d!1559966 (not c!826703)) b!4859631))

(assert (= (and d!1559966 res!2074637) b!4859633))

(assert (= (and b!4859633 res!2074639) b!4859635))

(declare-fun m!5857924 () Bool)

(assert (=> d!1559966 m!5857924))

(declare-fun m!5857926 () Bool)

(assert (=> d!1559966 m!5857926))

(declare-fun m!5857930 () Bool)

(assert (=> d!1559966 m!5857930))

(declare-fun m!5857932 () Bool)

(assert (=> b!4859633 m!5857932))

(declare-fun m!5857936 () Bool)

(assert (=> b!4859633 m!5857936))

(declare-fun m!5857940 () Bool)

(assert (=> b!4859633 m!5857940))

(declare-fun m!5857944 () Bool)

(assert (=> b!4859631 m!5857944))

(assert (=> start!507806 d!1559966))

(declare-fun b!4859644 () Bool)

(declare-fun e!3038089 () Bool)

(declare-fun tp!1366902 () Bool)

(assert (=> b!4859644 (= e!3038089 (and tp_is_empty!35551 tp!1366902))))

(assert (=> b!4859607 (= tp!1366896 e!3038089)))

(assert (= (and b!4859607 ((_ is Cons!55766) (t!363510 l2!1268))) b!4859644))

(declare-fun b!4859645 () Bool)

(declare-fun e!3038090 () Bool)

(declare-fun tp!1366903 () Bool)

(assert (=> b!4859645 (= e!3038090 (and tp_is_empty!35551 tp!1366903))))

(assert (=> b!4859610 (= tp!1366897 e!3038090)))

(assert (= (and b!4859610 ((_ is Cons!55766) (t!363510 l1!1299))) b!4859645))

(check-sat (not b!4859645) (not d!1559966) (not b!4859631) (not b!4859633) (not b!4859644) tp_is_empty!35551)
(check-sat)
