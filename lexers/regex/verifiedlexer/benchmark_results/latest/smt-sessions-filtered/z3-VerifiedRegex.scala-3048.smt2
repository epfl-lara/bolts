; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182766 () Bool)

(assert start!182766)

(declare-fun b_free!51489 () Bool)

(declare-fun b_next!52193 () Bool)

(assert (=> start!182766 (= b_free!51489 (not b_next!52193))))

(declare-fun tp!519889 () Bool)

(declare-fun b_and!143607 () Bool)

(assert (=> start!182766 (= tp!519889 b_and!143607)))

(declare-fun res!826038 () Bool)

(declare-fun e!1174312 () Bool)

(assert (=> start!182766 (=> res!826038 e!1174312)))

(declare-datatypes ((T!31426 0))(
  ( (T!31427 (val!5669 Int)) )
))
(declare-datatypes ((List!20269 0))(
  ( (Nil!20199) (Cons!20199 (h!25600 T!31426) (t!171690 List!20269)) )
))
(declare-datatypes ((IArray!13389 0))(
  ( (IArray!13390 (innerList!6752 List!20269)) )
))
(declare-datatypes ((Conc!6692 0))(
  ( (Node!6692 (left!16146 Conc!6692) (right!16476 Conc!6692) (csize!13614 Int) (cheight!6903 Int)) (Leaf!9741 (xs!9568 IArray!13389) (csize!13615 Int)) (Empty!6692) )
))
(declare-datatypes ((BalanceConc!13328 0))(
  ( (BalanceConc!13329 (c!299876 Conc!6692)) )
))
(declare-fun thiss!5824 () BalanceConc!13328)

(declare-datatypes ((B!1445 0))(
  ( (B!1446 (val!5670 Int)) )
))
(declare-datatypes ((List!20270 0))(
  ( (Nil!20200) (Cons!20200 (h!25601 B!1445) (t!171691 List!20270)) )
))
(declare-datatypes ((IArray!13391 0))(
  ( (IArray!13392 (innerList!6753 List!20270)) )
))
(declare-datatypes ((Conc!6693 0))(
  ( (Node!6693 (left!16147 Conc!6693) (right!16477 Conc!6693) (csize!13616 Int) (cheight!6904 Int)) (Leaf!9742 (xs!9569 IArray!13391) (csize!13617 Int)) (Empty!6693) )
))
(declare-fun lt!713212 () Conc!6693)

(declare-fun f!423 () Int)

(declare-datatypes ((BalanceConc!13330 0))(
  ( (BalanceConc!13331 (c!299877 Conc!6693)) )
))
(declare-fun list!8216 (BalanceConc!13330) List!20270)

(declare-fun map!4205 (List!20269 Int) List!20270)

(declare-fun list!8217 (BalanceConc!13328) List!20269)

(assert (=> start!182766 (= res!826038 (not (= (list!8216 (BalanceConc!13331 lt!713212)) (map!4205 (list!8217 thiss!5824) f!423))))))

(declare-fun map!4206 (Conc!6692 Int) Conc!6693)

(assert (=> start!182766 (= lt!713212 (map!4206 (c!299876 thiss!5824) f!423))))

(assert (=> start!182766 e!1174312))

(declare-fun e!1174311 () Bool)

(declare-fun inv!26317 (BalanceConc!13328) Bool)

(assert (=> start!182766 (and (inv!26317 thiss!5824) e!1174311)))

(assert (=> start!182766 tp!519889))

(declare-fun b!1837757 () Bool)

(declare-fun isBalanced!2082 (Conc!6693) Bool)

(assert (=> b!1837757 (= e!1174312 (not (isBalanced!2082 lt!713212)))))

(declare-fun b!1837758 () Bool)

(declare-fun tp!519890 () Bool)

(declare-fun inv!26318 (Conc!6692) Bool)

(assert (=> b!1837758 (= e!1174311 (and (inv!26318 (c!299876 thiss!5824)) tp!519890))))

(assert (= (and start!182766 (not res!826038)) b!1837757))

(assert (= start!182766 b!1837758))

(declare-fun m!2265659 () Bool)

