; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33012 () Bool)

(assert start!33012)

(declare-fun b!328490 () Bool)

(declare-fun res!180976 () Bool)

(declare-fun e!201933 () Bool)

(assert (=> b!328490 (=> (not res!180976) (not e!201933))))

(declare-datatypes ((array!16814 0))(
  ( (array!16815 (arr!7951 (Array (_ BitVec 32) (_ BitVec 64))) (size!8303 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16814)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16814 (_ BitVec 32)) Bool)

(assert (=> b!328490 (= res!180976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328491 () Bool)

(declare-fun res!180977 () Bool)

(assert (=> b!328491 (=> (not res!180977) (not e!201933))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328491 (= res!180977 (and (= (size!8303 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8303 a!3305))))))

(declare-fun res!180975 () Bool)

(assert (=> start!33012 (=> (not res!180975) (not e!201933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33012 (= res!180975 (validMask!0 mask!3777))))

(assert (=> start!33012 e!201933))

(declare-fun array_inv!5905 (array!16814) Bool)

(assert (=> start!33012 (array_inv!5905 a!3305)))

(assert (=> start!33012 true))

(declare-fun b!328492 () Bool)

(declare-fun res!180978 () Bool)

(assert (=> b!328492 (=> (not res!180978) (not e!201933))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3093 0))(
  ( (MissingZero!3093 (index!14548 (_ BitVec 32))) (Found!3093 (index!14549 (_ BitVec 32))) (Intermediate!3093 (undefined!3905 Bool) (index!14550 (_ BitVec 32)) (x!32783 (_ BitVec 32))) (Undefined!3093) (MissingVacant!3093 (index!14551 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16814 (_ BitVec 32)) SeekEntryResult!3093)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328492 (= res!180978 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3093 false resIndex!58 resX!58)))))

(declare-fun b!328493 () Bool)

(assert (=> b!328493 (= e!201933 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun lt!157973 () SeekEntryResult!3093)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328493 (= lt!157973 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328494 () Bool)

(declare-fun res!180974 () Bool)

(assert (=> b!328494 (=> (not res!180974) (not e!201933))))

(declare-fun arrayContainsKey!0 (array!16814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328494 (= res!180974 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328495 () Bool)

(declare-fun res!180980 () Bool)

(assert (=> b!328495 (=> (not res!180980) (not e!201933))))

(assert (=> b!328495 (= res!180980 (and (= (select (arr!7951 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8303 a!3305))))))

(declare-fun b!328496 () Bool)

(declare-fun res!180979 () Bool)

(assert (=> b!328496 (=> (not res!180979) (not e!201933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328496 (= res!180979 (validKeyInArray!0 k!2497))))

(declare-fun b!328497 () Bool)

(declare-fun res!180981 () Bool)

(assert (=> b!328497 (=> (not res!180981) (not e!201933))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16814 (_ BitVec 32)) SeekEntryResult!3093)

(assert (=> b!328497 (= res!180981 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3093 i!1250)))))

(assert (= (and start!33012 res!180975) b!328491))

(assert (= (and b!328491 res!180977) b!328496))

(assert (= (and b!328496 res!180979) b!328494))

(assert (= (and b!328494 res!180974) b!328497))

(assert (= (and b!328497 res!180981) b!328490))

(assert (= (and b!328490 res!180976) b!328492))

(assert (= (and b!328492 res!180978) b!328495))

(assert (= (and b!328495 res!180980) b!328493))

(declare-fun m!334405 () Bool)

(assert (=> b!328493 m!334405))

(declare-fun m!334407 () Bool)

(assert (=> b!328496 m!334407))

(declare-fun m!334409 () Bool)

(assert (=> b!328490 m!334409))

(declare-fun m!334411 () Bool)

(assert (=> b!328495 m!334411))

(declare-fun m!334413 () Bool)

(assert (=> start!33012 m!334413))

(declare-fun m!334415 () Bool)

(assert (=> start!33012 m!334415))

(declare-fun m!334417 () Bool)

(assert (=> b!328497 m!334417))

(declare-fun m!334419 () Bool)

(assert (=> b!328492 m!334419))

(assert (=> b!328492 m!334419))

(declare-fun m!334421 () Bool)

(assert (=> b!328492 m!334421))

(declare-fun m!334423 () Bool)

(assert (=> b!328494 m!334423))

(push 1)

(assert (not b!328492))

(assert (not b!328497))

(assert (not b!328496))

(assert (not b!328494))

(assert (not b!328493))

(assert (not start!33012))

(assert (not b!328490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

