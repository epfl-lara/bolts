; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128692 () Bool)

(assert start!128692)

(declare-fun b!1507865 () Bool)

(declare-fun e!842476 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507865 (= e!842476 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1507866 () Bool)

(declare-fun res!1028052 () Bool)

(declare-fun e!842475 () Bool)

(assert (=> b!1507866 (=> (not res!1028052) (not e!842475))))

(declare-datatypes ((array!100539 0))(
  ( (array!100540 (arr!48505 (Array (_ BitVec 32) (_ BitVec 64))) (size!49056 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100539)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507866 (= res!1028052 (validKeyInArray!0 (select (arr!48505 a!2804) i!961)))))

(declare-fun b!1507867 () Bool)

(declare-fun res!1028057 () Bool)

(assert (=> b!1507867 (=> (not res!1028057) (not e!842476))))

(declare-datatypes ((SeekEntryResult!12697 0))(
  ( (MissingZero!12697 (index!53182 (_ BitVec 32))) (Found!12697 (index!53183 (_ BitVec 32))) (Intermediate!12697 (undefined!13509 Bool) (index!53184 (_ BitVec 32)) (x!134952 (_ BitVec 32))) (Undefined!12697) (MissingVacant!12697 (index!53185 (_ BitVec 32))) )
))
(declare-fun lt!654463 () SeekEntryResult!12697)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100539 (_ BitVec 32)) SeekEntryResult!12697)

(assert (=> b!1507867 (= res!1028057 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48505 a!2804) j!70) a!2804 mask!2512) lt!654463))))

(declare-fun b!1507868 () Bool)

(declare-fun res!1028053 () Bool)

(assert (=> b!1507868 (=> (not res!1028053) (not e!842475))))

(assert (=> b!1507868 (= res!1028053 (and (= (size!49056 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49056 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49056 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1028058 () Bool)

(assert (=> start!128692 (=> (not res!1028058) (not e!842475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128692 (= res!1028058 (validMask!0 mask!2512))))

(assert (=> start!128692 e!842475))

(assert (=> start!128692 true))

(declare-fun array_inv!37450 (array!100539) Bool)

(assert (=> start!128692 (array_inv!37450 a!2804)))

(declare-fun b!1507869 () Bool)

(declare-fun res!1028055 () Bool)

(assert (=> b!1507869 (=> (not res!1028055) (not e!842475))))

(declare-datatypes ((List!35168 0))(
  ( (Nil!35165) (Cons!35164 (h!36571 (_ BitVec 64)) (t!49869 List!35168)) )
))
(declare-fun arrayNoDuplicates!0 (array!100539 (_ BitVec 32) List!35168) Bool)

(assert (=> b!1507869 (= res!1028055 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35165))))

(declare-fun b!1507870 () Bool)

(declare-fun res!1028050 () Bool)

(assert (=> b!1507870 (=> (not res!1028050) (not e!842475))))

(assert (=> b!1507870 (= res!1028050 (validKeyInArray!0 (select (arr!48505 a!2804) j!70)))))

(declare-fun b!1507871 () Bool)

(assert (=> b!1507871 (= e!842475 e!842476)))

(declare-fun res!1028056 () Bool)

(assert (=> b!1507871 (=> (not res!1028056) (not e!842476))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507871 (= res!1028056 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48505 a!2804) j!70) mask!2512) (select (arr!48505 a!2804) j!70) a!2804 mask!2512) lt!654463))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1507871 (= lt!654463 (Intermediate!12697 false resIndex!21 resX!21))))

(declare-fun b!1507872 () Bool)

(declare-fun res!1028054 () Bool)

(assert (=> b!1507872 (=> (not res!1028054) (not e!842475))))

(assert (=> b!1507872 (= res!1028054 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49056 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49056 a!2804))))))

(declare-fun b!1507873 () Bool)

(declare-fun res!1028051 () Bool)

(assert (=> b!1507873 (=> (not res!1028051) (not e!842475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100539 (_ BitVec 32)) Bool)

(assert (=> b!1507873 (= res!1028051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128692 res!1028058) b!1507868))

(assert (= (and b!1507868 res!1028053) b!1507866))

(assert (= (and b!1507866 res!1028052) b!1507870))

(assert (= (and b!1507870 res!1028050) b!1507873))

(assert (= (and b!1507873 res!1028051) b!1507869))

(assert (= (and b!1507869 res!1028055) b!1507872))

(assert (= (and b!1507872 res!1028054) b!1507871))

(assert (= (and b!1507871 res!1028056) b!1507867))

(assert (= (and b!1507867 res!1028057) b!1507865))

(declare-fun m!1390545 () Bool)

(assert (=> b!1507873 m!1390545))

(declare-fun m!1390547 () Bool)

(assert (=> b!1507867 m!1390547))

(assert (=> b!1507867 m!1390547))

(declare-fun m!1390549 () Bool)

(assert (=> b!1507867 m!1390549))

(assert (=> b!1507871 m!1390547))

(assert (=> b!1507871 m!1390547))

(declare-fun m!1390551 () Bool)

(assert (=> b!1507871 m!1390551))

(assert (=> b!1507871 m!1390551))

(assert (=> b!1507871 m!1390547))

(declare-fun m!1390553 () Bool)

(assert (=> b!1507871 m!1390553))

(declare-fun m!1390555 () Bool)

(assert (=> b!1507866 m!1390555))

(assert (=> b!1507866 m!1390555))

(declare-fun m!1390557 () Bool)

(assert (=> b!1507866 m!1390557))

(declare-fun m!1390559 () Bool)

(assert (=> start!128692 m!1390559))

(declare-fun m!1390561 () Bool)

(assert (=> start!128692 m!1390561))

(assert (=> b!1507870 m!1390547))

(assert (=> b!1507870 m!1390547))

(declare-fun m!1390563 () Bool)

(assert (=> b!1507870 m!1390563))

(declare-fun m!1390565 () Bool)

(assert (=> b!1507869 m!1390565))

(push 1)

(assert (not b!1507867))

(assert (not b!1507866))

