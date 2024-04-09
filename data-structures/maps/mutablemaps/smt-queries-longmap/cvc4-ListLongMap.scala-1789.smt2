; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32446 () Bool)

(assert start!32446)

(declare-fun b!323849 () Bool)

(declare-fun res!177345 () Bool)

(declare-fun e!200044 () Bool)

(assert (=> b!323849 (=> (not res!177345) (not e!200044))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323849 (= res!177345 (validKeyInArray!0 k!2497))))

(declare-fun b!323850 () Bool)

(declare-fun res!177342 () Bool)

(assert (=> b!323850 (=> (not res!177342) (not e!200044))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-datatypes ((array!16581 0))(
  ( (array!16582 (arr!7845 (Array (_ BitVec 32) (_ BitVec 64))) (size!8197 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16581)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2987 0))(
  ( (MissingZero!2987 (index!14124 (_ BitVec 32))) (Found!2987 (index!14125 (_ BitVec 32))) (Intermediate!2987 (undefined!3799 Bool) (index!14126 (_ BitVec 32)) (x!32338 (_ BitVec 32))) (Undefined!2987) (MissingVacant!2987 (index!14127 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16581 (_ BitVec 32)) SeekEntryResult!2987)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323850 (= res!177342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2987 false resIndex!58 resX!58)))))

(declare-fun b!323851 () Bool)

(declare-fun res!177343 () Bool)

(assert (=> b!323851 (=> (not res!177343) (not e!200044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16581 (_ BitVec 32)) Bool)

(assert (=> b!323851 (= res!177343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!177338 () Bool)

(assert (=> start!32446 (=> (not res!177338) (not e!200044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32446 (= res!177338 (validMask!0 mask!3777))))

(assert (=> start!32446 e!200044))

(declare-fun array_inv!5799 (array!16581) Bool)

(assert (=> start!32446 (array_inv!5799 a!3305)))

(assert (=> start!32446 true))

(declare-fun b!323852 () Bool)

(assert (=> b!323852 (= e!200044 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!156707 () SeekEntryResult!2987)

(assert (=> b!323852 (= lt!156707 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!323853 () Bool)

(declare-fun res!177339 () Bool)

(assert (=> b!323853 (=> (not res!177339) (not e!200044))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16581 (_ BitVec 32)) SeekEntryResult!2987)

(assert (=> b!323853 (= res!177339 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2987 i!1250)))))

(declare-fun b!323854 () Bool)

(declare-fun res!177340 () Bool)

(assert (=> b!323854 (=> (not res!177340) (not e!200044))))

(assert (=> b!323854 (= res!177340 (and (= (size!8197 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8197 a!3305))))))

(declare-fun b!323855 () Bool)

(declare-fun res!177341 () Bool)

(assert (=> b!323855 (=> (not res!177341) (not e!200044))))

(assert (=> b!323855 (= res!177341 (and (= (select (arr!7845 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8197 a!3305))))))

(declare-fun b!323856 () Bool)

(declare-fun res!177344 () Bool)

(assert (=> b!323856 (=> (not res!177344) (not e!200044))))

(declare-fun arrayContainsKey!0 (array!16581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323856 (= res!177344 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32446 res!177338) b!323854))

(assert (= (and b!323854 res!177340) b!323849))

(assert (= (and b!323849 res!177345) b!323856))

(assert (= (and b!323856 res!177344) b!323853))

(assert (= (and b!323853 res!177339) b!323851))

(assert (= (and b!323851 res!177343) b!323850))

(assert (= (and b!323850 res!177342) b!323855))

(assert (= (and b!323855 res!177341) b!323852))

(declare-fun m!331013 () Bool)

(assert (=> b!323855 m!331013))

(declare-fun m!331015 () Bool)

(assert (=> b!323849 m!331015))

(declare-fun m!331017 () Bool)

(assert (=> b!323856 m!331017))

(declare-fun m!331019 () Bool)

(assert (=> b!323851 m!331019))

(declare-fun m!331021 () Bool)

(assert (=> b!323850 m!331021))

(assert (=> b!323850 m!331021))

(declare-fun m!331023 () Bool)

(assert (=> b!323850 m!331023))

(declare-fun m!331025 () Bool)

(assert (=> b!323852 m!331025))

(declare-fun m!331027 () Bool)

(assert (=> start!32446 m!331027))

(declare-fun m!331029 () Bool)

(assert (=> start!32446 m!331029))

(declare-fun m!331031 () Bool)

(assert (=> b!323853 m!331031))

(push 1)

(assert (not b!323851))

(assert (not b!323852))

(assert (not b!323849))

(assert (not b!323856))

(assert (not b!323850))

(assert (not start!32446))

(assert (not b!323853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

