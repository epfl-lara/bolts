; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60710 () Bool)

(assert start!60710)

(declare-fun res!272339 () Bool)

(declare-fun e!381129 () Bool)

(assert (=> start!60710 (=> res!272339 e!381129)))

(declare-fun lt!267078 () Int)

(assert (=> start!60710 (= res!272339 (= lt!267078 0))))

(declare-fun e!381128 () Bool)

(assert (=> start!60710 e!381128))

(declare-fun res!272340 () Bool)

(assert (=> start!60710 (=> (not res!272340) (not e!381128))))

(declare-datatypes ((T!12252 0))(
  ( (T!12253 (val!2344 Int)) )
))
(declare-datatypes ((List!6470 0))(
  ( (Nil!6457) (Cons!6457 (h!11858 T!12252) (t!82522 List!6470)) )
))
(declare-fun lt!267079 () List!6470)

(declare-fun size!5049 (List!6470) Int)

(assert (=> start!60710 (= res!272340 (= lt!267078 (size!5049 lt!267079)))))

(declare-datatypes ((List!6472 0) (BalanceConc!4192 0) (Conc!2090 0) (IArray!4181 0) (Object!1364 0))(
  ( (Nil!6458) (Cons!6458 (h!11859 Object!1364) (t!82523 List!6472)) )
  ( (BalanceConc!4193 (c!115468 Conc!2090)) )
  ( (Node!2090 (left!5157 Conc!2090) (right!5487 Conc!2090) (csize!4410 Int) (cheight!2301 Int)) (Leaf!3264 (xs!4731 IArray!4181) (csize!4411 Int)) (Empty!2090) )
  ( (IArray!4182 (innerList!2148 List!6472)) )
  ( (BalanceConc!4191 (value!42682 BalanceConc!4192)) (List!6471 (value!42683 List!6472)) (Character!12 (value!42684 (_ BitVec 16))) (Open!12 (value!42685 Int)) )
))
(declare-datatypes ((Vector!28 0))(
  ( (Vector!29 (underlying!1388 Object!1364) (overflowing!71 List!6470)) )
))
(declare-fun thiss!9456 () Vector!28)

(declare-fun list!2745 (Vector!28) List!6470)

(assert (=> start!60710 (= lt!267079 (list!2745 thiss!9456))))

(declare-fun size!5050 (Vector!28) Int)

(assert (=> start!60710 (= lt!267078 (size!5050 thiss!9456))))

(assert (=> start!60710 (not e!381129)))

(declare-fun e!381127 () Bool)

(assert (=> start!60710 e!381127))

(declare-fun b!628276 () Bool)

(declare-fun isEmpty!4591 (List!6470) Bool)

(assert (=> b!628276 (= e!381128 (= (= lt!267078 0) (isEmpty!4591 lt!267079)))))

(declare-fun b!628277 () Bool)

(declare-fun choose!4568 (Vector!28) T!12252)

(declare-fun head!1333 (List!6470) T!12252)

(assert (=> b!628277 (= e!381129 (= (choose!4568 thiss!9456) (head!1333 lt!267079)))))

(declare-fun b!628278 () Bool)

(declare-fun tp!196072 () Bool)

(declare-fun tp!196073 () Bool)

(assert (=> b!628278 (= e!381127 (and tp!196072 tp!196073))))

(assert (= (and start!60710 res!272340) b!628276))

(assert (= (and start!60710 (not res!272339)) b!628277))

(assert (= start!60710 b!628278))

(declare-fun m!896651 () Bool)

(assert (=> start!60710 m!896651))

(declare-fun m!896653 () Bool)

(assert (=> start!60710 m!896653))

(declare-fun m!896655 () Bool)

(assert (=> start!60710 m!896655))

(declare-fun m!896657 () Bool)

(assert (=> b!628276 m!896657))

(declare-fun m!896659 () Bool)

(assert (=> b!628277 m!896659))

(declare-fun m!896661 () Bool)

(assert (=> b!628277 m!896661))

(check-sat (not b!628277) (not start!60710) (not b!628276) (not b!628278))
(check-sat)
(get-model)

(declare-fun d!219814 () Bool)

(declare-fun choose!4569 (Vector!28) T!12252)

(assert (=> d!219814 (= (choose!4568 thiss!9456) (choose!4569 thiss!9456))))

(declare-fun bs!72695 () Bool)

(assert (= bs!72695 d!219814))

(declare-fun m!896663 () Bool)

(assert (=> bs!72695 m!896663))

(assert (=> b!628277 d!219814))

(declare-fun d!219818 () Bool)

