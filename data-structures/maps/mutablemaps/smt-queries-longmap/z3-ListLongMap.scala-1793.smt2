; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32468 () Bool)

(assert start!32468)

(declare-fun b!324150 () Bool)

(declare-fun e!200141 () Bool)

(assert (=> b!324150 (= e!200141 false)))

(declare-fun lt!156745 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324150 (= lt!156745 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324151 () Bool)

(declare-fun res!177641 () Bool)

(assert (=> b!324151 (=> (not res!177641) (not e!200141))))

(declare-datatypes ((array!16603 0))(
  ( (array!16604 (arr!7856 (Array (_ BitVec 32) (_ BitVec 64))) (size!8208 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16603)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324151 (= res!177641 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7856 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324152 () Bool)

(declare-fun res!177642 () Bool)

(declare-fun e!200142 () Bool)

(assert (=> b!324152 (=> (not res!177642) (not e!200142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324152 (= res!177642 (validKeyInArray!0 k0!2497))))

(declare-fun b!324153 () Bool)

(declare-fun res!177640 () Bool)

(assert (=> b!324153 (=> (not res!177640) (not e!200142))))

(declare-fun arrayContainsKey!0 (array!16603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324153 (= res!177640 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324154 () Bool)

(declare-fun res!177644 () Bool)

(assert (=> b!324154 (=> (not res!177644) (not e!200142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16603 (_ BitVec 32)) Bool)

(assert (=> b!324154 (= res!177644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324155 () Bool)

(assert (=> b!324155 (= e!200142 e!200141)))

(declare-fun res!177639 () Bool)

(assert (=> b!324155 (=> (not res!177639) (not e!200141))))

(declare-datatypes ((SeekEntryResult!2998 0))(
  ( (MissingZero!2998 (index!14168 (_ BitVec 32))) (Found!2998 (index!14169 (_ BitVec 32))) (Intermediate!2998 (undefined!3810 Bool) (index!14170 (_ BitVec 32)) (x!32381 (_ BitVec 32))) (Undefined!2998) (MissingVacant!2998 (index!14171 (_ BitVec 32))) )
))
(declare-fun lt!156746 () SeekEntryResult!2998)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16603 (_ BitVec 32)) SeekEntryResult!2998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324155 (= res!177639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156746))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324155 (= lt!156746 (Intermediate!2998 false resIndex!58 resX!58))))

(declare-fun res!177648 () Bool)

(assert (=> start!32468 (=> (not res!177648) (not e!200142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32468 (= res!177648 (validMask!0 mask!3777))))

(assert (=> start!32468 e!200142))

(declare-fun array_inv!5810 (array!16603) Bool)

(assert (=> start!32468 (array_inv!5810 a!3305)))

(assert (=> start!32468 true))

(declare-fun b!324156 () Bool)

(declare-fun res!177646 () Bool)

(assert (=> b!324156 (=> (not res!177646) (not e!200141))))

(assert (=> b!324156 (= res!177646 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156746))))

(declare-fun b!324157 () Bool)

(declare-fun res!177643 () Bool)

(assert (=> b!324157 (=> (not res!177643) (not e!200142))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16603 (_ BitVec 32)) SeekEntryResult!2998)

(assert (=> b!324157 (= res!177643 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2998 i!1250)))))

(declare-fun b!324158 () Bool)

(declare-fun res!177645 () Bool)

(assert (=> b!324158 (=> (not res!177645) (not e!200142))))

(assert (=> b!324158 (= res!177645 (and (= (size!8208 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8208 a!3305))))))

(declare-fun b!324159 () Bool)

(declare-fun res!177647 () Bool)

(assert (=> b!324159 (=> (not res!177647) (not e!200141))))

(assert (=> b!324159 (= res!177647 (and (= (select (arr!7856 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8208 a!3305))))))

(assert (= (and start!32468 res!177648) b!324158))

(assert (= (and b!324158 res!177645) b!324152))

(assert (= (and b!324152 res!177642) b!324153))

(assert (= (and b!324153 res!177640) b!324157))

(assert (= (and b!324157 res!177643) b!324154))

(assert (= (and b!324154 res!177644) b!324155))

(assert (= (and b!324155 res!177639) b!324159))

(assert (= (and b!324159 res!177647) b!324156))

(assert (= (and b!324156 res!177646) b!324151))

(assert (= (and b!324151 res!177641) b!324150))

(declare-fun m!331255 () Bool)

(assert (=> b!324150 m!331255))

(declare-fun m!331257 () Bool)

(assert (=> b!324151 m!331257))

(declare-fun m!331259 () Bool)

(assert (=> b!324156 m!331259))

(declare-fun m!331261 () Bool)

(assert (=> b!324159 m!331261))

(declare-fun m!331263 () Bool)

(assert (=> b!324155 m!331263))

(assert (=> b!324155 m!331263))

(declare-fun m!331265 () Bool)

(assert (=> b!324155 m!331265))

(declare-fun m!331267 () Bool)

(assert (=> start!32468 m!331267))

(declare-fun m!331269 () Bool)

(assert (=> start!32468 m!331269))

(declare-fun m!331271 () Bool)

(assert (=> b!324153 m!331271))

(declare-fun m!331273 () Bool)

(assert (=> b!324152 m!331273))

(declare-fun m!331275 () Bool)

(assert (=> b!324157 m!331275))

(declare-fun m!331277 () Bool)

(assert (=> b!324154 m!331277))

(check-sat (not b!324153) (not b!324156) (not b!324157) (not b!324152) (not b!324150) (not b!324154) (not b!324155) (not start!32468))
(check-sat)
