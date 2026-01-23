; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46294 () Bool)

(assert start!46294)

(declare-fun b!511747 () Bool)

(declare-fun e!305712 () Bool)

(declare-fun tp_is_empty!2439 () Bool)

(declare-fun tp!159091 () Bool)

(assert (=> b!511747 (= e!305712 (and tp_is_empty!2439 tp!159091))))

(declare-fun b!511749 () Bool)

(declare-fun e!305710 () Bool)

(declare-datatypes ((B!1053 0))(
  ( (B!1054 (val!1668 Int)) )
))
(declare-datatypes ((List!4641 0))(
  ( (Nil!4631) (Cons!4631 (h!10028 B!1053) (t!73159 List!4641)) )
))
(declare-fun l1!1060 () List!4641)

(declare-fun ListPrimitiveSize!48 (List!4641) Int)

(assert (=> b!511749 (= e!305710 (>= (ListPrimitiveSize!48 (t!73159 l1!1060)) (ListPrimitiveSize!48 l1!1060)))))

(declare-fun b!511750 () Bool)

(declare-fun e!305709 () Bool)

(declare-fun tp!159090 () Bool)

(assert (=> b!511750 (= e!305709 (and tp_is_empty!2439 tp!159090))))

(declare-fun b!511751 () Bool)

(declare-fun e!305711 () Bool)

(declare-fun tp!159089 () Bool)

(assert (=> b!511751 (= e!305711 (and tp_is_empty!2439 tp!159089))))

(declare-fun b!511752 () Bool)

(declare-fun res!217206 () Bool)

(assert (=> b!511752 (=> (not res!217206) (not e!305710))))

(declare-fun l2!1029 () List!4641)

(declare-fun tot!35 () List!4641)

(declare-fun lt!212065 () List!4641)

(declare-fun ++!1353 (List!4641 List!4641) List!4641)

(declare-fun tail!690 (List!4641) List!4641)

(assert (=> b!511752 (= res!217206 (= (++!1353 (++!1353 (t!73159 l1!1060) lt!212065) l2!1029) (tail!690 tot!35)))))

(declare-fun res!217205 () Bool)

(assert (=> start!46294 (=> (not res!217205) (not e!305710))))

(assert (=> start!46294 (= res!217205 (= (++!1353 (++!1353 l1!1060 lt!212065) l2!1029) tot!35))))

(declare-fun elmt!142 () B!1053)

(assert (=> start!46294 (= lt!212065 (Cons!4631 elmt!142 Nil!4631))))

(assert (=> start!46294 e!305710))

(assert (=> start!46294 tp_is_empty!2439))

(assert (=> start!46294 e!305712))

(assert (=> start!46294 e!305711))

(assert (=> start!46294 e!305709))

(declare-fun b!511748 () Bool)

(declare-fun res!217207 () Bool)

(assert (=> b!511748 (=> (not res!217207) (not e!305710))))

(get-info :version)

(assert (=> b!511748 (= res!217207 ((_ is Cons!4631) l1!1060))))

(assert (= (and start!46294 res!217205) b!511748))

(assert (= (and b!511748 res!217207) b!511752))

(assert (= (and b!511752 res!217206) b!511749))

(assert (= (and start!46294 ((_ is Cons!4631) l2!1029)) b!511747))

(assert (= (and start!46294 ((_ is Cons!4631) l1!1060)) b!511751))

(assert (= (and start!46294 ((_ is Cons!4631) tot!35)) b!511750))

(declare-fun m!758525 () Bool)

(assert (=> b!511749 m!758525))

(declare-fun m!758527 () Bool)

(assert (=> b!511749 m!758527))

(declare-fun m!758529 () Bool)

(assert (=> b!511752 m!758529))

(assert (=> b!511752 m!758529))

(declare-fun m!758531 () Bool)

(assert (=> b!511752 m!758531))

(declare-fun m!758533 () Bool)

(assert (=> b!511752 m!758533))

(declare-fun m!758535 () Bool)

(assert (=> start!46294 m!758535))

(assert (=> start!46294 m!758535))

(declare-fun m!758537 () Bool)

(assert (=> start!46294 m!758537))

(check-sat (not b!511747) (not b!511751) (not b!511750) tp_is_empty!2439 (not b!511749) (not start!46294) (not b!511752))
(check-sat)
(get-model)

(declare-fun b!511778 () Bool)

(declare-fun e!305726 () List!4641)

(assert (=> b!511778 (= e!305726 (Cons!4631 (h!10028 (++!1353 (t!73159 l1!1060) lt!212065)) (++!1353 (t!73159 (++!1353 (t!73159 l1!1060) lt!212065)) l2!1029)))))

(declare-fun d!183945 () Bool)

