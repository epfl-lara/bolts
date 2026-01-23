; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139370 () Bool)

(assert start!139370)

(declare-fun n!52 () (_ BitVec 32))

(declare-datatypes ((T!26940 0))(
  ( (T!26941 (val!4774 Int)) )
))
(declare-fun t!5961 () T!26940)

(declare-datatypes ((Conc!5351 0) (IArray!10707 0) (Object!2956 0) (List!15770 0) (BalanceConc!10644 0))(
  ( (Node!5351 (left!13242 Conc!5351) (right!13572 Conc!5351) (csize!10932 Int) (cheight!5562 Int)) (Leaf!7953 (xs!8106 IArray!10707) (csize!10933 Int)) (Empty!5351) )
  ( (IArray!10708 (innerList!5411 List!15770)) )
  ( (BalanceConc!10643 (value!89427 BalanceConc!10644)) (List!15769 (value!89428 List!15770)) (Character!66 (value!89429 (_ BitVec 16))) (Open!66 (value!89430 Int)) )
  ( (Nil!15702) (Cons!15702 (h!21103 Object!2956) (t!137683 List!15770)) )
  ( (BalanceConc!10645 (c!243073 Conc!5351)) )
))
(declare-datatypes ((List!15771 0))(
  ( (Nil!15703) (Cons!15703 (h!21104 T!26940) (t!137684 List!15771)) )
))
(declare-datatypes ((Vector!136 0))(
  ( (Vector!137 (underlying!2910 Object!2956) (overflowing!125 List!15771)) )
))
(declare-fun list!6244 (Vector!136) List!15771)

(declare-fun choose!9076 ((_ BitVec 32) T!26940) Vector!136)

(declare-fun ifill!2 ((_ BitVec 32) T!26940) List!15771)

(assert (=> start!139370 (not (= (list!6244 (choose!9076 n!52 t!5961)) (ifill!2 n!52 t!5961)))))

(assert (=> start!139370 true))

(declare-fun tp_is_empty!6991 () Bool)

(assert (=> start!139370 tp_is_empty!6991))

(declare-fun bs!346042 () Bool)

(assert (= bs!346042 start!139370))

(declare-fun m!1729431 () Bool)

(assert (=> bs!346042 m!1729431))

(assert (=> bs!346042 m!1729431))

(declare-fun m!1729433 () Bool)

(assert (=> bs!346042 m!1729433))

(declare-fun m!1729435 () Bool)

(assert (=> bs!346042 m!1729435))

(check-sat (not start!139370) tp_is_empty!6991)
(check-sat)
(get-model)

(declare-fun d!434952 () Bool)

(declare-fun choose!9078 (Vector!136) List!15771)

(assert (=> d!434952 (= (list!6244 (choose!9076 n!52 t!5961)) (choose!9078 (choose!9076 n!52 t!5961)))))

(declare-fun bs!346044 () Bool)

(assert (= bs!346044 d!434952))

(assert (=> bs!346044 m!1729431))

(declare-fun m!1729439 () Bool)

(assert (=> bs!346044 m!1729439))

(assert (=> start!139370 d!434952))

(declare-fun d!434956 () Bool)

(declare-fun choose!9080 ((_ BitVec 32) T!26940) Vector!136)

(assert (=> d!434956 (= (choose!9076 n!52 t!5961) (choose!9080 n!52 t!5961))))

(declare-fun bs!346046 () Bool)

(assert (= bs!346046 d!434956))

(declare-fun m!1729443 () Bool)

(assert (=> bs!346046 m!1729443))

(assert (=> start!139370 d!434956))

(declare-fun d!434960 () Bool)

(declare-fun e!948144 () Bool)

(assert (=> d!434960 e!948144))

(declare-fun res!669919 () Bool)

(assert (=> d!434960 (=> (not res!669919) (not e!948144))))

(declare-fun lt!515205 () List!15771)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2283 (List!15771) (InoxSet T!26940))

