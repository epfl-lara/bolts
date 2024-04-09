; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128296 () Bool)

(assert start!128296)

(declare-fun res!1025958 () Bool)

(declare-fun e!841447 () Bool)

(assert (=> start!128296 (=> (not res!1025958) (not e!841447))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128296 (= res!1025958 (validMask!0 mask!2512))))

(assert (=> start!128296 e!841447))

(assert (=> start!128296 true))

(declare-datatypes ((array!100362 0))(
  ( (array!100363 (arr!48427 (Array (_ BitVec 32) (_ BitVec 64))) (size!48978 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100362)

(declare-fun array_inv!37372 (array!100362) Bool)

(assert (=> start!128296 (array_inv!37372 a!2804)))

(declare-fun b!1505439 () Bool)

(declare-fun res!1025961 () Bool)

(assert (=> b!1505439 (=> (not res!1025961) (not e!841447))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505439 (= res!1025961 (and (= (size!48978 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48978 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48978 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505440 () Bool)

(declare-fun res!1025960 () Bool)

(assert (=> b!1505440 (=> (not res!1025960) (not e!841447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505440 (= res!1025960 (validKeyInArray!0 (select (arr!48427 a!2804) j!70)))))

(declare-fun b!1505441 () Bool)

(assert (=> b!1505441 (= e!841447 (bvsgt #b00000000000000000000000000000000 (size!48978 a!2804)))))

(declare-fun b!1505442 () Bool)

(declare-fun res!1025959 () Bool)

(assert (=> b!1505442 (=> (not res!1025959) (not e!841447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100362 (_ BitVec 32)) Bool)

(assert (=> b!1505442 (= res!1025959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505443 () Bool)

(declare-fun res!1025957 () Bool)

(assert (=> b!1505443 (=> (not res!1025957) (not e!841447))))

(assert (=> b!1505443 (= res!1025957 (validKeyInArray!0 (select (arr!48427 a!2804) i!961)))))

(assert (= (and start!128296 res!1025958) b!1505439))

(assert (= (and b!1505439 res!1025961) b!1505443))

(assert (= (and b!1505443 res!1025957) b!1505440))

(assert (= (and b!1505440 res!1025960) b!1505442))

(assert (= (and b!1505442 res!1025959) b!1505441))

(declare-fun m!1388595 () Bool)

(assert (=> start!128296 m!1388595))

(declare-fun m!1388597 () Bool)

(assert (=> start!128296 m!1388597))

(declare-fun m!1388599 () Bool)

(assert (=> b!1505440 m!1388599))

(assert (=> b!1505440 m!1388599))

(declare-fun m!1388601 () Bool)

(assert (=> b!1505440 m!1388601))

(declare-fun m!1388603 () Bool)

(assert (=> b!1505442 m!1388603))

(declare-fun m!1388605 () Bool)

(assert (=> b!1505443 m!1388605))

(assert (=> b!1505443 m!1388605))

(declare-fun m!1388607 () Bool)

(assert (=> b!1505443 m!1388607))

(push 1)

(assert (not b!1505440))

(assert (not start!128296))

(assert (not b!1505442))

(assert (not b!1505443))

