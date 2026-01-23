; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185956 () Bool)

(assert start!185956)

(declare-fun b_free!52003 () Bool)

(declare-fun b_next!52707 () Bool)

(assert (=> start!185956 (= b_free!52003 (not b_next!52707))))

(declare-fun tp!530216 () Bool)

(declare-fun b_and!144281 () Bool)

(assert (=> start!185956 (= tp!530216 b_and!144281)))

(declare-datatypes ((List!20722 0) (IArray!13677 0) (Conc!6836 0) (Object!3899 0) (BalanceConc!13604 0))(
  ( (Nil!20640) (Cons!20640 (h!26041 Object!3899) (t!172729 List!20722)) )
  ( (IArray!13678 (innerList!6896 List!20722)) )
  ( (Node!6836 (left!16607 Conc!6836) (right!16937 Conc!6836) (csize!13902 Int) (cheight!7047 Int)) (Leaf!10022 (xs!9712 IArray!13677) (csize!13903 Int)) (Empty!6836) )
  ( (BalanceConc!13603 (value!116171 BalanceConc!13604)) (List!20721 (value!116172 List!20722)) (Character!80 (value!116173 (_ BitVec 16))) (Open!80 (value!116174 Int)) )
  ( (BalanceConc!13605 (c!303051 Conc!6836)) )
))
(declare-datatypes ((T!32864 0))(
  ( (T!32865 (val!5906 Int)) )
))
(declare-datatypes ((List!20723 0))(
  ( (Nil!20641) (Cons!20641 (h!26042 T!32864) (t!172730 List!20723)) )
))
(declare-datatypes ((Vector!164 0))(
  ( (Vector!165 (underlying!4038 Object!3899) (overflowing!139 List!20723)) )
))
(declare-fun thiss!9358 () Vector!164)

(declare-fun f!1091 () Int)

(declare-fun choose!11709 (Vector!164 Int) Bool)

(declare-fun forall!4411 (List!20723 Int) Bool)

(declare-fun list!8398 (Vector!164) List!20723)

(assert (=> start!185956 (not (= (choose!11709 thiss!9358 f!1091) (forall!4411 (list!8398 thiss!9358) f!1091)))))

(declare-fun e!1188319 () Bool)

(assert (=> start!185956 e!1188319))

(assert (=> start!185956 tp!530216))

(declare-fun b!1860675 () Bool)

(declare-fun tp!530214 () Bool)

(declare-fun tp!530215 () Bool)

(assert (=> b!1860675 (= e!1188319 (and tp!530214 tp!530215))))

(assert (= start!185956 b!1860675))

(declare-fun m!2284385 () Bool)

(assert (=> start!185956 m!2284385))

(declare-fun m!2284387 () Bool)

(assert (=> start!185956 m!2284387))

(assert (=> start!185956 m!2284387))

(declare-fun m!2284389 () Bool)

(assert (=> start!185956 m!2284389))

(check-sat (not start!185956) (not b!1860675) b_and!144281 (not b_next!52707))
(check-sat b_and!144281 (not b_next!52707))
(get-model)

(declare-fun d!567802 () Bool)

(declare-fun choose!11711 (Vector!164 Int) Bool)

(assert (=> d!567802 (= (choose!11709 thiss!9358 f!1091) (choose!11711 thiss!9358 f!1091))))

(declare-fun bs!411467 () Bool)

(assert (= bs!411467 d!567802))

(declare-fun m!2284397 () Bool)

(assert (=> bs!411467 m!2284397))

(assert (=> start!185956 d!567802))

(declare-fun d!567806 () Bool)

(declare-fun res!833202 () Bool)

(declare-fun e!1188338 () Bool)

(assert (=> d!567806 (=> res!833202 e!1188338)))

(get-info :version)

(assert (=> d!567806 (= res!833202 ((_ is Nil!20641) (list!8398 thiss!9358)))))

(assert (=> d!567806 (= (forall!4411 (list!8398 thiss!9358) f!1091) e!1188338)))

(declare-fun b!1860701 () Bool)

(declare-fun e!1188339 () Bool)

(assert (=> b!1860701 (= e!1188338 e!1188339)))

(declare-fun res!833203 () Bool)

(assert (=> b!1860701 (=> (not res!833203) (not e!1188339))))

(declare-fun dynLambda!10221 (Int T!32864) Bool)

