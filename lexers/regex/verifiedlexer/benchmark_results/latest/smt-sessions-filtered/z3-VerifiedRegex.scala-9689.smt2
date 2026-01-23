; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507822 () Bool)

(assert start!507822)

(declare-fun res!2074669 () Bool)

(declare-fun e!3038139 () Bool)

(assert (=> start!507822 (=> (not res!2074669) (not e!3038139))))

(declare-datatypes ((B!2941 0))(
  ( (B!2942 (val!22426 Int)) )
))
(declare-datatypes ((List!55894 0))(
  ( (Nil!55770) (Cons!55770 (h!62218 B!2941) (t!363514 List!55894)) )
))
(declare-fun l1!1299 () List!55894)

(declare-fun l2!1268 () List!55894)

(declare-fun isEmpty!29859 (List!55894) Bool)

(declare-fun ++!12155 (List!55894 List!55894) List!55894)

(assert (=> start!507822 (= res!2074669 (not (isEmpty!29859 (++!12155 l1!1299 l2!1268))))))

(assert (=> start!507822 e!3038139))

(declare-fun e!3038138 () Bool)

(assert (=> start!507822 e!3038138))

(declare-fun e!3038140 () Bool)

(assert (=> start!507822 e!3038140))

(declare-fun b!4859699 () Bool)

(declare-fun ListPrimitiveSize!369 (List!55894) Int)

(assert (=> b!4859699 (= e!3038139 (< (ListPrimitiveSize!369 l1!1299) 0))))

(declare-fun b!4859700 () Bool)

(declare-fun tp_is_empty!35559 () Bool)

(declare-fun tp!1366928 () Bool)

(assert (=> b!4859700 (= e!3038138 (and tp_is_empty!35559 tp!1366928))))

(declare-fun b!4859701 () Bool)

(declare-fun tp!1366929 () Bool)

(assert (=> b!4859701 (= e!3038140 (and tp_is_empty!35559 tp!1366929))))

(assert (= (and start!507822 res!2074669) b!4859699))

(get-info :version)

(assert (= (and start!507822 ((_ is Cons!55770) l1!1299)) b!4859700))

(assert (= (and start!507822 ((_ is Cons!55770) l2!1268)) b!4859701))

(declare-fun m!5857982 () Bool)

(assert (=> start!507822 m!5857982))

(assert (=> start!507822 m!5857982))

(declare-fun m!5857984 () Bool)

(assert (=> start!507822 m!5857984))

(declare-fun m!5857986 () Bool)

(assert (=> b!4859699 m!5857986))

(check-sat (not b!4859699) tp_is_empty!35559 (not start!507822) (not b!4859701) (not b!4859700))
(check-sat)
(get-model)

(declare-fun d!1559974 () Bool)

(declare-fun lt!1992090 () Int)

(assert (=> d!1559974 (>= lt!1992090 0)))

(declare-fun e!3038143 () Int)

(assert (=> d!1559974 (= lt!1992090 e!3038143)))

(declare-fun c!826706 () Bool)

(assert (=> d!1559974 (= c!826706 ((_ is Nil!55770) l1!1299))))

(assert (=> d!1559974 (= (ListPrimitiveSize!369 l1!1299) lt!1992090)))

(declare-fun b!4859706 () Bool)

(assert (=> b!4859706 (= e!3038143 0)))

(declare-fun b!4859707 () Bool)

(assert (=> b!4859707 (= e!3038143 (+ 1 (ListPrimitiveSize!369 (t!363514 l1!1299))))))

(assert (= (and d!1559974 c!826706) b!4859706))

(assert (= (and d!1559974 (not c!826706)) b!4859707))

(declare-fun m!5857988 () Bool)

(assert (=> b!4859707 m!5857988))

(assert (=> b!4859699 d!1559974))

(declare-fun d!1559978 () Bool)

(assert (=> d!1559978 (= (isEmpty!29859 (++!12155 l1!1299 l2!1268)) ((_ is Nil!55770) (++!12155 l1!1299 l2!1268)))))

