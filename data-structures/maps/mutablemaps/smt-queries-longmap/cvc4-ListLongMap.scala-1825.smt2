; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33016 () Bool)

(assert start!33016)

(declare-fun b!328538 () Bool)

(declare-fun res!181024 () Bool)

(declare-fun e!201946 () Bool)

(assert (=> b!328538 (=> (not res!181024) (not e!201946))))

(declare-datatypes ((array!16818 0))(
  ( (array!16819 (arr!7953 (Array (_ BitVec 32) (_ BitVec 64))) (size!8305 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16818)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16818 (_ BitVec 32)) Bool)

(assert (=> b!328538 (= res!181024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328539 () Bool)

(declare-fun res!181026 () Bool)

(assert (=> b!328539 (=> (not res!181026) (not e!201946))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328539 (= res!181026 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328540 () Bool)

(declare-fun res!181025 () Bool)

(assert (=> b!328540 (=> (not res!181025) (not e!201946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328540 (= res!181025 (validKeyInArray!0 k!2497))))

(declare-fun b!328541 () Bool)

(declare-fun res!181029 () Bool)

(assert (=> b!328541 (=> (not res!181029) (not e!201946))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3095 0))(
  ( (MissingZero!3095 (index!14556 (_ BitVec 32))) (Found!3095 (index!14557 (_ BitVec 32))) (Intermediate!3095 (undefined!3907 Bool) (index!14558 (_ BitVec 32)) (x!32785 (_ BitVec 32))) (Undefined!3095) (MissingVacant!3095 (index!14559 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16818 (_ BitVec 32)) SeekEntryResult!3095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328541 (= res!181029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3095 false resIndex!58 resX!58)))))

(declare-fun res!181027 () Bool)

(assert (=> start!33016 (=> (not res!181027) (not e!201946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33016 (= res!181027 (validMask!0 mask!3777))))

(assert (=> start!33016 e!201946))

(declare-fun array_inv!5907 (array!16818) Bool)

(assert (=> start!33016 (array_inv!5907 a!3305)))

(assert (=> start!33016 true))

(declare-fun b!328542 () Bool)

(assert (=> b!328542 (= e!201946 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun lt!157979 () SeekEntryResult!3095)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328542 (= lt!157979 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328543 () Bool)

(declare-fun res!181023 () Bool)

(assert (=> b!328543 (=> (not res!181023) (not e!201946))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328543 (= res!181023 (and (= (select (arr!7953 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8305 a!3305))))))

(declare-fun b!328544 () Bool)

(declare-fun res!181028 () Bool)

(assert (=> b!328544 (=> (not res!181028) (not e!201946))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16818 (_ BitVec 32)) SeekEntryResult!3095)

(assert (=> b!328544 (= res!181028 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3095 i!1250)))))

(declare-fun b!328545 () Bool)

(declare-fun res!181022 () Bool)

(assert (=> b!328545 (=> (not res!181022) (not e!201946))))

(assert (=> b!328545 (= res!181022 (and (= (size!8305 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8305 a!3305))))))

(assert (= (and start!33016 res!181027) b!328545))

(assert (= (and b!328545 res!181022) b!328540))

(assert (= (and b!328540 res!181025) b!328539))

(assert (= (and b!328539 res!181026) b!328544))

(assert (= (and b!328544 res!181028) b!328538))

(assert (= (and b!328538 res!181024) b!328541))

(assert (= (and b!328541 res!181029) b!328543))

(assert (= (and b!328543 res!181023) b!328542))

(declare-fun m!334445 () Bool)

(assert (=> b!328538 m!334445))

(declare-fun m!334447 () Bool)

(assert (=> b!328542 m!334447))

(declare-fun m!334449 () Bool)

(assert (=> b!328540 m!334449))

(declare-fun m!334451 () Bool)

(assert (=> start!33016 m!334451))

(declare-fun m!334453 () Bool)

(assert (=> start!33016 m!334453))

(declare-fun m!334455 () Bool)

(assert (=> b!328539 m!334455))

(declare-fun m!334457 () Bool)

(assert (=> b!328543 m!334457))

(declare-fun m!334459 () Bool)

(assert (=> b!328541 m!334459))

(assert (=> b!328541 m!334459))

(declare-fun m!334461 () Bool)

(assert (=> b!328541 m!334461))

(declare-fun m!334463 () Bool)

(assert (=> b!328544 m!334463))

(push 1)

(assert (not b!328542))

(assert (not b!328539))

(assert (not b!328538))

(assert (not b!328541))

(assert (not start!33016))

(assert (not b!328544))

(assert (not b!328540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

