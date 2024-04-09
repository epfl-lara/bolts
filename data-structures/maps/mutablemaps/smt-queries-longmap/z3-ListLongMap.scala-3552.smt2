; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48900 () Bool)

(assert start!48900)

(declare-fun b!538523 () Bool)

(declare-fun e!312269 () Bool)

(declare-fun e!312265 () Bool)

(assert (=> b!538523 (= e!312269 e!312265)))

(declare-fun res!333882 () Bool)

(assert (=> b!538523 (=> (not res!333882) (not e!312265))))

(declare-datatypes ((SeekEntryResult!4834 0))(
  ( (MissingZero!4834 (index!21560 (_ BitVec 32))) (Found!4834 (index!21561 (_ BitVec 32))) (Intermediate!4834 (undefined!5646 Bool) (index!21562 (_ BitVec 32)) (x!50508 (_ BitVec 32))) (Undefined!4834) (MissingVacant!4834 (index!21563 (_ BitVec 32))) )
))
(declare-fun lt!246885 () SeekEntryResult!4834)

(declare-fun lt!246887 () SeekEntryResult!4834)

(declare-fun lt!246883 () SeekEntryResult!4834)

(assert (=> b!538523 (= res!333882 (and (= lt!246885 lt!246883) (= lt!246887 lt!246885)))))

