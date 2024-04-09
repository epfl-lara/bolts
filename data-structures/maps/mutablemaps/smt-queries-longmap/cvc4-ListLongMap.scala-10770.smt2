; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126104 () Bool)

(assert start!126104)

(declare-datatypes ((SeekEntryResult!12131 0))(
  ( (MissingZero!12131 (index!50915 (_ BitVec 32))) (Found!12131 (index!50916 (_ BitVec 32))) (Intermediate!12131 (undefined!12943 Bool) (index!50917 (_ BitVec 32)) (x!132508 (_ BitVec 32))) (Undefined!12131) (MissingVacant!12131 (index!50918 (_ BitVec 32))) )
))
(declare-fun lt!644732 () SeekEntryResult!12131)

(declare-fun b!1475789 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!828010 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!644737 () (_ BitVec 64))

(declare-datatypes ((array!99184 0))(
  ( (array!99185 (arr!47868 (Array (_ BitVec 32) (_ BitVec 64))) (size!48419 (_ BitVec 32))) )
))
(declare-fun lt!644733 () array!99184)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99184 (_ BitVec 32)) SeekEntryResult!12131)

(assert (=> b!1475789 (= e!828010 (= lt!644732 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644737 lt!644733 mask!2687)))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1475790 () Bool)

(declare-fun e!828016 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99184)

