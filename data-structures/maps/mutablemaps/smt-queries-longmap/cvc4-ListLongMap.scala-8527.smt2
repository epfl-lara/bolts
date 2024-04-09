; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103996 () Bool)

(assert start!103996)

(declare-fun b!1244251 () Bool)

(declare-fun res!830046 () Bool)

(declare-fun e!705280 () Bool)

(assert (=> b!1244251 (=> (not res!830046) (not e!705280))))

(declare-datatypes ((array!80034 0))(
  ( (array!80035 (arr!38606 (Array (_ BitVec 32) (_ BitVec 64))) (size!39143 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80034)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1244251 (= res!830046 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39143 a!3892)) (not (= newFrom!287 (size!39143 a!3892)))))))

(declare-fun b!1244252 () Bool)

(declare-fun res!830050 () Bool)

(assert (=> b!1244252 (=> (not res!830050) (not e!705280))))

(declare-datatypes ((List!27587 0))(
  ( (Nil!27584) (Cons!27583 (h!28792 (_ BitVec 64)) (t!41063 List!27587)) )
))
(declare-fun arrayNoDuplicates!0 (array!80034 (_ BitVec 32) List!27587) Bool)

(assert (=> b!1244252 (= res!830050 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27584))))

(declare-fun b!1244253 () Bool)

(declare-datatypes ((Unit!41308 0))(
  ( (Unit!41309) )
))
(declare-fun e!705278 () Unit!41308)

(declare-fun lt!562645 () Unit!41308)

(assert (=> b!1244253 (= e!705278 lt!562645)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80034 List!27587 List!27587 (_ BitVec 32)) Unit!41308)

(assert (=> b!1244253 (= lt!562645 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27583 (select (arr!38606 a!3892) from!3270) Nil!27584) Nil!27584 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244253 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27584)))

(declare-fun b!1244254 () Bool)

(declare-fun e!705279 () Bool)

(assert (=> b!1244254 (= e!705280 e!705279)))

(declare-fun res!830049 () Bool)

(assert (=> b!1244254 (=> (not res!830049) (not e!705279))))

(assert (=> b!1244254 (= res!830049 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562644 () Unit!41308)

(assert (=> b!1244254 (= lt!562644 e!705278)))

(declare-fun c!121789 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244254 (= c!121789 (validKeyInArray!0 (select (arr!38606 a!3892) from!3270)))))

(declare-fun b!1244250 () Bool)

(declare-fun res!830048 () Bool)

(assert (=> b!1244250 (=> (not res!830048) (not e!705279))))

(assert (=> b!1244250 (= res!830048 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27584))))

(declare-fun res!830047 () Bool)

(assert (=> start!103996 (=> (not res!830047) (not e!705280))))

(assert (=> start!103996 (= res!830047 (and (bvslt (size!39143 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39143 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39143 a!3892))))))

(assert (=> start!103996 e!705280))

(declare-fun array_inv!29382 (array!80034) Bool)

(assert (=> start!103996 (array_inv!29382 a!3892)))

(assert (=> start!103996 true))

(declare-fun b!1244255 () Bool)

(assert (=> b!1244255 (= e!705279 (not (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(assert (=> b!1244255 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27584)))

(declare-fun lt!562643 () Unit!41308)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80034 (_ BitVec 32) (_ BitVec 32)) Unit!41308)

(assert (=> b!1244255 (= lt!562643 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244256 () Bool)

(declare-fun Unit!41310 () Unit!41308)

(assert (=> b!1244256 (= e!705278 Unit!41310)))

(assert (= (and start!103996 res!830047) b!1244252))

(assert (= (and b!1244252 res!830050) b!1244251))

(assert (= (and b!1244251 res!830046) b!1244254))

(assert (= (and b!1244254 c!121789) b!1244253))

(assert (= (and b!1244254 (not c!121789)) b!1244256))

(assert (= (and b!1244254 res!830049) b!1244250))

(assert (= (and b!1244250 res!830048) b!1244255))

(declare-fun m!1146581 () Bool)

(assert (=> b!1244252 m!1146581))

(declare-fun m!1146583 () Bool)

(assert (=> b!1244254 m!1146583))

(assert (=> b!1244254 m!1146583))

(declare-fun m!1146585 () Bool)

(assert (=> b!1244254 m!1146585))

(assert (=> b!1244253 m!1146583))

(declare-fun m!1146587 () Bool)

(assert (=> b!1244253 m!1146587))

(declare-fun m!1146589 () Bool)

(assert (=> b!1244253 m!1146589))

(declare-fun m!1146591 () Bool)

(assert (=> b!1244255 m!1146591))

(declare-fun m!1146593 () Bool)

(assert (=> b!1244255 m!1146593))

(declare-fun m!1146595 () Bool)

(assert (=> start!103996 m!1146595))

(assert (=> b!1244250 m!1146589))

(push 1)

(assert (not b!1244252))

(assert (not b!1244253))

(assert (not b!1244254))

(assert (not b!1244250))

(assert (not b!1244255))

(assert (not start!103996))

(check-sat)

