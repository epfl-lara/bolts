; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60686 () Bool)

(assert start!60686)

(declare-fun res!272328 () Bool)

(declare-fun e!381085 () Bool)

(assert (=> start!60686 (=> res!272328 e!381085)))

(declare-fun lt!267055 () Int)

(assert (=> start!60686 (= res!272328 (= lt!267055 0))))

(declare-fun e!381087 () Bool)

(assert (=> start!60686 e!381087))

(declare-fun res!272327 () Bool)

(assert (=> start!60686 (=> (not res!272327) (not e!381087))))

(declare-datatypes ((T!12238 0))(
  ( (T!12239 (val!2342 Int)) )
))
(declare-datatypes ((List!6464 0))(
  ( (Nil!6453) (Cons!6453 (h!11854 T!12238) (t!82518 List!6464)) )
))
(declare-fun lt!267053 () List!6464)

(declare-fun size!5045 (List!6464) Int)

(assert (=> start!60686 (= res!272327 (= lt!267055 (size!5045 lt!267053)))))

(declare-datatypes ((List!6466 0) (BalanceConc!4186 0) (IArray!4177 0) (Conc!2088 0) (Object!1362 0))(
  ( (Nil!6454) (Cons!6454 (h!11855 Object!1362) (t!82519 List!6466)) )
  ( (BalanceConc!4187 (c!115460 Conc!2088)) )
  ( (IArray!4178 (innerList!2146 List!6466)) )
  ( (Node!2088 (left!5154 Conc!2088) (right!5484 Conc!2088) (csize!4406 Int) (cheight!2299 Int)) (Leaf!3261 (xs!4729 IArray!4177) (csize!4407 Int)) (Empty!2088) )
  ( (BalanceConc!4185 (value!42671 BalanceConc!4186)) (List!6465 (value!42672 List!6466)) (Character!10 (value!42673 (_ BitVec 16))) (Open!10 (value!42674 Int)) )
))
(declare-datatypes ((Vector!24 0))(
  ( (Vector!25 (underlying!1386 Object!1362) (overflowing!69 List!6464)) )
))
(declare-fun thiss!9456 () Vector!24)

(declare-fun list!2743 (Vector!24) List!6464)

(assert (=> start!60686 (= lt!267053 (list!2743 thiss!9456))))

(declare-fun size!5046 (Vector!24) Int)

(assert (=> start!60686 (= lt!267055 (size!5046 thiss!9456))))

(assert (=> start!60686 (not e!381085)))

(declare-fun e!381086 () Bool)

(assert (=> start!60686 e!381086))

(declare-fun b!628214 () Bool)

(declare-fun isEmpty!4589 (List!6464) Bool)

(assert (=> b!628214 (= e!381087 (= (= lt!267055 0) (isEmpty!4589 lt!267053)))))

(declare-fun b!628215 () Bool)

(assert (=> b!628215 (= e!381085 (not (= lt!267053 Nil!6453)))))

(declare-fun lt!267054 () T!12238)

(declare-fun choose!4560 (Vector!24) T!12238)

(assert (=> b!628215 (= lt!267054 (choose!4560 thiss!9456))))

(declare-fun b!628216 () Bool)

(declare-fun tp!196043 () Bool)

(declare-fun tp!196042 () Bool)

(assert (=> b!628216 (= e!381086 (and tp!196043 tp!196042))))

(assert (= (and start!60686 res!272327) b!628214))

(assert (= (and start!60686 (not res!272328)) b!628215))

(assert (= start!60686 b!628216))

(declare-fun m!896601 () Bool)

(assert (=> start!60686 m!896601))

(declare-fun m!896603 () Bool)

(assert (=> start!60686 m!896603))

(declare-fun m!896605 () Bool)

(assert (=> start!60686 m!896605))

(declare-fun m!896607 () Bool)

(assert (=> b!628214 m!896607))

(declare-fun m!896609 () Bool)

(assert (=> b!628215 m!896609))

(check-sat (not start!60686) (not b!628215) (not b!628214) (not b!628216))
(check-sat)
(get-model)

(declare-fun d!219793 () Bool)

(declare-fun lt!267058 () Int)

(assert (=> d!219793 (>= lt!267058 0)))

(declare-fun e!381090 () Int)

(assert (=> d!219793 (= lt!267058 e!381090)))

(declare-fun c!115463 () Bool)

(get-info :version)

(assert (=> d!219793 (= c!115463 ((_ is Nil!6453) lt!267053))))

