; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114084 () Bool)

(assert start!114084)

(declare-fun b!1353605 () Bool)

(declare-fun res!898880 () Bool)

(declare-fun e!769180 () Bool)

(assert (=> b!1353605 (=> (not res!898880) (not e!769180))))

(declare-datatypes ((List!31759 0))(
  ( (Nil!31756) (Cons!31755 (h!32964 (_ BitVec 64)) (t!46424 List!31759)) )
))
(declare-fun acc!759 () List!31759)

(declare-fun contains!9324 (List!31759 (_ BitVec 64)) Bool)

(assert (=> b!1353605 (= res!898880 (not (contains!9324 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353606 () Bool)

(declare-fun res!898882 () Bool)

(assert (=> b!1353606 (=> (not res!898882) (not e!769180))))

(declare-datatypes ((array!92189 0))(
  ( (array!92190 (arr!44538 (Array (_ BitVec 32) (_ BitVec 64))) (size!45089 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92189)

(declare-fun arrayNoDuplicates!0 (array!92189 (_ BitVec 32) List!31759) Bool)

(assert (=> b!1353606 (= res!898882 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31756))))

(declare-fun b!1353607 () Bool)

(declare-fun res!898887 () Bool)

(assert (=> b!1353607 (=> (not res!898887) (not e!769180))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353607 (= res!898887 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45089 a!3742))))))

(declare-fun b!1353608 () Bool)

(declare-fun e!769183 () Bool)

(declare-fun e!769182 () Bool)

(assert (=> b!1353608 (= e!769183 e!769182)))

(declare-fun res!898888 () Bool)

(assert (=> b!1353608 (=> (not res!898888) (not e!769182))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353608 (= res!898888 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!597910 () List!31759)

(declare-fun $colon$colon!750 (List!31759 (_ BitVec 64)) List!31759)

(assert (=> b!1353608 (= lt!597910 ($colon$colon!750 acc!759 (select (arr!44538 a!3742) from!3120)))))

(declare-fun b!1353609 () Bool)

(declare-fun res!898883 () Bool)

(assert (=> b!1353609 (=> (not res!898883) (not e!769180))))

(declare-fun noDuplicate!2203 (List!31759) Bool)

(assert (=> b!1353609 (= res!898883 (noDuplicate!2203 acc!759))))

(declare-fun res!898890 () Bool)

(assert (=> start!114084 (=> (not res!898890) (not e!769180))))

(assert (=> start!114084 (= res!898890 (and (bvslt (size!45089 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45089 a!3742))))))

(assert (=> start!114084 e!769180))

(assert (=> start!114084 true))

(declare-fun array_inv!33483 (array!92189) Bool)

(assert (=> start!114084 (array_inv!33483 a!3742)))

(declare-fun b!1353610 () Bool)

(declare-fun res!898885 () Bool)

(assert (=> b!1353610 (=> (not res!898885) (not e!769180))))

(assert (=> b!1353610 (= res!898885 (not (contains!9324 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353611 () Bool)

(assert (=> b!1353611 (= e!769182 false)))

(declare-fun lt!597909 () Bool)

(assert (=> b!1353611 (= lt!597909 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597910))))

(declare-fun b!1353612 () Bool)

(declare-fun res!898881 () Bool)

(assert (=> b!1353612 (=> (not res!898881) (not e!769182))))

(assert (=> b!1353612 (= res!898881 (not (contains!9324 lt!597910 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353613 () Bool)

(declare-fun res!898891 () Bool)

(assert (=> b!1353613 (=> (not res!898891) (not e!769180))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353613 (= res!898891 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353614 () Bool)

(declare-fun res!898892 () Bool)

(assert (=> b!1353614 (=> (not res!898892) (not e!769180))))

(assert (=> b!1353614 (= res!898892 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45089 a!3742)))))

(declare-fun b!1353615 () Bool)

(declare-fun res!898886 () Bool)

(assert (=> b!1353615 (=> (not res!898886) (not e!769180))))

(assert (=> b!1353615 (= res!898886 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353616 () Bool)

(assert (=> b!1353616 (= e!769180 e!769183)))

(declare-fun res!898889 () Bool)

(assert (=> b!1353616 (=> (not res!898889) (not e!769183))))

(declare-fun lt!597912 () Bool)

(assert (=> b!1353616 (= res!898889 (and (not (= from!3120 i!1404)) lt!597912))))

(declare-datatypes ((Unit!44378 0))(
  ( (Unit!44379) )
))
(declare-fun lt!597914 () Unit!44378)

(declare-fun e!769181 () Unit!44378)

(assert (=> b!1353616 (= lt!597914 e!769181)))

(declare-fun c!126805 () Bool)

(assert (=> b!1353616 (= c!126805 lt!597912)))

(assert (=> b!1353616 (= lt!597912 (validKeyInArray!0 (select (arr!44538 a!3742) from!3120)))))

(declare-fun b!1353617 () Bool)

(declare-fun lt!597911 () Unit!44378)

(assert (=> b!1353617 (= e!769181 lt!597911)))

(declare-fun lt!597913 () Unit!44378)

(declare-fun lemmaListSubSeqRefl!0 (List!31759) Unit!44378)

(assert (=> b!1353617 (= lt!597913 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!733 (List!31759 List!31759) Bool)

(assert (=> b!1353617 (subseq!733 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92189 List!31759 List!31759 (_ BitVec 32)) Unit!44378)

(assert (=> b!1353617 (= lt!597911 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!750 acc!759 (select (arr!44538 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353617 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353618 () Bool)

(declare-fun res!898884 () Bool)

(assert (=> b!1353618 (=> (not res!898884) (not e!769182))))

(assert (=> b!1353618 (= res!898884 (not (contains!9324 lt!597910 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353619 () Bool)

(declare-fun Unit!44380 () Unit!44378)

(assert (=> b!1353619 (= e!769181 Unit!44380)))

(declare-fun b!1353620 () Bool)

(declare-fun res!898893 () Bool)

(assert (=> b!1353620 (=> (not res!898893) (not e!769182))))

(assert (=> b!1353620 (= res!898893 (noDuplicate!2203 lt!597910))))

(assert (= (and start!114084 res!898890) b!1353609))

(assert (= (and b!1353609 res!898883) b!1353605))

(assert (= (and b!1353605 res!898880) b!1353610))

(assert (= (and b!1353610 res!898885) b!1353606))

(assert (= (and b!1353606 res!898882) b!1353615))

(assert (= (and b!1353615 res!898886) b!1353607))

(assert (= (and b!1353607 res!898887) b!1353613))

(assert (= (and b!1353613 res!898891) b!1353614))

(assert (= (and b!1353614 res!898892) b!1353616))

(assert (= (and b!1353616 c!126805) b!1353617))

(assert (= (and b!1353616 (not c!126805)) b!1353619))

(assert (= (and b!1353616 res!898889) b!1353608))

(assert (= (and b!1353608 res!898888) b!1353620))

(assert (= (and b!1353620 res!898893) b!1353618))

(assert (= (and b!1353618 res!898884) b!1353612))

(assert (= (and b!1353612 res!898881) b!1353611))

(declare-fun m!1240201 () Bool)

(assert (=> b!1353608 m!1240201))

(assert (=> b!1353608 m!1240201))

(declare-fun m!1240203 () Bool)

(assert (=> b!1353608 m!1240203))

(declare-fun m!1240205 () Bool)

(assert (=> b!1353620 m!1240205))

(declare-fun m!1240207 () Bool)

(assert (=> b!1353610 m!1240207))

(assert (=> b!1353616 m!1240201))

(assert (=> b!1353616 m!1240201))

(declare-fun m!1240209 () Bool)

(assert (=> b!1353616 m!1240209))

(declare-fun m!1240211 () Bool)

(assert (=> b!1353609 m!1240211))

(declare-fun m!1240213 () Bool)

(assert (=> b!1353613 m!1240213))

(declare-fun m!1240215 () Bool)

(assert (=> b!1353612 m!1240215))

(declare-fun m!1240217 () Bool)

(assert (=> b!1353611 m!1240217))

(declare-fun m!1240219 () Bool)

(assert (=> b!1353605 m!1240219))

(declare-fun m!1240221 () Bool)

(assert (=> start!114084 m!1240221))

(declare-fun m!1240223 () Bool)

(assert (=> b!1353618 m!1240223))

(declare-fun m!1240225 () Bool)

(assert (=> b!1353617 m!1240225))

(assert (=> b!1353617 m!1240201))

(assert (=> b!1353617 m!1240203))

(declare-fun m!1240227 () Bool)

(assert (=> b!1353617 m!1240227))

(declare-fun m!1240229 () Bool)

(assert (=> b!1353617 m!1240229))

(assert (=> b!1353617 m!1240201))

(assert (=> b!1353617 m!1240203))

(declare-fun m!1240231 () Bool)

(assert (=> b!1353617 m!1240231))

(declare-fun m!1240233 () Bool)

(assert (=> b!1353606 m!1240233))

(declare-fun m!1240235 () Bool)

(assert (=> b!1353615 m!1240235))

(push 1)

