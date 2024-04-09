; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63700 () Bool)

(assert start!63700)

(declare-fun b!716746 () Bool)

(declare-fun res!479675 () Bool)

(declare-fun e!402498 () Bool)

(assert (=> b!716746 (=> (not res!479675) (not e!402498))))

(declare-datatypes ((array!40549 0))(
  ( (array!40550 (arr!19404 (Array (_ BitVec 32) (_ BitVec 64))) (size!19825 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40549)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716746 (= res!479675 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716747 () Bool)

(declare-fun res!479672 () Bool)

(assert (=> b!716747 (=> (not res!479672) (not e!402498))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716747 (= res!479672 (and (= (size!19825 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19825 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19825 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716748 () Bool)

(declare-fun res!479676 () Bool)

(assert (=> b!716748 (=> (not res!479676) (not e!402498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716748 (= res!479676 (validKeyInArray!0 k!2102))))

(declare-fun b!716749 () Bool)

(assert (=> b!716749 (= e!402498 false)))

(declare-datatypes ((SeekEntryResult!7011 0))(
  ( (MissingZero!7011 (index!30411 (_ BitVec 32))) (Found!7011 (index!30412 (_ BitVec 32))) (Intermediate!7011 (undefined!7823 Bool) (index!30413 (_ BitVec 32)) (x!61472 (_ BitVec 32))) (Undefined!7011) (MissingVacant!7011 (index!30414 (_ BitVec 32))) )
))
(declare-fun lt!318929 () SeekEntryResult!7011)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40549 (_ BitVec 32)) SeekEntryResult!7011)

(assert (=> b!716749 (= lt!318929 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!479674 () Bool)

(assert (=> start!63700 (=> (not res!479674) (not e!402498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63700 (= res!479674 (validMask!0 mask!3328))))

(assert (=> start!63700 e!402498))

(declare-fun array_inv!15178 (array!40549) Bool)

(assert (=> start!63700 (array_inv!15178 a!3186)))

(assert (=> start!63700 true))

(declare-fun b!716750 () Bool)

(declare-fun res!479673 () Bool)

(assert (=> b!716750 (=> (not res!479673) (not e!402498))))

(assert (=> b!716750 (= res!479673 (validKeyInArray!0 (select (arr!19404 a!3186) j!159)))))

(assert (= (and start!63700 res!479674) b!716747))

(assert (= (and b!716747 res!479672) b!716750))

(assert (= (and b!716750 res!479673) b!716748))

(assert (= (and b!716748 res!479676) b!716746))

(assert (= (and b!716746 res!479675) b!716749))

(declare-fun m!672843 () Bool)

(assert (=> b!716748 m!672843))

(declare-fun m!672845 () Bool)

(assert (=> b!716749 m!672845))

(declare-fun m!672847 () Bool)

(assert (=> b!716746 m!672847))

(declare-fun m!672849 () Bool)

(assert (=> start!63700 m!672849))

(declare-fun m!672851 () Bool)

(assert (=> start!63700 m!672851))

(declare-fun m!672853 () Bool)

(assert (=> b!716750 m!672853))

(assert (=> b!716750 m!672853))

(declare-fun m!672855 () Bool)

(assert (=> b!716750 m!672855))

(push 1)

(assert (not b!716749))

(assert (not b!716746))

(assert (not b!716750))

(assert (not b!716748))

(assert (not start!63700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

