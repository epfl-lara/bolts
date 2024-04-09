; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42202 () Bool)

(assert start!42202)

(declare-fun b_free!11713 () Bool)

(declare-fun b_next!11713 () Bool)

(assert (=> start!42202 (= b_free!11713 (not b_next!11713))))

(declare-fun tp!41164 () Bool)

(declare-fun b_and!20161 () Bool)

(assert (=> start!42202 (= tp!41164 b_and!20161)))

(declare-fun mapIsEmpty!21415 () Bool)

(declare-fun mapRes!21415 () Bool)

(assert (=> mapIsEmpty!21415 mapRes!21415))

(declare-fun b!470757 () Bool)

(declare-fun e!275852 () Bool)

(declare-fun tp_is_empty!13141 () Bool)

(assert (=> b!470757 (= e!275852 tp_is_empty!13141)))

(declare-fun b!470758 () Bool)

(declare-fun e!275851 () Bool)

(assert (=> b!470758 (= e!275851 (not true))))

(declare-datatypes ((V!18627 0))(
  ( (V!18628 (val!6615 Int)) )
))
(declare-datatypes ((tuple2!8680 0))(
  ( (tuple2!8681 (_1!4350 (_ BitVec 64)) (_2!4350 V!18627)) )
))
(declare-datatypes ((List!8803 0))(
  ( (Nil!8800) (Cons!8799 (h!9655 tuple2!8680) (t!14775 List!8803)) )
))
(declare-datatypes ((ListLongMap!7607 0))(
  ( (ListLongMap!7608 (toList!3819 List!8803)) )
))
(declare-fun lt!213639 () ListLongMap!7607)

(declare-fun lt!213641 () ListLongMap!7607)

(assert (=> b!470758 (= lt!213639 lt!213641)))

(declare-fun minValueBefore!38 () V!18627)

(declare-fun zeroValue!794 () V!18627)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13764 0))(
  ( (Unit!13765) )
))
(declare-fun lt!213640 () Unit!13764)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30011 0))(
  ( (array!30012 (arr!14425 (Array (_ BitVec 32) (_ BitVec 64))) (size!14777 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30011)

(declare-datatypes ((ValueCell!6227 0))(
  ( (ValueCellFull!6227 (v!8902 V!18627)) (EmptyCell!6227) )
))
(declare-datatypes ((array!30013 0))(
  ( (array!30014 (arr!14426 (Array (_ BitVec 32) ValueCell!6227)) (size!14778 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30013)

(declare-fun minValueAfter!38 () V!18627)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!176 (array!30011 array!30013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18627 V!18627 V!18627 V!18627 (_ BitVec 32) Int) Unit!13764)

(assert (=> b!470758 (= lt!213640 (lemmaNoChangeToArrayThenSameMapNoExtras!176 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1981 (array!30011 array!30013 (_ BitVec 32) (_ BitVec 32) V!18627 V!18627 (_ BitVec 32) Int) ListLongMap!7607)

(assert (=> b!470758 (= lt!213641 (getCurrentListMapNoExtraKeys!1981 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470758 (= lt!213639 (getCurrentListMapNoExtraKeys!1981 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21415 () Bool)

(declare-fun tp!41163 () Bool)

(assert (=> mapNonEmpty!21415 (= mapRes!21415 (and tp!41163 e!275852))))

(declare-fun mapKey!21415 () (_ BitVec 32))

(declare-fun mapRest!21415 () (Array (_ BitVec 32) ValueCell!6227))

(declare-fun mapValue!21415 () ValueCell!6227)

(assert (=> mapNonEmpty!21415 (= (arr!14426 _values!833) (store mapRest!21415 mapKey!21415 mapValue!21415))))

(declare-fun b!470759 () Bool)

(declare-fun res!281330 () Bool)

(assert (=> b!470759 (=> (not res!281330) (not e!275851))))

(declare-datatypes ((List!8804 0))(
  ( (Nil!8801) (Cons!8800 (h!9656 (_ BitVec 64)) (t!14776 List!8804)) )
))
(declare-fun arrayNoDuplicates!0 (array!30011 (_ BitVec 32) List!8804) Bool)

(assert (=> b!470759 (= res!281330 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8801))))

(declare-fun b!470760 () Bool)

(declare-fun e!275853 () Bool)

(declare-fun e!275849 () Bool)

(assert (=> b!470760 (= e!275853 (and e!275849 mapRes!21415))))

(declare-fun condMapEmpty!21415 () Bool)

(declare-fun mapDefault!21415 () ValueCell!6227)

