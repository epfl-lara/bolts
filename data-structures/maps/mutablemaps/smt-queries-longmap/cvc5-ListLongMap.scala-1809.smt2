; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32670 () Bool)

(assert start!32670)

(declare-fun b!326028 () Bool)

(declare-fun e!200854 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!326028 (= e!200854 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-datatypes ((array!16703 0))(
  ( (array!16704 (arr!7903 (Array (_ BitVec 32) (_ BitVec 64))) (size!8255 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16703)

(declare-datatypes ((Unit!10099 0))(
  ( (Unit!10100) )
))
(declare-fun lt!157243 () Unit!10099)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16703 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10099)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326028 (= lt!157243 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326029 () Bool)

(declare-fun res!179226 () Bool)

(assert (=> b!326029 (=> (not res!179226) (not e!200854))))

(declare-datatypes ((SeekEntryResult!3045 0))(
  ( (MissingZero!3045 (index!14356 (_ BitVec 32))) (Found!3045 (index!14357 (_ BitVec 32))) (Intermediate!3045 (undefined!3857 Bool) (index!14358 (_ BitVec 32)) (x!32574 (_ BitVec 32))) (Undefined!3045) (MissingVacant!3045 (index!14359 (_ BitVec 32))) )
))
(declare-fun lt!157244 () SeekEntryResult!3045)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16703 (_ BitVec 32)) SeekEntryResult!3045)

(assert (=> b!326029 (= res!179226 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157244))))

(declare-fun b!326030 () Bool)

(declare-fun res!179223 () Bool)

(declare-fun e!200852 () Bool)

(assert (=> b!326030 (=> (not res!179223) (not e!200852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326030 (= res!179223 (validKeyInArray!0 k!2497))))

(declare-fun b!326031 () Bool)

(declare-fun res!179220 () Bool)

(assert (=> b!326031 (=> (not res!179220) (not e!200852))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16703 (_ BitVec 32)) SeekEntryResult!3045)

(assert (=> b!326031 (= res!179220 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3045 i!1250)))))

(declare-fun b!326032 () Bool)

(declare-fun res!179218 () Bool)

(assert (=> b!326032 (=> (not res!179218) (not e!200852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16703 (_ BitVec 32)) Bool)

(assert (=> b!326032 (= res!179218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326034 () Bool)

(declare-fun res!179219 () Bool)

(assert (=> b!326034 (=> (not res!179219) (not e!200854))))

(assert (=> b!326034 (= res!179219 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7903 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326035 () Bool)

(assert (=> b!326035 (= e!200852 e!200854)))

(declare-fun res!179221 () Bool)

(assert (=> b!326035 (=> (not res!179221) (not e!200854))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326035 (= res!179221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157244))))

(assert (=> b!326035 (= lt!157244 (Intermediate!3045 false resIndex!58 resX!58))))

(declare-fun b!326036 () Bool)

(declare-fun res!179222 () Bool)

(assert (=> b!326036 (=> (not res!179222) (not e!200852))))

(declare-fun arrayContainsKey!0 (array!16703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326036 (= res!179222 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326037 () Bool)

(declare-fun res!179224 () Bool)

(assert (=> b!326037 (=> (not res!179224) (not e!200852))))

(assert (=> b!326037 (= res!179224 (and (= (size!8255 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8255 a!3305))))))

(declare-fun res!179217 () Bool)

(assert (=> start!32670 (=> (not res!179217) (not e!200852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32670 (= res!179217 (validMask!0 mask!3777))))

(assert (=> start!32670 e!200852))

(declare-fun array_inv!5857 (array!16703) Bool)

(assert (=> start!32670 (array_inv!5857 a!3305)))

(assert (=> start!32670 true))

(declare-fun b!326033 () Bool)

(declare-fun res!179225 () Bool)

(assert (=> b!326033 (=> (not res!179225) (not e!200854))))

(assert (=> b!326033 (= res!179225 (and (= (select (arr!7903 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8255 a!3305))))))

(assert (= (and start!32670 res!179217) b!326037))

(assert (= (and b!326037 res!179224) b!326030))

(assert (= (and b!326030 res!179223) b!326036))

(assert (= (and b!326036 res!179222) b!326031))

(assert (= (and b!326031 res!179220) b!326032))

(assert (= (and b!326032 res!179218) b!326035))

(assert (= (and b!326035 res!179221) b!326033))

(assert (= (and b!326033 res!179225) b!326029))

(assert (= (and b!326029 res!179226) b!326034))

(assert (= (and b!326034 res!179219) b!326028))

(declare-fun m!332647 () Bool)

(assert (=> b!326036 m!332647))

(declare-fun m!332649 () Bool)

(assert (=> b!326031 m!332649))

(declare-fun m!332651 () Bool)

(assert (=> b!326032 m!332651))

(declare-fun m!332653 () Bool)

(assert (=> b!326029 m!332653))

(declare-fun m!332655 () Bool)

(assert (=> start!32670 m!332655))

(declare-fun m!332657 () Bool)

(assert (=> start!32670 m!332657))

(declare-fun m!332659 () Bool)

(assert (=> b!326035 m!332659))

(assert (=> b!326035 m!332659))

(declare-fun m!332661 () Bool)

(assert (=> b!326035 m!332661))

(declare-fun m!332663 () Bool)

(assert (=> b!326033 m!332663))

(declare-fun m!332665 () Bool)

(assert (=> b!326030 m!332665))

(declare-fun m!332667 () Bool)

(assert (=> b!326034 m!332667))

(declare-fun m!332669 () Bool)

(assert (=> b!326028 m!332669))

(assert (=> b!326028 m!332669))

(declare-fun m!332671 () Bool)

(assert (=> b!326028 m!332671))

(push 1)

