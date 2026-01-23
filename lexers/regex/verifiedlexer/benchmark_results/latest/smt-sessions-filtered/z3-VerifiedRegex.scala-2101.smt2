; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106280 () Bool)

(assert start!106280)

(declare-fun b!1194935 () Bool)

(declare-fun e!767653 () Bool)

(declare-fun tp!340423 () Bool)

(assert (=> b!1194935 (= e!767653 tp!340423)))

(declare-fun b!1194936 () Bool)

(declare-fun res!539342 () Bool)

(declare-fun e!767654 () Bool)

(assert (=> b!1194936 (=> (not res!539342) (not e!767654))))

(declare-datatypes ((T!21628 0))(
  ( (T!21629 (val!3866 Int)) )
))
(declare-datatypes ((List!12045 0))(
  ( (Nil!12021) (Cons!12021 (h!17422 T!21628) (t!112337 List!12045)) )
))
(declare-datatypes ((IArray!7913 0))(
  ( (IArray!7914 (innerList!4014 List!12045)) )
))
(declare-datatypes ((Conc!3954 0))(
  ( (Node!3954 (left!10479 Conc!3954) (right!10809 Conc!3954) (csize!8138 Int) (cheight!4165 Int)) (Leaf!6056 (xs!6661 IArray!7913) (csize!8139 Int)) (Empty!3954) )
))
(declare-fun t!4115 () Conc!3954)

(declare-fun isBalanced!1139 (Conc!3954) Bool)

(assert (=> b!1194936 (= res!539342 (isBalanced!1139 t!4115))))

(declare-fun b!1194937 () Bool)

(declare-fun res!539341 () Bool)

(assert (=> b!1194937 (=> (not res!539341) (not e!767654))))

(declare-fun until!31 () Int)

(declare-fun size!9525 (Conc!3954) Int)

(assert (=> b!1194937 (= res!539341 (<= until!31 (size!9525 t!4115)))))

(declare-fun b!1194938 () Bool)

(declare-fun ConcPrimitiveSize!2 (Conc!3954) Int)

(assert (=> b!1194938 (= e!767654 (< (ConcPrimitiveSize!2 t!4115) 0))))

(declare-fun b!1194939 () Bool)

(declare-fun e!767652 () Bool)

(declare-fun inv!16002 (IArray!7913) Bool)

(assert (=> b!1194939 (= e!767652 (and (inv!16002 (xs!6661 t!4115)) e!767653))))

(declare-fun tp!340425 () Bool)

(declare-fun tp!340424 () Bool)

(declare-fun b!1194940 () Bool)

(declare-fun inv!16003 (Conc!3954) Bool)

(assert (=> b!1194940 (= e!767652 (and (inv!16003 (left!10479 t!4115)) tp!340424 (inv!16003 (right!10809 t!4115)) tp!340425))))

(declare-fun res!539340 () Bool)

(assert (=> start!106280 (=> (not res!539340) (not e!767654))))

(declare-fun from!553 () Int)

