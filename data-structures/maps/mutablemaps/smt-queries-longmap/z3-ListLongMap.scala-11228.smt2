; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131034 () Bool)

(assert start!131034)

(declare-fun res!1054066 () Bool)

(declare-fun e!855378 () Bool)

(assert (=> start!131034 (=> (not res!1054066) (not e!855378))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131034 (= res!1054066 (validMask!0 mask!2480))))

(assert (=> start!131034 e!855378))

(assert (=> start!131034 true))

(declare-datatypes ((array!102059 0))(
  ( (array!102060 (arr!49241 (Array (_ BitVec 32) (_ BitVec 64))) (size!49792 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102059)

(declare-fun array_inv!38186 (array!102059) Bool)

(assert (=> start!131034 (array_inv!38186 a!2792)))

(declare-fun b!1536840 () Bool)

(declare-fun res!1054068 () Bool)

(assert (=> b!1536840 (=> (not res!1054068) (not e!855378))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536840 (= res!1054068 (and (= (size!49792 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49792 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49792 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536841 () Bool)

(declare-fun e!855377 () Bool)

(assert (=> b!1536841 (= e!855377 (not true))))

(declare-fun lt!664465 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13396 0))(
  ( (MissingZero!13396 (index!55978 (_ BitVec 32))) (Found!13396 (index!55979 (_ BitVec 32))) (Intermediate!13396 (undefined!14208 Bool) (index!55980 (_ BitVec 32)) (x!137713 (_ BitVec 32))) (Undefined!13396) (MissingVacant!13396 (index!55981 (_ BitVec 32))) )
))
(declare-fun lt!664467 () SeekEntryResult!13396)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102059 (_ BitVec 32)) SeekEntryResult!13396)

(assert (=> b!1536841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664465 vacantIndex!5 (select (store (arr!49241 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102060 (store (arr!49241 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49792 a!2792)) mask!2480) lt!664467)))

(declare-datatypes ((Unit!51316 0))(
  ( (Unit!51317) )
))
(declare-fun lt!664468 () Unit!51316)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51316)

(assert (=> b!1536841 (= lt!664468 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664465 vacantIndex!5 mask!2480))))

(declare-fun b!1536842 () Bool)

(declare-fun res!1054070 () Bool)

(assert (=> b!1536842 (=> (not res!1054070) (not e!855378))))

(declare-datatypes ((List!35895 0))(
  ( (Nil!35892) (Cons!35891 (h!37337 (_ BitVec 64)) (t!50596 List!35895)) )
))
(declare-fun arrayNoDuplicates!0 (array!102059 (_ BitVec 32) List!35895) Bool)

(assert (=> b!1536842 (= res!1054070 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35892))))

(declare-fun b!1536843 () Bool)

(declare-fun e!855376 () Bool)

(assert (=> b!1536843 (= e!855378 e!855376)))

(declare-fun res!1054067 () Bool)

(assert (=> b!1536843 (=> (not res!1054067) (not e!855376))))

(declare-fun lt!664466 () SeekEntryResult!13396)

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536843 (= res!1054067 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49241 a!2792) j!64) a!2792 mask!2480) lt!664466))))

(assert (=> b!1536843 (= lt!664466 (Found!13396 j!64))))

(declare-fun b!1536844 () Bool)

(declare-fun res!1054064 () Bool)

(assert (=> b!1536844 (=> (not res!1054064) (not e!855378))))

