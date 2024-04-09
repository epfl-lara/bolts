; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122026 () Bool)

(assert start!122026)

(declare-fun b!1415679 () Bool)

(declare-fun res!951838 () Bool)

(declare-fun e!801280 () Bool)

(assert (=> b!1415679 (=> (not res!951838) (not e!801280))))

(declare-datatypes ((array!96630 0))(
  ( (array!96631 (arr!46642 (Array (_ BitVec 32) (_ BitVec 64))) (size!47193 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96630)

(declare-datatypes ((List!33341 0))(
  ( (Nil!33338) (Cons!33337 (h!34624 (_ BitVec 64)) (t!48042 List!33341)) )
))
(declare-fun arrayNoDuplicates!0 (array!96630 (_ BitVec 32) List!33341) Bool)

(assert (=> b!1415679 (= res!951838 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33338))))

(declare-fun b!1415680 () Bool)

(declare-fun e!801278 () Bool)

(assert (=> b!1415680 (= e!801280 (not e!801278))))

(declare-fun res!951836 () Bool)

(assert (=> b!1415680 (=> res!951836 e!801278)))

(declare-datatypes ((SeekEntryResult!10975 0))(
  ( (MissingZero!10975 (index!46291 (_ BitVec 32))) (Found!10975 (index!46292 (_ BitVec 32))) (Intermediate!10975 (undefined!11787 Bool) (index!46293 (_ BitVec 32)) (x!127905 (_ BitVec 32))) (Undefined!10975) (MissingVacant!10975 (index!46294 (_ BitVec 32))) )
))
(declare-fun lt!624305 () SeekEntryResult!10975)

(assert (=> b!1415680 (= res!951836 (or (not (is-Intermediate!10975 lt!624305)) (undefined!11787 lt!624305)))))

(declare-fun e!801284 () Bool)

(assert (=> b!1415680 e!801284))

(declare-fun res!951833 () Bool)

(assert (=> b!1415680 (=> (not res!951833) (not e!801284))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96630 (_ BitVec 32)) Bool)

(assert (=> b!1415680 (= res!951833 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47874 0))(
  ( (Unit!47875) )
))
(declare-fun lt!624303 () Unit!47874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47874)

(assert (=> b!1415680 (= lt!624303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624310 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96630 (_ BitVec 32)) SeekEntryResult!10975)

(assert (=> b!1415680 (= lt!624305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624310 (select (arr!46642 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415680 (= lt!624310 (toIndex!0 (select (arr!46642 a!2901) j!112) mask!2840))))

(declare-fun res!951835 () Bool)

(assert (=> start!122026 (=> (not res!951835) (not e!801280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122026 (= res!951835 (validMask!0 mask!2840))))

(assert (=> start!122026 e!801280))

(assert (=> start!122026 true))

(declare-fun array_inv!35587 (array!96630) Bool)

(assert (=> start!122026 (array_inv!35587 a!2901)))

(declare-fun b!1415681 () Bool)

(declare-fun e!801282 () Bool)

(assert (=> b!1415681 (= e!801278 e!801282)))

(declare-fun res!951831 () Bool)

(assert (=> b!1415681 (=> res!951831 e!801282)))

(declare-fun lt!624306 () SeekEntryResult!10975)

(assert (=> b!1415681 (= res!951831 (or (= lt!624305 lt!624306) (not (is-Intermediate!10975 lt!624306))))))

(declare-fun lt!624309 () (_ BitVec 64))

(declare-fun lt!624308 () array!96630)

(assert (=> b!1415681 (= lt!624306 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624309 mask!2840) lt!624309 lt!624308 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415681 (= lt!624309 (select (store (arr!46642 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415681 (= lt!624308 (array!96631 (store (arr!46642 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47193 a!2901)))))

(declare-fun b!1415682 () Bool)

(declare-fun e!801283 () Bool)

(assert (=> b!1415682 (= e!801283 true)))

(declare-fun lt!624304 () SeekEntryResult!10975)

(assert (=> b!1415682 (= lt!624304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624310 lt!624309 lt!624308 mask!2840))))

(declare-fun b!1415683 () Bool)

(assert (=> b!1415683 (= e!801282 e!801283)))

(declare-fun res!951840 () Bool)

(assert (=> b!1415683 (=> res!951840 e!801283)))

(assert (=> b!1415683 (= res!951840 (or (bvslt (x!127905 lt!624305) #b00000000000000000000000000000000) (bvsgt (x!127905 lt!624305) #b01111111111111111111111111111110) (bvslt (x!127905 lt!624306) #b00000000000000000000000000000000) (bvsgt (x!127905 lt!624306) #b01111111111111111111111111111110) (bvslt lt!624310 #b00000000000000000000000000000000) (bvsge lt!624310 (size!47193 a!2901)) (bvslt (index!46293 lt!624305) #b00000000000000000000000000000000) (bvsge (index!46293 lt!624305) (size!47193 a!2901)) (bvslt (index!46293 lt!624306) #b00000000000000000000000000000000) (bvsge (index!46293 lt!624306) (size!47193 a!2901)) (not (= lt!624305 (Intermediate!10975 false (index!46293 lt!624305) (x!127905 lt!624305)))) (not (= lt!624306 (Intermediate!10975 false (index!46293 lt!624306) (x!127905 lt!624306))))))))

(declare-fun e!801281 () Bool)

(assert (=> b!1415683 e!801281))

(declare-fun res!951832 () Bool)

(assert (=> b!1415683 (=> (not res!951832) (not e!801281))))

(assert (=> b!1415683 (= res!951832 (and (not (undefined!11787 lt!624306)) (= (index!46293 lt!624306) i!1037) (bvslt (x!127905 lt!624306) (x!127905 lt!624305)) (= (select (store (arr!46642 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46293 lt!624306)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624307 () Unit!47874)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47874)

(assert (=> b!1415683 (= lt!624307 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624310 (x!127905 lt!624305) (index!46293 lt!624305) (x!127905 lt!624306) (index!46293 lt!624306) (undefined!11787 lt!624306) mask!2840))))

(declare-fun b!1415684 () Bool)

(declare-fun res!951839 () Bool)

(assert (=> b!1415684 (=> (not res!951839) (not e!801280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415684 (= res!951839 (validKeyInArray!0 (select (arr!46642 a!2901) i!1037)))))

(declare-fun b!1415685 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96630 (_ BitVec 32)) SeekEntryResult!10975)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96630 (_ BitVec 32)) SeekEntryResult!10975)

(assert (=> b!1415685 (= e!801281 (= (seekEntryOrOpen!0 lt!624309 lt!624308 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127905 lt!624306) (index!46293 lt!624306) (index!46293 lt!624306) (select (arr!46642 a!2901) j!112) lt!624308 mask!2840)))))

(declare-fun b!1415686 () Bool)

(declare-fun res!951834 () Bool)

(assert (=> b!1415686 (=> (not res!951834) (not e!801280))))

(assert (=> b!1415686 (= res!951834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415687 () Bool)

(assert (=> b!1415687 (= e!801284 (= (seekEntryOrOpen!0 (select (arr!46642 a!2901) j!112) a!2901 mask!2840) (Found!10975 j!112)))))

(declare-fun b!1415688 () Bool)

(declare-fun res!951837 () Bool)

(assert (=> b!1415688 (=> (not res!951837) (not e!801280))))

(assert (=> b!1415688 (= res!951837 (validKeyInArray!0 (select (arr!46642 a!2901) j!112)))))

(declare-fun b!1415689 () Bool)

(declare-fun res!951830 () Bool)

(assert (=> b!1415689 (=> (not res!951830) (not e!801280))))

(assert (=> b!1415689 (= res!951830 (and (= (size!47193 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47193 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47193 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122026 res!951835) b!1415689))

(assert (= (and b!1415689 res!951830) b!1415684))

(assert (= (and b!1415684 res!951839) b!1415688))

(assert (= (and b!1415688 res!951837) b!1415686))

(assert (= (and b!1415686 res!951834) b!1415679))

(assert (= (and b!1415679 res!951838) b!1415680))

(assert (= (and b!1415680 res!951833) b!1415687))

(assert (= (and b!1415680 (not res!951836)) b!1415681))

(assert (= (and b!1415681 (not res!951831)) b!1415683))

(assert (= (and b!1415683 res!951832) b!1415685))

(assert (= (and b!1415683 (not res!951840)) b!1415682))

(declare-fun m!1306139 () Bool)

(assert (=> b!1415684 m!1306139))

(assert (=> b!1415684 m!1306139))

(declare-fun m!1306141 () Bool)

(assert (=> b!1415684 m!1306141))

(declare-fun m!1306143 () Bool)

(assert (=> b!1415680 m!1306143))

(declare-fun m!1306145 () Bool)

(assert (=> b!1415680 m!1306145))

(assert (=> b!1415680 m!1306143))

(declare-fun m!1306147 () Bool)

(assert (=> b!1415680 m!1306147))

(assert (=> b!1415680 m!1306143))

(declare-fun m!1306149 () Bool)

(assert (=> b!1415680 m!1306149))

(declare-fun m!1306151 () Bool)

(assert (=> b!1415680 m!1306151))

(declare-fun m!1306153 () Bool)

(assert (=> b!1415686 m!1306153))

(assert (=> b!1415688 m!1306143))

(assert (=> b!1415688 m!1306143))

(declare-fun m!1306155 () Bool)

(assert (=> b!1415688 m!1306155))

(declare-fun m!1306157 () Bool)

(assert (=> b!1415679 m!1306157))

(declare-fun m!1306159 () Bool)

(assert (=> b!1415685 m!1306159))

(assert (=> b!1415685 m!1306143))

(assert (=> b!1415685 m!1306143))

(declare-fun m!1306161 () Bool)

(assert (=> b!1415685 m!1306161))

(declare-fun m!1306163 () Bool)

(assert (=> b!1415682 m!1306163))

(declare-fun m!1306165 () Bool)

(assert (=> start!122026 m!1306165))

(declare-fun m!1306167 () Bool)

(assert (=> start!122026 m!1306167))

(assert (=> b!1415687 m!1306143))

(assert (=> b!1415687 m!1306143))

(declare-fun m!1306169 () Bool)

(assert (=> b!1415687 m!1306169))

(declare-fun m!1306171 () Bool)

(assert (=> b!1415683 m!1306171))

(declare-fun m!1306173 () Bool)

(assert (=> b!1415683 m!1306173))

(declare-fun m!1306175 () Bool)

(assert (=> b!1415683 m!1306175))

(declare-fun m!1306177 () Bool)

(assert (=> b!1415681 m!1306177))

(assert (=> b!1415681 m!1306177))

(declare-fun m!1306179 () Bool)

(assert (=> b!1415681 m!1306179))

(assert (=> b!1415681 m!1306171))

(declare-fun m!1306181 () Bool)

(assert (=> b!1415681 m!1306181))

(push 1)