(assert (=> start!106280 (= res!539340 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106280 e!767654))

(assert (=> start!106280 true))

(assert (=> start!106280 (and (inv!16003 t!4115) e!767652)))

(assert (= (and start!106280 res!539340) b!1194937))

(assert (= (and b!1194937 res!539341) b!1194936))

(assert (= (and b!1194936 res!539342) b!1194938))

(get-info :version)

(assert (= (and start!106280 ((_ is Node!3954) t!4115)) b!1194940))

(assert (= b!1194939 b!1194935))

(assert (= (and start!106280 ((_ is Leaf!6056) t!4115)) b!1194939))

(declare-fun m!1369525 () Bool)

(assert (=> b!1194936 m!1369525))

(declare-fun m!1369527 () Bool)

(assert (=> b!1194938 m!1369527))

(declare-fun m!1369529 () Bool)

(assert (=> b!1194940 m!1369529))

(declare-fun m!1369531 () Bool)

(assert (=> b!1194940 m!1369531))

(declare-fun m!1369533 () Bool)

(assert (=> start!106280 m!1369533))

(declare-fun m!1369535 () Bool)

(assert (=> b!1194937 m!1369535))

(declare-fun m!1369537 () Bool)

(assert (=> b!1194939 m!1369537))

(check-sat (not b!1194940) (not b!1194938) (not b!1194937) (not start!106280) (not b!1194935) (not b!1194936) (not b!1194939))
(check-sat)
(get-model)

(declare-fun d!341074 () Bool)

(declare-fun res!539365 () Bool)

(declare-fun e!767675 () Bool)

(assert (=> d!341074 (=> res!539365 e!767675)))

(assert (=> d!341074 (= res!539365 (not ((_ is Node!3954) t!4115)))))

(assert (=> d!341074 (= (isBalanced!1139 t!4115) e!767675)))

(declare-fun b!1194980 () Bool)

(declare-fun e!767676 () Bool)

(assert (=> b!1194980 (= e!767675 e!767676)))

(declare-fun res!539362 () Bool)

(assert (=> b!1194980 (=> (not res!539362) (not e!767676))))

(declare-fun height!552 (Conc!3954) Int)

(assert (=> b!1194980 (= res!539362 (<= (- 1) (- (height!552 (left!10479 t!4115)) (height!552 (right!10809 t!4115)))))))

(declare-fun b!1194981 () Bool)

(declare-fun res!539361 () Bool)

(assert (=> b!1194981 (=> (not res!539361) (not e!767676))))

(assert (=> b!1194981 (= res!539361 (isBalanced!1139 (right!10809 t!4115)))))

(declare-fun b!1194982 () Bool)

(declare-fun res!539364 () Bool)

(assert (=> b!1194982 (=> (not res!539364) (not e!767676))))

(assert (=> b!1194982 (= res!539364 (<= (- (height!552 (left!10479 t!4115)) (height!552 (right!10809 t!4115))) 1))))

(declare-fun b!1194983 () Bool)

(declare-fun res!539363 () Bool)

(assert (=> b!1194983 (=> (not res!539363) (not e!767676))))

(assert (=> b!1194983 (= res!539363 (isBalanced!1139 (left!10479 t!4115)))))

(declare-fun b!1194984 () Bool)

(declare-fun isEmpty!7233 (Conc!3954) Bool)

(assert (=> b!1194984 (= e!767676 (not (isEmpty!7233 (right!10809 t!4115))))))

(declare-fun b!1194985 () Bool)

(declare-fun res!539360 () Bool)

(assert (=> b!1194985 (=> (not res!539360) (not e!767676))))

(assert (=> b!1194985 (= res!539360 (not (isEmpty!7233 (left!10479 t!4115))))))

(assert (= (and d!341074 (not res!539365)) b!1194980))

(assert (= (and b!1194980 res!539362) b!1194982))

(assert (= (and b!1194982 res!539364) b!1194983))

(assert (= (and b!1194983 res!539363) b!1194981))

(assert (= (and b!1194981 res!539361) b!1194985))

(assert (= (and b!1194985 res!539360) b!1194984))

(declare-fun m!1369567 () Bool)

(assert (=> b!1194983 m!1369567))

(declare-fun m!1369569 () Bool)

(assert (=> b!1194980 m!1369569))

(declare-fun m!1369571 () Bool)

(assert (=> b!1194980 m!1369571))

(declare-fun m!1369573 () Bool)

(assert (=> b!1194984 m!1369573))

(declare-fun m!1369575 () Bool)

(assert (=> b!1194981 m!1369575))

(assert (=> b!1194982 m!1369569))

(assert (=> b!1194982 m!1369571))

(declare-fun m!1369577 () Bool)

(assert (=> b!1194985 m!1369577))

(assert (=> b!1194936 d!341074))

(declare-fun d!341088 () Bool)

(declare-fun c!198660 () Bool)

(assert (=> d!341088 (= c!198660 ((_ is Node!3954) t!4115))))

(declare-fun e!767698 () Bool)

(assert (=> d!341088 (= (inv!16003 t!4115) e!767698)))

(declare-fun b!1195029 () Bool)

(declare-fun inv!16006 (Conc!3954) Bool)

(assert (=> b!1195029 (= e!767698 (inv!16006 t!4115))))

(declare-fun b!1195030 () Bool)

(declare-fun e!767699 () Bool)

(assert (=> b!1195030 (= e!767698 e!767699)))

(declare-fun res!539386 () Bool)

(assert (=> b!1195030 (= res!539386 (not ((_ is Leaf!6056) t!4115)))))

(assert (=> b!1195030 (=> res!539386 e!767699)))

(declare-fun b!1195031 () Bool)

(declare-fun inv!16007 (Conc!3954) Bool)

(assert (=> b!1195031 (= e!767699 (inv!16007 t!4115))))

(assert (= (and d!341088 c!198660) b!1195029))

(assert (= (and d!341088 (not c!198660)) b!1195030))

(assert (= (and b!1195030 (not res!539386)) b!1195031))

(declare-fun m!1369603 () Bool)

(assert (=> b!1195029 m!1369603))

(declare-fun m!1369605 () Bool)

(assert (=> b!1195031 m!1369605))

(assert (=> start!106280 d!341088))

(declare-fun b!1195040 () Bool)

(declare-fun e!767704 () Int)

(assert (=> b!1195040 (= e!767704 0)))

(declare-fun b!1195041 () Bool)

(declare-fun call!83228 () Int)

(declare-fun IArrayPrimitiveSize!2 (IArray!7913) Int)

(assert (=> b!1195041 (= e!767704 (+ 1 (IArrayPrimitiveSize!2 (xs!6661 t!4115)) call!83228))))

(declare-fun b!1195042 () Bool)

(declare-fun e!767705 () Int)

(assert (=> b!1195042 (= e!767705 e!767704)))

(declare-fun c!198665 () Bool)

(assert (=> b!1195042 (= c!198665 ((_ is Leaf!6056) t!4115))))

(declare-fun b!1195043 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!1195043 (= e!767705 (+ 1 (ConcPrimitiveSize!2 (left!10479 t!4115)) (ConcPrimitiveSize!2 (right!10809 t!4115)) (BigIntAbs!0 (csize!8138 t!4115)) call!83228))))

