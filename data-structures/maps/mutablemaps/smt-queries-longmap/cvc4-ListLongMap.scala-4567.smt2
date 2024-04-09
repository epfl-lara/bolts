; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63722 () Bool)

(assert start!63722)

(declare-fun b!716920 () Bool)

(declare-fun e!402564 () Bool)

(assert (=> b!716920 (= e!402564 false)))

(declare-datatypes ((array!40571 0))(
  ( (array!40572 (arr!19415 (Array (_ BitVec 32) (_ BitVec 64))) (size!19836 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40571)

(declare-datatypes ((SeekEntryResult!7022 0))(
  ( (MissingZero!7022 (index!30455 (_ BitVec 32))) (Found!7022 (index!30456 (_ BitVec 32))) (Intermediate!7022 (undefined!7834 Bool) (index!30457 (_ BitVec 32)) (x!61507 (_ BitVec 32))) (Undefined!7022) (MissingVacant!7022 (index!30458 (_ BitVec 32))) )
))
(declare-fun lt!318953 () SeekEntryResult!7022)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40571 (_ BitVec 32)) SeekEntryResult!7022)

(assert (=> b!716920 (= lt!318953 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!716921 () Bool)

(declare-fun res!479849 () Bool)

(assert (=> b!716921 (=> (not res!479849) (not e!402564))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716921 (= res!479849 (validKeyInArray!0 (select (arr!19415 a!3186) j!159)))))

(declare-fun b!716922 () Bool)

(declare-fun res!479847 () Bool)

(assert (=> b!716922 (=> (not res!479847) (not e!402564))))

(declare-fun arrayContainsKey!0 (array!40571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716922 (= res!479847 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716923 () Bool)

(declare-fun res!479846 () Bool)

(assert (=> b!716923 (=> (not res!479846) (not e!402564))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716923 (= res!479846 (and (= (size!19836 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19836 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19836 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716924 () Bool)

(declare-fun res!479850 () Bool)

(assert (=> b!716924 (=> (not res!479850) (not e!402564))))

(assert (=> b!716924 (= res!479850 (validKeyInArray!0 k!2102))))

(declare-fun res!479848 () Bool)

(assert (=> start!63722 (=> (not res!479848) (not e!402564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63722 (= res!479848 (validMask!0 mask!3328))))

(assert (=> start!63722 e!402564))

(declare-fun array_inv!15189 (array!40571) Bool)

(assert (=> start!63722 (array_inv!15189 a!3186)))

(assert (=> start!63722 true))

(assert (= (and start!63722 res!479848) b!716923))

(assert (= (and b!716923 res!479846) b!716921))

(assert (= (and b!716921 res!479849) b!716924))

(assert (= (and b!716924 res!479850) b!716922))

(assert (= (and b!716922 res!479847) b!716920))

(declare-fun m!672997 () Bool)

(assert (=> b!716922 m!672997))

(declare-fun m!672999 () Bool)

(assert (=> b!716924 m!672999))

(declare-fun m!673001 () Bool)

(assert (=> b!716920 m!673001))

(declare-fun m!673003 () Bool)

(assert (=> start!63722 m!673003))

(declare-fun m!673005 () Bool)

(assert (=> start!63722 m!673005))

(declare-fun m!673007 () Bool)

(assert (=> b!716921 m!673007))

(assert (=> b!716921 m!673007))

(declare-fun m!673009 () Bool)

(assert (=> b!716921 m!673009))

(push 1)

(assert (not b!716921))

(assert (not b!716920))

(assert (not start!63722))

(assert (not b!716922))

(assert (not b!716924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

