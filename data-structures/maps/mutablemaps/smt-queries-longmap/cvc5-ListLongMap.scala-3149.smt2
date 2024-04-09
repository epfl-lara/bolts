; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44326 () Bool)

(assert start!44326)

(declare-fun res!290716 () Bool)

(declare-fun e!286651 () Bool)

(assert (=> start!44326 (=> (not res!290716) (not e!286651))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44326 (= res!290716 (validMask!0 mask!3524))))

(assert (=> start!44326 e!286651))

(assert (=> start!44326 true))

(declare-datatypes ((array!31537 0))(
  ( (array!31538 (arr!15159 (Array (_ BitVec 32) (_ BitVec 64))) (size!15523 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31537)

(declare-fun array_inv!10933 (array!31537) Bool)

(assert (=> start!44326 (array_inv!10933 a!3235)))

(declare-fun b!487176 () Bool)

(declare-fun e!286653 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3633 0))(
  ( (MissingZero!3633 (index!16711 (_ BitVec 32))) (Found!3633 (index!16712 (_ BitVec 32))) (Intermediate!3633 (undefined!4445 Bool) (index!16713 (_ BitVec 32)) (x!45864 (_ BitVec 32))) (Undefined!3633) (MissingVacant!3633 (index!16714 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31537 (_ BitVec 32)) SeekEntryResult!3633)

(assert (=> b!487176 (= e!286653 (= (seekEntryOrOpen!0 (select (arr!15159 a!3235) j!176) a!3235 mask!3524) (Found!3633 j!176)))))

(declare-fun b!487177 () Bool)

(declare-fun res!290715 () Bool)

(assert (=> b!487177 (=> (not res!290715) (not e!286651))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487177 (= res!290715 (and (= (size!15523 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15523 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15523 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487178 () Bool)

(declare-fun e!286652 () Bool)

(assert (=> b!487178 (= e!286652 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(assert (=> b!487178 e!286653))

(declare-fun res!290718 () Bool)

(assert (=> b!487178 (=> (not res!290718) (not e!286653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31537 (_ BitVec 32)) Bool)

(assert (=> b!487178 (= res!290718 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14204 0))(
  ( (Unit!14205) )
))
(declare-fun lt!219968 () Unit!14204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14204)

(assert (=> b!487178 (= lt!219968 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487179 () Bool)

(declare-fun res!290717 () Bool)

(assert (=> b!487179 (=> (not res!290717) (not e!286651))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487179 (= res!290717 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487180 () Bool)

(declare-fun res!290712 () Bool)

(assert (=> b!487180 (=> (not res!290712) (not e!286652))))

(declare-datatypes ((List!9370 0))(
  ( (Nil!9367) (Cons!9366 (h!10222 (_ BitVec 64)) (t!15606 List!9370)) )
))
(declare-fun arrayNoDuplicates!0 (array!31537 (_ BitVec 32) List!9370) Bool)

(assert (=> b!487180 (= res!290712 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9367))))

(declare-fun b!487181 () Bool)

(declare-fun res!290719 () Bool)

(assert (=> b!487181 (=> (not res!290719) (not e!286651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487181 (= res!290719 (validKeyInArray!0 k!2280))))

(declare-fun b!487182 () Bool)

(declare-fun res!290720 () Bool)

(assert (=> b!487182 (=> (not res!290720) (not e!286651))))

(assert (=> b!487182 (= res!290720 (validKeyInArray!0 (select (arr!15159 a!3235) j!176)))))

(declare-fun b!487183 () Bool)

(declare-fun res!290714 () Bool)

(assert (=> b!487183 (=> (not res!290714) (not e!286652))))

(assert (=> b!487183 (= res!290714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487184 () Bool)

(assert (=> b!487184 (= e!286651 e!286652)))

(declare-fun res!290713 () Bool)

(assert (=> b!487184 (=> (not res!290713) (not e!286652))))

(declare-fun lt!219967 () SeekEntryResult!3633)

(assert (=> b!487184 (= res!290713 (or (= lt!219967 (MissingZero!3633 i!1204)) (= lt!219967 (MissingVacant!3633 i!1204))))))

(assert (=> b!487184 (= lt!219967 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44326 res!290716) b!487177))

(assert (= (and b!487177 res!290715) b!487182))

(assert (= (and b!487182 res!290720) b!487181))

(assert (= (and b!487181 res!290719) b!487179))

(assert (= (and b!487179 res!290717) b!487184))

(assert (= (and b!487184 res!290713) b!487183))

(assert (= (and b!487183 res!290714) b!487180))

(assert (= (and b!487180 res!290712) b!487178))

(assert (= (and b!487178 res!290718) b!487176))

(declare-fun m!467035 () Bool)

(assert (=> b!487179 m!467035))

(declare-fun m!467037 () Bool)

(assert (=> b!487178 m!467037))

(declare-fun m!467039 () Bool)

(assert (=> b!487178 m!467039))

(declare-fun m!467041 () Bool)

(assert (=> start!44326 m!467041))

(declare-fun m!467043 () Bool)

(assert (=> start!44326 m!467043))

(declare-fun m!467045 () Bool)

(assert (=> b!487181 m!467045))

(declare-fun m!467047 () Bool)

(assert (=> b!487180 m!467047))

(declare-fun m!467049 () Bool)

(assert (=> b!487182 m!467049))

(assert (=> b!487182 m!467049))

(declare-fun m!467051 () Bool)

(assert (=> b!487182 m!467051))

(declare-fun m!467053 () Bool)

(assert (=> b!487183 m!467053))

(assert (=> b!487176 m!467049))

(assert (=> b!487176 m!467049))

(declare-fun m!467055 () Bool)

(assert (=> b!487176 m!467055))

(declare-fun m!467057 () Bool)

(assert (=> b!487184 m!467057))

(push 1)

(assert (not b!487181))

(assert (not b!487180))

(assert (not b!487183))

(assert (not b!487178))

(assert (not b!487182))

(assert (not start!44326))

(assert (not b!487176))

(assert (not b!487179))

(assert (not b!487184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!487300 () Bool)

(declare-fun e!286720 () SeekEntryResult!3633)

(assert (=> b!487300 (= e!286720 Undefined!3633)))

(declare-fun b!487301 () Bool)

(declare-fun e!286719 () SeekEntryResult!3633)

(declare-fun lt!220013 () SeekEntryResult!3633)

(assert (=> b!487301 (= e!286719 (Found!3633 (index!16713 lt!220013)))))

(declare-fun b!487302 () Bool)

(declare-fun c!58524 () Bool)

(declare-fun lt!220012 () (_ BitVec 64))

(assert (=> b!487302 (= c!58524 (= lt!220012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!286718 () SeekEntryResult!3633)

(assert (=> b!487302 (= e!286719 e!286718)))

(declare-fun d!77513 () Bool)

(declare-fun lt!220011 () SeekEntryResult!3633)

(assert (=> d!77513 (and (or (is-Undefined!3633 lt!220011) (not (is-Found!3633 lt!220011)) (and (bvsge (index!16712 lt!220011) #b00000000000000000000000000000000) (bvslt (index!16712 lt!220011) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220011) (is-Found!3633 lt!220011) (not (is-MissingZero!3633 lt!220011)) (and (bvsge (index!16711 lt!220011) #b00000000000000000000000000000000) (bvslt (index!16711 lt!220011) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220011) (is-Found!3633 lt!220011) (is-MissingZero!3633 lt!220011) (not (is-MissingVacant!3633 lt!220011)) (and (bvsge (index!16714 lt!220011) #b00000000000000000000000000000000) (bvslt (index!16714 lt!220011) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220011) (ite (is-Found!3633 lt!220011) (= (select (arr!15159 a!3235) (index!16712 lt!220011)) k!2280) (ite (is-MissingZero!3633 lt!220011) (= (select (arr!15159 a!3235) (index!16711 lt!220011)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3633 lt!220011) (= (select (arr!15159 a!3235) (index!16714 lt!220011)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77513 (= lt!220011 e!286720)))

(declare-fun c!58522 () Bool)

(assert (=> d!77513 (= c!58522 (and (is-Intermediate!3633 lt!220013) (undefined!4445 lt!220013)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31537 (_ BitVec 32)) SeekEntryResult!3633)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77513 (= lt!220013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77513 (validMask!0 mask!3524)))

(assert (=> d!77513 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220011)))

(declare-fun b!487303 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31537 (_ BitVec 32)) SeekEntryResult!3633)

(assert (=> b!487303 (= e!286718 (seekKeyOrZeroReturnVacant!0 (x!45864 lt!220013) (index!16713 lt!220013) (index!16713 lt!220013) k!2280 a!3235 mask!3524))))

(declare-fun b!487304 () Bool)

(assert (=> b!487304 (= e!286718 (MissingZero!3633 (index!16713 lt!220013)))))

(declare-fun b!487305 () Bool)

(assert (=> b!487305 (= e!286720 e!286719)))

(assert (=> b!487305 (= lt!220012 (select (arr!15159 a!3235) (index!16713 lt!220013)))))

(declare-fun c!58523 () Bool)

(assert (=> b!487305 (= c!58523 (= lt!220012 k!2280))))

(assert (= (and d!77513 c!58522) b!487300))

(assert (= (and d!77513 (not c!58522)) b!487305))

(assert (= (and b!487305 c!58523) b!487301))

(assert (= (and b!487305 (not c!58523)) b!487302))

(assert (= (and b!487302 c!58524) b!487304))

(assert (= (and b!487302 (not c!58524)) b!487303))

(declare-fun m!467149 () Bool)

(assert (=> d!77513 m!467149))

(declare-fun m!467151 () Bool)

(assert (=> d!77513 m!467151))

(assert (=> d!77513 m!467041))

(declare-fun m!467153 () Bool)

(assert (=> d!77513 m!467153))

(declare-fun m!467155 () Bool)

(assert (=> d!77513 m!467155))

(declare-fun m!467159 () Bool)

(assert (=> d!77513 m!467159))

(assert (=> d!77513 m!467153))

(declare-fun m!467163 () Bool)

(assert (=> b!487303 m!467163))

(declare-fun m!467169 () Bool)

(assert (=> b!487305 m!467169))

(assert (=> b!487184 d!77513))

(declare-fun d!77529 () Bool)

(declare-fun res!290809 () Bool)

(declare-fun e!286744 () Bool)

(assert (=> d!77529 (=> res!290809 e!286744)))

(assert (=> d!77529 (= res!290809 (= (select (arr!15159 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77529 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!286744)))

(declare-fun b!487335 () Bool)

(declare-fun e!286745 () Bool)

(assert (=> b!487335 (= e!286744 e!286745)))

(declare-fun res!290810 () Bool)

(assert (=> b!487335 (=> (not res!290810) (not e!286745))))

(assert (=> b!487335 (= res!290810 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15523 a!3235)))))

(declare-fun b!487336 () Bool)

(assert (=> b!487336 (= e!286745 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77529 (not res!290809)) b!487335))

(assert (= (and b!487335 res!290810) b!487336))

(declare-fun m!467177 () Bool)

(assert (=> d!77529 m!467177))

(declare-fun m!467183 () Bool)

(assert (=> b!487336 m!467183))

(assert (=> b!487179 d!77529))

(declare-fun bm!31292 () Bool)

(declare-fun call!31295 () Bool)

(assert (=> bm!31292 (= call!31295 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487362 () Bool)

(declare-fun e!286769 () Bool)

(declare-fun e!286770 () Bool)

(assert (=> b!487362 (= e!286769 e!286770)))

(declare-fun lt!220032 () (_ BitVec 64))

(assert (=> b!487362 (= lt!220032 (select (arr!15159 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220030 () Unit!14204)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31537 (_ BitVec 64) (_ BitVec 32)) Unit!14204)

(assert (=> b!487362 (= lt!220030 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220032 #b00000000000000000000000000000000))))

(assert (=> b!487362 (arrayContainsKey!0 a!3235 lt!220032 #b00000000000000000000000000000000)))

(declare-fun lt!220034 () Unit!14204)

(assert (=> b!487362 (= lt!220034 lt!220030)))

(declare-fun res!290828 () Bool)

(assert (=> b!487362 (= res!290828 (= (seekEntryOrOpen!0 (select (arr!15159 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3633 #b00000000000000000000000000000000)))))

(assert (=> b!487362 (=> (not res!290828) (not e!286770))))

(declare-fun b!487364 () Bool)

(assert (=> b!487364 (= e!286769 call!31295)))

(declare-fun d!77535 () Bool)

(declare-fun res!290827 () Bool)

(declare-fun e!286766 () Bool)

(assert (=> d!77535 (=> res!290827 e!286766)))

(assert (=> d!77535 (= res!290827 (bvsge #b00000000000000000000000000000000 (size!15523 a!3235)))))

(assert (=> d!77535 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286766)))

(declare-fun b!487366 () Bool)

(assert (=> b!487366 (= e!286770 call!31295)))

(declare-fun b!487367 () Bool)

(assert (=> b!487367 (= e!286766 e!286769)))

(declare-fun c!58536 () Bool)

(assert (=> b!487367 (= c!58536 (validKeyInArray!0 (select (arr!15159 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77535 (not res!290827)) b!487367))

(assert (= (and b!487367 c!58536) b!487362))

(assert (= (and b!487367 (not c!58536)) b!487364))

(assert (= (and b!487362 res!290828) b!487366))

(assert (= (or b!487366 b!487364) bm!31292))

(declare-fun m!467189 () Bool)

(assert (=> bm!31292 m!467189))

(assert (=> b!487362 m!467177))

(declare-fun m!467193 () Bool)

(assert (=> b!487362 m!467193))

(declare-fun m!467197 () Bool)

(assert (=> b!487362 m!467197))

(assert (=> b!487362 m!467177))

(declare-fun m!467201 () Bool)

(assert (=> b!487362 m!467201))

(assert (=> b!487367 m!467177))

(assert (=> b!487367 m!467177))

(declare-fun m!467203 () Bool)

(assert (=> b!487367 m!467203))

(assert (=> b!487183 d!77535))

(declare-fun call!31297 () Bool)

(declare-fun bm!31294 () Bool)

(assert (=> bm!31294 (= call!31297 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487369 () Bool)

(declare-fun e!286773 () Bool)

(declare-fun e!286774 () Bool)

(assert (=> b!487369 (= e!286773 e!286774)))

(declare-fun lt!220036 () (_ BitVec 64))

(assert (=> b!487369 (= lt!220036 (select (arr!15159 a!3235) j!176))))

(declare-fun lt!220035 () Unit!14204)

(assert (=> b!487369 (= lt!220035 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220036 j!176))))

(assert (=> b!487369 (arrayContainsKey!0 a!3235 lt!220036 #b00000000000000000000000000000000)))

(declare-fun lt!220037 () Unit!14204)

(assert (=> b!487369 (= lt!220037 lt!220035)))

(declare-fun res!290832 () Bool)

(assert (=> b!487369 (= res!290832 (= (seekEntryOrOpen!0 (select (arr!15159 a!3235) j!176) a!3235 mask!3524) (Found!3633 j!176)))))

(assert (=> b!487369 (=> (not res!290832) (not e!286774))))

(declare-fun b!487370 () Bool)

(assert (=> b!487370 (= e!286773 call!31297)))

(declare-fun d!77543 () Bool)

(declare-fun res!290831 () Bool)

(declare-fun e!286772 () Bool)

(assert (=> d!77543 (=> res!290831 e!286772)))

(assert (=> d!77543 (= res!290831 (bvsge j!176 (size!15523 a!3235)))))

(assert (=> d!77543 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!286772)))

(declare-fun b!487371 () Bool)

(assert (=> b!487371 (= e!286774 call!31297)))

(declare-fun b!487372 () Bool)

(assert (=> b!487372 (= e!286772 e!286773)))

(declare-fun c!58537 () Bool)

(assert (=> b!487372 (= c!58537 (validKeyInArray!0 (select (arr!15159 a!3235) j!176)))))

(assert (= (and d!77543 (not res!290831)) b!487372))

(assert (= (and b!487372 c!58537) b!487369))

(assert (= (and b!487372 (not c!58537)) b!487370))

(assert (= (and b!487369 res!290832) b!487371))

(assert (= (or b!487371 b!487370) bm!31294))

(declare-fun m!467207 () Bool)

(assert (=> bm!31294 m!467207))

(assert (=> b!487369 m!467049))

(declare-fun m!467211 () Bool)

(assert (=> b!487369 m!467211))

(declare-fun m!467215 () Bool)

(assert (=> b!487369 m!467215))

(assert (=> b!487369 m!467049))

(assert (=> b!487369 m!467055))

(assert (=> b!487372 m!467049))

(assert (=> b!487372 m!467049))

(assert (=> b!487372 m!467051))

(assert (=> b!487178 d!77543))

(declare-fun d!77547 () Bool)

(assert (=> d!77547 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220045 () Unit!14204)

(declare-fun choose!38 (array!31537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14204)

(assert (=> d!77547 (= lt!220045 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77547 (validMask!0 mask!3524)))

(assert (=> d!77547 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220045)))

(declare-fun bs!15535 () Bool)

(assert (= bs!15535 d!77547))

(assert (=> bs!15535 m!467037))

(declare-fun m!467219 () Bool)

(assert (=> bs!15535 m!467219))

(assert (=> bs!15535 m!467041))

(assert (=> b!487178 d!77547))

(declare-fun b!487377 () Bool)

(declare-fun e!286780 () SeekEntryResult!3633)

(assert (=> b!487377 (= e!286780 Undefined!3633)))

(declare-fun b!487378 () Bool)

(declare-fun e!286779 () SeekEntryResult!3633)

(declare-fun lt!220049 () SeekEntryResult!3633)

(assert (=> b!487378 (= e!286779 (Found!3633 (index!16713 lt!220049)))))

(declare-fun b!487379 () Bool)

(declare-fun c!58541 () Bool)

(declare-fun lt!220048 () (_ BitVec 64))

(assert (=> b!487379 (= c!58541 (= lt!220048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!286778 () SeekEntryResult!3633)

(assert (=> b!487379 (= e!286779 e!286778)))

(declare-fun d!77555 () Bool)

(declare-fun lt!220047 () SeekEntryResult!3633)

(assert (=> d!77555 (and (or (is-Undefined!3633 lt!220047) (not (is-Found!3633 lt!220047)) (and (bvsge (index!16712 lt!220047) #b00000000000000000000000000000000) (bvslt (index!16712 lt!220047) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220047) (is-Found!3633 lt!220047) (not (is-MissingZero!3633 lt!220047)) (and (bvsge (index!16711 lt!220047) #b00000000000000000000000000000000) (bvslt (index!16711 lt!220047) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220047) (is-Found!3633 lt!220047) (is-MissingZero!3633 lt!220047) (not (is-MissingVacant!3633 lt!220047)) (and (bvsge (index!16714 lt!220047) #b00000000000000000000000000000000) (bvslt (index!16714 lt!220047) (size!15523 a!3235)))) (or (is-Undefined!3633 lt!220047) (ite (is-Found!3633 lt!220047) (= (select (arr!15159 a!3235) (index!16712 lt!220047)) (select (arr!15159 a!3235) j!176)) (ite (is-MissingZero!3633 lt!220047) (= (select (arr!15159 a!3235) (index!16711 lt!220047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3633 lt!220047) (= (select (arr!15159 a!3235) (index!16714 lt!220047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77555 (= lt!220047 e!286780)))

(declare-fun c!58539 () Bool)

(assert (=> d!77555 (= c!58539 (and (is-Intermediate!3633 lt!220049) (undefined!4445 lt!220049)))))

(assert (=> d!77555 (= lt!220049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15159 a!3235) j!176) mask!3524) (select (arr!15159 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77555 (validMask!0 mask!3524)))

(assert (=> d!77555 (= (seekEntryOrOpen!0 (select (arr!15159 a!3235) j!176) a!3235 mask!3524) lt!220047)))

(declare-fun b!487380 () Bool)

(assert (=> b!487380 (= e!286778 (seekKeyOrZeroReturnVacant!0 (x!45864 lt!220049) (index!16713 lt!220049) (index!16713 lt!220049) (select (arr!15159 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!487381 () Bool)

(assert (=> b!487381 (= e!286778 (MissingZero!3633 (index!16713 lt!220049)))))

(declare-fun b!487382 () Bool)

(assert (=> b!487382 (= e!286780 e!286779)))

(assert (=> b!487382 (= lt!220048 (select (arr!15159 a!3235) (index!16713 lt!220049)))))

(declare-fun c!58540 () Bool)

(assert (=> b!487382 (= c!58540 (= lt!220048 (select (arr!15159 a!3235) j!176)))))

(assert (= (and d!77555 c!58539) b!487377))

(assert (= (and d!77555 (not c!58539)) b!487382))

(assert (= (and b!487382 c!58540) b!487378))

(assert (= (and b!487382 (not c!58540)) b!487379))

(assert (= (and b!487379 c!58541) b!487381))

(assert (= (and b!487379 (not c!58541)) b!487380))

(declare-fun m!467223 () Bool)

(assert (=> d!77555 m!467223))

(declare-fun m!467225 () Bool)

(assert (=> d!77555 m!467225))

(assert (=> d!77555 m!467041))

(declare-fun m!467227 () Bool)

(assert (=> d!77555 m!467227))

(assert (=> d!77555 m!467049))

(declare-fun m!467229 () Bool)

(assert (=> d!77555 m!467229))

(declare-fun m!467231 () Bool)

(assert (=> d!77555 m!467231))

(assert (=> d!77555 m!467049))

(assert (=> d!77555 m!467227))

(assert (=> b!487380 m!467049))

(declare-fun m!467233 () Bool)

(assert (=> b!487380 m!467233))

(declare-fun m!467235 () Bool)

(assert (=> b!487382 m!467235))

(assert (=> b!487176 d!77555))

(declare-fun d!77561 () Bool)

(assert (=> d!77561 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44326 d!77561))

(declare-fun d!77565 () Bool)

(assert (=> d!77565 (= (array_inv!10933 a!3235) (bvsge (size!15523 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44326 d!77565))

(declare-fun d!77567 () Bool)

(assert (=> d!77567 (= (validKeyInArray!0 (select (arr!15159 a!3235) j!176)) (and (not (= (select (arr!15159 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15159 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487182 d!77567))

(declare-fun b!487405 () Bool)

(declare-fun e!286798 () Bool)

(declare-fun call!31301 () Bool)

(assert (=> b!487405 (= e!286798 call!31301)))

(declare-fun b!487406 () Bool)

(declare-fun e!286795 () Bool)

(assert (=> b!487406 (= e!286795 e!286798)))

(declare-fun c!58550 () Bool)

(assert (=> b!487406 (= c!58550 (validKeyInArray!0 (select (arr!15159 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31298 () Bool)

(assert (=> bm!31298 (= call!31301 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58550 (Cons!9366 (select (arr!15159 a!3235) #b00000000000000000000000000000000) Nil!9367) Nil!9367)))))

(declare-fun b!487407 () Bool)

(assert (=> b!487407 (= e!286798 call!31301)))

(declare-fun b!487408 () Bool)

(declare-fun e!286797 () Bool)

(assert (=> b!487408 (= e!286797 e!286795)))

(declare-fun res!290842 () Bool)

(assert (=> b!487408 (=> (not res!290842) (not e!286795))))

(declare-fun e!286796 () Bool)

(assert (=> b!487408 (= res!290842 (not e!286796))))

(declare-fun res!290841 () Bool)

(assert (=> b!487408 (=> (not res!290841) (not e!286796))))

(assert (=> b!487408 (= res!290841 (validKeyInArray!0 (select (arr!15159 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77569 () Bool)

(declare-fun res!290843 () Bool)

(assert (=> d!77569 (=> res!290843 e!286797)))

(assert (=> d!77569 (= res!290843 (bvsge #b00000000000000000000000000000000 (size!15523 a!3235)))))

(assert (=> d!77569 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9367) e!286797)))

(declare-fun b!487409 () Bool)

(declare-fun contains!2702 (List!9370 (_ BitVec 64)) Bool)

(assert (=> b!487409 (= e!286796 (contains!2702 Nil!9367 (select (arr!15159 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77569 (not res!290843)) b!487408))

(assert (= (and b!487408 res!290841) b!487409))

(assert (= (and b!487408 res!290842) b!487406))

(assert (= (and b!487406 c!58550) b!487405))

(assert (= (and b!487406 (not c!58550)) b!487407))

(assert (= (or b!487405 b!487407) bm!31298))

(assert (=> b!487406 m!467177))

(assert (=> b!487406 m!467177))

(assert (=> b!487406 m!467203))

(assert (=> bm!31298 m!467177))

(declare-fun m!467237 () Bool)

(assert (=> bm!31298 m!467237))

(assert (=> b!487408 m!467177))

(assert (=> b!487408 m!467177))

(assert (=> b!487408 m!467203))

(assert (=> b!487409 m!467177))

(assert (=> b!487409 m!467177))

(declare-fun m!467239 () Bool)

(assert (=> b!487409 m!467239))

(assert (=> b!487180 d!77569))

(declare-fun d!77571 () Bool)

(assert (=> d!77571 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487181 d!77571))

(push 1)

