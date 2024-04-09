; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45036 () Bool)

(assert start!45036)

(declare-fun res!296565 () Bool)

(declare-fun e!289917 () Bool)

(assert (=> start!45036 (=> (not res!296565) (not e!289917))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45036 (= res!296565 (validMask!0 mask!3524))))

(assert (=> start!45036 e!289917))

(assert (=> start!45036 true))

(declare-datatypes ((array!31941 0))(
  ( (array!31942 (arr!15352 (Array (_ BitVec 32) (_ BitVec 64))) (size!15716 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31941)

(declare-fun array_inv!11126 (array!31941) Bool)

(assert (=> start!45036 (array_inv!11126 a!3235)))

(declare-fun b!493841 () Bool)

(declare-fun res!296568 () Bool)

(declare-fun e!289915 () Bool)

(assert (=> b!493841 (=> (not res!296568) (not e!289915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31941 (_ BitVec 32)) Bool)

(assert (=> b!493841 (= res!296568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493842 () Bool)

(declare-fun res!296562 () Bool)

(declare-fun e!289916 () Bool)

(assert (=> b!493842 (=> res!296562 e!289916)))

(declare-datatypes ((SeekEntryResult!3826 0))(
  ( (MissingZero!3826 (index!17483 (_ BitVec 32))) (Found!3826 (index!17484 (_ BitVec 32))) (Intermediate!3826 (undefined!4638 Bool) (index!17485 (_ BitVec 32)) (x!46587 (_ BitVec 32))) (Undefined!3826) (MissingVacant!3826 (index!17486 (_ BitVec 32))) )
))
(declare-fun lt!223496 () SeekEntryResult!3826)

(get-info :version)

(assert (=> b!493842 (= res!296562 (or (not ((_ is Intermediate!3826) lt!223496)) (not (undefined!4638 lt!223496))))))

(declare-fun b!493843 () Bool)

(declare-fun res!296569 () Bool)

(assert (=> b!493843 (=> (not res!296569) (not e!289915))))

(declare-datatypes ((List!9563 0))(
  ( (Nil!9560) (Cons!9559 (h!10427 (_ BitVec 64)) (t!15799 List!9563)) )
))
(declare-fun arrayNoDuplicates!0 (array!31941 (_ BitVec 32) List!9563) Bool)

(assert (=> b!493843 (= res!296569 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9560))))

(declare-fun b!493844 () Bool)

(declare-fun res!296561 () Bool)

(assert (=> b!493844 (=> (not res!296561) (not e!289917))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493844 (= res!296561 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493845 () Bool)

(declare-fun res!296563 () Bool)

(assert (=> b!493845 (=> (not res!296563) (not e!289917))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493845 (= res!296563 (validKeyInArray!0 (select (arr!15352 a!3235) j!176)))))

(declare-fun b!493846 () Bool)

(assert (=> b!493846 (= e!289915 (not e!289916))))

(declare-fun res!296567 () Bool)

(assert (=> b!493846 (=> res!296567 e!289916)))

(declare-fun lt!223492 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31941 (_ BitVec 32)) SeekEntryResult!3826)

(assert (=> b!493846 (= res!296567 (= lt!223496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223492 (select (store (arr!15352 a!3235) i!1204 k0!2280) j!176) (array!31942 (store (arr!15352 a!3235) i!1204 k0!2280) (size!15716 a!3235)) mask!3524)))))

(declare-fun lt!223494 () (_ BitVec 32))

(assert (=> b!493846 (= lt!223496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223494 (select (arr!15352 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493846 (= lt!223492 (toIndex!0 (select (store (arr!15352 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493846 (= lt!223494 (toIndex!0 (select (arr!15352 a!3235) j!176) mask!3524))))

(declare-fun lt!223493 () SeekEntryResult!3826)

(assert (=> b!493846 (= lt!223493 (Found!3826 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31941 (_ BitVec 32)) SeekEntryResult!3826)

(assert (=> b!493846 (= lt!223493 (seekEntryOrOpen!0 (select (arr!15352 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493846 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14590 0))(
  ( (Unit!14591) )
))
(declare-fun lt!223495 () Unit!14590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14590)

(assert (=> b!493846 (= lt!223495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493847 () Bool)

(declare-fun res!296570 () Bool)

(assert (=> b!493847 (=> (not res!296570) (not e!289917))))

(assert (=> b!493847 (= res!296570 (validKeyInArray!0 k0!2280))))

(declare-fun b!493848 () Bool)

(declare-fun res!296566 () Bool)

(assert (=> b!493848 (=> (not res!296566) (not e!289917))))

(assert (=> b!493848 (= res!296566 (and (= (size!15716 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15716 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15716 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493849 () Bool)

(assert (=> b!493849 (= e!289917 e!289915)))

(declare-fun res!296564 () Bool)

(assert (=> b!493849 (=> (not res!296564) (not e!289915))))

(declare-fun lt!223491 () SeekEntryResult!3826)

(assert (=> b!493849 (= res!296564 (or (= lt!223491 (MissingZero!3826 i!1204)) (= lt!223491 (MissingVacant!3826 i!1204))))))

(assert (=> b!493849 (= lt!223491 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493850 () Bool)

(assert (=> b!493850 (= e!289916 true)))

(assert (=> b!493850 (= lt!223493 Undefined!3826)))

(assert (= (and start!45036 res!296565) b!493848))

(assert (= (and b!493848 res!296566) b!493845))

(assert (= (and b!493845 res!296563) b!493847))

(assert (= (and b!493847 res!296570) b!493844))

(assert (= (and b!493844 res!296561) b!493849))

(assert (= (and b!493849 res!296564) b!493841))

(assert (= (and b!493841 res!296568) b!493843))

(assert (= (and b!493843 res!296569) b!493846))

(assert (= (and b!493846 (not res!296567)) b!493842))

(assert (= (and b!493842 (not res!296562)) b!493850))

(declare-fun m!474841 () Bool)

(assert (=> b!493846 m!474841))

(declare-fun m!474843 () Bool)

(assert (=> b!493846 m!474843))

(declare-fun m!474845 () Bool)

(assert (=> b!493846 m!474845))

(declare-fun m!474847 () Bool)

(assert (=> b!493846 m!474847))

(declare-fun m!474849 () Bool)

(assert (=> b!493846 m!474849))

(assert (=> b!493846 m!474847))

(declare-fun m!474851 () Bool)

(assert (=> b!493846 m!474851))

(assert (=> b!493846 m!474847))

(assert (=> b!493846 m!474845))

(declare-fun m!474853 () Bool)

(assert (=> b!493846 m!474853))

(declare-fun m!474855 () Bool)

(assert (=> b!493846 m!474855))

(assert (=> b!493846 m!474847))

(declare-fun m!474857 () Bool)

(assert (=> b!493846 m!474857))

(assert (=> b!493846 m!474845))

(declare-fun m!474859 () Bool)

(assert (=> b!493846 m!474859))

(declare-fun m!474861 () Bool)

(assert (=> b!493843 m!474861))

(declare-fun m!474863 () Bool)

(assert (=> start!45036 m!474863))

(declare-fun m!474865 () Bool)

(assert (=> start!45036 m!474865))

(declare-fun m!474867 () Bool)

(assert (=> b!493847 m!474867))

(declare-fun m!474869 () Bool)

(assert (=> b!493849 m!474869))

(declare-fun m!474871 () Bool)

(assert (=> b!493841 m!474871))

(declare-fun m!474873 () Bool)

(assert (=> b!493844 m!474873))

(assert (=> b!493845 m!474847))

(assert (=> b!493845 m!474847))

(declare-fun m!474875 () Bool)

(assert (=> b!493845 m!474875))

(check-sat (not start!45036) (not b!493846) (not b!493847) (not b!493841) (not b!493844) (not b!493843) (not b!493849) (not b!493845))
(check-sat)
