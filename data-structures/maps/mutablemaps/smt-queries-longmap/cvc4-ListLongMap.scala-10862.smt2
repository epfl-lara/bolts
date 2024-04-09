; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127394 () Bool)

(assert start!127394)

(declare-fun b!1496571 () Bool)

(declare-fun lt!652105 () (_ BitVec 32))

(declare-fun e!838235 () Bool)

(declare-fun lt!652108 () (_ BitVec 64))

(declare-datatypes ((array!99769 0))(
  ( (array!99770 (arr!48144 (Array (_ BitVec 32) (_ BitVec 64))) (size!48695 (_ BitVec 32))) )
))
(declare-fun lt!652106 () array!99769)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12407 0))(
  ( (MissingZero!12407 (index!52019 (_ BitVec 32))) (Found!12407 (index!52020 (_ BitVec 32))) (Intermediate!12407 (undefined!13219 Bool) (index!52021 (_ BitVec 32)) (x!133646 (_ BitVec 32))) (Undefined!12407) (MissingVacant!12407 (index!52022 (_ BitVec 32))) )
))
(declare-fun lt!652107 () SeekEntryResult!12407)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99769 (_ BitVec 32)) SeekEntryResult!12407)

(assert (=> b!1496571 (= e!838235 (not (= lt!652107 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652105 lt!652108 lt!652106 mask!2687))))))

(declare-fun b!1496572 () Bool)

(declare-fun res!1017958 () Bool)

(declare-fun e!838232 () Bool)

