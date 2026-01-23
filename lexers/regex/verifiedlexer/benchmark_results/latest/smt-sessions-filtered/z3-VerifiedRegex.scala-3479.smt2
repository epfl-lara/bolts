; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201100 () Bool)

(assert start!201100)

(declare-fun res!894383 () Bool)

(declare-fun e!1288136 () Bool)

(assert (=> start!201100 (=> (not res!894383) (not e!1288136))))

(declare-datatypes ((T!36060 0))(
  ( (T!36061 (val!6484 Int)) )
))
(declare-datatypes ((List!22369 0))(
  ( (Nil!22286) (Cons!22286 (h!27687 T!36060) (t!191475 List!22369)) )
))
(declare-fun lt!765455 () List!22369)

(declare-fun tl!719 () List!22369)

(declare-fun hd!634 () T!36060)

(declare-datatypes ((BalanceConc!14716 0) (Conc!7477 0) (List!22371 0) (IArray!14959 0) (Object!4219 0))(
  ( (BalanceConc!14717 (c!330703 Conc!7477)) )
  ( (Node!7477 (left!17752 Conc!7477) (right!18082 Conc!7477) (csize!15184 Int) (cheight!7688 Int)) (Leaf!10957 (xs!10383 IArray!14959) (csize!15185 Int)) (Empty!7477) )
  ( (Nil!22287) (Cons!22287 (h!27688 Object!4219) (t!191476 List!22371)) )
  ( (IArray!14960 (innerList!7537 List!22371)) )
  ( (BalanceConc!14715 (value!125647 BalanceConc!14716)) (List!22370 (value!125648 List!22371)) (Character!82 (value!125649 (_ BitVec 16))) (Open!82 (value!125650 Int)) )
))
(declare-datatypes ((Vector!168 0))(
  ( (Vector!169 (underlying!4134 Object!4219) (overflowing!141 List!22369)) )
))
(declare-fun list!9147 (Vector!168) List!22369)

(declare-fun fromList!504 (List!22369) Vector!168)

(declare-fun $colon$colon!498 (List!22369 T!36060) List!22369)

(assert (=> start!201100 (= res!894383 (= lt!765455 (list!9147 (fromList!504 ($colon$colon!498 tl!719 hd!634)))))))

(declare-fun v!5973 () Vector!168)

(assert (=> start!201100 (= lt!765455 (list!9147 v!5973))))

(assert (=> start!201100 e!1288136))

(declare-fun e!1288137 () Bool)

(assert (=> start!201100 e!1288137))

(declare-fun e!1288135 () Bool)

(assert (=> start!201100 e!1288135))

(declare-fun tp_is_empty!9289 () Bool)

(assert (=> start!201100 tp_is_empty!9289))

(declare-fun b!2040386 () Bool)

(declare-fun prepend!906 (Vector!168 T!36060) Vector!168)

(assert (=> b!2040386 (= e!1288136 (not (= lt!765455 (list!9147 (prepend!906 (fromList!504 tl!719) hd!634)))))))

(declare-datatypes ((Unit!36984 0))(
  ( (Unit!36985) )
))
(declare-fun lt!765456 () Unit!36984)

(declare-fun choose!12452 (T!36060 List!22369 Vector!168) Unit!36984)

(assert (=> b!2040386 (= lt!765456 (choose!12452 hd!634 tl!719 v!5973))))

(declare-fun b!2040387 () Bool)

(declare-fun tp!605391 () Bool)

(declare-fun tp!605390 () Bool)

(assert (=> b!2040387 (= e!1288137 (and tp!605391 tp!605390))))

(declare-fun b!2040388 () Bool)

(declare-fun tp!605392 () Bool)

(assert (=> b!2040388 (= e!1288135 (and tp_is_empty!9289 tp!605392))))

(assert (= (and start!201100 res!894383) b!2040386))

(assert (= start!201100 b!2040387))

(get-info :version)

(assert (= (and start!201100 ((_ is Cons!22286) tl!719)) b!2040388))

(declare-fun m!2484373 () Bool)

(assert (=> start!201100 m!2484373))

(assert (=> start!201100 m!2484373))

(declare-fun m!2484375 () Bool)

