; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507838 () Bool)

(assert start!507838)

(declare-fun b!4859775 () Bool)

(declare-fun e!3038183 () Bool)

(declare-fun tp_is_empty!35563 () Bool)

(declare-fun tp!1366949 () Bool)

(assert (=> b!4859775 (= e!3038183 (and tp_is_empty!35563 tp!1366949))))

(declare-fun res!2074698 () Bool)

(declare-fun e!3038184 () Bool)

(assert (=> start!507838 (=> (not res!2074698) (not e!3038184))))

(declare-datatypes ((B!2945 0))(
  ( (B!2946 (val!22428 Int)) )
))
(declare-datatypes ((List!55896 0))(
  ( (Nil!55772) (Cons!55772 (h!62220 B!2945) (t!363516 List!55896)) )
))
(declare-fun l1!1299 () List!55896)

(declare-fun l2!1268 () List!55896)

(declare-fun isEmpty!29861 (List!55896) Bool)

(declare-fun ++!12157 (List!55896 List!55896) List!55896)

(assert (=> start!507838 (= res!2074698 (not (isEmpty!29861 (++!12157 l1!1299 l2!1268))))))

(assert (=> start!507838 e!3038184))

(assert (=> start!507838 e!3038183))

(declare-fun e!3038182 () Bool)

(assert (=> start!507838 e!3038182))

(declare-fun b!4859776 () Bool)

(declare-fun tp!1366948 () Bool)

(assert (=> b!4859776 (= e!3038182 (and tp_is_empty!35563 tp!1366948))))

(declare-fun b!4859777 () Bool)

(declare-fun res!2074697 () Bool)

(assert (=> b!4859777 (=> (not res!2074697) (not e!3038184))))

(get-info :version)

(assert (=> b!4859777 (= res!2074697 ((_ is Cons!55772) l1!1299))))

(declare-fun b!4859778 () Bool)

(declare-fun res!2074699 () Bool)

(assert (=> b!4859778 (=> (not res!2074699) (not e!3038184))))

(assert (=> b!4859778 (= res!2074699 (not (isEmpty!29861 (t!363516 l1!1299))))))

(declare-fun b!4859779 () Bool)

(assert (=> b!4859779 (= e!3038184 (isEmpty!29861 (++!12157 (t!363516 l1!1299) l2!1268)))))

(assert (= (and start!507838 res!2074698) b!4859777))

(assert (= (and b!4859777 res!2074697) b!4859778))

(assert (= (and b!4859778 res!2074699) b!4859779))

(assert (= (and start!507838 ((_ is Cons!55772) l1!1299)) b!4859775))

(assert (= (and start!507838 ((_ is Cons!55772) l2!1268)) b!4859776))

(declare-fun m!5858016 () Bool)

(assert (=> start!507838 m!5858016))

(assert (=> start!507838 m!5858016))

(declare-fun m!5858018 () Bool)

(assert (=> start!507838 m!5858018))

(declare-fun m!5858020 () Bool)

(assert (=> b!4859778 m!5858020))

(declare-fun m!5858022 () Bool)

(assert (=> b!4859779 m!5858022))

(assert (=> b!4859779 m!5858022))

(declare-fun m!5858024 () Bool)

(assert (=> b!4859779 m!5858024))

(check-sat (not b!4859779) (not start!507838) (not b!4859776) (not b!4859778) tp_is_empty!35563 (not b!4859775))
(check-sat)
(get-model)

(declare-fun d!1559991 () Bool)

(assert (=> d!1559991 (= (isEmpty!29861 (++!12157 l1!1299 l2!1268)) ((_ is Nil!55772) (++!12157 l1!1299 l2!1268)))))

(assert (=> start!507838 d!1559991))

(declare-fun d!1559993 () Bool)

(declare-fun e!3038200 () Bool)

(assert (=> d!1559993 e!3038200))

(declare-fun res!2074713 () Bool)

(assert (=> d!1559993 (=> (not res!2074713) (not e!3038200))))

(declare-fun lt!1992106 () List!55896)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9946 (List!55896) (InoxSet B!2945))

(assert (=> d!1559993 (= res!2074713 (= (content!9946 lt!1992106) ((_ map or) (content!9946 l1!1299) (content!9946 l2!1268))))))

(declare-fun e!3038199 () List!55896)

(assert (=> d!1559993 (= lt!1992106 e!3038199)))

(declare-fun c!826722 () Bool)

(assert (=> d!1559993 (= c!826722 ((_ is Nil!55772) l1!1299))))

(assert (=> d!1559993 (= (++!12157 l1!1299 l2!1268) lt!1992106)))

(declare-fun b!4859810 () Bool)

(declare-fun res!2074712 () Bool)

(assert (=> b!4859810 (=> (not res!2074712) (not e!3038200))))

(declare-fun size!36750 (List!55896) Int)

(assert (=> b!4859810 (= res!2074712 (= (size!36750 lt!1992106) (+ (size!36750 l1!1299) (size!36750 l2!1268))))))

(declare-fun b!4859809 () Bool)

(assert (=> b!4859809 (= e!3038199 (Cons!55772 (h!62220 l1!1299) (++!12157 (t!363516 l1!1299) l2!1268)))))

(declare-fun b!4859811 () Bool)

(assert (=> b!4859811 (= e!3038200 (or (not (= l2!1268 Nil!55772)) (= lt!1992106 l1!1299)))))

