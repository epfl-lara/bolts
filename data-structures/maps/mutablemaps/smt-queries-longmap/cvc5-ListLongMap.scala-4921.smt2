; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67786 () Bool)

(assert start!67786)

(declare-fun b!787106 () Bool)

(declare-fun e!437547 () Bool)

(declare-fun e!437552 () Bool)

(assert (=> b!787106 (= e!437547 e!437552)))

(declare-fun res!533183 () Bool)

(assert (=> b!787106 (=> res!533183 e!437552)))

(declare-fun lt!351119 () (_ BitVec 64))

(declare-fun lt!351115 () (_ BitVec 64))

(assert (=> b!787106 (= res!533183 (= lt!351119 lt!351115))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((array!42781 0))(
  ( (array!42782 (arr!20475 (Array (_ BitVec 32) (_ BitVec 64))) (size!20896 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42781)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787106 (= lt!351119 (select (store (arr!20475 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787107 () Bool)

(declare-fun res!533187 () Bool)

(declare-fun e!437545 () Bool)

(assert (=> b!787107 (=> (not res!533187) (not e!437545))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!787107 (= res!533187 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20475 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787108 () Bool)

(declare-datatypes ((Unit!27238 0))(
  ( (Unit!27239) )
))
(declare-fun e!437543 () Unit!27238)

(declare-fun Unit!27240 () Unit!27238)

(assert (=> b!787108 (= e!437543 Unit!27240)))

(assert (=> b!787108 false))

(declare-fun b!787109 () Bool)

(declare-fun res!533194 () Bool)

(declare-fun e!437554 () Bool)

(assert (=> b!787109 (=> (not res!533194) (not e!437554))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787109 (= res!533194 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20896 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20896 a!3186))))))

(declare-fun b!787110 () Bool)

(declare-fun res!533181 () Bool)

(declare-fun e!437549 () Bool)

(assert (=> b!787110 (=> (not res!533181) (not e!437549))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787110 (= res!533181 (validKeyInArray!0 (select (arr!20475 a!3186) j!159)))))

(declare-fun b!787111 () Bool)

(declare-fun e!437553 () Bool)

(assert (=> b!787111 (= e!437545 e!437553)))

(declare-fun res!533179 () Bool)

(assert (=> b!787111 (=> (not res!533179) (not e!437553))))

(declare-datatypes ((SeekEntryResult!8082 0))(
  ( (MissingZero!8082 (index!34695 (_ BitVec 32))) (Found!8082 (index!34696 (_ BitVec 32))) (Intermediate!8082 (undefined!8894 Bool) (index!34697 (_ BitVec 32)) (x!65663 (_ BitVec 32))) (Undefined!8082) (MissingVacant!8082 (index!34698 (_ BitVec 32))) )
))
(declare-fun lt!351111 () SeekEntryResult!8082)

(declare-fun lt!351114 () SeekEntryResult!8082)

(assert (=> b!787111 (= res!533179 (= lt!351111 lt!351114))))

(declare-fun lt!351112 () array!42781)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42781 (_ BitVec 32)) SeekEntryResult!8082)

(assert (=> b!787111 (= lt!351114 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351115 lt!351112 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787111 (= lt!351111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351115 mask!3328) lt!351115 lt!351112 mask!3328))))

(assert (=> b!787111 (= lt!351115 (select (store (arr!20475 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787111 (= lt!351112 (array!42782 (store (arr!20475 a!3186) i!1173 k!2102) (size!20896 a!3186)))))

(declare-fun e!437548 () Bool)

(declare-fun lt!351117 () SeekEntryResult!8082)

(declare-fun b!787112 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42781 (_ BitVec 32)) SeekEntryResult!8082)

(assert (=> b!787112 (= e!437548 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20475 a!3186) j!159) a!3186 mask!3328) lt!351117))))

(declare-fun b!787113 () Bool)

(declare-fun res!533193 () Bool)

(assert (=> b!787113 (=> (not res!533193) (not e!437554))))

(declare-datatypes ((List!14530 0))(
  ( (Nil!14527) (Cons!14526 (h!15649 (_ BitVec 64)) (t!20853 List!14530)) )
))
(declare-fun arrayNoDuplicates!0 (array!42781 (_ BitVec 32) List!14530) Bool)

(assert (=> b!787113 (= res!533193 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14527))))

(declare-fun b!787114 () Bool)

(declare-fun res!533189 () Bool)

(assert (=> b!787114 (=> (not res!533189) (not e!437549))))

(declare-fun arrayContainsKey!0 (array!42781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787114 (= res!533189 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787115 () Bool)

(assert (=> b!787115 (= e!437552 true)))

(declare-fun e!437550 () Bool)

(assert (=> b!787115 e!437550))

(declare-fun res!533196 () Bool)

(assert (=> b!787115 (=> (not res!533196) (not e!437550))))

(assert (=> b!787115 (= res!533196 (= lt!351119 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351113 () Unit!27238)

(assert (=> b!787115 (= lt!351113 e!437543)))

(declare-fun c!87371 () Bool)

(assert (=> b!787115 (= c!87371 (= lt!351119 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!533191 () Bool)

(assert (=> start!67786 (=> (not res!533191) (not e!437549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67786 (= res!533191 (validMask!0 mask!3328))))

(assert (=> start!67786 e!437549))

(assert (=> start!67786 true))

(declare-fun array_inv!16249 (array!42781) Bool)

(assert (=> start!67786 (array_inv!16249 a!3186)))

(declare-fun b!787116 () Bool)

(declare-fun res!533192 () Bool)

(assert (=> b!787116 (=> (not res!533192) (not e!437549))))

(assert (=> b!787116 (= res!533192 (and (= (size!20896 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20896 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20896 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787117 () Bool)

(declare-fun res!533180 () Bool)

(assert (=> b!787117 (=> (not res!533180) (not e!437549))))

(assert (=> b!787117 (= res!533180 (validKeyInArray!0 k!2102))))

(declare-fun b!787118 () Bool)

(declare-fun e!437546 () Bool)

(assert (=> b!787118 (= e!437553 (not e!437546))))

(declare-fun res!533190 () Bool)

(assert (=> b!787118 (=> res!533190 e!437546)))

(assert (=> b!787118 (= res!533190 (or (not (is-Intermediate!8082 lt!351114)) (bvslt x!1131 (x!65663 lt!351114)) (not (= x!1131 (x!65663 lt!351114))) (not (= index!1321 (index!34697 lt!351114)))))))

(assert (=> b!787118 e!437548))

(declare-fun res!533184 () Bool)

(assert (=> b!787118 (=> (not res!533184) (not e!437548))))

(declare-fun lt!351120 () SeekEntryResult!8082)

(assert (=> b!787118 (= res!533184 (= lt!351120 lt!351117))))

(assert (=> b!787118 (= lt!351117 (Found!8082 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42781 (_ BitVec 32)) SeekEntryResult!8082)

(assert (=> b!787118 (= lt!351120 (seekEntryOrOpen!0 (select (arr!20475 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42781 (_ BitVec 32)) Bool)

(assert (=> b!787118 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351118 () Unit!27238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27238)

(assert (=> b!787118 (= lt!351118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787119 () Bool)

(declare-fun lt!351110 () SeekEntryResult!8082)

(assert (=> b!787119 (= e!437550 (= lt!351120 lt!351110))))

(declare-fun b!787120 () Bool)

(assert (=> b!787120 (= e!437546 e!437547)))

(declare-fun res!533185 () Bool)

(assert (=> b!787120 (=> res!533185 e!437547)))

(assert (=> b!787120 (= res!533185 (not (= lt!351110 lt!351117)))))

(assert (=> b!787120 (= lt!351110 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20475 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787121 () Bool)

(assert (=> b!787121 (= e!437554 e!437545)))

(declare-fun res!533195 () Bool)

(assert (=> b!787121 (=> (not res!533195) (not e!437545))))

(declare-fun lt!351116 () SeekEntryResult!8082)

(assert (=> b!787121 (= res!533195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20475 a!3186) j!159) mask!3328) (select (arr!20475 a!3186) j!159) a!3186 mask!3328) lt!351116))))

(assert (=> b!787121 (= lt!351116 (Intermediate!8082 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787122 () Bool)

(declare-fun e!437544 () Bool)

(assert (=> b!787122 (= e!437544 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20475 a!3186) j!159) a!3186 mask!3328) (Found!8082 j!159)))))

(declare-fun b!787123 () Bool)

(assert (=> b!787123 (= e!437544 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20475 a!3186) j!159) a!3186 mask!3328) lt!351116))))

(declare-fun b!787124 () Bool)

(declare-fun res!533186 () Bool)

(assert (=> b!787124 (=> (not res!533186) (not e!437550))))

(assert (=> b!787124 (= res!533186 (= (seekEntryOrOpen!0 lt!351115 lt!351112 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351115 lt!351112 mask!3328)))))

(declare-fun b!787125 () Bool)

(declare-fun Unit!27241 () Unit!27238)

(assert (=> b!787125 (= e!437543 Unit!27241)))

(declare-fun b!787126 () Bool)

(assert (=> b!787126 (= e!437549 e!437554)))

(declare-fun res!533188 () Bool)

(assert (=> b!787126 (=> (not res!533188) (not e!437554))))

(declare-fun lt!351121 () SeekEntryResult!8082)

(assert (=> b!787126 (= res!533188 (or (= lt!351121 (MissingZero!8082 i!1173)) (= lt!351121 (MissingVacant!8082 i!1173))))))

(assert (=> b!787126 (= lt!351121 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787127 () Bool)

(declare-fun res!533182 () Bool)

(assert (=> b!787127 (=> (not res!533182) (not e!437554))))

(assert (=> b!787127 (= res!533182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787128 () Bool)

(declare-fun res!533197 () Bool)

(assert (=> b!787128 (=> (not res!533197) (not e!437545))))

(assert (=> b!787128 (= res!533197 e!437544)))

(declare-fun c!87372 () Bool)

(assert (=> b!787128 (= c!87372 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67786 res!533191) b!787116))

(assert (= (and b!787116 res!533192) b!787110))

(assert (= (and b!787110 res!533181) b!787117))

(assert (= (and b!787117 res!533180) b!787114))

(assert (= (and b!787114 res!533189) b!787126))

(assert (= (and b!787126 res!533188) b!787127))

(assert (= (and b!787127 res!533182) b!787113))

(assert (= (and b!787113 res!533193) b!787109))

(assert (= (and b!787109 res!533194) b!787121))

(assert (= (and b!787121 res!533195) b!787107))

(assert (= (and b!787107 res!533187) b!787128))

(assert (= (and b!787128 c!87372) b!787123))

(assert (= (and b!787128 (not c!87372)) b!787122))

(assert (= (and b!787128 res!533197) b!787111))

(assert (= (and b!787111 res!533179) b!787118))

(assert (= (and b!787118 res!533184) b!787112))

(assert (= (and b!787118 (not res!533190)) b!787120))

(assert (= (and b!787120 (not res!533185)) b!787106))

(assert (= (and b!787106 (not res!533183)) b!787115))

(assert (= (and b!787115 c!87371) b!787108))

(assert (= (and b!787115 (not c!87371)) b!787125))

(assert (= (and b!787115 res!533196) b!787124))

(assert (= (and b!787124 res!533186) b!787119))

(declare-fun m!728809 () Bool)

(assert (=> b!787106 m!728809))

(declare-fun m!728811 () Bool)

(assert (=> b!787106 m!728811))

(declare-fun m!728813 () Bool)

(assert (=> b!787113 m!728813))

(declare-fun m!728815 () Bool)

(assert (=> b!787111 m!728815))

(declare-fun m!728817 () Bool)

(assert (=> b!787111 m!728817))

(assert (=> b!787111 m!728809))

(declare-fun m!728819 () Bool)

(assert (=> b!787111 m!728819))

(assert (=> b!787111 m!728815))

(declare-fun m!728821 () Bool)

(assert (=> b!787111 m!728821))

(declare-fun m!728823 () Bool)

(assert (=> b!787117 m!728823))

(declare-fun m!728825 () Bool)

(assert (=> b!787110 m!728825))

(assert (=> b!787110 m!728825))

(declare-fun m!728827 () Bool)

(assert (=> b!787110 m!728827))

(declare-fun m!728829 () Bool)

(assert (=> b!787124 m!728829))

(declare-fun m!728831 () Bool)

(assert (=> b!787124 m!728831))

(assert (=> b!787123 m!728825))

(assert (=> b!787123 m!728825))

(declare-fun m!728833 () Bool)

(assert (=> b!787123 m!728833))

(declare-fun m!728835 () Bool)

(assert (=> b!787127 m!728835))

(assert (=> b!787112 m!728825))

(assert (=> b!787112 m!728825))

(declare-fun m!728837 () Bool)

(assert (=> b!787112 m!728837))

(declare-fun m!728839 () Bool)

(assert (=> b!787114 m!728839))

(assert (=> b!787118 m!728825))

(assert (=> b!787118 m!728825))

(declare-fun m!728841 () Bool)

(assert (=> b!787118 m!728841))

(declare-fun m!728843 () Bool)

(assert (=> b!787118 m!728843))

(declare-fun m!728845 () Bool)

(assert (=> b!787118 m!728845))

(declare-fun m!728847 () Bool)

(assert (=> b!787126 m!728847))

(declare-fun m!728849 () Bool)

(assert (=> start!67786 m!728849))

(declare-fun m!728851 () Bool)

(assert (=> start!67786 m!728851))

(assert (=> b!787122 m!728825))

(assert (=> b!787122 m!728825))

(declare-fun m!728853 () Bool)

(assert (=> b!787122 m!728853))

(assert (=> b!787121 m!728825))

(assert (=> b!787121 m!728825))

(declare-fun m!728855 () Bool)

(assert (=> b!787121 m!728855))

(assert (=> b!787121 m!728855))

(assert (=> b!787121 m!728825))

(declare-fun m!728857 () Bool)

(assert (=> b!787121 m!728857))

(declare-fun m!728859 () Bool)

(assert (=> b!787107 m!728859))

(assert (=> b!787120 m!728825))

(assert (=> b!787120 m!728825))

(assert (=> b!787120 m!728853))

(push 1)

