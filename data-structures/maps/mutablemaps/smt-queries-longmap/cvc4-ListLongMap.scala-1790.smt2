; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32452 () Bool)

(assert start!32452)

(declare-fun b!323929 () Bool)

(declare-fun res!177422 () Bool)

(declare-fun e!200070 () Bool)

(assert (=> b!323929 (=> (not res!177422) (not e!200070))))

(declare-datatypes ((array!16587 0))(
  ( (array!16588 (arr!7848 (Array (_ BitVec 32) (_ BitVec 64))) (size!8200 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16587)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323929 (= res!177422 (and (= (select (arr!7848 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8200 a!3305))))))

(declare-fun b!323930 () Bool)

(declare-fun res!177419 () Bool)

(declare-fun e!200071 () Bool)

(assert (=> b!323930 (=> (not res!177419) (not e!200071))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16587 (_ BitVec 32)) Bool)

(assert (=> b!323930 (= res!177419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!177426 () Bool)

(assert (=> start!32452 (=> (not res!177426) (not e!200071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32452 (= res!177426 (validMask!0 mask!3777))))

(assert (=> start!32452 e!200071))

(declare-fun array_inv!5802 (array!16587) Bool)

(assert (=> start!32452 (array_inv!5802 a!3305)))

(assert (=> start!32452 true))

(declare-fun b!323931 () Bool)

(declare-fun res!177418 () Bool)

(assert (=> b!323931 (=> (not res!177418) (not e!200071))))

(assert (=> b!323931 (= res!177418 (and (= (size!8200 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8200 a!3305))))))

(declare-fun b!323932 () Bool)

(declare-fun res!177420 () Bool)

(assert (=> b!323932 (=> (not res!177420) (not e!200071))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323932 (= res!177420 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323933 () Bool)

(assert (=> b!323933 (= e!200070 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7848 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!323934 () Bool)

(declare-fun res!177424 () Bool)

(assert (=> b!323934 (=> (not res!177424) (not e!200071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323934 (= res!177424 (validKeyInArray!0 k!2497))))

(declare-fun b!323935 () Bool)

(declare-fun res!177423 () Bool)

(assert (=> b!323935 (=> (not res!177423) (not e!200071))))

(declare-datatypes ((SeekEntryResult!2990 0))(
  ( (MissingZero!2990 (index!14136 (_ BitVec 32))) (Found!2990 (index!14137 (_ BitVec 32))) (Intermediate!2990 (undefined!3802 Bool) (index!14138 (_ BitVec 32)) (x!32349 (_ BitVec 32))) (Undefined!2990) (MissingVacant!2990 (index!14139 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16587 (_ BitVec 32)) SeekEntryResult!2990)

(assert (=> b!323935 (= res!177423 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2990 i!1250)))))

(declare-fun b!323936 () Bool)

(assert (=> b!323936 (= e!200071 e!200070)))

(declare-fun res!177425 () Bool)

(assert (=> b!323936 (=> (not res!177425) (not e!200070))))

(declare-fun lt!156716 () SeekEntryResult!2990)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16587 (_ BitVec 32)) SeekEntryResult!2990)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323936 (= res!177425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156716))))

(assert (=> b!323936 (= lt!156716 (Intermediate!2990 false resIndex!58 resX!58))))

(declare-fun b!323937 () Bool)

(declare-fun res!177421 () Bool)

(assert (=> b!323937 (=> (not res!177421) (not e!200070))))

(assert (=> b!323937 (= res!177421 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156716))))

(assert (= (and start!32452 res!177426) b!323931))

(assert (= (and b!323931 res!177418) b!323934))

(assert (= (and b!323934 res!177424) b!323932))

(assert (= (and b!323932 res!177420) b!323935))

(assert (= (and b!323935 res!177423) b!323930))

(assert (= (and b!323930 res!177419) b!323936))

(assert (= (and b!323936 res!177425) b!323929))

(assert (= (and b!323929 res!177422) b!323937))

(assert (= (and b!323937 res!177421) b!323933))

(declare-fun m!331077 () Bool)

(assert (=> b!323937 m!331077))

(declare-fun m!331079 () Bool)

(assert (=> b!323935 m!331079))

(declare-fun m!331081 () Bool)

(assert (=> b!323936 m!331081))

(assert (=> b!323936 m!331081))

(declare-fun m!331083 () Bool)

(assert (=> b!323936 m!331083))

(declare-fun m!331085 () Bool)

(assert (=> b!323929 m!331085))

(declare-fun m!331087 () Bool)

(assert (=> b!323932 m!331087))

(declare-fun m!331089 () Bool)

(assert (=> b!323933 m!331089))

(declare-fun m!331091 () Bool)

(assert (=> b!323934 m!331091))

(declare-fun m!331093 () Bool)

(assert (=> start!32452 m!331093))

(declare-fun m!331095 () Bool)

(assert (=> start!32452 m!331095))

(declare-fun m!331097 () Bool)

(assert (=> b!323930 m!331097))

(push 1)

(assert (not b!323937))

(assert (not b!323930))

(assert (not b!323936))

(assert (not b!323934))

(assert (not start!32452))

(assert (not b!323932))

(assert (not b!323935))

(check-sat)

(pop 1)

