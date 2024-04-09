; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131214 () Bool)

(assert start!131214)

(declare-fun b!1538828 () Bool)

(declare-fun res!1055947 () Bool)

(declare-fun e!856064 () Bool)

(assert (=> b!1538828 (=> (not res!1055947) (not e!856064))))

(declare-datatypes ((array!102206 0))(
  ( (array!102207 (arr!49313 (Array (_ BitVec 32) (_ BitVec 64))) (size!49864 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102206)

(declare-datatypes ((List!35967 0))(
  ( (Nil!35964) (Cons!35963 (h!37409 (_ BitVec 64)) (t!50668 List!35967)) )
))
(declare-fun arrayNoDuplicates!0 (array!102206 (_ BitVec 32) List!35967) Bool)

(assert (=> b!1538828 (= res!1055947 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35964))))

(declare-fun b!1538829 () Bool)

(declare-fun res!1055950 () Bool)

(assert (=> b!1538829 (=> (not res!1055950) (not e!856064))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538829 (= res!1055950 (validKeyInArray!0 (select (arr!49313 a!2792) j!64)))))

(declare-fun b!1538830 () Bool)

(declare-fun res!1055944 () Bool)

(assert (=> b!1538830 (=> (not res!1055944) (not e!856064))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538830 (= res!1055944 (validKeyInArray!0 (select (arr!49313 a!2792) i!951)))))

(declare-fun b!1538831 () Bool)

(declare-fun res!1055946 () Bool)

(assert (=> b!1538831 (=> (not res!1055946) (not e!856064))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13462 0))(
  ( (MissingZero!13462 (index!56242 (_ BitVec 32))) (Found!13462 (index!56243 (_ BitVec 32))) (Intermediate!13462 (undefined!14274 Bool) (index!56244 (_ BitVec 32)) (x!137974 (_ BitVec 32))) (Undefined!13462) (MissingVacant!13462 (index!56245 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102206 (_ BitVec 32)) SeekEntryResult!13462)

(assert (=> b!1538831 (= res!1055946 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49313 a!2792) j!64) a!2792 mask!2480) (Found!13462 j!64)))))

(declare-fun b!1538832 () Bool)

(assert (=> b!1538832 (= e!856064 false)))

(declare-fun lt!664879 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538832 (= lt!664879 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538833 () Bool)

(declare-fun res!1055945 () Bool)

(assert (=> b!1538833 (=> (not res!1055945) (not e!856064))))

(assert (=> b!1538833 (= res!1055945 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49864 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49864 a!2792)) (= (select (arr!49313 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538834 () Bool)

(declare-fun res!1055949 () Bool)

(assert (=> b!1538834 (=> (not res!1055949) (not e!856064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102206 (_ BitVec 32)) Bool)

(assert (=> b!1538834 (= res!1055949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055951 () Bool)

(assert (=> start!131214 (=> (not res!1055951) (not e!856064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131214 (= res!1055951 (validMask!0 mask!2480))))

(assert (=> start!131214 e!856064))

(assert (=> start!131214 true))

(declare-fun array_inv!38258 (array!102206) Bool)

(assert (=> start!131214 (array_inv!38258 a!2792)))

(declare-fun b!1538835 () Bool)

(declare-fun res!1055948 () Bool)

(assert (=> b!1538835 (=> (not res!1055948) (not e!856064))))

(assert (=> b!1538835 (= res!1055948 (and (= (size!49864 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49864 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49864 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538836 () Bool)

(declare-fun res!1055952 () Bool)

(assert (=> b!1538836 (=> (not res!1055952) (not e!856064))))

(assert (=> b!1538836 (= res!1055952 (not (= (select (arr!49313 a!2792) index!463) (select (arr!49313 a!2792) j!64))))))

(assert (= (and start!131214 res!1055951) b!1538835))

(assert (= (and b!1538835 res!1055948) b!1538830))

(assert (= (and b!1538830 res!1055944) b!1538829))

(assert (= (and b!1538829 res!1055950) b!1538834))

(assert (= (and b!1538834 res!1055949) b!1538828))

(assert (= (and b!1538828 res!1055947) b!1538833))

(assert (= (and b!1538833 res!1055945) b!1538831))

(assert (= (and b!1538831 res!1055946) b!1538836))

(assert (= (and b!1538836 res!1055952) b!1538832))

(declare-fun m!1421253 () Bool)

(assert (=> b!1538832 m!1421253))

(declare-fun m!1421255 () Bool)

(assert (=> b!1538831 m!1421255))

(assert (=> b!1538831 m!1421255))

(declare-fun m!1421257 () Bool)

(assert (=> b!1538831 m!1421257))

(declare-fun m!1421259 () Bool)

(assert (=> b!1538828 m!1421259))

(assert (=> b!1538829 m!1421255))

(assert (=> b!1538829 m!1421255))

(declare-fun m!1421261 () Bool)

(assert (=> b!1538829 m!1421261))

(declare-fun m!1421263 () Bool)

(assert (=> b!1538834 m!1421263))

(declare-fun m!1421265 () Bool)

(assert (=> b!1538833 m!1421265))

(declare-fun m!1421267 () Bool)

(assert (=> b!1538836 m!1421267))

(assert (=> b!1538836 m!1421255))

(declare-fun m!1421269 () Bool)

(assert (=> start!131214 m!1421269))

(declare-fun m!1421271 () Bool)

(assert (=> start!131214 m!1421271))

(declare-fun m!1421273 () Bool)

(assert (=> b!1538830 m!1421273))

(assert (=> b!1538830 m!1421273))

(declare-fun m!1421275 () Bool)

(assert (=> b!1538830 m!1421275))

(check-sat (not b!1538834) (not start!131214) (not b!1538831) (not b!1538830) (not b!1538832) (not b!1538828) (not b!1538829))
