; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119316 () Bool)

(assert start!119316)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95120 0))(
  ( (array!95121 (arr!45920 (Array (_ BitVec 32) (_ BitVec 64))) (size!46471 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95120)

(declare-fun e!787661 () Bool)

(declare-fun b!1390849 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10259 0))(
  ( (MissingZero!10259 (index!43406 (_ BitVec 32))) (Found!10259 (index!43407 (_ BitVec 32))) (Intermediate!10259 (undefined!11071 Bool) (index!43408 (_ BitVec 32)) (x!125090 (_ BitVec 32))) (Undefined!10259) (MissingVacant!10259 (index!43409 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95120 (_ BitVec 32)) SeekEntryResult!10259)

(assert (=> b!1390849 (= e!787661 (= (seekEntryOrOpen!0 (select (arr!45920 a!2901) j!112) a!2901 mask!2840) (Found!10259 j!112)))))

(declare-fun res!930975 () Bool)

(declare-fun e!787659 () Bool)

(assert (=> start!119316 (=> (not res!930975) (not e!787659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119316 (= res!930975 (validMask!0 mask!2840))))

(assert (=> start!119316 e!787659))

(assert (=> start!119316 true))

(declare-fun array_inv!34865 (array!95120) Bool)

(assert (=> start!119316 (array_inv!34865 a!2901)))

(declare-fun b!1390850 () Bool)

(declare-fun res!930974 () Bool)

(assert (=> b!1390850 (=> (not res!930974) (not e!787659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95120 (_ BitVec 32)) Bool)

(assert (=> b!1390850 (= res!930974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390851 () Bool)

(declare-fun res!930977 () Bool)

(assert (=> b!1390851 (=> (not res!930977) (not e!787659))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390851 (= res!930977 (and (= (size!46471 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46471 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46471 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390852 () Bool)

(declare-fun res!930976 () Bool)

(assert (=> b!1390852 (=> (not res!930976) (not e!787659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390852 (= res!930976 (validKeyInArray!0 (select (arr!45920 a!2901) j!112)))))

(declare-fun b!1390853 () Bool)

(declare-fun res!930978 () Bool)

(assert (=> b!1390853 (=> (not res!930978) (not e!787659))))

(declare-datatypes ((List!32619 0))(
  ( (Nil!32616) (Cons!32615 (h!33836 (_ BitVec 64)) (t!47320 List!32619)) )
))
(declare-fun arrayNoDuplicates!0 (array!95120 (_ BitVec 32) List!32619) Bool)

(assert (=> b!1390853 (= res!930978 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32616))))

(declare-fun b!1390854 () Bool)

(declare-fun lt!610947 () SeekEntryResult!10259)

(get-info :version)

(assert (=> b!1390854 (= e!787659 (not (or (not ((_ is Intermediate!10259) lt!610947)) (undefined!11071 lt!610947) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(assert (=> b!1390854 e!787661))

(declare-fun res!930973 () Bool)

(assert (=> b!1390854 (=> (not res!930973) (not e!787661))))

(assert (=> b!1390854 (= res!930973 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46472 0))(
  ( (Unit!46473) )
))
(declare-fun lt!610948 () Unit!46472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46472)

(assert (=> b!1390854 (= lt!610948 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95120 (_ BitVec 32)) SeekEntryResult!10259)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390854 (= lt!610947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45920 a!2901) j!112) mask!2840) (select (arr!45920 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390855 () Bool)

(declare-fun res!930972 () Bool)

(assert (=> b!1390855 (=> (not res!930972) (not e!787659))))

(assert (=> b!1390855 (= res!930972 (validKeyInArray!0 (select (arr!45920 a!2901) i!1037)))))

(assert (= (and start!119316 res!930975) b!1390851))

(assert (= (and b!1390851 res!930977) b!1390855))

(assert (= (and b!1390855 res!930972) b!1390852))

(assert (= (and b!1390852 res!930976) b!1390850))

(assert (= (and b!1390850 res!930974) b!1390853))

(assert (= (and b!1390853 res!930978) b!1390854))

(assert (= (and b!1390854 res!930973) b!1390849))

(declare-fun m!1276717 () Bool)

(assert (=> b!1390850 m!1276717))

(declare-fun m!1276719 () Bool)

(assert (=> b!1390849 m!1276719))

(assert (=> b!1390849 m!1276719))

(declare-fun m!1276721 () Bool)

(assert (=> b!1390849 m!1276721))

(declare-fun m!1276723 () Bool)

(assert (=> b!1390853 m!1276723))

(declare-fun m!1276725 () Bool)

(assert (=> b!1390855 m!1276725))

(assert (=> b!1390855 m!1276725))

(declare-fun m!1276727 () Bool)

(assert (=> b!1390855 m!1276727))

(declare-fun m!1276729 () Bool)

(assert (=> start!119316 m!1276729))

(declare-fun m!1276731 () Bool)

(assert (=> start!119316 m!1276731))

(assert (=> b!1390852 m!1276719))

(assert (=> b!1390852 m!1276719))

(declare-fun m!1276733 () Bool)

(assert (=> b!1390852 m!1276733))

(assert (=> b!1390854 m!1276719))

(declare-fun m!1276735 () Bool)

(assert (=> b!1390854 m!1276735))

(assert (=> b!1390854 m!1276719))

(declare-fun m!1276737 () Bool)

(assert (=> b!1390854 m!1276737))

(assert (=> b!1390854 m!1276735))

(assert (=> b!1390854 m!1276719))

(declare-fun m!1276739 () Bool)

(assert (=> b!1390854 m!1276739))

(declare-fun m!1276741 () Bool)

(assert (=> b!1390854 m!1276741))

(check-sat (not b!1390855) (not start!119316) (not b!1390850) (not b!1390852) (not b!1390854) (not b!1390849) (not b!1390853))
(check-sat)
