; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32224 () Bool)

(assert start!32224)

(declare-fun res!174875 () Bool)

(declare-fun e!198867 () Bool)

(assert (=> start!32224 (=> (not res!174875) (not e!198867))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32224 (= res!174875 (validMask!0 mask!3777))))

(assert (=> start!32224 e!198867))

(declare-datatypes ((array!16410 0))(
  ( (array!16411 (arr!7761 (Array (_ BitVec 32) (_ BitVec 64))) (size!8113 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16410)

(declare-fun array_inv!5715 (array!16410) Bool)

(assert (=> start!32224 (array_inv!5715 a!3305)))

(assert (=> start!32224 true))

(declare-fun b!320591 () Bool)

(declare-fun res!174871 () Bool)

(assert (=> b!320591 (=> (not res!174871) (not e!198867))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2903 0))(
  ( (MissingZero!2903 (index!13788 (_ BitVec 32))) (Found!2903 (index!13789 (_ BitVec 32))) (Intermediate!2903 (undefined!3715 Bool) (index!13790 (_ BitVec 32)) (x!32021 (_ BitVec 32))) (Undefined!2903) (MissingVacant!2903 (index!13791 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16410 (_ BitVec 32)) SeekEntryResult!2903)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320591 (= res!174871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2903 false resIndex!58 resX!58)))))

(declare-fun b!320592 () Bool)

(declare-fun res!174873 () Bool)

(assert (=> b!320592 (=> (not res!174873) (not e!198867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16410 (_ BitVec 32)) Bool)

(assert (=> b!320592 (= res!174873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320593 () Bool)

(declare-fun res!174872 () Bool)

(assert (=> b!320593 (=> (not res!174872) (not e!198867))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16410 (_ BitVec 32)) SeekEntryResult!2903)

(assert (=> b!320593 (= res!174872 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2903 i!1250)))))

(declare-fun b!320594 () Bool)

(declare-fun res!174876 () Bool)

(assert (=> b!320594 (=> (not res!174876) (not e!198867))))

(assert (=> b!320594 (= res!174876 (and (= (size!8113 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8113 a!3305))))))

(declare-fun b!320595 () Bool)

(declare-fun res!174869 () Bool)

(assert (=> b!320595 (=> (not res!174869) (not e!198867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320595 (= res!174869 (validKeyInArray!0 k!2497))))

(declare-fun b!320596 () Bool)

(declare-fun res!174874 () Bool)

(assert (=> b!320596 (=> (not res!174874) (not e!198867))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320596 (= res!174874 (and (= (select (arr!7761 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8113 a!3305))))))

(declare-fun b!320597 () Bool)

(declare-fun res!174870 () Bool)

(assert (=> b!320597 (=> (not res!174870) (not e!198867))))

(declare-fun arrayContainsKey!0 (array!16410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320597 (= res!174870 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320598 () Bool)

(assert (=> b!320598 (= e!198867 false)))

(declare-fun lt!156080 () SeekEntryResult!2903)

(assert (=> b!320598 (= lt!156080 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(assert (= (and start!32224 res!174875) b!320594))

(assert (= (and b!320594 res!174876) b!320595))

(assert (= (and b!320595 res!174869) b!320597))

(assert (= (and b!320597 res!174870) b!320593))

(assert (= (and b!320593 res!174872) b!320592))

(assert (= (and b!320592 res!174873) b!320591))

(assert (= (and b!320591 res!174871) b!320596))

(assert (= (and b!320596 res!174874) b!320598))

(declare-fun m!328895 () Bool)

(assert (=> b!320597 m!328895))

(declare-fun m!328897 () Bool)

(assert (=> b!320595 m!328897))

(declare-fun m!328899 () Bool)

(assert (=> b!320591 m!328899))

(assert (=> b!320591 m!328899))

(declare-fun m!328901 () Bool)

(assert (=> b!320591 m!328901))

(declare-fun m!328903 () Bool)

(assert (=> start!32224 m!328903))

(declare-fun m!328905 () Bool)

(assert (=> start!32224 m!328905))

(declare-fun m!328907 () Bool)

(assert (=> b!320598 m!328907))

(declare-fun m!328909 () Bool)

(assert (=> b!320596 m!328909))

(declare-fun m!328911 () Bool)

(assert (=> b!320593 m!328911))

(declare-fun m!328913 () Bool)

(assert (=> b!320592 m!328913))

(push 1)

(assert (not b!320592))

(assert (not b!320591))

(assert (not b!320598))

(assert (not b!320593))

(assert (not b!320597))

(assert (not start!32224))

(assert (not b!320595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