(assert (=> start!182766 m!2265659))

(declare-fun m!2265661 () Bool)

(assert (=> start!182766 m!2265661))

(declare-fun m!2265663 () Bool)

(assert (=> start!182766 m!2265663))

(declare-fun m!2265665 () Bool)

(assert (=> start!182766 m!2265665))

(assert (=> start!182766 m!2265661))

(declare-fun m!2265667 () Bool)

(assert (=> start!182766 m!2265667))

(declare-fun m!2265669 () Bool)

(assert (=> b!1837757 m!2265669))

(declare-fun m!2265671 () Bool)

(assert (=> b!1837758 m!2265671))

(check-sat (not b!1837757) (not start!182766) (not b!1837758) (not b_next!52193) b_and!143607)
(check-sat b_and!143607 (not b_next!52193))
(get-model)

(declare-fun b!1837796 () Bool)

(declare-fun e!1174332 () Conc!6693)

(declare-fun map!4207 (IArray!13389 Int) IArray!13391)

(assert (=> b!1837796 (= e!1174332 (Leaf!9742 (map!4207 (xs!9568 (c!299876 thiss!5824)) f!423) (csize!13615 (c!299876 thiss!5824))))))

(declare-fun b!1837797 () Bool)

(declare-fun e!1174331 () Conc!6693)

(assert (=> b!1837797 (= e!1174331 Empty!6693)))

(declare-fun b!1837799 () Bool)

(assert (=> b!1837799 (= e!1174331 e!1174332)))

(declare-fun c!299886 () Bool)

(get-info :version)

(assert (=> b!1837799 (= c!299886 ((_ is Leaf!9741) (c!299876 thiss!5824)))))

(declare-fun b!1837800 () Bool)

(declare-datatypes ((Unit!34905 0))(
  ( (Unit!34906) )
))
(declare-fun lt!713217 () Unit!34905)

(declare-fun lemmaMapConcat!17 (List!20269 List!20269 Int) Unit!34905)

(declare-fun list!8218 (Conc!6692) List!20269)

(assert (=> b!1837800 (= lt!713217 (lemmaMapConcat!17 (list!8218 (left!16146 (c!299876 thiss!5824))) (list!8218 (right!16476 (c!299876 thiss!5824))) f!423))))

(assert (=> b!1837800 (= e!1174332 (Node!6693 (map!4206 (left!16146 (c!299876 thiss!5824)) f!423) (map!4206 (right!16476 (c!299876 thiss!5824)) f!423) (csize!13614 (c!299876 thiss!5824)) (cheight!6903 (c!299876 thiss!5824))))))

(declare-fun d!562037 () Bool)

(declare-fun e!1174333 () Bool)

(assert (=> d!562037 e!1174333))

(declare-fun res!826062 () Bool)

(assert (=> d!562037 (=> (not res!826062) (not e!1174333))))

(declare-fun lt!713218 () Conc!6693)

(declare-fun list!8219 (Conc!6693) List!20270)

(assert (=> d!562037 (= res!826062 (= (list!8219 lt!713218) (map!4205 (list!8218 (c!299876 thiss!5824)) f!423)))))

(assert (=> d!562037 (= lt!713218 e!1174331)))

(declare-fun c!299885 () Bool)

(assert (=> d!562037 (= c!299885 ((_ is Empty!6692) (c!299876 thiss!5824)))))

(declare-fun isBalanced!2083 (Conc!6692) Bool)

(assert (=> d!562037 (isBalanced!2083 (c!299876 thiss!5824))))

(assert (=> d!562037 (= (map!4206 (c!299876 thiss!5824) f!423) lt!713218)))

(declare-fun b!1837798 () Bool)

(assert (=> b!1837798 (= e!1174333 (isBalanced!2082 lt!713218))))

(assert (= (and d!562037 c!299885) b!1837797))

(assert (= (and d!562037 (not c!299885)) b!1837799))

(assert (= (and b!1837799 c!299886) b!1837796))

(assert (= (and b!1837799 (not c!299886)) b!1837800))

(assert (= (and d!562037 res!826062) b!1837798))

(declare-fun m!2265689 () Bool)

