; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45768 () Bool)

(assert start!45768)

(declare-fun b!506067 () Bool)

(declare-datatypes ((Unit!15462 0))(
  ( (Unit!15463) )
))
(declare-fun e!296215 () Unit!15462)

(declare-fun Unit!15464 () Unit!15462)

(assert (=> b!506067 (= e!296215 Unit!15464)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4093 0))(
  ( (MissingZero!4093 (index!18560 (_ BitVec 32))) (Found!4093 (index!18561 (_ BitVec 32))) (Intermediate!4093 (undefined!4905 Bool) (index!18562 (_ BitVec 32)) (x!47593 (_ BitVec 32))) (Undefined!4093) (MissingVacant!4093 (index!18563 (_ BitVec 32))) )
))
(declare-fun lt!230951 () SeekEntryResult!4093)

(declare-datatypes ((array!32484 0))(
  ( (array!32485 (arr!15619 (Array (_ BitVec 32) (_ BitVec 64))) (size!15983 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32484)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!230947 () (_ BitVec 32))

(declare-fun lt!230950 () Unit!15462)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15462)

(assert (=> b!506067 (= lt!230950 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230947 #b00000000000000000000000000000000 (index!18562 lt!230951) (x!47593 lt!230951) mask!3524))))

(declare-fun lt!230956 () array!32484)

(declare-fun res!307197 () Bool)

(declare-fun lt!230946 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32484 (_ BitVec 32)) SeekEntryResult!4093)

(assert (=> b!506067 (= res!307197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230947 lt!230946 lt!230956 mask!3524) (Intermediate!4093 false (index!18562 lt!230951) (x!47593 lt!230951))))))

(declare-fun e!296217 () Bool)

(assert (=> b!506067 (=> (not res!307197) (not e!296217))))

(assert (=> b!506067 e!296217))

(declare-fun res!307195 () Bool)

(declare-fun e!296219 () Bool)

(assert (=> start!45768 (=> (not res!307195) (not e!296219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45768 (= res!307195 (validMask!0 mask!3524))))

(assert (=> start!45768 e!296219))

(assert (=> start!45768 true))

(declare-fun array_inv!11393 (array!32484) Bool)

(assert (=> start!45768 (array_inv!11393 a!3235)))

(declare-fun b!506068 () Bool)

(declare-fun res!307189 () Bool)

(assert (=> b!506068 (=> (not res!307189) (not e!296219))))

(declare-fun arrayContainsKey!0 (array!32484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506068 (= res!307189 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506069 () Bool)

(declare-fun Unit!15465 () Unit!15462)

(assert (=> b!506069 (= e!296215 Unit!15465)))

(declare-fun b!506070 () Bool)

(declare-fun res!307198 () Bool)

(declare-fun e!296214 () Bool)

(assert (=> b!506070 (=> (not res!307198) (not e!296214))))

(declare-datatypes ((List!9830 0))(
  ( (Nil!9827) (Cons!9826 (h!10703 (_ BitVec 64)) (t!16066 List!9830)) )
))
(declare-fun arrayNoDuplicates!0 (array!32484 (_ BitVec 32) List!9830) Bool)

(assert (=> b!506070 (= res!307198 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9827))))

(declare-fun b!506071 () Bool)

(declare-fun lt!230952 () SeekEntryResult!4093)

(declare-fun e!296221 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32484 (_ BitVec 32)) SeekEntryResult!4093)

(assert (=> b!506071 (= e!296221 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230947 (index!18562 lt!230951) (select (arr!15619 a!3235) j!176) a!3235 mask!3524) lt!230952)))))

(declare-fun b!506072 () Bool)

(declare-fun res!307185 () Bool)

(declare-fun e!296218 () Bool)

(assert (=> b!506072 (=> res!307185 e!296218)))

(declare-fun lt!230949 () SeekEntryResult!4093)

(assert (=> b!506072 (= res!307185 (not (= lt!230949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230947 lt!230946 lt!230956 mask!3524))))))

(declare-fun b!506073 () Bool)

(declare-fun res!307193 () Bool)

