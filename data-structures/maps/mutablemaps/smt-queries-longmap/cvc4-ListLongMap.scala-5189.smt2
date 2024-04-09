; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70162 () Bool)

(assert start!70162)

(declare-fun b_free!12545 () Bool)

(declare-fun b_next!12545 () Bool)

(assert (=> start!70162 (= b_free!12545 (not b_next!12545))))

(declare-fun tp!44353 () Bool)

(declare-fun b_and!21343 () Bool)

(assert (=> start!70162 (= tp!44353 b_and!21343)))

(declare-fun b!814803 () Bool)

(declare-fun e!451769 () Bool)

(assert (=> b!814803 (= e!451769 (not true))))

(declare-datatypes ((V!24007 0))(
  ( (V!24008 (val!7175 Int)) )
))
(declare-datatypes ((tuple2!9414 0))(
  ( (tuple2!9415 (_1!4717 (_ BitVec 64)) (_2!4717 V!24007)) )
))
(declare-datatypes ((List!15287 0))(
  ( (Nil!15284) (Cons!15283 (h!16412 tuple2!9414) (t!21614 List!15287)) )
))
(declare-datatypes ((ListLongMap!8251 0))(
  ( (ListLongMap!8252 (toList!4141 List!15287)) )
))
(declare-fun lt!364790 () ListLongMap!8251)

(declare-fun lt!364789 () ListLongMap!8251)

(assert (=> b!814803 (= lt!364790 lt!364789)))

(declare-fun zeroValueBefore!34 () V!24007)

(declare-datatypes ((array!44698 0))(
  ( (array!44699 (arr!21404 (Array (_ BitVec 32) (_ BitVec 64))) (size!21825 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44698)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24007)

(declare-fun minValue!754 () V!24007)

(declare-datatypes ((ValueCell!6712 0))(
  ( (ValueCellFull!6712 (v!9598 V!24007)) (EmptyCell!6712) )
))
(declare-datatypes ((array!44700 0))(
  ( (array!44701 (arr!21405 (Array (_ BitVec 32) ValueCell!6712)) (size!21826 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44700)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27738 0))(
  ( (Unit!27739) )
))
(declare-fun lt!364791 () Unit!27738)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!306 (array!44698 array!44700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24007 V!24007 V!24007 V!24007 (_ BitVec 32) Int) Unit!27738)

(assert (=> b!814803 (= lt!364791 (lemmaNoChangeToArrayThenSameMapNoExtras!306 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2190 (array!44698 array!44700 (_ BitVec 32) (_ BitVec 32) V!24007 V!24007 (_ BitVec 32) Int) ListLongMap!8251)

(assert (=> b!814803 (= lt!364789 (getCurrentListMapNoExtraKeys!2190 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814803 (= lt!364790 (getCurrentListMapNoExtraKeys!2190 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22966 () Bool)

(declare-fun mapRes!22966 () Bool)

(assert (=> mapIsEmpty!22966 mapRes!22966))

(declare-fun b!814804 () Bool)

(declare-fun e!451767 () Bool)

(declare-fun tp_is_empty!14255 () Bool)

(assert (=> b!814804 (= e!451767 tp_is_empty!14255)))

(declare-fun b!814805 () Bool)

(declare-fun res!556570 () Bool)

(assert (=> b!814805 (=> (not res!556570) (not e!451769))))

(declare-datatypes ((List!15288 0))(
  ( (Nil!15285) (Cons!15284 (h!16413 (_ BitVec 64)) (t!21615 List!15288)) )
))
(declare-fun arrayNoDuplicates!0 (array!44698 (_ BitVec 32) List!15288) Bool)

(assert (=> b!814805 (= res!556570 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15285))))

(declare-fun res!556571 () Bool)

(assert (=> start!70162 (=> (not res!556571) (not e!451769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70162 (= res!556571 (validMask!0 mask!1312))))

(assert (=> start!70162 e!451769))

(assert (=> start!70162 tp_is_empty!14255))

(declare-fun array_inv!17105 (array!44698) Bool)

(assert (=> start!70162 (array_inv!17105 _keys!976)))

(assert (=> start!70162 true))

(declare-fun e!451766 () Bool)

(declare-fun array_inv!17106 (array!44700) Bool)

(assert (=> start!70162 (and (array_inv!17106 _values!788) e!451766)))

(assert (=> start!70162 tp!44353))

(declare-fun b!814806 () Bool)

(assert (=> b!814806 (= e!451766 (and e!451767 mapRes!22966))))

(declare-fun condMapEmpty!22966 () Bool)

(declare-fun mapDefault!22966 () ValueCell!6712)

