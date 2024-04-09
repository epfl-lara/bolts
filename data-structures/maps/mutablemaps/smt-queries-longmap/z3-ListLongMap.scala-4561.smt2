; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63672 () Bool)

(assert start!63672)

(declare-fun b!716640 () Bool)

(declare-fun res!479565 () Bool)

(declare-fun e!402449 () Bool)

(assert (=> b!716640 (=> (not res!479565) (not e!402449))))

(declare-datatypes ((array!40532 0))(
  ( (array!40533 (arr!19396 (Array (_ BitVec 32) (_ BitVec 64))) (size!19817 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40532)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716640 (= res!479565 (validKeyInArray!0 (select (arr!19396 a!3186) j!159)))))

(declare-fun b!716639 () Bool)

(declare-fun res!479567 () Bool)

(assert (=> b!716639 (=> (not res!479567) (not e!402449))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716639 (= res!479567 (and (= (size!19817 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19817 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19817 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479568 () Bool)

(assert (=> start!63672 (=> (not res!479568) (not e!402449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63672 (= res!479568 (validMask!0 mask!3328))))

(assert (=> start!63672 e!402449))

(declare-fun array_inv!15170 (array!40532) Bool)

(assert (=> start!63672 (array_inv!15170 a!3186)))

(assert (=> start!63672 true))

(declare-fun b!716641 () Bool)

(declare-fun res!479566 () Bool)

(assert (=> b!716641 (=> (not res!479566) (not e!402449))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!716641 (= res!479566 (validKeyInArray!0 k0!2102))))

(declare-fun b!716642 () Bool)

(assert (=> b!716642 (= e!402449 (bvsge #b00000000000000000000000000000000 (size!19817 a!3186)))))

(assert (= (and start!63672 res!479568) b!716639))

(assert (= (and b!716639 res!479567) b!716640))

(assert (= (and b!716640 res!479565) b!716641))

(assert (= (and b!716641 res!479566) b!716642))

(declare-fun m!672757 () Bool)

(assert (=> b!716640 m!672757))

(assert (=> b!716640 m!672757))

(declare-fun m!672759 () Bool)

(assert (=> b!716640 m!672759))

(declare-fun m!672761 () Bool)

(assert (=> start!63672 m!672761))

(declare-fun m!672763 () Bool)

(assert (=> start!63672 m!672763))

(declare-fun m!672765 () Bool)

(assert (=> b!716641 m!672765))

(check-sat (not b!716641) (not start!63672) (not b!716640))
(check-sat)
