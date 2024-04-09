; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32714 () Bool)

(assert start!32714)

(declare-fun b!326688 () Bool)

(declare-fun e!201052 () Bool)

(assert (=> b!326688 (= e!201052 false)))

(declare-datatypes ((array!16747 0))(
  ( (array!16748 (arr!7925 (Array (_ BitVec 32) (_ BitVec 64))) (size!8277 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16747)

(declare-datatypes ((Unit!10143 0))(
  ( (Unit!10144) )
))
(declare-fun lt!157376 () Unit!10143)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10143)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326688 (= lt!157376 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326689 () Bool)

(declare-fun res!179879 () Bool)

(declare-fun e!201051 () Bool)

(assert (=> b!326689 (=> (not res!179879) (not e!201051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326689 (= res!179879 (validKeyInArray!0 k0!2497))))

(declare-fun b!326690 () Bool)

(assert (=> b!326690 (= e!201051 e!201052)))

(declare-fun res!179881 () Bool)

(assert (=> b!326690 (=> (not res!179881) (not e!201052))))

(declare-datatypes ((SeekEntryResult!3067 0))(
  ( (MissingZero!3067 (index!14444 (_ BitVec 32))) (Found!3067 (index!14445 (_ BitVec 32))) (Intermediate!3067 (undefined!3879 Bool) (index!14446 (_ BitVec 32)) (x!32652 (_ BitVec 32))) (Undefined!3067) (MissingVacant!3067 (index!14447 (_ BitVec 32))) )
))
(declare-fun lt!157375 () SeekEntryResult!3067)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16747 (_ BitVec 32)) SeekEntryResult!3067)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326690 (= res!179881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157375))))

(assert (=> b!326690 (= lt!157375 (Intermediate!3067 false resIndex!58 resX!58))))

(declare-fun b!326691 () Bool)

(declare-fun res!179877 () Bool)

(assert (=> b!326691 (=> (not res!179877) (not e!201052))))

(assert (=> b!326691 (= res!179877 (and (= (select (arr!7925 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8277 a!3305))))))

(declare-fun b!326692 () Bool)

(declare-fun res!179882 () Bool)

(assert (=> b!326692 (=> (not res!179882) (not e!201051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16747 (_ BitVec 32)) Bool)

(assert (=> b!326692 (= res!179882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!179886 () Bool)

(assert (=> start!32714 (=> (not res!179886) (not e!201051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32714 (= res!179886 (validMask!0 mask!3777))))

(assert (=> start!32714 e!201051))

(declare-fun array_inv!5879 (array!16747) Bool)

(assert (=> start!32714 (array_inv!5879 a!3305)))

(assert (=> start!32714 true))

(declare-fun b!326693 () Bool)

(declare-fun res!179880 () Bool)

(assert (=> b!326693 (=> (not res!179880) (not e!201051))))

(assert (=> b!326693 (= res!179880 (and (= (size!8277 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8277 a!3305))))))

(declare-fun b!326694 () Bool)

(declare-fun res!179878 () Bool)

(assert (=> b!326694 (=> (not res!179878) (not e!201051))))

(declare-fun arrayContainsKey!0 (array!16747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326694 (= res!179878 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326695 () Bool)

(declare-fun res!179885 () Bool)

(assert (=> b!326695 (=> (not res!179885) (not e!201051))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16747 (_ BitVec 32)) SeekEntryResult!3067)

(assert (=> b!326695 (= res!179885 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3067 i!1250)))))

(declare-fun b!326696 () Bool)

(declare-fun res!179884 () Bool)

(assert (=> b!326696 (=> (not res!179884) (not e!201052))))

(assert (=> b!326696 (= res!179884 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157375))))

(declare-fun b!326697 () Bool)

(declare-fun res!179883 () Bool)

(assert (=> b!326697 (=> (not res!179883) (not e!201052))))

(assert (=> b!326697 (= res!179883 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7925 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(assert (= (and start!32714 res!179886) b!326693))

(assert (= (and b!326693 res!179880) b!326689))

(assert (= (and b!326689 res!179879) b!326694))

(assert (= (and b!326694 res!179878) b!326695))

(assert (= (and b!326695 res!179885) b!326692))

(assert (= (and b!326692 res!179882) b!326690))

(assert (= (and b!326690 res!179881) b!326691))

(assert (= (and b!326691 res!179877) b!326696))

(assert (= (and b!326696 res!179884) b!326697))

(assert (= (and b!326697 res!179883) b!326688))

(declare-fun m!333219 () Bool)

(assert (=> b!326691 m!333219))

(declare-fun m!333221 () Bool)

(assert (=> start!32714 m!333221))

(declare-fun m!333223 () Bool)

(assert (=> start!32714 m!333223))

(declare-fun m!333225 () Bool)

(assert (=> b!326692 m!333225))

(declare-fun m!333227 () Bool)

(assert (=> b!326696 m!333227))

(declare-fun m!333229 () Bool)

(assert (=> b!326688 m!333229))

(assert (=> b!326688 m!333229))

(declare-fun m!333231 () Bool)

(assert (=> b!326688 m!333231))

(declare-fun m!333233 () Bool)

(assert (=> b!326690 m!333233))

(assert (=> b!326690 m!333233))

(declare-fun m!333235 () Bool)

(assert (=> b!326690 m!333235))

(declare-fun m!333237 () Bool)

(assert (=> b!326697 m!333237))

(declare-fun m!333239 () Bool)

(assert (=> b!326694 m!333239))

(declare-fun m!333241 () Bool)

(assert (=> b!326695 m!333241))

(declare-fun m!333243 () Bool)

(assert (=> b!326689 m!333243))

(check-sat (not b!326689) (not b!326690) (not start!32714) (not b!326694) (not b!326688) (not b!326696) (not b!326695) (not b!326692))
(check-sat)