(assert (=> b!1860701 (= res!833203 (dynLambda!10221 f!1091 (h!26042 (list!8398 thiss!9358))))))

(declare-fun b!1860702 () Bool)

(assert (=> b!1860702 (= e!1188339 (forall!4411 (t!172730 (list!8398 thiss!9358)) f!1091))))

(assert (= (and d!567806 (not res!833202)) b!1860701))

(assert (= (and b!1860701 res!833203) b!1860702))

(declare-fun b_lambda!61589 () Bool)

(assert (=> (not b_lambda!61589) (not b!1860701)))

(declare-fun t!172734 () Bool)

(declare-fun tb!112939 () Bool)

(assert (=> (and start!185956 (= f!1091 f!1091) t!172734) tb!112939))

(declare-fun result!136310 () Bool)

(assert (=> tb!112939 (= result!136310 true)))

(assert (=> b!1860701 t!172734))

(declare-fun b_and!144285 () Bool)

(assert (= b_and!144281 (and (=> t!172734 result!136310) b_and!144285)))

(declare-fun m!2284405 () Bool)

(assert (=> b!1860701 m!2284405))

(declare-fun m!2284407 () Bool)

(assert (=> b!1860702 m!2284407))

(assert (=> start!185956 d!567806))

(declare-fun d!567808 () Bool)

(declare-fun choose!11713 (Vector!164) List!20723)

(assert (=> d!567808 (= (list!8398 thiss!9358) (choose!11713 thiss!9358))))

(declare-fun bs!411469 () Bool)

(assert (= bs!411469 d!567808))

(declare-fun m!2284409 () Bool)

(assert (=> bs!411469 m!2284409))

(assert (=> start!185956 d!567808))

(declare-fun b!1860713 () Bool)

(declare-fun e!1188346 () Bool)

(declare-fun tp!530230 () Bool)

(declare-fun inv!27168 (Conc!6836) Bool)

(assert (=> b!1860713 (= e!1188346 (and (inv!27168 (c!303051 (value!116171 (underlying!4038 thiss!9358)))) tp!530230))))

(declare-fun b!1860712 () Bool)

(declare-fun e!1188345 () Bool)

(declare-fun inv!27169 (BalanceConc!13604) Bool)

(assert (=> b!1860712 (= e!1188345 (and (inv!27169 (value!116171 (underlying!4038 thiss!9358))) e!1188346))))

(declare-fun b!1860714 () Bool)

(declare-fun tp!530231 () Bool)

(assert (=> b!1860714 (= e!1188345 tp!530231)))

(assert (=> b!1860675 (= tp!530214 e!1188345)))

(assert (= b!1860712 b!1860713))

(assert (= (and b!1860675 ((_ is BalanceConc!13603) (underlying!4038 thiss!9358))) b!1860712))

(assert (= (and b!1860675 ((_ is List!20721) (underlying!4038 thiss!9358))) b!1860714))

(declare-fun m!2284411 () Bool)

(assert (=> b!1860713 m!2284411))

(declare-fun m!2284413 () Bool)

(assert (=> b!1860712 m!2284413))

(declare-fun b!1860719 () Bool)

(declare-fun e!1188349 () Bool)

(declare-fun tp_is_empty!8607 () Bool)

(declare-fun tp!530234 () Bool)

(assert (=> b!1860719 (= e!1188349 (and tp_is_empty!8607 tp!530234))))

(assert (=> b!1860675 (= tp!530215 e!1188349)))

(assert (= (and b!1860675 ((_ is Cons!20641) (overflowing!139 thiss!9358))) b!1860719))

(declare-fun b_lambda!61591 () Bool)

(assert (= b_lambda!61589 (or (and start!185956 b_free!52003) b_lambda!61591)))

(check-sat (not b!1860714) (not d!567802) (not b!1860719) (not d!567808) (not b_lambda!61591) (not b!1860713) tp_is_empty!8607 b_and!144285 (not b!1860702) (not b_next!52707) (not b!1860712))
(check-sat b_and!144285 (not b_next!52707))
(get-model)

(declare-fun d!567816 () Bool)

(declare-fun res!833211 () Bool)

(assert (=> d!567816 (= res!833211 (forall!4411 (list!8398 thiss!9358) f!1091))))

(assert (=> d!567816 true))

(assert (=> d!567816 (= (choose!11711 thiss!9358 f!1091) res!833211)))

