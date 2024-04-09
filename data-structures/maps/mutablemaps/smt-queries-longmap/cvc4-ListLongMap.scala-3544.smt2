; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48854 () Bool)

(assert start!48854)

(declare-fun b!537626 () Bool)

(declare-fun res!332981 () Bool)

(declare-fun e!311842 () Bool)

(assert (=> b!537626 (=> (not res!332981) (not e!311842))))

(declare-datatypes ((array!34022 0))(
  ( (array!34023 (arr!16346 (Array (_ BitVec 32) (_ BitVec 64))) (size!16710 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34022)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34022 (_ BitVec 32)) Bool)

(assert (=> b!537626 (= res!332981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537627 () Bool)

(declare-fun res!332992 () Bool)

(assert (=> b!537627 (=> (not res!332992) (not e!311842))))

(declare-datatypes ((List!10518 0))(
  ( (Nil!10515) (Cons!10514 (h!11457 (_ BitVec 64)) (t!16754 List!10518)) )
))
(declare-fun arrayNoDuplicates!0 (array!34022 (_ BitVec 32) List!10518) Bool)

(assert (=> b!537627 (= res!332992 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10515))))

(declare-fun b!537628 () Bool)

(declare-fun res!332988 () Bool)

(declare-fun e!311838 () Bool)

(assert (=> b!537628 (=> (not res!332988) (not e!311838))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537628 (= res!332988 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537629 () Bool)

(assert (=> b!537629 (= e!311838 e!311842)))

(declare-fun res!332991 () Bool)

(assert (=> b!537629 (=> (not res!332991) (not e!311842))))

(declare-datatypes ((SeekEntryResult!4811 0))(
  ( (MissingZero!4811 (index!21468 (_ BitVec 32))) (Found!4811 (index!21469 (_ BitVec 32))) (Intermediate!4811 (undefined!5623 Bool) (index!21470 (_ BitVec 32)) (x!50421 (_ BitVec 32))) (Undefined!4811) (MissingVacant!4811 (index!21471 (_ BitVec 32))) )
))
(declare-fun lt!246485 () SeekEntryResult!4811)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537629 (= res!332991 (or (= lt!246485 (MissingZero!4811 i!1153)) (= lt!246485 (MissingVacant!4811 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34022 (_ BitVec 32)) SeekEntryResult!4811)

(assert (=> b!537629 (= lt!246485 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537630 () Bool)

(declare-fun res!332984 () Bool)

(assert (=> b!537630 (=> (not res!332984) (not e!311842))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537630 (= res!332984 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16710 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16710 a!3154)) (= (select (arr!16346 a!3154) resIndex!32) (select (arr!16346 a!3154) j!147))))))

(declare-fun b!537631 () Bool)

(declare-fun e!311839 () Bool)

(assert (=> b!537631 (= e!311842 e!311839)))

(declare-fun res!332985 () Bool)

(assert (=> b!537631 (=> (not res!332985) (not e!311839))))

(declare-fun lt!246484 () SeekEntryResult!4811)

(assert (=> b!537631 (= res!332985 (= lt!246484 (Intermediate!4811 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34022 (_ BitVec 32)) SeekEntryResult!4811)

(assert (=> b!537631 (= lt!246484 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16346 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537632 () Bool)

(declare-fun res!332986 () Bool)

(assert (=> b!537632 (=> (not res!332986) (not e!311838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537632 (= res!332986 (validKeyInArray!0 k!1998))))

(declare-fun b!537633 () Bool)

(declare-fun res!332987 () Bool)

(assert (=> b!537633 (=> (not res!332987) (not e!311839))))

(assert (=> b!537633 (= res!332987 (and (not (= (select (arr!16346 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16346 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16346 a!3154) index!1177) (select (arr!16346 a!3154) j!147)))))))

(declare-fun b!537634 () Bool)

(declare-fun e!311840 () Bool)

(assert (=> b!537634 (= e!311840 false)))

(declare-fun lt!246482 () (_ BitVec 32))

(declare-fun lt!246483 () SeekEntryResult!4811)

(assert (=> b!537634 (= lt!246483 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246482 (select (arr!16346 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537635 () Bool)

(declare-fun res!332982 () Bool)

(assert (=> b!537635 (=> (not res!332982) (not e!311839))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537635 (= res!332982 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16346 a!3154) j!147) mask!3216) (select (arr!16346 a!3154) j!147) a!3154 mask!3216) lt!246484))))

(declare-fun b!537636 () Bool)

(declare-fun res!332993 () Bool)

(assert (=> b!537636 (=> (not res!332993) (not e!311838))))

(assert (=> b!537636 (= res!332993 (validKeyInArray!0 (select (arr!16346 a!3154) j!147)))))

(declare-fun b!537638 () Bool)

(declare-fun res!332983 () Bool)

(assert (=> b!537638 (=> (not res!332983) (not e!311838))))

(assert (=> b!537638 (= res!332983 (and (= (size!16710 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16710 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16710 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!332990 () Bool)

(assert (=> start!48854 (=> (not res!332990) (not e!311838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48854 (= res!332990 (validMask!0 mask!3216))))

(assert (=> start!48854 e!311838))

(assert (=> start!48854 true))

(declare-fun array_inv!12120 (array!34022) Bool)

(assert (=> start!48854 (array_inv!12120 a!3154)))

(declare-fun b!537637 () Bool)

(assert (=> b!537637 (= e!311839 e!311840)))

(declare-fun res!332989 () Bool)

(assert (=> b!537637 (=> (not res!332989) (not e!311840))))

(assert (=> b!537637 (= res!332989 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246482 #b00000000000000000000000000000000) (bvslt lt!246482 (size!16710 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537637 (= lt!246482 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48854 res!332990) b!537638))

(assert (= (and b!537638 res!332983) b!537636))

(assert (= (and b!537636 res!332993) b!537632))

(assert (= (and b!537632 res!332986) b!537628))

(assert (= (and b!537628 res!332988) b!537629))

(assert (= (and b!537629 res!332991) b!537626))

(assert (= (and b!537626 res!332981) b!537627))

(assert (= (and b!537627 res!332992) b!537630))

(assert (= (and b!537630 res!332984) b!537631))

(assert (= (and b!537631 res!332985) b!537635))

(assert (= (and b!537635 res!332982) b!537633))

(assert (= (and b!537633 res!332987) b!537637))

(assert (= (and b!537637 res!332989) b!537634))

(declare-fun m!516827 () Bool)

(assert (=> start!48854 m!516827))

(declare-fun m!516829 () Bool)

(assert (=> start!48854 m!516829))

(declare-fun m!516831 () Bool)

(assert (=> b!537627 m!516831))

(declare-fun m!516833 () Bool)

(assert (=> b!537631 m!516833))

(assert (=> b!537631 m!516833))

(declare-fun m!516835 () Bool)

(assert (=> b!537631 m!516835))

(declare-fun m!516837 () Bool)

(assert (=> b!537632 m!516837))

(declare-fun m!516839 () Bool)

(assert (=> b!537633 m!516839))

(assert (=> b!537633 m!516833))

(declare-fun m!516841 () Bool)

(assert (=> b!537628 m!516841))

(assert (=> b!537634 m!516833))

(assert (=> b!537634 m!516833))

(declare-fun m!516843 () Bool)

(assert (=> b!537634 m!516843))

(declare-fun m!516845 () Bool)

(assert (=> b!537626 m!516845))

(assert (=> b!537635 m!516833))

(assert (=> b!537635 m!516833))

(declare-fun m!516847 () Bool)

(assert (=> b!537635 m!516847))

(assert (=> b!537635 m!516847))

(assert (=> b!537635 m!516833))

(declare-fun m!516849 () Bool)

(assert (=> b!537635 m!516849))

(declare-fun m!516851 () Bool)

(assert (=> b!537629 m!516851))

(assert (=> b!537636 m!516833))

(assert (=> b!537636 m!516833))

(declare-fun m!516853 () Bool)

(assert (=> b!537636 m!516853))

(declare-fun m!516855 () Bool)

(assert (=> b!537637 m!516855))

(declare-fun m!516857 () Bool)

(assert (=> b!537630 m!516857))

(assert (=> b!537630 m!516833))

(push 1)

(assert (not b!537631))

(assert (not b!537628))

(assert (not b!537632))

