; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125278 () Bool)

(assert start!125278)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1461175 () Bool)

(declare-fun e!821517 () Bool)

(declare-datatypes ((array!98643 0))(
  ( (array!98644 (arr!47605 (Array (_ BitVec 32) (_ BitVec 64))) (size!48156 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98643)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1461175 (= e!821517 (or (= (select (arr!47605 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47605 a!2862) intermediateBeforeIndex!19) (select (arr!47605 a!2862) j!93))))))

(declare-fun lt!640017 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!821516 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640016 () array!98643)

(declare-fun b!1461176 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11880 0))(
  ( (MissingZero!11880 (index!49911 (_ BitVec 32))) (Found!11880 (index!49912 (_ BitVec 32))) (Intermediate!11880 (undefined!12692 Bool) (index!49913 (_ BitVec 32)) (x!131516 (_ BitVec 32))) (Undefined!11880) (MissingVacant!11880 (index!49914 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98643 (_ BitVec 32)) SeekEntryResult!11880)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98643 (_ BitVec 32)) SeekEntryResult!11880)

(assert (=> b!1461176 (= e!821516 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640017 lt!640016 mask!2687) (seekEntryOrOpen!0 lt!640017 lt!640016 mask!2687)))))

(declare-fun lt!640012 () (_ BitVec 32))

(declare-fun lt!640014 () SeekEntryResult!11880)

(declare-fun e!821520 () Bool)

(declare-fun b!1461177 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98643 (_ BitVec 32)) SeekEntryResult!11880)

(assert (=> b!1461177 (= e!821520 (not (= lt!640014 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640012 lt!640017 lt!640016 mask!2687))))))

(declare-fun b!1461178 () Bool)

(declare-fun e!821515 () Bool)

(declare-fun e!821514 () Bool)

(assert (=> b!1461178 (= e!821515 (not e!821514))))

(declare-fun res!990932 () Bool)

