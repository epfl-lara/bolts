; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45510 () Bool)

(assert start!45510)

(declare-fun b!501004 () Bool)

(declare-fun res!302889 () Bool)

(declare-fun e!293497 () Bool)

(assert (=> b!501004 (=> (not res!302889) (not e!293497))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32295 0))(
  ( (array!32296 (arr!15526 (Array (_ BitVec 32) (_ BitVec 64))) (size!15890 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32295)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!501004 (= res!302889 (and (= (size!15890 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15890 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15890 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!293499 () Bool)

(declare-fun b!501005 () Bool)

(declare-datatypes ((SeekEntryResult!4000 0))(
  ( (MissingZero!4000 (index!18182 (_ BitVec 32))) (Found!4000 (index!18183 (_ BitVec 32))) (Intermediate!4000 (undefined!4812 Bool) (index!18184 (_ BitVec 32)) (x!47240 (_ BitVec 32))) (Undefined!4000) (MissingVacant!4000 (index!18185 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32295 (_ BitVec 32)) SeekEntryResult!4000)

(assert (=> b!501005 (= e!293499 (= (seekEntryOrOpen!0 (select (arr!15526 a!3235) j!176) a!3235 mask!3524) (Found!4000 j!176)))))

(declare-fun b!501006 () Bool)

(declare-fun res!302881 () Bool)

(declare-fun e!293496 () Bool)

(assert (=> b!501006 (=> res!302881 e!293496)))

(declare-fun lt!227598 () SeekEntryResult!4000)

(get-info :version)

(assert (=> b!501006 (= res!302881 (or (undefined!4812 lt!227598) (not ((_ is Intermediate!4000) lt!227598))))))

(declare-fun b!501007 () Bool)

(declare-fun e!293495 () Bool)

(assert (=> b!501007 (= e!293495 (not e!293496))))

(declare-fun res!302890 () Bool)

(assert (=> b!501007 (=> res!302890 e!293496)))

(declare-fun lt!227595 () (_ BitVec 32))

(declare-fun lt!227592 () (_ BitVec 64))

(declare-fun lt!227597 () array!32295)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32295 (_ BitVec 32)) SeekEntryResult!4000)

(assert (=> b!501007 (= res!302890 (= lt!227598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227595 lt!227592 lt!227597 mask!3524)))))

(declare-fun lt!227591 () (_ BitVec 32))

(assert (=> b!501007 (= lt!227598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227591 (select (arr!15526 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501007 (= lt!227595 (toIndex!0 lt!227592 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!501007 (= lt!227592 (select (store (arr!15526 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!501007 (= lt!227591 (toIndex!0 (select (arr!15526 a!3235) j!176) mask!3524))))

(assert (=> b!501007 (= lt!227597 (array!32296 (store (arr!15526 a!3235) i!1204 k0!2280) (size!15890 a!3235)))))

(assert (=> b!501007 e!293499))

(declare-fun res!302891 () Bool)

(assert (=> b!501007 (=> (not res!302891) (not e!293499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32295 (_ BitVec 32)) Bool)

(assert (=> b!501007 (= res!302891 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15090 0))(
  ( (Unit!15091) )
))
(declare-fun lt!227594 () Unit!15090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> b!501007 (= lt!227594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501009 () Bool)

(declare-fun e!293500 () Unit!15090)

(declare-fun Unit!15092 () Unit!15090)

(assert (=> b!501009 (= e!293500 Unit!15092)))

(declare-fun b!501010 () Bool)

(assert (=> b!501010 (= e!293497 e!293495)))

(declare-fun res!302880 () Bool)

(assert (=> b!501010 (=> (not res!302880) (not e!293495))))

(declare-fun lt!227600 () SeekEntryResult!4000)

(assert (=> b!501010 (= res!302880 (or (= lt!227600 (MissingZero!4000 i!1204)) (= lt!227600 (MissingVacant!4000 i!1204))))))

(assert (=> b!501010 (= lt!227600 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!501011 () Bool)

(declare-fun res!302884 () Bool)

(assert (=> b!501011 (=> (not res!302884) (not e!293495))))

(declare-datatypes ((List!9737 0))(
  ( (Nil!9734) (Cons!9733 (h!10607 (_ BitVec 64)) (t!15973 List!9737)) )
))
(declare-fun arrayNoDuplicates!0 (array!32295 (_ BitVec 32) List!9737) Bool)

(assert (=> b!501011 (= res!302884 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9734))))

(declare-fun b!501012 () Bool)

(declare-fun res!302882 () Bool)

(assert (=> b!501012 (=> (not res!302882) (not e!293497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501012 (= res!302882 (validKeyInArray!0 k0!2280))))

(declare-fun b!501013 () Bool)

(declare-fun e!293498 () Bool)

(assert (=> b!501013 (= e!293498 false)))

(declare-fun b!501014 () Bool)

(assert (=> b!501014 (= e!293496 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!501014 (= (index!18184 lt!227598) i!1204)))

(declare-fun lt!227593 () Unit!15090)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> b!501014 (= lt!227593 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524))))

(assert (=> b!501014 (and (or (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227596 () Unit!15090)

(assert (=> b!501014 (= lt!227596 e!293500)))

(declare-fun c!59339 () Bool)

(assert (=> b!501014 (= c!59339 (= (select (arr!15526 a!3235) (index!18184 lt!227598)) (select (arr!15526 a!3235) j!176)))))

(assert (=> b!501014 (and (bvslt (x!47240 lt!227598) #b01111111111111111111111111111110) (or (= (select (arr!15526 a!3235) (index!18184 lt!227598)) (select (arr!15526 a!3235) j!176)) (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15526 a!3235) (index!18184 lt!227598)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501015 () Bool)

(declare-fun Unit!15093 () Unit!15090)

(assert (=> b!501015 (= e!293500 Unit!15093)))

(declare-fun lt!227599 () Unit!15090)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> b!501015 (= lt!227599 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524))))

(declare-fun res!302887 () Bool)

(assert (=> b!501015 (= res!302887 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227591 lt!227592 lt!227597 mask!3524) (Intermediate!4000 false (index!18184 lt!227598) (x!47240 lt!227598))))))

(assert (=> b!501015 (=> (not res!302887) (not e!293498))))

(assert (=> b!501015 e!293498))

(declare-fun b!501008 () Bool)

(declare-fun res!302886 () Bool)

(assert (=> b!501008 (=> (not res!302886) (not e!293497))))

(assert (=> b!501008 (= res!302886 (validKeyInArray!0 (select (arr!15526 a!3235) j!176)))))

(declare-fun res!302883 () Bool)

(assert (=> start!45510 (=> (not res!302883) (not e!293497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45510 (= res!302883 (validMask!0 mask!3524))))

(assert (=> start!45510 e!293497))

(assert (=> start!45510 true))

(declare-fun array_inv!11300 (array!32295) Bool)

(assert (=> start!45510 (array_inv!11300 a!3235)))

(declare-fun b!501016 () Bool)

(declare-fun res!302888 () Bool)

(assert (=> b!501016 (=> (not res!302888) (not e!293495))))

(assert (=> b!501016 (= res!302888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501017 () Bool)

(declare-fun res!302885 () Bool)

(assert (=> b!501017 (=> (not res!302885) (not e!293497))))

(declare-fun arrayContainsKey!0 (array!32295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501017 (= res!302885 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45510 res!302883) b!501004))

(assert (= (and b!501004 res!302889) b!501008))

(assert (= (and b!501008 res!302886) b!501012))

(assert (= (and b!501012 res!302882) b!501017))

(assert (= (and b!501017 res!302885) b!501010))

(assert (= (and b!501010 res!302880) b!501016))

(assert (= (and b!501016 res!302888) b!501011))

(assert (= (and b!501011 res!302884) b!501007))

(assert (= (and b!501007 res!302891) b!501005))

(assert (= (and b!501007 (not res!302890)) b!501006))

(assert (= (and b!501006 (not res!302881)) b!501014))

(assert (= (and b!501014 c!59339) b!501015))

(assert (= (and b!501014 (not c!59339)) b!501009))

(assert (= (and b!501015 res!302887) b!501013))

(declare-fun m!482145 () Bool)

(assert (=> b!501007 m!482145))

(declare-fun m!482147 () Bool)

(assert (=> b!501007 m!482147))

(declare-fun m!482149 () Bool)

(assert (=> b!501007 m!482149))

(declare-fun m!482151 () Bool)

(assert (=> b!501007 m!482151))

(declare-fun m!482153 () Bool)

(assert (=> b!501007 m!482153))

(declare-fun m!482155 () Bool)

(assert (=> b!501007 m!482155))

(declare-fun m!482157 () Bool)

(assert (=> b!501007 m!482157))

(assert (=> b!501007 m!482145))

(declare-fun m!482159 () Bool)

(assert (=> b!501007 m!482159))

(assert (=> b!501007 m!482145))

(declare-fun m!482161 () Bool)

(assert (=> b!501007 m!482161))

(declare-fun m!482163 () Bool)

(assert (=> b!501015 m!482163))

(declare-fun m!482165 () Bool)

(assert (=> b!501015 m!482165))

(assert (=> b!501005 m!482145))

(assert (=> b!501005 m!482145))

(declare-fun m!482167 () Bool)

(assert (=> b!501005 m!482167))

(declare-fun m!482169 () Bool)

(assert (=> b!501010 m!482169))

(declare-fun m!482171 () Bool)

(assert (=> b!501017 m!482171))

(declare-fun m!482173 () Bool)

(assert (=> b!501014 m!482173))

(declare-fun m!482175 () Bool)

(assert (=> b!501014 m!482175))

(assert (=> b!501014 m!482145))

(declare-fun m!482177 () Bool)

(assert (=> b!501011 m!482177))

(declare-fun m!482179 () Bool)

(assert (=> start!45510 m!482179))

(declare-fun m!482181 () Bool)

(assert (=> start!45510 m!482181))

(declare-fun m!482183 () Bool)

(assert (=> b!501012 m!482183))

(assert (=> b!501008 m!482145))

(assert (=> b!501008 m!482145))

(declare-fun m!482185 () Bool)

(assert (=> b!501008 m!482185))

(declare-fun m!482187 () Bool)

(assert (=> b!501016 m!482187))

(check-sat (not b!501010) (not b!501012) (not b!501017) (not b!501007) (not b!501008) (not b!501005) (not b!501015) (not b!501016) (not start!45510) (not b!501014) (not b!501011))
(check-sat)
(get-model)

(declare-fun d!78401 () Bool)

(assert (=> d!78401 (= (validKeyInArray!0 (select (arr!15526 a!3235) j!176)) (and (not (= (select (arr!15526 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15526 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!501008 d!78401))

(declare-fun d!78403 () Bool)

(assert (=> d!78403 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!501012 d!78403))

(declare-fun d!78405 () Bool)

(assert (=> d!78405 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45510 d!78405))

(declare-fun d!78407 () Bool)

(assert (=> d!78407 (= (array_inv!11300 a!3235) (bvsge (size!15890 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45510 d!78407))

(declare-fun b!501072 () Bool)

(declare-fun e!293530 () SeekEntryResult!4000)

(declare-fun lt!227638 () SeekEntryResult!4000)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32295 (_ BitVec 32)) SeekEntryResult!4000)

(assert (=> b!501072 (= e!293530 (seekKeyOrZeroReturnVacant!0 (x!47240 lt!227638) (index!18184 lt!227638) (index!18184 lt!227638) k0!2280 a!3235 mask!3524))))

(declare-fun b!501073 () Bool)

(assert (=> b!501073 (= e!293530 (MissingZero!4000 (index!18184 lt!227638)))))

(declare-fun b!501074 () Bool)

(declare-fun c!59351 () Bool)

(declare-fun lt!227637 () (_ BitVec 64))

(assert (=> b!501074 (= c!59351 (= lt!227637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293528 () SeekEntryResult!4000)

(assert (=> b!501074 (= e!293528 e!293530)))

(declare-fun b!501075 () Bool)

(declare-fun e!293529 () SeekEntryResult!4000)

(assert (=> b!501075 (= e!293529 Undefined!4000)))

(declare-fun b!501076 () Bool)

(assert (=> b!501076 (= e!293529 e!293528)))

(assert (=> b!501076 (= lt!227637 (select (arr!15526 a!3235) (index!18184 lt!227638)))))

(declare-fun c!59349 () Bool)

(assert (=> b!501076 (= c!59349 (= lt!227637 k0!2280))))

(declare-fun b!501077 () Bool)

(assert (=> b!501077 (= e!293528 (Found!4000 (index!18184 lt!227638)))))

(declare-fun d!78409 () Bool)

(declare-fun lt!227639 () SeekEntryResult!4000)

(assert (=> d!78409 (and (or ((_ is Undefined!4000) lt!227639) (not ((_ is Found!4000) lt!227639)) (and (bvsge (index!18183 lt!227639) #b00000000000000000000000000000000) (bvslt (index!18183 lt!227639) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227639) ((_ is Found!4000) lt!227639) (not ((_ is MissingZero!4000) lt!227639)) (and (bvsge (index!18182 lt!227639) #b00000000000000000000000000000000) (bvslt (index!18182 lt!227639) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227639) ((_ is Found!4000) lt!227639) ((_ is MissingZero!4000) lt!227639) (not ((_ is MissingVacant!4000) lt!227639)) (and (bvsge (index!18185 lt!227639) #b00000000000000000000000000000000) (bvslt (index!18185 lt!227639) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227639) (ite ((_ is Found!4000) lt!227639) (= (select (arr!15526 a!3235) (index!18183 lt!227639)) k0!2280) (ite ((_ is MissingZero!4000) lt!227639) (= (select (arr!15526 a!3235) (index!18182 lt!227639)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4000) lt!227639) (= (select (arr!15526 a!3235) (index!18185 lt!227639)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78409 (= lt!227639 e!293529)))

(declare-fun c!59350 () Bool)

(assert (=> d!78409 (= c!59350 (and ((_ is Intermediate!4000) lt!227638) (undefined!4812 lt!227638)))))

(assert (=> d!78409 (= lt!227638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78409 (validMask!0 mask!3524)))

(assert (=> d!78409 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!227639)))

(assert (= (and d!78409 c!59350) b!501075))

(assert (= (and d!78409 (not c!59350)) b!501076))

(assert (= (and b!501076 c!59349) b!501077))

(assert (= (and b!501076 (not c!59349)) b!501074))

(assert (= (and b!501074 c!59351) b!501073))

(assert (= (and b!501074 (not c!59351)) b!501072))

(declare-fun m!482233 () Bool)

(assert (=> b!501072 m!482233))

(declare-fun m!482235 () Bool)

(assert (=> b!501076 m!482235))

(declare-fun m!482237 () Bool)

(assert (=> d!78409 m!482237))

(declare-fun m!482239 () Bool)

(assert (=> d!78409 m!482239))

(assert (=> d!78409 m!482179))

(declare-fun m!482241 () Bool)

(assert (=> d!78409 m!482241))

(assert (=> d!78409 m!482237))

(declare-fun m!482243 () Bool)

(assert (=> d!78409 m!482243))

(declare-fun m!482245 () Bool)

(assert (=> d!78409 m!482245))

(assert (=> b!501010 d!78409))

(declare-fun b!501088 () Bool)

(declare-fun e!293542 () Bool)

(declare-fun call!31451 () Bool)

(assert (=> b!501088 (= e!293542 call!31451)))

(declare-fun b!501089 () Bool)

(assert (=> b!501089 (= e!293542 call!31451)))

(declare-fun bm!31448 () Bool)

(declare-fun c!59354 () Bool)

(assert (=> bm!31448 (= call!31451 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59354 (Cons!9733 (select (arr!15526 a!3235) #b00000000000000000000000000000000) Nil!9734) Nil!9734)))))

(declare-fun b!501090 () Bool)

(declare-fun e!293541 () Bool)

(assert (=> b!501090 (= e!293541 e!293542)))

(assert (=> b!501090 (= c!59354 (validKeyInArray!0 (select (arr!15526 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!501091 () Bool)

(declare-fun e!293540 () Bool)

(assert (=> b!501091 (= e!293540 e!293541)))

(declare-fun res!302936 () Bool)

(assert (=> b!501091 (=> (not res!302936) (not e!293541))))

(declare-fun e!293539 () Bool)

(assert (=> b!501091 (= res!302936 (not e!293539))))

(declare-fun res!302934 () Bool)

(assert (=> b!501091 (=> (not res!302934) (not e!293539))))

(assert (=> b!501091 (= res!302934 (validKeyInArray!0 (select (arr!15526 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78411 () Bool)

(declare-fun res!302935 () Bool)

(assert (=> d!78411 (=> res!302935 e!293540)))

(assert (=> d!78411 (= res!302935 (bvsge #b00000000000000000000000000000000 (size!15890 a!3235)))))

(assert (=> d!78411 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9734) e!293540)))

(declare-fun b!501092 () Bool)

(declare-fun contains!2723 (List!9737 (_ BitVec 64)) Bool)

(assert (=> b!501092 (= e!293539 (contains!2723 Nil!9734 (select (arr!15526 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78411 (not res!302935)) b!501091))

(assert (= (and b!501091 res!302934) b!501092))

(assert (= (and b!501091 res!302936) b!501090))

(assert (= (and b!501090 c!59354) b!501088))

(assert (= (and b!501090 (not c!59354)) b!501089))

(assert (= (or b!501088 b!501089) bm!31448))

(declare-fun m!482247 () Bool)

(assert (=> bm!31448 m!482247))

(declare-fun m!482249 () Bool)

(assert (=> bm!31448 m!482249))

(assert (=> b!501090 m!482247))

(assert (=> b!501090 m!482247))

(declare-fun m!482251 () Bool)

(assert (=> b!501090 m!482251))

(assert (=> b!501091 m!482247))

(assert (=> b!501091 m!482247))

(assert (=> b!501091 m!482251))

(assert (=> b!501092 m!482247))

(assert (=> b!501092 m!482247))

(declare-fun m!482253 () Bool)

(assert (=> b!501092 m!482253))

(assert (=> b!501011 d!78411))

(declare-fun d!78415 () Bool)

(assert (=> d!78415 (= (index!18184 lt!227598) i!1204)))

(declare-fun lt!227642 () Unit!15090)

(declare-fun choose!104 (array!32295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> d!78415 (= lt!227642 (choose!104 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524))))

(assert (=> d!78415 (validMask!0 mask!3524)))

(assert (=> d!78415 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524) lt!227642)))

(declare-fun bs!15924 () Bool)

(assert (= bs!15924 d!78415))

(declare-fun m!482255 () Bool)

(assert (=> bs!15924 m!482255))

(assert (=> bs!15924 m!482179))

(assert (=> b!501014 d!78415))

(declare-fun d!78417 () Bool)

(declare-fun e!293554 () Bool)

(assert (=> d!78417 e!293554))

(declare-fun res!302946 () Bool)

(assert (=> d!78417 (=> (not res!302946) (not e!293554))))

(assert (=> d!78417 (= res!302946 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15890 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15890 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15890 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15890 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15890 a!3235))))))

(declare-fun lt!227657 () Unit!15090)

(declare-fun choose!47 (array!32295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> d!78417 (= lt!227657 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524))))

(assert (=> d!78417 (validMask!0 mask!3524)))

(assert (=> d!78417 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227591 #b00000000000000000000000000000000 (index!18184 lt!227598) (x!47240 lt!227598) mask!3524) lt!227657)))

(declare-fun b!501107 () Bool)

(assert (=> b!501107 (= e!293554 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227591 (select (store (arr!15526 a!3235) i!1204 k0!2280) j!176) (array!32296 (store (arr!15526 a!3235) i!1204 k0!2280) (size!15890 a!3235)) mask!3524) (Intermediate!4000 false (index!18184 lt!227598) (x!47240 lt!227598))))))

(assert (= (and d!78417 res!302946) b!501107))

(declare-fun m!482261 () Bool)

(assert (=> d!78417 m!482261))

(assert (=> d!78417 m!482179))

(assert (=> b!501107 m!482149))

(assert (=> b!501107 m!482153))

(assert (=> b!501107 m!482153))

(declare-fun m!482271 () Bool)

(assert (=> b!501107 m!482271))

(assert (=> b!501015 d!78417))

(declare-fun b!501138 () Bool)

(declare-fun e!293576 () SeekEntryResult!4000)

(declare-fun e!293574 () SeekEntryResult!4000)

(assert (=> b!501138 (= e!293576 e!293574)))

(declare-fun c!59367 () Bool)

(declare-fun lt!227679 () (_ BitVec 64))

(assert (=> b!501138 (= c!59367 (or (= lt!227679 lt!227592) (= (bvadd lt!227679 lt!227679) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501139 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501139 (= e!293574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227591 #b00000000000000000000000000000000 mask!3524) lt!227592 lt!227597 mask!3524))))

(declare-fun b!501140 () Bool)

(declare-fun lt!227680 () SeekEntryResult!4000)

(assert (=> b!501140 (and (bvsge (index!18184 lt!227680) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227680) (size!15890 lt!227597)))))

(declare-fun res!302961 () Bool)

(assert (=> b!501140 (= res!302961 (= (select (arr!15526 lt!227597) (index!18184 lt!227680)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293575 () Bool)

(assert (=> b!501140 (=> res!302961 e!293575)))

(declare-fun b!501141 () Bool)

(assert (=> b!501141 (and (bvsge (index!18184 lt!227680) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227680) (size!15890 lt!227597)))))

(declare-fun res!302959 () Bool)

(assert (=> b!501141 (= res!302959 (= (select (arr!15526 lt!227597) (index!18184 lt!227680)) lt!227592))))

(assert (=> b!501141 (=> res!302959 e!293575)))

(declare-fun e!293578 () Bool)

(assert (=> b!501141 (= e!293578 e!293575)))

(declare-fun b!501142 () Bool)

(assert (=> b!501142 (= e!293574 (Intermediate!4000 false lt!227591 #b00000000000000000000000000000000))))

(declare-fun b!501144 () Bool)

(declare-fun e!293577 () Bool)

(assert (=> b!501144 (= e!293577 (bvsge (x!47240 lt!227680) #b01111111111111111111111111111110))))

(declare-fun b!501145 () Bool)

(assert (=> b!501145 (= e!293576 (Intermediate!4000 true lt!227591 #b00000000000000000000000000000000))))

(declare-fun b!501146 () Bool)

(assert (=> b!501146 (= e!293577 e!293578)))

(declare-fun res!302960 () Bool)

(assert (=> b!501146 (= res!302960 (and ((_ is Intermediate!4000) lt!227680) (not (undefined!4812 lt!227680)) (bvslt (x!47240 lt!227680) #b01111111111111111111111111111110) (bvsge (x!47240 lt!227680) #b00000000000000000000000000000000) (bvsge (x!47240 lt!227680) #b00000000000000000000000000000000)))))

(assert (=> b!501146 (=> (not res!302960) (not e!293578))))

(declare-fun b!501143 () Bool)

(assert (=> b!501143 (and (bvsge (index!18184 lt!227680) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227680) (size!15890 lt!227597)))))

(assert (=> b!501143 (= e!293575 (= (select (arr!15526 lt!227597) (index!18184 lt!227680)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!78429 () Bool)

(assert (=> d!78429 e!293577))

(declare-fun c!59369 () Bool)

(assert (=> d!78429 (= c!59369 (and ((_ is Intermediate!4000) lt!227680) (undefined!4812 lt!227680)))))

(assert (=> d!78429 (= lt!227680 e!293576)))

(declare-fun c!59368 () Bool)

(assert (=> d!78429 (= c!59368 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78429 (= lt!227679 (select (arr!15526 lt!227597) lt!227591))))

(assert (=> d!78429 (validMask!0 mask!3524)))

(assert (=> d!78429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227591 lt!227592 lt!227597 mask!3524) lt!227680)))

(assert (= (and d!78429 c!59368) b!501145))

(assert (= (and d!78429 (not c!59368)) b!501138))

(assert (= (and b!501138 c!59367) b!501142))

(assert (= (and b!501138 (not c!59367)) b!501139))

(assert (= (and d!78429 c!59369) b!501144))

(assert (= (and d!78429 (not c!59369)) b!501146))

(assert (= (and b!501146 res!302960) b!501141))

(assert (= (and b!501141 (not res!302959)) b!501140))

(assert (= (and b!501140 (not res!302961)) b!501143))

(declare-fun m!482281 () Bool)

(assert (=> b!501139 m!482281))

(assert (=> b!501139 m!482281))

(declare-fun m!482283 () Bool)

(assert (=> b!501139 m!482283))

(declare-fun m!482285 () Bool)

(assert (=> b!501141 m!482285))

(assert (=> b!501143 m!482285))

(assert (=> b!501140 m!482285))

(declare-fun m!482287 () Bool)

(assert (=> d!78429 m!482287))

(assert (=> d!78429 m!482179))

(assert (=> b!501015 d!78429))

(declare-fun d!78443 () Bool)

(declare-fun res!302966 () Bool)

(declare-fun e!293583 () Bool)

(assert (=> d!78443 (=> res!302966 e!293583)))

(assert (=> d!78443 (= res!302966 (= (select (arr!15526 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78443 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!293583)))

(declare-fun b!501151 () Bool)

(declare-fun e!293584 () Bool)

(assert (=> b!501151 (= e!293583 e!293584)))

(declare-fun res!302967 () Bool)

(assert (=> b!501151 (=> (not res!302967) (not e!293584))))

(assert (=> b!501151 (= res!302967 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15890 a!3235)))))

(declare-fun b!501152 () Bool)

(assert (=> b!501152 (= e!293584 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78443 (not res!302966)) b!501151))

(assert (= (and b!501151 res!302967) b!501152))

(assert (=> d!78443 m!482247))

(declare-fun m!482289 () Bool)

(assert (=> b!501152 m!482289))

(assert (=> b!501017 d!78443))

(declare-fun d!78445 () Bool)

(declare-fun lt!227696 () (_ BitVec 32))

(declare-fun lt!227695 () (_ BitVec 32))

(assert (=> d!78445 (= lt!227696 (bvmul (bvxor lt!227695 (bvlshr lt!227695 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78445 (= lt!227695 ((_ extract 31 0) (bvand (bvxor lt!227592 (bvlshr lt!227592 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78445 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!302968 (let ((h!10610 ((_ extract 31 0) (bvand (bvxor lt!227592 (bvlshr lt!227592 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!47247 (bvmul (bvxor h!10610 (bvlshr h!10610 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!47247 (bvlshr x!47247 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!302968 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!302968 #b00000000000000000000000000000000))))))

(assert (=> d!78445 (= (toIndex!0 lt!227592 mask!3524) (bvand (bvxor lt!227696 (bvlshr lt!227696 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!501007 d!78445))

(declare-fun d!78447 () Bool)

(declare-fun lt!227698 () (_ BitVec 32))

(declare-fun lt!227697 () (_ BitVec 32))

(assert (=> d!78447 (= lt!227698 (bvmul (bvxor lt!227697 (bvlshr lt!227697 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78447 (= lt!227697 ((_ extract 31 0) (bvand (bvxor (select (arr!15526 a!3235) j!176) (bvlshr (select (arr!15526 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78447 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!302968 (let ((h!10610 ((_ extract 31 0) (bvand (bvxor (select (arr!15526 a!3235) j!176) (bvlshr (select (arr!15526 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!47247 (bvmul (bvxor h!10610 (bvlshr h!10610 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!47247 (bvlshr x!47247 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!302968 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!302968 #b00000000000000000000000000000000))))))

(assert (=> d!78447 (= (toIndex!0 (select (arr!15526 a!3235) j!176) mask!3524) (bvand (bvxor lt!227698 (bvlshr lt!227698 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!501007 d!78447))

(declare-fun bm!31457 () Bool)

(declare-fun call!31460 () Bool)

(assert (=> bm!31457 (= call!31460 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!501215 () Bool)

(declare-fun e!293620 () Bool)

(assert (=> b!501215 (= e!293620 call!31460)))

(declare-fun b!501216 () Bool)

(declare-fun e!293622 () Bool)

(assert (=> b!501216 (= e!293622 e!293620)))

(declare-fun lt!227718 () (_ BitVec 64))

(assert (=> b!501216 (= lt!227718 (select (arr!15526 a!3235) j!176))))

(declare-fun lt!227720 () Unit!15090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32295 (_ BitVec 64) (_ BitVec 32)) Unit!15090)

(assert (=> b!501216 (= lt!227720 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!227718 j!176))))

(assert (=> b!501216 (arrayContainsKey!0 a!3235 lt!227718 #b00000000000000000000000000000000)))

(declare-fun lt!227719 () Unit!15090)

(assert (=> b!501216 (= lt!227719 lt!227720)))

(declare-fun res!302986 () Bool)

(assert (=> b!501216 (= res!302986 (= (seekEntryOrOpen!0 (select (arr!15526 a!3235) j!176) a!3235 mask!3524) (Found!4000 j!176)))))

(assert (=> b!501216 (=> (not res!302986) (not e!293620))))

(declare-fun b!501217 () Bool)

(assert (=> b!501217 (= e!293622 call!31460)))

(declare-fun d!78449 () Bool)

(declare-fun res!302985 () Bool)

(declare-fun e!293621 () Bool)

(assert (=> d!78449 (=> res!302985 e!293621)))

(assert (=> d!78449 (= res!302985 (bvsge j!176 (size!15890 a!3235)))))

(assert (=> d!78449 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!293621)))

(declare-fun b!501218 () Bool)

(assert (=> b!501218 (= e!293621 e!293622)))

(declare-fun c!59393 () Bool)

(assert (=> b!501218 (= c!59393 (validKeyInArray!0 (select (arr!15526 a!3235) j!176)))))

(assert (= (and d!78449 (not res!302985)) b!501218))

(assert (= (and b!501218 c!59393) b!501216))

(assert (= (and b!501218 (not c!59393)) b!501217))

(assert (= (and b!501216 res!302986) b!501215))

(assert (= (or b!501215 b!501217) bm!31457))

(declare-fun m!482325 () Bool)

(assert (=> bm!31457 m!482325))

(assert (=> b!501216 m!482145))

(declare-fun m!482327 () Bool)

(assert (=> b!501216 m!482327))

(declare-fun m!482329 () Bool)

(assert (=> b!501216 m!482329))

(assert (=> b!501216 m!482145))

(assert (=> b!501216 m!482167))

(assert (=> b!501218 m!482145))

(assert (=> b!501218 m!482145))

(assert (=> b!501218 m!482185))

(assert (=> b!501007 d!78449))

(declare-fun b!501219 () Bool)

(declare-fun e!293625 () SeekEntryResult!4000)

(declare-fun e!293623 () SeekEntryResult!4000)

(assert (=> b!501219 (= e!293625 e!293623)))

(declare-fun c!59394 () Bool)

(declare-fun lt!227721 () (_ BitVec 64))

(assert (=> b!501219 (= c!59394 (or (= lt!227721 lt!227592) (= (bvadd lt!227721 lt!227721) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501220 () Bool)

(assert (=> b!501220 (= e!293623 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227595 #b00000000000000000000000000000000 mask!3524) lt!227592 lt!227597 mask!3524))))

(declare-fun b!501221 () Bool)

(declare-fun lt!227722 () SeekEntryResult!4000)

(assert (=> b!501221 (and (bvsge (index!18184 lt!227722) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227722) (size!15890 lt!227597)))))

(declare-fun res!302989 () Bool)

(assert (=> b!501221 (= res!302989 (= (select (arr!15526 lt!227597) (index!18184 lt!227722)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293624 () Bool)

(assert (=> b!501221 (=> res!302989 e!293624)))

(declare-fun b!501222 () Bool)

(assert (=> b!501222 (and (bvsge (index!18184 lt!227722) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227722) (size!15890 lt!227597)))))

(declare-fun res!302987 () Bool)

(assert (=> b!501222 (= res!302987 (= (select (arr!15526 lt!227597) (index!18184 lt!227722)) lt!227592))))

(assert (=> b!501222 (=> res!302987 e!293624)))

(declare-fun e!293627 () Bool)

(assert (=> b!501222 (= e!293627 e!293624)))

(declare-fun b!501223 () Bool)

(assert (=> b!501223 (= e!293623 (Intermediate!4000 false lt!227595 #b00000000000000000000000000000000))))

(declare-fun b!501225 () Bool)

(declare-fun e!293626 () Bool)

(assert (=> b!501225 (= e!293626 (bvsge (x!47240 lt!227722) #b01111111111111111111111111111110))))

(declare-fun b!501226 () Bool)

(assert (=> b!501226 (= e!293625 (Intermediate!4000 true lt!227595 #b00000000000000000000000000000000))))

(declare-fun b!501227 () Bool)

(assert (=> b!501227 (= e!293626 e!293627)))

(declare-fun res!302988 () Bool)

(assert (=> b!501227 (= res!302988 (and ((_ is Intermediate!4000) lt!227722) (not (undefined!4812 lt!227722)) (bvslt (x!47240 lt!227722) #b01111111111111111111111111111110) (bvsge (x!47240 lt!227722) #b00000000000000000000000000000000) (bvsge (x!47240 lt!227722) #b00000000000000000000000000000000)))))

(assert (=> b!501227 (=> (not res!302988) (not e!293627))))

(declare-fun b!501224 () Bool)

(assert (=> b!501224 (and (bvsge (index!18184 lt!227722) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227722) (size!15890 lt!227597)))))

(assert (=> b!501224 (= e!293624 (= (select (arr!15526 lt!227597) (index!18184 lt!227722)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!78461 () Bool)

(assert (=> d!78461 e!293626))

(declare-fun c!59396 () Bool)

(assert (=> d!78461 (= c!59396 (and ((_ is Intermediate!4000) lt!227722) (undefined!4812 lt!227722)))))

(assert (=> d!78461 (= lt!227722 e!293625)))

(declare-fun c!59395 () Bool)

(assert (=> d!78461 (= c!59395 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78461 (= lt!227721 (select (arr!15526 lt!227597) lt!227595))))

(assert (=> d!78461 (validMask!0 mask!3524)))

(assert (=> d!78461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227595 lt!227592 lt!227597 mask!3524) lt!227722)))

(assert (= (and d!78461 c!59395) b!501226))

(assert (= (and d!78461 (not c!59395)) b!501219))

(assert (= (and b!501219 c!59394) b!501223))

(assert (= (and b!501219 (not c!59394)) b!501220))

(assert (= (and d!78461 c!59396) b!501225))

(assert (= (and d!78461 (not c!59396)) b!501227))

(assert (= (and b!501227 res!302988) b!501222))

(assert (= (and b!501222 (not res!302987)) b!501221))

(assert (= (and b!501221 (not res!302989)) b!501224))

(declare-fun m!482331 () Bool)

(assert (=> b!501220 m!482331))

(assert (=> b!501220 m!482331))

(declare-fun m!482333 () Bool)

(assert (=> b!501220 m!482333))

(declare-fun m!482335 () Bool)

(assert (=> b!501222 m!482335))

(assert (=> b!501224 m!482335))

(assert (=> b!501221 m!482335))

(declare-fun m!482337 () Bool)

(assert (=> d!78461 m!482337))

(assert (=> d!78461 m!482179))

(assert (=> b!501007 d!78461))

(declare-fun d!78463 () Bool)

(assert (=> d!78463 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!227725 () Unit!15090)

(declare-fun choose!38 (array!32295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15090)

(assert (=> d!78463 (= lt!227725 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78463 (validMask!0 mask!3524)))

(assert (=> d!78463 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!227725)))

(declare-fun bs!15928 () Bool)

(assert (= bs!15928 d!78463))

(assert (=> bs!15928 m!482161))

(declare-fun m!482339 () Bool)

(assert (=> bs!15928 m!482339))

(assert (=> bs!15928 m!482179))

(assert (=> b!501007 d!78463))

(declare-fun b!501228 () Bool)

(declare-fun e!293630 () SeekEntryResult!4000)

(declare-fun e!293628 () SeekEntryResult!4000)

(assert (=> b!501228 (= e!293630 e!293628)))

(declare-fun c!59397 () Bool)

(declare-fun lt!227726 () (_ BitVec 64))

(assert (=> b!501228 (= c!59397 (or (= lt!227726 (select (arr!15526 a!3235) j!176)) (= (bvadd lt!227726 lt!227726) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501229 () Bool)

(assert (=> b!501229 (= e!293628 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227591 #b00000000000000000000000000000000 mask!3524) (select (arr!15526 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!501230 () Bool)

(declare-fun lt!227727 () SeekEntryResult!4000)

(assert (=> b!501230 (and (bvsge (index!18184 lt!227727) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227727) (size!15890 a!3235)))))

(declare-fun res!302992 () Bool)

(assert (=> b!501230 (= res!302992 (= (select (arr!15526 a!3235) (index!18184 lt!227727)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293629 () Bool)

(assert (=> b!501230 (=> res!302992 e!293629)))

(declare-fun b!501231 () Bool)

(assert (=> b!501231 (and (bvsge (index!18184 lt!227727) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227727) (size!15890 a!3235)))))

(declare-fun res!302990 () Bool)

(assert (=> b!501231 (= res!302990 (= (select (arr!15526 a!3235) (index!18184 lt!227727)) (select (arr!15526 a!3235) j!176)))))

(assert (=> b!501231 (=> res!302990 e!293629)))

(declare-fun e!293632 () Bool)

(assert (=> b!501231 (= e!293632 e!293629)))

(declare-fun b!501232 () Bool)

(assert (=> b!501232 (= e!293628 (Intermediate!4000 false lt!227591 #b00000000000000000000000000000000))))

(declare-fun b!501234 () Bool)

(declare-fun e!293631 () Bool)

(assert (=> b!501234 (= e!293631 (bvsge (x!47240 lt!227727) #b01111111111111111111111111111110))))

(declare-fun b!501235 () Bool)

(assert (=> b!501235 (= e!293630 (Intermediate!4000 true lt!227591 #b00000000000000000000000000000000))))

(declare-fun b!501236 () Bool)

(assert (=> b!501236 (= e!293631 e!293632)))

(declare-fun res!302991 () Bool)

(assert (=> b!501236 (= res!302991 (and ((_ is Intermediate!4000) lt!227727) (not (undefined!4812 lt!227727)) (bvslt (x!47240 lt!227727) #b01111111111111111111111111111110) (bvsge (x!47240 lt!227727) #b00000000000000000000000000000000) (bvsge (x!47240 lt!227727) #b00000000000000000000000000000000)))))

(assert (=> b!501236 (=> (not res!302991) (not e!293632))))

(declare-fun b!501233 () Bool)

(assert (=> b!501233 (and (bvsge (index!18184 lt!227727) #b00000000000000000000000000000000) (bvslt (index!18184 lt!227727) (size!15890 a!3235)))))

(assert (=> b!501233 (= e!293629 (= (select (arr!15526 a!3235) (index!18184 lt!227727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!78465 () Bool)

(assert (=> d!78465 e!293631))

(declare-fun c!59399 () Bool)

(assert (=> d!78465 (= c!59399 (and ((_ is Intermediate!4000) lt!227727) (undefined!4812 lt!227727)))))

(assert (=> d!78465 (= lt!227727 e!293630)))

(declare-fun c!59398 () Bool)

(assert (=> d!78465 (= c!59398 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78465 (= lt!227726 (select (arr!15526 a!3235) lt!227591))))

(assert (=> d!78465 (validMask!0 mask!3524)))

(assert (=> d!78465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227591 (select (arr!15526 a!3235) j!176) a!3235 mask!3524) lt!227727)))

(assert (= (and d!78465 c!59398) b!501235))

(assert (= (and d!78465 (not c!59398)) b!501228))

(assert (= (and b!501228 c!59397) b!501232))

(assert (= (and b!501228 (not c!59397)) b!501229))

(assert (= (and d!78465 c!59399) b!501234))

(assert (= (and d!78465 (not c!59399)) b!501236))

(assert (= (and b!501236 res!302991) b!501231))

(assert (= (and b!501231 (not res!302990)) b!501230))

(assert (= (and b!501230 (not res!302992)) b!501233))

(assert (=> b!501229 m!482281))

(assert (=> b!501229 m!482281))

(assert (=> b!501229 m!482145))

(declare-fun m!482341 () Bool)

(assert (=> b!501229 m!482341))

(declare-fun m!482343 () Bool)

(assert (=> b!501231 m!482343))

(assert (=> b!501233 m!482343))

(assert (=> b!501230 m!482343))

(declare-fun m!482345 () Bool)

(assert (=> d!78465 m!482345))

(assert (=> d!78465 m!482179))

(assert (=> b!501007 d!78465))

(declare-fun b!501237 () Bool)

(declare-fun e!293635 () SeekEntryResult!4000)

(declare-fun lt!227729 () SeekEntryResult!4000)

(assert (=> b!501237 (= e!293635 (seekKeyOrZeroReturnVacant!0 (x!47240 lt!227729) (index!18184 lt!227729) (index!18184 lt!227729) (select (arr!15526 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!501238 () Bool)

(assert (=> b!501238 (= e!293635 (MissingZero!4000 (index!18184 lt!227729)))))

(declare-fun b!501239 () Bool)

(declare-fun c!59402 () Bool)

(declare-fun lt!227728 () (_ BitVec 64))

(assert (=> b!501239 (= c!59402 (= lt!227728 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293633 () SeekEntryResult!4000)

(assert (=> b!501239 (= e!293633 e!293635)))

(declare-fun b!501240 () Bool)

(declare-fun e!293634 () SeekEntryResult!4000)

(assert (=> b!501240 (= e!293634 Undefined!4000)))

(declare-fun b!501241 () Bool)

(assert (=> b!501241 (= e!293634 e!293633)))

(assert (=> b!501241 (= lt!227728 (select (arr!15526 a!3235) (index!18184 lt!227729)))))

(declare-fun c!59400 () Bool)

(assert (=> b!501241 (= c!59400 (= lt!227728 (select (arr!15526 a!3235) j!176)))))

(declare-fun b!501242 () Bool)

(assert (=> b!501242 (= e!293633 (Found!4000 (index!18184 lt!227729)))))

(declare-fun d!78467 () Bool)

(declare-fun lt!227730 () SeekEntryResult!4000)

(assert (=> d!78467 (and (or ((_ is Undefined!4000) lt!227730) (not ((_ is Found!4000) lt!227730)) (and (bvsge (index!18183 lt!227730) #b00000000000000000000000000000000) (bvslt (index!18183 lt!227730) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227730) ((_ is Found!4000) lt!227730) (not ((_ is MissingZero!4000) lt!227730)) (and (bvsge (index!18182 lt!227730) #b00000000000000000000000000000000) (bvslt (index!18182 lt!227730) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227730) ((_ is Found!4000) lt!227730) ((_ is MissingZero!4000) lt!227730) (not ((_ is MissingVacant!4000) lt!227730)) (and (bvsge (index!18185 lt!227730) #b00000000000000000000000000000000) (bvslt (index!18185 lt!227730) (size!15890 a!3235)))) (or ((_ is Undefined!4000) lt!227730) (ite ((_ is Found!4000) lt!227730) (= (select (arr!15526 a!3235) (index!18183 lt!227730)) (select (arr!15526 a!3235) j!176)) (ite ((_ is MissingZero!4000) lt!227730) (= (select (arr!15526 a!3235) (index!18182 lt!227730)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4000) lt!227730) (= (select (arr!15526 a!3235) (index!18185 lt!227730)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78467 (= lt!227730 e!293634)))

(declare-fun c!59401 () Bool)

(assert (=> d!78467 (= c!59401 (and ((_ is Intermediate!4000) lt!227729) (undefined!4812 lt!227729)))))

(assert (=> d!78467 (= lt!227729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15526 a!3235) j!176) mask!3524) (select (arr!15526 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78467 (validMask!0 mask!3524)))

(assert (=> d!78467 (= (seekEntryOrOpen!0 (select (arr!15526 a!3235) j!176) a!3235 mask!3524) lt!227730)))

(assert (= (and d!78467 c!59401) b!501240))

(assert (= (and d!78467 (not c!59401)) b!501241))

(assert (= (and b!501241 c!59400) b!501242))

(assert (= (and b!501241 (not c!59400)) b!501239))

(assert (= (and b!501239 c!59402) b!501238))

(assert (= (and b!501239 (not c!59402)) b!501237))

(assert (=> b!501237 m!482145))

(declare-fun m!482347 () Bool)

(assert (=> b!501237 m!482347))

(declare-fun m!482349 () Bool)

(assert (=> b!501241 m!482349))

(assert (=> d!78467 m!482159))

(assert (=> d!78467 m!482145))

(declare-fun m!482351 () Bool)

(assert (=> d!78467 m!482351))

(assert (=> d!78467 m!482179))

(declare-fun m!482353 () Bool)

(assert (=> d!78467 m!482353))

(assert (=> d!78467 m!482145))

(assert (=> d!78467 m!482159))

(declare-fun m!482355 () Bool)

(assert (=> d!78467 m!482355))

(declare-fun m!482357 () Bool)

(assert (=> d!78467 m!482357))

(assert (=> b!501005 d!78467))

(declare-fun bm!31458 () Bool)

(declare-fun call!31461 () Bool)

(assert (=> bm!31458 (= call!31461 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!501243 () Bool)

(declare-fun e!293636 () Bool)

(assert (=> b!501243 (= e!293636 call!31461)))

(declare-fun b!501244 () Bool)

(declare-fun e!293638 () Bool)

(assert (=> b!501244 (= e!293638 e!293636)))

(declare-fun lt!227731 () (_ BitVec 64))

(assert (=> b!501244 (= lt!227731 (select (arr!15526 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!227733 () Unit!15090)

(assert (=> b!501244 (= lt!227733 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!227731 #b00000000000000000000000000000000))))

(assert (=> b!501244 (arrayContainsKey!0 a!3235 lt!227731 #b00000000000000000000000000000000)))

(declare-fun lt!227732 () Unit!15090)

(assert (=> b!501244 (= lt!227732 lt!227733)))

(declare-fun res!302994 () Bool)

(assert (=> b!501244 (= res!302994 (= (seekEntryOrOpen!0 (select (arr!15526 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4000 #b00000000000000000000000000000000)))))

(assert (=> b!501244 (=> (not res!302994) (not e!293636))))

(declare-fun b!501245 () Bool)

(assert (=> b!501245 (= e!293638 call!31461)))

(declare-fun d!78469 () Bool)

(declare-fun res!302993 () Bool)

(declare-fun e!293637 () Bool)

(assert (=> d!78469 (=> res!302993 e!293637)))

(assert (=> d!78469 (= res!302993 (bvsge #b00000000000000000000000000000000 (size!15890 a!3235)))))

(assert (=> d!78469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!293637)))

(declare-fun b!501246 () Bool)

(assert (=> b!501246 (= e!293637 e!293638)))

(declare-fun c!59403 () Bool)

(assert (=> b!501246 (= c!59403 (validKeyInArray!0 (select (arr!15526 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78469 (not res!302993)) b!501246))

(assert (= (and b!501246 c!59403) b!501244))

(assert (= (and b!501246 (not c!59403)) b!501245))

(assert (= (and b!501244 res!302994) b!501243))

(assert (= (or b!501243 b!501245) bm!31458))

(declare-fun m!482359 () Bool)

(assert (=> bm!31458 m!482359))

(assert (=> b!501244 m!482247))

(declare-fun m!482361 () Bool)

(assert (=> b!501244 m!482361))

(declare-fun m!482363 () Bool)

(assert (=> b!501244 m!482363))

(assert (=> b!501244 m!482247))

(declare-fun m!482365 () Bool)

(assert (=> b!501244 m!482365))

(assert (=> b!501246 m!482247))

(assert (=> b!501246 m!482247))

(assert (=> b!501246 m!482251))

(assert (=> b!501016 d!78469))

(check-sat (not b!501218) (not b!501237) (not b!501246) (not b!501092) (not b!501244) (not d!78409) (not b!501229) (not d!78467) (not b!501090) (not d!78415) (not b!501107) (not bm!31457) (not d!78429) (not d!78417) (not b!501091) (not d!78463) (not b!501220) (not b!501139) (not bm!31458) (not d!78461) (not b!501216) (not d!78465) (not b!501152) (not b!501072) (not bm!31448))
(check-sat)
