; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97106 () Bool)

(assert start!97106)

(declare-fun b!1104096 () Bool)

(declare-fun e!630273 () Bool)

(declare-fun tp_is_empty!27347 () Bool)

(assert (=> b!1104096 (= e!630273 tp_is_empty!27347)))

(declare-fun res!736703 () Bool)

(declare-fun e!630272 () Bool)

(assert (=> start!97106 (=> (not res!736703) (not e!630272))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71568 0))(
  ( (array!71569 (arr!34436 (Array (_ BitVec 32) (_ BitVec 64))) (size!34973 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71568)

(assert (=> start!97106 (= res!736703 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34973 _keys!1208))))))

(assert (=> start!97106 e!630272))

(declare-fun array_inv!26370 (array!71568) Bool)

(assert (=> start!97106 (array_inv!26370 _keys!1208)))

(assert (=> start!97106 true))

(declare-datatypes ((V!41589 0))(
  ( (V!41590 (val!13730 Int)) )
))
(declare-datatypes ((ValueCell!12964 0))(
  ( (ValueCellFull!12964 (v!16363 V!41589)) (EmptyCell!12964) )
))
(declare-datatypes ((array!71570 0))(
  ( (array!71571 (arr!34437 (Array (_ BitVec 32) ValueCell!12964)) (size!34974 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71570)

(declare-fun e!630274 () Bool)

(declare-fun array_inv!26371 (array!71570) Bool)

(assert (=> start!97106 (and (array_inv!26371 _values!996) e!630274)))

(declare-fun b!1104097 () Bool)

(declare-fun e!630275 () Bool)

(assert (=> b!1104097 (= e!630275 tp_is_empty!27347)))

(declare-fun b!1104098 () Bool)

(declare-fun res!736699 () Bool)

(assert (=> b!1104098 (=> (not res!736699) (not e!630272))))

(assert (=> b!1104098 (= res!736699 (and (bvsle #b00000000000000000000000000000000 (size!34973 _keys!1208)) (bvslt (size!34973 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1104099 () Bool)

(declare-fun res!736698 () Bool)

(assert (=> b!1104099 (=> (not res!736698) (not e!630272))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71568 (_ BitVec 32)) Bool)

(assert (=> b!1104099 (= res!736698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71569 (store (arr!34436 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34973 _keys!1208)) mask!1564))))

(declare-fun b!1104100 () Bool)

(declare-fun res!736704 () Bool)

(assert (=> b!1104100 (=> (not res!736704) (not e!630272))))

(assert (=> b!1104100 (= res!736704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42829 () Bool)

(declare-fun mapRes!42829 () Bool)

(assert (=> mapIsEmpty!42829 mapRes!42829))

(declare-fun b!1104101 () Bool)

(declare-fun res!736705 () Bool)

(assert (=> b!1104101 (=> (not res!736705) (not e!630272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104101 (= res!736705 (validMask!0 mask!1564))))

(declare-fun b!1104102 () Bool)

(declare-fun res!736702 () Bool)

(assert (=> b!1104102 (=> (not res!736702) (not e!630272))))

(declare-datatypes ((List!24173 0))(
  ( (Nil!24170) (Cons!24169 (h!25378 (_ BitVec 64)) (t!34445 List!24173)) )
))
(declare-fun arrayNoDuplicates!0 (array!71568 (_ BitVec 32) List!24173) Bool)

(assert (=> b!1104102 (= res!736702 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24170))))

(declare-fun b!1104103 () Bool)

(assert (=> b!1104103 (= e!630274 (and e!630273 mapRes!42829))))

(declare-fun condMapEmpty!42829 () Bool)

(declare-fun mapDefault!42829 () ValueCell!12964)

