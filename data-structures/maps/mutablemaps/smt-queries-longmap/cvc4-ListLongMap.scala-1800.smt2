; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32512 () Bool)

(assert start!32512)

(declare-fun b!324810 () Bool)

(declare-fun res!178306 () Bool)

(declare-fun e!200341 () Bool)

(assert (=> b!324810 (=> (not res!178306) (not e!200341))))

(declare-datatypes ((array!16647 0))(
  ( (array!16648 (arr!7878 (Array (_ BitVec 32) (_ BitVec 64))) (size!8230 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16647)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324810 (= res!178306 (and (= (size!8230 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8230 a!3305))))))

(declare-fun b!324812 () Bool)

(declare-fun res!178304 () Bool)

(assert (=> b!324812 (=> (not res!178304) (not e!200341))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324812 (= res!178304 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324813 () Bool)

(declare-fun e!200339 () Bool)

(assert (=> b!324813 (= e!200339 false)))

(declare-fun lt!156878 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324813 (= lt!156878 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324814 () Bool)

(declare-fun res!178303 () Bool)

(assert (=> b!324814 (=> (not res!178303) (not e!200339))))

(declare-datatypes ((SeekEntryResult!3020 0))(
  ( (MissingZero!3020 (index!14256 (_ BitVec 32))) (Found!3020 (index!14257 (_ BitVec 32))) (Intermediate!3020 (undefined!3832 Bool) (index!14258 (_ BitVec 32)) (x!32459 (_ BitVec 32))) (Undefined!3020) (MissingVacant!3020 (index!14259 (_ BitVec 32))) )
))
(declare-fun lt!156877 () SeekEntryResult!3020)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16647 (_ BitVec 32)) SeekEntryResult!3020)

(assert (=> b!324814 (= res!178303 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156877))))

(declare-fun b!324815 () Bool)

(declare-fun res!178301 () Bool)

(assert (=> b!324815 (=> (not res!178301) (not e!200341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324815 (= res!178301 (validKeyInArray!0 k!2497))))

(declare-fun b!324816 () Bool)

(assert (=> b!324816 (= e!200341 e!200339)))

(declare-fun res!178307 () Bool)

(assert (=> b!324816 (=> (not res!178307) (not e!200339))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324816 (= res!178307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156877))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324816 (= lt!156877 (Intermediate!3020 false resIndex!58 resX!58))))

(declare-fun b!324817 () Bool)

(declare-fun res!178308 () Bool)

(assert (=> b!324817 (=> (not res!178308) (not e!200339))))

(assert (=> b!324817 (= res!178308 (and (= (select (arr!7878 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8230 a!3305))))))

(declare-fun b!324811 () Bool)

(declare-fun res!178299 () Bool)

(assert (=> b!324811 (=> (not res!178299) (not e!200339))))

(assert (=> b!324811 (= res!178299 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7878 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178300 () Bool)

(assert (=> start!32512 (=> (not res!178300) (not e!200341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32512 (= res!178300 (validMask!0 mask!3777))))

(assert (=> start!32512 e!200341))

(declare-fun array_inv!5832 (array!16647) Bool)

(assert (=> start!32512 (array_inv!5832 a!3305)))

(assert (=> start!32512 true))

(declare-fun b!324818 () Bool)

(declare-fun res!178302 () Bool)

(assert (=> b!324818 (=> (not res!178302) (not e!200341))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16647 (_ BitVec 32)) SeekEntryResult!3020)

(assert (=> b!324818 (= res!178302 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3020 i!1250)))))

(declare-fun b!324819 () Bool)

(declare-fun res!178305 () Bool)

(assert (=> b!324819 (=> (not res!178305) (not e!200341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16647 (_ BitVec 32)) Bool)

(assert (=> b!324819 (= res!178305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32512 res!178300) b!324810))

(assert (= (and b!324810 res!178306) b!324815))

(assert (= (and b!324815 res!178301) b!324812))

(assert (= (and b!324812 res!178304) b!324818))

(assert (= (and b!324818 res!178302) b!324819))

(assert (= (and b!324819 res!178305) b!324816))

(assert (= (and b!324816 res!178307) b!324817))

(assert (= (and b!324817 res!178308) b!324814))

(assert (= (and b!324814 res!178303) b!324811))

(assert (= (and b!324811 res!178299) b!324813))

(declare-fun m!331783 () Bool)

(assert (=> b!324819 m!331783))

(declare-fun m!331785 () Bool)

(assert (=> b!324817 m!331785))

(declare-fun m!331787 () Bool)

(assert (=> b!324811 m!331787))

(declare-fun m!331789 () Bool)

(assert (=> b!324815 m!331789))

(declare-fun m!331791 () Bool)

(assert (=> b!324813 m!331791))

(declare-fun m!331793 () Bool)

(assert (=> start!32512 m!331793))

(declare-fun m!331795 () Bool)

(assert (=> start!32512 m!331795))

(declare-fun m!331797 () Bool)

(assert (=> b!324816 m!331797))

(assert (=> b!324816 m!331797))

(declare-fun m!331799 () Bool)

(assert (=> b!324816 m!331799))

(declare-fun m!331801 () Bool)

(assert (=> b!324812 m!331801))

(declare-fun m!331803 () Bool)

(assert (=> b!324818 m!331803))

(declare-fun m!331805 () Bool)

(assert (=> b!324814 m!331805))

(push 1)

(assert (not b!324812))

(assert (not b!324815))

(assert (not b!324818))

(assert (not b!324819))

