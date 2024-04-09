; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48238 () Bool)

(assert start!48238)

(declare-fun b!530668 () Bool)

(declare-fun res!326524 () Bool)

(declare-fun e!309123 () Bool)

(assert (=> b!530668 (=> (not res!326524) (not e!309123))))

(declare-datatypes ((array!33619 0))(
  ( (array!33620 (arr!16152 (Array (_ BitVec 32) (_ BitVec 64))) (size!16516 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33619)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530668 (= res!326524 (validKeyInArray!0 (select (arr!16152 a!3154) j!147)))))

(declare-fun res!326527 () Bool)

(assert (=> start!48238 (=> (not res!326527) (not e!309123))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48238 (= res!326527 (validMask!0 mask!3216))))

(assert (=> start!48238 e!309123))

(assert (=> start!48238 true))

(declare-fun array_inv!11926 (array!33619) Bool)

(assert (=> start!48238 (array_inv!11926 a!3154)))

(declare-fun b!530669 () Bool)

(declare-fun res!326528 () Bool)

(assert (=> b!530669 (=> (not res!326528) (not e!309123))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530669 (= res!326528 (and (= (size!16516 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16516 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16516 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530670 () Bool)

(declare-datatypes ((SeekEntryResult!4617 0))(
  ( (MissingZero!4617 (index!20692 (_ BitVec 32))) (Found!4617 (index!20693 (_ BitVec 32))) (Intermediate!4617 (undefined!5429 Bool) (index!20694 (_ BitVec 32)) (x!49706 (_ BitVec 32))) (Undefined!4617) (MissingVacant!4617 (index!20695 (_ BitVec 32))) )
))
(declare-fun lt!244775 () SeekEntryResult!4617)

(assert (=> b!530670 (= e!309123 (and (or (= lt!244775 (MissingZero!4617 i!1153)) (= lt!244775 (MissingVacant!4617 i!1153))) (bvsgt #b00000000000000000000000000000000 (size!16516 a!3154))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33619 (_ BitVec 32)) SeekEntryResult!4617)

(assert (=> b!530670 (= lt!244775 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530671 () Bool)

(declare-fun res!326525 () Bool)

(assert (=> b!530671 (=> (not res!326525) (not e!309123))))

(assert (=> b!530671 (= res!326525 (validKeyInArray!0 k!1998))))

(declare-fun b!530672 () Bool)

(declare-fun res!326526 () Bool)

(assert (=> b!530672 (=> (not res!326526) (not e!309123))))

(declare-fun arrayContainsKey!0 (array!33619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530672 (= res!326526 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48238 res!326527) b!530669))

(assert (= (and b!530669 res!326528) b!530668))

(assert (= (and b!530668 res!326524) b!530671))

(assert (= (and b!530671 res!326525) b!530672))

(assert (= (and b!530672 res!326526) b!530670))

(declare-fun m!511249 () Bool)

(assert (=> start!48238 m!511249))

(declare-fun m!511251 () Bool)

(assert (=> start!48238 m!511251))

(declare-fun m!511253 () Bool)

(assert (=> b!530670 m!511253))

(declare-fun m!511255 () Bool)

(assert (=> b!530668 m!511255))

(assert (=> b!530668 m!511255))

(declare-fun m!511257 () Bool)

(assert (=> b!530668 m!511257))

(declare-fun m!511259 () Bool)

(assert (=> b!530672 m!511259))

(declare-fun m!511261 () Bool)

(assert (=> b!530671 m!511261))

(push 1)

(assert (not b!530671))

(assert (not b!530672))

