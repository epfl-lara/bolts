; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45816 () Bool)

(assert start!45816)

(declare-fun b!506887 () Bool)

(declare-fun res!307997 () Bool)

(declare-fun e!296661 () Bool)

(assert (=> b!506887 (=> (not res!307997) (not e!296661))))

(declare-datatypes ((array!32532 0))(
  ( (array!32533 (arr!15643 (Array (_ BitVec 32) (_ BitVec 64))) (size!16007 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32532)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506887 (= res!307997 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!307998 () Bool)

(assert (=> start!45816 (=> (not res!307998) (not e!296661))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45816 (= res!307998 (validMask!0 mask!3524))))

(assert (=> start!45816 e!296661))

(assert (=> start!45816 true))

(declare-fun array_inv!11417 (array!32532) Bool)

(assert (=> start!45816 (array_inv!11417 a!3235)))

(declare-fun b!506888 () Bool)

(declare-fun res!307999 () Bool)

(assert (=> b!506888 (=> (not res!307999) (not e!296661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506888 (= res!307999 (validKeyInArray!0 k0!2280))))

(declare-fun b!506889 () Bool)

(declare-fun e!296664 () Bool)

(assert (=> b!506889 (= e!296661 e!296664)))

(declare-fun res!308002 () Bool)

(assert (=> b!506889 (=> (not res!308002) (not e!296664))))

(declare-datatypes ((SeekEntryResult!4117 0))(
  ( (MissingZero!4117 (index!18656 (_ BitVec 32))) (Found!4117 (index!18657 (_ BitVec 32))) (Intermediate!4117 (undefined!4929 Bool) (index!18658 (_ BitVec 32)) (x!47681 (_ BitVec 32))) (Undefined!4117) (MissingVacant!4117 (index!18659 (_ BitVec 32))) )
))
(declare-fun lt!231409 () SeekEntryResult!4117)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506889 (= res!308002 (or (= lt!231409 (MissingZero!4117 i!1204)) (= lt!231409 (MissingVacant!4117 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32532 (_ BitVec 32)) SeekEntryResult!4117)

(assert (=> b!506889 (= lt!231409 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506890 () Bool)

(declare-fun e!296660 () Bool)

(assert (=> b!506890 (= e!296664 (not e!296660))))

(declare-fun res!308006 () Bool)

(assert (=> b!506890 (=> res!308006 e!296660)))

(declare-fun lt!231406 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!231405 () SeekEntryResult!4117)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32532 (_ BitVec 32)) SeekEntryResult!4117)

(assert (=> b!506890 (= res!308006 (= lt!231405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231406 (select (store (arr!15643 a!3235) i!1204 k0!2280) j!176) (array!32533 (store (arr!15643 a!3235) i!1204 k0!2280) (size!16007 a!3235)) mask!3524)))))

(declare-fun lt!231407 () (_ BitVec 32))

(assert (=> b!506890 (= lt!231405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231407 (select (arr!15643 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506890 (= lt!231406 (toIndex!0 (select (store (arr!15643 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506890 (= lt!231407 (toIndex!0 (select (arr!15643 a!3235) j!176) mask!3524))))

(declare-fun e!296662 () Bool)

(assert (=> b!506890 e!296662))

(declare-fun res!308001 () Bool)

(assert (=> b!506890 (=> (not res!308001) (not e!296662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32532 (_ BitVec 32)) Bool)

(assert (=> b!506890 (= res!308001 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15514 0))(
  ( (Unit!15515) )
))
(declare-fun lt!231410 () Unit!15514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15514)

(assert (=> b!506890 (= lt!231410 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506891 () Bool)

(declare-fun res!307996 () Bool)

(assert (=> b!506891 (=> (not res!307996) (not e!296661))))

(assert (=> b!506891 (= res!307996 (validKeyInArray!0 (select (arr!15643 a!3235) j!176)))))

(declare-fun b!506892 () Bool)

(declare-fun res!308004 () Bool)

(assert (=> b!506892 (=> (not res!308004) (not e!296661))))

(assert (=> b!506892 (= res!308004 (and (= (size!16007 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16007 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16007 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506893 () Bool)

(declare-fun e!296663 () Bool)

(assert (=> b!506893 (= e!296660 e!296663)))

(declare-fun res!308003 () Bool)

(assert (=> b!506893 (=> res!308003 e!296663)))

(declare-fun lt!231408 () Bool)

(assert (=> b!506893 (= res!308003 (or (and (not lt!231408) (undefined!4929 lt!231405)) (and (not lt!231408) (not (undefined!4929 lt!231405)))))))

(get-info :version)

(assert (=> b!506893 (= lt!231408 (not ((_ is Intermediate!4117) lt!231405)))))

(declare-fun b!506894 () Bool)

(declare-fun res!308000 () Bool)

(assert (=> b!506894 (=> (not res!308000) (not e!296664))))

(assert (=> b!506894 (= res!308000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506895 () Bool)

(declare-fun res!308005 () Bool)

(assert (=> b!506895 (=> (not res!308005) (not e!296664))))

(declare-datatypes ((List!9854 0))(
  ( (Nil!9851) (Cons!9850 (h!10727 (_ BitVec 64)) (t!16090 List!9854)) )
))
(declare-fun arrayNoDuplicates!0 (array!32532 (_ BitVec 32) List!9854) Bool)

(assert (=> b!506895 (= res!308005 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9851))))

(declare-fun b!506896 () Bool)

(assert (=> b!506896 (= e!296663 true)))

(assert (=> b!506896 false))

(declare-fun b!506897 () Bool)

(assert (=> b!506897 (= e!296662 (= (seekEntryOrOpen!0 (select (arr!15643 a!3235) j!176) a!3235 mask!3524) (Found!4117 j!176)))))

(assert (= (and start!45816 res!307998) b!506892))

(assert (= (and b!506892 res!308004) b!506891))

(assert (= (and b!506891 res!307996) b!506888))

(assert (= (and b!506888 res!307999) b!506887))

(assert (= (and b!506887 res!307997) b!506889))

(assert (= (and b!506889 res!308002) b!506894))

(assert (= (and b!506894 res!308000) b!506895))

(assert (= (and b!506895 res!308005) b!506890))

(assert (= (and b!506890 res!308001) b!506897))

(assert (= (and b!506890 (not res!308006)) b!506893))

(assert (= (and b!506893 (not res!308003)) b!506896))

(declare-fun m!487645 () Bool)

(assert (=> b!506887 m!487645))

(declare-fun m!487647 () Bool)

(assert (=> b!506897 m!487647))

(assert (=> b!506897 m!487647))

(declare-fun m!487649 () Bool)

(assert (=> b!506897 m!487649))

(declare-fun m!487651 () Bool)

(assert (=> start!45816 m!487651))

(declare-fun m!487653 () Bool)

(assert (=> start!45816 m!487653))

(declare-fun m!487655 () Bool)

(assert (=> b!506889 m!487655))

(declare-fun m!487657 () Bool)

(assert (=> b!506895 m!487657))

(declare-fun m!487659 () Bool)

(assert (=> b!506894 m!487659))

(assert (=> b!506891 m!487647))

(assert (=> b!506891 m!487647))

(declare-fun m!487661 () Bool)

(assert (=> b!506891 m!487661))

(declare-fun m!487663 () Bool)

(assert (=> b!506890 m!487663))

(declare-fun m!487665 () Bool)

(assert (=> b!506890 m!487665))

(assert (=> b!506890 m!487647))

(declare-fun m!487667 () Bool)

(assert (=> b!506890 m!487667))

(assert (=> b!506890 m!487647))

(declare-fun m!487669 () Bool)

(assert (=> b!506890 m!487669))

(assert (=> b!506890 m!487647))

(declare-fun m!487671 () Bool)

(assert (=> b!506890 m!487671))

(assert (=> b!506890 m!487665))

(declare-fun m!487673 () Bool)

(assert (=> b!506890 m!487673))

(assert (=> b!506890 m!487665))

(declare-fun m!487675 () Bool)

(assert (=> b!506890 m!487675))

(declare-fun m!487677 () Bool)

(assert (=> b!506890 m!487677))

(declare-fun m!487679 () Bool)

(assert (=> b!506888 m!487679))

(check-sat (not start!45816) (not b!506894) (not b!506897) (not b!506887) (not b!506888) (not b!506890) (not b!506889) (not b!506895) (not b!506891))
(check-sat)
