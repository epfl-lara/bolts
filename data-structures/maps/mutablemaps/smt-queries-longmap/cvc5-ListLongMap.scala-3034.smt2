; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42586 () Bool)

(assert start!42586)

(declare-fun b_free!12013 () Bool)

(declare-fun b_next!12013 () Bool)

(assert (=> start!42586 (= b_free!12013 (not b_next!12013))))

(declare-fun tp!42079 () Bool)

(declare-fun b_and!20511 () Bool)

(assert (=> start!42586 (= tp!42079 b_and!20511)))

(declare-fun b!474830 () Bool)

(declare-fun e!278776 () Bool)

(declare-fun tp_is_empty!13441 () Bool)

(assert (=> b!474830 (= e!278776 tp_is_empty!13441)))

(declare-fun res!283653 () Bool)

(declare-fun e!278773 () Bool)

(assert (=> start!42586 (=> (not res!283653) (not e!278773))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42586 (= res!283653 (validMask!0 mask!1365))))

(assert (=> start!42586 e!278773))

(assert (=> start!42586 tp_is_empty!13441))

(assert (=> start!42586 tp!42079))

(assert (=> start!42586 true))

(declare-datatypes ((array!30599 0))(
  ( (array!30600 (arr!14714 (Array (_ BitVec 32) (_ BitVec 64))) (size!15066 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30599)

(declare-fun array_inv!10604 (array!30599) Bool)

(assert (=> start!42586 (array_inv!10604 _keys!1025)))

(declare-datatypes ((V!19027 0))(
  ( (V!19028 (val!6765 Int)) )
))
(declare-datatypes ((ValueCell!6377 0))(
  ( (ValueCellFull!6377 (v!9054 V!19027)) (EmptyCell!6377) )
))
(declare-datatypes ((array!30601 0))(
  ( (array!30602 (arr!14715 (Array (_ BitVec 32) ValueCell!6377)) (size!15067 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30601)

(declare-fun e!278774 () Bool)

(declare-fun array_inv!10605 (array!30601) Bool)

(assert (=> start!42586 (and (array_inv!10605 _values!833) e!278774)))

(declare-fun b!474831 () Bool)

(declare-fun res!283652 () Bool)

(assert (=> b!474831 (=> (not res!283652) (not e!278773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30599 (_ BitVec 32)) Bool)

(assert (=> b!474831 (= res!283652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474832 () Bool)

(declare-fun e!278772 () Bool)

(assert (=> b!474832 (= e!278772 tp_is_empty!13441)))

(declare-fun mapNonEmpty!21880 () Bool)

(declare-fun mapRes!21880 () Bool)

(declare-fun tp!42078 () Bool)

(assert (=> mapNonEmpty!21880 (= mapRes!21880 (and tp!42078 e!278776))))

(declare-fun mapKey!21880 () (_ BitVec 32))

(declare-fun mapValue!21880 () ValueCell!6377)

(declare-fun mapRest!21880 () (Array (_ BitVec 32) ValueCell!6377))

(assert (=> mapNonEmpty!21880 (= (arr!14715 _values!833) (store mapRest!21880 mapKey!21880 mapValue!21880))))

(declare-fun b!474833 () Bool)

(assert (=> b!474833 (= e!278773 false)))

(declare-fun zeroValue!794 () V!19027)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((tuple2!8920 0))(
  ( (tuple2!8921 (_1!4470 (_ BitVec 64)) (_2!4470 V!19027)) )
))
(declare-datatypes ((List!9032 0))(
  ( (Nil!9029) (Cons!9028 (h!9884 tuple2!8920) (t!15014 List!9032)) )
))
(declare-datatypes ((ListLongMap!7847 0))(
  ( (ListLongMap!7848 (toList!3939 List!9032)) )
))
(declare-fun lt!216321 () ListLongMap!7847)

(declare-fun minValueAfter!38 () V!19027)

(declare-fun getCurrentListMapNoExtraKeys!2093 (array!30599 array!30601 (_ BitVec 32) (_ BitVec 32) V!19027 V!19027 (_ BitVec 32) Int) ListLongMap!7847)

(assert (=> b!474833 (= lt!216321 (getCurrentListMapNoExtraKeys!2093 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19027)

(declare-fun lt!216320 () ListLongMap!7847)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474833 (= lt!216320 (getCurrentListMapNoExtraKeys!2093 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21880 () Bool)

(assert (=> mapIsEmpty!21880 mapRes!21880))

(declare-fun b!474834 () Bool)

(assert (=> b!474834 (= e!278774 (and e!278772 mapRes!21880))))

(declare-fun condMapEmpty!21880 () Bool)

(declare-fun mapDefault!21880 () ValueCell!6377)

