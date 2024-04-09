; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65200 () Bool)

(assert start!65200)

(declare-fun b!737202 () Bool)

(declare-fun res!495624 () Bool)

(declare-fun e!412374 () Bool)

(assert (=> b!737202 (=> (not res!495624) (not e!412374))))

(declare-datatypes ((array!41326 0))(
  ( (array!41327 (arr!19773 (Array (_ BitVec 32) (_ BitVec 64))) (size!20194 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41326)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41326 (_ BitVec 32)) Bool)

(assert (=> b!737202 (= res!495624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737203 () Bool)

(declare-fun res!495615 () Bool)

(declare-fun e!412383 () Bool)

(assert (=> b!737203 (=> (not res!495615) (not e!412383))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737203 (= res!495615 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19773 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737205 () Bool)

(declare-fun res!495610 () Bool)

(assert (=> b!737205 (=> (not res!495610) (not e!412374))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737205 (= res!495610 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20194 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20194 a!3186))))))

(declare-fun b!737206 () Bool)

(declare-fun res!495621 () Bool)

(declare-fun e!412372 () Bool)

(assert (=> b!737206 (=> (not res!495621) (not e!412372))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!737206 (= res!495621 (and (= (size!20194 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20194 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20194 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!412373 () Bool)

(declare-fun b!737207 () Bool)

(declare-datatypes ((SeekEntryResult!7380 0))(
  ( (MissingZero!7380 (index!31887 (_ BitVec 32))) (Found!7380 (index!31888 (_ BitVec 32))) (Intermediate!7380 (undefined!8192 Bool) (index!31889 (_ BitVec 32)) (x!62915 (_ BitVec 32))) (Undefined!7380) (MissingVacant!7380 (index!31890 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41326 (_ BitVec 32)) SeekEntryResult!7380)

(assert (=> b!737207 (= e!412373 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) (Found!7380 j!159)))))

(declare-fun b!737208 () Bool)

(declare-fun res!495623 () Bool)

(assert (=> b!737208 (=> (not res!495623) (not e!412374))))

(declare-datatypes ((List!13828 0))(
  ( (Nil!13825) (Cons!13824 (h!14896 (_ BitVec 64)) (t!20151 List!13828)) )
))
(declare-fun arrayNoDuplicates!0 (array!41326 (_ BitVec 32) List!13828) Bool)

(assert (=> b!737208 (= res!495623 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13825))))

(declare-fun b!737209 () Bool)

(declare-datatypes ((Unit!25138 0))(
  ( (Unit!25139) )
))
(declare-fun e!412377 () Unit!25138)

(declare-fun Unit!25140 () Unit!25138)

(assert (=> b!737209 (= e!412377 Unit!25140)))

(declare-fun lt!327091 () SeekEntryResult!7380)

(assert (=> b!737209 (= lt!327091 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19773 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327088 () (_ BitVec 32))

(declare-fun lt!327080 () SeekEntryResult!7380)

(assert (=> b!737209 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327088 resIntermediateIndex!5 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327080)))

(declare-fun b!737210 () Bool)

(declare-fun e!412379 () Bool)

(assert (=> b!737210 (= e!412379 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327088 resIntermediateIndex!5 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327080)))))

(declare-fun b!737211 () Bool)

(declare-fun e!412381 () Bool)

(declare-fun e!412382 () Bool)

(assert (=> b!737211 (= e!412381 e!412382)))

(declare-fun res!495620 () Bool)

(assert (=> b!737211 (=> res!495620 e!412382)))

(assert (=> b!737211 (= res!495620 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327088 #b00000000000000000000000000000000) (bvsge lt!327088 (size!20194 a!3186))))))

(declare-fun lt!327079 () Unit!25138)

(assert (=> b!737211 (= lt!327079 e!412377)))

(declare-fun c!81180 () Bool)

(declare-fun lt!327082 () Bool)

(assert (=> b!737211 (= c!81180 lt!327082)))

(assert (=> b!737211 (= lt!327082 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737211 (= lt!327088 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!327085 () SeekEntryResult!7380)

(declare-fun b!737212 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41326 (_ BitVec 32)) SeekEntryResult!7380)

(assert (=> b!737212 (= e!412373 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327085))))

(declare-fun b!737213 () Bool)

(declare-fun res!495613 () Bool)

(assert (=> b!737213 (=> (not res!495613) (not e!412372))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737213 (= res!495613 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737214 () Bool)

(declare-fun res!495622 () Bool)

(assert (=> b!737214 (=> (not res!495622) (not e!412383))))

(assert (=> b!737214 (= res!495622 e!412373)))

(declare-fun c!81179 () Bool)

(assert (=> b!737214 (= c!81179 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!327090 () SeekEntryResult!7380)

(declare-fun e!412380 () Bool)

(declare-fun b!737215 () Bool)

(assert (=> b!737215 (= e!412380 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327090))))

(declare-fun b!737216 () Bool)

(declare-fun res!495607 () Bool)

(assert (=> b!737216 (=> (not res!495607) (not e!412372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737216 (= res!495607 (validKeyInArray!0 (select (arr!19773 a!3186) j!159)))))

(declare-fun b!737217 () Bool)

(declare-fun e!412376 () Bool)

(assert (=> b!737217 (= e!412383 e!412376)))

(declare-fun res!495611 () Bool)

(assert (=> b!737217 (=> (not res!495611) (not e!412376))))

(declare-fun lt!327083 () SeekEntryResult!7380)

(declare-fun lt!327084 () SeekEntryResult!7380)

(assert (=> b!737217 (= res!495611 (= lt!327083 lt!327084))))

(declare-fun lt!327089 () (_ BitVec 64))

(declare-fun lt!327092 () array!41326)

(assert (=> b!737217 (= lt!327084 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327089 lt!327092 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737217 (= lt!327083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327089 mask!3328) lt!327089 lt!327092 mask!3328))))

(assert (=> b!737217 (= lt!327089 (select (store (arr!19773 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737217 (= lt!327092 (array!41327 (store (arr!19773 a!3186) i!1173 k!2102) (size!20194 a!3186)))))

(declare-fun b!737204 () Bool)

(declare-fun res!495614 () Bool)

(assert (=> b!737204 (=> (not res!495614) (not e!412372))))

(assert (=> b!737204 (= res!495614 (validKeyInArray!0 k!2102))))

(declare-fun res!495619 () Bool)

(assert (=> start!65200 (=> (not res!495619) (not e!412372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65200 (= res!495619 (validMask!0 mask!3328))))

(assert (=> start!65200 e!412372))

(assert (=> start!65200 true))

(declare-fun array_inv!15547 (array!41326) Bool)

(assert (=> start!65200 (array_inv!15547 a!3186)))

(declare-fun b!737218 () Bool)

(declare-fun e!412378 () Bool)

(assert (=> b!737218 (= e!412378 e!412380)))

(declare-fun res!495608 () Bool)

(assert (=> b!737218 (=> (not res!495608) (not e!412380))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41326 (_ BitVec 32)) SeekEntryResult!7380)

(assert (=> b!737218 (= res!495608 (= (seekEntryOrOpen!0 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327090))))

(assert (=> b!737218 (= lt!327090 (Found!7380 j!159))))

(declare-fun b!737219 () Bool)

(declare-fun Unit!25141 () Unit!25138)

(assert (=> b!737219 (= e!412377 Unit!25141)))

(assert (=> b!737219 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327088 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327085)))

(declare-fun b!737220 () Bool)

(assert (=> b!737220 (= e!412374 e!412383)))

(declare-fun res!495612 () Bool)

(assert (=> b!737220 (=> (not res!495612) (not e!412383))))

(assert (=> b!737220 (= res!495612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19773 a!3186) j!159) mask!3328) (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327085))))

(assert (=> b!737220 (= lt!327085 (Intermediate!7380 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737221 () Bool)

(assert (=> b!737221 (= e!412382 true)))

(declare-fun lt!327081 () SeekEntryResult!7380)

(assert (=> b!737221 (= lt!327081 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327088 lt!327089 lt!327092 mask!3328))))

(declare-fun b!737222 () Bool)

(assert (=> b!737222 (= e!412379 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327088 (select (arr!19773 a!3186) j!159) a!3186 mask!3328) lt!327085)))))

(declare-fun b!737223 () Bool)

(assert (=> b!737223 (= e!412376 (not e!412381))))

(declare-fun res!495609 () Bool)

(assert (=> b!737223 (=> res!495609 e!412381)))

(assert (=> b!737223 (= res!495609 (or (not (is-Intermediate!7380 lt!327084)) (bvsge x!1131 (x!62915 lt!327084))))))

(assert (=> b!737223 (= lt!327080 (Found!7380 j!159))))

(assert (=> b!737223 e!412378))

(declare-fun res!495618 () Bool)

(assert (=> b!737223 (=> (not res!495618) (not e!412378))))

(assert (=> b!737223 (= res!495618 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327087 () Unit!25138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25138)

(assert (=> b!737223 (= lt!327087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737224 () Bool)

(declare-fun res!495616 () Bool)

(assert (=> b!737224 (=> res!495616 e!412382)))

(assert (=> b!737224 (= res!495616 e!412379)))

(declare-fun c!81178 () Bool)

(assert (=> b!737224 (= c!81178 lt!327082)))

(declare-fun b!737225 () Bool)

(assert (=> b!737225 (= e!412372 e!412374)))

(declare-fun res!495617 () Bool)

(assert (=> b!737225 (=> (not res!495617) (not e!412374))))

(declare-fun lt!327086 () SeekEntryResult!7380)

(assert (=> b!737225 (= res!495617 (or (= lt!327086 (MissingZero!7380 i!1173)) (= lt!327086 (MissingVacant!7380 i!1173))))))

(assert (=> b!737225 (= lt!327086 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65200 res!495619) b!737206))

(assert (= (and b!737206 res!495621) b!737216))

(assert (= (and b!737216 res!495607) b!737204))

(assert (= (and b!737204 res!495614) b!737213))

(assert (= (and b!737213 res!495613) b!737225))

(assert (= (and b!737225 res!495617) b!737202))

(assert (= (and b!737202 res!495624) b!737208))

(assert (= (and b!737208 res!495623) b!737205))

(assert (= (and b!737205 res!495610) b!737220))

(assert (= (and b!737220 res!495612) b!737203))

(assert (= (and b!737203 res!495615) b!737214))

(assert (= (and b!737214 c!81179) b!737212))

(assert (= (and b!737214 (not c!81179)) b!737207))

(assert (= (and b!737214 res!495622) b!737217))

(assert (= (and b!737217 res!495611) b!737223))

(assert (= (and b!737223 res!495618) b!737218))

(assert (= (and b!737218 res!495608) b!737215))

(assert (= (and b!737223 (not res!495609)) b!737211))

(assert (= (and b!737211 c!81180) b!737219))

(assert (= (and b!737211 (not c!81180)) b!737209))

(assert (= (and b!737211 (not res!495620)) b!737224))

(assert (= (and b!737224 c!81178) b!737222))

(assert (= (and b!737224 (not c!81178)) b!737210))

(assert (= (and b!737224 (not res!495616)) b!737221))

(declare-fun m!689209 () Bool)

(assert (=> b!737222 m!689209))

(assert (=> b!737222 m!689209))

(declare-fun m!689211 () Bool)

(assert (=> b!737222 m!689211))

(assert (=> b!737216 m!689209))

(assert (=> b!737216 m!689209))

(declare-fun m!689213 () Bool)

(assert (=> b!737216 m!689213))

(assert (=> b!737215 m!689209))

(assert (=> b!737215 m!689209))

(declare-fun m!689215 () Bool)

(assert (=> b!737215 m!689215))

(declare-fun m!689217 () Bool)

(assert (=> b!737225 m!689217))

(declare-fun m!689219 () Bool)

(assert (=> start!65200 m!689219))

(declare-fun m!689221 () Bool)

(assert (=> start!65200 m!689221))

(assert (=> b!737212 m!689209))

(assert (=> b!737212 m!689209))

(declare-fun m!689223 () Bool)

(assert (=> b!737212 m!689223))

(assert (=> b!737220 m!689209))

(assert (=> b!737220 m!689209))

(declare-fun m!689225 () Bool)

(assert (=> b!737220 m!689225))

(assert (=> b!737220 m!689225))

(assert (=> b!737220 m!689209))

(declare-fun m!689227 () Bool)

(assert (=> b!737220 m!689227))

(declare-fun m!689229 () Bool)

(assert (=> b!737208 m!689229))

(declare-fun m!689231 () Bool)

(assert (=> b!737221 m!689231))

(declare-fun m!689233 () Bool)

(assert (=> b!737217 m!689233))

(declare-fun m!689235 () Bool)

(assert (=> b!737217 m!689235))

(assert (=> b!737217 m!689233))

(declare-fun m!689237 () Bool)

(assert (=> b!737217 m!689237))

(declare-fun m!689239 () Bool)

(assert (=> b!737217 m!689239))

(declare-fun m!689241 () Bool)

(assert (=> b!737217 m!689241))

(assert (=> b!737218 m!689209))

(assert (=> b!737218 m!689209))

(declare-fun m!689243 () Bool)

(assert (=> b!737218 m!689243))

(declare-fun m!689245 () Bool)

(assert (=> b!737202 m!689245))

(declare-fun m!689247 () Bool)

(assert (=> b!737223 m!689247))

(declare-fun m!689249 () Bool)

(assert (=> b!737223 m!689249))

(assert (=> b!737209 m!689209))

(assert (=> b!737209 m!689209))

(declare-fun m!689251 () Bool)

(assert (=> b!737209 m!689251))

(assert (=> b!737209 m!689209))

(declare-fun m!689253 () Bool)

(assert (=> b!737209 m!689253))

(declare-fun m!689255 () Bool)

(assert (=> b!737204 m!689255))

(assert (=> b!737210 m!689209))

(assert (=> b!737210 m!689209))

(assert (=> b!737210 m!689253))

(declare-fun m!689257 () Bool)

(assert (=> b!737203 m!689257))

(assert (=> b!737207 m!689209))

(assert (=> b!737207 m!689209))

(assert (=> b!737207 m!689251))

(declare-fun m!689259 () Bool)

(assert (=> b!737211 m!689259))

(assert (=> b!737219 m!689209))

(assert (=> b!737219 m!689209))

(assert (=> b!737219 m!689211))

(declare-fun m!689261 () Bool)

(assert (=> b!737213 m!689261))

(push 1)

