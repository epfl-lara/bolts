; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32238 () Bool)

(assert start!32238)

(declare-fun b!320770 () Bool)

(declare-fun res!175052 () Bool)

(declare-fun e!198921 () Bool)

(assert (=> b!320770 (=> (not res!175052) (not e!198921))))

(declare-datatypes ((array!16424 0))(
  ( (array!16425 (arr!7768 (Array (_ BitVec 32) (_ BitVec 64))) (size!8120 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16424)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16424 (_ BitVec 32)) Bool)

(assert (=> b!320770 (= res!175052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320771 () Bool)

(declare-fun res!175056 () Bool)

(declare-fun e!198920 () Bool)

(assert (=> b!320771 (=> (not res!175056) (not e!198920))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320771 (= res!175056 (and (= (select (arr!7768 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8120 a!3305))))))

(declare-fun b!320772 () Bool)

(declare-fun res!175050 () Bool)

(assert (=> b!320772 (=> (not res!175050) (not e!198921))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2910 0))(
  ( (MissingZero!2910 (index!13816 (_ BitVec 32))) (Found!2910 (index!13817 (_ BitVec 32))) (Intermediate!2910 (undefined!3722 Bool) (index!13818 (_ BitVec 32)) (x!32052 (_ BitVec 32))) (Undefined!2910) (MissingVacant!2910 (index!13819 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16424 (_ BitVec 32)) SeekEntryResult!2910)

(assert (=> b!320772 (= res!175050 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2910 i!1250)))))

(declare-fun b!320774 () Bool)

(declare-fun res!175049 () Bool)

(assert (=> b!320774 (=> (not res!175049) (not e!198921))))

(assert (=> b!320774 (= res!175049 (and (= (size!8120 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8120 a!3305))))))

(declare-fun b!320775 () Bool)

(assert (=> b!320775 (= e!198920 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7768 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7768 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7768 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!320776 () Bool)

(declare-fun res!175051 () Bool)

(assert (=> b!320776 (=> (not res!175051) (not e!198921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320776 (= res!175051 (validKeyInArray!0 k!2497))))

(declare-fun b!320777 () Bool)

(declare-fun res!175053 () Bool)

(assert (=> b!320777 (=> (not res!175053) (not e!198920))))

(declare-fun lt!156101 () SeekEntryResult!2910)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16424 (_ BitVec 32)) SeekEntryResult!2910)

(assert (=> b!320777 (= res!175053 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156101))))

(declare-fun b!320778 () Bool)

(declare-fun res!175055 () Bool)

(assert (=> b!320778 (=> (not res!175055) (not e!198921))))

(declare-fun arrayContainsKey!0 (array!16424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320778 (= res!175055 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320773 () Bool)

(assert (=> b!320773 (= e!198921 e!198920)))

(declare-fun res!175048 () Bool)

(assert (=> b!320773 (=> (not res!175048) (not e!198920))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320773 (= res!175048 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156101))))

(assert (=> b!320773 (= lt!156101 (Intermediate!2910 false resIndex!58 resX!58))))

(declare-fun res!175054 () Bool)

(assert (=> start!32238 (=> (not res!175054) (not e!198921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32238 (= res!175054 (validMask!0 mask!3777))))

(assert (=> start!32238 e!198921))

(declare-fun array_inv!5722 (array!16424) Bool)

(assert (=> start!32238 (array_inv!5722 a!3305)))

(assert (=> start!32238 true))

(assert (= (and start!32238 res!175054) b!320774))

(assert (= (and b!320774 res!175049) b!320776))

(assert (= (and b!320776 res!175051) b!320778))

(assert (= (and b!320778 res!175055) b!320772))

(assert (= (and b!320772 res!175050) b!320770))

(assert (= (and b!320770 res!175052) b!320773))

(assert (= (and b!320773 res!175048) b!320771))

(assert (= (and b!320771 res!175056) b!320777))

(assert (= (and b!320777 res!175053) b!320775))

(declare-fun m!329041 () Bool)

(assert (=> b!320772 m!329041))

(declare-fun m!329043 () Bool)

(assert (=> b!320770 m!329043))

(declare-fun m!329045 () Bool)

(assert (=> start!32238 m!329045))

(declare-fun m!329047 () Bool)

(assert (=> start!32238 m!329047))

(declare-fun m!329049 () Bool)

(assert (=> b!320778 m!329049))

(declare-fun m!329051 () Bool)

(assert (=> b!320776 m!329051))

(declare-fun m!329053 () Bool)

(assert (=> b!320773 m!329053))

(assert (=> b!320773 m!329053))

(declare-fun m!329055 () Bool)

(assert (=> b!320773 m!329055))

(declare-fun m!329057 () Bool)

(assert (=> b!320775 m!329057))

(declare-fun m!329059 () Bool)

(assert (=> b!320771 m!329059))

(declare-fun m!329061 () Bool)

(assert (=> b!320777 m!329061))

(push 1)

(assert (not b!320778))

(assert (not b!320773))

(assert (not start!32238))

(assert (not b!320770))

(assert (not b!320777))

(assert (not b!320772))

(assert (not b!320776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

