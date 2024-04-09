; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48898 () Bool)

(assert start!48898)

(declare-fun b!538484 () Bool)

(declare-fun e!312248 () Bool)

(declare-fun e!312244 () Bool)

(assert (=> b!538484 (= e!312248 e!312244)))

(declare-fun res!333845 () Bool)

(assert (=> b!538484 (=> (not res!333845) (not e!312244))))

(declare-datatypes ((SeekEntryResult!4833 0))(
  ( (MissingZero!4833 (index!21556 (_ BitVec 32))) (Found!4833 (index!21557 (_ BitVec 32))) (Intermediate!4833 (undefined!5645 Bool) (index!21558 (_ BitVec 32)) (x!50507 (_ BitVec 32))) (Undefined!4833) (MissingVacant!4833 (index!21559 (_ BitVec 32))) )
))
(declare-fun lt!246866 () SeekEntryResult!4833)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538484 (= res!333845 (or (= lt!246866 (MissingZero!4833 i!1153)) (= lt!246866 (MissingVacant!4833 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!34066 0))(
  ( (array!34067 (arr!16368 (Array (_ BitVec 32) (_ BitVec 64))) (size!16732 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34066)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34066 (_ BitVec 32)) SeekEntryResult!4833)

(assert (=> b!538484 (= lt!246866 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538485 () Bool)

(declare-fun res!333848 () Bool)

(assert (=> b!538485 (=> (not res!333848) (not e!312244))))

(declare-datatypes ((List!10540 0))(
  ( (Nil!10537) (Cons!10536 (h!11479 (_ BitVec 64)) (t!16776 List!10540)) )
))
(declare-fun arrayNoDuplicates!0 (array!34066 (_ BitVec 32) List!10540) Bool)

(assert (=> b!538485 (= res!333848 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10537))))

(declare-fun b!538486 () Bool)

(declare-fun res!333851 () Bool)

(assert (=> b!538486 (=> (not res!333851) (not e!312248))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538486 (= res!333851 (validKeyInArray!0 (select (arr!16368 a!3154) j!147)))))

(declare-fun b!538487 () Bool)

(declare-fun res!333842 () Bool)

(assert (=> b!538487 (=> (not res!333842) (not e!312248))))

(assert (=> b!538487 (= res!333842 (validKeyInArray!0 k!1998))))

(declare-fun res!333844 () Bool)

(assert (=> start!48898 (=> (not res!333844) (not e!312248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48898 (= res!333844 (validMask!0 mask!3216))))

(assert (=> start!48898 e!312248))

(assert (=> start!48898 true))

(declare-fun array_inv!12142 (array!34066) Bool)

(assert (=> start!48898 (array_inv!12142 a!3154)))

(declare-fun b!538488 () Bool)

(declare-fun e!312250 () Bool)

(declare-fun e!312247 () Bool)

(assert (=> b!538488 (= e!312250 e!312247)))

(declare-fun res!333839 () Bool)

(assert (=> b!538488 (=> (not res!333839) (not e!312247))))

(declare-fun lt!246862 () SeekEntryResult!4833)

(declare-fun lt!246865 () SeekEntryResult!4833)

(declare-fun lt!246860 () SeekEntryResult!4833)

(assert (=> b!538488 (= res!333839 (and (= lt!246862 lt!246860) (= lt!246865 lt!246862)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246863 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34066 (_ BitVec 32)) SeekEntryResult!4833)

(assert (=> b!538488 (= lt!246862 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246863 (select (arr!16368 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538489 () Bool)

(declare-fun e!312246 () Bool)

(assert (=> b!538489 (= e!312246 e!312250)))

(declare-fun res!333846 () Bool)

(assert (=> b!538489 (=> (not res!333846) (not e!312250))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538489 (= res!333846 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246863 #b00000000000000000000000000000000) (bvslt lt!246863 (size!16732 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538489 (= lt!246863 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538490 () Bool)

(declare-fun res!333849 () Bool)

(assert (=> b!538490 (=> (not res!333849) (not e!312248))))

(assert (=> b!538490 (= res!333849 (and (= (size!16732 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16732 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16732 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538491 () Bool)

(declare-fun e!312245 () Bool)

(assert (=> b!538491 (= e!312244 e!312245)))

(declare-fun res!333840 () Bool)

(assert (=> b!538491 (=> (not res!333840) (not e!312245))))

(declare-fun lt!246864 () SeekEntryResult!4833)

(assert (=> b!538491 (= res!333840 (= lt!246864 lt!246860))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!538491 (= lt!246860 (Intermediate!4833 false resIndex!32 resX!32))))

(assert (=> b!538491 (= lt!246864 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16368 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538492 () Bool)

(declare-fun res!333850 () Bool)

(assert (=> b!538492 (=> (not res!333850) (not e!312244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34066 (_ BitVec 32)) Bool)

(assert (=> b!538492 (= res!333850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538493 () Bool)

(declare-fun res!333843 () Bool)

(assert (=> b!538493 (=> (not res!333843) (not e!312248))))

(declare-fun arrayContainsKey!0 (array!34066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538493 (= res!333843 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538494 () Bool)

(assert (=> b!538494 (= e!312247 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110))))))

(assert (=> b!538494 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246863 (select (store (arr!16368 a!3154) i!1153 k!1998) j!147) (array!34067 (store (arr!16368 a!3154) i!1153 k!1998) (size!16732 a!3154)) mask!3216) lt!246860)))

(declare-datatypes ((Unit!16844 0))(
  ( (Unit!16845) )
))
(declare-fun lt!246861 () Unit!16844)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34066 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16844)

(assert (=> b!538494 (= lt!246861 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246863 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538495 () Bool)

(declare-fun res!333841 () Bool)

(assert (=> b!538495 (=> (not res!333841) (not e!312244))))

(assert (=> b!538495 (= res!333841 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16732 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16732 a!3154)) (= (select (arr!16368 a!3154) resIndex!32) (select (arr!16368 a!3154) j!147))))))

(declare-fun b!538496 () Bool)

(assert (=> b!538496 (= e!312245 e!312246)))

(declare-fun res!333847 () Bool)

(assert (=> b!538496 (=> (not res!333847) (not e!312246))))

(assert (=> b!538496 (= res!333847 (and (= lt!246865 lt!246864) (not (= (select (arr!16368 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16368 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16368 a!3154) index!1177) (select (arr!16368 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538496 (= lt!246865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16368 a!3154) j!147) mask!3216) (select (arr!16368 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48898 res!333844) b!538490))

(assert (= (and b!538490 res!333849) b!538486))

(assert (= (and b!538486 res!333851) b!538487))

(assert (= (and b!538487 res!333842) b!538493))

(assert (= (and b!538493 res!333843) b!538484))

(assert (= (and b!538484 res!333845) b!538492))

(assert (= (and b!538492 res!333850) b!538485))

(assert (= (and b!538485 res!333848) b!538495))

(assert (= (and b!538495 res!333841) b!538491))

(assert (= (and b!538491 res!333840) b!538496))

(assert (= (and b!538496 res!333847) b!538489))

(assert (= (and b!538489 res!333846) b!538488))

(assert (= (and b!538488 res!333839) b!538494))

(declare-fun m!517627 () Bool)

(assert (=> b!538495 m!517627))

(declare-fun m!517629 () Bool)

(assert (=> b!538495 m!517629))

(assert (=> b!538486 m!517629))

(assert (=> b!538486 m!517629))

(declare-fun m!517631 () Bool)

(assert (=> b!538486 m!517631))

(declare-fun m!517633 () Bool)

(assert (=> b!538487 m!517633))

(declare-fun m!517635 () Bool)

(assert (=> start!48898 m!517635))

(declare-fun m!517637 () Bool)

(assert (=> start!48898 m!517637))

(declare-fun m!517639 () Bool)

(assert (=> b!538492 m!517639))

(assert (=> b!538491 m!517629))

(assert (=> b!538491 m!517629))

(declare-fun m!517641 () Bool)

(assert (=> b!538491 m!517641))

(declare-fun m!517643 () Bool)

(assert (=> b!538484 m!517643))

(declare-fun m!517645 () Bool)

(assert (=> b!538493 m!517645))

(declare-fun m!517647 () Bool)

(assert (=> b!538494 m!517647))

(declare-fun m!517649 () Bool)

(assert (=> b!538494 m!517649))

(assert (=> b!538494 m!517649))

(declare-fun m!517651 () Bool)

(assert (=> b!538494 m!517651))

(declare-fun m!517653 () Bool)

(assert (=> b!538494 m!517653))

(declare-fun m!517655 () Bool)

(assert (=> b!538496 m!517655))

(assert (=> b!538496 m!517629))

(assert (=> b!538496 m!517629))

(declare-fun m!517657 () Bool)

(assert (=> b!538496 m!517657))

(assert (=> b!538496 m!517657))

(assert (=> b!538496 m!517629))

(declare-fun m!517659 () Bool)

(assert (=> b!538496 m!517659))

(declare-fun m!517661 () Bool)

(assert (=> b!538489 m!517661))

(declare-fun m!517663 () Bool)

(assert (=> b!538485 m!517663))

(assert (=> b!538488 m!517629))

(assert (=> b!538488 m!517629))

(declare-fun m!517665 () Bool)

(assert (=> b!538488 m!517665))

(push 1)

