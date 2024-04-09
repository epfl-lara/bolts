; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32250 () Bool)

(assert start!32250)

(declare-fun b!320930 () Bool)

(declare-fun res!175211 () Bool)

(declare-fun e!198972 () Bool)

(assert (=> b!320930 (=> (not res!175211) (not e!198972))))

(declare-datatypes ((array!16436 0))(
  ( (array!16437 (arr!7774 (Array (_ BitVec 32) (_ BitVec 64))) (size!8126 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16436)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320930 (= res!175211 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320931 () Bool)

(declare-fun res!175214 () Bool)

(assert (=> b!320931 (=> (not res!175214) (not e!198972))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320931 (= res!175214 (and (= (select (arr!7774 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8126 a!3305))))))

(declare-fun b!320932 () Bool)

(declare-fun res!175215 () Bool)

(assert (=> b!320932 (=> (not res!175215) (not e!198972))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16436 (_ BitVec 32)) Bool)

(assert (=> b!320932 (= res!175215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320933 () Bool)

(assert (=> b!320933 (= e!198972 false)))

(declare-datatypes ((SeekEntryResult!2916 0))(
  ( (MissingZero!2916 (index!13840 (_ BitVec 32))) (Found!2916 (index!13841 (_ BitVec 32))) (Intermediate!2916 (undefined!3728 Bool) (index!13842 (_ BitVec 32)) (x!32074 (_ BitVec 32))) (Undefined!2916) (MissingVacant!2916 (index!13843 (_ BitVec 32))) )
))
(declare-fun lt!156119 () SeekEntryResult!2916)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16436 (_ BitVec 32)) SeekEntryResult!2916)

(assert (=> b!320933 (= lt!156119 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!320934 () Bool)

(declare-fun res!175210 () Bool)

(assert (=> b!320934 (=> (not res!175210) (not e!198972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320934 (= res!175210 (validKeyInArray!0 k!2497))))

(declare-fun b!320936 () Bool)

(declare-fun res!175212 () Bool)

(assert (=> b!320936 (=> (not res!175212) (not e!198972))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320936 (= res!175212 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2916 false resIndex!58 resX!58)))))

(declare-fun b!320937 () Bool)

(declare-fun res!175213 () Bool)

(assert (=> b!320937 (=> (not res!175213) (not e!198972))))

(assert (=> b!320937 (= res!175213 (and (= (size!8126 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8126 a!3305))))))

(declare-fun res!175208 () Bool)

(assert (=> start!32250 (=> (not res!175208) (not e!198972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32250 (= res!175208 (validMask!0 mask!3777))))

(assert (=> start!32250 e!198972))

(declare-fun array_inv!5728 (array!16436) Bool)

(assert (=> start!32250 (array_inv!5728 a!3305)))

(assert (=> start!32250 true))

(declare-fun b!320935 () Bool)

(declare-fun res!175209 () Bool)

(assert (=> b!320935 (=> (not res!175209) (not e!198972))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16436 (_ BitVec 32)) SeekEntryResult!2916)

(assert (=> b!320935 (= res!175209 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2916 i!1250)))))

(assert (= (and start!32250 res!175208) b!320937))

(assert (= (and b!320937 res!175213) b!320934))

(assert (= (and b!320934 res!175210) b!320930))

(assert (= (and b!320930 res!175211) b!320935))

(assert (= (and b!320935 res!175209) b!320932))

(assert (= (and b!320932 res!175215) b!320936))

(assert (= (and b!320936 res!175212) b!320931))

(assert (= (and b!320931 res!175214) b!320933))

(declare-fun m!329173 () Bool)

(assert (=> b!320930 m!329173))

(declare-fun m!329175 () Bool)

(assert (=> b!320936 m!329175))

(assert (=> b!320936 m!329175))

(declare-fun m!329177 () Bool)

(assert (=> b!320936 m!329177))

(declare-fun m!329179 () Bool)

(assert (=> b!320931 m!329179))

(declare-fun m!329181 () Bool)

(assert (=> b!320933 m!329181))

(declare-fun m!329183 () Bool)

(assert (=> b!320932 m!329183))

(declare-fun m!329185 () Bool)

(assert (=> b!320935 m!329185))

(declare-fun m!329187 () Bool)

(assert (=> start!32250 m!329187))

(declare-fun m!329189 () Bool)

(assert (=> start!32250 m!329189))

(declare-fun m!329191 () Bool)

(assert (=> b!320934 m!329191))

(push 1)

(assert (not b!320933))

(assert (not b!320934))

(assert (not b!320930))

(assert (not b!320935))

(assert (not start!32250))

(assert (not b!320932))

(assert (not b!320936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

