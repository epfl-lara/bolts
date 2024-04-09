; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66306 () Bool)

(assert start!66306)

(declare-fun b!763797 () Bool)

(declare-fun res!516866 () Bool)

(declare-fun e!425493 () Bool)

(assert (=> b!763797 (=> (not res!516866) (not e!425493))))

(declare-datatypes ((array!42164 0))(
  ( (array!42165 (arr!20186 (Array (_ BitVec 32) (_ BitVec 64))) (size!20607 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42164)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763797 (= res!516866 (validKeyInArray!0 (select (arr!20186 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!425495 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!763798 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7793 0))(
  ( (MissingZero!7793 (index!33539 (_ BitVec 32))) (Found!7793 (index!33540 (_ BitVec 32))) (Intermediate!7793 (undefined!8605 Bool) (index!33541 (_ BitVec 32)) (x!64462 (_ BitVec 32))) (Undefined!7793) (MissingVacant!7793 (index!33542 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42164 (_ BitVec 32)) SeekEntryResult!7793)

(assert (=> b!763798 (= e!425495 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20186 a!3186) j!159) a!3186 mask!3328) (Found!7793 j!159)))))

(declare-fun b!763799 () Bool)

(declare-fun res!516868 () Bool)

(assert (=> b!763799 (=> (not res!516868) (not e!425493))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763799 (= res!516868 (and (= (size!20607 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20607 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20607 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763800 () Bool)

(declare-fun res!516867 () Bool)

(assert (=> b!763800 (=> (not res!516867) (not e!425493))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763800 (= res!516867 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!339944 () SeekEntryResult!7793)

(declare-fun b!763801 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42164 (_ BitVec 32)) SeekEntryResult!7793)

(assert (=> b!763801 (= e!425495 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20186 a!3186) j!159) a!3186 mask!3328) lt!339944))))

(declare-fun res!516872 () Bool)

(assert (=> start!66306 (=> (not res!516872) (not e!425493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66306 (= res!516872 (validMask!0 mask!3328))))

(assert (=> start!66306 e!425493))

(assert (=> start!66306 true))

(declare-fun array_inv!15960 (array!42164) Bool)

(assert (=> start!66306 (array_inv!15960 a!3186)))

(declare-fun b!763802 () Bool)

(declare-fun res!516870 () Bool)

(declare-fun e!425497 () Bool)

(assert (=> b!763802 (=> (not res!516870) (not e!425497))))

(assert (=> b!763802 (= res!516870 e!425495)))

(declare-fun c!83853 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763802 (= c!83853 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763803 () Bool)

(declare-fun res!516874 () Bool)

(declare-fun e!425496 () Bool)

(assert (=> b!763803 (=> (not res!516874) (not e!425496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42164 (_ BitVec 32)) Bool)

(assert (=> b!763803 (= res!516874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763804 () Bool)

(declare-fun res!516871 () Bool)

(assert (=> b!763804 (=> (not res!516871) (not e!425496))))

(declare-datatypes ((List!14241 0))(
  ( (Nil!14238) (Cons!14237 (h!15321 (_ BitVec 64)) (t!20564 List!14241)) )
))
(declare-fun arrayNoDuplicates!0 (array!42164 (_ BitVec 32) List!14241) Bool)

(assert (=> b!763804 (= res!516871 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14238))))

(declare-fun b!763805 () Bool)

(declare-fun res!516875 () Bool)

(assert (=> b!763805 (=> (not res!516875) (not e!425496))))

(assert (=> b!763805 (= res!516875 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20607 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20607 a!3186))))))

(declare-fun b!763806 () Bool)

(assert (=> b!763806 (= e!425496 e!425497)))

(declare-fun res!516876 () Bool)

(assert (=> b!763806 (=> (not res!516876) (not e!425497))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763806 (= res!516876 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20186 a!3186) j!159) mask!3328) (select (arr!20186 a!3186) j!159) a!3186 mask!3328) lt!339944))))

(assert (=> b!763806 (= lt!339944 (Intermediate!7793 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763807 () Bool)

(declare-fun e!425498 () Bool)

(assert (=> b!763807 (= e!425498 (bvsgt #b00000000000000000000000000000000 (size!20607 a!3186)))))

(declare-fun b!763808 () Bool)

(assert (=> b!763808 (= e!425497 e!425498)))

(declare-fun res!516864 () Bool)

(assert (=> b!763808 (=> (not res!516864) (not e!425498))))

(declare-fun lt!339946 () (_ BitVec 64))

(declare-fun lt!339943 () array!42164)

(assert (=> b!763808 (= res!516864 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339946 mask!3328) lt!339946 lt!339943 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339946 lt!339943 mask!3328)))))

(assert (=> b!763808 (= lt!339946 (select (store (arr!20186 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763808 (= lt!339943 (array!42165 (store (arr!20186 a!3186) i!1173 k!2102) (size!20607 a!3186)))))

(declare-fun b!763809 () Bool)

(declare-fun res!516873 () Bool)

(assert (=> b!763809 (=> (not res!516873) (not e!425493))))

(assert (=> b!763809 (= res!516873 (validKeyInArray!0 k!2102))))

(declare-fun b!763810 () Bool)

(assert (=> b!763810 (= e!425493 e!425496)))

(declare-fun res!516865 () Bool)

(assert (=> b!763810 (=> (not res!516865) (not e!425496))))

(declare-fun lt!339945 () SeekEntryResult!7793)

(assert (=> b!763810 (= res!516865 (or (= lt!339945 (MissingZero!7793 i!1173)) (= lt!339945 (MissingVacant!7793 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42164 (_ BitVec 32)) SeekEntryResult!7793)

(assert (=> b!763810 (= lt!339945 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763811 () Bool)

(declare-fun res!516869 () Bool)

(assert (=> b!763811 (=> (not res!516869) (not e!425497))))

(assert (=> b!763811 (= res!516869 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20186 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!66306 res!516872) b!763799))

(assert (= (and b!763799 res!516868) b!763797))

(assert (= (and b!763797 res!516866) b!763809))

(assert (= (and b!763809 res!516873) b!763800))

(assert (= (and b!763800 res!516867) b!763810))

(assert (= (and b!763810 res!516865) b!763803))

(assert (= (and b!763803 res!516874) b!763804))

(assert (= (and b!763804 res!516871) b!763805))

(assert (= (and b!763805 res!516875) b!763806))

(assert (= (and b!763806 res!516876) b!763811))

(assert (= (and b!763811 res!516869) b!763802))

(assert (= (and b!763802 c!83853) b!763801))

(assert (= (and b!763802 (not c!83853)) b!763798))

(assert (= (and b!763802 res!516870) b!763808))

(assert (= (and b!763808 res!516864) b!763807))

(declare-fun m!710301 () Bool)

(assert (=> b!763798 m!710301))

(assert (=> b!763798 m!710301))

(declare-fun m!710303 () Bool)

(assert (=> b!763798 m!710303))

(declare-fun m!710305 () Bool)

(assert (=> b!763803 m!710305))

(declare-fun m!710307 () Bool)

(assert (=> b!763810 m!710307))

(declare-fun m!710309 () Bool)

(assert (=> b!763811 m!710309))

(declare-fun m!710311 () Bool)

(assert (=> b!763800 m!710311))

(declare-fun m!710313 () Bool)

(assert (=> b!763808 m!710313))

(declare-fun m!710315 () Bool)

(assert (=> b!763808 m!710315))

(declare-fun m!710317 () Bool)

(assert (=> b!763808 m!710317))

(assert (=> b!763808 m!710313))

(declare-fun m!710319 () Bool)

(assert (=> b!763808 m!710319))

(declare-fun m!710321 () Bool)

(assert (=> b!763808 m!710321))

(declare-fun m!710323 () Bool)

(assert (=> b!763804 m!710323))

(assert (=> b!763801 m!710301))

(assert (=> b!763801 m!710301))

(declare-fun m!710325 () Bool)

(assert (=> b!763801 m!710325))

(declare-fun m!710327 () Bool)

(assert (=> start!66306 m!710327))

(declare-fun m!710329 () Bool)

(assert (=> start!66306 m!710329))

(declare-fun m!710331 () Bool)

(assert (=> b!763809 m!710331))

(assert (=> b!763806 m!710301))

(assert (=> b!763806 m!710301))

(declare-fun m!710333 () Bool)

(assert (=> b!763806 m!710333))

(assert (=> b!763806 m!710333))

(assert (=> b!763806 m!710301))

(declare-fun m!710335 () Bool)

(assert (=> b!763806 m!710335))

(assert (=> b!763797 m!710301))

(assert (=> b!763797 m!710301))

(declare-fun m!710337 () Bool)

(assert (=> b!763797 m!710337))

(push 1)

