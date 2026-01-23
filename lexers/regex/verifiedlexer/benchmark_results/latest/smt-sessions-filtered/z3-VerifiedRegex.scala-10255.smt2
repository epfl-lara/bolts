; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534138 () Bool)

(assert start!534138)

(declare-fun b!5049858 () Bool)

(declare-fun e!3152920 () Bool)

(declare-datatypes ((T!104684 0))(
  ( (T!104685 (val!23586 Int)) )
))
(declare-datatypes ((List!58496 0))(
  ( (Nil!58372) (Cons!58372 (h!64820 T!104684) (t!371135 List!58496)) )
))
(declare-fun l!2779 () List!58496)

(declare-fun i!705 () Int)

(declare-fun take!877 (List!58496 Int) List!58496)

(assert (=> b!5049858 (= e!3152920 (not (= (take!877 l!2779 i!705) Nil!58372)))))

(declare-fun res!2150707 () Bool)

(assert (=> start!534138 (=> (not res!2150707) (not e!3152920))))

(assert (=> start!534138 (= res!2150707 (<= 0 i!705))))

(assert (=> start!534138 e!3152920))

(assert (=> start!534138 true))

(declare-fun e!3152919 () Bool)

(assert (=> start!534138 e!3152919))

(declare-fun b!5049856 () Bool)

(declare-fun res!2150708 () Bool)

(assert (=> b!5049856 (=> (not res!2150708) (not e!3152920))))

(declare-fun size!38995 (List!58496) Int)

(assert (=> b!5049856 (= res!2150708 (<= i!705 (size!38995 l!2779)))))

(declare-fun b!5049857 () Bool)

(declare-fun res!2150709 () Bool)

(assert (=> b!5049857 (=> (not res!2150709) (not e!3152920))))

(get-info :version)

(assert (=> b!5049857 (= res!2150709 (and (not ((_ is Nil!58372) l!2779)) (= i!705 0)))))

(declare-fun b!5049859 () Bool)

(declare-fun tp_is_empty!36927 () Bool)

(declare-fun tp!1412127 () Bool)

(assert (=> b!5049859 (= e!3152919 (and tp_is_empty!36927 tp!1412127))))

(assert (= (and start!534138 res!2150707) b!5049856))

(assert (= (and b!5049856 res!2150708) b!5049857))

(assert (= (and b!5049857 res!2150709) b!5049858))

(assert (= (and start!534138 ((_ is Cons!58372) l!2779)) b!5049859))

(declare-fun m!6084430 () Bool)

(assert (=> b!5049858 m!6084430))

(declare-fun m!6084432 () Bool)

(assert (=> b!5049856 m!6084432))

(check-sat (not b!5049856) (not b!5049858) (not b!5049859) tp_is_empty!36927)
(check-sat)
(get-model)

(declare-fun d!1624880 () Bool)

(declare-fun lt!2086440 () Int)

(assert (=> d!1624880 (>= lt!2086440 0)))

(declare-fun e!3152923 () Int)

(assert (=> d!1624880 (= lt!2086440 e!3152923)))

(declare-fun c!866070 () Bool)

(assert (=> d!1624880 (= c!866070 ((_ is Nil!58372) l!2779))))

(assert (=> d!1624880 (= (size!38995 l!2779) lt!2086440)))

(declare-fun b!5049864 () Bool)

(assert (=> b!5049864 (= e!3152923 0)))

(declare-fun b!5049865 () Bool)

(assert (=> b!5049865 (= e!3152923 (+ 1 (size!38995 (t!371135 l!2779))))))

(assert (= (and d!1624880 c!866070) b!5049864))

(assert (= (and d!1624880 (not c!866070)) b!5049865))

(declare-fun m!6084434 () Bool)

(assert (=> b!5049865 m!6084434))

(assert (=> b!5049856 d!1624880))

(declare-fun b!5049900 () Bool)

(declare-fun e!3152946 () List!58496)

(assert (=> b!5049900 (= e!3152946 (Cons!58372 (h!64820 l!2779) (take!877 (t!371135 l!2779) (- i!705 1))))))

(declare-fun b!5049901 () Bool)

(declare-fun e!3152945 () Int)

(assert (=> b!5049901 (= e!3152945 0)))

(declare-fun b!5049902 () Bool)

(assert (=> b!5049902 (= e!3152946 Nil!58372)))

(declare-fun d!1624884 () Bool)

(declare-fun e!3152943 () Bool)

(assert (=> d!1624884 e!3152943))

(declare-fun res!2150714 () Bool)

(assert (=> d!1624884 (=> (not res!2150714) (not e!3152943))))

(declare-fun lt!2086448 () List!58496)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10385 (List!58496) (InoxSet T!104684))

(assert (=> d!1624884 (= res!2150714 (= ((_ map implies) (content!10385 lt!2086448) (content!10385 l!2779)) ((as const (InoxSet T!104684)) true)))))

(assert (=> d!1624884 (= lt!2086448 e!3152946)))

(declare-fun c!866088 () Bool)

(assert (=> d!1624884 (= c!866088 (or ((_ is Nil!58372) l!2779) (<= i!705 0)))))

(assert (=> d!1624884 (= (take!877 l!2779 i!705) lt!2086448)))

(declare-fun b!5049903 () Bool)

(declare-fun e!3152944 () Int)

(assert (=> b!5049903 (= e!3152944 i!705)))

(declare-fun b!5049904 () Bool)

(assert (=> b!5049904 (= e!3152944 (size!38995 l!2779))))

(declare-fun b!5049905 () Bool)

(assert (=> b!5049905 (= e!3152945 e!3152944)))

(declare-fun c!866086 () Bool)

(assert (=> b!5049905 (= c!866086 (>= i!705 (size!38995 l!2779)))))

(declare-fun b!5049906 () Bool)

(assert (=> b!5049906 (= e!3152943 (= (size!38995 lt!2086448) e!3152945))))

(declare-fun c!866087 () Bool)

(assert (=> b!5049906 (= c!866087 (<= i!705 0))))

(assert (= (and d!1624884 c!866088) b!5049902))

(assert (= (and d!1624884 (not c!866088)) b!5049900))

(assert (= (and d!1624884 res!2150714) b!5049906))

(assert (= (and b!5049906 c!866087) b!5049901))

(assert (= (and b!5049906 (not c!866087)) b!5049905))

(assert (= (and b!5049905 c!866086) b!5049904))

(assert (= (and b!5049905 (not c!866086)) b!5049903))

(assert (=> b!5049904 m!6084432))

(declare-fun m!6084438 () Bool)

(assert (=> b!5049900 m!6084438))

(declare-fun m!6084440 () Bool)

(assert (=> d!1624884 m!6084440))

(declare-fun m!6084442 () Bool)

(assert (=> d!1624884 m!6084442))

(declare-fun m!6084444 () Bool)

(assert (=> b!5049906 m!6084444))

(assert (=> b!5049905 m!6084432))

(assert (=> b!5049858 d!1624884))

(declare-fun b!5049911 () Bool)

(declare-fun e!3152949 () Bool)

(declare-fun tp!1412130 () Bool)

(assert (=> b!5049911 (= e!3152949 (and tp_is_empty!36927 tp!1412130))))

(assert (=> b!5049859 (= tp!1412127 e!3152949)))

(assert (= (and b!5049859 ((_ is Cons!58372) (t!371135 l!2779))) b!5049911))

(check-sat (not d!1624884) tp_is_empty!36927 (not b!5049906) (not b!5049900) (not b!5049911) (not b!5049905) (not b!5049865) (not b!5049904))
(check-sat)
