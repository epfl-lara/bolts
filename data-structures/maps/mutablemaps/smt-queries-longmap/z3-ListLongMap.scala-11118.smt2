; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129906 () Bool)

(assert start!129906)

(declare-fun b!1524144 () Bool)

(declare-fun e!849690 () Bool)

(declare-fun e!849691 () Bool)

(assert (=> b!1524144 (= e!849690 e!849691)))

(declare-fun res!1042935 () Bool)

(assert (=> b!1524144 (=> (not res!1042935) (not e!849691))))

(declare-datatypes ((SeekEntryResult!13097 0))(
  ( (MissingZero!13097 (index!54782 (_ BitVec 32))) (Found!13097 (index!54783 (_ BitVec 32))) (Intermediate!13097 (undefined!13909 Bool) (index!54784 (_ BitVec 32)) (x!136480 (_ BitVec 32))) (Undefined!13097) (MissingVacant!13097 (index!54785 (_ BitVec 32))) )
))
(declare-fun lt!660193 () SeekEntryResult!13097)

(declare-fun lt!660192 () SeekEntryResult!13097)

(assert (=> b!1524144 (= res!1042935 (= lt!660193 lt!660192))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524144 (= lt!660192 (Intermediate!13097 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101372 0))(
  ( (array!101373 (arr!48911 (Array (_ BitVec 32) (_ BitVec 64))) (size!49462 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101372)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101372 (_ BitVec 32)) SeekEntryResult!13097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524144 (= lt!660193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48911 a!2804) j!70) mask!2512) (select (arr!48911 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524146 () Bool)

(declare-fun res!1042943 () Bool)

(assert (=> b!1524146 (=> (not res!1042943) (not e!849690))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524146 (= res!1042943 (and (= (size!49462 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49462 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49462 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524147 () Bool)

(declare-fun res!1042939 () Bool)

(assert (=> b!1524147 (=> (not res!1042939) (not e!849690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101372 (_ BitVec 32)) Bool)

(assert (=> b!1524147 (= res!1042939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524148 () Bool)

(declare-fun res!1042944 () Bool)

(assert (=> b!1524148 (=> (not res!1042944) (not e!849690))))

(declare-datatypes ((List!35574 0))(
  ( (Nil!35571) (Cons!35570 (h!36998 (_ BitVec 64)) (t!50275 List!35574)) )
))
(declare-fun arrayNoDuplicates!0 (array!101372 (_ BitVec 32) List!35574) Bool)

(assert (=> b!1524148 (= res!1042944 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35571))))

(declare-fun b!1524149 () Bool)

(declare-fun res!1042942 () Bool)

(assert (=> b!1524149 (=> (not res!1042942) (not e!849690))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524149 (= res!1042942 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49462 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49462 a!2804))))))

(declare-fun b!1524150 () Bool)

(assert (=> b!1524150 (= e!849691 (not true))))

(declare-fun e!849692 () Bool)

(assert (=> b!1524150 e!849692))

(declare-fun res!1042934 () Bool)

(assert (=> b!1524150 (=> (not res!1042934) (not e!849692))))

(assert (=> b!1524150 (= res!1042934 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50934 0))(
  ( (Unit!50935) )
))
(declare-fun lt!660191 () Unit!50934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50934)

(assert (=> b!1524150 (= lt!660191 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524151 () Bool)

(declare-fun res!1042940 () Bool)

(assert (=> b!1524151 (=> (not res!1042940) (not e!849691))))

(assert (=> b!1524151 (= res!1042940 (= lt!660193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48911 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48911 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101373 (store (arr!48911 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49462 a!2804)) mask!2512)))))

(declare-fun b!1524152 () Bool)

(declare-fun res!1042941 () Bool)

(assert (=> b!1524152 (=> (not res!1042941) (not e!849690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524152 (= res!1042941 (validKeyInArray!0 (select (arr!48911 a!2804) j!70)))))

(declare-fun b!1524145 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101372 (_ BitVec 32)) SeekEntryResult!13097)

(assert (=> b!1524145 (= e!849692 (= (seekEntry!0 (select (arr!48911 a!2804) j!70) a!2804 mask!2512) (Found!13097 j!70)))))

(declare-fun res!1042938 () Bool)

(assert (=> start!129906 (=> (not res!1042938) (not e!849690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129906 (= res!1042938 (validMask!0 mask!2512))))

(assert (=> start!129906 e!849690))

(assert (=> start!129906 true))

(declare-fun array_inv!37856 (array!101372) Bool)

(assert (=> start!129906 (array_inv!37856 a!2804)))

(declare-fun b!1524153 () Bool)

(declare-fun res!1042937 () Bool)

(assert (=> b!1524153 (=> (not res!1042937) (not e!849690))))

(assert (=> b!1524153 (= res!1042937 (validKeyInArray!0 (select (arr!48911 a!2804) i!961)))))

(declare-fun b!1524154 () Bool)

(declare-fun res!1042936 () Bool)

(assert (=> b!1524154 (=> (not res!1042936) (not e!849691))))

(assert (=> b!1524154 (= res!1042936 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48911 a!2804) j!70) a!2804 mask!2512) lt!660192))))

(assert (= (and start!129906 res!1042938) b!1524146))

(assert (= (and b!1524146 res!1042943) b!1524153))

(assert (= (and b!1524153 res!1042937) b!1524152))

(assert (= (and b!1524152 res!1042941) b!1524147))

(assert (= (and b!1524147 res!1042939) b!1524148))

(assert (= (and b!1524148 res!1042944) b!1524149))

(assert (= (and b!1524149 res!1042942) b!1524144))

(assert (= (and b!1524144 res!1042935) b!1524154))

(assert (= (and b!1524154 res!1042936) b!1524151))

(assert (= (and b!1524151 res!1042940) b!1524150))

(assert (= (and b!1524150 res!1042934) b!1524145))

(declare-fun m!1407225 () Bool)

(assert (=> b!1524154 m!1407225))

(assert (=> b!1524154 m!1407225))

(declare-fun m!1407227 () Bool)

(assert (=> b!1524154 m!1407227))

(declare-fun m!1407229 () Bool)

(assert (=> b!1524147 m!1407229))

(assert (=> b!1524144 m!1407225))

(assert (=> b!1524144 m!1407225))

(declare-fun m!1407231 () Bool)

(assert (=> b!1524144 m!1407231))

(assert (=> b!1524144 m!1407231))

(assert (=> b!1524144 m!1407225))

(declare-fun m!1407233 () Bool)

(assert (=> b!1524144 m!1407233))

(declare-fun m!1407235 () Bool)

(assert (=> b!1524148 m!1407235))

(declare-fun m!1407237 () Bool)

(assert (=> start!129906 m!1407237))

(declare-fun m!1407239 () Bool)

(assert (=> start!129906 m!1407239))

(assert (=> b!1524152 m!1407225))

(assert (=> b!1524152 m!1407225))

(declare-fun m!1407241 () Bool)

(assert (=> b!1524152 m!1407241))

(declare-fun m!1407243 () Bool)

(assert (=> b!1524151 m!1407243))

(declare-fun m!1407245 () Bool)

(assert (=> b!1524151 m!1407245))

(assert (=> b!1524151 m!1407245))

(declare-fun m!1407247 () Bool)

(assert (=> b!1524151 m!1407247))

(assert (=> b!1524151 m!1407247))

(assert (=> b!1524151 m!1407245))

(declare-fun m!1407249 () Bool)

(assert (=> b!1524151 m!1407249))

(declare-fun m!1407251 () Bool)

(assert (=> b!1524153 m!1407251))

(assert (=> b!1524153 m!1407251))

(declare-fun m!1407253 () Bool)

(assert (=> b!1524153 m!1407253))

(assert (=> b!1524145 m!1407225))

(assert (=> b!1524145 m!1407225))

(declare-fun m!1407255 () Bool)

(assert (=> b!1524145 m!1407255))

(declare-fun m!1407257 () Bool)

(assert (=> b!1524150 m!1407257))

(declare-fun m!1407259 () Bool)

(assert (=> b!1524150 m!1407259))

(check-sat (not b!1524153) (not b!1524144) (not b!1524148) (not b!1524150) (not b!1524151) (not b!1524152) (not b!1524147) (not start!129906) (not b!1524154) (not b!1524145))
(check-sat)