(declare-fun bm!83223 () Bool)

(declare-fun c!198666 () Bool)

(assert (=> bm!83223 (= call!83228 (BigIntAbs!0 (ite c!198666 (cheight!4165 t!4115) (csize!8139 t!4115))))))

(declare-fun d!341090 () Bool)

(declare-fun lt!410041 () Int)

(assert (=> d!341090 (>= lt!410041 0)))

(assert (=> d!341090 (= lt!410041 e!767705)))

(assert (=> d!341090 (= c!198666 ((_ is Node!3954) t!4115))))

(assert (=> d!341090 (= (ConcPrimitiveSize!2 t!4115) lt!410041)))

(assert (= (and d!341090 c!198666) b!1195043))

(assert (= (and d!341090 (not c!198666)) b!1195042))

(assert (= (and b!1195042 c!198665) b!1195041))

(assert (= (and b!1195042 (not c!198665)) b!1195040))

(assert (= (or b!1195043 b!1195041) bm!83223))

(declare-fun m!1369607 () Bool)

(assert (=> b!1195041 m!1369607))

(declare-fun m!1369609 () Bool)

(assert (=> b!1195043 m!1369609))

(declare-fun m!1369611 () Bool)

(assert (=> b!1195043 m!1369611))

(declare-fun m!1369613 () Bool)

(assert (=> b!1195043 m!1369613))

(declare-fun m!1369615 () Bool)

(assert (=> bm!83223 m!1369615))

(assert (=> b!1194938 d!341090))

(declare-fun d!341092 () Bool)

(declare-fun lt!410044 () Int)

(declare-fun size!9527 (List!12045) Int)

(declare-fun list!4451 (Conc!3954) List!12045)

(assert (=> d!341092 (= lt!410044 (size!9527 (list!4451 t!4115)))))

