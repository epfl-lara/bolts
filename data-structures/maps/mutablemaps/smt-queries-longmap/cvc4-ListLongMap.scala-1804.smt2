; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32536 () Bool)

(assert start!32536)

(declare-fun b!325170 () Bool)

(declare-fun res!178666 () Bool)

(declare-fun e!200448 () Bool)

(assert (=> b!325170 (=> (not res!178666) (not e!200448))))

(declare-datatypes ((array!16671 0))(
  ( (array!16672 (arr!7890 (Array (_ BitVec 32) (_ BitVec 64))) (size!8242 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16671)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325170 (= res!178666 (and (= (select (arr!7890 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8242 a!3305))))))

(declare-fun b!325171 () Bool)

(declare-fun res!178660 () Bool)

(declare-fun e!200447 () Bool)

(assert (=> b!325171 (=> (not res!178660) (not e!200447))))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!325171 (= res!178660 (and (= (size!8242 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8242 a!3305))))))

(declare-fun b!325172 () Bool)

(declare-fun res!178659 () Bool)

(assert (=> b!325172 (=> (not res!178659) (not e!200447))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325172 (= res!178659 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325174 () Bool)

(declare-fun res!178665 () Bool)

(assert (=> b!325174 (=> (not res!178665) (not e!200447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16671 (_ BitVec 32)) Bool)

(assert (=> b!325174 (= res!178665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325175 () Bool)

(declare-fun res!178664 () Bool)

(assert (=> b!325175 (=> (not res!178664) (not e!200448))))

(assert (=> b!325175 (= res!178664 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7890 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325176 () Bool)

(assert (=> b!325176 (= e!200447 e!200448)))

(declare-fun res!178661 () Bool)

(assert (=> b!325176 (=> (not res!178661) (not e!200448))))

(declare-datatypes ((SeekEntryResult!3032 0))(
  ( (MissingZero!3032 (index!14304 (_ BitVec 32))) (Found!3032 (index!14305 (_ BitVec 32))) (Intermediate!3032 (undefined!3844 Bool) (index!14306 (_ BitVec 32)) (x!32503 (_ BitVec 32))) (Undefined!3032) (MissingVacant!3032 (index!14307 (_ BitVec 32))) )
))
(declare-fun lt!156949 () SeekEntryResult!3032)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16671 (_ BitVec 32)) SeekEntryResult!3032)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325176 (= res!178661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156949))))

(assert (=> b!325176 (= lt!156949 (Intermediate!3032 false resIndex!58 resX!58))))

(declare-fun b!325177 () Bool)

(assert (=> b!325177 (= e!200448 (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) resX!58))))

(declare-fun lt!156950 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325177 (= lt!156950 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!178667 () Bool)

(assert (=> start!32536 (=> (not res!178667) (not e!200447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32536 (= res!178667 (validMask!0 mask!3777))))

(assert (=> start!32536 e!200447))

(declare-fun array_inv!5844 (array!16671) Bool)

(assert (=> start!32536 (array_inv!5844 a!3305)))

(assert (=> start!32536 true))

(declare-fun b!325173 () Bool)

(declare-fun res!178668 () Bool)

(assert (=> b!325173 (=> (not res!178668) (not e!200447))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16671 (_ BitVec 32)) SeekEntryResult!3032)

(assert (=> b!325173 (= res!178668 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3032 i!1250)))))

(declare-fun b!325178 () Bool)

(declare-fun res!178663 () Bool)

(assert (=> b!325178 (=> (not res!178663) (not e!200448))))

(assert (=> b!325178 (= res!178663 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156949))))

(declare-fun b!325179 () Bool)

(declare-fun res!178662 () Bool)

(assert (=> b!325179 (=> (not res!178662) (not e!200447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325179 (= res!178662 (validKeyInArray!0 k!2497))))

(assert (= (and start!32536 res!178667) b!325171))

(assert (= (and b!325171 res!178660) b!325179))

(assert (= (and b!325179 res!178662) b!325172))

(assert (= (and b!325172 res!178659) b!325173))

(assert (= (and b!325173 res!178668) b!325174))

(assert (= (and b!325174 res!178665) b!325176))

(assert (= (and b!325176 res!178661) b!325170))

(assert (= (and b!325170 res!178666) b!325178))

(assert (= (and b!325178 res!178663) b!325175))

(assert (= (and b!325175 res!178664) b!325177))

(declare-fun m!332071 () Bool)

(assert (=> b!325179 m!332071))

(declare-fun m!332073 () Bool)

(assert (=> b!325175 m!332073))

(declare-fun m!332075 () Bool)

(assert (=> b!325170 m!332075))

(declare-fun m!332077 () Bool)

(assert (=> b!325176 m!332077))

(assert (=> b!325176 m!332077))

(declare-fun m!332079 () Bool)

(assert (=> b!325176 m!332079))

(declare-fun m!332081 () Bool)

(assert (=> b!325172 m!332081))

(declare-fun m!332083 () Bool)

(assert (=> b!325174 m!332083))

(declare-fun m!332085 () Bool)

(assert (=> b!325177 m!332085))

(declare-fun m!332087 () Bool)

(assert (=> b!325178 m!332087))

(declare-fun m!332089 () Bool)

(assert (=> start!32536 m!332089))

(declare-fun m!332091 () Bool)

(assert (=> start!32536 m!332091))

(declare-fun m!332093 () Bool)

(assert (=> b!325173 m!332093))

(push 1)

(assert (not b!325174))

(assert (not start!32536))

(assert (not b!325176))

(assert (not b!325177))

(assert (not b!325173))

(assert (not b!325178))

(assert (not b!325172))

(assert (not b!325179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

