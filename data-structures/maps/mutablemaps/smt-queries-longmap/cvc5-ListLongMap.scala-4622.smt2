; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64384 () Bool)

(assert start!64384)

(declare-fun b!723623 () Bool)

(declare-fun res!485304 () Bool)

(declare-fun e!405388 () Bool)

(assert (=> b!723623 (=> (not res!485304) (not e!405388))))

(declare-fun e!405389 () Bool)

(assert (=> b!723623 (= res!485304 e!405389)))

(declare-fun c!79536 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723623 (= c!79536 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723624 () Bool)

(declare-fun e!405387 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!723624 (= e!405387 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun e!405390 () Bool)

(assert (=> b!723624 e!405390))

(declare-fun res!485305 () Bool)

(assert (=> b!723624 (=> (not res!485305) (not e!405390))))

(declare-datatypes ((array!40918 0))(
  ( (array!40919 (arr!19578 (Array (_ BitVec 32) (_ BitVec 64))) (size!19999 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40918)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40918 (_ BitVec 32)) Bool)

(assert (=> b!723624 (= res!485305 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24688 0))(
  ( (Unit!24689) )
))
(declare-fun lt!320732 () Unit!24688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40918 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24688)

(assert (=> b!723624 (= lt!320732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!485294 () Bool)

(declare-fun e!405392 () Bool)

(assert (=> start!64384 (=> (not res!485294) (not e!405392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64384 (= res!485294 (validMask!0 mask!3328))))

(assert (=> start!64384 e!405392))

(assert (=> start!64384 true))

(declare-fun array_inv!15352 (array!40918) Bool)

(assert (=> start!64384 (array_inv!15352 a!3186)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!723625 () Bool)

(declare-datatypes ((SeekEntryResult!7185 0))(
  ( (MissingZero!7185 (index!31107 (_ BitVec 32))) (Found!7185 (index!31108 (_ BitVec 32))) (Intermediate!7185 (undefined!7997 Bool) (index!31109 (_ BitVec 32)) (x!62131 (_ BitVec 32))) (Undefined!7185) (MissingVacant!7185 (index!31110 (_ BitVec 32))) )
))
(declare-fun lt!320733 () SeekEntryResult!7185)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40918 (_ BitVec 32)) SeekEntryResult!7185)

(assert (=> b!723625 (= e!405389 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19578 a!3186) j!159) a!3186 mask!3328) lt!320733))))

(declare-fun b!723626 () Bool)

(declare-fun e!405391 () Bool)

(assert (=> b!723626 (= e!405392 e!405391)))

(declare-fun res!485306 () Bool)

(assert (=> b!723626 (=> (not res!485306) (not e!405391))))

(declare-fun lt!320731 () SeekEntryResult!7185)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723626 (= res!485306 (or (= lt!320731 (MissingZero!7185 i!1173)) (= lt!320731 (MissingVacant!7185 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40918 (_ BitVec 32)) SeekEntryResult!7185)

(assert (=> b!723626 (= lt!320731 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723627 () Bool)

(declare-fun res!485303 () Bool)

(assert (=> b!723627 (=> (not res!485303) (not e!405388))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!723627 (= res!485303 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19578 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723628 () Bool)

(declare-fun res!485301 () Bool)

(assert (=> b!723628 (=> (not res!485301) (not e!405392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723628 (= res!485301 (validKeyInArray!0 k!2102))))

(declare-fun b!723629 () Bool)

(declare-fun res!485298 () Bool)

(assert (=> b!723629 (=> (not res!485298) (not e!405391))))

(assert (=> b!723629 (= res!485298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723630 () Bool)

(assert (=> b!723630 (= e!405391 e!405388)))

(declare-fun res!485300 () Bool)

(assert (=> b!723630 (=> (not res!485300) (not e!405388))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723630 (= res!485300 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19578 a!3186) j!159) mask!3328) (select (arr!19578 a!3186) j!159) a!3186 mask!3328) lt!320733))))

(assert (=> b!723630 (= lt!320733 (Intermediate!7185 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723631 () Bool)

(declare-fun res!485302 () Bool)

(assert (=> b!723631 (=> (not res!485302) (not e!405392))))

(assert (=> b!723631 (= res!485302 (validKeyInArray!0 (select (arr!19578 a!3186) j!159)))))

(declare-fun b!723632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40918 (_ BitVec 32)) SeekEntryResult!7185)

(assert (=> b!723632 (= e!405389 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19578 a!3186) j!159) a!3186 mask!3328) (Found!7185 j!159)))))

(declare-fun b!723633 () Bool)

(assert (=> b!723633 (= e!405390 (= (seekEntryOrOpen!0 (select (arr!19578 a!3186) j!159) a!3186 mask!3328) (Found!7185 j!159)))))

(declare-fun b!723634 () Bool)

(declare-fun res!485299 () Bool)

(assert (=> b!723634 (=> (not res!485299) (not e!405391))))

(assert (=> b!723634 (= res!485299 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19999 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19999 a!3186))))))

(declare-fun b!723635 () Bool)

(assert (=> b!723635 (= e!405388 e!405387)))

(declare-fun res!485295 () Bool)

(assert (=> b!723635 (=> (not res!485295) (not e!405387))))

(declare-fun lt!320735 () array!40918)

(declare-fun lt!320734 () (_ BitVec 64))

(assert (=> b!723635 (= res!485295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320734 mask!3328) lt!320734 lt!320735 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320734 lt!320735 mask!3328)))))

