; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42054 () Bool)

(assert start!42054)

(declare-fun b_free!11599 () Bool)

(declare-fun b_next!11599 () Bool)

(assert (=> start!42054 (= b_free!11599 (not b_next!11599))))

(declare-fun tp!40816 () Bool)

(declare-fun b_and!20027 () Bool)

(assert (=> start!42054 (= tp!40816 b_and!20027)))

(declare-fun b!469226 () Bool)

(declare-fun res!280469 () Bool)

(declare-fun e!274762 () Bool)

(assert (=> b!469226 (=> (not res!280469) (not e!274762))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29789 0))(
  ( (array!29790 (arr!14316 (Array (_ BitVec 32) (_ BitVec 64))) (size!14668 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29789)

(declare-datatypes ((V!18475 0))(
  ( (V!18476 (val!6558 Int)) )
))
(declare-datatypes ((ValueCell!6170 0))(
  ( (ValueCellFull!6170 (v!8844 V!18475)) (EmptyCell!6170) )
))
(declare-datatypes ((array!29791 0))(
  ( (array!29792 (arr!14317 (Array (_ BitVec 32) ValueCell!6170)) (size!14669 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29791)

(declare-fun mask!1365 () (_ BitVec 32))

(assert (=> b!469226 (= res!280469 (and (= (size!14669 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14668 _keys!1025) (size!14669 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469227 () Bool)

(declare-fun res!280468 () Bool)

(assert (=> b!469227 (=> (not res!280468) (not e!274762))))

(declare-datatypes ((List!8724 0))(
  ( (Nil!8721) (Cons!8720 (h!9576 (_ BitVec 64)) (t!14692 List!8724)) )
))
(declare-fun arrayNoDuplicates!0 (array!29789 (_ BitVec 32) List!8724) Bool)

(assert (=> b!469227 (= res!280468 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8721))))

(declare-fun b!469228 () Bool)

(declare-fun e!274761 () Bool)

(assert (=> b!469228 (= e!274762 (not e!274761))))

(declare-fun res!280467 () Bool)

(assert (=> b!469228 (=> res!280467 e!274761)))

(assert (=> b!469228 (= res!280467 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8606 0))(
  ( (tuple2!8607 (_1!4313 (_ BitVec 64)) (_2!4313 V!18475)) )
))
(declare-datatypes ((List!8725 0))(
  ( (Nil!8722) (Cons!8721 (h!9577 tuple2!8606) (t!14693 List!8725)) )
))
(declare-datatypes ((ListLongMap!7533 0))(
  ( (ListLongMap!7534 (toList!3782 List!8725)) )
))
(declare-fun lt!212661 () ListLongMap!7533)

(declare-fun lt!212657 () ListLongMap!7533)

(assert (=> b!469228 (= lt!212661 lt!212657)))

(declare-fun zeroValue!794 () V!18475)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13688 0))(
  ( (Unit!13689) )
))
(declare-fun lt!212655 () Unit!13688)

(declare-fun minValueBefore!38 () V!18475)

(declare-fun minValueAfter!38 () V!18475)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!141 (array!29789 array!29791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18475 V!18475 V!18475 V!18475 (_ BitVec 32) Int) Unit!13688)

(assert (=> b!469228 (= lt!212655 (lemmaNoChangeToArrayThenSameMapNoExtras!141 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1946 (array!29789 array!29791 (_ BitVec 32) (_ BitVec 32) V!18475 V!18475 (_ BitVec 32) Int) ListLongMap!7533)

(assert (=> b!469228 (= lt!212657 (getCurrentListMapNoExtraKeys!1946 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469228 (= lt!212661 (getCurrentListMapNoExtraKeys!1946 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469229 () Bool)

(assert (=> b!469229 (= e!274761 true)))

(declare-fun lt!212660 () tuple2!8606)

(declare-fun +!1670 (ListLongMap!7533 tuple2!8606) ListLongMap!7533)

(assert (=> b!469229 (= (+!1670 lt!212661 lt!212660) (+!1670 (+!1670 lt!212661 (tuple2!8607 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212660))))

(assert (=> b!469229 (= lt!212660 (tuple2!8607 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212656 () Unit!13688)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!111 (ListLongMap!7533 (_ BitVec 64) V!18475 V!18475) Unit!13688)

(assert (=> b!469229 (= lt!212656 (addSameAsAddTwiceSameKeyDiffValues!111 lt!212661 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212658 () ListLongMap!7533)

(declare-fun getCurrentListMap!2192 (array!29789 array!29791 (_ BitVec 32) (_ BitVec 32) V!18475 V!18475 (_ BitVec 32) Int) ListLongMap!7533)

(assert (=> b!469229 (= lt!212658 (getCurrentListMap!2192 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212659 () ListLongMap!7533)

(assert (=> b!469229 (= lt!212659 (getCurrentListMap!2192 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21238 () Bool)

(declare-fun mapRes!21238 () Bool)

(declare-fun tp!40815 () Bool)

(declare-fun e!274757 () Bool)

(assert (=> mapNonEmpty!21238 (= mapRes!21238 (and tp!40815 e!274757))))

(declare-fun mapRest!21238 () (Array (_ BitVec 32) ValueCell!6170))

(declare-fun mapValue!21238 () ValueCell!6170)

(declare-fun mapKey!21238 () (_ BitVec 32))

(assert (=> mapNonEmpty!21238 (= (arr!14317 _values!833) (store mapRest!21238 mapKey!21238 mapValue!21238))))

(declare-fun b!469230 () Bool)

(declare-fun e!274758 () Bool)

(declare-fun e!274759 () Bool)

(assert (=> b!469230 (= e!274758 (and e!274759 mapRes!21238))))

(declare-fun condMapEmpty!21238 () Bool)

(declare-fun mapDefault!21238 () ValueCell!6170)

