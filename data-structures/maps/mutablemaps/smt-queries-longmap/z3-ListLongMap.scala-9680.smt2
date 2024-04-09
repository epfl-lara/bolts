; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114256 () Bool)

(assert start!114256)

(declare-fun b!1356767 () Bool)

(declare-fun res!901648 () Bool)

(declare-fun e!770175 () Bool)

(assert (=> b!1356767 (=> (not res!901648) (not e!770175))))

(declare-datatypes ((List!31845 0))(
  ( (Nil!31842) (Cons!31841 (h!33050 (_ BitVec 64)) (t!46510 List!31845)) )
))
(declare-fun acc!759 () List!31845)

(declare-fun contains!9410 (List!31845 (_ BitVec 64)) Bool)

(assert (=> b!1356767 (= res!901648 (not (contains!9410 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901645 () Bool)

(assert (=> start!114256 (=> (not res!901645) (not e!770175))))

(declare-datatypes ((array!92361 0))(
  ( (array!92362 (arr!44624 (Array (_ BitVec 32) (_ BitVec 64))) (size!45175 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92361)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114256 (= res!901645 (and (bvslt (size!45175 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45175 a!3742))))))

(assert (=> start!114256 e!770175))

(assert (=> start!114256 true))

(declare-fun array_inv!33569 (array!92361) Bool)

(assert (=> start!114256 (array_inv!33569 a!3742)))

(declare-fun b!1356768 () Bool)

(declare-fun res!901649 () Bool)

(assert (=> b!1356768 (=> (not res!901649) (not e!770175))))

(declare-fun arrayNoDuplicates!0 (array!92361 (_ BitVec 32) List!31845) Bool)

(assert (=> b!1356768 (= res!901649 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31842))))

(declare-fun b!1356769 () Bool)

(declare-fun res!901653 () Bool)

(assert (=> b!1356769 (=> (not res!901653) (not e!770175))))

(assert (=> b!1356769 (= res!901653 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45175 a!3742)))))

(declare-fun b!1356770 () Bool)

(declare-fun res!901651 () Bool)

(assert (=> b!1356770 (=> (not res!901651) (not e!770175))))

(assert (=> b!1356770 (= res!901651 (not (contains!9410 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356771 () Bool)

(declare-fun res!901644 () Bool)

(assert (=> b!1356771 (=> (not res!901644) (not e!770175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356771 (= res!901644 (validKeyInArray!0 (select (arr!44624 a!3742) from!3120)))))

(declare-fun b!1356772 () Bool)

(declare-fun res!901650 () Bool)

(assert (=> b!1356772 (=> (not res!901650) (not e!770175))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356772 (= res!901650 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45175 a!3742))))))

(declare-fun b!1356773 () Bool)

(declare-fun res!901647 () Bool)

(assert (=> b!1356773 (=> (not res!901647) (not e!770175))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356773 (= res!901647 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356774 () Bool)

(assert (=> b!1356774 (= e!770175 (not true))))

(declare-fun subseq!801 (List!31845 List!31845) Bool)

(assert (=> b!1356774 (subseq!801 acc!759 acc!759)))

(declare-datatypes ((Unit!44581 0))(
  ( (Unit!44582) )
))
(declare-fun lt!599027 () Unit!44581)

(declare-fun lemmaListSubSeqRefl!0 (List!31845) Unit!44581)

(assert (=> b!1356774 (= lt!599027 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356775 () Bool)

(declare-fun res!901652 () Bool)

(assert (=> b!1356775 (=> (not res!901652) (not e!770175))))

(declare-fun noDuplicate!2289 (List!31845) Bool)

(assert (=> b!1356775 (= res!901652 (noDuplicate!2289 acc!759))))

(declare-fun b!1356776 () Bool)

(declare-fun res!901646 () Bool)

(assert (=> b!1356776 (=> (not res!901646) (not e!770175))))

(assert (=> b!1356776 (= res!901646 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114256 res!901645) b!1356775))

(assert (= (and b!1356775 res!901652) b!1356770))

(assert (= (and b!1356770 res!901651) b!1356767))

(assert (= (and b!1356767 res!901648) b!1356768))

(assert (= (and b!1356768 res!901649) b!1356776))

(assert (= (and b!1356776 res!901646) b!1356772))

(assert (= (and b!1356772 res!901650) b!1356773))

(assert (= (and b!1356773 res!901647) b!1356769))

(assert (= (and b!1356769 res!901653) b!1356771))

(assert (= (and b!1356771 res!901644) b!1356774))

(declare-fun m!1242695 () Bool)

(assert (=> b!1356771 m!1242695))

(assert (=> b!1356771 m!1242695))

(declare-fun m!1242697 () Bool)

(assert (=> b!1356771 m!1242697))

(declare-fun m!1242699 () Bool)

(assert (=> b!1356773 m!1242699))

(declare-fun m!1242701 () Bool)

(assert (=> b!1356768 m!1242701))

(declare-fun m!1242703 () Bool)

(assert (=> b!1356774 m!1242703))

(declare-fun m!1242705 () Bool)

(assert (=> b!1356774 m!1242705))

(declare-fun m!1242707 () Bool)

(assert (=> b!1356775 m!1242707))

(declare-fun m!1242709 () Bool)

(assert (=> start!114256 m!1242709))

(declare-fun m!1242711 () Bool)

(assert (=> b!1356770 m!1242711))

(declare-fun m!1242713 () Bool)

(assert (=> b!1356767 m!1242713))

(declare-fun m!1242715 () Bool)

(assert (=> b!1356776 m!1242715))

(check-sat (not start!114256) (not b!1356773) (not b!1356776) (not b!1356774) (not b!1356775) (not b!1356767) (not b!1356768) (not b!1356770) (not b!1356771))
