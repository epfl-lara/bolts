; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118654 () Bool)

(assert start!118654)

(declare-fun b!1386629 () Bool)

(declare-datatypes ((Unit!46282 0))(
  ( (Unit!46283) )
))
(declare-fun e!785504 () Unit!46282)

(declare-fun Unit!46284 () Unit!46282)

(assert (=> b!1386629 (= e!785504 Unit!46284)))

(declare-fun b!1386631 () Bool)

(declare-fun res!927882 () Bool)

(declare-fun e!785501 () Bool)

(assert (=> b!1386631 (=> (not res!927882) (not e!785501))))

(declare-datatypes ((array!94848 0))(
  ( (array!94849 (arr!45796 (Array (_ BitVec 32) (_ BitVec 64))) (size!46347 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94848)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386631 (= res!927882 (validKeyInArray!0 (select (arr!45796 a!2938) i!1065)))))

(declare-fun b!1386632 () Bool)

(declare-fun res!927880 () Bool)

(assert (=> b!1386632 (=> (not res!927880) (not e!785501))))

(declare-datatypes ((List!32504 0))(
  ( (Nil!32501) (Cons!32500 (h!33709 (_ BitVec 64)) (t!47205 List!32504)) )
))
(declare-fun arrayNoDuplicates!0 (array!94848 (_ BitVec 32) List!32504) Bool)

(assert (=> b!1386632 (= res!927880 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32501))))

(declare-fun b!1386633 () Bool)

(declare-fun e!785503 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386633 (= e!785503 (validKeyInArray!0 (select (arr!45796 a!2938) startIndex!16)))))

(declare-fun b!1386634 () Bool)

(declare-fun res!927876 () Bool)

(assert (=> b!1386634 (=> (not res!927876) (not e!785501))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1386634 (= res!927876 (and (= (size!46347 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46347 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46347 a!2938))))))

(declare-fun b!1386635 () Bool)

(declare-fun res!927878 () Bool)

(assert (=> b!1386635 (=> (not res!927878) (not e!785501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94848 (_ BitVec 32)) Bool)

(assert (=> b!1386635 (= res!927878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386636 () Bool)

(assert (=> b!1386636 (= e!785501 false)))

(declare-fun lt!609496 () Unit!46282)

(assert (=> b!1386636 (= lt!609496 e!785504)))

(declare-fun c!128819 () Bool)

(assert (=> b!1386636 (= c!128819 e!785503)))

(declare-fun res!927879 () Bool)

(assert (=> b!1386636 (=> (not res!927879) (not e!785503))))

(assert (=> b!1386636 (= res!927879 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386637 () Bool)

(declare-fun res!927881 () Bool)

(assert (=> b!1386637 (=> (not res!927881) (not e!785501))))

(assert (=> b!1386637 (= res!927881 (and (not (= (select (arr!45796 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45796 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!927877 () Bool)

(assert (=> start!118654 (=> (not res!927877) (not e!785501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118654 (= res!927877 (validMask!0 mask!2987))))

(assert (=> start!118654 e!785501))

(assert (=> start!118654 true))

(declare-fun array_inv!34741 (array!94848) Bool)

(assert (=> start!118654 (array_inv!34741 a!2938)))

(declare-fun b!1386630 () Bool)

(declare-fun lt!609494 () Unit!46282)

(assert (=> b!1386630 (= e!785504 lt!609494)))

(declare-fun lt!609495 () Unit!46282)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46282)

(assert (=> b!1386630 (= lt!609495 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10161 0))(
  ( (MissingZero!10161 (index!43014 (_ BitVec 32))) (Found!10161 (index!43015 (_ BitVec 32))) (Intermediate!10161 (undefined!10973 Bool) (index!43016 (_ BitVec 32)) (x!124637 (_ BitVec 32))) (Undefined!10161) (MissingVacant!10161 (index!43017 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94848 (_ BitVec 32)) SeekEntryResult!10161)

(assert (=> b!1386630 (= (seekEntryOrOpen!0 (select (arr!45796 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45796 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94849 (store (arr!45796 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46347 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46282)

(assert (=> b!1386630 (= lt!609494 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386630 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118654 res!927877) b!1386634))

(assert (= (and b!1386634 res!927876) b!1386631))

(assert (= (and b!1386631 res!927882) b!1386632))

(assert (= (and b!1386632 res!927880) b!1386635))

(assert (= (and b!1386635 res!927878) b!1386637))

(assert (= (and b!1386637 res!927881) b!1386636))

(assert (= (and b!1386636 res!927879) b!1386633))

(assert (= (and b!1386636 c!128819) b!1386630))

(assert (= (and b!1386636 (not c!128819)) b!1386629))

(declare-fun m!1272083 () Bool)

(assert (=> b!1386630 m!1272083))

(declare-fun m!1272085 () Bool)

(assert (=> b!1386630 m!1272085))

(assert (=> b!1386630 m!1272085))

(declare-fun m!1272087 () Bool)

(assert (=> b!1386630 m!1272087))

(declare-fun m!1272089 () Bool)

(assert (=> b!1386630 m!1272089))

(declare-fun m!1272091 () Bool)

(assert (=> b!1386630 m!1272091))

(declare-fun m!1272093 () Bool)

(assert (=> b!1386630 m!1272093))

(declare-fun m!1272095 () Bool)

(assert (=> b!1386630 m!1272095))

(assert (=> b!1386630 m!1272093))

(declare-fun m!1272097 () Bool)

(assert (=> b!1386630 m!1272097))

(declare-fun m!1272099 () Bool)

(assert (=> b!1386631 m!1272099))

(assert (=> b!1386631 m!1272099))

(declare-fun m!1272101 () Bool)

(assert (=> b!1386631 m!1272101))

(declare-fun m!1272103 () Bool)

(assert (=> start!118654 m!1272103))

(declare-fun m!1272105 () Bool)

(assert (=> start!118654 m!1272105))

(declare-fun m!1272107 () Bool)

(assert (=> b!1386635 m!1272107))

(assert (=> b!1386633 m!1272093))

(assert (=> b!1386633 m!1272093))

(declare-fun m!1272109 () Bool)

(assert (=> b!1386633 m!1272109))

(declare-fun m!1272111 () Bool)

(assert (=> b!1386632 m!1272111))

(assert (=> b!1386637 m!1272099))

(push 1)

(assert (not b!1386631))

(assert (not start!118654))

(assert (not b!1386635))

(assert (not b!1386630))

(assert (not b!1386633))

(assert (not b!1386632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

