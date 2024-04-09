; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42272 () Bool)

(assert start!42272)

(declare-fun b_free!11769 () Bool)

(declare-fun b_next!11769 () Bool)

(assert (=> start!42272 (= b_free!11769 (not b_next!11769))))

(declare-fun tp!41335 () Bool)

(declare-fun b_and!20225 () Bool)

(assert (=> start!42272 (= tp!41335 b_and!20225)))

(declare-fun b!471430 () Bool)

(declare-fun res!281698 () Bool)

(declare-fun e!276325 () Bool)

(assert (=> b!471430 (=> (not res!281698) (not e!276325))))

(declare-datatypes ((array!30121 0))(
  ( (array!30122 (arr!14479 (Array (_ BitVec 32) (_ BitVec 64))) (size!14831 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30121)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30121 (_ BitVec 32)) Bool)

(assert (=> b!471430 (= res!281698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!281699 () Bool)

(assert (=> start!42272 (=> (not res!281699) (not e!276325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42272 (= res!281699 (validMask!0 mask!1365))))

(assert (=> start!42272 e!276325))

(declare-fun tp_is_empty!13197 () Bool)

(assert (=> start!42272 tp_is_empty!13197))

(assert (=> start!42272 tp!41335))

(assert (=> start!42272 true))

(declare-fun array_inv!10446 (array!30121) Bool)

(assert (=> start!42272 (array_inv!10446 _keys!1025)))

(declare-datatypes ((V!18701 0))(
  ( (V!18702 (val!6643 Int)) )
))
(declare-datatypes ((ValueCell!6255 0))(
  ( (ValueCellFull!6255 (v!8930 V!18701)) (EmptyCell!6255) )
))
(declare-datatypes ((array!30123 0))(
  ( (array!30124 (arr!14480 (Array (_ BitVec 32) ValueCell!6255)) (size!14832 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30123)

(declare-fun e!276327 () Bool)

(declare-fun array_inv!10447 (array!30123) Bool)

(assert (=> start!42272 (and (array_inv!10447 _values!833) e!276327)))

(declare-fun b!471431 () Bool)

(declare-fun e!276324 () Bool)

(declare-fun mapRes!21502 () Bool)

(assert (=> b!471431 (= e!276327 (and e!276324 mapRes!21502))))

(declare-fun condMapEmpty!21502 () Bool)

(declare-fun mapDefault!21502 () ValueCell!6255)

(assert (=> b!471431 (= condMapEmpty!21502 (= (arr!14480 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6255)) mapDefault!21502)))))

(declare-fun b!471432 () Bool)

(assert (=> b!471432 (= e!276324 tp_is_empty!13197)))

(declare-fun b!471433 () Bool)

(declare-fun res!281696 () Bool)

(assert (=> b!471433 (=> (not res!281696) (not e!276325))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471433 (= res!281696 (and (= (size!14832 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14831 _keys!1025) (size!14832 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471434 () Bool)

(declare-fun res!281697 () Bool)

(assert (=> b!471434 (=> (not res!281697) (not e!276325))))

(declare-datatypes ((List!8845 0))(
  ( (Nil!8842) (Cons!8841 (h!9697 (_ BitVec 64)) (t!14819 List!8845)) )
))
(declare-fun arrayNoDuplicates!0 (array!30121 (_ BitVec 32) List!8845) Bool)

(assert (=> b!471434 (= res!281697 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8842))))

(declare-fun mapIsEmpty!21502 () Bool)

(assert (=> mapIsEmpty!21502 mapRes!21502))

(declare-fun mapNonEmpty!21502 () Bool)

(declare-fun tp!41334 () Bool)

(declare-fun e!276326 () Bool)

(assert (=> mapNonEmpty!21502 (= mapRes!21502 (and tp!41334 e!276326))))

(declare-fun mapKey!21502 () (_ BitVec 32))

(declare-fun mapRest!21502 () (Array (_ BitVec 32) ValueCell!6255))

(declare-fun mapValue!21502 () ValueCell!6255)

(assert (=> mapNonEmpty!21502 (= (arr!14480 _values!833) (store mapRest!21502 mapKey!21502 mapValue!21502))))

(declare-fun b!471435 () Bool)

(assert (=> b!471435 (= e!276325 (not true))))

(declare-datatypes ((tuple2!8726 0))(
  ( (tuple2!8727 (_1!4373 (_ BitVec 64)) (_2!4373 V!18701)) )
))
(declare-datatypes ((List!8846 0))(
  ( (Nil!8843) (Cons!8842 (h!9698 tuple2!8726) (t!14820 List!8846)) )
))
(declare-datatypes ((ListLongMap!7653 0))(
  ( (ListLongMap!7654 (toList!3842 List!8846)) )
))
(declare-fun lt!213931 () ListLongMap!7653)

(declare-fun lt!213933 () ListLongMap!7653)

(assert (=> b!471435 (= lt!213931 lt!213933)))

(declare-datatypes ((Unit!13810 0))(
  ( (Unit!13811) )
))
(declare-fun lt!213932 () Unit!13810)

(declare-fun minValueBefore!38 () V!18701)

(declare-fun zeroValue!794 () V!18701)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18701)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!199 (array!30121 array!30123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18701 V!18701 V!18701 V!18701 (_ BitVec 32) Int) Unit!13810)

(assert (=> b!471435 (= lt!213932 (lemmaNoChangeToArrayThenSameMapNoExtras!199 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2004 (array!30121 array!30123 (_ BitVec 32) (_ BitVec 32) V!18701 V!18701 (_ BitVec 32) Int) ListLongMap!7653)

(assert (=> b!471435 (= lt!213933 (getCurrentListMapNoExtraKeys!2004 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471435 (= lt!213931 (getCurrentListMapNoExtraKeys!2004 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471436 () Bool)

(assert (=> b!471436 (= e!276326 tp_is_empty!13197)))

(assert (= (and start!42272 res!281699) b!471433))

(assert (= (and b!471433 res!281696) b!471430))

(assert (= (and b!471430 res!281698) b!471434))

(assert (= (and b!471434 res!281697) b!471435))

(assert (= (and b!471431 condMapEmpty!21502) mapIsEmpty!21502))

(assert (= (and b!471431 (not condMapEmpty!21502)) mapNonEmpty!21502))

(get-info :version)

(assert (= (and mapNonEmpty!21502 ((_ is ValueCellFull!6255) mapValue!21502)) b!471436))

(assert (= (and b!471431 ((_ is ValueCellFull!6255) mapDefault!21502)) b!471432))

(assert (= start!42272 b!471431))

(declare-fun m!453571 () Bool)

(assert (=> start!42272 m!453571))

(declare-fun m!453573 () Bool)

(assert (=> start!42272 m!453573))

(declare-fun m!453575 () Bool)

(assert (=> start!42272 m!453575))

(declare-fun m!453577 () Bool)

(assert (=> mapNonEmpty!21502 m!453577))

(declare-fun m!453579 () Bool)

(assert (=> b!471430 m!453579))

(declare-fun m!453581 () Bool)

(assert (=> b!471435 m!453581))

(declare-fun m!453583 () Bool)

(assert (=> b!471435 m!453583))

(declare-fun m!453585 () Bool)

(assert (=> b!471435 m!453585))

(declare-fun m!453587 () Bool)

(assert (=> b!471434 m!453587))

(check-sat (not b!471435) (not start!42272) (not b!471434) tp_is_empty!13197 b_and!20225 (not b_next!11769) (not b!471430) (not mapNonEmpty!21502))
(check-sat b_and!20225 (not b_next!11769))
