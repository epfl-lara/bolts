; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32152 () Bool)

(assert start!32152)

(declare-fun b!320152 () Bool)

(declare-fun res!174553 () Bool)

(declare-fun e!198678 () Bool)

(assert (=> b!320152 (=> (not res!174553) (not e!198678))))

(declare-datatypes ((array!16383 0))(
  ( (array!16384 (arr!7749 (Array (_ BitVec 32) (_ BitVec 64))) (size!8101 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16383)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16383 (_ BitVec 32)) Bool)

(assert (=> b!320152 (= res!174553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320153 () Bool)

(declare-fun res!174554 () Bool)

(assert (=> b!320153 (=> (not res!174554) (not e!198678))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320153 (= res!174554 (validKeyInArray!0 k!2497))))

(declare-fun b!320154 () Bool)

(declare-fun res!174557 () Bool)

(assert (=> b!320154 (=> (not res!174557) (not e!198678))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320154 (= res!174557 (and (= (size!8101 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8101 a!3305))))))

(declare-fun b!320155 () Bool)

(declare-fun res!174558 () Bool)

(assert (=> b!320155 (=> (not res!174558) (not e!198678))))

(declare-datatypes ((SeekEntryResult!2891 0))(
  ( (MissingZero!2891 (index!13740 (_ BitVec 32))) (Found!2891 (index!13741 (_ BitVec 32))) (Intermediate!2891 (undefined!3703 Bool) (index!13742 (_ BitVec 32)) (x!31971 (_ BitVec 32))) (Undefined!2891) (MissingVacant!2891 (index!13743 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16383 (_ BitVec 32)) SeekEntryResult!2891)

(assert (=> b!320155 (= res!174558 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2891 i!1250)))))

(declare-fun b!320156 () Bool)

(assert (=> b!320156 (= e!198678 false)))

(declare-fun lt!155972 () SeekEntryResult!2891)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16383 (_ BitVec 32)) SeekEntryResult!2891)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320156 (= lt!155972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320157 () Bool)

(declare-fun res!174555 () Bool)

(assert (=> b!320157 (=> (not res!174555) (not e!198678))))

(declare-fun arrayContainsKey!0 (array!16383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320157 (= res!174555 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174556 () Bool)

(assert (=> start!32152 (=> (not res!174556) (not e!198678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32152 (= res!174556 (validMask!0 mask!3777))))

(assert (=> start!32152 e!198678))

(assert (=> start!32152 true))

(declare-fun array_inv!5703 (array!16383) Bool)

(assert (=> start!32152 (array_inv!5703 a!3305)))

(assert (= (and start!32152 res!174556) b!320154))

(assert (= (and b!320154 res!174557) b!320153))

(assert (= (and b!320153 res!174554) b!320157))

(assert (= (and b!320157 res!174555) b!320155))

(assert (= (and b!320155 res!174558) b!320152))

(assert (= (and b!320152 res!174553) b!320156))

(declare-fun m!328587 () Bool)

(assert (=> b!320157 m!328587))

(declare-fun m!328589 () Bool)

(assert (=> b!320156 m!328589))

(assert (=> b!320156 m!328589))

(declare-fun m!328591 () Bool)

(assert (=> b!320156 m!328591))

(declare-fun m!328593 () Bool)

(assert (=> b!320155 m!328593))

(declare-fun m!328595 () Bool)

(assert (=> start!32152 m!328595))

(declare-fun m!328597 () Bool)

(assert (=> start!32152 m!328597))

(declare-fun m!328599 () Bool)

(assert (=> b!320152 m!328599))

(declare-fun m!328601 () Bool)

(assert (=> b!320153 m!328601))

(push 1)

(assert (not b!320156))

(assert (not b!320157))

(assert (not b!320153))

(assert (not b!320155))

(assert (not b!320152))

(assert (not start!32152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

