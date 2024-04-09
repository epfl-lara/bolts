; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63724 () Bool)

(assert start!63724)

(declare-fun b!716935 () Bool)

(declare-fun res!479861 () Bool)

(declare-fun e!402570 () Bool)

(assert (=> b!716935 (=> (not res!479861) (not e!402570))))

(declare-datatypes ((array!40573 0))(
  ( (array!40574 (arr!19416 (Array (_ BitVec 32) (_ BitVec 64))) (size!19837 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40573)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716935 (= res!479861 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716936 () Bool)

(assert (=> b!716936 (= e!402570 false)))

(declare-datatypes ((SeekEntryResult!7023 0))(
  ( (MissingZero!7023 (index!30459 (_ BitVec 32))) (Found!7023 (index!30460 (_ BitVec 32))) (Intermediate!7023 (undefined!7835 Bool) (index!30461 (_ BitVec 32)) (x!61516 (_ BitVec 32))) (Undefined!7023) (MissingVacant!7023 (index!30462 (_ BitVec 32))) )
))
(declare-fun lt!318956 () SeekEntryResult!7023)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40573 (_ BitVec 32)) SeekEntryResult!7023)

(assert (=> b!716936 (= lt!318956 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!479863 () Bool)

(assert (=> start!63724 (=> (not res!479863) (not e!402570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63724 (= res!479863 (validMask!0 mask!3328))))

(assert (=> start!63724 e!402570))

(declare-fun array_inv!15190 (array!40573) Bool)

(assert (=> start!63724 (array_inv!15190 a!3186)))

(assert (=> start!63724 true))

(declare-fun b!716937 () Bool)

(declare-fun res!479865 () Bool)

(assert (=> b!716937 (=> (not res!479865) (not e!402570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716937 (= res!479865 (validKeyInArray!0 k!2102))))

(declare-fun b!716938 () Bool)

(declare-fun res!479864 () Bool)

(assert (=> b!716938 (=> (not res!479864) (not e!402570))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716938 (= res!479864 (validKeyInArray!0 (select (arr!19416 a!3186) j!159)))))

(declare-fun b!716939 () Bool)

(declare-fun res!479862 () Bool)

(assert (=> b!716939 (=> (not res!479862) (not e!402570))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716939 (= res!479862 (and (= (size!19837 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19837 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19837 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63724 res!479863) b!716939))

(assert (= (and b!716939 res!479862) b!716938))

(assert (= (and b!716938 res!479864) b!716937))

(assert (= (and b!716937 res!479865) b!716935))

(assert (= (and b!716935 res!479861) b!716936))

(declare-fun m!673011 () Bool)

(assert (=> b!716937 m!673011))

(declare-fun m!673013 () Bool)

(assert (=> start!63724 m!673013))

(declare-fun m!673015 () Bool)

(assert (=> start!63724 m!673015))

(declare-fun m!673017 () Bool)

(assert (=> b!716936 m!673017))

(declare-fun m!673019 () Bool)

(assert (=> b!716938 m!673019))

(assert (=> b!716938 m!673019))

(declare-fun m!673021 () Bool)

(assert (=> b!716938 m!673021))

(declare-fun m!673023 () Bool)

(assert (=> b!716935 m!673023))

(push 1)

(assert (not b!716936))

(assert (not start!63724))

(assert (not b!716938))

(assert (not b!716935))

(assert (not b!716937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

