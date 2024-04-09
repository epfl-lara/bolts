; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65378 () Bool)

(assert start!65378)

(declare-fun res!500211 () Bool)

(declare-fun e!415165 () Bool)

(assert (=> start!65378 (=> (not res!500211) (not e!415165))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65378 (= res!500211 (validMask!0 mask!3328))))

(assert (=> start!65378 e!415165))

(assert (=> start!65378 true))

(declare-datatypes ((array!41504 0))(
  ( (array!41505 (arr!19862 (Array (_ BitVec 32) (_ BitVec 64))) (size!20283 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41504)

(declare-fun array_inv!15636 (array!41504) Bool)

(assert (=> start!65378 (array_inv!15636 a!3186)))

(declare-fun b!742930 () Bool)

(declare-fun e!415168 () Bool)

(declare-fun e!415169 () Bool)

(assert (=> b!742930 (= e!415168 (not e!415169))))

(declare-fun res!500202 () Bool)

(assert (=> b!742930 (=> res!500202 e!415169)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7469 0))(
  ( (MissingZero!7469 (index!32243 (_ BitVec 32))) (Found!7469 (index!32244 (_ BitVec 32))) (Intermediate!7469 (undefined!8281 Bool) (index!32245 (_ BitVec 32)) (x!63236 (_ BitVec 32))) (Undefined!7469) (MissingVacant!7469 (index!32246 (_ BitVec 32))) )
))
(declare-fun lt!330061 () SeekEntryResult!7469)

(assert (=> b!742930 (= res!500202 (or (not (is-Intermediate!7469 lt!330061)) (bvslt x!1131 (x!63236 lt!330061)) (not (= x!1131 (x!63236 lt!330061))) (not (= index!1321 (index!32245 lt!330061)))))))

(declare-fun e!415166 () Bool)

(assert (=> b!742930 e!415166))

(declare-fun res!500203 () Bool)

(assert (=> b!742930 (=> (not res!500203) (not e!415166))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41504 (_ BitVec 32)) Bool)

(assert (=> b!742930 (= res!500203 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25418 0))(
  ( (Unit!25419) )
))
(declare-fun lt!330060 () Unit!25418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25418)

(assert (=> b!742930 (= lt!330060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!330059 () SeekEntryResult!7469)

(declare-fun e!415170 () Bool)

(declare-fun b!742931 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41504 (_ BitVec 32)) SeekEntryResult!7469)

(assert (=> b!742931 (= e!415170 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19862 a!3186) j!159) a!3186 mask!3328) lt!330059))))

(declare-fun b!742932 () Bool)

(declare-fun res!500204 () Bool)

(assert (=> b!742932 (=> res!500204 e!415169)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41504 (_ BitVec 32)) SeekEntryResult!7469)

(assert (=> b!742932 (= res!500204 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19862 a!3186) j!159) a!3186 mask!3328) (Found!7469 j!159))))))

(declare-fun b!742933 () Bool)

(declare-fun e!415171 () Bool)

(assert (=> b!742933 (= e!415166 e!415171)))

(declare-fun res!500209 () Bool)

(assert (=> b!742933 (=> (not res!500209) (not e!415171))))

(declare-fun lt!330058 () SeekEntryResult!7469)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41504 (_ BitVec 32)) SeekEntryResult!7469)

(assert (=> b!742933 (= res!500209 (= (seekEntryOrOpen!0 (select (arr!19862 a!3186) j!159) a!3186 mask!3328) lt!330058))))

(assert (=> b!742933 (= lt!330058 (Found!7469 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!742934 () Bool)

(assert (=> b!742934 (= e!415171 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19862 a!3186) j!159) a!3186 mask!3328) lt!330058))))

(declare-fun b!742935 () Bool)

(declare-fun res!500205 () Bool)

(assert (=> b!742935 (=> res!500205 e!415169)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!330065 () (_ BitVec 64))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!742935 (= res!500205 (or (not (= (select (store (arr!19862 a!3186) i!1173 k!2102) index!1321) lt!330065)) (undefined!8281 lt!330061)))))

(declare-fun b!742936 () Bool)

(declare-fun res!500201 () Bool)