(assert (=> start!201100 m!2484375))

(assert (=> start!201100 m!2484375))

(declare-fun m!2484377 () Bool)

(assert (=> start!201100 m!2484377))

(declare-fun m!2484379 () Bool)

(assert (=> start!201100 m!2484379))

(declare-fun m!2484381 () Bool)

(assert (=> b!2040386 m!2484381))

(assert (=> b!2040386 m!2484381))

(declare-fun m!2484383 () Bool)

(assert (=> b!2040386 m!2484383))

(assert (=> b!2040386 m!2484383))

(declare-fun m!2484385 () Bool)

(assert (=> b!2040386 m!2484385))

(declare-fun m!2484387 () Bool)

(assert (=> b!2040386 m!2484387))

(check-sat (not b!2040386) (not b!2040388) (not b!2040387) (not start!201100) tp_is_empty!9289)
(check-sat)
(get-model)

(declare-fun d!624948 () Bool)

(declare-fun choose!12454 (Vector!168) List!22369)

(assert (=> d!624948 (= (list!9147 (fromList!504 ($colon$colon!498 tl!719 hd!634))) (choose!12454 (fromList!504 ($colon$colon!498 tl!719 hd!634))))))

(declare-fun bs!421496 () Bool)

(assert (= bs!421496 d!624948))

(assert (=> bs!421496 m!2484375))

(declare-fun m!2484391 () Bool)

(assert (=> bs!421496 m!2484391))

(assert (=> start!201100 d!624948))

(declare-fun d!624950 () Bool)

(declare-fun lt!765462 () Vector!168)

(assert (=> d!624950 (= (list!9147 lt!765462) ($colon$colon!498 tl!719 hd!634))))

(declare-fun choose!12456 (List!22369) Vector!168)

(assert (=> d!624950 (= lt!765462 (choose!12456 ($colon$colon!498 tl!719 hd!634)))))

(assert (=> d!624950 (= (fromList!504 ($colon$colon!498 tl!719 hd!634)) lt!765462)))

(declare-fun bs!421498 () Bool)

(assert (= bs!421498 d!624950))

(declare-fun m!2484401 () Bool)

(assert (=> bs!421498 m!2484401))

(assert (=> bs!421498 m!2484373))

(declare-fun m!2484403 () Bool)

(assert (=> bs!421498 m!2484403))

(assert (=> start!201100 d!624950))

(declare-fun d!624954 () Bool)

(assert (=> d!624954 (= ($colon$colon!498 tl!719 hd!634) (Cons!22286 hd!634 tl!719))))

(assert (=> start!201100 d!624954))

(declare-fun d!624956 () Bool)

(assert (=> d!624956 (= (list!9147 v!5973) (choose!12454 v!5973))))

(declare-fun bs!421499 () Bool)

(assert (= bs!421499 d!624956))

(declare-fun m!2484405 () Bool)

(assert (=> bs!421499 m!2484405))

(assert (=> start!201100 d!624956))

(declare-fun d!624958 () Bool)

(assert (=> d!624958 (= (list!9147 (prepend!906 (fromList!504 tl!719) hd!634)) (choose!12454 (prepend!906 (fromList!504 tl!719) hd!634)))))

(declare-fun bs!421501 () Bool)

(assert (= bs!421501 d!624958))

(assert (=> bs!421501 m!2484383))

(declare-fun m!2484411 () Bool)

(assert (=> bs!421501 m!2484411))

(assert (=> b!2040386 d!624958))

(declare-fun d!624962 () Bool)

(declare-fun lt!765469 () Vector!168)

(assert (=> d!624962 (= (list!9147 lt!765469) ($colon$colon!498 (list!9147 (fromList!504 tl!719)) hd!634))))

(declare-fun +$colon!3 (Vector!168 T!36060) Vector!168)

(assert (=> d!624962 (= lt!765469 (+$colon!3 (fromList!504 tl!719) hd!634))))

(assert (=> d!624962 (= (prepend!906 (fromList!504 tl!719) hd!634) lt!765469)))

(declare-fun bs!421505 () Bool)

(assert (= bs!421505 d!624962))

(declare-fun m!2484421 () Bool)

