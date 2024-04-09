; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48802 () Bool)

(assert start!48802)

(declare-fun b!536612 () Bool)

(declare-fun res!331976 () Bool)

(declare-fun e!311451 () Bool)

(assert (=> b!536612 (=> (not res!331976) (not e!311451))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33970 0))(
  ( (array!33971 (arr!16320 (Array (_ BitVec 32) (_ BitVec 64))) (size!16684 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33970)

(assert (=> b!536612 (= res!331976 (and (not (= (select (arr!16320 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16320 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16320 a!3154) index!1177) (select (arr!16320 a!3154) j!147)))))))

(declare-fun b!536613 () Bool)

(declare-fun res!331967 () Bool)

(declare-fun e!311452 () Bool)

(assert (=> b!536613 (=> (not res!331967) (not e!311452))))

(declare-datatypes ((List!10492 0))(
  ( (Nil!10489) (Cons!10488 (h!11431 (_ BitVec 64)) (t!16728 List!10492)) )
))
(declare-fun arrayNoDuplicates!0 (array!33970 (_ BitVec 32) List!10492) Bool)

(assert (=> b!536613 (= res!331967 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10489))))

(declare-fun b!536614 () Bool)

(declare-fun res!331978 () Bool)

(declare-fun e!311449 () Bool)

(assert (=> b!536614 (=> (not res!331978) (not e!311449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536614 (= res!331978 (validKeyInArray!0 (select (arr!16320 a!3154) j!147)))))

(declare-fun b!536615 () Bool)

(assert (=> b!536615 (= e!311452 e!311451)))

(declare-fun res!331969 () Bool)

(assert (=> b!536615 (=> (not res!331969) (not e!311451))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4785 0))(
  ( (MissingZero!4785 (index!21364 (_ BitVec 32))) (Found!4785 (index!21365 (_ BitVec 32))) (Intermediate!4785 (undefined!5597 Bool) (index!21366 (_ BitVec 32)) (x!50331 (_ BitVec 32))) (Undefined!4785) (MissingVacant!4785 (index!21367 (_ BitVec 32))) )
))
(declare-fun lt!246173 () SeekEntryResult!4785)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536615 (= res!331969 (= lt!246173 (Intermediate!4785 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33970 (_ BitVec 32)) SeekEntryResult!4785)

(assert (=> b!536615 (= lt!246173 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16320 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536616 () Bool)

(declare-fun res!331979 () Bool)

(assert (=> b!536616 (=> (not res!331979) (not e!311452))))

(assert (=> b!536616 (= res!331979 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16684 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16684 a!3154)) (= (select (arr!16320 a!3154) resIndex!32) (select (arr!16320 a!3154) j!147))))))

(declare-fun res!331970 () Bool)

(assert (=> start!48802 (=> (not res!331970) (not e!311449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48802 (= res!331970 (validMask!0 mask!3216))))

(assert (=> start!48802 e!311449))

(assert (=> start!48802 true))

(declare-fun array_inv!12094 (array!33970) Bool)

(assert (=> start!48802 (array_inv!12094 a!3154)))

(declare-fun b!536617 () Bool)

(declare-fun res!331971 () Bool)

(assert (=> b!536617 (=> (not res!331971) (not e!311449))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!536617 (= res!331971 (validKeyInArray!0 k!1998))))

(declare-fun b!536618 () Bool)

(declare-fun res!331977 () Bool)

(assert (=> b!536618 (=> (not res!331977) (not e!311449))))

(declare-fun arrayContainsKey!0 (array!33970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536618 (= res!331977 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536619 () Bool)

(declare-fun res!331975 () Bool)

(assert (=> b!536619 (=> (not res!331975) (not e!311451))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536619 (= res!331975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16320 a!3154) j!147) mask!3216) (select (arr!16320 a!3154) j!147) a!3154 mask!3216) lt!246173))))

(declare-fun b!536620 () Bool)

(declare-fun res!331968 () Bool)

(assert (=> b!536620 (=> (not res!331968) (not e!311449))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536620 (= res!331968 (and (= (size!16684 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16684 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16684 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536621 () Bool)

(declare-fun res!331972 () Bool)

(assert (=> b!536621 (=> (not res!331972) (not e!311452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33970 (_ BitVec 32)) Bool)

(assert (=> b!536621 (= res!331972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536622 () Bool)

(declare-fun e!311450 () Bool)

(assert (=> b!536622 (= e!311451 e!311450)))

(declare-fun res!331974 () Bool)

(assert (=> b!536622 (=> (not res!331974) (not e!311450))))

(declare-fun lt!246171 () (_ BitVec 32))

(assert (=> b!536622 (= res!331974 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246171 #b00000000000000000000000000000000) (bvslt lt!246171 (size!16684 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536622 (= lt!246171 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536623 () Bool)

(assert (=> b!536623 (= e!311449 e!311452)))

(declare-fun res!331973 () Bool)

(assert (=> b!536623 (=> (not res!331973) (not e!311452))))

(declare-fun lt!246172 () SeekEntryResult!4785)

(assert (=> b!536623 (= res!331973 (or (= lt!246172 (MissingZero!4785 i!1153)) (= lt!246172 (MissingVacant!4785 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33970 (_ BitVec 32)) SeekEntryResult!4785)

(assert (=> b!536623 (= lt!246172 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536624 () Bool)

(assert (=> b!536624 (= e!311450 false)))

(declare-fun lt!246170 () SeekEntryResult!4785)

(assert (=> b!536624 (= lt!246170 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246171 (select (arr!16320 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48802 res!331970) b!536620))

(assert (= (and b!536620 res!331968) b!536614))

(assert (= (and b!536614 res!331978) b!536617))

(assert (= (and b!536617 res!331971) b!536618))

(assert (= (and b!536618 res!331977) b!536623))

(assert (= (and b!536623 res!331973) b!536621))

(assert (= (and b!536621 res!331972) b!536613))

(assert (= (and b!536613 res!331967) b!536616))

(assert (= (and b!536616 res!331979) b!536615))

(assert (= (and b!536615 res!331969) b!536619))

(assert (= (and b!536619 res!331975) b!536612))

(assert (= (and b!536612 res!331976) b!536622))

(assert (= (and b!536622 res!331974) b!536624))

(declare-fun m!515995 () Bool)

(assert (=> b!536622 m!515995))

(declare-fun m!515997 () Bool)

(assert (=> b!536614 m!515997))

(assert (=> b!536614 m!515997))

(declare-fun m!515999 () Bool)

(assert (=> b!536614 m!515999))

(declare-fun m!516001 () Bool)

(assert (=> b!536613 m!516001))

(declare-fun m!516003 () Bool)

(assert (=> b!536623 m!516003))

(assert (=> b!536619 m!515997))

(assert (=> b!536619 m!515997))

(declare-fun m!516005 () Bool)

(assert (=> b!536619 m!516005))

(assert (=> b!536619 m!516005))

(assert (=> b!536619 m!515997))

(declare-fun m!516007 () Bool)

(assert (=> b!536619 m!516007))

(declare-fun m!516009 () Bool)

(assert (=> b!536617 m!516009))

(declare-fun m!516011 () Bool)

(assert (=> b!536616 m!516011))

(assert (=> b!536616 m!515997))

(assert (=> b!536615 m!515997))

(assert (=> b!536615 m!515997))

(declare-fun m!516013 () Bool)

(assert (=> b!536615 m!516013))

(declare-fun m!516015 () Bool)

(assert (=> b!536618 m!516015))

(declare-fun m!516017 () Bool)

(assert (=> start!48802 m!516017))

(declare-fun m!516019 () Bool)

(assert (=> start!48802 m!516019))

(declare-fun m!516021 () Bool)

(assert (=> b!536621 m!516021))

(assert (=> b!536624 m!515997))

(assert (=> b!536624 m!515997))

(declare-fun m!516023 () Bool)

(assert (=> b!536624 m!516023))

(declare-fun m!516025 () Bool)

(assert (=> b!536612 m!516025))

(assert (=> b!536612 m!515997))

(push 1)

