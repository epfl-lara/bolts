; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124578 () Bool)

(assert start!124578)

(declare-fun b!1441135 () Bool)

(declare-fun e!812456 () Bool)

(assert (=> b!1441135 (= e!812456 false)))

(declare-fun lt!633096 () Bool)

(declare-fun e!812455 () Bool)

(assert (=> b!1441135 (= lt!633096 e!812455)))

(declare-fun c!133268 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441135 (= c!133268 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441136 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11530 0))(
  ( (MissingZero!11530 (index!48511 (_ BitVec 32))) (Found!11530 (index!48512 (_ BitVec 32))) (Intermediate!11530 (undefined!12342 Bool) (index!48513 (_ BitVec 32)) (x!130230 (_ BitVec 32))) (Undefined!11530) (MissingVacant!11530 (index!48514 (_ BitVec 32))) )
))
(declare-fun lt!633095 () SeekEntryResult!11530)

(declare-datatypes ((array!97943 0))(
  ( (array!97944 (arr!47255 (Array (_ BitVec 32) (_ BitVec 64))) (size!47806 (_ BitVec 32))) )
))
(declare-fun lt!633094 () array!97943)

(declare-fun lt!633097 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97943 (_ BitVec 32)) SeekEntryResult!11530)

(assert (=> b!1441136 (= e!812455 (not (= lt!633095 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633097 lt!633094 mask!2687))))))

(declare-fun b!1441137 () Bool)

(declare-fun res!973634 () Bool)

(declare-fun e!812454 () Bool)

(assert (=> b!1441137 (=> (not res!973634) (not e!812454))))

(declare-fun a!2862 () array!97943)

(declare-fun lt!633093 () SeekEntryResult!11530)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441137 (= res!973634 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47255 a!2862) j!93) a!2862 mask!2687) lt!633093))))

(declare-fun b!1441138 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97943 (_ BitVec 32)) SeekEntryResult!11530)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97943 (_ BitVec 32)) SeekEntryResult!11530)

(assert (=> b!1441138 (= e!812455 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633097 lt!633094 mask!2687) (seekEntryOrOpen!0 lt!633097 lt!633094 mask!2687))))))

(declare-fun b!1441139 () Bool)

(declare-fun res!973630 () Bool)

(declare-fun e!812451 () Bool)

(assert (=> b!1441139 (=> (not res!973630) (not e!812451))))

(declare-datatypes ((List!33936 0))(
  ( (Nil!33933) (Cons!33932 (h!35282 (_ BitVec 64)) (t!48637 List!33936)) )
))
(declare-fun arrayNoDuplicates!0 (array!97943 (_ BitVec 32) List!33936) Bool)

(assert (=> b!1441139 (= res!973630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33933))))

(declare-fun res!973633 () Bool)

