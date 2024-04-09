; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31444 () Bool)

(assert start!31444)

(declare-fun b!314677 () Bool)

(declare-fun res!170450 () Bool)

(declare-fun e!195948 () Bool)

(assert (=> b!314677 (=> (not res!170450) (not e!195948))))

(declare-datatypes ((array!16068 0))(
  ( (array!16069 (arr!7605 (Array (_ BitVec 32) (_ BitVec 64))) (size!7957 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16068)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16068 (_ BitVec 32)) Bool)

(assert (=> b!314677 (= res!170450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314678 () Bool)

(declare-fun res!170443 () Bool)

(assert (=> b!314678 (=> (not res!170443) (not e!195948))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314678 (= res!170443 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314679 () Bool)

(declare-fun e!195946 () Bool)

(declare-fun e!195947 () Bool)

(assert (=> b!314679 (= e!195946 e!195947)))

(declare-fun res!170445 () Bool)

(assert (=> b!314679 (=> (not res!170445) (not e!195947))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2756 0))(
  ( (MissingZero!2756 (index!13200 (_ BitVec 32))) (Found!2756 (index!13201 (_ BitVec 32))) (Intermediate!2756 (undefined!3568 Bool) (index!13202 (_ BitVec 32)) (x!31395 (_ BitVec 32))) (Undefined!2756) (MissingVacant!2756 (index!13203 (_ BitVec 32))) )
))
(declare-fun lt!154007 () SeekEntryResult!2756)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!154006 () SeekEntryResult!2756)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314679 (= res!170445 (and (= lt!154007 lt!154006) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7605 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7605 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7605 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16068 (_ BitVec 32)) SeekEntryResult!2756)

(assert (=> b!314679 (= lt!154007 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314680 () Bool)

(declare-fun res!170451 () Bool)

(assert (=> b!314680 (=> (not res!170451) (not e!195948))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314680 (= res!170451 (and (= (size!7957 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7957 a!3293))))))

(declare-fun b!314682 () Bool)

(declare-fun res!170446 () Bool)

(assert (=> b!314682 (=> (not res!170446) (not e!195948))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16068 (_ BitVec 32)) SeekEntryResult!2756)

(assert (=> b!314682 (= res!170446 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2756 i!1240)))))

(declare-fun b!314683 () Bool)

(declare-fun res!170447 () Bool)

(assert (=> b!314683 (=> (not res!170447) (not e!195948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314683 (= res!170447 (validKeyInArray!0 k!2441))))

(declare-fun b!314684 () Bool)

(assert (=> b!314684 (= e!195947 (not false))))

(assert (=> b!314684 (= lt!154007 (Intermediate!2756 false index!1781 resX!52))))

(declare-fun b!314685 () Bool)

(declare-fun res!170444 () Bool)

(assert (=> b!314685 (=> (not res!170444) (not e!195946))))

(assert (=> b!314685 (= res!170444 (and (= (select (arr!7605 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7957 a!3293))))))

(declare-fun b!314681 () Bool)

(assert (=> b!314681 (= e!195948 e!195946)))

(declare-fun res!170449 () Bool)

(assert (=> b!314681 (=> (not res!170449) (not e!195946))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314681 (= res!170449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154006))))

(assert (=> b!314681 (= lt!154006 (Intermediate!2756 false resIndex!52 resX!52))))

(declare-fun res!170448 () Bool)

(assert (=> start!31444 (=> (not res!170448) (not e!195948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31444 (= res!170448 (validMask!0 mask!3709))))

(assert (=> start!31444 e!195948))

(declare-fun array_inv!5559 (array!16068) Bool)

(assert (=> start!31444 (array_inv!5559 a!3293)))

(assert (=> start!31444 true))

(assert (= (and start!31444 res!170448) b!314680))

(assert (= (and b!314680 res!170451) b!314683))

(assert (= (and b!314683 res!170447) b!314678))

(assert (= (and b!314678 res!170443) b!314682))

(assert (= (and b!314682 res!170446) b!314677))

(assert (= (and b!314677 res!170450) b!314681))

(assert (= (and b!314681 res!170449) b!314685))

(assert (= (and b!314685 res!170444) b!314679))

(assert (= (and b!314679 res!170445) b!314684))

(declare-fun m!324141 () Bool)

(assert (=> b!314681 m!324141))

(assert (=> b!314681 m!324141))

(declare-fun m!324143 () Bool)

(assert (=> b!314681 m!324143))

(declare-fun m!324145 () Bool)

(assert (=> b!314682 m!324145))

(declare-fun m!324147 () Bool)

(assert (=> b!314683 m!324147))

(declare-fun m!324149 () Bool)

(assert (=> b!314685 m!324149))

(declare-fun m!324151 () Bool)

(assert (=> start!31444 m!324151))

(declare-fun m!324153 () Bool)

(assert (=> start!31444 m!324153))

(declare-fun m!324155 () Bool)

(assert (=> b!314677 m!324155))

(declare-fun m!324157 () Bool)

(assert (=> b!314678 m!324157))

(declare-fun m!324159 () Bool)

(assert (=> b!314679 m!324159))

(declare-fun m!324161 () Bool)

(assert (=> b!314679 m!324161))

(push 1)

(assert (not b!314682))

(assert (not b!314677))

(assert (not b!314683))

(assert (not b!314681))

