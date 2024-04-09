; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49302 () Bool)

(assert start!49302)

(declare-fun b!542451 () Bool)

(declare-fun res!337158 () Bool)

(declare-fun e!313928 () Bool)

(assert (=> b!542451 (=> (not res!337158) (not e!313928))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34266 0))(
  ( (array!34267 (arr!16462 (Array (_ BitVec 32) (_ BitVec 64))) (size!16826 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34266)

(assert (=> b!542451 (= res!337158 (and (not (= (select (arr!16462 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16462 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16462 a!3154) index!1177) (select (arr!16462 a!3154) j!147)))))))

(declare-fun b!542452 () Bool)

(declare-fun res!337159 () Bool)

(declare-fun e!313930 () Bool)

(assert (=> b!542452 (=> (not res!337159) (not e!313930))))

(declare-datatypes ((List!10634 0))(
  ( (Nil!10631) (Cons!10630 (h!11585 (_ BitVec 64)) (t!16870 List!10634)) )
))
(declare-fun arrayNoDuplicates!0 (array!34266 (_ BitVec 32) List!10634) Bool)

(assert (=> b!542452 (= res!337159 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10631))))

(declare-fun b!542453 () Bool)

(declare-fun res!337154 () Bool)

(assert (=> b!542453 (=> (not res!337154) (not e!313928))))

(declare-datatypes ((SeekEntryResult!4927 0))(
  ( (MissingZero!4927 (index!21932 (_ BitVec 32))) (Found!4927 (index!21933 (_ BitVec 32))) (Intermediate!4927 (undefined!5739 Bool) (index!21934 (_ BitVec 32)) (x!50873 (_ BitVec 32))) (Undefined!4927) (MissingVacant!4927 (index!21935 (_ BitVec 32))) )
))
(declare-fun lt!247935 () SeekEntryResult!4927)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34266 (_ BitVec 32)) SeekEntryResult!4927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542453 (= res!337154 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16462 a!3154) j!147) mask!3216) (select (arr!16462 a!3154) j!147) a!3154 mask!3216) lt!247935))))

(declare-fun b!542454 () Bool)

(declare-fun res!337155 () Bool)

(assert (=> b!542454 (=> (not res!337155) (not e!313930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34266 (_ BitVec 32)) Bool)

(assert (=> b!542454 (= res!337155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542455 () Bool)

(assert (=> b!542455 (= e!313928 false)))

(declare-fun lt!247936 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542455 (= lt!247936 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!337157 () Bool)

(declare-fun e!313927 () Bool)

(assert (=> start!49302 (=> (not res!337157) (not e!313927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49302 (= res!337157 (validMask!0 mask!3216))))

(assert (=> start!49302 e!313927))

(assert (=> start!49302 true))

(declare-fun array_inv!12236 (array!34266) Bool)

(assert (=> start!49302 (array_inv!12236 a!3154)))

(declare-fun b!542456 () Bool)

(declare-fun res!337153 () Bool)

(assert (=> b!542456 (=> (not res!337153) (not e!313927))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542456 (= res!337153 (and (= (size!16826 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16826 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16826 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542457 () Bool)

(assert (=> b!542457 (= e!313927 e!313930)))

(declare-fun res!337161 () Bool)

(assert (=> b!542457 (=> (not res!337161) (not e!313930))))

(declare-fun lt!247937 () SeekEntryResult!4927)

(assert (=> b!542457 (= res!337161 (or (= lt!247937 (MissingZero!4927 i!1153)) (= lt!247937 (MissingVacant!4927 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34266 (_ BitVec 32)) SeekEntryResult!4927)

(assert (=> b!542457 (= lt!247937 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542458 () Bool)

(declare-fun res!337152 () Bool)

(assert (=> b!542458 (=> (not res!337152) (not e!313927))))

(declare-fun arrayContainsKey!0 (array!34266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542458 (= res!337152 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542459 () Bool)

(declare-fun res!337162 () Bool)

(assert (=> b!542459 (=> (not res!337162) (not e!313930))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542459 (= res!337162 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16826 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16826 a!3154)) (= (select (arr!16462 a!3154) resIndex!32) (select (arr!16462 a!3154) j!147))))))

(declare-fun b!542460 () Bool)

(declare-fun res!337156 () Bool)

(assert (=> b!542460 (=> (not res!337156) (not e!313927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542460 (= res!337156 (validKeyInArray!0 k0!1998))))

(declare-fun b!542461 () Bool)

(declare-fun res!337163 () Bool)

(assert (=> b!542461 (=> (not res!337163) (not e!313927))))

(assert (=> b!542461 (= res!337163 (validKeyInArray!0 (select (arr!16462 a!3154) j!147)))))

(declare-fun b!542462 () Bool)

(assert (=> b!542462 (= e!313930 e!313928)))

(declare-fun res!337160 () Bool)

(assert (=> b!542462 (=> (not res!337160) (not e!313928))))

(assert (=> b!542462 (= res!337160 (= lt!247935 (Intermediate!4927 false resIndex!32 resX!32)))))

(assert (=> b!542462 (= lt!247935 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16462 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49302 res!337157) b!542456))

(assert (= (and b!542456 res!337153) b!542461))

(assert (= (and b!542461 res!337163) b!542460))

(assert (= (and b!542460 res!337156) b!542458))

(assert (= (and b!542458 res!337152) b!542457))

(assert (= (and b!542457 res!337161) b!542454))

(assert (= (and b!542454 res!337155) b!542452))

(assert (= (and b!542452 res!337159) b!542459))

(assert (= (and b!542459 res!337162) b!542462))

(assert (= (and b!542462 res!337160) b!542453))

(assert (= (and b!542453 res!337154) b!542451))

(assert (= (and b!542451 res!337158) b!542455))

(declare-fun m!520711 () Bool)

(assert (=> b!542451 m!520711))

(declare-fun m!520713 () Bool)

(assert (=> b!542451 m!520713))

(declare-fun m!520715 () Bool)

(assert (=> start!49302 m!520715))

(declare-fun m!520717 () Bool)

(assert (=> start!49302 m!520717))

(declare-fun m!520719 () Bool)

(assert (=> b!542460 m!520719))

(declare-fun m!520721 () Bool)

(assert (=> b!542454 m!520721))

(declare-fun m!520723 () Bool)

(assert (=> b!542457 m!520723))

(assert (=> b!542461 m!520713))

(assert (=> b!542461 m!520713))

(declare-fun m!520725 () Bool)

(assert (=> b!542461 m!520725))

(declare-fun m!520727 () Bool)

(assert (=> b!542459 m!520727))

(assert (=> b!542459 m!520713))

(declare-fun m!520729 () Bool)

(assert (=> b!542458 m!520729))

(declare-fun m!520731 () Bool)

(assert (=> b!542452 m!520731))

(declare-fun m!520733 () Bool)

(assert (=> b!542455 m!520733))

(assert (=> b!542462 m!520713))

(assert (=> b!542462 m!520713))

(declare-fun m!520735 () Bool)

(assert (=> b!542462 m!520735))

(assert (=> b!542453 m!520713))

(assert (=> b!542453 m!520713))

(declare-fun m!520737 () Bool)

(assert (=> b!542453 m!520737))

(assert (=> b!542453 m!520737))

(assert (=> b!542453 m!520713))

(declare-fun m!520739 () Bool)

(assert (=> b!542453 m!520739))

(check-sat (not b!542455) (not b!542454) (not b!542460) (not b!542452) (not b!542462) (not b!542461) (not b!542457) (not b!542453) (not b!542458) (not start!49302))
