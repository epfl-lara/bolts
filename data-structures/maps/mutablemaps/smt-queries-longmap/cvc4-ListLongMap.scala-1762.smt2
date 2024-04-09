; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32230 () Bool)

(assert start!32230)

(declare-fun b!320671 () Bool)

(declare-fun res!174956 () Bool)

(declare-fun e!198894 () Bool)

(assert (=> b!320671 (=> (not res!174956) (not e!198894))))

(declare-datatypes ((array!16416 0))(
  ( (array!16417 (arr!7764 (Array (_ BitVec 32) (_ BitVec 64))) (size!8116 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16416)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2906 0))(
  ( (MissingZero!2906 (index!13800 (_ BitVec 32))) (Found!2906 (index!13801 (_ BitVec 32))) (Intermediate!2906 (undefined!3718 Bool) (index!13802 (_ BitVec 32)) (x!32032 (_ BitVec 32))) (Undefined!2906) (MissingVacant!2906 (index!13803 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16416 (_ BitVec 32)) SeekEntryResult!2906)

(assert (=> b!320671 (= res!174956 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2906 i!1250)))))

(declare-fun res!174952 () Bool)

(assert (=> start!32230 (=> (not res!174952) (not e!198894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32230 (= res!174952 (validMask!0 mask!3777))))

(assert (=> start!32230 e!198894))

(declare-fun array_inv!5718 (array!16416) Bool)

(assert (=> start!32230 (array_inv!5718 a!3305)))

(assert (=> start!32230 true))

(declare-fun b!320672 () Bool)

(declare-fun res!174955 () Bool)

(declare-fun e!198893 () Bool)

(assert (=> b!320672 (=> (not res!174955) (not e!198893))))

(declare-fun lt!156089 () SeekEntryResult!2906)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16416 (_ BitVec 32)) SeekEntryResult!2906)

(assert (=> b!320672 (= res!174955 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156089))))

(declare-fun b!320673 () Bool)

(declare-fun res!174950 () Bool)

(assert (=> b!320673 (=> (not res!174950) (not e!198894))))

(declare-fun arrayContainsKey!0 (array!16416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320673 (= res!174950 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320674 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320674 (= e!198893 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7764 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7764 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7764 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!320675 () Bool)

(declare-fun res!174949 () Bool)

(assert (=> b!320675 (=> (not res!174949) (not e!198894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16416 (_ BitVec 32)) Bool)

(assert (=> b!320675 (= res!174949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320676 () Bool)

(declare-fun res!174951 () Bool)

(assert (=> b!320676 (=> (not res!174951) (not e!198893))))

(assert (=> b!320676 (= res!174951 (and (= (select (arr!7764 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8116 a!3305))))))

(declare-fun b!320677 () Bool)

(declare-fun res!174954 () Bool)

(assert (=> b!320677 (=> (not res!174954) (not e!198894))))

(assert (=> b!320677 (= res!174954 (and (= (size!8116 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8116 a!3305))))))

(declare-fun b!320678 () Bool)

(declare-fun res!174953 () Bool)

(assert (=> b!320678 (=> (not res!174953) (not e!198894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320678 (= res!174953 (validKeyInArray!0 k!2497))))

(declare-fun b!320679 () Bool)

(assert (=> b!320679 (= e!198894 e!198893)))

(declare-fun res!174957 () Bool)

(assert (=> b!320679 (=> (not res!174957) (not e!198893))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320679 (= res!174957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156089))))

(assert (=> b!320679 (= lt!156089 (Intermediate!2906 false resIndex!58 resX!58))))

(assert (= (and start!32230 res!174952) b!320677))

(assert (= (and b!320677 res!174954) b!320678))

(assert (= (and b!320678 res!174953) b!320673))

(assert (= (and b!320673 res!174950) b!320671))

(assert (= (and b!320671 res!174956) b!320675))

(assert (= (and b!320675 res!174949) b!320679))

(assert (= (and b!320679 res!174957) b!320676))

(assert (= (and b!320676 res!174951) b!320672))

(assert (= (and b!320672 res!174955) b!320674))

(declare-fun m!328959 () Bool)

(assert (=> b!320679 m!328959))

(assert (=> b!320679 m!328959))

(declare-fun m!328961 () Bool)

(assert (=> b!320679 m!328961))

(declare-fun m!328963 () Bool)

(assert (=> b!320676 m!328963))

(declare-fun m!328965 () Bool)

(assert (=> b!320674 m!328965))

(declare-fun m!328967 () Bool)

(assert (=> b!320678 m!328967))

(declare-fun m!328969 () Bool)

(assert (=> b!320672 m!328969))

(declare-fun m!328971 () Bool)

(assert (=> b!320671 m!328971))

(declare-fun m!328973 () Bool)

(assert (=> b!320673 m!328973))

(declare-fun m!328975 () Bool)

(assert (=> start!32230 m!328975))

(declare-fun m!328977 () Bool)

(assert (=> start!32230 m!328977))

(declare-fun m!328979 () Bool)

(assert (=> b!320675 m!328979))

(push 1)

(assert (not b!320672))

(assert (not b!320679))

(assert (not b!320675))

(assert (not b!320671))

(assert (not start!32230))

(assert (not b!320673))

(assert (not b!320678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

