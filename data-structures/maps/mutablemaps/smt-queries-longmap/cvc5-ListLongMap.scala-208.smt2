; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3928 () Bool)

(assert start!3928)

(declare-fun b_free!835 () Bool)

(declare-fun b_next!835 () Bool)

(assert (=> start!3928 (= b_free!835 (not b_next!835))))

(declare-fun tp!3924 () Bool)

(declare-fun b_and!1647 () Bool)

(assert (=> start!3928 (= tp!3924 b_and!1647)))

(declare-fun b!27935 () Bool)

(declare-fun res!16572 () Bool)

(declare-fun e!18128 () Bool)

(assert (=> b!27935 (=> (not res!16572) (not e!18128))))

(declare-datatypes ((array!1605 0))(
  ( (array!1606 (arr!756 (Array (_ BitVec 32) (_ BitVec 64))) (size!857 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1605)

(declare-datatypes ((List!635 0))(
  ( (Nil!632) (Cons!631 (h!1198 (_ BitVec 64)) (t!3330 List!635)) )
))
(declare-fun arrayNoDuplicates!0 (array!1605 (_ BitVec 32) List!635) Bool)

(assert (=> b!27935 (= res!16572 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!632))))

(declare-fun b!27936 () Bool)

(declare-fun res!16568 () Bool)

(assert (=> b!27936 (=> (not res!16568) (not e!18128))))

(declare-datatypes ((V!1411 0))(
  ( (V!1412 (val!621 Int)) )
))
(declare-datatypes ((ValueCell!395 0))(
  ( (ValueCellFull!395 (v!1710 V!1411)) (EmptyCell!395) )
))
(declare-datatypes ((array!1607 0))(
  ( (array!1608 (arr!757 (Array (_ BitVec 32) ValueCell!395)) (size!858 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1607)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!27936 (= res!16568 (and (= (size!858 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!857 _keys!1833) (size!858 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27937 () Bool)

(declare-fun res!16569 () Bool)

(assert (=> b!27937 (=> (not res!16569) (not e!18128))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27937 (= res!16569 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27938 () Bool)

(assert (=> b!27938 (= e!18128 false)))

(declare-fun lt!10737 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1605 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27938 (= lt!10737 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27939 () Bool)

(declare-fun e!18129 () Bool)

(declare-fun e!18130 () Bool)

(declare-fun mapRes!1312 () Bool)

(assert (=> b!27939 (= e!18129 (and e!18130 mapRes!1312))))

(declare-fun condMapEmpty!1312 () Bool)

(declare-fun mapDefault!1312 () ValueCell!395)

