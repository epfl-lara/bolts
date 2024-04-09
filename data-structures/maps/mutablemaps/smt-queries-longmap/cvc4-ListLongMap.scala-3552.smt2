; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48902 () Bool)

(assert start!48902)

(declare-fun b!538563 () Bool)

(declare-fun e!312290 () Bool)

(declare-fun e!312291 () Bool)

(assert (=> b!538563 (= e!312290 e!312291)))

(declare-fun res!333917 () Bool)

(assert (=> b!538563 (=> (not res!333917) (not e!312291))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!34070 0))(
  ( (array!34071 (arr!16370 (Array (_ BitVec 32) (_ BitVec 64))) (size!16734 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34070)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!246907 () (_ BitVec 32))

(assert (=> b!538563 (= res!333917 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246907 #b00000000000000000000000000000000) (bvslt lt!246907 (size!16734 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538563 (= lt!246907 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538564 () Bool)

(declare-fun res!333921 () Bool)

(declare-fun e!312286 () Bool)

(assert (=> b!538564 (=> (not res!333921) (not e!312286))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538564 (= res!333921 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16734 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16734 a!3154)) (= (select (arr!16370 a!3154) resIndex!32) (select (arr!16370 a!3154) j!147))))))

(declare-fun b!538565 () Bool)

(declare-fun e!312287 () Bool)

(assert (=> b!538565 (= e!312287 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4835 0))(
  ( (MissingZero!4835 (index!21564 (_ BitVec 32))) (Found!4835 (index!21565 (_ BitVec 32))) (Intermediate!4835 (undefined!5647 Bool) (index!21566 (_ BitVec 32)) (x!50509 (_ BitVec 32))) (Undefined!4835) (MissingVacant!4835 (index!21567 (_ BitVec 32))) )
))
(declare-fun lt!246908 () SeekEntryResult!4835)

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34070 (_ BitVec 32)) SeekEntryResult!4835)

(assert (=> b!538565 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246907 (select (store (arr!16370 a!3154) i!1153 k!1998) j!147) (array!34071 (store (arr!16370 a!3154) i!1153 k!1998) (size!16734 a!3154)) mask!3216) lt!246908)))

(declare-datatypes ((Unit!16848 0))(
  ( (Unit!16849) )
))
(declare-fun lt!246903 () Unit!16848)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34070 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16848)

