; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45658 () Bool)

(assert start!45658)

(declare-fun b!503257 () Bool)

(declare-fun e!294725 () Bool)

(declare-fun e!294722 () Bool)

(assert (=> b!503257 (= e!294725 (not e!294722))))

(declare-fun res!304713 () Bool)

(assert (=> b!503257 (=> res!304713 e!294722)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228994 () (_ BitVec 32))

(declare-fun lt!229000 () (_ BitVec 64))

(declare-datatypes ((array!32374 0))(
  ( (array!32375 (arr!15564 (Array (_ BitVec 32) (_ BitVec 64))) (size!15928 (_ BitVec 32))) )
))
(declare-fun lt!229001 () array!32374)

(declare-datatypes ((SeekEntryResult!4038 0))(
  ( (MissingZero!4038 (index!18340 (_ BitVec 32))) (Found!4038 (index!18341 (_ BitVec 32))) (Intermediate!4038 (undefined!4850 Bool) (index!18342 (_ BitVec 32)) (x!47394 (_ BitVec 32))) (Undefined!4038) (MissingVacant!4038 (index!18343 (_ BitVec 32))) )
))
(declare-fun lt!229004 () SeekEntryResult!4038)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32374 (_ BitVec 32)) SeekEntryResult!4038)

(assert (=> b!503257 (= res!304713 (= lt!229004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228994 lt!229000 lt!229001 mask!3524)))))

(declare-fun a!3235 () array!32374)

