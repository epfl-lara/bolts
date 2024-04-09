; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119998 () Bool)

(assert start!119998)

(declare-fun res!935333 () Bool)

(declare-fun e!790532 () Bool)

(assert (=> start!119998 (=> (not res!935333) (not e!790532))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119998 (= res!935333 (validMask!0 mask!2840))))

(assert (=> start!119998 e!790532))

(assert (=> start!119998 true))

(declare-datatypes ((array!95445 0))(
  ( (array!95446 (arr!46072 (Array (_ BitVec 32) (_ BitVec 64))) (size!46623 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95445)

(declare-fun array_inv!35017 (array!95445) Bool)

(assert (=> start!119998 (array_inv!35017 a!2901)))

(declare-fun b!1396307 () Bool)

(declare-fun res!935329 () Bool)

(assert (=> b!1396307 (=> (not res!935329) (not e!790532))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396307 (= res!935329 (validKeyInArray!0 (select (arr!46072 a!2901) i!1037)))))

(declare-fun e!790531 () Bool)

(declare-fun b!1396308 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10411 0))(
  ( (MissingZero!10411 (index!44014 (_ BitVec 32))) (Found!10411 (index!44015 (_ BitVec 32))) (Intermediate!10411 (undefined!11223 Bool) (index!44016 (_ BitVec 32)) (x!125692 (_ BitVec 32))) (Undefined!10411) (MissingVacant!10411 (index!44017 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95445 (_ BitVec 32)) SeekEntryResult!10411)

(assert (=> b!1396308 (= e!790531 (= (seekEntryOrOpen!0 (select (arr!46072 a!2901) j!112) a!2901 mask!2840) (Found!10411 j!112)))))

(declare-fun b!1396309 () Bool)

(declare-fun res!935331 () Bool)

(assert (=> b!1396309 (=> (not res!935331) (not e!790532))))

(declare-datatypes ((List!32771 0))(
  ( (Nil!32768) (Cons!32767 (h!34009 (_ BitVec 64)) (t!47472 List!32771)) )
))
(declare-fun arrayNoDuplicates!0 (array!95445 (_ BitVec 32) List!32771) Bool)

(assert (=> b!1396309 (= res!935331 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32768))))

(declare-fun b!1396310 () Bool)

(declare-fun e!790533 () Bool)

(assert (=> b!1396310 (= e!790532 (not e!790533))))

(declare-fun res!935337 () Bool)

(assert (=> b!1396310 (=> res!935337 e!790533)))

(declare-fun lt!613328 () SeekEntryResult!10411)

(assert (=> b!1396310 (= res!935337 (or (not (is-Intermediate!10411 lt!613328)) (undefined!11223 lt!613328)))))

(assert (=> b!1396310 e!790531))

(declare-fun res!935330 () Bool)

(assert (=> b!1396310 (=> (not res!935330) (not e!790531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95445 (_ BitVec 32)) Bool)

(assert (=> b!1396310 (= res!935330 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46776 0))(
  ( (Unit!46777) )
))
(declare-fun lt!613331 () Unit!46776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46776)

(assert (=> b!1396310 (= lt!613331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613333 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95445 (_ BitVec 32)) SeekEntryResult!10411)

(assert (=> b!1396310 (= lt!613328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613333 (select (arr!46072 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396310 (= lt!613333 (toIndex!0 (select (arr!46072 a!2901) j!112) mask!2840))))

(declare-fun b!1396311 () Bool)

(declare-fun res!935332 () Bool)

(assert (=> b!1396311 (=> (not res!935332) (not e!790532))))

(assert (=> b!1396311 (= res!935332 (and (= (size!46623 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46623 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46623 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396312 () Bool)

(declare-fun e!790535 () Bool)

(assert (=> b!1396312 (= e!790533 e!790535)))

(declare-fun res!935334 () Bool)

(assert (=> b!1396312 (=> res!935334 e!790535)))

(declare-fun lt!613329 () SeekEntryResult!10411)

(assert (=> b!1396312 (= res!935334 (or (= lt!613328 lt!613329) (not (is-Intermediate!10411 lt!613329)) (bvslt (x!125692 lt!613328) #b00000000000000000000000000000000) (bvsgt (x!125692 lt!613328) #b01111111111111111111111111111110) (bvslt lt!613333 #b00000000000000000000000000000000) (bvsge lt!613333 (size!46623 a!2901)) (bvslt (index!44016 lt!613328) #b00000000000000000000000000000000) (bvsge (index!44016 lt!613328) (size!46623 a!2901)) (not (= lt!613328 (Intermediate!10411 false (index!44016 lt!613328) (x!125692 lt!613328)))) (not (= lt!613329 (Intermediate!10411 (undefined!11223 lt!613329) (index!44016 lt!613329) (x!125692 lt!613329))))))))

(declare-fun lt!613330 () (_ BitVec 64))

(declare-fun lt!613327 () array!95445)

(assert (=> b!1396312 (= lt!613329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613330 mask!2840) lt!613330 lt!613327 mask!2840))))

(assert (=> b!1396312 (= lt!613330 (select (store (arr!46072 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396312 (= lt!613327 (array!95446 (store (arr!46072 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46623 a!2901)))))

(declare-fun b!1396313 () Bool)

(declare-fun res!935335 () Bool)

(assert (=> b!1396313 (=> (not res!935335) (not e!790532))))

(assert (=> b!1396313 (= res!935335 (validKeyInArray!0 (select (arr!46072 a!2901) j!112)))))

(declare-fun b!1396314 () Bool)

(declare-fun res!935336 () Bool)

(assert (=> b!1396314 (=> (not res!935336) (not e!790532))))

(assert (=> b!1396314 (= res!935336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396315 () Bool)

(assert (=> b!1396315 (= e!790535 true)))

(declare-fun lt!613332 () SeekEntryResult!10411)

(assert (=> b!1396315 (= lt!613332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613333 lt!613330 lt!613327 mask!2840))))

(assert (= (and start!119998 res!935333) b!1396311))

(assert (= (and b!1396311 res!935332) b!1396307))

(assert (= (and b!1396307 res!935329) b!1396313))

(assert (= (and b!1396313 res!935335) b!1396314))

(assert (= (and b!1396314 res!935336) b!1396309))

(assert (= (and b!1396309 res!935331) b!1396310))

(assert (= (and b!1396310 res!935330) b!1396308))

(assert (= (and b!1396310 (not res!935337)) b!1396312))

(assert (= (and b!1396312 (not res!935334)) b!1396315))

(declare-fun m!1282787 () Bool)

(assert (=> b!1396312 m!1282787))

(assert (=> b!1396312 m!1282787))

(declare-fun m!1282789 () Bool)

(assert (=> b!1396312 m!1282789))

(declare-fun m!1282791 () Bool)

(assert (=> b!1396312 m!1282791))

(declare-fun m!1282793 () Bool)

(assert (=> b!1396312 m!1282793))

(declare-fun m!1282795 () Bool)

(assert (=> start!119998 m!1282795))

(declare-fun m!1282797 () Bool)

(assert (=> start!119998 m!1282797))

(declare-fun m!1282799 () Bool)

(assert (=> b!1396315 m!1282799))

(declare-fun m!1282801 () Bool)

(assert (=> b!1396313 m!1282801))

(assert (=> b!1396313 m!1282801))

(declare-fun m!1282803 () Bool)

(assert (=> b!1396313 m!1282803))

(declare-fun m!1282805 () Bool)

(assert (=> b!1396314 m!1282805))

(declare-fun m!1282807 () Bool)

(assert (=> b!1396307 m!1282807))

(assert (=> b!1396307 m!1282807))

(declare-fun m!1282809 () Bool)

(assert (=> b!1396307 m!1282809))

(declare-fun m!1282811 () Bool)

(assert (=> b!1396309 m!1282811))

(assert (=> b!1396308 m!1282801))

(assert (=> b!1396308 m!1282801))

(declare-fun m!1282813 () Bool)

(assert (=> b!1396308 m!1282813))

(assert (=> b!1396310 m!1282801))

(declare-fun m!1282815 () Bool)

(assert (=> b!1396310 m!1282815))

(assert (=> b!1396310 m!1282801))

(assert (=> b!1396310 m!1282801))

(declare-fun m!1282817 () Bool)

(assert (=> b!1396310 m!1282817))

(declare-fun m!1282819 () Bool)

(assert (=> b!1396310 m!1282819))

(declare-fun m!1282821 () Bool)

(assert (=> b!1396310 m!1282821))

(push 1)