(assert (=> b!1496572 (=> (not res!1017958) (not e!838232))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99769)

(assert (=> b!1496572 (= res!1017958 (and (= (size!48695 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48695 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48695 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496573 () Bool)

(declare-fun e!838236 () Bool)

(declare-fun e!838241 () Bool)

(assert (=> b!1496573 (= e!838236 (not e!838241))))

(declare-fun res!1017960 () Bool)

(assert (=> b!1496573 (=> res!1017960 e!838241)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496573 (= res!1017960 (or (and (= (select (arr!48144 a!2862) index!646) (select (store (arr!48144 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48144 a!2862) index!646) (select (arr!48144 a!2862) j!93))) (= (select (arr!48144 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!838233 () Bool)

(assert (=> b!1496573 e!838233))

(declare-fun res!1017968 () Bool)

(assert (=> b!1496573 (=> (not res!1017968) (not e!838233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99769 (_ BitVec 32)) Bool)

(assert (=> b!1496573 (= res!1017968 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50102 0))(
  ( (Unit!50103) )
))
(declare-fun lt!652103 () Unit!50102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50102)

(assert (=> b!1496573 (= lt!652103 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496574 () Bool)

(declare-fun res!1017957 () Bool)

(assert (=> b!1496574 (=> (not res!1017957) (not e!838233))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99769 (_ BitVec 32)) SeekEntryResult!12407)

(assert (=> b!1496574 (= res!1017957 (= (seekEntryOrOpen!0 (select (arr!48144 a!2862) j!93) a!2862 mask!2687) (Found!12407 j!93)))))

(declare-fun b!1496575 () Bool)

(declare-fun res!1017973 () Bool)

(assert (=> b!1496575 (=> (not res!1017973) (not e!838232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496575 (= res!1017973 (validKeyInArray!0 (select (arr!48144 a!2862) j!93)))))

(declare-fun b!1496576 () Bool)

(declare-fun res!1017966 () Bool)

(declare-fun e!838237 () Bool)

(assert (=> b!1496576 (=> res!1017966 e!838237)))

(assert (=> b!1496576 (= res!1017966 e!838235)))

(declare-fun c!138844 () Bool)

(assert (=> b!1496576 (= c!138844 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496577 () Bool)

(declare-fun res!1017962 () Bool)

(assert (=> b!1496577 (=> (not res!1017962) (not e!838232))))

(assert (=> b!1496577 (= res!1017962 (validKeyInArray!0 (select (arr!48144 a!2862) i!1006)))))

(declare-fun b!1496578 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99769 (_ BitVec 32)) SeekEntryResult!12407)

(assert (=> b!1496578 (= e!838235 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652105 intermediateAfterIndex!19 lt!652108 lt!652106 mask!2687) (seekEntryOrOpen!0 lt!652108 lt!652106 mask!2687))))))

(declare-fun b!1496579 () Bool)

(declare-fun e!838240 () Bool)

(declare-fun e!838234 () Bool)

(assert (=> b!1496579 (= e!838240 e!838234)))

(declare-fun res!1017963 () Bool)

(assert (=> b!1496579 (=> (not res!1017963) (not e!838234))))

(declare-fun lt!652104 () SeekEntryResult!12407)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496579 (= res!1017963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48144 a!2862) j!93) mask!2687) (select (arr!48144 a!2862) j!93) a!2862 mask!2687) lt!652104))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1496579 (= lt!652104 (Intermediate!12407 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496580 () Bool)

(declare-fun res!1017971 () Bool)

(assert (=> b!1496580 (=> res!1017971 e!838237)))

(assert (=> b!1496580 (= res!1017971 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652105 (select (arr!48144 a!2862) j!93) a!2862 mask!2687) lt!652104)))))

(declare-fun b!1496581 () Bool)

(declare-fun res!1017965 () Bool)

(assert (=> b!1496581 (=> (not res!1017965) (not e!838232))))

(assert (=> b!1496581 (= res!1017965 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48695 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48695 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48695 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1017964 () Bool)

(assert (=> start!127394 (=> (not res!1017964) (not e!838232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127394 (= res!1017964 (validMask!0 mask!2687))))

(assert (=> start!127394 e!838232))

(assert (=> start!127394 true))

(declare-fun array_inv!37089 (array!99769) Bool)

(assert (=> start!127394 (array_inv!37089 a!2862)))

(declare-fun b!1496582 () Bool)

(declare-fun res!1017970 () Bool)

(assert (=> b!1496582 (=> (not res!1017970) (not e!838236))))

(assert (=> b!1496582 (= res!1017970 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496583 () Bool)

(assert (=> b!1496583 (= e!838234 e!838236)))

(declare-fun res!1017974 () Bool)

(assert (=> b!1496583 (=> (not res!1017974) (not e!838236))))

(assert (=> b!1496583 (= res!1017974 (= lt!652107 (Intermediate!12407 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1496583 (= lt!652107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652108 mask!2687) lt!652108 lt!652106 mask!2687))))

(assert (=> b!1496583 (= lt!652108 (select (store (arr!48144 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!838238 () Bool)

(declare-fun b!1496584 () Bool)

(assert (=> b!1496584 (= e!838238 (= lt!652107 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652108 lt!652106 mask!2687)))))

(declare-fun b!1496585 () Bool)

(declare-fun res!1017959 () Bool)

(assert (=> b!1496585 (=> (not res!1017959) (not e!838232))))

(assert (=> b!1496585 (= res!1017959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496586 () Bool)

(assert (=> b!1496586 (= e!838237 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun b!1496587 () Bool)

(declare-fun res!1017967 () Bool)

(assert (=> b!1496587 (=> (not res!1017967) (not e!838236))))

(assert (=> b!1496587 (= res!1017967 e!838238)))

(declare-fun c!138845 () Bool)

(assert (=> b!1496587 (= c!138845 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496588 () Bool)

(declare-fun res!1017972 () Bool)

(assert (=> b!1496588 (=> (not res!1017972) (not e!838234))))

(assert (=> b!1496588 (= res!1017972 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48144 a!2862) j!93) a!2862 mask!2687) lt!652104))))

(declare-fun b!1496589 () Bool)

(assert (=> b!1496589 (= e!838232 e!838240)))

(declare-fun res!1017975 () Bool)

(assert (=> b!1496589 (=> (not res!1017975) (not e!838240))))

(assert (=> b!1496589 (= res!1017975 (= (select (store (arr!48144 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496589 (= lt!652106 (array!99770 (store (arr!48144 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48695 a!2862)))))

(declare-fun b!1496590 () Bool)

(declare-fun res!1017961 () Bool)

(assert (=> b!1496590 (=> (not res!1017961) (not e!838232))))

(declare-datatypes ((List!34825 0))(
  ( (Nil!34822) (Cons!34821 (h!36219 (_ BitVec 64)) (t!49526 List!34825)) )
))
(declare-fun arrayNoDuplicates!0 (array!99769 (_ BitVec 32) List!34825) Bool)

(assert (=> b!1496590 (= res!1017961 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34822))))

(declare-fun b!1496591 () Bool)

(assert (=> b!1496591 (= e!838241 e!838237)))

(declare-fun res!1017969 () Bool)

(assert (=> b!1496591 (=> res!1017969 e!838237)))

(assert (=> b!1496591 (= res!1017969 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652105 #b00000000000000000000000000000000) (bvsge lt!652105 (size!48695 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496591 (= lt!652105 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496592 () Bool)

(assert (=> b!1496592 (= e!838238 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652108 lt!652106 mask!2687) (seekEntryOrOpen!0 lt!652108 lt!652106 mask!2687)))))

(declare-fun b!1496593 () Bool)

(assert (=> b!1496593 (= e!838233 (or (= (select (arr!48144 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48144 a!2862) intermediateBeforeIndex!19) (select (arr!48144 a!2862) j!93))))))

(assert (= (and start!127394 res!1017964) b!1496572))

(assert (= (and b!1496572 res!1017958) b!1496577))

(assert (= (and b!1496577 res!1017962) b!1496575))

(assert (= (and b!1496575 res!1017973) b!1496585))

(assert (= (and b!1496585 res!1017959) b!1496590))

(assert (= (and b!1496590 res!1017961) b!1496581))

(assert (= (and b!1496581 res!1017965) b!1496589))

(assert (= (and b!1496589 res!1017975) b!1496579))

(assert (= (and b!1496579 res!1017963) b!1496588))

(assert (= (and b!1496588 res!1017972) b!1496583))

(assert (= (and b!1496583 res!1017974) b!1496587))

(assert (= (and b!1496587 c!138845) b!1496584))

(assert (= (and b!1496587 (not c!138845)) b!1496592))

(assert (= (and b!1496587 res!1017967) b!1496582))

(assert (= (and b!1496582 res!1017970) b!1496573))

(assert (= (and b!1496573 res!1017968) b!1496574))

(assert (= (and b!1496574 res!1017957) b!1496593))

(assert (= (and b!1496573 (not res!1017960)) b!1496591))

(assert (= (and b!1496591 (not res!1017969)) b!1496580))

(assert (= (and b!1496580 (not res!1017971)) b!1496576))

(assert (= (and b!1496576 c!138844) b!1496571))

(assert (= (and b!1496576 (not c!138844)) b!1496578))

(assert (= (and b!1496576 (not res!1017966)) b!1496586))

(declare-fun m!1379783 () Bool)

(assert (=> b!1496584 m!1379783))

(declare-fun m!1379785 () Bool)

(assert (=> b!1496575 m!1379785))

(assert (=> b!1496575 m!1379785))

(declare-fun m!1379787 () Bool)

(assert (=> b!1496575 m!1379787))

(declare-fun m!1379789 () Bool)

(assert (=> b!1496571 m!1379789))

(declare-fun m!1379791 () Bool)

(assert (=> b!1496593 m!1379791))

(assert (=> b!1496593 m!1379785))

(declare-fun m!1379793 () Bool)

(assert (=> b!1496583 m!1379793))

(assert (=> b!1496583 m!1379793))

(declare-fun m!1379795 () Bool)

(assert (=> b!1496583 m!1379795))

(declare-fun m!1379797 () Bool)

(assert (=> b!1496583 m!1379797))

(declare-fun m!1379799 () Bool)

(assert (=> b!1496583 m!1379799))

(assert (=> b!1496588 m!1379785))

(assert (=> b!1496588 m!1379785))

(declare-fun m!1379801 () Bool)

(assert (=> b!1496588 m!1379801))

(declare-fun m!1379803 () Bool)

(assert (=> b!1496592 m!1379803))

(declare-fun m!1379805 () Bool)

(assert (=> b!1496592 m!1379805))

(declare-fun m!1379807 () Bool)

(assert (=> b!1496585 m!1379807))

(assert (=> b!1496580 m!1379785))

(assert (=> b!1496580 m!1379785))

(declare-fun m!1379809 () Bool)

(assert (=> b!1496580 m!1379809))

(declare-fun m!1379811 () Bool)

(assert (=> start!127394 m!1379811))

(declare-fun m!1379813 () Bool)

(assert (=> start!127394 m!1379813))

(assert (=> b!1496579 m!1379785))

(assert (=> b!1496579 m!1379785))

(declare-fun m!1379815 () Bool)

(assert (=> b!1496579 m!1379815))

(assert (=> b!1496579 m!1379815))

(assert (=> b!1496579 m!1379785))

(declare-fun m!1379817 () Bool)

(assert (=> b!1496579 m!1379817))

(declare-fun m!1379819 () Bool)

(assert (=> b!1496590 m!1379819))

(assert (=> b!1496589 m!1379797))

(declare-fun m!1379821 () Bool)

(assert (=> b!1496589 m!1379821))

(declare-fun m!1379823 () Bool)

(assert (=> b!1496577 m!1379823))

(assert (=> b!1496577 m!1379823))

(declare-fun m!1379825 () Bool)

(assert (=> b!1496577 m!1379825))

(declare-fun m!1379827 () Bool)

(assert (=> b!1496573 m!1379827))

(assert (=> b!1496573 m!1379797))

(declare-fun m!1379829 () Bool)

(assert (=> b!1496573 m!1379829))

(declare-fun m!1379831 () Bool)

(assert (=> b!1496573 m!1379831))

(declare-fun m!1379833 () Bool)

(assert (=> b!1496573 m!1379833))

(assert (=> b!1496573 m!1379785))

(assert (=> b!1496574 m!1379785))

(assert (=> b!1496574 m!1379785))

(declare-fun m!1379835 () Bool)

(assert (=> b!1496574 m!1379835))

(declare-fun m!1379837 () Bool)

(assert (=> b!1496578 m!1379837))

(assert (=> b!1496578 m!1379805))

(declare-fun m!1379839 () Bool)

(assert (=> b!1496591 m!1379839))

(push 1)

(assert (not b!1496575))

(assert (not b!1496578))

(assert (not b!1496591))

(assert (not b!1496573))

(assert (not b!1496583))

(assert (not b!1496590))

(assert (not b!1496579))

(assert (not b!1496577))

(assert (not b!1496574))

(assert (not b!1496580))

(assert (not b!1496571))

(assert (not b!1496584))

(assert (not b!1496588))

(assert (not b!1496585))

(assert (not b!1496592))

(assert (not start!127394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