(assert (=> start!507822 d!1559978))

(declare-fun b!4859722 () Bool)

(declare-fun e!3038152 () List!55894)

(assert (=> b!4859722 (= e!3038152 l2!1268)))

(declare-fun b!4859724 () Bool)

(declare-fun res!2074674 () Bool)

(declare-fun e!3038151 () Bool)

(assert (=> b!4859724 (=> (not res!2074674) (not e!3038151))))

(declare-fun lt!1992096 () List!55894)

(declare-fun size!36748 (List!55894) Int)

(assert (=> b!4859724 (= res!2074674 (= (size!36748 lt!1992096) (+ (size!36748 l1!1299) (size!36748 l2!1268))))))

(declare-fun d!1559980 () Bool)

(assert (=> d!1559980 e!3038151))

(declare-fun res!2074675 () Bool)

(assert (=> d!1559980 (=> (not res!2074675) (not e!3038151))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9945 (List!55894) (InoxSet B!2941))

(assert (=> d!1559980 (= res!2074675 (= (content!9945 lt!1992096) ((_ map or) (content!9945 l1!1299) (content!9945 l2!1268))))))

(assert (=> d!1559980 (= lt!1992096 e!3038152)))

(declare-fun c!826712 () Bool)

(assert (=> d!1559980 (= c!826712 ((_ is Nil!55770) l1!1299))))

(assert (=> d!1559980 (= (++!12155 l1!1299 l2!1268) lt!1992096)))

(declare-fun b!4859723 () Bool)

(assert (=> b!4859723 (= e!3038152 (Cons!55770 (h!62218 l1!1299) (++!12155 (t!363514 l1!1299) l2!1268)))))

(declare-fun b!4859725 () Bool)

(assert (=> b!4859725 (= e!3038151 (or (not (= l2!1268 Nil!55770)) (= lt!1992096 l1!1299)))))

(assert (= (and d!1559980 c!826712) b!4859722))

(assert (= (and d!1559980 (not c!826712)) b!4859723))

(assert (= (and d!1559980 res!2074675) b!4859724))

(assert (= (and b!4859724 res!2074674) b!4859725))

(declare-fun m!5857992 () Bool)

(assert (=> b!4859724 m!5857992))

(declare-fun m!5857994 () Bool)

(assert (=> b!4859724 m!5857994))

(declare-fun m!5857996 () Bool)

(assert (=> b!4859724 m!5857996))

(declare-fun m!5857998 () Bool)

(assert (=> d!1559980 m!5857998))

(declare-fun m!5858000 () Bool)

(assert (=> d!1559980 m!5858000))

(declare-fun m!5858002 () Bool)

(assert (=> d!1559980 m!5858002))

(declare-fun m!5858004 () Bool)

(assert (=> b!4859723 m!5858004))

(assert (=> start!507822 d!1559980))

(declare-fun b!4859730 () Bool)

(declare-fun e!3038155 () Bool)

(declare-fun tp!1366932 () Bool)

(assert (=> b!4859730 (= e!3038155 (and tp_is_empty!35559 tp!1366932))))

(assert (=> b!4859701 (= tp!1366929 e!3038155)))

(assert (= (and b!4859701 ((_ is Cons!55770) (t!363514 l2!1268))) b!4859730))

(declare-fun b!4859731 () Bool)

(declare-fun e!3038156 () Bool)

(declare-fun tp!1366933 () Bool)

(assert (=> b!4859731 (= e!3038156 (and tp_is_empty!35559 tp!1366933))))

(assert (=> b!4859700 (= tp!1366928 e!3038156)))

(assert (= (and b!4859700 ((_ is Cons!55770) (t!363514 l1!1299))) b!4859731))

(check-sat (not b!4859731) (not d!1559980) (not b!4859707) tp_is_empty!35559 (not b!4859730) (not b!4859724) (not b!4859723))
(check-sat)
