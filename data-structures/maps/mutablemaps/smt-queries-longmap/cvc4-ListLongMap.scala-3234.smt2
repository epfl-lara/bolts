; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45224 () Bool)

(assert start!45224)

(declare-fun b!496159 () Bool)

(declare-fun res!298697 () Bool)

(declare-fun e!290976 () Bool)

(assert (=> b!496159 (=> (not res!298697) (not e!290976))))

(declare-datatypes ((array!32072 0))(
  ( (array!32073 (arr!15416 (Array (_ BitVec 32) (_ BitVec 64))) (size!15780 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32072)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496159 (= res!298697 (validKeyInArray!0 (select (arr!15416 a!3235) j!176)))))

(declare-fun b!496160 () Bool)

(declare-fun res!298702 () Bool)

(assert (=> b!496160 (=> (not res!298702) (not e!290976))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496160 (= res!298702 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496161 () Bool)

(declare-fun res!298701 () Bool)

(assert (=> b!496161 (=> (not res!298701) (not e!290976))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496161 (= res!298701 (and (= (size!15780 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15780 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15780 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496162 () Bool)

(declare-fun e!290979 () Bool)

(declare-fun e!290980 () Bool)

(assert (=> b!496162 (= e!290979 (not e!290980))))

(declare-fun res!298696 () Bool)

(assert (=> b!496162 (=> res!298696 e!290980)))

(declare-datatypes ((SeekEntryResult!3890 0))(
  ( (MissingZero!3890 (index!17739 (_ BitVec 32))) (Found!3890 (index!17740 (_ BitVec 32))) (Intermediate!3890 (undefined!4702 Bool) (index!17741 (_ BitVec 32)) (x!46825 (_ BitVec 32))) (Undefined!3890) (MissingVacant!3890 (index!17742 (_ BitVec 32))) )
))
(declare-fun lt!224669 () SeekEntryResult!3890)

(declare-fun lt!224665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32072 (_ BitVec 32)) SeekEntryResult!3890)

(assert (=> b!496162 (= res!298696 (= lt!224669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224665 (select (store (arr!15416 a!3235) i!1204 k!2280) j!176) (array!32073 (store (arr!15416 a!3235) i!1204 k!2280) (size!15780 a!3235)) mask!3524)))))

(declare-fun lt!224666 () (_ BitVec 32))

(assert (=> b!496162 (= lt!224669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224666 (select (arr!15416 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496162 (= lt!224665 (toIndex!0 (select (store (arr!15416 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496162 (= lt!224666 (toIndex!0 (select (arr!15416 a!3235) j!176) mask!3524))))

(declare-fun e!290978 () Bool)

(assert (=> b!496162 e!290978))

(declare-fun res!298703 () Bool)

(assert (=> b!496162 (=> (not res!298703) (not e!290978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32072 (_ BitVec 32)) Bool)

(assert (=> b!496162 (= res!298703 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14718 0))(
  ( (Unit!14719) )
))
(declare-fun lt!224668 () Unit!14718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32072 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14718)

(assert (=> b!496162 (= lt!224668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496163 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32072 (_ BitVec 32)) SeekEntryResult!3890)

(assert (=> b!496163 (= e!290978 (= (seekEntryOrOpen!0 (select (arr!15416 a!3235) j!176) a!3235 mask!3524) (Found!3890 j!176)))))

(declare-fun b!496164 () Bool)

(assert (=> b!496164 (= e!290976 e!290979)))

(declare-fun res!298706 () Bool)

(assert (=> b!496164 (=> (not res!298706) (not e!290979))))

(declare-fun lt!224667 () SeekEntryResult!3890)

(assert (=> b!496164 (= res!298706 (or (= lt!224667 (MissingZero!3890 i!1204)) (= lt!224667 (MissingVacant!3890 i!1204))))))

(assert (=> b!496164 (= lt!224667 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496166 () Bool)

(assert (=> b!496166 (= e!290980 true)))

(assert (=> b!496166 (and (bvslt (x!46825 lt!224669) #b01111111111111111111111111111110) (or (= (select (arr!15416 a!3235) (index!17741 lt!224669)) (select (arr!15416 a!3235) j!176)) (= (select (arr!15416 a!3235) (index!17741 lt!224669)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15416 a!3235) (index!17741 lt!224669)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496167 () Bool)

(declare-fun res!298700 () Bool)

(assert (=> b!496167 (=> res!298700 e!290980)))

(assert (=> b!496167 (= res!298700 (or (undefined!4702 lt!224669) (not (is-Intermediate!3890 lt!224669))))))

(declare-fun b!496168 () Bool)

(declare-fun res!298704 () Bool)

(assert (=> b!496168 (=> (not res!298704) (not e!290979))))

(declare-datatypes ((List!9627 0))(
  ( (Nil!9624) (Cons!9623 (h!10494 (_ BitVec 64)) (t!15863 List!9627)) )
))
(declare-fun arrayNoDuplicates!0 (array!32072 (_ BitVec 32) List!9627) Bool)

(assert (=> b!496168 (= res!298704 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9624))))

(declare-fun b!496169 () Bool)

(declare-fun res!298698 () Bool)

(assert (=> b!496169 (=> (not res!298698) (not e!290979))))

(assert (=> b!496169 (= res!298698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496165 () Bool)

(declare-fun res!298699 () Bool)

(assert (=> b!496165 (=> (not res!298699) (not e!290976))))

(assert (=> b!496165 (= res!298699 (validKeyInArray!0 k!2280))))

(declare-fun res!298705 () Bool)

(assert (=> start!45224 (=> (not res!298705) (not e!290976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45224 (= res!298705 (validMask!0 mask!3524))))

(assert (=> start!45224 e!290976))

(assert (=> start!45224 true))

(declare-fun array_inv!11190 (array!32072) Bool)

(assert (=> start!45224 (array_inv!11190 a!3235)))

(assert (= (and start!45224 res!298705) b!496161))

(assert (= (and b!496161 res!298701) b!496159))

(assert (= (and b!496159 res!298697) b!496165))

(assert (= (and b!496165 res!298699) b!496160))

(assert (= (and b!496160 res!298702) b!496164))

(assert (= (and b!496164 res!298706) b!496169))

(assert (= (and b!496169 res!298698) b!496168))

(assert (= (and b!496168 res!298704) b!496162))

(assert (= (and b!496162 res!298703) b!496163))

(assert (= (and b!496162 (not res!298696)) b!496167))

(assert (= (and b!496167 (not res!298700)) b!496166))

(declare-fun m!477419 () Bool)

(assert (=> b!496165 m!477419))

(declare-fun m!477421 () Bool)

(assert (=> b!496166 m!477421))

(declare-fun m!477423 () Bool)

(assert (=> b!496166 m!477423))

(declare-fun m!477425 () Bool)

(assert (=> b!496164 m!477425))

(declare-fun m!477427 () Bool)

(assert (=> b!496168 m!477427))

(declare-fun m!477429 () Bool)

(assert (=> start!45224 m!477429))

(declare-fun m!477431 () Bool)

(assert (=> start!45224 m!477431))

(assert (=> b!496163 m!477423))

(assert (=> b!496163 m!477423))

(declare-fun m!477433 () Bool)

(assert (=> b!496163 m!477433))

(declare-fun m!477435 () Bool)

(assert (=> b!496169 m!477435))

(declare-fun m!477437 () Bool)

(assert (=> b!496160 m!477437))

(assert (=> b!496162 m!477423))

(declare-fun m!477439 () Bool)

(assert (=> b!496162 m!477439))

(declare-fun m!477441 () Bool)

(assert (=> b!496162 m!477441))

(declare-fun m!477443 () Bool)

(assert (=> b!496162 m!477443))

(declare-fun m!477445 () Bool)

(assert (=> b!496162 m!477445))

(assert (=> b!496162 m!477423))

(declare-fun m!477447 () Bool)

(assert (=> b!496162 m!477447))

(assert (=> b!496162 m!477445))

(declare-fun m!477449 () Bool)

(assert (=> b!496162 m!477449))

(assert (=> b!496162 m!477423))

(declare-fun m!477451 () Bool)

(assert (=> b!496162 m!477451))

(assert (=> b!496162 m!477445))

(declare-fun m!477453 () Bool)

(assert (=> b!496162 m!477453))

(assert (=> b!496159 m!477423))

(assert (=> b!496159 m!477423))

(declare-fun m!477455 () Bool)

(assert (=> b!496159 m!477455))

(push 1)

