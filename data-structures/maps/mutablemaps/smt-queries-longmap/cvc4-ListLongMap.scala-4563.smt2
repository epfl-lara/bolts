; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63698 () Bool)

(assert start!63698)

(declare-fun b!716731 () Bool)

(declare-fun res!479657 () Bool)

(declare-fun e!402492 () Bool)

(assert (=> b!716731 (=> (not res!479657) (not e!402492))))

(declare-datatypes ((array!40547 0))(
  ( (array!40548 (arr!19403 (Array (_ BitVec 32) (_ BitVec 64))) (size!19824 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40547)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716731 (= res!479657 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716732 () Bool)

(declare-fun res!479659 () Bool)

(assert (=> b!716732 (=> (not res!479659) (not e!402492))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716732 (= res!479659 (validKeyInArray!0 (select (arr!19403 a!3186) j!159)))))

(declare-fun b!716733 () Bool)

(declare-fun res!479658 () Bool)

(assert (=> b!716733 (=> (not res!479658) (not e!402492))))

(assert (=> b!716733 (= res!479658 (validKeyInArray!0 k!2102))))

(declare-fun res!479661 () Bool)

(assert (=> start!63698 (=> (not res!479661) (not e!402492))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63698 (= res!479661 (validMask!0 mask!3328))))

(assert (=> start!63698 e!402492))

(declare-fun array_inv!15177 (array!40547) Bool)

(assert (=> start!63698 (array_inv!15177 a!3186)))

(assert (=> start!63698 true))

(declare-fun b!716734 () Bool)

(declare-fun res!479660 () Bool)

(assert (=> b!716734 (=> (not res!479660) (not e!402492))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716734 (= res!479660 (and (= (size!19824 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19824 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19824 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716735 () Bool)

(assert (=> b!716735 (= e!402492 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (= (and start!63698 res!479661) b!716734))

(assert (= (and b!716734 res!479660) b!716732))

(assert (= (and b!716732 res!479659) b!716733))

(assert (= (and b!716733 res!479658) b!716731))

(assert (= (and b!716731 res!479657) b!716735))

(declare-fun m!672831 () Bool)

(assert (=> b!716731 m!672831))

(declare-fun m!672833 () Bool)

(assert (=> b!716732 m!672833))

(assert (=> b!716732 m!672833))

(declare-fun m!672835 () Bool)

(assert (=> b!716732 m!672835))

(declare-fun m!672837 () Bool)

(assert (=> b!716733 m!672837))

(declare-fun m!672839 () Bool)

(assert (=> start!63698 m!672839))

(declare-fun m!672841 () Bool)

(assert (=> start!63698 m!672841))

(push 1)

(assert (not b!716731))

(assert (not start!63698))

(assert (not b!716732))

(assert (not b!716733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

