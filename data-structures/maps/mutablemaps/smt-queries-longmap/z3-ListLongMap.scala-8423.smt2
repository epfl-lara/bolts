; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102622 () Bool)

(assert start!102622)

(declare-fun b!1233353 () Bool)

(declare-fun res!821691 () Bool)

(declare-fun e!699670 () Bool)

(assert (=> b!1233353 (=> res!821691 e!699670)))

(declare-datatypes ((List!27304 0))(
  ( (Nil!27301) (Cons!27300 (h!28509 (_ BitVec 64)) (t!40774 List!27304)) )
))
(declare-fun lt!559621 () List!27304)

(declare-fun contains!7219 (List!27304 (_ BitVec 64)) Bool)

(assert (=> b!1233353 (= res!821691 (contains!7219 lt!559621 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233354 () Bool)

(declare-fun e!699669 () Bool)

(declare-datatypes ((array!79492 0))(
  ( (array!79493 (arr!38353 (Array (_ BitVec 32) (_ BitVec 64))) (size!38890 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79492)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79492 (_ BitVec 32) List!27304) Bool)

(assert (=> b!1233354 (= e!699669 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301)))))

(declare-fun b!1233355 () Bool)

(declare-fun res!821684 () Bool)

(declare-fun e!699668 () Bool)

(assert (=> b!1233355 (=> (not res!821684) (not e!699668))))

(declare-fun acc!823 () List!27304)

(declare-fun noDuplicate!1826 (List!27304) Bool)

(assert (=> b!1233355 (= res!821684 (noDuplicate!1826 acc!823))))

(declare-fun b!1233356 () Bool)

(declare-fun res!821681 () Bool)

(assert (=> b!1233356 (=> (not res!821681) (not e!699668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233356 (= res!821681 (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)))))

(declare-fun b!1233357 () Bool)

(declare-fun res!821682 () Bool)

(assert (=> b!1233357 (=> (not res!821682) (not e!699668))))

(assert (=> b!1233357 (= res!821682 (not (contains!7219 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233358 () Bool)

(declare-fun res!821686 () Bool)

(assert (=> b!1233358 (=> (not res!821686) (not e!699668))))

(assert (=> b!1233358 (= res!821686 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38890 a!3806)) (bvslt from!3184 (size!38890 a!3806))))))

(declare-fun b!1233359 () Bool)

(declare-fun res!821687 () Bool)

(assert (=> b!1233359 (=> res!821687 e!699670)))

(assert (=> b!1233359 (= res!821687 (not (noDuplicate!1826 lt!559621)))))

(declare-fun res!821693 () Bool)

(assert (=> start!102622 (=> (not res!821693) (not e!699668))))

(assert (=> start!102622 (= res!821693 (bvslt (size!38890 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102622 e!699668))

(declare-fun array_inv!29129 (array!79492) Bool)

(assert (=> start!102622 (array_inv!29129 a!3806)))

(assert (=> start!102622 true))

(declare-fun b!1233360 () Bool)

(declare-fun res!821688 () Bool)

(assert (=> b!1233360 (=> (not res!821688) (not e!699668))))

(assert (=> b!1233360 (= res!821688 (not (contains!7219 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233361 () Bool)

(declare-fun res!821690 () Bool)

(assert (=> b!1233361 (=> (not res!821690) (not e!699668))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233361 (= res!821690 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233362 () Bool)

(assert (=> b!1233362 (= e!699668 (not e!699670))))

(declare-fun res!821685 () Bool)

(assert (=> b!1233362 (=> res!821685 e!699670)))

(assert (=> b!1233362 (= res!821685 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1233362 (= lt!559621 (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301))))

(assert (=> b!1233362 e!699669))

(declare-fun res!821680 () Bool)

(assert (=> b!1233362 (=> (not res!821680) (not e!699669))))

(assert (=> b!1233362 (= res!821680 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27301))))

(declare-datatypes ((Unit!40786 0))(
  ( (Unit!40787) )
))
(declare-fun lt!559620 () Unit!40786)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79492 List!27304 List!27304 (_ BitVec 32)) Unit!40786)

(assert (=> b!1233362 (= lt!559620 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27301 from!3184))))

(assert (=> b!1233362 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823))))

(declare-fun b!1233363 () Bool)

(assert (=> b!1233363 (= e!699670 (contains!7219 lt!559621 (select (arr!38353 a!3806) from!3184)))))

(declare-fun b!1233364 () Bool)

(declare-fun res!821692 () Bool)

(assert (=> b!1233364 (=> res!821692 e!699670)))

(assert (=> b!1233364 (= res!821692 (contains!7219 lt!559621 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233365 () Bool)

(declare-fun res!821689 () Bool)

(assert (=> b!1233365 (=> (not res!821689) (not e!699668))))

(assert (=> b!1233365 (= res!821689 (validKeyInArray!0 k0!2913))))

(declare-fun b!1233366 () Bool)

(declare-fun res!821683 () Bool)

(assert (=> b!1233366 (=> (not res!821683) (not e!699668))))

(assert (=> b!1233366 (= res!821683 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102622 res!821693) b!1233365))

(assert (= (and b!1233365 res!821689) b!1233358))

(assert (= (and b!1233358 res!821686) b!1233355))

(assert (= (and b!1233355 res!821684) b!1233360))

(assert (= (and b!1233360 res!821688) b!1233357))

(assert (= (and b!1233357 res!821682) b!1233361))

(assert (= (and b!1233361 res!821690) b!1233366))

(assert (= (and b!1233366 res!821683) b!1233356))

(assert (= (and b!1233356 res!821681) b!1233362))

(assert (= (and b!1233362 res!821680) b!1233354))

(assert (= (and b!1233362 (not res!821685)) b!1233359))

(assert (= (and b!1233359 (not res!821687)) b!1233353))

(assert (= (and b!1233353 (not res!821691)) b!1233364))

(assert (= (and b!1233364 (not res!821692)) b!1233363))

(declare-fun m!1137477 () Bool)

(assert (=> b!1233363 m!1137477))

(assert (=> b!1233363 m!1137477))

(declare-fun m!1137479 () Bool)

(assert (=> b!1233363 m!1137479))

(declare-fun m!1137481 () Bool)

(assert (=> b!1233366 m!1137481))

(assert (=> b!1233354 m!1137477))

(declare-fun m!1137483 () Bool)

(assert (=> b!1233354 m!1137483))

(declare-fun m!1137485 () Bool)

(assert (=> b!1233357 m!1137485))

(assert (=> b!1233362 m!1137477))

(declare-fun m!1137487 () Bool)

(assert (=> b!1233362 m!1137487))

(declare-fun m!1137489 () Bool)

(assert (=> b!1233362 m!1137489))

(declare-fun m!1137491 () Bool)

(assert (=> b!1233362 m!1137491))

(declare-fun m!1137493 () Bool)

(assert (=> b!1233359 m!1137493))

(declare-fun m!1137495 () Bool)

(assert (=> b!1233355 m!1137495))

(declare-fun m!1137497 () Bool)

(assert (=> b!1233361 m!1137497))

(declare-fun m!1137499 () Bool)

(assert (=> b!1233353 m!1137499))

(declare-fun m!1137501 () Bool)

(assert (=> start!102622 m!1137501))

(declare-fun m!1137503 () Bool)

(assert (=> b!1233365 m!1137503))

(declare-fun m!1137505 () Bool)

(assert (=> b!1233360 m!1137505))

(declare-fun m!1137507 () Bool)

(assert (=> b!1233364 m!1137507))

(assert (=> b!1233356 m!1137477))

(assert (=> b!1233356 m!1137477))

(declare-fun m!1137509 () Bool)

(assert (=> b!1233356 m!1137509))

(check-sat (not b!1233356) (not b!1233366) (not start!102622) (not b!1233359) (not b!1233361) (not b!1233357) (not b!1233353) (not b!1233365) (not b!1233364) (not b!1233355) (not b!1233354) (not b!1233362) (not b!1233360) (not b!1233363))
(check-sat)
(get-model)

(declare-fun d!135209 () Bool)

(declare-fun lt!559630 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!582 (List!27304) (InoxSet (_ BitVec 64)))

(assert (=> d!135209 (= lt!559630 (select (content!582 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699687 () Bool)

(assert (=> d!135209 (= lt!559630 e!699687)))

(declare-fun res!821740 () Bool)

(assert (=> d!135209 (=> (not res!821740) (not e!699687))))

(get-info :version)

(assert (=> d!135209 (= res!821740 ((_ is Cons!27300) acc!823))))

(assert (=> d!135209 (= (contains!7219 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559630)))

(declare-fun b!1233413 () Bool)

(declare-fun e!699688 () Bool)

(assert (=> b!1233413 (= e!699687 e!699688)))

(declare-fun res!821741 () Bool)

(assert (=> b!1233413 (=> res!821741 e!699688)))

(assert (=> b!1233413 (= res!821741 (= (h!28509 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233414 () Bool)

(assert (=> b!1233414 (= e!699688 (contains!7219 (t!40774 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135209 res!821740) b!1233413))

(assert (= (and b!1233413 (not res!821741)) b!1233414))

(declare-fun m!1137545 () Bool)

(assert (=> d!135209 m!1137545))

(declare-fun m!1137547 () Bool)

(assert (=> d!135209 m!1137547))

(declare-fun m!1137549 () Bool)

(assert (=> b!1233414 m!1137549))

(assert (=> b!1233357 d!135209))

(declare-fun d!135211 () Bool)

(assert (=> d!135211 (= (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)) (and (not (= (select (arr!38353 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38353 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1233356 d!135211))

(declare-fun d!135213 () Bool)

(declare-fun res!821746 () Bool)

(declare-fun e!699693 () Bool)

(assert (=> d!135213 (=> res!821746 e!699693)))

(assert (=> d!135213 (= res!821746 ((_ is Nil!27301) acc!823))))

(assert (=> d!135213 (= (noDuplicate!1826 acc!823) e!699693)))

(declare-fun b!1233419 () Bool)

(declare-fun e!699694 () Bool)

(assert (=> b!1233419 (= e!699693 e!699694)))

(declare-fun res!821747 () Bool)

(assert (=> b!1233419 (=> (not res!821747) (not e!699694))))

(assert (=> b!1233419 (= res!821747 (not (contains!7219 (t!40774 acc!823) (h!28509 acc!823))))))

(declare-fun b!1233420 () Bool)

(assert (=> b!1233420 (= e!699694 (noDuplicate!1826 (t!40774 acc!823)))))

(assert (= (and d!135213 (not res!821746)) b!1233419))

(assert (= (and b!1233419 res!821747) b!1233420))

(declare-fun m!1137551 () Bool)

(assert (=> b!1233419 m!1137551))

(declare-fun m!1137553 () Bool)

(assert (=> b!1233420 m!1137553))

(assert (=> b!1233355 d!135213))

(declare-fun e!699717 () Bool)

(declare-fun b!1233447 () Bool)

(assert (=> b!1233447 (= e!699717 (contains!7219 acc!823 (select (arr!38353 a!3806) from!3184)))))

(declare-fun b!1233448 () Bool)

(declare-fun e!699720 () Bool)

(declare-fun call!60970 () Bool)

(assert (=> b!1233448 (= e!699720 call!60970)))

(declare-fun c!120703 () Bool)

(declare-fun bm!60967 () Bool)

(assert (=> bm!60967 (= call!60970 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120703 (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1233450 () Bool)

(assert (=> b!1233450 (= e!699720 call!60970)))

(declare-fun b!1233451 () Bool)

(declare-fun e!699719 () Bool)

(declare-fun e!699718 () Bool)

(assert (=> b!1233451 (= e!699719 e!699718)))

(declare-fun res!821767 () Bool)

(assert (=> b!1233451 (=> (not res!821767) (not e!699718))))

(assert (=> b!1233451 (= res!821767 (not e!699717))))

(declare-fun res!821768 () Bool)

(assert (=> b!1233451 (=> (not res!821768) (not e!699717))))

(assert (=> b!1233451 (= res!821768 (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)))))

(declare-fun d!135215 () Bool)

(declare-fun res!821766 () Bool)

(assert (=> d!135215 (=> res!821766 e!699719)))

(assert (=> d!135215 (= res!821766 (bvsge from!3184 (size!38890 a!3806)))))

(assert (=> d!135215 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699719)))

(declare-fun b!1233449 () Bool)

(assert (=> b!1233449 (= e!699718 e!699720)))

(assert (=> b!1233449 (= c!120703 (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)))))

(assert (= (and d!135215 (not res!821766)) b!1233451))

(assert (= (and b!1233451 res!821768) b!1233447))

(assert (= (and b!1233451 res!821767) b!1233449))

(assert (= (and b!1233449 c!120703) b!1233450))

(assert (= (and b!1233449 (not c!120703)) b!1233448))

(assert (= (or b!1233450 b!1233448) bm!60967))

(assert (=> b!1233447 m!1137477))

(assert (=> b!1233447 m!1137477))

(declare-fun m!1137561 () Bool)

(assert (=> b!1233447 m!1137561))

(assert (=> bm!60967 m!1137477))

(declare-fun m!1137563 () Bool)

(assert (=> bm!60967 m!1137563))

(assert (=> b!1233451 m!1137477))

(assert (=> b!1233451 m!1137477))

(assert (=> b!1233451 m!1137509))

(assert (=> b!1233449 m!1137477))

(assert (=> b!1233449 m!1137477))

(assert (=> b!1233449 m!1137509))

(assert (=> b!1233366 d!135215))

(declare-fun d!135223 () Bool)

(assert (=> d!135223 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1233365 d!135223))

(declare-fun b!1233452 () Bool)

(declare-fun e!699721 () Bool)

(assert (=> b!1233452 (= e!699721 (contains!7219 (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301) (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233453 () Bool)

(declare-fun e!699724 () Bool)

(declare-fun call!60971 () Bool)

(assert (=> b!1233453 (= e!699724 call!60971)))

(declare-fun c!120704 () Bool)

(declare-fun bm!60968 () Bool)

(assert (=> bm!60968 (= call!60971 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120704 (Cons!27300 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301)) (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301))))))

(declare-fun b!1233455 () Bool)

(assert (=> b!1233455 (= e!699724 call!60971)))

(declare-fun b!1233456 () Bool)

(declare-fun e!699723 () Bool)

(declare-fun e!699722 () Bool)

(assert (=> b!1233456 (= e!699723 e!699722)))

(declare-fun res!821770 () Bool)

(assert (=> b!1233456 (=> (not res!821770) (not e!699722))))

(assert (=> b!1233456 (= res!821770 (not e!699721))))

(declare-fun res!821771 () Bool)

(assert (=> b!1233456 (=> (not res!821771) (not e!699721))))

(assert (=> b!1233456 (= res!821771 (validKeyInArray!0 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!135225 () Bool)

(declare-fun res!821769 () Bool)

(assert (=> d!135225 (=> res!821769 e!699723)))

(assert (=> d!135225 (= res!821769 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38890 a!3806)))))

(assert (=> d!135225 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301)) e!699723)))

(declare-fun b!1233454 () Bool)

(assert (=> b!1233454 (= e!699722 e!699724)))

(assert (=> b!1233454 (= c!120704 (validKeyInArray!0 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135225 (not res!821769)) b!1233456))

(assert (= (and b!1233456 res!821771) b!1233452))

(assert (= (and b!1233456 res!821770) b!1233454))

(assert (= (and b!1233454 c!120704) b!1233455))

(assert (= (and b!1233454 (not c!120704)) b!1233453))

(assert (= (or b!1233455 b!1233453) bm!60968))

(declare-fun m!1137565 () Bool)

(assert (=> b!1233452 m!1137565))

(assert (=> b!1233452 m!1137565))

(declare-fun m!1137567 () Bool)

(assert (=> b!1233452 m!1137567))

(assert (=> bm!60968 m!1137565))

(declare-fun m!1137569 () Bool)

(assert (=> bm!60968 m!1137569))

(assert (=> b!1233456 m!1137565))

(assert (=> b!1233456 m!1137565))

(declare-fun m!1137571 () Bool)

(assert (=> b!1233456 m!1137571))

(assert (=> b!1233454 m!1137565))

(assert (=> b!1233454 m!1137565))

(assert (=> b!1233454 m!1137571))

(assert (=> b!1233354 d!135225))

(declare-fun d!135227 () Bool)

(declare-fun lt!559634 () Bool)

(assert (=> d!135227 (= lt!559634 (select (content!582 lt!559621) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699737 () Bool)

(assert (=> d!135227 (= lt!559634 e!699737)))

(declare-fun res!821781 () Bool)

(assert (=> d!135227 (=> (not res!821781) (not e!699737))))

(assert (=> d!135227 (= res!821781 ((_ is Cons!27300) lt!559621))))

(assert (=> d!135227 (= (contains!7219 lt!559621 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559634)))

(declare-fun b!1233472 () Bool)

(declare-fun e!699738 () Bool)

(assert (=> b!1233472 (= e!699737 e!699738)))

(declare-fun res!821782 () Bool)

(assert (=> b!1233472 (=> res!821782 e!699738)))

(assert (=> b!1233472 (= res!821782 (= (h!28509 lt!559621) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233473 () Bool)

(assert (=> b!1233473 (= e!699738 (contains!7219 (t!40774 lt!559621) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135227 res!821781) b!1233472))

(assert (= (and b!1233472 (not res!821782)) b!1233473))

(declare-fun m!1137577 () Bool)

(assert (=> d!135227 m!1137577))

(declare-fun m!1137579 () Bool)

(assert (=> d!135227 m!1137579))

(declare-fun m!1137581 () Bool)

(assert (=> b!1233473 m!1137581))

(assert (=> b!1233353 d!135227))

(declare-fun d!135231 () Bool)

(declare-fun lt!559635 () Bool)

(assert (=> d!135231 (= lt!559635 (select (content!582 lt!559621) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699739 () Bool)

(assert (=> d!135231 (= lt!559635 e!699739)))

(declare-fun res!821783 () Bool)

(assert (=> d!135231 (=> (not res!821783) (not e!699739))))

(assert (=> d!135231 (= res!821783 ((_ is Cons!27300) lt!559621))))

(assert (=> d!135231 (= (contains!7219 lt!559621 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559635)))

(declare-fun b!1233474 () Bool)

(declare-fun e!699740 () Bool)

(assert (=> b!1233474 (= e!699739 e!699740)))

(declare-fun res!821784 () Bool)

(assert (=> b!1233474 (=> res!821784 e!699740)))

(assert (=> b!1233474 (= res!821784 (= (h!28509 lt!559621) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233475 () Bool)

(assert (=> b!1233475 (= e!699740 (contains!7219 (t!40774 lt!559621) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135231 res!821783) b!1233474))

(assert (= (and b!1233474 (not res!821784)) b!1233475))

(assert (=> d!135231 m!1137577))

(declare-fun m!1137583 () Bool)

(assert (=> d!135231 m!1137583))

(declare-fun m!1137585 () Bool)

(assert (=> b!1233475 m!1137585))

(assert (=> b!1233364 d!135231))

(declare-fun d!135233 () Bool)

(declare-fun lt!559636 () Bool)

(assert (=> d!135233 (= lt!559636 (select (content!582 lt!559621) (select (arr!38353 a!3806) from!3184)))))

(declare-fun e!699741 () Bool)

(assert (=> d!135233 (= lt!559636 e!699741)))

(declare-fun res!821785 () Bool)

(assert (=> d!135233 (=> (not res!821785) (not e!699741))))

(assert (=> d!135233 (= res!821785 ((_ is Cons!27300) lt!559621))))

(assert (=> d!135233 (= (contains!7219 lt!559621 (select (arr!38353 a!3806) from!3184)) lt!559636)))

(declare-fun b!1233476 () Bool)

(declare-fun e!699742 () Bool)

(assert (=> b!1233476 (= e!699741 e!699742)))

(declare-fun res!821786 () Bool)

(assert (=> b!1233476 (=> res!821786 e!699742)))

(assert (=> b!1233476 (= res!821786 (= (h!28509 lt!559621) (select (arr!38353 a!3806) from!3184)))))

(declare-fun b!1233477 () Bool)

(assert (=> b!1233477 (= e!699742 (contains!7219 (t!40774 lt!559621) (select (arr!38353 a!3806) from!3184)))))

(assert (= (and d!135233 res!821785) b!1233476))

(assert (= (and b!1233476 (not res!821786)) b!1233477))

(assert (=> d!135233 m!1137577))

(assert (=> d!135233 m!1137477))

(declare-fun m!1137587 () Bool)

(assert (=> d!135233 m!1137587))

(assert (=> b!1233477 m!1137477))

(declare-fun m!1137589 () Bool)

(assert (=> b!1233477 m!1137589))

(assert (=> b!1233363 d!135233))

(declare-fun b!1233478 () Bool)

(declare-fun e!699743 () Bool)

(assert (=> b!1233478 (= e!699743 (contains!7219 Nil!27301 (select (arr!38353 a!3806) from!3184)))))

(declare-fun b!1233479 () Bool)

(declare-fun e!699746 () Bool)

(declare-fun call!60975 () Bool)

(assert (=> b!1233479 (= e!699746 call!60975)))

(declare-fun c!120708 () Bool)

(declare-fun bm!60972 () Bool)

(assert (=> bm!60972 (= call!60975 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120708 (Cons!27300 (select (arr!38353 a!3806) from!3184) Nil!27301) Nil!27301)))))

(declare-fun b!1233481 () Bool)

(assert (=> b!1233481 (= e!699746 call!60975)))

(declare-fun b!1233482 () Bool)

(declare-fun e!699745 () Bool)

(declare-fun e!699744 () Bool)

(assert (=> b!1233482 (= e!699745 e!699744)))

(declare-fun res!821788 () Bool)

(assert (=> b!1233482 (=> (not res!821788) (not e!699744))))

(assert (=> b!1233482 (= res!821788 (not e!699743))))

(declare-fun res!821789 () Bool)

(assert (=> b!1233482 (=> (not res!821789) (not e!699743))))

(assert (=> b!1233482 (= res!821789 (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)))))

(declare-fun d!135235 () Bool)

(declare-fun res!821787 () Bool)

(assert (=> d!135235 (=> res!821787 e!699745)))

(assert (=> d!135235 (= res!821787 (bvsge from!3184 (size!38890 a!3806)))))

(assert (=> d!135235 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27301) e!699745)))

(declare-fun b!1233480 () Bool)

(assert (=> b!1233480 (= e!699744 e!699746)))

(assert (=> b!1233480 (= c!120708 (validKeyInArray!0 (select (arr!38353 a!3806) from!3184)))))

(assert (= (and d!135235 (not res!821787)) b!1233482))

(assert (= (and b!1233482 res!821789) b!1233478))

(assert (= (and b!1233482 res!821788) b!1233480))

(assert (= (and b!1233480 c!120708) b!1233481))

(assert (= (and b!1233480 (not c!120708)) b!1233479))

(assert (= (or b!1233481 b!1233479) bm!60972))

(assert (=> b!1233478 m!1137477))

(assert (=> b!1233478 m!1137477))

(declare-fun m!1137591 () Bool)

(assert (=> b!1233478 m!1137591))

(assert (=> bm!60972 m!1137477))

(declare-fun m!1137593 () Bool)

(assert (=> bm!60972 m!1137593))

(assert (=> b!1233482 m!1137477))

(assert (=> b!1233482 m!1137477))

(assert (=> b!1233482 m!1137509))

(assert (=> b!1233480 m!1137477))

(assert (=> b!1233480 m!1137477))

(assert (=> b!1233480 m!1137509))

(assert (=> b!1233362 d!135235))

(declare-fun d!135237 () Bool)

(assert (=> d!135237 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27301)))

(declare-fun lt!559642 () Unit!40786)

(declare-fun choose!80 (array!79492 List!27304 List!27304 (_ BitVec 32)) Unit!40786)

(assert (=> d!135237 (= lt!559642 (choose!80 a!3806 acc!823 Nil!27301 from!3184))))

(assert (=> d!135237 (bvslt (size!38890 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!135237 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27301 from!3184) lt!559642)))

(declare-fun bs!34653 () Bool)

(assert (= bs!34653 d!135237))

(assert (=> bs!34653 m!1137487))

(declare-fun m!1137609 () Bool)

(assert (=> bs!34653 m!1137609))

(assert (=> b!1233362 d!135237))

(declare-fun b!1233493 () Bool)

(declare-fun e!699755 () Bool)

(assert (=> b!1233493 (= e!699755 (contains!7219 (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823) (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233494 () Bool)

(declare-fun e!699758 () Bool)

(declare-fun call!60978 () Bool)

(assert (=> b!1233494 (= e!699758 call!60978)))

(declare-fun c!120711 () Bool)

(declare-fun bm!60975 () Bool)

(assert (=> bm!60975 (= call!60978 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120711 (Cons!27300 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823)) (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823))))))

(declare-fun b!1233496 () Bool)

(assert (=> b!1233496 (= e!699758 call!60978)))

(declare-fun b!1233497 () Bool)

(declare-fun e!699757 () Bool)

(declare-fun e!699756 () Bool)

(assert (=> b!1233497 (= e!699757 e!699756)))

(declare-fun res!821797 () Bool)

(assert (=> b!1233497 (=> (not res!821797) (not e!699756))))

(assert (=> b!1233497 (= res!821797 (not e!699755))))

(declare-fun res!821798 () Bool)

(assert (=> b!1233497 (=> (not res!821798) (not e!699755))))

(assert (=> b!1233497 (= res!821798 (validKeyInArray!0 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!135245 () Bool)

(declare-fun res!821796 () Bool)

(assert (=> d!135245 (=> res!821796 e!699757)))

(assert (=> d!135245 (= res!821796 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38890 a!3806)))))

(assert (=> d!135245 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27300 (select (arr!38353 a!3806) from!3184) acc!823)) e!699757)))

(declare-fun b!1233495 () Bool)

(assert (=> b!1233495 (= e!699756 e!699758)))

(assert (=> b!1233495 (= c!120711 (validKeyInArray!0 (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135245 (not res!821796)) b!1233497))

(assert (= (and b!1233497 res!821798) b!1233493))

(assert (= (and b!1233497 res!821797) b!1233495))

(assert (= (and b!1233495 c!120711) b!1233496))

(assert (= (and b!1233495 (not c!120711)) b!1233494))

(assert (= (or b!1233496 b!1233494) bm!60975))

(assert (=> b!1233493 m!1137565))

(assert (=> b!1233493 m!1137565))

(declare-fun m!1137611 () Bool)

(assert (=> b!1233493 m!1137611))

(assert (=> bm!60975 m!1137565))

(declare-fun m!1137613 () Bool)

(assert (=> bm!60975 m!1137613))

(assert (=> b!1233497 m!1137565))

(assert (=> b!1233497 m!1137565))

(assert (=> b!1233497 m!1137571))

(assert (=> b!1233495 m!1137565))

(assert (=> b!1233495 m!1137565))

(assert (=> b!1233495 m!1137571))

(assert (=> b!1233362 d!135245))

(declare-fun d!135249 () Bool)

(declare-fun res!821815 () Bool)

(declare-fun e!699777 () Bool)

(assert (=> d!135249 (=> res!821815 e!699777)))

(assert (=> d!135249 (= res!821815 (= (select (arr!38353 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!135249 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699777)))

(declare-fun b!1233518 () Bool)

(declare-fun e!699778 () Bool)

(assert (=> b!1233518 (= e!699777 e!699778)))

(declare-fun res!821816 () Bool)

(assert (=> b!1233518 (=> (not res!821816) (not e!699778))))

(assert (=> b!1233518 (= res!821816 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38890 a!3806)))))

(declare-fun b!1233519 () Bool)

(assert (=> b!1233519 (= e!699778 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!135249 (not res!821815)) b!1233518))

(assert (= (and b!1233518 res!821816) b!1233519))

(assert (=> d!135249 m!1137565))

(declare-fun m!1137633 () Bool)

(assert (=> b!1233519 m!1137633))

(assert (=> b!1233361 d!135249))

(declare-fun d!135259 () Bool)

(declare-fun lt!559649 () Bool)

(assert (=> d!135259 (= lt!559649 (select (content!582 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699783 () Bool)

(assert (=> d!135259 (= lt!559649 e!699783)))

(declare-fun res!821820 () Bool)

(assert (=> d!135259 (=> (not res!821820) (not e!699783))))

(assert (=> d!135259 (= res!821820 ((_ is Cons!27300) acc!823))))

(assert (=> d!135259 (= (contains!7219 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559649)))

(declare-fun b!1233525 () Bool)

(declare-fun e!699784 () Bool)

(assert (=> b!1233525 (= e!699783 e!699784)))

(declare-fun res!821821 () Bool)

(assert (=> b!1233525 (=> res!821821 e!699784)))

(assert (=> b!1233525 (= res!821821 (= (h!28509 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233526 () Bool)

(assert (=> b!1233526 (= e!699784 (contains!7219 (t!40774 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135259 res!821820) b!1233525))

(assert (= (and b!1233525 (not res!821821)) b!1233526))

(assert (=> d!135259 m!1137545))

(declare-fun m!1137637 () Bool)

(assert (=> d!135259 m!1137637))

(declare-fun m!1137639 () Bool)

(assert (=> b!1233526 m!1137639))

(assert (=> b!1233360 d!135259))

(declare-fun d!135263 () Bool)

(assert (=> d!135263 (= (array_inv!29129 a!3806) (bvsge (size!38890 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102622 d!135263))

(declare-fun d!135267 () Bool)

(declare-fun res!821822 () Bool)

(declare-fun e!699785 () Bool)

(assert (=> d!135267 (=> res!821822 e!699785)))

(assert (=> d!135267 (= res!821822 ((_ is Nil!27301) lt!559621))))

(assert (=> d!135267 (= (noDuplicate!1826 lt!559621) e!699785)))

(declare-fun b!1233527 () Bool)

(declare-fun e!699786 () Bool)

(assert (=> b!1233527 (= e!699785 e!699786)))

(declare-fun res!821823 () Bool)

(assert (=> b!1233527 (=> (not res!821823) (not e!699786))))

(assert (=> b!1233527 (= res!821823 (not (contains!7219 (t!40774 lt!559621) (h!28509 lt!559621))))))

(declare-fun b!1233528 () Bool)

(assert (=> b!1233528 (= e!699786 (noDuplicate!1826 (t!40774 lt!559621)))))

(assert (= (and d!135267 (not res!821822)) b!1233527))

(assert (= (and b!1233527 res!821823) b!1233528))

(declare-fun m!1137645 () Bool)

(assert (=> b!1233527 m!1137645))

(declare-fun m!1137647 () Bool)

(assert (=> b!1233528 m!1137647))

(assert (=> b!1233359 d!135267))

(check-sat (not d!135227) (not b!1233420) (not bm!60967) (not b!1233519) (not b!1233478) (not b!1233495) (not b!1233527) (not bm!60975) (not b!1233473) (not bm!60972) (not b!1233454) (not b!1233480) (not b!1233447) (not b!1233451) (not d!135233) (not b!1233482) (not b!1233456) (not b!1233497) (not b!1233475) (not b!1233493) (not b!1233414) (not b!1233419) (not b!1233449) (not b!1233452) (not d!135209) (not d!135231) (not bm!60968) (not b!1233526) (not b!1233477) (not d!135259) (not d!135237) (not b!1233528))
(check-sat)
