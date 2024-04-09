; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64534 () Bool)

(assert start!64534)

(declare-fun b!726112 () Bool)

(declare-fun res!487261 () Bool)

(declare-fun e!406588 () Bool)

(assert (=> b!726112 (=> (not res!487261) (not e!406588))))

(declare-datatypes ((array!41005 0))(
  ( (array!41006 (arr!19620 (Array (_ BitVec 32) (_ BitVec 64))) (size!20041 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41005)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!726112 (= res!487261 (and (= (size!20041 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20041 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20041 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726113 () Bool)

(declare-fun res!487259 () Bool)

(assert (=> b!726113 (=> (not res!487259) (not e!406588))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726113 (= res!487259 (validKeyInArray!0 k!2102))))

(declare-fun res!487272 () Bool)

(assert (=> start!64534 (=> (not res!487272) (not e!406588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64534 (= res!487272 (validMask!0 mask!3328))))

(assert (=> start!64534 e!406588))

(assert (=> start!64534 true))

(declare-fun array_inv!15394 (array!41005) Bool)

(assert (=> start!64534 (array_inv!15394 a!3186)))

(declare-fun b!726114 () Bool)

(declare-fun e!406591 () Bool)

(declare-fun e!406587 () Bool)

(assert (=> b!726114 (= e!406591 e!406587)))

(declare-fun res!487258 () Bool)

(assert (=> b!726114 (=> (not res!487258) (not e!406587))))

(declare-datatypes ((SeekEntryResult!7227 0))(
  ( (MissingZero!7227 (index!31275 (_ BitVec 32))) (Found!7227 (index!31276 (_ BitVec 32))) (Intermediate!7227 (undefined!8039 Bool) (index!31277 (_ BitVec 32)) (x!62294 (_ BitVec 32))) (Undefined!7227) (MissingVacant!7227 (index!31278 (_ BitVec 32))) )
))
(declare-fun lt!321596 () SeekEntryResult!7227)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41005 (_ BitVec 32)) SeekEntryResult!7227)

(assert (=> b!726114 (= res!487258 (= (seekEntryOrOpen!0 (select (arr!19620 a!3186) j!159) a!3186 mask!3328) lt!321596))))

(assert (=> b!726114 (= lt!321596 (Found!7227 j!159))))

(declare-fun b!726115 () Bool)

(declare-fun res!487270 () Bool)

(declare-fun e!406589 () Bool)

(assert (=> b!726115 (=> (not res!487270) (not e!406589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41005 (_ BitVec 32)) Bool)

(assert (=> b!726115 (= res!487270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321592 () SeekEntryResult!7227)

(declare-fun e!406593 () Bool)

(declare-fun b!726116 () Bool)

(assert (=> b!726116 (= e!406593 (not (or (not (is-Intermediate!7227 lt!321592)) (bvsge x!1131 (x!62294 lt!321592)) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(assert (=> b!726116 e!406591))

(declare-fun res!487260 () Bool)

(assert (=> b!726116 (=> (not res!487260) (not e!406591))))

(assert (=> b!726116 (= res!487260 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24772 0))(
  ( (Unit!24773) )
))
(declare-fun lt!321595 () Unit!24772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24772)

(assert (=> b!726116 (= lt!321595 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726117 () Bool)

(assert (=> b!726117 (= e!406588 e!406589)))

(declare-fun res!487262 () Bool)

(assert (=> b!726117 (=> (not res!487262) (not e!406589))))

(declare-fun lt!321593 () SeekEntryResult!7227)

(assert (=> b!726117 (= res!487262 (or (= lt!321593 (MissingZero!7227 i!1173)) (= lt!321593 (MissingVacant!7227 i!1173))))))

(assert (=> b!726117 (= lt!321593 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726118 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41005 (_ BitVec 32)) SeekEntryResult!7227)

(assert (=> b!726118 (= e!406587 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19620 a!3186) j!159) a!3186 mask!3328) lt!321596))))

(declare-fun e!406592 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!726119 () Bool)

(assert (=> b!726119 (= e!406592 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19620 a!3186) j!159) a!3186 mask!3328) (Found!7227 j!159)))))

(declare-fun b!726120 () Bool)

(declare-fun e!406586 () Bool)

(assert (=> b!726120 (= e!406586 e!406593)))

(declare-fun res!487266 () Bool)

(assert (=> b!726120 (=> (not res!487266) (not e!406593))))

(declare-fun lt!321591 () SeekEntryResult!7227)

(assert (=> b!726120 (= res!487266 (= lt!321591 lt!321592))))

(declare-fun lt!321594 () (_ BitVec 64))

(declare-fun lt!321590 () array!41005)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41005 (_ BitVec 32)) SeekEntryResult!7227)

(assert (=> b!726120 (= lt!321592 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321594 lt!321590 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726120 (= lt!321591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321594 mask!3328) lt!321594 lt!321590 mask!3328))))

(assert (=> b!726120 (= lt!321594 (select (store (arr!19620 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726120 (= lt!321590 (array!41006 (store (arr!19620 a!3186) i!1173 k!2102) (size!20041 a!3186)))))

(declare-fun b!726121 () Bool)

(declare-fun res!487265 () Bool)

(assert (=> b!726121 (=> (not res!487265) (not e!406586))))

(assert (=> b!726121 (= res!487265 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19620 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726122 () Bool)

(declare-fun res!487269 () Bool)

(assert (=> b!726122 (=> (not res!487269) (not e!406589))))

(declare-datatypes ((List!13675 0))(
  ( (Nil!13672) (Cons!13671 (h!14728 (_ BitVec 64)) (t!19998 List!13675)) )
))
(declare-fun arrayNoDuplicates!0 (array!41005 (_ BitVec 32) List!13675) Bool)

(assert (=> b!726122 (= res!487269 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13672))))

(declare-fun b!726123 () Bool)

(assert (=> b!726123 (= e!406589 e!406586)))

(declare-fun res!487264 () Bool)

(assert (=> b!726123 (=> (not res!487264) (not e!406586))))

(declare-fun lt!321589 () SeekEntryResult!7227)

(assert (=> b!726123 (= res!487264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19620 a!3186) j!159) mask!3328) (select (arr!19620 a!3186) j!159) a!3186 mask!3328) lt!321589))))

(assert (=> b!726123 (= lt!321589 (Intermediate!7227 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726124 () Bool)

(declare-fun res!487271 () Bool)

(assert (=> b!726124 (=> (not res!487271) (not e!406588))))

(assert (=> b!726124 (= res!487271 (validKeyInArray!0 (select (arr!19620 a!3186) j!159)))))

(declare-fun b!726125 () Bool)

(declare-fun res!487263 () Bool)

(assert (=> b!726125 (=> (not res!487263) (not e!406586))))

(assert (=> b!726125 (= res!487263 e!406592)))

(declare-fun c!79800 () Bool)

(assert (=> b!726125 (= c!79800 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726126 () Bool)

(declare-fun res!487267 () Bool)

(assert (=> b!726126 (=> (not res!487267) (not e!406588))))

(declare-fun arrayContainsKey!0 (array!41005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726126 (= res!487267 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726127 () Bool)

(assert (=> b!726127 (= e!406592 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19620 a!3186) j!159) a!3186 mask!3328) lt!321589))))

(declare-fun b!726128 () Bool)

(declare-fun res!487268 () Bool)

(assert (=> b!726128 (=> (not res!487268) (not e!406589))))

(assert (=> b!726128 (= res!487268 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20041 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20041 a!3186))))))

(assert (= (and start!64534 res!487272) b!726112))

(assert (= (and b!726112 res!487261) b!726124))

(assert (= (and b!726124 res!487271) b!726113))

(assert (= (and b!726113 res!487259) b!726126))

(assert (= (and b!726126 res!487267) b!726117))

(assert (= (and b!726117 res!487262) b!726115))

(assert (= (and b!726115 res!487270) b!726122))

(assert (= (and b!726122 res!487269) b!726128))

(assert (= (and b!726128 res!487268) b!726123))

(assert (= (and b!726123 res!487264) b!726121))

(assert (= (and b!726121 res!487265) b!726125))

(assert (= (and b!726125 c!79800) b!726127))

(assert (= (and b!726125 (not c!79800)) b!726119))

(assert (= (and b!726125 res!487263) b!726120))

(assert (= (and b!726120 res!487266) b!726116))

(assert (= (and b!726116 res!487260) b!726114))

(assert (= (and b!726114 res!487258) b!726118))

(declare-fun m!680293 () Bool)

(assert (=> b!726123 m!680293))

(assert (=> b!726123 m!680293))

(declare-fun m!680295 () Bool)

(assert (=> b!726123 m!680295))

(assert (=> b!726123 m!680295))

(assert (=> b!726123 m!680293))

(declare-fun m!680297 () Bool)

(assert (=> b!726123 m!680297))

(declare-fun m!680299 () Bool)

(assert (=> b!726122 m!680299))

(declare-fun m!680301 () Bool)

(assert (=> b!726126 m!680301))

(assert (=> b!726124 m!680293))

(assert (=> b!726124 m!680293))

(declare-fun m!680303 () Bool)

(assert (=> b!726124 m!680303))

(declare-fun m!680305 () Bool)

(assert (=> start!64534 m!680305))

(declare-fun m!680307 () Bool)

(assert (=> start!64534 m!680307))

(declare-fun m!680309 () Bool)

(assert (=> b!726116 m!680309))

(declare-fun m!680311 () Bool)

(assert (=> b!726116 m!680311))

(declare-fun m!680313 () Bool)

(assert (=> b!726115 m!680313))

(assert (=> b!726118 m!680293))

(assert (=> b!726118 m!680293))

(declare-fun m!680315 () Bool)

(assert (=> b!726118 m!680315))

(assert (=> b!726119 m!680293))

(assert (=> b!726119 m!680293))

(declare-fun m!680317 () Bool)

(assert (=> b!726119 m!680317))

(assert (=> b!726127 m!680293))

(assert (=> b!726127 m!680293))

(declare-fun m!680319 () Bool)

(assert (=> b!726127 m!680319))

(declare-fun m!680321 () Bool)

(assert (=> b!726120 m!680321))

(declare-fun m!680323 () Bool)

(assert (=> b!726120 m!680323))

(declare-fun m!680325 () Bool)

(assert (=> b!726120 m!680325))

(declare-fun m!680327 () Bool)

(assert (=> b!726120 m!680327))

(assert (=> b!726120 m!680321))

(declare-fun m!680329 () Bool)

(assert (=> b!726120 m!680329))

(declare-fun m!680331 () Bool)

(assert (=> b!726117 m!680331))

(assert (=> b!726114 m!680293))

(assert (=> b!726114 m!680293))

(declare-fun m!680333 () Bool)

(assert (=> b!726114 m!680333))

(declare-fun m!680335 () Bool)

(assert (=> b!726113 m!680335))

(declare-fun m!680337 () Bool)

(assert (=> b!726121 m!680337))

(push 1)