(declare-fun bs!411470 () Bool)

(assert (= bs!411470 d!567816))

(assert (=> bs!411470 m!2284387))

(assert (=> bs!411470 m!2284387))

(assert (=> bs!411470 m!2284389))

(assert (=> d!567802 d!567816))

(declare-fun d!567818 () Bool)

(declare-fun c!303057 () Bool)

(assert (=> d!567818 (= c!303057 ((_ is Node!6836) (c!303051 (value!116171 (underlying!4038 thiss!9358)))))))

(declare-fun e!1188365 () Bool)

(assert (=> d!567818 (= (inv!27168 (c!303051 (value!116171 (underlying!4038 thiss!9358)))) e!1188365)))

(declare-fun b!1860740 () Bool)

(declare-fun inv!27170 (Conc!6836) Bool)

(assert (=> b!1860740 (= e!1188365 (inv!27170 (c!303051 (value!116171 (underlying!4038 thiss!9358)))))))

(declare-fun b!1860741 () Bool)

(declare-fun e!1188366 () Bool)

(assert (=> b!1860741 (= e!1188365 e!1188366)))

(declare-fun res!833217 () Bool)

(assert (=> b!1860741 (= res!833217 (not ((_ is Leaf!10022) (c!303051 (value!116171 (underlying!4038 thiss!9358))))))))

(assert (=> b!1860741 (=> res!833217 e!1188366)))

(declare-fun b!1860742 () Bool)

(declare-fun inv!27171 (Conc!6836) Bool)

(assert (=> b!1860742 (= e!1188366 (inv!27171 (c!303051 (value!116171 (underlying!4038 thiss!9358)))))))

(assert (= (and d!567818 c!303057) b!1860740))

(assert (= (and d!567818 (not c!303057)) b!1860741))

(assert (= (and b!1860741 (not res!833217)) b!1860742))

(declare-fun m!2284423 () Bool)

(assert (=> b!1860740 m!2284423))

(declare-fun m!2284425 () Bool)

(assert (=> b!1860742 m!2284425))

(assert (=> b!1860713 d!567818))

(declare-fun d!567822 () Bool)

(declare-fun res!833218 () Bool)

(declare-fun e!1188367 () Bool)

(assert (=> d!567822 (=> res!833218 e!1188367)))

(assert (=> d!567822 (= res!833218 ((_ is Nil!20641) (t!172730 (list!8398 thiss!9358))))))

(assert (=> d!567822 (= (forall!4411 (t!172730 (list!8398 thiss!9358)) f!1091) e!1188367)))

(declare-fun b!1860743 () Bool)

(declare-fun e!1188368 () Bool)

(assert (=> b!1860743 (= e!1188367 e!1188368)))

(declare-fun res!833219 () Bool)

(assert (=> b!1860743 (=> (not res!833219) (not e!1188368))))

(assert (=> b!1860743 (= res!833219 (dynLambda!10221 f!1091 (h!26042 (t!172730 (list!8398 thiss!9358)))))))

(declare-fun b!1860744 () Bool)

(assert (=> b!1860744 (= e!1188368 (forall!4411 (t!172730 (t!172730 (list!8398 thiss!9358))) f!1091))))

(assert (= (and d!567822 (not res!833218)) b!1860743))

(assert (= (and b!1860743 res!833219) b!1860744))

(declare-fun b_lambda!61595 () Bool)

(assert (=> (not b_lambda!61595) (not b!1860743)))

(declare-fun t!172738 () Bool)

(declare-fun tb!112943 () Bool)

(assert (=> (and start!185956 (= f!1091 f!1091) t!172738) tb!112943))

(declare-fun result!136318 () Bool)

(assert (=> tb!112943 (= result!136318 true)))

(assert (=> b!1860743 t!172738))

(declare-fun b_and!144289 () Bool)

(assert (= b_and!144285 (and (=> t!172738 result!136318) b_and!144289)))

(declare-fun m!2284429 () Bool)

(assert (=> b!1860743 m!2284429))

(declare-fun m!2284431 () Bool)

(assert (=> b!1860744 m!2284431))

(assert (=> b!1860702 d!567822))

(declare-fun d!567826 () Bool)

(declare-fun isBalanced!2136 (Conc!6836) Bool)