(assert (=> b!742936 (=> (not res!500201) (not e!415165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742936 (= res!500201 (validKeyInArray!0 (select (arr!19862 a!3186) j!159)))))

(declare-fun b!742937 () Bool)

(declare-fun e!415167 () Bool)

(declare-fun e!415172 () Bool)

(assert (=> b!742937 (= e!415167 e!415172)))

(declare-fun res!500198 () Bool)

(assert (=> b!742937 (=> (not res!500198) (not e!415172))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742937 (= res!500198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19862 a!3186) j!159) mask!3328) (select (arr!19862 a!3186) j!159) a!3186 mask!3328) lt!330059))))

(assert (=> b!742937 (= lt!330059 (Intermediate!7469 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742938 () Bool)

(assert (=> b!742938 (= e!415172 e!415168)))

(declare-fun res!500213 () Bool)

(assert (=> b!742938 (=> (not res!500213) (not e!415168))))

(declare-fun lt!330064 () SeekEntryResult!7469)

(assert (=> b!742938 (= res!500213 (= lt!330064 lt!330061))))

(declare-fun lt!330062 () array!41504)

(assert (=> b!742938 (= lt!330061 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330065 lt!330062 mask!3328))))

(assert (=> b!742938 (= lt!330064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330065 mask!3328) lt!330065 lt!330062 mask!3328))))

