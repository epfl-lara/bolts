; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64308 () Bool)

(assert start!64308)

(declare-fun b!721969 () Bool)

(declare-fun res!483869 () Bool)

(declare-fun e!404760 () Bool)

(assert (=> b!721969 (=> (not res!483869) (not e!404760))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721969 (= res!483869 (validKeyInArray!0 k0!2102))))

(declare-fun b!721970 () Bool)

(declare-fun res!483870 () Bool)

(declare-fun e!404759 () Bool)

(assert (=> b!721970 (=> (not res!483870) (not e!404759))))

(declare-fun e!404762 () Bool)

(assert (=> b!721970 (= res!483870 e!404762)))

(declare-fun c!79422 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721970 (= c!79422 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721971 () Bool)

(declare-fun res!483875 () Bool)

(assert (=> b!721971 (=> (not res!483875) (not e!404760))))

(declare-datatypes ((array!40842 0))(
  ( (array!40843 (arr!19540 (Array (_ BitVec 32) (_ BitVec 64))) (size!19961 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40842)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!721971 (= res!483875 (and (= (size!19961 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19961 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19961 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721972 () Bool)

(declare-fun res!483877 () Bool)

(declare-fun e!404761 () Bool)

(assert (=> b!721972 (=> (not res!483877) (not e!404761))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!721972 (= res!483877 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19961 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19961 a!3186))))))

(declare-fun b!721974 () Bool)

(assert (=> b!721974 (= e!404760 e!404761)))

(declare-fun res!483878 () Bool)

(assert (=> b!721974 (=> (not res!483878) (not e!404761))))

(declare-datatypes ((SeekEntryResult!7147 0))(
  ( (MissingZero!7147 (index!30955 (_ BitVec 32))) (Found!7147 (index!30956 (_ BitVec 32))) (Intermediate!7147 (undefined!7959 Bool) (index!30957 (_ BitVec 32)) (x!61989 (_ BitVec 32))) (Undefined!7147) (MissingVacant!7147 (index!30958 (_ BitVec 32))) )
))
(declare-fun lt!320173 () SeekEntryResult!7147)

(assert (=> b!721974 (= res!483878 (or (= lt!320173 (MissingZero!7147 i!1173)) (= lt!320173 (MissingVacant!7147 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40842 (_ BitVec 32)) SeekEntryResult!7147)

(assert (=> b!721974 (= lt!320173 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!721975 () Bool)

(declare-fun res!483874 () Bool)

(assert (=> b!721975 (=> (not res!483874) (not e!404761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40842 (_ BitVec 32)) Bool)

(assert (=> b!721975 (= res!483874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721976 () Bool)

(assert (=> b!721976 (= e!404759 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!721977 () Bool)

(declare-fun res!483868 () Bool)

(assert (=> b!721977 (=> (not res!483868) (not e!404759))))

(assert (=> b!721977 (= res!483868 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19540 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721978 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40842 (_ BitVec 32)) SeekEntryResult!7147)

(assert (=> b!721978 (= e!404762 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19540 a!3186) j!159) a!3186 mask!3328) (Found!7147 j!159)))))

(declare-fun lt!320174 () SeekEntryResult!7147)

(declare-fun b!721979 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40842 (_ BitVec 32)) SeekEntryResult!7147)

(assert (=> b!721979 (= e!404762 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19540 a!3186) j!159) a!3186 mask!3328) lt!320174))))

(declare-fun b!721980 () Bool)

(declare-fun res!483871 () Bool)

(assert (=> b!721980 (=> (not res!483871) (not e!404760))))

(assert (=> b!721980 (= res!483871 (validKeyInArray!0 (select (arr!19540 a!3186) j!159)))))

(declare-fun b!721973 () Bool)

(assert (=> b!721973 (= e!404761 e!404759)))

(declare-fun res!483876 () Bool)

(assert (=> b!721973 (=> (not res!483876) (not e!404759))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721973 (= res!483876 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19540 a!3186) j!159) mask!3328) (select (arr!19540 a!3186) j!159) a!3186 mask!3328) lt!320174))))

(assert (=> b!721973 (= lt!320174 (Intermediate!7147 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483872 () Bool)

(assert (=> start!64308 (=> (not res!483872) (not e!404760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64308 (= res!483872 (validMask!0 mask!3328))))

(assert (=> start!64308 e!404760))

(assert (=> start!64308 true))

(declare-fun array_inv!15314 (array!40842) Bool)

(assert (=> start!64308 (array_inv!15314 a!3186)))

(declare-fun b!721981 () Bool)

(declare-fun res!483873 () Bool)

(assert (=> b!721981 (=> (not res!483873) (not e!404761))))

(declare-datatypes ((List!13595 0))(
  ( (Nil!13592) (Cons!13591 (h!14645 (_ BitVec 64)) (t!19918 List!13595)) )
))
(declare-fun arrayNoDuplicates!0 (array!40842 (_ BitVec 32) List!13595) Bool)

(assert (=> b!721981 (= res!483873 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13592))))

(declare-fun b!721982 () Bool)

(declare-fun res!483879 () Bool)

(assert (=> b!721982 (=> (not res!483879) (not e!404760))))

(declare-fun arrayContainsKey!0 (array!40842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721982 (= res!483879 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64308 res!483872) b!721971))

(assert (= (and b!721971 res!483875) b!721980))

(assert (= (and b!721980 res!483871) b!721969))

(assert (= (and b!721969 res!483869) b!721982))

(assert (= (and b!721982 res!483879) b!721974))

(assert (= (and b!721974 res!483878) b!721975))

(assert (= (and b!721975 res!483874) b!721981))

(assert (= (and b!721981 res!483873) b!721972))

(assert (= (and b!721972 res!483877) b!721973))

(assert (= (and b!721973 res!483876) b!721977))

(assert (= (and b!721977 res!483868) b!721970))

(assert (= (and b!721970 c!79422) b!721979))

(assert (= (and b!721970 (not c!79422)) b!721978))

(assert (= (and b!721970 res!483870) b!721976))

(declare-fun m!676691 () Bool)

(assert (=> b!721969 m!676691))

(declare-fun m!676693 () Bool)

(assert (=> b!721973 m!676693))

(assert (=> b!721973 m!676693))

(declare-fun m!676695 () Bool)

(assert (=> b!721973 m!676695))

(assert (=> b!721973 m!676695))

(assert (=> b!721973 m!676693))

(declare-fun m!676697 () Bool)

(assert (=> b!721973 m!676697))

(assert (=> b!721979 m!676693))

(assert (=> b!721979 m!676693))

(declare-fun m!676699 () Bool)

(assert (=> b!721979 m!676699))

(declare-fun m!676701 () Bool)

(assert (=> start!64308 m!676701))

(declare-fun m!676703 () Bool)

(assert (=> start!64308 m!676703))

(declare-fun m!676705 () Bool)

(assert (=> b!721974 m!676705))

(assert (=> b!721980 m!676693))

(assert (=> b!721980 m!676693))

(declare-fun m!676707 () Bool)

(assert (=> b!721980 m!676707))

(declare-fun m!676709 () Bool)

(assert (=> b!721982 m!676709))

(declare-fun m!676711 () Bool)

(assert (=> b!721977 m!676711))

(assert (=> b!721978 m!676693))

(assert (=> b!721978 m!676693))

(declare-fun m!676713 () Bool)

(assert (=> b!721978 m!676713))

(declare-fun m!676715 () Bool)

(assert (=> b!721975 m!676715))

(declare-fun m!676717 () Bool)

(assert (=> b!721981 m!676717))

(check-sat (not b!721973) (not b!721980) (not b!721975) (not b!721969) (not b!721979) (not b!721981) (not b!721974) (not b!721982) (not b!721978) (not start!64308))
(check-sat)
