; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67174 () Bool)

(assert start!67174)

(declare-fun b!776101 () Bool)

(declare-fun e!431915 () Bool)

(declare-fun e!431919 () Bool)

(assert (=> b!776101 (= e!431915 e!431919)))

(declare-fun res!525099 () Bool)

(assert (=> b!776101 (=> (not res!525099) (not e!431919))))

(declare-datatypes ((SeekEntryResult!7941 0))(
  ( (MissingZero!7941 (index!34131 (_ BitVec 32))) (Found!7941 (index!34132 (_ BitVec 32))) (Intermediate!7941 (undefined!8753 Bool) (index!34133 (_ BitVec 32)) (x!65101 (_ BitVec 32))) (Undefined!7941) (MissingVacant!7941 (index!34134 (_ BitVec 32))) )
))
(declare-fun lt!345788 () SeekEntryResult!7941)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776101 (= res!525099 (or (= lt!345788 (MissingZero!7941 i!1173)) (= lt!345788 (MissingVacant!7941 i!1173))))))

(declare-datatypes ((array!42484 0))(
  ( (array!42485 (arr!20334 (Array (_ BitVec 32) (_ BitVec 64))) (size!20755 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42484)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42484 (_ BitVec 32)) SeekEntryResult!7941)

(assert (=> b!776101 (= lt!345788 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!431920 () Bool)

(declare-fun b!776102 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!345786 () SeekEntryResult!7941)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42484 (_ BitVec 32)) SeekEntryResult!7941)

(assert (=> b!776102 (= e!431920 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20334 a!3186) j!159) a!3186 mask!3328) lt!345786))))

(declare-fun b!776103 () Bool)

(declare-fun e!431913 () Bool)

(declare-fun e!431912 () Bool)

(assert (=> b!776103 (= e!431913 e!431912)))

(declare-fun res!525097 () Bool)

(assert (=> b!776103 (=> (not res!525097) (not e!431912))))

(declare-fun lt!345787 () SeekEntryResult!7941)

(declare-fun lt!345789 () SeekEntryResult!7941)

(assert (=> b!776103 (= res!525097 (= lt!345787 lt!345789))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!345782 () array!42484)

(declare-fun lt!345784 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42484 (_ BitVec 32)) SeekEntryResult!7941)

(assert (=> b!776103 (= lt!345789 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345784 lt!345782 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776103 (= lt!345787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345784 mask!3328) lt!345784 lt!345782 mask!3328))))