(assert (=> b!538565 (= lt!246903 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246907 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538566 () Bool)

(assert (=> b!538566 (= e!312291 e!312287)))

(declare-fun res!333926 () Bool)

(assert (=> b!538566 (=> (not res!333926) (not e!312287))))

(declare-fun lt!246905 () SeekEntryResult!4835)

(declare-fun lt!246906 () SeekEntryResult!4835)

(assert (=> b!538566 (= res!333926 (and (= lt!246905 lt!246908) (= lt!246906 lt!246905)))))

(assert (=> b!538566 (= lt!246905 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246907 (select (arr!16370 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538567 () Bool)

(declare-fun e!312292 () Bool)

(assert (=> b!538567 (= e!312286 e!312292)))

(declare-fun res!333918 () Bool)

(assert (=> b!538567 (=> (not res!333918) (not e!312292))))

(declare-fun lt!246904 () SeekEntryResult!4835)

(assert (=> b!538567 (= res!333918 (= lt!246904 lt!246908))))

(assert (=> b!538567 (= lt!246908 (Intermediate!4835 false resIndex!32 resX!32))))

(assert (=> b!538567 (= lt!246904 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16370 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538568 () Bool)

(assert (=> b!538568 (= e!312292 e!312290)))

(declare-fun res!333928 () Bool)

(assert (=> b!538568 (=> (not res!333928) (not e!312290))))

(assert (=> b!538568 (= res!333928 (and (= lt!246906 lt!246904) (not (= (select (arr!16370 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16370 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16370 a!3154) index!1177) (select (arr!16370 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538568 (= lt!246906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16370 a!3154) j!147) mask!3216) (select (arr!16370 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538569 () Bool)

(declare-fun res!333925 () Bool)

(declare-fun e!312289 () Bool)

(assert (=> b!538569 (=> (not res!333925) (not e!312289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538569 (= res!333925 (validKeyInArray!0 k!1998))))

(declare-fun b!538562 () Bool)

(declare-fun res!333929 () Bool)

(assert (=> b!538562 (=> (not res!333929) (not e!312286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34070 (_ BitVec 32)) Bool)

(assert (=> b!538562 (= res!333929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!333919 () Bool)

(assert (=> start!48902 (=> (not res!333919) (not e!312289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48902 (= res!333919 (validMask!0 mask!3216))))

(assert (=> start!48902 e!312289))

(assert (=> start!48902 true))

(declare-fun array_inv!12144 (array!34070) Bool)

(assert (=> start!48902 (array_inv!12144 a!3154)))

(declare-fun b!538570 () Bool)

(declare-fun res!333923 () Bool)

(assert (=> b!538570 (=> (not res!333923) (not e!312289))))

(declare-fun arrayContainsKey!0 (array!34070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538570 (= res!333923 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538571 () Bool)

(declare-fun res!333920 () Bool)

(assert (=> b!538571 (=> (not res!333920) (not e!312286))))

(declare-datatypes ((List!10542 0))(
  ( (Nil!10539) (Cons!10538 (h!11481 (_ BitVec 64)) (t!16778 List!10542)) )
))
(declare-fun arrayNoDuplicates!0 (array!34070 (_ BitVec 32) List!10542) Bool)

(assert (=> b!538571 (= res!333920 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10539))))

(declare-fun b!538572 () Bool)

(declare-fun res!333924 () Bool)

(assert (=> b!538572 (=> (not res!333924) (not e!312289))))

(assert (=> b!538572 (= res!333924 (and (= (size!16734 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16734 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16734 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538573 () Bool)

(assert (=> b!538573 (= e!312289 e!312286)))

(declare-fun res!333922 () Bool)

(assert (=> b!538573 (=> (not res!333922) (not e!312286))))

(declare-fun lt!246902 () SeekEntryResult!4835)

(assert (=> b!538573 (= res!333922 (or (= lt!246902 (MissingZero!4835 i!1153)) (= lt!246902 (MissingVacant!4835 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34070 (_ BitVec 32)) SeekEntryResult!4835)

(assert (=> b!538573 (= lt!246902 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538574 () Bool)

(declare-fun res!333927 () Bool)

(assert (=> b!538574 (=> (not res!333927) (not e!312289))))

(assert (=> b!538574 (= res!333927 (validKeyInArray!0 (select (arr!16370 a!3154) j!147)))))

(assert (= (and start!48902 res!333919) b!538572))

(assert (= (and b!538572 res!333924) b!538574))

(assert (= (and b!538574 res!333927) b!538569))

(assert (= (and b!538569 res!333925) b!538570))

(assert (= (and b!538570 res!333923) b!538573))

(assert (= (and b!538573 res!333922) b!538562))

(assert (= (and b!538562 res!333929) b!538571))

(assert (= (and b!538571 res!333920) b!538564))

(assert (= (and b!538564 res!333921) b!538567))

(assert (= (and b!538567 res!333918) b!538568))

(assert (= (and b!538568 res!333928) b!538563))

(assert (= (and b!538563 res!333917) b!538566))

(assert (= (and b!538566 res!333926) b!538565))

(declare-fun m!517707 () Bool)

(assert (=> start!48902 m!517707))

(declare-fun m!517709 () Bool)

(assert (=> start!48902 m!517709))

(declare-fun m!517711 () Bool)

(assert (=> b!538562 m!517711))

(declare-fun m!517713 () Bool)

(assert (=> b!538574 m!517713))

(assert (=> b!538574 m!517713))

(declare-fun m!517715 () Bool)

(assert (=> b!538574 m!517715))

(assert (=> b!538567 m!517713))

(assert (=> b!538567 m!517713))

(declare-fun m!517717 () Bool)

(assert (=> b!538567 m!517717))

(declare-fun m!517719 () Bool)

(assert (=> b!538570 m!517719))

(declare-fun m!517721 () Bool)

(assert (=> b!538568 m!517721))

(assert (=> b!538568 m!517713))

(assert (=> b!538568 m!517713))

(declare-fun m!517723 () Bool)

(assert (=> b!538568 m!517723))

(assert (=> b!538568 m!517723))

(assert (=> b!538568 m!517713))

(declare-fun m!517725 () Bool)

(assert (=> b!538568 m!517725))

(declare-fun m!517727 () Bool)

(assert (=> b!538569 m!517727))

(declare-fun m!517729 () Bool)

(assert (=> b!538564 m!517729))

(assert (=> b!538564 m!517713))

(assert (=> b!538566 m!517713))

(assert (=> b!538566 m!517713))

(declare-fun m!517731 () Bool)

(assert (=> b!538566 m!517731))

(declare-fun m!517733 () Bool)

(assert (=> b!538571 m!517733))

(declare-fun m!517735 () Bool)

(assert (=> b!538573 m!517735))

(declare-fun m!517737 () Bool)

(assert (=> b!538565 m!517737))

(declare-fun m!517739 () Bool)

(assert (=> b!538565 m!517739))

(assert (=> b!538565 m!517739))

(declare-fun m!517741 () Bool)

(assert (=> b!538565 m!517741))

(declare-fun m!517743 () Bool)

(assert (=> b!538565 m!517743))

(declare-fun m!517745 () Bool)

(assert (=> b!538563 m!517745))

(push 1)

(assert (not b!538574))

(assert (not b!538563))

(assert (not b!538571))

