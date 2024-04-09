; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48796 () Bool)

(assert start!48796)

(declare-fun b!536495 () Bool)

(declare-fun res!331852 () Bool)

(declare-fun e!311404 () Bool)

(assert (=> b!536495 (=> (not res!331852) (not e!311404))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33964 0))(
  ( (array!33965 (arr!16317 (Array (_ BitVec 32) (_ BitVec 64))) (size!16681 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33964)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536495 (= res!331852 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16681 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16681 a!3154)) (= (select (arr!16317 a!3154) resIndex!32) (select (arr!16317 a!3154) j!147))))))

(declare-fun b!536496 () Bool)

(declare-fun e!311403 () Bool)

(assert (=> b!536496 (= e!311403 false)))

(declare-fun lt!246137 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4782 0))(
  ( (MissingZero!4782 (index!21352 (_ BitVec 32))) (Found!4782 (index!21353 (_ BitVec 32))) (Intermediate!4782 (undefined!5594 Bool) (index!21354 (_ BitVec 32)) (x!50320 (_ BitVec 32))) (Undefined!4782) (MissingVacant!4782 (index!21355 (_ BitVec 32))) )
))
(declare-fun lt!246134 () SeekEntryResult!4782)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33964 (_ BitVec 32)) SeekEntryResult!4782)

