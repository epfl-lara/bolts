; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65884 () Bool)

(assert start!65884)

(declare-fun b!759067 () Bool)

(declare-fun e!423207 () Bool)

(declare-fun e!423203 () Bool)

(assert (=> b!759067 (= e!423207 e!423203)))

(declare-fun res!513739 () Bool)

(assert (=> b!759067 (=> (not res!513739) (not e!423203))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42010 0))(
  ( (array!42011 (arr!20115 (Array (_ BitVec 32) (_ BitVec 64))) (size!20536 (_ BitVec 32))) )
))
(declare-fun lt!338279 () array!42010)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!338280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7722 0))(
  ( (MissingZero!7722 (index!33255 (_ BitVec 32))) (Found!7722 (index!33256 (_ BitVec 32))) (Intermediate!7722 (undefined!8534 Bool) (index!33257 (_ BitVec 32)) (x!64169 (_ BitVec 32))) (Undefined!7722) (MissingVacant!7722 (index!33258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42010 (_ BitVec 32)) SeekEntryResult!7722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759067 (= res!513739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338280 mask!3328) lt!338280 lt!338279 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338280 lt!338279 mask!3328)))))

(declare-fun a!3186 () array!42010)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!759067 (= lt!338280 (select (store (arr!20115 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759067 (= lt!338279 (array!42011 (store (arr!20115 a!3186) i!1173 k!2102) (size!20536 a!3186)))))

(declare-fun b!759068 () Bool)

(declare-fun e!423204 () Bool)

(assert (=> b!759068 (= e!423204 e!423207)))

(declare-fun res!513738 () Bool)

(assert (=> b!759068 (=> (not res!513738) (not e!423207))))

(declare-fun lt!338278 () SeekEntryResult!7722)

(assert (=> b!759068 (= res!513738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20115 a!3186) j!159) mask!3328) (select (arr!20115 a!3186) j!159) a!3186 mask!3328) lt!338278))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759068 (= lt!338278 (Intermediate!7722 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759069 () Bool)

(declare-fun res!513747 () Bool)

(assert (=> b!759069 (=> (not res!513747) (not e!423204))))

(declare-datatypes ((List!14170 0))(
  ( (Nil!14167) (Cons!14166 (h!15238 (_ BitVec 64)) (t!20493 List!14170)) )
))
(declare-fun arrayNoDuplicates!0 (array!42010 (_ BitVec 32) List!14170) Bool)

(assert (=> b!759069 (= res!513747 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14167))))

(declare-fun b!759071 () Bool)

(declare-fun res!513737 () Bool)

(declare-fun e!423201 () Bool)

(assert (=> b!759071 (=> (not res!513737) (not e!423201))))

(assert (=> b!759071 (= res!513737 (and (= (size!20536 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20536 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20536 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759072 () Bool)

(declare-fun res!513743 () Bool)

(assert (=> b!759072 (=> (not res!513743) (not e!423204))))

(assert (=> b!759072 (= res!513743 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20536 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20536 a!3186))))))

(declare-fun b!759073 () Bool)

(declare-fun res!513745 () Bool)

(assert (=> b!759073 (=> (not res!513745) (not e!423201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759073 (= res!513745 (validKeyInArray!0 k!2102))))

(declare-fun b!759074 () Bool)

(declare-fun e!423206 () Bool)

(declare-fun e!423200 () Bool)

(assert (=> b!759074 (= e!423206 e!423200)))

(declare-fun res!513736 () Bool)

(assert (=> b!759074 (=> (not res!513736) (not e!423200))))

(declare-fun lt!338277 () SeekEntryResult!7722)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42010 (_ BitVec 32)) SeekEntryResult!7722)

(assert (=> b!759074 (= res!513736 (= (seekEntryOrOpen!0 (select (arr!20115 a!3186) j!159) a!3186 mask!3328) lt!338277))))

(assert (=> b!759074 (= lt!338277 (Found!7722 j!159))))

(declare-fun b!759075 () Bool)

(declare-fun res!513749 () Bool)

(assert (=> b!759075 (=> (not res!513749) (not e!423207))))

(declare-fun e!423202 () Bool)

(assert (=> b!759075 (= res!513749 e!423202)))

(declare-fun c!83046 () Bool)

(assert (=> b!759075 (= c!83046 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759076 () Bool)

(declare-fun res!513744 () Bool)

(assert (=> b!759076 (=> (not res!513744) (not e!423201))))

(assert (=> b!759076 (= res!513744 (validKeyInArray!0 (select (arr!20115 a!3186) j!159)))))

(declare-fun b!759077 () Bool)

(assert (=> b!759077 (= e!423202 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20115 a!3186) j!159) a!3186 mask!3328) lt!338278))))

(declare-fun b!759078 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42010 (_ BitVec 32)) SeekEntryResult!7722)

(assert (=> b!759078 (= e!423200 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20115 a!3186) j!159) a!3186 mask!3328) lt!338277))))

(declare-fun b!759079 () Bool)

(declare-fun res!513746 () Bool)

(assert (=> b!759079 (=> (not res!513746) (not e!423207))))

