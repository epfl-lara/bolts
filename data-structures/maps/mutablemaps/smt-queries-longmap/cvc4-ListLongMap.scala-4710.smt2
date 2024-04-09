; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65342 () Bool)

(assert start!65342)

(declare-fun b!741925 () Bool)

(declare-fun res!499305 () Bool)

(declare-fun e!414689 () Bool)

(assert (=> b!741925 (=> (not res!499305) (not e!414689))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741925 (= res!499305 (validKeyInArray!0 k!2102))))

(declare-fun b!741926 () Bool)

(declare-fun e!414694 () Bool)

(assert (=> b!741926 (= e!414689 e!414694)))

(declare-fun res!499311 () Bool)

(assert (=> b!741926 (=> (not res!499311) (not e!414694))))

(declare-datatypes ((SeekEntryResult!7451 0))(
  ( (MissingZero!7451 (index!32171 (_ BitVec 32))) (Found!7451 (index!32172 (_ BitVec 32))) (Intermediate!7451 (undefined!8263 Bool) (index!32173 (_ BitVec 32)) (x!63170 (_ BitVec 32))) (Undefined!7451) (MissingVacant!7451 (index!32174 (_ BitVec 32))) )
))
(declare-fun lt!329620 () SeekEntryResult!7451)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741926 (= res!499311 (or (= lt!329620 (MissingZero!7451 i!1173)) (= lt!329620 (MissingVacant!7451 i!1173))))))

(declare-datatypes ((array!41468 0))(
  ( (array!41469 (arr!19844 (Array (_ BitVec 32) (_ BitVec 64))) (size!20265 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41468)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41468 (_ BitVec 32)) SeekEntryResult!7451)

(assert (=> b!741926 (= lt!329620 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741927 () Bool)

(declare-fun res!499306 () Bool)

(declare-fun e!414692 () Bool)

(assert (=> b!741927 (=> (not res!499306) (not e!414692))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!741927 (= res!499306 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19844 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!499303 () Bool)

(assert (=> start!65342 (=> (not res!499303) (not e!414689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65342 (= res!499303 (validMask!0 mask!3328))))

(assert (=> start!65342 e!414689))

(assert (=> start!65342 true))

(declare-fun array_inv!15618 (array!41468) Bool)

(assert (=> start!65342 (array_inv!15618 a!3186)))

(declare-fun b!741928 () Bool)

(declare-fun res!499301 () Bool)

(assert (=> b!741928 (=> (not res!499301) (not e!414689))))

(declare-fun arrayContainsKey!0 (array!41468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741928 (= res!499301 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!329619 () SeekEntryResult!7451)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!741929 () Bool)

(declare-fun e!414690 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41468 (_ BitVec 32)) SeekEntryResult!7451)

(assert (=> b!741929 (= e!414690 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19844 a!3186) j!159) a!3186 mask!3328) lt!329619))))

(declare-fun b!741930 () Bool)

(declare-fun res!499309 () Bool)

(assert (=> b!741930 (=> (not res!499309) (not e!414694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41468 (_ BitVec 32)) Bool)

(assert (=> b!741930 (= res!499309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741931 () Bool)

(declare-fun res!499304 () Bool)

(assert (=> b!741931 (=> (not res!499304) (not e!414694))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741931 (= res!499304 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20265 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20265 a!3186))))))

(declare-fun b!741932 () Bool)

(declare-fun res!499313 () Bool)

(assert (=> b!741932 (=> (not res!499313) (not e!414689))))

(assert (=> b!741932 (= res!499313 (and (= (size!20265 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20265 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20265 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41468 (_ BitVec 32)) SeekEntryResult!7451)

(assert (=> b!741933 (= e!414690 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19844 a!3186) j!159) a!3186 mask!3328) (Found!7451 j!159)))))

(declare-fun e!414691 () Bool)

(declare-fun b!741934 () Bool)

(declare-fun lt!329621 () SeekEntryResult!7451)

(assert (=> b!741934 (= e!414691 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19844 a!3186) j!159) a!3186 mask!3328) lt!329621))))

(declare-fun b!741935 () Bool)

(assert (=> b!741935 (= e!414694 e!414692)))

(declare-fun res!499300 () Bool)

(assert (=> b!741935 (=> (not res!499300) (not e!414692))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741935 (= res!499300 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19844 a!3186) j!159) mask!3328) (select (arr!19844 a!3186) j!159) a!3186 mask!3328) lt!329619))))

