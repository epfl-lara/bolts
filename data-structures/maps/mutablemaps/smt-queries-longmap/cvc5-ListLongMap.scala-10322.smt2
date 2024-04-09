; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121456 () Bool)

(assert start!121456)

(declare-fun b!1410573 () Bool)

(declare-fun res!947909 () Bool)

(declare-fun e!798281 () Bool)

(assert (=> b!1410573 (=> (not res!947909) (not e!798281))))

(declare-datatypes ((array!96375 0))(
  ( (array!96376 (arr!46522 (Array (_ BitVec 32) (_ BitVec 64))) (size!47073 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96375)

(declare-datatypes ((List!33221 0))(
  ( (Nil!33218) (Cons!33217 (h!34489 (_ BitVec 64)) (t!47922 List!33221)) )
))
(declare-fun arrayNoDuplicates!0 (array!96375 (_ BitVec 32) List!33221) Bool)

(assert (=> b!1410573 (= res!947909 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33218))))

(declare-fun res!947913 () Bool)

(assert (=> start!121456 (=> (not res!947913) (not e!798281))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121456 (= res!947913 (validMask!0 mask!2840))))

(assert (=> start!121456 e!798281))

(assert (=> start!121456 true))

(declare-fun array_inv!35467 (array!96375) Bool)

(assert (=> start!121456 (array_inv!35467 a!2901)))

(declare-fun b!1410574 () Bool)

(declare-fun res!947914 () Bool)

(assert (=> b!1410574 (=> (not res!947914) (not e!798281))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410574 (= res!947914 (validKeyInArray!0 (select (arr!46522 a!2901) j!112)))))

(declare-fun b!1410575 () Bool)

(declare-fun res!947916 () Bool)

(assert (=> b!1410575 (=> (not res!947916) (not e!798281))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410575 (= res!947916 (and (= (size!47073 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47073 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47073 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410576 () Bool)

(declare-fun res!947912 () Bool)

(assert (=> b!1410576 (=> (not res!947912) (not e!798281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96375 (_ BitVec 32)) Bool)

(assert (=> b!1410576 (= res!947912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410577 () Bool)

(declare-fun res!947915 () Bool)

(assert (=> b!1410577 (=> (not res!947915) (not e!798281))))

(assert (=> b!1410577 (= res!947915 (validKeyInArray!0 (select (arr!46522 a!2901) i!1037)))))

(declare-fun e!798283 () Bool)

(declare-fun b!1410578 () Bool)

(declare-datatypes ((SeekEntryResult!10855 0))(
  ( (MissingZero!10855 (index!45796 (_ BitVec 32))) (Found!10855 (index!45797 (_ BitVec 32))) (Intermediate!10855 (undefined!11667 Bool) (index!45798 (_ BitVec 32)) (x!127405 (_ BitVec 32))) (Undefined!10855) (MissingVacant!10855 (index!45799 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96375 (_ BitVec 32)) SeekEntryResult!10855)

(assert (=> b!1410578 (= e!798283 (= (seekEntryOrOpen!0 (select (arr!46522 a!2901) j!112) a!2901 mask!2840) (Found!10855 j!112)))))

(declare-fun b!1410579 () Bool)

(declare-fun e!798282 () Bool)

(assert (=> b!1410579 (= e!798281 (not e!798282))))

(declare-fun res!947911 () Bool)

(assert (=> b!1410579 (=> res!947911 e!798282)))

(declare-fun lt!621214 () SeekEntryResult!10855)

(assert (=> b!1410579 (= res!947911 (or (not (is-Intermediate!10855 lt!621214)) (undefined!11667 lt!621214)))))

(assert (=> b!1410579 e!798283))

(declare-fun res!947910 () Bool)

(assert (=> b!1410579 (=> (not res!947910) (not e!798283))))

(assert (=> b!1410579 (= res!947910 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47634 0))(
  ( (Unit!47635) )
))
(declare-fun lt!621212 () Unit!47634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47634)

(assert (=> b!1410579 (= lt!621212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621211 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96375 (_ BitVec 32)) SeekEntryResult!10855)

(assert (=> b!1410579 (= lt!621214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621211 (select (arr!46522 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410579 (= lt!621211 (toIndex!0 (select (arr!46522 a!2901) j!112) mask!2840))))

(declare-fun lt!621213 () SeekEntryResult!10855)

(declare-fun b!1410580 () Bool)

(assert (=> b!1410580 (= e!798282 (or (= lt!621214 lt!621213) (not (is-Intermediate!10855 lt!621213)) (bvslt (x!127405 lt!621214) #b00000000000000000000000000000000) (bvsgt (x!127405 lt!621214) #b01111111111111111111111111111110) (bvslt lt!621211 #b00000000000000000000000000000000) (bvsge lt!621211 (size!47073 a!2901)) (bvslt (index!45798 lt!621214) #b00000000000000000000000000000000) (bvsge (index!45798 lt!621214) (size!47073 a!2901)) (= lt!621214 (Intermediate!10855 false (index!45798 lt!621214) (x!127405 lt!621214)))))))

(assert (=> b!1410580 (= lt!621213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46522 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46522 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96376 (store (arr!46522 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47073 a!2901)) mask!2840))))

(assert (= (and start!121456 res!947913) b!1410575))

(assert (= (and b!1410575 res!947916) b!1410577))

(assert (= (and b!1410577 res!947915) b!1410574))

(assert (= (and b!1410574 res!947914) b!1410576))

(assert (= (and b!1410576 res!947912) b!1410573))

(assert (= (and b!1410573 res!947909) b!1410579))

(assert (= (and b!1410579 res!947910) b!1410578))

(assert (= (and b!1410579 (not res!947911)) b!1410580))

(declare-fun m!1300235 () Bool)

(assert (=> b!1410579 m!1300235))

(declare-fun m!1300237 () Bool)

(assert (=> b!1410579 m!1300237))

(assert (=> b!1410579 m!1300235))

(declare-fun m!1300239 () Bool)

(assert (=> b!1410579 m!1300239))

(assert (=> b!1410579 m!1300235))

(declare-fun m!1300241 () Bool)

(assert (=> b!1410579 m!1300241))

(declare-fun m!1300243 () Bool)

(assert (=> b!1410579 m!1300243))

(assert (=> b!1410574 m!1300235))

(assert (=> b!1410574 m!1300235))

(declare-fun m!1300245 () Bool)

(assert (=> b!1410574 m!1300245))

(declare-fun m!1300247 () Bool)

(assert (=> start!121456 m!1300247))

(declare-fun m!1300249 () Bool)

(assert (=> start!121456 m!1300249))

(declare-fun m!1300251 () Bool)

(assert (=> b!1410576 m!1300251))

(declare-fun m!1300253 () Bool)

(assert (=> b!1410577 m!1300253))

(assert (=> b!1410577 m!1300253))

(declare-fun m!1300255 () Bool)

(assert (=> b!1410577 m!1300255))

(assert (=> b!1410578 m!1300235))

(assert (=> b!1410578 m!1300235))

(declare-fun m!1300257 () Bool)

(assert (=> b!1410578 m!1300257))

(declare-fun m!1300259 () Bool)

(assert (=> b!1410573 m!1300259))

(declare-fun m!1300261 () Bool)

(assert (=> b!1410580 m!1300261))

(declare-fun m!1300263 () Bool)

(assert (=> b!1410580 m!1300263))

(assert (=> b!1410580 m!1300263))

(declare-fun m!1300265 () Bool)

(assert (=> b!1410580 m!1300265))

(assert (=> b!1410580 m!1300265))

(assert (=> b!1410580 m!1300263))

(declare-fun m!1300267 () Bool)

(assert (=> b!1410580 m!1300267))

(push 1)

