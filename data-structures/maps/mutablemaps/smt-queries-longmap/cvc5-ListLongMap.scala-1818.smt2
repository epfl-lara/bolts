; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32724 () Bool)

(assert start!32724)

(declare-fun b!326838 () Bool)

(declare-fun res!180033 () Bool)

(declare-fun e!201095 () Bool)

(assert (=> b!326838 (=> (not res!180033) (not e!201095))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326838 (= res!180033 (validKeyInArray!0 k!2497))))

(declare-fun b!326839 () Bool)

(declare-fun res!180030 () Bool)

(assert (=> b!326839 (=> (not res!180030) (not e!201095))))

(declare-datatypes ((array!16757 0))(
  ( (array!16758 (arr!7930 (Array (_ BitVec 32) (_ BitVec 64))) (size!8282 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16757)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16757 (_ BitVec 32)) Bool)

(assert (=> b!326839 (= res!180030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326840 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun e!201096 () Bool)

(assert (=> b!326840 (= e!201096 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((Unit!10153 0))(
  ( (Unit!10154) )
))
(declare-fun lt!157406 () Unit!10153)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10153)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326840 (= lt!157406 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326841 () Bool)

(assert (=> b!326841 (= e!201095 e!201096)))

(declare-fun res!180032 () Bool)

(assert (=> b!326841 (=> (not res!180032) (not e!201096))))

(declare-datatypes ((SeekEntryResult!3072 0))(
  ( (MissingZero!3072 (index!14464 (_ BitVec 32))) (Found!3072 (index!14465 (_ BitVec 32))) (Intermediate!3072 (undefined!3884 Bool) (index!14466 (_ BitVec 32)) (x!32673 (_ BitVec 32))) (Undefined!3072) (MissingVacant!3072 (index!14467 (_ BitVec 32))) )
))
(declare-fun lt!157405 () SeekEntryResult!3072)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16757 (_ BitVec 32)) SeekEntryResult!3072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326841 (= res!180032 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157405))))

(assert (=> b!326841 (= lt!157405 (Intermediate!3072 false resIndex!58 resX!58))))

(declare-fun res!180035 () Bool)

(assert (=> start!32724 (=> (not res!180035) (not e!201095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32724 (= res!180035 (validMask!0 mask!3777))))

(assert (=> start!32724 e!201095))

(declare-fun array_inv!5884 (array!16757) Bool)

(assert (=> start!32724 (array_inv!5884 a!3305)))

(assert (=> start!32724 true))

(declare-fun b!326842 () Bool)

(declare-fun res!180034 () Bool)

(assert (=> b!326842 (=> (not res!180034) (not e!201095))))

(declare-fun arrayContainsKey!0 (array!16757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326842 (= res!180034 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326843 () Bool)

(declare-fun res!180029 () Bool)

(assert (=> b!326843 (=> (not res!180029) (not e!201096))))

(assert (=> b!326843 (= res!180029 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157405))))

(declare-fun b!326844 () Bool)

(declare-fun res!180036 () Bool)

(assert (=> b!326844 (=> (not res!180036) (not e!201096))))

(assert (=> b!326844 (= res!180036 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7930 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326845 () Bool)

(declare-fun res!180027 () Bool)

(assert (=> b!326845 (=> (not res!180027) (not e!201095))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16757 (_ BitVec 32)) SeekEntryResult!3072)

(assert (=> b!326845 (= res!180027 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3072 i!1250)))))

(declare-fun b!326846 () Bool)

(declare-fun res!180028 () Bool)

(assert (=> b!326846 (=> (not res!180028) (not e!201095))))

(assert (=> b!326846 (= res!180028 (and (= (size!8282 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8282 a!3305))))))

(declare-fun b!326847 () Bool)

(declare-fun res!180031 () Bool)

(assert (=> b!326847 (=> (not res!180031) (not e!201096))))

(assert (=> b!326847 (= res!180031 (and (= (select (arr!7930 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8282 a!3305))))))

(assert (= (and start!32724 res!180035) b!326846))

(assert (= (and b!326846 res!180028) b!326838))

(assert (= (and b!326838 res!180033) b!326842))

(assert (= (and b!326842 res!180034) b!326845))

(assert (= (and b!326845 res!180027) b!326839))

(assert (= (and b!326839 res!180030) b!326841))

(assert (= (and b!326841 res!180032) b!326847))

(assert (= (and b!326847 res!180031) b!326843))

(assert (= (and b!326843 res!180029) b!326844))

(assert (= (and b!326844 res!180036) b!326840))

(declare-fun m!333349 () Bool)

(assert (=> b!326844 m!333349))

(declare-fun m!333351 () Bool)

(assert (=> start!32724 m!333351))

(declare-fun m!333353 () Bool)

(assert (=> start!32724 m!333353))

(declare-fun m!333355 () Bool)

(assert (=> b!326838 m!333355))

(declare-fun m!333357 () Bool)

(assert (=> b!326840 m!333357))

(assert (=> b!326840 m!333357))

(declare-fun m!333359 () Bool)

(assert (=> b!326840 m!333359))

(declare-fun m!333361 () Bool)

(assert (=> b!326847 m!333361))

(declare-fun m!333363 () Bool)

(assert (=> b!326843 m!333363))

(declare-fun m!333365 () Bool)

(assert (=> b!326839 m!333365))

(declare-fun m!333367 () Bool)

(assert (=> b!326845 m!333367))

(declare-fun m!333369 () Bool)

(assert (=> b!326842 m!333369))

(declare-fun m!333371 () Bool)

(assert (=> b!326841 m!333371))

(assert (=> b!326841 m!333371))

(declare-fun m!333373 () Bool)

(assert (=> b!326841 m!333373))

(push 1)

