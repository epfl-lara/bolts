; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110718 () Bool)

(assert start!110718)

(declare-fun res!556266 () Bool)

(declare-fun e!799501 () Bool)

(assert (=> start!110718 (=> (not res!556266) (not e!799501))))

(declare-fun i!1036 () Int)

(assert (=> start!110718 (= res!556266 (<= 0 i!1036))))

(assert (=> start!110718 e!799501))

(assert (=> start!110718 true))

(declare-fun e!799502 () Bool)

(assert (=> start!110718 e!799502))

(declare-fun b!1256248 () Bool)

(declare-fun e!799503 () Bool)

(assert (=> b!1256248 (= e!799501 (not e!799503))))

(declare-fun res!556267 () Bool)

(assert (=> b!1256248 (=> res!556267 e!799503)))

(declare-fun lt!420483 () Int)

(assert (=> b!1256248 (= res!556267 (>= i!1036 lt!420483))))

(declare-datatypes ((T!23472 0))(
  ( (T!23473 (val!4168 Int)) )
))
(declare-datatypes ((List!12618 0))(
  ( (Nil!12555) (Cons!12555 (h!17956 T!23472) (t!115749 List!12618)) )
))
(declare-fun lt!420479 () List!12618)

(declare-fun size!9924 (List!12618) Int)

(assert (=> b!1256248 (= lt!420483 (size!9924 lt!420479))))

(declare-datatypes ((List!12620 0) (IArray!8247 0) (Object!2302 0) (BalanceConc!8180 0) (Conc!4121 0))(
  ( (Nil!12556) (Cons!12556 (h!17957 Object!2302) (t!115750 List!12620)) )
  ( (IArray!8248 (innerList!4181 List!12620)) )
  ( (BalanceConc!8179 (value!70543 BalanceConc!8180)) (List!12619 (value!70544 List!12620)) (Character!62 (value!70545 (_ BitVec 16))) (Open!62 (value!70546 Int)) )
  ( (BalanceConc!8181 (c!208568 Conc!4121)) )
  ( (Node!4121 (left!10854 Conc!4121) (right!11184 Conc!4121) (csize!8472 Int) (cheight!4332 Int)) (Leaf!6379 (xs!6832 IArray!8247) (csize!8473 Int)) (Empty!4121) )
))
(declare-datatypes ((Vector!128 0))(
  ( (Vector!129 (underlying!2808 Object!2302) (overflowing!121 List!12618)) )
))
(declare-fun v1!131 () Vector!128)

(declare-fun list!4680 (Vector!128) List!12618)

(assert (=> b!1256248 (= lt!420479 (list!4680 v1!131))))

(declare-fun size!9925 (Vector!128) Int)

(assert (=> b!1256248 (= lt!420483 (size!9925 v1!131))))

(declare-fun b!1256249 () Bool)

(declare-fun lt!420481 () Bool)

(assert (=> b!1256249 (= e!799503 lt!420481)))

(declare-fun lt!420480 () T!23472)

(declare-fun contains!2112 (List!12618 T!23472) Bool)

(assert (=> b!1256249 (= lt!420481 (contains!2112 lt!420479 lt!420480))))

(declare-fun contains!2113 (Vector!128 T!23472) Bool)

(assert (=> b!1256249 (= lt!420481 (contains!2113 v1!131 lt!420480))))

(declare-fun apply!2698 (List!12618 Int) T!23472)

(assert (=> b!1256249 (= lt!420480 (apply!2698 lt!420479 i!1036))))

(declare-fun apply!2699 (Vector!128 Int) T!23472)

(assert (=> b!1256249 (= lt!420480 (apply!2699 v1!131 i!1036))))

(declare-datatypes ((Unit!18840 0))(
  ( (Unit!18841) )
))
(declare-fun lt!420482 () Unit!18840)

(declare-fun choose!7856 (Vector!128 Int) Unit!18840)

(assert (=> b!1256249 (= lt!420482 (choose!7856 v1!131 i!1036))))

(declare-fun b!1256250 () Bool)

(declare-fun tp!370453 () Bool)

(declare-fun tp!370452 () Bool)

