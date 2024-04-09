; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64336 () Bool)

(assert start!64336)

(declare-fun b!722557 () Bool)

(declare-fun res!484376 () Bool)

(declare-fun e!404973 () Bool)

(assert (=> b!722557 (=> (not res!484376) (not e!404973))))

(declare-datatypes ((array!40870 0))(
  ( (array!40871 (arr!19554 (Array (_ BitVec 32) (_ BitVec 64))) (size!19975 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40870)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722557 (= res!484376 (validKeyInArray!0 (select (arr!19554 a!3186) j!159)))))

(declare-fun b!722558 () Bool)

(declare-fun res!484378 () Bool)

(declare-fun e!404970 () Bool)

(assert (=> b!722558 (=> (not res!484378) (not e!404970))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722558 (= res!484378 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19554 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!404972 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722559 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7161 0))(
  ( (MissingZero!7161 (index!31011 (_ BitVec 32))) (Found!7161 (index!31012 (_ BitVec 32))) (Intermediate!7161 (undefined!7973 Bool) (index!31013 (_ BitVec 32)) (x!62043 (_ BitVec 32))) (Undefined!7161) (MissingVacant!7161 (index!31014 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40870 (_ BitVec 32)) SeekEntryResult!7161)

(assert (=> b!722559 (= e!404972 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19554 a!3186) j!159) a!3186 mask!3328) (Found!7161 j!159)))))

(declare-fun b!722560 () Bool)

(declare-fun res!484379 () Bool)

(declare-fun e!404969 () Bool)

(assert (=> b!722560 (=> (not res!484379) (not e!404969))))

(declare-datatypes ((List!13609 0))(
  ( (Nil!13606) (Cons!13605 (h!14659 (_ BitVec 64)) (t!19932 List!13609)) )
))
(declare-fun arrayNoDuplicates!0 (array!40870 (_ BitVec 32) List!13609) Bool)

(assert (=> b!722560 (= res!484379 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13606))))

(declare-fun b!722561 () Bool)

(declare-fun res!484375 () Bool)

(assert (=> b!722561 (=> (not res!484375) (not e!404969))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722561 (= res!484375 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19975 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19975 a!3186))))))

(declare-fun b!722562 () Bool)

(declare-fun res!484374 () Bool)

(assert (=> b!722562 (=> (not res!484374) (not e!404973))))

(assert (=> b!722562 (= res!484374 (and (= (size!19975 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19975 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19975 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722563 () Bool)

(declare-fun res!484380 () Bool)

(assert (=> b!722563 (=> (not res!484380) (not e!404970))))

(assert (=> b!722563 (= res!484380 e!404972)))

(declare-fun c!79464 () Bool)

(assert (=> b!722563 (= c!79464 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722564 () Bool)

(assert (=> b!722564 (= e!404969 e!404970)))

(declare-fun res!484373 () Bool)

(assert (=> b!722564 (=> (not res!484373) (not e!404970))))

(declare-fun lt!320347 () SeekEntryResult!7161)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40870 (_ BitVec 32)) SeekEntryResult!7161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722564 (= res!484373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19554 a!3186) j!159) mask!3328) (select (arr!19554 a!3186) j!159) a!3186 mask!3328) lt!320347))))

