; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45506 () Bool)

(assert start!45506)

(declare-fun b!500920 () Bool)

(declare-fun res!302812 () Bool)

(declare-fun e!293457 () Bool)

(assert (=> b!500920 (=> (not res!302812) (not e!293457))))

(declare-datatypes ((array!32291 0))(
  ( (array!32292 (arr!15524 (Array (_ BitVec 32) (_ BitVec 64))) (size!15888 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32291)

(declare-datatypes ((List!9735 0))(
  ( (Nil!9732) (Cons!9731 (h!10605 (_ BitVec 64)) (t!15971 List!9735)) )
))
(declare-fun arrayNoDuplicates!0 (array!32291 (_ BitVec 32) List!9735) Bool)

(assert (=> b!500920 (= res!302812 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9732))))

(declare-fun res!302809 () Bool)

(declare-fun e!293452 () Bool)

(assert (=> start!45506 (=> (not res!302809) (not e!293452))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45506 (= res!302809 (validMask!0 mask!3524))))

(assert (=> start!45506 e!293452))

(assert (=> start!45506 true))

(declare-fun array_inv!11298 (array!32291) Bool)

(assert (=> start!45506 (array_inv!11298 a!3235)))

(declare-fun e!293454 () Bool)

(declare-fun b!500921 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3998 0))(
  ( (MissingZero!3998 (index!18174 (_ BitVec 32))) (Found!3998 (index!18175 (_ BitVec 32))) (Intermediate!3998 (undefined!4810 Bool) (index!18176 (_ BitVec 32)) (x!47230 (_ BitVec 32))) (Undefined!3998) (MissingVacant!3998 (index!18177 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32291 (_ BitVec 32)) SeekEntryResult!3998)

(assert (=> b!500921 (= e!293454 (= (seekEntryOrOpen!0 (select (arr!15524 a!3235) j!176) a!3235 mask!3524) (Found!3998 j!176)))))

(declare-fun b!500922 () Bool)

(declare-fun res!302813 () Bool)

(assert (=> b!500922 (=> (not res!302813) (not e!293452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500922 (= res!302813 (validKeyInArray!0 (select (arr!15524 a!3235) j!176)))))

(declare-fun b!500923 () Bool)

(declare-datatypes ((Unit!15082 0))(
  ( (Unit!15083) )
))
(declare-fun e!293453 () Unit!15082)

(declare-fun Unit!15084 () Unit!15082)

(assert (=> b!500923 (= e!293453 Unit!15084)))

(declare-fun lt!227533 () Unit!15082)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!227538 () SeekEntryResult!3998)

(declare-fun lt!227537 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15082)

(assert (=> b!500923 (= lt!227533 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227537 #b00000000000000000000000000000000 (index!18176 lt!227538) (x!47230 lt!227538) mask!3524))))

(declare-fun lt!227532 () array!32291)

(declare-fun lt!227531 () (_ BitVec 64))

(declare-fun res!302814 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32291 (_ BitVec 32)) SeekEntryResult!3998)

(assert (=> b!500923 (= res!302814 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227537 lt!227531 lt!227532 mask!3524) (Intermediate!3998 false (index!18176 lt!227538) (x!47230 lt!227538))))))

(declare-fun e!293456 () Bool)

(assert (=> b!500923 (=> (not res!302814) (not e!293456))))

(assert (=> b!500923 e!293456))

(declare-fun b!500924 () Bool)

(assert (=> b!500924 (= e!293456 false)))

(declare-fun b!500925 () Bool)

(declare-fun res!302816 () Bool)

(declare-fun e!293455 () Bool)

(assert (=> b!500925 (=> res!302816 e!293455)))

(assert (=> b!500925 (= res!302816 (or (undefined!4810 lt!227538) (not (is-Intermediate!3998 lt!227538))))))

(declare-fun b!500926 () Bool)

(declare-fun res!302817 () Bool)

(assert (=> b!500926 (=> (not res!302817) (not e!293452))))

(assert (=> b!500926 (= res!302817 (and (= (size!15888 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15888 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15888 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500927 () Bool)

(declare-fun Unit!15085 () Unit!15082)

(assert (=> b!500927 (= e!293453 Unit!15085)))

(declare-fun b!500928 () Bool)

(declare-fun res!302815 () Bool)

(assert (=> b!500928 (=> (not res!302815) (not e!293457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32291 (_ BitVec 32)) Bool)

(assert (=> b!500928 (= res!302815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500929 () Bool)

(declare-fun res!302819 () Bool)

(assert (=> b!500929 (=> (not res!302819) (not e!293452))))

(assert (=> b!500929 (= res!302819 (validKeyInArray!0 k!2280))))

(declare-fun b!500930 () Bool)

(assert (=> b!500930 (= e!293455 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!500930 (= (index!18176 lt!227538) i!1204)))

(declare-fun lt!227539 () Unit!15082)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15082)

(assert (=> b!500930 (= lt!227539 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227537 #b00000000000000000000000000000000 (index!18176 lt!227538) (x!47230 lt!227538) mask!3524))))

(assert (=> b!500930 (and (or (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227540 () Unit!15082)

(assert (=> b!500930 (= lt!227540 e!293453)))

(declare-fun c!59333 () Bool)

(assert (=> b!500930 (= c!59333 (= (select (arr!15524 a!3235) (index!18176 lt!227538)) (select (arr!15524 a!3235) j!176)))))

(assert (=> b!500930 (and (bvslt (x!47230 lt!227538) #b01111111111111111111111111111110) (or (= (select (arr!15524 a!3235) (index!18176 lt!227538)) (select (arr!15524 a!3235) j!176)) (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15524 a!3235) (index!18176 lt!227538)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500931 () Bool)

(assert (=> b!500931 (= e!293452 e!293457)))

(declare-fun res!302811 () Bool)

(assert (=> b!500931 (=> (not res!302811) (not e!293457))))

(declare-fun lt!227534 () SeekEntryResult!3998)

(assert (=> b!500931 (= res!302811 (or (= lt!227534 (MissingZero!3998 i!1204)) (= lt!227534 (MissingVacant!3998 i!1204))))))

(assert (=> b!500931 (= lt!227534 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500932 () Bool)

(declare-fun res!302808 () Bool)

(assert (=> b!500932 (=> (not res!302808) (not e!293452))))

(declare-fun arrayContainsKey!0 (array!32291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500932 (= res!302808 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500933 () Bool)

(assert (=> b!500933 (= e!293457 (not e!293455))))

(declare-fun res!302818 () Bool)

(assert (=> b!500933 (=> res!302818 e!293455)))

(declare-fun lt!227535 () (_ BitVec 32))

(assert (=> b!500933 (= res!302818 (= lt!227538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227535 lt!227531 lt!227532 mask!3524)))))

(assert (=> b!500933 (= lt!227538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227537 (select (arr!15524 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500933 (= lt!227535 (toIndex!0 lt!227531 mask!3524))))

(assert (=> b!500933 (= lt!227531 (select (store (arr!15524 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500933 (= lt!227537 (toIndex!0 (select (arr!15524 a!3235) j!176) mask!3524))))

(assert (=> b!500933 (= lt!227532 (array!32292 (store (arr!15524 a!3235) i!1204 k!2280) (size!15888 a!3235)))))

(assert (=> b!500933 e!293454))

(declare-fun res!302810 () Bool)

(assert (=> b!500933 (=> (not res!302810) (not e!293454))))

(assert (=> b!500933 (= res!302810 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227536 () Unit!15082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15082)

(assert (=> b!500933 (= lt!227536 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45506 res!302809) b!500926))

(assert (= (and b!500926 res!302817) b!500922))

(assert (= (and b!500922 res!302813) b!500929))

(assert (= (and b!500929 res!302819) b!500932))

(assert (= (and b!500932 res!302808) b!500931))

(assert (= (and b!500931 res!302811) b!500928))

(assert (= (and b!500928 res!302815) b!500920))

(assert (= (and b!500920 res!302812) b!500933))

(assert (= (and b!500933 res!302810) b!500921))

(assert (= (and b!500933 (not res!302818)) b!500925))

(assert (= (and b!500925 (not res!302816)) b!500930))

(assert (= (and b!500930 c!59333) b!500923))

(assert (= (and b!500930 (not c!59333)) b!500927))

(assert (= (and b!500923 res!302814) b!500924))

(declare-fun m!482057 () Bool)

(assert (=> b!500931 m!482057))

(declare-fun m!482059 () Bool)

(assert (=> b!500932 m!482059))

(declare-fun m!482061 () Bool)

(assert (=> b!500922 m!482061))

(assert (=> b!500922 m!482061))

(declare-fun m!482063 () Bool)

(assert (=> b!500922 m!482063))

(declare-fun m!482065 () Bool)

(assert (=> b!500930 m!482065))

(declare-fun m!482067 () Bool)

(assert (=> b!500930 m!482067))

(assert (=> b!500930 m!482061))

(declare-fun m!482069 () Bool)

(assert (=> start!45506 m!482069))

(declare-fun m!482071 () Bool)

(assert (=> start!45506 m!482071))

(declare-fun m!482073 () Bool)

(assert (=> b!500928 m!482073))

(declare-fun m!482075 () Bool)

(assert (=> b!500929 m!482075))

(assert (=> b!500921 m!482061))

(assert (=> b!500921 m!482061))

(declare-fun m!482077 () Bool)

(assert (=> b!500921 m!482077))

(declare-fun m!482079 () Bool)

(assert (=> b!500923 m!482079))

(declare-fun m!482081 () Bool)

(assert (=> b!500923 m!482081))

(declare-fun m!482083 () Bool)

(assert (=> b!500920 m!482083))

(declare-fun m!482085 () Bool)

(assert (=> b!500933 m!482085))

(declare-fun m!482087 () Bool)

(assert (=> b!500933 m!482087))

(declare-fun m!482089 () Bool)

(assert (=> b!500933 m!482089))

(assert (=> b!500933 m!482061))

(declare-fun m!482091 () Bool)

(assert (=> b!500933 m!482091))

(assert (=> b!500933 m!482061))

(assert (=> b!500933 m!482061))

(declare-fun m!482093 () Bool)

(assert (=> b!500933 m!482093))

(declare-fun m!482095 () Bool)

(assert (=> b!500933 m!482095))

(declare-fun m!482097 () Bool)

(assert (=> b!500933 m!482097))

(declare-fun m!482099 () Bool)

(assert (=> b!500933 m!482099))

(push 1)

