; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124540 () Bool)

(assert start!124540)

(declare-fun b!1440503 () Bool)

(declare-fun res!973039 () Bool)

(declare-fun e!812213 () Bool)

(assert (=> b!1440503 (=> (not res!973039) (not e!812213))))

(declare-datatypes ((array!97905 0))(
  ( (array!97906 (arr!47236 (Array (_ BitVec 32) (_ BitVec 64))) (size!47787 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97905)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440503 (= res!973039 (validKeyInArray!0 (select (arr!47236 a!2862) i!1006)))))

(declare-fun b!1440504 () Bool)

(declare-fun res!973041 () Bool)

(assert (=> b!1440504 (=> (not res!973041) (not e!812213))))

(declare-datatypes ((List!33917 0))(
  ( (Nil!33914) (Cons!33913 (h!35263 (_ BitVec 64)) (t!48618 List!33917)) )
))
(declare-fun arrayNoDuplicates!0 (array!97905 (_ BitVec 32) List!33917) Bool)

(assert (=> b!1440504 (= res!973041 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33914))))

(declare-fun b!1440505 () Bool)

(declare-fun e!812211 () Bool)

(assert (=> b!1440505 (= e!812213 e!812211)))

(declare-fun res!973047 () Bool)

(assert (=> b!1440505 (=> (not res!973047) (not e!812211))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11511 0))(
  ( (MissingZero!11511 (index!48435 (_ BitVec 32))) (Found!11511 (index!48436 (_ BitVec 32))) (Intermediate!11511 (undefined!12323 Bool) (index!48437 (_ BitVec 32)) (x!130163 (_ BitVec 32))) (Undefined!11511) (MissingVacant!11511 (index!48438 (_ BitVec 32))) )
))
(declare-fun lt!632928 () SeekEntryResult!11511)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97905 (_ BitVec 32)) SeekEntryResult!11511)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440505 (= res!973047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47236 a!2862) j!93) mask!2687) (select (arr!47236 a!2862) j!93) a!2862 mask!2687) lt!632928))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440505 (= lt!632928 (Intermediate!11511 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440506 () Bool)

(declare-fun res!973040 () Bool)

(assert (=> b!1440506 (=> (not res!973040) (not e!812213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97905 (_ BitVec 32)) Bool)

(assert (=> b!1440506 (= res!973040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440507 () Bool)

(declare-fun res!973042 () Bool)

(assert (=> b!1440507 (=> (not res!973042) (not e!812213))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440507 (= res!973042 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47787 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47787 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47787 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47236 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440508 () Bool)

(declare-fun res!973045 () Bool)

(assert (=> b!1440508 (=> (not res!973045) (not e!812213))))

(assert (=> b!1440508 (= res!973045 (and (= (size!47787 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47787 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47787 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440509 () Bool)

(assert (=> b!1440509 (= e!812211 false)))

(declare-fun lt!632929 () SeekEntryResult!11511)

(assert (=> b!1440509 (= lt!632929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47236 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47236 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97906 (store (arr!47236 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47787 a!2862)) mask!2687))))

(declare-fun b!1440510 () Bool)

(declare-fun res!973046 () Bool)

(assert (=> b!1440510 (=> (not res!973046) (not e!812211))))

(assert (=> b!1440510 (= res!973046 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47236 a!2862) j!93) a!2862 mask!2687) lt!632928))))

(declare-fun b!1440511 () Bool)

(declare-fun res!973043 () Bool)

(assert (=> b!1440511 (=> (not res!973043) (not e!812213))))

(assert (=> b!1440511 (= res!973043 (validKeyInArray!0 (select (arr!47236 a!2862) j!93)))))

(declare-fun res!973044 () Bool)

(assert (=> start!124540 (=> (not res!973044) (not e!812213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124540 (= res!973044 (validMask!0 mask!2687))))

(assert (=> start!124540 e!812213))

(assert (=> start!124540 true))

(declare-fun array_inv!36181 (array!97905) Bool)

(assert (=> start!124540 (array_inv!36181 a!2862)))

(assert (= (and start!124540 res!973044) b!1440508))

(assert (= (and b!1440508 res!973045) b!1440503))

(assert (= (and b!1440503 res!973039) b!1440511))

(assert (= (and b!1440511 res!973043) b!1440506))

(assert (= (and b!1440506 res!973040) b!1440504))

(assert (= (and b!1440504 res!973041) b!1440507))

(assert (= (and b!1440507 res!973042) b!1440505))

(assert (= (and b!1440505 res!973047) b!1440510))

(assert (= (and b!1440510 res!973046) b!1440509))

(declare-fun m!1329765 () Bool)

(assert (=> b!1440510 m!1329765))

(assert (=> b!1440510 m!1329765))

(declare-fun m!1329767 () Bool)

(assert (=> b!1440510 m!1329767))

(declare-fun m!1329769 () Bool)

(assert (=> b!1440507 m!1329769))

(declare-fun m!1329771 () Bool)

(assert (=> b!1440507 m!1329771))

(assert (=> b!1440511 m!1329765))

(assert (=> b!1440511 m!1329765))

(declare-fun m!1329773 () Bool)

(assert (=> b!1440511 m!1329773))

(assert (=> b!1440509 m!1329769))

(declare-fun m!1329775 () Bool)

(assert (=> b!1440509 m!1329775))

(assert (=> b!1440509 m!1329775))

(declare-fun m!1329777 () Bool)

(assert (=> b!1440509 m!1329777))

(assert (=> b!1440509 m!1329777))

(assert (=> b!1440509 m!1329775))

(declare-fun m!1329779 () Bool)

(assert (=> b!1440509 m!1329779))

(declare-fun m!1329781 () Bool)

(assert (=> b!1440503 m!1329781))

(assert (=> b!1440503 m!1329781))

(declare-fun m!1329783 () Bool)

(assert (=> b!1440503 m!1329783))

(declare-fun m!1329785 () Bool)

(assert (=> b!1440504 m!1329785))

(assert (=> b!1440505 m!1329765))

(assert (=> b!1440505 m!1329765))

(declare-fun m!1329787 () Bool)

(assert (=> b!1440505 m!1329787))

(assert (=> b!1440505 m!1329787))

(assert (=> b!1440505 m!1329765))

(declare-fun m!1329789 () Bool)

(assert (=> b!1440505 m!1329789))

(declare-fun m!1329791 () Bool)

(assert (=> start!124540 m!1329791))

(declare-fun m!1329793 () Bool)

(assert (=> start!124540 m!1329793))

(declare-fun m!1329795 () Bool)

(assert (=> b!1440506 m!1329795))

(push 1)

