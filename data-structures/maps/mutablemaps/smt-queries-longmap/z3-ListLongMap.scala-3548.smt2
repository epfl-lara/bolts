; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48876 () Bool)

(assert start!48876)

(declare-fun b!538055 () Bool)

(declare-fun res!333420 () Bool)

(declare-fun e!312018 () Bool)

(assert (=> b!538055 (=> (not res!333420) (not e!312018))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((array!34044 0))(
  ( (array!34045 (arr!16357 (Array (_ BitVec 32) (_ BitVec 64))) (size!16721 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34044)

(assert (=> b!538055 (= res!333420 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16721 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16721 a!3154)) (= (select (arr!16357 a!3154) resIndex!32) (select (arr!16357 a!3154) j!147))))))

(declare-fun b!538056 () Bool)

(declare-fun e!312017 () Bool)

(declare-fun e!312014 () Bool)

(assert (=> b!538056 (= e!312017 e!312014)))

(declare-fun res!333419 () Bool)

(assert (=> b!538056 (=> (not res!333419) (not e!312014))))

(declare-fun lt!246632 () (_ BitVec 32))

(assert (=> b!538056 (= res!333419 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246632 #b00000000000000000000000000000000) (bvslt lt!246632 (size!16721 a!3154))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538056 (= lt!246632 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538057 () Bool)

(declare-fun res!333422 () Bool)

(declare-fun e!312015 () Bool)

(assert (=> b!538057 (=> (not res!333422) (not e!312015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538057 (= res!333422 (validKeyInArray!0 (select (arr!16357 a!3154) j!147)))))

(declare-fun b!538058 () Bool)

(declare-fun res!333421 () Bool)

(assert (=> b!538058 (=> (not res!333421) (not e!312018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34044 (_ BitVec 32)) Bool)

(assert (=> b!538058 (= res!333421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538059 () Bool)

(declare-fun e!312019 () Bool)

(assert (=> b!538059 (= e!312019 e!312017)))

(declare-fun res!333416 () Bool)

(assert (=> b!538059 (=> (not res!333416) (not e!312017))))

(declare-datatypes ((SeekEntryResult!4822 0))(
  ( (MissingZero!4822 (index!21512 (_ BitVec 32))) (Found!4822 (index!21513 (_ BitVec 32))) (Intermediate!4822 (undefined!5634 Bool) (index!21514 (_ BitVec 32)) (x!50464 (_ BitVec 32))) (Undefined!4822) (MissingVacant!4822 (index!21515 (_ BitVec 32))) )
))
(declare-fun lt!246633 () SeekEntryResult!4822)

(declare-fun lt!246634 () SeekEntryResult!4822)

(assert (=> b!538059 (= res!333416 (and (= lt!246633 lt!246634) (not (= (select (arr!16357 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16357 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16357 a!3154) index!1177) (select (arr!16357 a!3154) j!147)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34044 (_ BitVec 32)) SeekEntryResult!4822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538059 (= lt!246633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16357 a!3154) j!147) mask!3216) (select (arr!16357 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538060 () Bool)

(declare-fun res!333411 () Bool)

(assert (=> b!538060 (=> (not res!333411) (not e!312015))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538060 (= res!333411 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538061 () Bool)

(assert (=> b!538061 (= e!312018 e!312019)))

(declare-fun res!333410 () Bool)

(assert (=> b!538061 (=> (not res!333410) (not e!312019))))

(declare-fun lt!246631 () SeekEntryResult!4822)

(assert (=> b!538061 (= res!333410 (= lt!246634 lt!246631))))

(assert (=> b!538061 (= lt!246631 (Intermediate!4822 false resIndex!32 resX!32))))

(assert (=> b!538061 (= lt!246634 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16357 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538062 () Bool)

(assert (=> b!538062 (= e!312015 e!312018)))

(declare-fun res!333415 () Bool)

(assert (=> b!538062 (=> (not res!333415) (not e!312018))))

(declare-fun lt!246630 () SeekEntryResult!4822)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538062 (= res!333415 (or (= lt!246630 (MissingZero!4822 i!1153)) (= lt!246630 (MissingVacant!4822 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34044 (_ BitVec 32)) SeekEntryResult!4822)

(assert (=> b!538062 (= lt!246630 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538063 () Bool)

(declare-fun e!312016 () Bool)

(assert (=> b!538063 (= e!312016 (not true))))

(assert (=> b!538063 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246632 (select (store (arr!16357 a!3154) i!1153 k0!1998) j!147) (array!34045 (store (arr!16357 a!3154) i!1153 k0!1998) (size!16721 a!3154)) mask!3216) lt!246631)))

(declare-datatypes ((Unit!16822 0))(
  ( (Unit!16823) )
))
(declare-fun lt!246629 () Unit!16822)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34044 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16822)

(assert (=> b!538063 (= lt!246629 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246632 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538064 () Bool)

(declare-fun res!333412 () Bool)

(assert (=> b!538064 (=> (not res!333412) (not e!312018))))

(declare-datatypes ((List!10529 0))(
  ( (Nil!10526) (Cons!10525 (h!11468 (_ BitVec 64)) (t!16765 List!10529)) )
))
(declare-fun arrayNoDuplicates!0 (array!34044 (_ BitVec 32) List!10529) Bool)

(assert (=> b!538064 (= res!333412 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10526))))

(declare-fun b!538066 () Bool)

(declare-fun res!333414 () Bool)

(assert (=> b!538066 (=> (not res!333414) (not e!312015))))

(assert (=> b!538066 (= res!333414 (and (= (size!16721 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16721 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16721 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538067 () Bool)

(assert (=> b!538067 (= e!312014 e!312016)))

(declare-fun res!333418 () Bool)

(assert (=> b!538067 (=> (not res!333418) (not e!312016))))

(declare-fun lt!246635 () SeekEntryResult!4822)

(assert (=> b!538067 (= res!333418 (and (= lt!246635 lt!246631) (= lt!246633 lt!246635)))))

(assert (=> b!538067 (= lt!246635 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246632 (select (arr!16357 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538065 () Bool)

(declare-fun res!333413 () Bool)

(assert (=> b!538065 (=> (not res!333413) (not e!312015))))

(assert (=> b!538065 (= res!333413 (validKeyInArray!0 k0!1998))))

(declare-fun res!333417 () Bool)

(assert (=> start!48876 (=> (not res!333417) (not e!312015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48876 (= res!333417 (validMask!0 mask!3216))))

(assert (=> start!48876 e!312015))

(assert (=> start!48876 true))

(declare-fun array_inv!12131 (array!34044) Bool)

(assert (=> start!48876 (array_inv!12131 a!3154)))

(assert (= (and start!48876 res!333417) b!538066))

(assert (= (and b!538066 res!333414) b!538057))

(assert (= (and b!538057 res!333422) b!538065))

(assert (= (and b!538065 res!333413) b!538060))

(assert (= (and b!538060 res!333411) b!538062))

(assert (= (and b!538062 res!333415) b!538058))

(assert (= (and b!538058 res!333421) b!538064))

(assert (= (and b!538064 res!333412) b!538055))

(assert (= (and b!538055 res!333420) b!538061))

(assert (= (and b!538061 res!333410) b!538059))

(assert (= (and b!538059 res!333416) b!538056))

(assert (= (and b!538056 res!333419) b!538067))

(assert (= (and b!538067 res!333418) b!538063))

(declare-fun m!517187 () Bool)

(assert (=> b!538057 m!517187))

(assert (=> b!538057 m!517187))

(declare-fun m!517189 () Bool)

(assert (=> b!538057 m!517189))

(declare-fun m!517191 () Bool)

(assert (=> b!538063 m!517191))

(declare-fun m!517193 () Bool)

(assert (=> b!538063 m!517193))

(assert (=> b!538063 m!517193))

(declare-fun m!517195 () Bool)

(assert (=> b!538063 m!517195))

(declare-fun m!517197 () Bool)

(assert (=> b!538063 m!517197))

(declare-fun m!517199 () Bool)

(assert (=> b!538059 m!517199))

(assert (=> b!538059 m!517187))

(assert (=> b!538059 m!517187))

(declare-fun m!517201 () Bool)

(assert (=> b!538059 m!517201))

(assert (=> b!538059 m!517201))

(assert (=> b!538059 m!517187))

(declare-fun m!517203 () Bool)

(assert (=> b!538059 m!517203))

(declare-fun m!517205 () Bool)

(assert (=> b!538055 m!517205))

(assert (=> b!538055 m!517187))

(declare-fun m!517207 () Bool)

(assert (=> b!538062 m!517207))

(assert (=> b!538061 m!517187))

(assert (=> b!538061 m!517187))

(declare-fun m!517209 () Bool)

(assert (=> b!538061 m!517209))

(declare-fun m!517211 () Bool)

(assert (=> b!538065 m!517211))

(declare-fun m!517213 () Bool)

(assert (=> b!538064 m!517213))

(assert (=> b!538067 m!517187))

(assert (=> b!538067 m!517187))

(declare-fun m!517215 () Bool)

(assert (=> b!538067 m!517215))

(declare-fun m!517217 () Bool)

(assert (=> b!538058 m!517217))

(declare-fun m!517219 () Bool)

(assert (=> start!48876 m!517219))

(declare-fun m!517221 () Bool)

(assert (=> start!48876 m!517221))

(declare-fun m!517223 () Bool)

(assert (=> b!538060 m!517223))

(declare-fun m!517225 () Bool)

(assert (=> b!538056 m!517225))

(check-sat (not b!538057) (not b!538067) (not b!538063) (not start!48876) (not b!538058) (not b!538056) (not b!538059) (not b!538061) (not b!538065) (not b!538060) (not b!538062) (not b!538064))
(check-sat)
