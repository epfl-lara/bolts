; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64354 () Bool)

(assert start!64354)

(declare-fun b!722937 () Bool)

(declare-fun res!484700 () Bool)

(declare-fun e!405108 () Bool)

(assert (=> b!722937 (=> (not res!484700) (not e!405108))))

(declare-datatypes ((array!40888 0))(
  ( (array!40889 (arr!19563 (Array (_ BitVec 32) (_ BitVec 64))) (size!19984 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40888)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722937 (= res!484700 (validKeyInArray!0 (select (arr!19563 a!3186) j!159)))))

(declare-fun b!722938 () Bool)

(declare-fun res!484703 () Bool)

(assert (=> b!722938 (=> (not res!484703) (not e!405108))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722938 (= res!484703 (validKeyInArray!0 k!2102))))

(declare-fun b!722939 () Bool)

(declare-fun e!405107 () Bool)

(assert (=> b!722939 (= e!405107 (not true))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40888 (_ BitVec 32)) Bool)

(assert (=> b!722939 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24658 0))(
  ( (Unit!24659) )
))
(declare-fun lt!320506 () Unit!24658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40888 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24658)

(assert (=> b!722939 (= lt!320506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!484709 () Bool)

(assert (=> start!64354 (=> (not res!484709) (not e!405108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64354 (= res!484709 (validMask!0 mask!3328))))

(assert (=> start!64354 e!405108))

(assert (=> start!64354 true))

(declare-fun array_inv!15337 (array!40888) Bool)

(assert (=> start!64354 (array_inv!15337 a!3186)))

(declare-fun b!722940 () Bool)

(declare-fun res!484699 () Bool)

(declare-fun e!405106 () Bool)

(assert (=> b!722940 (=> (not res!484699) (not e!405106))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!722940 (= res!484699 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19984 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19984 a!3186))))))

(declare-fun b!722941 () Bool)

(declare-datatypes ((SeekEntryResult!7170 0))(
  ( (MissingZero!7170 (index!31047 (_ BitVec 32))) (Found!7170 (index!31048 (_ BitVec 32))) (Intermediate!7170 (undefined!7982 Bool) (index!31049 (_ BitVec 32)) (x!62076 (_ BitVec 32))) (Undefined!7170) (MissingVacant!7170 (index!31050 (_ BitVec 32))) )
))
(declare-fun lt!320509 () SeekEntryResult!7170)

(declare-fun e!405111 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40888 (_ BitVec 32)) SeekEntryResult!7170)

(assert (=> b!722941 (= e!405111 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19563 a!3186) j!159) a!3186 mask!3328) lt!320509))))

(declare-fun b!722942 () Bool)

(declare-fun res!484705 () Bool)

(declare-fun e!405110 () Bool)

(assert (=> b!722942 (=> (not res!484705) (not e!405110))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722942 (= res!484705 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19563 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722943 () Bool)

(declare-fun res!484698 () Bool)

(assert (=> b!722943 (=> (not res!484698) (not e!405108))))

(declare-fun arrayContainsKey!0 (array!40888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722943 (= res!484698 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722944 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40888 (_ BitVec 32)) SeekEntryResult!7170)

(assert (=> b!722944 (= e!405111 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19563 a!3186) j!159) a!3186 mask!3328) (Found!7170 j!159)))))

(declare-fun b!722945 () Bool)

(declare-fun res!484708 () Bool)

(assert (=> b!722945 (=> (not res!484708) (not e!405108))))

(assert (=> b!722945 (= res!484708 (and (= (size!19984 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19984 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19984 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722946 () Bool)

(declare-fun res!484706 () Bool)

(assert (=> b!722946 (=> (not res!484706) (not e!405106))))

(declare-datatypes ((List!13618 0))(
  ( (Nil!13615) (Cons!13614 (h!14668 (_ BitVec 64)) (t!19941 List!13618)) )
))
(declare-fun arrayNoDuplicates!0 (array!40888 (_ BitVec 32) List!13618) Bool)

(assert (=> b!722946 (= res!484706 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13615))))

(declare-fun b!722947 () Bool)

(assert (=> b!722947 (= e!405110 e!405107)))

(declare-fun res!484710 () Bool)

(assert (=> b!722947 (=> (not res!484710) (not e!405107))))

(declare-fun lt!320510 () array!40888)

(declare-fun lt!320507 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722947 (= res!484710 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320507 mask!3328) lt!320507 lt!320510 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320507 lt!320510 mask!3328)))))