(assert (=> b!1256250 (= e!799502 (and tp!370453 tp!370452))))

(assert (= (and start!110718 res!556266) b!1256248))

(assert (= (and b!1256248 (not res!556267)) b!1256249))

(assert (= start!110718 b!1256250))

(declare-fun m!1414667 () Bool)

(assert (=> b!1256248 m!1414667))

(declare-fun m!1414669 () Bool)

(assert (=> b!1256248 m!1414669))

(declare-fun m!1414671 () Bool)

(assert (=> b!1256248 m!1414671))

(declare-fun m!1414673 () Bool)

(assert (=> b!1256249 m!1414673))

(declare-fun m!1414675 () Bool)

(assert (=> b!1256249 m!1414675))

(declare-fun m!1414677 () Bool)

(assert (=> b!1256249 m!1414677))

(declare-fun m!1414679 () Bool)

(assert (=> b!1256249 m!1414679))

(declare-fun m!1414681 () Bool)

(assert (=> b!1256249 m!1414681))

(check-sat (not b!1256248) (not b!1256249) (not b!1256250))
(check-sat)
(get-model)

(declare-fun d!355106 () Bool)

(declare-fun lt!420486 () Int)

(assert (=> d!355106 (>= lt!420486 0)))

(declare-fun e!799506 () Int)

(assert (=> d!355106 (= lt!420486 e!799506)))

(declare-fun c!208571 () Bool)

(get-info :version)

(assert (=> d!355106 (= c!208571 ((_ is Nil!12555) lt!420479))))

(assert (=> d!355106 (= (size!9924 lt!420479) lt!420486)))

(declare-fun b!1256255 () Bool)

(assert (=> b!1256255 (= e!799506 0)))

(declare-fun b!1256256 () Bool)

(assert (=> b!1256256 (= e!799506 (+ 1 (size!9924 (t!115749 lt!420479))))))

(assert (= (and d!355106 c!208571) b!1256255))

(assert (= (and d!355106 (not c!208571)) b!1256256))

(declare-fun m!1414683 () Bool)

(assert (=> b!1256256 m!1414683))

(assert (=> b!1256248 d!355106))

(declare-fun d!355108 () Bool)

(declare-fun choose!7859 (Vector!128) List!12618)

(assert (=> d!355108 (= (list!4680 v1!131) (choose!7859 v1!131))))

(declare-fun bs!290339 () Bool)

(assert (= bs!290339 d!355108))

(declare-fun m!1414685 () Bool)

(assert (=> bs!290339 m!1414685))

(assert (=> b!1256248 d!355108))

(declare-fun d!355110 () Bool)

(declare-fun lt!420495 () Int)

(assert (=> d!355110 (= lt!420495 (size!9924 (list!4680 v1!131)))))

(declare-fun choose!7860 (Vector!128) Int)

(assert (=> d!355110 (= lt!420495 (choose!7860 v1!131))))

(assert (=> d!355110 (= (size!9925 v1!131) lt!420495)))

(declare-fun bs!290340 () Bool)

(assert (= bs!290340 d!355110))

(assert (=> bs!290340 m!1414669))

(assert (=> bs!290340 m!1414669))

(declare-fun m!1414693 () Bool)

(assert (=> bs!290340 m!1414693))

(declare-fun m!1414695 () Bool)

(assert (=> bs!290340 m!1414695))

(assert (=> b!1256248 d!355110))

(declare-fun d!355114 () Bool)

(declare-fun lt!420504 () T!23472)

(assert (=> d!355114 (= lt!420504 (apply!2698 (list!4680 v1!131) i!1036))))

(declare-fun choose!7861 (Vector!128 Int) T!23472)

(assert (=> d!355114 (= lt!420504 (choose!7861 v1!131 i!1036))))

(declare-fun e!799518 () Bool)

(assert (=> d!355114 e!799518))

(declare-fun res!556276 () Bool)

(assert (=> d!355114 (=> (not res!556276) (not e!799518))))

(assert (=> d!355114 (= res!556276 (<= 0 i!1036))))

(assert (=> d!355114 (= (apply!2699 v1!131 i!1036) lt!420504)))

