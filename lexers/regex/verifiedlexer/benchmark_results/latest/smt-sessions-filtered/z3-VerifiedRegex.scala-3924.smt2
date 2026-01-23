; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215242 () Bool)

(assert start!215242)

(declare-fun b!2210530 () Bool)

(declare-fun res!950001 () Bool)

(declare-fun e!1411881 () Bool)

(assert (=> b!2210530 (=> (not res!950001) (not e!1411881))))

(declare-datatypes ((T!40522 0))(
  ( (T!40523 (val!7374 Int)) )
))
(declare-datatypes ((List!25938 0))(
  ( (Nil!25854) (Cons!25854 (h!31255 T!40522) (t!198632 List!25938)) )
))
(declare-datatypes ((IArray!16907 0))(
  ( (IArray!16908 (innerList!8511 List!25938)) )
))
(declare-datatypes ((Conc!8451 0))(
  ( (Node!8451 (left!19879 Conc!8451) (right!20209 Conc!8451) (csize!17132 Int) (cheight!8662 Int)) (Leaf!12376 (xs!11393 IArray!16907) (csize!17133 Int)) (Empty!8451) )
))
(declare-fun t!4663 () Conc!8451)

(declare-fun isEmpty!14791 (Conc!8451) Bool)

(assert (=> b!2210530 (= res!950001 (not (isEmpty!14791 t!4663)))))

(declare-fun res!950002 () Bool)

(assert (=> start!215242 (=> (not res!950002) (not e!1411881))))

(declare-fun isBalanced!2609 (Conc!8451) Bool)

(assert (=> start!215242 (= res!950002 (isBalanced!2609 t!4663))))

(assert (=> start!215242 e!1411881))

(declare-fun e!1411879 () Bool)

(declare-fun inv!34977 (Conc!8451) Bool)

(assert (=> start!215242 (and (inv!34977 t!4663) e!1411879)))

(declare-fun b!2210531 () Bool)

(assert (=> b!2210531 (= e!1411881 (not (isBalanced!2609 (left!19879 t!4663))))))

(declare-fun b!2210532 () Bool)

(declare-fun res!950003 () Bool)

(assert (=> b!2210532 (=> (not res!950003) (not e!1411881))))

(get-info :version)

(assert (=> b!2210532 (= res!950003 (and (not ((_ is Leaf!12376) t!4663)) ((_ is Node!8451) t!4663)))))

(declare-fun tp!687071 () Bool)

(declare-fun b!2210533 () Bool)

(declare-fun tp!687070 () Bool)

(assert (=> b!2210533 (= e!1411879 (and (inv!34977 (left!19879 t!4663)) tp!687071 (inv!34977 (right!20209 t!4663)) tp!687070))))

(declare-fun b!2210534 () Bool)

(declare-fun e!1411880 () Bool)

(declare-fun tp!687072 () Bool)

(assert (=> b!2210534 (= e!1411880 tp!687072)))

(declare-fun b!2210535 () Bool)

(declare-fun inv!34978 (IArray!16907) Bool)

(assert (=> b!2210535 (= e!1411879 (and (inv!34978 (xs!11393 t!4663)) e!1411880))))

(assert (= (and start!215242 res!950002) b!2210530))

(assert (= (and b!2210530 res!950001) b!2210532))

(assert (= (and b!2210532 res!950003) b!2210531))

(assert (= (and start!215242 ((_ is Node!8451) t!4663)) b!2210533))

(assert (= b!2210535 b!2210534))

(assert (= (and start!215242 ((_ is Leaf!12376) t!4663)) b!2210535))

(declare-fun m!2652285 () Bool)

(assert (=> start!215242 m!2652285))

(declare-fun m!2652287 () Bool)

(assert (=> start!215242 m!2652287))

(declare-fun m!2652289 () Bool)

(assert (=> b!2210533 m!2652289))

(declare-fun m!2652291 () Bool)

(assert (=> b!2210533 m!2652291))

(declare-fun m!2652293 () Bool)

(assert (=> b!2210535 m!2652293))

(declare-fun m!2652295 () Bool)

(assert (=> b!2210530 m!2652295))

(declare-fun m!2652297 () Bool)

(assert (=> b!2210531 m!2652297))

