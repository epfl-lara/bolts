; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120382 () Bool)

(assert start!120382)

(declare-fun b!1400565 () Bool)

(declare-fun e!793016 () Bool)

(declare-fun e!793013 () Bool)

(assert (=> b!1400565 (= e!793016 e!793013)))

(declare-fun res!939188 () Bool)

(assert (=> b!1400565 (=> res!939188 e!793013)))

(declare-datatypes ((SeekEntryResult!10540 0))(
  ( (MissingZero!10540 (index!44536 (_ BitVec 32))) (Found!10540 (index!44537 (_ BitVec 32))) (Intermediate!10540 (undefined!11352 Bool) (index!44538 (_ BitVec 32)) (x!126186 (_ BitVec 32))) (Undefined!10540) (MissingVacant!10540 (index!44539 (_ BitVec 32))) )
))
(declare-fun lt!616298 () SeekEntryResult!10540)

(declare-datatypes ((array!95709 0))(
  ( (array!95710 (arr!46201 (Array (_ BitVec 32) (_ BitVec 64))) (size!46752 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95709)

(declare-fun lt!616301 () SeekEntryResult!10540)

(declare-fun lt!616303 () (_ BitVec 32))

(assert (=> b!1400565 (= res!939188 (or (bvslt (x!126186 lt!616298) #b00000000000000000000000000000000) (bvsgt (x!126186 lt!616298) #b01111111111111111111111111111110) (bvslt (x!126186 lt!616301) #b00000000000000000000000000000000) (bvsgt (x!126186 lt!616301) #b01111111111111111111111111111110) (bvslt lt!616303 #b00000000000000000000000000000000) (bvsge lt!616303 (size!46752 a!2901)) (bvslt (index!44538 lt!616298) #b00000000000000000000000000000000) (bvsge (index!44538 lt!616298) (size!46752 a!2901)) (bvslt (index!44538 lt!616301) #b00000000000000000000000000000000) (bvsge (index!44538 lt!616301) (size!46752 a!2901)) (not (= lt!616298 (Intermediate!10540 false (index!44538 lt!616298) (x!126186 lt!616298)))) (not (= lt!616301 (Intermediate!10540 false (index!44538 lt!616301) (x!126186 lt!616301))))))))

(declare-fun e!793017 () Bool)

(assert (=> b!1400565 e!793017))

(declare-fun res!939194 () Bool)

(assert (=> b!1400565 (=> (not res!939194) (not e!793017))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400565 (= res!939194 (and (not (undefined!11352 lt!616301)) (= (index!44538 lt!616301) i!1037) (bvslt (x!126186 lt!616301) (x!126186 lt!616298)) (= (select (store (arr!46201 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44538 lt!616301)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47034 0))(
  ( (Unit!47035) )
))
(declare-fun lt!616296 () Unit!47034)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47034)

(assert (=> b!1400565 (= lt!616296 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616303 (x!126186 lt!616298) (index!44538 lt!616298) (x!126186 lt!616301) (index!44538 lt!616301) (undefined!11352 lt!616301) mask!2840))))

(declare-fun b!1400566 () Bool)

(assert (=> b!1400566 (= e!793013 true)))

(declare-fun lt!616297 () SeekEntryResult!10540)

(declare-fun lt!616299 () (_ BitVec 64))

(declare-fun lt!616302 () array!95709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95709 (_ BitVec 32)) SeekEntryResult!10540)

(assert (=> b!1400566 (= lt!616297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616303 lt!616299 lt!616302 mask!2840))))

(declare-fun b!1400567 () Bool)

(declare-fun res!939190 () Bool)

(declare-fun e!793015 () Bool)

(assert (=> b!1400567 (=> (not res!939190) (not e!793015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95709 (_ BitVec 32)) Bool)

(assert (=> b!1400567 (= res!939190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400568 () Bool)

(declare-fun res!939192 () Bool)

(assert (=> b!1400568 (=> (not res!939192) (not e!793015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400568 (= res!939192 (validKeyInArray!0 (select (arr!46201 a!2901) j!112)))))

(declare-fun b!1400569 () Bool)

(declare-fun res!939185 () Bool)

(assert (=> b!1400569 (=> (not res!939185) (not e!793015))))

(assert (=> b!1400569 (= res!939185 (validKeyInArray!0 (select (arr!46201 a!2901) i!1037)))))

(declare-fun b!1400570 () Bool)

(declare-fun e!793014 () Bool)

(assert (=> b!1400570 (= e!793014 e!793016)))

(declare-fun res!939195 () Bool)

(assert (=> b!1400570 (=> res!939195 e!793016)))

(assert (=> b!1400570 (= res!939195 (or (= lt!616298 lt!616301) (not (is-Intermediate!10540 lt!616301))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400570 (= lt!616301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616299 mask!2840) lt!616299 lt!616302 mask!2840))))

(assert (=> b!1400570 (= lt!616299 (select (store (arr!46201 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400570 (= lt!616302 (array!95710 (store (arr!46201 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46752 a!2901)))))

(declare-fun b!1400571 () Bool)

(assert (=> b!1400571 (= e!793015 (not e!793014))))

(declare-fun res!939189 () Bool)

(assert (=> b!1400571 (=> res!939189 e!793014)))

(assert (=> b!1400571 (= res!939189 (or (not (is-Intermediate!10540 lt!616298)) (undefined!11352 lt!616298)))))

(declare-fun e!793018 () Bool)

(assert (=> b!1400571 e!793018))

(declare-fun res!939193 () Bool)

(assert (=> b!1400571 (=> (not res!939193) (not e!793018))))

(assert (=> b!1400571 (= res!939193 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616300 () Unit!47034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47034)

(assert (=> b!1400571 (= lt!616300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400571 (= lt!616298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616303 (select (arr!46201 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400571 (= lt!616303 (toIndex!0 (select (arr!46201 a!2901) j!112) mask!2840))))

(declare-fun res!939186 () Bool)

(assert (=> start!120382 (=> (not res!939186) (not e!793015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120382 (= res!939186 (validMask!0 mask!2840))))

(assert (=> start!120382 e!793015))

(assert (=> start!120382 true))

(declare-fun array_inv!35146 (array!95709) Bool)

(assert (=> start!120382 (array_inv!35146 a!2901)))

(declare-fun b!1400572 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95709 (_ BitVec 32)) SeekEntryResult!10540)

(assert (=> b!1400572 (= e!793018 (= (seekEntryOrOpen!0 (select (arr!46201 a!2901) j!112) a!2901 mask!2840) (Found!10540 j!112)))))

(declare-fun b!1400573 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95709 (_ BitVec 32)) SeekEntryResult!10540)

(assert (=> b!1400573 (= e!793017 (= (seekEntryOrOpen!0 lt!616299 lt!616302 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126186 lt!616301) (index!44538 lt!616301) (index!44538 lt!616301) (select (arr!46201 a!2901) j!112) lt!616302 mask!2840)))))

(declare-fun b!1400574 () Bool)

(declare-fun res!939187 () Bool)

(assert (=> b!1400574 (=> (not res!939187) (not e!793015))))

(declare-datatypes ((List!32900 0))(
  ( (Nil!32897) (Cons!32896 (h!34144 (_ BitVec 64)) (t!47601 List!32900)) )
))
(declare-fun arrayNoDuplicates!0 (array!95709 (_ BitVec 32) List!32900) Bool)

(assert (=> b!1400574 (= res!939187 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32897))))

(declare-fun b!1400575 () Bool)

(declare-fun res!939191 () Bool)

(assert (=> b!1400575 (=> (not res!939191) (not e!793015))))

(assert (=> b!1400575 (= res!939191 (and (= (size!46752 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46752 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46752 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120382 res!939186) b!1400575))

(assert (= (and b!1400575 res!939191) b!1400569))

(assert (= (and b!1400569 res!939185) b!1400568))

(assert (= (and b!1400568 res!939192) b!1400567))

(assert (= (and b!1400567 res!939190) b!1400574))

(assert (= (and b!1400574 res!939187) b!1400571))

(assert (= (and b!1400571 res!939193) b!1400572))

(assert (= (and b!1400571 (not res!939189)) b!1400570))

(assert (= (and b!1400570 (not res!939195)) b!1400565))

(assert (= (and b!1400565 res!939194) b!1400573))

(assert (= (and b!1400565 (not res!939188)) b!1400566))

(declare-fun m!1288145 () Bool)

(assert (=> b!1400574 m!1288145))

(declare-fun m!1288147 () Bool)

(assert (=> b!1400567 m!1288147))

(declare-fun m!1288149 () Bool)

(assert (=> b!1400570 m!1288149))

(assert (=> b!1400570 m!1288149))

(declare-fun m!1288151 () Bool)

(assert (=> b!1400570 m!1288151))

(declare-fun m!1288153 () Bool)

(assert (=> b!1400570 m!1288153))

(declare-fun m!1288155 () Bool)

(assert (=> b!1400570 m!1288155))

(declare-fun m!1288157 () Bool)

(assert (=> b!1400569 m!1288157))

(assert (=> b!1400569 m!1288157))

(declare-fun m!1288159 () Bool)

(assert (=> b!1400569 m!1288159))

(assert (=> b!1400565 m!1288153))

(declare-fun m!1288161 () Bool)

(assert (=> b!1400565 m!1288161))

(declare-fun m!1288163 () Bool)

(assert (=> b!1400565 m!1288163))

(declare-fun m!1288165 () Bool)

(assert (=> start!120382 m!1288165))

(declare-fun m!1288167 () Bool)

(assert (=> start!120382 m!1288167))

(declare-fun m!1288169 () Bool)

(assert (=> b!1400571 m!1288169))

(declare-fun m!1288171 () Bool)

(assert (=> b!1400571 m!1288171))

(assert (=> b!1400571 m!1288169))

(declare-fun m!1288173 () Bool)

(assert (=> b!1400571 m!1288173))

(assert (=> b!1400571 m!1288169))

(declare-fun m!1288175 () Bool)

(assert (=> b!1400571 m!1288175))

(declare-fun m!1288177 () Bool)

(assert (=> b!1400571 m!1288177))

(assert (=> b!1400568 m!1288169))

(assert (=> b!1400568 m!1288169))

(declare-fun m!1288179 () Bool)

(assert (=> b!1400568 m!1288179))

(assert (=> b!1400572 m!1288169))

(assert (=> b!1400572 m!1288169))

(declare-fun m!1288181 () Bool)

(assert (=> b!1400572 m!1288181))

(declare-fun m!1288183 () Bool)

(assert (=> b!1400573 m!1288183))

(assert (=> b!1400573 m!1288169))

(assert (=> b!1400573 m!1288169))

(declare-fun m!1288185 () Bool)

(assert (=> b!1400573 m!1288185))

(declare-fun m!1288187 () Bool)

(assert (=> b!1400566 m!1288187))

(push 1)