(assert (=> b!536496 (= lt!246134 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246137 (select (arr!16317 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536497 () Bool)

(declare-fun e!311407 () Bool)

(assert (=> b!536497 (= e!311407 e!311403)))

(declare-fun res!331861 () Bool)

(assert (=> b!536497 (=> (not res!331861) (not e!311403))))

(assert (=> b!536497 (= res!331861 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246137 #b00000000000000000000000000000000) (bvslt lt!246137 (size!16681 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536497 (= lt!246137 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536498 () Bool)

(declare-fun res!331855 () Bool)

(assert (=> b!536498 (=> (not res!331855) (not e!311404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33964 (_ BitVec 32)) Bool)

(assert (=> b!536498 (= res!331855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536499 () Bool)

(declare-fun res!331856 () Bool)

(declare-fun e!311406 () Bool)

(assert (=> b!536499 (=> (not res!331856) (not e!311406))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536499 (= res!331856 (validKeyInArray!0 k!1998))))

(declare-fun b!536500 () Bool)

(assert (=> b!536500 (= e!311404 e!311407)))

(declare-fun res!331850 () Bool)

(assert (=> b!536500 (=> (not res!331850) (not e!311407))))

(declare-fun lt!246135 () SeekEntryResult!4782)

(assert (=> b!536500 (= res!331850 (= lt!246135 (Intermediate!4782 false resIndex!32 resX!32)))))

(assert (=> b!536500 (= lt!246135 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16317 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536502 () Bool)

(assert (=> b!536502 (= e!311406 e!311404)))

(declare-fun res!331851 () Bool)

(assert (=> b!536502 (=> (not res!331851) (not e!311404))))

(declare-fun lt!246136 () SeekEntryResult!4782)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536502 (= res!331851 (or (= lt!246136 (MissingZero!4782 i!1153)) (= lt!246136 (MissingVacant!4782 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33964 (_ BitVec 32)) SeekEntryResult!4782)

(assert (=> b!536502 (= lt!246136 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536503 () Bool)

(declare-fun res!331859 () Bool)

(assert (=> b!536503 (=> (not res!331859) (not e!311406))))

(declare-fun arrayContainsKey!0 (array!33964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536503 (= res!331859 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536504 () Bool)

(declare-fun res!331862 () Bool)

(assert (=> b!536504 (=> (not res!331862) (not e!311407))))

(assert (=> b!536504 (= res!331862 (and (not (= (select (arr!16317 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16317 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16317 a!3154) index!1177) (select (arr!16317 a!3154) j!147)))))))

(declare-fun b!536505 () Bool)

(declare-fun res!331857 () Bool)

(assert (=> b!536505 (=> (not res!331857) (not e!311406))))

(assert (=> b!536505 (= res!331857 (validKeyInArray!0 (select (arr!16317 a!3154) j!147)))))

(declare-fun b!536501 () Bool)

(declare-fun res!331858 () Bool)

(assert (=> b!536501 (=> (not res!331858) (not e!311404))))

(declare-datatypes ((List!10489 0))(
  ( (Nil!10486) (Cons!10485 (h!11428 (_ BitVec 64)) (t!16725 List!10489)) )
))
(declare-fun arrayNoDuplicates!0 (array!33964 (_ BitVec 32) List!10489) Bool)

(assert (=> b!536501 (= res!331858 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10486))))

(declare-fun res!331854 () Bool)

(assert (=> start!48796 (=> (not res!331854) (not e!311406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48796 (= res!331854 (validMask!0 mask!3216))))

(assert (=> start!48796 e!311406))

(assert (=> start!48796 true))

(declare-fun array_inv!12091 (array!33964) Bool)

(assert (=> start!48796 (array_inv!12091 a!3154)))

(declare-fun b!536506 () Bool)

(declare-fun res!331860 () Bool)

(assert (=> b!536506 (=> (not res!331860) (not e!311406))))

(assert (=> b!536506 (= res!331860 (and (= (size!16681 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16681 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16681 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536507 () Bool)

(declare-fun res!331853 () Bool)

(assert (=> b!536507 (=> (not res!331853) (not e!311407))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536507 (= res!331853 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16317 a!3154) j!147) mask!3216) (select (arr!16317 a!3154) j!147) a!3154 mask!3216) lt!246135))))

(assert (= (and start!48796 res!331854) b!536506))

(assert (= (and b!536506 res!331860) b!536505))

(assert (= (and b!536505 res!331857) b!536499))

(assert (= (and b!536499 res!331856) b!536503))

(assert (= (and b!536503 res!331859) b!536502))

(assert (= (and b!536502 res!331851) b!536498))

(assert (= (and b!536498 res!331855) b!536501))

(assert (= (and b!536501 res!331858) b!536495))

(assert (= (and b!536495 res!331852) b!536500))

(assert (= (and b!536500 res!331850) b!536507))

(assert (= (and b!536507 res!331853) b!536504))

(assert (= (and b!536504 res!331862) b!536497))

(assert (= (and b!536497 res!331861) b!536496))

(declare-fun m!515899 () Bool)

(assert (=> b!536495 m!515899))

(declare-fun m!515901 () Bool)

(assert (=> b!536495 m!515901))

(declare-fun m!515903 () Bool)

(assert (=> b!536499 m!515903))

(assert (=> b!536496 m!515901))

(assert (=> b!536496 m!515901))

(declare-fun m!515905 () Bool)

(assert (=> b!536496 m!515905))

(declare-fun m!515907 () Bool)

(assert (=> b!536501 m!515907))

(declare-fun m!515909 () Bool)

(assert (=> b!536502 m!515909))

(declare-fun m!515911 () Bool)

(assert (=> b!536497 m!515911))

(assert (=> b!536500 m!515901))

(assert (=> b!536500 m!515901))

(declare-fun m!515913 () Bool)

(assert (=> b!536500 m!515913))

(assert (=> b!536507 m!515901))

(assert (=> b!536507 m!515901))

(declare-fun m!515915 () Bool)

(assert (=> b!536507 m!515915))

(assert (=> b!536507 m!515915))

(assert (=> b!536507 m!515901))

(declare-fun m!515917 () Bool)

(assert (=> b!536507 m!515917))

(assert (=> b!536505 m!515901))

(assert (=> b!536505 m!515901))

(declare-fun m!515919 () Bool)

(assert (=> b!536505 m!515919))

(declare-fun m!515921 () Bool)

(assert (=> b!536498 m!515921))

(declare-fun m!515923 () Bool)

(assert (=> b!536504 m!515923))

(assert (=> b!536504 m!515901))

(declare-fun m!515925 () Bool)

(assert (=> b!536503 m!515925))

(declare-fun m!515927 () Bool)

(assert (=> start!48796 m!515927))

(declare-fun m!515929 () Bool)

(assert (=> start!48796 m!515929))

(push 1)

