; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128758 () Bool)

(assert start!128758)

(declare-fun b!1508378 () Bool)

(declare-fun e!842706 () Bool)

(declare-fun e!842708 () Bool)

(assert (=> b!1508378 (= e!842706 e!842708)))

(declare-fun res!1028464 () Bool)

(assert (=> b!1508378 (=> (not res!1028464) (not e!842708))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100566 0))(
  ( (array!100567 (arr!48517 (Array (_ BitVec 32) (_ BitVec 64))) (size!49068 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100566)

(declare-datatypes ((SeekEntryResult!12709 0))(
  ( (MissingZero!12709 (index!53230 (_ BitVec 32))) (Found!12709 (index!53231 (_ BitVec 32))) (Intermediate!12709 (undefined!13521 Bool) (index!53232 (_ BitVec 32)) (x!135002 (_ BitVec 32))) (Undefined!12709) (MissingVacant!12709 (index!53233 (_ BitVec 32))) )
))
(declare-fun lt!654588 () SeekEntryResult!12709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100566 (_ BitVec 32)) SeekEntryResult!12709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508378 (= res!1028464 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48517 a!2804) j!70) mask!2512) (select (arr!48517 a!2804) j!70) a!2804 mask!2512) lt!654588))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508378 (= lt!654588 (Intermediate!12709 false resIndex!21 resX!21))))

(declare-fun b!1508379 () Bool)

(declare-fun res!1028462 () Bool)

(assert (=> b!1508379 (=> (not res!1028462) (not e!842706))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508379 (= res!1028462 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49068 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49068 a!2804))))))

(declare-fun b!1508380 () Bool)

(declare-fun res!1028465 () Bool)

(assert (=> b!1508380 (=> (not res!1028465) (not e!842706))))

(declare-datatypes ((List!35180 0))(
  ( (Nil!35177) (Cons!35176 (h!36586 (_ BitVec 64)) (t!49881 List!35180)) )
))
(declare-fun arrayNoDuplicates!0 (array!100566 (_ BitVec 32) List!35180) Bool)

(assert (=> b!1508380 (= res!1028465 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35177))))

(declare-fun b!1508381 () Bool)

(assert (=> b!1508381 (= e!842708 false)))

(declare-fun lt!654589 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508381 (= lt!654589 (toIndex!0 (select (store (arr!48517 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508382 () Bool)

(declare-fun res!1028459 () Bool)

(assert (=> b!1508382 (=> (not res!1028459) (not e!842706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508382 (= res!1028459 (validKeyInArray!0 (select (arr!48517 a!2804) i!961)))))

(declare-fun b!1508383 () Bool)

(declare-fun res!1028458 () Bool)

(assert (=> b!1508383 (=> (not res!1028458) (not e!842706))))

(assert (=> b!1508383 (= res!1028458 (validKeyInArray!0 (select (arr!48517 a!2804) j!70)))))

(declare-fun b!1508384 () Bool)

(declare-fun res!1028466 () Bool)

(assert (=> b!1508384 (=> (not res!1028466) (not e!842706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100566 (_ BitVec 32)) Bool)

(assert (=> b!1508384 (= res!1028466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1028463 () Bool)

(assert (=> start!128758 (=> (not res!1028463) (not e!842706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128758 (= res!1028463 (validMask!0 mask!2512))))

(assert (=> start!128758 e!842706))

(assert (=> start!128758 true))

(declare-fun array_inv!37462 (array!100566) Bool)

(assert (=> start!128758 (array_inv!37462 a!2804)))

(declare-fun b!1508385 () Bool)

(declare-fun res!1028461 () Bool)

(assert (=> b!1508385 (=> (not res!1028461) (not e!842706))))

(assert (=> b!1508385 (= res!1028461 (and (= (size!49068 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49068 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49068 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508386 () Bool)

(declare-fun res!1028460 () Bool)

(assert (=> b!1508386 (=> (not res!1028460) (not e!842708))))

(assert (=> b!1508386 (= res!1028460 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48517 a!2804) j!70) a!2804 mask!2512) lt!654588))))

(assert (= (and start!128758 res!1028463) b!1508385))

(assert (= (and b!1508385 res!1028461) b!1508382))

(assert (= (and b!1508382 res!1028459) b!1508383))

(assert (= (and b!1508383 res!1028458) b!1508384))

(assert (= (and b!1508384 res!1028466) b!1508380))

(assert (= (and b!1508380 res!1028465) b!1508379))

(assert (= (and b!1508379 res!1028462) b!1508378))

(assert (= (and b!1508378 res!1028464) b!1508386))

(assert (= (and b!1508386 res!1028460) b!1508381))

(declare-fun m!1390941 () Bool)

(assert (=> b!1508383 m!1390941))

(assert (=> b!1508383 m!1390941))

(declare-fun m!1390943 () Bool)

(assert (=> b!1508383 m!1390943))

(declare-fun m!1390945 () Bool)

(assert (=> b!1508381 m!1390945))

(declare-fun m!1390947 () Bool)

(assert (=> b!1508381 m!1390947))

(assert (=> b!1508381 m!1390947))

(declare-fun m!1390949 () Bool)

(assert (=> b!1508381 m!1390949))

(declare-fun m!1390951 () Bool)

(assert (=> b!1508384 m!1390951))

(declare-fun m!1390953 () Bool)

(assert (=> start!128758 m!1390953))

(declare-fun m!1390955 () Bool)

(assert (=> start!128758 m!1390955))

(assert (=> b!1508378 m!1390941))

(assert (=> b!1508378 m!1390941))

(declare-fun m!1390957 () Bool)

(assert (=> b!1508378 m!1390957))

(assert (=> b!1508378 m!1390957))

(assert (=> b!1508378 m!1390941))

(declare-fun m!1390959 () Bool)

(assert (=> b!1508378 m!1390959))

(declare-fun m!1390961 () Bool)

(assert (=> b!1508382 m!1390961))

(assert (=> b!1508382 m!1390961))

(declare-fun m!1390963 () Bool)

(assert (=> b!1508382 m!1390963))

(declare-fun m!1390965 () Bool)

(assert (=> b!1508380 m!1390965))

(assert (=> b!1508386 m!1390941))

(assert (=> b!1508386 m!1390941))

(declare-fun m!1390967 () Bool)

(assert (=> b!1508386 m!1390967))

(push 1)

(assert (not b!1508386))

(assert (not b!1508382))

