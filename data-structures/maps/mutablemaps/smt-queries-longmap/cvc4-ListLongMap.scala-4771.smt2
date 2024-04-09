; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65708 () Bool)

(assert start!65708)

(declare-fun b!753088 () Bool)

(declare-fun res!508802 () Bool)

(declare-fun e!420076 () Bool)

(assert (=> b!753088 (=> (not res!508802) (not e!420076))))

(declare-fun e!420071 () Bool)

(assert (=> b!753088 (= res!508802 e!420071)))

(declare-fun c!82529 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753088 (= c!82529 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753089 () Bool)

(declare-fun e!420070 () Bool)

(assert (=> b!753089 (= e!420070 true)))

(declare-fun e!420069 () Bool)

(assert (=> b!753089 e!420069))

(declare-fun res!508808 () Bool)

(assert (=> b!753089 (=> (not res!508808) (not e!420069))))

(declare-fun lt!335072 () (_ BitVec 64))

(assert (=> b!753089 (= res!508808 (= lt!335072 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25938 0))(
  ( (Unit!25939) )
))
(declare-fun lt!335067 () Unit!25938)

(declare-fun e!420075 () Unit!25938)

(assert (=> b!753089 (= lt!335067 e!420075)))

(declare-fun c!82530 () Bool)

(assert (=> b!753089 (= c!82530 (= lt!335072 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753090 () Bool)

(declare-fun Unit!25940 () Unit!25938)

(assert (=> b!753090 (= e!420075 Unit!25940)))

(assert (=> b!753090 false))

(declare-fun b!753091 () Bool)

(declare-datatypes ((SeekEntryResult!7634 0))(
  ( (MissingZero!7634 (index!32903 (_ BitVec 32))) (Found!7634 (index!32904 (_ BitVec 32))) (Intermediate!7634 (undefined!8446 Bool) (index!32905 (_ BitVec 32)) (x!63841 (_ BitVec 32))) (Undefined!7634) (MissingVacant!7634 (index!32906 (_ BitVec 32))) )
))
(declare-fun lt!335074 () SeekEntryResult!7634)

(declare-fun lt!335071 () SeekEntryResult!7634)

(assert (=> b!753091 (= e!420069 (= lt!335074 lt!335071))))

(declare-fun b!753092 () Bool)

(declare-fun res!508806 () Bool)

(declare-fun e!420074 () Bool)

(assert (=> b!753092 (=> (not res!508806) (not e!420074))))

(declare-datatypes ((array!41834 0))(
  ( (array!41835 (arr!20027 (Array (_ BitVec 32) (_ BitVec 64))) (size!20448 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41834)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41834 (_ BitVec 32)) Bool)

(assert (=> b!753092 (= res!508806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753093 () Bool)

(declare-fun res!508799 () Bool)

(declare-fun e!420067 () Bool)

(assert (=> b!753093 (=> (not res!508799) (not e!420067))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753093 (= res!508799 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!508798 () Bool)

(assert (=> start!65708 (=> (not res!508798) (not e!420067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65708 (= res!508798 (validMask!0 mask!3328))))

(assert (=> start!65708 e!420067))

(assert (=> start!65708 true))

(declare-fun array_inv!15801 (array!41834) Bool)

(assert (=> start!65708 (array_inv!15801 a!3186)))

(declare-fun b!753094 () Bool)

(declare-fun e!420072 () Bool)

(declare-fun e!420073 () Bool)

(assert (=> b!753094 (= e!420072 (not e!420073))))

(declare-fun res!508792 () Bool)

(assert (=> b!753094 (=> res!508792 e!420073)))

(declare-fun lt!335069 () SeekEntryResult!7634)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!753094 (= res!508792 (or (not (is-Intermediate!7634 lt!335069)) (bvslt x!1131 (x!63841 lt!335069)) (not (= x!1131 (x!63841 lt!335069))) (not (= index!1321 (index!32905 lt!335069)))))))

(declare-fun e!420068 () Bool)

(assert (=> b!753094 e!420068))

(declare-fun res!508804 () Bool)

(assert (=> b!753094 (=> (not res!508804) (not e!420068))))

(declare-fun lt!335077 () SeekEntryResult!7634)

(assert (=> b!753094 (= res!508804 (= lt!335074 lt!335077))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!753094 (= lt!335077 (Found!7634 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41834 (_ BitVec 32)) SeekEntryResult!7634)

(assert (=> b!753094 (= lt!335074 (seekEntryOrOpen!0 (select (arr!20027 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753094 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335076 () Unit!25938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25938)

(assert (=> b!753094 (= lt!335076 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753095 () Bool)

(declare-fun e!420078 () Bool)

(assert (=> b!753095 (= e!420078 e!420070)))

(declare-fun res!508796 () Bool)

(assert (=> b!753095 (=> res!508796 e!420070)))

(declare-fun lt!335078 () (_ BitVec 64))

(assert (=> b!753095 (= res!508796 (= lt!335072 lt!335078))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753095 (= lt!335072 (select (store (arr!20027 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753096 () Bool)

(assert (=> b!753096 (= e!420073 e!420078)))

(declare-fun res!508794 () Bool)

(assert (=> b!753096 (=> res!508794 e!420078)))

(assert (=> b!753096 (= res!508794 (not (= lt!335071 lt!335077)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41834 (_ BitVec 32)) SeekEntryResult!7634)

(assert (=> b!753096 (= lt!335071 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20027 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753097 () Bool)

(declare-fun res!508805 () Bool)

(assert (=> b!753097 (=> (not res!508805) (not e!420067))))

(assert (=> b!753097 (= res!508805 (and (= (size!20448 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20448 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20448 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753098 () Bool)

(assert (=> b!753098 (= e!420067 e!420074)))

(declare-fun res!508793 () Bool)

(assert (=> b!753098 (=> (not res!508793) (not e!420074))))

(declare-fun lt!335075 () SeekEntryResult!7634)

(assert (=> b!753098 (= res!508793 (or (= lt!335075 (MissingZero!7634 i!1173)) (= lt!335075 (MissingVacant!7634 i!1173))))))

(assert (=> b!753098 (= lt!335075 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753099 () Bool)

(declare-fun res!508807 () Bool)

(assert (=> b!753099 (=> (not res!508807) (not e!420074))))

(assert (=> b!753099 (= res!508807 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20448 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20448 a!3186))))))

(declare-fun b!753100 () Bool)

(assert (=> b!753100 (= e!420068 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20027 a!3186) j!159) a!3186 mask!3328) lt!335077))))

(declare-fun b!753101 () Bool)

(declare-fun res!508797 () Bool)

(assert (=> b!753101 (=> (not res!508797) (not e!420076))))

(assert (=> b!753101 (= res!508797 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20027 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!335073 () SeekEntryResult!7634)

(declare-fun b!753102 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41834 (_ BitVec 32)) SeekEntryResult!7634)

(assert (=> b!753102 (= e!420071 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20027 a!3186) j!159) a!3186 mask!3328) lt!335073))))

(declare-fun b!753103 () Bool)

(assert (=> b!753103 (= e!420076 e!420072)))

(declare-fun res!508801 () Bool)

(assert (=> b!753103 (=> (not res!508801) (not e!420072))))

(declare-fun lt!335068 () SeekEntryResult!7634)

(assert (=> b!753103 (= res!508801 (= lt!335068 lt!335069))))

(declare-fun lt!335070 () array!41834)

(assert (=> b!753103 (= lt!335069 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335078 lt!335070 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753103 (= lt!335068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335078 mask!3328) lt!335078 lt!335070 mask!3328))))

(assert (=> b!753103 (= lt!335078 (select (store (arr!20027 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753103 (= lt!335070 (array!41835 (store (arr!20027 a!3186) i!1173 k!2102) (size!20448 a!3186)))))

(declare-fun b!753104 () Bool)

(declare-fun res!508803 () Bool)

(assert (=> b!753104 (=> (not res!508803) (not e!420069))))

(assert (=> b!753104 (= res!508803 (= (seekEntryOrOpen!0 lt!335078 lt!335070 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335078 lt!335070 mask!3328)))))

(declare-fun b!753105 () Bool)

(declare-fun res!508800 () Bool)

(assert (=> b!753105 (=> (not res!508800) (not e!420067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753105 (= res!508800 (validKeyInArray!0 (select (arr!20027 a!3186) j!159)))))

(declare-fun b!753106 () Bool)

(assert (=> b!753106 (= e!420071 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20027 a!3186) j!159) a!3186 mask!3328) (Found!7634 j!159)))))

(declare-fun b!753107 () Bool)

(declare-fun Unit!25941 () Unit!25938)

(assert (=> b!753107 (= e!420075 Unit!25941)))

(declare-fun b!753108 () Bool)

(declare-fun res!508809 () Bool)

(assert (=> b!753108 (=> (not res!508809) (not e!420074))))

(declare-datatypes ((List!14082 0))(
  ( (Nil!14079) (Cons!14078 (h!15150 (_ BitVec 64)) (t!20405 List!14082)) )
))
(declare-fun arrayNoDuplicates!0 (array!41834 (_ BitVec 32) List!14082) Bool)

(assert (=> b!753108 (= res!508809 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14079))))

(declare-fun b!753109 () Bool)

(declare-fun res!508791 () Bool)

(assert (=> b!753109 (=> (not res!508791) (not e!420067))))

(assert (=> b!753109 (= res!508791 (validKeyInArray!0 k!2102))))

(declare-fun b!753110 () Bool)

(assert (=> b!753110 (= e!420074 e!420076)))

(declare-fun res!508795 () Bool)

(assert (=> b!753110 (=> (not res!508795) (not e!420076))))

(assert (=> b!753110 (= res!508795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20027 a!3186) j!159) mask!3328) (select (arr!20027 a!3186) j!159) a!3186 mask!3328) lt!335073))))

(assert (=> b!753110 (= lt!335073 (Intermediate!7634 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65708 res!508798) b!753097))

(assert (= (and b!753097 res!508805) b!753105))

(assert (= (and b!753105 res!508800) b!753109))

(assert (= (and b!753109 res!508791) b!753093))

(assert (= (and b!753093 res!508799) b!753098))

(assert (= (and b!753098 res!508793) b!753092))

(assert (= (and b!753092 res!508806) b!753108))

(assert (= (and b!753108 res!508809) b!753099))

(assert (= (and b!753099 res!508807) b!753110))

(assert (= (and b!753110 res!508795) b!753101))

(assert (= (and b!753101 res!508797) b!753088))

(assert (= (and b!753088 c!82529) b!753102))

(assert (= (and b!753088 (not c!82529)) b!753106))

(assert (= (and b!753088 res!508802) b!753103))

(assert (= (and b!753103 res!508801) b!753094))

(assert (= (and b!753094 res!508804) b!753100))

(assert (= (and b!753094 (not res!508792)) b!753096))

(assert (= (and b!753096 (not res!508794)) b!753095))

(assert (= (and b!753095 (not res!508796)) b!753089))

(assert (= (and b!753089 c!82530) b!753090))

(assert (= (and b!753089 (not c!82530)) b!753107))

(assert (= (and b!753089 res!508808) b!753104))

(assert (= (and b!753104 res!508803) b!753091))

(declare-fun m!701937 () Bool)

(assert (=> b!753102 m!701937))

(assert (=> b!753102 m!701937))

(declare-fun m!701939 () Bool)

(assert (=> b!753102 m!701939))

(assert (=> b!753106 m!701937))

(assert (=> b!753106 m!701937))

(declare-fun m!701941 () Bool)

(assert (=> b!753106 m!701941))

(assert (=> b!753096 m!701937))

(assert (=> b!753096 m!701937))

(assert (=> b!753096 m!701941))

(declare-fun m!701943 () Bool)

(assert (=> b!753093 m!701943))

(declare-fun m!701945 () Bool)

(assert (=> start!65708 m!701945))

(declare-fun m!701947 () Bool)

(assert (=> start!65708 m!701947))

(assert (=> b!753105 m!701937))

(assert (=> b!753105 m!701937))

(declare-fun m!701949 () Bool)

(assert (=> b!753105 m!701949))

(declare-fun m!701951 () Bool)

(assert (=> b!753098 m!701951))

(declare-fun m!701953 () Bool)

(assert (=> b!753092 m!701953))

(declare-fun m!701955 () Bool)

(assert (=> b!753109 m!701955))

(assert (=> b!753094 m!701937))

(assert (=> b!753094 m!701937))

(declare-fun m!701957 () Bool)

(assert (=> b!753094 m!701957))

(declare-fun m!701959 () Bool)

(assert (=> b!753094 m!701959))

(declare-fun m!701961 () Bool)

(assert (=> b!753094 m!701961))

(assert (=> b!753110 m!701937))

(assert (=> b!753110 m!701937))

(declare-fun m!701963 () Bool)

(assert (=> b!753110 m!701963))

(assert (=> b!753110 m!701963))

(assert (=> b!753110 m!701937))

(declare-fun m!701965 () Bool)

(assert (=> b!753110 m!701965))

(declare-fun m!701967 () Bool)

(assert (=> b!753108 m!701967))

(declare-fun m!701969 () Bool)

(assert (=> b!753103 m!701969))

(declare-fun m!701971 () Bool)

(assert (=> b!753103 m!701971))

(declare-fun m!701973 () Bool)

(assert (=> b!753103 m!701973))

(assert (=> b!753103 m!701969))

(declare-fun m!701975 () Bool)

(assert (=> b!753103 m!701975))

(declare-fun m!701977 () Bool)

(assert (=> b!753103 m!701977))

(assert (=> b!753095 m!701971))

(declare-fun m!701979 () Bool)

(assert (=> b!753095 m!701979))

(declare-fun m!701981 () Bool)

(assert (=> b!753101 m!701981))

(assert (=> b!753100 m!701937))

(assert (=> b!753100 m!701937))

(declare-fun m!701983 () Bool)

(assert (=> b!753100 m!701983))

(declare-fun m!701985 () Bool)

(assert (=> b!753104 m!701985))

(declare-fun m!701987 () Bool)

(assert (=> b!753104 m!701987))

(push 1)

