; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33084 () Bool)

(assert start!33084)

(declare-fun b!328996 () Bool)

(declare-fun res!181345 () Bool)

(declare-fun e!202151 () Bool)

(assert (=> b!328996 (=> (not res!181345) (not e!202151))))

(declare-datatypes ((array!16841 0))(
  ( (array!16842 (arr!7963 (Array (_ BitVec 32) (_ BitVec 64))) (size!8315 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16841)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328996 (= res!181345 (and (= (select (arr!7963 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8315 a!3305))))))

(declare-fun b!328997 () Bool)

(declare-fun res!181341 () Bool)

(declare-fun e!202153 () Bool)

(assert (=> b!328997 (=> (not res!181341) (not e!202153))))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!328997 (= res!181341 (and (= (size!8315 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8315 a!3305))))))

(declare-fun b!328998 () Bool)

(declare-fun res!181340 () Bool)

(assert (=> b!328998 (=> (not res!181340) (not e!202153))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3105 0))(
  ( (MissingZero!3105 (index!14596 (_ BitVec 32))) (Found!3105 (index!14597 (_ BitVec 32))) (Intermediate!3105 (undefined!3917 Bool) (index!14598 (_ BitVec 32)) (x!32833 (_ BitVec 32))) (Undefined!3105) (MissingVacant!3105 (index!14599 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16841 (_ BitVec 32)) SeekEntryResult!3105)

(assert (=> b!328998 (= res!181340 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3105 i!1250)))))

(declare-fun b!328999 () Bool)

(declare-fun res!181347 () Bool)

(assert (=> b!328999 (=> (not res!181347) (not e!202153))))

(declare-fun arrayContainsKey!0 (array!16841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328999 (= res!181347 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329000 () Bool)

(assert (=> b!329000 (= e!202153 e!202151)))

(declare-fun res!181344 () Bool)

(assert (=> b!329000 (=> (not res!181344) (not e!202151))))

(declare-fun lt!158117 () SeekEntryResult!3105)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16841 (_ BitVec 32)) SeekEntryResult!3105)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329000 (= res!181344 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158117))))

(assert (=> b!329000 (= lt!158117 (Intermediate!3105 false resIndex!58 resX!58))))

(declare-fun b!329001 () Bool)

(declare-fun e!202150 () Bool)

(assert (=> b!329001 (= e!202150 (not false))))

(declare-fun lt!158116 () SeekEntryResult!3105)

(assert (=> b!329001 (= lt!158116 (Intermediate!3105 false index!1840 resX!58))))

(declare-fun b!329002 () Bool)

(declare-fun res!181346 () Bool)

(assert (=> b!329002 (=> (not res!181346) (not e!202153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16841 (_ BitVec 32)) Bool)

(assert (=> b!329002 (= res!181346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!181343 () Bool)

(assert (=> start!33084 (=> (not res!181343) (not e!202153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33084 (= res!181343 (validMask!0 mask!3777))))

(assert (=> start!33084 e!202153))

(declare-fun array_inv!5917 (array!16841) Bool)

(assert (=> start!33084 (array_inv!5917 a!3305)))

(assert (=> start!33084 true))

(declare-fun b!329003 () Bool)

(declare-fun res!181339 () Bool)

(assert (=> b!329003 (=> (not res!181339) (not e!202153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329003 (= res!181339 (validKeyInArray!0 k!2497))))

(declare-fun b!329004 () Bool)

(assert (=> b!329004 (= e!202151 e!202150)))

(declare-fun res!181342 () Bool)

(assert (=> b!329004 (=> (not res!181342) (not e!202150))))

(assert (=> b!329004 (= res!181342 (and (= lt!158116 lt!158117) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7963 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7963 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7963 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329004 (= lt!158116 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(assert (= (and start!33084 res!181343) b!328997))

(assert (= (and b!328997 res!181341) b!329003))

(assert (= (and b!329003 res!181339) b!328999))

(assert (= (and b!328999 res!181347) b!328998))

(assert (= (and b!328998 res!181340) b!329002))

(assert (= (and b!329002 res!181346) b!329000))

(assert (= (and b!329000 res!181344) b!328996))

(assert (= (and b!328996 res!181345) b!329004))

(assert (= (and b!329004 res!181342) b!329001))

(declare-fun m!334765 () Bool)

(assert (=> b!328996 m!334765))

(declare-fun m!334767 () Bool)

(assert (=> b!328999 m!334767))

(declare-fun m!334769 () Bool)

(assert (=> b!328998 m!334769))

(declare-fun m!334771 () Bool)

(assert (=> b!329002 m!334771))

(declare-fun m!334773 () Bool)

(assert (=> start!33084 m!334773))

(declare-fun m!334775 () Bool)

(assert (=> start!33084 m!334775))

(declare-fun m!334777 () Bool)

(assert (=> b!329003 m!334777))

(declare-fun m!334779 () Bool)

(assert (=> b!329004 m!334779))

(declare-fun m!334781 () Bool)

(assert (=> b!329004 m!334781))

(declare-fun m!334783 () Bool)

(assert (=> b!329000 m!334783))

(assert (=> b!329000 m!334783))

(declare-fun m!334785 () Bool)

(assert (=> b!329000 m!334785))

(push 1)