(assert (=> b!1475790 (= e!828016 (not (or (and (= (select (arr!47868 a!2862) index!646) (select (store (arr!47868 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47868 a!2862) index!646) (select (arr!47868 a!2862) j!93))) (not (= (select (arr!47868 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= x!665 intermediateBeforeX!19))))))

(declare-fun e!828013 () Bool)

(assert (=> b!1475790 e!828013))

(declare-fun res!1002451 () Bool)

(assert (=> b!1475790 (=> (not res!1002451) (not e!828013))))

(declare-fun lt!644734 () SeekEntryResult!12131)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1475790 (= res!1002451 (and (= lt!644734 (Found!12131 j!93)) (or (= (select (arr!47868 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47868 a!2862) intermediateBeforeIndex!19) (select (arr!47868 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99184 (_ BitVec 32)) SeekEntryResult!12131)

(assert (=> b!1475790 (= lt!644734 (seekEntryOrOpen!0 (select (arr!47868 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99184 (_ BitVec 32)) Bool)

(assert (=> b!1475790 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49550 0))(
  ( (Unit!49551) )
))
(declare-fun lt!644736 () Unit!49550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49550)

(assert (=> b!1475790 (= lt!644736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475792 () Bool)

(declare-fun res!1002449 () Bool)

(declare-fun e!828015 () Bool)

(assert (=> b!1475792 (=> (not res!1002449) (not e!828015))))

(assert (=> b!1475792 (= res!1002449 (and (= (size!48419 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48419 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48419 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475793 () Bool)

(declare-fun e!828011 () Bool)

(declare-fun e!828014 () Bool)

(assert (=> b!1475793 (= e!828011 e!828014)))

(declare-fun res!1002444 () Bool)

(assert (=> b!1475793 (=> (not res!1002444) (not e!828014))))

(declare-fun lt!644735 () SeekEntryResult!12131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475793 (= res!1002444 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47868 a!2862) j!93) mask!2687) (select (arr!47868 a!2862) j!93) a!2862 mask!2687) lt!644735))))

(assert (=> b!1475793 (= lt!644735 (Intermediate!12131 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1475794 () Bool)

(declare-fun res!1002457 () Bool)

(assert (=> b!1475794 (=> (not res!1002457) (not e!828014))))

(assert (=> b!1475794 (= res!1002457 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47868 a!2862) j!93) a!2862 mask!2687) lt!644735))))

(declare-fun b!1475795 () Bool)

(declare-fun res!1002446 () Bool)

(assert (=> b!1475795 (=> (not res!1002446) (not e!828015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475795 (= res!1002446 (validKeyInArray!0 (select (arr!47868 a!2862) i!1006)))))

(declare-fun b!1475796 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99184 (_ BitVec 32)) SeekEntryResult!12131)

(assert (=> b!1475796 (= e!828010 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644737 lt!644733 mask!2687) (seekEntryOrOpen!0 lt!644737 lt!644733 mask!2687)))))

(declare-fun b!1475797 () Bool)

(declare-fun res!1002458 () Bool)

(assert (=> b!1475797 (=> (not res!1002458) (not e!828015))))

(declare-datatypes ((List!34549 0))(
  ( (Nil!34546) (Cons!34545 (h!35910 (_ BitVec 64)) (t!49250 List!34549)) )
))
(declare-fun arrayNoDuplicates!0 (array!99184 (_ BitVec 32) List!34549) Bool)

(assert (=> b!1475797 (= res!1002458 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34546))))

(declare-fun b!1475798 () Bool)

(declare-fun res!1002445 () Bool)

(assert (=> b!1475798 (=> (not res!1002445) (not e!828015))))

(assert (=> b!1475798 (= res!1002445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475799 () Bool)

(declare-fun res!1002452 () Bool)

(assert (=> b!1475799 (=> (not res!1002452) (not e!828015))))

(assert (=> b!1475799 (= res!1002452 (validKeyInArray!0 (select (arr!47868 a!2862) j!93)))))

(declare-fun b!1475800 () Bool)

(declare-fun res!1002447 () Bool)

(assert (=> b!1475800 (=> (not res!1002447) (not e!828016))))

(assert (=> b!1475800 (= res!1002447 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1002459 () Bool)

(assert (=> start!126104 (=> (not res!1002459) (not e!828015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126104 (= res!1002459 (validMask!0 mask!2687))))

(assert (=> start!126104 e!828015))

(assert (=> start!126104 true))

(declare-fun array_inv!36813 (array!99184) Bool)

(assert (=> start!126104 (array_inv!36813 a!2862)))

(declare-fun b!1475791 () Bool)

(declare-fun res!1002454 () Bool)

(assert (=> b!1475791 (=> (not res!1002454) (not e!828016))))

(assert (=> b!1475791 (= res!1002454 e!828010)))

(declare-fun c!136193 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1475791 (= c!136193 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1475801 () Bool)

(declare-fun e!828017 () Bool)

(declare-fun e!828012 () Bool)

(assert (=> b!1475801 (= e!828017 e!828012)))

(declare-fun res!1002450 () Bool)

(assert (=> b!1475801 (=> (not res!1002450) (not e!828012))))

(assert (=> b!1475801 (= res!1002450 (= lt!644734 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47868 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475802 () Bool)

(assert (=> b!1475802 (= e!828015 e!828011)))

(declare-fun res!1002453 () Bool)

(assert (=> b!1475802 (=> (not res!1002453) (not e!828011))))

(assert (=> b!1475802 (= res!1002453 (= (select (store (arr!47868 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475802 (= lt!644733 (array!99185 (store (arr!47868 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48419 a!2862)))))

(declare-fun b!1475803 () Bool)

(declare-fun res!1002456 () Bool)

(assert (=> b!1475803 (=> (not res!1002456) (not e!828015))))

(assert (=> b!1475803 (= res!1002456 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48419 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48419 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48419 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1475804 () Bool)

(assert (=> b!1475804 (= e!828012 (= index!646 intermediateBeforeIndex!19))))

(declare-fun b!1475805 () Bool)

(assert (=> b!1475805 (= e!828014 e!828016)))

(declare-fun res!1002455 () Bool)

(assert (=> b!1475805 (=> (not res!1002455) (not e!828016))))

(assert (=> b!1475805 (= res!1002455 (= lt!644732 (Intermediate!12131 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1475805 (= lt!644732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644737 mask!2687) lt!644737 lt!644733 mask!2687))))

(assert (=> b!1475805 (= lt!644737 (select (store (arr!47868 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1475806 () Bool)

(assert (=> b!1475806 (= e!828013 e!828017)))

(declare-fun res!1002448 () Bool)

(assert (=> b!1475806 (=> res!1002448 e!828017)))

(assert (=> b!1475806 (= res!1002448 (or (and (= (select (arr!47868 a!2862) index!646) (select (store (arr!47868 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47868 a!2862) index!646) (select (arr!47868 a!2862) j!93))) (not (= (select (arr!47868 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126104 res!1002459) b!1475792))

(assert (= (and b!1475792 res!1002449) b!1475795))

(assert (= (and b!1475795 res!1002446) b!1475799))

(assert (= (and b!1475799 res!1002452) b!1475798))

(assert (= (and b!1475798 res!1002445) b!1475797))

(assert (= (and b!1475797 res!1002458) b!1475803))

(assert (= (and b!1475803 res!1002456) b!1475802))

(assert (= (and b!1475802 res!1002453) b!1475793))

(assert (= (and b!1475793 res!1002444) b!1475794))

(assert (= (and b!1475794 res!1002457) b!1475805))

(assert (= (and b!1475805 res!1002455) b!1475791))

(assert (= (and b!1475791 c!136193) b!1475789))

(assert (= (and b!1475791 (not c!136193)) b!1475796))

(assert (= (and b!1475791 res!1002454) b!1475800))

(assert (= (and b!1475800 res!1002447) b!1475790))

(assert (= (and b!1475790 res!1002451) b!1475806))

(assert (= (and b!1475806 (not res!1002448)) b!1475801))

(assert (= (and b!1475801 res!1002450) b!1475804))

(declare-fun m!1361987 () Bool)

(assert (=> b!1475801 m!1361987))

(assert (=> b!1475801 m!1361987))

(declare-fun m!1361989 () Bool)

(assert (=> b!1475801 m!1361989))

(declare-fun m!1361991 () Bool)

(assert (=> start!126104 m!1361991))

(declare-fun m!1361993 () Bool)

(assert (=> start!126104 m!1361993))

(declare-fun m!1361995 () Bool)

(assert (=> b!1475797 m!1361995))

(declare-fun m!1361997 () Bool)

(assert (=> b!1475796 m!1361997))

(declare-fun m!1361999 () Bool)

(assert (=> b!1475796 m!1361999))

(declare-fun m!1362001 () Bool)

(assert (=> b!1475802 m!1362001))

(declare-fun m!1362003 () Bool)

(assert (=> b!1475802 m!1362003))

(declare-fun m!1362005 () Bool)

(assert (=> b!1475795 m!1362005))

(assert (=> b!1475795 m!1362005))

(declare-fun m!1362007 () Bool)

(assert (=> b!1475795 m!1362007))

(assert (=> b!1475793 m!1361987))

(assert (=> b!1475793 m!1361987))

(declare-fun m!1362009 () Bool)

(assert (=> b!1475793 m!1362009))

(assert (=> b!1475793 m!1362009))

(assert (=> b!1475793 m!1361987))

(declare-fun m!1362011 () Bool)

(assert (=> b!1475793 m!1362011))

(declare-fun m!1362013 () Bool)

(assert (=> b!1475798 m!1362013))

(declare-fun m!1362015 () Bool)

(assert (=> b!1475805 m!1362015))

(assert (=> b!1475805 m!1362015))

(declare-fun m!1362017 () Bool)

(assert (=> b!1475805 m!1362017))

(assert (=> b!1475805 m!1362001))

(declare-fun m!1362019 () Bool)

(assert (=> b!1475805 m!1362019))

(declare-fun m!1362021 () Bool)

(assert (=> b!1475806 m!1362021))

(assert (=> b!1475806 m!1362001))

(declare-fun m!1362023 () Bool)

(assert (=> b!1475806 m!1362023))

(assert (=> b!1475806 m!1361987))

(assert (=> b!1475799 m!1361987))

(assert (=> b!1475799 m!1361987))

(declare-fun m!1362025 () Bool)

(assert (=> b!1475799 m!1362025))

(declare-fun m!1362027 () Bool)

(assert (=> b!1475789 m!1362027))

(assert (=> b!1475794 m!1361987))

(assert (=> b!1475794 m!1361987))

(declare-fun m!1362029 () Bool)

(assert (=> b!1475794 m!1362029))

(declare-fun m!1362031 () Bool)

(assert (=> b!1475790 m!1362031))

(assert (=> b!1475790 m!1362001))

(declare-fun m!1362033 () Bool)

(assert (=> b!1475790 m!1362033))

(assert (=> b!1475790 m!1362023))

(assert (=> b!1475790 m!1362021))

(assert (=> b!1475790 m!1361987))

(declare-fun m!1362035 () Bool)

(assert (=> b!1475790 m!1362035))

(declare-fun m!1362037 () Bool)

(assert (=> b!1475790 m!1362037))

(assert (=> b!1475790 m!1361987))

(push 1)

(assert (not b!1475799))

(assert (not b!1475798))

(assert (not b!1475794))

(assert (not b!1475789))

(assert (not b!1475796))

(assert (not b!1475797))

(assert (not b!1475790))

(assert (not start!126104))

(assert (not b!1475805))

(assert (not b!1475793))

(assert (not b!1475801))

(assert (not b!1475795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1475957 () Bool)

(declare-fun e!828104 () SeekEntryResult!12131)

(assert (=> b!1475957 (= e!828104 Undefined!12131)))

(declare-fun b!1475958 () Bool)

(declare-fun lt!644791 () SeekEntryResult!12131)

(declare-fun e!828102 () SeekEntryResult!12131)

(assert (=> b!1475958 (= e!828102 (seekKeyOrZeroReturnVacant!0 (x!132508 lt!644791) (index!50917 lt!644791) (index!50917 lt!644791) (select (arr!47868 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155833 () Bool)

(declare-fun lt!644789 () SeekEntryResult!12131)

(assert (=> d!155833 (and (or (is-Undefined!12131 lt!644789) (not (is-Found!12131 lt!644789)) (and (bvsge (index!50916 lt!644789) #b00000000000000000000000000000000) (bvslt (index!50916 lt!644789) (size!48419 a!2862)))) (or (is-Undefined!12131 lt!644789) (is-Found!12131 lt!644789) (not (is-MissingZero!12131 lt!644789)) (and (bvsge (index!50915 lt!644789) #b00000000000000000000000000000000) (bvslt (index!50915 lt!644789) (size!48419 a!2862)))) (or (is-Undefined!12131 lt!644789) (is-Found!12131 lt!644789) (is-MissingZero!12131 lt!644789) (not (is-MissingVacant!12131 lt!644789)) (and (bvsge (index!50918 lt!644789) #b00000000000000000000000000000000) (bvslt (index!50918 lt!644789) (size!48419 a!2862)))) (or (is-Undefined!12131 lt!644789) (ite (is-Found!12131 lt!644789) (= (select (arr!47868 a!2862) (index!50916 lt!644789)) (select (arr!47868 a!2862) j!93)) (ite (is-MissingZero!12131 lt!644789) (= (select (arr!47868 a!2862) (index!50915 lt!644789)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12131 lt!644789) (= (select (arr!47868 a!2862) (index!50918 lt!644789)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155833 (= lt!644789 e!828104)))

(declare-fun c!136253 () Bool)

(assert (=> d!155833 (= c!136253 (and (is-Intermediate!12131 lt!644791) (undefined!12943 lt!644791)))))

(assert (=> d!155833 (= lt!644791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47868 a!2862) j!93) mask!2687) (select (arr!47868 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155833 (validMask!0 mask!2687)))

(assert (=> d!155833 (= (seekEntryOrOpen!0 (select (arr!47868 a!2862) j!93) a!2862 mask!2687) lt!644789)))

(declare-fun b!1475959 () Bool)

(declare-fun e!828103 () SeekEntryResult!12131)

(assert (=> b!1475959 (= e!828103 (Found!12131 (index!50917 lt!644791)))))

(declare-fun b!1475960 () Bool)

(assert (=> b!1475960 (= e!828104 e!828103)))

(declare-fun lt!644790 () (_ BitVec 64))

(assert (=> b!1475960 (= lt!644790 (select (arr!47868 a!2862) (index!50917 lt!644791)))))

(declare-fun c!136251 () Bool)

(assert (=> b!1475960 (= c!136251 (= lt!644790 (select (arr!47868 a!2862) j!93)))))

(declare-fun b!1475961 () Bool)

(assert (=> b!1475961 (= e!828102 (MissingZero!12131 (index!50917 lt!644791)))))

(declare-fun b!1475962 () Bool)

(declare-fun c!136252 () Bool)

(assert (=> b!1475962 (= c!136252 (= lt!644790 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475962 (= e!828103 e!828102)))

(assert (= (and d!155833 c!136253) b!1475957))

(assert (= (and d!155833 (not c!136253)) b!1475960))

(assert (= (and b!1475960 c!136251) b!1475959))

(assert (= (and b!1475960 (not c!136251)) b!1475962))

(assert (= (and b!1475962 c!136252) b!1475961))

(assert (= (and b!1475962 (not c!136252)) b!1475958))

(assert (=> b!1475958 m!1361987))

(declare-fun m!1362105 () Bool)

(assert (=> b!1475958 m!1362105))

(assert (=> d!155833 m!1361987))

(assert (=> d!155833 m!1362009))

(assert (=> d!155833 m!1362009))

(assert (=> d!155833 m!1361987))

(assert (=> d!155833 m!1362011))

(declare-fun m!1362107 () Bool)

(assert (=> d!155833 m!1362107))

(assert (=> d!155833 m!1361991))

(declare-fun m!1362109 () Bool)

(assert (=> d!155833 m!1362109))

(declare-fun m!1362111 () Bool)

(assert (=> d!155833 m!1362111))

(declare-fun m!1362113 () Bool)

(assert (=> b!1475960 m!1362113))

(assert (=> b!1475790 d!155833))

(declare-fun b!1475985 () Bool)

(declare-fun e!828120 () Bool)

(declare-fun e!828122 () Bool)

(assert (=> b!1475985 (= e!828120 e!828122)))

(declare-fun lt!644811 () (_ BitVec 64))

(assert (=> b!1475985 (= lt!644811 (select (arr!47868 a!2862) j!93))))

(declare-fun lt!644810 () Unit!49550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99184 (_ BitVec 64) (_ BitVec 32)) Unit!49550)

(assert (=> b!1475985 (= lt!644810 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644811 j!93))))

(declare-fun arrayContainsKey!0 (array!99184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1475985 (arrayContainsKey!0 a!2862 lt!644811 #b00000000000000000000000000000000)))

(declare-fun lt!644809 () Unit!49550)

(assert (=> b!1475985 (= lt!644809 lt!644810)))

(declare-fun res!1002506 () Bool)

(assert (=> b!1475985 (= res!1002506 (= (seekEntryOrOpen!0 (select (arr!47868 a!2862) j!93) a!2862 mask!2687) (Found!12131 j!93)))))

(assert (=> b!1475985 (=> (not res!1002506) (not e!828122))))

(declare-fun call!67808 () Bool)

(declare-fun bm!67805 () Bool)

(assert (=> bm!67805 (= call!67808 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1475986 () Bool)

(assert (=> b!1475986 (= e!828122 call!67808)))

(declare-fun d!155857 () Bool)

(declare-fun res!1002507 () Bool)

(declare-fun e!828121 () Bool)

(assert (=> d!155857 (=> res!1002507 e!828121)))

(assert (=> d!155857 (= res!1002507 (bvsge j!93 (size!48419 a!2862)))))

(assert (=> d!155857 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!828121)))

(declare-fun b!1475987 () Bool)

(assert (=> b!1475987 (= e!828120 call!67808)))

(declare-fun b!1475988 () Bool)

(assert (=> b!1475988 (= e!828121 e!828120)))

(declare-fun c!136261 () Bool)

(assert (=> b!1475988 (= c!136261 (validKeyInArray!0 (select (arr!47868 a!2862) j!93)))))

(assert (= (and d!155857 (not res!1002507)) b!1475988))

(assert (= (and b!1475988 c!136261) b!1475985))

(assert (= (and b!1475988 (not c!136261)) b!1475987))

(assert (= (and b!1475985 res!1002506) b!1475986))

(assert (= (or b!1475986 b!1475987) bm!67805))

(assert (=> b!1475985 m!1361987))

(declare-fun m!1362125 () Bool)

(assert (=> b!1475985 m!1362125))

(declare-fun m!1362127 () Bool)

(assert (=> b!1475985 m!1362127))

(assert (=> b!1475985 m!1361987))

(assert (=> b!1475985 m!1362035))

(declare-fun m!1362129 () Bool)

(assert (=> bm!67805 m!1362129))

(assert (=> b!1475988 m!1361987))

(assert (=> b!1475988 m!1361987))

(assert (=> b!1475988 m!1362025))

(assert (=> b!1475790 d!155857))

(declare-fun d!155865 () Bool)

(assert (=> d!155865 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644823 () Unit!49550)

(declare-fun choose!38 (array!99184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49550)

(assert (=> d!155865 (= lt!644823 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155865 (validMask!0 mask!2687)))

(assert (=> d!155865 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644823)))

(declare-fun bs!42575 () Bool)

(assert (= bs!42575 d!155865))

(assert (=> bs!42575 m!1362037))

(declare-fun m!1362137 () Bool)

(assert (=> bs!42575 m!1362137))

(assert (=> bs!42575 m!1361991))

(assert (=> b!1475790 d!155865))

(declare-fun b!1476042 () Bool)

(declare-fun e!828157 () SeekEntryResult!12131)

(assert (=> b!1476042 (= e!828157 (MissingVacant!12131 index!646))))

(declare-fun b!1476044 () Bool)

(declare-fun e!828155 () SeekEntryResult!12131)

(assert (=> b!1476044 (= e!828155 (Found!12131 index!646))))

(declare-fun b!1476045 () Bool)

(declare-fun c!136282 () Bool)

(declare-fun lt!644848 () (_ BitVec 64))

(assert (=> b!1476045 (= c!136282 (= lt!644848 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476045 (= e!828155 e!828157)))

(declare-fun b!1476046 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476046 (= e!828157 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47868 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1476047 () Bool)

(declare-fun e!828156 () SeekEntryResult!12131)

(assert (=> b!1476047 (= e!828156 e!828155)))

(declare-fun c!136283 () Bool)

(assert (=> b!1476047 (= c!136283 (= lt!644848 (select (arr!47868 a!2862) j!93)))))

(declare-fun d!155869 () Bool)

(declare-fun lt!644847 () SeekEntryResult!12131)

(assert (=> d!155869 (and (or (is-Undefined!12131 lt!644847) (not (is-Found!12131 lt!644847)) (and (bvsge (index!50916 lt!644847) #b00000000000000000000000000000000) (bvslt (index!50916 lt!644847) (size!48419 a!2862)))) (or (is-Undefined!12131 lt!644847) (is-Found!12131 lt!644847) (not (is-MissingVacant!12131 lt!644847)) (not (= (index!50918 lt!644847) index!646)) (and (bvsge (index!50918 lt!644847) #b00000000000000000000000000000000) (bvslt (index!50918 lt!644847) (size!48419 a!2862)))) (or (is-Undefined!12131 lt!644847) (ite (is-Found!12131 lt!644847) (= (select (arr!47868 a!2862) (index!50916 lt!644847)) (select (arr!47868 a!2862) j!93)) (and (is-MissingVacant!12131 lt!644847) (= (index!50918 lt!644847) index!646) (= (select (arr!47868 a!2862) (index!50918 lt!644847)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155869 (= lt!644847 e!828156)))

(declare-fun c!136284 () Bool)

(assert (=> d!155869 (= c!136284 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155869 (= lt!644848 (select (arr!47868 a!2862) index!646))))

(assert (=> d!155869 (validMask!0 mask!2687)))

(assert (=> d!155869 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47868 a!2862) j!93) a!2862 mask!2687) lt!644847)))

(declare-fun b!1476043 () Bool)

(assert (=> b!1476043 (= e!828156 Undefined!12131)))

(assert (= (and d!155869 c!136284) b!1476043))

(assert (= (and d!155869 (not c!136284)) b!1476047))

(assert (= (and b!1476047 c!136283) b!1476044))

(assert (= (and b!1476047 (not c!136283)) b!1476045))

(assert (= (and b!1476045 c!136282) b!1476042))

(assert (= (and b!1476045 (not c!136282)) b!1476046))

(declare-fun m!1362169 () Bool)

(assert (=> b!1476046 m!1362169))

(assert (=> b!1476046 m!1362169))

(assert (=> b!1476046 m!1361987))

(declare-fun m!1362171 () Bool)

(assert (=> b!1476046 m!1362171))

(declare-fun m!1362173 () Bool)

(assert (=> d!155869 m!1362173))

(declare-fun m!1362175 () Bool)

(assert (=> d!155869 m!1362175))

(assert (=> d!155869 m!1362021))

(assert (=> d!155869 m!1361991))

(assert (=> b!1475801 d!155869))

(declare-fun b!1476048 () Bool)

(declare-fun e!828158 () Bool)

(declare-fun e!828160 () Bool)

(assert (=> b!1476048 (= e!828158 e!828160)))

(declare-fun lt!644851 () (_ BitVec 64))

(assert (=> b!1476048 (= lt!644851 (select (arr!47868 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644850 () Unit!49550)

(assert (=> b!1476048 (= lt!644850 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644851 #b00000000000000000000000000000000))))

(assert (=> b!1476048 (arrayContainsKey!0 a!2862 lt!644851 #b00000000000000000000000000000000)))

(declare-fun lt!644849 () Unit!49550)

(assert (=> b!1476048 (= lt!644849 lt!644850)))

(declare-fun res!1002521 () Bool)

(assert (=> b!1476048 (= res!1002521 (= (seekEntryOrOpen!0 (select (arr!47868 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12131 #b00000000000000000000000000000000)))))

(assert (=> b!1476048 (=> (not res!1002521) (not e!828160))))

(declare-fun bm!67811 () Bool)

(declare-fun call!67814 () Bool)

(assert (=> bm!67811 (= call!67814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1476049 () Bool)

(assert (=> b!1476049 (= e!828160 call!67814)))

(declare-fun d!155879 () Bool)

(declare-fun res!1002522 () Bool)

(declare-fun e!828159 () Bool)

(assert (=> d!155879 (=> res!1002522 e!828159)))

(assert (=> d!155879 (= res!1002522 (bvsge #b00000000000000000000000000000000 (size!48419 a!2862)))))

(assert (=> d!155879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!828159)))

(declare-fun b!1476050 () Bool)

(assert (=> b!1476050 (= e!828158 call!67814)))

(declare-fun b!1476051 () Bool)

(assert (=> b!1476051 (= e!828159 e!828158)))

(declare-fun c!136285 () Bool)

(assert (=> b!1476051 (= c!136285 (validKeyInArray!0 (select (arr!47868 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!155879 (not res!1002522)) b!1476051))

(assert (= (and b!1476051 c!136285) b!1476048))

(assert (= (and b!1476051 (not c!136285)) b!1476050))

(assert (= (and b!1476048 res!1002521) b!1476049))

(assert (= (or b!1476049 b!1476050) bm!67811))

(declare-fun m!1362177 () Bool)

(assert (=> b!1476048 m!1362177))

(declare-fun m!1362179 () Bool)

(assert (=> b!1476048 m!1362179))

(declare-fun m!1362181 () Bool)

(assert (=> b!1476048 m!1362181))

(assert (=> b!1476048 m!1362177))

(declare-fun m!1362183 () Bool)

(assert (=> b!1476048 m!1362183))

(declare-fun m!1362185 () Bool)

(assert (=> bm!67811 m!1362185))

(assert (=> b!1476051 m!1362177))

(assert (=> b!1476051 m!1362177))

(declare-fun m!1362187 () Bool)

(assert (=> b!1476051 m!1362187))

(assert (=> b!1475798 d!155879))

(declare-fun b!1476101 () Bool)

(declare-fun e!828189 () SeekEntryResult!12131)

(declare-fun e!828191 () SeekEntryResult!12131)

(assert (=> b!1476101 (= e!828189 e!828191)))

(declare-fun c!136305 () Bool)

(declare-fun lt!644871 () (_ BitVec 64))

(assert (=> b!1476101 (= c!136305 (or (= lt!644871 lt!644737) (= (bvadd lt!644871 lt!644871) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1476102 () Bool)

(declare-fun lt!644872 () SeekEntryResult!12131)

(assert (=> b!1476102 (and (bvsge (index!50917 lt!644872) #b00000000000000000000000000000000) (bvslt (index!50917 lt!644872) (size!48419 lt!644733)))))

(declare-fun res!1002534 () Bool)

(assert (=> b!1476102 (= res!1002534 (= (select (arr!47868 lt!644733) (index!50917 lt!644872)) lt!644737))))

(declare-fun e!828190 () Bool)

(assert (=> b!1476102 (=> res!1002534 e!828190)))

(declare-fun e!828188 () Bool)

(assert (=> b!1476102 (= e!828188 e!828190)))

(declare-fun b!1476103 () Bool)

(assert (=> b!1476103 (and (bvsge (index!50917 lt!644872) #b00000000000000000000000000000000) (bvslt (index!50917 lt!644872) (size!48419 lt!644733)))))

(declare-fun res!1002535 () Bool)

(assert (=> b!1476103 (= res!1002535 (= (select (arr!47868 lt!644733) (index!50917 lt!644872)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476103 (=> res!1002535 e!828190)))

(declare-fun b!1476104 () Bool)