(declare-fun b!1256271 () Bool)

(declare-fun lt!420503 () Int)

(assert (=> b!1256271 (= e!799518 (< i!1036 lt!420503))))

(assert (=> b!1256271 (= lt!420503 (size!9924 (list!4680 v1!131)))))

(assert (=> b!1256271 (= lt!420503 (size!9925 v1!131))))

(assert (= (and d!355114 res!556276) b!1256271))

(assert (=> d!355114 m!1414669))

(assert (=> d!355114 m!1414669))

(declare-fun m!1414707 () Bool)

(assert (=> d!355114 m!1414707))

(declare-fun m!1414709 () Bool)

(assert (=> d!355114 m!1414709))

(assert (=> b!1256271 m!1414669))

(assert (=> b!1256271 m!1414669))

(assert (=> b!1256271 m!1414693))

(assert (=> b!1256271 m!1414671))

(assert (=> b!1256249 d!355114))

(declare-fun d!355120 () Bool)

(declare-fun choose!7863 (Vector!128 Int) Unit!18840)

(assert (=> d!355120 (= (choose!7856 v1!131 i!1036) (choose!7863 v1!131 i!1036))))

(declare-fun bs!290342 () Bool)

(assert (= bs!290342 d!355120))

(declare-fun m!1414711 () Bool)

(assert (=> bs!290342 m!1414711))

(assert (=> b!1256249 d!355120))

(declare-fun d!355122 () Bool)

(declare-fun lt!420516 () T!23472)

(assert (=> d!355122 (contains!2112 lt!420479 lt!420516)))

(declare-fun e!799533 () T!23472)

(assert (=> d!355122 (= lt!420516 e!799533)))

(declare-fun c!208580 () Bool)

(assert (=> d!355122 (= c!208580 (= i!1036 0))))

(declare-fun e!799532 () Bool)

(assert (=> d!355122 e!799532))

(declare-fun res!556285 () Bool)

(assert (=> d!355122 (=> (not res!556285) (not e!799532))))

(assert (=> d!355122 (= res!556285 (<= 0 i!1036))))

(assert (=> d!355122 (= (apply!2698 lt!420479 i!1036) lt!420516)))

(declare-fun b!1256290 () Bool)

(assert (=> b!1256290 (= e!799532 (< i!1036 (size!9924 lt!420479)))))

(declare-fun b!1256291 () Bool)

(declare-fun head!2171 (List!12618) T!23472)

(assert (=> b!1256291 (= e!799533 (head!2171 lt!420479))))

(declare-fun b!1256292 () Bool)

(declare-fun tail!1803 (List!12618) List!12618)

(assert (=> b!1256292 (= e!799533 (apply!2698 (tail!1803 lt!420479) (- i!1036 1)))))

(assert (= (and d!355122 res!556285) b!1256290))

(assert (= (and d!355122 c!208580) b!1256291))

(assert (= (and d!355122 (not c!208580)) b!1256292))

(declare-fun m!1414727 () Bool)

(assert (=> d!355122 m!1414727))

(assert (=> b!1256290 m!1414667))

(declare-fun m!1414729 () Bool)

(assert (=> b!1256291 m!1414729))

(declare-fun m!1414731 () Bool)

(assert (=> b!1256292 m!1414731))

(assert (=> b!1256292 m!1414731))

(declare-fun m!1414733 () Bool)

(assert (=> b!1256292 m!1414733))

(assert (=> b!1256249 d!355122))

(declare-fun d!355132 () Bool)

(declare-fun lt!420522 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1799 (List!12618) (InoxSet T!23472))

(assert (=> d!355132 (= lt!420522 (select (content!1799 lt!420479) lt!420480))))

(declare-fun e!799548 () Bool)

(assert (=> d!355132 (= lt!420522 e!799548)))

(declare-fun res!556291 () Bool)

(assert (=> d!355132 (=> (not res!556291) (not e!799548))))

(assert (=> d!355132 (= res!556291 ((_ is Cons!12555) lt!420479))))

(assert (=> d!355132 (= (contains!2112 lt!420479 lt!420480) lt!420522)))