(assert (=> b!1837796 m!2265689))

(declare-fun m!2265691 () Bool)

(assert (=> b!1837800 m!2265691))

(declare-fun m!2265693 () Bool)

(assert (=> b!1837800 m!2265693))

(declare-fun m!2265695 () Bool)

(assert (=> b!1837800 m!2265695))

(assert (=> b!1837800 m!2265693))

(assert (=> b!1837800 m!2265691))

(declare-fun m!2265697 () Bool)

(assert (=> b!1837800 m!2265697))

(declare-fun m!2265699 () Bool)

(assert (=> b!1837800 m!2265699))

(declare-fun m!2265701 () Bool)

(assert (=> d!562037 m!2265701))

(declare-fun m!2265703 () Bool)

(assert (=> d!562037 m!2265703))

(assert (=> d!562037 m!2265703))

(declare-fun m!2265705 () Bool)

(assert (=> d!562037 m!2265705))

(declare-fun m!2265707 () Bool)

(assert (=> d!562037 m!2265707))

(declare-fun m!2265709 () Bool)

(assert (=> b!1837798 m!2265709))

(assert (=> start!182766 d!562037))

(declare-fun d!562043 () Bool)

(declare-fun lt!713221 () List!20270)

(declare-fun size!16023 (List!20270) Int)

(declare-fun size!16024 (List!20269) Int)

(assert (=> d!562043 (= (size!16023 lt!713221) (size!16024 (list!8217 thiss!5824)))))

(declare-fun e!1174336 () List!20270)

(assert (=> d!562043 (= lt!713221 e!1174336)))

(declare-fun c!299889 () Bool)

(assert (=> d!562043 (= c!299889 ((_ is Nil!20199) (list!8217 thiss!5824)))))

(assert (=> d!562043 (= (map!4205 (list!8217 thiss!5824) f!423) lt!713221)))

(declare-fun b!1837805 () Bool)

(assert (=> b!1837805 (= e!1174336 Nil!20200)))

(declare-fun b!1837806 () Bool)

(declare-fun $colon$colon!469 (List!20270 B!1445) List!20270)

(declare-fun dynLambda!10072 (Int T!31426) B!1445)

(assert (=> b!1837806 (= e!1174336 ($colon$colon!469 (map!4205 (t!171690 (list!8217 thiss!5824)) f!423) (dynLambda!10072 f!423 (h!25600 (list!8217 thiss!5824)))))))

(assert (= (and d!562043 c!299889) b!1837805))

(assert (= (and d!562043 (not c!299889)) b!1837806))

(declare-fun b_lambda!61033 () Bool)

(assert (=> (not b_lambda!61033) (not b!1837806)))

(declare-fun t!171695 () Bool)

(declare-fun tb!112793 () Bool)

(assert (=> (and start!182766 (= f!423 f!423) t!171695) tb!112793))

(declare-fun result!135592 () Bool)

(declare-fun tp_is_empty!8191 () Bool)

(assert (=> tb!112793 (= result!135592 tp_is_empty!8191)))

(assert (=> b!1837806 t!171695))

(declare-fun b_and!143609 () Bool)

(assert (= b_and!143607 (and (=> t!171695 result!135592) b_and!143609)))

(declare-fun m!2265711 () Bool)

(assert (=> d!562043 m!2265711))

(assert (=> d!562043 m!2265661))

(declare-fun m!2265713 () Bool)

(assert (=> d!562043 m!2265713))

(declare-fun m!2265715 () Bool)

(assert (=> b!1837806 m!2265715))

(declare-fun m!2265717 () Bool)

(assert (=> b!1837806 m!2265717))

(assert (=> b!1837806 m!2265715))

(assert (=> b!1837806 m!2265717))

(declare-fun m!2265719 () Bool)

(assert (=> b!1837806 m!2265719))

(assert (=> start!182766 d!562043))

(declare-fun d!562045 () Bool)

(assert (=> d!562045 (= (list!8216 (BalanceConc!13331 lt!713212)) (list!8219 (c!299877 (BalanceConc!13331 lt!713212))))))

(declare-fun bs!408482 () Bool)

