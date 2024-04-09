; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66814 () Bool)

(assert start!66814)

(declare-fun b!770165 () Bool)

(declare-fun res!521080 () Bool)

(declare-fun e!428838 () Bool)

(assert (=> b!770165 (=> (not res!521080) (not e!428838))))

(declare-datatypes ((array!42331 0))(
  ( (array!42332 (arr!20262 (Array (_ BitVec 32) (_ BitVec 64))) (size!20683 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42331)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42331 (_ BitVec 32)) Bool)

(assert (=> b!770165 (= res!521080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770166 () Bool)

(declare-fun e!428835 () Bool)

(declare-fun e!428836 () Bool)

(assert (=> b!770166 (= e!428835 e!428836)))

(declare-fun res!521081 () Bool)

(assert (=> b!770166 (=> (not res!521081) (not e!428836))))

(declare-datatypes ((SeekEntryResult!7869 0))(
  ( (MissingZero!7869 (index!33843 (_ BitVec 32))) (Found!7869 (index!33844 (_ BitVec 32))) (Intermediate!7869 (undefined!8681 Bool) (index!33845 (_ BitVec 32)) (x!64801 (_ BitVec 32))) (Undefined!7869) (MissingVacant!7869 (index!33846 (_ BitVec 32))) )
))
(declare-fun lt!342789 () SeekEntryResult!7869)

(declare-fun lt!342785 () SeekEntryResult!7869)

(assert (=> b!770166 (= res!521081 (= lt!342789 lt!342785))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!342787 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342783 () array!42331)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42331 (_ BitVec 32)) SeekEntryResult!7869)

(assert (=> b!770166 (= lt!342785 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342787 lt!342783 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770166 (= lt!342789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342787 mask!3328) lt!342787 lt!342783 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!770166 (= lt!342787 (select (store (arr!20262 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770166 (= lt!342783 (array!42332 (store (arr!20262 a!3186) i!1173 k!2102) (size!20683 a!3186)))))

(declare-fun b!770167 () Bool)

(declare-fun e!428837 () Bool)

(declare-fun e!428833 () Bool)

(assert (=> b!770167 (= e!428837 e!428833)))

(declare-fun res!521074 () Bool)

(assert (=> b!770167 (=> (not res!521074) (not e!428833))))

(declare-fun lt!342791 () SeekEntryResult!7869)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42331 (_ BitVec 32)) SeekEntryResult!7869)

(assert (=> b!770167 (= res!521074 (= (seekEntryOrOpen!0 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) lt!342791))))

(assert (=> b!770167 (= lt!342791 (Found!7869 j!159))))

(declare-fun b!770168 () Bool)

(declare-fun res!521068 () Bool)

(assert (=> b!770168 (=> (not res!521068) (not e!428838))))

(declare-datatypes ((List!14317 0))(
  ( (Nil!14314) (Cons!14313 (h!15412 (_ BitVec 64)) (t!20640 List!14317)) )
))
(declare-fun arrayNoDuplicates!0 (array!42331 (_ BitVec 32) List!14317) Bool)

(assert (=> b!770168 (= res!521068 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14314))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!770169 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42331 (_ BitVec 32)) SeekEntryResult!7869)

(assert (=> b!770169 (= e!428833 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) lt!342791))))

(declare-fun b!770170 () Bool)

(declare-datatypes ((Unit!26512 0))(
  ( (Unit!26513) )
))
(declare-fun e!428832 () Unit!26512)

(declare-fun Unit!26514 () Unit!26512)

(assert (=> b!770170 (= e!428832 Unit!26514)))

(declare-fun lt!342788 () SeekEntryResult!7869)

(declare-fun lt!342792 () (_ BitVec 32))

(assert (=> b!770170 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342792 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) lt!342788)))

(declare-fun b!770171 () Bool)

(declare-fun res!521070 () Bool)

(declare-fun e!428839 () Bool)

(assert (=> b!770171 (=> (not res!521070) (not e!428839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770171 (= res!521070 (validKeyInArray!0 (select (arr!20262 a!3186) j!159)))))

(declare-fun b!770172 () Bool)

(declare-fun e!428834 () Bool)

(assert (=> b!770172 (= e!428834 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) lt!342788))))

(declare-fun b!770173 () Bool)

(declare-fun Unit!26515 () Unit!26512)

(assert (=> b!770173 (= e!428832 Unit!26515)))

(declare-fun lt!342793 () SeekEntryResult!7869)

(assert (=> b!770173 (= lt!342793 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20262 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770173 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342792 resIntermediateIndex!5 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) (Found!7869 j!159))))

