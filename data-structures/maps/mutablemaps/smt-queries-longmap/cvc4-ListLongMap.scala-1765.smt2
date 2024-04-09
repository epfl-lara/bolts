; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32248 () Bool)

(assert start!32248)

(declare-fun b!320905 () Bool)

(declare-fun res!175187 () Bool)

(declare-fun e!198965 () Bool)

(assert (=> b!320905 (=> (not res!175187) (not e!198965))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320905 (= res!175187 (validKeyInArray!0 k!2497))))

(declare-fun res!175183 () Bool)

(assert (=> start!32248 (=> (not res!175183) (not e!198965))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32248 (= res!175183 (validMask!0 mask!3777))))

(assert (=> start!32248 e!198965))

(declare-datatypes ((array!16434 0))(
  ( (array!16435 (arr!7773 (Array (_ BitVec 32) (_ BitVec 64))) (size!8125 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16434)

(declare-fun array_inv!5727 (array!16434) Bool)

(assert (=> start!32248 (array_inv!5727 a!3305)))

(assert (=> start!32248 true))

(declare-fun b!320906 () Bool)

(declare-fun res!175189 () Bool)

(declare-fun e!198967 () Bool)

(assert (=> b!320906 (=> (not res!175189) (not e!198967))))

(declare-datatypes ((SeekEntryResult!2915 0))(
  ( (MissingZero!2915 (index!13836 (_ BitVec 32))) (Found!2915 (index!13837 (_ BitVec 32))) (Intermediate!2915 (undefined!3727 Bool) (index!13838 (_ BitVec 32)) (x!32065 (_ BitVec 32))) (Undefined!2915) (MissingVacant!2915 (index!13839 (_ BitVec 32))) )
))
(declare-fun lt!156116 () SeekEntryResult!2915)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16434 (_ BitVec 32)) SeekEntryResult!2915)

(assert (=> b!320906 (= res!175189 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156116))))

(declare-fun b!320907 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320907 (= e!198967 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7773 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7773 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7773 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!320908 () Bool)

(declare-fun res!175188 () Bool)

(assert (=> b!320908 (=> (not res!175188) (not e!198967))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320908 (= res!175188 (and (= (select (arr!7773 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8125 a!3305))))))

(declare-fun b!320909 () Bool)

(assert (=> b!320909 (= e!198965 e!198967)))

(declare-fun res!175186 () Bool)

(assert (=> b!320909 (=> (not res!175186) (not e!198967))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320909 (= res!175186 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156116))))

(assert (=> b!320909 (= lt!156116 (Intermediate!2915 false resIndex!58 resX!58))))

(declare-fun b!320910 () Bool)

(declare-fun res!175185 () Bool)

(assert (=> b!320910 (=> (not res!175185) (not e!198965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16434 (_ BitVec 32)) Bool)

(assert (=> b!320910 (= res!175185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320911 () Bool)

(declare-fun res!175190 () Bool)

(assert (=> b!320911 (=> (not res!175190) (not e!198965))))

(assert (=> b!320911 (= res!175190 (and (= (size!8125 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8125 a!3305))))))

(declare-fun b!320912 () Bool)

(declare-fun res!175191 () Bool)

(assert (=> b!320912 (=> (not res!175191) (not e!198965))))

(declare-fun arrayContainsKey!0 (array!16434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320912 (= res!175191 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320913 () Bool)

(declare-fun res!175184 () Bool)

(assert (=> b!320913 (=> (not res!175184) (not e!198965))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16434 (_ BitVec 32)) SeekEntryResult!2915)

(assert (=> b!320913 (= res!175184 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2915 i!1250)))))

(assert (= (and start!32248 res!175183) b!320911))

(assert (= (and b!320911 res!175190) b!320905))

(assert (= (and b!320905 res!175187) b!320912))

(assert (= (and b!320912 res!175191) b!320913))

(assert (= (and b!320913 res!175184) b!320910))

(assert (= (and b!320910 res!175185) b!320909))

(assert (= (and b!320909 res!175186) b!320908))

(assert (= (and b!320908 res!175188) b!320906))

(assert (= (and b!320906 res!175189) b!320907))

(declare-fun m!329151 () Bool)

(assert (=> b!320913 m!329151))

(declare-fun m!329153 () Bool)

(assert (=> b!320910 m!329153))

(declare-fun m!329155 () Bool)

(assert (=> start!32248 m!329155))

(declare-fun m!329157 () Bool)

(assert (=> start!32248 m!329157))

(declare-fun m!329159 () Bool)

(assert (=> b!320912 m!329159))

(declare-fun m!329161 () Bool)

(assert (=> b!320906 m!329161))

(declare-fun m!329163 () Bool)

(assert (=> b!320907 m!329163))

(declare-fun m!329165 () Bool)

(assert (=> b!320905 m!329165))

(declare-fun m!329167 () Bool)

(assert (=> b!320909 m!329167))

(assert (=> b!320909 m!329167))

(declare-fun m!329169 () Bool)

(assert (=> b!320909 m!329169))

(declare-fun m!329171 () Bool)

(assert (=> b!320908 m!329171))

(push 1)

(assert (not b!320906))

(assert (not b!320910))

(assert (not start!32248))

(assert (not b!320913))

(assert (not b!320905))

(assert (not b!320912))

(assert (not b!320909))

(check-sat)

