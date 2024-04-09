; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64202 () Bool)

(assert start!64202)

(declare-fun b!720697 () Bool)

(declare-fun res!482947 () Bool)

(declare-fun e!404210 () Bool)

(assert (=> b!720697 (=> (not res!482947) (not e!404210))))

(declare-datatypes ((array!40793 0))(
  ( (array!40794 (arr!19517 (Array (_ BitVec 32) (_ BitVec 64))) (size!19938 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40793)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!720697 (= res!482947 (and (= (size!19938 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19938 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19938 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720698 () Bool)

(declare-fun res!482952 () Bool)

(declare-fun e!404213 () Bool)

(assert (=> b!720698 (=> (not res!482952) (not e!404213))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!720698 (= res!482952 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19517 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720699 () Bool)

(declare-fun res!482950 () Bool)

(assert (=> b!720699 (=> (not res!482950) (not e!404210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720699 (= res!482950 (validKeyInArray!0 (select (arr!19517 a!3186) j!159)))))

(declare-fun b!720700 () Bool)

(declare-fun e!404212 () Bool)

(assert (=> b!720700 (= e!404210 e!404212)))

(declare-fun res!482958 () Bool)

(assert (=> b!720700 (=> (not res!482958) (not e!404212))))

(declare-datatypes ((SeekEntryResult!7124 0))(
  ( (MissingZero!7124 (index!30863 (_ BitVec 32))) (Found!7124 (index!30864 (_ BitVec 32))) (Intermediate!7124 (undefined!7936 Bool) (index!30865 (_ BitVec 32)) (x!61893 (_ BitVec 32))) (Undefined!7124) (MissingVacant!7124 (index!30866 (_ BitVec 32))) )
))
(declare-fun lt!319861 () SeekEntryResult!7124)

(assert (=> b!720700 (= res!482958 (or (= lt!319861 (MissingZero!7124 i!1173)) (= lt!319861 (MissingVacant!7124 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40793 (_ BitVec 32)) SeekEntryResult!7124)

(assert (=> b!720700 (= lt!319861 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720701 () Bool)

(declare-fun res!482954 () Bool)

(assert (=> b!720701 (=> (not res!482954) (not e!404212))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720701 (= res!482954 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19938 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19938 a!3186))))))

(declare-fun b!720702 () Bool)

(declare-fun res!482948 () Bool)

(assert (=> b!720702 (=> (not res!482948) (not e!404210))))

(assert (=> b!720702 (= res!482948 (validKeyInArray!0 k!2102))))

(declare-fun b!720704 () Bool)

(assert (=> b!720704 (= e!404213 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!319860 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720704 (= lt!319860 (toIndex!0 (select (store (arr!19517 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720705 () Bool)

(assert (=> b!720705 (= e!404212 e!404213)))

(declare-fun res!482949 () Bool)

(assert (=> b!720705 (=> (not res!482949) (not e!404213))))

(declare-fun lt!319862 () SeekEntryResult!7124)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40793 (_ BitVec 32)) SeekEntryResult!7124)

(assert (=> b!720705 (= res!482949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19517 a!3186) j!159) mask!3328) (select (arr!19517 a!3186) j!159) a!3186 mask!3328) lt!319862))))

(assert (=> b!720705 (= lt!319862 (Intermediate!7124 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720706 () Bool)

(declare-fun res!482953 () Bool)

(assert (=> b!720706 (=> (not res!482953) (not e!404213))))

(declare-fun e!404214 () Bool)

(assert (=> b!720706 (= res!482953 e!404214)))

(declare-fun c!79245 () Bool)

(assert (=> b!720706 (= c!79245 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720703 () Bool)

(declare-fun res!482955 () Bool)

(assert (=> b!720703 (=> (not res!482955) (not e!404212))))

(declare-datatypes ((List!13572 0))(
  ( (Nil!13569) (Cons!13568 (h!14619 (_ BitVec 64)) (t!19895 List!13572)) )
))
(declare-fun arrayNoDuplicates!0 (array!40793 (_ BitVec 32) List!13572) Bool)

(assert (=> b!720703 (= res!482955 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13569))))

(declare-fun res!482951 () Bool)

(assert (=> start!64202 (=> (not res!482951) (not e!404210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64202 (= res!482951 (validMask!0 mask!3328))))

(assert (=> start!64202 e!404210))

(assert (=> start!64202 true))

(declare-fun array_inv!15291 (array!40793) Bool)

(assert (=> start!64202 (array_inv!15291 a!3186)))

(declare-fun b!720707 () Bool)

(declare-fun res!482956 () Bool)

(assert (=> b!720707 (=> (not res!482956) (not e!404212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40793 (_ BitVec 32)) Bool)

(assert (=> b!720707 (= res!482956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720708 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40793 (_ BitVec 32)) SeekEntryResult!7124)

(assert (=> b!720708 (= e!404214 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19517 a!3186) j!159) a!3186 mask!3328) (Found!7124 j!159)))))

(declare-fun b!720709 () Bool)

(assert (=> b!720709 (= e!404214 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19517 a!3186) j!159) a!3186 mask!3328) lt!319862))))

(declare-fun b!720710 () Bool)

(declare-fun res!482957 () Bool)

(assert (=> b!720710 (=> (not res!482957) (not e!404210))))

(declare-fun arrayContainsKey!0 (array!40793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720710 (= res!482957 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64202 res!482951) b!720697))

(assert (= (and b!720697 res!482947) b!720699))

(assert (= (and b!720699 res!482950) b!720702))

(assert (= (and b!720702 res!482948) b!720710))

(assert (= (and b!720710 res!482957) b!720700))

(assert (= (and b!720700 res!482958) b!720707))

(assert (= (and b!720707 res!482956) b!720703))

(assert (= (and b!720703 res!482955) b!720701))

(assert (= (and b!720701 res!482954) b!720705))

(assert (= (and b!720705 res!482949) b!720698))

(assert (= (and b!720698 res!482952) b!720706))

(assert (= (and b!720706 c!79245) b!720709))

(assert (= (and b!720706 (not c!79245)) b!720708))

(assert (= (and b!720706 res!482953) b!720704))

(declare-fun m!675801 () Bool)

(assert (=> start!64202 m!675801))

(declare-fun m!675803 () Bool)

(assert (=> start!64202 m!675803))

(declare-fun m!675805 () Bool)

(assert (=> b!720705 m!675805))

(assert (=> b!720705 m!675805))

(declare-fun m!675807 () Bool)

(assert (=> b!720705 m!675807))

(assert (=> b!720705 m!675807))

(assert (=> b!720705 m!675805))

(declare-fun m!675809 () Bool)

(assert (=> b!720705 m!675809))

(declare-fun m!675811 () Bool)

(assert (=> b!720700 m!675811))

(assert (=> b!720699 m!675805))

(assert (=> b!720699 m!675805))

(declare-fun m!675813 () Bool)

(assert (=> b!720699 m!675813))

(declare-fun m!675815 () Bool)

(assert (=> b!720698 m!675815))

(declare-fun m!675817 () Bool)

(assert (=> b!720707 m!675817))

(declare-fun m!675819 () Bool)

(assert (=> b!720704 m!675819))

(declare-fun m!675821 () Bool)

(assert (=> b!720704 m!675821))

(assert (=> b!720704 m!675821))

(declare-fun m!675823 () Bool)

(assert (=> b!720704 m!675823))

(assert (=> b!720708 m!675805))

(assert (=> b!720708 m!675805))

(declare-fun m!675825 () Bool)

(assert (=> b!720708 m!675825))

(assert (=> b!720709 m!675805))

(assert (=> b!720709 m!675805))

(declare-fun m!675827 () Bool)

(assert (=> b!720709 m!675827))

(declare-fun m!675829 () Bool)

(assert (=> b!720702 m!675829))

(declare-fun m!675831 () Bool)

(assert (=> b!720710 m!675831))

(declare-fun m!675833 () Bool)

(assert (=> b!720703 m!675833))

(push 1)

(assert (not b!720700))

(assert (not b!720703))

(assert (not b!720699))

(assert (not b!720708))

(assert (not b!720707))

(assert (not b!720710))

(assert (not b!720705))