(assert (=> b!741935 (= lt!329619 (Intermediate!7451 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741936 () Bool)

(declare-fun res!499312 () Bool)

(assert (=> b!741936 (=> (not res!499312) (not e!414694))))

(declare-datatypes ((List!13899 0))(
  ( (Nil!13896) (Cons!13895 (h!14967 (_ BitVec 64)) (t!20222 List!13899)) )
))
(declare-fun arrayNoDuplicates!0 (array!41468 (_ BitVec 32) List!13899) Bool)

(assert (=> b!741936 (= res!499312 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13896))))

(declare-fun b!741937 () Bool)

(declare-fun res!499314 () Bool)

(assert (=> b!741937 (=> (not res!499314) (not e!414692))))

(assert (=> b!741937 (= res!499314 e!414690)))

(declare-fun c!81693 () Bool)

(assert (=> b!741937 (= c!81693 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741938 () Bool)

(declare-fun e!414695 () Bool)

(assert (=> b!741938 (= e!414692 e!414695)))

(declare-fun res!499308 () Bool)

(assert (=> b!741938 (=> (not res!499308) (not e!414695))))

(declare-fun lt!329622 () array!41468)

(declare-fun lt!329624 () (_ BitVec 64))

(assert (=> b!741938 (= res!499308 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329624 mask!3328) lt!329624 lt!329622 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329624 lt!329622 mask!3328)))))

(assert (=> b!741938 (= lt!329624 (select (store (arr!19844 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741938 (= lt!329622 (array!41469 (store (arr!19844 a!3186) i!1173 k!2102) (size!20265 a!3186)))))

(declare-fun b!741939 () Bool)

(declare-fun e!414693 () Bool)

(assert (=> b!741939 (= e!414693 e!414691)))

(declare-fun res!499302 () Bool)

(assert (=> b!741939 (=> (not res!499302) (not e!414691))))

(assert (=> b!741939 (= res!499302 (= (seekEntryOrOpen!0 (select (arr!19844 a!3186) j!159) a!3186 mask!3328) lt!329621))))

(assert (=> b!741939 (= lt!329621 (Found!7451 j!159))))

(declare-fun b!741940 () Bool)

(declare-fun res!499310 () Bool)

(assert (=> b!741940 (=> (not res!499310) (not e!414689))))

(assert (=> b!741940 (= res!499310 (validKeyInArray!0 (select (arr!19844 a!3186) j!159)))))

(declare-fun b!741941 () Bool)

(assert (=> b!741941 (= e!414695 (not true))))

(assert (=> b!741941 e!414693))

(declare-fun res!499307 () Bool)

(assert (=> b!741941 (=> (not res!499307) (not e!414693))))

(assert (=> b!741941 (= res!499307 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25382 0))(
  ( (Unit!25383) )
))
(declare-fun lt!329623 () Unit!25382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25382)

(assert (=> b!741941 (= lt!329623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65342 res!499303) b!741932))

(assert (= (and b!741932 res!499313) b!741940))

(assert (= (and b!741940 res!499310) b!741925))

(assert (= (and b!741925 res!499305) b!741928))

(assert (= (and b!741928 res!499301) b!741926))

(assert (= (and b!741926 res!499311) b!741930))

(assert (= (and b!741930 res!499309) b!741936))

(assert (= (and b!741936 res!499312) b!741931))

(assert (= (and b!741931 res!499304) b!741935))

(assert (= (and b!741935 res!499300) b!741927))

(assert (= (and b!741927 res!499306) b!741937))

(assert (= (and b!741937 c!81693) b!741929))

(assert (= (and b!741937 (not c!81693)) b!741933))

(assert (= (and b!741937 res!499314) b!741938))

(assert (= (and b!741938 res!499308) b!741941))

(assert (= (and b!741941 res!499307) b!741939))

(assert (= (and b!741939 res!499302) b!741934))

(declare-fun m!692937 () Bool)

(assert (=> start!65342 m!692937))

(declare-fun m!692939 () Bool)

(assert (=> start!65342 m!692939))

(declare-fun m!692941 () Bool)

(assert (=> b!741934 m!692941))

(assert (=> b!741934 m!692941))

(declare-fun m!692943 () Bool)

(assert (=> b!741934 m!692943))

(declare-fun m!692945 () Bool)

(assert (=> b!741930 m!692945))

(assert (=> b!741939 m!692941))

(assert (=> b!741939 m!692941))

(declare-fun m!692947 () Bool)

(assert (=> b!741939 m!692947))

(declare-fun m!692949 () Bool)

(assert (=> b!741925 m!692949))

(assert (=> b!741929 m!692941))

(assert (=> b!741929 m!692941))

(declare-fun m!692951 () Bool)

(assert (=> b!741929 m!692951))

(declare-fun m!692953 () Bool)

(assert (=> b!741928 m!692953))

(declare-fun m!692955 () Bool)

(assert (=> b!741927 m!692955))

(declare-fun m!692957 () Bool)

(assert (=> b!741936 m!692957))

(assert (=> b!741940 m!692941))

(assert (=> b!741940 m!692941))

(declare-fun m!692959 () Bool)

(assert (=> b!741940 m!692959))

(declare-fun m!692961 () Bool)

(assert (=> b!741938 m!692961))

(declare-fun m!692963 () Bool)

(assert (=> b!741938 m!692963))

(declare-fun m!692965 () Bool)

(assert (=> b!741938 m!692965))

(declare-fun m!692967 () Bool)

(assert (=> b!741938 m!692967))

(declare-fun m!692969 () Bool)

(assert (=> b!741938 m!692969))

(assert (=> b!741938 m!692963))

(declare-fun m!692971 () Bool)

(assert (=> b!741926 m!692971))

(declare-fun m!692973 () Bool)

(assert (=> b!741941 m!692973))

(declare-fun m!692975 () Bool)

(assert (=> b!741941 m!692975))

(assert (=> b!741935 m!692941))

(assert (=> b!741935 m!692941))

(declare-fun m!692977 () Bool)

(assert (=> b!741935 m!692977))

(assert (=> b!741935 m!692977))

(assert (=> b!741935 m!692941))

(declare-fun m!692979 () Bool)

(assert (=> b!741935 m!692979))

(assert (=> b!741933 m!692941))

(assert (=> b!741933 m!692941))

(declare-fun m!692981 () Bool)

(assert (=> b!741933 m!692981))

(push 1)

