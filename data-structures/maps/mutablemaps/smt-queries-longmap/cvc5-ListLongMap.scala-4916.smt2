; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67756 () Bool)

(assert start!67756)

(declare-fun b!786071 () Bool)

(declare-fun res!532327 () Bool)

(declare-fun e!437003 () Bool)

(assert (=> b!786071 (=> (not res!532327) (not e!437003))))

(declare-fun e!437010 () Bool)

(assert (=> b!786071 (= res!532327 e!437010)))

(declare-fun c!87281 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786071 (= c!87281 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786072 () Bool)

(declare-fun e!437006 () Bool)

(assert (=> b!786072 (= e!437006 e!437003)))

(declare-fun res!532328 () Bool)

(assert (=> b!786072 (=> (not res!532328) (not e!437003))))

(declare-datatypes ((array!42751 0))(
  ( (array!42752 (arr!20460 (Array (_ BitVec 32) (_ BitVec 64))) (size!20881 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42751)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8067 0))(
  ( (MissingZero!8067 (index!34635 (_ BitVec 32))) (Found!8067 (index!34636 (_ BitVec 32))) (Intermediate!8067 (undefined!8879 Bool) (index!34637 (_ BitVec 32)) (x!65608 (_ BitVec 32))) (Undefined!8067) (MissingVacant!8067 (index!34638 (_ BitVec 32))) )
))
(declare-fun lt!350579 () SeekEntryResult!8067)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42751 (_ BitVec 32)) SeekEntryResult!8067)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786072 (= res!532328 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20460 a!3186) j!159) mask!3328) (select (arr!20460 a!3186) j!159) a!3186 mask!3328) lt!350579))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!786072 (= lt!350579 (Intermediate!8067 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786073 () Bool)

(declare-datatypes ((Unit!27178 0))(
  ( (Unit!27179) )
))
(declare-fun e!437013 () Unit!27178)

(declare-fun Unit!27180 () Unit!27178)

(assert (=> b!786073 (= e!437013 Unit!27180)))

(assert (=> b!786073 false))

(declare-fun b!786074 () Bool)

(declare-fun res!532326 () Bool)

(declare-fun e!437012 () Bool)

(assert (=> b!786074 (=> (not res!532326) (not e!437012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786074 (= res!532326 (validKeyInArray!0 (select (arr!20460 a!3186) j!159)))))

(declare-fun b!786075 () Bool)

(declare-fun e!437009 () Bool)

(assert (=> b!786075 (= e!437009 true)))

(declare-fun e!437007 () Bool)

(assert (=> b!786075 e!437007))

(declare-fun res!532334 () Bool)

(assert (=> b!786075 (=> (not res!532334) (not e!437007))))

(declare-fun lt!350580 () (_ BitVec 64))

(assert (=> b!786075 (= res!532334 (= lt!350580 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350571 () Unit!27178)

(assert (=> b!786075 (= lt!350571 e!437013)))

(declare-fun c!87282 () Bool)

(assert (=> b!786075 (= c!87282 (= lt!350580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786076 () Bool)

(declare-fun e!437005 () Bool)

(declare-fun e!437008 () Bool)

(assert (=> b!786076 (= e!437005 e!437008)))

(declare-fun res!532329 () Bool)

(assert (=> b!786076 (=> res!532329 e!437008)))

(declare-fun lt!350576 () SeekEntryResult!8067)

(declare-fun lt!350574 () SeekEntryResult!8067)

(assert (=> b!786076 (= res!532329 (not (= lt!350576 lt!350574)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42751 (_ BitVec 32)) SeekEntryResult!8067)

(assert (=> b!786076 (= lt!350576 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20460 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786078 () Bool)

(declare-fun res!532341 () Bool)

(assert (=> b!786078 (=> (not res!532341) (not e!437007))))

(declare-fun lt!350570 () (_ BitVec 64))

(declare-fun lt!350572 () array!42751)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42751 (_ BitVec 32)) SeekEntryResult!8067)

(assert (=> b!786078 (= res!532341 (= (seekEntryOrOpen!0 lt!350570 lt!350572 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350570 lt!350572 mask!3328)))))

(declare-fun b!786079 () Bool)

(declare-fun lt!350578 () SeekEntryResult!8067)

(assert (=> b!786079 (= e!437007 (= lt!350578 lt!350576))))

(declare-fun b!786080 () Bool)

(assert (=> b!786080 (= e!437010 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20460 a!3186) j!159) a!3186 mask!3328) (Found!8067 j!159)))))

(declare-fun b!786081 () Bool)

(declare-fun res!532342 () Bool)

(assert (=> b!786081 (=> (not res!532342) (not e!437003))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786081 (= res!532342 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20460 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786082 () Bool)

(assert (=> b!786082 (= e!437008 e!437009)))

(declare-fun res!532335 () Bool)

(assert (=> b!786082 (=> res!532335 e!437009)))

(assert (=> b!786082 (= res!532335 (= lt!350580 lt!350570))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!786082 (= lt!350580 (select (store (arr!20460 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786083 () Bool)

(declare-fun res!532332 () Bool)

(assert (=> b!786083 (=> (not res!532332) (not e!437012))))

(declare-fun arrayContainsKey!0 (array!42751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786083 (= res!532332 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786084 () Bool)

(assert (=> b!786084 (= e!437012 e!437006)))

(declare-fun res!532333 () Bool)

(assert (=> b!786084 (=> (not res!532333) (not e!437006))))

(declare-fun lt!350581 () SeekEntryResult!8067)

(assert (=> b!786084 (= res!532333 (or (= lt!350581 (MissingZero!8067 i!1173)) (= lt!350581 (MissingVacant!8067 i!1173))))))

(assert (=> b!786084 (= lt!350581 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786085 () Bool)

(declare-fun Unit!27181 () Unit!27178)

(assert (=> b!786085 (= e!437013 Unit!27181)))

(declare-fun b!786086 () Bool)

(declare-fun res!532331 () Bool)

(assert (=> b!786086 (=> (not res!532331) (not e!437006))))

(declare-datatypes ((List!14515 0))(
  ( (Nil!14512) (Cons!14511 (h!15634 (_ BitVec 64)) (t!20838 List!14515)) )
))
(declare-fun arrayNoDuplicates!0 (array!42751 (_ BitVec 32) List!14515) Bool)

(assert (=> b!786086 (= res!532331 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14512))))

(declare-fun b!786087 () Bool)

(declare-fun res!532336 () Bool)

(assert (=> b!786087 (=> (not res!532336) (not e!437012))))

(assert (=> b!786087 (= res!532336 (and (= (size!20881 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20881 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20881 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786088 () Bool)

(declare-fun e!437014 () Bool)

(assert (=> b!786088 (= e!437003 e!437014)))

(declare-fun res!532324 () Bool)

(assert (=> b!786088 (=> (not res!532324) (not e!437014))))

(declare-fun lt!350577 () SeekEntryResult!8067)

(declare-fun lt!350573 () SeekEntryResult!8067)

(assert (=> b!786088 (= res!532324 (= lt!350577 lt!350573))))

(assert (=> b!786088 (= lt!350573 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350570 lt!350572 mask!3328))))

(assert (=> b!786088 (= lt!350577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350570 mask!3328) lt!350570 lt!350572 mask!3328))))

(assert (=> b!786088 (= lt!350570 (select (store (arr!20460 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786088 (= lt!350572 (array!42752 (store (arr!20460 a!3186) i!1173 k!2102) (size!20881 a!3186)))))

(declare-fun b!786089 () Bool)

(declare-fun res!532325 () Bool)

(assert (=> b!786089 (=> (not res!532325) (not e!437006))))

(assert (=> b!786089 (= res!532325 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20881 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20881 a!3186))))))

(declare-fun b!786077 () Bool)

(declare-fun res!532339 () Bool)

(assert (=> b!786077 (=> (not res!532339) (not e!437006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42751 (_ BitVec 32)) Bool)

(assert (=> b!786077 (= res!532339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!532340 () Bool)

(assert (=> start!67756 (=> (not res!532340) (not e!437012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67756 (= res!532340 (validMask!0 mask!3328))))

(assert (=> start!67756 e!437012))

(assert (=> start!67756 true))

(declare-fun array_inv!16234 (array!42751) Bool)

(assert (=> start!67756 (array_inv!16234 a!3186)))

(declare-fun b!786090 () Bool)

(assert (=> b!786090 (= e!437014 (not e!437005))))

(declare-fun res!532338 () Bool)

(assert (=> b!786090 (=> res!532338 e!437005)))

(assert (=> b!786090 (= res!532338 (or (not (is-Intermediate!8067 lt!350573)) (bvslt x!1131 (x!65608 lt!350573)) (not (= x!1131 (x!65608 lt!350573))) (not (= index!1321 (index!34637 lt!350573)))))))

(declare-fun e!437004 () Bool)

(assert (=> b!786090 e!437004))

(declare-fun res!532330 () Bool)

(assert (=> b!786090 (=> (not res!532330) (not e!437004))))

(assert (=> b!786090 (= res!532330 (= lt!350578 lt!350574))))

(assert (=> b!786090 (= lt!350574 (Found!8067 j!159))))

(assert (=> b!786090 (= lt!350578 (seekEntryOrOpen!0 (select (arr!20460 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786090 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350575 () Unit!27178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27178)

(assert (=> b!786090 (= lt!350575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786091 () Bool)

(assert (=> b!786091 (= e!437010 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20460 a!3186) j!159) a!3186 mask!3328) lt!350579))))

(declare-fun b!786092 () Bool)

(assert (=> b!786092 (= e!437004 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20460 a!3186) j!159) a!3186 mask!3328) lt!350574))))

(declare-fun b!786093 () Bool)

(declare-fun res!532337 () Bool)

(assert (=> b!786093 (=> (not res!532337) (not e!437012))))

(assert (=> b!786093 (= res!532337 (validKeyInArray!0 k!2102))))

(assert (= (and start!67756 res!532340) b!786087))

(assert (= (and b!786087 res!532336) b!786074))

(assert (= (and b!786074 res!532326) b!786093))

(assert (= (and b!786093 res!532337) b!786083))

(assert (= (and b!786083 res!532332) b!786084))

(assert (= (and b!786084 res!532333) b!786077))

(assert (= (and b!786077 res!532339) b!786086))

(assert (= (and b!786086 res!532331) b!786089))

(assert (= (and b!786089 res!532325) b!786072))

(assert (= (and b!786072 res!532328) b!786081))

(assert (= (and b!786081 res!532342) b!786071))

(assert (= (and b!786071 c!87281) b!786091))

(assert (= (and b!786071 (not c!87281)) b!786080))

(assert (= (and b!786071 res!532327) b!786088))

(assert (= (and b!786088 res!532324) b!786090))

(assert (= (and b!786090 res!532330) b!786092))

(assert (= (and b!786090 (not res!532338)) b!786076))

(assert (= (and b!786076 (not res!532329)) b!786082))

(assert (= (and b!786082 (not res!532335)) b!786075))

(assert (= (and b!786075 c!87282) b!786073))

(assert (= (and b!786075 (not c!87282)) b!786085))

(assert (= (and b!786075 res!532334) b!786078))

(assert (= (and b!786078 res!532341) b!786079))

(declare-fun m!728029 () Bool)

(assert (=> b!786072 m!728029))

(assert (=> b!786072 m!728029))

(declare-fun m!728031 () Bool)

(assert (=> b!786072 m!728031))

(assert (=> b!786072 m!728031))

(assert (=> b!786072 m!728029))

(declare-fun m!728033 () Bool)

(assert (=> b!786072 m!728033))

(declare-fun m!728035 () Bool)

(assert (=> b!786081 m!728035))

(assert (=> b!786091 m!728029))

(assert (=> b!786091 m!728029))

(declare-fun m!728037 () Bool)

(assert (=> b!786091 m!728037))

(declare-fun m!728039 () Bool)

(assert (=> b!786093 m!728039))

(declare-fun m!728041 () Bool)

(assert (=> b!786084 m!728041))

(assert (=> b!786080 m!728029))

(assert (=> b!786080 m!728029))

(declare-fun m!728043 () Bool)

(assert (=> b!786080 m!728043))

(declare-fun m!728045 () Bool)

(assert (=> start!67756 m!728045))

(declare-fun m!728047 () Bool)

(assert (=> start!67756 m!728047))

(assert (=> b!786090 m!728029))

(assert (=> b!786090 m!728029))

(declare-fun m!728049 () Bool)

(assert (=> b!786090 m!728049))

(declare-fun m!728051 () Bool)

(assert (=> b!786090 m!728051))

(declare-fun m!728053 () Bool)

(assert (=> b!786090 m!728053))

(declare-fun m!728055 () Bool)

(assert (=> b!786082 m!728055))

(declare-fun m!728057 () Bool)

(assert (=> b!786082 m!728057))

(declare-fun m!728059 () Bool)

(assert (=> b!786078 m!728059))

(declare-fun m!728061 () Bool)

(assert (=> b!786078 m!728061))

(assert (=> b!786076 m!728029))

(assert (=> b!786076 m!728029))

(assert (=> b!786076 m!728043))

(declare-fun m!728063 () Bool)

(assert (=> b!786086 m!728063))

(assert (=> b!786074 m!728029))

(assert (=> b!786074 m!728029))

(declare-fun m!728065 () Bool)

(assert (=> b!786074 m!728065))

(declare-fun m!728067 () Bool)

(assert (=> b!786083 m!728067))

(declare-fun m!728069 () Bool)

(assert (=> b!786088 m!728069))

(assert (=> b!786088 m!728055))

(declare-fun m!728071 () Bool)

(assert (=> b!786088 m!728071))

(assert (=> b!786088 m!728069))

(declare-fun m!728073 () Bool)

(assert (=> b!786088 m!728073))

(declare-fun m!728075 () Bool)

(assert (=> b!786088 m!728075))

(declare-fun m!728077 () Bool)

(assert (=> b!786077 m!728077))

(assert (=> b!786092 m!728029))

(assert (=> b!786092 m!728029))

(declare-fun m!728079 () Bool)

(assert (=> b!786092 m!728079))

(push 1)

