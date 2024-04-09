; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63706 () Bool)

(assert start!63706)

(declare-fun b!716793 () Bool)

(declare-fun res!479720 () Bool)

(declare-fun e!402516 () Bool)

(assert (=> b!716793 (=> (not res!479720) (not e!402516))))

(declare-datatypes ((array!40555 0))(
  ( (array!40556 (arr!19407 (Array (_ BitVec 32) (_ BitVec 64))) (size!19828 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40555)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7014 0))(
  ( (MissingZero!7014 (index!30423 (_ BitVec 32))) (Found!7014 (index!30424 (_ BitVec 32))) (Intermediate!7014 (undefined!7826 Bool) (index!30425 (_ BitVec 32)) (x!61483 (_ BitVec 32))) (Undefined!7014) (MissingVacant!7014 (index!30426 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40555 (_ BitVec 32)) SeekEntryResult!7014)

(assert (=> b!716793 (= res!479720 (not (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) (MissingZero!7014 i!1173))))))

(declare-fun b!716794 () Bool)

(declare-fun res!479723 () Bool)

(assert (=> b!716794 (=> (not res!479723) (not e!402516))))

(declare-fun arrayContainsKey!0 (array!40555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716794 (= res!479723 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716795 () Bool)

(declare-fun res!479724 () Bool)

(assert (=> b!716795 (=> (not res!479724) (not e!402516))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716795 (= res!479724 (and (= (size!19828 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19828 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19828 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479719 () Bool)

(assert (=> start!63706 (=> (not res!479719) (not e!402516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63706 (= res!479719 (validMask!0 mask!3328))))

(assert (=> start!63706 e!402516))

(declare-fun array_inv!15181 (array!40555) Bool)

(assert (=> start!63706 (array_inv!15181 a!3186)))

(assert (=> start!63706 true))

(declare-fun b!716796 () Bool)

(declare-fun res!479722 () Bool)

(assert (=> b!716796 (=> (not res!479722) (not e!402516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716796 (= res!479722 (validKeyInArray!0 (select (arr!19407 a!3186) j!159)))))

(declare-fun b!716797 () Bool)

(assert (=> b!716797 (= e!402516 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!716798 () Bool)

(declare-fun res!479721 () Bool)

(assert (=> b!716798 (=> (not res!479721) (not e!402516))))

(assert (=> b!716798 (= res!479721 (validKeyInArray!0 k!2102))))

(assert (= (and start!63706 res!479719) b!716795))

(assert (= (and b!716795 res!479724) b!716796))

(assert (= (and b!716796 res!479722) b!716798))

(assert (= (and b!716798 res!479721) b!716794))

(assert (= (and b!716794 res!479723) b!716793))

(assert (= (and b!716793 res!479720) b!716797))

(declare-fun m!672885 () Bool)

(assert (=> b!716798 m!672885))

(declare-fun m!672887 () Bool)

(assert (=> b!716793 m!672887))

(declare-fun m!672889 () Bool)

(assert (=> b!716794 m!672889))

(declare-fun m!672891 () Bool)

(assert (=> start!63706 m!672891))

(declare-fun m!672893 () Bool)

(assert (=> start!63706 m!672893))

(declare-fun m!672895 () Bool)

(assert (=> b!716796 m!672895))

(assert (=> b!716796 m!672895))

(declare-fun m!672897 () Bool)

(assert (=> b!716796 m!672897))

(push 1)

(assert (not b!716793))

(assert (not b!716798))

(assert (not start!63706))

(assert (not b!716794))

(assert (not b!716796))

(check-sat)

(pop 1)

