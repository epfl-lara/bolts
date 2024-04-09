; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130974 () Bool)

(assert start!130974)

(declare-fun b!1535841 () Bool)

(declare-fun res!1053071 () Bool)

(declare-fun e!854918 () Bool)

(assert (=> b!1535841 (=> (not res!1053071) (not e!854918))))

(declare-datatypes ((array!101999 0))(
  ( (array!102000 (arr!49211 (Array (_ BitVec 32) (_ BitVec 64))) (size!49762 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101999)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101999 (_ BitVec 32)) Bool)

(assert (=> b!1535841 (= res!1053071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535842 () Bool)

(declare-fun e!854919 () Bool)

(declare-fun e!854921 () Bool)

(assert (=> b!1535842 (= e!854919 e!854921)))

(declare-fun res!1053073 () Bool)

(assert (=> b!1535842 (=> (not res!1053073) (not e!854921))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664097 () (_ BitVec 32))

(assert (=> b!1535842 (= res!1053073 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664097 #b00000000000000000000000000000000) (bvslt lt!664097 (size!49762 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535842 (= lt!664097 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535843 () Bool)

(assert (=> b!1535843 (= e!854918 e!854919)))

(declare-fun res!1053067 () Bool)

(assert (=> b!1535843 (=> (not res!1053067) (not e!854919))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13366 0))(
  ( (MissingZero!13366 (index!55858 (_ BitVec 32))) (Found!13366 (index!55859 (_ BitVec 32))) (Intermediate!13366 (undefined!14178 Bool) (index!55860 (_ BitVec 32)) (x!137603 (_ BitVec 32))) (Undefined!13366) (MissingVacant!13366 (index!55861 (_ BitVec 32))) )
))
(declare-fun lt!664098 () SeekEntryResult!13366)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101999 (_ BitVec 32)) SeekEntryResult!13366)

(assert (=> b!1535843 (= res!1053067 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49211 a!2792) j!64) a!2792 mask!2480) lt!664098))))

(assert (=> b!1535843 (= lt!664098 (Found!13366 j!64))))

(declare-fun b!1535844 () Bool)

(declare-fun res!1053068 () Bool)

(assert (=> b!1535844 (=> (not res!1053068) (not e!854918))))

(assert (=> b!1535844 (= res!1053068 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49762 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49762 a!2792)) (= (select (arr!49211 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535845 () Bool)

(declare-fun res!1053074 () Bool)

(assert (=> b!1535845 (=> (not res!1053074) (not e!854919))))

(assert (=> b!1535845 (= res!1053074 (not (= (select (arr!49211 a!2792) index!463) (select (arr!49211 a!2792) j!64))))))

(declare-fun b!1535846 () Bool)

(declare-fun res!1053065 () Bool)

(assert (=> b!1535846 (=> (not res!1053065) (not e!854918))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535846 (= res!1053065 (and (= (size!49762 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49762 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49762 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535847 () Bool)

(declare-fun res!1053066 () Bool)

(assert (=> b!1535847 (=> (not res!1053066) (not e!854918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535847 (= res!1053066 (validKeyInArray!0 (select (arr!49211 a!2792) j!64)))))

(declare-fun b!1535848 () Bool)

(declare-fun res!1053075 () Bool)

(assert (=> b!1535848 (=> (not res!1053075) (not e!854918))))

(assert (=> b!1535848 (= res!1053075 (validKeyInArray!0 (select (arr!49211 a!2792) i!951)))))

(declare-fun b!1535849 () Bool)

(declare-fun res!1053072 () Bool)

(assert (=> b!1535849 (=> (not res!1053072) (not e!854918))))

(declare-datatypes ((List!35865 0))(
  ( (Nil!35862) (Cons!35861 (h!37307 (_ BitVec 64)) (t!50566 List!35865)) )
))
(declare-fun arrayNoDuplicates!0 (array!101999 (_ BitVec 32) List!35865) Bool)

(assert (=> b!1535849 (= res!1053072 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35862))))

(declare-fun b!1535850 () Bool)

(declare-fun e!854920 () Bool)

(assert (=> b!1535850 (= e!854921 e!854920)))

(declare-fun res!1053070 () Bool)

(assert (=> b!1535850 (=> (not res!1053070) (not e!854920))))

(declare-fun lt!664096 () SeekEntryResult!13366)

(assert (=> b!1535850 (= res!1053070 (= lt!664096 lt!664098))))

(assert (=> b!1535850 (= lt!664096 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664097 vacantIndex!5 (select (arr!49211 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535851 () Bool)

(assert (=> b!1535851 (= e!854920 (not true))))

(assert (=> b!1535851 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664097 vacantIndex!5 (select (store (arr!49211 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102000 (store (arr!49211 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49762 a!2792)) mask!2480) lt!664096)))

(declare-datatypes ((Unit!51256 0))(
  ( (Unit!51257) )
))
(declare-fun lt!664099 () Unit!51256)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51256)

(assert (=> b!1535851 (= lt!664099 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664097 vacantIndex!5 mask!2480))))

(declare-fun res!1053069 () Bool)

(assert (=> start!130974 (=> (not res!1053069) (not e!854918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130974 (= res!1053069 (validMask!0 mask!2480))))

(assert (=> start!130974 e!854918))

(assert (=> start!130974 true))

(declare-fun array_inv!38156 (array!101999) Bool)

(assert (=> start!130974 (array_inv!38156 a!2792)))

(assert (= (and start!130974 res!1053069) b!1535846))

(assert (= (and b!1535846 res!1053065) b!1535848))

(assert (= (and b!1535848 res!1053075) b!1535847))

(assert (= (and b!1535847 res!1053066) b!1535841))

(assert (= (and b!1535841 res!1053071) b!1535849))

(assert (= (and b!1535849 res!1053072) b!1535844))

(assert (= (and b!1535844 res!1053068) b!1535843))

(assert (= (and b!1535843 res!1053067) b!1535845))

(assert (= (and b!1535845 res!1053074) b!1535842))

(assert (= (and b!1535842 res!1053073) b!1535850))

(assert (= (and b!1535850 res!1053070) b!1535851))

(declare-fun m!1418341 () Bool)

(assert (=> b!1535842 m!1418341))

(declare-fun m!1418343 () Bool)

(assert (=> b!1535844 m!1418343))

(declare-fun m!1418345 () Bool)

(assert (=> start!130974 m!1418345))

(declare-fun m!1418347 () Bool)

(assert (=> start!130974 m!1418347))

(declare-fun m!1418349 () Bool)

(assert (=> b!1535848 m!1418349))

(assert (=> b!1535848 m!1418349))

(declare-fun m!1418351 () Bool)

(assert (=> b!1535848 m!1418351))

(declare-fun m!1418353 () Bool)

(assert (=> b!1535843 m!1418353))

(assert (=> b!1535843 m!1418353))

(declare-fun m!1418355 () Bool)

(assert (=> b!1535843 m!1418355))

(declare-fun m!1418357 () Bool)

(assert (=> b!1535845 m!1418357))

(assert (=> b!1535845 m!1418353))

(declare-fun m!1418359 () Bool)

(assert (=> b!1535851 m!1418359))

(declare-fun m!1418361 () Bool)

(assert (=> b!1535851 m!1418361))

(assert (=> b!1535851 m!1418361))

(declare-fun m!1418363 () Bool)

(assert (=> b!1535851 m!1418363))

(declare-fun m!1418365 () Bool)

(assert (=> b!1535851 m!1418365))

(declare-fun m!1418367 () Bool)

(assert (=> b!1535849 m!1418367))

(assert (=> b!1535847 m!1418353))

(assert (=> b!1535847 m!1418353))

(declare-fun m!1418369 () Bool)

(assert (=> b!1535847 m!1418369))

(assert (=> b!1535850 m!1418353))

(assert (=> b!1535850 m!1418353))

(declare-fun m!1418371 () Bool)

(assert (=> b!1535850 m!1418371))

(declare-fun m!1418373 () Bool)

(assert (=> b!1535841 m!1418373))

(check-sat (not start!130974) (not b!1535842) (not b!1535848) (not b!1535841) (not b!1535849) (not b!1535843) (not b!1535847) (not b!1535850) (not b!1535851))
(check-sat)
