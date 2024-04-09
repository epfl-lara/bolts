; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33210 () Bool)

(assert start!33210)

(declare-fun b!329775 () Bool)

(assert (=> b!329775 false))

(declare-datatypes ((Unit!10217 0))(
  ( (Unit!10218) )
))
(declare-fun e!202551 () Unit!10217)

(declare-fun Unit!10219 () Unit!10217)

(assert (=> b!329775 (= e!202551 Unit!10219)))

(declare-fun b!329776 () Bool)

(declare-fun res!181779 () Bool)

(declare-fun e!202548 () Bool)

(assert (=> b!329776 (=> (not res!181779) (not e!202548))))

(declare-datatypes ((array!16865 0))(
  ( (array!16866 (arr!7972 (Array (_ BitVec 32) (_ BitVec 64))) (size!8324 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16865)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329776 (= res!181779 (and (= (select (arr!7972 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8324 a!3305))))))

(declare-fun b!329777 () Bool)

(declare-fun e!202547 () Unit!10217)

(declare-fun Unit!10220 () Unit!10217)

(assert (=> b!329777 (= e!202547 Unit!10220)))

(declare-fun b!329778 () Bool)

(declare-fun res!181778 () Bool)

(declare-fun e!202549 () Bool)

(assert (=> b!329778 (=> (not res!181778) (not e!202549))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329778 (= res!181778 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329779 () Bool)

(declare-fun e!202552 () Unit!10217)

(declare-fun Unit!10221 () Unit!10217)

(assert (=> b!329779 (= e!202552 Unit!10221)))

(declare-fun b!329780 () Bool)

(declare-fun res!181773 () Bool)

(assert (=> b!329780 (=> (not res!181773) (not e!202548))))

(assert (=> b!329780 (= res!181773 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7972 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!329781 () Bool)

(declare-fun res!181774 () Bool)

(assert (=> b!329781 (=> (not res!181774) (not e!202548))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3114 0))(
  ( (MissingZero!3114 (index!14632 (_ BitVec 32))) (Found!3114 (index!14633 (_ BitVec 32))) (Intermediate!3114 (undefined!3926 Bool) (index!14634 (_ BitVec 32)) (x!32884 (_ BitVec 32))) (Undefined!3114) (MissingVacant!3114 (index!14635 (_ BitVec 32))) )
))
(declare-fun lt!158385 () SeekEntryResult!3114)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16865 (_ BitVec 32)) SeekEntryResult!3114)

(assert (=> b!329781 (= res!181774 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158385))))

(declare-fun b!329783 () Bool)

(assert (=> b!329783 (= e!202549 e!202548)))

(declare-fun res!181777 () Bool)

(assert (=> b!329783 (=> (not res!181777) (not e!202548))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329783 (= res!181777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158385))))

(assert (=> b!329783 (= lt!158385 (Intermediate!3114 false resIndex!58 resX!58))))

(declare-fun b!329784 () Bool)

(assert (=> b!329784 false))

(declare-fun lt!158387 () Unit!10217)

(assert (=> b!329784 (= lt!158387 e!202552)))

(declare-fun c!51645 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329784 (= c!51645 (is-Intermediate!3114 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10222 () Unit!10217)

(assert (=> b!329784 (= e!202551 Unit!10222)))

(declare-fun b!329785 () Bool)

(declare-fun res!181771 () Bool)

(assert (=> b!329785 (=> (not res!181771) (not e!202549))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16865 (_ BitVec 32)) SeekEntryResult!3114)

(assert (=> b!329785 (= res!181771 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3114 i!1250)))))

(declare-fun b!329786 () Bool)

(declare-fun res!181772 () Bool)

(assert (=> b!329786 (=> (not res!181772) (not e!202549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16865 (_ BitVec 32)) Bool)

(assert (=> b!329786 (= res!181772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329787 () Bool)

(declare-fun res!181776 () Bool)

(assert (=> b!329787 (=> (not res!181776) (not e!202549))))

(assert (=> b!329787 (= res!181776 (and (= (size!8324 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8324 a!3305))))))

(declare-fun b!329788 () Bool)

(declare-fun res!181775 () Bool)

(assert (=> b!329788 (=> (not res!181775) (not e!202549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329788 (= res!181775 (validKeyInArray!0 k!2497))))

(declare-fun b!329789 () Bool)

(assert (=> b!329789 (= e!202548 (not (= index!1840 resIndex!58)))))

(declare-fun lt!158386 () Unit!10217)

(assert (=> b!329789 (= lt!158386 e!202547)))

(declare-fun c!51647 () Bool)

(assert (=> b!329789 (= c!51647 (not (= resIndex!58 index!1840)))))

(declare-fun b!329790 () Bool)

(assert (=> b!329790 (= e!202547 e!202551)))

(declare-fun c!51646 () Bool)

(assert (=> b!329790 (= c!51646 (or (= (select (arr!7972 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7972 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329782 () Bool)

(declare-fun Unit!10223 () Unit!10217)

(assert (=> b!329782 (= e!202552 Unit!10223)))

(assert (=> b!329782 false))

(declare-fun res!181770 () Bool)

(assert (=> start!33210 (=> (not res!181770) (not e!202549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33210 (= res!181770 (validMask!0 mask!3777))))

(assert (=> start!33210 e!202549))

(declare-fun array_inv!5926 (array!16865) Bool)

(assert (=> start!33210 (array_inv!5926 a!3305)))

(assert (=> start!33210 true))

(assert (= (and start!33210 res!181770) b!329787))

(assert (= (and b!329787 res!181776) b!329788))

(assert (= (and b!329788 res!181775) b!329778))

(assert (= (and b!329778 res!181778) b!329785))

(assert (= (and b!329785 res!181771) b!329786))

(assert (= (and b!329786 res!181772) b!329783))

(assert (= (and b!329783 res!181777) b!329776))

(assert (= (and b!329776 res!181779) b!329781))

(assert (= (and b!329781 res!181774) b!329780))

(assert (= (and b!329780 res!181773) b!329789))

(assert (= (and b!329789 c!51647) b!329790))

(assert (= (and b!329789 (not c!51647)) b!329777))

(assert (= (and b!329790 c!51646) b!329775))

(assert (= (and b!329790 (not c!51646)) b!329784))

(assert (= (and b!329784 c!51645) b!329779))

(assert (= (and b!329784 (not c!51645)) b!329782))

(declare-fun m!335263 () Bool)

(assert (=> b!329785 m!335263))

(declare-fun m!335265 () Bool)

(assert (=> b!329783 m!335265))

(assert (=> b!329783 m!335265))

(declare-fun m!335267 () Bool)

(assert (=> b!329783 m!335267))

(declare-fun m!335269 () Bool)

(assert (=> b!329780 m!335269))

(declare-fun m!335271 () Bool)

(assert (=> b!329776 m!335271))

(assert (=> b!329790 m!335269))

(declare-fun m!335273 () Bool)

(assert (=> b!329786 m!335273))

(declare-fun m!335275 () Bool)

(assert (=> start!33210 m!335275))

(declare-fun m!335277 () Bool)

(assert (=> start!33210 m!335277))

(declare-fun m!335279 () Bool)

(assert (=> b!329784 m!335279))

(assert (=> b!329784 m!335279))

(declare-fun m!335281 () Bool)

(assert (=> b!329784 m!335281))

(declare-fun m!335283 () Bool)

(assert (=> b!329778 m!335283))

(declare-fun m!335285 () Bool)

(assert (=> b!329781 m!335285))

(declare-fun m!335287 () Bool)

(assert (=> b!329788 m!335287))

(push 1)