(assert (=> bs!421505 m!2484421))

(assert (=> bs!421505 m!2484381))

(declare-fun m!2484425 () Bool)

(assert (=> bs!421505 m!2484425))

(assert (=> bs!421505 m!2484425))

(declare-fun m!2484427 () Bool)

(assert (=> bs!421505 m!2484427))

(assert (=> bs!421505 m!2484381))

(declare-fun m!2484429 () Bool)

(assert (=> bs!421505 m!2484429))

(assert (=> b!2040386 d!624962))

(declare-fun d!624972 () Bool)

(declare-fun lt!765470 () Vector!168)

(assert (=> d!624972 (= (list!9147 lt!765470) tl!719)))

(assert (=> d!624972 (= lt!765470 (choose!12456 tl!719))))

(assert (=> d!624972 (= (fromList!504 tl!719) lt!765470)))

(declare-fun bs!421507 () Bool)

(assert (= bs!421507 d!624972))

(declare-fun m!2484431 () Bool)

(assert (=> bs!421507 m!2484431))

(declare-fun m!2484433 () Bool)

(assert (=> bs!421507 m!2484433))

(assert (=> b!2040386 d!624972))

(declare-fun d!624974 () Bool)

(declare-fun choose!12458 (T!36060 List!22369 Vector!168) Unit!36984)

(assert (=> d!624974 (= (choose!12452 hd!634 tl!719 v!5973) (choose!12458 hd!634 tl!719 v!5973))))

(declare-fun bs!421508 () Bool)

(assert (= bs!421508 d!624974))

(declare-fun m!2484435 () Bool)

(assert (=> bs!421508 m!2484435))

(assert (=> b!2040386 d!624974))

(declare-fun b!2040408 () Bool)

(declare-fun e!1288148 () Bool)

(declare-fun tp!605403 () Bool)

(assert (=> b!2040408 (= e!1288148 (and tp_is_empty!9289 tp!605403))))

(assert (=> b!2040388 (= tp!605392 e!1288148)))

(assert (= (and b!2040388 ((_ is Cons!22286) (t!191475 tl!719))) b!2040408))

(declare-fun b!2040420 () Bool)

(declare-fun e!1288156 () Bool)

(declare-fun tp!605410 () Bool)

(declare-fun inv!29622 (Conc!7477) Bool)

(assert (=> b!2040420 (= e!1288156 (and (inv!29622 (c!330703 (value!125647 (underlying!4134 v!5973)))) tp!605410))))

(declare-fun b!2040419 () Bool)

(declare-fun e!1288155 () Bool)

(declare-fun inv!29623 (BalanceConc!14716) Bool)

(assert (=> b!2040419 (= e!1288155 (and (inv!29623 (value!125647 (underlying!4134 v!5973))) e!1288156))))

(declare-fun b!2040421 () Bool)

(declare-fun tp!605411 () Bool)

(assert (=> b!2040421 (= e!1288155 tp!605411)))

(assert (=> b!2040387 (= tp!605391 e!1288155)))

(assert (= b!2040419 b!2040420))

(assert (= (and b!2040387 ((_ is BalanceConc!14715) (underlying!4134 v!5973))) b!2040419))

(assert (= (and b!2040387 ((_ is List!22370) (underlying!4134 v!5973))) b!2040421))

(declare-fun m!2484441 () Bool)

(assert (=> b!2040420 m!2484441))

(declare-fun m!2484443 () Bool)

(assert (=> b!2040419 m!2484443))

(declare-fun b!2040422 () Bool)

(declare-fun e!1288157 () Bool)

(declare-fun tp!605412 () Bool)

(assert (=> b!2040422 (= e!1288157 (and tp_is_empty!9289 tp!605412))))

(assert (=> b!2040387 (= tp!605390 e!1288157)))

(assert (= (and b!2040387 ((_ is Cons!22286) (overflowing!141 v!5973))) b!2040422))

(check-sat (not d!624950) (not d!624958) (not b!2040422) (not d!624962) (not b!2040421) tp_is_empty!9289 (not d!624972) (not d!624948) (not b!2040419) (not b!2040420) (not d!624956) (not b!2040408) (not d!624974))
(check-sat)
