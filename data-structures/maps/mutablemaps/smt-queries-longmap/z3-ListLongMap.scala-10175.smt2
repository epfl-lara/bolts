; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120018 () Bool)

(assert start!120018)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95465 0))(
  ( (array!95466 (arr!46082 (Array (_ BitVec 32) (_ BitVec 64))) (size!46633 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95465)

(declare-fun e!790683 () Bool)

(declare-fun b!1396577 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10421 0))(
  ( (MissingZero!10421 (index!44054 (_ BitVec 32))) (Found!10421 (index!44055 (_ BitVec 32))) (Intermediate!10421 (undefined!11233 Bool) (index!44056 (_ BitVec 32)) (x!125726 (_ BitVec 32))) (Undefined!10421) (MissingVacant!10421 (index!44057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95465 (_ BitVec 32)) SeekEntryResult!10421)

(assert (=> b!1396577 (= e!790683 (= (seekEntryOrOpen!0 (select (arr!46082 a!2901) j!112) a!2901 mask!2840) (Found!10421 j!112)))))

(declare-fun b!1396578 () Bool)

(declare-fun res!935600 () Bool)

(declare-fun e!790685 () Bool)

(assert (=> b!1396578 (=> (not res!935600) (not e!790685))))

(declare-datatypes ((List!32781 0))(
  ( (Nil!32778) (Cons!32777 (h!34019 (_ BitVec 64)) (t!47482 List!32781)) )
))
(declare-fun arrayNoDuplicates!0 (array!95465 (_ BitVec 32) List!32781) Bool)

(assert (=> b!1396578 (= res!935600 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32778))))

(declare-fun res!935605 () Bool)

(assert (=> start!120018 (=> (not res!935605) (not e!790685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120018 (= res!935605 (validMask!0 mask!2840))))

(assert (=> start!120018 e!790685))

(assert (=> start!120018 true))

(declare-fun array_inv!35027 (array!95465) Bool)

(assert (=> start!120018 (array_inv!35027 a!2901)))

(declare-fun b!1396579 () Bool)

(declare-fun res!935599 () Bool)

(assert (=> b!1396579 (=> (not res!935599) (not e!790685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95465 (_ BitVec 32)) Bool)

(assert (=> b!1396579 (= res!935599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396580 () Bool)

(declare-fun e!790684 () Bool)

(assert (=> b!1396580 (= e!790684 true)))

(declare-fun lt!613538 () array!95465)

(declare-fun lt!613542 () (_ BitVec 64))

(declare-fun lt!613541 () (_ BitVec 32))

(declare-fun lt!613540 () SeekEntryResult!10421)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95465 (_ BitVec 32)) SeekEntryResult!10421)

(assert (=> b!1396580 (= lt!613540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613541 lt!613542 lt!613538 mask!2840))))

(declare-fun b!1396581 () Bool)

(declare-fun res!935607 () Bool)

(assert (=> b!1396581 (=> (not res!935607) (not e!790685))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396581 (= res!935607 (validKeyInArray!0 (select (arr!46082 a!2901) i!1037)))))

(declare-fun b!1396582 () Bool)

(declare-fun res!935602 () Bool)

(assert (=> b!1396582 (=> (not res!935602) (not e!790685))))

(assert (=> b!1396582 (= res!935602 (and (= (size!46633 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46633 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46633 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396583 () Bool)

(declare-fun e!790681 () Bool)

(assert (=> b!1396583 (= e!790685 (not e!790681))))

(declare-fun res!935603 () Bool)

(assert (=> b!1396583 (=> res!935603 e!790681)))

(declare-fun lt!613543 () SeekEntryResult!10421)

(get-info :version)

(assert (=> b!1396583 (= res!935603 (or (not ((_ is Intermediate!10421) lt!613543)) (undefined!11233 lt!613543)))))

(assert (=> b!1396583 e!790683))

(declare-fun res!935606 () Bool)

(assert (=> b!1396583 (=> (not res!935606) (not e!790683))))

(assert (=> b!1396583 (= res!935606 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46796 0))(
  ( (Unit!46797) )
))
(declare-fun lt!613537 () Unit!46796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46796)

(assert (=> b!1396583 (= lt!613537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396583 (= lt!613543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613541 (select (arr!46082 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396583 (= lt!613541 (toIndex!0 (select (arr!46082 a!2901) j!112) mask!2840))))

(declare-fun b!1396584 () Bool)

(declare-fun res!935601 () Bool)

(assert (=> b!1396584 (=> (not res!935601) (not e!790685))))

(assert (=> b!1396584 (= res!935601 (validKeyInArray!0 (select (arr!46082 a!2901) j!112)))))

(declare-fun b!1396585 () Bool)

(assert (=> b!1396585 (= e!790681 e!790684)))

(declare-fun res!935604 () Bool)

(assert (=> b!1396585 (=> res!935604 e!790684)))

(declare-fun lt!613539 () SeekEntryResult!10421)

(assert (=> b!1396585 (= res!935604 (or (= lt!613543 lt!613539) (not ((_ is Intermediate!10421) lt!613539)) (bvslt (x!125726 lt!613543) #b00000000000000000000000000000000) (bvsgt (x!125726 lt!613543) #b01111111111111111111111111111110) (bvslt lt!613541 #b00000000000000000000000000000000) (bvsge lt!613541 (size!46633 a!2901)) (bvslt (index!44056 lt!613543) #b00000000000000000000000000000000) (bvsge (index!44056 lt!613543) (size!46633 a!2901)) (not (= lt!613543 (Intermediate!10421 false (index!44056 lt!613543) (x!125726 lt!613543)))) (not (= lt!613539 (Intermediate!10421 (undefined!11233 lt!613539) (index!44056 lt!613539) (x!125726 lt!613539))))))))

(assert (=> b!1396585 (= lt!613539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613542 mask!2840) lt!613542 lt!613538 mask!2840))))

(assert (=> b!1396585 (= lt!613542 (select (store (arr!46082 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396585 (= lt!613538 (array!95466 (store (arr!46082 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46633 a!2901)))))

(assert (= (and start!120018 res!935605) b!1396582))

(assert (= (and b!1396582 res!935602) b!1396581))

(assert (= (and b!1396581 res!935607) b!1396584))

(assert (= (and b!1396584 res!935601) b!1396579))

(assert (= (and b!1396579 res!935599) b!1396578))

(assert (= (and b!1396578 res!935600) b!1396583))

(assert (= (and b!1396583 res!935606) b!1396577))

(assert (= (and b!1396583 (not res!935603)) b!1396585))

(assert (= (and b!1396585 (not res!935604)) b!1396580))

(declare-fun m!1283147 () Bool)

(assert (=> b!1396580 m!1283147))

(declare-fun m!1283149 () Bool)

(assert (=> start!120018 m!1283149))

(declare-fun m!1283151 () Bool)

(assert (=> start!120018 m!1283151))

(declare-fun m!1283153 () Bool)

(assert (=> b!1396579 m!1283153))

(declare-fun m!1283155 () Bool)

(assert (=> b!1396585 m!1283155))

(assert (=> b!1396585 m!1283155))

(declare-fun m!1283157 () Bool)

(assert (=> b!1396585 m!1283157))

(declare-fun m!1283159 () Bool)

(assert (=> b!1396585 m!1283159))

(declare-fun m!1283161 () Bool)

(assert (=> b!1396585 m!1283161))

(declare-fun m!1283163 () Bool)

(assert (=> b!1396577 m!1283163))

(assert (=> b!1396577 m!1283163))

(declare-fun m!1283165 () Bool)

(assert (=> b!1396577 m!1283165))

(assert (=> b!1396584 m!1283163))

(assert (=> b!1396584 m!1283163))

(declare-fun m!1283167 () Bool)

(assert (=> b!1396584 m!1283167))

(declare-fun m!1283169 () Bool)

(assert (=> b!1396581 m!1283169))

(assert (=> b!1396581 m!1283169))

(declare-fun m!1283171 () Bool)

(assert (=> b!1396581 m!1283171))

(assert (=> b!1396583 m!1283163))

(declare-fun m!1283173 () Bool)

(assert (=> b!1396583 m!1283173))

(assert (=> b!1396583 m!1283163))

(declare-fun m!1283175 () Bool)

(assert (=> b!1396583 m!1283175))

(assert (=> b!1396583 m!1283163))

(declare-fun m!1283177 () Bool)

(assert (=> b!1396583 m!1283177))

(declare-fun m!1283179 () Bool)

(assert (=> b!1396583 m!1283179))

(declare-fun m!1283181 () Bool)

(assert (=> b!1396578 m!1283181))

(check-sat (not b!1396580) (not b!1396578) (not b!1396579) (not start!120018) (not b!1396577) (not b!1396585) (not b!1396581) (not b!1396583) (not b!1396584))
(check-sat)