(assert (=> d!567826 (= (inv!27169 (value!116171 (underlying!4038 thiss!9358))) (isBalanced!2136 (c!303051 (value!116171 (underlying!4038 thiss!9358)))))))

(declare-fun bs!411473 () Bool)

(assert (= bs!411473 d!567826))

(declare-fun m!2284433 () Bool)

(assert (=> bs!411473 m!2284433))

(assert (=> b!1860712 d!567826))

(declare-fun d!567828 () Bool)

(assert (=> d!567828 true))

(declare-fun e!1188381 () Bool)

(assert (=> d!567828 e!1188381))

(declare-fun res!833225 () List!20723)

(assert (=> d!567828 (= (choose!11713 thiss!9358) res!833225)))

(declare-fun b!1860764 () Bool)

(declare-fun tp!530256 () Bool)

(assert (=> b!1860764 (= e!1188381 (and tp_is_empty!8607 tp!530256))))

(assert (= (and d!567828 ((_ is Cons!20641) res!833225)) b!1860764))

(assert (=> d!567808 d!567828))

(declare-fun b!1860769 () Bool)

(declare-fun e!1188384 () Bool)

(declare-fun tp!530261 () Bool)

(declare-fun tp!530262 () Bool)

(assert (=> b!1860769 (= e!1188384 (and tp!530261 tp!530262))))

(assert (=> b!1860714 (= tp!530231 e!1188384)))

(assert (= (and b!1860714 ((_ is Cons!20640) (value!116172 (underlying!4038 thiss!9358)))) b!1860769))

(declare-fun b!1860770 () Bool)

(declare-fun e!1188385 () Bool)

(declare-fun tp!530263 () Bool)

(assert (=> b!1860770 (= e!1188385 (and tp_is_empty!8607 tp!530263))))

(assert (=> b!1860719 (= tp!530234 e!1188385)))

(assert (= (and b!1860719 ((_ is Cons!20641) (t!172730 (overflowing!139 thiss!9358)))) b!1860770))

(declare-fun e!1188390 () Bool)

(declare-fun tp!530272 () Bool)

(declare-fun b!1860779 () Bool)

(declare-fun tp!530271 () Bool)

(assert (=> b!1860779 (= e!1188390 (and (inv!27168 (left!16607 (c!303051 (value!116171 (underlying!4038 thiss!9358))))) tp!530272 (inv!27168 (right!16937 (c!303051 (value!116171 (underlying!4038 thiss!9358))))) tp!530271))))

(declare-fun b!1860781 () Bool)

(declare-fun e!1188391 () Bool)

(declare-fun tp!530270 () Bool)

(assert (=> b!1860781 (= e!1188391 tp!530270)))

(declare-fun b!1860780 () Bool)

(declare-fun inv!27174 (IArray!13677) Bool)

(assert (=> b!1860780 (= e!1188390 (and (inv!27174 (xs!9712 (c!303051 (value!116171 (underlying!4038 thiss!9358))))) e!1188391))))

(assert (=> b!1860713 (= tp!530230 (and (inv!27168 (c!303051 (value!116171 (underlying!4038 thiss!9358)))) e!1188390))))

(assert (= (and b!1860713 ((_ is Node!6836) (c!303051 (value!116171 (underlying!4038 thiss!9358))))) b!1860779))

(assert (= b!1860780 b!1860781))

(assert (= (and b!1860713 ((_ is Leaf!10022) (c!303051 (value!116171 (underlying!4038 thiss!9358))))) b!1860780))

(declare-fun m!2284441 () Bool)

(assert (=> b!1860779 m!2284441))

(declare-fun m!2284443 () Bool)

(assert (=> b!1860779 m!2284443))

(declare-fun m!2284445 () Bool)

(assert (=> b!1860780 m!2284445))

(assert (=> b!1860713 m!2284411))

(declare-fun b_lambda!61599 () Bool)

(assert (= b_lambda!61595 (or (and start!185956 b_free!52003) b_lambda!61599)))

(check-sat (not b!1860769) (not b!1860742) (not b!1860764) (not b_lambda!61599) (not b_next!52707) b_and!144289 (not b_lambda!61591) (not b!1860744) (not d!567816) (not b!1860740) (not b!1860781) (not b!1860713) (not b!1860770) (not b!1860779) (not d!567826) (not b!1860780) tp_is_empty!8607)
(check-sat b_and!144289 (not b_next!52707))
