; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120366 () Bool)

(assert start!120366)

(declare-fun b!1400301 () Bool)

(declare-fun res!938921 () Bool)

(declare-fun e!792851 () Bool)

(assert (=> b!1400301 (=> (not res!938921) (not e!792851))))

(declare-datatypes ((array!95693 0))(
  ( (array!95694 (arr!46193 (Array (_ BitVec 32) (_ BitVec 64))) (size!46744 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95693)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400301 (= res!938921 (validKeyInArray!0 (select (arr!46193 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1400302 () Bool)

(declare-fun e!792845 () Bool)

(declare-datatypes ((SeekEntryResult!10532 0))(
  ( (MissingZero!10532 (index!44504 (_ BitVec 32))) (Found!10532 (index!44505 (_ BitVec 32))) (Intermediate!10532 (undefined!11344 Bool) (index!44506 (_ BitVec 32)) (x!126154 (_ BitVec 32))) (Undefined!10532) (MissingVacant!10532 (index!44507 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95693 (_ BitVec 32)) SeekEntryResult!10532)

(assert (=> b!1400302 (= e!792845 (= (seekEntryOrOpen!0 (select (arr!46193 a!2901) j!112) a!2901 mask!2840) (Found!10532 j!112)))))

(declare-fun b!1400303 () Bool)

(declare-fun res!938927 () Bool)

(assert (=> b!1400303 (=> (not res!938927) (not e!792851))))

(declare-datatypes ((List!32892 0))(
  ( (Nil!32889) (Cons!32888 (h!34136 (_ BitVec 64)) (t!47593 List!32892)) )
))
(declare-fun arrayNoDuplicates!0 (array!95693 (_ BitVec 32) List!32892) Bool)

(assert (=> b!1400303 (= res!938927 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32889))))

(declare-fun b!1400304 () Bool)

(declare-fun e!792850 () Bool)

(assert (=> b!1400304 (= e!792851 (not e!792850))))

(declare-fun res!938924 () Bool)

(assert (=> b!1400304 (=> res!938924 e!792850)))

(declare-fun lt!616108 () SeekEntryResult!10532)

(get-info :version)

(assert (=> b!1400304 (= res!938924 (or (not ((_ is Intermediate!10532) lt!616108)) (undefined!11344 lt!616108)))))

(assert (=> b!1400304 e!792845))

(declare-fun res!938926 () Bool)

(assert (=> b!1400304 (=> (not res!938926) (not e!792845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95693 (_ BitVec 32)) Bool)

(assert (=> b!1400304 (= res!938926 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47018 0))(
  ( (Unit!47019) )
))
(declare-fun lt!616109 () Unit!47018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47018)

(assert (=> b!1400304 (= lt!616109 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616110 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95693 (_ BitVec 32)) SeekEntryResult!10532)

(assert (=> b!1400304 (= lt!616108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616110 (select (arr!46193 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400304 (= lt!616110 (toIndex!0 (select (arr!46193 a!2901) j!112) mask!2840))))

(declare-fun b!1400305 () Bool)

(declare-fun res!938922 () Bool)

(assert (=> b!1400305 (=> (not res!938922) (not e!792851))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400305 (= res!938922 (validKeyInArray!0 (select (arr!46193 a!2901) i!1037)))))

(declare-fun e!792849 () Bool)

(declare-fun b!1400307 () Bool)

(declare-fun lt!616111 () array!95693)

(declare-fun lt!616104 () (_ BitVec 64))

(declare-fun lt!616106 () SeekEntryResult!10532)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95693 (_ BitVec 32)) SeekEntryResult!10532)

(assert (=> b!1400307 (= e!792849 (= (seekEntryOrOpen!0 lt!616104 lt!616111 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126154 lt!616106) (index!44506 lt!616106) (index!44506 lt!616106) (select (arr!46193 a!2901) j!112) lt!616111 mask!2840)))))

(declare-fun b!1400308 () Bool)

(declare-fun e!792847 () Bool)

(declare-fun e!792846 () Bool)

(assert (=> b!1400308 (= e!792847 e!792846)))

(declare-fun res!938931 () Bool)

(assert (=> b!1400308 (=> res!938931 e!792846)))

(assert (=> b!1400308 (= res!938931 (or (bvslt (x!126154 lt!616108) #b00000000000000000000000000000000) (bvsgt (x!126154 lt!616108) #b01111111111111111111111111111110) (bvslt (x!126154 lt!616106) #b00000000000000000000000000000000) (bvsgt (x!126154 lt!616106) #b01111111111111111111111111111110) (bvslt lt!616110 #b00000000000000000000000000000000) (bvsge lt!616110 (size!46744 a!2901)) (bvslt (index!44506 lt!616108) #b00000000000000000000000000000000) (bvsge (index!44506 lt!616108) (size!46744 a!2901)) (bvslt (index!44506 lt!616106) #b00000000000000000000000000000000) (bvsge (index!44506 lt!616106) (size!46744 a!2901)) (not (= lt!616108 (Intermediate!10532 false (index!44506 lt!616108) (x!126154 lt!616108)))) (not (= lt!616106 (Intermediate!10532 false (index!44506 lt!616106) (x!126154 lt!616106))))))))

(assert (=> b!1400308 e!792849))

(declare-fun res!938923 () Bool)

(assert (=> b!1400308 (=> (not res!938923) (not e!792849))))

(assert (=> b!1400308 (= res!938923 (and (not (undefined!11344 lt!616106)) (= (index!44506 lt!616106) i!1037) (bvslt (x!126154 lt!616106) (x!126154 lt!616108)) (= (select (store (arr!46193 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44506 lt!616106)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616107 () Unit!47018)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47018)

(assert (=> b!1400308 (= lt!616107 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616110 (x!126154 lt!616108) (index!44506 lt!616108) (x!126154 lt!616106) (index!44506 lt!616106) (undefined!11344 lt!616106) mask!2840))))

(declare-fun b!1400309 () Bool)

(assert (=> b!1400309 (= e!792846 true)))

(declare-fun lt!616105 () SeekEntryResult!10532)

(assert (=> b!1400309 (= lt!616105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616110 lt!616104 lt!616111 mask!2840))))

(declare-fun b!1400310 () Bool)

(declare-fun res!938930 () Bool)

(assert (=> b!1400310 (=> (not res!938930) (not e!792851))))

(assert (=> b!1400310 (= res!938930 (and (= (size!46744 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46744 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46744 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400311 () Bool)

(assert (=> b!1400311 (= e!792850 e!792847)))

(declare-fun res!938928 () Bool)

(assert (=> b!1400311 (=> res!938928 e!792847)))

(assert (=> b!1400311 (= res!938928 (or (= lt!616108 lt!616106) (not ((_ is Intermediate!10532) lt!616106))))))

(assert (=> b!1400311 (= lt!616106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616104 mask!2840) lt!616104 lt!616111 mask!2840))))

(assert (=> b!1400311 (= lt!616104 (select (store (arr!46193 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400311 (= lt!616111 (array!95694 (store (arr!46193 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46744 a!2901)))))

(declare-fun b!1400306 () Bool)

(declare-fun res!938929 () Bool)

(assert (=> b!1400306 (=> (not res!938929) (not e!792851))))

(assert (=> b!1400306 (= res!938929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!938925 () Bool)

(assert (=> start!120366 (=> (not res!938925) (not e!792851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120366 (= res!938925 (validMask!0 mask!2840))))

(assert (=> start!120366 e!792851))

(assert (=> start!120366 true))

(declare-fun array_inv!35138 (array!95693) Bool)

(assert (=> start!120366 (array_inv!35138 a!2901)))

(assert (= (and start!120366 res!938925) b!1400310))

(assert (= (and b!1400310 res!938930) b!1400305))

(assert (= (and b!1400305 res!938922) b!1400301))

(assert (= (and b!1400301 res!938921) b!1400306))

(assert (= (and b!1400306 res!938929) b!1400303))

(assert (= (and b!1400303 res!938927) b!1400304))

(assert (= (and b!1400304 res!938926) b!1400302))

(assert (= (and b!1400304 (not res!938924)) b!1400311))

(assert (= (and b!1400311 (not res!938928)) b!1400308))

(assert (= (and b!1400308 res!938923) b!1400307))

(assert (= (and b!1400308 (not res!938931)) b!1400309))

(declare-fun m!1287793 () Bool)

(assert (=> b!1400309 m!1287793))

(declare-fun m!1287795 () Bool)

(assert (=> b!1400303 m!1287795))

(declare-fun m!1287797 () Bool)

(assert (=> b!1400302 m!1287797))

(assert (=> b!1400302 m!1287797))

(declare-fun m!1287799 () Bool)

(assert (=> b!1400302 m!1287799))

(declare-fun m!1287801 () Bool)

(assert (=> b!1400305 m!1287801))

(assert (=> b!1400305 m!1287801))

(declare-fun m!1287803 () Bool)

(assert (=> b!1400305 m!1287803))

(assert (=> b!1400301 m!1287797))

(assert (=> b!1400301 m!1287797))

(declare-fun m!1287805 () Bool)

(assert (=> b!1400301 m!1287805))

(declare-fun m!1287807 () Bool)

(assert (=> b!1400306 m!1287807))

(declare-fun m!1287809 () Bool)

(assert (=> b!1400307 m!1287809))

(assert (=> b!1400307 m!1287797))

(assert (=> b!1400307 m!1287797))

(declare-fun m!1287811 () Bool)

(assert (=> b!1400307 m!1287811))

(declare-fun m!1287813 () Bool)

(assert (=> b!1400311 m!1287813))

(assert (=> b!1400311 m!1287813))

(declare-fun m!1287815 () Bool)

(assert (=> b!1400311 m!1287815))

(declare-fun m!1287817 () Bool)

(assert (=> b!1400311 m!1287817))

(declare-fun m!1287819 () Bool)

(assert (=> b!1400311 m!1287819))

(declare-fun m!1287821 () Bool)

(assert (=> start!120366 m!1287821))

(declare-fun m!1287823 () Bool)

(assert (=> start!120366 m!1287823))

(assert (=> b!1400308 m!1287817))

(declare-fun m!1287825 () Bool)

(assert (=> b!1400308 m!1287825))

(declare-fun m!1287827 () Bool)

(assert (=> b!1400308 m!1287827))

(assert (=> b!1400304 m!1287797))

(declare-fun m!1287829 () Bool)

(assert (=> b!1400304 m!1287829))

(assert (=> b!1400304 m!1287797))

(declare-fun m!1287831 () Bool)

(assert (=> b!1400304 m!1287831))

(assert (=> b!1400304 m!1287797))

(declare-fun m!1287833 () Bool)

(assert (=> b!1400304 m!1287833))

(declare-fun m!1287835 () Bool)

(assert (=> b!1400304 m!1287835))

(check-sat (not b!1400308) (not b!1400305) (not b!1400307) (not b!1400303) (not b!1400306) (not b!1400304) (not b!1400311) (not b!1400302) (not b!1400301) (not b!1400309) (not start!120366))
(check-sat)
