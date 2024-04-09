; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128522 () Bool)

(assert start!128522)

(declare-fun b!1506455 () Bool)

(declare-fun res!1026849 () Bool)

(declare-fun e!841933 () Bool)

(assert (=> b!1506455 (=> (not res!1026849) (not e!841933))))

(declare-datatypes ((array!100447 0))(
  ( (array!100448 (arr!48462 (Array (_ BitVec 32) (_ BitVec 64))) (size!49013 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100447)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506455 (= res!1026849 (validKeyInArray!0 (select (arr!48462 a!2804) j!70)))))

(declare-fun b!1506456 () Bool)

(assert (=> b!1506456 (= e!841933 false)))

(declare-fun lt!654205 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506456 (= lt!654205 (toIndex!0 (select (arr!48462 a!2804) j!70) mask!2512))))

(declare-fun b!1506457 () Bool)

(declare-fun res!1026855 () Bool)

(assert (=> b!1506457 (=> (not res!1026855) (not e!841933))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506457 (= res!1026855 (validKeyInArray!0 (select (arr!48462 a!2804) i!961)))))

(declare-fun b!1506458 () Bool)

(declare-fun res!1026854 () Bool)

(assert (=> b!1506458 (=> (not res!1026854) (not e!841933))))

(declare-datatypes ((List!35125 0))(
  ( (Nil!35122) (Cons!35121 (h!36522 (_ BitVec 64)) (t!49826 List!35125)) )
))
(declare-fun arrayNoDuplicates!0 (array!100447 (_ BitVec 32) List!35125) Bool)

(assert (=> b!1506458 (= res!1026854 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35122))))

(declare-fun b!1506459 () Bool)

(declare-fun res!1026853 () Bool)

(assert (=> b!1506459 (=> (not res!1026853) (not e!841933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100447 (_ BitVec 32)) Bool)

(assert (=> b!1506459 (= res!1026853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506460 () Bool)

(declare-fun res!1026852 () Bool)

(assert (=> b!1506460 (=> (not res!1026852) (not e!841933))))

(assert (=> b!1506460 (= res!1026852 (and (= (size!49013 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49013 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49013 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1026850 () Bool)

(assert (=> start!128522 (=> (not res!1026850) (not e!841933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128522 (= res!1026850 (validMask!0 mask!2512))))

(assert (=> start!128522 e!841933))

(assert (=> start!128522 true))

(declare-fun array_inv!37407 (array!100447) Bool)

(assert (=> start!128522 (array_inv!37407 a!2804)))

(declare-fun b!1506454 () Bool)

(declare-fun res!1026851 () Bool)

(assert (=> b!1506454 (=> (not res!1026851) (not e!841933))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506454 (= res!1026851 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49013 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49013 a!2804))))))

(assert (= (and start!128522 res!1026850) b!1506460))

(assert (= (and b!1506460 res!1026852) b!1506457))

(assert (= (and b!1506457 res!1026855) b!1506455))

(assert (= (and b!1506455 res!1026849) b!1506459))

(assert (= (and b!1506459 res!1026853) b!1506458))

(assert (= (and b!1506458 res!1026854) b!1506454))

(assert (= (and b!1506454 res!1026851) b!1506456))

(declare-fun m!1389447 () Bool)

(assert (=> b!1506457 m!1389447))

(assert (=> b!1506457 m!1389447))

(declare-fun m!1389449 () Bool)

(assert (=> b!1506457 m!1389449))

(declare-fun m!1389451 () Bool)

(assert (=> start!128522 m!1389451))

(declare-fun m!1389453 () Bool)

(assert (=> start!128522 m!1389453))

(declare-fun m!1389455 () Bool)

(assert (=> b!1506455 m!1389455))

(assert (=> b!1506455 m!1389455))

(declare-fun m!1389457 () Bool)

(assert (=> b!1506455 m!1389457))

(assert (=> b!1506456 m!1389455))

(assert (=> b!1506456 m!1389455))

(declare-fun m!1389459 () Bool)

(assert (=> b!1506456 m!1389459))

(declare-fun m!1389461 () Bool)

(assert (=> b!1506458 m!1389461))

(declare-fun m!1389463 () Bool)

(assert (=> b!1506459 m!1389463))

(push 1)

(assert (not b!1506455))

(assert (not b!1506457))

(assert (not b!1506459))

(assert (not start!128522))

(assert (not b!1506456))

(assert (not b!1506458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

