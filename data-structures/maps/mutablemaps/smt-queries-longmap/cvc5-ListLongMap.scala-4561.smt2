; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63670 () Bool)

(assert start!63670)

(declare-fun b!716629 () Bool)

(declare-fun res!479554 () Bool)

(declare-fun e!402443 () Bool)

(assert (=> b!716629 (=> (not res!479554) (not e!402443))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716629 (= res!479554 (validKeyInArray!0 k!2102))))

(declare-fun b!716627 () Bool)

(declare-fun res!479553 () Bool)

(assert (=> b!716627 (=> (not res!479553) (not e!402443))))

(declare-datatypes ((array!40530 0))(
  ( (array!40531 (arr!19395 (Array (_ BitVec 32) (_ BitVec 64))) (size!19816 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40530)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716627 (= res!479553 (and (= (size!19816 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19816 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19816 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716630 () Bool)

(assert (=> b!716630 (= e!402443 (bvsge #b00000000000000000000000000000000 (size!19816 a!3186)))))

(declare-fun b!716628 () Bool)

(declare-fun res!479555 () Bool)

(assert (=> b!716628 (=> (not res!479555) (not e!402443))))

(assert (=> b!716628 (= res!479555 (validKeyInArray!0 (select (arr!19395 a!3186) j!159)))))

(declare-fun res!479556 () Bool)

(assert (=> start!63670 (=> (not res!479556) (not e!402443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63670 (= res!479556 (validMask!0 mask!3328))))

(assert (=> start!63670 e!402443))

(declare-fun array_inv!15169 (array!40530) Bool)

(assert (=> start!63670 (array_inv!15169 a!3186)))

(assert (=> start!63670 true))

(assert (= (and start!63670 res!479556) b!716627))

(assert (= (and b!716627 res!479553) b!716628))

(assert (= (and b!716628 res!479555) b!716629))

(assert (= (and b!716629 res!479554) b!716630))

(declare-fun m!672747 () Bool)

(assert (=> b!716629 m!672747))

(declare-fun m!672749 () Bool)

(assert (=> b!716628 m!672749))

(assert (=> b!716628 m!672749))

(declare-fun m!672751 () Bool)

(assert (=> b!716628 m!672751))

(declare-fun m!672753 () Bool)

(assert (=> start!63670 m!672753))

(declare-fun m!672755 () Bool)

(assert (=> start!63670 m!672755))

(push 1)

(assert (not b!716628))

(assert (not b!716629))

(assert (not start!63670))

(check-sat)

(pop 1)

