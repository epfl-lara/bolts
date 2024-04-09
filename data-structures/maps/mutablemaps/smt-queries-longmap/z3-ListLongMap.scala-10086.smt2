; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118800 () Bool)

(assert start!118800)

(declare-fun b!1387748 () Bool)

(declare-fun e!786135 () Bool)

(assert (=> b!1387748 (= e!786135 false)))

(declare-datatypes ((Unit!46339 0))(
  ( (Unit!46340) )
))
(declare-fun lt!609999 () Unit!46339)

(declare-fun e!786134 () Unit!46339)

(assert (=> b!1387748 (= lt!609999 e!786134)))

(declare-fun c!129065 () Bool)

(declare-fun e!786136 () Bool)

(assert (=> b!1387748 (= c!129065 e!786136)))

(declare-fun res!928508 () Bool)

(assert (=> b!1387748 (=> (not res!928508) (not e!786136))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387748 (= res!928508 (not (= startIndex!16 i!1065)))))

(declare-fun b!1387749 () Bool)

(declare-datatypes ((array!94889 0))(
  ( (array!94890 (arr!45815 (Array (_ BitVec 32) (_ BitVec 64))) (size!46366 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94889)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387749 (= e!786136 (validKeyInArray!0 (select (arr!45815 a!2938) startIndex!16)))))

(declare-fun b!1387750 () Bool)

(declare-fun res!928509 () Bool)

(assert (=> b!1387750 (=> (not res!928509) (not e!786135))))

(assert (=> b!1387750 (= res!928509 (validKeyInArray!0 (select (arr!45815 a!2938) i!1065)))))

(declare-fun res!928511 () Bool)

(assert (=> start!118800 (=> (not res!928511) (not e!786135))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118800 (= res!928511 (validMask!0 mask!2987))))

(assert (=> start!118800 e!786135))

(assert (=> start!118800 true))

(declare-fun array_inv!34760 (array!94889) Bool)

(assert (=> start!118800 (array_inv!34760 a!2938)))

(declare-fun b!1387751 () Bool)

(declare-fun res!928507 () Bool)

(assert (=> b!1387751 (=> (not res!928507) (not e!786135))))

(assert (=> b!1387751 (= res!928507 (and (= (size!46366 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46366 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46366 a!2938))))))

(declare-fun b!1387752 () Bool)

(declare-fun lt!609998 () Unit!46339)

(assert (=> b!1387752 (= e!786134 lt!609998)))

(declare-fun lt!610000 () Unit!46339)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46339)

(assert (=> b!1387752 (= lt!610000 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10180 0))(
  ( (MissingZero!10180 (index!43090 (_ BitVec 32))) (Found!10180 (index!43091 (_ BitVec 32))) (Intermediate!10180 (undefined!10992 Bool) (index!43092 (_ BitVec 32)) (x!124713 (_ BitVec 32))) (Undefined!10180) (MissingVacant!10180 (index!43093 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94889 (_ BitVec 32)) SeekEntryResult!10180)

(assert (=> b!1387752 (= (seekEntryOrOpen!0 (select (arr!45815 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45815 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94890 (store (arr!45815 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46366 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46339)

(assert (=> b!1387752 (= lt!609998 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94889 (_ BitVec 32)) Bool)

(assert (=> b!1387752 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387753 () Bool)

(declare-fun res!928512 () Bool)

(assert (=> b!1387753 (=> (not res!928512) (not e!786135))))

(assert (=> b!1387753 (= res!928512 (and (not (= (select (arr!45815 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45815 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387754 () Bool)

(declare-fun Unit!46341 () Unit!46339)

(assert (=> b!1387754 (= e!786134 Unit!46341)))

(declare-fun b!1387755 () Bool)

(declare-fun res!928506 () Bool)

(assert (=> b!1387755 (=> (not res!928506) (not e!786135))))

(assert (=> b!1387755 (= res!928506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387756 () Bool)

(declare-fun res!928510 () Bool)

(assert (=> b!1387756 (=> (not res!928510) (not e!786135))))

(declare-datatypes ((List!32523 0))(
  ( (Nil!32520) (Cons!32519 (h!33731 (_ BitVec 64)) (t!47224 List!32523)) )
))
(declare-fun arrayNoDuplicates!0 (array!94889 (_ BitVec 32) List!32523) Bool)

(assert (=> b!1387756 (= res!928510 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32520))))

(assert (= (and start!118800 res!928511) b!1387751))

(assert (= (and b!1387751 res!928507) b!1387750))

(assert (= (and b!1387750 res!928509) b!1387756))

(assert (= (and b!1387756 res!928510) b!1387755))

(assert (= (and b!1387755 res!928506) b!1387753))

(assert (= (and b!1387753 res!928512) b!1387748))

(assert (= (and b!1387748 res!928508) b!1387749))

(assert (= (and b!1387748 c!129065) b!1387752))

(assert (= (and b!1387748 (not c!129065)) b!1387754))

(declare-fun m!1273457 () Bool)

(assert (=> b!1387756 m!1273457))

(declare-fun m!1273459 () Bool)

(assert (=> start!118800 m!1273459))

(declare-fun m!1273461 () Bool)

(assert (=> start!118800 m!1273461))

(declare-fun m!1273463 () Bool)

(assert (=> b!1387752 m!1273463))

(declare-fun m!1273465 () Bool)

(assert (=> b!1387752 m!1273465))

(assert (=> b!1387752 m!1273465))

(declare-fun m!1273467 () Bool)

(assert (=> b!1387752 m!1273467))

(declare-fun m!1273469 () Bool)

(assert (=> b!1387752 m!1273469))

(declare-fun m!1273471 () Bool)

(assert (=> b!1387752 m!1273471))

(declare-fun m!1273473 () Bool)

(assert (=> b!1387752 m!1273473))

(declare-fun m!1273475 () Bool)

(assert (=> b!1387752 m!1273475))

(assert (=> b!1387752 m!1273473))

(declare-fun m!1273477 () Bool)

(assert (=> b!1387752 m!1273477))

(declare-fun m!1273479 () Bool)

(assert (=> b!1387753 m!1273479))

(declare-fun m!1273481 () Bool)

(assert (=> b!1387755 m!1273481))

(assert (=> b!1387749 m!1273473))

(assert (=> b!1387749 m!1273473))

(declare-fun m!1273483 () Bool)

(assert (=> b!1387749 m!1273483))

(assert (=> b!1387750 m!1273479))

(assert (=> b!1387750 m!1273479))

(declare-fun m!1273485 () Bool)

(assert (=> b!1387750 m!1273485))

(check-sat (not b!1387749) (not b!1387750) (not b!1387755) (not start!118800) (not b!1387756) (not b!1387752))
