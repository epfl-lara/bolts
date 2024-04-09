; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46230 () Bool)

(assert start!46230)

(declare-fun res!312408 () Bool)

(declare-fun e!298897 () Bool)

(assert (=> start!46230 (=> (not res!312408) (not e!298897))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46230 (= res!312408 (validMask!0 mask!3524))))

(assert (=> start!46230 e!298897))

(assert (=> start!46230 true))

(declare-datatypes ((array!32844 0))(
  ( (array!32845 (arr!15796 (Array (_ BitVec 32) (_ BitVec 64))) (size!16160 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32844)

(declare-fun array_inv!11570 (array!32844) Bool)

(assert (=> start!46230 (array_inv!11570 a!3235)))

(declare-fun b!511595 () Bool)

(declare-fun res!312413 () Bool)

(assert (=> b!511595 (=> (not res!312413) (not e!298897))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511595 (= res!312413 (and (= (size!16160 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16160 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16160 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511596 () Bool)

(declare-fun res!312416 () Bool)

(declare-fun e!298899 () Bool)

(assert (=> b!511596 (=> (not res!312416) (not e!298899))))

(declare-datatypes ((List!10007 0))(
  ( (Nil!10004) (Cons!10003 (h!10883 (_ BitVec 64)) (t!16243 List!10007)) )
))
(declare-fun arrayNoDuplicates!0 (array!32844 (_ BitVec 32) List!10007) Bool)

(assert (=> b!511596 (= res!312416 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10004))))

(declare-fun b!511597 () Bool)

(declare-fun res!312411 () Bool)

(assert (=> b!511597 (=> (not res!312411) (not e!298899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32844 (_ BitVec 32)) Bool)

(assert (=> b!511597 (= res!312411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511598 () Bool)

(declare-fun res!312410 () Bool)

(assert (=> b!511598 (=> (not res!312410) (not e!298897))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511598 (= res!312410 (validKeyInArray!0 k0!2280))))

(declare-fun b!511599 () Bool)

(declare-fun res!312414 () Bool)

(declare-fun e!298898 () Bool)

(assert (=> b!511599 (=> res!312414 e!298898)))

(declare-datatypes ((SeekEntryResult!4270 0))(
  ( (MissingZero!4270 (index!19268 (_ BitVec 32))) (Found!4270 (index!19269 (_ BitVec 32))) (Intermediate!4270 (undefined!5082 Bool) (index!19270 (_ BitVec 32)) (x!48248 (_ BitVec 32))) (Undefined!4270) (MissingVacant!4270 (index!19271 (_ BitVec 32))) )
))
(declare-fun lt!234158 () SeekEntryResult!4270)

(get-info :version)

(assert (=> b!511599 (= res!312414 (or (not ((_ is Intermediate!4270) lt!234158)) (not (undefined!5082 lt!234158))))))

(declare-fun b!511600 () Bool)

(assert (=> b!511600 (= e!298899 (not e!298898))))

(declare-fun res!312415 () Bool)

(assert (=> b!511600 (=> res!312415 e!298898)))

(declare-fun lt!234153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32844 (_ BitVec 32)) SeekEntryResult!4270)

(assert (=> b!511600 (= res!312415 (= lt!234158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234153 (select (store (arr!15796 a!3235) i!1204 k0!2280) j!176) (array!32845 (store (arr!15796 a!3235) i!1204 k0!2280) (size!16160 a!3235)) mask!3524)))))

(declare-fun lt!234155 () (_ BitVec 32))

(assert (=> b!511600 (= lt!234158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234155 (select (arr!15796 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511600 (= lt!234153 (toIndex!0 (select (store (arr!15796 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511600 (= lt!234155 (toIndex!0 (select (arr!15796 a!3235) j!176) mask!3524))))

(declare-fun lt!234157 () SeekEntryResult!4270)

(assert (=> b!511600 (= lt!234157 (Found!4270 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32844 (_ BitVec 32)) SeekEntryResult!4270)

(assert (=> b!511600 (= lt!234157 (seekEntryOrOpen!0 (select (arr!15796 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511600 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15790 0))(
  ( (Unit!15791) )
))
(declare-fun lt!234156 () Unit!15790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15790)

(assert (=> b!511600 (= lt!234156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511601 () Bool)

(assert (=> b!511601 (= e!298898 true)))

(assert (=> b!511601 (= lt!234157 Undefined!4270)))

(declare-fun b!511602 () Bool)

(declare-fun res!312409 () Bool)

(assert (=> b!511602 (=> (not res!312409) (not e!298897))))

(declare-fun arrayContainsKey!0 (array!32844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511602 (= res!312409 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511603 () Bool)

(assert (=> b!511603 (= e!298897 e!298899)))

(declare-fun res!312407 () Bool)

(assert (=> b!511603 (=> (not res!312407) (not e!298899))))

(declare-fun lt!234154 () SeekEntryResult!4270)

(assert (=> b!511603 (= res!312407 (or (= lt!234154 (MissingZero!4270 i!1204)) (= lt!234154 (MissingVacant!4270 i!1204))))))

(assert (=> b!511603 (= lt!234154 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511604 () Bool)

(declare-fun res!312412 () Bool)

(assert (=> b!511604 (=> (not res!312412) (not e!298897))))

(assert (=> b!511604 (= res!312412 (validKeyInArray!0 (select (arr!15796 a!3235) j!176)))))

(assert (= (and start!46230 res!312408) b!511595))

(assert (= (and b!511595 res!312413) b!511604))

(assert (= (and b!511604 res!312412) b!511598))

(assert (= (and b!511598 res!312410) b!511602))

(assert (= (and b!511602 res!312409) b!511603))

(assert (= (and b!511603 res!312407) b!511597))

(assert (= (and b!511597 res!312411) b!511596))

(assert (= (and b!511596 res!312416) b!511600))

(assert (= (and b!511600 (not res!312415)) b!511599))

(assert (= (and b!511599 (not res!312414)) b!511601))

(declare-fun m!493159 () Bool)

(assert (=> b!511598 m!493159))

(declare-fun m!493161 () Bool)

(assert (=> b!511603 m!493161))

(declare-fun m!493163 () Bool)

(assert (=> b!511604 m!493163))

(assert (=> b!511604 m!493163))

(declare-fun m!493165 () Bool)

(assert (=> b!511604 m!493165))

(declare-fun m!493167 () Bool)

(assert (=> start!46230 m!493167))

(declare-fun m!493169 () Bool)

(assert (=> start!46230 m!493169))

(declare-fun m!493171 () Bool)

(assert (=> b!511597 m!493171))

(declare-fun m!493173 () Bool)

(assert (=> b!511602 m!493173))

(declare-fun m!493175 () Bool)

(assert (=> b!511600 m!493175))

(declare-fun m!493177 () Bool)

(assert (=> b!511600 m!493177))

(declare-fun m!493179 () Bool)

(assert (=> b!511600 m!493179))

(declare-fun m!493181 () Bool)

(assert (=> b!511600 m!493181))

(assert (=> b!511600 m!493175))

(assert (=> b!511600 m!493163))

(declare-fun m!493183 () Bool)

(assert (=> b!511600 m!493183))

(assert (=> b!511600 m!493163))

(declare-fun m!493185 () Bool)

(assert (=> b!511600 m!493185))

(assert (=> b!511600 m!493163))

(declare-fun m!493187 () Bool)

(assert (=> b!511600 m!493187))

(assert (=> b!511600 m!493175))

(declare-fun m!493189 () Bool)

(assert (=> b!511600 m!493189))

(assert (=> b!511600 m!493163))

(declare-fun m!493191 () Bool)

(assert (=> b!511600 m!493191))

(declare-fun m!493193 () Bool)

(assert (=> b!511596 m!493193))

(check-sat (not start!46230) (not b!511604) (not b!511602) (not b!511597) (not b!511598) (not b!511603) (not b!511596) (not b!511600))
(check-sat)
