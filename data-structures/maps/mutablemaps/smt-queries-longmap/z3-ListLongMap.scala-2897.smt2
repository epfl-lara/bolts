; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41534 () Bool)

(assert start!41534)

(declare-fun b_free!11193 () Bool)

(declare-fun b_next!11193 () Bool)

(assert (=> start!41534 (= b_free!11193 (not b_next!11193))))

(declare-fun tp!39576 () Bool)

(declare-fun b_and!19551 () Bool)

(assert (=> start!41534 (= tp!39576 b_and!19551)))

(declare-fun b!463678 () Bool)

(declare-fun res!277305 () Bool)

(declare-fun e!270789 () Bool)

(assert (=> b!463678 (=> (not res!277305) (not e!270789))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28999 0))(
  ( (array!29000 (arr!13928 (Array (_ BitVec 32) (_ BitVec 64))) (size!14280 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28999)

(declare-datatypes ((V!17933 0))(
  ( (V!17934 (val!6355 Int)) )
))
(declare-datatypes ((ValueCell!5967 0))(
  ( (ValueCellFull!5967 (v!8638 V!17933)) (EmptyCell!5967) )
))
(declare-datatypes ((array!29001 0))(
  ( (array!29002 (arr!13929 (Array (_ BitVec 32) ValueCell!5967)) (size!14281 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29001)

(assert (=> b!463678 (= res!277305 (and (= (size!14281 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14280 _keys!1025) (size!14281 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20608 () Bool)

(declare-fun mapRes!20608 () Bool)

(declare-fun tp!39577 () Bool)

(declare-fun e!270788 () Bool)

(assert (=> mapNonEmpty!20608 (= mapRes!20608 (and tp!39577 e!270788))))

(declare-fun mapRest!20608 () (Array (_ BitVec 32) ValueCell!5967))

(declare-fun mapValue!20608 () ValueCell!5967)

(declare-fun mapKey!20608 () (_ BitVec 32))

(assert (=> mapNonEmpty!20608 (= (arr!13929 _values!833) (store mapRest!20608 mapKey!20608 mapValue!20608))))

(declare-fun b!463679 () Bool)

(declare-fun e!270786 () Bool)

(declare-fun tp_is_empty!12621 () Bool)

(assert (=> b!463679 (= e!270786 tp_is_empty!12621)))

(declare-fun res!277307 () Bool)

(assert (=> start!41534 (=> (not res!277307) (not e!270789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41534 (= res!277307 (validMask!0 mask!1365))))

(assert (=> start!41534 e!270789))

(assert (=> start!41534 tp_is_empty!12621))

(assert (=> start!41534 tp!39576))

(assert (=> start!41534 true))

(declare-fun array_inv!10046 (array!28999) Bool)

(assert (=> start!41534 (array_inv!10046 _keys!1025)))

(declare-fun e!270790 () Bool)

(declare-fun array_inv!10047 (array!29001) Bool)

(assert (=> start!41534 (and (array_inv!10047 _values!833) e!270790)))

(declare-fun b!463680 () Bool)

(declare-fun res!277304 () Bool)

(assert (=> b!463680 (=> (not res!277304) (not e!270789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28999 (_ BitVec 32)) Bool)

(assert (=> b!463680 (= res!277304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20608 () Bool)

(assert (=> mapIsEmpty!20608 mapRes!20608))

(declare-fun b!463681 () Bool)

(assert (=> b!463681 (= e!270790 (and e!270786 mapRes!20608))))

(declare-fun condMapEmpty!20608 () Bool)

(declare-fun mapDefault!20608 () ValueCell!5967)

(assert (=> b!463681 (= condMapEmpty!20608 (= (arr!13929 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5967)) mapDefault!20608)))))

(declare-fun b!463682 () Bool)

(assert (=> b!463682 (= e!270789 false)))

(declare-datatypes ((tuple2!8306 0))(
  ( (tuple2!8307 (_1!4163 (_ BitVec 64)) (_2!4163 V!17933)) )
))
(declare-datatypes ((List!8431 0))(
  ( (Nil!8428) (Cons!8427 (h!9283 tuple2!8306) (t!14385 List!8431)) )
))
(declare-datatypes ((ListLongMap!7233 0))(
  ( (ListLongMap!7234 (toList!3632 List!8431)) )
))
(declare-fun lt!209466 () ListLongMap!7233)

(declare-fun zeroValue!794 () V!17933)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17933)

(declare-fun getCurrentListMapNoExtraKeys!1800 (array!28999 array!29001 (_ BitVec 32) (_ BitVec 32) V!17933 V!17933 (_ BitVec 32) Int) ListLongMap!7233)

(assert (=> b!463682 (= lt!209466 (getCurrentListMapNoExtraKeys!1800 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17933)

(declare-fun lt!209465 () ListLongMap!7233)

(assert (=> b!463682 (= lt!209465 (getCurrentListMapNoExtraKeys!1800 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463683 () Bool)

(declare-fun res!277306 () Bool)

(assert (=> b!463683 (=> (not res!277306) (not e!270789))))

(declare-datatypes ((List!8432 0))(
  ( (Nil!8429) (Cons!8428 (h!9284 (_ BitVec 64)) (t!14386 List!8432)) )
))
(declare-fun arrayNoDuplicates!0 (array!28999 (_ BitVec 32) List!8432) Bool)

(assert (=> b!463683 (= res!277306 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8429))))

(declare-fun b!463684 () Bool)

(assert (=> b!463684 (= e!270788 tp_is_empty!12621)))

(assert (= (and start!41534 res!277307) b!463678))

(assert (= (and b!463678 res!277305) b!463680))

(assert (= (and b!463680 res!277304) b!463683))

(assert (= (and b!463683 res!277306) b!463682))

(assert (= (and b!463681 condMapEmpty!20608) mapIsEmpty!20608))

(assert (= (and b!463681 (not condMapEmpty!20608)) mapNonEmpty!20608))

(get-info :version)

(assert (= (and mapNonEmpty!20608 ((_ is ValueCellFull!5967) mapValue!20608)) b!463684))

(assert (= (and b!463681 ((_ is ValueCellFull!5967) mapDefault!20608)) b!463679))

(assert (= start!41534 b!463681))

(declare-fun m!446201 () Bool)

(assert (=> start!41534 m!446201))

(declare-fun m!446203 () Bool)

(assert (=> start!41534 m!446203))

(declare-fun m!446205 () Bool)

(assert (=> start!41534 m!446205))

(declare-fun m!446207 () Bool)

(assert (=> b!463683 m!446207))

(declare-fun m!446209 () Bool)

(assert (=> b!463680 m!446209))

(declare-fun m!446211 () Bool)

(assert (=> b!463682 m!446211))

(declare-fun m!446213 () Bool)

(assert (=> b!463682 m!446213))

(declare-fun m!446215 () Bool)

(assert (=> mapNonEmpty!20608 m!446215))

(check-sat (not start!41534) b_and!19551 (not b!463682) (not b!463680) (not b!463683) tp_is_empty!12621 (not mapNonEmpty!20608) (not b_next!11193))
(check-sat b_and!19551 (not b_next!11193))
