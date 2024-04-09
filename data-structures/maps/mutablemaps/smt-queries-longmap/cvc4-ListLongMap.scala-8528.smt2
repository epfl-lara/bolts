; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104002 () Bool)

(assert start!104002)

(declare-fun b!1244313 () Bool)

(declare-fun res!830092 () Bool)

(declare-fun e!705315 () Bool)

(assert (=> b!1244313 (=> (not res!830092) (not e!705315))))

(declare-datatypes ((array!80040 0))(
  ( (array!80041 (arr!38609 (Array (_ BitVec 32) (_ BitVec 64))) (size!39146 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80040)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1244313 (= res!830092 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39146 a!3892)) (not (= newFrom!287 (size!39146 a!3892)))))))

(declare-fun b!1244314 () Bool)

(declare-fun e!705316 () Bool)

(assert (=> b!1244314 (= e!705316 (not true))))

(declare-datatypes ((List!27590 0))(
  ( (Nil!27587) (Cons!27586 (h!28795 (_ BitVec 64)) (t!41066 List!27590)) )
))
(declare-fun arrayNoDuplicates!0 (array!80040 (_ BitVec 32) List!27590) Bool)

(assert (=> b!1244314 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27587)))

(declare-datatypes ((Unit!41317 0))(
  ( (Unit!41318) )
))
(declare-fun lt!562670 () Unit!41317)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80040 (_ BitVec 32) (_ BitVec 32)) Unit!41317)

(assert (=> b!1244314 (= lt!562670 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244315 () Bool)

(declare-fun res!830095 () Bool)

(assert (=> b!1244315 (=> (not res!830095) (not e!705315))))

(assert (=> b!1244315 (= res!830095 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27587))))

(declare-fun res!830091 () Bool)

(assert (=> start!104002 (=> (not res!830091) (not e!705315))))

(assert (=> start!104002 (= res!830091 (and (bvslt (size!39146 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39146 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39146 a!3892))))))

(assert (=> start!104002 e!705315))

(declare-fun array_inv!29385 (array!80040) Bool)

(assert (=> start!104002 (array_inv!29385 a!3892)))

(assert (=> start!104002 true))

(declare-fun b!1244316 () Bool)

(declare-fun res!830094 () Bool)

(assert (=> b!1244316 (=> (not res!830094) (not e!705316))))

(assert (=> b!1244316 (= res!830094 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27587))))

(declare-fun b!1244317 () Bool)

(declare-fun e!705314 () Unit!41317)

(declare-fun Unit!41319 () Unit!41317)

(assert (=> b!1244317 (= e!705314 Unit!41319)))

(declare-fun b!1244318 () Bool)

(assert (=> b!1244318 (= e!705315 e!705316)))

(declare-fun res!830093 () Bool)

(assert (=> b!1244318 (=> (not res!830093) (not e!705316))))

(assert (=> b!1244318 (= res!830093 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562672 () Unit!41317)

(assert (=> b!1244318 (= lt!562672 e!705314)))

(declare-fun c!121798 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244318 (= c!121798 (validKeyInArray!0 (select (arr!38609 a!3892) from!3270)))))

(declare-fun b!1244319 () Bool)

(declare-fun lt!562671 () Unit!41317)

(assert (=> b!1244319 (= e!705314 lt!562671)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80040 List!27590 List!27590 (_ BitVec 32)) Unit!41317)

(assert (=> b!1244319 (= lt!562671 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27586 (select (arr!38609 a!3892) from!3270) Nil!27587) Nil!27587 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244319 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27587)))

(assert (= (and start!104002 res!830091) b!1244315))

(assert (= (and b!1244315 res!830095) b!1244313))

(assert (= (and b!1244313 res!830092) b!1244318))

(assert (= (and b!1244318 c!121798) b!1244319))

(assert (= (and b!1244318 (not c!121798)) b!1244317))

(assert (= (and b!1244318 res!830093) b!1244316))

(assert (= (and b!1244316 res!830094) b!1244314))

(declare-fun m!1146629 () Bool)

(assert (=> b!1244314 m!1146629))

(declare-fun m!1146631 () Bool)

(assert (=> b!1244314 m!1146631))

(declare-fun m!1146633 () Bool)

(assert (=> b!1244318 m!1146633))

(assert (=> b!1244318 m!1146633))

(declare-fun m!1146635 () Bool)

(assert (=> b!1244318 m!1146635))

(declare-fun m!1146637 () Bool)

(assert (=> start!104002 m!1146637))

(assert (=> b!1244319 m!1146633))

(declare-fun m!1146639 () Bool)

(assert (=> b!1244319 m!1146639))

(declare-fun m!1146641 () Bool)

(assert (=> b!1244319 m!1146641))

(declare-fun m!1146643 () Bool)

(assert (=> b!1244315 m!1146643))

(assert (=> b!1244316 m!1146641))

(push 1)

(assert (not b!1244319))

(assert (not b!1244315))

(assert (not b!1244314))

(assert (not b!1244316))

(assert (not b!1244318))

(assert (not start!104002))

(check-sat)

(pop 1)