(declare-fun e!305725 () Bool)

(assert (=> d!183945 e!305725))

(declare-fun res!217216 () Bool)

(assert (=> d!183945 (=> (not res!217216) (not e!305725))))

(declare-fun lt!212074 () List!4641)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!800 (List!4641) (InoxSet B!1053))

(assert (=> d!183945 (= res!217216 (= (content!800 lt!212074) ((_ map or) (content!800 (++!1353 (t!73159 l1!1060) lt!212065)) (content!800 l2!1029))))))

(assert (=> d!183945 (= lt!212074 e!305726)))

(declare-fun c!99488 () Bool)

(assert (=> d!183945 (= c!99488 ((_ is Nil!4631) (++!1353 (t!73159 l1!1060) lt!212065)))))

(assert (=> d!183945 (= (++!1353 (++!1353 (t!73159 l1!1060) lt!212065) l2!1029) lt!212074)))

(declare-fun b!511779 () Bool)

(declare-fun res!217217 () Bool)

(assert (=> b!511779 (=> (not res!217217) (not e!305725))))

(declare-fun size!3732 (List!4641) Int)

(assert (=> b!511779 (= res!217217 (= (size!3732 lt!212074) (+ (size!3732 (++!1353 (t!73159 l1!1060) lt!212065)) (size!3732 l2!1029))))))

(declare-fun b!511780 () Bool)

(assert (=> b!511780 (= e!305725 (or (not (= l2!1029 Nil!4631)) (= lt!212074 (++!1353 (t!73159 l1!1060) lt!212065))))))

(declare-fun b!511777 () Bool)

(assert (=> b!511777 (= e!305726 l2!1029)))

(assert (= (and d!183945 c!99488) b!511777))

(assert (= (and d!183945 (not c!99488)) b!511778))

(assert (= (and d!183945 res!217216) b!511779))

(assert (= (and b!511779 res!217217) b!511780))

(declare-fun m!758541 () Bool)

(assert (=> b!511778 m!758541))

(declare-fun m!758543 () Bool)

(assert (=> d!183945 m!758543))

(assert (=> d!183945 m!758529))

(declare-fun m!758545 () Bool)

(assert (=> d!183945 m!758545))

(declare-fun m!758547 () Bool)

(assert (=> d!183945 m!758547))

(declare-fun m!758549 () Bool)

(assert (=> b!511779 m!758549))

(assert (=> b!511779 m!758529))

(declare-fun m!758551 () Bool)

(assert (=> b!511779 m!758551))

(declare-fun m!758553 () Bool)

(assert (=> b!511779 m!758553))

(assert (=> b!511752 d!183945))

(declare-fun b!511786 () Bool)

(declare-fun e!305730 () List!4641)

(assert (=> b!511786 (= e!305730 (Cons!4631 (h!10028 (t!73159 l1!1060)) (++!1353 (t!73159 (t!73159 l1!1060)) lt!212065)))))

(declare-fun d!183951 () Bool)

(declare-fun e!305729 () Bool)

(assert (=> d!183951 e!305729))

(declare-fun res!217220 () Bool)

(assert (=> d!183951 (=> (not res!217220) (not e!305729))))

(declare-fun lt!212076 () List!4641)

(assert (=> d!183951 (= res!217220 (= (content!800 lt!212076) ((_ map or) (content!800 (t!73159 l1!1060)) (content!800 lt!212065))))))

(assert (=> d!183951 (= lt!212076 e!305730)))

(declare-fun c!99490 () Bool)

(assert (=> d!183951 (= c!99490 ((_ is Nil!4631) (t!73159 l1!1060)))))

(assert (=> d!183951 (= (++!1353 (t!73159 l1!1060) lt!212065) lt!212076)))

(declare-fun b!511787 () Bool)

(declare-fun res!217221 () Bool)

(assert (=> b!511787 (=> (not res!217221) (not e!305729))))

(assert (=> b!511787 (= res!217221 (= (size!3732 lt!212076) (+ (size!3732 (t!73159 l1!1060)) (size!3732 lt!212065))))))

(declare-fun b!511788 () Bool)

(assert (=> b!511788 (= e!305729 (or (not (= lt!212065 Nil!4631)) (= lt!212076 (t!73159 l1!1060))))))

(declare-fun b!511785 () Bool)

(assert (=> b!511785 (= e!305730 lt!212065)))

(assert (= (and d!183951 c!99490) b!511785))

(assert (= (and d!183951 (not c!99490)) b!511786))

(assert (= (and d!183951 res!217220) b!511787))

(assert (= (and b!511787 res!217221) b!511788))

(declare-fun m!758569 () Bool)

(assert (=> b!511786 m!758569))

