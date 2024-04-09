; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108194 () Bool)

(assert start!108194)

(declare-fun b_free!27853 () Bool)

(declare-fun b_next!27853 () Bool)

(assert (=> start!108194 (= b_free!27853 (not b_next!27853))))

(declare-fun tp!98516 () Bool)

(declare-fun b_and!45921 () Bool)

(assert (=> start!108194 (= tp!98516 b_and!45921)))

(declare-fun b!1277158 () Bool)

(declare-fun e!729388 () Bool)

(assert (=> b!1277158 (= e!729388 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575607 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49641 0))(
  ( (V!49642 (val!16776 Int)) )
))
(declare-fun minValue!1129 () V!49641)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15803 0))(
  ( (ValueCellFull!15803 (v!19372 V!49641)) (EmptyCell!15803) )
))
(declare-datatypes ((array!83849 0))(
  ( (array!83850 (arr!40430 (Array (_ BitVec 32) ValueCell!15803)) (size!40981 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83849)

(declare-fun zeroValue!1129 () V!49641)

(declare-datatypes ((array!83851 0))(
  ( (array!83852 (arr!40431 (Array (_ BitVec 32) (_ BitVec 64))) (size!40982 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83851)

(declare-datatypes ((tuple2!21666 0))(
  ( (tuple2!21667 (_1!10843 (_ BitVec 64)) (_2!10843 V!49641)) )
))
(declare-datatypes ((List!28851 0))(
  ( (Nil!28848) (Cons!28847 (h!30056 tuple2!21666) (t!42396 List!28851)) )
))
(declare-datatypes ((ListLongMap!19335 0))(
  ( (ListLongMap!19336 (toList!9683 List!28851)) )
))
(declare-fun contains!7731 (ListLongMap!19335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4703 (array!83851 array!83849 (_ BitVec 32) (_ BitVec 32) V!49641 V!49641 (_ BitVec 32) Int) ListLongMap!19335)

(assert (=> b!1277158 (= lt!575607 (contains!7731 (getCurrentListMap!4703 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapIsEmpty!51638 () Bool)

(declare-fun mapRes!51638 () Bool)

(assert (=> mapIsEmpty!51638 mapRes!51638))

(declare-fun b!1277159 () Bool)

(declare-fun res!848747 () Bool)

(assert (=> b!1277159 (=> (not res!848747) (not e!729388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83851 (_ BitVec 32)) Bool)

(assert (=> b!1277159 (= res!848747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277161 () Bool)

(declare-fun e!729389 () Bool)

(declare-fun tp_is_empty!33403 () Bool)

(assert (=> b!1277161 (= e!729389 tp_is_empty!33403)))

(declare-fun b!1277162 () Bool)

(declare-fun res!848746 () Bool)

(assert (=> b!1277162 (=> (not res!848746) (not e!729388))))

(declare-datatypes ((List!28852 0))(
  ( (Nil!28849) (Cons!28848 (h!30057 (_ BitVec 64)) (t!42397 List!28852)) )
))
(declare-fun arrayNoDuplicates!0 (array!83851 (_ BitVec 32) List!28852) Bool)

(assert (=> b!1277162 (= res!848746 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28849))))

(declare-fun b!1277163 () Bool)

(declare-fun e!729387 () Bool)

(assert (=> b!1277163 (= e!729387 tp_is_empty!33403)))

(declare-fun res!848745 () Bool)

(assert (=> start!108194 (=> (not res!848745) (not e!729388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108194 (= res!848745 (validMask!0 mask!1805))))

(assert (=> start!108194 e!729388))

(assert (=> start!108194 true))

(assert (=> start!108194 tp!98516))

(assert (=> start!108194 tp_is_empty!33403))

(declare-fun e!729386 () Bool)

(declare-fun array_inv!30685 (array!83849) Bool)

(assert (=> start!108194 (and (array_inv!30685 _values!1187) e!729386)))

(declare-fun array_inv!30686 (array!83851) Bool)

(assert (=> start!108194 (array_inv!30686 _keys!1427)))

(declare-fun b!1277160 () Bool)

(declare-fun res!848748 () Bool)

(assert (=> b!1277160 (=> (not res!848748) (not e!729388))))

(assert (=> b!1277160 (= res!848748 (and (= (size!40981 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40982 _keys!1427) (size!40981 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51638 () Bool)

(declare-fun tp!98517 () Bool)

(assert (=> mapNonEmpty!51638 (= mapRes!51638 (and tp!98517 e!729387))))

(declare-fun mapRest!51638 () (Array (_ BitVec 32) ValueCell!15803))

(declare-fun mapKey!51638 () (_ BitVec 32))

(declare-fun mapValue!51638 () ValueCell!15803)

(assert (=> mapNonEmpty!51638 (= (arr!40430 _values!1187) (store mapRest!51638 mapKey!51638 mapValue!51638))))

(declare-fun b!1277164 () Bool)

(assert (=> b!1277164 (= e!729386 (and e!729389 mapRes!51638))))

(declare-fun condMapEmpty!51638 () Bool)

(declare-fun mapDefault!51638 () ValueCell!15803)

