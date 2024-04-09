; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32676 () Bool)

(assert start!32676)

(declare-fun res!179308 () Bool)

(declare-fun e!200880 () Bool)

(assert (=> start!32676 (=> (not res!179308) (not e!200880))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32676 (= res!179308 (validMask!0 mask!3777))))

(assert (=> start!32676 e!200880))

(declare-datatypes ((array!16709 0))(
  ( (array!16710 (arr!7906 (Array (_ BitVec 32) (_ BitVec 64))) (size!8258 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16709)

(declare-fun array_inv!5860 (array!16709) Bool)

(assert (=> start!32676 (array_inv!5860 a!3305)))

(assert (=> start!32676 true))

(declare-fun b!326118 () Bool)

(declare-fun e!200881 () Bool)

(assert (=> b!326118 (= e!200881 false)))

(declare-datatypes ((Unit!10105 0))(
  ( (Unit!10106) )
))
(declare-fun lt!157262 () Unit!10105)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16709 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10105)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326118 (= lt!157262 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326119 () Bool)

(declare-fun res!179315 () Bool)

(assert (=> b!326119 (=> (not res!179315) (not e!200881))))

(declare-datatypes ((SeekEntryResult!3048 0))(
  ( (MissingZero!3048 (index!14368 (_ BitVec 32))) (Found!3048 (index!14369 (_ BitVec 32))) (Intermediate!3048 (undefined!3860 Bool) (index!14370 (_ BitVec 32)) (x!32585 (_ BitVec 32))) (Undefined!3048) (MissingVacant!3048 (index!14371 (_ BitVec 32))) )
))
(declare-fun lt!157261 () SeekEntryResult!3048)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16709 (_ BitVec 32)) SeekEntryResult!3048)

(assert (=> b!326119 (= res!179315 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157261))))

(declare-fun b!326120 () Bool)

(declare-fun res!179311 () Bool)

(assert (=> b!326120 (=> (not res!179311) (not e!200881))))

(assert (=> b!326120 (= res!179311 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7906 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326121 () Bool)

(declare-fun res!179314 () Bool)

(assert (=> b!326121 (=> (not res!179314) (not e!200880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16709 (_ BitVec 32)) Bool)

(assert (=> b!326121 (= res!179314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326122 () Bool)

(declare-fun res!179313 () Bool)

(assert (=> b!326122 (=> (not res!179313) (not e!200880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326122 (= res!179313 (validKeyInArray!0 k!2497))))

(declare-fun b!326123 () Bool)

(declare-fun res!179310 () Bool)

(assert (=> b!326123 (=> (not res!179310) (not e!200881))))

(assert (=> b!326123 (= res!179310 (and (= (select (arr!7906 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8258 a!3305))))))

(declare-fun b!326124 () Bool)

(declare-fun res!179307 () Bool)

(assert (=> b!326124 (=> (not res!179307) (not e!200880))))

(assert (=> b!326124 (= res!179307 (and (= (size!8258 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8258 a!3305))))))

(declare-fun b!326125 () Bool)

(declare-fun res!179309 () Bool)

(assert (=> b!326125 (=> (not res!179309) (not e!200880))))

(declare-fun arrayContainsKey!0 (array!16709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326125 (= res!179309 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326126 () Bool)

(declare-fun res!179312 () Bool)

(assert (=> b!326126 (=> (not res!179312) (not e!200880))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16709 (_ BitVec 32)) SeekEntryResult!3048)

(assert (=> b!326126 (= res!179312 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3048 i!1250)))))

(declare-fun b!326127 () Bool)

(assert (=> b!326127 (= e!200880 e!200881)))

(declare-fun res!179316 () Bool)

(assert (=> b!326127 (=> (not res!179316) (not e!200881))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326127 (= res!179316 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157261))))

(assert (=> b!326127 (= lt!157261 (Intermediate!3048 false resIndex!58 resX!58))))

(assert (= (and start!32676 res!179308) b!326124))

(assert (= (and b!326124 res!179307) b!326122))

(assert (= (and b!326122 res!179313) b!326125))

(assert (= (and b!326125 res!179309) b!326126))

(assert (= (and b!326126 res!179312) b!326121))

(assert (= (and b!326121 res!179314) b!326127))

(assert (= (and b!326127 res!179316) b!326123))

(assert (= (and b!326123 res!179310) b!326119))

(assert (= (and b!326119 res!179315) b!326120))

(assert (= (and b!326120 res!179311) b!326118))

(declare-fun m!332725 () Bool)

(assert (=> b!326127 m!332725))

(assert (=> b!326127 m!332725))

(declare-fun m!332727 () Bool)

(assert (=> b!326127 m!332727))

(declare-fun m!332729 () Bool)

(assert (=> b!326125 m!332729))

(declare-fun m!332731 () Bool)

(assert (=> b!326122 m!332731))

(declare-fun m!332733 () Bool)

(assert (=> b!326123 m!332733))

(declare-fun m!332735 () Bool)

(assert (=> start!32676 m!332735))

(declare-fun m!332737 () Bool)

(assert (=> start!32676 m!332737))

(declare-fun m!332739 () Bool)

(assert (=> b!326121 m!332739))

(declare-fun m!332741 () Bool)

(assert (=> b!326118 m!332741))

(assert (=> b!326118 m!332741))

(declare-fun m!332743 () Bool)

(assert (=> b!326118 m!332743))

(declare-fun m!332745 () Bool)

(assert (=> b!326126 m!332745))

(declare-fun m!332747 () Bool)

(assert (=> b!326120 m!332747))

(declare-fun m!332749 () Bool)

(assert (=> b!326119 m!332749))

(push 1)

