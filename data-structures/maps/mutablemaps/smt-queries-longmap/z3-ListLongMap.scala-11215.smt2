; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130956 () Bool)

(assert start!130956)

(declare-fun b!1535566 () Bool)

(declare-fun res!1052792 () Bool)

(declare-fun e!854826 () Bool)

(assert (=> b!1535566 (=> (not res!1052792) (not e!854826))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101981 0))(
  ( (array!101982 (arr!49202 (Array (_ BitVec 32) (_ BitVec 64))) (size!49753 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101981)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13357 0))(
  ( (MissingZero!13357 (index!55822 (_ BitVec 32))) (Found!13357 (index!55823 (_ BitVec 32))) (Intermediate!13357 (undefined!14169 Bool) (index!55824 (_ BitVec 32)) (x!137570 (_ BitVec 32))) (Undefined!13357) (MissingVacant!13357 (index!55825 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101981 (_ BitVec 32)) SeekEntryResult!13357)

(assert (=> b!1535566 (= res!1052792 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49202 a!2792) j!64) a!2792 mask!2480) (Found!13357 j!64)))))

(declare-fun b!1535567 () Bool)

(declare-fun res!1052797 () Bool)

(assert (=> b!1535567 (=> (not res!1052797) (not e!854826))))

(declare-datatypes ((List!35856 0))(
  ( (Nil!35853) (Cons!35852 (h!37298 (_ BitVec 64)) (t!50557 List!35856)) )
))
(declare-fun arrayNoDuplicates!0 (array!101981 (_ BitVec 32) List!35856) Bool)

(assert (=> b!1535567 (= res!1052797 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35853))))

(declare-fun b!1535568 () Bool)

(declare-fun res!1052796 () Bool)

(assert (=> b!1535568 (=> (not res!1052796) (not e!854826))))

(assert (=> b!1535568 (= res!1052796 (not (= (select (arr!49202 a!2792) index!463) (select (arr!49202 a!2792) j!64))))))

(declare-fun b!1535569 () Bool)

(declare-fun res!1052799 () Bool)

(assert (=> b!1535569 (=> (not res!1052799) (not e!854826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535569 (= res!1052799 (validKeyInArray!0 (select (arr!49202 a!2792) j!64)))))

(declare-fun res!1052791 () Bool)

(assert (=> start!130956 (=> (not res!1052791) (not e!854826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130956 (= res!1052791 (validMask!0 mask!2480))))

(assert (=> start!130956 e!854826))

(assert (=> start!130956 true))

(declare-fun array_inv!38147 (array!101981) Bool)

(assert (=> start!130956 (array_inv!38147 a!2792)))

(declare-fun b!1535570 () Bool)

(declare-fun res!1052793 () Bool)

(assert (=> b!1535570 (=> (not res!1052793) (not e!854826))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535570 (= res!1052793 (validKeyInArray!0 (select (arr!49202 a!2792) i!951)))))

(declare-fun b!1535571 () Bool)

(declare-fun e!854827 () Bool)

(assert (=> b!1535571 (= e!854826 e!854827)))

(declare-fun res!1052794 () Bool)

(assert (=> b!1535571 (=> (not res!1052794) (not e!854827))))

(declare-fun lt!664032 () (_ BitVec 32))

(assert (=> b!1535571 (= res!1052794 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664032 #b00000000000000000000000000000000) (bvslt lt!664032 (size!49753 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535571 (= lt!664032 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535572 () Bool)

(declare-fun res!1052795 () Bool)

(assert (=> b!1535572 (=> (not res!1052795) (not e!854826))))

(assert (=> b!1535572 (= res!1052795 (and (= (size!49753 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49753 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49753 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535573 () Bool)

(declare-fun res!1052798 () Bool)

(assert (=> b!1535573 (=> (not res!1052798) (not e!854826))))

(assert (=> b!1535573 (= res!1052798 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49753 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49753 a!2792)) (= (select (arr!49202 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535574 () Bool)

(declare-fun res!1052790 () Bool)

(assert (=> b!1535574 (=> (not res!1052790) (not e!854826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101981 (_ BitVec 32)) Bool)

(assert (=> b!1535574 (= res!1052790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535575 () Bool)

(assert (=> b!1535575 (= e!854827 false)))

(declare-fun lt!664033 () SeekEntryResult!13357)

(assert (=> b!1535575 (= lt!664033 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664032 vacantIndex!5 (select (arr!49202 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130956 res!1052791) b!1535572))

(assert (= (and b!1535572 res!1052795) b!1535570))

(assert (= (and b!1535570 res!1052793) b!1535569))

(assert (= (and b!1535569 res!1052799) b!1535574))

(assert (= (and b!1535574 res!1052790) b!1535567))

(assert (= (and b!1535567 res!1052797) b!1535573))

(assert (= (and b!1535573 res!1052798) b!1535566))

(assert (= (and b!1535566 res!1052792) b!1535568))

(assert (= (and b!1535568 res!1052796) b!1535571))

(assert (= (and b!1535571 res!1052794) b!1535575))

(declare-fun m!1418099 () Bool)

(assert (=> b!1535568 m!1418099))

(declare-fun m!1418101 () Bool)

(assert (=> b!1535568 m!1418101))

(declare-fun m!1418103 () Bool)

(assert (=> start!130956 m!1418103))

(declare-fun m!1418105 () Bool)

(assert (=> start!130956 m!1418105))

(assert (=> b!1535575 m!1418101))

(assert (=> b!1535575 m!1418101))

(declare-fun m!1418107 () Bool)

(assert (=> b!1535575 m!1418107))

(declare-fun m!1418109 () Bool)

(assert (=> b!1535570 m!1418109))

(assert (=> b!1535570 m!1418109))

(declare-fun m!1418111 () Bool)

(assert (=> b!1535570 m!1418111))

(assert (=> b!1535566 m!1418101))

(assert (=> b!1535566 m!1418101))

(declare-fun m!1418113 () Bool)

(assert (=> b!1535566 m!1418113))

(declare-fun m!1418115 () Bool)

(assert (=> b!1535573 m!1418115))

(assert (=> b!1535569 m!1418101))

(assert (=> b!1535569 m!1418101))

(declare-fun m!1418117 () Bool)

(assert (=> b!1535569 m!1418117))

(declare-fun m!1418119 () Bool)

(assert (=> b!1535574 m!1418119))

(declare-fun m!1418121 () Bool)

(assert (=> b!1535567 m!1418121))

(declare-fun m!1418123 () Bool)

(assert (=> b!1535571 m!1418123))

(check-sat (not b!1535570) (not b!1535566) (not b!1535575) (not b!1535567) (not start!130956) (not b!1535571) (not b!1535574) (not b!1535569))
