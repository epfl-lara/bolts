; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32244 () Bool)

(assert start!32244)

(declare-fun b!320851 () Bool)

(declare-fun res!175131 () Bool)

(declare-fun e!198949 () Bool)

(assert (=> b!320851 (=> (not res!175131) (not e!198949))))

(declare-datatypes ((array!16430 0))(
  ( (array!16431 (arr!7771 (Array (_ BitVec 32) (_ BitVec 64))) (size!8123 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16430)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320851 (= res!175131 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320852 () Bool)

(declare-fun res!175130 () Bool)

(assert (=> b!320852 (=> (not res!175130) (not e!198949))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2913 0))(
  ( (MissingZero!2913 (index!13828 (_ BitVec 32))) (Found!2913 (index!13829 (_ BitVec 32))) (Intermediate!2913 (undefined!3725 Bool) (index!13830 (_ BitVec 32)) (x!32063 (_ BitVec 32))) (Undefined!2913) (MissingVacant!2913 (index!13831 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16430 (_ BitVec 32)) SeekEntryResult!2913)

(assert (=> b!320852 (= res!175130 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2913 i!1250)))))

(declare-fun b!320853 () Bool)

(declare-fun res!175133 () Bool)

(assert (=> b!320853 (=> (not res!175133) (not e!198949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16430 (_ BitVec 32)) Bool)

(assert (=> b!320853 (= res!175133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320854 () Bool)

(declare-fun e!198948 () Bool)

(assert (=> b!320854 (= e!198949 e!198948)))

(declare-fun res!175137 () Bool)

(assert (=> b!320854 (=> (not res!175137) (not e!198948))))

(declare-fun lt!156110 () SeekEntryResult!2913)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16430 (_ BitVec 32)) SeekEntryResult!2913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320854 (= res!175137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156110))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320854 (= lt!156110 (Intermediate!2913 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320855 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320855 (= e!198948 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7771 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7771 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7771 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!320856 () Bool)

(declare-fun res!175136 () Bool)

(assert (=> b!320856 (=> (not res!175136) (not e!198949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320856 (= res!175136 (validKeyInArray!0 k!2497))))

(declare-fun b!320857 () Bool)

(declare-fun res!175132 () Bool)

(assert (=> b!320857 (=> (not res!175132) (not e!198949))))

(assert (=> b!320857 (= res!175132 (and (= (size!8123 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8123 a!3305))))))

(declare-fun b!320858 () Bool)

(declare-fun res!175135 () Bool)

(assert (=> b!320858 (=> (not res!175135) (not e!198948))))

(assert (=> b!320858 (= res!175135 (and (= (select (arr!7771 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8123 a!3305))))))

(declare-fun b!320859 () Bool)

(declare-fun res!175129 () Bool)

(assert (=> b!320859 (=> (not res!175129) (not e!198948))))

(assert (=> b!320859 (= res!175129 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156110))))

(declare-fun res!175134 () Bool)

(assert (=> start!32244 (=> (not res!175134) (not e!198949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32244 (= res!175134 (validMask!0 mask!3777))))

(assert (=> start!32244 e!198949))

(declare-fun array_inv!5725 (array!16430) Bool)

(assert (=> start!32244 (array_inv!5725 a!3305)))

(assert (=> start!32244 true))

(assert (= (and start!32244 res!175134) b!320857))

(assert (= (and b!320857 res!175132) b!320856))

(assert (= (and b!320856 res!175136) b!320851))

(assert (= (and b!320851 res!175131) b!320852))

(assert (= (and b!320852 res!175130) b!320853))

(assert (= (and b!320853 res!175133) b!320854))

(assert (= (and b!320854 res!175137) b!320858))

(assert (= (and b!320858 res!175135) b!320859))

(assert (= (and b!320859 res!175129) b!320855))

(declare-fun m!329107 () Bool)

(assert (=> b!320851 m!329107))

(declare-fun m!329109 () Bool)

(assert (=> start!32244 m!329109))

(declare-fun m!329111 () Bool)

(assert (=> start!32244 m!329111))

(declare-fun m!329113 () Bool)

(assert (=> b!320858 m!329113))

(declare-fun m!329115 () Bool)

(assert (=> b!320854 m!329115))

(assert (=> b!320854 m!329115))

(declare-fun m!329117 () Bool)

(assert (=> b!320854 m!329117))

(declare-fun m!329119 () Bool)

(assert (=> b!320856 m!329119))

(declare-fun m!329121 () Bool)

(assert (=> b!320859 m!329121))

(declare-fun m!329123 () Bool)

(assert (=> b!320852 m!329123))

(declare-fun m!329125 () Bool)

(assert (=> b!320853 m!329125))

(declare-fun m!329127 () Bool)

(assert (=> b!320855 m!329127))

(push 1)

