; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32674 () Bool)

(assert start!32674)

(declare-fun b!326088 () Bool)

(declare-fun res!179277 () Bool)

(declare-fun e!200872 () Bool)

(assert (=> b!326088 (=> (not res!179277) (not e!200872))))

(declare-datatypes ((array!16707 0))(
  ( (array!16708 (arr!7905 (Array (_ BitVec 32) (_ BitVec 64))) (size!8257 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16707)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326088 (= res!179277 (and (= (select (arr!7905 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8257 a!3305))))))

(declare-fun res!179279 () Bool)

(declare-fun e!200871 () Bool)

(assert (=> start!32674 (=> (not res!179279) (not e!200871))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32674 (= res!179279 (validMask!0 mask!3777))))

(assert (=> start!32674 e!200871))

(declare-fun array_inv!5859 (array!16707) Bool)

(assert (=> start!32674 (array_inv!5859 a!3305)))

(assert (=> start!32674 true))

(declare-fun b!326089 () Bool)

(declare-fun res!179281 () Bool)

(assert (=> b!326089 (=> (not res!179281) (not e!200871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16707 (_ BitVec 32)) Bool)

(assert (=> b!326089 (= res!179281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326090 () Bool)

(assert (=> b!326090 (= e!200872 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((Unit!10103 0))(
  ( (Unit!10104) )
))
(declare-fun lt!157256 () Unit!10103)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10103)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326090 (= lt!157256 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326091 () Bool)

(declare-fun res!179286 () Bool)

(assert (=> b!326091 (=> (not res!179286) (not e!200871))))

(assert (=> b!326091 (= res!179286 (and (= (size!8257 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8257 a!3305))))))

(declare-fun b!326092 () Bool)

(declare-fun res!179283 () Bool)

(assert (=> b!326092 (=> (not res!179283) (not e!200871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326092 (= res!179283 (validKeyInArray!0 k!2497))))

(declare-fun b!326093 () Bool)

(declare-fun res!179284 () Bool)

(assert (=> b!326093 (=> (not res!179284) (not e!200871))))

(declare-datatypes ((SeekEntryResult!3047 0))(
  ( (MissingZero!3047 (index!14364 (_ BitVec 32))) (Found!3047 (index!14365 (_ BitVec 32))) (Intermediate!3047 (undefined!3859 Bool) (index!14366 (_ BitVec 32)) (x!32576 (_ BitVec 32))) (Undefined!3047) (MissingVacant!3047 (index!14367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16707 (_ BitVec 32)) SeekEntryResult!3047)

(assert (=> b!326093 (= res!179284 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3047 i!1250)))))

(declare-fun b!326094 () Bool)

(assert (=> b!326094 (= e!200871 e!200872)))

(declare-fun res!179278 () Bool)

(assert (=> b!326094 (=> (not res!179278) (not e!200872))))

(declare-fun lt!157255 () SeekEntryResult!3047)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16707 (_ BitVec 32)) SeekEntryResult!3047)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326094 (= res!179278 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157255))))

(assert (=> b!326094 (= lt!157255 (Intermediate!3047 false resIndex!58 resX!58))))

(declare-fun b!326095 () Bool)

(declare-fun res!179285 () Bool)

(assert (=> b!326095 (=> (not res!179285) (not e!200872))))

(assert (=> b!326095 (= res!179285 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7905 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326096 () Bool)

(declare-fun res!179280 () Bool)

(assert (=> b!326096 (=> (not res!179280) (not e!200872))))

(assert (=> b!326096 (= res!179280 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157255))))

(declare-fun b!326097 () Bool)

(declare-fun res!179282 () Bool)

(assert (=> b!326097 (=> (not res!179282) (not e!200871))))

(declare-fun arrayContainsKey!0 (array!16707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326097 (= res!179282 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32674 res!179279) b!326091))

(assert (= (and b!326091 res!179286) b!326092))

(assert (= (and b!326092 res!179283) b!326097))

(assert (= (and b!326097 res!179282) b!326093))

(assert (= (and b!326093 res!179284) b!326089))

(assert (= (and b!326089 res!179281) b!326094))

(assert (= (and b!326094 res!179278) b!326088))

(assert (= (and b!326088 res!179277) b!326096))

(assert (= (and b!326096 res!179280) b!326095))

(assert (= (and b!326095 res!179285) b!326090))

(declare-fun m!332699 () Bool)

(assert (=> b!326093 m!332699))

(declare-fun m!332701 () Bool)

(assert (=> b!326088 m!332701))

(declare-fun m!332703 () Bool)

(assert (=> b!326095 m!332703))

(declare-fun m!332705 () Bool)

(assert (=> b!326092 m!332705))

(declare-fun m!332707 () Bool)

(assert (=> b!326090 m!332707))

(assert (=> b!326090 m!332707))

(declare-fun m!332709 () Bool)

(assert (=> b!326090 m!332709))

(declare-fun m!332711 () Bool)

(assert (=> b!326089 m!332711))

(declare-fun m!332713 () Bool)

(assert (=> b!326096 m!332713))

(declare-fun m!332715 () Bool)

(assert (=> b!326097 m!332715))

(declare-fun m!332717 () Bool)

(assert (=> start!32674 m!332717))

(declare-fun m!332719 () Bool)

(assert (=> start!32674 m!332719))

(declare-fun m!332721 () Bool)

(assert (=> b!326094 m!332721))

(assert (=> b!326094 m!332721))

(declare-fun m!332723 () Bool)

(assert (=> b!326094 m!332723))

(push 1)

(assert (not b!326089))

(assert (not b!326090))

(assert (not start!32674))

(assert (not b!326094))

(assert (not b!326097))

(assert (not b!326092))

(assert (not b!326093))

(assert (not b!326096))

(check-sat)

(pop 1)

