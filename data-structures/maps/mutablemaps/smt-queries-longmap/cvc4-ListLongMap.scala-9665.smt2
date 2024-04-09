; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114168 () Bool)

(assert start!114168)

(declare-fun b!1355482 () Bool)

(declare-datatypes ((Unit!44504 0))(
  ( (Unit!44505) )
))
(declare-fun e!769765 () Unit!44504)

(declare-fun lt!598623 () Unit!44504)

(assert (=> b!1355482 (= e!769765 lt!598623)))

(declare-fun lt!598622 () Unit!44504)

(declare-datatypes ((List!31801 0))(
  ( (Nil!31798) (Cons!31797 (h!33006 (_ BitVec 64)) (t!46466 List!31801)) )
))
(declare-fun acc!759 () List!31801)

(declare-fun lemmaListSubSeqRefl!0 (List!31801) Unit!44504)

(assert (=> b!1355482 (= lt!598622 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!775 (List!31801 List!31801) Bool)

(assert (=> b!1355482 (subseq!775 acc!759 acc!759)))

(declare-datatypes ((array!92273 0))(
  ( (array!92274 (arr!44580 (Array (_ BitVec 32) (_ BitVec 64))) (size!45131 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92273)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92273 List!31801 List!31801 (_ BitVec 32)) Unit!44504)

(declare-fun $colon$colon!792 (List!31801 (_ BitVec 64)) List!31801)

(assert (=> b!1355482 (= lt!598623 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!792 acc!759 (select (arr!44580 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92273 (_ BitVec 32) List!31801) Bool)

(assert (=> b!1355482 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355483 () Bool)

(declare-fun Unit!44506 () Unit!44504)

(assert (=> b!1355483 (= e!769765 Unit!44506)))

(declare-fun b!1355484 () Bool)

(declare-fun e!769767 () Bool)

(assert (=> b!1355484 (= e!769767 false)))

(declare-fun lt!598624 () Bool)

(assert (=> b!1355484 (= lt!598624 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355485 () Bool)

(declare-fun res!900510 () Bool)

(declare-fun e!769766 () Bool)

(assert (=> b!1355485 (=> (not res!900510) (not e!769766))))

(assert (=> b!1355485 (= res!900510 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31798))))

(declare-fun b!1355486 () Bool)

(declare-fun res!900506 () Bool)

(assert (=> b!1355486 (=> (not res!900506) (not e!769766))))

(assert (=> b!1355486 (= res!900506 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355487 () Bool)

(declare-fun res!900509 () Bool)

(assert (=> b!1355487 (=> (not res!900509) (not e!769766))))

(assert (=> b!1355487 (= res!900509 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45131 a!3742)))))

(declare-fun b!1355488 () Bool)

(declare-fun res!900511 () Bool)

(assert (=> b!1355488 (=> (not res!900511) (not e!769766))))

(declare-fun contains!9366 (List!31801 (_ BitVec 64)) Bool)

(assert (=> b!1355488 (= res!900511 (not (contains!9366 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355489 () Bool)

(assert (=> b!1355489 (= e!769766 e!769767)))

(declare-fun res!900512 () Bool)

(assert (=> b!1355489 (=> (not res!900512) (not e!769767))))

(declare-fun lt!598625 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355489 (= res!900512 (and (not (= from!3120 i!1404)) (not lt!598625) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598621 () Unit!44504)

(assert (=> b!1355489 (= lt!598621 e!769765)))

(declare-fun c!126931 () Bool)

(assert (=> b!1355489 (= c!126931 lt!598625)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355489 (= lt!598625 (validKeyInArray!0 (select (arr!44580 a!3742) from!3120)))))

(declare-fun b!1355490 () Bool)

(declare-fun res!900504 () Bool)

(assert (=> b!1355490 (=> (not res!900504) (not e!769766))))

(declare-fun noDuplicate!2245 (List!31801) Bool)

(assert (=> b!1355490 (= res!900504 (noDuplicate!2245 acc!759))))

(declare-fun b!1355481 () Bool)

(declare-fun res!900513 () Bool)

(assert (=> b!1355481 (=> (not res!900513) (not e!769766))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355481 (= res!900513 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!900505 () Bool)

(assert (=> start!114168 (=> (not res!900505) (not e!769766))))

(assert (=> start!114168 (= res!900505 (and (bvslt (size!45131 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45131 a!3742))))))

(assert (=> start!114168 e!769766))

(assert (=> start!114168 true))

(declare-fun array_inv!33525 (array!92273) Bool)

(assert (=> start!114168 (array_inv!33525 a!3742)))

(declare-fun b!1355491 () Bool)

(declare-fun res!900507 () Bool)

(assert (=> b!1355491 (=> (not res!900507) (not e!769766))))

(assert (=> b!1355491 (= res!900507 (not (contains!9366 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355492 () Bool)

(declare-fun res!900508 () Bool)

(assert (=> b!1355492 (=> (not res!900508) (not e!769766))))

(assert (=> b!1355492 (= res!900508 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45131 a!3742))))))

(assert (= (and start!114168 res!900505) b!1355490))

(assert (= (and b!1355490 res!900504) b!1355488))

(assert (= (and b!1355488 res!900511) b!1355491))

(assert (= (and b!1355491 res!900507) b!1355485))

(assert (= (and b!1355485 res!900510) b!1355486))

(assert (= (and b!1355486 res!900506) b!1355492))

(assert (= (and b!1355492 res!900508) b!1355481))

(assert (= (and b!1355481 res!900513) b!1355487))

(assert (= (and b!1355487 res!900509) b!1355489))

(assert (= (and b!1355489 c!126931) b!1355482))

(assert (= (and b!1355489 (not c!126931)) b!1355483))

(assert (= (and b!1355489 res!900512) b!1355484))

(declare-fun m!1241673 () Bool)

(assert (=> b!1355489 m!1241673))

(assert (=> b!1355489 m!1241673))

(declare-fun m!1241675 () Bool)

(assert (=> b!1355489 m!1241675))

(declare-fun m!1241677 () Bool)

(assert (=> b!1355482 m!1241677))

(assert (=> b!1355482 m!1241673))

(declare-fun m!1241679 () Bool)

(assert (=> b!1355482 m!1241679))

(declare-fun m!1241681 () Bool)

(assert (=> b!1355482 m!1241681))

(declare-fun m!1241683 () Bool)

(assert (=> b!1355482 m!1241683))

(assert (=> b!1355482 m!1241673))

(assert (=> b!1355482 m!1241679))

(declare-fun m!1241685 () Bool)

(assert (=> b!1355482 m!1241685))

(declare-fun m!1241687 () Bool)

(assert (=> b!1355490 m!1241687))

(declare-fun m!1241689 () Bool)

(assert (=> b!1355481 m!1241689))

(declare-fun m!1241691 () Bool)

(assert (=> b!1355485 m!1241691))

(declare-fun m!1241693 () Bool)

(assert (=> b!1355486 m!1241693))

(declare-fun m!1241695 () Bool)

(assert (=> start!114168 m!1241695))

(assert (=> b!1355484 m!1241683))

(declare-fun m!1241697 () Bool)

(assert (=> b!1355491 m!1241697))

(declare-fun m!1241699 () Bool)

(assert (=> b!1355488 m!1241699))

(push 1)

(assert (not b!1355486))

