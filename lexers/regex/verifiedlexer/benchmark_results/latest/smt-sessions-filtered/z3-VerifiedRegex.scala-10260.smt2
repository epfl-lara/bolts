; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534234 () Bool)

(assert start!534234)

(declare-fun res!2150900 () Bool)

(declare-fun e!3153355 () Bool)

(assert (=> start!534234 (=> (not res!2150900) (not e!3153355))))

(declare-fun i!652 () Int)

(assert (=> start!534234 (= res!2150900 (<= 0 i!652))))

(assert (=> start!534234 e!3153355))

(assert (=> start!534234 true))

(declare-fun e!3153356 () Bool)

(assert (=> start!534234 e!3153356))

(declare-fun e!3153354 () Bool)

(assert (=> start!534234 e!3153354))

(declare-fun b!5050662 () Bool)

(declare-fun res!2150899 () Bool)

(assert (=> b!5050662 (=> (not res!2150899) (not e!3153355))))

(assert (=> b!5050662 (= res!2150899 (> i!652 0))))

(declare-fun b!5050663 () Bool)

(declare-fun tp_is_empty!36947 () Bool)

(declare-fun tp!1412192 () Bool)

(assert (=> b!5050663 (= e!3153354 (and tp_is_empty!36947 tp!1412192))))

(declare-fun b!5050664 () Bool)

(declare-fun res!2150896 () Bool)

(assert (=> b!5050664 (=> (not res!2150896) (not e!3153355))))

(declare-datatypes ((T!104754 0))(
  ( (T!104755 (val!23596 Int)) )
))
(declare-datatypes ((List!58506 0))(
  ( (Nil!58382) (Cons!58382 (h!64830 T!104754) (t!371145 List!58506)) )
))
(declare-fun r!2041 () List!58506)

(declare-fun l!2757 () List!58506)

(declare-fun size!39005 (List!58506) Int)

(assert (=> b!5050664 (= res!2150896 (<= i!652 (+ (size!39005 l!2757) (size!39005 r!2041))))))

(declare-fun b!5050665 () Bool)

(declare-fun tp!1412193 () Bool)

(assert (=> b!5050665 (= e!3153356 (and tp_is_empty!36947 tp!1412193))))

(declare-fun b!5050666 () Bool)

(declare-fun ++!12751 (List!58506 List!58506) List!58506)

(assert (=> b!5050666 (= e!3153355 (= (++!12751 l!2757 r!2041) Nil!58382))))

(declare-fun b!5050667 () Bool)

(declare-fun res!2150901 () Bool)

(assert (=> b!5050667 (=> (not res!2150901) (not e!3153355))))

(declare-fun isEmpty!31567 (List!58506) Bool)

(assert (=> b!5050667 (= res!2150901 (not (isEmpty!31567 l!2757)))))

(declare-fun b!5050668 () Bool)

(declare-fun res!2150898 () Bool)

(assert (=> b!5050668 (=> (not res!2150898) (not e!3153355))))

(assert (=> b!5050668 (= res!2150898 (and (not (= l!2757 Nil!58382)) (not (= r!2041 Nil!58382))))))

(declare-fun b!5050669 () Bool)

(declare-fun res!2150897 () Bool)

(assert (=> b!5050669 (=> (not res!2150897) (not e!3153355))))

(assert (=> b!5050669 (= res!2150897 (not (isEmpty!31567 r!2041)))))

(assert (= (and start!534234 res!2150900) b!5050664))

(assert (= (and b!5050664 res!2150896) b!5050668))

(assert (= (and b!5050668 res!2150898) b!5050667))

(assert (= (and b!5050667 res!2150901) b!5050669))

(assert (= (and b!5050669 res!2150897) b!5050662))

(assert (= (and b!5050662 res!2150899) b!5050666))

(get-info :version)

(assert (= (and start!534234 ((_ is Cons!58382) l!2757)) b!5050665))

(assert (= (and start!534234 ((_ is Cons!58382) r!2041)) b!5050663))

(declare-fun m!6084888 () Bool)

(assert (=> b!5050664 m!6084888))

(declare-fun m!6084890 () Bool)

(assert (=> b!5050664 m!6084890))

(declare-fun m!6084892 () Bool)

(assert (=> b!5050666 m!6084892))

(declare-fun m!6084894 () Bool)

(assert (=> b!5050667 m!6084894))

(declare-fun m!6084896 () Bool)

(assert (=> b!5050669 m!6084896))

(check-sat (not b!5050665) (not b!5050667) (not b!5050663) tp_is_empty!36947 (not b!5050666) (not b!5050669) (not b!5050664))
(check-sat)
(get-model)

(declare-fun b!5050686 () Bool)

(declare-fun e!3153366 () List!58506)

(assert (=> b!5050686 (= e!3153366 r!2041)))

(declare-fun d!1625053 () Bool)

(declare-fun e!3153365 () Bool)

(assert (=> d!1625053 e!3153365))

(declare-fun res!2150906 () Bool)

(assert (=> d!1625053 (=> (not res!2150906) (not e!3153365))))

(declare-fun lt!2086568 () List!58506)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10393 (List!58506) (InoxSet T!104754))

(assert (=> d!1625053 (= res!2150906 (= (content!10393 lt!2086568) ((_ map or) (content!10393 l!2757) (content!10393 r!2041))))))

(assert (=> d!1625053 (= lt!2086568 e!3153366)))

