; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65196 () Bool)

(assert start!65196)

(declare-fun b!737058 () Bool)

(declare-fun res!495509 () Bool)

(declare-fun e!412311 () Bool)

(assert (=> b!737058 (=> (not res!495509) (not e!412311))))

(declare-datatypes ((array!41322 0))(
  ( (array!41323 (arr!19771 (Array (_ BitVec 32) (_ BitVec 64))) (size!20192 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41322)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737058 (= res!495509 (validKeyInArray!0 (select (arr!19771 a!3186) j!159)))))

(declare-fun b!737059 () Bool)

(declare-datatypes ((Unit!25130 0))(
  ( (Unit!25131) )
))
(declare-fun e!412306 () Unit!25130)

(declare-fun Unit!25132 () Unit!25130)

(assert (=> b!737059 (= e!412306 Unit!25132)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7378 0))(
  ( (MissingZero!7378 (index!31879 (_ BitVec 32))) (Found!7378 (index!31880 (_ BitVec 32))) (Intermediate!7378 (undefined!8190 Bool) (index!31881 (_ BitVec 32)) (x!62905 (_ BitVec 32))) (Undefined!7378) (MissingVacant!7378 (index!31882 (_ BitVec 32))) )
))
(declare-fun lt!327008 () SeekEntryResult!7378)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41322 (_ BitVec 32)) SeekEntryResult!7378)

(assert (=> b!737059 (= lt!327008 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19771 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326996 () SeekEntryResult!7378)

(declare-fun lt!327000 () (_ BitVec 32))

(assert (=> b!737059 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327000 resIntermediateIndex!5 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!326996)))

(declare-fun e!412305 () Bool)

(declare-fun lt!327007 () SeekEntryResult!7378)

(declare-fun b!737060 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41322 (_ BitVec 32)) SeekEntryResult!7378)

(assert (=> b!737060 (= e!412305 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327007))))

(declare-fun b!737061 () Bool)

(declare-fun e!412301 () Bool)

(assert (=> b!737061 (= e!412301 true)))

(declare-fun lt!326997 () array!41322)

(declare-fun lt!327004 () SeekEntryResult!7378)

(declare-fun lt!326995 () (_ BitVec 64))

(assert (=> b!737061 (= lt!327004 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327000 lt!326995 lt!326997 mask!3328))))

(declare-fun b!737062 () Bool)

(declare-fun e!412307 () Bool)

(declare-fun e!412309 () Bool)

(assert (=> b!737062 (= e!412307 e!412309)))

(declare-fun res!495511 () Bool)

