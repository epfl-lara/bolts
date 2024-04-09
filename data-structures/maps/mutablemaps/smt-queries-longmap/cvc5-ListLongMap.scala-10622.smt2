; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124912 () Bool)

(assert start!124912)

(declare-fun b!1449957 () Bool)

(declare-fun e!816532 () Bool)

(declare-fun e!816534 () Bool)

(assert (=> b!1449957 (= e!816532 e!816534)))

(declare-fun res!981453 () Bool)

(assert (=> b!1449957 (=> (not res!981453) (not e!816534))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98277 0))(
  ( (array!98278 (arr!47422 (Array (_ BitVec 32) (_ BitVec 64))) (size!47973 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98277)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11697 0))(
  ( (MissingZero!11697 (index!49179 (_ BitVec 32))) (Found!11697 (index!49180 (_ BitVec 32))) (Intermediate!11697 (undefined!12509 Bool) (index!49181 (_ BitVec 32)) (x!130845 (_ BitVec 32))) (Undefined!11697) (MissingVacant!11697 (index!49182 (_ BitVec 32))) )
))
(declare-fun lt!636074 () SeekEntryResult!11697)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98277 (_ BitVec 32)) SeekEntryResult!11697)

(assert (=> b!1449957 (= res!981453 (= lt!636074 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47422 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1449958 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449958 (= e!816534 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449959 () Bool)

(declare-fun res!981455 () Bool)

(declare-fun e!816535 () Bool)

(assert (=> b!1449959 (=> (not res!981455) (not e!816535))))

(declare-fun lt!636075 () SeekEntryResult!11697)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98277 (_ BitVec 32)) SeekEntryResult!11697)

(assert (=> b!1449959 (= res!981455 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47422 a!2862) j!93) a!2862 mask!2687) lt!636075))))

(declare-fun b!1449960 () Bool)

(declare-fun res!981452 () Bool)

(declare-fun e!816528 () Bool)