(assert (=> b!742938 (= lt!330065 (select (store (arr!19862 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742938 (= lt!330062 (array!41505 (store (arr!19862 a!3186) i!1173 k!2102) (size!20283 a!3186)))))

(declare-fun b!742939 () Bool)

(declare-fun res!500200 () Bool)

(assert (=> b!742939 (=> (not res!500200) (not e!415167))))

(assert (=> b!742939 (= res!500200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742940 () Bool)

(assert (=> b!742940 (= e!415165 e!415167)))

(declare-fun res!500207 () Bool)

(assert (=> b!742940 (=> (not res!500207) (not e!415167))))

(declare-fun lt!330063 () SeekEntryResult!7469)

(assert (=> b!742940 (= res!500207 (or (= lt!330063 (MissingZero!7469 i!1173)) (= lt!330063 (MissingVacant!7469 i!1173))))))

(assert (=> b!742940 (= lt!330063 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742941 () Bool)

(declare-fun res!500214 () Bool)

(assert (=> b!742941 (=> (not res!500214) (not e!415172))))

(assert (=> b!742941 (= res!500214 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19862 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742942 () Bool)

(declare-fun res!500206 () Bool)

(assert (=> b!742942 (=> (not res!500206) (not e!415172))))

(assert (=> b!742942 (= res!500206 e!415170)))

(declare-fun c!81747 () Bool)

(assert (=> b!742942 (= c!81747 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742943 () Bool)

(declare-fun res!500210 () Bool)

(assert (=> b!742943 (=> (not res!500210) (not e!415165))))

(assert (=> b!742943 (= res!500210 (and (= (size!20283 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20283 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20283 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742944 () Bool)

(declare-fun res!500197 () Bool)

(assert (=> b!742944 (=> (not res!500197) (not e!415167))))

(declare-datatypes ((List!13917 0))(
  ( (Nil!13914) (Cons!13913 (h!14985 (_ BitVec 64)) (t!20240 List!13917)) )
))
(declare-fun arrayNoDuplicates!0 (array!41504 (_ BitVec 32) List!13917) Bool)

(assert (=> b!742944 (= res!500197 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13914))))

(declare-fun b!742945 () Bool)

(declare-fun res!500199 () Bool)

(assert (=> b!742945 (=> (not res!500199) (not e!415165))))

(declare-fun arrayContainsKey!0 (array!41504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742945 (= res!500199 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742946 () Bool)

(declare-fun res!500208 () Bool)

(assert (=> b!742946 (=> (not res!500208) (not e!415167))))

(assert (=> b!742946 (= res!500208 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20283 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20283 a!3186))))))

(declare-fun b!742947 () Bool)

(declare-fun res!500212 () Bool)

(assert (=> b!742947 (=> (not res!500212) (not e!415165))))

(assert (=> b!742947 (= res!500212 (validKeyInArray!0 k!2102))))

(declare-fun b!742948 () Bool)

(assert (=> b!742948 (= e!415170 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19862 a!3186) j!159) a!3186 mask!3328) (Found!7469 j!159)))))

(declare-fun b!742949 () Bool)

(assert (=> b!742949 (= e!415169 true)))

(declare-fun lt!330057 () SeekEntryResult!7469)

(assert (=> b!742949 (= lt!330057 (seekEntryOrOpen!0 lt!330065 lt!330062 mask!3328))))

(assert (= (and start!65378 res!500211) b!742943))

(assert (= (and b!742943 res!500210) b!742936))

(assert (= (and b!742936 res!500201) b!742947))

(assert (= (and b!742947 res!500212) b!742945))

(assert (= (and b!742945 res!500199) b!742940))

(assert (= (and b!742940 res!500207) b!742939))

(assert (= (and b!742939 res!500200) b!742944))

(assert (= (and b!742944 res!500197) b!742946))

(assert (= (and b!742946 res!500208) b!742937))

(assert (= (and b!742937 res!500198) b!742941))

(assert (= (and b!742941 res!500214) b!742942))

(assert (= (and b!742942 c!81747) b!742931))

(assert (= (and b!742942 (not c!81747)) b!742948))

(assert (= (and b!742942 res!500206) b!742938))

(assert (= (and b!742938 res!500213) b!742930))

(assert (= (and b!742930 res!500203) b!742933))

(assert (= (and b!742933 res!500209) b!742934))

(assert (= (and b!742930 (not res!500202)) b!742932))

(assert (= (and b!742932 (not res!500204)) b!742935))

(assert (= (and b!742935 (not res!500205)) b!742949))

(declare-fun m!693791 () Bool)

(assert (=> b!742935 m!693791))

(declare-fun m!693793 () Bool)

(assert (=> b!742935 m!693793))

(declare-fun m!693795 () Bool)

(assert (=> b!742944 m!693795))

(declare-fun m!693797 () Bool)

(assert (=> b!742948 m!693797))

(assert (=> b!742948 m!693797))

(declare-fun m!693799 () Bool)

(assert (=> b!742948 m!693799))

(declare-fun m!693801 () Bool)

(assert (=> b!742945 m!693801))

(declare-fun m!693803 () Bool)

(assert (=> b!742939 m!693803))

(declare-fun m!693805 () Bool)

(assert (=> b!742947 m!693805))

(declare-fun m!693807 () Bool)

(assert (=> b!742949 m!693807))

(declare-fun m!693809 () Bool)

(assert (=> b!742940 m!693809))

(assert (=> b!742936 m!693797))

(assert (=> b!742936 m!693797))

(declare-fun m!693811 () Bool)

(assert (=> b!742936 m!693811))

(assert (=> b!742931 m!693797))

(assert (=> b!742931 m!693797))

(declare-fun m!693813 () Bool)

(assert (=> b!742931 m!693813))

(assert (=> b!742937 m!693797))

(assert (=> b!742937 m!693797))

(declare-fun m!693815 () Bool)

(assert (=> b!742937 m!693815))

(assert (=> b!742937 m!693815))

(assert (=> b!742937 m!693797))

(declare-fun m!693817 () Bool)

(assert (=> b!742937 m!693817))

(assert (=> b!742933 m!693797))

(assert (=> b!742933 m!693797))

(declare-fun m!693819 () Bool)

(assert (=> b!742933 m!693819))

(declare-fun m!693821 () Bool)

(assert (=> start!65378 m!693821))

(declare-fun m!693823 () Bool)

(assert (=> start!65378 m!693823))

(assert (=> b!742932 m!693797))

(assert (=> b!742932 m!693797))

(assert (=> b!742932 m!693799))

(declare-fun m!693825 () Bool)

(assert (=> b!742938 m!693825))

(assert (=> b!742938 m!693791))

(declare-fun m!693827 () Bool)

(assert (=> b!742938 m!693827))

(declare-fun m!693829 () Bool)

(assert (=> b!742938 m!693829))

(assert (=> b!742938 m!693827))

(declare-fun m!693831 () Bool)

(assert (=> b!742938 m!693831))

(assert (=> b!742934 m!693797))

(assert (=> b!742934 m!693797))

(declare-fun m!693833 () Bool)

(assert (=> b!742934 m!693833))

(declare-fun m!693835 () Bool)

(assert (=> b!742930 m!693835))

(declare-fun m!693837 () Bool)

(assert (=> b!742930 m!693837))

(declare-fun m!693839 () Bool)

(assert (=> b!742941 m!693839))

(push 1)

