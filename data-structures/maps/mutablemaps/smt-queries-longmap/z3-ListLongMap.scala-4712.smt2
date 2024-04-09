; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65352 () Bool)

(assert start!65352)

(declare-fun b!742185 () Bool)

(declare-fun res!499543 () Bool)

(declare-fun e!414818 () Bool)

(assert (=> b!742185 (=> (not res!499543) (not e!414818))))

(declare-datatypes ((array!41478 0))(
  ( (array!41479 (arr!19849 (Array (_ BitVec 32) (_ BitVec 64))) (size!20270 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41478)

(declare-datatypes ((List!13904 0))(
  ( (Nil!13901) (Cons!13900 (h!14972 (_ BitVec 64)) (t!20227 List!13904)) )
))
(declare-fun arrayNoDuplicates!0 (array!41478 (_ BitVec 32) List!13904) Bool)

(assert (=> b!742185 (= res!499543 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13901))))

(declare-fun b!742186 () Bool)

(declare-fun res!499539 () Bool)

(declare-fun e!414814 () Bool)

(assert (=> b!742186 (=> (not res!499539) (not e!414814))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742186 (= res!499539 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19849 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742187 () Bool)

(declare-fun res!499533 () Bool)

(assert (=> b!742187 (=> (not res!499533) (not e!414818))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41478 (_ BitVec 32)) Bool)

(assert (=> b!742187 (= res!499533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742188 () Bool)

(declare-fun res!499532 () Bool)

(declare-fun e!414819 () Bool)

(assert (=> b!742188 (=> (not res!499532) (not e!414819))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742188 (= res!499532 (validKeyInArray!0 (select (arr!19849 a!3186) j!159)))))

(declare-fun b!742189 () Bool)

(declare-fun res!499536 () Bool)

(assert (=> b!742189 (=> (not res!499536) (not e!414819))))

(assert (=> b!742189 (= res!499536 (and (= (size!20270 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20270 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20270 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742190 () Bool)

(declare-fun e!414820 () Bool)

(assert (=> b!742190 (= e!414814 e!414820)))

(declare-fun res!499537 () Bool)

(assert (=> b!742190 (=> (not res!499537) (not e!414820))))

(declare-datatypes ((SeekEntryResult!7456 0))(
  ( (MissingZero!7456 (index!32191 (_ BitVec 32))) (Found!7456 (index!32192 (_ BitVec 32))) (Intermediate!7456 (undefined!8268 Bool) (index!32193 (_ BitVec 32)) (x!63191 (_ BitVec 32))) (Undefined!7456) (MissingVacant!7456 (index!32194 (_ BitVec 32))) )
))
(declare-fun lt!329727 () SeekEntryResult!7456)

(declare-fun lt!329731 () SeekEntryResult!7456)

(assert (=> b!742190 (= res!499537 (= lt!329727 lt!329731))))

(declare-fun lt!329728 () (_ BitVec 64))

(declare-fun lt!329725 () array!41478)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41478 (_ BitVec 32)) SeekEntryResult!7456)

(assert (=> b!742190 (= lt!329731 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329728 lt!329725 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742190 (= lt!329727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329728 mask!3328) lt!329728 lt!329725 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!742190 (= lt!329728 (select (store (arr!19849 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742190 (= lt!329725 (array!41479 (store (arr!19849 a!3186) i!1173 k0!2102) (size!20270 a!3186)))))

(declare-fun b!742191 () Bool)

(declare-fun res!499540 () Bool)

(assert (=> b!742191 (=> (not res!499540) (not e!414819))))

(declare-fun arrayContainsKey!0 (array!41478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742191 (= res!499540 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742192 () Bool)

(assert (=> b!742192 (= e!414819 e!414818)))

(declare-fun res!499538 () Bool)

(assert (=> b!742192 (=> (not res!499538) (not e!414818))))

(declare-fun lt!329729 () SeekEntryResult!7456)

(assert (=> b!742192 (= res!499538 (or (= lt!329729 (MissingZero!7456 i!1173)) (= lt!329729 (MissingVacant!7456 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41478 (_ BitVec 32)) SeekEntryResult!7456)

(assert (=> b!742192 (= lt!329729 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!742193 () Bool)

(declare-fun res!499531 () Bool)

(assert (=> b!742193 (=> (not res!499531) (not e!414814))))

(declare-fun e!414815 () Bool)

(assert (=> b!742193 (= res!499531 e!414815)))

(declare-fun c!81708 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742193 (= c!81708 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!499542 () Bool)

(assert (=> start!65352 (=> (not res!499542) (not e!414819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65352 (= res!499542 (validMask!0 mask!3328))))

(assert (=> start!65352 e!414819))

(assert (=> start!65352 true))

(declare-fun array_inv!15623 (array!41478) Bool)

(assert (=> start!65352 (array_inv!15623 a!3186)))

(declare-fun b!742194 () Bool)

(assert (=> b!742194 (= e!414818 e!414814)))

(declare-fun res!499544 () Bool)

(assert (=> b!742194 (=> (not res!499544) (not e!414814))))

(declare-fun lt!329726 () SeekEntryResult!7456)

(assert (=> b!742194 (= res!499544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19849 a!3186) j!159) mask!3328) (select (arr!19849 a!3186) j!159) a!3186 mask!3328) lt!329726))))

(assert (=> b!742194 (= lt!329726 (Intermediate!7456 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742195 () Bool)

(declare-fun e!414817 () Bool)

(declare-fun e!414822 () Bool)

(assert (=> b!742195 (= e!414817 e!414822)))

(declare-fun res!499530 () Bool)

(assert (=> b!742195 (=> (not res!499530) (not e!414822))))

(declare-fun lt!329730 () SeekEntryResult!7456)

(assert (=> b!742195 (= res!499530 (= (seekEntryOrOpen!0 (select (arr!19849 a!3186) j!159) a!3186 mask!3328) lt!329730))))

(assert (=> b!742195 (= lt!329730 (Found!7456 j!159))))

(declare-fun b!742196 () Bool)

(declare-fun res!499535 () Bool)

(assert (=> b!742196 (=> (not res!499535) (not e!414819))))

(assert (=> b!742196 (= res!499535 (validKeyInArray!0 k0!2102))))

(declare-fun b!742197 () Bool)

(declare-fun res!499534 () Bool)

(assert (=> b!742197 (=> (not res!499534) (not e!414818))))

(assert (=> b!742197 (= res!499534 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20270 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20270 a!3186))))))

(declare-fun b!742198 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41478 (_ BitVec 32)) SeekEntryResult!7456)

(assert (=> b!742198 (= e!414815 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19849 a!3186) j!159) a!3186 mask!3328) (Found!7456 j!159)))))

(declare-fun b!742199 () Bool)

(declare-fun e!414816 () Bool)

(assert (=> b!742199 (= e!414816 true)))

(declare-fun lt!329724 () SeekEntryResult!7456)

(assert (=> b!742199 (= lt!329724 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19849 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742200 () Bool)

(assert (=> b!742200 (= e!414820 (not e!414816))))

(declare-fun res!499541 () Bool)

(assert (=> b!742200 (=> res!499541 e!414816)))

(get-info :version)

(assert (=> b!742200 (= res!499541 (or (not ((_ is Intermediate!7456) lt!329731)) (bvslt x!1131 (x!63191 lt!329731)) (not (= x!1131 (x!63191 lt!329731))) (not (= index!1321 (index!32193 lt!329731)))))))

(assert (=> b!742200 e!414817))

(declare-fun res!499545 () Bool)

(assert (=> b!742200 (=> (not res!499545) (not e!414817))))

(assert (=> b!742200 (= res!499545 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25392 0))(
  ( (Unit!25393) )
))
(declare-fun lt!329732 () Unit!25392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25392)

(assert (=> b!742200 (= lt!329732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742201 () Bool)

(assert (=> b!742201 (= e!414822 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19849 a!3186) j!159) a!3186 mask!3328) lt!329730))))

(declare-fun b!742202 () Bool)

(assert (=> b!742202 (= e!414815 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19849 a!3186) j!159) a!3186 mask!3328) lt!329726))))

(assert (= (and start!65352 res!499542) b!742189))

(assert (= (and b!742189 res!499536) b!742188))

(assert (= (and b!742188 res!499532) b!742196))

(assert (= (and b!742196 res!499535) b!742191))

(assert (= (and b!742191 res!499540) b!742192))

(assert (= (and b!742192 res!499538) b!742187))

(assert (= (and b!742187 res!499533) b!742185))

(assert (= (and b!742185 res!499543) b!742197))

(assert (= (and b!742197 res!499534) b!742194))

(assert (= (and b!742194 res!499544) b!742186))

(assert (= (and b!742186 res!499539) b!742193))

(assert (= (and b!742193 c!81708) b!742202))

(assert (= (and b!742193 (not c!81708)) b!742198))

(assert (= (and b!742193 res!499531) b!742190))

(assert (= (and b!742190 res!499537) b!742200))

(assert (= (and b!742200 res!499545) b!742195))

(assert (= (and b!742195 res!499530) b!742201))

(assert (= (and b!742200 (not res!499541)) b!742199))

(declare-fun m!693167 () Bool)

(assert (=> b!742187 m!693167))

(declare-fun m!693169 () Bool)

(assert (=> b!742202 m!693169))

(assert (=> b!742202 m!693169))

(declare-fun m!693171 () Bool)

(assert (=> b!742202 m!693171))

(declare-fun m!693173 () Bool)

(assert (=> b!742186 m!693173))

(declare-fun m!693175 () Bool)

(assert (=> b!742196 m!693175))

(assert (=> b!742188 m!693169))

(assert (=> b!742188 m!693169))

(declare-fun m!693177 () Bool)

(assert (=> b!742188 m!693177))

(assert (=> b!742194 m!693169))

(assert (=> b!742194 m!693169))

(declare-fun m!693179 () Bool)

(assert (=> b!742194 m!693179))

(assert (=> b!742194 m!693179))

(assert (=> b!742194 m!693169))

(declare-fun m!693181 () Bool)

(assert (=> b!742194 m!693181))

(assert (=> b!742201 m!693169))

(assert (=> b!742201 m!693169))

(declare-fun m!693183 () Bool)

(assert (=> b!742201 m!693183))

(declare-fun m!693185 () Bool)

(assert (=> b!742192 m!693185))

(declare-fun m!693187 () Bool)

(assert (=> b!742185 m!693187))

(declare-fun m!693189 () Bool)

(assert (=> b!742191 m!693189))

(declare-fun m!693191 () Bool)

(assert (=> b!742200 m!693191))

(declare-fun m!693193 () Bool)

(assert (=> b!742200 m!693193))

(assert (=> b!742195 m!693169))

(assert (=> b!742195 m!693169))

(declare-fun m!693195 () Bool)

(assert (=> b!742195 m!693195))

(declare-fun m!693197 () Bool)

(assert (=> start!65352 m!693197))

(declare-fun m!693199 () Bool)

(assert (=> start!65352 m!693199))

(assert (=> b!742199 m!693169))

(assert (=> b!742199 m!693169))

(declare-fun m!693201 () Bool)

(assert (=> b!742199 m!693201))

(assert (=> b!742198 m!693169))

(assert (=> b!742198 m!693169))

(assert (=> b!742198 m!693201))

(declare-fun m!693203 () Bool)

(assert (=> b!742190 m!693203))

(declare-fun m!693205 () Bool)

(assert (=> b!742190 m!693205))

(declare-fun m!693207 () Bool)

(assert (=> b!742190 m!693207))

(assert (=> b!742190 m!693205))

(declare-fun m!693209 () Bool)

(assert (=> b!742190 m!693209))

(declare-fun m!693211 () Bool)

(assert (=> b!742190 m!693211))

(check-sat (not b!742185) (not b!742202) (not b!742187) (not b!742188) (not b!742190) (not b!742191) (not b!742200) (not b!742196) (not b!742192) (not b!742199) (not b!742201) (not b!742195) (not b!742194) (not start!65352) (not b!742198))
(check-sat)