(assert (=> d!341092 (= lt!410044 (ite ((_ is Empty!3954) t!4115) 0 (ite ((_ is Leaf!6056) t!4115) (csize!8139 t!4115) (csize!8138 t!4115))))))

(assert (=> d!341092 (= (size!9525 t!4115) lt!410044)))

(declare-fun bs!288021 () Bool)

(assert (= bs!288021 d!341092))

(declare-fun m!1369617 () Bool)

(assert (=> bs!288021 m!1369617))

(assert (=> bs!288021 m!1369617))

(declare-fun m!1369619 () Bool)

(assert (=> bs!288021 m!1369619))

(assert (=> b!1194937 d!341092))

(declare-fun d!341094 () Bool)

(assert (=> d!341094 (= (inv!16002 (xs!6661 t!4115)) (<= (size!9527 (innerList!4014 (xs!6661 t!4115))) 2147483647))))

(declare-fun bs!288022 () Bool)

(assert (= bs!288022 d!341094))

(declare-fun m!1369621 () Bool)

(assert (=> bs!288022 m!1369621))

(assert (=> b!1194939 d!341094))

(declare-fun d!341096 () Bool)

(declare-fun c!198667 () Bool)

(assert (=> d!341096 (= c!198667 ((_ is Node!3954) (left!10479 t!4115)))))

(declare-fun e!767706 () Bool)

(assert (=> d!341096 (= (inv!16003 (left!10479 t!4115)) e!767706)))

(declare-fun b!1195044 () Bool)

(assert (=> b!1195044 (= e!767706 (inv!16006 (left!10479 t!4115)))))

(declare-fun b!1195045 () Bool)

(declare-fun e!767707 () Bool)

(assert (=> b!1195045 (= e!767706 e!767707)))

(declare-fun res!539387 () Bool)

(assert (=> b!1195045 (= res!539387 (not ((_ is Leaf!6056) (left!10479 t!4115))))))

(assert (=> b!1195045 (=> res!539387 e!767707)))

(declare-fun b!1195046 () Bool)

(assert (=> b!1195046 (= e!767707 (inv!16007 (left!10479 t!4115)))))

(assert (= (and d!341096 c!198667) b!1195044))

(assert (= (and d!341096 (not c!198667)) b!1195045))

(assert (= (and b!1195045 (not res!539387)) b!1195046))

(declare-fun m!1369623 () Bool)

(assert (=> b!1195044 m!1369623))

(declare-fun m!1369625 () Bool)

(assert (=> b!1195046 m!1369625))

(assert (=> b!1194940 d!341096))

(declare-fun d!341098 () Bool)

(declare-fun c!198668 () Bool)

(assert (=> d!341098 (= c!198668 ((_ is Node!3954) (right!10809 t!4115)))))

(declare-fun e!767708 () Bool)

(assert (=> d!341098 (= (inv!16003 (right!10809 t!4115)) e!767708)))

(declare-fun b!1195047 () Bool)

(assert (=> b!1195047 (= e!767708 (inv!16006 (right!10809 t!4115)))))

(declare-fun b!1195048 () Bool)

(declare-fun e!767709 () Bool)

(assert (=> b!1195048 (= e!767708 e!767709)))

(declare-fun res!539388 () Bool)

(assert (=> b!1195048 (= res!539388 (not ((_ is Leaf!6056) (right!10809 t!4115))))))

(assert (=> b!1195048 (=> res!539388 e!767709)))

(declare-fun b!1195049 () Bool)

(assert (=> b!1195049 (= e!767709 (inv!16007 (right!10809 t!4115)))))

(assert (= (and d!341098 c!198668) b!1195047))

(assert (= (and d!341098 (not c!198668)) b!1195048))

(assert (= (and b!1195048 (not res!539388)) b!1195049))

(declare-fun m!1369627 () Bool)

(assert (=> b!1195047 m!1369627))

(declare-fun m!1369629 () Bool)

(assert (=> b!1195049 m!1369629))

(assert (=> b!1194940 d!341098))

