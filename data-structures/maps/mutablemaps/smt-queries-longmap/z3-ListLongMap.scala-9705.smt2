; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114718 () Bool)

(assert start!114718)

(declare-fun b!1360396 () Bool)

(declare-fun res!904805 () Bool)

(declare-fun e!771800 () Bool)

(assert (=> b!1360396 (=> (not res!904805) (not e!771800))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360396 (= res!904805 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360397 () Bool)

(declare-datatypes ((Unit!44780 0))(
  ( (Unit!44781) )
))
(declare-fun e!771801 () Unit!44780)

(declare-fun lt!599840 () Unit!44780)

(assert (=> b!1360397 (= e!771801 lt!599840)))

(declare-fun lt!599839 () Unit!44780)

(declare-datatypes ((List!31920 0))(
  ( (Nil!31917) (Cons!31916 (h!33125 (_ BitVec 64)) (t!46603 List!31920)) )
))
(declare-fun acc!759 () List!31920)

(declare-fun lemmaListSubSeqRefl!0 (List!31920) Unit!44780)

(assert (=> b!1360397 (= lt!599839 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!876 (List!31920 List!31920) Bool)

(assert (=> b!1360397 (subseq!876 acc!759 acc!759)))

(declare-datatypes ((array!92529 0))(
  ( (array!92530 (arr!44699 (Array (_ BitVec 32) (_ BitVec 64))) (size!45250 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92529)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92529 List!31920 List!31920 (_ BitVec 32)) Unit!44780)

(declare-fun $colon$colon!881 (List!31920 (_ BitVec 64)) List!31920)

(assert (=> b!1360397 (= lt!599840 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!881 acc!759 (select (arr!44699 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92529 (_ BitVec 32) List!31920) Bool)

(assert (=> b!1360397 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360398 () Bool)

(declare-fun res!904803 () Bool)

(assert (=> b!1360398 (=> (not res!904803) (not e!771800))))

(declare-fun contains!9485 (List!31920 (_ BitVec 64)) Bool)

(assert (=> b!1360398 (= res!904803 (not (contains!9485 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360399 () Bool)

(declare-fun res!904807 () Bool)

(assert (=> b!1360399 (=> (not res!904807) (not e!771800))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360399 (= res!904807 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45250 a!3742))))))

(declare-fun b!1360400 () Bool)

(declare-fun Unit!44782 () Unit!44780)

(assert (=> b!1360400 (= e!771801 Unit!44782)))

(declare-fun b!1360401 () Bool)

(assert (=> b!1360401 (= e!771800 false)))

(declare-fun lt!599838 () Unit!44780)

(assert (=> b!1360401 (= lt!599838 e!771801)))

(declare-fun c!127240 () Bool)

(assert (=> b!1360401 (= c!127240 (validKeyInArray!0 (select (arr!44699 a!3742) from!3120)))))

(declare-fun b!1360402 () Bool)

(declare-fun res!904802 () Bool)

(assert (=> b!1360402 (=> (not res!904802) (not e!771800))))

(assert (=> b!1360402 (= res!904802 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360403 () Bool)

(declare-fun res!904809 () Bool)

(assert (=> b!1360403 (=> (not res!904809) (not e!771800))))

(declare-fun noDuplicate!2364 (List!31920) Bool)

(assert (=> b!1360403 (= res!904809 (noDuplicate!2364 acc!759))))

(declare-fun b!1360404 () Bool)

(declare-fun res!904801 () Bool)

(assert (=> b!1360404 (=> (not res!904801) (not e!771800))))

(assert (=> b!1360404 (= res!904801 (not (contains!9485 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360405 () Bool)

(declare-fun res!904808 () Bool)

(assert (=> b!1360405 (=> (not res!904808) (not e!771800))))

(assert (=> b!1360405 (= res!904808 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45250 a!3742)))))

(declare-fun res!904804 () Bool)

(assert (=> start!114718 (=> (not res!904804) (not e!771800))))

(assert (=> start!114718 (= res!904804 (and (bvslt (size!45250 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45250 a!3742))))))

(assert (=> start!114718 e!771800))

(assert (=> start!114718 true))

(declare-fun array_inv!33644 (array!92529) Bool)

(assert (=> start!114718 (array_inv!33644 a!3742)))

(declare-fun b!1360406 () Bool)

(declare-fun res!904806 () Bool)

(assert (=> b!1360406 (=> (not res!904806) (not e!771800))))

(assert (=> b!1360406 (= res!904806 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31917))))

(assert (= (and start!114718 res!904804) b!1360403))

(assert (= (and b!1360403 res!904809) b!1360398))

(assert (= (and b!1360398 res!904803) b!1360404))

(assert (= (and b!1360404 res!904801) b!1360406))

(assert (= (and b!1360406 res!904806) b!1360402))

(assert (= (and b!1360402 res!904802) b!1360399))

(assert (= (and b!1360399 res!904807) b!1360396))

(assert (= (and b!1360396 res!904805) b!1360405))

(assert (= (and b!1360405 res!904808) b!1360401))

(assert (= (and b!1360401 c!127240) b!1360397))

(assert (= (and b!1360401 (not c!127240)) b!1360400))

(declare-fun m!1245701 () Bool)

(assert (=> b!1360406 m!1245701))

(declare-fun m!1245703 () Bool)

(assert (=> start!114718 m!1245703))

(declare-fun m!1245705 () Bool)

(assert (=> b!1360396 m!1245705))

(declare-fun m!1245707 () Bool)

(assert (=> b!1360397 m!1245707))

(declare-fun m!1245709 () Bool)

(assert (=> b!1360397 m!1245709))

(declare-fun m!1245711 () Bool)

(assert (=> b!1360397 m!1245711))

(declare-fun m!1245713 () Bool)

(assert (=> b!1360397 m!1245713))

(declare-fun m!1245715 () Bool)

(assert (=> b!1360397 m!1245715))

(assert (=> b!1360397 m!1245709))

(assert (=> b!1360397 m!1245711))

(declare-fun m!1245717 () Bool)

(assert (=> b!1360397 m!1245717))

(declare-fun m!1245719 () Bool)

(assert (=> b!1360404 m!1245719))

(assert (=> b!1360401 m!1245709))

(assert (=> b!1360401 m!1245709))

(declare-fun m!1245721 () Bool)

(assert (=> b!1360401 m!1245721))

(declare-fun m!1245723 () Bool)

(assert (=> b!1360403 m!1245723))

(declare-fun m!1245725 () Bool)

(assert (=> b!1360398 m!1245725))

(declare-fun m!1245727 () Bool)

(assert (=> b!1360402 m!1245727))

(check-sat (not start!114718) (not b!1360403) (not b!1360406) (not b!1360401) (not b!1360396) (not b!1360398) (not b!1360402) (not b!1360397) (not b!1360404))