(assert (=> d!219818 (= (head!1333 lt!267079) (h!11858 lt!267079))))

(assert (=> b!628277 d!219818))

(declare-fun d!219822 () Bool)

(declare-fun lt!267084 () Int)

(assert (=> d!219822 (>= lt!267084 0)))

(declare-fun e!381134 () Int)

(assert (=> d!219822 (= lt!267084 e!381134)))

(declare-fun c!115473 () Bool)

(get-info :version)

(assert (=> d!219822 (= c!115473 ((_ is Nil!6457) lt!267079))))

(assert (=> d!219822 (= (size!5049 lt!267079) lt!267084)))

(declare-fun b!628287 () Bool)

(assert (=> b!628287 (= e!381134 0)))

(declare-fun b!628288 () Bool)

(assert (=> b!628288 (= e!381134 (+ 1 (size!5049 (t!82522 lt!267079))))))

(assert (= (and d!219822 c!115473) b!628287))

(assert (= (and d!219822 (not c!115473)) b!628288))

(declare-fun m!896667 () Bool)

(assert (=> b!628288 m!896667))

(assert (=> start!60710 d!219822))

(declare-fun d!219828 () Bool)

(declare-fun choose!4571 (Vector!28) List!6470)

(assert (=> d!219828 (= (list!2745 thiss!9456) (choose!4571 thiss!9456))))

(declare-fun bs!72697 () Bool)

(assert (= bs!72697 d!219828))

(declare-fun m!896669 () Bool)

(assert (=> bs!72697 m!896669))

(assert (=> start!60710 d!219828))

(declare-fun d!219830 () Bool)

(declare-fun lt!267088 () Int)

(assert (=> d!219830 (= lt!267088 (size!5049 (list!2745 thiss!9456)))))

(declare-fun choose!4572 (Vector!28) Int)

(assert (=> d!219830 (= lt!267088 (choose!4572 thiss!9456))))

(assert (=> d!219830 (= (size!5050 thiss!9456) lt!267088)))

(declare-fun bs!72699 () Bool)

(assert (= bs!72699 d!219830))

(assert (=> bs!72699 m!896653))

(assert (=> bs!72699 m!896653))

(declare-fun m!896675 () Bool)

(assert (=> bs!72699 m!896675))

(declare-fun m!896677 () Bool)

(assert (=> bs!72699 m!896677))

(assert (=> start!60710 d!219830))

(declare-fun d!219836 () Bool)

(assert (=> d!219836 (= (isEmpty!4591 lt!267079) ((_ is Nil!6457) lt!267079))))

(assert (=> b!628276 d!219836))

(declare-fun b!628308 () Bool)

(declare-fun e!381145 () Bool)

(declare-fun tp!196082 () Bool)

(declare-fun inv!8304 (Conc!2090) Bool)

(assert (=> b!628308 (= e!381145 (and (inv!8304 (c!115468 (value!42682 (underlying!1388 thiss!9456)))) tp!196082))))

(declare-fun b!628307 () Bool)

(declare-fun e!381144 () Bool)

(declare-fun inv!8305 (BalanceConc!4192) Bool)

(assert (=> b!628307 (= e!381144 (and (inv!8305 (value!42682 (underlying!1388 thiss!9456))) e!381145))))

(declare-fun b!628309 () Bool)

(declare-fun tp!196083 () Bool)

(assert (=> b!628309 (= e!381144 tp!196083)))

(assert (=> b!628278 (= tp!196072 e!381144)))

(assert (= b!628307 b!628308))

(assert (= (and b!628278 ((_ is BalanceConc!4191) (underlying!1388 thiss!9456))) b!628307))

(assert (= (and b!628278 ((_ is List!6471) (underlying!1388 thiss!9456))) b!628309))

(declare-fun m!896683 () Bool)

(assert (=> b!628308 m!896683))

(declare-fun m!896685 () Bool)

(assert (=> b!628307 m!896685))

(declare-fun b!628321 () Bool)

(declare-fun e!381152 () Bool)

(declare-fun tp_is_empty!3631 () Bool)

(declare-fun tp!196090 () Bool)

(assert (=> b!628321 (= e!381152 (and tp_is_empty!3631 tp!196090))))

(assert (=> b!628278 (= tp!196073 e!381152)))

(assert (= (and b!628278 ((_ is Cons!6457) (overflowing!71 thiss!9456))) b!628321))

(check-sat (not b!628309) (not d!219814) (not b!628321) (not b!628288) (not b!628307) (not d!219830) (not b!628308) tp_is_empty!3631 (not d!219828))
(check-sat)
(get-model)