(assert (=> b!759079 (= res!513746 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20115 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759080 () Bool)

(declare-fun res!513750 () Bool)

(assert (=> b!759080 (=> (not res!513750) (not e!423201))))

(declare-fun arrayContainsKey!0 (array!42010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759080 (= res!513750 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759081 () Bool)

(assert (=> b!759081 (= e!423201 e!423204)))

(declare-fun res!513742 () Bool)

(assert (=> b!759081 (=> (not res!513742) (not e!423204))))

(declare-fun lt!338282 () SeekEntryResult!7722)

(assert (=> b!759081 (= res!513742 (or (= lt!338282 (MissingZero!7722 i!1173)) (= lt!338282 (MissingVacant!7722 i!1173))))))

(assert (=> b!759081 (= lt!338282 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!759070 () Bool)

(assert (=> b!759070 (= e!423203 (not true))))

(assert (=> b!759070 e!423206))

(declare-fun res!513741 () Bool)

(assert (=> b!759070 (=> (not res!513741) (not e!423206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42010 (_ BitVec 32)) Bool)

(assert (=> b!759070 (= res!513741 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26284 0))(
  ( (Unit!26285) )
))
(declare-fun lt!338281 () Unit!26284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42010 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26284)

(assert (=> b!759070 (= lt!338281 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!513748 () Bool)

(assert (=> start!65884 (=> (not res!513748) (not e!423201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65884 (= res!513748 (validMask!0 mask!3328))))

(assert (=> start!65884 e!423201))

(assert (=> start!65884 true))

(declare-fun array_inv!15889 (array!42010) Bool)

(assert (=> start!65884 (array_inv!15889 a!3186)))

(declare-fun b!759082 () Bool)

(declare-fun res!513740 () Bool)

(assert (=> b!759082 (=> (not res!513740) (not e!423204))))

(assert (=> b!759082 (= res!513740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759083 () Bool)

(assert (=> b!759083 (= e!423202 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20115 a!3186) j!159) a!3186 mask!3328) (Found!7722 j!159)))))

(assert (= (and start!65884 res!513748) b!759071))

(assert (= (and b!759071 res!513737) b!759076))

(assert (= (and b!759076 res!513744) b!759073))

(assert (= (and b!759073 res!513745) b!759080))

(assert (= (and b!759080 res!513750) b!759081))

(assert (= (and b!759081 res!513742) b!759082))

(assert (= (and b!759082 res!513740) b!759069))

(assert (= (and b!759069 res!513747) b!759072))

(assert (= (and b!759072 res!513743) b!759068))

(assert (= (and b!759068 res!513738) b!759079))

(assert (= (and b!759079 res!513746) b!759075))

(assert (= (and b!759075 c!83046) b!759077))

(assert (= (and b!759075 (not c!83046)) b!759083))

(assert (= (and b!759075 res!513749) b!759067))

(assert (= (and b!759067 res!513739) b!759070))

(assert (= (and b!759070 res!513741) b!759074))

(assert (= (and b!759074 res!513736) b!759078))

(declare-fun m!706549 () Bool)

(assert (=> b!759068 m!706549))

(assert (=> b!759068 m!706549))

(declare-fun m!706551 () Bool)

(assert (=> b!759068 m!706551))

(assert (=> b!759068 m!706551))

(assert (=> b!759068 m!706549))

(declare-fun m!706553 () Bool)

(assert (=> b!759068 m!706553))

(assert (=> b!759077 m!706549))

(assert (=> b!759077 m!706549))

(declare-fun m!706555 () Bool)

(assert (=> b!759077 m!706555))

(declare-fun m!706557 () Bool)

(assert (=> b!759067 m!706557))

(declare-fun m!706559 () Bool)

(assert (=> b!759067 m!706559))

(assert (=> b!759067 m!706557))

(declare-fun m!706561 () Bool)

(assert (=> b!759067 m!706561))

(declare-fun m!706563 () Bool)

(assert (=> b!759067 m!706563))

(declare-fun m!706565 () Bool)

(assert (=> b!759067 m!706565))

(declare-fun m!706567 () Bool)

(assert (=> b!759070 m!706567))

(declare-fun m!706569 () Bool)

(assert (=> b!759070 m!706569))

(declare-fun m!706571 () Bool)

(assert (=> b!759079 m!706571))

(assert (=> b!759076 m!706549))

(assert (=> b!759076 m!706549))

(declare-fun m!706573 () Bool)

(assert (=> b!759076 m!706573))

(declare-fun m!706575 () Bool)

(assert (=> b!759069 m!706575))

(assert (=> b!759078 m!706549))

(assert (=> b!759078 m!706549))

(declare-fun m!706577 () Bool)

(assert (=> b!759078 m!706577))

(declare-fun m!706579 () Bool)

(assert (=> b!759082 m!706579))

(declare-fun m!706581 () Bool)

(assert (=> b!759073 m!706581))

(declare-fun m!706583 () Bool)

(assert (=> b!759081 m!706583))

(declare-fun m!706585 () Bool)

(assert (=> start!65884 m!706585))

(declare-fun m!706587 () Bool)

(assert (=> start!65884 m!706587))

(declare-fun m!706589 () Bool)

(assert (=> b!759080 m!706589))

(assert (=> b!759083 m!706549))

(assert (=> b!759083 m!706549))

(declare-fun m!706591 () Bool)

(assert (=> b!759083 m!706591))

(assert (=> b!759074 m!706549))

(assert (=> b!759074 m!706549))

(declare-fun m!706593 () Bool)

(assert (=> b!759074 m!706593))

(push 1)

