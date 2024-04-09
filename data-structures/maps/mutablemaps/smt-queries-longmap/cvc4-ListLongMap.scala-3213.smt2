; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45038 () Bool)

(assert start!45038)

(declare-fun res!296593 () Bool)

(declare-fun e!289930 () Bool)

(assert (=> start!45038 (=> (not res!296593) (not e!289930))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45038 (= res!296593 (validMask!0 mask!3524))))

(assert (=> start!45038 e!289930))

(assert (=> start!45038 true))

(declare-datatypes ((array!31943 0))(
  ( (array!31944 (arr!15353 (Array (_ BitVec 32) (_ BitVec 64))) (size!15717 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31943)

(declare-fun array_inv!11127 (array!31943) Bool)

(assert (=> start!45038 (array_inv!11127 a!3235)))

(declare-fun b!493871 () Bool)

(declare-fun e!289927 () Bool)

(assert (=> b!493871 (= e!289930 e!289927)))

(declare-fun res!296599 () Bool)

(assert (=> b!493871 (=> (not res!296599) (not e!289927))))

(declare-datatypes ((SeekEntryResult!3827 0))(
  ( (MissingZero!3827 (index!17487 (_ BitVec 32))) (Found!3827 (index!17488 (_ BitVec 32))) (Intermediate!3827 (undefined!4639 Bool) (index!17489 (_ BitVec 32)) (x!46588 (_ BitVec 32))) (Undefined!3827) (MissingVacant!3827 (index!17490 (_ BitVec 32))) )
))
(declare-fun lt!223511 () SeekEntryResult!3827)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493871 (= res!296599 (or (= lt!223511 (MissingZero!3827 i!1204)) (= lt!223511 (MissingVacant!3827 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31943 (_ BitVec 32)) SeekEntryResult!3827)

(assert (=> b!493871 (= lt!223511 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493872 () Bool)

(declare-fun res!296597 () Bool)

(assert (=> b!493872 (=> (not res!296597) (not e!289930))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493872 (= res!296597 (and (= (size!15717 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15717 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15717 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493873 () Bool)

(declare-fun e!289928 () Bool)

(assert (=> b!493873 (= e!289927 (not e!289928))))

(declare-fun res!296596 () Bool)

(assert (=> b!493873 (=> res!296596 e!289928)))

(declare-fun lt!223514 () (_ BitVec 32))

(declare-fun lt!223509 () SeekEntryResult!3827)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31943 (_ BitVec 32)) SeekEntryResult!3827)

(assert (=> b!493873 (= res!296596 (= lt!223509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223514 (select (store (arr!15353 a!3235) i!1204 k!2280) j!176) (array!31944 (store (arr!15353 a!3235) i!1204 k!2280) (size!15717 a!3235)) mask!3524)))))

(declare-fun lt!223510 () (_ BitVec 32))

(assert (=> b!493873 (= lt!223509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223510 (select (arr!15353 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493873 (= lt!223514 (toIndex!0 (select (store (arr!15353 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493873 (= lt!223510 (toIndex!0 (select (arr!15353 a!3235) j!176) mask!3524))))

(declare-fun lt!223512 () SeekEntryResult!3827)

(assert (=> b!493873 (= lt!223512 (Found!3827 j!176))))

(assert (=> b!493873 (= lt!223512 (seekEntryOrOpen!0 (select (arr!15353 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31943 (_ BitVec 32)) Bool)

(assert (=> b!493873 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14592 0))(
  ( (Unit!14593) )
))
(declare-fun lt!223513 () Unit!14592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14592)

(assert (=> b!493873 (= lt!223513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493874 () Bool)

(declare-fun res!296592 () Bool)

(assert (=> b!493874 (=> (not res!296592) (not e!289930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493874 (= res!296592 (validKeyInArray!0 k!2280))))

(declare-fun b!493875 () Bool)

(declare-fun res!296594 () Bool)

(assert (=> b!493875 (=> (not res!296594) (not e!289927))))

(assert (=> b!493875 (= res!296594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493876 () Bool)

(declare-fun res!296600 () Bool)

(assert (=> b!493876 (=> (not res!296600) (not e!289927))))

(declare-datatypes ((List!9564 0))(
  ( (Nil!9561) (Cons!9560 (h!10428 (_ BitVec 64)) (t!15800 List!9564)) )
))
(declare-fun arrayNoDuplicates!0 (array!31943 (_ BitVec 32) List!9564) Bool)

(assert (=> b!493876 (= res!296600 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9561))))

(declare-fun b!493877 () Bool)

(declare-fun res!296598 () Bool)

(assert (=> b!493877 (=> (not res!296598) (not e!289930))))

(declare-fun arrayContainsKey!0 (array!31943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493877 (= res!296598 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493878 () Bool)

(assert (=> b!493878 (= e!289928 true)))

(assert (=> b!493878 (= lt!223512 Undefined!3827)))

(declare-fun b!493879 () Bool)

(declare-fun res!296595 () Bool)

(assert (=> b!493879 (=> (not res!296595) (not e!289930))))

(assert (=> b!493879 (= res!296595 (validKeyInArray!0 (select (arr!15353 a!3235) j!176)))))

(declare-fun b!493880 () Bool)

(declare-fun res!296591 () Bool)

(assert (=> b!493880 (=> res!296591 e!289928)))

(assert (=> b!493880 (= res!296591 (or (not (is-Intermediate!3827 lt!223509)) (not (undefined!4639 lt!223509))))))

(assert (= (and start!45038 res!296593) b!493872))

(assert (= (and b!493872 res!296597) b!493879))

(assert (= (and b!493879 res!296595) b!493874))

(assert (= (and b!493874 res!296592) b!493877))

(assert (= (and b!493877 res!296598) b!493871))

(assert (= (and b!493871 res!296599) b!493875))

(assert (= (and b!493875 res!296594) b!493876))

(assert (= (and b!493876 res!296600) b!493873))

(assert (= (and b!493873 (not res!296596)) b!493880))

(assert (= (and b!493880 (not res!296591)) b!493878))

(declare-fun m!474877 () Bool)

(assert (=> b!493871 m!474877))

(declare-fun m!474879 () Bool)

(assert (=> b!493873 m!474879))

(declare-fun m!474881 () Bool)

(assert (=> b!493873 m!474881))

(declare-fun m!474883 () Bool)

(assert (=> b!493873 m!474883))

(declare-fun m!474885 () Bool)

(assert (=> b!493873 m!474885))

(assert (=> b!493873 m!474879))

(declare-fun m!474887 () Bool)

(assert (=> b!493873 m!474887))

(declare-fun m!474889 () Bool)

(assert (=> b!493873 m!474889))

(assert (=> b!493873 m!474887))

(declare-fun m!474891 () Bool)

(assert (=> b!493873 m!474891))

(assert (=> b!493873 m!474887))

(declare-fun m!474893 () Bool)

(assert (=> b!493873 m!474893))

(assert (=> b!493873 m!474879))

(declare-fun m!474895 () Bool)

(assert (=> b!493873 m!474895))

(assert (=> b!493873 m!474887))

(declare-fun m!474897 () Bool)

(assert (=> b!493873 m!474897))

(declare-fun m!474899 () Bool)

(assert (=> start!45038 m!474899))

(declare-fun m!474901 () Bool)

(assert (=> start!45038 m!474901))

(declare-fun m!474903 () Bool)

(assert (=> b!493874 m!474903))

(assert (=> b!493879 m!474887))

(assert (=> b!493879 m!474887))

(declare-fun m!474905 () Bool)

(assert (=> b!493879 m!474905))

(declare-fun m!474907 () Bool)

(assert (=> b!493877 m!474907))

(declare-fun m!474909 () Bool)

(assert (=> b!493875 m!474909))

(declare-fun m!474911 () Bool)

(assert (=> b!493876 m!474911))

(push 1)