(assert (= bs!408482 d!562045))

(declare-fun m!2265721 () Bool)

(assert (=> bs!408482 m!2265721))

(assert (=> start!182766 d!562045))

(declare-fun d!562047 () Bool)

(assert (=> d!562047 (= (inv!26317 thiss!5824) (isBalanced!2083 (c!299876 thiss!5824)))))

(declare-fun bs!408483 () Bool)

(assert (= bs!408483 d!562047))

(assert (=> bs!408483 m!2265707))

(assert (=> start!182766 d!562047))

(declare-fun d!562049 () Bool)

(assert (=> d!562049 (= (list!8217 thiss!5824) (list!8218 (c!299876 thiss!5824)))))

(declare-fun bs!408484 () Bool)

(assert (= bs!408484 d!562049))

(assert (=> bs!408484 m!2265703))

(assert (=> start!182766 d!562049))

(declare-fun d!562051 () Bool)

(declare-fun c!299900 () Bool)

(assert (=> d!562051 (= c!299900 ((_ is Node!6692) (c!299876 thiss!5824)))))

(declare-fun e!1174352 () Bool)

(assert (=> d!562051 (= (inv!26318 (c!299876 thiss!5824)) e!1174352)))

(declare-fun b!1837834 () Bool)

(declare-fun inv!26321 (Conc!6692) Bool)

(assert (=> b!1837834 (= e!1174352 (inv!26321 (c!299876 thiss!5824)))))

(declare-fun b!1837835 () Bool)

(declare-fun e!1174353 () Bool)

(assert (=> b!1837835 (= e!1174352 e!1174353)))

(declare-fun res!826068 () Bool)

(assert (=> b!1837835 (= res!826068 (not ((_ is Leaf!9741) (c!299876 thiss!5824))))))

(assert (=> b!1837835 (=> res!826068 e!1174353)))

(declare-fun b!1837836 () Bool)

(declare-fun inv!26322 (Conc!6692) Bool)

(assert (=> b!1837836 (= e!1174353 (inv!26322 (c!299876 thiss!5824)))))

(assert (= (and d!562051 c!299900) b!1837834))

(assert (= (and d!562051 (not c!299900)) b!1837835))

(assert (= (and b!1837835 (not res!826068)) b!1837836))

(declare-fun m!2265745 () Bool)

(assert (=> b!1837834 m!2265745))

(declare-fun m!2265747 () Bool)

(assert (=> b!1837836 m!2265747))

(assert (=> b!1837758 d!562051))

(declare-fun b!1837861 () Bool)

(declare-fun res!826082 () Bool)

(declare-fun e!1174363 () Bool)

(assert (=> b!1837861 (=> (not res!826082) (not e!1174363))))

(declare-fun isEmpty!12755 (Conc!6693) Bool)

(assert (=> b!1837861 (= res!826082 (not (isEmpty!12755 (left!16147 lt!713212))))))

(declare-fun b!1837862 () Bool)

(declare-fun res!826085 () Bool)

(assert (=> b!1837862 (=> (not res!826085) (not e!1174363))))

(assert (=> b!1837862 (= res!826085 (isBalanced!2082 (left!16147 lt!713212)))))

(declare-fun b!1837863 () Bool)

(declare-fun res!826086 () Bool)

(assert (=> b!1837863 (=> (not res!826086) (not e!1174363))))

(assert (=> b!1837863 (= res!826086 (isBalanced!2082 (right!16477 lt!713212)))))

(declare-fun b!1837864 () Bool)

(assert (=> b!1837864 (= e!1174363 (not (isEmpty!12755 (right!16477 lt!713212))))))

(declare-fun d!562055 () Bool)

(declare-fun res!826083 () Bool)

(declare-fun e!1174364 () Bool)

(assert (=> d!562055 (=> res!826083 e!1174364)))

(assert (=> d!562055 (= res!826083 (not ((_ is Node!6693) lt!713212)))))

(assert (=> d!562055 (= (isBalanced!2082 lt!713212) e!1174364)))

(declare-fun b!1837865 () Bool)

(assert (=> b!1837865 (= e!1174364 e!1174363)))

