; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45614 () Bool)

(assert start!45614)

(declare-fun b!502135 () Bool)

(declare-fun res!303714 () Bool)

(declare-fun e!294128 () Bool)

(assert (=> b!502135 (=> (not res!303714) (not e!294128))))

(declare-datatypes ((array!32330 0))(
  ( (array!32331 (arr!15542 (Array (_ BitVec 32) (_ BitVec 64))) (size!15906 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32330)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32330 (_ BitVec 32)) Bool)

(assert (=> b!502135 (= res!303714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502137 () Bool)

(declare-fun e!294132 () Bool)

(assert (=> b!502137 (= e!294128 (not e!294132))))

(declare-fun res!303717 () Bool)

(assert (=> b!502137 (=> res!303717 e!294132)))

(declare-fun lt!228273 () array!32330)

(declare-fun lt!228270 () (_ BitVec 32))

(declare-fun lt!228276 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4016 0))(
  ( (MissingZero!4016 (index!18252 (_ BitVec 32))) (Found!4016 (index!18253 (_ BitVec 32))) (Intermediate!4016 (undefined!4828 Bool) (index!18254 (_ BitVec 32)) (x!47308 (_ BitVec 32))) (Undefined!4016) (MissingVacant!4016 (index!18255 (_ BitVec 32))) )
))
(declare-fun lt!228269 () SeekEntryResult!4016)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32330 (_ BitVec 32)) SeekEntryResult!4016)