(declare-fun d!219838 () Bool)

(declare-fun c!115477 () Bool)

(assert (=> d!219838 (= c!115477 ((_ is Node!2090) (c!115468 (value!42682 (underlying!1388 thiss!9456)))))))

(declare-fun e!381158 () Bool)

(assert (=> d!219838 (= (inv!8304 (c!115468 (value!42682 (underlying!1388 thiss!9456)))) e!381158)))

(declare-fun b!628329 () Bool)

(declare-fun inv!8308 (Conc!2090) Bool)

(assert (=> b!628329 (= e!381158 (inv!8308 (c!115468 (value!42682 (underlying!1388 thiss!9456)))))))

(declare-fun b!628330 () Bool)

(declare-fun e!381159 () Bool)

(assert (=> b!628330 (= e!381158 e!381159)))

(declare-fun res!272343 () Bool)

(assert (=> b!628330 (= res!272343 (not ((_ is Leaf!3264) (c!115468 (value!42682 (underlying!1388 thiss!9456))))))))

(assert (=> b!628330 (=> res!272343 e!381159)))

(declare-fun b!628331 () Bool)

(declare-fun inv!8309 (Conc!2090) Bool)

(assert (=> b!628331 (= e!381159 (inv!8309 (c!115468 (value!42682 (underlying!1388 thiss!9456)))))))

(assert (= (and d!219838 c!115477) b!628329))

(assert (= (and d!219838 (not c!115477)) b!628330))

(assert (= (and b!628330 (not res!272343)) b!628331))

(declare-fun m!896691 () Bool)

(assert (=> b!628329 m!896691))

(declare-fun m!896693 () Bool)

(assert (=> b!628331 m!896693))

(assert (=> b!628308 d!219838))

(declare-fun d!219840 () Bool)

(declare-fun lt!267092 () Int)

(assert (=> d!219840 (>= lt!267092 0)))

(declare-fun e!381160 () Int)

(assert (=> d!219840 (= lt!267092 e!381160)))

(declare-fun c!115478 () Bool)

(assert (=> d!219840 (= c!115478 ((_ is Nil!6457) (list!2745 thiss!9456)))))

(assert (=> d!219840 (= (size!5049 (list!2745 thiss!9456)) lt!267092)))

(declare-fun b!628332 () Bool)

(assert (=> b!628332 (= e!381160 0)))

(declare-fun b!628333 () Bool)

(assert (=> b!628333 (= e!381160 (+ 1 (size!5049 (t!82522 (list!2745 thiss!9456)))))))

(assert (= (and d!219840 c!115478) b!628332))

(assert (= (and d!219840 (not c!115478)) b!628333))

(declare-fun m!896695 () Bool)

(assert (=> b!628333 m!896695))

(assert (=> d!219830 d!219840))

(assert (=> d!219830 d!219828))

(declare-fun d!219842 () Bool)

(declare-fun res!272346 () Int)

(assert (=> d!219842 (= res!272346 (size!5049 (list!2745 thiss!9456)))))

(assert (=> d!219842 true))

(assert (=> d!219842 (= (choose!4572 thiss!9456) res!272346)))

(declare-fun bs!72701 () Bool)

(assert (= bs!72701 d!219842))

(assert (=> bs!72701 m!896653))

(assert (=> bs!72701 m!896653))

(assert (=> bs!72701 m!896675))

(assert (=> d!219830 d!219842))

(declare-fun d!219844 () Bool)

(assert (=> d!219844 true))

(declare-fun e!381163 () Bool)

(assert (=> d!219844 e!381163))

(declare-fun res!272349 () List!6470)

(assert (=> d!219844 (= (choose!4571 thiss!9456) res!272349)))

(declare-fun b!628336 () Bool)

(declare-fun tp!196094 () Bool)

(assert (=> b!628336 (= e!381163 (and tp_is_empty!3631 tp!196094))))

(assert (= (and d!219844 ((_ is Cons!6457) res!272349)) b!628336))

(assert (=> d!219828 d!219844))

(declare-fun d!219846 () Bool)

(declare-fun isBalanced!557 (Conc!2090) Bool)

(assert (=> d!219846 (= (inv!8305 (value!42682 (underlying!1388 thiss!9456))) (isBalanced!557 (c!115468 (value!42682 (underlying!1388 thiss!9456)))))))

(declare-fun bs!72702 () Bool)

(assert (= bs!72702 d!219846))

(declare-fun m!896697 () Bool)

(assert (=> bs!72702 m!896697))

(assert (=> b!628307 d!219846))

(declare-fun d!219848 () Bool)