(declare-fun res!826084 () Bool)

(assert (=> b!1837865 (=> (not res!826084) (not e!1174363))))

(declare-fun height!1015 (Conc!6693) Int)

(assert (=> b!1837865 (= res!826084 (<= (- 1) (- (height!1015 (left!16147 lt!713212)) (height!1015 (right!16477 lt!713212)))))))

(declare-fun b!1837866 () Bool)

(declare-fun res!826081 () Bool)

(assert (=> b!1837866 (=> (not res!826081) (not e!1174363))))

(assert (=> b!1837866 (= res!826081 (<= (- (height!1015 (left!16147 lt!713212)) (height!1015 (right!16477 lt!713212))) 1))))

(assert (= (and d!562055 (not res!826083)) b!1837865))

(assert (= (and b!1837865 res!826084) b!1837866))

(assert (= (and b!1837866 res!826081) b!1837862))

(assert (= (and b!1837862 res!826085) b!1837863))

(assert (= (and b!1837863 res!826086) b!1837861))

(assert (= (and b!1837861 res!826082) b!1837864))

(declare-fun m!2265761 () Bool)

(assert (=> b!1837866 m!2265761))

(declare-fun m!2265763 () Bool)

(assert (=> b!1837866 m!2265763))

(declare-fun m!2265765 () Bool)

(assert (=> b!1837861 m!2265765))

(declare-fun m!2265767 () Bool)

(assert (=> b!1837864 m!2265767))

(declare-fun m!2265769 () Bool)

(assert (=> b!1837863 m!2265769))

(declare-fun m!2265771 () Bool)

(assert (=> b!1837862 m!2265771))

(assert (=> b!1837865 m!2265761))

(assert (=> b!1837865 m!2265763))

(assert (=> b!1837757 d!562055))

(declare-fun tp!519907 () Bool)

(declare-fun tp!519908 () Bool)

(declare-fun e!1174372 () Bool)

(declare-fun b!1837878 () Bool)

(assert (=> b!1837878 (= e!1174372 (and (inv!26318 (left!16146 (c!299876 thiss!5824))) tp!519908 (inv!26318 (right!16476 (c!299876 thiss!5824))) tp!519907))))

(declare-fun b!1837880 () Bool)

(declare-fun e!1174371 () Bool)

(declare-fun tp!519906 () Bool)

(assert (=> b!1837880 (= e!1174371 tp!519906)))

(declare-fun b!1837879 () Bool)

(declare-fun inv!26324 (IArray!13389) Bool)

(assert (=> b!1837879 (= e!1174372 (and (inv!26324 (xs!9568 (c!299876 thiss!5824))) e!1174371))))

(assert (=> b!1837758 (= tp!519890 (and (inv!26318 (c!299876 thiss!5824)) e!1174372))))

(assert (= (and b!1837758 ((_ is Node!6692) (c!299876 thiss!5824))) b!1837878))

(assert (= b!1837879 b!1837880))

(assert (= (and b!1837758 ((_ is Leaf!9741) (c!299876 thiss!5824))) b!1837879))

(declare-fun m!2265779 () Bool)

(assert (=> b!1837878 m!2265779))

(declare-fun m!2265781 () Bool)

(assert (=> b!1837878 m!2265781))

(declare-fun m!2265783 () Bool)

(assert (=> b!1837879 m!2265783))

(assert (=> b!1837758 m!2265671))

(declare-fun b_lambda!61039 () Bool)

(assert (= b_lambda!61033 (or (and start!182766 b_free!51489) b_lambda!61039)))

(check-sat (not b!1837864) (not b!1837865) (not b!1837800) (not d!562043) b_and!143609 (not b!1837861) (not b!1837863) (not b_next!52193) (not d!562045) (not b_lambda!61039) (not b!1837834) (not b!1837806) (not b!1837796) (not b!1837862) (not b!1837866) (not b!1837758) (not b!1837798) (not d!562047) (not b!1837836) (not b!1837878) (not d!562037) tp_is_empty!8191 (not d!562049) (not b!1837880) (not b!1837879))
(check-sat b_and!143609 (not b_next!52193))
