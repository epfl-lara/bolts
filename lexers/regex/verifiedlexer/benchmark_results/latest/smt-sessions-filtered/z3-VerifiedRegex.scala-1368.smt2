; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73114 () Bool)

(assert start!73114)

(declare-datatypes ((T!14206 0))(
  ( (T!14207 (val!2546 Int)) )
))
(declare-datatypes ((List!8817 0))(
  ( (Nil!8802) (Cons!8802 (h!14203 T!14206) (t!92930 List!8817)) )
))
(declare-datatypes ((IArray!5873 0))(
  ( (IArray!5874 (innerList!2994 List!8817)) )
))
(declare-fun arr!27 () IArray!5873)

(declare-datatypes ((Conc!2935 0) (IArray!5875 0) (BalanceConc!5884 0) (List!8819 0) (Object!1723 0))(
  ( (Node!2935 (left!6509 Conc!2935) (right!6839 Conc!2935) (csize!6100 Int) (cheight!3146 Int)) (Leaf!4304 (xs!5624 IArray!5875) (csize!6101 Int)) (Empty!2935) )
  ( (IArray!5876 (innerList!2995 List!8819)) )
  ( (BalanceConc!5885 (c!132869 Conc!2935)) )
  ( (Nil!8803) (Cons!8803 (h!14204 Object!1723) (t!92931 List!8819)) )
  ( (BalanceConc!5883 (value!53417 BalanceConc!5884)) (List!8818 (value!53418 List!8819)) (Character!14 (value!53419 (_ BitVec 16))) (Open!14 (value!53420 Int)) )
))
(declare-datatypes ((Vector!32 0))(
  ( (Vector!33 (underlying!2696 Object!1723) (overflowing!73 List!8817)) )
))
(declare-fun list!3487 (Vector!32) List!8817)

(declare-fun choose!4903 (IArray!5873) Vector!32)

(declare-fun list!3488 (IArray!5873) List!8817)

(assert (=> start!73114 (not (= (list!3487 (choose!4903 arr!27)) (list!3488 arr!27)))))

(declare-fun e!541778 () Bool)

(declare-fun inv!11152 (IArray!5873) Bool)

(assert (=> start!73114 (and (inv!11152 arr!27) e!541778)))

(declare-fun b!820065 () Bool)

(declare-fun tp!256486 () Bool)

(assert (=> b!820065 (= e!541778 tp!256486)))

(assert (= start!73114 b!820065))

(declare-fun m!1061059 () Bool)

(assert (=> start!73114 m!1061059))

(assert (=> start!73114 m!1061059))

(declare-fun m!1061061 () Bool)

(assert (=> start!73114 m!1061061))

(declare-fun m!1061063 () Bool)

(assert (=> start!73114 m!1061063))

(declare-fun m!1061065 () Bool)

(assert (=> start!73114 m!1061065))

(check-sat (not start!73114) (not b!820065))
(check-sat)
(get-model)

(declare-fun d!258221 () Bool)

(declare-fun choose!4904 (Vector!32) List!8817)

(assert (=> d!258221 (= (list!3487 (choose!4903 arr!27)) (choose!4904 (choose!4903 arr!27)))))

(declare-fun bs!228695 () Bool)

(assert (= bs!228695 d!258221))

(assert (=> bs!228695 m!1061059))

(declare-fun m!1061067 () Bool)

(assert (=> bs!228695 m!1061067))

(assert (=> start!73114 d!258221))

(declare-fun d!258223 () Bool)

(declare-fun choose!4905 (IArray!5873) Vector!32)

(assert (=> d!258223 (= (choose!4903 arr!27) (choose!4905 arr!27))))

(declare-fun bs!228696 () Bool)

(assert (= bs!228696 d!258223))

(declare-fun m!1061069 () Bool)

(assert (=> bs!228696 m!1061069))

(assert (=> start!73114 d!258223))

(declare-fun d!258227 () Bool)

(assert (=> d!258227 (= (list!3488 arr!27) (innerList!2994 arr!27))))

(assert (=> start!73114 d!258227))

(declare-fun d!258229 () Bool)

