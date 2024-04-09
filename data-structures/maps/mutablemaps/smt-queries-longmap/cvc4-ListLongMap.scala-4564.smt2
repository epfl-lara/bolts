; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63704 () Bool)

(assert start!63704)

(declare-fun b!716776 () Bool)

(declare-fun res!479702 () Bool)

(declare-fun e!402510 () Bool)

(assert (=> b!716776 (=> (not res!479702) (not e!402510))))

(declare-datatypes ((array!40553 0))(
  ( (array!40554 (arr!19406 (Array (_ BitVec 32) (_ BitVec 64))) (size!19827 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40553)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716776 (= res!479702 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716777 () Bool)

(declare-fun res!479703 () Bool)

(assert (=> b!716777 (=> (not res!479703) (not e!402510))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716777 (= res!479703 (validKeyInArray!0 (select (arr!19406 a!3186) j!159)))))

(declare-fun b!716778 () Bool)

(declare-fun res!479706 () Bool)

(assert (=> b!716778 (=> (not res!479706) (not e!402510))))

(assert (=> b!716778 (= res!479706 (validKeyInArray!0 k!2102))))

(declare-fun b!716779 () Bool)

(declare-fun res!479705 () Bool)

(assert (=> b!716779 (=> (not res!479705) (not e!402510))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716779 (= res!479705 (and (= (size!19827 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19827 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19827 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479704 () Bool)

(assert (=> start!63704 (=> (not res!479704) (not e!402510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63704 (= res!479704 (validMask!0 mask!3328))))

(assert (=> start!63704 e!402510))

(declare-fun array_inv!15180 (array!40553) Bool)

(assert (=> start!63704 (array_inv!15180 a!3186)))

(assert (=> start!63704 true))

(declare-fun b!716780 () Bool)

(assert (=> b!716780 (= e!402510 false)))

(declare-datatypes ((SeekEntryResult!7013 0))(
  ( (MissingZero!7013 (index!30419 (_ BitVec 32))) (Found!7013 (index!30420 (_ BitVec 32))) (Intermediate!7013 (undefined!7825 Bool) (index!30421 (_ BitVec 32)) (x!61474 (_ BitVec 32))) (Undefined!7013) (MissingVacant!7013 (index!30422 (_ BitVec 32))) )
))
(declare-fun lt!318935 () SeekEntryResult!7013)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40553 (_ BitVec 32)) SeekEntryResult!7013)

(assert (=> b!716780 (= lt!318935 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63704 res!479704) b!716779))

(assert (= (and b!716779 res!479705) b!716777))

(assert (= (and b!716777 res!479703) b!716778))

(assert (= (and b!716778 res!479706) b!716776))

(assert (= (and b!716776 res!479702) b!716780))

(declare-fun m!672871 () Bool)

(assert (=> start!63704 m!672871))

(declare-fun m!672873 () Bool)

(assert (=> start!63704 m!672873))

(declare-fun m!672875 () Bool)

(assert (=> b!716777 m!672875))

(assert (=> b!716777 m!672875))

(declare-fun m!672877 () Bool)

(assert (=> b!716777 m!672877))

(declare-fun m!672879 () Bool)

(assert (=> b!716780 m!672879))

(declare-fun m!672881 () Bool)

(assert (=> b!716778 m!672881))

(declare-fun m!672883 () Bool)

(assert (=> b!716776 m!672883))

(push 1)

(assert (not b!716780))

(assert (not b!716776))

(assert (not b!716777))

(assert (not start!63704))

(assert (not b!716778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

