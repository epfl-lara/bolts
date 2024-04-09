; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32538 () Bool)

(assert start!32538)

(declare-fun b!325200 () Bool)

(declare-fun res!178692 () Bool)

(declare-fun e!200457 () Bool)

(assert (=> b!325200 (=> (not res!178692) (not e!200457))))

(declare-datatypes ((array!16673 0))(
  ( (array!16674 (arr!7891 (Array (_ BitVec 32) (_ BitVec 64))) (size!8243 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16673)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3033 0))(
  ( (MissingZero!3033 (index!14308 (_ BitVec 32))) (Found!3033 (index!14309 (_ BitVec 32))) (Intermediate!3033 (undefined!3845 Bool) (index!14310 (_ BitVec 32)) (x!32512 (_ BitVec 32))) (Undefined!3033) (MissingVacant!3033 (index!14311 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16673 (_ BitVec 32)) SeekEntryResult!3033)

(assert (=> b!325200 (= res!178692 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3033 i!1250)))))

(declare-fun b!325201 () Bool)

(declare-fun res!178695 () Bool)

(declare-fun e!200458 () Bool)

(assert (=> b!325201 (=> (not res!178695) (not e!200458))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325201 (= res!178695 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7891 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325202 () Bool)

(declare-fun res!178698 () Bool)

(assert (=> b!325202 (=> (not res!178698) (not e!200457))))

(declare-fun arrayContainsKey!0 (array!16673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325202 (= res!178698 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325203 () Bool)

(assert (=> b!325203 (= e!200458 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000)))))

(declare-fun lt!156955 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325203 (= lt!156955 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325204 () Bool)

(declare-fun res!178689 () Bool)

(assert (=> b!325204 (=> (not res!178689) (not e!200458))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!325204 (= res!178689 (and (= (select (arr!7891 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8243 a!3305))))))

(declare-fun b!325205 () Bool)

(declare-fun res!178694 () Bool)

(assert (=> b!325205 (=> (not res!178694) (not e!200457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325205 (= res!178694 (validKeyInArray!0 k!2497))))

(declare-fun b!325206 () Bool)

(declare-fun res!178697 () Bool)

(assert (=> b!325206 (=> (not res!178697) (not e!200458))))

(declare-fun lt!156956 () SeekEntryResult!3033)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16673 (_ BitVec 32)) SeekEntryResult!3033)

(assert (=> b!325206 (= res!178697 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156956))))

(declare-fun b!325207 () Bool)

(declare-fun res!178690 () Bool)

(assert (=> b!325207 (=> (not res!178690) (not e!200457))))

(assert (=> b!325207 (= res!178690 (and (= (size!8243 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8243 a!3305))))))

(declare-fun b!325208 () Bool)

(declare-fun res!178693 () Bool)

(assert (=> b!325208 (=> (not res!178693) (not e!200457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16673 (_ BitVec 32)) Bool)

(assert (=> b!325208 (= res!178693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!178696 () Bool)

(assert (=> start!32538 (=> (not res!178696) (not e!200457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32538 (= res!178696 (validMask!0 mask!3777))))

(assert (=> start!32538 e!200457))

(declare-fun array_inv!5845 (array!16673) Bool)

(assert (=> start!32538 (array_inv!5845 a!3305)))

(assert (=> start!32538 true))

(declare-fun b!325209 () Bool)

(assert (=> b!325209 (= e!200457 e!200458)))

(declare-fun res!178691 () Bool)

(assert (=> b!325209 (=> (not res!178691) (not e!200458))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325209 (= res!178691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156956))))

(assert (=> b!325209 (= lt!156956 (Intermediate!3033 false resIndex!58 resX!58))))

(assert (= (and start!32538 res!178696) b!325207))

(assert (= (and b!325207 res!178690) b!325205))

(assert (= (and b!325205 res!178694) b!325202))

(assert (= (and b!325202 res!178698) b!325200))

(assert (= (and b!325200 res!178692) b!325208))

(assert (= (and b!325208 res!178693) b!325209))

(assert (= (and b!325209 res!178691) b!325204))

(assert (= (and b!325204 res!178689) b!325206))

(assert (= (and b!325206 res!178697) b!325201))

(assert (= (and b!325201 res!178695) b!325203))

(declare-fun m!332095 () Bool)

(assert (=> b!325205 m!332095))

(declare-fun m!332097 () Bool)

(assert (=> start!32538 m!332097))

(declare-fun m!332099 () Bool)

(assert (=> start!32538 m!332099))

(declare-fun m!332101 () Bool)

(assert (=> b!325202 m!332101))

(declare-fun m!332103 () Bool)

(assert (=> b!325209 m!332103))

(assert (=> b!325209 m!332103))

(declare-fun m!332105 () Bool)

(assert (=> b!325209 m!332105))

(declare-fun m!332107 () Bool)

(assert (=> b!325206 m!332107))

(declare-fun m!332109 () Bool)

(assert (=> b!325204 m!332109))

(declare-fun m!332111 () Bool)

(assert (=> b!325200 m!332111))

(declare-fun m!332113 () Bool)

(assert (=> b!325203 m!332113))

(declare-fun m!332115 () Bool)

(assert (=> b!325201 m!332115))

(declare-fun m!332117 () Bool)

(assert (=> b!325208 m!332117))

(push 1)

