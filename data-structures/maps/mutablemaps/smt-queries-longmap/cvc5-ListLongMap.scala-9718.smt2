; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115016 () Bool)

(assert start!115016)

(declare-fun b!1362769 () Bool)

(declare-datatypes ((Unit!44894 0))(
  ( (Unit!44895) )
))
(declare-fun e!772974 () Unit!44894)

(declare-fun lt!600544 () Unit!44894)

(assert (=> b!1362769 (= e!772974 lt!600544)))

(declare-fun lt!600543 () Unit!44894)

(declare-datatypes ((List!31958 0))(
  ( (Nil!31955) (Cons!31954 (h!33163 (_ BitVec 64)) (t!46653 List!31958)) )
))
(declare-fun acc!759 () List!31958)

(declare-fun lemmaListSubSeqRefl!0 (List!31958) Unit!44894)

(assert (=> b!1362769 (= lt!600543 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!914 (List!31958 List!31958) Bool)

(assert (=> b!1362769 (subseq!914 acc!759 acc!759)))

(declare-datatypes ((array!92617 0))(
  ( (array!92618 (arr!44737 (Array (_ BitVec 32) (_ BitVec 64))) (size!45288 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92617)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92617 List!31958 List!31958 (_ BitVec 32)) Unit!44894)

(declare-fun $colon$colon!919 (List!31958 (_ BitVec 64)) List!31958)

(assert (=> b!1362769 (= lt!600544 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!919 acc!759 (select (arr!44737 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92617 (_ BitVec 32) List!31958) Bool)

(assert (=> b!1362769 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362770 () Bool)

(declare-fun res!906808 () Bool)

(declare-fun e!772975 () Bool)

(assert (=> b!1362770 (=> (not res!906808) (not e!772975))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362770 (= res!906808 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45288 a!3742))))))

(declare-fun res!906807 () Bool)

(assert (=> start!115016 (=> (not res!906807) (not e!772975))))

(assert (=> start!115016 (= res!906807 (and (bvslt (size!45288 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45288 a!3742))))))

(assert (=> start!115016 e!772975))

(assert (=> start!115016 true))

(declare-fun array_inv!33682 (array!92617) Bool)

(assert (=> start!115016 (array_inv!33682 a!3742)))

(declare-fun b!1362771 () Bool)

(declare-fun res!906810 () Bool)

(assert (=> b!1362771 (=> (not res!906810) (not e!772975))))

(declare-fun noDuplicate!2402 (List!31958) Bool)

(assert (=> b!1362771 (= res!906810 (noDuplicate!2402 acc!759))))

(declare-fun b!1362772 () Bool)

(declare-fun res!906804 () Bool)

(assert (=> b!1362772 (=> (not res!906804) (not e!772975))))

(declare-fun contains!9523 (List!31958 (_ BitVec 64)) Bool)

(assert (=> b!1362772 (= res!906804 (not (contains!9523 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362773 () Bool)

(declare-fun res!906803 () Bool)

(assert (=> b!1362773 (=> (not res!906803) (not e!772975))))

(assert (=> b!1362773 (= res!906803 (not (contains!9523 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362774 () Bool)

(assert (=> b!1362774 (= e!772975 false)))

(declare-fun lt!600545 () Unit!44894)

(assert (=> b!1362774 (= lt!600545 e!772974)))

(declare-fun c!127426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362774 (= c!127426 (validKeyInArray!0 (select (arr!44737 a!3742) from!3120)))))

(declare-fun b!1362775 () Bool)

(declare-fun res!906805 () Bool)

(assert (=> b!1362775 (=> (not res!906805) (not e!772975))))

(assert (=> b!1362775 (= res!906805 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31955))))

(declare-fun b!1362776 () Bool)

(declare-fun res!906809 () Bool)

(assert (=> b!1362776 (=> (not res!906809) (not e!772975))))

(assert (=> b!1362776 (= res!906809 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45288 a!3742)))))

(declare-fun b!1362777 () Bool)

(declare-fun res!906802 () Bool)

(assert (=> b!1362777 (=> (not res!906802) (not e!772975))))

(assert (=> b!1362777 (= res!906802 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362778 () Bool)

(declare-fun Unit!44896 () Unit!44894)

(assert (=> b!1362778 (= e!772974 Unit!44896)))

(declare-fun b!1362779 () Bool)

(declare-fun res!906806 () Bool)

(assert (=> b!1362779 (=> (not res!906806) (not e!772975))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362779 (= res!906806 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!115016 res!906807) b!1362771))

(assert (= (and b!1362771 res!906810) b!1362772))

(assert (= (and b!1362772 res!906804) b!1362773))

(assert (= (and b!1362773 res!906803) b!1362775))

(assert (= (and b!1362775 res!906805) b!1362777))

(assert (= (and b!1362777 res!906802) b!1362770))

(assert (= (and b!1362770 res!906808) b!1362779))

(assert (= (and b!1362779 res!906806) b!1362776))

(assert (= (and b!1362776 res!906809) b!1362774))

(assert (= (and b!1362774 c!127426) b!1362769))

(assert (= (and b!1362774 (not c!127426)) b!1362778))

(declare-fun m!1247719 () Bool)

(assert (=> b!1362771 m!1247719))

(declare-fun m!1247721 () Bool)

(assert (=> b!1362772 m!1247721))

(declare-fun m!1247723 () Bool)

(assert (=> b!1362777 m!1247723))

(declare-fun m!1247725 () Bool)

(assert (=> b!1362773 m!1247725))

(declare-fun m!1247727 () Bool)

(assert (=> b!1362774 m!1247727))

(assert (=> b!1362774 m!1247727))

(declare-fun m!1247729 () Bool)

(assert (=> b!1362774 m!1247729))

(declare-fun m!1247731 () Bool)

(assert (=> b!1362769 m!1247731))

(assert (=> b!1362769 m!1247727))

(declare-fun m!1247733 () Bool)

(assert (=> b!1362769 m!1247733))

(declare-fun m!1247735 () Bool)

(assert (=> b!1362769 m!1247735))

(declare-fun m!1247737 () Bool)

(assert (=> b!1362769 m!1247737))

(assert (=> b!1362769 m!1247727))

(assert (=> b!1362769 m!1247733))

(declare-fun m!1247739 () Bool)

(assert (=> b!1362769 m!1247739))

(declare-fun m!1247741 () Bool)

(assert (=> start!115016 m!1247741))

(declare-fun m!1247743 () Bool)

(assert (=> b!1362779 m!1247743))

(declare-fun m!1247745 () Bool)

(assert (=> b!1362775 m!1247745))

(push 1)

(assert (not b!1362769))

(assert (not start!115016))

(assert (not b!1362775))

(assert (not b!1362777))

(assert (not b!1362772))

(assert (not b!1362773))

(assert (not b!1362779))

(assert (not b!1362771))

(assert (not b!1362774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