(declare-fun m!758571 () Bool)

(assert (=> d!183951 m!758571))

(declare-fun m!758573 () Bool)

(assert (=> d!183951 m!758573))

(declare-fun m!758575 () Bool)

(assert (=> d!183951 m!758575))

(declare-fun m!758577 () Bool)

(assert (=> b!511787 m!758577))

(declare-fun m!758579 () Bool)

(assert (=> b!511787 m!758579))

(declare-fun m!758581 () Bool)

(assert (=> b!511787 m!758581))

(assert (=> b!511752 d!183951))

(declare-fun d!183955 () Bool)

(assert (=> d!183955 (= (tail!690 tot!35) (t!73159 tot!35))))

(assert (=> b!511752 d!183955))

(declare-fun b!511798 () Bool)

(declare-fun e!305736 () List!4641)

(assert (=> b!511798 (= e!305736 (Cons!4631 (h!10028 (++!1353 l1!1060 lt!212065)) (++!1353 (t!73159 (++!1353 l1!1060 lt!212065)) l2!1029)))))

(declare-fun d!183959 () Bool)

(declare-fun e!305735 () Bool)

(assert (=> d!183959 e!305735))

(declare-fun res!217226 () Bool)

(assert (=> d!183959 (=> (not res!217226) (not e!305735))))

(declare-fun lt!212079 () List!4641)

(assert (=> d!183959 (= res!217226 (= (content!800 lt!212079) ((_ map or) (content!800 (++!1353 l1!1060 lt!212065)) (content!800 l2!1029))))))

(assert (=> d!183959 (= lt!212079 e!305736)))

(declare-fun c!99493 () Bool)

(assert (=> d!183959 (= c!99493 ((_ is Nil!4631) (++!1353 l1!1060 lt!212065)))))

(assert (=> d!183959 (= (++!1353 (++!1353 l1!1060 lt!212065) l2!1029) lt!212079)))

(declare-fun b!511799 () Bool)

(declare-fun res!217227 () Bool)

(assert (=> b!511799 (=> (not res!217227) (not e!305735))))

(assert (=> b!511799 (= res!217227 (= (size!3732 lt!212079) (+ (size!3732 (++!1353 l1!1060 lt!212065)) (size!3732 l2!1029))))))

(declare-fun b!511800 () Bool)

(assert (=> b!511800 (= e!305735 (or (not (= l2!1029 Nil!4631)) (= lt!212079 (++!1353 l1!1060 lt!212065))))))

(declare-fun b!511797 () Bool)

(assert (=> b!511797 (= e!305736 l2!1029)))

(assert (= (and d!183959 c!99493) b!511797))

(assert (= (and d!183959 (not c!99493)) b!511798))

(assert (= (and d!183959 res!217226) b!511799))

(assert (= (and b!511799 res!217227) b!511800))

(declare-fun m!758605 () Bool)

(assert (=> b!511798 m!758605))

(declare-fun m!758607 () Bool)

(assert (=> d!183959 m!758607))

(assert (=> d!183959 m!758535))

(declare-fun m!758609 () Bool)

(assert (=> d!183959 m!758609))

(assert (=> d!183959 m!758547))

(declare-fun m!758611 () Bool)

(assert (=> b!511799 m!758611))

(assert (=> b!511799 m!758535))

(declare-fun m!758613 () Bool)

(assert (=> b!511799 m!758613))

(assert (=> b!511799 m!758553))

(assert (=> start!46294 d!183959))

(declare-fun b!511806 () Bool)

(declare-fun e!305740 () List!4641)

(assert (=> b!511806 (= e!305740 (Cons!4631 (h!10028 l1!1060) (++!1353 (t!73159 l1!1060) lt!212065)))))

(declare-fun d!183963 () Bool)

(declare-fun e!305739 () Bool)

(assert (=> d!183963 e!305739))

(declare-fun res!217230 () Bool)

(assert (=> d!183963 (=> (not res!217230) (not e!305739))))

(declare-fun lt!212081 () List!4641)

(assert (=> d!183963 (= res!217230 (= (content!800 lt!212081) ((_ map or) (content!800 l1!1060) (content!800 lt!212065))))))

(assert (=> d!183963 (= lt!212081 e!305740)))

(declare-fun c!99495 () Bool)

(assert (=> d!183963 (= c!99495 ((_ is Nil!4631) l1!1060))))

(assert (=> d!183963 (= (++!1353 l1!1060 lt!212065) lt!212081)))

(declare-fun b!511807 () Bool)

(declare-fun res!217231 () Bool)

(assert (=> b!511807 (=> (not res!217231) (not e!305739))))

(assert (=> b!511807 (= res!217231 (= (size!3732 lt!212081) (+ (size!3732 l1!1060) (size!3732 lt!212065))))))

