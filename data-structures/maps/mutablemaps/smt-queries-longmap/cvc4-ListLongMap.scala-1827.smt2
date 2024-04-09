; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33028 () Bool)

(assert start!33028)

(declare-fun b!328682 () Bool)

(declare-fun res!181172 () Bool)

(declare-fun e!201982 () Bool)

(assert (=> b!328682 (=> (not res!181172) (not e!201982))))

(declare-datatypes ((array!16830 0))(
  ( (array!16831 (arr!7959 (Array (_ BitVec 32) (_ BitVec 64))) (size!8311 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16830)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328682 (= res!181172 (and (= (size!8311 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8311 a!3305))))))

(declare-fun b!328683 () Bool)

(declare-fun res!181168 () Bool)

(assert (=> b!328683 (=> (not res!181168) (not e!201982))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3101 0))(
  ( (MissingZero!3101 (index!14580 (_ BitVec 32))) (Found!3101 (index!14581 (_ BitVec 32))) (Intermediate!3101 (undefined!3913 Bool) (index!14582 (_ BitVec 32)) (x!32807 (_ BitVec 32))) (Undefined!3101) (MissingVacant!3101 (index!14583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16830 (_ BitVec 32)) SeekEntryResult!3101)

(assert (=> b!328683 (= res!181168 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3101 i!1250)))))

(declare-fun b!328684 () Bool)

(declare-fun res!181173 () Bool)

(assert (=> b!328684 (=> (not res!181173) (not e!201982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328684 (= res!181173 (validKeyInArray!0 k!2497))))

(declare-fun b!328685 () Bool)

(declare-fun res!181166 () Bool)

(assert (=> b!328685 (=> (not res!181166) (not e!201982))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328685 (= res!181166 (and (= (select (arr!7959 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8311 a!3305))))))

(declare-fun b!328687 () Bool)

(declare-fun res!181171 () Bool)

(assert (=> b!328687 (=> (not res!181171) (not e!201982))))

(declare-fun arrayContainsKey!0 (array!16830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328687 (= res!181171 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328688 () Bool)

(assert (=> b!328688 (= e!201982 false)))

(declare-fun lt!157997 () SeekEntryResult!3101)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16830 (_ BitVec 32)) SeekEntryResult!3101)

(assert (=> b!328688 (= lt!157997 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328689 () Bool)

(declare-fun res!181167 () Bool)

(assert (=> b!328689 (=> (not res!181167) (not e!201982))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328689 (= res!181167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3101 false resIndex!58 resX!58)))))

(declare-fun b!328686 () Bool)

(declare-fun res!181170 () Bool)

(assert (=> b!328686 (=> (not res!181170) (not e!201982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16830 (_ BitVec 32)) Bool)

(assert (=> b!328686 (= res!181170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!181169 () Bool)

(assert (=> start!33028 (=> (not res!181169) (not e!201982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33028 (= res!181169 (validMask!0 mask!3777))))

(assert (=> start!33028 e!201982))

(declare-fun array_inv!5913 (array!16830) Bool)

(assert (=> start!33028 (array_inv!5913 a!3305)))

(assert (=> start!33028 true))

(assert (= (and start!33028 res!181169) b!328682))

(assert (= (and b!328682 res!181172) b!328684))

(assert (= (and b!328684 res!181173) b!328687))

(assert (= (and b!328687 res!181171) b!328683))

(assert (= (and b!328683 res!181168) b!328686))

(assert (= (and b!328686 res!181170) b!328689))

(assert (= (and b!328689 res!181167) b!328685))

(assert (= (and b!328685 res!181166) b!328688))

(declare-fun m!334565 () Bool)

(assert (=> b!328689 m!334565))

(assert (=> b!328689 m!334565))

(declare-fun m!334567 () Bool)

(assert (=> b!328689 m!334567))

(declare-fun m!334569 () Bool)

(assert (=> b!328688 m!334569))

(declare-fun m!334571 () Bool)

(assert (=> b!328683 m!334571))

(declare-fun m!334573 () Bool)

(assert (=> b!328687 m!334573))

(declare-fun m!334575 () Bool)

(assert (=> b!328685 m!334575))

(declare-fun m!334577 () Bool)

(assert (=> b!328684 m!334577))

(declare-fun m!334579 () Bool)

(assert (=> b!328686 m!334579))

(declare-fun m!334581 () Bool)

(assert (=> start!33028 m!334581))

(declare-fun m!334583 () Bool)

(assert (=> start!33028 m!334583))

(push 1)

(assert (not start!33028))

(assert (not b!328688))

(assert (not b!328684))

(assert (not b!328689))

(assert (not b!328687))

(assert (not b!328683))

(assert (not b!328686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

