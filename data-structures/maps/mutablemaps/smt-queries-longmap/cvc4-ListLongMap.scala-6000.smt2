; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77884 () Bool)

(assert start!77884)

(declare-fun b_free!16415 () Bool)

(declare-fun b_next!16415 () Bool)

(assert (=> start!77884 (= b_free!16415 (not b_next!16415))))

(declare-fun tp!57511 () Bool)

(declare-fun b_and!27001 () Bool)

(assert (=> start!77884 (= tp!57511 b_and!27001)))

(declare-fun b!908968 () Bool)

(declare-fun e!509500 () Bool)

(declare-fun tp_is_empty!18833 () Bool)

(assert (=> b!908968 (= e!509500 tp_is_empty!18833)))

(declare-fun mapIsEmpty!29965 () Bool)

(declare-fun mapRes!29965 () Bool)

(assert (=> mapIsEmpty!29965 mapRes!29965))

(declare-fun res!613642 () Bool)

(declare-fun e!509504 () Bool)

(assert (=> start!77884 (=> (not res!613642) (not e!509504))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77884 (= res!613642 (validMask!0 mask!1756))))

(assert (=> start!77884 e!509504))

(declare-datatypes ((V!30075 0))(
  ( (V!30076 (val!9467 Int)) )
))
(declare-datatypes ((ValueCell!8935 0))(
  ( (ValueCellFull!8935 (v!11974 V!30075)) (EmptyCell!8935) )
))
(declare-datatypes ((array!53686 0))(
  ( (array!53687 (arr!25797 (Array (_ BitVec 32) ValueCell!8935)) (size!26257 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53686)

(declare-fun e!509501 () Bool)

(declare-fun array_inv!20170 (array!53686) Bool)

(assert (=> start!77884 (and (array_inv!20170 _values!1152) e!509501)))

(assert (=> start!77884 tp!57511))

(assert (=> start!77884 true))

(assert (=> start!77884 tp_is_empty!18833))

(declare-datatypes ((array!53688 0))(
  ( (array!53689 (arr!25798 (Array (_ BitVec 32) (_ BitVec 64))) (size!26258 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53688)

(declare-fun array_inv!20171 (array!53688) Bool)

(assert (=> start!77884 (array_inv!20171 _keys!1386)))

(declare-fun b!908969 () Bool)

(declare-fun e!509502 () Bool)

(assert (=> b!908969 (= e!509502 tp_is_empty!18833)))

(declare-fun mapNonEmpty!29965 () Bool)

(declare-fun tp!57510 () Bool)

(assert (=> mapNonEmpty!29965 (= mapRes!29965 (and tp!57510 e!509502))))

(declare-fun mapValue!29965 () ValueCell!8935)

(declare-fun mapRest!29965 () (Array (_ BitVec 32) ValueCell!8935))

(declare-fun mapKey!29965 () (_ BitVec 32))

(assert (=> mapNonEmpty!29965 (= (arr!25797 _values!1152) (store mapRest!29965 mapKey!29965 mapValue!29965))))

(declare-fun b!908970 () Bool)

(declare-fun res!613640 () Bool)

(assert (=> b!908970 (=> (not res!613640) (not e!509504))))

(declare-datatypes ((List!18222 0))(
  ( (Nil!18219) (Cons!18218 (h!19364 (_ BitVec 64)) (t!25811 List!18222)) )
))
(declare-fun arrayNoDuplicates!0 (array!53688 (_ BitVec 32) List!18222) Bool)

(assert (=> b!908970 (= res!613640 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18219))))

(declare-fun b!908971 () Bool)

(declare-fun res!613639 () Bool)

(assert (=> b!908971 (=> (not res!613639) (not e!509504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53688 (_ BitVec 32)) Bool)

(assert (=> b!908971 (= res!613639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908972 () Bool)

(assert (=> b!908972 (= e!509501 (and e!509500 mapRes!29965))))

(declare-fun condMapEmpty!29965 () Bool)

(declare-fun mapDefault!29965 () ValueCell!8935)

