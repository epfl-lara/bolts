; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130634 () Bool)

(assert start!130634)

(declare-fun b!1532390 () Bool)

(declare-fun res!1049655 () Bool)

(declare-fun e!853814 () Bool)

(assert (=> b!1532390 (=> (not res!1049655) (not e!853814))))

(declare-datatypes ((array!101719 0))(
  ( (array!101720 (arr!49074 (Array (_ BitVec 32) (_ BitVec 64))) (size!49625 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101719)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532390 (= res!1049655 (validKeyInArray!0 (select (arr!49074 a!2792) j!64)))))

(declare-fun b!1532391 () Bool)

(declare-fun res!1049652 () Bool)

(assert (=> b!1532391 (=> (not res!1049652) (not e!853814))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532391 (= res!1049652 (and (= (size!49625 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49625 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49625 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532392 () Bool)

(declare-fun res!1049651 () Bool)

(assert (=> b!1532392 (=> (not res!1049651) (not e!853814))))

(assert (=> b!1532392 (= res!1049651 (validKeyInArray!0 (select (arr!49074 a!2792) i!951)))))

(declare-fun res!1049654 () Bool)

(assert (=> start!130634 (=> (not res!1049654) (not e!853814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130634 (= res!1049654 (validMask!0 mask!2480))))

(assert (=> start!130634 e!853814))

(assert (=> start!130634 true))

(declare-fun array_inv!38019 (array!101719) Bool)

(assert (=> start!130634 (array_inv!38019 a!2792)))

(declare-fun b!1532393 () Bool)

(declare-datatypes ((List!35728 0))(
  ( (Nil!35725) (Cons!35724 (h!37170 (_ BitVec 64)) (t!50429 List!35728)) )
))
(declare-fun noDuplicate!2665 (List!35728) Bool)

(assert (=> b!1532393 (= e!853814 (not (noDuplicate!2665 Nil!35725)))))

(declare-fun b!1532394 () Bool)

(declare-fun res!1049653 () Bool)

(assert (=> b!1532394 (=> (not res!1049653) (not e!853814))))

(assert (=> b!1532394 (= res!1049653 (and (bvsle #b00000000000000000000000000000000 (size!49625 a!2792)) (bvslt (size!49625 a!2792) #b01111111111111111111111111111111)))))

(declare-fun b!1532395 () Bool)

(declare-fun res!1049650 () Bool)

(assert (=> b!1532395 (=> (not res!1049650) (not e!853814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101719 (_ BitVec 32)) Bool)

(assert (=> b!1532395 (= res!1049650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130634 res!1049654) b!1532391))

(assert (= (and b!1532391 res!1049652) b!1532392))

(assert (= (and b!1532392 res!1049651) b!1532390))

(assert (= (and b!1532390 res!1049655) b!1532395))

(assert (= (and b!1532395 res!1049650) b!1532394))

(assert (= (and b!1532394 res!1049653) b!1532393))

(declare-fun m!1415159 () Bool)

(assert (=> b!1532393 m!1415159))

(declare-fun m!1415161 () Bool)

(assert (=> b!1532390 m!1415161))

(assert (=> b!1532390 m!1415161))

(declare-fun m!1415163 () Bool)

(assert (=> b!1532390 m!1415163))

(declare-fun m!1415165 () Bool)

(assert (=> b!1532395 m!1415165))

(declare-fun m!1415167 () Bool)

(assert (=> start!130634 m!1415167))

(declare-fun m!1415169 () Bool)

(assert (=> start!130634 m!1415169))

(declare-fun m!1415171 () Bool)

(assert (=> b!1532392 m!1415171))

(assert (=> b!1532392 m!1415171))

(declare-fun m!1415173 () Bool)

(assert (=> b!1532392 m!1415173))

(push 1)

(assert (not b!1532390))

(assert (not start!130634))

(assert (not b!1532393))

(assert (not b!1532392))

(assert (not b!1532395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1532434 () Bool)

(declare-fun e!853847 () Bool)

(declare-fun e!853846 () Bool)

(assert (=> b!1532434 (= e!853847 e!853846)))

(declare-fun lt!663611 () (_ BitVec 64))

(assert (=> b!1532434 (= lt!663611 (select (arr!49074 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51246 0))(
  ( (Unit!51247) )
))
(declare-fun lt!663612 () Unit!51246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101719 (_ BitVec 64) (_ BitVec 32)) Unit!51246)

(assert (=> b!1532434 (= lt!663612 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663611 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532434 (arrayContainsKey!0 a!2792 lt!663611 #b00000000000000000000000000000000)))

(declare-fun lt!663613 () Unit!51246)

(assert (=> b!1532434 (= lt!663613 lt!663612)))

(declare-fun res!1049678 () Bool)

(declare-datatypes ((SeekEntryResult!13253 0))(
  ( (MissingZero!13253 (index!55406 (_ BitVec 32))) (Found!13253 (index!55407 (_ BitVec 32))) (Intermediate!13253 (undefined!14065 Bool) (index!55408 (_ BitVec 32)) (x!137122 (_ BitVec 32))) (Undefined!13253) (MissingVacant!13253 (index!55409 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101719 (_ BitVec 32)) SeekEntryResult!13253)

(assert (=> b!1532434 (= res!1049678 (= (seekEntryOrOpen!0 (select (arr!49074 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13253 #b00000000000000000000000000000000)))))

(assert (=> b!1532434 (=> (not res!1049678) (not e!853846))))

(declare-fun d!159997 () Bool)

(declare-fun res!1049679 () Bool)

