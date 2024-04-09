; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48778 () Bool)

(assert start!48778)

(declare-fun b!536144 () Bool)

(declare-fun res!331499 () Bool)

(declare-fun e!311269 () Bool)

(assert (=> b!536144 (=> (not res!331499) (not e!311269))))

(declare-datatypes ((array!33946 0))(
  ( (array!33947 (arr!16308 (Array (_ BitVec 32) (_ BitVec 64))) (size!16672 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33946)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33946 (_ BitVec 32)) Bool)

(assert (=> b!536144 (= res!331499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536145 () Bool)

(declare-fun res!331504 () Bool)

(declare-fun e!311272 () Bool)

(assert (=> b!536145 (=> (not res!331504) (not e!311272))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536145 (= res!331504 (validKeyInArray!0 (select (arr!16308 a!3154) j!147)))))

(declare-fun b!536146 () Bool)

(declare-fun res!331506 () Bool)

(assert (=> b!536146 (=> (not res!331506) (not e!311269))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536146 (= res!331506 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16672 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16672 a!3154)) (= (select (arr!16308 a!3154) resIndex!32) (select (arr!16308 a!3154) j!147))))))

(declare-fun b!536147 () Bool)

(declare-fun res!331509 () Bool)

(assert (=> b!536147 (=> (not res!331509) (not e!311272))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!536147 (= res!331509 (validKeyInArray!0 k!1998))))

(declare-fun b!536148 () Bool)

(declare-fun res!331502 () Bool)

(assert (=> b!536148 (=> (not res!331502) (not e!311272))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536148 (= res!331502 (and (= (size!16672 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16672 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16672 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536149 () Bool)

(declare-fun res!331503 () Bool)

(assert (=> b!536149 (=> (not res!331503) (not e!311269))))

(declare-datatypes ((List!10480 0))(
  ( (Nil!10477) (Cons!10476 (h!11419 (_ BitVec 64)) (t!16716 List!10480)) )
))
(declare-fun arrayNoDuplicates!0 (array!33946 (_ BitVec 32) List!10480) Bool)

(assert (=> b!536149 (= res!331503 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10477))))

(declare-fun b!536150 () Bool)

(declare-fun e!311270 () Bool)

(assert (=> b!536150 (= e!311269 e!311270)))

(declare-fun res!331511 () Bool)

(assert (=> b!536150 (=> (not res!331511) (not e!311270))))

(declare-datatypes ((SeekEntryResult!4773 0))(
  ( (MissingZero!4773 (index!21316 (_ BitVec 32))) (Found!4773 (index!21317 (_ BitVec 32))) (Intermediate!4773 (undefined!5585 Bool) (index!21318 (_ BitVec 32)) (x!50287 (_ BitVec 32))) (Undefined!4773) (MissingVacant!4773 (index!21319 (_ BitVec 32))) )
))
(declare-fun lt!246028 () SeekEntryResult!4773)

(assert (=> b!536150 (= res!331511 (= lt!246028 (Intermediate!4773 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33946 (_ BitVec 32)) SeekEntryResult!4773)

(assert (=> b!536150 (= lt!246028 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16308 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331507 () Bool)

(assert (=> start!48778 (=> (not res!331507) (not e!311272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48778 (= res!331507 (validMask!0 mask!3216))))

(assert (=> start!48778 e!311272))

(assert (=> start!48778 true))

(declare-fun array_inv!12082 (array!33946) Bool)

(assert (=> start!48778 (array_inv!12082 a!3154)))

(declare-fun b!536151 () Bool)

(declare-fun res!331510 () Bool)

(assert (=> b!536151 (=> (not res!331510) (not e!311270))))

(assert (=> b!536151 (= res!331510 (and (not (= (select (arr!16308 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16308 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16308 a!3154) index!1177) (select (arr!16308 a!3154) j!147)))))))

(declare-fun b!536152 () Bool)

(declare-fun res!331500 () Bool)

(assert (=> b!536152 (=> (not res!331500) (not e!311270))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536152 (= res!331500 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16308 a!3154) j!147) mask!3216) (select (arr!16308 a!3154) j!147) a!3154 mask!3216) lt!246028))))

(declare-fun b!536153 () Bool)

(declare-fun res!331505 () Bool)

(assert (=> b!536153 (=> (not res!331505) (not e!311272))))

(declare-fun arrayContainsKey!0 (array!33946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536153 (= res!331505 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536154 () Bool)

(declare-fun e!311271 () Bool)

(assert (=> b!536154 (= e!311271 false)))

(declare-fun lt!246027 () (_ BitVec 32))

(declare-fun lt!246029 () SeekEntryResult!4773)

(assert (=> b!536154 (= lt!246029 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246027 (select (arr!16308 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536155 () Bool)

(assert (=> b!536155 (= e!311270 e!311271)))

(declare-fun res!331501 () Bool)

(assert (=> b!536155 (=> (not res!331501) (not e!311271))))

(assert (=> b!536155 (= res!331501 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246027 #b00000000000000000000000000000000) (bvslt lt!246027 (size!16672 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536155 (= lt!246027 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536156 () Bool)

(assert (=> b!536156 (= e!311272 e!311269)))

(declare-fun res!331508 () Bool)

(assert (=> b!536156 (=> (not res!331508) (not e!311269))))

(declare-fun lt!246026 () SeekEntryResult!4773)

(assert (=> b!536156 (= res!331508 (or (= lt!246026 (MissingZero!4773 i!1153)) (= lt!246026 (MissingVacant!4773 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33946 (_ BitVec 32)) SeekEntryResult!4773)

(assert (=> b!536156 (= lt!246026 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48778 res!331507) b!536148))

(assert (= (and b!536148 res!331502) b!536145))

(assert (= (and b!536145 res!331504) b!536147))

(assert (= (and b!536147 res!331509) b!536153))

(assert (= (and b!536153 res!331505) b!536156))

(assert (= (and b!536156 res!331508) b!536144))

(assert (= (and b!536144 res!331499) b!536149))

(assert (= (and b!536149 res!331503) b!536146))

(assert (= (and b!536146 res!331506) b!536150))

(assert (= (and b!536150 res!331511) b!536152))

(assert (= (and b!536152 res!331500) b!536151))

(assert (= (and b!536151 res!331510) b!536155))

(assert (= (and b!536155 res!331501) b!536154))

(declare-fun m!515611 () Bool)

(assert (=> b!536144 m!515611))

(declare-fun m!515613 () Bool)

(assert (=> b!536152 m!515613))

(assert (=> b!536152 m!515613))

(declare-fun m!515615 () Bool)

(assert (=> b!536152 m!515615))

(assert (=> b!536152 m!515615))

(assert (=> b!536152 m!515613))

(declare-fun m!515617 () Bool)

(assert (=> b!536152 m!515617))

(declare-fun m!515619 () Bool)

(assert (=> b!536156 m!515619))

(declare-fun m!515621 () Bool)

(assert (=> start!48778 m!515621))

(declare-fun m!515623 () Bool)

(assert (=> start!48778 m!515623))

(declare-fun m!515625 () Bool)

(assert (=> b!536155 m!515625))

(declare-fun m!515627 () Bool)

(assert (=> b!536151 m!515627))

(assert (=> b!536151 m!515613))

(declare-fun m!515629 () Bool)

(assert (=> b!536153 m!515629))

(declare-fun m!515631 () Bool)

(assert (=> b!536147 m!515631))

(assert (=> b!536154 m!515613))

(assert (=> b!536154 m!515613))

(declare-fun m!515633 () Bool)

(assert (=> b!536154 m!515633))

(assert (=> b!536150 m!515613))

(assert (=> b!536150 m!515613))

(declare-fun m!515635 () Bool)

(assert (=> b!536150 m!515635))

(declare-fun m!515637 () Bool)

(assert (=> b!536149 m!515637))

(assert (=> b!536145 m!515613))

(assert (=> b!536145 m!515613))

(declare-fun m!515639 () Bool)

(assert (=> b!536145 m!515639))

(declare-fun m!515641 () Bool)

(assert (=> b!536146 m!515641))

(assert (=> b!536146 m!515613))

(push 1)

