; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65888 () Bool)

(assert start!65888)

(declare-fun b!759169 () Bool)

(declare-fun e!423254 () Bool)

(declare-fun e!423249 () Bool)

(assert (=> b!759169 (= e!423254 e!423249)))

(declare-fun res!513826 () Bool)

(assert (=> b!759169 (=> (not res!513826) (not e!423249))))

(declare-datatypes ((array!42014 0))(
  ( (array!42015 (arr!20117 (Array (_ BitVec 32) (_ BitVec 64))) (size!20538 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42014)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7724 0))(
  ( (MissingZero!7724 (index!33263 (_ BitVec 32))) (Found!7724 (index!33264 (_ BitVec 32))) (Intermediate!7724 (undefined!8536 Bool) (index!33265 (_ BitVec 32)) (x!64171 (_ BitVec 32))) (Undefined!7724) (MissingVacant!7724 (index!33266 (_ BitVec 32))) )
))
(declare-fun lt!338315 () SeekEntryResult!7724)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42014 (_ BitVec 32)) SeekEntryResult!7724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759169 (= res!513826 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20117 a!3186) j!159) mask!3328) (select (arr!20117 a!3186) j!159) a!3186 mask!3328) lt!338315))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759169 (= lt!338315 (Intermediate!7724 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759170 () Bool)

(declare-fun res!513829 () Bool)

(declare-fun e!423253 () Bool)

(assert (=> b!759170 (=> (not res!513829) (not e!423253))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759170 (= res!513829 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759171 () Bool)

(declare-fun res!513836 () Bool)

(assert (=> b!759171 (=> (not res!513836) (not e!423249))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759171 (= res!513836 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20117 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759172 () Bool)

(declare-fun res!513830 () Bool)

(assert (=> b!759172 (=> (not res!513830) (not e!423254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42014 (_ BitVec 32)) Bool)

(assert (=> b!759172 (= res!513830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759173 () Bool)

(assert (=> b!759173 (= e!423253 e!423254)))

(declare-fun res!513837 () Bool)

(assert (=> b!759173 (=> (not res!513837) (not e!423254))))

(declare-fun lt!338313 () SeekEntryResult!7724)

(assert (=> b!759173 (= res!513837 (or (= lt!338313 (MissingZero!7724 i!1173)) (= lt!338313 (MissingVacant!7724 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42014 (_ BitVec 32)) SeekEntryResult!7724)

(assert (=> b!759173 (= lt!338313 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!759174 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!423255 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!759174 (= e!423255 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20117 a!3186) j!159) a!3186 mask!3328) lt!338315))))

(declare-fun b!759175 () Bool)

(declare-fun res!513831 () Bool)

(assert (=> b!759175 (=> (not res!513831) (not e!423249))))

(assert (=> b!759175 (= res!513831 e!423255)))

(declare-fun c!83052 () Bool)

(assert (=> b!759175 (= c!83052 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759176 () Bool)

(declare-fun res!513839 () Bool)

(assert (=> b!759176 (=> (not res!513839) (not e!423253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759176 (= res!513839 (validKeyInArray!0 k!2102))))

(declare-fun b!759177 () Bool)

(declare-fun e!423251 () Bool)

(assert (=> b!759177 (= e!423251 (not true))))

(declare-fun e!423248 () Bool)

(assert (=> b!759177 e!423248))

(declare-fun res!513833 () Bool)

(assert (=> b!759177 (=> (not res!513833) (not e!423248))))

(assert (=> b!759177 (= res!513833 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26288 0))(
  ( (Unit!26289) )
))
(declare-fun lt!338314 () Unit!26288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42014 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26288)

(assert (=> b!759177 (= lt!338314 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759178 () Bool)

(assert (=> b!759178 (= e!423249 e!423251)))

(declare-fun res!513832 () Bool)

(assert (=> b!759178 (=> (not res!513832) (not e!423251))))

(declare-fun lt!338317 () array!42014)

(declare-fun lt!338316 () (_ BitVec 64))

(assert (=> b!759178 (= res!513832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338316 mask!3328) lt!338316 lt!338317 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338316 lt!338317 mask!3328)))))

(assert (=> b!759178 (= lt!338316 (select (store (arr!20117 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759178 (= lt!338317 (array!42015 (store (arr!20117 a!3186) i!1173 k!2102) (size!20538 a!3186)))))

(declare-fun b!759179 () Bool)

(declare-fun e!423250 () Bool)

(assert (=> b!759179 (= e!423248 e!423250)))

(declare-fun res!513827 () Bool)

(assert (=> b!759179 (=> (not res!513827) (not e!423250))))

(declare-fun lt!338318 () SeekEntryResult!7724)

(assert (=> b!759179 (= res!513827 (= (seekEntryOrOpen!0 (select (arr!20117 a!3186) j!159) a!3186 mask!3328) lt!338318))))

(assert (=> b!759179 (= lt!338318 (Found!7724 j!159))))

(declare-fun b!759180 () Bool)

(declare-fun res!513838 () Bool)

(assert (=> b!759180 (=> (not res!513838) (not e!423254))))

(declare-datatypes ((List!14172 0))(
  ( (Nil!14169) (Cons!14168 (h!15240 (_ BitVec 64)) (t!20495 List!14172)) )
))
(declare-fun arrayNoDuplicates!0 (array!42014 (_ BitVec 32) List!14172) Bool)

(assert (=> b!759180 (= res!513838 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14169))))

(declare-fun b!759181 () Bool)

(declare-fun res!513828 () Bool)

(assert (=> b!759181 (=> (not res!513828) (not e!423253))))

(assert (=> b!759181 (= res!513828 (and (= (size!20538 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20538 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20538 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759182 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42014 (_ BitVec 32)) SeekEntryResult!7724)

(assert (=> b!759182 (= e!423255 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20117 a!3186) j!159) a!3186 mask!3328) (Found!7724 j!159)))))

(declare-fun b!759183 () Bool)

(declare-fun res!513835 () Bool)

(assert (=> b!759183 (=> (not res!513835) (not e!423254))))

(assert (=> b!759183 (= res!513835 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20538 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20538 a!3186))))))

(declare-fun res!513840 () Bool)

(assert (=> start!65888 (=> (not res!513840) (not e!423253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65888 (= res!513840 (validMask!0 mask!3328))))

(assert (=> start!65888 e!423253))

(assert (=> start!65888 true))

(declare-fun array_inv!15891 (array!42014) Bool)

(assert (=> start!65888 (array_inv!15891 a!3186)))

(declare-fun b!759184 () Bool)

(declare-fun res!513834 () Bool)

(assert (=> b!759184 (=> (not res!513834) (not e!423253))))

(assert (=> b!759184 (= res!513834 (validKeyInArray!0 (select (arr!20117 a!3186) j!159)))))

(declare-fun b!759185 () Bool)

(assert (=> b!759185 (= e!423250 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20117 a!3186) j!159) a!3186 mask!3328) lt!338318))))

(assert (= (and start!65888 res!513840) b!759181))

(assert (= (and b!759181 res!513828) b!759184))

(assert (= (and b!759184 res!513834) b!759176))

(assert (= (and b!759176 res!513839) b!759170))

(assert (= (and b!759170 res!513829) b!759173))

(assert (= (and b!759173 res!513837) b!759172))

(assert (= (and b!759172 res!513830) b!759180))

(assert (= (and b!759180 res!513838) b!759183))

(assert (= (and b!759183 res!513835) b!759169))

(assert (= (and b!759169 res!513826) b!759171))

(assert (= (and b!759171 res!513836) b!759175))

(assert (= (and b!759175 c!83052) b!759174))

(assert (= (and b!759175 (not c!83052)) b!759182))

(assert (= (and b!759175 res!513831) b!759178))

(assert (= (and b!759178 res!513832) b!759177))

(assert (= (and b!759177 res!513833) b!759179))

(assert (= (and b!759179 res!513827) b!759185))

(declare-fun m!706641 () Bool)

(assert (=> b!759178 m!706641))

(assert (=> b!759178 m!706641))

(declare-fun m!706643 () Bool)

(assert (=> b!759178 m!706643))

(declare-fun m!706645 () Bool)

(assert (=> b!759178 m!706645))

(declare-fun m!706647 () Bool)

(assert (=> b!759178 m!706647))

(declare-fun m!706649 () Bool)

(assert (=> b!759178 m!706649))

(declare-fun m!706651 () Bool)

(assert (=> b!759174 m!706651))

(assert (=> b!759174 m!706651))

(declare-fun m!706653 () Bool)

(assert (=> b!759174 m!706653))

(declare-fun m!706655 () Bool)

(assert (=> b!759173 m!706655))

(declare-fun m!706657 () Bool)

(assert (=> b!759177 m!706657))

(declare-fun m!706659 () Bool)

(assert (=> b!759177 m!706659))

(assert (=> b!759179 m!706651))

(assert (=> b!759179 m!706651))

(declare-fun m!706661 () Bool)

(assert (=> b!759179 m!706661))

(declare-fun m!706663 () Bool)

(assert (=> b!759176 m!706663))

(assert (=> b!759169 m!706651))

(assert (=> b!759169 m!706651))

(declare-fun m!706665 () Bool)

(assert (=> b!759169 m!706665))

(assert (=> b!759169 m!706665))

(assert (=> b!759169 m!706651))

(declare-fun m!706667 () Bool)

(assert (=> b!759169 m!706667))

(declare-fun m!706669 () Bool)

(assert (=> start!65888 m!706669))

(declare-fun m!706671 () Bool)

(assert (=> start!65888 m!706671))

(declare-fun m!706673 () Bool)

(assert (=> b!759171 m!706673))

(declare-fun m!706675 () Bool)

(assert (=> b!759170 m!706675))

(assert (=> b!759185 m!706651))

(assert (=> b!759185 m!706651))

(declare-fun m!706677 () Bool)

(assert (=> b!759185 m!706677))

(assert (=> b!759182 m!706651))

(assert (=> b!759182 m!706651))

(declare-fun m!706679 () Bool)

(assert (=> b!759182 m!706679))

(declare-fun m!706681 () Bool)

(assert (=> b!759180 m!706681))

(assert (=> b!759184 m!706651))

(assert (=> b!759184 m!706651))

(declare-fun m!706683 () Bool)

(assert (=> b!759184 m!706683))

(declare-fun m!706685 () Bool)

(assert (=> b!759172 m!706685))

(push 1)