(assert (=> d!219793 (= (size!5045 lt!267053) lt!267058)))

(declare-fun b!628221 () Bool)

(assert (=> b!628221 (= e!381090 0)))

(declare-fun b!628222 () Bool)

(assert (=> b!628222 (= e!381090 (+ 1 (size!5045 (t!82518 lt!267053))))))

(assert (= (and d!219793 c!115463) b!628221))

(assert (= (and d!219793 (not c!115463)) b!628222))

(declare-fun m!896611 () Bool)

(assert (=> b!628222 m!896611))

(assert (=> start!60686 d!219793))

(declare-fun d!219795 () Bool)

(declare-fun choose!4561 (Vector!24) List!6464)

(assert (=> d!219795 (= (list!2743 thiss!9456) (choose!4561 thiss!9456))))

(declare-fun bs!72687 () Bool)

(assert (= bs!72687 d!219795))

(declare-fun m!896613 () Bool)

(assert (=> bs!72687 m!896613))

(assert (=> start!60686 d!219795))

(declare-fun d!219799 () Bool)

(declare-fun lt!267061 () Int)

(assert (=> d!219799 (= lt!267061 (size!5045 (list!2743 thiss!9456)))))

(declare-fun choose!4562 (Vector!24) Int)

(assert (=> d!219799 (= lt!267061 (choose!4562 thiss!9456))))

(assert (=> d!219799 (= (size!5046 thiss!9456) lt!267061)))

(declare-fun bs!72688 () Bool)

(assert (= bs!72688 d!219799))

(assert (=> bs!72688 m!896603))

(assert (=> bs!72688 m!896603))

(declare-fun m!896615 () Bool)

(assert (=> bs!72688 m!896615))

(declare-fun m!896617 () Bool)

(assert (=> bs!72688 m!896617))

(assert (=> start!60686 d!219799))

(declare-fun d!219803 () Bool)

(declare-fun choose!4563 (Vector!24) T!12238)

(assert (=> d!219803 (= (choose!4560 thiss!9456) (choose!4563 thiss!9456))))

(declare-fun bs!72689 () Bool)

(assert (= bs!72689 d!219803))

(declare-fun m!896619 () Bool)

(assert (=> bs!72689 m!896619))

(assert (=> b!628215 d!219803))

(declare-fun d!219805 () Bool)

(assert (=> d!219805 (= (isEmpty!4589 lt!267053) ((_ is Nil!6453) lt!267053))))

(assert (=> b!628214 d!219805))

(declare-fun b!628238 () Bool)

(declare-fun e!381099 () Bool)

(declare-fun tp!196048 () Bool)

(declare-fun inv!8299 (Conc!2088) Bool)

(assert (=> b!628238 (= e!381099 (and (inv!8299 (c!115460 (value!42671 (underlying!1386 thiss!9456)))) tp!196048))))

(declare-fun b!628237 () Bool)

(declare-fun e!381098 () Bool)

(declare-fun inv!8300 (BalanceConc!4186) Bool)

(assert (=> b!628237 (= e!381098 (and (inv!8300 (value!42671 (underlying!1386 thiss!9456))) e!381099))))

(declare-fun b!628239 () Bool)

(declare-fun tp!196049 () Bool)

(assert (=> b!628239 (= e!381098 tp!196049)))

(assert (=> b!628216 (= tp!196043 e!381098)))

(assert (= b!628237 b!628238))

(assert (= (and b!628216 ((_ is BalanceConc!4185) (underlying!1386 thiss!9456))) b!628237))

(assert (= (and b!628216 ((_ is List!6465) (underlying!1386 thiss!9456))) b!628239))

(declare-fun m!896625 () Bool)

(assert (=> b!628238 m!896625))

(declare-fun m!896627 () Bool)

(assert (=> b!628237 m!896627))

(declare-fun b!628244 () Bool)

(declare-fun e!381102 () Bool)

(declare-fun tp_is_empty!3627 () Bool)

(declare-fun tp!196052 () Bool)

(assert (=> b!628244 (= e!381102 (and tp_is_empty!3627 tp!196052))))

(assert (=> b!628216 (= tp!196042 e!381102)))

(assert (= (and b!628216 ((_ is Cons!6453) (overflowing!69 thiss!9456))) b!628244))

(check-sat (not b!628239) (not b!628222) (not b!628238) tp_is_empty!3627 (not d!219795) (not d!219799) (not d!219803) (not b!628237) (not b!628244))
(check-sat)