(declare-fun lt!267093 () Int)

(assert (=> d!219848 (>= lt!267093 0)))

(declare-fun e!381164 () Int)

(assert (=> d!219848 (= lt!267093 e!381164)))

(declare-fun c!115479 () Bool)

(assert (=> d!219848 (= c!115479 ((_ is Nil!6457) (t!82522 lt!267079)))))

(assert (=> d!219848 (= (size!5049 (t!82522 lt!267079)) lt!267093)))

(declare-fun b!628337 () Bool)

(assert (=> b!628337 (= e!381164 0)))

(declare-fun b!628338 () Bool)

(assert (=> b!628338 (= e!381164 (+ 1 (size!5049 (t!82522 (t!82522 lt!267079)))))))

(assert (= (and d!219848 c!115479) b!628337))

(assert (= (and d!219848 (not c!115479)) b!628338))

(declare-fun m!896699 () Bool)

(assert (=> b!628338 m!896699))

(assert (=> b!628288 d!219848))

(declare-fun d!219852 () Bool)

(declare-fun res!272352 () T!12252)

(assert (=> d!219852 (= res!272352 (head!1333 (list!2745 thiss!9456)))))

(assert (=> d!219852 tp_is_empty!3631))

(assert (=> d!219852 (= (choose!4569 thiss!9456) res!272352)))

(declare-fun bs!72703 () Bool)

(assert (= bs!72703 d!219852))

(assert (=> bs!72703 m!896653))

(assert (=> bs!72703 m!896653))

(declare-fun m!896701 () Bool)

(assert (=> bs!72703 m!896701))

(assert (=> d!219814 d!219852))

(declare-fun e!381169 () Bool)

(declare-fun tp!196102 () Bool)

(declare-fun b!628347 () Bool)

(declare-fun tp!196101 () Bool)

(assert (=> b!628347 (= e!381169 (and (inv!8304 (left!5157 (c!115468 (value!42682 (underlying!1388 thiss!9456))))) tp!196101 (inv!8304 (right!5487 (c!115468 (value!42682 (underlying!1388 thiss!9456))))) tp!196102))))

(declare-fun b!628349 () Bool)

(declare-fun e!381170 () Bool)

(declare-fun tp!196103 () Bool)

(assert (=> b!628349 (= e!381170 tp!196103)))

(declare-fun b!628348 () Bool)

(declare-fun inv!8311 (IArray!4181) Bool)

(assert (=> b!628348 (= e!381169 (and (inv!8311 (xs!4731 (c!115468 (value!42682 (underlying!1388 thiss!9456))))) e!381170))))

(assert (=> b!628308 (= tp!196082 (and (inv!8304 (c!115468 (value!42682 (underlying!1388 thiss!9456)))) e!381169))))

(assert (= (and b!628308 ((_ is Node!2090) (c!115468 (value!42682 (underlying!1388 thiss!9456))))) b!628347))

(assert (= b!628348 b!628349))

(assert (= (and b!628308 ((_ is Leaf!3264) (c!115468 (value!42682 (underlying!1388 thiss!9456))))) b!628348))

(declare-fun m!896703 () Bool)

(assert (=> b!628347 m!896703))

(declare-fun m!896705 () Bool)

(assert (=> b!628347 m!896705))

(declare-fun m!896707 () Bool)

(assert (=> b!628348 m!896707))

(assert (=> b!628308 m!896683))

(declare-fun b!628360 () Bool)

(declare-fun e!381177 () Bool)

(declare-fun tp!196108 () Bool)

(declare-fun tp!196109 () Bool)

(assert (=> b!628360 (= e!381177 (and tp!196108 tp!196109))))

(assert (=> b!628309 (= tp!196083 e!381177)))

(assert (= (and b!628309 ((_ is Cons!6458) (value!42683 (underlying!1388 thiss!9456)))) b!628360))

(declare-fun b!628361 () Bool)

(declare-fun e!381178 () Bool)

(declare-fun tp!196110 () Bool)

(assert (=> b!628361 (= e!381178 (and tp_is_empty!3631 tp!196110))))

(assert (=> b!628321 (= tp!196090 e!381178)))

(assert (= (and b!628321 ((_ is Cons!6457) (t!82522 (overflowing!71 thiss!9456)))) b!628361))

(check-sat (not b!628333) (not b!628349) (not d!219846) (not b!628347) (not b!628329) (not d!219842) tp_is_empty!3631 (not b!628348) (not b!628336) (not b!628338) (not b!628331) (not b!628308) (not b!628360) (not b!628361) (not d!219852))
(check-sat)