(declare-fun size!7454 (List!8817) Int)

(assert (=> d!258229 (= (inv!11152 arr!27) (<= (size!7454 (innerList!2994 arr!27)) 2147483647))))

(declare-fun bs!228698 () Bool)

(assert (= bs!228698 d!258229))

(declare-fun m!1061073 () Bool)

(assert (=> bs!228698 m!1061073))

(assert (=> start!73114 d!258229))

(declare-fun b!820070 () Bool)

(declare-fun e!541781 () Bool)

(declare-fun tp_is_empty!3747 () Bool)

(declare-fun tp!256489 () Bool)

(assert (=> b!820070 (= e!541781 (and tp_is_empty!3747 tp!256489))))

(assert (=> b!820065 (= tp!256486 e!541781)))

(get-info :version)

(assert (= (and b!820065 ((_ is Cons!8802) (innerList!2994 arr!27))) b!820070))

(check-sat (not d!258223) (not d!258221) (not b!820070) (not d!258229) tp_is_empty!3747)
(check-sat)
(get-model)

(declare-fun d!258237 () Bool)

(declare-fun res!378557 () Vector!32)

(assert (=> d!258237 (= (list!3487 res!378557) (list!3488 arr!27))))

(declare-fun e!541787 () Bool)

(assert (=> d!258237 e!541787))

(assert (=> d!258237 (= (choose!4905 arr!27) res!378557)))

(declare-fun b!820078 () Bool)

(declare-fun tp!256497 () Bool)

(declare-fun tp!256498 () Bool)

(assert (=> b!820078 (= e!541787 (and tp!256497 tp!256498))))

(assert (= d!258237 b!820078))

(declare-fun m!1061079 () Bool)

(assert (=> d!258237 m!1061079))

(assert (=> d!258237 m!1061063))

(assert (=> d!258223 d!258237))

(declare-fun d!258239 () Bool)

(declare-fun lt!316937 () Int)

(assert (=> d!258239 (>= lt!316937 0)))

(declare-fun e!541790 () Int)

(assert (=> d!258239 (= lt!316937 e!541790)))

(declare-fun c!132872 () Bool)

(assert (=> d!258239 (= c!132872 ((_ is Nil!8802) (innerList!2994 arr!27)))))

(assert (=> d!258239 (= (size!7454 (innerList!2994 arr!27)) lt!316937)))

(declare-fun b!820083 () Bool)

(assert (=> b!820083 (= e!541790 0)))

(declare-fun b!820084 () Bool)

(assert (=> b!820084 (= e!541790 (+ 1 (size!7454 (t!92930 (innerList!2994 arr!27)))))))

(assert (= (and d!258239 c!132872) b!820083))

(assert (= (and d!258239 (not c!132872)) b!820084))

(declare-fun m!1061081 () Bool)

(assert (=> b!820084 m!1061081))

(assert (=> d!258229 d!258239))

(declare-fun d!258241 () Bool)

(assert (=> d!258241 true))

(declare-fun e!541793 () Bool)

(assert (=> d!258241 e!541793))

(declare-fun res!378560 () List!8817)

(assert (=> d!258241 (= (choose!4904 (choose!4903 arr!27)) res!378560)))

(declare-fun b!820087 () Bool)

(declare-fun tp!256501 () Bool)

(assert (=> b!820087 (= e!541793 (and tp_is_empty!3747 tp!256501))))

(assert (= (and d!258241 ((_ is Cons!8802) res!378560)) b!820087))

(assert (=> d!258221 d!258241))

(declare-fun b!820088 () Bool)

(declare-fun e!541794 () Bool)

(declare-fun tp!256502 () Bool)

(assert (=> b!820088 (= e!541794 (and tp_is_empty!3747 tp!256502))))

(assert (=> b!820070 (= tp!256489 e!541794)))

(assert (= (and b!820070 ((_ is Cons!8802) (t!92930 (innerList!2994 arr!27)))) b!820088))

(check-sat (not b!820087) (not d!258237) (not b!820088) (not b!820084) (not b!820078) tp_is_empty!3747)
(check-sat)
