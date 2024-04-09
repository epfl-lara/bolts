; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32460 () Bool)

(assert start!32460)

(declare-datatypes ((array!16595 0))(
  ( (array!16596 (arr!7852 (Array (_ BitVec 32) (_ BitVec 64))) (size!8204 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16595)

(declare-fun e!200105 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun b!324037 () Bool)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!324037 (= e!200105 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7852 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!324038 () Bool)

(declare-fun res!177530 () Bool)

(assert (=> b!324038 (=> (not res!177530) (not e!200105))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324038 (= res!177530 (and (= (select (arr!7852 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8204 a!3305))))))

(declare-fun b!324039 () Bool)

(declare-fun e!200106 () Bool)

(assert (=> b!324039 (= e!200106 e!200105)))

(declare-fun res!177528 () Bool)

(assert (=> b!324039 (=> (not res!177528) (not e!200105))))

(declare-datatypes ((SeekEntryResult!2994 0))(
  ( (MissingZero!2994 (index!14152 (_ BitVec 32))) (Found!2994 (index!14153 (_ BitVec 32))) (Intermediate!2994 (undefined!3806 Bool) (index!14154 (_ BitVec 32)) (x!32369 (_ BitVec 32))) (Undefined!2994) (MissingVacant!2994 (index!14155 (_ BitVec 32))) )
))
(declare-fun lt!156728 () SeekEntryResult!2994)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16595 (_ BitVec 32)) SeekEntryResult!2994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324039 (= res!177528 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156728))))

(assert (=> b!324039 (= lt!156728 (Intermediate!2994 false resIndex!58 resX!58))))

(declare-fun b!324040 () Bool)

(declare-fun res!177526 () Bool)

(assert (=> b!324040 (=> (not res!177526) (not e!200106))))

(declare-fun arrayContainsKey!0 (array!16595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324040 (= res!177526 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324041 () Bool)

(declare-fun res!177529 () Bool)

(assert (=> b!324041 (=> (not res!177529) (not e!200106))))

(assert (=> b!324041 (= res!177529 (and (= (size!8204 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8204 a!3305))))))

(declare-fun b!324042 () Bool)

(declare-fun res!177527 () Bool)

(assert (=> b!324042 (=> (not res!177527) (not e!200106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16595 (_ BitVec 32)) Bool)

(assert (=> b!324042 (= res!177527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324043 () Bool)

(declare-fun res!177531 () Bool)

(assert (=> b!324043 (=> (not res!177531) (not e!200106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324043 (= res!177531 (validKeyInArray!0 k!2497))))

(declare-fun b!324044 () Bool)

(declare-fun res!177533 () Bool)

(assert (=> b!324044 (=> (not res!177533) (not e!200105))))

(assert (=> b!324044 (= res!177533 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156728))))

(declare-fun b!324045 () Bool)

(declare-fun res!177532 () Bool)

(assert (=> b!324045 (=> (not res!177532) (not e!200106))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16595 (_ BitVec 32)) SeekEntryResult!2994)

(assert (=> b!324045 (= res!177532 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2994 i!1250)))))

(declare-fun res!177534 () Bool)

(assert (=> start!32460 (=> (not res!177534) (not e!200106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32460 (= res!177534 (validMask!0 mask!3777))))

(assert (=> start!32460 e!200106))

(declare-fun array_inv!5806 (array!16595) Bool)

(assert (=> start!32460 (array_inv!5806 a!3305)))

(assert (=> start!32460 true))

(assert (= (and start!32460 res!177534) b!324041))

(assert (= (and b!324041 res!177529) b!324043))

(assert (= (and b!324043 res!177531) b!324040))

(assert (= (and b!324040 res!177526) b!324045))

(assert (= (and b!324045 res!177532) b!324042))

(assert (= (and b!324042 res!177527) b!324039))

(assert (= (and b!324039 res!177528) b!324038))

(assert (= (and b!324038 res!177530) b!324044))

(assert (= (and b!324044 res!177533) b!324037))

(declare-fun m!331165 () Bool)

(assert (=> b!324039 m!331165))

(assert (=> b!324039 m!331165))

(declare-fun m!331167 () Bool)

(assert (=> b!324039 m!331167))

(declare-fun m!331169 () Bool)

(assert (=> b!324044 m!331169))

(declare-fun m!331171 () Bool)

(assert (=> b!324037 m!331171))

(declare-fun m!331173 () Bool)

(assert (=> b!324045 m!331173))

(declare-fun m!331175 () Bool)

(assert (=> start!32460 m!331175))

(declare-fun m!331177 () Bool)

(assert (=> start!32460 m!331177))

(declare-fun m!331179 () Bool)

(assert (=> b!324042 m!331179))

(declare-fun m!331181 () Bool)

(assert (=> b!324040 m!331181))

(declare-fun m!331183 () Bool)

(assert (=> b!324043 m!331183))

(declare-fun m!331185 () Bool)

(assert (=> b!324038 m!331185))

(push 1)

(assert (not b!324044))

(assert (not b!324039))

(assert (not start!32460))

