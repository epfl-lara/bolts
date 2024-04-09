; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135016 () Bool)

(assert start!135016)

(declare-fun res!1074330 () Bool)

(declare-fun e!876710 () Bool)

(assert (=> start!135016 (=> (not res!1074330) (not e!876710))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135016 (= res!1074330 (validMask!0 mask!889))))

(assert (=> start!135016 e!876710))

(assert (=> start!135016 true))

(declare-datatypes ((array!104975 0))(
  ( (array!104976 (arr!50649 (Array (_ BitVec 32) (_ BitVec 64))) (size!51200 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104975)

(declare-fun array_inv!39294 (array!104975) Bool)

(assert (=> start!135016 (array_inv!39294 _keys!600)))

(declare-fun b!1572228 () Bool)

(declare-fun res!1074332 () Bool)

(assert (=> b!1572228 (=> (not res!1074332) (not e!876710))))

(assert (=> b!1572228 (= res!1074332 (= (size!51200 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572229 () Bool)

(declare-fun res!1074331 () Bool)

(assert (=> b!1572229 (=> (not res!1074331) (not e!876710))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572229 (= res!1074331 (validKeyInArray!0 k!754))))

(declare-fun b!1572230 () Bool)

(assert (=> b!1572230 (= e!876710 false)))

(declare-datatypes ((SeekEntryResult!13578 0))(
  ( (MissingZero!13578 (index!56709 (_ BitVec 32))) (Found!13578 (index!56710 (_ BitVec 32))) (Intermediate!13578 (undefined!14390 Bool) (index!56711 (_ BitVec 32)) (x!141485 (_ BitVec 32))) (Undefined!13578) (MissingVacant!13578 (index!56712 (_ BitVec 32))) )
))
(declare-fun lt!673879 () SeekEntryResult!13578)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104975 (_ BitVec 32)) SeekEntryResult!13578)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572230 (= lt!673879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135016 res!1074330) b!1572228))

(assert (= (and b!1572228 res!1074332) b!1572229))

(assert (= (and b!1572229 res!1074331) b!1572230))

(declare-fun m!1446039 () Bool)

(assert (=> start!135016 m!1446039))

(declare-fun m!1446041 () Bool)

(assert (=> start!135016 m!1446041))

(declare-fun m!1446043 () Bool)

(assert (=> b!1572229 m!1446043))

(declare-fun m!1446045 () Bool)

(assert (=> b!1572230 m!1446045))

(assert (=> b!1572230 m!1446045))

(declare-fun m!1446047 () Bool)

(assert (=> b!1572230 m!1446047))

(push 1)

(assert (not b!1572229))

(assert (not b!1572230))

(assert (not start!135016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