(assert (=> b!1536844 (= res!1054064 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49792 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49792 a!2792)) (= (select (arr!49241 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536845 () Bool)

(declare-fun res!1054065 () Bool)

(assert (=> b!1536845 (=> (not res!1054065) (not e!855378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102059 (_ BitVec 32)) Bool)

(assert (=> b!1536845 (= res!1054065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536846 () Bool)

(declare-fun res!1054069 () Bool)

(assert (=> b!1536846 (=> (not res!1054069) (not e!855378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536846 (= res!1054069 (validKeyInArray!0 (select (arr!49241 a!2792) i!951)))))

(declare-fun b!1536847 () Bool)

(declare-fun res!1054073 () Bool)

(assert (=> b!1536847 (=> (not res!1054073) (not e!855378))))

(assert (=> b!1536847 (= res!1054073 (validKeyInArray!0 (select (arr!49241 a!2792) j!64)))))

(declare-fun b!1536848 () Bool)

(declare-fun e!855380 () Bool)

(assert (=> b!1536848 (= e!855380 e!855377)))

(declare-fun res!1054071 () Bool)

(assert (=> b!1536848 (=> (not res!1054071) (not e!855377))))

(assert (=> b!1536848 (= res!1054071 (= lt!664467 lt!664466))))

(assert (=> b!1536848 (= lt!664467 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664465 vacantIndex!5 (select (arr!49241 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536849 () Bool)

(assert (=> b!1536849 (= e!855376 e!855380)))

(declare-fun res!1054074 () Bool)

(assert (=> b!1536849 (=> (not res!1054074) (not e!855380))))

(assert (=> b!1536849 (= res!1054074 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664465 #b00000000000000000000000000000000) (bvslt lt!664465 (size!49792 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536849 (= lt!664465 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536850 () Bool)

(declare-fun res!1054072 () Bool)

(assert (=> b!1536850 (=> (not res!1054072) (not e!855376))))

(assert (=> b!1536850 (= res!1054072 (not (= (select (arr!49241 a!2792) index!463) (select (arr!49241 a!2792) j!64))))))

(assert (= (and start!131034 res!1054066) b!1536840))

(assert (= (and b!1536840 res!1054068) b!1536846))

(assert (= (and b!1536846 res!1054069) b!1536847))

(assert (= (and b!1536847 res!1054073) b!1536845))

(assert (= (and b!1536845 res!1054065) b!1536842))

(assert (= (and b!1536842 res!1054070) b!1536844))

(assert (= (and b!1536844 res!1054064) b!1536843))

(assert (= (and b!1536843 res!1054067) b!1536850))

(assert (= (and b!1536850 res!1054072) b!1536849))

(assert (= (and b!1536849 res!1054074) b!1536848))

(assert (= (and b!1536848 res!1054071) b!1536841))

(declare-fun m!1419379 () Bool)

(assert (=> b!1536842 m!1419379))

(declare-fun m!1419381 () Bool)

(assert (=> b!1536841 m!1419381))

(declare-fun m!1419383 () Bool)

(assert (=> b!1536841 m!1419383))

(assert (=> b!1536841 m!1419383))

(declare-fun m!1419385 () Bool)

(assert (=> b!1536841 m!1419385))

(declare-fun m!1419387 () Bool)

(assert (=> b!1536841 m!1419387))

(declare-fun m!1419389 () Bool)

(assert (=> b!1536850 m!1419389))

(declare-fun m!1419391 () Bool)

(assert (=> b!1536850 m!1419391))

(declare-fun m!1419393 () Bool)

(assert (=> b!1536845 m!1419393))

(assert (=> b!1536848 m!1419391))

(assert (=> b!1536848 m!1419391))

(declare-fun m!1419395 () Bool)

(assert (=> b!1536848 m!1419395))

(assert (=> b!1536843 m!1419391))

(assert (=> b!1536843 m!1419391))

(declare-fun m!1419397 () Bool)

(assert (=> b!1536843 m!1419397))

(assert (=> b!1536847 m!1419391))

(assert (=> b!1536847 m!1419391))

(declare-fun m!1419399 () Bool)

(assert (=> b!1536847 m!1419399))

(declare-fun m!1419401 () Bool)

(assert (=> b!1536849 m!1419401))

(declare-fun m!1419403 () Bool)

(assert (=> b!1536844 m!1419403))

(declare-fun m!1419405 () Bool)

(assert (=> start!131034 m!1419405))

(declare-fun m!1419407 () Bool)

(assert (=> start!131034 m!1419407))

(declare-fun m!1419409 () Bool)

(assert (=> b!1536846 m!1419409))

(assert (=> b!1536846 m!1419409))

(declare-fun m!1419411 () Bool)

(assert (=> b!1536846 m!1419411))

(check-sat (not b!1536843) (not start!131034) (not b!1536849) (not b!1536848) (not b!1536847) (not b!1536846) (not b!1536841) (not b!1536842) (not b!1536845))
(check-sat)
