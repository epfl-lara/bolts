; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42148 () Bool)

(assert start!42148)

(declare-fun b_free!11673 () Bool)

(declare-fun b_next!11673 () Bool)

(assert (=> start!42148 (= b_free!11673 (not b_next!11673))))

(declare-fun tp!41041 () Bool)

(declare-fun b_and!20113 () Bool)

(assert (=> start!42148 (= tp!41041 b_and!20113)))

(declare-fun b!470252 () Bool)

(declare-fun e!275497 () Bool)

(declare-fun e!275496 () Bool)

(declare-fun mapRes!21352 () Bool)

(assert (=> b!470252 (= e!275497 (and e!275496 mapRes!21352))))

(declare-fun condMapEmpty!21352 () Bool)

(declare-datatypes ((V!18573 0))(
  ( (V!18574 (val!6595 Int)) )
))
(declare-datatypes ((ValueCell!6207 0))(
  ( (ValueCellFull!6207 (v!8882 V!18573)) (EmptyCell!6207) )
))
(declare-datatypes ((array!29933 0))(
  ( (array!29934 (arr!14387 (Array (_ BitVec 32) ValueCell!6207)) (size!14739 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29933)

(declare-fun mapDefault!21352 () ValueCell!6207)

(assert (=> b!470252 (= condMapEmpty!21352 (= (arr!14387 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6207)) mapDefault!21352)))))

(declare-fun b!470253 () Bool)

(declare-fun e!275494 () Bool)

(assert (=> b!470253 (= e!275494 (not true))))

(declare-datatypes ((tuple2!8654 0))(
  ( (tuple2!8655 (_1!4337 (_ BitVec 64)) (_2!4337 V!18573)) )
))
(declare-datatypes ((List!8776 0))(
  ( (Nil!8773) (Cons!8772 (h!9628 tuple2!8654) (t!14746 List!8776)) )
))
(declare-datatypes ((ListLongMap!7581 0))(
  ( (ListLongMap!7582 (toList!3806 List!8776)) )
))
(declare-fun lt!213420 () ListLongMap!7581)

(declare-fun lt!213419 () ListLongMap!7581)

(assert (=> b!470253 (= lt!213420 lt!213419)))

(declare-fun minValueBefore!38 () V!18573)

(declare-fun zeroValue!794 () V!18573)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13738 0))(
  ( (Unit!13739) )
))
(declare-fun lt!213421 () Unit!13738)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29935 0))(
  ( (array!29936 (arr!14388 (Array (_ BitVec 32) (_ BitVec 64))) (size!14740 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29935)

(declare-fun minValueAfter!38 () V!18573)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!163 (array!29935 array!29933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18573 V!18573 V!18573 V!18573 (_ BitVec 32) Int) Unit!13738)

(assert (=> b!470253 (= lt!213421 (lemmaNoChangeToArrayThenSameMapNoExtras!163 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1968 (array!29935 array!29933 (_ BitVec 32) (_ BitVec 32) V!18573 V!18573 (_ BitVec 32) Int) ListLongMap!7581)

(assert (=> b!470253 (= lt!213419 (getCurrentListMapNoExtraKeys!1968 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470253 (= lt!213420 (getCurrentListMapNoExtraKeys!1968 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470254 () Bool)

(declare-fun res!281058 () Bool)

(assert (=> b!470254 (=> (not res!281058) (not e!275494))))

(assert (=> b!470254 (= res!281058 (and (= (size!14739 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14740 _keys!1025) (size!14739 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470255 () Bool)

(declare-fun res!281059 () Bool)

(assert (=> b!470255 (=> (not res!281059) (not e!275494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29935 (_ BitVec 32)) Bool)

(assert (=> b!470255 (= res!281059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470256 () Bool)

(declare-fun e!275498 () Bool)

(declare-fun tp_is_empty!13101 () Bool)

(assert (=> b!470256 (= e!275498 tp_is_empty!13101)))

(declare-fun b!470257 () Bool)

(assert (=> b!470257 (= e!275496 tp_is_empty!13101)))

(declare-fun res!281061 () Bool)

(assert (=> start!42148 (=> (not res!281061) (not e!275494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42148 (= res!281061 (validMask!0 mask!1365))))

(assert (=> start!42148 e!275494))

(assert (=> start!42148 tp_is_empty!13101))

(assert (=> start!42148 tp!41041))

(assert (=> start!42148 true))

(declare-fun array_inv!10380 (array!29935) Bool)

(assert (=> start!42148 (array_inv!10380 _keys!1025)))

(declare-fun array_inv!10381 (array!29933) Bool)

(assert (=> start!42148 (and (array_inv!10381 _values!833) e!275497)))

(declare-fun mapIsEmpty!21352 () Bool)

(assert (=> mapIsEmpty!21352 mapRes!21352))

(declare-fun b!470258 () Bool)

(declare-fun res!281060 () Bool)

(assert (=> b!470258 (=> (not res!281060) (not e!275494))))

(declare-datatypes ((List!8777 0))(
  ( (Nil!8774) (Cons!8773 (h!9629 (_ BitVec 64)) (t!14747 List!8777)) )
))
(declare-fun arrayNoDuplicates!0 (array!29935 (_ BitVec 32) List!8777) Bool)

(assert (=> b!470258 (= res!281060 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8774))))

(declare-fun mapNonEmpty!21352 () Bool)

(declare-fun tp!41040 () Bool)

(assert (=> mapNonEmpty!21352 (= mapRes!21352 (and tp!41040 e!275498))))

(declare-fun mapKey!21352 () (_ BitVec 32))

(declare-fun mapValue!21352 () ValueCell!6207)

(declare-fun mapRest!21352 () (Array (_ BitVec 32) ValueCell!6207))

(assert (=> mapNonEmpty!21352 (= (arr!14387 _values!833) (store mapRest!21352 mapKey!21352 mapValue!21352))))

(assert (= (and start!42148 res!281061) b!470254))

(assert (= (and b!470254 res!281058) b!470255))

(assert (= (and b!470255 res!281059) b!470258))

(assert (= (and b!470258 res!281060) b!470253))

(assert (= (and b!470252 condMapEmpty!21352) mapIsEmpty!21352))

(assert (= (and b!470252 (not condMapEmpty!21352)) mapNonEmpty!21352))

(get-info :version)

(assert (= (and mapNonEmpty!21352 ((_ is ValueCellFull!6207) mapValue!21352)) b!470256))

(assert (= (and b!470252 ((_ is ValueCellFull!6207) mapDefault!21352)) b!470257))

(assert (= start!42148 b!470252))

(declare-fun m!452575 () Bool)

(assert (=> b!470253 m!452575))

(declare-fun m!452577 () Bool)

(assert (=> b!470253 m!452577))

(declare-fun m!452579 () Bool)

(assert (=> b!470253 m!452579))

(declare-fun m!452581 () Bool)

(assert (=> b!470255 m!452581))

(declare-fun m!452583 () Bool)

(assert (=> b!470258 m!452583))

(declare-fun m!452585 () Bool)

(assert (=> start!42148 m!452585))

(declare-fun m!452587 () Bool)

(assert (=> start!42148 m!452587))

(declare-fun m!452589 () Bool)

(assert (=> start!42148 m!452589))

(declare-fun m!452591 () Bool)

(assert (=> mapNonEmpty!21352 m!452591))

(check-sat b_and!20113 (not b!470255) (not b!470253) (not start!42148) tp_is_empty!13101 (not b!470258) (not mapNonEmpty!21352) (not b_next!11673))
(check-sat b_and!20113 (not b_next!11673))
