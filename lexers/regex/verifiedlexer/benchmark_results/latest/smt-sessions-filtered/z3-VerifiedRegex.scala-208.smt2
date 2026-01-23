; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3308 () Bool)

(assert start!3308)

(declare-fun res!31980 () Bool)

(declare-fun e!27750 () Bool)

(assert (=> start!3308 (=> res!31980 e!27750)))

(declare-fun lt!6836 () Int)

(assert (=> start!3308 (= res!31980 (= lt!6836 0))))

(declare-fun e!27749 () Bool)

(assert (=> start!3308 e!27749))

(declare-fun res!31981 () Bool)

(assert (=> start!3308 (=> (not res!31981) (not e!27749))))

(declare-datatypes ((T!2582 0))(
  ( (T!2583 (val!255 Int)) )
))
(declare-datatypes ((List!819 0))(
  ( (Nil!816) (Cons!816 (h!6212 T!2582) (t!17019 List!819)) )
))
(declare-fun lt!6834 () List!819)

(declare-fun size!801 (List!819) Int)

(assert (=> start!3308 (= res!31981 (= lt!6836 (size!801 lt!6834)))))

(declare-datatypes ((Conc!157 0) (Object!170 0) (List!821 0) (BalanceConc!316 0) (IArray!315 0))(
  ( (Node!157 (left!625 Conc!157) (right!955 Conc!157) (csize!544 Int) (cheight!368 Int)) (Leaf!366 (xs!2736 IArray!315) (csize!545 Int)) (Empty!157) )
  ( (BalanceConc!315 (value!7885 BalanceConc!316)) (List!820 (value!7886 List!821)) (Character!2 (value!7887 (_ BitVec 16))) (Open!2 (value!7888 Int)) )
  ( (Nil!817) (Cons!817 (h!6213 Object!170) (t!17020 List!821)) )
  ( (BalanceConc!317 (c!16294 Conc!157)) )
  ( (IArray!316 (innerList!215 List!821)) )
))
(declare-datatypes ((Vector!8 0))(
  ( (Vector!9 (underlying!768 Object!170) (overflowing!61 List!819)) )
))
(declare-fun thiss!9494 () Vector!8)

(declare-fun list!220 (Vector!8) List!819)

(assert (=> start!3308 (= lt!6834 (list!220 thiss!9494))))

(declare-fun size!802 (Vector!8) Int)

(assert (=> start!3308 (= lt!6836 (size!802 thiss!9494))))

(assert (=> start!3308 (not e!27750)))

(declare-fun e!27748 () Bool)

(assert (=> start!3308 e!27748))

(declare-fun b!47919 () Bool)

(declare-fun isEmpty!160 (List!819) Bool)

(assert (=> b!47919 (= e!27749 (= (= lt!6836 0) (isEmpty!160 lt!6834)))))

(declare-fun b!47920 () Bool)

(assert (=> b!47920 (= e!27750 (not (= lt!6834 Nil!816)))))

(declare-fun lt!6835 () Vector!8)

(declare-fun choose!1144 (Vector!8) Vector!8)

(assert (=> b!47920 (= lt!6835 (choose!1144 thiss!9494))))

(declare-fun b!47921 () Bool)

(declare-fun tp!32343 () Bool)

(declare-fun tp!32342 () Bool)

(assert (=> b!47921 (= e!27748 (and tp!32343 tp!32342))))

(assert (= (and start!3308 res!31981) b!47919))

(assert (= (and start!3308 (not res!31980)) b!47920))

(assert (= start!3308 b!47921))

(declare-fun m!21882 () Bool)

(assert (=> start!3308 m!21882))

(declare-fun m!21884 () Bool)

(assert (=> start!3308 m!21884))

(declare-fun m!21886 () Bool)

(assert (=> start!3308 m!21886))

(declare-fun m!21888 () Bool)

(assert (=> b!47919 m!21888))

(declare-fun m!21890 () Bool)

(assert (=> b!47920 m!21890))

(check-sat (not b!47920) (not b!47919) (not start!3308) (not b!47921))
(check-sat)
(get-model)

(declare-fun d!5737 () Bool)

(declare-fun choose!1145 (Vector!8) Vector!8)

(assert (=> d!5737 (= (choose!1144 thiss!9494) (choose!1145 thiss!9494))))

(declare-fun bs!6409 () Bool)

(assert (= bs!6409 d!5737))

(declare-fun m!21892 () Bool)

(assert (=> bs!6409 m!21892))

