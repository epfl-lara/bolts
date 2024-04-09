; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32246 () Bool)

(assert start!32246)

(declare-fun b!320878 () Bool)

(declare-fun res!175160 () Bool)

(declare-fun e!198957 () Bool)

(assert (=> b!320878 (=> (not res!175160) (not e!198957))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16432 0))(
  ( (array!16433 (arr!7772 (Array (_ BitVec 32) (_ BitVec 64))) (size!8124 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16432)

(declare-datatypes ((SeekEntryResult!2914 0))(
  ( (MissingZero!2914 (index!13832 (_ BitVec 32))) (Found!2914 (index!13833 (_ BitVec 32))) (Intermediate!2914 (undefined!3726 Bool) (index!13834 (_ BitVec 32)) (x!32064 (_ BitVec 32))) (Undefined!2914) (MissingVacant!2914 (index!13835 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16432 (_ BitVec 32)) SeekEntryResult!2914)

(assert (=> b!320878 (= res!175160 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2914 i!1250)))))

(declare-fun b!320879 () Bool)

(declare-fun res!175162 () Bool)

(declare-fun e!198956 () Bool)

(assert (=> b!320879 (=> (not res!175162) (not e!198956))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320879 (= res!175162 (and (= (select (arr!7772 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8124 a!3305))))))

(declare-fun b!320881 () Bool)

(declare-fun res!175156 () Bool)

(assert (=> b!320881 (=> (not res!175156) (not e!198957))))

(declare-fun arrayContainsKey!0 (array!16432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320881 (= res!175156 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320882 () Bool)

(declare-fun res!175161 () Bool)

(assert (=> b!320882 (=> (not res!175161) (not e!198957))))

(assert (=> b!320882 (= res!175161 (and (= (size!8124 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8124 a!3305))))))

(declare-fun b!320883 () Bool)

(declare-fun res!175158 () Bool)

(assert (=> b!320883 (=> (not res!175158) (not e!198956))))

(declare-fun lt!156113 () SeekEntryResult!2914)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16432 (_ BitVec 32)) SeekEntryResult!2914)

(assert (=> b!320883 (= res!175158 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156113))))

(declare-fun b!320884 () Bool)

(assert (=> b!320884 (= e!198956 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7772 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7772 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7772 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!320885 () Bool)

(assert (=> b!320885 (= e!198957 e!198956)))

(declare-fun res!175159 () Bool)

(assert (=> b!320885 (=> (not res!175159) (not e!198956))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320885 (= res!175159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156113))))

(assert (=> b!320885 (= lt!156113 (Intermediate!2914 false resIndex!58 resX!58))))

(declare-fun b!320886 () Bool)

(declare-fun res!175163 () Bool)

(assert (=> b!320886 (=> (not res!175163) (not e!198957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16432 (_ BitVec 32)) Bool)

(assert (=> b!320886 (= res!175163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320880 () Bool)

(declare-fun res!175164 () Bool)

(assert (=> b!320880 (=> (not res!175164) (not e!198957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320880 (= res!175164 (validKeyInArray!0 k0!2497))))

(declare-fun res!175157 () Bool)

(assert (=> start!32246 (=> (not res!175157) (not e!198957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32246 (= res!175157 (validMask!0 mask!3777))))

(assert (=> start!32246 e!198957))

(declare-fun array_inv!5726 (array!16432) Bool)

(assert (=> start!32246 (array_inv!5726 a!3305)))

(assert (=> start!32246 true))

(assert (= (and start!32246 res!175157) b!320882))

(assert (= (and b!320882 res!175161) b!320880))

(assert (= (and b!320880 res!175164) b!320881))

(assert (= (and b!320881 res!175156) b!320878))

(assert (= (and b!320878 res!175160) b!320886))

(assert (= (and b!320886 res!175163) b!320885))

(assert (= (and b!320885 res!175159) b!320879))

(assert (= (and b!320879 res!175162) b!320883))

(assert (= (and b!320883 res!175158) b!320884))

(declare-fun m!329129 () Bool)

(assert (=> b!320885 m!329129))

(assert (=> b!320885 m!329129))

(declare-fun m!329131 () Bool)

(assert (=> b!320885 m!329131))

(declare-fun m!329133 () Bool)

(assert (=> start!32246 m!329133))

(declare-fun m!329135 () Bool)

(assert (=> start!32246 m!329135))

(declare-fun m!329137 () Bool)

(assert (=> b!320886 m!329137))

(declare-fun m!329139 () Bool)

(assert (=> b!320878 m!329139))

(declare-fun m!329141 () Bool)

(assert (=> b!320879 m!329141))

(declare-fun m!329143 () Bool)

(assert (=> b!320880 m!329143))

(declare-fun m!329145 () Bool)

(assert (=> b!320881 m!329145))

(declare-fun m!329147 () Bool)

(assert (=> b!320883 m!329147))

(declare-fun m!329149 () Bool)

(assert (=> b!320884 m!329149))

(check-sat (not start!32246) (not b!320886) (not b!320885) (not b!320881) (not b!320878) (not b!320883) (not b!320880))
(check-sat)
