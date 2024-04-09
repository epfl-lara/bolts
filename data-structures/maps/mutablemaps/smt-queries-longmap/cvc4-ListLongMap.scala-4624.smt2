; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64400 () Bool)

(assert start!64400)

(declare-fun b!724007 () Bool)

(declare-fun res!485632 () Bool)

(declare-fun e!405555 () Bool)

(assert (=> b!724007 (=> (not res!485632) (not e!405555))))

(declare-fun e!405558 () Bool)

(assert (=> b!724007 (= res!485632 e!405558)))

(declare-fun c!79560 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724007 (= c!79560 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724008 () Bool)

(declare-fun res!485640 () Bool)

(declare-fun e!405557 () Bool)

(assert (=> b!724008 (=> (not res!485640) (not e!405557))))

(declare-datatypes ((array!40934 0))(
  ( (array!40935 (arr!19586 (Array (_ BitVec 32) (_ BitVec 64))) (size!20007 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40934)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724008 (= res!485640 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724009 () Bool)

(declare-fun res!485643 () Bool)

(declare-fun e!405556 () Bool)

(assert (=> b!724009 (=> (not res!485643) (not e!405556))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!724009 (= res!485643 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20007 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20007 a!3186))))))

(declare-fun b!724010 () Bool)

(assert (=> b!724010 (= e!405557 e!405556)))

(declare-fun res!485636 () Bool)

(assert (=> b!724010 (=> (not res!485636) (not e!405556))))

(declare-datatypes ((SeekEntryResult!7193 0))(
  ( (MissingZero!7193 (index!31139 (_ BitVec 32))) (Found!7193 (index!31140 (_ BitVec 32))) (Intermediate!7193 (undefined!8005 Bool) (index!31141 (_ BitVec 32)) (x!62155 (_ BitVec 32))) (Undefined!7193) (MissingVacant!7193 (index!31142 (_ BitVec 32))) )
))
(declare-fun lt!320851 () SeekEntryResult!7193)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724010 (= res!485636 (or (= lt!320851 (MissingZero!7193 i!1173)) (= lt!320851 (MissingVacant!7193 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40934 (_ BitVec 32)) SeekEntryResult!7193)

(assert (=> b!724010 (= lt!320851 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724011 () Bool)

(declare-fun e!405559 () Bool)

(assert (=> b!724011 (= e!405555 e!405559)))

(declare-fun res!485638 () Bool)

(assert (=> b!724011 (=> (not res!485638) (not e!405559))))

(declare-fun lt!320854 () (_ BitVec 64))

(declare-fun lt!320855 () array!40934)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40934 (_ BitVec 32)) SeekEntryResult!7193)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724011 (= res!485638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320854 mask!3328) lt!320854 lt!320855 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320854 lt!320855 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!724011 (= lt!320854 (select (store (arr!19586 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724011 (= lt!320855 (array!40935 (store (arr!19586 a!3186) i!1173 k!2102) (size!20007 a!3186)))))

(declare-fun b!724012 () Bool)

(declare-fun res!485634 () Bool)

(assert (=> b!724012 (=> (not res!485634) (not e!405556))))

(declare-datatypes ((List!13641 0))(
  ( (Nil!13638) (Cons!13637 (h!14691 (_ BitVec 64)) (t!19964 List!13641)) )
))
(declare-fun arrayNoDuplicates!0 (array!40934 (_ BitVec 32) List!13641) Bool)

(assert (=> b!724012 (= res!485634 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13638))))

(declare-fun lt!320853 () SeekEntryResult!7193)

(declare-fun b!724013 () Bool)

(assert (=> b!724013 (= e!405558 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19586 a!3186) j!159) a!3186 mask!3328) lt!320853))))

(declare-fun b!724015 () Bool)

(declare-fun res!485635 () Bool)

(assert (=> b!724015 (=> (not res!485635) (not e!405557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724015 (= res!485635 (validKeyInArray!0 (select (arr!19586 a!3186) j!159)))))

(declare-fun b!724016 () Bool)

(declare-fun res!485631 () Bool)

(assert (=> b!724016 (=> (not res!485631) (not e!405556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40934 (_ BitVec 32)) Bool)

(assert (=> b!724016 (= res!485631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724017 () Bool)

(assert (=> b!724017 (= e!405556 e!405555)))

(declare-fun res!485630 () Bool)

(assert (=> b!724017 (=> (not res!485630) (not e!405555))))

(assert (=> b!724017 (= res!485630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19586 a!3186) j!159) mask!3328) (select (arr!19586 a!3186) j!159) a!3186 mask!3328) lt!320853))))

(assert (=> b!724017 (= lt!320853 (Intermediate!7193 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724018 () Bool)

(declare-fun res!485641 () Bool)

(assert (=> b!724018 (=> (not res!485641) (not e!405557))))

(assert (=> b!724018 (= res!485641 (and (= (size!20007 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20007 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20007 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724019 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40934 (_ BitVec 32)) SeekEntryResult!7193)

(assert (=> b!724019 (= e!405558 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19586 a!3186) j!159) a!3186 mask!3328) (Found!7193 j!159)))))

(declare-fun b!724020 () Bool)

(declare-fun res!485642 () Bool)

(assert (=> b!724020 (=> (not res!485642) (not e!405555))))

(assert (=> b!724020 (= res!485642 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19586 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724021 () Bool)

(assert (=> b!724021 (= e!405559 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!405561 () Bool)

(assert (=> b!724021 e!405561))

(declare-fun res!485637 () Bool)

(assert (=> b!724021 (=> (not res!485637) (not e!405561))))

(assert (=> b!724021 (= res!485637 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24704 0))(
  ( (Unit!24705) )
))
(declare-fun lt!320852 () Unit!24704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40934 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24704)

(assert (=> b!724021 (= lt!320852 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724022 () Bool)

(declare-fun res!485639 () Bool)

(assert (=> b!724022 (=> (not res!485639) (not e!405557))))

(assert (=> b!724022 (= res!485639 (validKeyInArray!0 k!2102))))

(declare-fun res!485633 () Bool)

(assert (=> start!64400 (=> (not res!485633) (not e!405557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64400 (= res!485633 (validMask!0 mask!3328))))

(assert (=> start!64400 e!405557))

(assert (=> start!64400 true))

(declare-fun array_inv!15360 (array!40934) Bool)

(assert (=> start!64400 (array_inv!15360 a!3186)))

(declare-fun b!724014 () Bool)

(assert (=> b!724014 (= e!405561 (= (seekEntryOrOpen!0 (select (arr!19586 a!3186) j!159) a!3186 mask!3328) (Found!7193 j!159)))))

(assert (= (and start!64400 res!485633) b!724018))

(assert (= (and b!724018 res!485641) b!724015))

(assert (= (and b!724015 res!485635) b!724022))

(assert (= (and b!724022 res!485639) b!724008))

(assert (= (and b!724008 res!485640) b!724010))

(assert (= (and b!724010 res!485636) b!724016))

(assert (= (and b!724016 res!485631) b!724012))

(assert (= (and b!724012 res!485634) b!724009))

(assert (= (and b!724009 res!485643) b!724017))

(assert (= (and b!724017 res!485630) b!724020))

(assert (= (and b!724020 res!485642) b!724007))

(assert (= (and b!724007 c!79560) b!724013))

(assert (= (and b!724007 (not c!79560)) b!724019))

(assert (= (and b!724007 res!485632) b!724011))

(assert (= (and b!724011 res!485638) b!724021))

(assert (= (and b!724021 res!485637) b!724014))

(declare-fun m!678491 () Bool)

(assert (=> b!724011 m!678491))

(declare-fun m!678493 () Bool)

(assert (=> b!724011 m!678493))

(declare-fun m!678495 () Bool)

(assert (=> b!724011 m!678495))

(declare-fun m!678497 () Bool)

(assert (=> b!724011 m!678497))

(declare-fun m!678499 () Bool)

(assert (=> b!724011 m!678499))

(assert (=> b!724011 m!678491))

(declare-fun m!678501 () Bool)

(assert (=> b!724010 m!678501))

(declare-fun m!678503 () Bool)

(assert (=> b!724016 m!678503))

(declare-fun m!678505 () Bool)

(assert (=> b!724019 m!678505))

(assert (=> b!724019 m!678505))

(declare-fun m!678507 () Bool)

(assert (=> b!724019 m!678507))

(declare-fun m!678509 () Bool)

(assert (=> b!724022 m!678509))

(assert (=> b!724015 m!678505))

(assert (=> b!724015 m!678505))

(declare-fun m!678511 () Bool)

(assert (=> b!724015 m!678511))

(declare-fun m!678513 () Bool)

(assert (=> b!724020 m!678513))

(assert (=> b!724017 m!678505))

(assert (=> b!724017 m!678505))

(declare-fun m!678515 () Bool)

(assert (=> b!724017 m!678515))

(assert (=> b!724017 m!678515))

(assert (=> b!724017 m!678505))

(declare-fun m!678517 () Bool)

(assert (=> b!724017 m!678517))

(assert (=> b!724014 m!678505))

(assert (=> b!724014 m!678505))

(declare-fun m!678519 () Bool)

(assert (=> b!724014 m!678519))

(declare-fun m!678521 () Bool)

(assert (=> b!724021 m!678521))

(declare-fun m!678523 () Bool)

(assert (=> b!724021 m!678523))

(assert (=> b!724013 m!678505))

(assert (=> b!724013 m!678505))

(declare-fun m!678525 () Bool)

(assert (=> b!724013 m!678525))

(declare-fun m!678527 () Bool)

(assert (=> start!64400 m!678527))

(declare-fun m!678529 () Bool)

(assert (=> start!64400 m!678529))

(declare-fun m!678531 () Bool)

(assert (=> b!724012 m!678531))

(declare-fun m!678533 () Bool)

(assert (=> b!724008 m!678533))

(push 1)

(assert (not b!724012))

(assert (not b!724011))

(assert (not b!724008))

(assert (not b!724022))

(assert (not b!724019))

(assert (not b!724010))

(assert (not b!724016))

(assert (not b!724017))

(assert (not b!724015))

(assert (not b!724021))

(assert (not b!724013))

(assert (not b!724014))

(assert (not start!64400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