(assert (=> b!1449960 (=> (not res!981452) (not e!816528))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449960 (= res!981452 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47973 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47973 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47973 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449961 () Bool)

(declare-fun e!816531 () Bool)

(assert (=> b!1449961 (= e!816528 e!816531)))

(declare-fun res!981450 () Bool)

(assert (=> b!1449961 (=> (not res!981450) (not e!816531))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449961 (= res!981450 (= (select (store (arr!47422 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636072 () array!98277)

(assert (=> b!1449961 (= lt!636072 (array!98278 (store (arr!47422 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47973 a!2862)))))

(declare-fun b!1449962 () Bool)

(declare-fun e!816530 () Bool)

(assert (=> b!1449962 (= e!816530 e!816532)))

(declare-fun res!981460 () Bool)

(assert (=> b!1449962 (=> res!981460 e!816532)))

(assert (=> b!1449962 (= res!981460 (or (and (= (select (arr!47422 a!2862) index!646) (select (store (arr!47422 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47422 a!2862) index!646) (select (arr!47422 a!2862) j!93))) (not (= (select (arr!47422 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449963 () Bool)

(declare-fun e!816529 () Bool)

(assert (=> b!1449963 (= e!816535 e!816529)))

(declare-fun res!981446 () Bool)

(assert (=> b!1449963 (=> (not res!981446) (not e!816529))))

(declare-fun lt!636079 () SeekEntryResult!11697)

(assert (=> b!1449963 (= res!981446 (= lt!636079 (Intermediate!11697 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636078 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449963 (= lt!636079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636078 mask!2687) lt!636078 lt!636072 mask!2687))))

(assert (=> b!1449963 (= lt!636078 (select (store (arr!47422 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449964 () Bool)

(declare-fun res!981445 () Bool)

(assert (=> b!1449964 (=> (not res!981445) (not e!816528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98277 (_ BitVec 32)) Bool)

(assert (=> b!1449964 (= res!981445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449965 () Bool)

(declare-fun res!981461 () Bool)

(assert (=> b!1449965 (=> (not res!981461) (not e!816528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449965 (= res!981461 (validKeyInArray!0 (select (arr!47422 a!2862) j!93)))))

(declare-fun b!1449966 () Bool)

(declare-fun e!816536 () Bool)

(assert (=> b!1449966 (= e!816529 (not e!816536))))

(declare-fun res!981458 () Bool)

(assert (=> b!1449966 (=> res!981458 e!816536)))

(assert (=> b!1449966 (= res!981458 (or (and (= (select (arr!47422 a!2862) index!646) (select (store (arr!47422 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47422 a!2862) index!646) (select (arr!47422 a!2862) j!93))) (not (= (select (arr!47422 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47422 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449966 e!816530))

(declare-fun res!981448 () Bool)

(assert (=> b!1449966 (=> (not res!981448) (not e!816530))))

(declare-fun lt!636073 () SeekEntryResult!11697)

(assert (=> b!1449966 (= res!981448 (and (= lt!636074 lt!636073) (or (= (select (arr!47422 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47422 a!2862) intermediateBeforeIndex!19) (select (arr!47422 a!2862) j!93)))))))

(assert (=> b!1449966 (= lt!636073 (Found!11697 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98277 (_ BitVec 32)) SeekEntryResult!11697)

(assert (=> b!1449966 (= lt!636074 (seekEntryOrOpen!0 (select (arr!47422 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449966 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48838 0))(
  ( (Unit!48839) )
))
(declare-fun lt!636077 () Unit!48838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48838)

(assert (=> b!1449966 (= lt!636077 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449967 () Bool)

(declare-fun res!981462 () Bool)

(assert (=> b!1449967 (=> res!981462 e!816536)))

(assert (=> b!1449967 (= res!981462 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47422 a!2862) j!93) a!2862 mask!2687) lt!636073)))))

(declare-fun b!1449968 () Bool)

(declare-fun res!981454 () Bool)

(assert (=> b!1449968 (=> (not res!981454) (not e!816528))))

(assert (=> b!1449968 (= res!981454 (and (= (size!47973 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47973 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47973 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449969 () Bool)

(declare-fun res!981451 () Bool)

(assert (=> b!1449969 (=> (not res!981451) (not e!816529))))

(declare-fun e!816527 () Bool)

(assert (=> b!1449969 (= res!981451 e!816527)))

(declare-fun c!133769 () Bool)

(assert (=> b!1449969 (= c!133769 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449970 () Bool)

(declare-fun res!981456 () Bool)

(assert (=> b!1449970 (=> (not res!981456) (not e!816528))))

(assert (=> b!1449970 (= res!981456 (validKeyInArray!0 (select (arr!47422 a!2862) i!1006)))))

(declare-fun b!1449971 () Bool)

(assert (=> b!1449971 (= e!816527 (= lt!636079 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636078 lt!636072 mask!2687)))))

(declare-fun b!1449972 () Bool)

(assert (=> b!1449972 (= e!816536 true)))

(assert (=> b!1449972 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636078 lt!636072 mask!2687) lt!636073)))

(declare-fun lt!636076 () Unit!48838)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48838)

(assert (=> b!1449972 (= lt!636076 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!981459 () Bool)

(assert (=> start!124912 (=> (not res!981459) (not e!816528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124912 (= res!981459 (validMask!0 mask!2687))))

(assert (=> start!124912 e!816528))

(assert (=> start!124912 true))

(declare-fun array_inv!36367 (array!98277) Bool)

(assert (=> start!124912 (array_inv!36367 a!2862)))

(declare-fun b!1449973 () Bool)

(assert (=> b!1449973 (= e!816531 e!816535)))

(declare-fun res!981447 () Bool)

(assert (=> b!1449973 (=> (not res!981447) (not e!816535))))

(assert (=> b!1449973 (= res!981447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47422 a!2862) j!93) mask!2687) (select (arr!47422 a!2862) j!93) a!2862 mask!2687) lt!636075))))

(assert (=> b!1449973 (= lt!636075 (Intermediate!11697 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449974 () Bool)

(declare-fun res!981457 () Bool)

(assert (=> b!1449974 (=> (not res!981457) (not e!816529))))

(assert (=> b!1449974 (= res!981457 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449975 () Bool)

(assert (=> b!1449975 (= e!816527 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636078 lt!636072 mask!2687) (seekEntryOrOpen!0 lt!636078 lt!636072 mask!2687)))))

(declare-fun b!1449976 () Bool)

(declare-fun res!981449 () Bool)

(assert (=> b!1449976 (=> (not res!981449) (not e!816528))))

(declare-datatypes ((List!34103 0))(
  ( (Nil!34100) (Cons!34099 (h!35449 (_ BitVec 64)) (t!48804 List!34103)) )
))
(declare-fun arrayNoDuplicates!0 (array!98277 (_ BitVec 32) List!34103) Bool)

(assert (=> b!1449976 (= res!981449 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34100))))

(assert (= (and start!124912 res!981459) b!1449968))

(assert (= (and b!1449968 res!981454) b!1449970))

(assert (= (and b!1449970 res!981456) b!1449965))

(assert (= (and b!1449965 res!981461) b!1449964))

(assert (= (and b!1449964 res!981445) b!1449976))

(assert (= (and b!1449976 res!981449) b!1449960))

(assert (= (and b!1449960 res!981452) b!1449961))

(assert (= (and b!1449961 res!981450) b!1449973))

(assert (= (and b!1449973 res!981447) b!1449959))

(assert (= (and b!1449959 res!981455) b!1449963))

(assert (= (and b!1449963 res!981446) b!1449969))

(assert (= (and b!1449969 c!133769) b!1449971))

(assert (= (and b!1449969 (not c!133769)) b!1449975))

(assert (= (and b!1449969 res!981451) b!1449974))

(assert (= (and b!1449974 res!981457) b!1449966))

(assert (= (and b!1449966 res!981448) b!1449962))

(assert (= (and b!1449962 (not res!981460)) b!1449957))

(assert (= (and b!1449957 res!981453) b!1449958))

(assert (= (and b!1449966 (not res!981458)) b!1449967))

(assert (= (and b!1449967 (not res!981462)) b!1449972))

(declare-fun m!1338687 () Bool)

(assert (=> b!1449971 m!1338687))

(declare-fun m!1338689 () Bool)

(assert (=> b!1449965 m!1338689))

(assert (=> b!1449965 m!1338689))

(declare-fun m!1338691 () Bool)

(assert (=> b!1449965 m!1338691))

(declare-fun m!1338693 () Bool)

(assert (=> b!1449963 m!1338693))

(assert (=> b!1449963 m!1338693))

(declare-fun m!1338695 () Bool)

(assert (=> b!1449963 m!1338695))

(declare-fun m!1338697 () Bool)

(assert (=> b!1449963 m!1338697))

(declare-fun m!1338699 () Bool)

(assert (=> b!1449963 m!1338699))

(declare-fun m!1338701 () Bool)

(assert (=> b!1449962 m!1338701))

(assert (=> b!1449962 m!1338697))

(declare-fun m!1338703 () Bool)

(assert (=> b!1449962 m!1338703))

(assert (=> b!1449962 m!1338689))

(assert (=> b!1449967 m!1338689))

(assert (=> b!1449967 m!1338689))

(declare-fun m!1338705 () Bool)

(assert (=> b!1449967 m!1338705))

(assert (=> b!1449973 m!1338689))

(assert (=> b!1449973 m!1338689))

(declare-fun m!1338707 () Bool)

(assert (=> b!1449973 m!1338707))

(assert (=> b!1449973 m!1338707))

(assert (=> b!1449973 m!1338689))

(declare-fun m!1338709 () Bool)

(assert (=> b!1449973 m!1338709))

(declare-fun m!1338711 () Bool)

(assert (=> b!1449966 m!1338711))

(assert (=> b!1449966 m!1338697))

(declare-fun m!1338713 () Bool)

(assert (=> b!1449966 m!1338713))

(assert (=> b!1449966 m!1338703))

(assert (=> b!1449966 m!1338701))

(assert (=> b!1449966 m!1338689))

(declare-fun m!1338715 () Bool)

(assert (=> b!1449966 m!1338715))

(declare-fun m!1338717 () Bool)

(assert (=> b!1449966 m!1338717))

(assert (=> b!1449966 m!1338689))

(declare-fun m!1338719 () Bool)

(assert (=> start!124912 m!1338719))

(declare-fun m!1338721 () Bool)

(assert (=> start!124912 m!1338721))

(declare-fun m!1338723 () Bool)

(assert (=> b!1449964 m!1338723))

(declare-fun m!1338725 () Bool)

(assert (=> b!1449976 m!1338725))

(declare-fun m!1338727 () Bool)

(assert (=> b!1449975 m!1338727))

(declare-fun m!1338729 () Bool)

(assert (=> b!1449975 m!1338729))

(assert (=> b!1449972 m!1338727))

(declare-fun m!1338731 () Bool)

(assert (=> b!1449972 m!1338731))

(assert (=> b!1449961 m!1338697))

(declare-fun m!1338733 () Bool)

(assert (=> b!1449961 m!1338733))

(assert (=> b!1449957 m!1338689))

(assert (=> b!1449957 m!1338689))

(declare-fun m!1338735 () Bool)

(assert (=> b!1449957 m!1338735))

(assert (=> b!1449959 m!1338689))

(assert (=> b!1449959 m!1338689))

(declare-fun m!1338737 () Bool)

(assert (=> b!1449959 m!1338737))

(declare-fun m!1338739 () Bool)

(assert (=> b!1449970 m!1338739))

(assert (=> b!1449970 m!1338739))

(declare-fun m!1338741 () Bool)

(assert (=> b!1449970 m!1338741))

(push 1)