(assert (=> b!506073 (=> (not res!307193) (not e!296219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506073 (= res!307193 (validKeyInArray!0 (select (arr!15619 a!3235) j!176)))))

(declare-fun b!506074 () Bool)

(declare-fun res!307196 () Bool)

(assert (=> b!506074 (=> (not res!307196) (not e!296219))))

(assert (=> b!506074 (= res!307196 (and (= (size!15983 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15983 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15983 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506075 () Bool)

(assert (=> b!506075 (= e!296219 e!296214)))

(declare-fun res!307191 () Bool)

(assert (=> b!506075 (=> (not res!307191) (not e!296214))))

(declare-fun lt!230945 () SeekEntryResult!4093)

(assert (=> b!506075 (= res!307191 (or (= lt!230945 (MissingZero!4093 i!1204)) (= lt!230945 (MissingVacant!4093 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32484 (_ BitVec 32)) SeekEntryResult!4093)

(assert (=> b!506075 (= lt!230945 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506076 () Bool)

(declare-fun res!307192 () Bool)

(assert (=> b!506076 (=> res!307192 e!296218)))

(assert (=> b!506076 (= res!307192 e!296221)))

(declare-fun res!307187 () Bool)

(assert (=> b!506076 (=> (not res!307187) (not e!296221))))

(assert (=> b!506076 (= res!307187 (bvsgt #b00000000000000000000000000000000 (x!47593 lt!230951)))))

(declare-fun b!506077 () Bool)

(declare-fun e!296216 () Bool)

(assert (=> b!506077 (= e!296214 (not e!296216))))

(declare-fun res!307199 () Bool)

(assert (=> b!506077 (=> res!307199 e!296216)))

(get-info :version)

(assert (=> b!506077 (= res!307199 (or (= lt!230951 lt!230949) (undefined!4905 lt!230951) (not ((_ is Intermediate!4093) lt!230951))))))

(declare-fun lt!230948 () (_ BitVec 32))

(assert (=> b!506077 (= lt!230949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230948 lt!230946 lt!230956 mask!3524))))

(assert (=> b!506077 (= lt!230951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230947 (select (arr!15619 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506077 (= lt!230948 (toIndex!0 lt!230946 mask!3524))))

(assert (=> b!506077 (= lt!230946 (select (store (arr!15619 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!506077 (= lt!230947 (toIndex!0 (select (arr!15619 a!3235) j!176) mask!3524))))

(assert (=> b!506077 (= lt!230956 (array!32485 (store (arr!15619 a!3235) i!1204 k0!2280) (size!15983 a!3235)))))

(assert (=> b!506077 (= lt!230952 (Found!4093 j!176))))

(declare-fun e!296212 () Bool)

(assert (=> b!506077 e!296212))

(declare-fun res!307190 () Bool)

(assert (=> b!506077 (=> (not res!307190) (not e!296212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32484 (_ BitVec 32)) Bool)

(assert (=> b!506077 (= res!307190 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230954 () Unit!15462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15462)

(assert (=> b!506077 (= lt!230954 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506078 () Bool)

(declare-fun res!307188 () Bool)

(assert (=> b!506078 (=> (not res!307188) (not e!296214))))

(assert (=> b!506078 (= res!307188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506079 () Bool)

(assert (=> b!506079 (= e!296212 (= (seekEntryOrOpen!0 (select (arr!15619 a!3235) j!176) a!3235 mask!3524) (Found!4093 j!176)))))

(declare-fun b!506080 () Bool)

(declare-fun e!296213 () Bool)

(assert (=> b!506080 (= e!296213 (validKeyInArray!0 lt!230946))))

(declare-fun b!506081 () Bool)

(declare-fun res!307184 () Bool)

(assert (=> b!506081 (=> (not res!307184) (not e!296219))))

(assert (=> b!506081 (= res!307184 (validKeyInArray!0 k0!2280))))

(declare-fun b!506082 () Bool)

(assert (=> b!506082 (= e!296217 false)))

(declare-fun b!506083 () Bool)

(assert (=> b!506083 (= e!296216 e!296218)))

(declare-fun res!307186 () Bool)

(assert (=> b!506083 (=> res!307186 e!296218)))

(assert (=> b!506083 (= res!307186 (or (bvsgt (x!47593 lt!230951) #b01111111111111111111111111111110) (bvslt lt!230947 #b00000000000000000000000000000000) (bvsge lt!230947 (size!15983 a!3235)) (bvslt (index!18562 lt!230951) #b00000000000000000000000000000000) (bvsge (index!18562 lt!230951) (size!15983 a!3235)) (not (= lt!230951 (Intermediate!4093 false (index!18562 lt!230951) (x!47593 lt!230951))))))))

(assert (=> b!506083 (= (index!18562 lt!230951) i!1204)))

(declare-fun lt!230953 () Unit!15462)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15462)

(assert (=> b!506083 (= lt!230953 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230947 #b00000000000000000000000000000000 (index!18562 lt!230951) (x!47593 lt!230951) mask!3524))))

(assert (=> b!506083 (and (or (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230955 () Unit!15462)

(assert (=> b!506083 (= lt!230955 e!296215)))

(declare-fun c!59720 () Bool)

(assert (=> b!506083 (= c!59720 (= (select (arr!15619 a!3235) (index!18562 lt!230951)) (select (arr!15619 a!3235) j!176)))))

(assert (=> b!506083 (and (bvslt (x!47593 lt!230951) #b01111111111111111111111111111110) (or (= (select (arr!15619 a!3235) (index!18562 lt!230951)) (select (arr!15619 a!3235) j!176)) (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15619 a!3235) (index!18562 lt!230951)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!506084 () Bool)

(assert (=> b!506084 (= e!296218 e!296213)))

(declare-fun res!307194 () Bool)

(assert (=> b!506084 (=> res!307194 e!296213)))

(assert (=> b!506084 (= res!307194 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!506084 (= (seekEntryOrOpen!0 lt!230946 lt!230956 mask!3524) lt!230952)))

(declare-fun lt!230957 () Unit!15462)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15462)

(assert (=> b!506084 (= lt!230957 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230947 #b00000000000000000000000000000000 (index!18562 lt!230951) (x!47593 lt!230951) mask!3524))))

(assert (= (and start!45768 res!307195) b!506074))

(assert (= (and b!506074 res!307196) b!506073))

(assert (= (and b!506073 res!307193) b!506081))

(assert (= (and b!506081 res!307184) b!506068))

(assert (= (and b!506068 res!307189) b!506075))

(assert (= (and b!506075 res!307191) b!506078))

(assert (= (and b!506078 res!307188) b!506070))

(assert (= (and b!506070 res!307198) b!506077))

(assert (= (and b!506077 res!307190) b!506079))

(assert (= (and b!506077 (not res!307199)) b!506083))

(assert (= (and b!506083 c!59720) b!506067))

(assert (= (and b!506083 (not c!59720)) b!506069))

(assert (= (and b!506067 res!307197) b!506082))

(assert (= (and b!506083 (not res!307186)) b!506076))

(assert (= (and b!506076 res!307187) b!506071))

(assert (= (and b!506076 (not res!307192)) b!506072))

(assert (= (and b!506072 (not res!307185)) b!506084))

(assert (= (and b!506084 (not res!307194)) b!506080))

(declare-fun m!486749 () Bool)

(assert (=> b!506070 m!486749))

(declare-fun m!486751 () Bool)

(assert (=> b!506081 m!486751))

(declare-fun m!486753 () Bool)

(assert (=> b!506084 m!486753))

(declare-fun m!486755 () Bool)

(assert (=> b!506084 m!486755))

(declare-fun m!486757 () Bool)

(assert (=> b!506078 m!486757))

(declare-fun m!486759 () Bool)

(assert (=> b!506073 m!486759))

(assert (=> b!506073 m!486759))

(declare-fun m!486761 () Bool)

(assert (=> b!506073 m!486761))

(assert (=> b!506079 m!486759))

(assert (=> b!506079 m!486759))

(declare-fun m!486763 () Bool)

(assert (=> b!506079 m!486763))

(declare-fun m!486765 () Bool)

(assert (=> b!506080 m!486765))

(declare-fun m!486767 () Bool)

(assert (=> b!506072 m!486767))

(declare-fun m!486769 () Bool)

(assert (=> b!506077 m!486769))

(declare-fun m!486771 () Bool)

(assert (=> b!506077 m!486771))

(declare-fun m!486773 () Bool)

(assert (=> b!506077 m!486773))

(declare-fun m!486775 () Bool)

(assert (=> b!506077 m!486775))

(declare-fun m!486777 () Bool)

(assert (=> b!506077 m!486777))

(assert (=> b!506077 m!486759))

(declare-fun m!486779 () Bool)

(assert (=> b!506077 m!486779))

(assert (=> b!506077 m!486759))

(declare-fun m!486781 () Bool)

(assert (=> b!506077 m!486781))

(assert (=> b!506077 m!486759))

(declare-fun m!486783 () Bool)

(assert (=> b!506077 m!486783))

(declare-fun m!486785 () Bool)

(assert (=> b!506068 m!486785))

(assert (=> b!506071 m!486759))

(assert (=> b!506071 m!486759))

(declare-fun m!486787 () Bool)

(assert (=> b!506071 m!486787))

(declare-fun m!486789 () Bool)

(assert (=> b!506075 m!486789))

(declare-fun m!486791 () Bool)

(assert (=> b!506067 m!486791))

(assert (=> b!506067 m!486767))

(declare-fun m!486793 () Bool)

(assert (=> b!506083 m!486793))

(declare-fun m!486795 () Bool)

(assert (=> b!506083 m!486795))

(assert (=> b!506083 m!486759))

(declare-fun m!486797 () Bool)

(assert (=> start!45768 m!486797))

(declare-fun m!486799 () Bool)

(assert (=> start!45768 m!486799))

(check-sat (not b!506079) (not b!506067) (not b!506078) (not b!506070) (not b!506068) (not b!506077) (not b!506073) (not start!45768) (not b!506084) (not b!506075) (not b!506071) (not b!506081) (not b!506080) (not b!506083) (not b!506072))
(check-sat)
