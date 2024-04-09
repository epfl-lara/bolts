; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65588 () Bool)

(assert start!65588)

(declare-fun b!749057 () Bool)

(declare-fun res!505489 () Bool)

(declare-fun e!418022 () Bool)

(assert (=> b!749057 (=> (not res!505489) (not e!418022))))

(declare-datatypes ((array!41714 0))(
  ( (array!41715 (arr!19967 (Array (_ BitVec 32) (_ BitVec 64))) (size!20388 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41714)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!749057 (= res!505489 (and (= (size!20388 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20388 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20388 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749058 () Bool)

(declare-fun e!418018 () Bool)

(declare-fun e!418025 () Bool)

(assert (=> b!749058 (= e!418018 e!418025)))

(declare-fun res!505483 () Bool)

(assert (=> b!749058 (=> (not res!505483) (not e!418025))))

(declare-datatypes ((SeekEntryResult!7574 0))(
  ( (MissingZero!7574 (index!32663 (_ BitVec 32))) (Found!7574 (index!32664 (_ BitVec 32))) (Intermediate!7574 (undefined!8386 Bool) (index!32665 (_ BitVec 32)) (x!63621 (_ BitVec 32))) (Undefined!7574) (MissingVacant!7574 (index!32666 (_ BitVec 32))) )
))
(declare-fun lt!333024 () SeekEntryResult!7574)

(declare-fun lt!333022 () SeekEntryResult!7574)

(assert (=> b!749058 (= res!505483 (= lt!333024 lt!333022))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!333023 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333026 () array!41714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41714 (_ BitVec 32)) SeekEntryResult!7574)

(assert (=> b!749058 (= lt!333022 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333023 lt!333026 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749058 (= lt!333024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333023 mask!3328) lt!333023 lt!333026 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!749058 (= lt!333023 (select (store (arr!19967 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749058 (= lt!333026 (array!41715 (store (arr!19967 a!3186) i!1173 k!2102) (size!20388 a!3186)))))

(declare-fun res!505494 () Bool)

(assert (=> start!65588 (=> (not res!505494) (not e!418022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65588 (= res!505494 (validMask!0 mask!3328))))

(assert (=> start!65588 e!418022))

(assert (=> start!65588 true))

(declare-fun array_inv!15741 (array!41714) Bool)

(assert (=> start!65588 (array_inv!15741 a!3186)))

(declare-fun b!749059 () Bool)

(declare-fun res!505497 () Bool)

(assert (=> b!749059 (=> (not res!505497) (not e!418018))))

(declare-fun e!418026 () Bool)

(assert (=> b!749059 (= res!505497 e!418026)))

(declare-fun c!82169 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749059 (= c!82169 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749060 () Bool)

(declare-fun e!418023 () Bool)

(assert (=> b!749060 (= e!418025 (not e!418023))))

(declare-fun res!505481 () Bool)

(assert (=> b!749060 (=> res!505481 e!418023)))

(assert (=> b!749060 (= res!505481 (or (not (is-Intermediate!7574 lt!333022)) (bvslt x!1131 (x!63621 lt!333022)) (not (= x!1131 (x!63621 lt!333022))) (not (= index!1321 (index!32665 lt!333022)))))))

(declare-fun e!418021 () Bool)

(assert (=> b!749060 e!418021))

(declare-fun res!505486 () Bool)

(assert (=> b!749060 (=> (not res!505486) (not e!418021))))

(declare-fun lt!333017 () SeekEntryResult!7574)

(declare-fun lt!333019 () SeekEntryResult!7574)

(assert (=> b!749060 (= res!505486 (= lt!333017 lt!333019))))

(assert (=> b!749060 (= lt!333019 (Found!7574 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41714 (_ BitVec 32)) SeekEntryResult!7574)

(assert (=> b!749060 (= lt!333017 (seekEntryOrOpen!0 (select (arr!19967 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41714 (_ BitVec 32)) Bool)

(assert (=> b!749060 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25698 0))(
  ( (Unit!25699) )
))
(declare-fun lt!333021 () Unit!25698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25698)

(assert (=> b!749060 (= lt!333021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749061 () Bool)

(declare-fun res!505493 () Bool)

(assert (=> b!749061 (=> (not res!505493) (not e!418022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749061 (= res!505493 (validKeyInArray!0 k!2102))))

(declare-fun b!749062 () Bool)

(declare-fun e!418017 () Unit!25698)

(declare-fun Unit!25700 () Unit!25698)

(assert (=> b!749062 (= e!418017 Unit!25700)))

(declare-fun b!749063 () Bool)

(declare-fun res!505495 () Bool)

(assert (=> b!749063 (=> (not res!505495) (not e!418022))))

(declare-fun arrayContainsKey!0 (array!41714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749063 (= res!505495 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749064 () Bool)

(declare-fun res!505480 () Bool)

(declare-fun e!418020 () Bool)

(assert (=> b!749064 (=> (not res!505480) (not e!418020))))

(declare-datatypes ((List!14022 0))(
  ( (Nil!14019) (Cons!14018 (h!15090 (_ BitVec 64)) (t!20345 List!14022)) )
))
(declare-fun arrayNoDuplicates!0 (array!41714 (_ BitVec 32) List!14022) Bool)

(assert (=> b!749064 (= res!505480 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14019))))

(declare-fun lt!333025 () SeekEntryResult!7574)

(declare-fun b!749065 () Bool)

(assert (=> b!749065 (= e!418026 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19967 a!3186) j!159) a!3186 mask!3328) lt!333025))))

(declare-fun b!749066 () Bool)

(declare-fun Unit!25701 () Unit!25698)

(assert (=> b!749066 (= e!418017 Unit!25701)))

(assert (=> b!749066 false))

(declare-fun b!749067 () Bool)

(declare-fun e!418019 () Bool)

(assert (=> b!749067 (= e!418019 (validKeyInArray!0 lt!333023))))

(declare-fun b!749068 () Bool)

(declare-fun res!505482 () Bool)

(assert (=> b!749068 (=> res!505482 e!418023)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41714 (_ BitVec 32)) SeekEntryResult!7574)

(assert (=> b!749068 (= res!505482 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19967 a!3186) j!159) a!3186 mask!3328) lt!333019)))))

(declare-fun b!749069 () Bool)

(assert (=> b!749069 (= e!418021 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19967 a!3186) j!159) a!3186 mask!3328) lt!333019))))

(declare-fun b!749070 () Bool)

(declare-fun res!505485 () Bool)

(assert (=> b!749070 (=> res!505485 e!418023)))

(assert (=> b!749070 (= res!505485 (= (select (store (arr!19967 a!3186) i!1173 k!2102) index!1321) lt!333023))))

(declare-fun b!749071 () Bool)

(assert (=> b!749071 (= e!418023 e!418019)))

(declare-fun res!505490 () Bool)

(assert (=> b!749071 (=> res!505490 e!418019)))

(assert (=> b!749071 (= res!505490 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!749071 (= (select (store (arr!19967 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!333018 () Unit!25698)

(assert (=> b!749071 (= lt!333018 e!418017)))

(declare-fun c!82170 () Bool)

(assert (=> b!749071 (= c!82170 (= (select (store (arr!19967 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749072 () Bool)

(declare-fun res!505488 () Bool)

(assert (=> b!749072 (=> (not res!505488) (not e!418020))))

(assert (=> b!749072 (= res!505488 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20388 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20388 a!3186))))))

(declare-fun b!749073 () Bool)

(assert (=> b!749073 (= e!418020 e!418018)))

(declare-fun res!505496 () Bool)

(assert (=> b!749073 (=> (not res!505496) (not e!418018))))

(assert (=> b!749073 (= res!505496 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19967 a!3186) j!159) mask!3328) (select (arr!19967 a!3186) j!159) a!3186 mask!3328) lt!333025))))

(assert (=> b!749073 (= lt!333025 (Intermediate!7574 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749074 () Bool)

(assert (=> b!749074 (= e!418022 e!418020)))

(declare-fun res!505487 () Bool)

(assert (=> b!749074 (=> (not res!505487) (not e!418020))))

(declare-fun lt!333020 () SeekEntryResult!7574)

(assert (=> b!749074 (= res!505487 (or (= lt!333020 (MissingZero!7574 i!1173)) (= lt!333020 (MissingVacant!7574 i!1173))))))

(assert (=> b!749074 (= lt!333020 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749075 () Bool)

(declare-fun res!505484 () Bool)

(assert (=> b!749075 (=> (not res!505484) (not e!418022))))

(assert (=> b!749075 (= res!505484 (validKeyInArray!0 (select (arr!19967 a!3186) j!159)))))

(declare-fun b!749076 () Bool)

(declare-fun res!505491 () Bool)

(assert (=> b!749076 (=> (not res!505491) (not e!418020))))

(assert (=> b!749076 (= res!505491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749077 () Bool)

(declare-fun res!505492 () Bool)

(assert (=> b!749077 (=> (not res!505492) (not e!418018))))

(assert (=> b!749077 (= res!505492 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19967 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749078 () Bool)

(assert (=> b!749078 (= e!418026 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19967 a!3186) j!159) a!3186 mask!3328) (Found!7574 j!159)))))

(assert (= (and start!65588 res!505494) b!749057))

(assert (= (and b!749057 res!505489) b!749075))

(assert (= (and b!749075 res!505484) b!749061))

(assert (= (and b!749061 res!505493) b!749063))

(assert (= (and b!749063 res!505495) b!749074))

(assert (= (and b!749074 res!505487) b!749076))

(assert (= (and b!749076 res!505491) b!749064))

(assert (= (and b!749064 res!505480) b!749072))

(assert (= (and b!749072 res!505488) b!749073))

(assert (= (and b!749073 res!505496) b!749077))

(assert (= (and b!749077 res!505492) b!749059))

(assert (= (and b!749059 c!82169) b!749065))

(assert (= (and b!749059 (not c!82169)) b!749078))

(assert (= (and b!749059 res!505497) b!749058))

(assert (= (and b!749058 res!505483) b!749060))

(assert (= (and b!749060 res!505486) b!749069))

(assert (= (and b!749060 (not res!505481)) b!749068))

(assert (= (and b!749068 (not res!505482)) b!749070))

(assert (= (and b!749070 (not res!505485)) b!749071))

(assert (= (and b!749071 c!82170) b!749066))

(assert (= (and b!749071 (not c!82170)) b!749062))

(assert (= (and b!749071 (not res!505490)) b!749067))

(declare-fun m!698819 () Bool)

(assert (=> b!749078 m!698819))

(assert (=> b!749078 m!698819))

(declare-fun m!698821 () Bool)

(assert (=> b!749078 m!698821))

(declare-fun m!698823 () Bool)

(assert (=> b!749063 m!698823))

(assert (=> b!749069 m!698819))

(assert (=> b!749069 m!698819))

(declare-fun m!698825 () Bool)

(assert (=> b!749069 m!698825))

(assert (=> b!749068 m!698819))

(assert (=> b!749068 m!698819))

(assert (=> b!749068 m!698821))

(declare-fun m!698827 () Bool)

(assert (=> b!749077 m!698827))

(declare-fun m!698829 () Bool)

(assert (=> b!749067 m!698829))

(declare-fun m!698831 () Bool)

(assert (=> b!749058 m!698831))

(declare-fun m!698833 () Bool)

(assert (=> b!749058 m!698833))

(declare-fun m!698835 () Bool)

(assert (=> b!749058 m!698835))

(declare-fun m!698837 () Bool)

(assert (=> b!749058 m!698837))

(declare-fun m!698839 () Bool)

(assert (=> b!749058 m!698839))

(assert (=> b!749058 m!698831))

(assert (=> b!749071 m!698837))

(declare-fun m!698841 () Bool)

(assert (=> b!749071 m!698841))

(declare-fun m!698843 () Bool)

(assert (=> b!749076 m!698843))

(assert (=> b!749060 m!698819))

(assert (=> b!749060 m!698819))

(declare-fun m!698845 () Bool)

(assert (=> b!749060 m!698845))

(declare-fun m!698847 () Bool)

(assert (=> b!749060 m!698847))

(declare-fun m!698849 () Bool)

(assert (=> b!749060 m!698849))

(assert (=> b!749070 m!698837))

(assert (=> b!749070 m!698841))

(assert (=> b!749073 m!698819))

(assert (=> b!749073 m!698819))

(declare-fun m!698851 () Bool)

(assert (=> b!749073 m!698851))

(assert (=> b!749073 m!698851))

(assert (=> b!749073 m!698819))

(declare-fun m!698853 () Bool)

(assert (=> b!749073 m!698853))

(declare-fun m!698855 () Bool)

(assert (=> b!749074 m!698855))

(declare-fun m!698857 () Bool)

(assert (=> b!749061 m!698857))

(declare-fun m!698859 () Bool)

(assert (=> start!65588 m!698859))

(declare-fun m!698861 () Bool)

(assert (=> start!65588 m!698861))

(assert (=> b!749075 m!698819))

(assert (=> b!749075 m!698819))

(declare-fun m!698863 () Bool)

(assert (=> b!749075 m!698863))

(declare-fun m!698865 () Bool)

(assert (=> b!749064 m!698865))

(assert (=> b!749065 m!698819))

(assert (=> b!749065 m!698819))

(declare-fun m!698867 () Bool)

(assert (=> b!749065 m!698867))

(push 1)