(declare-fun b!1256313 () Bool)

(declare-fun e!799547 () Bool)

(assert (=> b!1256313 (= e!799548 e!799547)))

(declare-fun res!556290 () Bool)

(assert (=> b!1256313 (=> res!556290 e!799547)))

(assert (=> b!1256313 (= res!556290 (= (h!17956 lt!420479) lt!420480))))

(declare-fun b!1256314 () Bool)

(assert (=> b!1256314 (= e!799547 (contains!2112 (t!115749 lt!420479) lt!420480))))

(assert (= (and d!355132 res!556291) b!1256313))

(assert (= (and b!1256313 (not res!556290)) b!1256314))

(declare-fun m!1414741 () Bool)

(assert (=> d!355132 m!1414741))

(declare-fun m!1414743 () Bool)

(assert (=> d!355132 m!1414743))

(declare-fun m!1414745 () Bool)

(assert (=> b!1256314 m!1414745))

(assert (=> b!1256249 d!355132))

(declare-fun d!355134 () Bool)

(declare-fun lt!420525 () Bool)

(assert (=> d!355134 (= lt!420525 (contains!2112 (list!4680 v1!131) lt!420480))))

(declare-fun choose!7866 (Vector!128 T!23472) Bool)

(assert (=> d!355134 (= lt!420525 (choose!7866 v1!131 lt!420480))))

(assert (=> d!355134 (= (contains!2113 v1!131 lt!420480) lt!420525)))

(declare-fun bs!290346 () Bool)

(assert (= bs!290346 d!355134))

(assert (=> bs!290346 m!1414669))

(assert (=> bs!290346 m!1414669))

(declare-fun m!1414747 () Bool)

(assert (=> bs!290346 m!1414747))

(declare-fun m!1414749 () Bool)

(assert (=> bs!290346 m!1414749))

(assert (=> b!1256249 d!355134))

(declare-fun b!1256324 () Bool)

(declare-fun e!799554 () Bool)

(declare-fun tp!370467 () Bool)

(declare-fun inv!16893 (Conc!4121) Bool)

(assert (=> b!1256324 (= e!799554 (and (inv!16893 (c!208568 (value!70543 (underlying!2808 v1!131)))) tp!370467))))

(declare-fun b!1256323 () Bool)

(declare-fun e!799553 () Bool)

(declare-fun inv!16894 (BalanceConc!8180) Bool)

(assert (=> b!1256323 (= e!799553 (and (inv!16894 (value!70543 (underlying!2808 v1!131))) e!799554))))

(declare-fun b!1256325 () Bool)

(declare-fun tp!370468 () Bool)

(assert (=> b!1256325 (= e!799553 tp!370468)))

(assert (=> b!1256250 (= tp!370453 e!799553)))

(assert (= b!1256323 b!1256324))

(assert (= (and b!1256250 ((_ is BalanceConc!8179) (underlying!2808 v1!131))) b!1256323))

(assert (= (and b!1256250 ((_ is List!12619) (underlying!2808 v1!131))) b!1256325))

(declare-fun m!1414751 () Bool)

(assert (=> b!1256324 m!1414751))

(declare-fun m!1414753 () Bool)

(assert (=> b!1256323 m!1414753))

(declare-fun b!1256330 () Bool)

(declare-fun e!799557 () Bool)

(declare-fun tp_is_empty!6475 () Bool)

(declare-fun tp!370471 () Bool)

(assert (=> b!1256330 (= e!799557 (and tp_is_empty!6475 tp!370471))))

(assert (=> b!1256250 (= tp!370452 e!799557)))

(assert (= (and b!1256250 ((_ is Cons!12555) (overflowing!121 v1!131))) b!1256330))

(check-sat (not b!1256271) (not b!1256290) (not d!355114) (not d!355108) (not b!1256291) tp_is_empty!6475 (not b!1256323) (not d!355122) (not b!1256324) (not d!355110) (not b!1256256) (not d!355120) (not b!1256325) (not b!1256292) (not d!355132) (not d!355134) (not b!1256330) (not b!1256314))
(check-sat)
