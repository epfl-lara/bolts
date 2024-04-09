; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118636 () Bool)

(assert start!118636)

(declare-fun b!1386386 () Bool)

(declare-datatypes ((Unit!46255 0))(
  ( (Unit!46256) )
))
(declare-fun e!785393 () Unit!46255)

(declare-fun Unit!46257 () Unit!46255)

(assert (=> b!1386386 (= e!785393 Unit!46257)))

(declare-fun res!927689 () Bool)

(declare-fun e!785395 () Bool)

(assert (=> start!118636 (=> (not res!927689) (not e!785395))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118636 (= res!927689 (validMask!0 mask!2987))))

(assert (=> start!118636 e!785395))

(assert (=> start!118636 true))

(declare-datatypes ((array!94830 0))(
  ( (array!94831 (arr!45787 (Array (_ BitVec 32) (_ BitVec 64))) (size!46338 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94830)

(declare-fun array_inv!34732 (array!94830) Bool)

(assert (=> start!118636 (array_inv!34732 a!2938)))

(declare-fun b!1386387 () Bool)

(assert (=> b!1386387 (= e!785395 false)))

(declare-fun lt!609414 () Unit!46255)

(assert (=> b!1386387 (= lt!609414 e!785393)))

(declare-fun c!128792 () Bool)

(declare-fun e!785396 () Bool)

(assert (=> b!1386387 (= c!128792 e!785396)))

(declare-fun res!927691 () Bool)

(assert (=> b!1386387 (=> (not res!927691) (not e!785396))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386387 (= res!927691 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386388 () Bool)

(declare-fun res!927687 () Bool)

(assert (=> b!1386388 (=> (not res!927687) (not e!785395))))

(assert (=> b!1386388 (= res!927687 (and (not (= (select (arr!45787 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45787 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386389 () Bool)

(declare-fun res!927688 () Bool)

(assert (=> b!1386389 (=> (not res!927688) (not e!785395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94830 (_ BitVec 32)) Bool)

(assert (=> b!1386389 (= res!927688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386390 () Bool)

(declare-fun res!927692 () Bool)

(assert (=> b!1386390 (=> (not res!927692) (not e!785395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386390 (= res!927692 (validKeyInArray!0 (select (arr!45787 a!2938) i!1065)))))

(declare-fun b!1386391 () Bool)

(assert (=> b!1386391 (= e!785396 (validKeyInArray!0 (select (arr!45787 a!2938) startIndex!16)))))

(declare-fun b!1386392 () Bool)

(declare-fun lt!609413 () Unit!46255)

(assert (=> b!1386392 (= e!785393 lt!609413)))

(declare-fun lt!609415 () Unit!46255)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46255)

(assert (=> b!1386392 (= lt!609415 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10152 0))(
  ( (MissingZero!10152 (index!42978 (_ BitVec 32))) (Found!10152 (index!42979 (_ BitVec 32))) (Intermediate!10152 (undefined!10964 Bool) (index!42980 (_ BitVec 32)) (x!124604 (_ BitVec 32))) (Undefined!10152) (MissingVacant!10152 (index!42981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94830 (_ BitVec 32)) SeekEntryResult!10152)

(assert (=> b!1386392 (= (seekEntryOrOpen!0 (select (arr!45787 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45787 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94831 (store (arr!45787 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46338 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46255)

(assert (=> b!1386392 (= lt!609413 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386392 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386393 () Bool)

(declare-fun res!927690 () Bool)

(assert (=> b!1386393 (=> (not res!927690) (not e!785395))))

(declare-datatypes ((List!32495 0))(
  ( (Nil!32492) (Cons!32491 (h!33700 (_ BitVec 64)) (t!47196 List!32495)) )
))
(declare-fun arrayNoDuplicates!0 (array!94830 (_ BitVec 32) List!32495) Bool)

(assert (=> b!1386393 (= res!927690 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32492))))

(declare-fun b!1386394 () Bool)

(declare-fun res!927693 () Bool)

(assert (=> b!1386394 (=> (not res!927693) (not e!785395))))

(assert (=> b!1386394 (= res!927693 (and (= (size!46338 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46338 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46338 a!2938))))))

(assert (= (and start!118636 res!927689) b!1386394))

(assert (= (and b!1386394 res!927693) b!1386390))

(assert (= (and b!1386390 res!927692) b!1386393))

(assert (= (and b!1386393 res!927690) b!1386389))

(assert (= (and b!1386389 res!927688) b!1386388))

(assert (= (and b!1386388 res!927687) b!1386387))

(assert (= (and b!1386387 res!927691) b!1386391))

(assert (= (and b!1386387 c!128792) b!1386392))

(assert (= (and b!1386387 (not c!128792)) b!1386386))

(declare-fun m!1271813 () Bool)

(assert (=> b!1386388 m!1271813))

(declare-fun m!1271815 () Bool)

(assert (=> b!1386389 m!1271815))

(declare-fun m!1271817 () Bool)

(assert (=> b!1386392 m!1271817))

(declare-fun m!1271819 () Bool)

(assert (=> b!1386392 m!1271819))

(assert (=> b!1386392 m!1271819))

(declare-fun m!1271821 () Bool)

(assert (=> b!1386392 m!1271821))

(declare-fun m!1271823 () Bool)

(assert (=> b!1386392 m!1271823))

(declare-fun m!1271825 () Bool)

(assert (=> b!1386392 m!1271825))

(declare-fun m!1271827 () Bool)

(assert (=> b!1386392 m!1271827))

(declare-fun m!1271829 () Bool)

(assert (=> b!1386392 m!1271829))

(assert (=> b!1386392 m!1271827))

(declare-fun m!1271831 () Bool)

(assert (=> b!1386392 m!1271831))

(declare-fun m!1271833 () Bool)

(assert (=> b!1386393 m!1271833))

(declare-fun m!1271835 () Bool)

(assert (=> start!118636 m!1271835))

(declare-fun m!1271837 () Bool)

(assert (=> start!118636 m!1271837))

(assert (=> b!1386391 m!1271827))

(assert (=> b!1386391 m!1271827))

(declare-fun m!1271839 () Bool)

(assert (=> b!1386391 m!1271839))

(assert (=> b!1386390 m!1271813))

(assert (=> b!1386390 m!1271813))

(declare-fun m!1271841 () Bool)

(assert (=> b!1386390 m!1271841))

(push 1)

(assert (not b!1386393))

(assert (not b!1386390))

(assert (not b!1386389))

(assert (not start!118636))

(assert (not b!1386392))

(assert (not b!1386391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