(assert (=> b!776103 (= lt!345784 (select (store (arr!20334 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776103 (= lt!345782 (array!42485 (store (arr!20334 a!3186) i!1173 k!2102) (size!20755 a!3186)))))

(declare-fun b!776104 () Bool)

(declare-fun e!431918 () Bool)

(assert (=> b!776104 (= e!431918 true)))

(declare-fun lt!345785 () SeekEntryResult!7941)

(assert (=> b!776104 (= lt!345785 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20334 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776105 () Bool)

(declare-fun res!525098 () Bool)

(assert (=> b!776105 (=> (not res!525098) (not e!431919))))

(assert (=> b!776105 (= res!525098 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20755 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20755 a!3186))))))

(declare-fun b!776106 () Bool)

(declare-fun res!525092 () Bool)

(assert (=> b!776106 (=> (not res!525092) (not e!431913))))

(declare-fun e!431914 () Bool)

(assert (=> b!776106 (= res!525092 e!431914)))

(declare-fun c!85905 () Bool)

(assert (=> b!776106 (= c!85905 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776107 () Bool)

(assert (=> b!776107 (= e!431912 (not e!431918))))

(declare-fun res!525095 () Bool)

(assert (=> b!776107 (=> res!525095 e!431918)))

(assert (=> b!776107 (= res!525095 (or (not (is-Intermediate!7941 lt!345789)) (bvslt x!1131 (x!65101 lt!345789)) (not (= x!1131 (x!65101 lt!345789))) (not (= index!1321 (index!34133 lt!345789)))))))

(declare-fun e!431916 () Bool)

(assert (=> b!776107 e!431916))

(declare-fun res!525103 () Bool)

(assert (=> b!776107 (=> (not res!525103) (not e!431916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42484 (_ BitVec 32)) Bool)

(assert (=> b!776107 (= res!525103 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26776 0))(
  ( (Unit!26777) )
))
(declare-fun lt!345790 () Unit!26776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26776)

(assert (=> b!776107 (= lt!345790 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776108 () Bool)

(declare-fun res!525101 () Bool)

(assert (=> b!776108 (=> (not res!525101) (not e!431915))))

(assert (=> b!776108 (= res!525101 (and (= (size!20755 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20755 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20755 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776109 () Bool)

(declare-fun res!525105 () Bool)

(assert (=> b!776109 (=> (not res!525105) (not e!431919))))

(assert (=> b!776109 (= res!525105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776110 () Bool)

(declare-fun lt!345783 () SeekEntryResult!7941)

(assert (=> b!776110 (= e!431914 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20334 a!3186) j!159) a!3186 mask!3328) lt!345783))))

(declare-fun b!776111 () Bool)

(assert (=> b!776111 (= e!431914 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20334 a!3186) j!159) a!3186 mask!3328) (Found!7941 j!159)))))

(declare-fun b!776112 () Bool)

(declare-fun res!525094 () Bool)

(assert (=> b!776112 (=> (not res!525094) (not e!431915))))

(declare-fun arrayContainsKey!0 (array!42484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776112 (= res!525094 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776114 () Bool)

(declare-fun res!525100 () Bool)

(assert (=> b!776114 (=> (not res!525100) (not e!431915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776114 (= res!525100 (validKeyInArray!0 (select (arr!20334 a!3186) j!159)))))

(declare-fun b!776115 () Bool)

(assert (=> b!776115 (= e!431916 e!431920)))

(declare-fun res!525106 () Bool)

(assert (=> b!776115 (=> (not res!525106) (not e!431920))))

(assert (=> b!776115 (= res!525106 (= (seekEntryOrOpen!0 (select (arr!20334 a!3186) j!159) a!3186 mask!3328) lt!345786))))

(assert (=> b!776115 (= lt!345786 (Found!7941 j!159))))

(declare-fun b!776116 () Bool)

(assert (=> b!776116 (= e!431919 e!431913)))

(declare-fun res!525091 () Bool)

(assert (=> b!776116 (=> (not res!525091) (not e!431913))))

(assert (=> b!776116 (= res!525091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20334 a!3186) j!159) mask!3328) (select (arr!20334 a!3186) j!159) a!3186 mask!3328) lt!345783))))

(assert (=> b!776116 (= lt!345783 (Intermediate!7941 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776117 () Bool)

(declare-fun res!525093 () Bool)

(assert (=> b!776117 (=> (not res!525093) (not e!431915))))

(assert (=> b!776117 (= res!525093 (validKeyInArray!0 k!2102))))

(declare-fun b!776118 () Bool)

(declare-fun res!525102 () Bool)

(assert (=> b!776118 (=> (not res!525102) (not e!431919))))

(declare-datatypes ((List!14389 0))(
  ( (Nil!14386) (Cons!14385 (h!15493 (_ BitVec 64)) (t!20712 List!14389)) )
))
(declare-fun arrayNoDuplicates!0 (array!42484 (_ BitVec 32) List!14389) Bool)

(assert (=> b!776118 (= res!525102 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14386))))

(declare-fun b!776113 () Bool)

(declare-fun res!525104 () Bool)

(assert (=> b!776113 (=> (not res!525104) (not e!431913))))

(assert (=> b!776113 (= res!525104 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20334 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!525096 () Bool)

(assert (=> start!67174 (=> (not res!525096) (not e!431915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67174 (= res!525096 (validMask!0 mask!3328))))

(assert (=> start!67174 e!431915))

(assert (=> start!67174 true))

(declare-fun array_inv!16108 (array!42484) Bool)

(assert (=> start!67174 (array_inv!16108 a!3186)))

(assert (= (and start!67174 res!525096) b!776108))

(assert (= (and b!776108 res!525101) b!776114))

(assert (= (and b!776114 res!525100) b!776117))

(assert (= (and b!776117 res!525093) b!776112))

(assert (= (and b!776112 res!525094) b!776101))

(assert (= (and b!776101 res!525099) b!776109))

(assert (= (and b!776109 res!525105) b!776118))

(assert (= (and b!776118 res!525102) b!776105))

(assert (= (and b!776105 res!525098) b!776116))

(assert (= (and b!776116 res!525091) b!776113))

(assert (= (and b!776113 res!525104) b!776106))

(assert (= (and b!776106 c!85905) b!776110))

(assert (= (and b!776106 (not c!85905)) b!776111))

(assert (= (and b!776106 res!525092) b!776103))

(assert (= (and b!776103 res!525097) b!776107))

(assert (= (and b!776107 res!525103) b!776115))

(assert (= (and b!776115 res!525106) b!776102))

(assert (= (and b!776107 (not res!525095)) b!776104))

(declare-fun m!720289 () Bool)

(assert (=> b!776117 m!720289))

(declare-fun m!720291 () Bool)

(assert (=> b!776111 m!720291))

(assert (=> b!776111 m!720291))

(declare-fun m!720293 () Bool)

(assert (=> b!776111 m!720293))

(declare-fun m!720295 () Bool)

(assert (=> b!776103 m!720295))

(declare-fun m!720297 () Bool)

(assert (=> b!776103 m!720297))

(declare-fun m!720299 () Bool)

(assert (=> b!776103 m!720299))

(declare-fun m!720301 () Bool)

(assert (=> b!776103 m!720301))

(declare-fun m!720303 () Bool)

(assert (=> b!776103 m!720303))

(assert (=> b!776103 m!720301))

(assert (=> b!776114 m!720291))

(assert (=> b!776114 m!720291))

(declare-fun m!720305 () Bool)

(assert (=> b!776114 m!720305))

(declare-fun m!720307 () Bool)

(assert (=> b!776107 m!720307))

(declare-fun m!720309 () Bool)

(assert (=> b!776107 m!720309))

(assert (=> b!776116 m!720291))

(assert (=> b!776116 m!720291))

(declare-fun m!720311 () Bool)

(assert (=> b!776116 m!720311))

(assert (=> b!776116 m!720311))

(assert (=> b!776116 m!720291))

(declare-fun m!720313 () Bool)

(assert (=> b!776116 m!720313))

(assert (=> b!776115 m!720291))

(assert (=> b!776115 m!720291))

(declare-fun m!720315 () Bool)

(assert (=> b!776115 m!720315))

(declare-fun m!720317 () Bool)

(assert (=> b!776109 m!720317))

(declare-fun m!720319 () Bool)

(assert (=> start!67174 m!720319))

(declare-fun m!720321 () Bool)

(assert (=> start!67174 m!720321))

(declare-fun m!720323 () Bool)

(assert (=> b!776118 m!720323))

(declare-fun m!720325 () Bool)

(assert (=> b!776112 m!720325))

(declare-fun m!720327 () Bool)

(assert (=> b!776101 m!720327))

(assert (=> b!776104 m!720291))

(assert (=> b!776104 m!720291))

(assert (=> b!776104 m!720293))

(assert (=> b!776110 m!720291))

(assert (=> b!776110 m!720291))

(declare-fun m!720329 () Bool)

(assert (=> b!776110 m!720329))

(declare-fun m!720331 () Bool)

(assert (=> b!776113 m!720331))

(assert (=> b!776102 m!720291))

(assert (=> b!776102 m!720291))

(declare-fun m!720333 () Bool)

(assert (=> b!776102 m!720333))

(push 1)

