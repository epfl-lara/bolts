; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103970 () Bool)

(assert start!103970)

(declare-fun b!1244008 () Bool)

(declare-fun e!705123 () Bool)

(declare-fun e!705124 () Bool)

(assert (=> b!1244008 (= e!705123 e!705124)))

(declare-fun res!829883 () Bool)

(assert (=> b!1244008 (=> (not res!829883) (not e!705124))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244008 (= res!829883 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41269 0))(
  ( (Unit!41270) )
))
(declare-fun lt!562527 () Unit!41269)

(declare-fun e!705122 () Unit!41269)

(assert (=> b!1244008 (= lt!562527 e!705122)))

(declare-fun c!121750 () Bool)

(declare-datatypes ((array!80008 0))(
  ( (array!80009 (arr!38593 (Array (_ BitVec 32) (_ BitVec 64))) (size!39130 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80008)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244008 (= c!121750 (validKeyInArray!0 (select (arr!38593 a!3892) from!3270)))))

(declare-fun b!1244009 () Bool)

(declare-fun res!829884 () Bool)

(assert (=> b!1244009 (=> (not res!829884) (not e!705123))))

(assert (=> b!1244009 (= res!829884 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39130 a!3892)) (not (= newFrom!287 (size!39130 a!3892)))))))

(declare-fun res!829882 () Bool)

(assert (=> start!103970 (=> (not res!829882) (not e!705123))))

(assert (=> start!103970 (= res!829882 (and (bvslt (size!39130 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39130 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39130 a!3892))))))

(assert (=> start!103970 e!705123))

(declare-fun array_inv!29369 (array!80008) Bool)

(assert (=> start!103970 (array_inv!29369 a!3892)))

(assert (=> start!103970 true))

(declare-fun b!1244010 () Bool)

(declare-fun Unit!41271 () Unit!41269)

(assert (=> b!1244010 (= e!705122 Unit!41271)))

(declare-fun b!1244011 () Bool)

(declare-fun res!829885 () Bool)

(assert (=> b!1244011 (=> (not res!829885) (not e!705123))))

(declare-datatypes ((List!27574 0))(
  ( (Nil!27571) (Cons!27570 (h!28779 (_ BitVec 64)) (t!41050 List!27574)) )
))
(declare-fun arrayNoDuplicates!0 (array!80008 (_ BitVec 32) List!27574) Bool)

(assert (=> b!1244011 (= res!829885 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27571))))

(declare-fun b!1244012 () Bool)

(assert (=> b!1244012 (= e!705124 false)))

(declare-fun lt!562528 () Bool)

(assert (=> b!1244012 (= lt!562528 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27571))))

(declare-fun b!1244013 () Bool)

(declare-fun lt!562526 () Unit!41269)

(assert (=> b!1244013 (= e!705122 lt!562526)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80008 List!27574 List!27574 (_ BitVec 32)) Unit!41269)

(assert (=> b!1244013 (= lt!562526 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27570 (select (arr!38593 a!3892) from!3270) Nil!27571) Nil!27571 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244013 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27571)))

(assert (= (and start!103970 res!829882) b!1244011))

(assert (= (and b!1244011 res!829885) b!1244009))

(assert (= (and b!1244009 res!829884) b!1244008))

(assert (= (and b!1244008 c!121750) b!1244013))

(assert (= (and b!1244008 (not c!121750)) b!1244010))

(assert (= (and b!1244008 res!829883) b!1244012))

(declare-fun m!1146417 () Bool)

(assert (=> b!1244008 m!1146417))

(assert (=> b!1244008 m!1146417))

(declare-fun m!1146419 () Bool)

(assert (=> b!1244008 m!1146419))

(declare-fun m!1146421 () Bool)

(assert (=> start!103970 m!1146421))

(declare-fun m!1146423 () Bool)

(assert (=> b!1244012 m!1146423))

(assert (=> b!1244013 m!1146417))

(declare-fun m!1146425 () Bool)

(assert (=> b!1244013 m!1146425))

(assert (=> b!1244013 m!1146423))

(declare-fun m!1146427 () Bool)

(assert (=> b!1244011 m!1146427))

(check-sat (not b!1244008) (not b!1244011) (not b!1244013) (not b!1244012) (not start!103970))
(check-sat)
