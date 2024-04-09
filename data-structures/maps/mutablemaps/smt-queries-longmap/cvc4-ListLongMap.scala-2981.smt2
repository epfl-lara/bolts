; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42174 () Bool)

(assert start!42174)

(declare-fun b_free!11699 () Bool)

(declare-fun b_next!11699 () Bool)

(assert (=> start!42174 (= b_free!11699 (not b_next!11699))))

(declare-fun tp!41119 () Bool)

(declare-fun b_and!20139 () Bool)

(assert (=> start!42174 (= tp!41119 b_and!20139)))

(declare-fun b!470525 () Bool)

(declare-fun e!275692 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29981 0))(
  ( (array!29982 (arr!14411 (Array (_ BitVec 32) (_ BitVec 64))) (size!14763 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29981)

(assert (=> b!470525 (= e!275692 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14763 _keys!1025)))))))

(declare-datatypes ((V!18607 0))(
  ( (V!18608 (val!6608 Int)) )
))
(declare-datatypes ((tuple2!8672 0))(
  ( (tuple2!8673 (_1!4346 (_ BitVec 64)) (_2!4346 V!18607)) )
))
(declare-datatypes ((List!8794 0))(
  ( (Nil!8791) (Cons!8790 (h!9646 tuple2!8672) (t!14764 List!8794)) )
))
(declare-datatypes ((ListLongMap!7599 0))(
  ( (ListLongMap!7600 (toList!3815 List!8794)) )
))
(declare-fun lt!213537 () ListLongMap!7599)

(declare-fun lt!213538 () ListLongMap!7599)

(assert (=> b!470525 (= lt!213537 lt!213538)))

(declare-fun minValueBefore!38 () V!18607)

(declare-fun zeroValue!794 () V!18607)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13756 0))(
  ( (Unit!13757) )
))
(declare-fun lt!213536 () Unit!13756)

(declare-datatypes ((ValueCell!6220 0))(
  ( (ValueCellFull!6220 (v!8895 V!18607)) (EmptyCell!6220) )
))
(declare-datatypes ((array!29983 0))(
  ( (array!29984 (arr!14412 (Array (_ BitVec 32) ValueCell!6220)) (size!14764 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29983)

(declare-fun minValueAfter!38 () V!18607)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!172 (array!29981 array!29983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18607 V!18607 V!18607 V!18607 (_ BitVec 32) Int) Unit!13756)

(assert (=> b!470525 (= lt!213536 (lemmaNoChangeToArrayThenSameMapNoExtras!172 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1977 (array!29981 array!29983 (_ BitVec 32) (_ BitVec 32) V!18607 V!18607 (_ BitVec 32) Int) ListLongMap!7599)

(assert (=> b!470525 (= lt!213538 (getCurrentListMapNoExtraKeys!1977 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470525 (= lt!213537 (getCurrentListMapNoExtraKeys!1977 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281216 () Bool)

(assert (=> start!42174 (=> (not res!281216) (not e!275692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42174 (= res!281216 (validMask!0 mask!1365))))

(assert (=> start!42174 e!275692))

(declare-fun tp_is_empty!13127 () Bool)

(assert (=> start!42174 tp_is_empty!13127))

(assert (=> start!42174 tp!41119))

(assert (=> start!42174 true))

(declare-fun array_inv!10400 (array!29981) Bool)

(assert (=> start!42174 (array_inv!10400 _keys!1025)))

(declare-fun e!275690 () Bool)

(declare-fun array_inv!10401 (array!29983) Bool)

(assert (=> start!42174 (and (array_inv!10401 _values!833) e!275690)))

(declare-fun b!470526 () Bool)

(declare-fun e!275693 () Bool)

(assert (=> b!470526 (= e!275693 tp_is_empty!13127)))

(declare-fun mapNonEmpty!21391 () Bool)

(declare-fun mapRes!21391 () Bool)

(declare-fun tp!41118 () Bool)

(assert (=> mapNonEmpty!21391 (= mapRes!21391 (and tp!41118 e!275693))))

(declare-fun mapValue!21391 () ValueCell!6220)

(declare-fun mapKey!21391 () (_ BitVec 32))

(declare-fun mapRest!21391 () (Array (_ BitVec 32) ValueCell!6220))

(assert (=> mapNonEmpty!21391 (= (arr!14412 _values!833) (store mapRest!21391 mapKey!21391 mapValue!21391))))

(declare-fun b!470527 () Bool)

(declare-fun res!281217 () Bool)

(assert (=> b!470527 (=> (not res!281217) (not e!275692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29981 (_ BitVec 32)) Bool)

(assert (=> b!470527 (= res!281217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470528 () Bool)

(declare-fun res!281215 () Bool)

(assert (=> b!470528 (=> (not res!281215) (not e!275692))))

(declare-datatypes ((List!8795 0))(
  ( (Nil!8792) (Cons!8791 (h!9647 (_ BitVec 64)) (t!14765 List!8795)) )
))
(declare-fun arrayNoDuplicates!0 (array!29981 (_ BitVec 32) List!8795) Bool)

(assert (=> b!470528 (= res!281215 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8792))))

(declare-fun b!470529 () Bool)

(declare-fun e!275689 () Bool)

(assert (=> b!470529 (= e!275690 (and e!275689 mapRes!21391))))

(declare-fun condMapEmpty!21391 () Bool)

(declare-fun mapDefault!21391 () ValueCell!6220)

