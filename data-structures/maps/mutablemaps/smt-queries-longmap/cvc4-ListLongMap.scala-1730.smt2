; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31840 () Bool)

(assert start!31840)

(declare-fun b!317979 () Bool)

(declare-fun res!172725 () Bool)

(declare-fun e!197627 () Bool)

(assert (=> b!317979 (=> (not res!172725) (not e!197627))))

(declare-datatypes ((array!16209 0))(
  ( (array!16210 (arr!7668 (Array (_ BitVec 32) (_ BitVec 64))) (size!8020 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16209)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317979 (= res!172725 (and (= (size!8020 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8020 a!3293))))))

(declare-fun res!172717 () Bool)

(assert (=> start!31840 (=> (not res!172717) (not e!197627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31840 (= res!172717 (validMask!0 mask!3709))))

(assert (=> start!31840 e!197627))

(declare-fun array_inv!5622 (array!16209) Bool)

(assert (=> start!31840 (array_inv!5622 a!3293)))

(assert (=> start!31840 true))

(declare-fun b!317980 () Bool)

(declare-fun lt!155209 () array!16209)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun e!197629 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155210 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2819 0))(
  ( (MissingZero!2819 (index!13452 (_ BitVec 32))) (Found!2819 (index!13453 (_ BitVec 32))) (Intermediate!2819 (undefined!3631 Bool) (index!13454 (_ BitVec 32)) (x!31671 (_ BitVec 32))) (Undefined!2819) (MissingVacant!2819 (index!13455 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16209 (_ BitVec 32)) SeekEntryResult!2819)

(assert (=> b!317980 (= e!197629 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155209 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155210 k!2441 lt!155209 mask!3709)))))

(assert (=> b!317980 (= lt!155209 (array!16210 (store (arr!7668 a!3293) i!1240 k!2441) (size!8020 a!3293)))))

(declare-fun b!317981 () Bool)

(declare-fun res!172721 () Bool)

(assert (=> b!317981 (=> (not res!172721) (not e!197627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16209 (_ BitVec 32)) Bool)

(assert (=> b!317981 (= res!172721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317982 () Bool)

(declare-fun res!172724 () Bool)

(assert (=> b!317982 (=> (not res!172724) (not e!197627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317982 (= res!172724 (validKeyInArray!0 k!2441))))

(declare-fun b!317983 () Bool)

(declare-fun res!172716 () Bool)

(assert (=> b!317983 (=> (not res!172716) (not e!197627))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16209 (_ BitVec 32)) SeekEntryResult!2819)

(assert (=> b!317983 (= res!172716 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2819 i!1240)))))

(declare-fun b!317984 () Bool)

(declare-fun e!197625 () Bool)

(assert (=> b!317984 (= e!197627 e!197625)))

(declare-fun res!172723 () Bool)

(assert (=> b!317984 (=> (not res!172723) (not e!197625))))

(declare-fun lt!155207 () SeekEntryResult!2819)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317984 (= res!172723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155207))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317984 (= lt!155207 (Intermediate!2819 false resIndex!52 resX!52))))

(declare-fun b!317985 () Bool)

(declare-fun e!197628 () Bool)

(assert (=> b!317985 (= e!197628 (not true))))

(assert (=> b!317985 e!197629))

(declare-fun res!172720 () Bool)

(assert (=> b!317985 (=> (not res!172720) (not e!197629))))

(declare-fun lt!155208 () SeekEntryResult!2819)

(assert (=> b!317985 (= res!172720 (= lt!155208 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155210 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317985 (= lt!155210 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317986 () Bool)

(declare-fun res!172719 () Bool)

(assert (=> b!317986 (=> (not res!172719) (not e!197627))))

(declare-fun arrayContainsKey!0 (array!16209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317986 (= res!172719 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317987 () Bool)

(assert (=> b!317987 (= e!197625 e!197628)))

(declare-fun res!172718 () Bool)

(assert (=> b!317987 (=> (not res!172718) (not e!197628))))

(assert (=> b!317987 (= res!172718 (and (= lt!155208 lt!155207) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7668 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317987 (= lt!155208 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317988 () Bool)

(declare-fun res!172722 () Bool)

(assert (=> b!317988 (=> (not res!172722) (not e!197625))))

(assert (=> b!317988 (= res!172722 (and (= (select (arr!7668 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8020 a!3293))))))

(assert (= (and start!31840 res!172717) b!317979))

(assert (= (and b!317979 res!172725) b!317982))

(assert (= (and b!317982 res!172724) b!317986))

(assert (= (and b!317986 res!172719) b!317983))

(assert (= (and b!317983 res!172716) b!317981))

(assert (= (and b!317981 res!172721) b!317984))

(assert (= (and b!317984 res!172723) b!317988))

(assert (= (and b!317988 res!172722) b!317987))

(assert (= (and b!317987 res!172718) b!317985))

(assert (= (and b!317985 res!172720) b!317980))

(declare-fun m!326705 () Bool)

(assert (=> b!317983 m!326705))

(declare-fun m!326707 () Bool)

(assert (=> b!317984 m!326707))

(assert (=> b!317984 m!326707))

(declare-fun m!326709 () Bool)

(assert (=> b!317984 m!326709))

(declare-fun m!326711 () Bool)

(assert (=> b!317980 m!326711))

(declare-fun m!326713 () Bool)

(assert (=> b!317980 m!326713))

(declare-fun m!326715 () Bool)

(assert (=> b!317980 m!326715))

(declare-fun m!326717 () Bool)

(assert (=> b!317982 m!326717))

(declare-fun m!326719 () Bool)

(assert (=> b!317986 m!326719))

(declare-fun m!326721 () Bool)

(assert (=> b!317985 m!326721))

(declare-fun m!326723 () Bool)

(assert (=> b!317985 m!326723))

(declare-fun m!326725 () Bool)

(assert (=> start!31840 m!326725))

(declare-fun m!326727 () Bool)

(assert (=> start!31840 m!326727))

(declare-fun m!326729 () Bool)

(assert (=> b!317987 m!326729))

(declare-fun m!326731 () Bool)

(assert (=> b!317987 m!326731))

(declare-fun m!326733 () Bool)

(assert (=> b!317988 m!326733))

(declare-fun m!326735 () Bool)

(assert (=> b!317981 m!326735))

(push 1)

(assert (not b!317982))

(assert (not b!317985))

