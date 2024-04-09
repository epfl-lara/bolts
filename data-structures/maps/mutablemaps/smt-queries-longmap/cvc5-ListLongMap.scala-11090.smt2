; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129594 () Bool)

(assert start!129594)

(declare-fun b!1520845 () Bool)

(declare-fun res!1040211 () Bool)

(declare-fun e!848360 () Bool)

(assert (=> b!1520845 (=> (not res!1040211) (not e!848360))))

(declare-datatypes ((array!101196 0))(
  ( (array!101197 (arr!48826 (Array (_ BitVec 32) (_ BitVec 64))) (size!49377 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101196)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520845 (= res!1040211 (validKeyInArray!0 (select (arr!48826 a!2804) j!70)))))

(declare-fun b!1520846 () Bool)

(declare-fun res!1040206 () Bool)

(assert (=> b!1520846 (=> (not res!1040206) (not e!848360))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101196 (_ BitVec 32)) Bool)

(assert (=> b!1520846 (= res!1040206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520847 () Bool)

(assert (=> b!1520847 (= e!848360 false)))

(declare-fun lt!659212 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520847 (= lt!659212 (toIndex!0 (select (arr!48826 a!2804) j!70) mask!2512))))

(declare-fun b!1520848 () Bool)

(declare-fun res!1040210 () Bool)

(assert (=> b!1520848 (=> (not res!1040210) (not e!848360))))

(declare-datatypes ((List!35489 0))(
  ( (Nil!35486) (Cons!35485 (h!36907 (_ BitVec 64)) (t!50190 List!35489)) )
))
(declare-fun arrayNoDuplicates!0 (array!101196 (_ BitVec 32) List!35489) Bool)

(assert (=> b!1520848 (= res!1040210 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35486))))

(declare-fun b!1520849 () Bool)

(declare-fun res!1040208 () Bool)

(assert (=> b!1520849 (=> (not res!1040208) (not e!848360))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1520849 (= res!1040208 (and (= (size!49377 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49377 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49377 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1040207 () Bool)

(assert (=> start!129594 (=> (not res!1040207) (not e!848360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129594 (= res!1040207 (validMask!0 mask!2512))))

(assert (=> start!129594 e!848360))

(assert (=> start!129594 true))

(declare-fun array_inv!37771 (array!101196) Bool)

(assert (=> start!129594 (array_inv!37771 a!2804)))

(declare-fun b!1520850 () Bool)

(declare-fun res!1040205 () Bool)

(assert (=> b!1520850 (=> (not res!1040205) (not e!848360))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520850 (= res!1040205 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49377 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49377 a!2804))))))

(declare-fun b!1520851 () Bool)

(declare-fun res!1040209 () Bool)

(assert (=> b!1520851 (=> (not res!1040209) (not e!848360))))

(assert (=> b!1520851 (= res!1040209 (validKeyInArray!0 (select (arr!48826 a!2804) i!961)))))

(assert (= (and start!129594 res!1040207) b!1520849))

(assert (= (and b!1520849 res!1040208) b!1520851))

(assert (= (and b!1520851 res!1040209) b!1520845))

(assert (= (and b!1520845 res!1040211) b!1520846))

(assert (= (and b!1520846 res!1040206) b!1520848))

(assert (= (and b!1520848 res!1040210) b!1520850))

(assert (= (and b!1520850 res!1040205) b!1520847))

(declare-fun m!1404029 () Bool)

(assert (=> b!1520845 m!1404029))

(assert (=> b!1520845 m!1404029))

(declare-fun m!1404031 () Bool)

(assert (=> b!1520845 m!1404031))

(declare-fun m!1404033 () Bool)

(assert (=> b!1520848 m!1404033))

(declare-fun m!1404035 () Bool)

(assert (=> b!1520846 m!1404035))

(declare-fun m!1404037 () Bool)

(assert (=> b!1520851 m!1404037))

(assert (=> b!1520851 m!1404037))

(declare-fun m!1404039 () Bool)

(assert (=> b!1520851 m!1404039))

(assert (=> b!1520847 m!1404029))

(assert (=> b!1520847 m!1404029))

(declare-fun m!1404041 () Bool)

(assert (=> b!1520847 m!1404041))

(declare-fun m!1404043 () Bool)

(assert (=> start!129594 m!1404043))

(declare-fun m!1404045 () Bool)

(assert (=> start!129594 m!1404045))

(push 1)

(assert (not b!1520846))

(assert (not b!1520851))

(assert (not start!129594))

(assert (not b!1520848))

(assert (not b!1520845))

(assert (not b!1520847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