(declare-fun res!521075 () Bool)

(assert (=> start!66814 (=> (not res!521075) (not e!428839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66814 (= res!521075 (validMask!0 mask!3328))))

(assert (=> start!66814 e!428839))

(assert (=> start!66814 true))

(declare-fun array_inv!16036 (array!42331) Bool)

(assert (=> start!66814 (array_inv!16036 a!3186)))

(declare-fun b!770174 () Bool)

(assert (=> b!770174 (= e!428838 e!428835)))

(declare-fun res!521069 () Bool)

(assert (=> b!770174 (=> (not res!521069) (not e!428835))))

(assert (=> b!770174 (= res!521069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20262 a!3186) j!159) mask!3328) (select (arr!20262 a!3186) j!159) a!3186 mask!3328) lt!342788))))

(assert (=> b!770174 (= lt!342788 (Intermediate!7869 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770175 () Bool)

(declare-fun res!521076 () Bool)

(assert (=> b!770175 (=> (not res!521076) (not e!428839))))

(assert (=> b!770175 (= res!521076 (and (= (size!20683 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20683 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20683 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770176 () Bool)

(declare-fun res!521078 () Bool)

(assert (=> b!770176 (=> (not res!521078) (not e!428839))))

(assert (=> b!770176 (= res!521078 (validKeyInArray!0 k!2102))))

(declare-fun b!770177 () Bool)

(assert (=> b!770177 (= e!428834 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20262 a!3186) j!159) a!3186 mask!3328) (Found!7869 j!159)))))

(declare-fun b!770178 () Bool)

(declare-fun e!428831 () Bool)

(assert (=> b!770178 (= e!428831 true)))

(declare-fun lt!342786 () Unit!26512)

(assert (=> b!770178 (= lt!342786 e!428832)))

(declare-fun c!84944 () Bool)

(assert (=> b!770178 (= c!84944 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770178 (= lt!342792 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770179 () Bool)

(assert (=> b!770179 (= e!428839 e!428838)))

(declare-fun res!521082 () Bool)

(assert (=> b!770179 (=> (not res!521082) (not e!428838))))

(declare-fun lt!342790 () SeekEntryResult!7869)

(assert (=> b!770179 (= res!521082 (or (= lt!342790 (MissingZero!7869 i!1173)) (= lt!342790 (MissingVacant!7869 i!1173))))))

(assert (=> b!770179 (= lt!342790 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770180 () Bool)

(assert (=> b!770180 (= e!428836 (not e!428831))))

(declare-fun res!521073 () Bool)

(assert (=> b!770180 (=> res!521073 e!428831)))

(assert (=> b!770180 (= res!521073 (or (not (is-Intermediate!7869 lt!342785)) (bvsge x!1131 (x!64801 lt!342785))))))

(assert (=> b!770180 e!428837))

(declare-fun res!521072 () Bool)

(assert (=> b!770180 (=> (not res!521072) (not e!428837))))

(assert (=> b!770180 (= res!521072 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342784 () Unit!26512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26512)

(assert (=> b!770180 (= lt!342784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770181 () Bool)

(declare-fun res!521077 () Bool)

(assert (=> b!770181 (=> (not res!521077) (not e!428839))))

(declare-fun arrayContainsKey!0 (array!42331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770181 (= res!521077 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770182 () Bool)

(declare-fun res!521071 () Bool)

(assert (=> b!770182 (=> (not res!521071) (not e!428835))))

(assert (=> b!770182 (= res!521071 e!428834)))

(declare-fun c!84945 () Bool)

(assert (=> b!770182 (= c!84945 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770183 () Bool)

(declare-fun res!521083 () Bool)

(assert (=> b!770183 (=> (not res!521083) (not e!428838))))

(assert (=> b!770183 (= res!521083 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20683 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20683 a!3186))))))

(declare-fun b!770184 () Bool)

(declare-fun res!521079 () Bool)

(assert (=> b!770184 (=> (not res!521079) (not e!428835))))

(assert (=> b!770184 (= res!521079 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20262 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!66814 res!521075) b!770175))

(assert (= (and b!770175 res!521076) b!770171))

(assert (= (and b!770171 res!521070) b!770176))

(assert (= (and b!770176 res!521078) b!770181))

(assert (= (and b!770181 res!521077) b!770179))

(assert (= (and b!770179 res!521082) b!770165))

(assert (= (and b!770165 res!521080) b!770168))

(assert (= (and b!770168 res!521068) b!770183))

(assert (= (and b!770183 res!521083) b!770174))

(assert (= (and b!770174 res!521069) b!770184))

(assert (= (and b!770184 res!521079) b!770182))

(assert (= (and b!770182 c!84945) b!770172))

(assert (= (and b!770182 (not c!84945)) b!770177))

(assert (= (and b!770182 res!521071) b!770166))

(assert (= (and b!770166 res!521081) b!770180))

(assert (= (and b!770180 res!521072) b!770167))

(assert (= (and b!770167 res!521074) b!770169))

(assert (= (and b!770180 (not res!521073)) b!770178))

(assert (= (and b!770178 c!84944) b!770170))

(assert (= (and b!770178 (not c!84944)) b!770173))

(declare-fun m!715543 () Bool)

(assert (=> b!770174 m!715543))

(assert (=> b!770174 m!715543))

(declare-fun m!715545 () Bool)

(assert (=> b!770174 m!715545))

(assert (=> b!770174 m!715545))

(assert (=> b!770174 m!715543))

(declare-fun m!715547 () Bool)

(assert (=> b!770174 m!715547))

(assert (=> b!770172 m!715543))

(assert (=> b!770172 m!715543))

(declare-fun m!715549 () Bool)

(assert (=> b!770172 m!715549))

(declare-fun m!715551 () Bool)

(assert (=> b!770166 m!715551))

(declare-fun m!715553 () Bool)

(assert (=> b!770166 m!715553))

(declare-fun m!715555 () Bool)

(assert (=> b!770166 m!715555))

(declare-fun m!715557 () Bool)

(assert (=> b!770166 m!715557))

(assert (=> b!770166 m!715551))

(declare-fun m!715559 () Bool)

(assert (=> b!770166 m!715559))

(declare-fun m!715561 () Bool)

(assert (=> start!66814 m!715561))

(declare-fun m!715563 () Bool)

(assert (=> start!66814 m!715563))

(declare-fun m!715565 () Bool)

(assert (=> b!770179 m!715565))

(declare-fun m!715567 () Bool)

(assert (=> b!770178 m!715567))

(declare-fun m!715569 () Bool)

(assert (=> b!770168 m!715569))

(declare-fun m!715571 () Bool)

(assert (=> b!770181 m!715571))

(declare-fun m!715573 () Bool)

(assert (=> b!770165 m!715573))

(assert (=> b!770177 m!715543))

(assert (=> b!770177 m!715543))

(declare-fun m!715575 () Bool)

(assert (=> b!770177 m!715575))

(declare-fun m!715577 () Bool)

(assert (=> b!770176 m!715577))

(declare-fun m!715579 () Bool)

(assert (=> b!770184 m!715579))

(assert (=> b!770167 m!715543))

(assert (=> b!770167 m!715543))

(declare-fun m!715581 () Bool)

(assert (=> b!770167 m!715581))

(assert (=> b!770169 m!715543))

(assert (=> b!770169 m!715543))

(declare-fun m!715583 () Bool)

(assert (=> b!770169 m!715583))

(assert (=> b!770171 m!715543))

(assert (=> b!770171 m!715543))

(declare-fun m!715585 () Bool)

(assert (=> b!770171 m!715585))

(assert (=> b!770170 m!715543))

(assert (=> b!770170 m!715543))

(declare-fun m!715587 () Bool)

(assert (=> b!770170 m!715587))

(assert (=> b!770173 m!715543))

(assert (=> b!770173 m!715543))

(assert (=> b!770173 m!715575))

(assert (=> b!770173 m!715543))

(declare-fun m!715589 () Bool)

(assert (=> b!770173 m!715589))

(declare-fun m!715591 () Bool)

(assert (=> b!770180 m!715591))

(declare-fun m!715593 () Bool)

(assert (=> b!770180 m!715593))

(push 1)