(assert (=> d!434960 (= res!669919 (= (content!2283 lt!515205) (ite (bvsle n!52 #b00000000000000000000000000000000) ((as const (Array T!26940 Bool)) false) (store ((as const (Array T!26940 Bool)) false) t!5961 true))))))

(declare-fun e!948143 () List!15771)

(assert (=> d!434960 (= lt!515205 e!948143)))

(declare-fun c!243079 () Bool)

(assert (=> d!434960 (= c!243079 (bvsle n!52 #b00000000000000000000000000000000))))

(assert (=> d!434960 (= (ifill!2 n!52 t!5961) lt!515205)))

(declare-fun b!1482839 () Bool)

(assert (=> b!1482839 (= e!948143 Nil!15703)))

(declare-fun b!1482840 () Bool)

(assert (=> b!1482840 (= e!948143 (Cons!15703 t!5961 (ifill!2 (bvsub n!52 #b00000000000000000000000000000001) t!5961)))))

(declare-fun b!1482841 () Bool)

(declare-fun isize!28 (List!15771) (_ BitVec 32))

(assert (=> b!1482841 (= e!948144 (= (isize!28 lt!515205) (ite (bvsle n!52 #b00000000000000000000000000000000) #b00000000000000000000000000000000 n!52)))))

(assert (= (and d!434960 c!243079) b!1482839))

(assert (= (and d!434960 (not c!243079)) b!1482840))

(assert (= (and d!434960 res!669919) b!1482841))

(declare-fun m!1729453 () Bool)

(assert (=> d!434960 m!1729453))

(declare-fun m!1729455 () Bool)

(assert (=> d!434960 m!1729455))

(declare-fun m!1729457 () Bool)

(assert (=> b!1482840 m!1729457))

(declare-fun m!1729459 () Bool)

(assert (=> b!1482841 m!1729459))

(assert (=> start!139370 d!434960))

(check-sat (not d!434956) (not b!1482841) (not b!1482840) (not d!434952) tp_is_empty!6991 (not d!434960))
(check-sat)
(get-model)

(declare-fun d!434962 () Bool)

(declare-fun c!243082 () Bool)

(get-info :version)

(assert (=> d!434962 (= c!243082 ((_ is Nil!15703) lt!515205))))

(declare-fun e!948147 () (InoxSet T!26940))

(assert (=> d!434962 (= (content!2283 lt!515205) e!948147)))

(declare-fun b!1482846 () Bool)

(assert (=> b!1482846 (= e!948147 ((as const (Array T!26940 Bool)) false))))

(declare-fun b!1482847 () Bool)

(assert (=> b!1482847 (= e!948147 ((_ map or) (store ((as const (Array T!26940 Bool)) false) (h!21104 lt!515205) true) (content!2283 (t!137684 lt!515205))))))

(assert (= (and d!434962 c!243082) b!1482846))

(assert (= (and d!434962 (not c!243082)) b!1482847))

(declare-fun m!1729461 () Bool)

(assert (=> b!1482847 m!1729461))

(declare-fun m!1729463 () Bool)

(assert (=> b!1482847 m!1729463))

(assert (=> d!434960 d!434962))

(declare-fun d!434964 () Bool)

(declare-fun lt!515210 () (_ BitVec 32))

(assert (=> d!434964 (and (bvsle #b00000000000000000000000000000000 lt!515210) (bvsle lt!515210 #b01111111111111111111111111111111))))

(declare-fun e!948150 () (_ BitVec 32))

(assert (=> d!434964 (= lt!515210 e!948150)))

(declare-fun c!243085 () Bool)

(assert (=> d!434964 (= c!243085 ((_ is Nil!15703) lt!515205))))

(assert (=> d!434964 (= (isize!28 lt!515205) lt!515210)))

(declare-fun b!1482852 () Bool)

(assert (=> b!1482852 (= e!948150 #b00000000000000000000000000000000)))

(declare-fun b!1482853 () Bool)

(declare-fun lt!515211 () (_ BitVec 32))

(assert (=> b!1482853 (= e!948150 (ite (= lt!515211 #b01111111111111111111111111111111) lt!515211 (bvadd #b00000000000000000000000000000001 lt!515211)))))

(assert (=> b!1482853 (= lt!515211 (isize!28 (t!137684 lt!515205)))))

(assert (= (and d!434964 c!243085) b!1482852))

(assert (= (and d!434964 (not c!243085)) b!1482853))

(declare-fun m!1729465 () Bool)

(assert (=> b!1482853 m!1729465))

(assert (=> b!1482841 d!434964))

(declare-fun d!434966 () Bool)

(declare-fun e!948152 () Bool)

(assert (=> d!434966 e!948152))

(declare-fun res!669920 () Bool)

(assert (=> d!434966 (=> (not res!669920) (not e!948152))))

(declare-fun lt!515212 () List!15771)

(assert (=> d!434966 (= res!669920 (= (content!2283 lt!515212) (ite (bvsle (bvsub n!52 #b00000000000000000000000000000001) #b00000000000000000000000000000000) ((as const (Array T!26940 Bool)) false) (store ((as const (Array T!26940 Bool)) false) t!5961 true))))))

(declare-fun e!948151 () List!15771)

(assert (=> d!434966 (= lt!515212 e!948151)))

(declare-fun c!243086 () Bool)

(assert (=> d!434966 (= c!243086 (bvsle (bvsub n!52 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> d!434966 (= (ifill!2 (bvsub n!52 #b00000000000000000000000000000001) t!5961) lt!515212)))

(declare-fun b!1482854 () Bool)

(assert (=> b!1482854 (= e!948151 Nil!15703)))

(declare-fun b!1482855 () Bool)

(assert (=> b!1482855 (= e!948151 (Cons!15703 t!5961 (ifill!2 (bvsub (bvsub n!52 #b00000000000000000000000000000001) #b00000000000000000000000000000001) t!5961)))))

(declare-fun b!1482856 () Bool)

(assert (=> b!1482856 (= e!948152 (= (isize!28 lt!515212) (ite (bvsle (bvsub n!52 #b00000000000000000000000000000001) #b00000000000000000000000000000000) #b00000000000000000000000000000000 (bvsub n!52 #b00000000000000000000000000000001))))))

(assert (= (and d!434966 c!243086) b!1482854))

(assert (= (and d!434966 (not c!243086)) b!1482855))

(assert (= (and d!434966 res!669920) b!1482856))

(declare-fun m!1729467 () Bool)

(assert (=> d!434966 m!1729467))

(assert (=> d!434966 m!1729455))

(declare-fun m!1729469 () Bool)

(assert (=> b!1482855 m!1729469))

(declare-fun m!1729471 () Bool)

(assert (=> b!1482856 m!1729471))

(assert (=> b!1482840 d!434966))

(declare-fun d!434968 () Bool)

(declare-fun res!669923 () Vector!136)

(assert (=> d!434968 (= (list!6244 res!669923) (ifill!2 n!52 t!5961))))

(declare-fun e!948155 () Bool)

(assert (=> d!434968 e!948155))

(assert (=> d!434968 (= (choose!9080 n!52 t!5961) res!669923)))

(declare-fun b!1482859 () Bool)

(declare-fun tp!420771 () Bool)

(declare-fun tp!420772 () Bool)

(assert (=> b!1482859 (= e!948155 (and tp!420771 tp!420772))))

(assert (= d!434968 b!1482859))

(declare-fun m!1729473 () Bool)

(assert (=> d!434968 m!1729473))

(assert (=> d!434968 m!1729435))

(assert (=> d!434956 d!434968))

(declare-fun d!434970 () Bool)

(assert (=> d!434970 true))

(declare-fun e!948158 () Bool)

(assert (=> d!434970 e!948158))

(declare-fun res!669926 () List!15771)

(assert (=> d!434970 (= (choose!9078 (choose!9076 n!52 t!5961)) res!669926)))

(declare-fun b!1482862 () Bool)

(declare-fun tp!420775 () Bool)

(assert (=> b!1482862 (= e!948158 (and tp_is_empty!6991 tp!420775))))

(assert (= (and d!434970 ((_ is Cons!15703) res!669926)) b!1482862))

(assert (=> d!434952 d!434970))

(check-sat (not b!1482855) (not d!434966) (not b!1482859) (not b!1482862) (not d!434968) (not b!1482847) tp_is_empty!6991 (not b!1482856) (not b!1482853))
(check-sat)
