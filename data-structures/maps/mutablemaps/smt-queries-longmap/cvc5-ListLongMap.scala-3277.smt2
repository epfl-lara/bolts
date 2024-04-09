; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45616 () Bool)

(assert start!45616)

(declare-fun res!303768 () Bool)

(declare-fun e!294159 () Bool)

(assert (=> start!45616 (=> (not res!303768) (not e!294159))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45616 (= res!303768 (validMask!0 mask!3524))))

(assert (=> start!45616 e!294159))

(assert (=> start!45616 true))

(declare-datatypes ((array!32332 0))(
  ( (array!32333 (arr!15543 (Array (_ BitVec 32) (_ BitVec 64))) (size!15907 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32332)

(declare-fun array_inv!11317 (array!32332) Bool)

(assert (=> start!45616 (array_inv!11317 a!3235)))

(declare-fun b!502186 () Bool)

(declare-fun res!303767 () Bool)

(assert (=> b!502186 (=> (not res!303767) (not e!294159))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!502186 (= res!303767 (and (= (size!15907 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15907 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15907 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502187 () Bool)

(declare-fun e!294161 () Bool)

(assert (=> b!502187 (= e!294161 true)))

(declare-fun lt!228310 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4017 0))(
  ( (MissingZero!4017 (index!18256 (_ BitVec 32))) (Found!4017 (index!18257 (_ BitVec 32))) (Intermediate!4017 (undefined!4829 Bool) (index!18258 (_ BitVec 32)) (x!47317 (_ BitVec 32))) (Undefined!4017) (MissingVacant!4017 (index!18259 (_ BitVec 32))) )
))
(declare-fun lt!228301 () SeekEntryResult!4017)

(declare-fun lt!228303 () array!32332)

(declare-fun lt!228306 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32332 (_ BitVec 32)) SeekEntryResult!4017)

(assert (=> b!502187 (= lt!228301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228306 lt!228310 lt!228303 mask!3524))))

(declare-fun b!502188 () Bool)

(declare-fun res!303764 () Bool)

(declare-fun e!294163 () Bool)

(assert (=> b!502188 (=> (not res!303764) (not e!294163))))

(declare-datatypes ((List!9754 0))(
  ( (Nil!9751) (Cons!9750 (h!10627 (_ BitVec 64)) (t!15990 List!9754)) )
))
(declare-fun arrayNoDuplicates!0 (array!32332 (_ BitVec 32) List!9754) Bool)

(assert (=> b!502188 (= res!303764 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9751))))

(declare-fun b!502189 () Bool)

(declare-datatypes ((Unit!15158 0))(
  ( (Unit!15159) )
))
(declare-fun e!294160 () Unit!15158)

(declare-fun Unit!15160 () Unit!15158)

(assert (=> b!502189 (= e!294160 Unit!15160)))

(declare-fun b!502190 () Bool)

(declare-fun e!294158 () Bool)

(assert (=> b!502190 (= e!294158 false)))

(declare-fun b!502191 () Bool)

(declare-fun res!303773 () Bool)

(assert (=> b!502191 (=> (not res!303773) (not e!294159))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502191 (= res!303773 (validKeyInArray!0 k!2280))))

(declare-fun b!502192 () Bool)

(declare-fun Unit!15161 () Unit!15158)

(assert (=> b!502192 (= e!294160 Unit!15161)))

(declare-fun lt!228309 () Unit!15158)

(declare-fun lt!228308 () SeekEntryResult!4017)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32332 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15158)

(assert (=> b!502192 (= lt!228309 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228306 #b00000000000000000000000000000000 (index!18258 lt!228308) (x!47317 lt!228308) mask!3524))))

(declare-fun res!303762 () Bool)

(assert (=> b!502192 (= res!303762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228306 lt!228310 lt!228303 mask!3524) (Intermediate!4017 false (index!18258 lt!228308) (x!47317 lt!228308))))))

(assert (=> b!502192 (=> (not res!303762) (not e!294158))))

(assert (=> b!502192 e!294158))

(declare-fun b!502193 () Bool)

(assert (=> b!502193 (= e!294159 e!294163)))

(declare-fun res!303763 () Bool)

(assert (=> b!502193 (=> (not res!303763) (not e!294163))))

(declare-fun lt!228304 () SeekEntryResult!4017)

(assert (=> b!502193 (= res!303763 (or (= lt!228304 (MissingZero!4017 i!1204)) (= lt!228304 (MissingVacant!4017 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32332 (_ BitVec 32)) SeekEntryResult!4017)

(assert (=> b!502193 (= lt!228304 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!294155 () Bool)

(declare-fun b!502194 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32332 (_ BitVec 32)) SeekEntryResult!4017)

(assert (=> b!502194 (= e!294155 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228306 (index!18258 lt!228308) (select (arr!15543 a!3235) j!176) a!3235 mask!3524) (Found!4017 j!176))))))

(declare-fun b!502195 () Bool)

(declare-fun res!303760 () Bool)

(assert (=> b!502195 (=> (not res!303760) (not e!294159))))

(assert (=> b!502195 (= res!303760 (validKeyInArray!0 (select (arr!15543 a!3235) j!176)))))

(declare-fun b!502196 () Bool)

(declare-fun e!294162 () Bool)

(assert (=> b!502196 (= e!294162 e!294161)))

(declare-fun res!303771 () Bool)

(assert (=> b!502196 (=> res!303771 e!294161)))

(assert (=> b!502196 (= res!303771 (or (bvsgt (x!47317 lt!228308) #b01111111111111111111111111111110) (bvslt lt!228306 #b00000000000000000000000000000000) (bvsge lt!228306 (size!15907 a!3235)) (bvslt (index!18258 lt!228308) #b00000000000000000000000000000000) (bvsge (index!18258 lt!228308) (size!15907 a!3235)) (not (= lt!228308 (Intermediate!4017 false (index!18258 lt!228308) (x!47317 lt!228308))))))))

(assert (=> b!502196 (= (index!18258 lt!228308) i!1204)))

(declare-fun lt!228307 () Unit!15158)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32332 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15158)

(assert (=> b!502196 (= lt!228307 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228306 #b00000000000000000000000000000000 (index!18258 lt!228308) (x!47317 lt!228308) mask!3524))))

(assert (=> b!502196 (and (or (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228311 () Unit!15158)

(assert (=> b!502196 (= lt!228311 e!294160)))

(declare-fun c!59492 () Bool)

(assert (=> b!502196 (= c!59492 (= (select (arr!15543 a!3235) (index!18258 lt!228308)) (select (arr!15543 a!3235) j!176)))))

(assert (=> b!502196 (and (bvslt (x!47317 lt!228308) #b01111111111111111111111111111110) (or (= (select (arr!15543 a!3235) (index!18258 lt!228308)) (select (arr!15543 a!3235) j!176)) (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15543 a!3235) (index!18258 lt!228308)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502197 () Bool)

(declare-fun res!303772 () Bool)

(assert (=> b!502197 (=> (not res!303772) (not e!294159))))

(declare-fun arrayContainsKey!0 (array!32332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502197 (= res!303772 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502198 () Bool)

(declare-fun e!294157 () Bool)

(assert (=> b!502198 (= e!294157 (= (seekEntryOrOpen!0 (select (arr!15543 a!3235) j!176) a!3235 mask!3524) (Found!4017 j!176)))))

(declare-fun b!502199 () Bool)

(assert (=> b!502199 (= e!294163 (not e!294162))))

(declare-fun res!303766 () Bool)

(assert (=> b!502199 (=> res!303766 e!294162)))

(declare-fun lt!228302 () (_ BitVec 32))

(assert (=> b!502199 (= res!303766 (= lt!228308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228302 lt!228310 lt!228303 mask!3524)))))

(assert (=> b!502199 (= lt!228308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228306 (select (arr!15543 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502199 (= lt!228302 (toIndex!0 lt!228310 mask!3524))))

(assert (=> b!502199 (= lt!228310 (select (store (arr!15543 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502199 (= lt!228306 (toIndex!0 (select (arr!15543 a!3235) j!176) mask!3524))))

(assert (=> b!502199 (= lt!228303 (array!32333 (store (arr!15543 a!3235) i!1204 k!2280) (size!15907 a!3235)))))

(assert (=> b!502199 e!294157))

(declare-fun res!303770 () Bool)

(assert (=> b!502199 (=> (not res!303770) (not e!294157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32332 (_ BitVec 32)) Bool)

(assert (=> b!502199 (= res!303770 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228305 () Unit!15158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15158)

(assert (=> b!502199 (= lt!228305 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502200 () Bool)

(declare-fun res!303769 () Bool)

(assert (=> b!502200 (=> res!303769 e!294161)))

(assert (=> b!502200 (= res!303769 e!294155)))

(declare-fun res!303761 () Bool)

(assert (=> b!502200 (=> (not res!303761) (not e!294155))))

(assert (=> b!502200 (= res!303761 (bvsgt #b00000000000000000000000000000000 (x!47317 lt!228308)))))

(declare-fun b!502201 () Bool)

(declare-fun res!303759 () Bool)

(assert (=> b!502201 (=> res!303759 e!294162)))

(assert (=> b!502201 (= res!303759 (or (undefined!4829 lt!228308) (not (is-Intermediate!4017 lt!228308))))))

(declare-fun b!502202 () Bool)

(declare-fun res!303765 () Bool)

(assert (=> b!502202 (=> (not res!303765) (not e!294163))))

(assert (=> b!502202 (= res!303765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45616 res!303768) b!502186))

(assert (= (and b!502186 res!303767) b!502195))

(assert (= (and b!502195 res!303760) b!502191))

(assert (= (and b!502191 res!303773) b!502197))

(assert (= (and b!502197 res!303772) b!502193))

(assert (= (and b!502193 res!303763) b!502202))

(assert (= (and b!502202 res!303765) b!502188))

(assert (= (and b!502188 res!303764) b!502199))

(assert (= (and b!502199 res!303770) b!502198))

(assert (= (and b!502199 (not res!303766)) b!502201))

(assert (= (and b!502201 (not res!303759)) b!502196))

(assert (= (and b!502196 c!59492) b!502192))

(assert (= (and b!502196 (not c!59492)) b!502189))

(assert (= (and b!502192 res!303762) b!502190))

(assert (= (and b!502196 (not res!303771)) b!502200))

(assert (= (and b!502200 res!303761) b!502194))

(assert (= (and b!502200 (not res!303769)) b!502187))

(declare-fun m!483163 () Bool)

(assert (=> b!502199 m!483163))

(declare-fun m!483165 () Bool)

(assert (=> b!502199 m!483165))

(declare-fun m!483167 () Bool)

(assert (=> b!502199 m!483167))

(declare-fun m!483169 () Bool)

(assert (=> b!502199 m!483169))

(declare-fun m!483171 () Bool)

(assert (=> b!502199 m!483171))

(declare-fun m!483173 () Bool)

(assert (=> b!502199 m!483173))

(declare-fun m!483175 () Bool)

(assert (=> b!502199 m!483175))

(assert (=> b!502199 m!483173))

(assert (=> b!502199 m!483173))

(declare-fun m!483177 () Bool)

(assert (=> b!502199 m!483177))

(declare-fun m!483179 () Bool)

(assert (=> b!502199 m!483179))

(declare-fun m!483181 () Bool)

(assert (=> start!45616 m!483181))

(declare-fun m!483183 () Bool)

(assert (=> start!45616 m!483183))

(declare-fun m!483185 () Bool)

(assert (=> b!502187 m!483185))

(assert (=> b!502194 m!483173))

(assert (=> b!502194 m!483173))

(declare-fun m!483187 () Bool)

(assert (=> b!502194 m!483187))

(declare-fun m!483189 () Bool)

(assert (=> b!502191 m!483189))

(declare-fun m!483191 () Bool)

(assert (=> b!502197 m!483191))

(assert (=> b!502195 m!483173))

(assert (=> b!502195 m!483173))

(declare-fun m!483193 () Bool)

(assert (=> b!502195 m!483193))

(declare-fun m!483195 () Bool)

(assert (=> b!502193 m!483195))

(declare-fun m!483197 () Bool)

(assert (=> b!502192 m!483197))

(assert (=> b!502192 m!483185))

(declare-fun m!483199 () Bool)

(assert (=> b!502188 m!483199))

(assert (=> b!502198 m!483173))

(assert (=> b!502198 m!483173))

(declare-fun m!483201 () Bool)

(assert (=> b!502198 m!483201))

(declare-fun m!483203 () Bool)

(assert (=> b!502196 m!483203))

(declare-fun m!483205 () Bool)

(assert (=> b!502196 m!483205))

(assert (=> b!502196 m!483173))

(declare-fun m!483207 () Bool)

(assert (=> b!502202 m!483207))

(push 1)