(check-sat (not b!2210531) (not b!2210534) (not b!2210530) (not b!2210533) (not start!215242) (not b!2210535))
(check-sat)
(get-model)

(declare-fun b!2210560 () Bool)

(declare-fun res!950028 () Bool)

(declare-fun e!1411890 () Bool)

(assert (=> b!2210560 (=> (not res!950028) (not e!1411890))))

(assert (=> b!2210560 (= res!950028 (isBalanced!2609 (left!19879 (left!19879 t!4663))))))

(declare-fun b!2210561 () Bool)

(declare-fun res!950033 () Bool)

(assert (=> b!2210561 (=> (not res!950033) (not e!1411890))))

(declare-fun height!1275 (Conc!8451) Int)

(assert (=> b!2210561 (= res!950033 (<= (- (height!1275 (left!19879 (left!19879 t!4663))) (height!1275 (right!20209 (left!19879 t!4663)))) 1))))

(declare-fun b!2210562 () Bool)

(declare-fun res!950029 () Bool)

(assert (=> b!2210562 (=> (not res!950029) (not e!1411890))))

(assert (=> b!2210562 (= res!950029 (isBalanced!2609 (right!20209 (left!19879 t!4663))))))

(declare-fun b!2210563 () Bool)

(declare-fun e!1411891 () Bool)

(assert (=> b!2210563 (= e!1411891 e!1411890)))

(declare-fun res!950032 () Bool)

(assert (=> b!2210563 (=> (not res!950032) (not e!1411890))))

(assert (=> b!2210563 (= res!950032 (<= (- 1) (- (height!1275 (left!19879 (left!19879 t!4663))) (height!1275 (right!20209 (left!19879 t!4663))))))))

(declare-fun d!660737 () Bool)

(declare-fun res!950030 () Bool)

(assert (=> d!660737 (=> res!950030 e!1411891)))

(assert (=> d!660737 (= res!950030 (not ((_ is Node!8451) (left!19879 t!4663))))))

(assert (=> d!660737 (= (isBalanced!2609 (left!19879 t!4663)) e!1411891)))

(declare-fun b!2210564 () Bool)

(assert (=> b!2210564 (= e!1411890 (not (isEmpty!14791 (right!20209 (left!19879 t!4663)))))))

(declare-fun b!2210565 () Bool)

(declare-fun res!950031 () Bool)

(assert (=> b!2210565 (=> (not res!950031) (not e!1411890))))

(assert (=> b!2210565 (= res!950031 (not (isEmpty!14791 (left!19879 (left!19879 t!4663)))))))

(assert (= (and d!660737 (not res!950030)) b!2210563))

(assert (= (and b!2210563 res!950032) b!2210561))

(assert (= (and b!2210561 res!950033) b!2210560))

(assert (= (and b!2210560 res!950028) b!2210562))

(assert (= (and b!2210562 res!950029) b!2210565))

(assert (= (and b!2210565 res!950031) b!2210564))

(declare-fun m!2652305 () Bool)

(assert (=> b!2210565 m!2652305))

(declare-fun m!2652307 () Bool)

(assert (=> b!2210564 m!2652307))

(declare-fun m!2652309 () Bool)

(assert (=> b!2210560 m!2652309))

(declare-fun m!2652311 () Bool)

(assert (=> b!2210562 m!2652311))

(declare-fun m!2652313 () Bool)

(assert (=> b!2210561 m!2652313))

(declare-fun m!2652315 () Bool)

(assert (=> b!2210561 m!2652315))

(assert (=> b!2210563 m!2652313))

(assert (=> b!2210563 m!2652315))

(assert (=> b!2210531 d!660737))

(declare-fun d!660741 () Bool)

(declare-fun size!20157 (List!25938) Int)

(assert (=> d!660741 (= (inv!34978 (xs!11393 t!4663)) (<= (size!20157 (innerList!8511 (xs!11393 t!4663))) 2147483647))))

(declare-fun bs!451388 () Bool)

(assert (= bs!451388 d!660741))

(declare-fun m!2652327 () Bool)

(assert (=> bs!451388 m!2652327))

(assert (=> b!2210535 d!660741))

(declare-fun d!660745 () Bool)

(declare-fun lt!826370 () Bool)

