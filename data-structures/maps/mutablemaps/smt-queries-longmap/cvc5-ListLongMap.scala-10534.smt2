; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124258 () Bool)

(assert start!124258)

(declare-fun b!1437632 () Bool)

(declare-fun res!970527 () Bool)

(declare-fun e!811083 () Bool)

(assert (=> b!1437632 (=> (not res!970527) (not e!811083))))

(declare-datatypes ((array!97740 0))(
  ( (array!97741 (arr!47158 (Array (_ BitVec 32) (_ BitVec 64))) (size!47709 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97740)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437632 (= res!970527 (validKeyInArray!0 (select (arr!47158 a!2862) i!1006)))))

(declare-fun b!1437633 () Bool)

(declare-fun res!970521 () Bool)

(declare-fun e!811085 () Bool)

(assert (=> b!1437633 (=> (not res!970521) (not e!811085))))

(declare-datatypes ((SeekEntryResult!11433 0))(
  ( (MissingZero!11433 (index!48123 (_ BitVec 32))) (Found!11433 (index!48124 (_ BitVec 32))) (Intermediate!11433 (undefined!12245 Bool) (index!48125 (_ BitVec 32)) (x!129859 (_ BitVec 32))) (Undefined!11433) (MissingVacant!11433 (index!48126 (_ BitVec 32))) )
))
(declare-fun lt!632314 () SeekEntryResult!11433)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97740 (_ BitVec 32)) SeekEntryResult!11433)

(assert (=> b!1437633 (= res!970521 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47158 a!2862) j!93) a!2862 mask!2687) lt!632314))))

(declare-fun res!970525 () Bool)

(assert (=> start!124258 (=> (not res!970525) (not e!811083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124258 (= res!970525 (validMask!0 mask!2687))))

(assert (=> start!124258 e!811083))

(assert (=> start!124258 true))

(declare-fun array_inv!36103 (array!97740) Bool)

(assert (=> start!124258 (array_inv!36103 a!2862)))

(declare-fun b!1437634 () Bool)

(declare-fun res!970519 () Bool)

(assert (=> b!1437634 (=> (not res!970519) (not e!811083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97740 (_ BitVec 32)) Bool)

(assert (=> b!1437634 (= res!970519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437635 () Bool)

(assert (=> b!1437635 (= e!811085 false)))

(declare-fun lt!632313 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437635 (= lt!632313 (toIndex!0 (select (store (arr!47158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437636 () Bool)

(declare-fun res!970522 () Bool)

(assert (=> b!1437636 (=> (not res!970522) (not e!811083))))

(assert (=> b!1437636 (= res!970522 (validKeyInArray!0 (select (arr!47158 a!2862) j!93)))))

(declare-fun b!1437637 () Bool)

(declare-fun res!970526 () Bool)

(assert (=> b!1437637 (=> (not res!970526) (not e!811083))))

(declare-datatypes ((List!33839 0))(
  ( (Nil!33836) (Cons!33835 (h!35176 (_ BitVec 64)) (t!48540 List!33839)) )
))
(declare-fun arrayNoDuplicates!0 (array!97740 (_ BitVec 32) List!33839) Bool)

(assert (=> b!1437637 (= res!970526 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33836))))

(declare-fun b!1437638 () Bool)

(declare-fun res!970523 () Bool)

(assert (=> b!1437638 (=> (not res!970523) (not e!811083))))

(assert (=> b!1437638 (= res!970523 (and (= (size!47709 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47709 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47709 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437639 () Bool)

(declare-fun res!970524 () Bool)

(assert (=> b!1437639 (=> (not res!970524) (not e!811083))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437639 (= res!970524 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47709 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47709 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47709 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47158 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437640 () Bool)

(assert (=> b!1437640 (= e!811083 e!811085)))

(declare-fun res!970520 () Bool)

(assert (=> b!1437640 (=> (not res!970520) (not e!811085))))

(assert (=> b!1437640 (= res!970520 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47158 a!2862) j!93) mask!2687) (select (arr!47158 a!2862) j!93) a!2862 mask!2687) lt!632314))))

(assert (=> b!1437640 (= lt!632314 (Intermediate!11433 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124258 res!970525) b!1437638))

(assert (= (and b!1437638 res!970523) b!1437632))

(assert (= (and b!1437632 res!970527) b!1437636))

(assert (= (and b!1437636 res!970522) b!1437634))

(assert (= (and b!1437634 res!970519) b!1437637))

(assert (= (and b!1437637 res!970526) b!1437639))

(assert (= (and b!1437639 res!970524) b!1437640))

(assert (= (and b!1437640 res!970520) b!1437633))

(assert (= (and b!1437633 res!970521) b!1437635))

(declare-fun m!1326933 () Bool)

(assert (=> b!1437632 m!1326933))

(assert (=> b!1437632 m!1326933))

(declare-fun m!1326935 () Bool)

(assert (=> b!1437632 m!1326935))

(declare-fun m!1326937 () Bool)

(assert (=> start!124258 m!1326937))

(declare-fun m!1326939 () Bool)

(assert (=> start!124258 m!1326939))

(declare-fun m!1326941 () Bool)

(assert (=> b!1437635 m!1326941))

(declare-fun m!1326943 () Bool)

(assert (=> b!1437635 m!1326943))

(assert (=> b!1437635 m!1326943))

(declare-fun m!1326945 () Bool)

(assert (=> b!1437635 m!1326945))

(declare-fun m!1326947 () Bool)

(assert (=> b!1437636 m!1326947))

(assert (=> b!1437636 m!1326947))

(declare-fun m!1326949 () Bool)

(assert (=> b!1437636 m!1326949))

(declare-fun m!1326951 () Bool)

(assert (=> b!1437634 m!1326951))

(assert (=> b!1437639 m!1326941))

(declare-fun m!1326953 () Bool)

(assert (=> b!1437639 m!1326953))

(declare-fun m!1326955 () Bool)

(assert (=> b!1437637 m!1326955))

(assert (=> b!1437640 m!1326947))

(assert (=> b!1437640 m!1326947))

(declare-fun m!1326957 () Bool)

(assert (=> b!1437640 m!1326957))

(assert (=> b!1437640 m!1326957))

(assert (=> b!1437640 m!1326947))

(declare-fun m!1326959 () Bool)

(assert (=> b!1437640 m!1326959))

(assert (=> b!1437633 m!1326947))

(assert (=> b!1437633 m!1326947))

(declare-fun m!1326961 () Bool)

(assert (=> b!1437633 m!1326961))

(push 1)

(assert (not b!1437633))

(assert (not b!1437635))

(assert (not b!1437632))

(assert (not b!1437637))

(assert (not b!1437636))

(assert (not b!1437640))