(assert (=> b!47920 d!5737))

(declare-fun d!5741 () Bool)

(get-info :version)

(assert (=> d!5741 (= (isEmpty!160 lt!6834) ((_ is Nil!816) lt!6834))))

(assert (=> b!47919 d!5741))

(declare-fun d!5743 () Bool)

(declare-fun lt!6839 () Int)

(assert (=> d!5743 (>= lt!6839 0)))

(declare-fun e!27753 () Int)

(assert (=> d!5743 (= lt!6839 e!27753)))

(declare-fun c!16297 () Bool)

(assert (=> d!5743 (= c!16297 ((_ is Nil!816) lt!6834))))

(assert (=> d!5743 (= (size!801 lt!6834) lt!6839)))

(declare-fun b!47926 () Bool)

(assert (=> b!47926 (= e!27753 0)))

(declare-fun b!47927 () Bool)

(assert (=> b!47927 (= e!27753 (+ 1 (size!801 (t!17019 lt!6834))))))

(assert (= (and d!5743 c!16297) b!47926))

(assert (= (and d!5743 (not c!16297)) b!47927))

(declare-fun m!21894 () Bool)

(assert (=> b!47927 m!21894))

(assert (=> start!3308 d!5743))

(declare-fun d!5747 () Bool)

(declare-fun choose!1146 (Vector!8) List!819)

(assert (=> d!5747 (= (list!220 thiss!9494) (choose!1146 thiss!9494))))

(declare-fun bs!6410 () Bool)

(assert (= bs!6410 d!5747))

(declare-fun m!21896 () Bool)

(assert (=> bs!6410 m!21896))

(assert (=> start!3308 d!5747))

(declare-fun d!5749 () Bool)

(declare-fun lt!6844 () Int)

(assert (=> d!5749 (= lt!6844 (size!801 (list!220 thiss!9494)))))

(declare-fun choose!1147 (Vector!8) Int)

(assert (=> d!5749 (= lt!6844 (choose!1147 thiss!9494))))

(assert (=> d!5749 (= (size!802 thiss!9494) lt!6844)))

(declare-fun bs!6411 () Bool)

(assert (= bs!6411 d!5749))

(assert (=> bs!6411 m!21884))

(assert (=> bs!6411 m!21884))

(declare-fun m!21898 () Bool)

(assert (=> bs!6411 m!21898))

(declare-fun m!21900 () Bool)

(assert (=> bs!6411 m!21900))

(assert (=> start!3308 d!5749))

(declare-fun b!47943 () Bool)

(declare-fun e!27762 () Bool)

(declare-fun tp!32348 () Bool)

(declare-fun inv!1103 (Conc!157) Bool)

(assert (=> b!47943 (= e!27762 (and (inv!1103 (c!16294 (value!7885 (underlying!768 thiss!9494)))) tp!32348))))

(declare-fun b!47942 () Bool)

(declare-fun e!27761 () Bool)

(declare-fun inv!1104 (BalanceConc!316) Bool)

(assert (=> b!47942 (= e!27761 (and (inv!1104 (value!7885 (underlying!768 thiss!9494))) e!27762))))

(declare-fun b!47944 () Bool)

(declare-fun tp!32349 () Bool)

(assert (=> b!47944 (= e!27761 tp!32349)))

(assert (=> b!47921 (= tp!32343 e!27761)))

(assert (= b!47942 b!47943))

(assert (= (and b!47921 ((_ is BalanceConc!315) (underlying!768 thiss!9494))) b!47942))

(assert (= (and b!47921 ((_ is List!820) (underlying!768 thiss!9494))) b!47944))

(declare-fun m!21904 () Bool)

(assert (=> b!47943 m!21904))

(declare-fun m!21906 () Bool)

(assert (=> b!47942 m!21906))

(declare-fun b!47949 () Bool)

(declare-fun e!27765 () Bool)

(declare-fun tp_is_empty!419 () Bool)

(declare-fun tp!32352 () Bool)

(assert (=> b!47949 (= e!27765 (and tp_is_empty!419 tp!32352))))

(assert (=> b!47921 (= tp!32342 e!27765)))

(assert (= (and b!47921 ((_ is Cons!816) (overflowing!61 thiss!9494))) b!47949))

(check-sat (not d!5749) (not b!47927) (not b!47944) tp_is_empty!419 (not d!5747) (not b!47942) (not d!5737) (not b!47949) (not b!47943))
(check-sat)
