; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45096 () Bool)

(assert start!45096)

(declare-fun res!297467 () Bool)

(declare-fun e!290281 () Bool)

(assert (=> start!45096 (=> (not res!297467) (not e!290281))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45096 (= res!297467 (validMask!0 mask!3524))))

(assert (=> start!45096 e!290281))

(assert (=> start!45096 true))

(declare-datatypes ((array!32001 0))(
  ( (array!32002 (arr!15382 (Array (_ BitVec 32) (_ BitVec 64))) (size!15746 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32001)

(declare-fun array_inv!11156 (array!32001) Bool)

(assert (=> start!45096 (array_inv!11156 a!3235)))

(declare-fun b!494746 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!290283 () Bool)

(declare-datatypes ((SeekEntryResult!3856 0))(
  ( (MissingZero!3856 (index!17603 (_ BitVec 32))) (Found!3856 (index!17604 (_ BitVec 32))) (Intermediate!3856 (undefined!4668 Bool) (index!17605 (_ BitVec 32)) (x!46697 (_ BitVec 32))) (Undefined!3856) (MissingVacant!3856 (index!17606 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32001 (_ BitVec 32)) SeekEntryResult!3856)

(assert (=> b!494746 (= e!290283 (= (seekEntryOrOpen!0 (select (arr!15382 a!3235) j!176) a!3235 mask!3524) (Found!3856 j!176)))))

(declare-fun b!494747 () Bool)

(declare-fun res!297468 () Bool)

(declare-fun e!290280 () Bool)

(assert (=> b!494747 (=> (not res!297468) (not e!290280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32001 (_ BitVec 32)) Bool)

(assert (=> b!494747 (= res!297468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494748 () Bool)

(declare-fun res!297476 () Bool)

(assert (=> b!494748 (=> (not res!297476) (not e!290281))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494748 (= res!297476 (validKeyInArray!0 k0!2280))))

(declare-fun b!494749 () Bool)

(declare-fun res!297466 () Bool)

(declare-fun e!290282 () Bool)

(assert (=> b!494749 (=> res!297466 e!290282)))

(declare-fun lt!224028 () SeekEntryResult!3856)

(get-info :version)

(assert (=> b!494749 (= res!297466 (or (undefined!4668 lt!224028) (not ((_ is Intermediate!3856) lt!224028))))))

(declare-fun b!494750 () Bool)

(assert (=> b!494750 (= e!290281 e!290280)))

(declare-fun res!297472 () Bool)

(assert (=> b!494750 (=> (not res!297472) (not e!290280))))

(declare-fun lt!224029 () SeekEntryResult!3856)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494750 (= res!297472 (or (= lt!224029 (MissingZero!3856 i!1204)) (= lt!224029 (MissingVacant!3856 i!1204))))))

(assert (=> b!494750 (= lt!224029 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494751 () Bool)

(declare-fun res!297475 () Bool)

(assert (=> b!494751 (=> (not res!297475) (not e!290280))))

(declare-datatypes ((List!9593 0))(
  ( (Nil!9590) (Cons!9589 (h!10457 (_ BitVec 64)) (t!15829 List!9593)) )
))
(declare-fun arrayNoDuplicates!0 (array!32001 (_ BitVec 32) List!9593) Bool)

(assert (=> b!494751 (= res!297475 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9590))))

(declare-fun b!494752 () Bool)

(assert (=> b!494752 (= e!290282 (or (not (= (select (arr!15382 a!3235) (index!17605 lt!224028)) (select (arr!15382 a!3235) j!176))) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!494752 (and (bvslt (x!46697 lt!224028) #b01111111111111111111111111111110) (or (= (select (arr!15382 a!3235) (index!17605 lt!224028)) (select (arr!15382 a!3235) j!176)) (= (select (arr!15382 a!3235) (index!17605 lt!224028)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15382 a!3235) (index!17605 lt!224028)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!494753 () Bool)

(declare-fun res!297474 () Bool)

(assert (=> b!494753 (=> (not res!297474) (not e!290281))))

(assert (=> b!494753 (= res!297474 (and (= (size!15746 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15746 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15746 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494754 () Bool)

(declare-fun res!297469 () Bool)

(assert (=> b!494754 (=> (not res!297469) (not e!290281))))

(assert (=> b!494754 (= res!297469 (validKeyInArray!0 (select (arr!15382 a!3235) j!176)))))

(declare-fun b!494755 () Bool)

(declare-fun res!297470 () Bool)

(assert (=> b!494755 (=> (not res!297470) (not e!290281))))

(declare-fun arrayContainsKey!0 (array!32001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494755 (= res!297470 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494756 () Bool)

(assert (=> b!494756 (= e!290280 (not e!290282))))

(declare-fun res!297473 () Bool)

(assert (=> b!494756 (=> res!297473 e!290282)))

(declare-fun lt!224026 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32001 (_ BitVec 32)) SeekEntryResult!3856)

(assert (=> b!494756 (= res!297473 (= lt!224028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224026 (select (store (arr!15382 a!3235) i!1204 k0!2280) j!176) (array!32002 (store (arr!15382 a!3235) i!1204 k0!2280) (size!15746 a!3235)) mask!3524)))))

(declare-fun lt!224030 () (_ BitVec 32))

(assert (=> b!494756 (= lt!224028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224030 (select (arr!15382 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494756 (= lt!224026 (toIndex!0 (select (store (arr!15382 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494756 (= lt!224030 (toIndex!0 (select (arr!15382 a!3235) j!176) mask!3524))))

(assert (=> b!494756 e!290283))

(declare-fun res!297471 () Bool)

(assert (=> b!494756 (=> (not res!297471) (not e!290283))))

(assert (=> b!494756 (= res!297471 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14650 0))(
  ( (Unit!14651) )
))
(declare-fun lt!224027 () Unit!14650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14650)

(assert (=> b!494756 (= lt!224027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45096 res!297467) b!494753))

(assert (= (and b!494753 res!297474) b!494754))

(assert (= (and b!494754 res!297469) b!494748))

(assert (= (and b!494748 res!297476) b!494755))

(assert (= (and b!494755 res!297470) b!494750))

(assert (= (and b!494750 res!297472) b!494747))

(assert (= (and b!494747 res!297468) b!494751))

(assert (= (and b!494751 res!297475) b!494756))

(assert (= (and b!494756 res!297471) b!494746))

(assert (= (and b!494756 (not res!297473)) b!494749))

(assert (= (and b!494749 (not res!297466)) b!494752))

(declare-fun m!475923 () Bool)

(assert (=> start!45096 m!475923))

(declare-fun m!475925 () Bool)

(assert (=> start!45096 m!475925))

(declare-fun m!475927 () Bool)

(assert (=> b!494752 m!475927))

(declare-fun m!475929 () Bool)

(assert (=> b!494752 m!475929))

(declare-fun m!475931 () Bool)

(assert (=> b!494756 m!475931))

(declare-fun m!475933 () Bool)

(assert (=> b!494756 m!475933))

(declare-fun m!475935 () Bool)

(assert (=> b!494756 m!475935))

(assert (=> b!494756 m!475929))

(declare-fun m!475937 () Bool)

(assert (=> b!494756 m!475937))

(assert (=> b!494756 m!475929))

(declare-fun m!475939 () Bool)

(assert (=> b!494756 m!475939))

(assert (=> b!494756 m!475935))

(declare-fun m!475941 () Bool)

(assert (=> b!494756 m!475941))

(assert (=> b!494756 m!475929))

(declare-fun m!475943 () Bool)

(assert (=> b!494756 m!475943))

(assert (=> b!494756 m!475935))

(declare-fun m!475945 () Bool)

(assert (=> b!494756 m!475945))

(declare-fun m!475947 () Bool)

(assert (=> b!494751 m!475947))

(declare-fun m!475949 () Bool)

(assert (=> b!494748 m!475949))

(assert (=> b!494746 m!475929))

(assert (=> b!494746 m!475929))

(declare-fun m!475951 () Bool)

(assert (=> b!494746 m!475951))

(declare-fun m!475953 () Bool)

(assert (=> b!494750 m!475953))

(declare-fun m!475955 () Bool)

(assert (=> b!494755 m!475955))

(declare-fun m!475957 () Bool)

(assert (=> b!494747 m!475957))

(assert (=> b!494754 m!475929))

(assert (=> b!494754 m!475929))

(declare-fun m!475959 () Bool)

(assert (=> b!494754 m!475959))

(check-sat (not b!494754) (not b!494747) (not b!494755) (not b!494748) (not b!494751) (not b!494750) (not start!45096) (not b!494756) (not b!494746))
(check-sat)
