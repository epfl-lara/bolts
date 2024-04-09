; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124600 () Bool)

(assert start!124600)

(declare-fun b!1441586 () Bool)

(declare-fun res!974018 () Bool)

(declare-fun e!812653 () Bool)

(assert (=> b!1441586 (=> (not res!974018) (not e!812653))))

(declare-datatypes ((array!97965 0))(
  ( (array!97966 (arr!47266 (Array (_ BitVec 32) (_ BitVec 64))) (size!47817 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97965)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97965 (_ BitVec 32)) Bool)

(assert (=> b!1441586 (= res!974018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441587 () Bool)

(declare-fun res!974017 () Bool)

(declare-fun e!812650 () Bool)

(assert (=> b!1441587 (=> (not res!974017) (not e!812650))))

(declare-fun e!812651 () Bool)

(assert (=> b!1441587 (= res!974017 e!812651)))

(declare-fun c!133301 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441587 (= c!133301 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!974016 () Bool)

(assert (=> start!124600 (=> (not res!974016) (not e!812653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124600 (= res!974016 (validMask!0 mask!2687))))

(assert (=> start!124600 e!812653))

(assert (=> start!124600 true))

(declare-fun array_inv!36211 (array!97965) Bool)

(assert (=> start!124600 (array_inv!36211 a!2862)))

(declare-fun b!1441588 () Bool)

(declare-fun res!974013 () Bool)

(assert (=> b!1441588 (=> (not res!974013) (not e!812653))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441588 (= res!974013 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47817 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47817 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47817 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441589 () Bool)

(declare-fun res!974019 () Bool)

(assert (=> b!1441589 (=> (not res!974019) (not e!812653))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441589 (= res!974019 (and (= (size!47817 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47817 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47817 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441590 () Bool)

(declare-fun e!812652 () Bool)

(assert (=> b!1441590 (= e!812653 e!812652)))

(declare-fun res!974012 () Bool)

(assert (=> b!1441590 (=> (not res!974012) (not e!812652))))

(assert (=> b!1441590 (= res!974012 (= (select (store (arr!47266 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633262 () array!97965)

(assert (=> b!1441590 (= lt!633262 (array!97966 (store (arr!47266 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47817 a!2862)))))

(declare-fun b!1441591 () Bool)

(declare-fun res!974020 () Bool)

(declare-fun e!812654 () Bool)

(assert (=> b!1441591 (=> (not res!974020) (not e!812654))))

(declare-datatypes ((SeekEntryResult!11541 0))(
  ( (MissingZero!11541 (index!48555 (_ BitVec 32))) (Found!11541 (index!48556 (_ BitVec 32))) (Intermediate!11541 (undefined!12353 Bool) (index!48557 (_ BitVec 32)) (x!130273 (_ BitVec 32))) (Undefined!11541) (MissingVacant!11541 (index!48558 (_ BitVec 32))) )
))
(declare-fun lt!633261 () SeekEntryResult!11541)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97965 (_ BitVec 32)) SeekEntryResult!11541)

(assert (=> b!1441591 (= res!974020 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47266 a!2862) j!93) a!2862 mask!2687) lt!633261))))

(declare-fun b!1441592 () Bool)

(declare-fun res!974010 () Bool)

(assert (=> b!1441592 (=> (not res!974010) (not e!812653))))

(declare-datatypes ((List!33947 0))(
  ( (Nil!33944) (Cons!33943 (h!35293 (_ BitVec 64)) (t!48648 List!33947)) )
))
(declare-fun arrayNoDuplicates!0 (array!97965 (_ BitVec 32) List!33947) Bool)

(assert (=> b!1441592 (= res!974010 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33944))))

(declare-fun b!1441593 () Bool)

(declare-fun res!974014 () Bool)

(assert (=> b!1441593 (=> (not res!974014) (not e!812650))))

(assert (=> b!1441593 (= res!974014 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441594 () Bool)

(assert (=> b!1441594 (= e!812652 e!812654)))

(declare-fun res!974022 () Bool)

(assert (=> b!1441594 (=> (not res!974022) (not e!812654))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441594 (= res!974022 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47266 a!2862) j!93) mask!2687) (select (arr!47266 a!2862) j!93) a!2862 mask!2687) lt!633261))))

(assert (=> b!1441594 (= lt!633261 (Intermediate!11541 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!633258 () SeekEntryResult!11541)

(declare-fun b!1441595 () Bool)

(declare-fun lt!633260 () (_ BitVec 64))

(assert (=> b!1441595 (= e!812651 (= lt!633258 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633260 lt!633262 mask!2687)))))

(declare-fun b!1441596 () Bool)

(declare-fun res!974011 () Bool)

(assert (=> b!1441596 (=> (not res!974011) (not e!812653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441596 (= res!974011 (validKeyInArray!0 (select (arr!47266 a!2862) i!1006)))))

(declare-fun b!1441597 () Bool)

(assert (=> b!1441597 (= e!812654 e!812650)))

(declare-fun res!974021 () Bool)

(assert (=> b!1441597 (=> (not res!974021) (not e!812650))))

(assert (=> b!1441597 (= res!974021 (= lt!633258 (Intermediate!11541 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441597 (= lt!633258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633260 mask!2687) lt!633260 lt!633262 mask!2687))))

(assert (=> b!1441597 (= lt!633260 (select (store (arr!47266 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441598 () Bool)

(assert (=> b!1441598 (= e!812650 (not (bvsge mask!2687 #b00000000000000000000000000000000)))))

(assert (=> b!1441598 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48526 0))(
  ( (Unit!48527) )
))
(declare-fun lt!633259 () Unit!48526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48526)

(assert (=> b!1441598 (= lt!633259 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441599 () Bool)

(declare-fun res!974015 () Bool)

(assert (=> b!1441599 (=> (not res!974015) (not e!812653))))

(assert (=> b!1441599 (= res!974015 (validKeyInArray!0 (select (arr!47266 a!2862) j!93)))))

(declare-fun b!1441600 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97965 (_ BitVec 32)) SeekEntryResult!11541)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97965 (_ BitVec 32)) SeekEntryResult!11541)

(assert (=> b!1441600 (= e!812651 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633260 lt!633262 mask!2687) (seekEntryOrOpen!0 lt!633260 lt!633262 mask!2687)))))

(assert (= (and start!124600 res!974016) b!1441589))

(assert (= (and b!1441589 res!974019) b!1441596))

(assert (= (and b!1441596 res!974011) b!1441599))

(assert (= (and b!1441599 res!974015) b!1441586))

(assert (= (and b!1441586 res!974018) b!1441592))

(assert (= (and b!1441592 res!974010) b!1441588))

(assert (= (and b!1441588 res!974013) b!1441590))

(assert (= (and b!1441590 res!974012) b!1441594))

(assert (= (and b!1441594 res!974022) b!1441591))

(assert (= (and b!1441591 res!974020) b!1441597))

(assert (= (and b!1441597 res!974021) b!1441587))

(assert (= (and b!1441587 c!133301) b!1441595))

(assert (= (and b!1441587 (not c!133301)) b!1441600))

(assert (= (and b!1441587 res!974017) b!1441593))

(assert (= (and b!1441593 res!974014) b!1441598))

(declare-fun m!1330851 () Bool)

(assert (=> b!1441596 m!1330851))

(assert (=> b!1441596 m!1330851))

(declare-fun m!1330853 () Bool)

(assert (=> b!1441596 m!1330853))

(declare-fun m!1330855 () Bool)

(assert (=> b!1441592 m!1330855))

(declare-fun m!1330857 () Bool)

(assert (=> b!1441591 m!1330857))

(assert (=> b!1441591 m!1330857))

(declare-fun m!1330859 () Bool)

(assert (=> b!1441591 m!1330859))

(declare-fun m!1330861 () Bool)

(assert (=> start!124600 m!1330861))

(declare-fun m!1330863 () Bool)

(assert (=> start!124600 m!1330863))

(declare-fun m!1330865 () Bool)

(assert (=> b!1441590 m!1330865))

(declare-fun m!1330867 () Bool)

(assert (=> b!1441590 m!1330867))

(assert (=> b!1441599 m!1330857))

(assert (=> b!1441599 m!1330857))

(declare-fun m!1330869 () Bool)

(assert (=> b!1441599 m!1330869))

(declare-fun m!1330871 () Bool)

(assert (=> b!1441595 m!1330871))

(declare-fun m!1330873 () Bool)

(assert (=> b!1441597 m!1330873))

(assert (=> b!1441597 m!1330873))

(declare-fun m!1330875 () Bool)

(assert (=> b!1441597 m!1330875))

(assert (=> b!1441597 m!1330865))

(declare-fun m!1330877 () Bool)

(assert (=> b!1441597 m!1330877))

(declare-fun m!1330879 () Bool)

(assert (=> b!1441586 m!1330879))

(assert (=> b!1441594 m!1330857))

(assert (=> b!1441594 m!1330857))

(declare-fun m!1330881 () Bool)

(assert (=> b!1441594 m!1330881))

(assert (=> b!1441594 m!1330881))

(assert (=> b!1441594 m!1330857))

(declare-fun m!1330883 () Bool)

(assert (=> b!1441594 m!1330883))

(declare-fun m!1330885 () Bool)

(assert (=> b!1441598 m!1330885))

(declare-fun m!1330887 () Bool)

(assert (=> b!1441598 m!1330887))

(declare-fun m!1330889 () Bool)

(assert (=> b!1441600 m!1330889))

(declare-fun m!1330891 () Bool)

(assert (=> b!1441600 m!1330891))

(push 1)

