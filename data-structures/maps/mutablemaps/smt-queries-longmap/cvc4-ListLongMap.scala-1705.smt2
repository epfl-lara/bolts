; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31372 () Bool)

(assert start!31372)

(declare-fun b!314165 () Bool)

(declare-fun res!170073 () Bool)

(declare-fun e!195718 () Bool)

(assert (=> b!314165 (=> (not res!170073) (not e!195718))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314165 (= res!170073 (validKeyInArray!0 k!2441))))

(declare-fun b!314166 () Bool)

(declare-fun res!170079 () Bool)

(assert (=> b!314166 (=> (not res!170079) (not e!195718))))

(declare-datatypes ((array!16041 0))(
  ( (array!16042 (arr!7593 (Array (_ BitVec 32) (_ BitVec 64))) (size!7945 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16041)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16041 (_ BitVec 32)) Bool)

(assert (=> b!314166 (= res!170079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314167 () Bool)

(declare-fun res!170072 () Bool)

(assert (=> b!314167 (=> (not res!170072) (not e!195718))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2744 0))(
  ( (MissingZero!2744 (index!13152 (_ BitVec 32))) (Found!2744 (index!13153 (_ BitVec 32))) (Intermediate!2744 (undefined!3556 Bool) (index!13154 (_ BitVec 32)) (x!31345 (_ BitVec 32))) (Undefined!2744) (MissingVacant!2744 (index!13155 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16041 (_ BitVec 32)) SeekEntryResult!2744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314167 (= res!170072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2744 false resIndex!52 resX!52)))))

(declare-fun res!170074 () Bool)

(assert (=> start!31372 (=> (not res!170074) (not e!195718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31372 (= res!170074 (validMask!0 mask!3709))))

(assert (=> start!31372 e!195718))

(declare-fun array_inv!5547 (array!16041) Bool)

(assert (=> start!31372 (array_inv!5547 a!3293)))

(assert (=> start!31372 true))

(declare-fun b!314168 () Bool)

(assert (=> b!314168 (= e!195718 false)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153857 () SeekEntryResult!2744)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314168 (= lt!153857 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314169 () Bool)

(declare-fun res!170075 () Bool)

(assert (=> b!314169 (=> (not res!170075) (not e!195718))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16041 (_ BitVec 32)) SeekEntryResult!2744)

(assert (=> b!314169 (= res!170075 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2744 i!1240)))))

(declare-fun b!314170 () Bool)

(declare-fun res!170076 () Bool)

(assert (=> b!314170 (=> (not res!170076) (not e!195718))))

(assert (=> b!314170 (= res!170076 (and (= (size!7945 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7945 a!3293))))))

(declare-fun b!314171 () Bool)

(declare-fun res!170077 () Bool)

(assert (=> b!314171 (=> (not res!170077) (not e!195718))))

(declare-fun arrayContainsKey!0 (array!16041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314171 (= res!170077 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314172 () Bool)

(declare-fun res!170078 () Bool)

(assert (=> b!314172 (=> (not res!170078) (not e!195718))))

(assert (=> b!314172 (= res!170078 (and (= (select (arr!7593 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7945 a!3293))))))

(assert (= (and start!31372 res!170074) b!314170))

(assert (= (and b!314170 res!170076) b!314165))

(assert (= (and b!314165 res!170073) b!314171))

(assert (= (and b!314171 res!170077) b!314169))

(assert (= (and b!314169 res!170075) b!314166))

(assert (= (and b!314166 res!170079) b!314167))

(assert (= (and b!314167 res!170072) b!314172))

(assert (= (and b!314172 res!170078) b!314168))

(declare-fun m!323777 () Bool)

(assert (=> b!314172 m!323777))

(declare-fun m!323779 () Bool)

(assert (=> b!314166 m!323779))

(declare-fun m!323781 () Bool)

(assert (=> b!314167 m!323781))

(assert (=> b!314167 m!323781))

(declare-fun m!323783 () Bool)

(assert (=> b!314167 m!323783))

(declare-fun m!323785 () Bool)

(assert (=> start!31372 m!323785))

(declare-fun m!323787 () Bool)

(assert (=> start!31372 m!323787))

(declare-fun m!323789 () Bool)

(assert (=> b!314171 m!323789))

(declare-fun m!323791 () Bool)

(assert (=> b!314168 m!323791))

(declare-fun m!323793 () Bool)

(assert (=> b!314165 m!323793))

(declare-fun m!323795 () Bool)

(assert (=> b!314169 m!323795))

(push 1)

(assert (not b!314171))

(assert (not b!314169))

(assert (not start!31372))

(assert (not b!314167))

(assert (not b!314165))

(assert (not b!314166))

(assert (not b!314168))

(check-sat)

(pop 1)