(assert (=> b!722947 (= lt!320507 (select (store (arr!19563 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722947 (= lt!320510 (array!40889 (store (arr!19563 a!3186) i!1173 k!2102) (size!19984 a!3186)))))

(declare-fun b!722948 () Bool)

(declare-fun res!484704 () Bool)

(assert (=> b!722948 (=> (not res!484704) (not e!405106))))

(assert (=> b!722948 (= res!484704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722949 () Bool)

(declare-fun res!484707 () Bool)

(assert (=> b!722949 (=> (not res!484707) (not e!405110))))

(assert (=> b!722949 (= res!484707 e!405111)))

(declare-fun c!79491 () Bool)

(assert (=> b!722949 (= c!79491 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722950 () Bool)

(assert (=> b!722950 (= e!405108 e!405106)))

(declare-fun res!484701 () Bool)

(assert (=> b!722950 (=> (not res!484701) (not e!405106))))

(declare-fun lt!320508 () SeekEntryResult!7170)

(assert (=> b!722950 (= res!484701 (or (= lt!320508 (MissingZero!7170 i!1173)) (= lt!320508 (MissingVacant!7170 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40888 (_ BitVec 32)) SeekEntryResult!7170)

(assert (=> b!722950 (= lt!320508 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722951 () Bool)

(assert (=> b!722951 (= e!405106 e!405110)))

(declare-fun res!484702 () Bool)

(assert (=> b!722951 (=> (not res!484702) (not e!405110))))

(assert (=> b!722951 (= res!484702 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19563 a!3186) j!159) mask!3328) (select (arr!19563 a!3186) j!159) a!3186 mask!3328) lt!320509))))

(assert (=> b!722951 (= lt!320509 (Intermediate!7170 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64354 res!484709) b!722945))

(assert (= (and b!722945 res!484708) b!722937))

(assert (= (and b!722937 res!484700) b!722938))

(assert (= (and b!722938 res!484703) b!722943))

(assert (= (and b!722943 res!484698) b!722950))

(assert (= (and b!722950 res!484701) b!722948))

(assert (= (and b!722948 res!484704) b!722946))

(assert (= (and b!722946 res!484706) b!722940))

(assert (= (and b!722940 res!484699) b!722951))

(assert (= (and b!722951 res!484702) b!722942))

(assert (= (and b!722942 res!484705) b!722949))

(assert (= (and b!722949 c!79491) b!722941))

(assert (= (and b!722949 (not c!79491)) b!722944))

(assert (= (and b!722949 res!484707) b!722947))

(assert (= (and b!722947 res!484710) b!722939))

(declare-fun m!677503 () Bool)

(assert (=> b!722947 m!677503))

(declare-fun m!677505 () Bool)

(assert (=> b!722947 m!677505))

(declare-fun m!677507 () Bool)

(assert (=> b!722947 m!677507))

(declare-fun m!677509 () Bool)

(assert (=> b!722947 m!677509))

(assert (=> b!722947 m!677503))

(declare-fun m!677511 () Bool)

(assert (=> b!722947 m!677511))

(declare-fun m!677513 () Bool)

(assert (=> b!722938 m!677513))

(declare-fun m!677515 () Bool)

(assert (=> b!722948 m!677515))

(declare-fun m!677517 () Bool)

(assert (=> b!722943 m!677517))

(declare-fun m!677519 () Bool)

(assert (=> b!722937 m!677519))

(assert (=> b!722937 m!677519))

(declare-fun m!677521 () Bool)

(assert (=> b!722937 m!677521))

(assert (=> b!722941 m!677519))

(assert (=> b!722941 m!677519))

(declare-fun m!677523 () Bool)

(assert (=> b!722941 m!677523))

(declare-fun m!677525 () Bool)

(assert (=> b!722939 m!677525))

(declare-fun m!677527 () Bool)

(assert (=> b!722939 m!677527))

(declare-fun m!677529 () Bool)

(assert (=> b!722950 m!677529))

(declare-fun m!677531 () Bool)

(assert (=> start!64354 m!677531))

(declare-fun m!677533 () Bool)

(assert (=> start!64354 m!677533))

(declare-fun m!677535 () Bool)

(assert (=> b!722946 m!677535))

(declare-fun m!677537 () Bool)

(assert (=> b!722942 m!677537))

(assert (=> b!722951 m!677519))

(assert (=> b!722951 m!677519))

(declare-fun m!677539 () Bool)

(assert (=> b!722951 m!677539))

(assert (=> b!722951 m!677539))

(assert (=> b!722951 m!677519))

(declare-fun m!677541 () Bool)

(assert (=> b!722951 m!677541))

(assert (=> b!722944 m!677519))

(assert (=> b!722944 m!677519))

(declare-fun m!677543 () Bool)

(assert (=> b!722944 m!677543))

(push 1)

