; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48414 () Bool)

(assert start!48414)

(declare-fun b!531613 () Bool)

(declare-fun res!327257 () Bool)

(declare-fun e!309627 () Bool)

(assert (=> b!531613 (=> (not res!327257) (not e!309627))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531613 (= res!327257 (validKeyInArray!0 k0!1998))))

(declare-fun b!531614 () Bool)

(declare-fun res!327260 () Bool)

(assert (=> b!531614 (=> (not res!327260) (not e!309627))))

(declare-datatypes ((array!33678 0))(
  ( (array!33679 (arr!16177 (Array (_ BitVec 32) (_ BitVec 64))) (size!16541 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33678)

(declare-fun arrayContainsKey!0 (array!33678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531614 (= res!327260 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531615 () Bool)

(declare-fun res!327258 () Bool)

(declare-fun e!309626 () Bool)

(assert (=> b!531615 (=> (not res!327258) (not e!309626))))

(declare-datatypes ((List!10349 0))(
  ( (Nil!10346) (Cons!10345 (h!11285 (_ BitVec 64)) (t!16585 List!10349)) )
))
(declare-fun arrayNoDuplicates!0 (array!33678 (_ BitVec 32) List!10349) Bool)

(assert (=> b!531615 (= res!327258 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10346))))

(declare-fun b!531616 () Bool)

(declare-fun res!327254 () Bool)

(assert (=> b!531616 (=> (not res!327254) (not e!309627))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531616 (= res!327254 (and (= (size!16541 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16541 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16541 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!327253 () Bool)

(assert (=> start!48414 (=> (not res!327253) (not e!309627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48414 (= res!327253 (validMask!0 mask!3216))))

(assert (=> start!48414 e!309627))

(assert (=> start!48414 true))

(declare-fun array_inv!11951 (array!33678) Bool)

(assert (=> start!48414 (array_inv!11951 a!3154)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun b!531617 () Bool)

(assert (=> b!531617 (= e!309626 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16541 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16541 a!3154)) (= (select (arr!16177 a!3154) resIndex!32) (select (arr!16177 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!531618 () Bool)

(declare-fun res!327256 () Bool)

(assert (=> b!531618 (=> (not res!327256) (not e!309627))))

(assert (=> b!531618 (= res!327256 (validKeyInArray!0 (select (arr!16177 a!3154) j!147)))))

(declare-fun b!531619 () Bool)

(declare-fun res!327259 () Bool)

(assert (=> b!531619 (=> (not res!327259) (not e!309626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33678 (_ BitVec 32)) Bool)

(assert (=> b!531619 (= res!327259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531620 () Bool)

(assert (=> b!531620 (= e!309627 e!309626)))

(declare-fun res!327255 () Bool)

(assert (=> b!531620 (=> (not res!327255) (not e!309626))))

(declare-datatypes ((SeekEntryResult!4642 0))(
  ( (MissingZero!4642 (index!20792 (_ BitVec 32))) (Found!4642 (index!20793 (_ BitVec 32))) (Intermediate!4642 (undefined!5454 Bool) (index!20794 (_ BitVec 32)) (x!49795 (_ BitVec 32))) (Undefined!4642) (MissingVacant!4642 (index!20795 (_ BitVec 32))) )
))
(declare-fun lt!245042 () SeekEntryResult!4642)

(assert (=> b!531620 (= res!327255 (or (= lt!245042 (MissingZero!4642 i!1153)) (= lt!245042 (MissingVacant!4642 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33678 (_ BitVec 32)) SeekEntryResult!4642)

(assert (=> b!531620 (= lt!245042 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48414 res!327253) b!531616))

(assert (= (and b!531616 res!327254) b!531618))

(assert (= (and b!531618 res!327256) b!531613))

(assert (= (and b!531613 res!327257) b!531614))

(assert (= (and b!531614 res!327260) b!531620))

(assert (= (and b!531620 res!327255) b!531619))

(assert (= (and b!531619 res!327259) b!531615))

(assert (= (and b!531615 res!327258) b!531617))

(declare-fun m!512001 () Bool)

(assert (=> b!531615 m!512001))

(declare-fun m!512003 () Bool)

(assert (=> b!531619 m!512003))

(declare-fun m!512005 () Bool)

(assert (=> b!531618 m!512005))

(assert (=> b!531618 m!512005))

(declare-fun m!512007 () Bool)

(assert (=> b!531618 m!512007))

(declare-fun m!512009 () Bool)

(assert (=> b!531617 m!512009))

(assert (=> b!531617 m!512005))

(declare-fun m!512011 () Bool)

(assert (=> b!531613 m!512011))

(declare-fun m!512013 () Bool)

(assert (=> b!531620 m!512013))

(declare-fun m!512015 () Bool)

(assert (=> b!531614 m!512015))

(declare-fun m!512017 () Bool)

(assert (=> start!48414 m!512017))

(declare-fun m!512019 () Bool)

(assert (=> start!48414 m!512019))

(check-sat (not b!531619) (not b!531615) (not b!531618) (not start!48414) (not b!531620) (not b!531613) (not b!531614))
(check-sat)
