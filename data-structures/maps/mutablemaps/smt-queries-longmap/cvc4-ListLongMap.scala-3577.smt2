; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49214 () Bool)

(assert start!49214)

(declare-fun b!541571 () Bool)

(declare-fun res!336458 () Bool)

(declare-fun e!313552 () Bool)

(assert (=> b!541571 (=> (not res!336458) (not e!313552))))

(declare-datatypes ((array!34229 0))(
  ( (array!34230 (arr!16445 (Array (_ BitVec 32) (_ BitVec 64))) (size!16809 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34229)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541571 (= res!336458 (validKeyInArray!0 (select (arr!16445 a!3154) j!147)))))

(declare-fun b!541572 () Bool)

(declare-fun res!336457 () Bool)

(declare-fun e!313550 () Bool)

(assert (=> b!541572 (=> (not res!336457) (not e!313550))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34229 (_ BitVec 32)) Bool)

(assert (=> b!541572 (= res!336457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541573 () Bool)

(declare-fun res!336456 () Bool)

(assert (=> b!541573 (=> (not res!336456) (not e!313550))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4910 0))(
  ( (MissingZero!4910 (index!21864 (_ BitVec 32))) (Found!4910 (index!21865 (_ BitVec 32))) (Intermediate!4910 (undefined!5722 Bool) (index!21866 (_ BitVec 32)) (x!50802 (_ BitVec 32))) (Undefined!4910) (MissingVacant!4910 (index!21867 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34229 (_ BitVec 32)) SeekEntryResult!4910)

(assert (=> b!541573 (= res!336456 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16445 a!3154) j!147) a!3154 mask!3216) (Intermediate!4910 false resIndex!32 resX!32)))))

(declare-fun b!541574 () Bool)

(declare-fun res!336451 () Bool)

(assert (=> b!541574 (=> (not res!336451) (not e!313552))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!541574 (= res!336451 (validKeyInArray!0 k!1998))))

(declare-fun b!541575 () Bool)

(declare-fun res!336450 () Bool)

(assert (=> b!541575 (=> (not res!336450) (not e!313550))))

(declare-datatypes ((List!10617 0))(
  ( (Nil!10614) (Cons!10613 (h!11565 (_ BitVec 64)) (t!16853 List!10617)) )
))
(declare-fun arrayNoDuplicates!0 (array!34229 (_ BitVec 32) List!10617) Bool)

(assert (=> b!541575 (= res!336450 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10614))))

(declare-fun b!541576 () Bool)

(assert (=> b!541576 (= e!313550 false)))

(declare-fun lt!247691 () SeekEntryResult!4910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541576 (= lt!247691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16445 a!3154) j!147) mask!3216) (select (arr!16445 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541577 () Bool)

(declare-fun res!336449 () Bool)

(assert (=> b!541577 (=> (not res!336449) (not e!313552))))

(declare-fun arrayContainsKey!0 (array!34229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541577 (= res!336449 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!336455 () Bool)

(assert (=> start!49214 (=> (not res!336455) (not e!313552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49214 (= res!336455 (validMask!0 mask!3216))))

(assert (=> start!49214 e!313552))

(assert (=> start!49214 true))

(declare-fun array_inv!12219 (array!34229) Bool)

(assert (=> start!49214 (array_inv!12219 a!3154)))

(declare-fun b!541578 () Bool)

(declare-fun res!336454 () Bool)

(assert (=> b!541578 (=> (not res!336454) (not e!313550))))

(assert (=> b!541578 (= res!336454 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16809 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16809 a!3154)) (= (select (arr!16445 a!3154) resIndex!32) (select (arr!16445 a!3154) j!147))))))

(declare-fun b!541579 () Bool)

(assert (=> b!541579 (= e!313552 e!313550)))

(declare-fun res!336453 () Bool)

(assert (=> b!541579 (=> (not res!336453) (not e!313550))))

(declare-fun lt!247690 () SeekEntryResult!4910)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541579 (= res!336453 (or (= lt!247690 (MissingZero!4910 i!1153)) (= lt!247690 (MissingVacant!4910 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34229 (_ BitVec 32)) SeekEntryResult!4910)

(assert (=> b!541579 (= lt!247690 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541580 () Bool)

(declare-fun res!336452 () Bool)

(assert (=> b!541580 (=> (not res!336452) (not e!313552))))

(assert (=> b!541580 (= res!336452 (and (= (size!16809 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16809 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16809 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49214 res!336455) b!541580))

(assert (= (and b!541580 res!336452) b!541571))

(assert (= (and b!541571 res!336458) b!541574))

(assert (= (and b!541574 res!336451) b!541577))

(assert (= (and b!541577 res!336449) b!541579))

(assert (= (and b!541579 res!336453) b!541572))

(assert (= (and b!541572 res!336457) b!541575))

(assert (= (and b!541575 res!336450) b!541578))

(assert (= (and b!541578 res!336454) b!541573))

(assert (= (and b!541573 res!336456) b!541576))

(declare-fun m!520049 () Bool)

(assert (=> b!541575 m!520049))

(declare-fun m!520051 () Bool)

(assert (=> b!541578 m!520051))

(declare-fun m!520053 () Bool)

(assert (=> b!541578 m!520053))

(declare-fun m!520055 () Bool)

(assert (=> b!541572 m!520055))

(declare-fun m!520057 () Bool)

(assert (=> b!541574 m!520057))

(declare-fun m!520059 () Bool)

(assert (=> b!541579 m!520059))

(declare-fun m!520061 () Bool)

(assert (=> start!49214 m!520061))

(declare-fun m!520063 () Bool)

(assert (=> start!49214 m!520063))

(assert (=> b!541571 m!520053))

(assert (=> b!541571 m!520053))

(declare-fun m!520065 () Bool)

(assert (=> b!541571 m!520065))

(assert (=> b!541576 m!520053))

(assert (=> b!541576 m!520053))

(declare-fun m!520067 () Bool)

(assert (=> b!541576 m!520067))

(assert (=> b!541576 m!520067))

(assert (=> b!541576 m!520053))

(declare-fun m!520069 () Bool)

(assert (=> b!541576 m!520069))

(assert (=> b!541573 m!520053))

(assert (=> b!541573 m!520053))

(declare-fun m!520071 () Bool)

(assert (=> b!541573 m!520071))

(declare-fun m!520073 () Bool)

(assert (=> b!541577 m!520073))

(push 1)

(assert (not b!541576))

(assert (not start!49214))

(assert (not b!541575))

(assert (not b!541571))

(assert (not b!541574))

(assert (not b!541579))

(assert (not b!541572))

(assert (not b!541577))

