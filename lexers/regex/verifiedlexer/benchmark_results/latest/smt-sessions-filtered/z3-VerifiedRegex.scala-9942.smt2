; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521836 () Bool)

(assert start!521836)

(declare-fun b!4952040 () Bool)

(declare-fun res!2112694 () Bool)

(declare-fun e!3093951 () Bool)

(assert (=> b!4952040 (=> (not res!2112694) (not e!3093951))))

(declare-datatypes ((B!2981 0))(
  ( (B!2982 (val!22960 Int)) )
))
(declare-datatypes ((List!57148 0))(
  ( (Nil!57024) (Cons!57024 (h!63472 B!2981) (t!367714 List!57148)) )
))
(declare-fun l11!19 () List!57148)

(declare-fun l21!19 () List!57148)

(declare-fun size!37852 (List!57148) Int)

(assert (=> b!4952040 (= res!2112694 (= (size!37852 l11!19) (size!37852 l21!19)))))

(declare-fun b!4952041 () Bool)

(declare-fun e!3093950 () Bool)

(declare-fun tp_is_empty!36199 () Bool)

(declare-fun tp!1388246 () Bool)

(assert (=> b!4952041 (= e!3093950 (and tp_is_empty!36199 tp!1388246))))

(declare-fun b!4952042 () Bool)

(declare-fun e!3093952 () Bool)

(declare-fun tp!1388244 () Bool)

(assert (=> b!4952042 (= e!3093952 (and tp_is_empty!36199 tp!1388244))))

(declare-fun b!4952043 () Bool)

(declare-fun e!3093949 () Bool)

(declare-fun tp!1388245 () Bool)

(assert (=> b!4952043 (= e!3093949 (and tp_is_empty!36199 tp!1388245))))

(declare-fun res!2112693 () Bool)

(assert (=> start!521836 (=> (not res!2112693) (not e!3093951))))

(declare-fun l12!19 () List!57148)

(declare-fun l22!19 () List!57148)

(declare-fun ++!12492 (List!57148 List!57148) List!57148)

(assert (=> start!521836 (= res!2112693 (= (++!12492 l11!19 l12!19) (++!12492 l21!19 l22!19)))))

(assert (=> start!521836 e!3093951))

(assert (=> start!521836 e!3093949))

(assert (=> start!521836 e!3093952))

(declare-fun e!3093948 () Bool)

(assert (=> start!521836 e!3093948))

(assert (=> start!521836 e!3093950))

(declare-fun b!4952044 () Bool)

(declare-fun ListPrimitiveSize!377 (List!57148) Int)

(assert (=> b!4952044 (= e!3093951 (< (ListPrimitiveSize!377 l11!19) 0))))

(declare-fun b!4952045 () Bool)

(declare-fun tp!1388247 () Bool)

(assert (=> b!4952045 (= e!3093948 (and tp_is_empty!36199 tp!1388247))))

(assert (= (and start!521836 res!2112693) b!4952040))

(assert (= (and b!4952040 res!2112694) b!4952044))

(get-info :version)

(assert (= (and start!521836 ((_ is Cons!57024) l11!19)) b!4952043))

(assert (= (and start!521836 ((_ is Cons!57024) l12!19)) b!4952042))

(assert (= (and start!521836 ((_ is Cons!57024) l21!19)) b!4952045))

(assert (= (and start!521836 ((_ is Cons!57024) l22!19)) b!4952041))

(declare-fun m!5977110 () Bool)

(assert (=> b!4952040 m!5977110))

(declare-fun m!5977112 () Bool)

(assert (=> b!4952040 m!5977112))

(declare-fun m!5977114 () Bool)

(assert (=> start!521836 m!5977114))

(declare-fun m!5977116 () Bool)

(assert (=> start!521836 m!5977116))

(declare-fun m!5977118 () Bool)

(assert (=> b!4952044 m!5977118))

(check-sat tp_is_empty!36199 (not b!4952042) (not start!521836) (not b!4952043) (not b!4952044) (not b!4952045) (not b!4952040) (not b!4952041))
(check-sat)
(get-model)

(declare-fun d!1594937 () Bool)

(declare-fun lt!2043922 () Int)

(assert (=> d!1594937 (>= lt!2043922 0)))

(declare-fun e!3093959 () Int)

(assert (=> d!1594937 (= lt!2043922 e!3093959)))

(declare-fun c!845691 () Bool)

(assert (=> d!1594937 (= c!845691 ((_ is Nil!57024) l11!19))))

(assert (=> d!1594937 (= (ListPrimitiveSize!377 l11!19) lt!2043922)))

(declare-fun b!4952058 () Bool)

(assert (=> b!4952058 (= e!3093959 0)))

(declare-fun b!4952059 () Bool)

(assert (=> b!4952059 (= e!3093959 (+ 1 (ListPrimitiveSize!377 (t!367714 l11!19))))))

