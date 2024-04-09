; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33294 () Bool)

(assert start!33294)

(declare-fun b!330753 () Bool)

(declare-fun res!182313 () Bool)

(declare-fun e!202993 () Bool)

(assert (=> b!330753 (=> (not res!182313) (not e!202993))))

(declare-datatypes ((array!16898 0))(
  ( (array!16899 (arr!7987 (Array (_ BitVec 32) (_ BitVec 64))) (size!8339 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16898)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3129 0))(
  ( (MissingZero!3129 (index!14692 (_ BitVec 32))) (Found!3129 (index!14693 (_ BitVec 32))) (Intermediate!3129 (undefined!3941 Bool) (index!14694 (_ BitVec 32)) (x!32948 (_ BitVec 32))) (Undefined!3129) (MissingVacant!3129 (index!14695 (_ BitVec 32))) )
))
(declare-fun lt!158644 () SeekEntryResult!3129)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16898 (_ BitVec 32)) SeekEntryResult!3129)

(assert (=> b!330753 (= res!182313 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158644))))

(declare-fun b!330754 () Bool)

(declare-fun res!182322 () Bool)

(declare-fun e!202991 () Bool)

(assert (=> b!330754 (=> (not res!182322) (not e!202991))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330754 (= res!182322 (and (= (size!8339 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8339 a!3305))))))

(declare-fun b!330755 () Bool)

(assert (=> b!330755 (= e!202993 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1490)) (bvsub #b01111111111111111111111111111110 x!1490)))))

(declare-fun lt!158645 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330755 (= lt!158645 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!330756 () Bool)

(declare-fun res!182319 () Bool)

(assert (=> b!330756 (=> (not res!182319) (not e!202991))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16898 (_ BitVec 32)) SeekEntryResult!3129)

(assert (=> b!330756 (= res!182319 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3129 i!1250)))))

(declare-fun b!330757 () Bool)

(assert (=> b!330757 (= e!202991 e!202993)))

(declare-fun res!182315 () Bool)

(assert (=> b!330757 (=> (not res!182315) (not e!202993))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330757 (= res!182315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158644))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330757 (= lt!158644 (Intermediate!3129 false resIndex!58 resX!58))))

(declare-fun b!330758 () Bool)

(declare-fun res!182316 () Bool)

(assert (=> b!330758 (=> (not res!182316) (not e!202993))))

(assert (=> b!330758 (= res!182316 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7987 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330759 () Bool)

(declare-fun res!182317 () Bool)

(assert (=> b!330759 (=> (not res!182317) (not e!202991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16898 (_ BitVec 32)) Bool)

(assert (=> b!330759 (= res!182317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330760 () Bool)

(declare-fun res!182314 () Bool)

(assert (=> b!330760 (=> (not res!182314) (not e!202993))))

(assert (=> b!330760 (= res!182314 (and (= (select (arr!7987 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8339 a!3305))))))

(declare-fun res!182321 () Bool)

(assert (=> start!33294 (=> (not res!182321) (not e!202991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33294 (= res!182321 (validMask!0 mask!3777))))

(assert (=> start!33294 e!202991))

(declare-fun array_inv!5941 (array!16898) Bool)

(assert (=> start!33294 (array_inv!5941 a!3305)))

(assert (=> start!33294 true))

(declare-fun b!330761 () Bool)

(declare-fun res!182320 () Bool)

(assert (=> b!330761 (=> (not res!182320) (not e!202991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330761 (= res!182320 (validKeyInArray!0 k!2497))))

(declare-fun b!330762 () Bool)

(declare-fun res!182318 () Bool)

(assert (=> b!330762 (=> (not res!182318) (not e!202991))))

(declare-fun arrayContainsKey!0 (array!16898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330762 (= res!182318 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!33294 res!182321) b!330754))

(assert (= (and b!330754 res!182322) b!330761))

(assert (= (and b!330761 res!182320) b!330762))

(assert (= (and b!330762 res!182318) b!330756))

(assert (= (and b!330756 res!182319) b!330759))

(assert (= (and b!330759 res!182317) b!330757))

(assert (= (and b!330757 res!182315) b!330760))

(assert (= (and b!330760 res!182314) b!330753))

(assert (= (and b!330753 res!182313) b!330758))

(assert (= (and b!330758 res!182316) b!330755))

(declare-fun m!335821 () Bool)

(assert (=> b!330753 m!335821))

(declare-fun m!335823 () Bool)

(assert (=> b!330759 m!335823))

(declare-fun m!335825 () Bool)

(assert (=> b!330756 m!335825))

(declare-fun m!335827 () Bool)

(assert (=> b!330762 m!335827))

(declare-fun m!335829 () Bool)

(assert (=> b!330760 m!335829))

(declare-fun m!335831 () Bool)

(assert (=> start!33294 m!335831))

(declare-fun m!335833 () Bool)

(assert (=> start!33294 m!335833))

(declare-fun m!335835 () Bool)

(assert (=> b!330757 m!335835))

(assert (=> b!330757 m!335835))

(declare-fun m!335837 () Bool)

(assert (=> b!330757 m!335837))

(declare-fun m!335839 () Bool)

(assert (=> b!330758 m!335839))

(declare-fun m!335841 () Bool)

(assert (=> b!330755 m!335841))

(declare-fun m!335843 () Bool)

(assert (=> b!330761 m!335843))

(push 1)

(assert (not start!33294))

(assert (not b!330753))

(assert (not b!330761))

(assert (not b!330757))

(assert (not b!330755))

(assert (not b!330756))

(assert (not b!330762))

(assert (not b!330759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