(assert (=> b!737062 (=> (not res!495511) (not e!412309))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737062 (= res!495511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19771 a!3186) j!159) mask!3328) (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327007))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737062 (= lt!327007 (Intermediate!7378 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737063 () Bool)

(declare-fun res!495516 () Bool)

(assert (=> b!737063 (=> (not res!495516) (not e!412309))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737063 (= res!495516 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19771 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737064 () Bool)

(declare-fun res!495502 () Bool)

(assert (=> b!737064 (=> (not res!495502) (not e!412311))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737064 (= res!495502 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!412302 () Bool)

(declare-fun b!737065 () Bool)

(declare-fun lt!327003 () SeekEntryResult!7378)

(assert (=> b!737065 (= e!412302 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327003))))

(declare-fun b!737066 () Bool)

(declare-fun res!495500 () Bool)

(assert (=> b!737066 (=> (not res!495500) (not e!412311))))

(assert (=> b!737066 (= res!495500 (and (= (size!20192 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20192 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20192 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737067 () Bool)

(declare-fun e!412300 () Bool)

(assert (=> b!737067 (= e!412300 e!412301)))

(declare-fun res!495508 () Bool)

(assert (=> b!737067 (=> res!495508 e!412301)))

(assert (=> b!737067 (= res!495508 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327000 #b00000000000000000000000000000000) (bvsge lt!327000 (size!20192 a!3186))))))

(declare-fun lt!327001 () Unit!25130)

(assert (=> b!737067 (= lt!327001 e!412306)))

(declare-fun c!81160 () Bool)

(declare-fun lt!327002 () Bool)

(assert (=> b!737067 (= c!81160 lt!327002)))

(assert (=> b!737067 (= lt!327002 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737067 (= lt!327000 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737068 () Bool)

(declare-fun e!412304 () Bool)

(assert (=> b!737068 (= e!412304 (not e!412300))))

(declare-fun res!495513 () Bool)

(assert (=> b!737068 (=> res!495513 e!412300)))

(declare-fun lt!327006 () SeekEntryResult!7378)

(get-info :version)

(assert (=> b!737068 (= res!495513 (or (not ((_ is Intermediate!7378) lt!327006)) (bvsge x!1131 (x!62905 lt!327006))))))

(assert (=> b!737068 (= lt!326996 (Found!7378 j!159))))

(declare-fun e!412303 () Bool)

(assert (=> b!737068 e!412303))

(declare-fun res!495503 () Bool)

(assert (=> b!737068 (=> (not res!495503) (not e!412303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41322 (_ BitVec 32)) Bool)

(assert (=> b!737068 (= res!495503 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327005 () Unit!25130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25130)

(assert (=> b!737068 (= lt!327005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737069 () Bool)

(assert (=> b!737069 (= e!412309 e!412304)))

(declare-fun res!495505 () Bool)

(assert (=> b!737069 (=> (not res!495505) (not e!412304))))

(declare-fun lt!326998 () SeekEntryResult!7378)

(assert (=> b!737069 (= res!495505 (= lt!326998 lt!327006))))

(assert (=> b!737069 (= lt!327006 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326995 lt!326997 mask!3328))))

(assert (=> b!737069 (= lt!326998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326995 mask!3328) lt!326995 lt!326997 mask!3328))))

(assert (=> b!737069 (= lt!326995 (select (store (arr!19771 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!737069 (= lt!326997 (array!41323 (store (arr!19771 a!3186) i!1173 k0!2102) (size!20192 a!3186)))))

(declare-fun b!737070 () Bool)

(declare-fun res!495515 () Bool)

(assert (=> b!737070 (=> (not res!495515) (not e!412307))))

(assert (=> b!737070 (= res!495515 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20192 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20192 a!3186))))))

(declare-fun b!737071 () Bool)

(declare-fun res!495499 () Bool)

(assert (=> b!737071 (=> res!495499 e!412301)))

(declare-fun e!412308 () Bool)

(assert (=> b!737071 (= res!495499 e!412308)))

(declare-fun c!81161 () Bool)

(assert (=> b!737071 (= c!81161 lt!327002)))

(declare-fun res!495504 () Bool)

(assert (=> start!65196 (=> (not res!495504) (not e!412311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65196 (= res!495504 (validMask!0 mask!3328))))

(assert (=> start!65196 e!412311))

(assert (=> start!65196 true))

(declare-fun array_inv!15545 (array!41322) Bool)

(assert (=> start!65196 (array_inv!15545 a!3186)))

(declare-fun b!737072 () Bool)

(declare-fun res!495510 () Bool)

(assert (=> b!737072 (=> (not res!495510) (not e!412311))))

(assert (=> b!737072 (= res!495510 (validKeyInArray!0 k0!2102))))

(declare-fun b!737073 () Bool)

(declare-fun res!495512 () Bool)

(assert (=> b!737073 (=> (not res!495512) (not e!412309))))

(assert (=> b!737073 (= res!495512 e!412305)))

(declare-fun c!81162 () Bool)

(assert (=> b!737073 (= c!81162 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737074 () Bool)

(declare-fun res!495507 () Bool)

(assert (=> b!737074 (=> (not res!495507) (not e!412307))))

(assert (=> b!737074 (= res!495507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737075 () Bool)

(assert (=> b!737075 (= e!412311 e!412307)))

(declare-fun res!495514 () Bool)

(assert (=> b!737075 (=> (not res!495514) (not e!412307))))

(declare-fun lt!326999 () SeekEntryResult!7378)

(assert (=> b!737075 (= res!495514 (or (= lt!326999 (MissingZero!7378 i!1173)) (= lt!326999 (MissingVacant!7378 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41322 (_ BitVec 32)) SeekEntryResult!7378)

(assert (=> b!737075 (= lt!326999 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!737076 () Bool)

(assert (=> b!737076 (= e!412308 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327000 resIntermediateIndex!5 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!326996)))))

(declare-fun b!737077 () Bool)

(declare-fun res!495506 () Bool)

(assert (=> b!737077 (=> (not res!495506) (not e!412307))))

(declare-datatypes ((List!13826 0))(
  ( (Nil!13823) (Cons!13822 (h!14894 (_ BitVec 64)) (t!20149 List!13826)) )
))
(declare-fun arrayNoDuplicates!0 (array!41322 (_ BitVec 32) List!13826) Bool)

(assert (=> b!737077 (= res!495506 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13823))))

(declare-fun b!737078 () Bool)

(declare-fun Unit!25133 () Unit!25130)

(assert (=> b!737078 (= e!412306 Unit!25133)))

(assert (=> b!737078 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327000 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327007)))

(declare-fun b!737079 () Bool)

(assert (=> b!737079 (= e!412308 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327000 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327007)))))

(declare-fun b!737080 () Bool)

(assert (=> b!737080 (= e!412303 e!412302)))

(declare-fun res!495501 () Bool)

(assert (=> b!737080 (=> (not res!495501) (not e!412302))))

(assert (=> b!737080 (= res!495501 (= (seekEntryOrOpen!0 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) lt!327003))))

(assert (=> b!737080 (= lt!327003 (Found!7378 j!159))))

(declare-fun b!737081 () Bool)

(assert (=> b!737081 (= e!412305 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19771 a!3186) j!159) a!3186 mask!3328) (Found!7378 j!159)))))

(assert (= (and start!65196 res!495504) b!737066))

(assert (= (and b!737066 res!495500) b!737058))

(assert (= (and b!737058 res!495509) b!737072))

(assert (= (and b!737072 res!495510) b!737064))

(assert (= (and b!737064 res!495502) b!737075))

(assert (= (and b!737075 res!495514) b!737074))

(assert (= (and b!737074 res!495507) b!737077))

(assert (= (and b!737077 res!495506) b!737070))

(assert (= (and b!737070 res!495515) b!737062))

(assert (= (and b!737062 res!495511) b!737063))

(assert (= (and b!737063 res!495516) b!737073))

(assert (= (and b!737073 c!81162) b!737060))

(assert (= (and b!737073 (not c!81162)) b!737081))

(assert (= (and b!737073 res!495512) b!737069))

(assert (= (and b!737069 res!495505) b!737068))

(assert (= (and b!737068 res!495503) b!737080))

(assert (= (and b!737080 res!495501) b!737065))

(assert (= (and b!737068 (not res!495513)) b!737067))

(assert (= (and b!737067 c!81160) b!737078))

(assert (= (and b!737067 (not c!81160)) b!737059))

(assert (= (and b!737067 (not res!495508)) b!737071))

(assert (= (and b!737071 c!81161) b!737079))

(assert (= (and b!737071 (not c!81161)) b!737076))

(assert (= (and b!737071 (not res!495499)) b!737061))

(declare-fun m!689101 () Bool)

(assert (=> start!65196 m!689101))

(declare-fun m!689103 () Bool)

(assert (=> start!65196 m!689103))

(declare-fun m!689105 () Bool)

(assert (=> b!737069 m!689105))

(declare-fun m!689107 () Bool)

(assert (=> b!737069 m!689107))

(declare-fun m!689109 () Bool)

(assert (=> b!737069 m!689109))

(assert (=> b!737069 m!689107))

(declare-fun m!689111 () Bool)

(assert (=> b!737069 m!689111))

(declare-fun m!689113 () Bool)

(assert (=> b!737069 m!689113))

(declare-fun m!689115 () Bool)

(assert (=> b!737079 m!689115))

(assert (=> b!737079 m!689115))

(declare-fun m!689117 () Bool)

(assert (=> b!737079 m!689117))

(declare-fun m!689119 () Bool)

(assert (=> b!737063 m!689119))

(assert (=> b!737080 m!689115))

(assert (=> b!737080 m!689115))

(declare-fun m!689121 () Bool)

(assert (=> b!737080 m!689121))

(assert (=> b!737062 m!689115))

(assert (=> b!737062 m!689115))

(declare-fun m!689123 () Bool)

(assert (=> b!737062 m!689123))

(assert (=> b!737062 m!689123))

(assert (=> b!737062 m!689115))

(declare-fun m!689125 () Bool)

(assert (=> b!737062 m!689125))

(assert (=> b!737060 m!689115))

(assert (=> b!737060 m!689115))

(declare-fun m!689127 () Bool)

(assert (=> b!737060 m!689127))

(assert (=> b!737065 m!689115))

(assert (=> b!737065 m!689115))

(declare-fun m!689129 () Bool)

(assert (=> b!737065 m!689129))

(assert (=> b!737081 m!689115))

(assert (=> b!737081 m!689115))

(declare-fun m!689131 () Bool)

(assert (=> b!737081 m!689131))

(declare-fun m!689133 () Bool)

(assert (=> b!737064 m!689133))

(declare-fun m!689135 () Bool)

(assert (=> b!737074 m!689135))

(assert (=> b!737076 m!689115))

(assert (=> b!737076 m!689115))

(declare-fun m!689137 () Bool)

(assert (=> b!737076 m!689137))

(declare-fun m!689139 () Bool)

(assert (=> b!737061 m!689139))

(declare-fun m!689141 () Bool)

(assert (=> b!737072 m!689141))

(assert (=> b!737058 m!689115))

(assert (=> b!737058 m!689115))

(declare-fun m!689143 () Bool)

(assert (=> b!737058 m!689143))

(assert (=> b!737059 m!689115))

(assert (=> b!737059 m!689115))

(assert (=> b!737059 m!689131))

(assert (=> b!737059 m!689115))

(assert (=> b!737059 m!689137))

(declare-fun m!689145 () Bool)

(assert (=> b!737075 m!689145))

(declare-fun m!689147 () Bool)

(assert (=> b!737077 m!689147))

(declare-fun m!689149 () Bool)

(assert (=> b!737067 m!689149))

(assert (=> b!737078 m!689115))

(assert (=> b!737078 m!689115))

(assert (=> b!737078 m!689117))

(declare-fun m!689151 () Bool)

(assert (=> b!737068 m!689151))

(declare-fun m!689153 () Bool)

(assert (=> b!737068 m!689153))

(check-sat (not b!737075) (not b!737062) (not b!737077) (not b!737058) (not b!737079) (not b!737061) (not b!737067) (not b!737060) (not b!737059) (not b!737078) (not b!737081) (not b!737068) (not b!737074) (not b!737076) (not b!737065) (not start!65196) (not b!737080) (not b!737072) (not b!737064) (not b!737069))
(check-sat)
