; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45502 () Bool)

(assert start!45502)

(declare-fun b!500836 () Bool)

(declare-fun res!302741 () Bool)

(declare-fun e!293415 () Bool)

(assert (=> b!500836 (=> (not res!302741) (not e!293415))))

(declare-datatypes ((array!32287 0))(
  ( (array!32288 (arr!15522 (Array (_ BitVec 32) (_ BitVec 64))) (size!15886 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32287)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32287 (_ BitVec 32)) Bool)

(assert (=> b!500836 (= res!302741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500837 () Bool)

(declare-datatypes ((Unit!15074 0))(
  ( (Unit!15075) )
))
(declare-fun e!293414 () Unit!15074)

(declare-fun Unit!15076 () Unit!15074)

(assert (=> b!500837 (= e!293414 Unit!15076)))

(declare-fun b!500838 () Bool)

(declare-fun e!293416 () Bool)

(assert (=> b!500838 (= e!293416 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!3996 0))(
  ( (MissingZero!3996 (index!18166 (_ BitVec 32))) (Found!3996 (index!18167 (_ BitVec 32))) (Intermediate!3996 (undefined!4808 Bool) (index!18168 (_ BitVec 32)) (x!47228 (_ BitVec 32))) (Undefined!3996) (MissingVacant!3996 (index!18169 (_ BitVec 32))) )
))
(declare-fun lt!227474 () SeekEntryResult!3996)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500838 (= (index!18168 lt!227474) i!1204)))

(declare-fun lt!227477 () Unit!15074)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!227478 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32287 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15074)

(assert (=> b!500838 (= lt!227477 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227478 #b00000000000000000000000000000000 (index!18168 lt!227474) (x!47228 lt!227474) mask!3524))))

(assert (=> b!500838 (and (or (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227480 () Unit!15074)

(assert (=> b!500838 (= lt!227480 e!293414)))

(declare-fun c!59327 () Bool)

(assert (=> b!500838 (= c!59327 (= (select (arr!15522 a!3235) (index!18168 lt!227474)) (select (arr!15522 a!3235) j!176)))))

(assert (=> b!500838 (and (bvslt (x!47228 lt!227474) #b01111111111111111111111111111110) (or (= (select (arr!15522 a!3235) (index!18168 lt!227474)) (select (arr!15522 a!3235) j!176)) (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15522 a!3235) (index!18168 lt!227474)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!293410 () Bool)

(declare-fun b!500839 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32287 (_ BitVec 32)) SeekEntryResult!3996)

(assert (=> b!500839 (= e!293410 (= (seekEntryOrOpen!0 (select (arr!15522 a!3235) j!176) a!3235 mask!3524) (Found!3996 j!176)))))

(declare-fun b!500840 () Bool)

(declare-fun res!302747 () Bool)

(declare-fun e!293411 () Bool)

(assert (=> b!500840 (=> (not res!302747) (not e!293411))))

(declare-fun arrayContainsKey!0 (array!32287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500840 (= res!302747 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500841 () Bool)

(declare-fun res!302742 () Bool)

(assert (=> b!500841 (=> (not res!302742) (not e!293411))))

(assert (=> b!500841 (= res!302742 (and (= (size!15886 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15886 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15886 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!302737 () Bool)

(assert (=> start!45502 (=> (not res!302737) (not e!293411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45502 (= res!302737 (validMask!0 mask!3524))))

(assert (=> start!45502 e!293411))

(assert (=> start!45502 true))

(declare-fun array_inv!11296 (array!32287) Bool)

(assert (=> start!45502 (array_inv!11296 a!3235)))

(declare-fun b!500842 () Bool)

(declare-fun Unit!15077 () Unit!15074)

(assert (=> b!500842 (= e!293414 Unit!15077)))

(declare-fun lt!227479 () Unit!15074)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32287 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15074)

(assert (=> b!500842 (= lt!227479 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227478 #b00000000000000000000000000000000 (index!18168 lt!227474) (x!47228 lt!227474) mask!3524))))

(declare-fun lt!227475 () (_ BitVec 64))

(declare-fun res!302746 () Bool)

(declare-fun lt!227471 () array!32287)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32287 (_ BitVec 32)) SeekEntryResult!3996)

(assert (=> b!500842 (= res!302746 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227478 lt!227475 lt!227471 mask!3524) (Intermediate!3996 false (index!18168 lt!227474) (x!47228 lt!227474))))))

(declare-fun e!293412 () Bool)

(assert (=> b!500842 (=> (not res!302746) (not e!293412))))

(assert (=> b!500842 e!293412))

(declare-fun b!500843 () Bool)

(assert (=> b!500843 (= e!293415 (not e!293416))))

(declare-fun res!302740 () Bool)

(assert (=> b!500843 (=> res!302740 e!293416)))

(declare-fun lt!227472 () (_ BitVec 32))

(assert (=> b!500843 (= res!302740 (= lt!227474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227472 lt!227475 lt!227471 mask!3524)))))

(assert (=> b!500843 (= lt!227474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227478 (select (arr!15522 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500843 (= lt!227472 (toIndex!0 lt!227475 mask!3524))))

(assert (=> b!500843 (= lt!227475 (select (store (arr!15522 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500843 (= lt!227478 (toIndex!0 (select (arr!15522 a!3235) j!176) mask!3524))))

(assert (=> b!500843 (= lt!227471 (array!32288 (store (arr!15522 a!3235) i!1204 k!2280) (size!15886 a!3235)))))

(assert (=> b!500843 e!293410))

(declare-fun res!302738 () Bool)

(assert (=> b!500843 (=> (not res!302738) (not e!293410))))

(assert (=> b!500843 (= res!302738 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227476 () Unit!15074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15074)

(assert (=> b!500843 (= lt!227476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500844 () Bool)

(declare-fun res!302743 () Bool)

(assert (=> b!500844 (=> (not res!302743) (not e!293411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500844 (= res!302743 (validKeyInArray!0 k!2280))))

(declare-fun b!500845 () Bool)

(declare-fun res!302739 () Bool)

(assert (=> b!500845 (=> res!302739 e!293416)))

(assert (=> b!500845 (= res!302739 (or (undefined!4808 lt!227474) (not (is-Intermediate!3996 lt!227474))))))

(declare-fun b!500846 () Bool)

(assert (=> b!500846 (= e!293411 e!293415)))

(declare-fun res!302745 () Bool)

(assert (=> b!500846 (=> (not res!302745) (not e!293415))))

(declare-fun lt!227473 () SeekEntryResult!3996)

(assert (=> b!500846 (= res!302745 (or (= lt!227473 (MissingZero!3996 i!1204)) (= lt!227473 (MissingVacant!3996 i!1204))))))

(assert (=> b!500846 (= lt!227473 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500847 () Bool)

(declare-fun res!302736 () Bool)

(assert (=> b!500847 (=> (not res!302736) (not e!293411))))

(assert (=> b!500847 (= res!302736 (validKeyInArray!0 (select (arr!15522 a!3235) j!176)))))

(declare-fun b!500848 () Bool)

(declare-fun res!302744 () Bool)

(assert (=> b!500848 (=> (not res!302744) (not e!293415))))

(declare-datatypes ((List!9733 0))(
  ( (Nil!9730) (Cons!9729 (h!10603 (_ BitVec 64)) (t!15969 List!9733)) )
))
(declare-fun arrayNoDuplicates!0 (array!32287 (_ BitVec 32) List!9733) Bool)

(assert (=> b!500848 (= res!302744 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9730))))

(declare-fun b!500849 () Bool)

(assert (=> b!500849 (= e!293412 false)))

(assert (= (and start!45502 res!302737) b!500841))

(assert (= (and b!500841 res!302742) b!500847))

(assert (= (and b!500847 res!302736) b!500844))

(assert (= (and b!500844 res!302743) b!500840))

(assert (= (and b!500840 res!302747) b!500846))

(assert (= (and b!500846 res!302745) b!500836))

(assert (= (and b!500836 res!302741) b!500848))

(assert (= (and b!500848 res!302744) b!500843))

(assert (= (and b!500843 res!302738) b!500839))

(assert (= (and b!500843 (not res!302740)) b!500845))

(assert (= (and b!500845 (not res!302739)) b!500838))

(assert (= (and b!500838 c!59327) b!500842))

(assert (= (and b!500838 (not c!59327)) b!500837))

(assert (= (and b!500842 res!302746) b!500849))

(declare-fun m!481969 () Bool)

(assert (=> b!500843 m!481969))

(declare-fun m!481971 () Bool)

(assert (=> b!500843 m!481971))

(declare-fun m!481973 () Bool)

(assert (=> b!500843 m!481973))

(declare-fun m!481975 () Bool)

(assert (=> b!500843 m!481975))

(declare-fun m!481977 () Bool)

(assert (=> b!500843 m!481977))

(declare-fun m!481979 () Bool)

(assert (=> b!500843 m!481979))

(assert (=> b!500843 m!481977))

(declare-fun m!481981 () Bool)

(assert (=> b!500843 m!481981))

(declare-fun m!481983 () Bool)

(assert (=> b!500843 m!481983))

(assert (=> b!500843 m!481977))

(declare-fun m!481985 () Bool)

(assert (=> b!500843 m!481985))

(declare-fun m!481987 () Bool)

(assert (=> b!500844 m!481987))

(declare-fun m!481989 () Bool)

(assert (=> b!500840 m!481989))

(declare-fun m!481991 () Bool)

(assert (=> b!500842 m!481991))

(declare-fun m!481993 () Bool)

(assert (=> b!500842 m!481993))

(declare-fun m!481995 () Bool)

(assert (=> b!500846 m!481995))

(declare-fun m!481997 () Bool)

(assert (=> start!45502 m!481997))

(declare-fun m!481999 () Bool)

(assert (=> start!45502 m!481999))

(assert (=> b!500839 m!481977))

(assert (=> b!500839 m!481977))

(declare-fun m!482001 () Bool)

(assert (=> b!500839 m!482001))

(declare-fun m!482003 () Bool)

(assert (=> b!500838 m!482003))

(declare-fun m!482005 () Bool)

(assert (=> b!500838 m!482005))

(assert (=> b!500838 m!481977))

(assert (=> b!500847 m!481977))

(assert (=> b!500847 m!481977))

(declare-fun m!482007 () Bool)

(assert (=> b!500847 m!482007))

(declare-fun m!482009 () Bool)

(assert (=> b!500836 m!482009))

(declare-fun m!482011 () Bool)

(assert (=> b!500848 m!482011))

(push 1)

