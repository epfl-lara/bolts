; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49296 () Bool)

(assert start!49296)

(declare-fun b!542343 () Bool)

(declare-fun e!313894 () Bool)

(assert (=> b!542343 (= e!313894 false)))

(declare-fun lt!247910 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542343 (= lt!247910 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542344 () Bool)

(declare-fun res!337049 () Bool)

(declare-fun e!313893 () Bool)

(assert (=> b!542344 (=> (not res!337049) (not e!313893))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542344 (= res!337049 (validKeyInArray!0 k0!1998))))

(declare-fun b!542345 () Bool)

(declare-fun res!337044 () Bool)

(assert (=> b!542345 (=> (not res!337044) (not e!313894))))

(declare-datatypes ((SeekEntryResult!4924 0))(
  ( (MissingZero!4924 (index!21920 (_ BitVec 32))) (Found!4924 (index!21921 (_ BitVec 32))) (Intermediate!4924 (undefined!5736 Bool) (index!21922 (_ BitVec 32)) (x!50862 (_ BitVec 32))) (Undefined!4924) (MissingVacant!4924 (index!21923 (_ BitVec 32))) )
))
(declare-fun lt!247908 () SeekEntryResult!4924)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34260 0))(
  ( (array!34261 (arr!16459 (Array (_ BitVec 32) (_ BitVec 64))) (size!16823 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34260)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34260 (_ BitVec 32)) SeekEntryResult!4924)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542345 (= res!337044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16459 a!3154) j!147) mask!3216) (select (arr!16459 a!3154) j!147) a!3154 mask!3216) lt!247908))))

(declare-fun b!542346 () Bool)

(declare-fun res!337051 () Bool)

(assert (=> b!542346 (=> (not res!337051) (not e!313893))))

(assert (=> b!542346 (= res!337051 (validKeyInArray!0 (select (arr!16459 a!3154) j!147)))))

(declare-fun b!542347 () Bool)

(declare-fun e!313891 () Bool)

(assert (=> b!542347 (= e!313891 e!313894)))

(declare-fun res!337052 () Bool)

(assert (=> b!542347 (=> (not res!337052) (not e!313894))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542347 (= res!337052 (= lt!247908 (Intermediate!4924 false resIndex!32 resX!32)))))

(assert (=> b!542347 (= lt!247908 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16459 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542348 () Bool)

(declare-fun res!337050 () Bool)

(assert (=> b!542348 (=> (not res!337050) (not e!313891))))

(declare-datatypes ((List!10631 0))(
  ( (Nil!10628) (Cons!10627 (h!11582 (_ BitVec 64)) (t!16867 List!10631)) )
))
(declare-fun arrayNoDuplicates!0 (array!34260 (_ BitVec 32) List!10631) Bool)

(assert (=> b!542348 (= res!337050 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10628))))

(declare-fun b!542349 () Bool)

(declare-fun res!337048 () Bool)

(assert (=> b!542349 (=> (not res!337048) (not e!313891))))

(assert (=> b!542349 (= res!337048 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16823 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16823 a!3154)) (= (select (arr!16459 a!3154) resIndex!32) (select (arr!16459 a!3154) j!147))))))

(declare-fun b!542351 () Bool)

(declare-fun res!337053 () Bool)

(assert (=> b!542351 (=> (not res!337053) (not e!313893))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542351 (= res!337053 (and (= (size!16823 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16823 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16823 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542352 () Bool)

(declare-fun res!337046 () Bool)

(assert (=> b!542352 (=> (not res!337046) (not e!313891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34260 (_ BitVec 32)) Bool)

(assert (=> b!542352 (= res!337046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!337055 () Bool)

(assert (=> start!49296 (=> (not res!337055) (not e!313893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49296 (= res!337055 (validMask!0 mask!3216))))

(assert (=> start!49296 e!313893))

(assert (=> start!49296 true))

(declare-fun array_inv!12233 (array!34260) Bool)

(assert (=> start!49296 (array_inv!12233 a!3154)))

(declare-fun b!542350 () Bool)

(declare-fun res!337045 () Bool)

(assert (=> b!542350 (=> (not res!337045) (not e!313894))))

(assert (=> b!542350 (= res!337045 (and (not (= (select (arr!16459 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16459 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16459 a!3154) index!1177) (select (arr!16459 a!3154) j!147)))))))

(declare-fun b!542353 () Bool)

(assert (=> b!542353 (= e!313893 e!313891)))

(declare-fun res!337047 () Bool)

(assert (=> b!542353 (=> (not res!337047) (not e!313891))))

(declare-fun lt!247909 () SeekEntryResult!4924)

(assert (=> b!542353 (= res!337047 (or (= lt!247909 (MissingZero!4924 i!1153)) (= lt!247909 (MissingVacant!4924 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34260 (_ BitVec 32)) SeekEntryResult!4924)

(assert (=> b!542353 (= lt!247909 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542354 () Bool)

(declare-fun res!337054 () Bool)

(assert (=> b!542354 (=> (not res!337054) (not e!313893))))

(declare-fun arrayContainsKey!0 (array!34260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542354 (= res!337054 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49296 res!337055) b!542351))

(assert (= (and b!542351 res!337053) b!542346))

(assert (= (and b!542346 res!337051) b!542344))

(assert (= (and b!542344 res!337049) b!542354))

(assert (= (and b!542354 res!337054) b!542353))

(assert (= (and b!542353 res!337047) b!542352))

(assert (= (and b!542352 res!337046) b!542348))

(assert (= (and b!542348 res!337050) b!542349))

(assert (= (and b!542349 res!337048) b!542347))

(assert (= (and b!542347 res!337052) b!542345))

(assert (= (and b!542345 res!337044) b!542350))

(assert (= (and b!542350 res!337045) b!542343))

(declare-fun m!520621 () Bool)

(assert (=> b!542347 m!520621))

(assert (=> b!542347 m!520621))

(declare-fun m!520623 () Bool)

(assert (=> b!542347 m!520623))

(declare-fun m!520625 () Bool)

(assert (=> b!542352 m!520625))

(declare-fun m!520627 () Bool)

(assert (=> b!542354 m!520627))

(declare-fun m!520629 () Bool)

(assert (=> b!542348 m!520629))

(declare-fun m!520631 () Bool)

(assert (=> start!49296 m!520631))

(declare-fun m!520633 () Bool)

(assert (=> start!49296 m!520633))

(declare-fun m!520635 () Bool)

(assert (=> b!542353 m!520635))

(declare-fun m!520637 () Bool)

(assert (=> b!542350 m!520637))

(assert (=> b!542350 m!520621))

(declare-fun m!520639 () Bool)

(assert (=> b!542343 m!520639))

(declare-fun m!520641 () Bool)

(assert (=> b!542349 m!520641))

(assert (=> b!542349 m!520621))

(assert (=> b!542345 m!520621))

(assert (=> b!542345 m!520621))

(declare-fun m!520643 () Bool)

(assert (=> b!542345 m!520643))

(assert (=> b!542345 m!520643))

(assert (=> b!542345 m!520621))

(declare-fun m!520645 () Bool)

(assert (=> b!542345 m!520645))

(assert (=> b!542346 m!520621))

(assert (=> b!542346 m!520621))

(declare-fun m!520647 () Bool)

(assert (=> b!542346 m!520647))

(declare-fun m!520649 () Bool)

(assert (=> b!542344 m!520649))

(check-sat (not start!49296) (not b!542348) (not b!542354) (not b!542344) (not b!542352) (not b!542343) (not b!542347) (not b!542353) (not b!542345) (not b!542346))
