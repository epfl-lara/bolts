; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48858 () Bool)

(assert start!48858)

(declare-fun b!537705 () Bool)

(declare-fun res!333065 () Bool)

(declare-fun e!311871 () Bool)

(assert (=> b!537705 (=> (not res!333065) (not e!311871))))

(declare-datatypes ((array!34026 0))(
  ( (array!34027 (arr!16348 (Array (_ BitVec 32) (_ BitVec 64))) (size!16712 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34026)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537705 (= res!333065 (validKeyInArray!0 (select (arr!16348 a!3154) j!147)))))

(declare-fun b!537706 () Bool)

(declare-fun e!311869 () Bool)

(declare-fun e!311870 () Bool)

(assert (=> b!537706 (= e!311869 e!311870)))

(declare-fun res!333068 () Bool)

(assert (=> b!537706 (=> (not res!333068) (not e!311870))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246506 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537706 (= res!333068 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246506 #b00000000000000000000000000000000) (bvslt lt!246506 (size!16712 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537706 (= lt!246506 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537707 () Bool)

(declare-fun res!333067 () Bool)

(declare-fun e!311872 () Bool)

(assert (=> b!537707 (=> (not res!333067) (not e!311872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34026 (_ BitVec 32)) Bool)

(assert (=> b!537707 (= res!333067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537708 () Bool)

(declare-fun res!333060 () Bool)

(assert (=> b!537708 (=> (not res!333060) (not e!311872))))

(declare-datatypes ((List!10520 0))(
  ( (Nil!10517) (Cons!10516 (h!11459 (_ BitVec 64)) (t!16756 List!10520)) )
))
(declare-fun arrayNoDuplicates!0 (array!34026 (_ BitVec 32) List!10520) Bool)

(assert (=> b!537708 (= res!333060 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10517))))

(declare-fun b!537709 () Bool)

(assert (=> b!537709 (= e!311870 false)))

(declare-datatypes ((SeekEntryResult!4813 0))(
  ( (MissingZero!4813 (index!21476 (_ BitVec 32))) (Found!4813 (index!21477 (_ BitVec 32))) (Intermediate!4813 (undefined!5625 Bool) (index!21478 (_ BitVec 32)) (x!50431 (_ BitVec 32))) (Undefined!4813) (MissingVacant!4813 (index!21479 (_ BitVec 32))) )
))
(declare-fun lt!246507 () SeekEntryResult!4813)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34026 (_ BitVec 32)) SeekEntryResult!4813)

(assert (=> b!537709 (= lt!246507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246506 (select (arr!16348 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537710 () Bool)

(declare-fun res!333069 () Bool)

(assert (=> b!537710 (=> (not res!333069) (not e!311869))))

(declare-fun lt!246508 () SeekEntryResult!4813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537710 (= res!333069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16348 a!3154) j!147) mask!3216) (select (arr!16348 a!3154) j!147) a!3154 mask!3216) lt!246508))))

(declare-fun b!537711 () Bool)

(declare-fun res!333064 () Bool)

(assert (=> b!537711 (=> (not res!333064) (not e!311871))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537711 (= res!333064 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537712 () Bool)

(declare-fun res!333062 () Bool)

(assert (=> b!537712 (=> (not res!333062) (not e!311869))))

(assert (=> b!537712 (= res!333062 (and (not (= (select (arr!16348 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16348 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16348 a!3154) index!1177) (select (arr!16348 a!3154) j!147)))))))

(declare-fun b!537704 () Bool)

(declare-fun res!333059 () Bool)

(assert (=> b!537704 (=> (not res!333059) (not e!311871))))

(assert (=> b!537704 (= res!333059 (validKeyInArray!0 k0!1998))))

(declare-fun res!333066 () Bool)

(assert (=> start!48858 (=> (not res!333066) (not e!311871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48858 (= res!333066 (validMask!0 mask!3216))))

(assert (=> start!48858 e!311871))

(assert (=> start!48858 true))

(declare-fun array_inv!12122 (array!34026) Bool)

(assert (=> start!48858 (array_inv!12122 a!3154)))

(declare-fun b!537713 () Bool)

(declare-fun res!333070 () Bool)

(assert (=> b!537713 (=> (not res!333070) (not e!311871))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537713 (= res!333070 (and (= (size!16712 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16712 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16712 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537714 () Bool)

(assert (=> b!537714 (= e!311871 e!311872)))

(declare-fun res!333061 () Bool)

(assert (=> b!537714 (=> (not res!333061) (not e!311872))))

(declare-fun lt!246509 () SeekEntryResult!4813)

(assert (=> b!537714 (= res!333061 (or (= lt!246509 (MissingZero!4813 i!1153)) (= lt!246509 (MissingVacant!4813 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34026 (_ BitVec 32)) SeekEntryResult!4813)

(assert (=> b!537714 (= lt!246509 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537715 () Bool)

(declare-fun res!333071 () Bool)

(assert (=> b!537715 (=> (not res!333071) (not e!311872))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537715 (= res!333071 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16712 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16712 a!3154)) (= (select (arr!16348 a!3154) resIndex!32) (select (arr!16348 a!3154) j!147))))))

(declare-fun b!537716 () Bool)

(assert (=> b!537716 (= e!311872 e!311869)))

(declare-fun res!333063 () Bool)

(assert (=> b!537716 (=> (not res!333063) (not e!311869))))

(assert (=> b!537716 (= res!333063 (= lt!246508 (Intermediate!4813 false resIndex!32 resX!32)))))

(assert (=> b!537716 (= lt!246508 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16348 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48858 res!333066) b!537713))

(assert (= (and b!537713 res!333070) b!537705))

(assert (= (and b!537705 res!333065) b!537704))

(assert (= (and b!537704 res!333059) b!537711))

(assert (= (and b!537711 res!333064) b!537714))

(assert (= (and b!537714 res!333061) b!537707))

(assert (= (and b!537707 res!333067) b!537708))

(assert (= (and b!537708 res!333060) b!537715))

(assert (= (and b!537715 res!333071) b!537716))

(assert (= (and b!537716 res!333063) b!537710))

(assert (= (and b!537710 res!333069) b!537712))

(assert (= (and b!537712 res!333062) b!537706))

(assert (= (and b!537706 res!333068) b!537709))

(declare-fun m!516891 () Bool)

(assert (=> b!537708 m!516891))

(declare-fun m!516893 () Bool)

(assert (=> b!537714 m!516893))

(declare-fun m!516895 () Bool)

(assert (=> b!537709 m!516895))

(assert (=> b!537709 m!516895))

(declare-fun m!516897 () Bool)

(assert (=> b!537709 m!516897))

(declare-fun m!516899 () Bool)

(assert (=> b!537711 m!516899))

(assert (=> b!537710 m!516895))

(assert (=> b!537710 m!516895))

(declare-fun m!516901 () Bool)

(assert (=> b!537710 m!516901))

(assert (=> b!537710 m!516901))

(assert (=> b!537710 m!516895))

(declare-fun m!516903 () Bool)

(assert (=> b!537710 m!516903))

(assert (=> b!537705 m!516895))

(assert (=> b!537705 m!516895))

(declare-fun m!516905 () Bool)

(assert (=> b!537705 m!516905))

(declare-fun m!516907 () Bool)

(assert (=> b!537707 m!516907))

(declare-fun m!516909 () Bool)

(assert (=> b!537704 m!516909))

(declare-fun m!516911 () Bool)

(assert (=> b!537715 m!516911))

(assert (=> b!537715 m!516895))

(declare-fun m!516913 () Bool)

(assert (=> b!537706 m!516913))

(assert (=> b!537716 m!516895))

(assert (=> b!537716 m!516895))

(declare-fun m!516915 () Bool)

(assert (=> b!537716 m!516915))

(declare-fun m!516917 () Bool)

(assert (=> b!537712 m!516917))

(assert (=> b!537712 m!516895))

(declare-fun m!516919 () Bool)

(assert (=> start!48858 m!516919))

(declare-fun m!516921 () Bool)

(assert (=> start!48858 m!516921))

(check-sat (not b!537714) (not b!537704) (not b!537716) (not b!537709) (not b!537705) (not start!48858) (not b!537706) (not b!537707) (not b!537710) (not b!537711) (not b!537708))
(check-sat)