(declare-fun isEmpty!14793 (List!25938) Bool)

(declare-fun list!10020 (Conc!8451) List!25938)

(assert (=> d!660745 (= lt!826370 (isEmpty!14793 (list!10020 t!4663)))))

(declare-fun size!20158 (Conc!8451) Int)

(assert (=> d!660745 (= lt!826370 (= (size!20158 t!4663) 0))))

(assert (=> d!660745 (= (isEmpty!14791 t!4663) lt!826370)))

(declare-fun bs!451389 () Bool)

(assert (= bs!451389 d!660745))

(declare-fun m!2652329 () Bool)

(assert (=> bs!451389 m!2652329))

(assert (=> bs!451389 m!2652329))

(declare-fun m!2652331 () Bool)

(assert (=> bs!451389 m!2652331))

(declare-fun m!2652333 () Bool)

(assert (=> bs!451389 m!2652333))

(assert (=> b!2210530 d!660745))

(declare-fun b!2210578 () Bool)

(declare-fun res!950042 () Bool)

(declare-fun e!1411898 () Bool)

(assert (=> b!2210578 (=> (not res!950042) (not e!1411898))))

(assert (=> b!2210578 (= res!950042 (isBalanced!2609 (left!19879 t!4663)))))

(declare-fun b!2210579 () Bool)

(declare-fun res!950047 () Bool)

(assert (=> b!2210579 (=> (not res!950047) (not e!1411898))))

(assert (=> b!2210579 (= res!950047 (<= (- (height!1275 (left!19879 t!4663)) (height!1275 (right!20209 t!4663))) 1))))

(declare-fun b!2210580 () Bool)

(declare-fun res!950043 () Bool)

(assert (=> b!2210580 (=> (not res!950043) (not e!1411898))))

(assert (=> b!2210580 (= res!950043 (isBalanced!2609 (right!20209 t!4663)))))

(declare-fun b!2210581 () Bool)

(declare-fun e!1411899 () Bool)

(assert (=> b!2210581 (= e!1411899 e!1411898)))

(declare-fun res!950046 () Bool)

(assert (=> b!2210581 (=> (not res!950046) (not e!1411898))))

(assert (=> b!2210581 (= res!950046 (<= (- 1) (- (height!1275 (left!19879 t!4663)) (height!1275 (right!20209 t!4663)))))))

(declare-fun d!660747 () Bool)

(declare-fun res!950044 () Bool)

(assert (=> d!660747 (=> res!950044 e!1411899)))

(assert (=> d!660747 (= res!950044 (not ((_ is Node!8451) t!4663)))))

(assert (=> d!660747 (= (isBalanced!2609 t!4663) e!1411899)))

(declare-fun b!2210582 () Bool)

(assert (=> b!2210582 (= e!1411898 (not (isEmpty!14791 (right!20209 t!4663))))))

(declare-fun b!2210583 () Bool)

(declare-fun res!950045 () Bool)

(assert (=> b!2210583 (=> (not res!950045) (not e!1411898))))

(assert (=> b!2210583 (= res!950045 (not (isEmpty!14791 (left!19879 t!4663))))))

(assert (= (and d!660747 (not res!950044)) b!2210581))

(assert (= (and b!2210581 res!950046) b!2210579))

(assert (= (and b!2210579 res!950047) b!2210578))

(assert (= (and b!2210578 res!950042) b!2210580))

(assert (= (and b!2210580 res!950043) b!2210583))

(assert (= (and b!2210583 res!950045) b!2210582))

(declare-fun m!2652335 () Bool)

(assert (=> b!2210583 m!2652335))

(declare-fun m!2652337 () Bool)

(assert (=> b!2210582 m!2652337))

(assert (=> b!2210578 m!2652297))

(declare-fun m!2652339 () Bool)

(assert (=> b!2210580 m!2652339))

(declare-fun m!2652341 () Bool)

(assert (=> b!2210579 m!2652341))

(declare-fun m!2652343 () Bool)

(assert (=> b!2210579 m!2652343))

(assert (=> b!2210581 m!2652341))

(assert (=> b!2210581 m!2652343))

(assert (=> start!215242 d!660747))

(declare-fun d!660749 () Bool)

(declare-fun c!353331 () Bool)