(declare-fun lt!228999 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503257 (= lt!229004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228999 (select (arr!15564 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503257 (= lt!228994 (toIndex!0 lt!229000 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503257 (= lt!229000 (select (store (arr!15564 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503257 (= lt!228999 (toIndex!0 (select (arr!15564 a!3235) j!176) mask!3524))))

(assert (=> b!503257 (= lt!229001 (array!32375 (store (arr!15564 a!3235) i!1204 k!2280) (size!15928 a!3235)))))

(declare-fun e!294726 () Bool)

(assert (=> b!503257 e!294726))

(declare-fun res!304704 () Bool)

(assert (=> b!503257 (=> (not res!304704) (not e!294726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32374 (_ BitVec 32)) Bool)

(assert (=> b!503257 (= res!304704 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15242 0))(
  ( (Unit!15243) )
))
(declare-fun lt!229002 () Unit!15242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15242)

(assert (=> b!503257 (= lt!229002 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503258 () Bool)

(declare-fun res!304709 () Bool)

(declare-fun e!294723 () Bool)

(assert (=> b!503258 (=> res!304709 e!294723)))

(declare-fun e!294728 () Bool)

(assert (=> b!503258 (= res!304709 e!294728)))

(declare-fun res!304711 () Bool)

(assert (=> b!503258 (=> (not res!304711) (not e!294728))))

(assert (=> b!503258 (= res!304711 (bvsgt #b00000000000000000000000000000000 (x!47394 lt!229004)))))

(declare-fun b!503259 () Bool)

(declare-fun res!304714 () Bool)

(declare-fun e!294729 () Bool)

(assert (=> b!503259 (=> (not res!304714) (not e!294729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503259 (= res!304714 (validKeyInArray!0 (select (arr!15564 a!3235) j!176)))))

(declare-fun b!503260 () Bool)

(assert (=> b!503260 (= e!294723 true)))

(declare-fun lt!229003 () SeekEntryResult!4038)

(assert (=> b!503260 (= lt!229003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228999 lt!229000 lt!229001 mask!3524))))

(declare-fun b!503262 () Bool)

(declare-fun res!304712 () Bool)

(assert (=> b!503262 (=> (not res!304712) (not e!294729))))

(declare-fun arrayContainsKey!0 (array!32374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503262 (= res!304712 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503263 () Bool)

(assert (=> b!503263 (= e!294729 e!294725)))

(declare-fun res!304708 () Bool)

(assert (=> b!503263 (=> (not res!304708) (not e!294725))))

(declare-fun lt!228996 () SeekEntryResult!4038)

(assert (=> b!503263 (= res!304708 (or (= lt!228996 (MissingZero!4038 i!1204)) (= lt!228996 (MissingVacant!4038 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32374 (_ BitVec 32)) SeekEntryResult!4038)

(assert (=> b!503263 (= lt!228996 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503264 () Bool)

(declare-fun res!304715 () Bool)

(assert (=> b!503264 (=> (not res!304715) (not e!294729))))

(assert (=> b!503264 (= res!304715 (validKeyInArray!0 k!2280))))

(declare-fun b!503265 () Bool)

(declare-fun res!304717 () Bool)

(assert (=> b!503265 (=> (not res!304717) (not e!294725))))

(assert (=> b!503265 (= res!304717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503266 () Bool)

(assert (=> b!503266 (= e!294722 e!294723)))

(declare-fun res!304706 () Bool)

(assert (=> b!503266 (=> res!304706 e!294723)))

(assert (=> b!503266 (= res!304706 (or (bvsgt (x!47394 lt!229004) #b01111111111111111111111111111110) (bvslt lt!228999 #b00000000000000000000000000000000) (bvsge lt!228999 (size!15928 a!3235)) (bvslt (index!18342 lt!229004) #b00000000000000000000000000000000) (bvsge (index!18342 lt!229004) (size!15928 a!3235)) (not (= lt!229004 (Intermediate!4038 false (index!18342 lt!229004) (x!47394 lt!229004))))))))

(assert (=> b!503266 (= (index!18342 lt!229004) i!1204)))

(declare-fun lt!228997 () Unit!15242)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32374 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15242)

(assert (=> b!503266 (= lt!228997 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228999 #b00000000000000000000000000000000 (index!18342 lt!229004) (x!47394 lt!229004) mask!3524))))

(assert (=> b!503266 (and (or (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228995 () Unit!15242)

(declare-fun e!294724 () Unit!15242)

(assert (=> b!503266 (= lt!228995 e!294724)))

(declare-fun c!59555 () Bool)

(assert (=> b!503266 (= c!59555 (= (select (arr!15564 a!3235) (index!18342 lt!229004)) (select (arr!15564 a!3235) j!176)))))

(assert (=> b!503266 (and (bvslt (x!47394 lt!229004) #b01111111111111111111111111111110) (or (= (select (arr!15564 a!3235) (index!18342 lt!229004)) (select (arr!15564 a!3235) j!176)) (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15564 a!3235) (index!18342 lt!229004)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503267 () Bool)

(declare-fun Unit!15244 () Unit!15242)

(assert (=> b!503267 (= e!294724 Unit!15244)))

(declare-fun lt!228998 () Unit!15242)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32374 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15242)

(assert (=> b!503267 (= lt!228998 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228999 #b00000000000000000000000000000000 (index!18342 lt!229004) (x!47394 lt!229004) mask!3524))))

(declare-fun res!304718 () Bool)

(assert (=> b!503267 (= res!304718 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228999 lt!229000 lt!229001 mask!3524) (Intermediate!4038 false (index!18342 lt!229004) (x!47394 lt!229004))))))

(declare-fun e!294730 () Bool)

(assert (=> b!503267 (=> (not res!304718) (not e!294730))))

(assert (=> b!503267 e!294730))

(declare-fun b!503268 () Bool)

(declare-fun res!304716 () Bool)

(assert (=> b!503268 (=> res!304716 e!294722)))

(assert (=> b!503268 (= res!304716 (or (undefined!4850 lt!229004) (not (is-Intermediate!4038 lt!229004))))))

(declare-fun b!503269 () Bool)

(declare-fun res!304710 () Bool)

(assert (=> b!503269 (=> (not res!304710) (not e!294725))))

(declare-datatypes ((List!9775 0))(
  ( (Nil!9772) (Cons!9771 (h!10648 (_ BitVec 64)) (t!16011 List!9775)) )
))
(declare-fun arrayNoDuplicates!0 (array!32374 (_ BitVec 32) List!9775) Bool)

(assert (=> b!503269 (= res!304710 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9772))))

(declare-fun b!503270 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32374 (_ BitVec 32)) SeekEntryResult!4038)

(assert (=> b!503270 (= e!294728 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228999 (index!18342 lt!229004) (select (arr!15564 a!3235) j!176) a!3235 mask!3524) (Found!4038 j!176))))))

(declare-fun b!503271 () Bool)

(assert (=> b!503271 (= e!294726 (= (seekEntryOrOpen!0 (select (arr!15564 a!3235) j!176) a!3235 mask!3524) (Found!4038 j!176)))))

(declare-fun res!304705 () Bool)

(assert (=> start!45658 (=> (not res!304705) (not e!294729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45658 (= res!304705 (validMask!0 mask!3524))))

(assert (=> start!45658 e!294729))

(assert (=> start!45658 true))

(declare-fun array_inv!11338 (array!32374) Bool)

(assert (=> start!45658 (array_inv!11338 a!3235)))

(declare-fun b!503261 () Bool)

(declare-fun Unit!15245 () Unit!15242)

(assert (=> b!503261 (= e!294724 Unit!15245)))

(declare-fun b!503272 () Bool)

(assert (=> b!503272 (= e!294730 false)))

(declare-fun b!503273 () Bool)

(declare-fun res!304707 () Bool)

(assert (=> b!503273 (=> (not res!304707) (not e!294729))))

(assert (=> b!503273 (= res!304707 (and (= (size!15928 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15928 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15928 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45658 res!304705) b!503273))

(assert (= (and b!503273 res!304707) b!503259))

(assert (= (and b!503259 res!304714) b!503264))

(assert (= (and b!503264 res!304715) b!503262))

(assert (= (and b!503262 res!304712) b!503263))

(assert (= (and b!503263 res!304708) b!503265))

(assert (= (and b!503265 res!304717) b!503269))

(assert (= (and b!503269 res!304710) b!503257))

(assert (= (and b!503257 res!304704) b!503271))

(assert (= (and b!503257 (not res!304713)) b!503268))

(assert (= (and b!503268 (not res!304716)) b!503266))

(assert (= (and b!503266 c!59555) b!503267))

(assert (= (and b!503266 (not c!59555)) b!503261))

(assert (= (and b!503267 res!304718) b!503272))

(assert (= (and b!503266 (not res!304706)) b!503258))

(assert (= (and b!503258 res!304711) b!503270))

(assert (= (and b!503258 (not res!304709)) b!503260))

(declare-fun m!484129 () Bool)

(assert (=> b!503267 m!484129))

(declare-fun m!484131 () Bool)

(assert (=> b!503267 m!484131))

(declare-fun m!484133 () Bool)

(assert (=> b!503257 m!484133))

(declare-fun m!484135 () Bool)

(assert (=> b!503257 m!484135))

(declare-fun m!484137 () Bool)

(assert (=> b!503257 m!484137))

(declare-fun m!484139 () Bool)

(assert (=> b!503257 m!484139))

(declare-fun m!484141 () Bool)

(assert (=> b!503257 m!484141))

(declare-fun m!484143 () Bool)

(assert (=> b!503257 m!484143))

(declare-fun m!484145 () Bool)

(assert (=> b!503257 m!484145))

(assert (=> b!503257 m!484143))

(declare-fun m!484147 () Bool)

(assert (=> b!503257 m!484147))

(assert (=> b!503257 m!484143))

(declare-fun m!484149 () Bool)

(assert (=> b!503257 m!484149))

(declare-fun m!484151 () Bool)

(assert (=> b!503263 m!484151))

(declare-fun m!484153 () Bool)

(assert (=> b!503262 m!484153))

(assert (=> b!503260 m!484131))

(declare-fun m!484155 () Bool)

(assert (=> b!503264 m!484155))

(assert (=> b!503270 m!484143))

(assert (=> b!503270 m!484143))

(declare-fun m!484157 () Bool)

(assert (=> b!503270 m!484157))

(assert (=> b!503271 m!484143))

(assert (=> b!503271 m!484143))

(declare-fun m!484159 () Bool)

(assert (=> b!503271 m!484159))

(declare-fun m!484161 () Bool)

(assert (=> b!503266 m!484161))

(declare-fun m!484163 () Bool)

(assert (=> b!503266 m!484163))

(assert (=> b!503266 m!484143))

(declare-fun m!484165 () Bool)

(assert (=> start!45658 m!484165))

(declare-fun m!484167 () Bool)

(assert (=> start!45658 m!484167))

(declare-fun m!484169 () Bool)

(assert (=> b!503265 m!484169))

(declare-fun m!484171 () Bool)

(assert (=> b!503269 m!484171))

(assert (=> b!503259 m!484143))

(assert (=> b!503259 m!484143))

(declare-fun m!484173 () Bool)

(assert (=> b!503259 m!484173))

(push 1)

