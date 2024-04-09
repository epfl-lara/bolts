; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44688 () Bool)

(assert start!44688)

(declare-fun b!490050 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31707 0))(
  ( (array!31708 (arr!15238 (Array (_ BitVec 32) (_ BitVec 64))) (size!15602 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31707)

(declare-fun e!288112 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3712 0))(
  ( (MissingZero!3712 (index!17027 (_ BitVec 32))) (Found!3712 (index!17028 (_ BitVec 32))) (Intermediate!3712 (undefined!4524 Bool) (index!17029 (_ BitVec 32)) (x!46157 (_ BitVec 32))) (Undefined!3712) (MissingVacant!3712 (index!17030 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31707 (_ BitVec 32)) SeekEntryResult!3712)

(assert (=> b!490050 (= e!288112 (= (seekEntryOrOpen!0 (select (arr!15238 a!3235) j!176) a!3235 mask!3524) (Found!3712 j!176)))))

(declare-fun b!490051 () Bool)

(declare-fun res!293137 () Bool)

(declare-fun e!288114 () Bool)

(assert (=> b!490051 (=> (not res!293137) (not e!288114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490051 (= res!293137 (validKeyInArray!0 (select (arr!15238 a!3235) j!176)))))

(declare-fun b!490052 () Bool)

(declare-fun res!293142 () Bool)

(assert (=> b!490052 (=> (not res!293142) (not e!288114))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!490052 (= res!293142 (validKeyInArray!0 k0!2280))))

(declare-fun b!490053 () Bool)

(declare-fun res!293136 () Bool)

(declare-fun e!288113 () Bool)

(assert (=> b!490053 (=> (not res!293136) (not e!288113))))

(declare-datatypes ((List!9449 0))(
  ( (Nil!9446) (Cons!9445 (h!10307 (_ BitVec 64)) (t!15685 List!9449)) )
))
(declare-fun arrayNoDuplicates!0 (array!31707 (_ BitVec 32) List!9449) Bool)

(assert (=> b!490053 (= res!293136 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9446))))

(declare-fun b!490054 () Bool)

(declare-fun res!293144 () Bool)

(assert (=> b!490054 (=> (not res!293144) (not e!288114))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490054 (= res!293144 (and (= (size!15602 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15602 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15602 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490055 () Bool)

(assert (=> b!490055 (= e!288113 (not true))))

(declare-fun lt!221327 () (_ BitVec 32))

(declare-fun lt!221330 () SeekEntryResult!3712)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31707 (_ BitVec 32)) SeekEntryResult!3712)

(assert (=> b!490055 (= lt!221330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221327 (select (store (arr!15238 a!3235) i!1204 k0!2280) j!176) (array!31708 (store (arr!15238 a!3235) i!1204 k0!2280) (size!15602 a!3235)) mask!3524))))

(declare-fun lt!221328 () SeekEntryResult!3712)

(declare-fun lt!221326 () (_ BitVec 32))

(assert (=> b!490055 (= lt!221328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221326 (select (arr!15238 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490055 (= lt!221327 (toIndex!0 (select (store (arr!15238 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!490055 (= lt!221326 (toIndex!0 (select (arr!15238 a!3235) j!176) mask!3524))))

(assert (=> b!490055 e!288112))

(declare-fun res!293140 () Bool)

(assert (=> b!490055 (=> (not res!293140) (not e!288112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31707 (_ BitVec 32)) Bool)

(assert (=> b!490055 (= res!293140 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14362 0))(
  ( (Unit!14363) )
))
(declare-fun lt!221325 () Unit!14362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14362)

(assert (=> b!490055 (= lt!221325 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!293143 () Bool)

(assert (=> start!44688 (=> (not res!293143) (not e!288114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44688 (= res!293143 (validMask!0 mask!3524))))

(assert (=> start!44688 e!288114))

(assert (=> start!44688 true))

(declare-fun array_inv!11012 (array!31707) Bool)

(assert (=> start!44688 (array_inv!11012 a!3235)))

(declare-fun b!490056 () Bool)

(declare-fun res!293139 () Bool)

(assert (=> b!490056 (=> (not res!293139) (not e!288114))))

(declare-fun arrayContainsKey!0 (array!31707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490056 (= res!293139 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490057 () Bool)

(declare-fun res!293141 () Bool)

(assert (=> b!490057 (=> (not res!293141) (not e!288113))))

(assert (=> b!490057 (= res!293141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490058 () Bool)

(assert (=> b!490058 (= e!288114 e!288113)))

(declare-fun res!293138 () Bool)

(assert (=> b!490058 (=> (not res!293138) (not e!288113))))

(declare-fun lt!221329 () SeekEntryResult!3712)

(assert (=> b!490058 (= res!293138 (or (= lt!221329 (MissingZero!3712 i!1204)) (= lt!221329 (MissingVacant!3712 i!1204))))))

(assert (=> b!490058 (= lt!221329 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44688 res!293143) b!490054))

(assert (= (and b!490054 res!293144) b!490051))

(assert (= (and b!490051 res!293137) b!490052))

(assert (= (and b!490052 res!293142) b!490056))

(assert (= (and b!490056 res!293139) b!490058))

(assert (= (and b!490058 res!293138) b!490057))

(assert (= (and b!490057 res!293141) b!490053))

(assert (= (and b!490053 res!293136) b!490055))

(assert (= (and b!490055 res!293140) b!490050))

(declare-fun m!470131 () Bool)

(assert (=> b!490057 m!470131))

(declare-fun m!470133 () Bool)

(assert (=> b!490050 m!470133))

(assert (=> b!490050 m!470133))

(declare-fun m!470135 () Bool)

(assert (=> b!490050 m!470135))

(declare-fun m!470137 () Bool)

(assert (=> b!490052 m!470137))

(declare-fun m!470139 () Bool)

(assert (=> b!490058 m!470139))

(declare-fun m!470141 () Bool)

(assert (=> b!490053 m!470141))

(declare-fun m!470143 () Bool)

(assert (=> b!490056 m!470143))

(assert (=> b!490051 m!470133))

(assert (=> b!490051 m!470133))

(declare-fun m!470145 () Bool)

(assert (=> b!490051 m!470145))

(declare-fun m!470147 () Bool)

(assert (=> b!490055 m!470147))

(declare-fun m!470149 () Bool)

(assert (=> b!490055 m!470149))

(declare-fun m!470151 () Bool)

(assert (=> b!490055 m!470151))

(assert (=> b!490055 m!470133))

(declare-fun m!470153 () Bool)

(assert (=> b!490055 m!470153))

(assert (=> b!490055 m!470133))

(declare-fun m!470155 () Bool)

(assert (=> b!490055 m!470155))

(assert (=> b!490055 m!470133))

(declare-fun m!470157 () Bool)

(assert (=> b!490055 m!470157))

(assert (=> b!490055 m!470151))

(declare-fun m!470159 () Bool)

(assert (=> b!490055 m!470159))

(assert (=> b!490055 m!470151))

(declare-fun m!470161 () Bool)

(assert (=> b!490055 m!470161))

(declare-fun m!470163 () Bool)

(assert (=> start!44688 m!470163))

(declare-fun m!470165 () Bool)

(assert (=> start!44688 m!470165))

(check-sat (not b!490051) (not b!490053) (not b!490058) (not b!490050) (not b!490057) (not b!490056) (not b!490055) (not start!44688) (not b!490052))
(check-sat)
