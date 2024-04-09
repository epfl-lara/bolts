; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118678 () Bool)

(assert start!118678)

(declare-fun b!1386955 () Bool)

(declare-fun res!928132 () Bool)

(declare-fun e!785651 () Bool)

(assert (=> b!1386955 (=> (not res!928132) (not e!785651))))

(declare-datatypes ((array!94872 0))(
  ( (array!94873 (arr!45808 (Array (_ BitVec 32) (_ BitVec 64))) (size!46359 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94872)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386955 (= res!928132 (and (not (= (select (arr!45808 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45808 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386956 () Bool)

(declare-fun res!928134 () Bool)

(assert (=> b!1386956 (=> (not res!928134) (not e!785651))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94872 (_ BitVec 32)) Bool)

(assert (=> b!1386956 (= res!928134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!928131 () Bool)

(assert (=> start!118678 (=> (not res!928131) (not e!785651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118678 (= res!928131 (validMask!0 mask!2987))))

(assert (=> start!118678 e!785651))

(assert (=> start!118678 true))

(declare-fun array_inv!34753 (array!94872) Bool)

(assert (=> start!118678 (array_inv!34753 a!2938)))

(declare-fun b!1386957 () Bool)

(declare-fun e!785647 () Bool)

(assert (=> b!1386957 (= e!785651 e!785647)))

(declare-fun res!928136 () Bool)

(assert (=> b!1386957 (=> (not res!928136) (not e!785647))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386957 (= res!928136 (and (bvslt startIndex!16 (bvsub (size!46359 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!46318 0))(
  ( (Unit!46319) )
))
(declare-fun lt!609607 () Unit!46318)

(declare-fun e!785649 () Unit!46318)

(assert (=> b!1386957 (= lt!609607 e!785649)))

(declare-fun c!128855 () Bool)

(declare-fun e!785650 () Bool)

(assert (=> b!1386957 (= c!128855 e!785650)))

(declare-fun res!928133 () Bool)

(assert (=> b!1386957 (=> (not res!928133) (not e!785650))))

(assert (=> b!1386957 (= res!928133 (not (= startIndex!16 i!1065)))))

(declare-fun lt!609610 () array!94872)

(assert (=> b!1386957 (= lt!609610 (array!94873 (store (arr!45808 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46359 a!2938)))))

(declare-fun b!1386958 () Bool)

(declare-fun res!928130 () Bool)

(assert (=> b!1386958 (=> (not res!928130) (not e!785651))))

(declare-datatypes ((List!32516 0))(
  ( (Nil!32513) (Cons!32512 (h!33721 (_ BitVec 64)) (t!47217 List!32516)) )
))
(declare-fun arrayNoDuplicates!0 (array!94872 (_ BitVec 32) List!32516) Bool)

(assert (=> b!1386958 (= res!928130 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32513))))

(declare-fun b!1386959 () Bool)

(assert (=> b!1386959 (= e!785647 (not true))))

(assert (=> b!1386959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609610 mask!2987)))

(declare-fun lt!609609 () Unit!46318)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46318)

(assert (=> b!1386959 (= lt!609609 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1386960 () Bool)

(declare-fun Unit!46320 () Unit!46318)

(assert (=> b!1386960 (= e!785649 Unit!46320)))

(declare-fun b!1386961 () Bool)

(declare-fun res!928137 () Bool)

(assert (=> b!1386961 (=> (not res!928137) (not e!785651))))

(assert (=> b!1386961 (= res!928137 (and (= (size!46359 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46359 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46359 a!2938))))))

(declare-fun b!1386962 () Bool)

(declare-fun lt!609606 () Unit!46318)

(assert (=> b!1386962 (= e!785649 lt!609606)))

(declare-fun lt!609608 () Unit!46318)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46318)

(assert (=> b!1386962 (= lt!609608 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10173 0))(
  ( (MissingZero!10173 (index!43062 (_ BitVec 32))) (Found!10173 (index!43063 (_ BitVec 32))) (Intermediate!10173 (undefined!10985 Bool) (index!43064 (_ BitVec 32)) (x!124681 (_ BitVec 32))) (Undefined!10173) (MissingVacant!10173 (index!43065 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94872 (_ BitVec 32)) SeekEntryResult!10173)

(assert (=> b!1386962 (= (seekEntryOrOpen!0 (select (arr!45808 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45808 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609610 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46318)

(assert (=> b!1386962 (= lt!609606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386962 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386963 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386963 (= e!785650 (validKeyInArray!0 (select (arr!45808 a!2938) startIndex!16)))))

(declare-fun b!1386964 () Bool)

(declare-fun res!928135 () Bool)

(assert (=> b!1386964 (=> (not res!928135) (not e!785651))))

(assert (=> b!1386964 (= res!928135 (validKeyInArray!0 (select (arr!45808 a!2938) i!1065)))))

(assert (= (and start!118678 res!928131) b!1386961))

(assert (= (and b!1386961 res!928137) b!1386964))

(assert (= (and b!1386964 res!928135) b!1386958))

(assert (= (and b!1386958 res!928130) b!1386956))

(assert (= (and b!1386956 res!928134) b!1386955))

(assert (= (and b!1386955 res!928132) b!1386957))

(assert (= (and b!1386957 res!928133) b!1386963))

(assert (= (and b!1386957 c!128855) b!1386962))

(assert (= (and b!1386957 (not c!128855)) b!1386960))

(assert (= (and b!1386957 res!928136) b!1386959))

(declare-fun m!1272443 () Bool)

(assert (=> b!1386962 m!1272443))

(declare-fun m!1272445 () Bool)

(assert (=> b!1386962 m!1272445))

(declare-fun m!1272447 () Bool)

(assert (=> b!1386962 m!1272447))

(declare-fun m!1272449 () Bool)

(assert (=> b!1386962 m!1272449))

(declare-fun m!1272451 () Bool)

(assert (=> b!1386962 m!1272451))

(assert (=> b!1386962 m!1272443))

(declare-fun m!1272453 () Bool)

(assert (=> b!1386962 m!1272453))

(declare-fun m!1272455 () Bool)

(assert (=> b!1386962 m!1272455))

(assert (=> b!1386962 m!1272449))

(declare-fun m!1272457 () Bool)

(assert (=> b!1386962 m!1272457))

(declare-fun m!1272459 () Bool)

(assert (=> b!1386958 m!1272459))

(declare-fun m!1272461 () Bool)

(assert (=> b!1386955 m!1272461))

(assert (=> b!1386963 m!1272449))

(assert (=> b!1386963 m!1272449))

(declare-fun m!1272463 () Bool)

(assert (=> b!1386963 m!1272463))

(declare-fun m!1272465 () Bool)

(assert (=> b!1386956 m!1272465))

(assert (=> b!1386957 m!1272445))

(assert (=> b!1386964 m!1272461))

(assert (=> b!1386964 m!1272461))

(declare-fun m!1272467 () Bool)

(assert (=> b!1386964 m!1272467))

(declare-fun m!1272469 () Bool)

(assert (=> start!118678 m!1272469))

(declare-fun m!1272471 () Bool)

(assert (=> start!118678 m!1272471))

(declare-fun m!1272473 () Bool)

(assert (=> b!1386959 m!1272473))

(declare-fun m!1272475 () Bool)

(assert (=> b!1386959 m!1272475))

(push 1)