(assert (= (and d!1594937 c!845691) b!4952058))

(assert (= (and d!1594937 (not c!845691)) b!4952059))

(declare-fun m!5977120 () Bool)

(assert (=> b!4952059 m!5977120))

(assert (=> b!4952044 d!1594937))

(declare-fun d!1594939 () Bool)

(declare-fun lt!2043927 () Int)

(assert (=> d!1594939 (>= lt!2043927 0)))

(declare-fun e!3093966 () Int)

(assert (=> d!1594939 (= lt!2043927 e!3093966)))

(declare-fun c!845696 () Bool)

(assert (=> d!1594939 (= c!845696 ((_ is Nil!57024) l11!19))))

(assert (=> d!1594939 (= (size!37852 l11!19) lt!2043927)))

(declare-fun b!4952072 () Bool)

(assert (=> b!4952072 (= e!3093966 0)))

(declare-fun b!4952073 () Bool)

(assert (=> b!4952073 (= e!3093966 (+ 1 (size!37852 (t!367714 l11!19))))))

(assert (= (and d!1594939 c!845696) b!4952072))

(assert (= (and d!1594939 (not c!845696)) b!4952073))

(declare-fun m!5977146 () Bool)

(assert (=> b!4952073 m!5977146))

(assert (=> b!4952040 d!1594939))

(declare-fun d!1594945 () Bool)

(declare-fun lt!2043928 () Int)

(assert (=> d!1594945 (>= lt!2043928 0)))

(declare-fun e!3093967 () Int)

(assert (=> d!1594945 (= lt!2043928 e!3093967)))

(declare-fun c!845697 () Bool)

(assert (=> d!1594945 (= c!845697 ((_ is Nil!57024) l21!19))))

(assert (=> d!1594945 (= (size!37852 l21!19) lt!2043928)))

(declare-fun b!4952074 () Bool)

(assert (=> b!4952074 (= e!3093967 0)))

(declare-fun b!4952075 () Bool)

(assert (=> b!4952075 (= e!3093967 (+ 1 (size!37852 (t!367714 l21!19))))))

(assert (= (and d!1594945 c!845697) b!4952074))

(assert (= (and d!1594945 (not c!845697)) b!4952075))

(declare-fun m!5977148 () Bool)

(assert (=> b!4952075 m!5977148))

(assert (=> b!4952040 d!1594945))

(declare-fun e!3093985 () Bool)

(declare-fun lt!2043938 () List!57148)

(declare-fun b!4952108 () Bool)

(assert (=> b!4952108 (= e!3093985 (or (not (= l12!19 Nil!57024)) (= lt!2043938 l11!19)))))

(declare-fun d!1594947 () Bool)

(assert (=> d!1594947 e!3093985))

(declare-fun res!2112708 () Bool)