(declare-fun b!511808 () Bool)

(assert (=> b!511808 (= e!305739 (or (not (= lt!212065 Nil!4631)) (= lt!212081 l1!1060)))))

(declare-fun b!511805 () Bool)

(assert (=> b!511805 (= e!305740 lt!212065)))

(assert (= (and d!183963 c!99495) b!511805))

(assert (= (and d!183963 (not c!99495)) b!511806))

(assert (= (and d!183963 res!217230) b!511807))

(assert (= (and b!511807 res!217231) b!511808))

(assert (=> b!511806 m!758529))

(declare-fun m!758625 () Bool)

(assert (=> d!183963 m!758625))

(declare-fun m!758627 () Bool)

(assert (=> d!183963 m!758627))

(assert (=> d!183963 m!758575))

(declare-fun m!758629 () Bool)

(assert (=> b!511807 m!758629))

(declare-fun m!758631 () Bool)

(assert (=> b!511807 m!758631))

(assert (=> b!511807 m!758581))

(assert (=> start!46294 d!183963))

(declare-fun d!183967 () Bool)

(declare-fun lt!212084 () Int)

(assert (=> d!183967 (>= lt!212084 0)))

(declare-fun e!305748 () Int)

(assert (=> d!183967 (= lt!212084 e!305748)))

(declare-fun c!99498 () Bool)

(assert (=> d!183967 (= c!99498 ((_ is Nil!4631) (t!73159 l1!1060)))))

(assert (=> d!183967 (= (ListPrimitiveSize!48 (t!73159 l1!1060)) lt!212084)))

(declare-fun b!511820 () Bool)

(assert (=> b!511820 (= e!305748 0)))

(declare-fun b!511821 () Bool)

(assert (=> b!511821 (= e!305748 (+ 1 (ListPrimitiveSize!48 (t!73159 (t!73159 l1!1060)))))))

(assert (= (and d!183967 c!99498) b!511820))

(assert (= (and d!183967 (not c!99498)) b!511821))

(declare-fun m!758633 () Bool)

(assert (=> b!511821 m!758633))

(assert (=> b!511749 d!183967))

(declare-fun d!183969 () Bool)

(declare-fun lt!212085 () Int)

(assert (=> d!183969 (>= lt!212085 0)))

(declare-fun e!305749 () Int)

(assert (=> d!183969 (= lt!212085 e!305749)))

(declare-fun c!99499 () Bool)

(assert (=> d!183969 (= c!99499 ((_ is Nil!4631) l1!1060))))

(assert (=> d!183969 (= (ListPrimitiveSize!48 l1!1060) lt!212085)))

(declare-fun b!511822 () Bool)

(assert (=> b!511822 (= e!305749 0)))

(declare-fun b!511823 () Bool)

(assert (=> b!511823 (= e!305749 (+ 1 (ListPrimitiveSize!48 (t!73159 l1!1060))))))

(assert (= (and d!183969 c!99499) b!511822))

(assert (= (and d!183969 (not c!99499)) b!511823))

(assert (=> b!511823 m!758525))

(assert (=> b!511749 d!183969))

(declare-fun b!511828 () Bool)

(declare-fun e!305752 () Bool)

(declare-fun tp!159099 () Bool)

(assert (=> b!511828 (= e!305752 (and tp_is_empty!2439 tp!159099))))

(assert (=> b!511751 (= tp!159089 e!305752)))

(assert (= (and b!511751 ((_ is Cons!4631) (t!73159 l1!1060))) b!511828))

(declare-fun b!511829 () Bool)

(declare-fun e!305753 () Bool)

(declare-fun tp!159100 () Bool)

(assert (=> b!511829 (= e!305753 (and tp_is_empty!2439 tp!159100))))

(assert (=> b!511747 (= tp!159091 e!305753)))

(assert (= (and b!511747 ((_ is Cons!4631) (t!73159 l2!1029))) b!511829))

(declare-fun b!511830 () Bool)

(declare-fun e!305754 () Bool)

(declare-fun tp!159101 () Bool)

(assert (=> b!511830 (= e!305754 (and tp_is_empty!2439 tp!159101))))

(assert (=> b!511750 (= tp!159090 e!305754)))

(assert (= (and b!511750 ((_ is Cons!4631) (t!73159 tot!35))) b!511830))

(check-sat (not b!511806) (not b!511821) (not d!183951) (not b!511779) (not d!183959) (not b!511823) (not b!511786) (not d!183945) (not b!511830) (not b!511787) (not d!183963) (not b!511829) (not b!511778) (not b!511798) (not b!511828) (not b!511799) (not b!511807) tp_is_empty!2439)
(check-sat)
