; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130996 () Bool)

(assert start!130996)

(declare-fun b!1536204 () Bool)

(declare-fun res!1053430 () Bool)

(declare-fun e!855083 () Bool)

(assert (=> b!1536204 (=> (not res!1053430) (not e!855083))))

(declare-datatypes ((array!102021 0))(
  ( (array!102022 (arr!49222 (Array (_ BitVec 32) (_ BitVec 64))) (size!49773 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102021)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536204 (= res!1053430 (validKeyInArray!0 (select (arr!49222 a!2792) j!64)))))

(declare-fun res!1053436 () Bool)

(assert (=> start!130996 (=> (not res!1053436) (not e!855083))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130996 (= res!1053436 (validMask!0 mask!2480))))

(assert (=> start!130996 e!855083))

(assert (=> start!130996 true))

(declare-fun array_inv!38167 (array!102021) Bool)

(assert (=> start!130996 (array_inv!38167 a!2792)))

(declare-fun b!1536205 () Bool)

(declare-fun res!1053431 () Bool)

(declare-fun e!855084 () Bool)

(assert (=> b!1536205 (=> (not res!1053431) (not e!855084))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536205 (= res!1053431 (not (= (select (arr!49222 a!2792) index!463) (select (arr!49222 a!2792) j!64))))))

(declare-fun b!1536206 () Bool)

(declare-fun res!1053438 () Bool)

(assert (=> b!1536206 (=> (not res!1053438) (not e!855083))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1536206 (= res!1053438 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49773 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49773 a!2792)) (= (select (arr!49222 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536207 () Bool)

(declare-fun e!855085 () Bool)

(assert (=> b!1536207 (= e!855085 (not true))))

(declare-datatypes ((SeekEntryResult!13377 0))(
  ( (MissingZero!13377 (index!55902 (_ BitVec 32))) (Found!13377 (index!55903 (_ BitVec 32))) (Intermediate!13377 (undefined!14189 Bool) (index!55904 (_ BitVec 32)) (x!137646 (_ BitVec 32))) (Undefined!13377) (MissingVacant!13377 (index!55905 (_ BitVec 32))) )
))
(declare-fun lt!664231 () SeekEntryResult!13377)

(declare-fun lt!664228 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102021 (_ BitVec 32)) SeekEntryResult!13377)

(assert (=> b!1536207 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664228 vacantIndex!5 (select (store (arr!49222 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102022 (store (arr!49222 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49773 a!2792)) mask!2480) lt!664231)))

(declare-datatypes ((Unit!51278 0))(
  ( (Unit!51279) )
))
(declare-fun lt!664229 () Unit!51278)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51278)

(assert (=> b!1536207 (= lt!664229 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664228 vacantIndex!5 mask!2480))))

(declare-fun b!1536208 () Bool)

(declare-fun res!1053437 () Bool)

(assert (=> b!1536208 (=> (not res!1053437) (not e!855083))))

(assert (=> b!1536208 (= res!1053437 (and (= (size!49773 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49773 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49773 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536209 () Bool)

(declare-fun res!1053429 () Bool)

(assert (=> b!1536209 (=> (not res!1053429) (not e!855083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102021 (_ BitVec 32)) Bool)

(assert (=> b!1536209 (= res!1053429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536210 () Bool)

(declare-fun res!1053435 () Bool)

(assert (=> b!1536210 (=> (not res!1053435) (not e!855083))))

(assert (=> b!1536210 (= res!1053435 (validKeyInArray!0 (select (arr!49222 a!2792) i!951)))))

(declare-fun b!1536211 () Bool)

(assert (=> b!1536211 (= e!855083 e!855084)))

(declare-fun res!1053433 () Bool)

(assert (=> b!1536211 (=> (not res!1053433) (not e!855084))))

(declare-fun lt!664230 () SeekEntryResult!13377)

(assert (=> b!1536211 (= res!1053433 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49222 a!2792) j!64) a!2792 mask!2480) lt!664230))))

(assert (=> b!1536211 (= lt!664230 (Found!13377 j!64))))

(declare-fun b!1536212 () Bool)

(declare-fun res!1053428 () Bool)

(assert (=> b!1536212 (=> (not res!1053428) (not e!855083))))

(declare-datatypes ((List!35876 0))(
  ( (Nil!35873) (Cons!35872 (h!37318 (_ BitVec 64)) (t!50577 List!35876)) )
))
(declare-fun arrayNoDuplicates!0 (array!102021 (_ BitVec 32) List!35876) Bool)

(assert (=> b!1536212 (= res!1053428 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35873))))

(declare-fun b!1536213 () Bool)

(declare-fun e!855082 () Bool)

(assert (=> b!1536213 (= e!855082 e!855085)))

(declare-fun res!1053432 () Bool)

(assert (=> b!1536213 (=> (not res!1053432) (not e!855085))))

(assert (=> b!1536213 (= res!1053432 (= lt!664231 lt!664230))))

(assert (=> b!1536213 (= lt!664231 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664228 vacantIndex!5 (select (arr!49222 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536214 () Bool)

(assert (=> b!1536214 (= e!855084 e!855082)))

(declare-fun res!1053434 () Bool)

(assert (=> b!1536214 (=> (not res!1053434) (not e!855082))))

(assert (=> b!1536214 (= res!1053434 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664228 #b00000000000000000000000000000000) (bvslt lt!664228 (size!49773 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536214 (= lt!664228 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!130996 res!1053436) b!1536208))

(assert (= (and b!1536208 res!1053437) b!1536210))

(assert (= (and b!1536210 res!1053435) b!1536204))

(assert (= (and b!1536204 res!1053430) b!1536209))

(assert (= (and b!1536209 res!1053429) b!1536212))

(assert (= (and b!1536212 res!1053428) b!1536206))

(assert (= (and b!1536206 res!1053438) b!1536211))

(assert (= (and b!1536211 res!1053433) b!1536205))

(assert (= (and b!1536205 res!1053431) b!1536214))

(assert (= (and b!1536214 res!1053434) b!1536213))

(assert (= (and b!1536213 res!1053432) b!1536207))

(declare-fun m!1418715 () Bool)

(assert (=> b!1536204 m!1418715))

(assert (=> b!1536204 m!1418715))

(declare-fun m!1418717 () Bool)

(assert (=> b!1536204 m!1418717))

(declare-fun m!1418719 () Bool)

(assert (=> b!1536209 m!1418719))

(declare-fun m!1418721 () Bool)

(assert (=> b!1536205 m!1418721))

(assert (=> b!1536205 m!1418715))

(assert (=> b!1536211 m!1418715))

(assert (=> b!1536211 m!1418715))

(declare-fun m!1418723 () Bool)

(assert (=> b!1536211 m!1418723))

(declare-fun m!1418725 () Bool)

(assert (=> b!1536207 m!1418725))

(declare-fun m!1418727 () Bool)

(assert (=> b!1536207 m!1418727))

(assert (=> b!1536207 m!1418727))

(declare-fun m!1418729 () Bool)

(assert (=> b!1536207 m!1418729))

(declare-fun m!1418731 () Bool)

(assert (=> b!1536207 m!1418731))

(declare-fun m!1418733 () Bool)

(assert (=> b!1536206 m!1418733))

(declare-fun m!1418735 () Bool)

(assert (=> b!1536212 m!1418735))

(assert (=> b!1536213 m!1418715))

(assert (=> b!1536213 m!1418715))

(declare-fun m!1418737 () Bool)

(assert (=> b!1536213 m!1418737))

(declare-fun m!1418739 () Bool)

(assert (=> b!1536214 m!1418739))

(declare-fun m!1418741 () Bool)

(assert (=> start!130996 m!1418741))

(declare-fun m!1418743 () Bool)

(assert (=> start!130996 m!1418743))

(declare-fun m!1418745 () Bool)

(assert (=> b!1536210 m!1418745))

(assert (=> b!1536210 m!1418745))

(declare-fun m!1418747 () Bool)

(assert (=> b!1536210 m!1418747))

(push 1)