(assert (=> d!1594947 (=> (not res!2112708) (not e!3093985))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10167 (List!57148) (InoxSet B!2981))

(assert (=> d!1594947 (= res!2112708 (= (content!10167 lt!2043938) ((_ map or) (content!10167 l11!19) (content!10167 l12!19))))))

(declare-fun e!3093984 () List!57148)

(assert (=> d!1594947 (= lt!2043938 e!3093984)))

(declare-fun c!845707 () Bool)

(assert (=> d!1594947 (= c!845707 ((_ is Nil!57024) l11!19))))

(assert (=> d!1594947 (= (++!12492 l11!19 l12!19) lt!2043938)))

(declare-fun b!4952107 () Bool)

(declare-fun res!2112707 () Bool)

(assert (=> b!4952107 (=> (not res!2112707) (not e!3093985))))

(assert (=> b!4952107 (= res!2112707 (= (size!37852 lt!2043938) (+ (size!37852 l11!19) (size!37852 l12!19))))))

(declare-fun b!4952106 () Bool)

(assert (=> b!4952106 (= e!3093984 (Cons!57024 (h!63472 l11!19) (++!12492 (t!367714 l11!19) l12!19)))))

(declare-fun b!4952105 () Bool)

(assert (=> b!4952105 (= e!3093984 l12!19)))

(assert (= (and d!1594947 c!845707) b!4952105))

(assert (= (and d!1594947 (not c!845707)) b!4952106))

(assert (= (and d!1594947 res!2112708) b!4952107))

(assert (= (and b!4952107 res!2112707) b!4952108))

(declare-fun m!5977156 () Bool)

(assert (=> d!1594947 m!5977156))

(declare-fun m!5977158 () Bool)

(assert (=> d!1594947 m!5977158))

(declare-fun m!5977160 () Bool)

(assert (=> d!1594947 m!5977160))

(declare-fun m!5977162 () Bool)

(assert (=> b!4952107 m!5977162))

(assert (=> b!4952107 m!5977110))

(declare-fun m!5977164 () Bool)

(assert (=> b!4952107 m!5977164))

(declare-fun m!5977166 () Bool)

(assert (=> b!4952106 m!5977166))

(assert (=> start!521836 d!1594947))

(declare-fun lt!2043939 () List!57148)

(declare-fun e!3093988 () Bool)

(declare-fun b!4952113 () Bool)

(assert (=> b!4952113 (= e!3093988 (or (not (= l22!19 Nil!57024)) (= lt!2043939 l21!19)))))

(declare-fun d!1594953 () Bool)

(assert (=> d!1594953 e!3093988))

(declare-fun res!2112710 () Bool)

(assert (=> d!1594953 (=> (not res!2112710) (not e!3093988))))

(assert (=> d!1594953 (= res!2112710 (= (content!10167 lt!2043939) ((_ map or) (content!10167 l21!19) (content!10167 l22!19))))))

(declare-fun e!3093987 () List!57148)

(assert (=> d!1594953 (= lt!2043939 e!3093987)))

(declare-fun c!845708 () Bool)

(assert (=> d!1594953 (= c!845708 ((_ is Nil!57024) l21!19))))

(assert (=> d!1594953 (= (++!12492 l21!19 l22!19) lt!2043939)))

(declare-fun b!4952112 () Bool)

(declare-fun res!2112709 () Bool)

(assert (=> b!4952112 (=> (not res!2112709) (not e!3093988))))

(assert (=> b!4952112 (= res!2112709 (= (size!37852 lt!2043939) (+ (size!37852 l21!19) (size!37852 l22!19))))))

(declare-fun b!4952111 () Bool)

(assert (=> b!4952111 (= e!3093987 (Cons!57024 (h!63472 l21!19) (++!12492 (t!367714 l21!19) l22!19)))))

(declare-fun b!4952110 () Bool)

(assert (=> b!4952110 (= e!3093987 l22!19)))

(assert (= (and d!1594953 c!845708) b!4952110))

(assert (= (and d!1594953 (not c!845708)) b!4952111))

(assert (= (and d!1594953 res!2112710) b!4952112))

(assert (= (and b!4952112 res!2112709) b!4952113))

(declare-fun m!5977168 () Bool)

(assert (=> d!1594953 m!5977168))

(declare-fun m!5977170 () Bool)

(assert (=> d!1594953 m!5977170))

(declare-fun m!5977172 () Bool)

(assert (=> d!1594953 m!5977172))

(declare-fun m!5977174 () Bool)

(assert (=> b!4952112 m!5977174))

(assert (=> b!4952112 m!5977112))

(declare-fun m!5977176 () Bool)

(assert (=> b!4952112 m!5977176))

(declare-fun m!5977178 () Bool)

(assert (=> b!4952111 m!5977178))

(assert (=> start!521836 d!1594953))

(declare-fun b!4952118 () Bool)

(declare-fun e!3093991 () Bool)

(declare-fun tp!1388256 () Bool)

(assert (=> b!4952118 (= e!3093991 (and tp_is_empty!36199 tp!1388256))))

(assert (=> b!4952043 (= tp!1388245 e!3093991)))

(assert (= (and b!4952043 ((_ is Cons!57024) (t!367714 l11!19))) b!4952118))

(declare-fun b!4952119 () Bool)

(declare-fun e!3093992 () Bool)

(declare-fun tp!1388257 () Bool)

(assert (=> b!4952119 (= e!3093992 (and tp_is_empty!36199 tp!1388257))))

(assert (=> b!4952042 (= tp!1388244 e!3093992)))

(assert (= (and b!4952042 ((_ is Cons!57024) (t!367714 l12!19))) b!4952119))

(declare-fun b!4952120 () Bool)

(declare-fun e!3093993 () Bool)

(declare-fun tp!1388258 () Bool)

(assert (=> b!4952120 (= e!3093993 (and tp_is_empty!36199 tp!1388258))))

(assert (=> b!4952041 (= tp!1388246 e!3093993)))

(assert (= (and b!4952041 ((_ is Cons!57024) (t!367714 l22!19))) b!4952120))

(declare-fun b!4952121 () Bool)

(declare-fun e!3093994 () Bool)

(declare-fun tp!1388259 () Bool)

(assert (=> b!4952121 (= e!3093994 (and tp_is_empty!36199 tp!1388259))))

(assert (=> b!4952045 (= tp!1388247 e!3093994)))

(assert (= (and b!4952045 ((_ is Cons!57024) (t!367714 l21!19))) b!4952121))

(check-sat (not b!4952121) (not b!4952059) (not b!4952118) tp_is_empty!36199 (not b!4952119) (not b!4952107) (not d!1594953) (not b!4952106) (not b!4952112) (not b!4952120) (not b!4952075) (not b!4952111) (not b!4952073) (not d!1594947))
(check-sat)
