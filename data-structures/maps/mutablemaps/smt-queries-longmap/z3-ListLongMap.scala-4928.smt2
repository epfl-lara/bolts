; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67896 () Bool)

(assert start!67896)

(declare-fun b!789077 () Bool)

(declare-fun res!534573 () Bool)

(declare-fun e!438605 () Bool)

(assert (=> b!789077 (=> (not res!534573) (not e!438605))))

(declare-datatypes ((array!42828 0))(
  ( (array!42829 (arr!20497 (Array (_ BitVec 32) (_ BitVec 64))) (size!20918 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42828)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!789077 (= res!534573 (and (= (size!20918 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20918 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20918 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789078 () Bool)

(declare-fun res!534560 () Bool)

(declare-fun e!438612 () Bool)

(assert (=> b!789078 (=> (not res!534560) (not e!438612))))

(declare-fun e!438609 () Bool)

(assert (=> b!789078 (= res!534560 e!438609)))

(declare-fun c!87669 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789078 (= c!87669 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789079 () Bool)

(declare-fun res!534572 () Bool)

(assert (=> b!789079 (=> (not res!534572) (not e!438605))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789079 (= res!534572 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!438611 () Bool)

(declare-datatypes ((SeekEntryResult!8104 0))(
  ( (MissingZero!8104 (index!34783 (_ BitVec 32))) (Found!8104 (index!34784 (_ BitVec 32))) (Intermediate!8104 (undefined!8916 Bool) (index!34785 (_ BitVec 32)) (x!65750 (_ BitVec 32))) (Undefined!8104) (MissingVacant!8104 (index!34786 (_ BitVec 32))) )
))
(declare-fun lt!352092 () SeekEntryResult!8104)

(declare-fun b!789080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42828 (_ BitVec 32)) SeekEntryResult!8104)

(assert (=> b!789080 (= e!438611 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20497 a!3186) j!159) a!3186 mask!3328) lt!352092))))

(declare-fun b!789081 () Bool)

(declare-fun e!438614 () Bool)

(declare-fun e!438615 () Bool)

(assert (=> b!789081 (= e!438614 (not e!438615))))

(declare-fun res!534563 () Bool)

(assert (=> b!789081 (=> res!534563 e!438615)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!352085 () SeekEntryResult!8104)

(get-info :version)

(assert (=> b!789081 (= res!534563 (or (not ((_ is Intermediate!8104) lt!352085)) (bvslt x!1131 (x!65750 lt!352085)) (not (= x!1131 (x!65750 lt!352085))) (not (= index!1321 (index!34785 lt!352085)))))))

(assert (=> b!789081 e!438611))

(declare-fun res!534577 () Bool)

(assert (=> b!789081 (=> (not res!534577) (not e!438611))))

(declare-fun lt!352088 () SeekEntryResult!8104)

(assert (=> b!789081 (= res!534577 (= lt!352088 lt!352092))))

(assert (=> b!789081 (= lt!352092 (Found!8104 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42828 (_ BitVec 32)) SeekEntryResult!8104)

(assert (=> b!789081 (= lt!352088 (seekEntryOrOpen!0 (select (arr!20497 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42828 (_ BitVec 32)) Bool)

(assert (=> b!789081 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27326 0))(
  ( (Unit!27327) )
))
(declare-fun lt!352082 () Unit!27326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27326)

(assert (=> b!789081 (= lt!352082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!352086 () SeekEntryResult!8104)

(declare-fun b!789082 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42828 (_ BitVec 32)) SeekEntryResult!8104)

(assert (=> b!789082 (= e!438609 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20497 a!3186) j!159) a!3186 mask!3328) lt!352086))))

(declare-fun b!789083 () Bool)

(declare-fun e!438607 () Bool)

(assert (=> b!789083 (= e!438615 e!438607)))

(declare-fun res!534565 () Bool)

(assert (=> b!789083 (=> res!534565 e!438607)))

(declare-fun lt!352093 () SeekEntryResult!8104)

(assert (=> b!789083 (= res!534565 (not (= lt!352093 lt!352092)))))

(assert (=> b!789083 (= lt!352093 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20497 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789084 () Bool)

(declare-fun e!438610 () Bool)

(assert (=> b!789084 (= e!438610 e!438612)))

(declare-fun res!534574 () Bool)

(assert (=> b!789084 (=> (not res!534574) (not e!438612))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789084 (= res!534574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20497 a!3186) j!159) mask!3328) (select (arr!20497 a!3186) j!159) a!3186 mask!3328) lt!352086))))

(assert (=> b!789084 (= lt!352086 (Intermediate!8104 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789085 () Bool)

(assert (=> b!789085 (= e!438612 e!438614)))

(declare-fun res!534561 () Bool)

(assert (=> b!789085 (=> (not res!534561) (not e!438614))))

(declare-fun lt!352084 () SeekEntryResult!8104)

(assert (=> b!789085 (= res!534561 (= lt!352084 lt!352085))))

(declare-fun lt!352083 () (_ BitVec 64))

(declare-fun lt!352091 () array!42828)

(assert (=> b!789085 (= lt!352085 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352083 lt!352091 mask!3328))))

(assert (=> b!789085 (= lt!352084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352083 mask!3328) lt!352083 lt!352091 mask!3328))))

(assert (=> b!789085 (= lt!352083 (select (store (arr!20497 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!789085 (= lt!352091 (array!42829 (store (arr!20497 a!3186) i!1173 k0!2102) (size!20918 a!3186)))))

(declare-fun res!534570 () Bool)

(assert (=> start!67896 (=> (not res!534570) (not e!438605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67896 (= res!534570 (validMask!0 mask!3328))))

(assert (=> start!67896 e!438605))

(assert (=> start!67896 true))

(declare-fun array_inv!16271 (array!42828) Bool)

(assert (=> start!67896 (array_inv!16271 a!3186)))

(declare-fun b!789086 () Bool)

(declare-fun res!534569 () Bool)

(assert (=> b!789086 (=> (not res!534569) (not e!438610))))

(declare-datatypes ((List!14552 0))(
  ( (Nil!14549) (Cons!14548 (h!15674 (_ BitVec 64)) (t!20875 List!14552)) )
))
(declare-fun arrayNoDuplicates!0 (array!42828 (_ BitVec 32) List!14552) Bool)

(assert (=> b!789086 (= res!534569 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14549))))

(declare-fun b!789087 () Bool)

(declare-fun res!534576 () Bool)

(assert (=> b!789087 (=> (not res!534576) (not e!438610))))

(assert (=> b!789087 (= res!534576 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20918 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20918 a!3186))))))

(declare-fun b!789088 () Bool)

(declare-fun e!438608 () Bool)

(assert (=> b!789088 (= e!438608 (= lt!352088 lt!352093))))

(declare-fun b!789089 () Bool)

(declare-fun res!534567 () Bool)

(assert (=> b!789089 (=> (not res!534567) (not e!438605))))

(assert (=> b!789089 (= res!534567 (validKeyInArray!0 (select (arr!20497 a!3186) j!159)))))

(declare-fun b!789090 () Bool)

(declare-fun res!534562 () Bool)

(assert (=> b!789090 (=> (not res!534562) (not e!438612))))

(assert (=> b!789090 (= res!534562 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20497 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789091 () Bool)

(declare-fun res!534568 () Bool)

(assert (=> b!789091 (=> (not res!534568) (not e!438608))))

(assert (=> b!789091 (= res!534568 (= (seekEntryOrOpen!0 lt!352083 lt!352091 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352083 lt!352091 mask!3328)))))

(declare-fun b!789092 () Bool)

(assert (=> b!789092 (= e!438609 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20497 a!3186) j!159) a!3186 mask!3328) (Found!8104 j!159)))))

(declare-fun b!789093 () Bool)

(declare-fun res!534575 () Bool)

(assert (=> b!789093 (=> (not res!534575) (not e!438610))))

(assert (=> b!789093 (= res!534575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789094 () Bool)

(declare-fun e!438606 () Unit!27326)

(declare-fun Unit!27328 () Unit!27326)

(assert (=> b!789094 (= e!438606 Unit!27328)))

(assert (=> b!789094 false))

(declare-fun b!789095 () Bool)

(assert (=> b!789095 (= e!438605 e!438610)))

(declare-fun res!534566 () Bool)

(assert (=> b!789095 (=> (not res!534566) (not e!438610))))

(declare-fun lt!352087 () SeekEntryResult!8104)

(assert (=> b!789095 (= res!534566 (or (= lt!352087 (MissingZero!8104 i!1173)) (= lt!352087 (MissingVacant!8104 i!1173))))))

(assert (=> b!789095 (= lt!352087 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!789096 () Bool)

(declare-fun e!438616 () Bool)

(assert (=> b!789096 (= e!438607 e!438616)))

(declare-fun res!534571 () Bool)

(assert (=> b!789096 (=> res!534571 e!438616)))

(declare-fun lt!352090 () (_ BitVec 64))

(assert (=> b!789096 (= res!534571 (= lt!352090 lt!352083))))

(assert (=> b!789096 (= lt!352090 (select (store (arr!20497 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!789097 () Bool)

(declare-fun Unit!27329 () Unit!27326)

(assert (=> b!789097 (= e!438606 Unit!27329)))

(declare-fun b!789098 () Bool)

(declare-fun res!534564 () Bool)

(assert (=> b!789098 (=> (not res!534564) (not e!438605))))

(declare-fun arrayContainsKey!0 (array!42828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789098 (= res!534564 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789099 () Bool)

(assert (=> b!789099 (= e!438616 true)))

(assert (=> b!789099 e!438608))

(declare-fun res!534559 () Bool)

(assert (=> b!789099 (=> (not res!534559) (not e!438608))))

(assert (=> b!789099 (= res!534559 (= lt!352090 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352089 () Unit!27326)

(assert (=> b!789099 (= lt!352089 e!438606)))

(declare-fun c!87668 () Bool)

(assert (=> b!789099 (= c!87668 (= lt!352090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67896 res!534570) b!789077))

(assert (= (and b!789077 res!534573) b!789089))

(assert (= (and b!789089 res!534567) b!789079))

(assert (= (and b!789079 res!534572) b!789098))

(assert (= (and b!789098 res!534564) b!789095))

(assert (= (and b!789095 res!534566) b!789093))

(assert (= (and b!789093 res!534575) b!789086))

(assert (= (and b!789086 res!534569) b!789087))

(assert (= (and b!789087 res!534576) b!789084))

(assert (= (and b!789084 res!534574) b!789090))

(assert (= (and b!789090 res!534562) b!789078))

(assert (= (and b!789078 c!87669) b!789082))

(assert (= (and b!789078 (not c!87669)) b!789092))

(assert (= (and b!789078 res!534560) b!789085))

(assert (= (and b!789085 res!534561) b!789081))

(assert (= (and b!789081 res!534577) b!789080))

(assert (= (and b!789081 (not res!534563)) b!789083))

(assert (= (and b!789083 (not res!534565)) b!789096))

(assert (= (and b!789096 (not res!534571)) b!789099))

(assert (= (and b!789099 c!87668) b!789094))

(assert (= (and b!789099 (not c!87668)) b!789097))

(assert (= (and b!789099 res!534559) b!789091))

(assert (= (and b!789091 res!534568) b!789088))

(declare-fun m!730289 () Bool)

(assert (=> b!789082 m!730289))

(assert (=> b!789082 m!730289))

(declare-fun m!730291 () Bool)

(assert (=> b!789082 m!730291))

(declare-fun m!730293 () Bool)

(assert (=> b!789079 m!730293))

(declare-fun m!730295 () Bool)

(assert (=> b!789090 m!730295))

(declare-fun m!730297 () Bool)

(assert (=> b!789096 m!730297))

(declare-fun m!730299 () Bool)

(assert (=> b!789096 m!730299))

(assert (=> b!789089 m!730289))

(assert (=> b!789089 m!730289))

(declare-fun m!730301 () Bool)

(assert (=> b!789089 m!730301))

(declare-fun m!730303 () Bool)

(assert (=> b!789093 m!730303))

(assert (=> b!789081 m!730289))

(assert (=> b!789081 m!730289))

(declare-fun m!730305 () Bool)

(assert (=> b!789081 m!730305))

(declare-fun m!730307 () Bool)

(assert (=> b!789081 m!730307))

(declare-fun m!730309 () Bool)

(assert (=> b!789081 m!730309))

(declare-fun m!730311 () Bool)

(assert (=> b!789098 m!730311))

(declare-fun m!730313 () Bool)

(assert (=> b!789091 m!730313))

(declare-fun m!730315 () Bool)

(assert (=> b!789091 m!730315))

(declare-fun m!730317 () Bool)

(assert (=> start!67896 m!730317))

(declare-fun m!730319 () Bool)

(assert (=> start!67896 m!730319))

(assert (=> b!789084 m!730289))

(assert (=> b!789084 m!730289))

(declare-fun m!730321 () Bool)

(assert (=> b!789084 m!730321))

(assert (=> b!789084 m!730321))

(assert (=> b!789084 m!730289))

(declare-fun m!730323 () Bool)

(assert (=> b!789084 m!730323))

(assert (=> b!789080 m!730289))

(assert (=> b!789080 m!730289))

(declare-fun m!730325 () Bool)

(assert (=> b!789080 m!730325))

(declare-fun m!730327 () Bool)

(assert (=> b!789095 m!730327))

(assert (=> b!789092 m!730289))

(assert (=> b!789092 m!730289))

(declare-fun m!730329 () Bool)

(assert (=> b!789092 m!730329))

(declare-fun m!730331 () Bool)

(assert (=> b!789086 m!730331))

(declare-fun m!730333 () Bool)

(assert (=> b!789085 m!730333))

(assert (=> b!789085 m!730297))

(declare-fun m!730335 () Bool)

(assert (=> b!789085 m!730335))

(declare-fun m!730337 () Bool)

(assert (=> b!789085 m!730337))

(assert (=> b!789085 m!730337))

(declare-fun m!730339 () Bool)

(assert (=> b!789085 m!730339))

(assert (=> b!789083 m!730289))

(assert (=> b!789083 m!730289))

(assert (=> b!789083 m!730329))

(check-sat (not b!789079) (not b!789091) (not b!789080) (not b!789095) (not b!789093) (not start!67896) (not b!789086) (not b!789089) (not b!789081) (not b!789084) (not b!789083) (not b!789085) (not b!789098) (not b!789082) (not b!789092))
(check-sat)
