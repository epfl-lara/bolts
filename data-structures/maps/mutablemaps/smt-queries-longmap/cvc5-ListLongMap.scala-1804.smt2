; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32532 () Bool)

(assert start!32532)

(declare-fun b!325110 () Bool)

(declare-fun res!178604 () Bool)

(declare-fun e!200430 () Bool)

(assert (=> b!325110 (=> (not res!178604) (not e!200430))))

(declare-datatypes ((array!16667 0))(
  ( (array!16668 (arr!7888 (Array (_ BitVec 32) (_ BitVec 64))) (size!8240 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16667)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3030 0))(
  ( (MissingZero!3030 (index!14296 (_ BitVec 32))) (Found!3030 (index!14297 (_ BitVec 32))) (Intermediate!3030 (undefined!3842 Bool) (index!14298 (_ BitVec 32)) (x!32501 (_ BitVec 32))) (Undefined!3030) (MissingVacant!3030 (index!14299 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16667 (_ BitVec 32)) SeekEntryResult!3030)

(assert (=> b!325110 (= res!178604 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3030 i!1250)))))

(declare-fun res!178600 () Bool)

(assert (=> start!32532 (=> (not res!178600) (not e!200430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32532 (= res!178600 (validMask!0 mask!3777))))

(assert (=> start!32532 e!200430))

(declare-fun array_inv!5842 (array!16667) Bool)

(assert (=> start!32532 (array_inv!5842 a!3305)))

(assert (=> start!32532 true))

(declare-fun b!325111 () Bool)

(declare-fun res!178601 () Bool)

(declare-fun e!200431 () Bool)

(assert (=> b!325111 (=> (not res!178601) (not e!200431))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325111 (= res!178601 (and (= (select (arr!7888 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8240 a!3305))))))

(declare-fun b!325112 () Bool)

(declare-fun res!178599 () Bool)

(assert (=> b!325112 (=> (not res!178599) (not e!200430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325112 (= res!178599 (validKeyInArray!0 k!2497))))

(declare-fun b!325113 () Bool)

(assert (=> b!325113 (= e!200430 e!200431)))

(declare-fun res!178606 () Bool)

(assert (=> b!325113 (=> (not res!178606) (not e!200431))))

(declare-fun lt!156937 () SeekEntryResult!3030)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16667 (_ BitVec 32)) SeekEntryResult!3030)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325113 (= res!178606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156937))))

(assert (=> b!325113 (= lt!156937 (Intermediate!3030 false resIndex!58 resX!58))))

(declare-fun b!325114 () Bool)

(declare-fun res!178605 () Bool)

(assert (=> b!325114 (=> (not res!178605) (not e!200431))))

(assert (=> b!325114 (= res!178605 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156937))))

(declare-fun b!325115 () Bool)

(assert (=> b!325115 (= e!200431 (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) resX!58))))

(declare-fun lt!156938 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325115 (= lt!156938 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325116 () Bool)

(declare-fun res!178608 () Bool)

(assert (=> b!325116 (=> (not res!178608) (not e!200430))))

(assert (=> b!325116 (= res!178608 (and (= (size!8240 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8240 a!3305))))))

(declare-fun b!325117 () Bool)

(declare-fun res!178607 () Bool)

(assert (=> b!325117 (=> (not res!178607) (not e!200431))))

(assert (=> b!325117 (= res!178607 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7888 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325118 () Bool)

(declare-fun res!178602 () Bool)

(assert (=> b!325118 (=> (not res!178602) (not e!200430))))

(declare-fun arrayContainsKey!0 (array!16667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325118 (= res!178602 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325119 () Bool)

(declare-fun res!178603 () Bool)

(assert (=> b!325119 (=> (not res!178603) (not e!200430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16667 (_ BitVec 32)) Bool)

(assert (=> b!325119 (= res!178603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32532 res!178600) b!325116))

(assert (= (and b!325116 res!178608) b!325112))

(assert (= (and b!325112 res!178599) b!325118))

(assert (= (and b!325118 res!178602) b!325110))

(assert (= (and b!325110 res!178604) b!325119))

(assert (= (and b!325119 res!178603) b!325113))

(assert (= (and b!325113 res!178606) b!325111))

(assert (= (and b!325111 res!178601) b!325114))

(assert (= (and b!325114 res!178605) b!325117))

(assert (= (and b!325117 res!178607) b!325115))

(declare-fun m!332023 () Bool)

(assert (=> b!325110 m!332023))

(declare-fun m!332025 () Bool)

(assert (=> b!325111 m!332025))

(declare-fun m!332027 () Bool)

(assert (=> b!325113 m!332027))

(assert (=> b!325113 m!332027))

(declare-fun m!332029 () Bool)

(assert (=> b!325113 m!332029))

(declare-fun m!332031 () Bool)

(assert (=> b!325119 m!332031))

(declare-fun m!332033 () Bool)

(assert (=> b!325112 m!332033))

(declare-fun m!332035 () Bool)

(assert (=> b!325114 m!332035))

(declare-fun m!332037 () Bool)

(assert (=> b!325118 m!332037))

(declare-fun m!332039 () Bool)

(assert (=> b!325115 m!332039))

(declare-fun m!332041 () Bool)

(assert (=> b!325117 m!332041))

(declare-fun m!332043 () Bool)

(assert (=> start!32532 m!332043))

(declare-fun m!332045 () Bool)

(assert (=> start!32532 m!332045))

(push 1)

(assert (not start!32532))

(assert (not b!325119))

(assert (not b!325114))

(assert (not b!325112))

(assert (not b!325113))

(assert (not b!325110))

(assert (not b!325115))

(assert (not b!325118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

