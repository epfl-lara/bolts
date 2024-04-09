; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3916 () Bool)

(assert start!3916)

(declare-fun b_free!823 () Bool)

(declare-fun b_next!823 () Bool)

(assert (=> start!3916 (= b_free!823 (not b_next!823))))

(declare-fun tp!3888 () Bool)

(declare-fun b_and!1635 () Bool)

(assert (=> start!3916 (= tp!3888 b_and!1635)))

(declare-fun mapIsEmpty!1294 () Bool)

(declare-fun mapRes!1294 () Bool)

(assert (=> mapIsEmpty!1294 mapRes!1294))

(declare-fun b!27755 () Bool)

(declare-fun res!16444 () Bool)

(declare-fun e!18037 () Bool)

(assert (=> b!27755 (=> (not res!16444) (not e!18037))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27755 (= res!16444 (validKeyInArray!0 k!1304))))

(declare-fun b!27756 () Bool)

(declare-fun res!16441 () Bool)

(assert (=> b!27756 (=> (not res!16441) (not e!18037))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1395 0))(
  ( (V!1396 (val!615 Int)) )
))
(declare-datatypes ((ValueCell!389 0))(
  ( (ValueCellFull!389 (v!1704 V!1395)) (EmptyCell!389) )
))
(declare-datatypes ((array!1583 0))(
  ( (array!1584 (arr!745 (Array (_ BitVec 32) ValueCell!389)) (size!846 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1583)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1585 0))(
  ( (array!1586 (arr!746 (Array (_ BitVec 32) (_ BitVec 64))) (size!847 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1585)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1395)

(declare-fun minValue!1443 () V!1395)

(declare-datatypes ((tuple2!1012 0))(
  ( (tuple2!1013 (_1!516 (_ BitVec 64)) (_2!516 V!1395)) )
))
(declare-datatypes ((List!628 0))(
  ( (Nil!625) (Cons!624 (h!1191 tuple2!1012) (t!3323 List!628)) )
))
(declare-datatypes ((ListLongMap!593 0))(
  ( (ListLongMap!594 (toList!312 List!628)) )
))
(declare-fun contains!249 (ListLongMap!593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!140 (array!1585 array!1583 (_ BitVec 32) (_ BitVec 32) V!1395 V!1395 (_ BitVec 32) Int) ListLongMap!593)

(assert (=> b!27756 (= res!16441 (not (contains!249 (getCurrentListMap!140 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27757 () Bool)

(declare-fun e!18040 () Bool)

(declare-fun tp_is_empty!1177 () Bool)

(assert (=> b!27757 (= e!18040 tp_is_empty!1177)))

(declare-fun b!27758 () Bool)

(declare-fun res!16443 () Bool)

(assert (=> b!27758 (=> (not res!16443) (not e!18037))))

(declare-fun arrayContainsKey!0 (array!1585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27758 (= res!16443 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!16442 () Bool)

(assert (=> start!3916 (=> (not res!16442) (not e!18037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3916 (= res!16442 (validMask!0 mask!2294))))

(assert (=> start!3916 e!18037))

(assert (=> start!3916 true))

(assert (=> start!3916 tp!3888))

(declare-fun e!18038 () Bool)

(declare-fun array_inv!511 (array!1583) Bool)

(assert (=> start!3916 (and (array_inv!511 _values!1501) e!18038)))

(declare-fun array_inv!512 (array!1585) Bool)

(assert (=> start!3916 (array_inv!512 _keys!1833)))

(assert (=> start!3916 tp_is_empty!1177))

(declare-fun b!27759 () Bool)

(assert (=> b!27759 (= e!18037 false)))

(declare-fun lt!10719 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1585 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27759 (= lt!10719 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27760 () Bool)

(declare-fun e!18039 () Bool)

(assert (=> b!27760 (= e!18038 (and e!18039 mapRes!1294))))

(declare-fun condMapEmpty!1294 () Bool)

(declare-fun mapDefault!1294 () ValueCell!389)

