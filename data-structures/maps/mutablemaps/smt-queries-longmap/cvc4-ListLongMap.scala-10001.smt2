; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118088 () Bool)

(assert start!118088)

(declare-fun b!1382255 () Bool)

(declare-fun res!923958 () Bool)

(declare-fun e!783505 () Bool)

(assert (=> b!1382255 (=> (not res!923958) (not e!783505))))

(declare-datatypes ((array!94368 0))(
  ( (array!94369 (arr!45561 (Array (_ BitVec 32) (_ BitVec 64))) (size!46112 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94368)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382255 (= res!923958 (validKeyInArray!0 (select (arr!45561 a!2971) i!1094)))))

(declare-fun b!1382254 () Bool)

(declare-fun res!923957 () Bool)

(assert (=> b!1382254 (=> (not res!923957) (not e!783505))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1382254 (= res!923957 (and (= (size!46112 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46112 a!2971))))))

(declare-fun b!1382257 () Bool)

(assert (=> b!1382257 (= e!783505 false)))

(declare-fun lt!608341 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94368 (_ BitVec 32)) Bool)

(assert (=> b!1382257 (= lt!608341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923955 () Bool)

(assert (=> start!118088 (=> (not res!923955) (not e!783505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118088 (= res!923955 (validMask!0 mask!3034))))

(assert (=> start!118088 e!783505))

(assert (=> start!118088 true))

(declare-fun array_inv!34506 (array!94368) Bool)

(assert (=> start!118088 (array_inv!34506 a!2971)))

(declare-fun b!1382256 () Bool)

(declare-fun res!923956 () Bool)

(assert (=> b!1382256 (=> (not res!923956) (not e!783505))))

(declare-datatypes ((List!32275 0))(
  ( (Nil!32272) (Cons!32271 (h!33480 (_ BitVec 64)) (t!46976 List!32275)) )
))
(declare-fun arrayNoDuplicates!0 (array!94368 (_ BitVec 32) List!32275) Bool)

(assert (=> b!1382256 (= res!923956 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32272))))

(assert (= (and start!118088 res!923955) b!1382254))

(assert (= (and b!1382254 res!923957) b!1382255))

(assert (= (and b!1382255 res!923958) b!1382256))

(assert (= (and b!1382256 res!923956) b!1382257))

(declare-fun m!1267455 () Bool)

(assert (=> b!1382255 m!1267455))

(assert (=> b!1382255 m!1267455))

(declare-fun m!1267457 () Bool)

(assert (=> b!1382255 m!1267457))

(declare-fun m!1267459 () Bool)

(assert (=> b!1382257 m!1267459))

(declare-fun m!1267461 () Bool)

(assert (=> start!118088 m!1267461))

(declare-fun m!1267463 () Bool)

(assert (=> start!118088 m!1267463))

(declare-fun m!1267465 () Bool)

(assert (=> b!1382256 m!1267465))

(push 1)

(assert (not b!1382257))

(assert (not start!118088))

(assert (not b!1382256))

(assert (not b!1382255))

(check-sat)

(pop 1)