(declare-fun b!1195054 () Bool)

(declare-fun e!767712 () Bool)

(declare-fun tp_is_empty!5943 () Bool)

(declare-fun tp!340443 () Bool)

(assert (=> b!1195054 (= e!767712 (and tp_is_empty!5943 tp!340443))))

(assert (=> b!1194935 (= tp!340423 e!767712)))

(assert (= (and b!1194935 ((_ is Cons!12021) (innerList!4014 (xs!6661 t!4115)))) b!1195054))

(declare-fun tp!340452 () Bool)

(declare-fun b!1195063 () Bool)

(declare-fun e!767718 () Bool)

(declare-fun tp!340450 () Bool)

(assert (=> b!1195063 (= e!767718 (and (inv!16003 (left!10479 (left!10479 t!4115))) tp!340450 (inv!16003 (right!10809 (left!10479 t!4115))) tp!340452))))

(declare-fun b!1195065 () Bool)

(declare-fun e!767717 () Bool)

(declare-fun tp!340451 () Bool)

(assert (=> b!1195065 (= e!767717 tp!340451)))

(declare-fun b!1195064 () Bool)

(assert (=> b!1195064 (= e!767718 (and (inv!16002 (xs!6661 (left!10479 t!4115))) e!767717))))

(assert (=> b!1194940 (= tp!340424 (and (inv!16003 (left!10479 t!4115)) e!767718))))

(assert (= (and b!1194940 ((_ is Node!3954) (left!10479 t!4115))) b!1195063))

(assert (= b!1195064 b!1195065))

(assert (= (and b!1194940 ((_ is Leaf!6056) (left!10479 t!4115))) b!1195064))

(declare-fun m!1369631 () Bool)

(assert (=> b!1195063 m!1369631))

(declare-fun m!1369633 () Bool)

(assert (=> b!1195063 m!1369633))

(declare-fun m!1369635 () Bool)

(assert (=> b!1195064 m!1369635))

(assert (=> b!1194940 m!1369529))

(declare-fun tp!340453 () Bool)

(declare-fun e!767720 () Bool)

(declare-fun tp!340455 () Bool)

(declare-fun b!1195066 () Bool)

(assert (=> b!1195066 (= e!767720 (and (inv!16003 (left!10479 (right!10809 t!4115))) tp!340453 (inv!16003 (right!10809 (right!10809 t!4115))) tp!340455))))

(declare-fun b!1195068 () Bool)

(declare-fun e!767719 () Bool)

(declare-fun tp!340454 () Bool)

(assert (=> b!1195068 (= e!767719 tp!340454)))

(declare-fun b!1195067 () Bool)

(assert (=> b!1195067 (= e!767720 (and (inv!16002 (xs!6661 (right!10809 t!4115))) e!767719))))

(assert (=> b!1194940 (= tp!340425 (and (inv!16003 (right!10809 t!4115)) e!767720))))

(assert (= (and b!1194940 ((_ is Node!3954) (right!10809 t!4115))) b!1195066))

(assert (= b!1195067 b!1195068))

(assert (= (and b!1194940 ((_ is Leaf!6056) (right!10809 t!4115))) b!1195067))

(declare-fun m!1369637 () Bool)

(assert (=> b!1195066 m!1369637))

(declare-fun m!1369639 () Bool)

(assert (=> b!1195066 m!1369639))

(declare-fun m!1369641 () Bool)

(assert (=> b!1195067 m!1369641))

(assert (=> b!1194940 m!1369531))

(check-sat (not b!1195047) (not b!1194940) (not b!1194980) (not b!1195029) (not b!1194984) (not b!1195049) (not bm!83223) (not b!1195067) tp_is_empty!5943 (not d!341094) (not b!1195031) (not b!1195054) (not b!1195043) (not b!1195066) (not b!1195064) (not d!341092) (not b!1194981) (not b!1195044) (not b!1195046) (not b!1195068) (not b!1194982) (not b!1195065) (not b!1195063) (not b!1195041) (not b!1194985) (not b!1194983))
(check-sat)