(assert (=> start!124578 (=> (not res!973633) (not e!812451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124578 (= res!973633 (validMask!0 mask!2687))))

(assert (=> start!124578 e!812451))

(assert (=> start!124578 true))

(declare-fun array_inv!36200 (array!97943) Bool)

(assert (=> start!124578 (array_inv!36200 a!2862)))

(declare-fun b!1441140 () Bool)

(declare-fun e!812452 () Bool)

(assert (=> b!1441140 (= e!812452 e!812454)))

(declare-fun res!973629 () Bool)

(assert (=> b!1441140 (=> (not res!973629) (not e!812454))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441140 (= res!973629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47255 a!2862) j!93) mask!2687) (select (arr!47255 a!2862) j!93) a!2862 mask!2687) lt!633093))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441140 (= lt!633093 (Intermediate!11530 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441141 () Bool)

(assert (=> b!1441141 (= e!812454 e!812456)))

(declare-fun res!973627 () Bool)

(assert (=> b!1441141 (=> (not res!973627) (not e!812456))))

(assert (=> b!1441141 (= res!973627 (= lt!633095 (Intermediate!11530 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441141 (= lt!633095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633097 mask!2687) lt!633097 lt!633094 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441141 (= lt!633097 (select (store (arr!47255 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441142 () Bool)

(declare-fun res!973631 () Bool)

(assert (=> b!1441142 (=> (not res!973631) (not e!812451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97943 (_ BitVec 32)) Bool)

(assert (=> b!1441142 (= res!973631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441143 () Bool)

(declare-fun res!973628 () Bool)

(assert (=> b!1441143 (=> (not res!973628) (not e!812451))))

(assert (=> b!1441143 (= res!973628 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47806 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47806 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47806 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441144 () Bool)

(assert (=> b!1441144 (= e!812451 e!812452)))

(declare-fun res!973635 () Bool)

(assert (=> b!1441144 (=> (not res!973635) (not e!812452))))

(assert (=> b!1441144 (= res!973635 (= (select (store (arr!47255 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441144 (= lt!633094 (array!97944 (store (arr!47255 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47806 a!2862)))))

(declare-fun b!1441145 () Bool)

(declare-fun res!973626 () Bool)

(assert (=> b!1441145 (=> (not res!973626) (not e!812451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441145 (= res!973626 (validKeyInArray!0 (select (arr!47255 a!2862) i!1006)))))

(declare-fun b!1441146 () Bool)

(declare-fun res!973625 () Bool)

(assert (=> b!1441146 (=> (not res!973625) (not e!812451))))

(assert (=> b!1441146 (= res!973625 (and (= (size!47806 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47806 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47806 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441147 () Bool)

(declare-fun res!973632 () Bool)

(assert (=> b!1441147 (=> (not res!973632) (not e!812451))))

(assert (=> b!1441147 (= res!973632 (validKeyInArray!0 (select (arr!47255 a!2862) j!93)))))

(assert (= (and start!124578 res!973633) b!1441146))

(assert (= (and b!1441146 res!973625) b!1441145))

(assert (= (and b!1441145 res!973626) b!1441147))

(assert (= (and b!1441147 res!973632) b!1441142))

(assert (= (and b!1441142 res!973631) b!1441139))

(assert (= (and b!1441139 res!973630) b!1441143))

(assert (= (and b!1441143 res!973628) b!1441144))

(assert (= (and b!1441144 res!973635) b!1441140))

(assert (= (and b!1441140 res!973629) b!1441137))

(assert (= (and b!1441137 res!973634) b!1441141))

(assert (= (and b!1441141 res!973627) b!1441135))

(assert (= (and b!1441135 c!133268) b!1441136))

(assert (= (and b!1441135 (not c!133268)) b!1441138))

(declare-fun m!1330421 () Bool)

(assert (=> b!1441142 m!1330421))

(declare-fun m!1330423 () Bool)

(assert (=> b!1441141 m!1330423))

(assert (=> b!1441141 m!1330423))

(declare-fun m!1330425 () Bool)

(assert (=> b!1441141 m!1330425))

(declare-fun m!1330427 () Bool)

(assert (=> b!1441141 m!1330427))

(declare-fun m!1330429 () Bool)

(assert (=> b!1441141 m!1330429))

(declare-fun m!1330431 () Bool)

(assert (=> b!1441147 m!1330431))

(assert (=> b!1441147 m!1330431))

(declare-fun m!1330433 () Bool)

(assert (=> b!1441147 m!1330433))

(declare-fun m!1330435 () Bool)

(assert (=> b!1441139 m!1330435))

(assert (=> b!1441140 m!1330431))

(assert (=> b!1441140 m!1330431))

(declare-fun m!1330437 () Bool)

(assert (=> b!1441140 m!1330437))

(assert (=> b!1441140 m!1330437))

(assert (=> b!1441140 m!1330431))

(declare-fun m!1330439 () Bool)

(assert (=> b!1441140 m!1330439))

(declare-fun m!1330441 () Bool)

(assert (=> b!1441136 m!1330441))

(declare-fun m!1330443 () Bool)

(assert (=> b!1441145 m!1330443))

(assert (=> b!1441145 m!1330443))

(declare-fun m!1330445 () Bool)

(assert (=> b!1441145 m!1330445))

(assert (=> b!1441144 m!1330427))

(declare-fun m!1330447 () Bool)

(assert (=> b!1441144 m!1330447))

(assert (=> b!1441137 m!1330431))

(assert (=> b!1441137 m!1330431))

(declare-fun m!1330449 () Bool)

(assert (=> b!1441137 m!1330449))

(declare-fun m!1330451 () Bool)

(assert (=> b!1441138 m!1330451))

(declare-fun m!1330453 () Bool)

(assert (=> b!1441138 m!1330453))

(declare-fun m!1330455 () Bool)

(assert (=> start!124578 m!1330455))

(declare-fun m!1330457 () Bool)

(assert (=> start!124578 m!1330457))

(check-sat (not b!1441147) (not b!1441139) (not b!1441137) (not b!1441140) (not b!1441141) (not b!1441145) (not b!1441136) (not b!1441138) (not start!124578) (not b!1441142))
(check-sat)