(assert (=> b!1461178 (=> res!990932 e!821514)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461178 (= res!990932 (or (and (= (select (arr!47605 a!2862) index!646) (select (store (arr!47605 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47605 a!2862) index!646) (select (arr!47605 a!2862) j!93))) (= (select (arr!47605 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461178 e!821517))

(declare-fun res!990947 () Bool)

(assert (=> b!1461178 (=> (not res!990947) (not e!821517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98643 (_ BitVec 32)) Bool)

(assert (=> b!1461178 (= res!990947 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49204 0))(
  ( (Unit!49205) )
))
(declare-fun lt!640018 () Unit!49204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49204)

(assert (=> b!1461178 (= lt!640018 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461179 () Bool)

(declare-fun res!990946 () Bool)

(declare-fun e!821519 () Bool)

(assert (=> b!1461179 (=> (not res!990946) (not e!821519))))

(declare-datatypes ((List!34286 0))(
  ( (Nil!34283) (Cons!34282 (h!35632 (_ BitVec 64)) (t!48987 List!34286)) )
))
(declare-fun arrayNoDuplicates!0 (array!98643 (_ BitVec 32) List!34286) Bool)

(assert (=> b!1461179 (= res!990946 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34283))))

(declare-fun b!1461181 () Bool)

(declare-fun e!821518 () Bool)

(assert (=> b!1461181 (= e!821518 true)))

(declare-fun lt!640015 () Bool)

(assert (=> b!1461181 (= lt!640015 e!821520)))

(declare-fun c!134636 () Bool)

(assert (=> b!1461181 (= c!134636 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461182 () Bool)

(declare-fun res!990941 () Bool)

(declare-fun e!821521 () Bool)

(assert (=> b!1461182 (=> (not res!990941) (not e!821521))))

(declare-fun lt!640013 () SeekEntryResult!11880)

(assert (=> b!1461182 (= res!990941 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47605 a!2862) j!93) a!2862 mask!2687) lt!640013))))

(declare-fun b!1461183 () Bool)

(declare-fun res!990945 () Bool)

(assert (=> b!1461183 (=> (not res!990945) (not e!821519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461183 (= res!990945 (validKeyInArray!0 (select (arr!47605 a!2862) i!1006)))))

(declare-fun b!1461184 () Bool)

(assert (=> b!1461184 (= e!821521 e!821515)))

(declare-fun res!990936 () Bool)

(assert (=> b!1461184 (=> (not res!990936) (not e!821515))))

(assert (=> b!1461184 (= res!990936 (= lt!640014 (Intermediate!11880 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461184 (= lt!640014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640017 mask!2687) lt!640017 lt!640016 mask!2687))))

(assert (=> b!1461184 (= lt!640017 (select (store (arr!47605 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461185 () Bool)

(declare-fun e!821513 () Bool)

(assert (=> b!1461185 (= e!821513 e!821521)))

(declare-fun res!990933 () Bool)

(assert (=> b!1461185 (=> (not res!990933) (not e!821521))))

(assert (=> b!1461185 (= res!990933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47605 a!2862) j!93) mask!2687) (select (arr!47605 a!2862) j!93) a!2862 mask!2687) lt!640013))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461185 (= lt!640013 (Intermediate!11880 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461186 () Bool)

(declare-fun res!990944 () Bool)

(assert (=> b!1461186 (=> res!990944 e!821518)))

(assert (=> b!1461186 (= res!990944 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640012 (select (arr!47605 a!2862) j!93) a!2862 mask!2687) lt!640013)))))

(declare-fun b!1461187 () Bool)

(declare-fun res!990939 () Bool)

(assert (=> b!1461187 (=> (not res!990939) (not e!821515))))

(assert (=> b!1461187 (= res!990939 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461188 () Bool)

(declare-fun res!990931 () Bool)

(assert (=> b!1461188 (=> (not res!990931) (not e!821519))))

(assert (=> b!1461188 (= res!990931 (and (= (size!48156 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48156 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48156 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461189 () Bool)

(declare-fun res!990937 () Bool)

(assert (=> b!1461189 (=> (not res!990937) (not e!821519))))

(assert (=> b!1461189 (= res!990937 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48156 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48156 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48156 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461190 () Bool)

(declare-fun res!990935 () Bool)

(assert (=> b!1461190 (=> (not res!990935) (not e!821517))))

(assert (=> b!1461190 (= res!990935 (= (seekEntryOrOpen!0 (select (arr!47605 a!2862) j!93) a!2862 mask!2687) (Found!11880 j!93)))))

(declare-fun b!1461191 () Bool)

(assert (=> b!1461191 (= e!821519 e!821513)))

(declare-fun res!990940 () Bool)

(assert (=> b!1461191 (=> (not res!990940) (not e!821513))))

(assert (=> b!1461191 (= res!990940 (= (select (store (arr!47605 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461191 (= lt!640016 (array!98644 (store (arr!47605 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48156 a!2862)))))

(declare-fun b!1461192 () Bool)

(assert (=> b!1461192 (= e!821520 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640012 intermediateAfterIndex!19 lt!640017 lt!640016 mask!2687) (seekEntryOrOpen!0 lt!640017 lt!640016 mask!2687))))))

(declare-fun b!1461193 () Bool)

(assert (=> b!1461193 (= e!821516 (= lt!640014 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640017 lt!640016 mask!2687)))))

(declare-fun b!1461194 () Bool)

(declare-fun res!990948 () Bool)

(assert (=> b!1461194 (=> (not res!990948) (not e!821519))))

(assert (=> b!1461194 (= res!990948 (validKeyInArray!0 (select (arr!47605 a!2862) j!93)))))

(declare-fun b!1461195 () Bool)

(assert (=> b!1461195 (= e!821514 e!821518)))

(declare-fun res!990943 () Bool)

(assert (=> b!1461195 (=> res!990943 e!821518)))

(assert (=> b!1461195 (= res!990943 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640012 #b00000000000000000000000000000000) (bvsge lt!640012 (size!48156 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461195 (= lt!640012 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461196 () Bool)

(declare-fun res!990934 () Bool)

(assert (=> b!1461196 (=> (not res!990934) (not e!821515))))

(assert (=> b!1461196 (= res!990934 e!821516)))

(declare-fun c!134635 () Bool)

(assert (=> b!1461196 (= c!134635 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!990942 () Bool)

(assert (=> start!125278 (=> (not res!990942) (not e!821519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125278 (= res!990942 (validMask!0 mask!2687))))

(assert (=> start!125278 e!821519))

(assert (=> start!125278 true))

(declare-fun array_inv!36550 (array!98643) Bool)

(assert (=> start!125278 (array_inv!36550 a!2862)))

(declare-fun b!1461180 () Bool)

(declare-fun res!990938 () Bool)

(assert (=> b!1461180 (=> (not res!990938) (not e!821519))))

(assert (=> b!1461180 (= res!990938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125278 res!990942) b!1461188))

(assert (= (and b!1461188 res!990931) b!1461183))

(assert (= (and b!1461183 res!990945) b!1461194))

(assert (= (and b!1461194 res!990948) b!1461180))

(assert (= (and b!1461180 res!990938) b!1461179))

(assert (= (and b!1461179 res!990946) b!1461189))

(assert (= (and b!1461189 res!990937) b!1461191))

(assert (= (and b!1461191 res!990940) b!1461185))

(assert (= (and b!1461185 res!990933) b!1461182))

(assert (= (and b!1461182 res!990941) b!1461184))

(assert (= (and b!1461184 res!990936) b!1461196))

(assert (= (and b!1461196 c!134635) b!1461193))

(assert (= (and b!1461196 (not c!134635)) b!1461176))

(assert (= (and b!1461196 res!990934) b!1461187))

(assert (= (and b!1461187 res!990939) b!1461178))

(assert (= (and b!1461178 res!990947) b!1461190))

(assert (= (and b!1461190 res!990935) b!1461175))

(assert (= (and b!1461178 (not res!990932)) b!1461195))

(assert (= (and b!1461195 (not res!990943)) b!1461186))

(assert (= (and b!1461186 (not res!990944)) b!1461181))

(assert (= (and b!1461181 c!134636) b!1461177))

(assert (= (and b!1461181 (not c!134636)) b!1461192))

(declare-fun m!1348833 () Bool)

(assert (=> b!1461192 m!1348833))

(declare-fun m!1348835 () Bool)

(assert (=> b!1461192 m!1348835))

(declare-fun m!1348837 () Bool)

(assert (=> b!1461180 m!1348837))

(declare-fun m!1348839 () Bool)

(assert (=> b!1461177 m!1348839))

(declare-fun m!1348841 () Bool)

(assert (=> b!1461191 m!1348841))

(declare-fun m!1348843 () Bool)

(assert (=> b!1461191 m!1348843))

(declare-fun m!1348845 () Bool)

(assert (=> b!1461176 m!1348845))

(assert (=> b!1461176 m!1348835))

(declare-fun m!1348847 () Bool)

(assert (=> b!1461193 m!1348847))

(declare-fun m!1348849 () Bool)

(assert (=> b!1461182 m!1348849))

(assert (=> b!1461182 m!1348849))

(declare-fun m!1348851 () Bool)

(assert (=> b!1461182 m!1348851))

(declare-fun m!1348853 () Bool)

(assert (=> b!1461184 m!1348853))

(assert (=> b!1461184 m!1348853))

(declare-fun m!1348855 () Bool)

(assert (=> b!1461184 m!1348855))

(assert (=> b!1461184 m!1348841))

(declare-fun m!1348857 () Bool)

(assert (=> b!1461184 m!1348857))

(declare-fun m!1348859 () Bool)

(assert (=> b!1461183 m!1348859))

(assert (=> b!1461183 m!1348859))

(declare-fun m!1348861 () Bool)

(assert (=> b!1461183 m!1348861))

(assert (=> b!1461186 m!1348849))

(assert (=> b!1461186 m!1348849))

(declare-fun m!1348863 () Bool)

(assert (=> b!1461186 m!1348863))

(declare-fun m!1348865 () Bool)

(assert (=> b!1461175 m!1348865))

(assert (=> b!1461175 m!1348849))

(assert (=> b!1461190 m!1348849))

(assert (=> b!1461190 m!1348849))

(declare-fun m!1348867 () Bool)

(assert (=> b!1461190 m!1348867))

(declare-fun m!1348869 () Bool)

(assert (=> b!1461195 m!1348869))

(declare-fun m!1348871 () Bool)

(assert (=> b!1461179 m!1348871))

(declare-fun m!1348873 () Bool)

(assert (=> b!1461178 m!1348873))

(assert (=> b!1461178 m!1348841))

(declare-fun m!1348875 () Bool)

(assert (=> b!1461178 m!1348875))

(declare-fun m!1348877 () Bool)

(assert (=> b!1461178 m!1348877))

(declare-fun m!1348879 () Bool)

(assert (=> b!1461178 m!1348879))

(assert (=> b!1461178 m!1348849))

(assert (=> b!1461185 m!1348849))

(assert (=> b!1461185 m!1348849))

(declare-fun m!1348881 () Bool)

(assert (=> b!1461185 m!1348881))

(assert (=> b!1461185 m!1348881))

(assert (=> b!1461185 m!1348849))

(declare-fun m!1348883 () Bool)

(assert (=> b!1461185 m!1348883))

(assert (=> b!1461194 m!1348849))

(assert (=> b!1461194 m!1348849))

(declare-fun m!1348885 () Bool)

(assert (=> b!1461194 m!1348885))

(declare-fun m!1348887 () Bool)

(assert (=> start!125278 m!1348887))

(declare-fun m!1348889 () Bool)

(assert (=> start!125278 m!1348889))

(push 1)

