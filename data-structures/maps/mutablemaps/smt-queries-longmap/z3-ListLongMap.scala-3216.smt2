; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45054 () Bool)

(assert start!45054)

(declare-fun res!296838 () Bool)

(declare-fun e!290026 () Bool)

(assert (=> start!45054 (=> (not res!296838) (not e!290026))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45054 (= res!296838 (validMask!0 mask!3524))))

(assert (=> start!45054 e!290026))

(assert (=> start!45054 true))

(declare-datatypes ((array!31959 0))(
  ( (array!31960 (arr!15361 (Array (_ BitVec 32) (_ BitVec 64))) (size!15725 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31959)

(declare-fun array_inv!11135 (array!31959) Bool)

(assert (=> start!45054 (array_inv!11135 a!3235)))

(declare-fun b!494111 () Bool)

(declare-fun res!296832 () Bool)

(assert (=> b!494111 (=> (not res!296832) (not e!290026))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494111 (= res!296832 (validKeyInArray!0 (select (arr!15361 a!3235) j!176)))))

(declare-fun b!494112 () Bool)

(declare-fun res!296835 () Bool)

(declare-fun e!290025 () Bool)

(assert (=> b!494112 (=> (not res!296835) (not e!290025))))

(declare-datatypes ((List!9572 0))(
  ( (Nil!9569) (Cons!9568 (h!10436 (_ BitVec 64)) (t!15808 List!9572)) )
))
(declare-fun arrayNoDuplicates!0 (array!31959 (_ BitVec 32) List!9572) Bool)

(assert (=> b!494112 (= res!296835 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9569))))

(declare-fun b!494113 () Bool)

(declare-fun e!290023 () Bool)

(assert (=> b!494113 (= e!290023 true)))

(declare-datatypes ((SeekEntryResult!3835 0))(
  ( (MissingZero!3835 (index!17519 (_ BitVec 32))) (Found!3835 (index!17520 (_ BitVec 32))) (Intermediate!3835 (undefined!4647 Bool) (index!17521 (_ BitVec 32)) (x!46620 (_ BitVec 32))) (Undefined!3835) (MissingVacant!3835 (index!17522 (_ BitVec 32))) )
))
(declare-fun lt!223653 () SeekEntryResult!3835)

(assert (=> b!494113 (= lt!223653 Undefined!3835)))

(declare-fun b!494114 () Bool)

(declare-fun res!296836 () Bool)

(assert (=> b!494114 (=> (not res!296836) (not e!290025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31959 (_ BitVec 32)) Bool)

(assert (=> b!494114 (= res!296836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494115 () Bool)

(declare-fun res!296839 () Bool)

(assert (=> b!494115 (=> res!296839 e!290023)))

(declare-fun lt!223655 () SeekEntryResult!3835)

(get-info :version)

(assert (=> b!494115 (= res!296839 (or (not ((_ is Intermediate!3835) lt!223655)) (not (undefined!4647 lt!223655))))))

(declare-fun b!494116 () Bool)

(declare-fun res!296837 () Bool)

(assert (=> b!494116 (=> (not res!296837) (not e!290026))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494116 (= res!296837 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494117 () Bool)

(declare-fun res!296833 () Bool)

(assert (=> b!494117 (=> (not res!296833) (not e!290026))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494117 (= res!296833 (and (= (size!15725 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15725 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15725 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494118 () Bool)

(assert (=> b!494118 (= e!290025 (not e!290023))))

(declare-fun res!296831 () Bool)

(assert (=> b!494118 (=> res!296831 e!290023)))

(declare-fun lt!223658 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31959 (_ BitVec 32)) SeekEntryResult!3835)

(assert (=> b!494118 (= res!296831 (= lt!223655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223658 (select (store (arr!15361 a!3235) i!1204 k0!2280) j!176) (array!31960 (store (arr!15361 a!3235) i!1204 k0!2280) (size!15725 a!3235)) mask!3524)))))

(declare-fun lt!223656 () (_ BitVec 32))

(assert (=> b!494118 (= lt!223655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223656 (select (arr!15361 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494118 (= lt!223658 (toIndex!0 (select (store (arr!15361 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494118 (= lt!223656 (toIndex!0 (select (arr!15361 a!3235) j!176) mask!3524))))

(assert (=> b!494118 (= lt!223653 (Found!3835 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31959 (_ BitVec 32)) SeekEntryResult!3835)

(assert (=> b!494118 (= lt!223653 (seekEntryOrOpen!0 (select (arr!15361 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494118 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14608 0))(
  ( (Unit!14609) )
))
(declare-fun lt!223657 () Unit!14608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14608)

(assert (=> b!494118 (= lt!223657 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494119 () Bool)

(declare-fun res!296840 () Bool)

(assert (=> b!494119 (=> (not res!296840) (not e!290026))))

(assert (=> b!494119 (= res!296840 (validKeyInArray!0 k0!2280))))

(declare-fun b!494120 () Bool)

(assert (=> b!494120 (= e!290026 e!290025)))

(declare-fun res!296834 () Bool)

(assert (=> b!494120 (=> (not res!296834) (not e!290025))))

(declare-fun lt!223654 () SeekEntryResult!3835)

(assert (=> b!494120 (= res!296834 (or (= lt!223654 (MissingZero!3835 i!1204)) (= lt!223654 (MissingVacant!3835 i!1204))))))

(assert (=> b!494120 (= lt!223654 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45054 res!296838) b!494117))

(assert (= (and b!494117 res!296833) b!494111))

(assert (= (and b!494111 res!296832) b!494119))

(assert (= (and b!494119 res!296840) b!494116))

(assert (= (and b!494116 res!296837) b!494120))

(assert (= (and b!494120 res!296834) b!494114))

(assert (= (and b!494114 res!296836) b!494112))

(assert (= (and b!494112 res!296835) b!494118))

(assert (= (and b!494118 (not res!296831)) b!494115))

(assert (= (and b!494115 (not res!296839)) b!494113))

(declare-fun m!475165 () Bool)

(assert (=> start!45054 m!475165))

(declare-fun m!475167 () Bool)

(assert (=> start!45054 m!475167))

(declare-fun m!475169 () Bool)

(assert (=> b!494118 m!475169))

(declare-fun m!475171 () Bool)

(assert (=> b!494118 m!475171))

(declare-fun m!475173 () Bool)

(assert (=> b!494118 m!475173))

(declare-fun m!475175 () Bool)

(assert (=> b!494118 m!475175))

(declare-fun m!475177 () Bool)

(assert (=> b!494118 m!475177))

(assert (=> b!494118 m!475175))

(declare-fun m!475179 () Bool)

(assert (=> b!494118 m!475179))

(assert (=> b!494118 m!475175))

(declare-fun m!475181 () Bool)

(assert (=> b!494118 m!475181))

(assert (=> b!494118 m!475175))

(declare-fun m!475183 () Bool)

(assert (=> b!494118 m!475183))

(assert (=> b!494118 m!475173))

(declare-fun m!475185 () Bool)

(assert (=> b!494118 m!475185))

(assert (=> b!494118 m!475173))

(declare-fun m!475187 () Bool)

(assert (=> b!494118 m!475187))

(declare-fun m!475189 () Bool)

(assert (=> b!494112 m!475189))

(declare-fun m!475191 () Bool)

(assert (=> b!494114 m!475191))

(assert (=> b!494111 m!475175))

(assert (=> b!494111 m!475175))

(declare-fun m!475193 () Bool)

(assert (=> b!494111 m!475193))

(declare-fun m!475195 () Bool)

(assert (=> b!494120 m!475195))

(declare-fun m!475197 () Bool)

(assert (=> b!494116 m!475197))

(declare-fun m!475199 () Bool)

(assert (=> b!494119 m!475199))

(check-sat (not b!494120) (not b!494111) (not start!45054) (not b!494116) (not b!494119) (not b!494114) (not b!494112) (not b!494118))
(check-sat)
