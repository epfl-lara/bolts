; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119224 () Bool)

(assert start!119224)

(declare-fun res!930492 () Bool)

(declare-fun e!787346 () Bool)

(assert (=> start!119224 (=> (not res!930492) (not e!787346))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119224 (= res!930492 (validMask!0 mask!2840))))

(assert (=> start!119224 e!787346))

(assert (=> start!119224 true))

(declare-datatypes ((array!95079 0))(
  ( (array!95080 (arr!45901 (Array (_ BitVec 32) (_ BitVec 64))) (size!46452 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95079)

(declare-fun array_inv!34846 (array!95079) Bool)

(assert (=> start!119224 (array_inv!34846 a!2901)))

(declare-fun b!1390222 () Bool)

(declare-fun res!930493 () Bool)

(assert (=> b!1390222 (=> (not res!930493) (not e!787346))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390222 (= res!930493 (validKeyInArray!0 (select (arr!45901 a!2901) j!112)))))

(declare-fun e!787344 () Bool)

(declare-fun b!1390223 () Bool)

(declare-datatypes ((SeekEntryResult!10240 0))(
  ( (MissingZero!10240 (index!43330 (_ BitVec 32))) (Found!10240 (index!43331 (_ BitVec 32))) (Intermediate!10240 (undefined!11052 Bool) (index!43332 (_ BitVec 32)) (x!125017 (_ BitVec 32))) (Undefined!10240) (MissingVacant!10240 (index!43333 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95079 (_ BitVec 32)) SeekEntryResult!10240)

(assert (=> b!1390223 (= e!787344 (= (seekEntryOrOpen!0 (select (arr!45901 a!2901) j!112) a!2901 mask!2840) (Found!10240 j!112)))))

(declare-fun b!1390224 () Bool)

(declare-fun res!930496 () Bool)

(assert (=> b!1390224 (=> (not res!930496) (not e!787346))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390224 (= res!930496 (and (= (size!46452 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46452 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46452 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390225 () Bool)

(declare-fun res!930497 () Bool)

(assert (=> b!1390225 (=> (not res!930497) (not e!787346))))

(declare-datatypes ((List!32600 0))(
  ( (Nil!32597) (Cons!32596 (h!33814 (_ BitVec 64)) (t!47301 List!32600)) )
))
(declare-fun arrayNoDuplicates!0 (array!95079 (_ BitVec 32) List!32600) Bool)

(assert (=> b!1390225 (= res!930497 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32597))))

(declare-fun b!1390226 () Bool)

(declare-fun res!930498 () Bool)

(assert (=> b!1390226 (=> (not res!930498) (not e!787346))))

(assert (=> b!1390226 (= res!930498 (validKeyInArray!0 (select (arr!45901 a!2901) i!1037)))))

(declare-fun b!1390227 () Bool)

(declare-fun res!930494 () Bool)

(assert (=> b!1390227 (=> (not res!930494) (not e!787346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95079 (_ BitVec 32)) Bool)

(assert (=> b!1390227 (= res!930494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390228 () Bool)

(assert (=> b!1390228 (= e!787346 (not true))))

(assert (=> b!1390228 e!787344))

(declare-fun res!930495 () Bool)

(assert (=> b!1390228 (=> (not res!930495) (not e!787344))))

(assert (=> b!1390228 (= res!930495 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46434 0))(
  ( (Unit!46435) )
))
(declare-fun lt!610725 () Unit!46434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46434)

(assert (=> b!1390228 (= lt!610725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610726 () SeekEntryResult!10240)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95079 (_ BitVec 32)) SeekEntryResult!10240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390228 (= lt!610726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45901 a!2901) j!112) mask!2840) (select (arr!45901 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119224 res!930492) b!1390224))

(assert (= (and b!1390224 res!930496) b!1390226))

(assert (= (and b!1390226 res!930498) b!1390222))

(assert (= (and b!1390222 res!930493) b!1390227))

(assert (= (and b!1390227 res!930494) b!1390225))

(assert (= (and b!1390225 res!930497) b!1390228))

(assert (= (and b!1390228 res!930495) b!1390223))

(declare-fun m!1276097 () Bool)

(assert (=> b!1390223 m!1276097))

(assert (=> b!1390223 m!1276097))

(declare-fun m!1276099 () Bool)

(assert (=> b!1390223 m!1276099))

(declare-fun m!1276101 () Bool)

(assert (=> b!1390226 m!1276101))

(assert (=> b!1390226 m!1276101))

(declare-fun m!1276103 () Bool)

(assert (=> b!1390226 m!1276103))

(assert (=> b!1390222 m!1276097))

(assert (=> b!1390222 m!1276097))

(declare-fun m!1276105 () Bool)

(assert (=> b!1390222 m!1276105))

(declare-fun m!1276107 () Bool)

(assert (=> start!119224 m!1276107))

(declare-fun m!1276109 () Bool)

(assert (=> start!119224 m!1276109))

(declare-fun m!1276111 () Bool)

(assert (=> b!1390227 m!1276111))

(assert (=> b!1390228 m!1276097))

(declare-fun m!1276113 () Bool)

(assert (=> b!1390228 m!1276113))

(assert (=> b!1390228 m!1276097))

(declare-fun m!1276115 () Bool)

(assert (=> b!1390228 m!1276115))

(assert (=> b!1390228 m!1276113))

(assert (=> b!1390228 m!1276097))

(declare-fun m!1276117 () Bool)

(assert (=> b!1390228 m!1276117))

(declare-fun m!1276119 () Bool)

(assert (=> b!1390228 m!1276119))

(declare-fun m!1276121 () Bool)

(assert (=> b!1390225 m!1276121))

(push 1)

(assert (not b!1390226))

(assert (not b!1390222))

(assert (not b!1390223))

(assert (not b!1390228))

(assert (not b!1390225))

(assert (not b!1390227))

(assert (not start!119224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