(declare-fun c!866342 () Bool)

(assert (=> d!1625053 (= c!866342 ((_ is Nil!58382) l!2757))))

(assert (=> d!1625053 (= (++!12751 l!2757 r!2041) lt!2086568)))

(declare-fun b!5050688 () Bool)

(declare-fun res!2150907 () Bool)

(assert (=> b!5050688 (=> (not res!2150907) (not e!3153365))))

(assert (=> b!5050688 (= res!2150907 (= (size!39005 lt!2086568) (+ (size!39005 l!2757) (size!39005 r!2041))))))

(declare-fun b!5050687 () Bool)

(assert (=> b!5050687 (= e!3153366 (Cons!58382 (h!64830 l!2757) (++!12751 (t!371145 l!2757) r!2041)))))

(declare-fun b!5050689 () Bool)

(assert (=> b!5050689 (= e!3153365 (or (not (= r!2041 Nil!58382)) (= lt!2086568 l!2757)))))

(assert (= (and d!1625053 c!866342) b!5050686))

(assert (= (and d!1625053 (not c!866342)) b!5050687))

(assert (= (and d!1625053 res!2150906) b!5050688))

(assert (= (and b!5050688 res!2150907) b!5050689))

(declare-fun m!6084902 () Bool)

(assert (=> d!1625053 m!6084902))

(declare-fun m!6084904 () Bool)

(assert (=> d!1625053 m!6084904))

(declare-fun m!6084906 () Bool)

(assert (=> d!1625053 m!6084906))

(declare-fun m!6084908 () Bool)

(assert (=> b!5050688 m!6084908))

(assert (=> b!5050688 m!6084888))

(assert (=> b!5050688 m!6084890))

(declare-fun m!6084910 () Bool)

(assert (=> b!5050687 m!6084910))

(assert (=> b!5050666 d!1625053))

(declare-fun d!1625065 () Bool)

(assert (=> d!1625065 (= (isEmpty!31567 l!2757) ((_ is Nil!58382) l!2757))))

(assert (=> b!5050667 d!1625065))

(declare-fun d!1625067 () Bool)

(assert (=> d!1625067 (= (isEmpty!31567 r!2041) ((_ is Nil!58382) r!2041))))

(assert (=> b!5050669 d!1625067))

(declare-fun d!1625069 () Bool)

(declare-fun lt!2086574 () Int)

(assert (=> d!1625069 (>= lt!2086574 0)))

(declare-fun e!3153375 () Int)

(assert (=> d!1625069 (= lt!2086574 e!3153375)))

(declare-fun c!866348 () Bool)

(assert (=> d!1625069 (= c!866348 ((_ is Nil!58382) l!2757))))

(assert (=> d!1625069 (= (size!39005 l!2757) lt!2086574)))

(declare-fun b!5050706 () Bool)

(assert (=> b!5050706 (= e!3153375 0)))

(declare-fun b!5050707 () Bool)

(assert (=> b!5050707 (= e!3153375 (+ 1 (size!39005 (t!371145 l!2757))))))

(assert (= (and d!1625069 c!866348) b!5050706))

(assert (= (and d!1625069 (not c!866348)) b!5050707))

(declare-fun m!6084922 () Bool)

(assert (=> b!5050707 m!6084922))

(assert (=> b!5050664 d!1625069))

(declare-fun d!1625071 () Bool)

(declare-fun lt!2086575 () Int)

(assert (=> d!1625071 (>= lt!2086575 0)))

(declare-fun e!3153378 () Int)

(assert (=> d!1625071 (= lt!2086575 e!3153378)))

(declare-fun c!866349 () Bool)

(assert (=> d!1625071 (= c!866349 ((_ is Nil!58382) r!2041))))

(assert (=> d!1625071 (= (size!39005 r!2041) lt!2086575)))

(declare-fun b!5050712 () Bool)

(assert (=> b!5050712 (= e!3153378 0)))

(declare-fun b!5050713 () Bool)

(assert (=> b!5050713 (= e!3153378 (+ 1 (size!39005 (t!371145 r!2041))))))

(assert (= (and d!1625071 c!866349) b!5050712))

(assert (= (and d!1625071 (not c!866349)) b!5050713))

(declare-fun m!6084924 () Bool)

(assert (=> b!5050713 m!6084924))

(assert (=> b!5050664 d!1625071))

(declare-fun b!5050720 () Bool)

(declare-fun e!3153383 () Bool)

(declare-fun tp!1412200 () Bool)

(assert (=> b!5050720 (= e!3153383 (and tp_is_empty!36947 tp!1412200))))

(assert (=> b!5050663 (= tp!1412192 e!3153383)))

(assert (= (and b!5050663 ((_ is Cons!58382) (t!371145 r!2041))) b!5050720))

(declare-fun b!5050721 () Bool)

(declare-fun e!3153384 () Bool)

(declare-fun tp!1412201 () Bool)

(assert (=> b!5050721 (= e!3153384 (and tp_is_empty!36947 tp!1412201))))

(assert (=> b!5050665 (= tp!1412193 e!3153384)))

(assert (= (and b!5050665 ((_ is Cons!58382) (t!371145 l!2757))) b!5050721))

(check-sat (not b!5050688) (not b!5050713) tp_is_empty!36947 (not b!5050720) (not b!5050721) (not d!1625053) (not b!5050687) (not b!5050707))
(check-sat)
