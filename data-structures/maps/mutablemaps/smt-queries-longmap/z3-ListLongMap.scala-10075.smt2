; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118626 () Bool)

(assert start!118626)

(declare-fun b!1386251 () Bool)

(declare-fun e!785333 () Bool)

(assert (=> b!1386251 (= e!785333 false)))

(declare-datatypes ((Unit!46240 0))(
  ( (Unit!46241) )
))
(declare-fun lt!609370 () Unit!46240)

(declare-fun e!785335 () Unit!46240)

(assert (=> b!1386251 (= lt!609370 e!785335)))

(declare-fun c!128777 () Bool)

(declare-fun e!785336 () Bool)

(assert (=> b!1386251 (= c!128777 e!785336)))

(declare-fun res!927588 () Bool)

(assert (=> b!1386251 (=> (not res!927588) (not e!785336))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386251 (= res!927588 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386252 () Bool)

(declare-fun res!927583 () Bool)

(assert (=> b!1386252 (=> (not res!927583) (not e!785333))))

(declare-datatypes ((array!94820 0))(
  ( (array!94821 (arr!45782 (Array (_ BitVec 32) (_ BitVec 64))) (size!46333 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94820)

(declare-datatypes ((List!32490 0))(
  ( (Nil!32487) (Cons!32486 (h!33695 (_ BitVec 64)) (t!47191 List!32490)) )
))
(declare-fun arrayNoDuplicates!0 (array!94820 (_ BitVec 32) List!32490) Bool)

(assert (=> b!1386252 (= res!927583 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32487))))

(declare-fun b!1386253 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386253 (= e!785336 (validKeyInArray!0 (select (arr!45782 a!2938) startIndex!16)))))

(declare-fun b!1386254 () Bool)

(declare-fun res!927587 () Bool)

(assert (=> b!1386254 (=> (not res!927587) (not e!785333))))

(assert (=> b!1386254 (= res!927587 (validKeyInArray!0 (select (arr!45782 a!2938) i!1065)))))

(declare-fun b!1386255 () Bool)

(declare-fun res!927582 () Bool)

(assert (=> b!1386255 (=> (not res!927582) (not e!785333))))

(assert (=> b!1386255 (= res!927582 (and (not (= (select (arr!45782 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45782 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!927585 () Bool)

(assert (=> start!118626 (=> (not res!927585) (not e!785333))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118626 (= res!927585 (validMask!0 mask!2987))))

(assert (=> start!118626 e!785333))

(assert (=> start!118626 true))

(declare-fun array_inv!34727 (array!94820) Bool)

(assert (=> start!118626 (array_inv!34727 a!2938)))

(declare-fun b!1386256 () Bool)

(declare-fun res!927586 () Bool)

(assert (=> b!1386256 (=> (not res!927586) (not e!785333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94820 (_ BitVec 32)) Bool)

(assert (=> b!1386256 (= res!927586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386257 () Bool)

(declare-fun Unit!46242 () Unit!46240)

(assert (=> b!1386257 (= e!785335 Unit!46242)))

(declare-fun b!1386258 () Bool)

(declare-fun res!927584 () Bool)

(assert (=> b!1386258 (=> (not res!927584) (not e!785333))))

(assert (=> b!1386258 (= res!927584 (and (= (size!46333 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46333 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46333 a!2938))))))

(declare-fun b!1386259 () Bool)

(declare-fun lt!609369 () Unit!46240)

(assert (=> b!1386259 (= e!785335 lt!609369)))

(declare-fun lt!609368 () Unit!46240)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46240)

(assert (=> b!1386259 (= lt!609368 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10147 0))(
  ( (MissingZero!10147 (index!42958 (_ BitVec 32))) (Found!10147 (index!42959 (_ BitVec 32))) (Intermediate!10147 (undefined!10959 Bool) (index!42960 (_ BitVec 32)) (x!124583 (_ BitVec 32))) (Undefined!10147) (MissingVacant!10147 (index!42961 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94820 (_ BitVec 32)) SeekEntryResult!10147)

(assert (=> b!1386259 (= (seekEntryOrOpen!0 (select (arr!45782 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45782 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94821 (store (arr!45782 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46333 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46240)

(assert (=> b!1386259 (= lt!609369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386259 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118626 res!927585) b!1386258))

(assert (= (and b!1386258 res!927584) b!1386254))

(assert (= (and b!1386254 res!927587) b!1386252))

(assert (= (and b!1386252 res!927583) b!1386256))

(assert (= (and b!1386256 res!927586) b!1386255))

(assert (= (and b!1386255 res!927582) b!1386251))

(assert (= (and b!1386251 res!927588) b!1386253))

(assert (= (and b!1386251 c!128777) b!1386259))

(assert (= (and b!1386251 (not c!128777)) b!1386257))

(declare-fun m!1271663 () Bool)

(assert (=> b!1386253 m!1271663))

(assert (=> b!1386253 m!1271663))

(declare-fun m!1271665 () Bool)

(assert (=> b!1386253 m!1271665))

(declare-fun m!1271667 () Bool)

(assert (=> b!1386259 m!1271667))

(declare-fun m!1271669 () Bool)

(assert (=> b!1386259 m!1271669))

(assert (=> b!1386259 m!1271669))

(declare-fun m!1271671 () Bool)

(assert (=> b!1386259 m!1271671))

(declare-fun m!1271673 () Bool)

(assert (=> b!1386259 m!1271673))

(declare-fun m!1271675 () Bool)

(assert (=> b!1386259 m!1271675))

(assert (=> b!1386259 m!1271663))

(declare-fun m!1271677 () Bool)

(assert (=> b!1386259 m!1271677))

(assert (=> b!1386259 m!1271663))

(declare-fun m!1271679 () Bool)

(assert (=> b!1386259 m!1271679))

(declare-fun m!1271681 () Bool)

(assert (=> start!118626 m!1271681))

(declare-fun m!1271683 () Bool)

(assert (=> start!118626 m!1271683))

(declare-fun m!1271685 () Bool)

(assert (=> b!1386256 m!1271685))

(declare-fun m!1271687 () Bool)

(assert (=> b!1386255 m!1271687))

(assert (=> b!1386254 m!1271687))

(assert (=> b!1386254 m!1271687))

(declare-fun m!1271689 () Bool)

(assert (=> b!1386254 m!1271689))

(declare-fun m!1271691 () Bool)

(assert (=> b!1386252 m!1271691))

(check-sat (not b!1386252) (not b!1386256) (not b!1386259) (not b!1386254) (not start!118626) (not b!1386253))
