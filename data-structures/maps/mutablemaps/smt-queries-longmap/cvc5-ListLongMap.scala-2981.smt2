; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42170 () Bool)

(assert start!42170)

(declare-fun b_free!11695 () Bool)

(declare-fun b_next!11695 () Bool)

(assert (=> start!42170 (= b_free!11695 (not b_next!11695))))

(declare-fun tp!41106 () Bool)

(declare-fun b_and!20135 () Bool)

(assert (=> start!42170 (= tp!41106 b_and!20135)))

(declare-fun b!470483 () Bool)

(declare-fun e!275659 () Bool)

(declare-fun tp_is_empty!13123 () Bool)

(assert (=> b!470483 (= e!275659 tp_is_empty!13123)))

(declare-fun b!470484 () Bool)

(declare-fun e!275660 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29973 0))(
  ( (array!29974 (arr!14407 (Array (_ BitVec 32) (_ BitVec 64))) (size!14759 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29973)

(assert (=> b!470484 (= e!275660 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14759 _keys!1025)))))))

(declare-datatypes ((V!18603 0))(
  ( (V!18604 (val!6606 Int)) )
))
(declare-datatypes ((tuple2!8668 0))(
  ( (tuple2!8669 (_1!4344 (_ BitVec 64)) (_2!4344 V!18603)) )
))
(declare-datatypes ((List!8791 0))(
  ( (Nil!8788) (Cons!8787 (h!9643 tuple2!8668) (t!14761 List!8791)) )
))
(declare-datatypes ((ListLongMap!7595 0))(
  ( (ListLongMap!7596 (toList!3813 List!8791)) )
))
(declare-fun lt!213519 () ListLongMap!7595)

(declare-fun lt!213520 () ListLongMap!7595)

(assert (=> b!470484 (= lt!213519 lt!213520)))

(declare-fun zeroValue!794 () V!18603)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13752 0))(
  ( (Unit!13753) )
))
(declare-fun lt!213518 () Unit!13752)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18603)

(declare-datatypes ((ValueCell!6218 0))(
  ( (ValueCellFull!6218 (v!8893 V!18603)) (EmptyCell!6218) )
))
(declare-datatypes ((array!29975 0))(
  ( (array!29976 (arr!14408 (Array (_ BitVec 32) ValueCell!6218)) (size!14760 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29975)

(declare-fun minValueAfter!38 () V!18603)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!170 (array!29973 array!29975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18603 V!18603 V!18603 V!18603 (_ BitVec 32) Int) Unit!13752)

(assert (=> b!470484 (= lt!213518 (lemmaNoChangeToArrayThenSameMapNoExtras!170 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1975 (array!29973 array!29975 (_ BitVec 32) (_ BitVec 32) V!18603 V!18603 (_ BitVec 32) Int) ListLongMap!7595)

(assert (=> b!470484 (= lt!213520 (getCurrentListMapNoExtraKeys!1975 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470484 (= lt!213519 (getCurrentListMapNoExtraKeys!1975 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21385 () Bool)

(declare-fun mapRes!21385 () Bool)

(assert (=> mapIsEmpty!21385 mapRes!21385))

(declare-fun mapNonEmpty!21385 () Bool)

(declare-fun tp!41107 () Bool)

(assert (=> mapNonEmpty!21385 (= mapRes!21385 (and tp!41107 e!275659))))

(declare-fun mapKey!21385 () (_ BitVec 32))

(declare-fun mapValue!21385 () ValueCell!6218)

(declare-fun mapRest!21385 () (Array (_ BitVec 32) ValueCell!6218))

(assert (=> mapNonEmpty!21385 (= (arr!14408 _values!833) (store mapRest!21385 mapKey!21385 mapValue!21385))))

(declare-fun b!470485 () Bool)

(declare-fun e!275661 () Bool)

(declare-fun e!275662 () Bool)

(assert (=> b!470485 (= e!275661 (and e!275662 mapRes!21385))))

(declare-fun condMapEmpty!21385 () Bool)

(declare-fun mapDefault!21385 () ValueCell!6218)

