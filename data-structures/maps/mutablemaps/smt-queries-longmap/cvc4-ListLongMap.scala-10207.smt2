; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120338 () Bool)

(assert start!120338)

(declare-fun b!1399839 () Bool)

(declare-fun res!938462 () Bool)

(declare-fun e!792553 () Bool)

(assert (=> b!1399839 (=> (not res!938462) (not e!792553))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95665 0))(
  ( (array!95666 (arr!46179 (Array (_ BitVec 32) (_ BitVec 64))) (size!46730 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95665)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399839 (= res!938462 (and (= (size!46730 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46730 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46730 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399840 () Bool)

(declare-fun e!792551 () Bool)

(declare-datatypes ((SeekEntryResult!10518 0))(
  ( (MissingZero!10518 (index!44448 (_ BitVec 32))) (Found!10518 (index!44449 (_ BitVec 32))) (Intermediate!10518 (undefined!11330 Bool) (index!44450 (_ BitVec 32)) (x!126100 (_ BitVec 32))) (Undefined!10518) (MissingVacant!10518 (index!44451 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95665 (_ BitVec 32)) SeekEntryResult!10518)

(assert (=> b!1399840 (= e!792551 (= (seekEntryOrOpen!0 (select (arr!46179 a!2901) j!112) a!2901 mask!2840) (Found!10518 j!112)))))

(declare-fun b!1399841 () Bool)

(declare-fun res!938467 () Bool)

(assert (=> b!1399841 (=> (not res!938467) (not e!792553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95665 (_ BitVec 32)) Bool)

(assert (=> b!1399841 (= res!938467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399842 () Bool)

(declare-fun res!938463 () Bool)

(assert (=> b!1399842 (=> (not res!938463) (not e!792553))))

(declare-datatypes ((List!32878 0))(
  ( (Nil!32875) (Cons!32874 (h!34122 (_ BitVec 64)) (t!47579 List!32878)) )
))
(declare-fun arrayNoDuplicates!0 (array!95665 (_ BitVec 32) List!32878) Bool)

(assert (=> b!1399842 (= res!938463 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32875))))

(declare-fun b!1399843 () Bool)

(declare-fun res!938465 () Bool)

(assert (=> b!1399843 (=> (not res!938465) (not e!792553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399843 (= res!938465 (validKeyInArray!0 (select (arr!46179 a!2901) i!1037)))))

(declare-fun e!792555 () Bool)

(declare-fun lt!615768 () SeekEntryResult!10518)

(declare-fun b!1399844 () Bool)

(declare-fun lt!615772 () array!95665)

(declare-fun lt!615771 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95665 (_ BitVec 32)) SeekEntryResult!10518)

(assert (=> b!1399844 (= e!792555 (= (seekEntryOrOpen!0 lt!615771 lt!615772 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126100 lt!615768) (index!44450 lt!615768) (index!44450 lt!615768) (select (arr!46179 a!2901) j!112) lt!615772 mask!2840)))))

(declare-fun b!1399845 () Bool)

(declare-fun e!792557 () Bool)

(assert (=> b!1399845 (= e!792553 (not e!792557))))

(declare-fun res!938466 () Bool)

(assert (=> b!1399845 (=> res!938466 e!792557)))

(declare-fun lt!615769 () SeekEntryResult!10518)

(assert (=> b!1399845 (= res!938466 (or (not (is-Intermediate!10518 lt!615769)) (undefined!11330 lt!615769)))))

(assert (=> b!1399845 e!792551))

(declare-fun res!938461 () Bool)

(assert (=> b!1399845 (=> (not res!938461) (not e!792551))))

(assert (=> b!1399845 (= res!938461 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46990 0))(
  ( (Unit!46991) )
))
(declare-fun lt!615775 () Unit!46990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46990)

(assert (=> b!1399845 (= lt!615775 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615770 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95665 (_ BitVec 32)) SeekEntryResult!10518)

(assert (=> b!1399845 (= lt!615769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615770 (select (arr!46179 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399845 (= lt!615770 (toIndex!0 (select (arr!46179 a!2901) j!112) mask!2840))))

(declare-fun res!938460 () Bool)

(assert (=> start!120338 (=> (not res!938460) (not e!792553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120338 (= res!938460 (validMask!0 mask!2840))))

(assert (=> start!120338 e!792553))

(assert (=> start!120338 true))

(declare-fun array_inv!35124 (array!95665) Bool)

(assert (=> start!120338 (array_inv!35124 a!2901)))

(declare-fun b!1399846 () Bool)

(declare-fun e!792554 () Bool)

(declare-fun e!792552 () Bool)

(assert (=> b!1399846 (= e!792554 e!792552)))

(declare-fun res!938468 () Bool)

(assert (=> b!1399846 (=> res!938468 e!792552)))

(assert (=> b!1399846 (= res!938468 (or (bvslt (x!126100 lt!615769) #b00000000000000000000000000000000) (bvsgt (x!126100 lt!615769) #b01111111111111111111111111111110) (bvslt (x!126100 lt!615768) #b00000000000000000000000000000000) (bvsgt (x!126100 lt!615768) #b01111111111111111111111111111110) (bvslt lt!615770 #b00000000000000000000000000000000) (bvsge lt!615770 (size!46730 a!2901)) (bvslt (index!44450 lt!615769) #b00000000000000000000000000000000) (bvsge (index!44450 lt!615769) (size!46730 a!2901)) (bvslt (index!44450 lt!615768) #b00000000000000000000000000000000) (bvsge (index!44450 lt!615768) (size!46730 a!2901)) (not (= lt!615769 (Intermediate!10518 false (index!44450 lt!615769) (x!126100 lt!615769)))) (not (= lt!615768 (Intermediate!10518 false (index!44450 lt!615768) (x!126100 lt!615768))))))))

(assert (=> b!1399846 e!792555))

(declare-fun res!938464 () Bool)

(assert (=> b!1399846 (=> (not res!938464) (not e!792555))))

(assert (=> b!1399846 (= res!938464 (and (not (undefined!11330 lt!615768)) (= (index!44450 lt!615768) i!1037) (bvslt (x!126100 lt!615768) (x!126100 lt!615769)) (= (select (store (arr!46179 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44450 lt!615768)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615773 () Unit!46990)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46990)

(assert (=> b!1399846 (= lt!615773 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615770 (x!126100 lt!615769) (index!44450 lt!615769) (x!126100 lt!615768) (index!44450 lt!615768) (undefined!11330 lt!615768) mask!2840))))

(declare-fun b!1399847 () Bool)

(assert (=> b!1399847 (= e!792557 e!792554)))

(declare-fun res!938459 () Bool)

(assert (=> b!1399847 (=> res!938459 e!792554)))

(assert (=> b!1399847 (= res!938459 (or (= lt!615769 lt!615768) (not (is-Intermediate!10518 lt!615768))))))

(assert (=> b!1399847 (= lt!615768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615771 mask!2840) lt!615771 lt!615772 mask!2840))))

(assert (=> b!1399847 (= lt!615771 (select (store (arr!46179 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399847 (= lt!615772 (array!95666 (store (arr!46179 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46730 a!2901)))))

(declare-fun b!1399848 () Bool)

(assert (=> b!1399848 (= e!792552 true)))

(declare-fun lt!615774 () SeekEntryResult!10518)

(assert (=> b!1399848 (= lt!615774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615770 lt!615771 lt!615772 mask!2840))))

(declare-fun b!1399849 () Bool)

(declare-fun res!938469 () Bool)

(assert (=> b!1399849 (=> (not res!938469) (not e!792553))))

(assert (=> b!1399849 (= res!938469 (validKeyInArray!0 (select (arr!46179 a!2901) j!112)))))

(assert (= (and start!120338 res!938460) b!1399839))

(assert (= (and b!1399839 res!938462) b!1399843))

(assert (= (and b!1399843 res!938465) b!1399849))

(assert (= (and b!1399849 res!938469) b!1399841))

(assert (= (and b!1399841 res!938467) b!1399842))

(assert (= (and b!1399842 res!938463) b!1399845))

(assert (= (and b!1399845 res!938461) b!1399840))

(assert (= (and b!1399845 (not res!938466)) b!1399847))

(assert (= (and b!1399847 (not res!938459)) b!1399846))

(assert (= (and b!1399846 res!938464) b!1399844))

(assert (= (and b!1399846 (not res!938468)) b!1399848))

(declare-fun m!1287177 () Bool)

(assert (=> b!1399842 m!1287177))

(declare-fun m!1287179 () Bool)

(assert (=> b!1399846 m!1287179))

(declare-fun m!1287181 () Bool)

(assert (=> b!1399846 m!1287181))

(declare-fun m!1287183 () Bool)

(assert (=> b!1399846 m!1287183))

(declare-fun m!1287185 () Bool)

(assert (=> b!1399849 m!1287185))

(assert (=> b!1399849 m!1287185))

(declare-fun m!1287187 () Bool)

(assert (=> b!1399849 m!1287187))

(declare-fun m!1287189 () Bool)

(assert (=> b!1399847 m!1287189))

(assert (=> b!1399847 m!1287189))

(declare-fun m!1287191 () Bool)

(assert (=> b!1399847 m!1287191))

(assert (=> b!1399847 m!1287179))

(declare-fun m!1287193 () Bool)

(assert (=> b!1399847 m!1287193))

(assert (=> b!1399845 m!1287185))

(declare-fun m!1287195 () Bool)

(assert (=> b!1399845 m!1287195))

(assert (=> b!1399845 m!1287185))

(declare-fun m!1287197 () Bool)

(assert (=> b!1399845 m!1287197))

(assert (=> b!1399845 m!1287185))

(declare-fun m!1287199 () Bool)

(assert (=> b!1399845 m!1287199))

(declare-fun m!1287201 () Bool)

(assert (=> b!1399845 m!1287201))

(declare-fun m!1287203 () Bool)

(assert (=> b!1399843 m!1287203))

(assert (=> b!1399843 m!1287203))

(declare-fun m!1287205 () Bool)

(assert (=> b!1399843 m!1287205))

(assert (=> b!1399840 m!1287185))

(assert (=> b!1399840 m!1287185))

(declare-fun m!1287207 () Bool)

(assert (=> b!1399840 m!1287207))

(declare-fun m!1287209 () Bool)

(assert (=> b!1399841 m!1287209))

(declare-fun m!1287211 () Bool)

(assert (=> b!1399844 m!1287211))

(assert (=> b!1399844 m!1287185))

(assert (=> b!1399844 m!1287185))

(declare-fun m!1287213 () Bool)

(assert (=> b!1399844 m!1287213))

(declare-fun m!1287215 () Bool)

(assert (=> b!1399848 m!1287215))

(declare-fun m!1287217 () Bool)

(assert (=> start!120338 m!1287217))

(declare-fun m!1287219 () Bool)

(assert (=> start!120338 m!1287219))

(push 1)

(assert (not start!120338))

(assert (not b!1399847))

(assert (not b!1399849))

(assert (not b!1399843))

(assert (not b!1399848))

(assert (not b!1399844))

(assert (not b!1399841))

(assert (not b!1399842))

(assert (not b!1399845))

(assert (not b!1399846))

(assert (not b!1399840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