(assert (=> b!723635 (= lt!320734 (select (store (arr!19578 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723635 (= lt!320735 (array!40919 (store (arr!19578 a!3186) i!1173 k!2102) (size!19999 a!3186)))))

(declare-fun b!723636 () Bool)

(declare-fun res!485296 () Bool)

(assert (=> b!723636 (=> (not res!485296) (not e!405392))))

(declare-fun arrayContainsKey!0 (array!40918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723636 (= res!485296 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723637 () Bool)

(declare-fun res!485297 () Bool)

(assert (=> b!723637 (=> (not res!485297) (not e!405391))))

(declare-datatypes ((List!13633 0))(
  ( (Nil!13630) (Cons!13629 (h!14683 (_ BitVec 64)) (t!19956 List!13633)) )
))
(declare-fun arrayNoDuplicates!0 (array!40918 (_ BitVec 32) List!13633) Bool)

(assert (=> b!723637 (= res!485297 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13630))))

(declare-fun b!723638 () Bool)

(declare-fun res!485307 () Bool)

(assert (=> b!723638 (=> (not res!485307) (not e!405392))))

(assert (=> b!723638 (= res!485307 (and (= (size!19999 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19999 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19999 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64384 res!485294) b!723638))

(assert (= (and b!723638 res!485307) b!723631))

(assert (= (and b!723631 res!485302) b!723628))

(assert (= (and b!723628 res!485301) b!723636))

(assert (= (and b!723636 res!485296) b!723626))

(assert (= (and b!723626 res!485306) b!723629))

(assert (= (and b!723629 res!485298) b!723637))

(assert (= (and b!723637 res!485297) b!723634))

(assert (= (and b!723634 res!485299) b!723630))

(assert (= (and b!723630 res!485300) b!723627))

(assert (= (and b!723627 res!485303) b!723623))

(assert (= (and b!723623 c!79536) b!723625))

(assert (= (and b!723623 (not c!79536)) b!723632))

(assert (= (and b!723623 res!485304) b!723635))

(assert (= (and b!723635 res!485295) b!723624))

(assert (= (and b!723624 res!485305) b!723633))

(declare-fun m!678139 () Bool)

(assert (=> b!723636 m!678139))

(declare-fun m!678141 () Bool)

(assert (=> b!723626 m!678141))

(declare-fun m!678143 () Bool)

(assert (=> b!723633 m!678143))

(assert (=> b!723633 m!678143))

(declare-fun m!678145 () Bool)

(assert (=> b!723633 m!678145))

(declare-fun m!678147 () Bool)

(assert (=> start!64384 m!678147))

(declare-fun m!678149 () Bool)

(assert (=> start!64384 m!678149))

(assert (=> b!723625 m!678143))

(assert (=> b!723625 m!678143))

(declare-fun m!678151 () Bool)

(assert (=> b!723625 m!678151))

(assert (=> b!723630 m!678143))

(assert (=> b!723630 m!678143))

(declare-fun m!678153 () Bool)

(assert (=> b!723630 m!678153))

(assert (=> b!723630 m!678153))

(assert (=> b!723630 m!678143))

(declare-fun m!678155 () Bool)

(assert (=> b!723630 m!678155))

(declare-fun m!678157 () Bool)

(assert (=> b!723635 m!678157))

(declare-fun m!678159 () Bool)

(assert (=> b!723635 m!678159))

(declare-fun m!678161 () Bool)

(assert (=> b!723635 m!678161))

(declare-fun m!678163 () Bool)

(assert (=> b!723635 m!678163))

(declare-fun m!678165 () Bool)

(assert (=> b!723635 m!678165))

(assert (=> b!723635 m!678157))

(declare-fun m!678167 () Bool)

(assert (=> b!723628 m!678167))

(assert (=> b!723631 m!678143))

(assert (=> b!723631 m!678143))

(declare-fun m!678169 () Bool)

(assert (=> b!723631 m!678169))

(declare-fun m!678171 () Bool)

(assert (=> b!723629 m!678171))

(declare-fun m!678173 () Bool)

(assert (=> b!723624 m!678173))

(declare-fun m!678175 () Bool)

(assert (=> b!723624 m!678175))

(declare-fun m!678177 () Bool)

(assert (=> b!723637 m!678177))

(assert (=> b!723632 m!678143))

(assert (=> b!723632 m!678143))

(declare-fun m!678179 () Bool)

(assert (=> b!723632 m!678179))

(declare-fun m!678181 () Bool)

(assert (=> b!723627 m!678181))

(push 1)

