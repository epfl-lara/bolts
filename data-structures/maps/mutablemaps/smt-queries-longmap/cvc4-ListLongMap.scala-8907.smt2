; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108132 () Bool)

(assert start!108132)

(declare-fun b_free!27809 () Bool)

(declare-fun b_next!27809 () Bool)

(assert (=> start!108132 (= b_free!27809 (not b_next!27809))))

(declare-fun tp!98382 () Bool)

(declare-fun b_and!45875 () Bool)

(assert (=> start!108132 (= tp!98382 b_and!45875)))

(declare-fun b!1276467 () Bool)

(declare-fun e!728950 () Bool)

(declare-fun tp_is_empty!33359 () Bool)

(assert (=> b!1276467 (= e!728950 tp_is_empty!33359)))

(declare-fun res!848376 () Bool)

(declare-fun e!728949 () Bool)

(assert (=> start!108132 (=> (not res!848376) (not e!728949))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108132 (= res!848376 (validMask!0 mask!1805))))

(assert (=> start!108132 e!728949))

(assert (=> start!108132 true))

(assert (=> start!108132 tp!98382))

(assert (=> start!108132 tp_is_empty!33359))

(declare-datatypes ((V!49581 0))(
  ( (V!49582 (val!16754 Int)) )
))
(declare-datatypes ((ValueCell!15781 0))(
  ( (ValueCellFull!15781 (v!19349 V!49581)) (EmptyCell!15781) )
))
(declare-datatypes ((array!83763 0))(
  ( (array!83764 (arr!40388 (Array (_ BitVec 32) ValueCell!15781)) (size!40939 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83763)

(declare-fun e!728947 () Bool)

(declare-fun array_inv!30653 (array!83763) Bool)

(assert (=> start!108132 (and (array_inv!30653 _values!1187) e!728947)))

(declare-datatypes ((array!83765 0))(
  ( (array!83766 (arr!40389 (Array (_ BitVec 32) (_ BitVec 64))) (size!40940 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83765)

(declare-fun array_inv!30654 (array!83765) Bool)

(assert (=> start!108132 (array_inv!30654 _keys!1427)))

(declare-fun b!1276468 () Bool)

(assert (=> b!1276468 (= e!728949 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575442 () Bool)

(declare-fun minValue!1129 () V!49581)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49581)

(declare-datatypes ((tuple2!21632 0))(
  ( (tuple2!21633 (_1!10826 (_ BitVec 64)) (_2!10826 V!49581)) )
))
(declare-datatypes ((List!28818 0))(
  ( (Nil!28815) (Cons!28814 (h!30023 tuple2!21632) (t!42361 List!28818)) )
))
(declare-datatypes ((ListLongMap!19301 0))(
  ( (ListLongMap!19302 (toList!9666 List!28818)) )
))
(declare-fun contains!7713 (ListLongMap!19301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4686 (array!83765 array!83763 (_ BitVec 32) (_ BitVec 32) V!49581 V!49581 (_ BitVec 32) Int) ListLongMap!19301)

(assert (=> b!1276468 (= lt!575442 (contains!7713 (getCurrentListMap!4686 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapNonEmpty!51569 () Bool)

(declare-fun mapRes!51569 () Bool)

(declare-fun tp!98381 () Bool)

(declare-fun e!728948 () Bool)

(assert (=> mapNonEmpty!51569 (= mapRes!51569 (and tp!98381 e!728948))))

(declare-fun mapKey!51569 () (_ BitVec 32))

(declare-fun mapRest!51569 () (Array (_ BitVec 32) ValueCell!15781))

(declare-fun mapValue!51569 () ValueCell!15781)

(assert (=> mapNonEmpty!51569 (= (arr!40388 _values!1187) (store mapRest!51569 mapKey!51569 mapValue!51569))))

(declare-fun b!1276469 () Bool)

(declare-fun res!848378 () Bool)

(assert (=> b!1276469 (=> (not res!848378) (not e!728949))))

(declare-datatypes ((List!28819 0))(
  ( (Nil!28816) (Cons!28815 (h!30024 (_ BitVec 64)) (t!42362 List!28819)) )
))
(declare-fun arrayNoDuplicates!0 (array!83765 (_ BitVec 32) List!28819) Bool)

(assert (=> b!1276469 (= res!848378 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28816))))

(declare-fun b!1276470 () Bool)

(declare-fun res!848377 () Bool)

(assert (=> b!1276470 (=> (not res!848377) (not e!728949))))

(assert (=> b!1276470 (= res!848377 (and (= (size!40939 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40940 _keys!1427) (size!40939 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276471 () Bool)

(assert (=> b!1276471 (= e!728947 (and e!728950 mapRes!51569))))

(declare-fun condMapEmpty!51569 () Bool)

(declare-fun mapDefault!51569 () ValueCell!15781)

