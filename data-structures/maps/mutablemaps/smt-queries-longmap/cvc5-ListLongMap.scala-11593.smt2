; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135168 () Bool)

(assert start!135168)

(declare-fun b!1572762 () Bool)

(declare-fun res!1074710 () Bool)

(declare-fun e!877042 () Bool)

(assert (=> b!1572762 (=> (not res!1074710) (not e!877042))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572762 (= res!1074710 (validKeyInArray!0 k!754))))

(declare-fun b!1572763 () Bool)

(declare-fun e!877043 () Bool)

(assert (=> b!1572763 (= e!877042 e!877043)))

(declare-fun res!1074712 () Bool)

(assert (=> b!1572763 (=> (not res!1074712) (not e!877043))))

(declare-datatypes ((SeekEntryResult!13609 0))(
  ( (MissingZero!13609 (index!56833 (_ BitVec 32))) (Found!13609 (index!56834 (_ BitVec 32))) (Intermediate!13609 (undefined!14421 Bool) (index!56835 (_ BitVec 32)) (x!141622 (_ BitVec 32))) (Undefined!13609) (MissingVacant!13609 (index!56836 (_ BitVec 32))) )
))
(declare-fun lt!674091 () SeekEntryResult!13609)

(declare-datatypes ((array!105046 0))(
  ( (array!105047 (arr!50680 (Array (_ BitVec 32) (_ BitVec 64))) (size!51231 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105046)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1572763 (= res!1074712 (and (not (undefined!14421 lt!674091)) (is-Intermediate!13609 lt!674091) (not (= (select (arr!50680 _keys!600) (index!56835 lt!674091)) k!754)) (not (= (select (arr!50680 _keys!600) (index!56835 lt!674091)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50680 _keys!600) (index!56835 lt!674091)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56835 lt!674091) #b00000000000000000000000000000000) (bvslt (index!56835 lt!674091) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105046 (_ BitVec 32)) SeekEntryResult!13609)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572763 (= lt!674091 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun res!1074711 () Bool)

(assert (=> start!135168 (=> (not res!1074711) (not e!877042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135168 (= res!1074711 (validMask!0 mask!889))))

(assert (=> start!135168 e!877042))

(assert (=> start!135168 true))

(declare-fun array_inv!39325 (array!105046) Bool)

(assert (=> start!135168 (array_inv!39325 _keys!600)))

(declare-fun b!1572764 () Bool)

(assert (=> b!1572764 (= e!877043 false)))

(declare-fun lt!674092 () SeekEntryResult!13609)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105046 (_ BitVec 32)) SeekEntryResult!13609)

(assert (=> b!1572764 (= lt!674092 (seekKeyOrZeroReturnVacant!0 (x!141622 lt!674091) (index!56835 lt!674091) (index!56835 lt!674091) k!754 _keys!600 mask!889))))

(declare-fun b!1572761 () Bool)

(declare-fun res!1074713 () Bool)

(assert (=> b!1572761 (=> (not res!1074713) (not e!877042))))

(assert (=> b!1572761 (= res!1074713 (= (size!51231 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135168 res!1074711) b!1572761))

(assert (= (and b!1572761 res!1074713) b!1572762))

(assert (= (and b!1572762 res!1074710) b!1572763))

(assert (= (and b!1572763 res!1074712) b!1572764))

(declare-fun m!1446445 () Bool)

(assert (=> b!1572762 m!1446445))

(declare-fun m!1446447 () Bool)

(assert (=> b!1572763 m!1446447))

(declare-fun m!1446449 () Bool)

(assert (=> b!1572763 m!1446449))

(assert (=> b!1572763 m!1446449))

(declare-fun m!1446451 () Bool)

(assert (=> b!1572763 m!1446451))

(declare-fun m!1446453 () Bool)

(assert (=> start!135168 m!1446453))

(declare-fun m!1446455 () Bool)

(assert (=> start!135168 m!1446455))

(declare-fun m!1446457 () Bool)

(assert (=> b!1572764 m!1446457))

(push 1)

(assert (not start!135168))

(assert (not b!1572763))

(assert (not b!1572764))

(assert (not b!1572762))

