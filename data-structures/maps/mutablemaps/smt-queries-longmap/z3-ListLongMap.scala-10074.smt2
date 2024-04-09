; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118620 () Bool)

(assert start!118620)

(declare-fun b!1386170 () Bool)

(declare-datatypes ((Unit!46231 0))(
  ( (Unit!46232) )
))
(declare-fun e!785298 () Unit!46231)

(declare-fun lt!609341 () Unit!46231)

(assert (=> b!1386170 (= e!785298 lt!609341)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609343 () Unit!46231)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((array!94814 0))(
  ( (array!94815 (arr!45779 (Array (_ BitVec 32) (_ BitVec 64))) (size!46330 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94814)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94814 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46231)

(assert (=> b!1386170 (= lt!609343 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10144 0))(
  ( (MissingZero!10144 (index!42946 (_ BitVec 32))) (Found!10144 (index!42947 (_ BitVec 32))) (Intermediate!10144 (undefined!10956 Bool) (index!42948 (_ BitVec 32)) (x!124572 (_ BitVec 32))) (Undefined!10144) (MissingVacant!10144 (index!42949 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94814 (_ BitVec 32)) SeekEntryResult!10144)

(assert (=> b!1386170 (= (seekEntryOrOpen!0 (select (arr!45779 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45779 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94815 (store (arr!45779 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46330 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94814 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46231)

(assert (=> b!1386170 (= lt!609341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94814 (_ BitVec 32)) Bool)

(assert (=> b!1386170 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386171 () Bool)

(declare-fun res!927522 () Bool)

(declare-fun e!785300 () Bool)

(assert (=> b!1386171 (=> (not res!927522) (not e!785300))))

(declare-datatypes ((List!32487 0))(
  ( (Nil!32484) (Cons!32483 (h!33692 (_ BitVec 64)) (t!47188 List!32487)) )
))
(declare-fun arrayNoDuplicates!0 (array!94814 (_ BitVec 32) List!32487) Bool)

(assert (=> b!1386171 (= res!927522 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32484))))

(declare-fun b!1386172 () Bool)

(declare-fun res!927525 () Bool)

(assert (=> b!1386172 (=> (not res!927525) (not e!785300))))

(assert (=> b!1386172 (= res!927525 (and (= (size!46330 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46330 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46330 a!2938))))))

(declare-fun b!1386173 () Bool)

(declare-fun Unit!46233 () Unit!46231)

(assert (=> b!1386173 (= e!785298 Unit!46233)))

(declare-fun res!927524 () Bool)

(assert (=> start!118620 (=> (not res!927524) (not e!785300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118620 (= res!927524 (validMask!0 mask!2987))))

(assert (=> start!118620 e!785300))

(assert (=> start!118620 true))

(declare-fun array_inv!34724 (array!94814) Bool)

(assert (=> start!118620 (array_inv!34724 a!2938)))

(declare-fun b!1386174 () Bool)

(declare-fun res!927521 () Bool)

(assert (=> b!1386174 (=> (not res!927521) (not e!785300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386174 (= res!927521 (validKeyInArray!0 (select (arr!45779 a!2938) i!1065)))))

(declare-fun b!1386175 () Bool)

(declare-fun res!927523 () Bool)

(assert (=> b!1386175 (=> (not res!927523) (not e!785300))))

(assert (=> b!1386175 (= res!927523 (and (not (= (select (arr!45779 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45779 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386176 () Bool)

(assert (=> b!1386176 (= e!785300 false)))

(declare-fun lt!609342 () Unit!46231)

(assert (=> b!1386176 (= lt!609342 e!785298)))

(declare-fun c!128768 () Bool)

(declare-fun e!785299 () Bool)

(assert (=> b!1386176 (= c!128768 e!785299)))

(declare-fun res!927520 () Bool)

(assert (=> b!1386176 (=> (not res!927520) (not e!785299))))

(assert (=> b!1386176 (= res!927520 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386177 () Bool)

(declare-fun res!927519 () Bool)

(assert (=> b!1386177 (=> (not res!927519) (not e!785300))))

(assert (=> b!1386177 (= res!927519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386178 () Bool)

(assert (=> b!1386178 (= e!785299 (validKeyInArray!0 (select (arr!45779 a!2938) startIndex!16)))))

(assert (= (and start!118620 res!927524) b!1386172))

(assert (= (and b!1386172 res!927525) b!1386174))

(assert (= (and b!1386174 res!927521) b!1386171))

(assert (= (and b!1386171 res!927522) b!1386177))

(assert (= (and b!1386177 res!927519) b!1386175))

(assert (= (and b!1386175 res!927523) b!1386176))

(assert (= (and b!1386176 res!927520) b!1386178))

(assert (= (and b!1386176 c!128768) b!1386170))

(assert (= (and b!1386176 (not c!128768)) b!1386173))

(declare-fun m!1271573 () Bool)

(assert (=> b!1386178 m!1271573))

(assert (=> b!1386178 m!1271573))

(declare-fun m!1271575 () Bool)

(assert (=> b!1386178 m!1271575))

(declare-fun m!1271577 () Bool)

(assert (=> b!1386170 m!1271577))

(declare-fun m!1271579 () Bool)

(assert (=> b!1386170 m!1271579))

(assert (=> b!1386170 m!1271579))

(declare-fun m!1271581 () Bool)

(assert (=> b!1386170 m!1271581))

(declare-fun m!1271583 () Bool)

(assert (=> b!1386170 m!1271583))

(declare-fun m!1271585 () Bool)

(assert (=> b!1386170 m!1271585))

(assert (=> b!1386170 m!1271573))

(declare-fun m!1271587 () Bool)

(assert (=> b!1386170 m!1271587))

(assert (=> b!1386170 m!1271573))

(declare-fun m!1271589 () Bool)

(assert (=> b!1386170 m!1271589))

(declare-fun m!1271591 () Bool)

(assert (=> b!1386171 m!1271591))

(declare-fun m!1271593 () Bool)

(assert (=> b!1386177 m!1271593))

(declare-fun m!1271595 () Bool)

(assert (=> b!1386175 m!1271595))

(declare-fun m!1271597 () Bool)

(assert (=> start!118620 m!1271597))

(declare-fun m!1271599 () Bool)

(assert (=> start!118620 m!1271599))

(assert (=> b!1386174 m!1271595))

(assert (=> b!1386174 m!1271595))

(declare-fun m!1271601 () Bool)

(assert (=> b!1386174 m!1271601))

(check-sat (not b!1386174) (not b!1386178) (not b!1386177) (not start!118620) (not b!1386170) (not b!1386171))
