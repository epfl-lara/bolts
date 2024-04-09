; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65596 () Bool)

(assert start!65596)

(declare-fun b!749321 () Bool)

(declare-fun e!418155 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!749321 (= e!418155 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun e!418158 () Bool)

(assert (=> b!749321 e!418158))

(declare-fun res!505706 () Bool)

(assert (=> b!749321 (=> (not res!505706) (not e!418158))))

(declare-fun lt!333156 () (_ BitVec 64))

(assert (=> b!749321 (= res!505706 (= lt!333156 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25714 0))(
  ( (Unit!25715) )
))
(declare-fun lt!333153 () Unit!25714)

(declare-fun e!418151 () Unit!25714)

(assert (=> b!749321 (= lt!333153 e!418151)))

(declare-fun c!82193 () Bool)

(assert (=> b!749321 (= c!82193 (= lt!333156 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749322 () Bool)

(declare-fun res!505697 () Bool)

(declare-fun e!418156 () Bool)

(assert (=> b!749322 (=> (not res!505697) (not e!418156))))

(declare-datatypes ((array!41722 0))(
  ( (array!41723 (arr!19971 (Array (_ BitVec 32) (_ BitVec 64))) (size!20392 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41722)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749322 (= res!505697 (validKeyInArray!0 (select (arr!19971 a!3186) j!159)))))

(declare-fun b!749323 () Bool)

(declare-fun e!418149 () Bool)

(assert (=> b!749323 (= e!418149 e!418155)))

(declare-fun res!505703 () Bool)

(assert (=> b!749323 (=> res!505703 e!418155)))

(declare-fun lt!333155 () (_ BitVec 64))

(assert (=> b!749323 (= res!505703 (= lt!333156 lt!333155))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!749323 (= lt!333156 (select (store (arr!19971 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749324 () Bool)

(declare-fun e!418153 () Bool)

(declare-fun e!418148 () Bool)

(assert (=> b!749324 (= e!418153 e!418148)))

(declare-fun res!505699 () Bool)

(assert (=> b!749324 (=> (not res!505699) (not e!418148))))

(declare-datatypes ((SeekEntryResult!7578 0))(
  ( (MissingZero!7578 (index!32679 (_ BitVec 32))) (Found!7578 (index!32680 (_ BitVec 32))) (Intermediate!7578 (undefined!8390 Bool) (index!32681 (_ BitVec 32)) (x!63641 (_ BitVec 32))) (Undefined!7578) (MissingVacant!7578 (index!32682 (_ BitVec 32))) )
))
(declare-fun lt!333154 () SeekEntryResult!7578)

(declare-fun lt!333151 () SeekEntryResult!7578)

(assert (=> b!749324 (= res!505699 (= lt!333154 lt!333151))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!333152 () array!41722)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41722 (_ BitVec 32)) SeekEntryResult!7578)

(assert (=> b!749324 (= lt!333151 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333155 lt!333152 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749324 (= lt!333154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333155 mask!3328) lt!333155 lt!333152 mask!3328))))

(assert (=> b!749324 (= lt!333155 (select (store (arr!19971 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749324 (= lt!333152 (array!41723 (store (arr!19971 a!3186) i!1173 k!2102) (size!20392 a!3186)))))

(declare-fun b!749325 () Bool)

(declare-fun res!505696 () Bool)

(assert (=> b!749325 (=> (not res!505696) (not e!418153))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!749325 (= res!505696 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19971 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749326 () Bool)

(declare-fun res!505708 () Bool)

(assert (=> b!749326 (=> (not res!505708) (not e!418156))))

(assert (=> b!749326 (= res!505708 (validKeyInArray!0 k!2102))))

(declare-fun lt!333157 () SeekEntryResult!7578)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!418157 () Bool)

(declare-fun b!749327 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41722 (_ BitVec 32)) SeekEntryResult!7578)

(assert (=> b!749327 (= e!418157 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19971 a!3186) j!159) a!3186 mask!3328) lt!333157))))

(declare-fun b!749328 () Bool)

(declare-fun Unit!25716 () Unit!25714)

(assert (=> b!749328 (= e!418151 Unit!25716)))

(declare-fun b!749329 () Bool)

(assert (=> b!749329 (= e!418148 (not e!418149))))

(declare-fun res!505712 () Bool)

(assert (=> b!749329 (=> res!505712 e!418149)))

(assert (=> b!749329 (= res!505712 (or (not (is-Intermediate!7578 lt!333151)) (bvslt x!1131 (x!63641 lt!333151)) (not (= x!1131 (x!63641 lt!333151))) (not (= index!1321 (index!32681 lt!333151)))))))

(assert (=> b!749329 e!418157))

(declare-fun res!505705 () Bool)

(assert (=> b!749329 (=> (not res!505705) (not e!418157))))

(declare-fun lt!333150 () SeekEntryResult!7578)

(assert (=> b!749329 (= res!505705 (= lt!333150 lt!333157))))

(assert (=> b!749329 (= lt!333157 (Found!7578 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41722 (_ BitVec 32)) SeekEntryResult!7578)

(assert (=> b!749329 (= lt!333150 (seekEntryOrOpen!0 (select (arr!19971 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41722 (_ BitVec 32)) Bool)

(assert (=> b!749329 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333158 () Unit!25714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41722 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25714)

(assert (=> b!749329 (= lt!333158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749330 () Bool)

(assert (=> b!749330 (= e!418158 (= (seekEntryOrOpen!0 lt!333155 lt!333152 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333155 lt!333152 mask!3328)))))

(declare-fun b!749331 () Bool)

(declare-fun res!505713 () Bool)

(assert (=> b!749331 (=> (not res!505713) (not e!418153))))

(declare-fun e!418154 () Bool)

(assert (=> b!749331 (= res!505713 e!418154)))

(declare-fun c!82194 () Bool)

(assert (=> b!749331 (= c!82194 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749332 () Bool)

(declare-fun res!505698 () Bool)

(assert (=> b!749332 (=> res!505698 e!418149)))

(assert (=> b!749332 (= res!505698 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19971 a!3186) j!159) a!3186 mask!3328) lt!333157)))))

(declare-fun b!749333 () Bool)

(declare-fun res!505707 () Bool)

(declare-fun e!418150 () Bool)

(assert (=> b!749333 (=> (not res!505707) (not e!418150))))

(assert (=> b!749333 (= res!505707 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20392 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20392 a!3186))))))

(declare-fun b!749334 () Bool)

(declare-fun Unit!25717 () Unit!25714)

(assert (=> b!749334 (= e!418151 Unit!25717)))

(assert (=> b!749334 false))

(declare-fun b!749335 () Bool)

(assert (=> b!749335 (= e!418154 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19971 a!3186) j!159) a!3186 mask!3328) (Found!7578 j!159)))))

(declare-fun b!749336 () Bool)

(declare-fun res!505711 () Bool)

(assert (=> b!749336 (=> (not res!505711) (not e!418156))))

(assert (=> b!749336 (= res!505711 (and (= (size!20392 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20392 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20392 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749337 () Bool)

(assert (=> b!749337 (= e!418150 e!418153)))

(declare-fun res!505710 () Bool)

(assert (=> b!749337 (=> (not res!505710) (not e!418153))))

(declare-fun lt!333149 () SeekEntryResult!7578)

(assert (=> b!749337 (= res!505710 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19971 a!3186) j!159) mask!3328) (select (arr!19971 a!3186) j!159) a!3186 mask!3328) lt!333149))))

(assert (=> b!749337 (= lt!333149 (Intermediate!7578 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749338 () Bool)

(declare-fun res!505702 () Bool)

(assert (=> b!749338 (=> (not res!505702) (not e!418150))))

(declare-datatypes ((List!14026 0))(
  ( (Nil!14023) (Cons!14022 (h!15094 (_ BitVec 64)) (t!20349 List!14026)) )
))
(declare-fun arrayNoDuplicates!0 (array!41722 (_ BitVec 32) List!14026) Bool)

(assert (=> b!749338 (= res!505702 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14023))))

(declare-fun res!505701 () Bool)

(assert (=> start!65596 (=> (not res!505701) (not e!418156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65596 (= res!505701 (validMask!0 mask!3328))))

(assert (=> start!65596 e!418156))

(assert (=> start!65596 true))

(declare-fun array_inv!15745 (array!41722) Bool)

(assert (=> start!65596 (array_inv!15745 a!3186)))

(declare-fun b!749339 () Bool)

(declare-fun res!505709 () Bool)

(assert (=> b!749339 (=> (not res!505709) (not e!418156))))

(declare-fun arrayContainsKey!0 (array!41722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749339 (= res!505709 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749340 () Bool)

(declare-fun res!505700 () Bool)

(assert (=> b!749340 (=> (not res!505700) (not e!418150))))

(assert (=> b!749340 (= res!505700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749341 () Bool)

(assert (=> b!749341 (= e!418154 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19971 a!3186) j!159) a!3186 mask!3328) lt!333149))))

(declare-fun b!749342 () Bool)

(assert (=> b!749342 (= e!418156 e!418150)))

(declare-fun res!505704 () Bool)

(assert (=> b!749342 (=> (not res!505704) (not e!418150))))

(declare-fun lt!333148 () SeekEntryResult!7578)

(assert (=> b!749342 (= res!505704 (or (= lt!333148 (MissingZero!7578 i!1173)) (= lt!333148 (MissingVacant!7578 i!1173))))))

(assert (=> b!749342 (= lt!333148 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65596 res!505701) b!749336))

(assert (= (and b!749336 res!505711) b!749322))

(assert (= (and b!749322 res!505697) b!749326))

(assert (= (and b!749326 res!505708) b!749339))

(assert (= (and b!749339 res!505709) b!749342))

(assert (= (and b!749342 res!505704) b!749340))

(assert (= (and b!749340 res!505700) b!749338))

(assert (= (and b!749338 res!505702) b!749333))

(assert (= (and b!749333 res!505707) b!749337))

(assert (= (and b!749337 res!505710) b!749325))

(assert (= (and b!749325 res!505696) b!749331))

(assert (= (and b!749331 c!82194) b!749341))

(assert (= (and b!749331 (not c!82194)) b!749335))

(assert (= (and b!749331 res!505713) b!749324))

(assert (= (and b!749324 res!505699) b!749329))

(assert (= (and b!749329 res!505705) b!749327))

(assert (= (and b!749329 (not res!505712)) b!749332))

(assert (= (and b!749332 (not res!505698)) b!749323))

(assert (= (and b!749323 (not res!505703)) b!749321))

(assert (= (and b!749321 c!82193) b!749334))

(assert (= (and b!749321 (not c!82193)) b!749328))

(assert (= (and b!749321 res!505706) b!749330))

(declare-fun m!699025 () Bool)

(assert (=> b!749337 m!699025))

(assert (=> b!749337 m!699025))

(declare-fun m!699027 () Bool)

(assert (=> b!749337 m!699027))

(assert (=> b!749337 m!699027))

(assert (=> b!749337 m!699025))

(declare-fun m!699029 () Bool)

(assert (=> b!749337 m!699029))

(assert (=> b!749329 m!699025))

(assert (=> b!749329 m!699025))

(declare-fun m!699031 () Bool)

(assert (=> b!749329 m!699031))

(declare-fun m!699033 () Bool)

(assert (=> b!749329 m!699033))

(declare-fun m!699035 () Bool)

(assert (=> b!749329 m!699035))

(declare-fun m!699037 () Bool)

(assert (=> b!749323 m!699037))

(declare-fun m!699039 () Bool)

(assert (=> b!749323 m!699039))

(declare-fun m!699041 () Bool)

(assert (=> b!749326 m!699041))

(declare-fun m!699043 () Bool)

(assert (=> b!749330 m!699043))

(declare-fun m!699045 () Bool)

(assert (=> b!749330 m!699045))

(declare-fun m!699047 () Bool)

(assert (=> b!749324 m!699047))

(declare-fun m!699049 () Bool)

(assert (=> b!749324 m!699049))

(declare-fun m!699051 () Bool)

(assert (=> b!749324 m!699051))

(assert (=> b!749324 m!699047))

(assert (=> b!749324 m!699037))

(declare-fun m!699053 () Bool)

(assert (=> b!749324 m!699053))

(assert (=> b!749332 m!699025))

(assert (=> b!749332 m!699025))

(declare-fun m!699055 () Bool)

(assert (=> b!749332 m!699055))

(declare-fun m!699057 () Bool)

(assert (=> start!65596 m!699057))

(declare-fun m!699059 () Bool)

(assert (=> start!65596 m!699059))

(declare-fun m!699061 () Bool)

(assert (=> b!749342 m!699061))

(assert (=> b!749341 m!699025))

(assert (=> b!749341 m!699025))

(declare-fun m!699063 () Bool)

(assert (=> b!749341 m!699063))

(declare-fun m!699065 () Bool)

(assert (=> b!749338 m!699065))

(assert (=> b!749322 m!699025))

(assert (=> b!749322 m!699025))

(declare-fun m!699067 () Bool)

(assert (=> b!749322 m!699067))

(declare-fun m!699069 () Bool)

(assert (=> b!749340 m!699069))

(declare-fun m!699071 () Bool)

(assert (=> b!749325 m!699071))

(assert (=> b!749327 m!699025))

(assert (=> b!749327 m!699025))

(declare-fun m!699073 () Bool)

(assert (=> b!749327 m!699073))

(declare-fun m!699075 () Bool)

(assert (=> b!749339 m!699075))

(assert (=> b!749335 m!699025))

(assert (=> b!749335 m!699025))

(assert (=> b!749335 m!699055))

(push 1)

