; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70262 () Bool)

(assert start!70262)

(declare-fun b_free!12631 () Bool)

(declare-fun b_next!12631 () Bool)

(assert (=> start!70262 (= b_free!12631 (not b_next!12631))))

(declare-fun tp!44614 () Bool)

(declare-fun b_and!21437 () Bool)

(assert (=> start!70262 (= tp!44614 b_and!21437)))

(declare-fun b!815856 () Bool)

(declare-fun res!557184 () Bool)

(declare-fun e!452532 () Bool)

(assert (=> b!815856 (=> (not res!557184) (not e!452532))))

(declare-datatypes ((array!44864 0))(
  ( (array!44865 (arr!21486 (Array (_ BitVec 32) (_ BitVec 64))) (size!21907 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44864)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44864 (_ BitVec 32)) Bool)

(assert (=> b!815856 (= res!557184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23098 () Bool)

(declare-fun mapRes!23098 () Bool)

(assert (=> mapIsEmpty!23098 mapRes!23098))

(declare-fun mapNonEmpty!23098 () Bool)

(declare-fun tp!44613 () Bool)

(declare-fun e!452535 () Bool)

(assert (=> mapNonEmpty!23098 (= mapRes!23098 (and tp!44613 e!452535))))

(declare-datatypes ((V!24123 0))(
  ( (V!24124 (val!7218 Int)) )
))
(declare-datatypes ((ValueCell!6755 0))(
  ( (ValueCellFull!6755 (v!9641 V!24123)) (EmptyCell!6755) )
))
(declare-datatypes ((array!44866 0))(
  ( (array!44867 (arr!21487 (Array (_ BitVec 32) ValueCell!6755)) (size!21908 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44866)

(declare-fun mapRest!23098 () (Array (_ BitVec 32) ValueCell!6755))

(declare-fun mapValue!23098 () ValueCell!6755)

(declare-fun mapKey!23098 () (_ BitVec 32))

(assert (=> mapNonEmpty!23098 (= (arr!21487 _values!788) (store mapRest!23098 mapKey!23098 mapValue!23098))))

(declare-fun b!815857 () Bool)

(declare-fun e!452534 () Bool)

(assert (=> b!815857 (= e!452532 (not e!452534))))

(declare-fun res!557185 () Bool)

(assert (=> b!815857 (=> res!557185 e!452534)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815857 (= res!557185 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9486 0))(
  ( (tuple2!9487 (_1!4753 (_ BitVec 64)) (_2!4753 V!24123)) )
))
(declare-datatypes ((List!15355 0))(
  ( (Nil!15352) (Cons!15351 (h!16480 tuple2!9486) (t!21684 List!15355)) )
))
(declare-datatypes ((ListLongMap!8323 0))(
  ( (ListLongMap!8324 (toList!4177 List!15355)) )
))
(declare-fun lt!365347 () ListLongMap!8323)

(declare-fun lt!365348 () ListLongMap!8323)

(assert (=> b!815857 (= lt!365347 lt!365348)))

(declare-fun zeroValueBefore!34 () V!24123)

(declare-fun zeroValueAfter!34 () V!24123)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24123)

(declare-datatypes ((Unit!27810 0))(
  ( (Unit!27811) )
))
(declare-fun lt!365350 () Unit!27810)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!342 (array!44864 array!44866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24123 V!24123 V!24123 V!24123 (_ BitVec 32) Int) Unit!27810)

(assert (=> b!815857 (= lt!365350 (lemmaNoChangeToArrayThenSameMapNoExtras!342 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2226 (array!44864 array!44866 (_ BitVec 32) (_ BitVec 32) V!24123 V!24123 (_ BitVec 32) Int) ListLongMap!8323)

(assert (=> b!815857 (= lt!365348 (getCurrentListMapNoExtraKeys!2226 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815857 (= lt!365347 (getCurrentListMapNoExtraKeys!2226 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815858 () Bool)

(declare-fun e!452536 () Bool)

(declare-fun e!452531 () Bool)

(assert (=> b!815858 (= e!452536 (and e!452531 mapRes!23098))))

(declare-fun condMapEmpty!23098 () Bool)

(declare-fun mapDefault!23098 () ValueCell!6755)

