; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135480 () Bool)

(assert start!135480)

(declare-fun res!1075369 () Bool)

(declare-fun e!877760 () Bool)

(assert (=> start!135480 (=> (not res!1075369) (not e!877760))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135480 (= res!1075369 (validMask!0 mask!877))))

(assert (=> start!135480 e!877760))

(assert (=> start!135480 true))

(declare-datatypes ((array!105151 0))(
  ( (array!105152 (arr!50722 (Array (_ BitVec 32) (_ BitVec 64))) (size!51273 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105151)

(declare-fun array_inv!39367 (array!105151) Bool)

(assert (=> start!135480 (array_inv!39367 _keys!591)))

(declare-fun b!1573938 () Bool)

(declare-fun res!1075368 () Bool)

(assert (=> b!1573938 (=> (not res!1075368) (not e!877760))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573938 (= res!1075368 (and (= (size!51273 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51273 _keys!591)) (bvslt i!537 (size!51273 _keys!591))))))

(declare-fun b!1573939 () Bool)

(declare-fun res!1075370 () Bool)

(assert (=> b!1573939 (=> (not res!1075370) (not e!877760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573939 (= res!1075370 (validKeyInArray!0 (select (arr!50722 _keys!591) i!537)))))

(declare-fun b!1573940 () Bool)

(assert (=> b!1573940 (= e!877760 (not true))))

(declare-datatypes ((SeekEntryResult!13639 0))(
  ( (MissingZero!13639 (index!56953 (_ BitVec 32))) (Found!13639 (index!56954 (_ BitVec 32))) (Intermediate!13639 (undefined!14451 Bool) (index!56955 (_ BitVec 32)) (x!141815 (_ BitVec 32))) (Undefined!13639) (MissingVacant!13639 (index!56956 (_ BitVec 32))) )
))
(declare-fun lt!674641 () SeekEntryResult!13639)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105151 (_ BitVec 32)) SeekEntryResult!13639)

(assert (=> b!1573940 (= lt!674641 (seekEntryOrOpen!0 (select (arr!50722 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573940 (arrayContainsKey!0 _keys!591 (select (arr!50722 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52084 0))(
  ( (Unit!52085) )
))
(declare-fun lt!674640 () Unit!52084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105151 (_ BitVec 64) (_ BitVec 32)) Unit!52084)

(assert (=> b!1573940 (= lt!674640 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50722 _keys!591) i!537) i!537))))

(assert (= (and start!135480 res!1075369) b!1573938))

(assert (= (and b!1573938 res!1075368) b!1573939))

(assert (= (and b!1573939 res!1075370) b!1573940))

(declare-fun m!1447213 () Bool)

(assert (=> start!135480 m!1447213))

(declare-fun m!1447215 () Bool)

(assert (=> start!135480 m!1447215))

(declare-fun m!1447217 () Bool)

(assert (=> b!1573939 m!1447217))

(assert (=> b!1573939 m!1447217))

(declare-fun m!1447219 () Bool)

(assert (=> b!1573939 m!1447219))

(assert (=> b!1573940 m!1447217))

(assert (=> b!1573940 m!1447217))

(declare-fun m!1447221 () Bool)

(assert (=> b!1573940 m!1447221))

(assert (=> b!1573940 m!1447217))

(declare-fun m!1447223 () Bool)

(assert (=> b!1573940 m!1447223))

(assert (=> b!1573940 m!1447217))

(declare-fun m!1447225 () Bool)

(assert (=> b!1573940 m!1447225))

(push 1)

(assert (not b!1573940))

(assert (not start!135480))

(assert (not b!1573939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

