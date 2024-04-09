; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78778 () Bool)

(assert start!78778)

(declare-fun b_free!16963 () Bool)

(declare-fun b_next!16963 () Bool)

(assert (=> start!78778 (= b_free!16963 (not b_next!16963))))

(declare-fun tp!59330 () Bool)

(declare-fun b_and!27681 () Bool)

(assert (=> start!78778 (= tp!59330 b_and!27681)))

(declare-fun b!918671 () Bool)

(declare-fun res!619525 () Bool)

(declare-fun e!515721 () Bool)

(assert (=> b!918671 (=> (not res!619525) (not e!515721))))

(declare-datatypes ((array!54934 0))(
  ( (array!54935 (arr!26408 (Array (_ BitVec 32) (_ BitVec 64))) (size!26868 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54934)

(declare-datatypes ((List!18640 0))(
  ( (Nil!18637) (Cons!18636 (h!19782 (_ BitVec 64)) (t!26341 List!18640)) )
))
(declare-fun arrayNoDuplicates!0 (array!54934 (_ BitVec 32) List!18640) Bool)

(assert (=> b!918671 (= res!619525 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18637))))

(declare-fun res!619531 () Bool)

(assert (=> start!78778 (=> (not res!619531) (not e!515721))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78778 (= res!619531 (validMask!0 mask!1881))))

(assert (=> start!78778 e!515721))

(assert (=> start!78778 true))

(declare-fun tp_is_empty!19471 () Bool)

(assert (=> start!78778 tp_is_empty!19471))

(declare-datatypes ((V!30927 0))(
  ( (V!30928 (val!9786 Int)) )
))
(declare-datatypes ((ValueCell!9254 0))(
  ( (ValueCellFull!9254 (v!12304 V!30927)) (EmptyCell!9254) )
))
(declare-datatypes ((array!54936 0))(
  ( (array!54937 (arr!26409 (Array (_ BitVec 32) ValueCell!9254)) (size!26869 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54936)

(declare-fun e!515722 () Bool)

(declare-fun array_inv!20578 (array!54936) Bool)

(assert (=> start!78778 (and (array_inv!20578 _values!1231) e!515722)))

(assert (=> start!78778 tp!59330))

(declare-fun array_inv!20579 (array!54934) Bool)

(assert (=> start!78778 (array_inv!20579 _keys!1487)))

(declare-fun b!918672 () Bool)

(declare-fun res!619523 () Bool)

(declare-fun e!515723 () Bool)

(assert (=> b!918672 (=> (not res!619523) (not e!515723))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918672 (= res!619523 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918673 () Bool)

(declare-fun e!515720 () Bool)

(assert (=> b!918673 (= e!515720 tp_is_empty!19471)))

(declare-fun b!918674 () Bool)

(declare-fun res!619529 () Bool)

(assert (=> b!918674 (=> (not res!619529) (not e!515721))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!918674 (= res!619529 (and (= (size!26869 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26868 _keys!1487) (size!26869 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918675 () Bool)

(assert (=> b!918675 (= e!515721 e!515723)))

(declare-fun res!619524 () Bool)

(assert (=> b!918675 (=> (not res!619524) (not e!515723))))

(declare-datatypes ((tuple2!12798 0))(
  ( (tuple2!12799 (_1!6409 (_ BitVec 64)) (_2!6409 V!30927)) )
))
(declare-datatypes ((List!18641 0))(
  ( (Nil!18638) (Cons!18637 (h!19783 tuple2!12798) (t!26342 List!18641)) )
))
(declare-datatypes ((ListLongMap!11509 0))(
  ( (ListLongMap!11510 (toList!5770 List!18641)) )
))
(declare-fun lt!412350 () ListLongMap!11509)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4783 (ListLongMap!11509 (_ BitVec 64)) Bool)

(assert (=> b!918675 (= res!619524 (contains!4783 lt!412350 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30927)

(declare-fun minValue!1173 () V!30927)

(declare-fun getCurrentListMap!2995 (array!54934 array!54936 (_ BitVec 32) (_ BitVec 32) V!30927 V!30927 (_ BitVec 32) Int) ListLongMap!11509)

(assert (=> b!918675 (= lt!412350 (getCurrentListMap!2995 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918676 () Bool)

(declare-fun mapRes!30963 () Bool)

(assert (=> b!918676 (= e!515722 (and e!515720 mapRes!30963))))

(declare-fun condMapEmpty!30963 () Bool)

(declare-fun mapDefault!30963 () ValueCell!9254)