(assert (=> d!660749 (= c!353331 ((_ is Node!8451) t!4663))))

(declare-fun e!1411919 () Bool)

(assert (=> d!660749 (= (inv!34977 t!4663) e!1411919)))

(declare-fun b!2210618 () Bool)

(declare-fun inv!34981 (Conc!8451) Bool)

(assert (=> b!2210618 (= e!1411919 (inv!34981 t!4663))))

(declare-fun b!2210619 () Bool)

(declare-fun e!1411920 () Bool)

(assert (=> b!2210619 (= e!1411919 e!1411920)))

(declare-fun res!950059 () Bool)

(assert (=> b!2210619 (= res!950059 (not ((_ is Leaf!12376) t!4663)))))

(assert (=> b!2210619 (=> res!950059 e!1411920)))

(declare-fun b!2210620 () Bool)

(declare-fun inv!34982 (Conc!8451) Bool)

(assert (=> b!2210620 (= e!1411920 (inv!34982 t!4663))))

(assert (= (and d!660749 c!353331) b!2210618))

(assert (= (and d!660749 (not c!353331)) b!2210619))

(assert (= (and b!2210619 (not res!950059)) b!2210620))

(declare-fun m!2652371 () Bool)

(assert (=> b!2210618 m!2652371))

(declare-fun m!2652373 () Bool)

(assert (=> b!2210620 m!2652373))

(assert (=> start!215242 d!660749))

(declare-fun d!660759 () Bool)

(declare-fun c!353332 () Bool)

(assert (=> d!660759 (= c!353332 ((_ is Node!8451) (left!19879 t!4663)))))

(declare-fun e!1411921 () Bool)

(assert (=> d!660759 (= (inv!34977 (left!19879 t!4663)) e!1411921)))

(declare-fun b!2210621 () Bool)

(assert (=> b!2210621 (= e!1411921 (inv!34981 (left!19879 t!4663)))))

(declare-fun b!2210622 () Bool)

(declare-fun e!1411922 () Bool)

(assert (=> b!2210622 (= e!1411921 e!1411922)))

(declare-fun res!950060 () Bool)

(assert (=> b!2210622 (= res!950060 (not ((_ is Leaf!12376) (left!19879 t!4663))))))

(assert (=> b!2210622 (=> res!950060 e!1411922)))

(declare-fun b!2210623 () Bool)

(assert (=> b!2210623 (= e!1411922 (inv!34982 (left!19879 t!4663)))))

(assert (= (and d!660759 c!353332) b!2210621))

(assert (= (and d!660759 (not c!353332)) b!2210622))

(assert (= (and b!2210622 (not res!950060)) b!2210623))

(declare-fun m!2652375 () Bool)

(assert (=> b!2210621 m!2652375))

(declare-fun m!2652377 () Bool)

(assert (=> b!2210623 m!2652377))

(assert (=> b!2210533 d!660759))

(declare-fun d!660761 () Bool)

(declare-fun c!353333 () Bool)

(assert (=> d!660761 (= c!353333 ((_ is Node!8451) (right!20209 t!4663)))))

(declare-fun e!1411923 () Bool)

(assert (=> d!660761 (= (inv!34977 (right!20209 t!4663)) e!1411923)))

(declare-fun b!2210624 () Bool)

(assert (=> b!2210624 (= e!1411923 (inv!34981 (right!20209 t!4663)))))

(declare-fun b!2210625 () Bool)

(declare-fun e!1411924 () Bool)

(assert (=> b!2210625 (= e!1411923 e!1411924)))

(declare-fun res!950061 () Bool)

(assert (=> b!2210625 (= res!950061 (not ((_ is Leaf!12376) (right!20209 t!4663))))))

(assert (=> b!2210625 (=> res!950061 e!1411924)))

(declare-fun b!2210626 () Bool)

(assert (=> b!2210626 (= e!1411924 (inv!34982 (right!20209 t!4663)))))

(assert (= (and d!660761 c!353333) b!2210624))

(assert (= (and d!660761 (not c!353333)) b!2210625))

(assert (= (and b!2210625 (not res!950061)) b!2210626))

(declare-fun m!2652379 () Bool)

(assert (=> b!2210624 m!2652379))

(declare-fun m!2652381 () Bool)