(declare-fun b!4859808 () Bool)

(assert (=> b!4859808 (= e!3038199 l2!1268)))

(assert (= (and d!1559993 c!826722) b!4859808))

(assert (= (and d!1559993 (not c!826722)) b!4859809))

(assert (= (and d!1559993 res!2074713) b!4859810))

(assert (= (and b!4859810 res!2074712) b!4859811))

(declare-fun m!5858048 () Bool)

(assert (=> d!1559993 m!5858048))

(declare-fun m!5858050 () Bool)

(assert (=> d!1559993 m!5858050))

(declare-fun m!5858052 () Bool)

(assert (=> d!1559993 m!5858052))

(declare-fun m!5858054 () Bool)

(assert (=> b!4859810 m!5858054))

(declare-fun m!5858056 () Bool)

(assert (=> b!4859810 m!5858056))

(declare-fun m!5858058 () Bool)

(assert (=> b!4859810 m!5858058))

(assert (=> b!4859809 m!5858022))

(assert (=> start!507838 d!1559993))

(declare-fun d!1560001 () Bool)

(assert (=> d!1560001 (= (isEmpty!29861 (++!12157 (t!363516 l1!1299) l2!1268)) ((_ is Nil!55772) (++!12157 (t!363516 l1!1299) l2!1268)))))

(assert (=> b!4859779 d!1560001))

(declare-fun d!1560003 () Bool)

(declare-fun e!3038204 () Bool)

(assert (=> d!1560003 e!3038204))

(declare-fun res!2074715 () Bool)

(assert (=> d!1560003 (=> (not res!2074715) (not e!3038204))))

(declare-fun lt!1992107 () List!55896)

(assert (=> d!1560003 (= res!2074715 (= (content!9946 lt!1992107) ((_ map or) (content!9946 (t!363516 l1!1299)) (content!9946 l2!1268))))))

(declare-fun e!3038203 () List!55896)

(assert (=> d!1560003 (= lt!1992107 e!3038203)))

(declare-fun c!826723 () Bool)

(assert (=> d!1560003 (= c!826723 ((_ is Nil!55772) (t!363516 l1!1299)))))

(assert (=> d!1560003 (= (++!12157 (t!363516 l1!1299) l2!1268) lt!1992107)))

(declare-fun b!4859816 () Bool)

(declare-fun res!2074714 () Bool)

(assert (=> b!4859816 (=> (not res!2074714) (not e!3038204))))

(assert (=> b!4859816 (= res!2074714 (= (size!36750 lt!1992107) (+ (size!36750 (t!363516 l1!1299)) (size!36750 l2!1268))))))

(declare-fun b!4859815 () Bool)

(assert (=> b!4859815 (= e!3038203 (Cons!55772 (h!62220 (t!363516 l1!1299)) (++!12157 (t!363516 (t!363516 l1!1299)) l2!1268)))))

(declare-fun b!4859817 () Bool)

(assert (=> b!4859817 (= e!3038204 (or (not (= l2!1268 Nil!55772)) (= lt!1992107 (t!363516 l1!1299))))))

(declare-fun b!4859814 () Bool)

(assert (=> b!4859814 (= e!3038203 l2!1268)))

(assert (= (and d!1560003 c!826723) b!4859814))

(assert (= (and d!1560003 (not c!826723)) b!4859815))

(assert (= (and d!1560003 res!2074715) b!4859816))

(assert (= (and b!4859816 res!2074714) b!4859817))

(declare-fun m!5858060 () Bool)

(assert (=> d!1560003 m!5858060))

(declare-fun m!5858062 () Bool)

(assert (=> d!1560003 m!5858062))

(assert (=> d!1560003 m!5858052))

(declare-fun m!5858064 () Bool)

(assert (=> b!4859816 m!5858064))

(declare-fun m!5858066 () Bool)

(assert (=> b!4859816 m!5858066))

(assert (=> b!4859816 m!5858058))

(declare-fun m!5858068 () Bool)

(assert (=> b!4859815 m!5858068))

(assert (=> b!4859779 d!1560003))

(declare-fun d!1560005 () Bool)

(assert (=> d!1560005 (= (isEmpty!29861 (t!363516 l1!1299)) ((_ is Nil!55772) (t!363516 l1!1299)))))

(assert (=> b!4859778 d!1560005))

(declare-fun b!4859822 () Bool)

(declare-fun e!3038207 () Bool)

(declare-fun tp!1366956 () Bool)

(assert (=> b!4859822 (= e!3038207 (and tp_is_empty!35563 tp!1366956))))

(assert (=> b!4859776 (= tp!1366948 e!3038207)))

(assert (= (and b!4859776 ((_ is Cons!55772) (t!363516 l2!1268))) b!4859822))

(declare-fun b!4859823 () Bool)

(declare-fun e!3038208 () Bool)

(declare-fun tp!1366957 () Bool)

(assert (=> b!4859823 (= e!3038208 (and tp_is_empty!35563 tp!1366957))))

(assert (=> b!4859775 (= tp!1366949 e!3038208)))

(assert (= (and b!4859775 ((_ is Cons!55772) (t!363516 l1!1299))) b!4859823))

(check-sat (not b!4859810) (not d!1560003) (not b!4859816) tp_is_empty!35563 (not b!4859823) (not b!4859815) (not b!4859822) (not b!4859809) (not d!1559993))
(check-sat)