(assert (=> b!502137 (= res!303717 (= lt!228269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228270 lt!228276 lt!228273 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228278 () (_ BitVec 32))

(assert (=> b!502137 (= lt!228269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228278 (select (arr!15542 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502137 (= lt!228270 (toIndex!0 lt!228276 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502137 (= lt!228276 (select (store (arr!15542 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502137 (= lt!228278 (toIndex!0 (select (arr!15542 a!3235) j!176) mask!3524))))

(assert (=> b!502137 (= lt!228273 (array!32331 (store (arr!15542 a!3235) i!1204 k!2280) (size!15906 a!3235)))))

(declare-fun e!294130 () Bool)

(assert (=> b!502137 e!294130))

(declare-fun res!303722 () Bool)

(assert (=> b!502137 (=> (not res!303722) (not e!294130))))

(assert (=> b!502137 (= res!303722 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15154 0))(
  ( (Unit!15155) )
))
(declare-fun lt!228272 () Unit!15154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15154)

(assert (=> b!502137 (= lt!228272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502138 () Bool)

(declare-fun e!294136 () Unit!15154)

(declare-fun Unit!15156 () Unit!15154)

(assert (=> b!502138 (= e!294136 Unit!15156)))

(declare-fun b!502139 () Bool)

(declare-fun res!303726 () Bool)

(declare-fun e!294129 () Bool)

(assert (=> b!502139 (=> (not res!303726) (not e!294129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502139 (= res!303726 (validKeyInArray!0 (select (arr!15542 a!3235) j!176)))))

(declare-fun b!502140 () Bool)

(assert (=> b!502140 (= e!294129 e!294128)))

(declare-fun res!303727 () Bool)

(assert (=> b!502140 (=> (not res!303727) (not e!294128))))

(declare-fun lt!228268 () SeekEntryResult!4016)

(assert (=> b!502140 (= res!303727 (or (= lt!228268 (MissingZero!4016 i!1204)) (= lt!228268 (MissingVacant!4016 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32330 (_ BitVec 32)) SeekEntryResult!4016)

(assert (=> b!502140 (= lt!228268 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502141 () Bool)

(declare-fun Unit!15157 () Unit!15154)

(assert (=> b!502141 (= e!294136 Unit!15157)))

(declare-fun lt!228274 () Unit!15154)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32330 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15154)

(assert (=> b!502141 (= lt!228274 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228278 #b00000000000000000000000000000000 (index!18254 lt!228269) (x!47308 lt!228269) mask!3524))))

(declare-fun res!303721 () Bool)

(assert (=> b!502141 (= res!303721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228278 lt!228276 lt!228273 mask!3524) (Intermediate!4016 false (index!18254 lt!228269) (x!47308 lt!228269))))))

(declare-fun e!294133 () Bool)

(assert (=> b!502141 (=> (not res!303721) (not e!294133))))

(assert (=> b!502141 e!294133))

(declare-fun b!502142 () Bool)

(declare-fun res!303716 () Bool)

(assert (=> b!502142 (=> (not res!303716) (not e!294129))))

(declare-fun arrayContainsKey!0 (array!32330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502142 (= res!303716 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502143 () Bool)

(declare-fun res!303719 () Bool)

(declare-fun e!294134 () Bool)

(assert (=> b!502143 (=> res!303719 e!294134)))

(declare-fun e!294131 () Bool)

(assert (=> b!502143 (= res!303719 e!294131)))

(declare-fun res!303728 () Bool)

(assert (=> b!502143 (=> (not res!303728) (not e!294131))))

(assert (=> b!502143 (= res!303728 (bvsgt #b00000000000000000000000000000000 (x!47308 lt!228269)))))

(declare-fun res!303724 () Bool)

(assert (=> start!45614 (=> (not res!303724) (not e!294129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45614 (= res!303724 (validMask!0 mask!3524))))

(assert (=> start!45614 e!294129))

(assert (=> start!45614 true))

(declare-fun array_inv!11316 (array!32330) Bool)

(assert (=> start!45614 (array_inv!11316 a!3235)))

(declare-fun b!502136 () Bool)

(declare-fun res!303723 () Bool)

(assert (=> b!502136 (=> (not res!303723) (not e!294128))))

(declare-datatypes ((List!9753 0))(
  ( (Nil!9750) (Cons!9749 (h!10626 (_ BitVec 64)) (t!15989 List!9753)) )
))
(declare-fun arrayNoDuplicates!0 (array!32330 (_ BitVec 32) List!9753) Bool)

(assert (=> b!502136 (= res!303723 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9750))))

(declare-fun b!502144 () Bool)

(declare-fun res!303720 () Bool)

(assert (=> b!502144 (=> res!303720 e!294132)))

(assert (=> b!502144 (= res!303720 (or (undefined!4828 lt!228269) (not (is-Intermediate!4016 lt!228269))))))

(declare-fun b!502145 () Bool)

(assert (=> b!502145 (= e!294132 e!294134)))

(declare-fun res!303715 () Bool)

(assert (=> b!502145 (=> res!303715 e!294134)))

(assert (=> b!502145 (= res!303715 (or (bvsgt (x!47308 lt!228269) #b01111111111111111111111111111110) (bvslt lt!228278 #b00000000000000000000000000000000) (bvsge lt!228278 (size!15906 a!3235)) (bvslt (index!18254 lt!228269) #b00000000000000000000000000000000) (bvsge (index!18254 lt!228269) (size!15906 a!3235)) (not (= lt!228269 (Intermediate!4016 false (index!18254 lt!228269) (x!47308 lt!228269))))))))

(assert (=> b!502145 (= (index!18254 lt!228269) i!1204)))

(declare-fun lt!228271 () Unit!15154)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32330 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15154)

(assert (=> b!502145 (= lt!228271 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228278 #b00000000000000000000000000000000 (index!18254 lt!228269) (x!47308 lt!228269) mask!3524))))

(assert (=> b!502145 (and (or (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228277 () Unit!15154)

(assert (=> b!502145 (= lt!228277 e!294136)))

(declare-fun c!59489 () Bool)

(assert (=> b!502145 (= c!59489 (= (select (arr!15542 a!3235) (index!18254 lt!228269)) (select (arr!15542 a!3235) j!176)))))

(assert (=> b!502145 (and (bvslt (x!47308 lt!228269) #b01111111111111111111111111111110) (or (= (select (arr!15542 a!3235) (index!18254 lt!228269)) (select (arr!15542 a!3235) j!176)) (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15542 a!3235) (index!18254 lt!228269)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502146 () Bool)

(declare-fun res!303725 () Bool)

(assert (=> b!502146 (=> (not res!303725) (not e!294129))))

(assert (=> b!502146 (= res!303725 (validKeyInArray!0 k!2280))))

(declare-fun b!502147 () Bool)

(assert (=> b!502147 (= e!294133 false)))

(declare-fun b!502148 () Bool)

(declare-fun res!303718 () Bool)

(assert (=> b!502148 (=> (not res!303718) (not e!294129))))

(assert (=> b!502148 (= res!303718 (and (= (size!15906 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15906 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15906 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502149 () Bool)

(assert (=> b!502149 (= e!294134 true)))

(declare-fun lt!228275 () SeekEntryResult!4016)

(assert (=> b!502149 (= lt!228275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228278 lt!228276 lt!228273 mask!3524))))

(declare-fun b!502150 () Bool)

(assert (=> b!502150 (= e!294130 (= (seekEntryOrOpen!0 (select (arr!15542 a!3235) j!176) a!3235 mask!3524) (Found!4016 j!176)))))

(declare-fun b!502151 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32330 (_ BitVec 32)) SeekEntryResult!4016)

(assert (=> b!502151 (= e!294131 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228278 (index!18254 lt!228269) (select (arr!15542 a!3235) j!176) a!3235 mask!3524) (Found!4016 j!176))))))

(assert (= (and start!45614 res!303724) b!502148))

(assert (= (and b!502148 res!303718) b!502139))

(assert (= (and b!502139 res!303726) b!502146))

(assert (= (and b!502146 res!303725) b!502142))

(assert (= (and b!502142 res!303716) b!502140))

(assert (= (and b!502140 res!303727) b!502135))

(assert (= (and b!502135 res!303714) b!502136))

(assert (= (and b!502136 res!303723) b!502137))

(assert (= (and b!502137 res!303722) b!502150))

(assert (= (and b!502137 (not res!303717)) b!502144))

(assert (= (and b!502144 (not res!303720)) b!502145))

(assert (= (and b!502145 c!59489) b!502141))

(assert (= (and b!502145 (not c!59489)) b!502138))

(assert (= (and b!502141 res!303721) b!502147))

(assert (= (and b!502145 (not res!303715)) b!502143))

(assert (= (and b!502143 res!303728) b!502151))

(assert (= (and b!502143 (not res!303719)) b!502149))

(declare-fun m!483117 () Bool)

(assert (=> b!502141 m!483117))

(declare-fun m!483119 () Bool)

(assert (=> b!502141 m!483119))

(declare-fun m!483121 () Bool)

(assert (=> b!502140 m!483121))

(assert (=> b!502149 m!483119))

(declare-fun m!483123 () Bool)

(assert (=> b!502135 m!483123))

(declare-fun m!483125 () Bool)

(assert (=> b!502142 m!483125))

(declare-fun m!483127 () Bool)

(assert (=> b!502151 m!483127))

(assert (=> b!502151 m!483127))

(declare-fun m!483129 () Bool)

(assert (=> b!502151 m!483129))

(assert (=> b!502150 m!483127))

(assert (=> b!502150 m!483127))

(declare-fun m!483131 () Bool)

(assert (=> b!502150 m!483131))

(declare-fun m!483133 () Bool)

(assert (=> b!502136 m!483133))

(assert (=> b!502139 m!483127))

(assert (=> b!502139 m!483127))

(declare-fun m!483135 () Bool)

(assert (=> b!502139 m!483135))

(declare-fun m!483137 () Bool)

(assert (=> b!502145 m!483137))

(declare-fun m!483139 () Bool)

(assert (=> b!502145 m!483139))

(assert (=> b!502145 m!483127))

(declare-fun m!483141 () Bool)

(assert (=> b!502146 m!483141))

(assert (=> b!502137 m!483127))

(declare-fun m!483143 () Bool)

(assert (=> b!502137 m!483143))

(declare-fun m!483145 () Bool)

(assert (=> b!502137 m!483145))

(declare-fun m!483147 () Bool)

(assert (=> b!502137 m!483147))

(declare-fun m!483149 () Bool)

(assert (=> b!502137 m!483149))

(assert (=> b!502137 m!483127))

(declare-fun m!483151 () Bool)

(assert (=> b!502137 m!483151))

(declare-fun m!483153 () Bool)

(assert (=> b!502137 m!483153))

(assert (=> b!502137 m!483127))

(declare-fun m!483155 () Bool)

(assert (=> b!502137 m!483155))

(declare-fun m!483157 () Bool)

(assert (=> b!502137 m!483157))

(declare-fun m!483159 () Bool)

(assert (=> start!45614 m!483159))

(declare-fun m!483161 () Bool)

(assert (=> start!45614 m!483161))

(push 1)

