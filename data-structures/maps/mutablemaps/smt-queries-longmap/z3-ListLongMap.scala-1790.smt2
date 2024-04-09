; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32450 () Bool)

(assert start!32450)

(declare-fun b!323902 () Bool)

(declare-fun res!177391 () Bool)

(declare-fun e!200061 () Bool)

(assert (=> b!323902 (=> (not res!177391) (not e!200061))))

(declare-datatypes ((array!16585 0))(
  ( (array!16586 (arr!7847 (Array (_ BitVec 32) (_ BitVec 64))) (size!8199 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16585)

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!323902 (= res!177391 (and (= (size!8199 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8199 a!3305))))))

(declare-fun b!323903 () Bool)

(declare-fun res!177397 () Bool)

(assert (=> b!323903 (=> (not res!177397) (not e!200061))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2989 0))(
  ( (MissingZero!2989 (index!14132 (_ BitVec 32))) (Found!2989 (index!14133 (_ BitVec 32))) (Intermediate!2989 (undefined!3801 Bool) (index!14134 (_ BitVec 32)) (x!32348 (_ BitVec 32))) (Undefined!2989) (MissingVacant!2989 (index!14135 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16585 (_ BitVec 32)) SeekEntryResult!2989)

(assert (=> b!323903 (= res!177397 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2989 i!1250)))))

(declare-fun b!323904 () Bool)

(declare-fun res!177399 () Bool)

(assert (=> b!323904 (=> (not res!177399) (not e!200061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16585 (_ BitVec 32)) Bool)

(assert (=> b!323904 (= res!177399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323905 () Bool)

(declare-fun e!200060 () Bool)

(assert (=> b!323905 (= e!200061 e!200060)))

(declare-fun res!177396 () Bool)

(assert (=> b!323905 (=> (not res!177396) (not e!200060))))

(declare-fun lt!156713 () SeekEntryResult!2989)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16585 (_ BitVec 32)) SeekEntryResult!2989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323905 (= res!177396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156713))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323905 (= lt!156713 (Intermediate!2989 false resIndex!58 resX!58))))

(declare-fun b!323906 () Bool)

(declare-fun res!177398 () Bool)

(assert (=> b!323906 (=> (not res!177398) (not e!200061))))

(declare-fun arrayContainsKey!0 (array!16585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323906 (= res!177398 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323907 () Bool)

(declare-fun res!177395 () Bool)

(assert (=> b!323907 (=> (not res!177395) (not e!200060))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323907 (= res!177395 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156713))))

(declare-fun b!323909 () Bool)

(declare-fun res!177394 () Bool)

(assert (=> b!323909 (=> (not res!177394) (not e!200061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323909 (= res!177394 (validKeyInArray!0 k0!2497))))

(declare-fun b!323910 () Bool)

(assert (=> b!323910 (= e!200060 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7847 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!323908 () Bool)

(declare-fun res!177392 () Bool)

(assert (=> b!323908 (=> (not res!177392) (not e!200060))))

(assert (=> b!323908 (= res!177392 (and (= (select (arr!7847 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8199 a!3305))))))

(declare-fun res!177393 () Bool)

(assert (=> start!32450 (=> (not res!177393) (not e!200061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32450 (= res!177393 (validMask!0 mask!3777))))

(assert (=> start!32450 e!200061))

(declare-fun array_inv!5801 (array!16585) Bool)

(assert (=> start!32450 (array_inv!5801 a!3305)))

(assert (=> start!32450 true))

(assert (= (and start!32450 res!177393) b!323902))

(assert (= (and b!323902 res!177391) b!323909))

(assert (= (and b!323909 res!177394) b!323906))

(assert (= (and b!323906 res!177398) b!323903))

(assert (= (and b!323903 res!177397) b!323904))

(assert (= (and b!323904 res!177399) b!323905))

(assert (= (and b!323905 res!177396) b!323908))

(assert (= (and b!323908 res!177392) b!323907))

(assert (= (and b!323907 res!177395) b!323910))

(declare-fun m!331055 () Bool)

(assert (=> b!323909 m!331055))

(declare-fun m!331057 () Bool)

(assert (=> b!323910 m!331057))

(declare-fun m!331059 () Bool)

(assert (=> b!323903 m!331059))

(declare-fun m!331061 () Bool)

(assert (=> b!323904 m!331061))

(declare-fun m!331063 () Bool)

(assert (=> start!32450 m!331063))

(declare-fun m!331065 () Bool)

(assert (=> start!32450 m!331065))

(declare-fun m!331067 () Bool)

(assert (=> b!323908 m!331067))

(declare-fun m!331069 () Bool)

(assert (=> b!323905 m!331069))

(assert (=> b!323905 m!331069))

(declare-fun m!331071 () Bool)

(assert (=> b!323905 m!331071))

(declare-fun m!331073 () Bool)

(assert (=> b!323907 m!331073))

(declare-fun m!331075 () Bool)

(assert (=> b!323906 m!331075))

(check-sat (not b!323906) (not start!32450) (not b!323905) (not b!323907) (not b!323903) (not b!323904) (not b!323909))
(check-sat)
