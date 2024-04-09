; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64366 () Bool)

(assert start!64366)

(declare-fun res!484943 () Bool)

(declare-fun e!405217 () Bool)

(assert (=> start!64366 (=> (not res!484943) (not e!405217))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64366 (= res!484943 (validMask!0 mask!3328))))

(assert (=> start!64366 e!405217))

(assert (=> start!64366 true))

(declare-datatypes ((array!40900 0))(
  ( (array!40901 (arr!19569 (Array (_ BitVec 32) (_ BitVec 64))) (size!19990 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40900)

(declare-fun array_inv!15343 (array!40900) Bool)

(assert (=> start!64366 (array_inv!15343 a!3186)))

(declare-fun b!723207 () Bool)

(declare-fun e!405216 () Bool)

(declare-fun e!405219 () Bool)

(assert (=> b!723207 (= e!405216 e!405219)))

(declare-fun res!484940 () Bool)

(assert (=> b!723207 (=> (not res!484940) (not e!405219))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!320600 () array!40900)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320597 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7176 0))(
  ( (MissingZero!7176 (index!31071 (_ BitVec 32))) (Found!7176 (index!31072 (_ BitVec 32))) (Intermediate!7176 (undefined!7988 Bool) (index!31073 (_ BitVec 32)) (x!62098 (_ BitVec 32))) (Undefined!7176) (MissingVacant!7176 (index!31074 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40900 (_ BitVec 32)) SeekEntryResult!7176)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723207 (= res!484940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320597 mask!3328) lt!320597 lt!320600 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320597 lt!320600 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!723207 (= lt!320597 (select (store (arr!19569 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723207 (= lt!320600 (array!40901 (store (arr!19569 a!3186) i!1173 k!2102) (size!19990 a!3186)))))

(declare-fun b!723208 () Bool)

(declare-fun e!405218 () Bool)

(assert (=> b!723208 (= e!405218 e!405216)))

(declare-fun res!484934 () Bool)

(assert (=> b!723208 (=> (not res!484934) (not e!405216))))

(declare-fun lt!320599 () SeekEntryResult!7176)

(assert (=> b!723208 (= res!484934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19569 a!3186) j!159) mask!3328) (select (arr!19569 a!3186) j!159) a!3186 mask!3328) lt!320599))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723208 (= lt!320599 (Intermediate!7176 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723209 () Bool)

(declare-fun res!484932 () Bool)

(assert (=> b!723209 (=> (not res!484932) (not e!405218))))

(assert (=> b!723209 (= res!484932 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19990 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19990 a!3186))))))

(declare-fun b!723210 () Bool)

(declare-fun res!484937 () Bool)

(assert (=> b!723210 (=> (not res!484937) (not e!405217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723210 (= res!484937 (validKeyInArray!0 k!2102))))

(declare-fun b!723211 () Bool)

(declare-fun res!484933 () Bool)

(assert (=> b!723211 (=> (not res!484933) (not e!405216))))

(declare-fun e!405214 () Bool)

(assert (=> b!723211 (= res!484933 e!405214)))

(declare-fun c!79509 () Bool)

(assert (=> b!723211 (= c!79509 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723212 () Bool)

(assert (=> b!723212 (= e!405214 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19569 a!3186) j!159) a!3186 mask!3328) lt!320599))))

(declare-fun b!723213 () Bool)

(declare-fun res!484942 () Bool)

(assert (=> b!723213 (=> (not res!484942) (not e!405217))))

(declare-fun arrayContainsKey!0 (array!40900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723213 (= res!484942 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723214 () Bool)

(assert (=> b!723214 (= e!405217 e!405218)))

(declare-fun res!484944 () Bool)

(assert (=> b!723214 (=> (not res!484944) (not e!405218))))

(declare-fun lt!320598 () SeekEntryResult!7176)

(assert (=> b!723214 (= res!484944 (or (= lt!320598 (MissingZero!7176 i!1173)) (= lt!320598 (MissingVacant!7176 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40900 (_ BitVec 32)) SeekEntryResult!7176)

(assert (=> b!723214 (= lt!320598 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723215 () Bool)

(declare-fun res!484935 () Bool)

(assert (=> b!723215 (=> (not res!484935) (not e!405218))))

(declare-datatypes ((List!13624 0))(
  ( (Nil!13621) (Cons!13620 (h!14674 (_ BitVec 64)) (t!19947 List!13624)) )
))
(declare-fun arrayNoDuplicates!0 (array!40900 (_ BitVec 32) List!13624) Bool)

(assert (=> b!723215 (= res!484935 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13621))))

(declare-fun b!723216 () Bool)

(declare-fun res!484938 () Bool)

(assert (=> b!723216 (=> (not res!484938) (not e!405217))))

(assert (=> b!723216 (= res!484938 (and (= (size!19990 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19990 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19990 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723217 () Bool)

(declare-fun res!484941 () Bool)

(assert (=> b!723217 (=> (not res!484941) (not e!405216))))

(assert (=> b!723217 (= res!484941 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19569 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723218 () Bool)

(assert (=> b!723218 (= e!405219 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40900 (_ BitVec 32)) Bool)

(assert (=> b!723218 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24670 0))(
  ( (Unit!24671) )
))
(declare-fun lt!320596 () Unit!24670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24670)

(assert (=> b!723218 (= lt!320596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723219 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40900 (_ BitVec 32)) SeekEntryResult!7176)

(assert (=> b!723219 (= e!405214 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19569 a!3186) j!159) a!3186 mask!3328) (Found!7176 j!159)))))

(declare-fun b!723220 () Bool)

(declare-fun res!484936 () Bool)

(assert (=> b!723220 (=> (not res!484936) (not e!405217))))

(assert (=> b!723220 (= res!484936 (validKeyInArray!0 (select (arr!19569 a!3186) j!159)))))

(declare-fun b!723221 () Bool)

(declare-fun res!484939 () Bool)

(assert (=> b!723221 (=> (not res!484939) (not e!405218))))

(assert (=> b!723221 (= res!484939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64366 res!484943) b!723216))

(assert (= (and b!723216 res!484938) b!723220))

(assert (= (and b!723220 res!484936) b!723210))

(assert (= (and b!723210 res!484937) b!723213))

(assert (= (and b!723213 res!484942) b!723214))

(assert (= (and b!723214 res!484944) b!723221))

(assert (= (and b!723221 res!484939) b!723215))

(assert (= (and b!723215 res!484935) b!723209))

(assert (= (and b!723209 res!484932) b!723208))

(assert (= (and b!723208 res!484934) b!723217))

(assert (= (and b!723217 res!484941) b!723211))

(assert (= (and b!723211 c!79509) b!723212))

(assert (= (and b!723211 (not c!79509)) b!723219))

(assert (= (and b!723211 res!484933) b!723207))

(assert (= (and b!723207 res!484940) b!723218))

(declare-fun m!677755 () Bool)

(assert (=> b!723210 m!677755))

(declare-fun m!677757 () Bool)

(assert (=> b!723219 m!677757))

(assert (=> b!723219 m!677757))

(declare-fun m!677759 () Bool)

(assert (=> b!723219 m!677759))

(assert (=> b!723212 m!677757))

(assert (=> b!723212 m!677757))

(declare-fun m!677761 () Bool)

(assert (=> b!723212 m!677761))

(assert (=> b!723208 m!677757))

(assert (=> b!723208 m!677757))

(declare-fun m!677763 () Bool)

(assert (=> b!723208 m!677763))

(assert (=> b!723208 m!677763))

(assert (=> b!723208 m!677757))

(declare-fun m!677765 () Bool)

(assert (=> b!723208 m!677765))

(declare-fun m!677767 () Bool)

(assert (=> b!723218 m!677767))

(declare-fun m!677769 () Bool)

(assert (=> b!723218 m!677769))

(declare-fun m!677771 () Bool)

(assert (=> b!723214 m!677771))

(declare-fun m!677773 () Bool)

(assert (=> b!723217 m!677773))

(assert (=> b!723220 m!677757))

(assert (=> b!723220 m!677757))

(declare-fun m!677775 () Bool)

(assert (=> b!723220 m!677775))

(declare-fun m!677777 () Bool)

(assert (=> b!723207 m!677777))

(declare-fun m!677779 () Bool)

(assert (=> b!723207 m!677779))

(assert (=> b!723207 m!677777))

(declare-fun m!677781 () Bool)

(assert (=> b!723207 m!677781))

(declare-fun m!677783 () Bool)

(assert (=> b!723207 m!677783))

(declare-fun m!677785 () Bool)

(assert (=> b!723207 m!677785))

(declare-fun m!677787 () Bool)

(assert (=> start!64366 m!677787))

(declare-fun m!677789 () Bool)

(assert (=> start!64366 m!677789))

(declare-fun m!677791 () Bool)

(assert (=> b!723221 m!677791))

(declare-fun m!677793 () Bool)

(assert (=> b!723213 m!677793))

(declare-fun m!677795 () Bool)

(assert (=> b!723215 m!677795))

(push 1)

