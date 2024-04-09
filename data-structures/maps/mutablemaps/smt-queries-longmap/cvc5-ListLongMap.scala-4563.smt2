; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63694 () Bool)

(assert start!63694)

(declare-fun b!716701 () Bool)

(declare-fun res!479629 () Bool)

(declare-fun e!402479 () Bool)

(assert (=> b!716701 (=> (not res!479629) (not e!402479))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716701 (= res!479629 (validKeyInArray!0 k!2102))))

(declare-fun b!716703 () Bool)

(declare-fun res!479631 () Bool)

(assert (=> b!716703 (=> (not res!479631) (not e!402479))))

(declare-datatypes ((array!40543 0))(
  ( (array!40544 (arr!19401 (Array (_ BitVec 32) (_ BitVec 64))) (size!19822 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40543)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716703 (= res!479631 (and (= (size!19822 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19822 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19822 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716704 () Bool)

(declare-fun res!479627 () Bool)

(assert (=> b!716704 (=> (not res!479627) (not e!402479))))

(assert (=> b!716704 (= res!479627 (validKeyInArray!0 (select (arr!19401 a!3186) j!159)))))

(declare-fun b!716705 () Bool)

(assert (=> b!716705 (= e!402479 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun res!479630 () Bool)

(assert (=> start!63694 (=> (not res!479630) (not e!402479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63694 (= res!479630 (validMask!0 mask!3328))))

(assert (=> start!63694 e!402479))

(declare-fun array_inv!15175 (array!40543) Bool)

(assert (=> start!63694 (array_inv!15175 a!3186)))

(assert (=> start!63694 true))

(declare-fun b!716702 () Bool)

(declare-fun res!479628 () Bool)

(assert (=> b!716702 (=> (not res!479628) (not e!402479))))

(declare-fun arrayContainsKey!0 (array!40543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716702 (= res!479628 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63694 res!479630) b!716703))

(assert (= (and b!716703 res!479631) b!716704))

(assert (= (and b!716704 res!479627) b!716701))

(assert (= (and b!716701 res!479629) b!716702))

(assert (= (and b!716702 res!479628) b!716705))

(declare-fun m!672807 () Bool)

(assert (=> b!716701 m!672807))

(declare-fun m!672809 () Bool)

(assert (=> b!716704 m!672809))

(assert (=> b!716704 m!672809))

(declare-fun m!672811 () Bool)

(assert (=> b!716704 m!672811))

(declare-fun m!672813 () Bool)

(assert (=> start!63694 m!672813))

(declare-fun m!672815 () Bool)

(assert (=> start!63694 m!672815))

(declare-fun m!672817 () Bool)

(assert (=> b!716702 m!672817))

(push 1)

(assert (not b!716702))

(assert (not b!716704))

(assert (not b!716701))

(assert (not start!63694))

(check-sat)

