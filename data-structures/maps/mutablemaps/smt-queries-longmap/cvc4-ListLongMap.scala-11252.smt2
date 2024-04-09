; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131216 () Bool)

(assert start!131216)

(declare-fun b!1538855 () Bool)

(declare-fun res!1055975 () Bool)

(declare-fun e!856069 () Bool)

(assert (=> b!1538855 (=> (not res!1055975) (not e!856069))))

(declare-datatypes ((array!102208 0))(
  ( (array!102209 (arr!49314 (Array (_ BitVec 32) (_ BitVec 64))) (size!49865 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102208)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102208 (_ BitVec 32)) Bool)

(assert (=> b!1538855 (= res!1055975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538856 () Bool)

(declare-fun res!1055978 () Bool)

(assert (=> b!1538856 (=> (not res!1055978) (not e!856069))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538856 (= res!1055978 (and (= (size!49865 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49865 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49865 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538857 () Bool)

(declare-fun res!1055974 () Bool)

(assert (=> b!1538857 (=> (not res!1055974) (not e!856069))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13463 0))(
  ( (MissingZero!13463 (index!56246 (_ BitVec 32))) (Found!13463 (index!56247 (_ BitVec 32))) (Intermediate!13463 (undefined!14275 Bool) (index!56248 (_ BitVec 32)) (x!137975 (_ BitVec 32))) (Undefined!13463) (MissingVacant!13463 (index!56249 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102208 (_ BitVec 32)) SeekEntryResult!13463)

(assert (=> b!1538857 (= res!1055974 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49314 a!2792) j!64) a!2792 mask!2480) (Found!13463 j!64)))))

(declare-fun b!1538858 () Bool)

(assert (=> b!1538858 (= e!856069 false)))

(declare-fun lt!664882 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538858 (= lt!664882 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538859 () Bool)

(declare-fun res!1055973 () Bool)

(assert (=> b!1538859 (=> (not res!1055973) (not e!856069))))

(assert (=> b!1538859 (= res!1055973 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49865 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49865 a!2792)) (= (select (arr!49314 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055979 () Bool)

(assert (=> start!131216 (=> (not res!1055979) (not e!856069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131216 (= res!1055979 (validMask!0 mask!2480))))

(assert (=> start!131216 e!856069))

(assert (=> start!131216 true))

(declare-fun array_inv!38259 (array!102208) Bool)

(assert (=> start!131216 (array_inv!38259 a!2792)))

(declare-fun b!1538860 () Bool)

(declare-fun res!1055976 () Bool)

(assert (=> b!1538860 (=> (not res!1055976) (not e!856069))))

(declare-datatypes ((List!35968 0))(
  ( (Nil!35965) (Cons!35964 (h!37410 (_ BitVec 64)) (t!50669 List!35968)) )
))
(declare-fun arrayNoDuplicates!0 (array!102208 (_ BitVec 32) List!35968) Bool)

(assert (=> b!1538860 (= res!1055976 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35965))))

(declare-fun b!1538861 () Bool)

(declare-fun res!1055971 () Bool)

(assert (=> b!1538861 (=> (not res!1055971) (not e!856069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538861 (= res!1055971 (validKeyInArray!0 (select (arr!49314 a!2792) j!64)))))

(declare-fun b!1538862 () Bool)

(declare-fun res!1055977 () Bool)

(assert (=> b!1538862 (=> (not res!1055977) (not e!856069))))

(assert (=> b!1538862 (= res!1055977 (validKeyInArray!0 (select (arr!49314 a!2792) i!951)))))

(declare-fun b!1538863 () Bool)

(declare-fun res!1055972 () Bool)

(assert (=> b!1538863 (=> (not res!1055972) (not e!856069))))

(assert (=> b!1538863 (= res!1055972 (not (= (select (arr!49314 a!2792) index!463) (select (arr!49314 a!2792) j!64))))))

(assert (= (and start!131216 res!1055979) b!1538856))

(assert (= (and b!1538856 res!1055978) b!1538862))

(assert (= (and b!1538862 res!1055977) b!1538861))

(assert (= (and b!1538861 res!1055971) b!1538855))

(assert (= (and b!1538855 res!1055975) b!1538860))

(assert (= (and b!1538860 res!1055976) b!1538859))

(assert (= (and b!1538859 res!1055973) b!1538857))

(assert (= (and b!1538857 res!1055974) b!1538863))

(assert (= (and b!1538863 res!1055972) b!1538858))

(declare-fun m!1421277 () Bool)

(assert (=> b!1538863 m!1421277))

(declare-fun m!1421279 () Bool)

(assert (=> b!1538863 m!1421279))

(declare-fun m!1421281 () Bool)

(assert (=> b!1538855 m!1421281))

(declare-fun m!1421283 () Bool)

(assert (=> b!1538860 m!1421283))

(declare-fun m!1421285 () Bool)

(assert (=> b!1538859 m!1421285))

(declare-fun m!1421287 () Bool)

(assert (=> start!131216 m!1421287))

(declare-fun m!1421289 () Bool)

(assert (=> start!131216 m!1421289))

(declare-fun m!1421291 () Bool)

(assert (=> b!1538858 m!1421291))

(assert (=> b!1538857 m!1421279))

(assert (=> b!1538857 m!1421279))

(declare-fun m!1421293 () Bool)

(assert (=> b!1538857 m!1421293))

(assert (=> b!1538861 m!1421279))

(assert (=> b!1538861 m!1421279))

(declare-fun m!1421295 () Bool)

(assert (=> b!1538861 m!1421295))

(declare-fun m!1421297 () Bool)

(assert (=> b!1538862 m!1421297))

(assert (=> b!1538862 m!1421297))

(declare-fun m!1421299 () Bool)

(assert (=> b!1538862 m!1421299))

(push 1)

(assert (not b!1538855))

(assert (not start!131216))

(assert (not b!1538862))

(assert (not b!1538857))

(assert (not b!1538861))

(assert (not b!1538860))

(assert (not b!1538858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

