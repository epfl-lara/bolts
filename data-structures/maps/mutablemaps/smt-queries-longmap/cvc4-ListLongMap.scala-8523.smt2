; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103972 () Bool)

(assert start!103972)

(declare-fun res!829895 () Bool)

(declare-fun e!705137 () Bool)

(assert (=> start!103972 (=> (not res!829895) (not e!705137))))

(declare-datatypes ((array!80010 0))(
  ( (array!80011 (arr!38594 (Array (_ BitVec 32) (_ BitVec 64))) (size!39131 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80010)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103972 (= res!829895 (and (bvslt (size!39131 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39131 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39131 a!3892))))))

(assert (=> start!103972 e!705137))

(declare-fun array_inv!29370 (array!80010) Bool)

(assert (=> start!103972 (array_inv!29370 a!3892)))

(assert (=> start!103972 true))

(declare-fun b!1244026 () Bool)

(declare-fun e!705134 () Bool)

(assert (=> b!1244026 (= e!705134 false)))

(declare-fun lt!562535 () Bool)

(declare-datatypes ((List!27575 0))(
  ( (Nil!27572) (Cons!27571 (h!28780 (_ BitVec 64)) (t!41051 List!27575)) )
))
(declare-fun arrayNoDuplicates!0 (array!80010 (_ BitVec 32) List!27575) Bool)

(assert (=> b!1244026 (= lt!562535 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27572))))

(declare-fun b!1244027 () Bool)

(declare-datatypes ((Unit!41272 0))(
  ( (Unit!41273) )
))
(declare-fun e!705136 () Unit!41272)

(declare-fun lt!562536 () Unit!41272)

(assert (=> b!1244027 (= e!705136 lt!562536)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80010 List!27575 List!27575 (_ BitVec 32)) Unit!41272)

(assert (=> b!1244027 (= lt!562536 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27571 (select (arr!38594 a!3892) from!3270) Nil!27572) Nil!27572 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244027 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27572)))

(declare-fun b!1244028 () Bool)

(assert (=> b!1244028 (= e!705137 e!705134)))

(declare-fun res!829896 () Bool)

(assert (=> b!1244028 (=> (not res!829896) (not e!705134))))

(assert (=> b!1244028 (= res!829896 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562537 () Unit!41272)

(assert (=> b!1244028 (= lt!562537 e!705136)))

(declare-fun c!121753 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244028 (= c!121753 (validKeyInArray!0 (select (arr!38594 a!3892) from!3270)))))

(declare-fun b!1244029 () Bool)

(declare-fun res!829897 () Bool)

(assert (=> b!1244029 (=> (not res!829897) (not e!705137))))

(assert (=> b!1244029 (= res!829897 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27572))))

(declare-fun b!1244030 () Bool)

(declare-fun Unit!41274 () Unit!41272)

(assert (=> b!1244030 (= e!705136 Unit!41274)))

(declare-fun b!1244031 () Bool)

(declare-fun res!829894 () Bool)

(assert (=> b!1244031 (=> (not res!829894) (not e!705137))))

(assert (=> b!1244031 (= res!829894 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39131 a!3892)) (not (= newFrom!287 (size!39131 a!3892)))))))

(assert (= (and start!103972 res!829895) b!1244029))

(assert (= (and b!1244029 res!829897) b!1244031))

(assert (= (and b!1244031 res!829894) b!1244028))

(assert (= (and b!1244028 c!121753) b!1244027))

(assert (= (and b!1244028 (not c!121753)) b!1244030))

(assert (= (and b!1244028 res!829896) b!1244026))

(declare-fun m!1146429 () Bool)

(assert (=> b!1244027 m!1146429))

(declare-fun m!1146431 () Bool)

(assert (=> b!1244027 m!1146431))

(declare-fun m!1146433 () Bool)

(assert (=> b!1244027 m!1146433))

(assert (=> b!1244026 m!1146433))

(declare-fun m!1146435 () Bool)

(assert (=> b!1244029 m!1146435))

(declare-fun m!1146437 () Bool)

(assert (=> start!103972 m!1146437))

(assert (=> b!1244028 m!1146429))

(assert (=> b!1244028 m!1146429))

(declare-fun m!1146439 () Bool)

(assert (=> b!1244028 m!1146439))

(push 1)

(assert (not b!1244028))

(assert (not start!103972))

(assert (not b!1244027))

(assert (not b!1244029))

(assert (not b!1244026))

(check-sat)