(declare-fun lt!246886 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34068 0))(
  ( (array!34069 (arr!16369 (Array (_ BitVec 32) (_ BitVec 64))) (size!16733 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34068)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34068 (_ BitVec 32)) SeekEntryResult!4834)

(assert (=> b!538523 (= lt!246885 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246886 (select (arr!16369 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538524 () Bool)

(declare-fun e!312270 () Bool)

(assert (=> b!538524 (= e!312270 e!312269)))

(declare-fun res!333890 () Bool)

(assert (=> b!538524 (=> (not res!333890) (not e!312269))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538524 (= res!333890 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246886 #b00000000000000000000000000000000) (bvslt lt!246886 (size!16733 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538524 (= lt!246886 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538525 () Bool)

(declare-fun res!333884 () Bool)

(declare-fun e!312267 () Bool)

(assert (=> b!538525 (=> (not res!333884) (not e!312267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538525 (= res!333884 (validKeyInArray!0 (select (arr!16369 a!3154) j!147)))))

(declare-fun b!538526 () Bool)

(declare-fun e!312266 () Bool)

(declare-fun e!312271 () Bool)

(assert (=> b!538526 (= e!312266 e!312271)))

(declare-fun res!333883 () Bool)

(assert (=> b!538526 (=> (not res!333883) (not e!312271))))

(declare-fun lt!246884 () SeekEntryResult!4834)

(assert (=> b!538526 (= res!333883 (= lt!246884 lt!246883))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!538526 (= lt!246883 (Intermediate!4834 false resIndex!32 resX!32))))

(assert (=> b!538526 (= lt!246884 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16369 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538527 () Bool)

(assert (=> b!538527 (= e!312267 e!312266)))

(declare-fun res!333888 () Bool)

(assert (=> b!538527 (=> (not res!333888) (not e!312266))))

(declare-fun lt!246882 () SeekEntryResult!4834)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538527 (= res!333888 (or (= lt!246882 (MissingZero!4834 i!1153)) (= lt!246882 (MissingVacant!4834 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34068 (_ BitVec 32)) SeekEntryResult!4834)

(assert (=> b!538527 (= lt!246882 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538528 () Bool)

(declare-fun res!333878 () Bool)

(assert (=> b!538528 (=> (not res!333878) (not e!312266))))

(assert (=> b!538528 (= res!333878 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16733 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16733 a!3154)) (= (select (arr!16369 a!3154) resIndex!32) (select (arr!16369 a!3154) j!147))))))

(declare-fun b!538529 () Bool)

(declare-fun res!333889 () Bool)

(assert (=> b!538529 (=> (not res!333889) (not e!312266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34068 (_ BitVec 32)) Bool)

(assert (=> b!538529 (= res!333889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538530 () Bool)

(declare-fun res!333880 () Bool)

(assert (=> b!538530 (=> (not res!333880) (not e!312267))))

(declare-fun arrayContainsKey!0 (array!34068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538530 (= res!333880 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538531 () Bool)

(declare-fun res!333887 () Bool)

(assert (=> b!538531 (=> (not res!333887) (not e!312267))))

(assert (=> b!538531 (= res!333887 (validKeyInArray!0 k0!1998))))

(declare-fun res!333885 () Bool)

(assert (=> start!48900 (=> (not res!333885) (not e!312267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48900 (= res!333885 (validMask!0 mask!3216))))

(assert (=> start!48900 e!312267))

(assert (=> start!48900 true))

(declare-fun array_inv!12143 (array!34068) Bool)

(assert (=> start!48900 (array_inv!12143 a!3154)))

(declare-fun b!538532 () Bool)

(assert (=> b!538532 (= e!312265 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110))))))

(assert (=> b!538532 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246886 (select (store (arr!16369 a!3154) i!1153 k0!1998) j!147) (array!34069 (store (arr!16369 a!3154) i!1153 k0!1998) (size!16733 a!3154)) mask!3216) lt!246883)))

(declare-datatypes ((Unit!16846 0))(
  ( (Unit!16847) )
))
(declare-fun lt!246881 () Unit!16846)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34068 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16846)

(assert (=> b!538532 (= lt!246881 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246886 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538533 () Bool)

(assert (=> b!538533 (= e!312271 e!312270)))

(declare-fun res!333886 () Bool)

(assert (=> b!538533 (=> (not res!333886) (not e!312270))))

(assert (=> b!538533 (= res!333886 (and (= lt!246887 lt!246884) (not (= (select (arr!16369 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16369 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16369 a!3154) index!1177) (select (arr!16369 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538533 (= lt!246887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16369 a!3154) j!147) mask!3216) (select (arr!16369 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538534 () Bool)

(declare-fun res!333879 () Bool)

(assert (=> b!538534 (=> (not res!333879) (not e!312266))))

(declare-datatypes ((List!10541 0))(
  ( (Nil!10538) (Cons!10537 (h!11480 (_ BitVec 64)) (t!16777 List!10541)) )
))
(declare-fun arrayNoDuplicates!0 (array!34068 (_ BitVec 32) List!10541) Bool)

(assert (=> b!538534 (= res!333879 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10538))))

(declare-fun b!538535 () Bool)

(declare-fun res!333881 () Bool)

(assert (=> b!538535 (=> (not res!333881) (not e!312267))))

(assert (=> b!538535 (= res!333881 (and (= (size!16733 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16733 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16733 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48900 res!333885) b!538535))

(assert (= (and b!538535 res!333881) b!538525))

(assert (= (and b!538525 res!333884) b!538531))

(assert (= (and b!538531 res!333887) b!538530))

(assert (= (and b!538530 res!333880) b!538527))

(assert (= (and b!538527 res!333888) b!538529))

(assert (= (and b!538529 res!333889) b!538534))

(assert (= (and b!538534 res!333879) b!538528))

(assert (= (and b!538528 res!333878) b!538526))

(assert (= (and b!538526 res!333883) b!538533))

(assert (= (and b!538533 res!333886) b!538524))

(assert (= (and b!538524 res!333890) b!538523))

(assert (= (and b!538523 res!333882) b!538532))

(declare-fun m!517667 () Bool)

(assert (=> b!538530 m!517667))

(declare-fun m!517669 () Bool)

(assert (=> start!48900 m!517669))

(declare-fun m!517671 () Bool)

(assert (=> start!48900 m!517671))

(declare-fun m!517673 () Bool)

(assert (=> b!538528 m!517673))

(declare-fun m!517675 () Bool)

(assert (=> b!538528 m!517675))

(assert (=> b!538526 m!517675))

(assert (=> b!538526 m!517675))

(declare-fun m!517677 () Bool)

(assert (=> b!538526 m!517677))

(declare-fun m!517679 () Bool)

(assert (=> b!538534 m!517679))

(declare-fun m!517681 () Bool)

(assert (=> b!538531 m!517681))

(assert (=> b!538523 m!517675))

(assert (=> b!538523 m!517675))

(declare-fun m!517683 () Bool)

(assert (=> b!538523 m!517683))

(declare-fun m!517685 () Bool)

(assert (=> b!538533 m!517685))

(assert (=> b!538533 m!517675))

(assert (=> b!538533 m!517675))

(declare-fun m!517687 () Bool)

(assert (=> b!538533 m!517687))

(assert (=> b!538533 m!517687))

(assert (=> b!538533 m!517675))

(declare-fun m!517689 () Bool)

(assert (=> b!538533 m!517689))

(declare-fun m!517691 () Bool)

(assert (=> b!538524 m!517691))

(declare-fun m!517693 () Bool)

(assert (=> b!538532 m!517693))

(declare-fun m!517695 () Bool)

(assert (=> b!538532 m!517695))

(assert (=> b!538532 m!517695))

(declare-fun m!517697 () Bool)

(assert (=> b!538532 m!517697))

(declare-fun m!517699 () Bool)

(assert (=> b!538532 m!517699))

(assert (=> b!538525 m!517675))

(assert (=> b!538525 m!517675))

(declare-fun m!517701 () Bool)

(assert (=> b!538525 m!517701))

(declare-fun m!517703 () Bool)

(assert (=> b!538527 m!517703))

(declare-fun m!517705 () Bool)

(assert (=> b!538529 m!517705))

(check-sat (not start!48900) (not b!538530) (not b!538526) (not b!538533) (not b!538531) (not b!538523) (not b!538525) (not b!538534) (not b!538524) (not b!538532) (not b!538527) (not b!538529))
(check-sat)
