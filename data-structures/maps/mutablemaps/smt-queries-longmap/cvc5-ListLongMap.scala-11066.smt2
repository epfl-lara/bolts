; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129274 () Bool)

(assert start!129274)

(declare-fun e!846519 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun b!1517170 () Bool)

(declare-datatypes ((array!101043 0))(
  ( (array!101044 (arr!48754 (Array (_ BitVec 32) (_ BitVec 64))) (size!49305 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101043)

(declare-datatypes ((SeekEntryResult!12946 0))(
  ( (MissingZero!12946 (index!54178 (_ BitVec 32))) (Found!12946 (index!54179 (_ BitVec 32))) (Intermediate!12946 (undefined!13758 Bool) (index!54180 (_ BitVec 32)) (x!135877 (_ BitVec 32))) (Undefined!12946) (MissingVacant!12946 (index!54181 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101043 (_ BitVec 32)) SeekEntryResult!12946)

(assert (=> b!1517170 (= e!846519 (= (seekEntry!0 (select (arr!48754 a!2804) j!70) a!2804 mask!2512) (Found!12946 j!70)))))

(declare-fun res!1037147 () Bool)

(declare-fun e!846516 () Bool)

(assert (=> start!129274 (=> (not res!1037147) (not e!846516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129274 (= res!1037147 (validMask!0 mask!2512))))

(assert (=> start!129274 e!846516))

(assert (=> start!129274 true))

(declare-fun array_inv!37699 (array!101043) Bool)

(assert (=> start!129274 (array_inv!37699 a!2804)))

(declare-fun b!1517171 () Bool)

(declare-fun res!1037145 () Bool)

(assert (=> b!1517171 (=> (not res!1037145) (not e!846516))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517171 (= res!1037145 (validKeyInArray!0 (select (arr!48754 a!2804) i!961)))))

(declare-fun b!1517172 () Bool)

(declare-fun res!1037149 () Bool)

(declare-fun e!846517 () Bool)

(assert (=> b!1517172 (=> (not res!1037149) (not e!846517))))

(declare-fun lt!657659 () SeekEntryResult!12946)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101043 (_ BitVec 32)) SeekEntryResult!12946)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517172 (= res!1037149 (= lt!657659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48754 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48754 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101044 (store (arr!48754 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49305 a!2804)) mask!2512)))))

(declare-fun b!1517173 () Bool)

(assert (=> b!1517173 (= e!846516 e!846517)))

(declare-fun res!1037146 () Bool)

(assert (=> b!1517173 (=> (not res!1037146) (not e!846517))))

(declare-fun lt!657660 () SeekEntryResult!12946)

(assert (=> b!1517173 (= res!1037146 (= lt!657659 lt!657660))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517173 (= lt!657660 (Intermediate!12946 false resIndex!21 resX!21))))

(assert (=> b!1517173 (= lt!657659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48754 a!2804) j!70) mask!2512) (select (arr!48754 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517174 () Bool)

(declare-fun e!846518 () Bool)

(declare-fun e!846520 () Bool)

(assert (=> b!1517174 (= e!846518 e!846520)))

(declare-fun res!1037150 () Bool)

(assert (=> b!1517174 (=> res!1037150 e!846520)))

(declare-fun lt!657661 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517174 (= res!1037150 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657661 #b00000000000000000000000000000000) (bvsge lt!657661 (size!49305 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517174 (= lt!657661 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517175 () Bool)

(declare-fun res!1037156 () Bool)

(assert (=> b!1517175 (=> (not res!1037156) (not e!846516))))

(assert (=> b!1517175 (= res!1037156 (and (= (size!49305 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49305 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49305 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517176 () Bool)

(declare-fun res!1037152 () Bool)

(assert (=> b!1517176 (=> (not res!1037152) (not e!846516))))

(declare-datatypes ((List!35417 0))(
  ( (Nil!35414) (Cons!35413 (h!36826 (_ BitVec 64)) (t!50118 List!35417)) )
))
(declare-fun arrayNoDuplicates!0 (array!101043 (_ BitVec 32) List!35417) Bool)

(assert (=> b!1517176 (= res!1037152 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35414))))

(declare-fun b!1517177 () Bool)

(declare-fun res!1037154 () Bool)

(assert (=> b!1517177 (=> (not res!1037154) (not e!846516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101043 (_ BitVec 32)) Bool)

(assert (=> b!1517177 (= res!1037154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517178 () Bool)

(declare-fun res!1037148 () Bool)

(assert (=> b!1517178 (=> (not res!1037148) (not e!846516))))

(assert (=> b!1517178 (= res!1037148 (validKeyInArray!0 (select (arr!48754 a!2804) j!70)))))

(declare-fun b!1517179 () Bool)

(declare-fun res!1037151 () Bool)

(assert (=> b!1517179 (=> (not res!1037151) (not e!846517))))

(assert (=> b!1517179 (= res!1037151 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48754 a!2804) j!70) a!2804 mask!2512) lt!657660))))

(declare-fun b!1517180 () Bool)

(assert (=> b!1517180 (= e!846517 (not e!846518))))

(declare-fun res!1037155 () Bool)

(assert (=> b!1517180 (=> res!1037155 e!846518)))

(assert (=> b!1517180 (= res!1037155 (or (not (= (select (arr!48754 a!2804) j!70) (select (store (arr!48754 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517180 e!846519))

(declare-fun res!1037157 () Bool)

(assert (=> b!1517180 (=> (not res!1037157) (not e!846519))))

(assert (=> b!1517180 (= res!1037157 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50716 0))(
  ( (Unit!50717) )
))
(declare-fun lt!657658 () Unit!50716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50716)

(assert (=> b!1517180 (= lt!657658 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517181 () Bool)

(declare-fun res!1037153 () Bool)

(assert (=> b!1517181 (=> (not res!1037153) (not e!846516))))

(assert (=> b!1517181 (= res!1037153 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49305 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49305 a!2804))))))

(declare-fun b!1517182 () Bool)

(assert (=> b!1517182 (= e!846520 true)))

(declare-fun lt!657657 () SeekEntryResult!12946)

(assert (=> b!1517182 (= lt!657657 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657661 (select (arr!48754 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129274 res!1037147) b!1517175))

(assert (= (and b!1517175 res!1037156) b!1517171))

(assert (= (and b!1517171 res!1037145) b!1517178))

(assert (= (and b!1517178 res!1037148) b!1517177))

(assert (= (and b!1517177 res!1037154) b!1517176))

(assert (= (and b!1517176 res!1037152) b!1517181))

(assert (= (and b!1517181 res!1037153) b!1517173))

(assert (= (and b!1517173 res!1037146) b!1517179))

(assert (= (and b!1517179 res!1037151) b!1517172))

(assert (= (and b!1517172 res!1037149) b!1517180))

(assert (= (and b!1517180 res!1037157) b!1517170))

(assert (= (and b!1517180 (not res!1037155)) b!1517174))

(assert (= (and b!1517174 (not res!1037150)) b!1517182))

(declare-fun m!1400511 () Bool)

(assert (=> b!1517180 m!1400511))

(declare-fun m!1400513 () Bool)

(assert (=> b!1517180 m!1400513))

(declare-fun m!1400515 () Bool)

(assert (=> b!1517180 m!1400515))

(declare-fun m!1400517 () Bool)

(assert (=> b!1517180 m!1400517))

(declare-fun m!1400519 () Bool)

(assert (=> b!1517180 m!1400519))

(declare-fun m!1400521 () Bool)

(assert (=> b!1517174 m!1400521))

(assert (=> b!1517182 m!1400511))

(assert (=> b!1517182 m!1400511))

(declare-fun m!1400523 () Bool)

(assert (=> b!1517182 m!1400523))

(assert (=> b!1517173 m!1400511))

(assert (=> b!1517173 m!1400511))

(declare-fun m!1400525 () Bool)

(assert (=> b!1517173 m!1400525))

(assert (=> b!1517173 m!1400525))

(assert (=> b!1517173 m!1400511))

(declare-fun m!1400527 () Bool)

(assert (=> b!1517173 m!1400527))

(declare-fun m!1400529 () Bool)

(assert (=> b!1517177 m!1400529))

(assert (=> b!1517170 m!1400511))

(assert (=> b!1517170 m!1400511))

(declare-fun m!1400531 () Bool)

(assert (=> b!1517170 m!1400531))

(assert (=> b!1517178 m!1400511))

(assert (=> b!1517178 m!1400511))

(declare-fun m!1400533 () Bool)

(assert (=> b!1517178 m!1400533))

(assert (=> b!1517179 m!1400511))

(assert (=> b!1517179 m!1400511))

(declare-fun m!1400535 () Bool)

(assert (=> b!1517179 m!1400535))

(assert (=> b!1517172 m!1400515))

(assert (=> b!1517172 m!1400517))

(assert (=> b!1517172 m!1400517))

(declare-fun m!1400537 () Bool)

(assert (=> b!1517172 m!1400537))

(assert (=> b!1517172 m!1400537))

(assert (=> b!1517172 m!1400517))

(declare-fun m!1400539 () Bool)

(assert (=> b!1517172 m!1400539))

(declare-fun m!1400541 () Bool)

(assert (=> b!1517171 m!1400541))

(assert (=> b!1517171 m!1400541))

(declare-fun m!1400543 () Bool)

(assert (=> b!1517171 m!1400543))

(declare-fun m!1400545 () Bool)

(assert (=> start!129274 m!1400545))

(declare-fun m!1400547 () Bool)

(assert (=> start!129274 m!1400547))

(declare-fun m!1400549 () Bool)

(assert (=> b!1517176 m!1400549))

(push 1)

