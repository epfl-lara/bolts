; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135118 () Bool)

(assert start!135118)

(declare-fun res!1074580 () Bool)

(declare-fun e!876926 () Bool)

(assert (=> start!135118 (=> (not res!1074580) (not e!876926))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135118 (= res!1074580 (validMask!0 mask!889))))

(assert (=> start!135118 e!876926))

(assert (=> start!135118 true))

(declare-datatypes ((array!105023 0))(
  ( (array!105024 (arr!50670 (Array (_ BitVec 32) (_ BitVec 64))) (size!51221 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105023)

(declare-fun array_inv!39315 (array!105023) Bool)

(assert (=> start!135118 (array_inv!39315 _keys!600)))

(declare-fun b!1572579 () Bool)

(declare-fun res!1074579 () Bool)

(assert (=> b!1572579 (=> (not res!1074579) (not e!876926))))

(assert (=> b!1572579 (= res!1074579 (= (size!51221 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572580 () Bool)

(declare-fun res!1074581 () Bool)

(assert (=> b!1572580 (=> (not res!1074581) (not e!876926))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572580 (= res!1074581 (validKeyInArray!0 k!754))))

(declare-fun b!1572581 () Bool)

(assert (=> b!1572581 (= e!876926 false)))

(declare-datatypes ((SeekEntryResult!13599 0))(
  ( (MissingZero!13599 (index!56793 (_ BitVec 32))) (Found!13599 (index!56794 (_ BitVec 32))) (Intermediate!13599 (undefined!14411 Bool) (index!56795 (_ BitVec 32)) (x!141574 (_ BitVec 32))) (Undefined!13599) (MissingVacant!13599 (index!56796 (_ BitVec 32))) )
))
(declare-fun lt!674014 () SeekEntryResult!13599)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105023 (_ BitVec 32)) SeekEntryResult!13599)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572581 (= lt!674014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135118 res!1074580) b!1572579))

(assert (= (and b!1572579 res!1074579) b!1572580))

(assert (= (and b!1572580 res!1074581) b!1572581))

(declare-fun m!1446303 () Bool)

(assert (=> start!135118 m!1446303))

(declare-fun m!1446305 () Bool)

(assert (=> start!135118 m!1446305))

(declare-fun m!1446307 () Bool)

(assert (=> b!1572580 m!1446307))

(declare-fun m!1446309 () Bool)

(assert (=> b!1572581 m!1446309))

(assert (=> b!1572581 m!1446309))

(declare-fun m!1446311 () Bool)

(assert (=> b!1572581 m!1446311))

(push 1)

(assert (not start!135118))

(assert (not b!1572580))

(assert (not b!1572581))

(check-sat)

(pop 1)

