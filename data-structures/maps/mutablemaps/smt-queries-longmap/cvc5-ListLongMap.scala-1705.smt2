; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31368 () Bool)

(assert start!31368)

(declare-fun res!170025 () Bool)

(declare-fun e!195706 () Bool)

(assert (=> start!31368 (=> (not res!170025) (not e!195706))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31368 (= res!170025 (validMask!0 mask!3709))))

(assert (=> start!31368 e!195706))

(declare-datatypes ((array!16037 0))(
  ( (array!16038 (arr!7591 (Array (_ BitVec 32) (_ BitVec 64))) (size!7943 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16037)

(declare-fun array_inv!5545 (array!16037) Bool)

(assert (=> start!31368 (array_inv!5545 a!3293)))

(assert (=> start!31368 true))

(declare-fun b!314117 () Bool)

(declare-fun res!170029 () Bool)

(assert (=> b!314117 (=> (not res!170029) (not e!195706))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314117 (= res!170029 (validKeyInArray!0 k!2441))))

(declare-fun b!314118 () Bool)

(declare-fun res!170026 () Bool)

(assert (=> b!314118 (=> (not res!170026) (not e!195706))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2742 0))(
  ( (MissingZero!2742 (index!13144 (_ BitVec 32))) (Found!2742 (index!13145 (_ BitVec 32))) (Intermediate!2742 (undefined!3554 Bool) (index!13146 (_ BitVec 32)) (x!31343 (_ BitVec 32))) (Undefined!2742) (MissingVacant!2742 (index!13147 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16037 (_ BitVec 32)) SeekEntryResult!2742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314118 (= res!170026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2742 false resIndex!52 resX!52)))))

(declare-fun b!314119 () Bool)

(assert (=> b!314119 (= e!195706 false)))

(declare-fun lt!153851 () SeekEntryResult!2742)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314119 (= lt!153851 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314120 () Bool)

(declare-fun res!170030 () Bool)

(assert (=> b!314120 (=> (not res!170030) (not e!195706))))

(declare-fun arrayContainsKey!0 (array!16037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314120 (= res!170030 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314121 () Bool)

(declare-fun res!170024 () Bool)

(assert (=> b!314121 (=> (not res!170024) (not e!195706))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16037 (_ BitVec 32)) SeekEntryResult!2742)

(assert (=> b!314121 (= res!170024 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2742 i!1240)))))

(declare-fun b!314122 () Bool)

(declare-fun res!170031 () Bool)

(assert (=> b!314122 (=> (not res!170031) (not e!195706))))

(assert (=> b!314122 (= res!170031 (and (= (size!7943 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7943 a!3293))))))

(declare-fun b!314123 () Bool)

(declare-fun res!170027 () Bool)

(assert (=> b!314123 (=> (not res!170027) (not e!195706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16037 (_ BitVec 32)) Bool)

(assert (=> b!314123 (= res!170027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314124 () Bool)

(declare-fun res!170028 () Bool)

(assert (=> b!314124 (=> (not res!170028) (not e!195706))))

(assert (=> b!314124 (= res!170028 (and (= (select (arr!7591 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7943 a!3293))))))

(assert (= (and start!31368 res!170025) b!314122))

(assert (= (and b!314122 res!170031) b!314117))

(assert (= (and b!314117 res!170029) b!314120))

(assert (= (and b!314120 res!170030) b!314121))

(assert (= (and b!314121 res!170024) b!314123))

(assert (= (and b!314123 res!170027) b!314118))

(assert (= (and b!314118 res!170026) b!314124))

(assert (= (and b!314124 res!170028) b!314119))

(declare-fun m!323737 () Bool)

(assert (=> start!31368 m!323737))

(declare-fun m!323739 () Bool)

(assert (=> start!31368 m!323739))

(declare-fun m!323741 () Bool)

(assert (=> b!314124 m!323741))

(declare-fun m!323743 () Bool)

(assert (=> b!314123 m!323743))

(declare-fun m!323745 () Bool)

(assert (=> b!314121 m!323745))

(declare-fun m!323747 () Bool)

(assert (=> b!314120 m!323747))

(declare-fun m!323749 () Bool)

(assert (=> b!314117 m!323749))

(declare-fun m!323751 () Bool)

(assert (=> b!314118 m!323751))

(assert (=> b!314118 m!323751))

(declare-fun m!323753 () Bool)

(assert (=> b!314118 m!323753))

(declare-fun m!323755 () Bool)

(assert (=> b!314119 m!323755))

(push 1)

(assert (not b!314123))

(assert (not b!314118))

(assert (not start!31368))

(assert (not b!314117))

(assert (not b!314120))

(assert (not b!314119))

(assert (not b!314121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

