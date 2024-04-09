; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42166 () Bool)

(assert start!42166)

(declare-fun b_free!11691 () Bool)

(declare-fun b_next!11691 () Bool)

(assert (=> start!42166 (= b_free!11691 (not b_next!11691))))

(declare-fun tp!41094 () Bool)

(declare-fun b_and!20131 () Bool)

(assert (=> start!42166 (= tp!41094 b_and!20131)))

(declare-fun b!470441 () Bool)

(declare-fun res!281167 () Bool)

(declare-fun e!275631 () Bool)

(assert (=> b!470441 (=> (not res!281167) (not e!275631))))

(declare-datatypes ((array!29965 0))(
  ( (array!29966 (arr!14403 (Array (_ BitVec 32) (_ BitVec 64))) (size!14755 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29965)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29965 (_ BitVec 32)) Bool)

(assert (=> b!470441 (= res!281167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470442 () Bool)

(declare-fun res!281168 () Bool)

(assert (=> b!470442 (=> (not res!281168) (not e!275631))))

(declare-datatypes ((List!8788 0))(
  ( (Nil!8785) (Cons!8784 (h!9640 (_ BitVec 64)) (t!14758 List!8788)) )
))
(declare-fun arrayNoDuplicates!0 (array!29965 (_ BitVec 32) List!8788) Bool)

(assert (=> b!470442 (= res!281168 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8785))))

(declare-fun b!470443 () Bool)

(declare-fun e!275633 () Bool)

(declare-fun e!275630 () Bool)

(declare-fun mapRes!21379 () Bool)

(assert (=> b!470443 (= e!275633 (and e!275630 mapRes!21379))))

(declare-fun condMapEmpty!21379 () Bool)

(declare-datatypes ((V!18597 0))(
  ( (V!18598 (val!6604 Int)) )
))
(declare-datatypes ((ValueCell!6216 0))(
  ( (ValueCellFull!6216 (v!8891 V!18597)) (EmptyCell!6216) )
))
(declare-datatypes ((array!29967 0))(
  ( (array!29968 (arr!14404 (Array (_ BitVec 32) ValueCell!6216)) (size!14756 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29967)

(declare-fun mapDefault!21379 () ValueCell!6216)

(assert (=> b!470443 (= condMapEmpty!21379 (= (arr!14404 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6216)) mapDefault!21379)))))

(declare-fun b!470444 () Bool)

(declare-fun e!275629 () Bool)

(declare-fun tp_is_empty!13119 () Bool)

(assert (=> b!470444 (= e!275629 tp_is_empty!13119)))

(declare-fun b!470445 () Bool)

(assert (=> b!470445 (= e!275631 (not true))))

(declare-datatypes ((tuple2!8666 0))(
  ( (tuple2!8667 (_1!4343 (_ BitVec 64)) (_2!4343 V!18597)) )
))
(declare-datatypes ((List!8789 0))(
  ( (Nil!8786) (Cons!8785 (h!9641 tuple2!8666) (t!14759 List!8789)) )
))
(declare-datatypes ((ListLongMap!7593 0))(
  ( (ListLongMap!7594 (toList!3812 List!8789)) )
))
(declare-fun lt!213502 () ListLongMap!7593)

(declare-fun lt!213501 () ListLongMap!7593)

(assert (=> b!470445 (= lt!213502 lt!213501)))

(declare-fun minValueBefore!38 () V!18597)

(declare-datatypes ((Unit!13750 0))(
  ( (Unit!13751) )
))
(declare-fun lt!213500 () Unit!13750)

(declare-fun zeroValue!794 () V!18597)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18597)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!169 (array!29965 array!29967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18597 V!18597 V!18597 V!18597 (_ BitVec 32) Int) Unit!13750)

(assert (=> b!470445 (= lt!213500 (lemmaNoChangeToArrayThenSameMapNoExtras!169 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1974 (array!29965 array!29967 (_ BitVec 32) (_ BitVec 32) V!18597 V!18597 (_ BitVec 32) Int) ListLongMap!7593)

(assert (=> b!470445 (= lt!213501 (getCurrentListMapNoExtraKeys!1974 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470445 (= lt!213502 (getCurrentListMapNoExtraKeys!1974 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21379 () Bool)

(assert (=> mapIsEmpty!21379 mapRes!21379))

(declare-fun res!281169 () Bool)

(assert (=> start!42166 (=> (not res!281169) (not e!275631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42166 (= res!281169 (validMask!0 mask!1365))))

(assert (=> start!42166 e!275631))

(assert (=> start!42166 tp_is_empty!13119))

(assert (=> start!42166 tp!41094))

(assert (=> start!42166 true))

(declare-fun array_inv!10394 (array!29965) Bool)

(assert (=> start!42166 (array_inv!10394 _keys!1025)))

(declare-fun array_inv!10395 (array!29967) Bool)

(assert (=> start!42166 (and (array_inv!10395 _values!833) e!275633)))

(declare-fun b!470446 () Bool)

(assert (=> b!470446 (= e!275630 tp_is_empty!13119)))

(declare-fun mapNonEmpty!21379 () Bool)

(declare-fun tp!41095 () Bool)

(assert (=> mapNonEmpty!21379 (= mapRes!21379 (and tp!41095 e!275629))))

(declare-fun mapKey!21379 () (_ BitVec 32))

(declare-fun mapRest!21379 () (Array (_ BitVec 32) ValueCell!6216))

(declare-fun mapValue!21379 () ValueCell!6216)

(assert (=> mapNonEmpty!21379 (= (arr!14404 _values!833) (store mapRest!21379 mapKey!21379 mapValue!21379))))

(declare-fun b!470447 () Bool)

(declare-fun res!281166 () Bool)

(assert (=> b!470447 (=> (not res!281166) (not e!275631))))

(assert (=> b!470447 (= res!281166 (and (= (size!14756 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14755 _keys!1025) (size!14756 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42166 res!281169) b!470447))

(assert (= (and b!470447 res!281166) b!470441))

(assert (= (and b!470441 res!281167) b!470442))

(assert (= (and b!470442 res!281168) b!470445))

(assert (= (and b!470443 condMapEmpty!21379) mapIsEmpty!21379))

(assert (= (and b!470443 (not condMapEmpty!21379)) mapNonEmpty!21379))

(get-info :version)

(assert (= (and mapNonEmpty!21379 ((_ is ValueCellFull!6216) mapValue!21379)) b!470444))

(assert (= (and b!470443 ((_ is ValueCellFull!6216) mapDefault!21379)) b!470446))

(assert (= start!42166 b!470443))

(declare-fun m!452737 () Bool)

(assert (=> start!42166 m!452737))

(declare-fun m!452739 () Bool)

(assert (=> start!42166 m!452739))

(declare-fun m!452741 () Bool)

(assert (=> start!42166 m!452741))

(declare-fun m!452743 () Bool)

(assert (=> mapNonEmpty!21379 m!452743))

(declare-fun m!452745 () Bool)

(assert (=> b!470442 m!452745))

(declare-fun m!452747 () Bool)

(assert (=> b!470441 m!452747))

(declare-fun m!452749 () Bool)

(assert (=> b!470445 m!452749))

(declare-fun m!452751 () Bool)

(assert (=> b!470445 m!452751))

(declare-fun m!452753 () Bool)

(assert (=> b!470445 m!452753))

(check-sat (not b_next!11691) (not start!42166) tp_is_empty!13119 (not b!470445) b_and!20131 (not mapNonEmpty!21379) (not b!470441) (not b!470442))
(check-sat b_and!20131 (not b_next!11691))