(assert (=> b!2210626 m!2652381))

(assert (=> b!2210533 d!660761))

(declare-fun b!2210634 () Bool)

(declare-fun e!1411929 () Bool)

(declare-fun tp_is_empty!9769 () Bool)

(declare-fun tp!687087 () Bool)

(assert (=> b!2210634 (= e!1411929 (and tp_is_empty!9769 tp!687087))))

(assert (=> b!2210534 (= tp!687072 e!1411929)))

(assert (= (and b!2210534 ((_ is Cons!25854) (innerList!8511 (xs!11393 t!4663)))) b!2210634))

(declare-fun e!1411936 () Bool)

(declare-fun b!2210646 () Bool)

(declare-fun tp!687098 () Bool)

(declare-fun tp!687099 () Bool)

(assert (=> b!2210646 (= e!1411936 (and (inv!34977 (left!19879 (left!19879 t!4663))) tp!687099 (inv!34977 (right!20209 (left!19879 t!4663))) tp!687098))))

(declare-fun b!2210648 () Bool)

(declare-fun e!1411937 () Bool)

(declare-fun tp!687097 () Bool)

(assert (=> b!2210648 (= e!1411937 tp!687097)))

(declare-fun b!2210647 () Bool)

(assert (=> b!2210647 (= e!1411936 (and (inv!34978 (xs!11393 (left!19879 t!4663))) e!1411937))))

(assert (=> b!2210533 (= tp!687071 (and (inv!34977 (left!19879 t!4663)) e!1411936))))

(assert (= (and b!2210533 ((_ is Node!8451) (left!19879 t!4663))) b!2210646))

(assert (= b!2210647 b!2210648))

(assert (= (and b!2210533 ((_ is Leaf!12376) (left!19879 t!4663))) b!2210647))

(declare-fun m!2652395 () Bool)

(assert (=> b!2210646 m!2652395))

(declare-fun m!2652397 () Bool)

(assert (=> b!2210646 m!2652397))

(declare-fun m!2652399 () Bool)

(assert (=> b!2210647 m!2652399))

(assert (=> b!2210533 m!2652289))

(declare-fun tp!687102 () Bool)

(declare-fun tp!687101 () Bool)

(declare-fun e!1411938 () Bool)

(declare-fun b!2210649 () Bool)

(assert (=> b!2210649 (= e!1411938 (and (inv!34977 (left!19879 (right!20209 t!4663))) tp!687102 (inv!34977 (right!20209 (right!20209 t!4663))) tp!687101))))

(declare-fun b!2210651 () Bool)

(declare-fun e!1411939 () Bool)

(declare-fun tp!687100 () Bool)

(assert (=> b!2210651 (= e!1411939 tp!687100)))

(declare-fun b!2210650 () Bool)

(assert (=> b!2210650 (= e!1411938 (and (inv!34978 (xs!11393 (right!20209 t!4663))) e!1411939))))

(assert (=> b!2210533 (= tp!687070 (and (inv!34977 (right!20209 t!4663)) e!1411938))))

(assert (= (and b!2210533 ((_ is Node!8451) (right!20209 t!4663))) b!2210649))

(assert (= b!2210650 b!2210651))

(assert (= (and b!2210533 ((_ is Leaf!12376) (right!20209 t!4663))) b!2210650))

(declare-fun m!2652401 () Bool)

(assert (=> b!2210649 m!2652401))

(declare-fun m!2652403 () Bool)

(assert (=> b!2210649 m!2652403))

(declare-fun m!2652405 () Bool)

(assert (=> b!2210650 m!2652405))

(assert (=> b!2210533 m!2652291))

(check-sat (not b!2210634) (not b!2210649) (not b!2210620) (not b!2210623) (not b!2210579) (not b!2210563) (not b!2210646) (not b!2210581) tp_is_empty!9769 (not b!2210582) (not b!2210624) (not b!2210561) (not b!2210647) (not b!2210618) (not b!2210560) (not d!660745) (not b!2210564) (not b!2210565) (not b!2210533) (not b!2210650) (not b!2210651) (not b!2210562) (not b!2210621) (not b!2210583) (not b!2210626) (not d!660741) (not b!2210580) (not b!2210578) (not b!2210648))
(check-sat)
