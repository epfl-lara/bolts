; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63696 () Bool)

(assert start!63696)

(declare-fun b!716716 () Bool)

(declare-fun res!479643 () Bool)

(declare-fun e!402486 () Bool)

(assert (=> b!716716 (=> (not res!479643) (not e!402486))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716716 (= res!479643 (validKeyInArray!0 k0!2102))))

(declare-fun b!716717 () Bool)

(declare-fun res!479645 () Bool)

(assert (=> b!716717 (=> (not res!479645) (not e!402486))))

(declare-datatypes ((array!40545 0))(
  ( (array!40546 (arr!19402 (Array (_ BitVec 32) (_ BitVec 64))) (size!19823 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40545)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716717 (= res!479645 (validKeyInArray!0 (select (arr!19402 a!3186) j!159)))))

(declare-fun b!716718 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716718 (= e!402486 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!716719 () Bool)

(declare-fun res!479642 () Bool)

(assert (=> b!716719 (=> (not res!479642) (not e!402486))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716719 (= res!479642 (and (= (size!19823 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19823 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19823 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479644 () Bool)

(assert (=> start!63696 (=> (not res!479644) (not e!402486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63696 (= res!479644 (validMask!0 mask!3328))))

(assert (=> start!63696 e!402486))

(declare-fun array_inv!15176 (array!40545) Bool)

(assert (=> start!63696 (array_inv!15176 a!3186)))

(assert (=> start!63696 true))

(declare-fun b!716720 () Bool)

(declare-fun res!479646 () Bool)

(assert (=> b!716720 (=> (not res!479646) (not e!402486))))

(declare-fun arrayContainsKey!0 (array!40545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716720 (= res!479646 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63696 res!479644) b!716719))

(assert (= (and b!716719 res!479642) b!716717))

(assert (= (and b!716717 res!479645) b!716716))

(assert (= (and b!716716 res!479643) b!716720))

(assert (= (and b!716720 res!479646) b!716718))

(declare-fun m!672819 () Bool)

(assert (=> b!716716 m!672819))

(declare-fun m!672821 () Bool)

(assert (=> b!716717 m!672821))

(assert (=> b!716717 m!672821))

(declare-fun m!672823 () Bool)

(assert (=> b!716717 m!672823))

(declare-fun m!672825 () Bool)

(assert (=> start!63696 m!672825))

(declare-fun m!672827 () Bool)

(assert (=> start!63696 m!672827))

(declare-fun m!672829 () Bool)

(assert (=> b!716720 m!672829))

(check-sat (not b!716716) (not start!63696) (not b!716717) (not b!716720))
(check-sat)
