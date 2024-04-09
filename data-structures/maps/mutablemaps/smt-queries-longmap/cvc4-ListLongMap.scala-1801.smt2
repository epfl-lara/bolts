; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32518 () Bool)

(assert start!32518)

(declare-fun b!324900 () Bool)

(declare-fun res!178390 () Bool)

(declare-fun e!200367 () Bool)

(assert (=> b!324900 (=> (not res!178390) (not e!200367))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324900 (= res!178390 (validKeyInArray!0 k!2497))))

(declare-fun b!324901 () Bool)

(declare-fun res!178391 () Bool)

(assert (=> b!324901 (=> (not res!178391) (not e!200367))))

(declare-datatypes ((array!16653 0))(
  ( (array!16654 (arr!7881 (Array (_ BitVec 32) (_ BitVec 64))) (size!8233 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16653)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16653 (_ BitVec 32)) Bool)

(assert (=> b!324901 (= res!178391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324902 () Bool)

(declare-fun e!200368 () Bool)

(assert (=> b!324902 (= e!200368 false)))

(declare-fun lt!156895 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324902 (= lt!156895 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324903 () Bool)

(declare-fun res!178393 () Bool)

(assert (=> b!324903 (=> (not res!178393) (not e!200368))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324903 (= res!178393 (and (= (select (arr!7881 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8233 a!3305))))))

(declare-fun b!324904 () Bool)

(declare-fun res!178397 () Bool)

(assert (=> b!324904 (=> (not res!178397) (not e!200367))))

(assert (=> b!324904 (= res!178397 (and (= (size!8233 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8233 a!3305))))))

(declare-fun b!324905 () Bool)

(declare-fun res!178396 () Bool)

(assert (=> b!324905 (=> (not res!178396) (not e!200367))))

(declare-datatypes ((SeekEntryResult!3023 0))(
  ( (MissingZero!3023 (index!14268 (_ BitVec 32))) (Found!3023 (index!14269 (_ BitVec 32))) (Intermediate!3023 (undefined!3835 Bool) (index!14270 (_ BitVec 32)) (x!32470 (_ BitVec 32))) (Undefined!3023) (MissingVacant!3023 (index!14271 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16653 (_ BitVec 32)) SeekEntryResult!3023)

(assert (=> b!324905 (= res!178396 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3023 i!1250)))))

(declare-fun b!324906 () Bool)

(declare-fun res!178398 () Bool)

(assert (=> b!324906 (=> (not res!178398) (not e!200368))))

(assert (=> b!324906 (= res!178398 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7881 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178389 () Bool)

(assert (=> start!32518 (=> (not res!178389) (not e!200367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32518 (= res!178389 (validMask!0 mask!3777))))

(assert (=> start!32518 e!200367))

(declare-fun array_inv!5835 (array!16653) Bool)

(assert (=> start!32518 (array_inv!5835 a!3305)))

(assert (=> start!32518 true))

(declare-fun b!324907 () Bool)

(assert (=> b!324907 (= e!200367 e!200368)))

(declare-fun res!178392 () Bool)

(assert (=> b!324907 (=> (not res!178392) (not e!200368))))

(declare-fun lt!156896 () SeekEntryResult!3023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16653 (_ BitVec 32)) SeekEntryResult!3023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324907 (= res!178392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156896))))

(assert (=> b!324907 (= lt!156896 (Intermediate!3023 false resIndex!58 resX!58))))

(declare-fun b!324908 () Bool)

(declare-fun res!178394 () Bool)

(assert (=> b!324908 (=> (not res!178394) (not e!200368))))

(assert (=> b!324908 (= res!178394 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156896))))

(declare-fun b!324909 () Bool)

(declare-fun res!178395 () Bool)

(assert (=> b!324909 (=> (not res!178395) (not e!200367))))

(declare-fun arrayContainsKey!0 (array!16653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324909 (= res!178395 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32518 res!178389) b!324904))

(assert (= (and b!324904 res!178397) b!324900))

(assert (= (and b!324900 res!178390) b!324909))

(assert (= (and b!324909 res!178395) b!324905))

(assert (= (and b!324905 res!178396) b!324901))

(assert (= (and b!324901 res!178391) b!324907))

(assert (= (and b!324907 res!178392) b!324903))

(assert (= (and b!324903 res!178393) b!324908))

(assert (= (and b!324908 res!178394) b!324906))

(assert (= (and b!324906 res!178398) b!324902))

(declare-fun m!331855 () Bool)

(assert (=> b!324903 m!331855))

(declare-fun m!331857 () Bool)

(assert (=> b!324906 m!331857))

(declare-fun m!331859 () Bool)

(assert (=> start!32518 m!331859))

(declare-fun m!331861 () Bool)

(assert (=> start!32518 m!331861))

(declare-fun m!331863 () Bool)

(assert (=> b!324908 m!331863))

(declare-fun m!331865 () Bool)

(assert (=> b!324900 m!331865))

(declare-fun m!331867 () Bool)

(assert (=> b!324909 m!331867))

(declare-fun m!331869 () Bool)

(assert (=> b!324901 m!331869))

(declare-fun m!331871 () Bool)

(assert (=> b!324902 m!331871))

(declare-fun m!331873 () Bool)

(assert (=> b!324905 m!331873))

(declare-fun m!331875 () Bool)

(assert (=> b!324907 m!331875))

(assert (=> b!324907 m!331875))

(declare-fun m!331877 () Bool)

(assert (=> b!324907 m!331877))

(push 1)

(assert (not b!324901))

(assert (not b!324909))

(assert (not b!324900))

(assert (not start!32518))

(assert (not b!324902))

(assert (not b!324908))

(assert (not b!324905))

(assert (not b!324907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

