; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65820 () Bool)

(assert start!65820)

(declare-fun b!756952 () Bool)

(declare-fun e!422088 () Bool)

(declare-fun e!422090 () Bool)

(assert (=> b!756952 (= e!422088 e!422090)))

(declare-fun res!511983 () Bool)

(assert (=> b!756952 (=> (not res!511983) (not e!422090))))

(declare-datatypes ((array!41946 0))(
  ( (array!41947 (arr!20083 (Array (_ BitVec 32) (_ BitVec 64))) (size!20504 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41946)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7690 0))(
  ( (MissingZero!7690 (index!33127 (_ BitVec 32))) (Found!7690 (index!33128 (_ BitVec 32))) (Intermediate!7690 (undefined!8502 Bool) (index!33129 (_ BitVec 32)) (x!64049 (_ BitVec 32))) (Undefined!7690) (MissingVacant!7690 (index!33130 (_ BitVec 32))) )
))
(declare-fun lt!337083 () SeekEntryResult!7690)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41946 (_ BitVec 32)) SeekEntryResult!7690)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756952 (= res!511983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20083 a!3186) j!159) mask!3328) (select (arr!20083 a!3186) j!159) a!3186 mask!3328) lt!337083))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756952 (= lt!337083 (Intermediate!7690 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756953 () Bool)

(declare-fun e!422089 () Bool)

(declare-fun e!422085 () Bool)

(assert (=> b!756953 (= e!422089 e!422085)))

(declare-fun res!511992 () Bool)

(assert (=> b!756953 (=> res!511992 e!422085)))

(declare-fun lt!337094 () (_ BitVec 64))

(declare-fun lt!337084 () (_ BitVec 64))

(assert (=> b!756953 (= res!511992 (= lt!337094 lt!337084))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!756953 (= lt!337094 (select (store (arr!20083 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!756954 () Bool)

(declare-fun res!511990 () Bool)

(assert (=> b!756954 (=> (not res!511990) (not e!422088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41946 (_ BitVec 32)) Bool)

(assert (=> b!756954 (= res!511990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756955 () Bool)

(declare-fun res!511994 () Bool)

(declare-fun e!422086 () Bool)

(assert (=> b!756955 (=> (not res!511994) (not e!422086))))

(declare-fun arrayContainsKey!0 (array!41946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756955 (= res!511994 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756956 () Bool)

(declare-fun res!511985 () Bool)

(assert (=> b!756956 (=> (not res!511985) (not e!422090))))

(assert (=> b!756956 (= res!511985 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20083 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756957 () Bool)

(assert (=> b!756957 (= e!422085 true)))

(declare-fun e!422093 () Bool)

(assert (=> b!756957 e!422093))

(declare-fun res!511996 () Bool)

(assert (=> b!756957 (=> (not res!511996) (not e!422093))))

(assert (=> b!756957 (= res!511996 (= lt!337094 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26162 0))(
  ( (Unit!26163) )
))
(declare-fun lt!337087 () Unit!26162)

(declare-fun e!422087 () Unit!26162)

(assert (=> b!756957 (= lt!337087 e!422087)))

(declare-fun c!82866 () Bool)

(assert (=> b!756957 (= c!82866 (= lt!337094 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756958 () Bool)

(declare-fun res!512001 () Bool)

(assert (=> b!756958 (=> (not res!512001) (not e!422086))))

(assert (=> b!756958 (= res!512001 (and (= (size!20504 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20504 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20504 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756959 () Bool)

(declare-fun Unit!26164 () Unit!26162)

(assert (=> b!756959 (= e!422087 Unit!26164)))

(assert (=> b!756959 false))

(declare-fun b!756960 () Bool)

(declare-fun Unit!26165 () Unit!26162)

(assert (=> b!756960 (= e!422087 Unit!26165)))

(declare-fun b!756961 () Bool)

(declare-fun res!511991 () Bool)

(assert (=> b!756961 (=> (not res!511991) (not e!422088))))

(declare-datatypes ((List!14138 0))(
  ( (Nil!14135) (Cons!14134 (h!15206 (_ BitVec 64)) (t!20461 List!14138)) )
))
(declare-fun arrayNoDuplicates!0 (array!41946 (_ BitVec 32) List!14138) Bool)

(assert (=> b!756961 (= res!511991 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14135))))

(declare-fun b!756962 () Bool)

(declare-fun e!422083 () Bool)

(assert (=> b!756962 (= e!422090 e!422083)))

(declare-fun res!511999 () Bool)

(assert (=> b!756962 (=> (not res!511999) (not e!422083))))

(declare-fun lt!337088 () SeekEntryResult!7690)

(declare-fun lt!337085 () SeekEntryResult!7690)

(assert (=> b!756962 (= res!511999 (= lt!337088 lt!337085))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!337092 () array!41946)

(assert (=> b!756962 (= lt!337085 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337084 lt!337092 mask!3328))))

(assert (=> b!756962 (= lt!337088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337084 mask!3328) lt!337084 lt!337092 mask!3328))))

(assert (=> b!756962 (= lt!337084 (select (store (arr!20083 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!756962 (= lt!337092 (array!41947 (store (arr!20083 a!3186) i!1173 k0!2102) (size!20504 a!3186)))))

(declare-fun b!756963 () Bool)

(declare-fun e!422084 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41946 (_ BitVec 32)) SeekEntryResult!7690)

(assert (=> b!756963 (= e!422084 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20083 a!3186) j!159) a!3186 mask!3328) (Found!7690 j!159)))))

(declare-fun b!756964 () Bool)

(assert (=> b!756964 (= e!422086 e!422088)))

(declare-fun res!511989 () Bool)

(assert (=> b!756964 (=> (not res!511989) (not e!422088))))

(declare-fun lt!337093 () SeekEntryResult!7690)

(assert (=> b!756964 (= res!511989 (or (= lt!337093 (MissingZero!7690 i!1173)) (= lt!337093 (MissingVacant!7690 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41946 (_ BitVec 32)) SeekEntryResult!7690)

(assert (=> b!756964 (= lt!337093 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!511988 () Bool)

(assert (=> start!65820 (=> (not res!511988) (not e!422086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65820 (= res!511988 (validMask!0 mask!3328))))

(assert (=> start!65820 e!422086))

(assert (=> start!65820 true))

(declare-fun array_inv!15857 (array!41946) Bool)

(assert (=> start!65820 (array_inv!15857 a!3186)))

(declare-fun b!756965 () Bool)

(declare-fun e!422091 () Bool)

(assert (=> b!756965 (= e!422083 (not e!422091))))

(declare-fun res!511987 () Bool)

(assert (=> b!756965 (=> res!511987 e!422091)))

(get-info :version)

(assert (=> b!756965 (= res!511987 (or (not ((_ is Intermediate!7690) lt!337085)) (bvslt x!1131 (x!64049 lt!337085)) (not (= x!1131 (x!64049 lt!337085))) (not (= index!1321 (index!33129 lt!337085)))))))

(declare-fun e!422092 () Bool)

(assert (=> b!756965 e!422092))

(declare-fun res!511995 () Bool)

(assert (=> b!756965 (=> (not res!511995) (not e!422092))))

(declare-fun lt!337090 () SeekEntryResult!7690)

(declare-fun lt!337089 () SeekEntryResult!7690)

(assert (=> b!756965 (= res!511995 (= lt!337090 lt!337089))))

(assert (=> b!756965 (= lt!337089 (Found!7690 j!159))))

(assert (=> b!756965 (= lt!337090 (seekEntryOrOpen!0 (select (arr!20083 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756965 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337091 () Unit!26162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26162)

(assert (=> b!756965 (= lt!337091 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756966 () Bool)

(declare-fun lt!337086 () SeekEntryResult!7690)

(assert (=> b!756966 (= e!422093 (= lt!337090 lt!337086))))

(declare-fun b!756967 () Bool)

(declare-fun res!511986 () Bool)

(assert (=> b!756967 (=> (not res!511986) (not e!422086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756967 (= res!511986 (validKeyInArray!0 (select (arr!20083 a!3186) j!159)))))

(declare-fun b!756968 () Bool)

(assert (=> b!756968 (= e!422092 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20083 a!3186) j!159) a!3186 mask!3328) lt!337089))))

(declare-fun b!756969 () Bool)

(declare-fun res!511993 () Bool)

(assert (=> b!756969 (=> (not res!511993) (not e!422090))))

(assert (=> b!756969 (= res!511993 e!422084)))

(declare-fun c!82865 () Bool)

(assert (=> b!756969 (= c!82865 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756970 () Bool)

(assert (=> b!756970 (= e!422084 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20083 a!3186) j!159) a!3186 mask!3328) lt!337083))))

(declare-fun b!756971 () Bool)

(declare-fun res!512000 () Bool)

(assert (=> b!756971 (=> (not res!512000) (not e!422093))))

(assert (=> b!756971 (= res!512000 (= (seekEntryOrOpen!0 lt!337084 lt!337092 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337084 lt!337092 mask!3328)))))

(declare-fun b!756972 () Bool)

(declare-fun res!511984 () Bool)

(assert (=> b!756972 (=> (not res!511984) (not e!422086))))

(assert (=> b!756972 (= res!511984 (validKeyInArray!0 k0!2102))))

(declare-fun b!756973 () Bool)

(assert (=> b!756973 (= e!422091 e!422089)))

(declare-fun res!511997 () Bool)

(assert (=> b!756973 (=> res!511997 e!422089)))

(assert (=> b!756973 (= res!511997 (not (= lt!337086 lt!337089)))))

(assert (=> b!756973 (= lt!337086 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20083 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756974 () Bool)

(declare-fun res!511998 () Bool)

(assert (=> b!756974 (=> (not res!511998) (not e!422088))))

(assert (=> b!756974 (= res!511998 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20504 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20504 a!3186))))))

(assert (= (and start!65820 res!511988) b!756958))

(assert (= (and b!756958 res!512001) b!756967))

(assert (= (and b!756967 res!511986) b!756972))

(assert (= (and b!756972 res!511984) b!756955))

(assert (= (and b!756955 res!511994) b!756964))

(assert (= (and b!756964 res!511989) b!756954))

(assert (= (and b!756954 res!511990) b!756961))

(assert (= (and b!756961 res!511991) b!756974))

(assert (= (and b!756974 res!511998) b!756952))

(assert (= (and b!756952 res!511983) b!756956))

(assert (= (and b!756956 res!511985) b!756969))

(assert (= (and b!756969 c!82865) b!756970))

(assert (= (and b!756969 (not c!82865)) b!756963))

(assert (= (and b!756969 res!511993) b!756962))

(assert (= (and b!756962 res!511999) b!756965))

(assert (= (and b!756965 res!511995) b!756968))

(assert (= (and b!756965 (not res!511987)) b!756973))

(assert (= (and b!756973 (not res!511997)) b!756953))

(assert (= (and b!756953 (not res!511992)) b!756957))

(assert (= (and b!756957 c!82866) b!756959))

(assert (= (and b!756957 (not c!82866)) b!756960))

(assert (= (and b!756957 res!511996) b!756971))

(assert (= (and b!756971 res!512000) b!756966))

(declare-fun m!704849 () Bool)

(assert (=> b!756965 m!704849))

(assert (=> b!756965 m!704849))

(declare-fun m!704851 () Bool)

(assert (=> b!756965 m!704851))

(declare-fun m!704853 () Bool)

(assert (=> b!756965 m!704853))

(declare-fun m!704855 () Bool)

(assert (=> b!756965 m!704855))

(assert (=> b!756967 m!704849))

(assert (=> b!756967 m!704849))

(declare-fun m!704857 () Bool)

(assert (=> b!756967 m!704857))

(declare-fun m!704859 () Bool)

(assert (=> b!756953 m!704859))

(declare-fun m!704861 () Bool)

(assert (=> b!756953 m!704861))

(declare-fun m!704863 () Bool)

(assert (=> b!756955 m!704863))

(assert (=> b!756952 m!704849))

(assert (=> b!756952 m!704849))

(declare-fun m!704865 () Bool)

(assert (=> b!756952 m!704865))

(assert (=> b!756952 m!704865))

(assert (=> b!756952 m!704849))

(declare-fun m!704867 () Bool)

(assert (=> b!756952 m!704867))

(assert (=> b!756968 m!704849))

(assert (=> b!756968 m!704849))

(declare-fun m!704869 () Bool)

(assert (=> b!756968 m!704869))

(declare-fun m!704871 () Bool)

(assert (=> b!756954 m!704871))

(assert (=> b!756973 m!704849))

(assert (=> b!756973 m!704849))

(declare-fun m!704873 () Bool)

(assert (=> b!756973 m!704873))

(declare-fun m!704875 () Bool)

(assert (=> b!756956 m!704875))

(declare-fun m!704877 () Bool)

(assert (=> b!756964 m!704877))

(declare-fun m!704879 () Bool)

(assert (=> b!756962 m!704879))

(assert (=> b!756962 m!704879))

(declare-fun m!704881 () Bool)

(assert (=> b!756962 m!704881))

(assert (=> b!756962 m!704859))

(declare-fun m!704883 () Bool)

(assert (=> b!756962 m!704883))

(declare-fun m!704885 () Bool)

(assert (=> b!756962 m!704885))

(declare-fun m!704887 () Bool)

(assert (=> start!65820 m!704887))

(declare-fun m!704889 () Bool)

(assert (=> start!65820 m!704889))

(declare-fun m!704891 () Bool)

(assert (=> b!756971 m!704891))

(declare-fun m!704893 () Bool)

(assert (=> b!756971 m!704893))

(declare-fun m!704895 () Bool)

(assert (=> b!756972 m!704895))

(declare-fun m!704897 () Bool)

(assert (=> b!756961 m!704897))

(assert (=> b!756963 m!704849))

(assert (=> b!756963 m!704849))

(assert (=> b!756963 m!704873))

(assert (=> b!756970 m!704849))

(assert (=> b!756970 m!704849))

(declare-fun m!704899 () Bool)

(assert (=> b!756970 m!704899))

(check-sat (not b!756972) (not b!756965) (not b!756973) (not b!756964) (not b!756961) (not b!756971) (not start!65820) (not b!756963) (not b!756952) (not b!756970) (not b!756967) (not b!756962) (not b!756955) (not b!756968) (not b!756954))
(check-sat)