(assert (=> b!722564 (= lt!320347 (Intermediate!7161 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722565 () Bool)

(assert (=> b!722565 (= e!404970 false)))

(declare-fun lt!320346 () array!40870)

(declare-fun lt!320349 () (_ BitVec 64))

(declare-fun lt!320348 () SeekEntryResult!7161)

(assert (=> b!722565 (= lt!320348 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320349 lt!320346 mask!3328))))

(declare-fun lt!320350 () SeekEntryResult!7161)

(assert (=> b!722565 (= lt!320350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320349 mask!3328) lt!320349 lt!320346 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722565 (= lt!320349 (select (store (arr!19554 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722565 (= lt!320346 (array!40871 (store (arr!19554 a!3186) i!1173 k!2102) (size!19975 a!3186)))))

(declare-fun b!722566 () Bool)

(declare-fun res!484372 () Bool)

(assert (=> b!722566 (=> (not res!484372) (not e!404973))))

(declare-fun arrayContainsKey!0 (array!40870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722566 (= res!484372 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722567 () Bool)

(assert (=> b!722567 (= e!404972 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19554 a!3186) j!159) a!3186 mask!3328) lt!320347))))

(declare-fun b!722568 () Bool)

(declare-fun res!484377 () Bool)

(assert (=> b!722568 (=> (not res!484377) (not e!404969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40870 (_ BitVec 32)) Bool)

(assert (=> b!722568 (= res!484377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722569 () Bool)

(declare-fun res!484382 () Bool)

(assert (=> b!722569 (=> (not res!484382) (not e!404973))))

(assert (=> b!722569 (= res!484382 (validKeyInArray!0 k!2102))))

(declare-fun res!484381 () Bool)

(assert (=> start!64336 (=> (not res!484381) (not e!404973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64336 (= res!484381 (validMask!0 mask!3328))))

(assert (=> start!64336 e!404973))

(assert (=> start!64336 true))

(declare-fun array_inv!15328 (array!40870) Bool)

(assert (=> start!64336 (array_inv!15328 a!3186)))

(declare-fun b!722570 () Bool)

(assert (=> b!722570 (= e!404973 e!404969)))

(declare-fun res!484383 () Bool)

(assert (=> b!722570 (=> (not res!484383) (not e!404969))))

(declare-fun lt!320351 () SeekEntryResult!7161)

(assert (=> b!722570 (= res!484383 (or (= lt!320351 (MissingZero!7161 i!1173)) (= lt!320351 (MissingVacant!7161 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40870 (_ BitVec 32)) SeekEntryResult!7161)

(assert (=> b!722570 (= lt!320351 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64336 res!484381) b!722562))

(assert (= (and b!722562 res!484374) b!722557))

(assert (= (and b!722557 res!484376) b!722569))

(assert (= (and b!722569 res!484382) b!722566))

(assert (= (and b!722566 res!484372) b!722570))

(assert (= (and b!722570 res!484383) b!722568))

(assert (= (and b!722568 res!484377) b!722560))

(assert (= (and b!722560 res!484379) b!722561))

(assert (= (and b!722561 res!484375) b!722564))

(assert (= (and b!722564 res!484373) b!722558))

(assert (= (and b!722558 res!484378) b!722563))

(assert (= (and b!722563 c!79464) b!722567))

(assert (= (and b!722563 (not c!79464)) b!722559))

(assert (= (and b!722563 res!484380) b!722565))

(declare-fun m!677161 () Bool)

(assert (=> start!64336 m!677161))

(declare-fun m!677163 () Bool)

(assert (=> start!64336 m!677163))

(declare-fun m!677165 () Bool)

(assert (=> b!722559 m!677165))

(assert (=> b!722559 m!677165))

(declare-fun m!677167 () Bool)

(assert (=> b!722559 m!677167))

(declare-fun m!677169 () Bool)

(assert (=> b!722566 m!677169))

(declare-fun m!677171 () Bool)

(assert (=> b!722569 m!677171))

(declare-fun m!677173 () Bool)

(assert (=> b!722558 m!677173))

(assert (=> b!722557 m!677165))

(assert (=> b!722557 m!677165))

(declare-fun m!677175 () Bool)

(assert (=> b!722557 m!677175))

(assert (=> b!722567 m!677165))

(assert (=> b!722567 m!677165))

(declare-fun m!677177 () Bool)

(assert (=> b!722567 m!677177))

(assert (=> b!722564 m!677165))

(assert (=> b!722564 m!677165))

(declare-fun m!677179 () Bool)

(assert (=> b!722564 m!677179))

(assert (=> b!722564 m!677179))

(assert (=> b!722564 m!677165))

(declare-fun m!677181 () Bool)

(assert (=> b!722564 m!677181))

(declare-fun m!677183 () Bool)

(assert (=> b!722568 m!677183))

(declare-fun m!677185 () Bool)

(assert (=> b!722560 m!677185))

(declare-fun m!677187 () Bool)

(assert (=> b!722570 m!677187))

(declare-fun m!677189 () Bool)

(assert (=> b!722565 m!677189))

(declare-fun m!677191 () Bool)

(assert (=> b!722565 m!677191))

(declare-fun m!677193 () Bool)

(assert (=> b!722565 m!677193))

(declare-fun m!677195 () Bool)

(assert (=> b!722565 m!677195))

(declare-fun m!677197 () Bool)

(assert (=> b!722565 m!677197))

(assert (=> b!722565 m!677195))

(push 1)

