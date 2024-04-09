; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41426 () Bool)

(assert start!41426)

(declare-fun b_free!11097 () Bool)

(declare-fun b_next!11097 () Bool)

(assert (=> start!41426 (= b_free!11097 (not b_next!11097))))

(declare-fun tp!39286 () Bool)

(declare-fun b_and!19451 () Bool)

(assert (=> start!41426 (= tp!39286 b_and!19451)))

(declare-fun b!462597 () Bool)

(declare-fun e!270022 () Bool)

(assert (=> b!462597 (= e!270022 false)))

(declare-datatypes ((V!17805 0))(
  ( (V!17806 (val!6307 Int)) )
))
(declare-fun minValueBefore!38 () V!17805)

(declare-datatypes ((tuple2!8232 0))(
  ( (tuple2!8233 (_1!4126 (_ BitVec 64)) (_2!4126 V!17805)) )
))
(declare-datatypes ((List!8358 0))(
  ( (Nil!8355) (Cons!8354 (h!9210 tuple2!8232) (t!14310 List!8358)) )
))
(declare-datatypes ((ListLongMap!7159 0))(
  ( (ListLongMap!7160 (toList!3595 List!8358)) )
))
(declare-fun lt!209223 () ListLongMap!7159)

(declare-fun zeroValue!794 () V!17805)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!28815 0))(
  ( (array!28816 (arr!13837 (Array (_ BitVec 32) (_ BitVec 64))) (size!14189 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28815)

(declare-datatypes ((ValueCell!5919 0))(
  ( (ValueCellFull!5919 (v!8590 V!17805)) (EmptyCell!5919) )
))
(declare-datatypes ((array!28817 0))(
  ( (array!28818 (arr!13838 (Array (_ BitVec 32) ValueCell!5919)) (size!14190 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28817)

(declare-fun getCurrentListMapNoExtraKeys!1763 (array!28815 array!28817 (_ BitVec 32) (_ BitVec 32) V!17805 V!17805 (_ BitVec 32) Int) ListLongMap!7159)

(assert (=> b!462597 (= lt!209223 (getCurrentListMapNoExtraKeys!1763 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462599 () Bool)

(declare-fun res!276704 () Bool)

(assert (=> b!462599 (=> (not res!276704) (not e!270022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28815 (_ BitVec 32)) Bool)

(assert (=> b!462599 (= res!276704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462600 () Bool)

(declare-fun e!270021 () Bool)

(declare-fun tp_is_empty!12525 () Bool)

(assert (=> b!462600 (= e!270021 tp_is_empty!12525)))

(declare-fun mapIsEmpty!20461 () Bool)

(declare-fun mapRes!20461 () Bool)

(assert (=> mapIsEmpty!20461 mapRes!20461))

(declare-fun b!462601 () Bool)

(declare-fun e!270020 () Bool)

(assert (=> b!462601 (= e!270020 tp_is_empty!12525)))

(declare-fun b!462602 () Bool)

(declare-fun e!270019 () Bool)

(assert (=> b!462602 (= e!270019 (and e!270020 mapRes!20461))))

(declare-fun condMapEmpty!20461 () Bool)

(declare-fun mapDefault!20461 () ValueCell!5919)

(assert (=> b!462602 (= condMapEmpty!20461 (= (arr!13838 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5919)) mapDefault!20461)))))

(declare-fun b!462603 () Bool)

(declare-fun res!276702 () Bool)

(assert (=> b!462603 (=> (not res!276702) (not e!270022))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462603 (= res!276702 (and (= (size!14190 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14189 _keys!1025) (size!14190 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20461 () Bool)

(declare-fun tp!39285 () Bool)

(assert (=> mapNonEmpty!20461 (= mapRes!20461 (and tp!39285 e!270021))))

(declare-fun mapRest!20461 () (Array (_ BitVec 32) ValueCell!5919))

(declare-fun mapKey!20461 () (_ BitVec 32))

(declare-fun mapValue!20461 () ValueCell!5919)

(assert (=> mapNonEmpty!20461 (= (arr!13838 _values!833) (store mapRest!20461 mapKey!20461 mapValue!20461))))

(declare-fun b!462598 () Bool)

(declare-fun res!276703 () Bool)

(assert (=> b!462598 (=> (not res!276703) (not e!270022))))

(declare-datatypes ((List!8359 0))(
  ( (Nil!8356) (Cons!8355 (h!9211 (_ BitVec 64)) (t!14311 List!8359)) )
))
(declare-fun arrayNoDuplicates!0 (array!28815 (_ BitVec 32) List!8359) Bool)

(assert (=> b!462598 (= res!276703 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8356))))

(declare-fun res!276701 () Bool)

(assert (=> start!41426 (=> (not res!276701) (not e!270022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41426 (= res!276701 (validMask!0 mask!1365))))

(assert (=> start!41426 e!270022))

(assert (=> start!41426 tp_is_empty!12525))

(assert (=> start!41426 tp!39286))

(assert (=> start!41426 true))

(declare-fun array_inv!9988 (array!28815) Bool)

(assert (=> start!41426 (array_inv!9988 _keys!1025)))

(declare-fun array_inv!9989 (array!28817) Bool)

(assert (=> start!41426 (and (array_inv!9989 _values!833) e!270019)))

(assert (= (and start!41426 res!276701) b!462603))

(assert (= (and b!462603 res!276702) b!462599))

(assert (= (and b!462599 res!276704) b!462598))

(assert (= (and b!462598 res!276703) b!462597))

(assert (= (and b!462602 condMapEmpty!20461) mapIsEmpty!20461))

(assert (= (and b!462602 (not condMapEmpty!20461)) mapNonEmpty!20461))

(get-info :version)

(assert (= (and mapNonEmpty!20461 ((_ is ValueCellFull!5919) mapValue!20461)) b!462600))

(assert (= (and b!462602 ((_ is ValueCellFull!5919) mapDefault!20461)) b!462601))

(assert (= start!41426 b!462602))

(declare-fun m!445441 () Bool)

(assert (=> b!462598 m!445441))

(declare-fun m!445443 () Bool)

(assert (=> mapNonEmpty!20461 m!445443))

(declare-fun m!445445 () Bool)

(assert (=> b!462597 m!445445))

(declare-fun m!445447 () Bool)

(assert (=> b!462599 m!445447))

(declare-fun m!445449 () Bool)

(assert (=> start!41426 m!445449))

(declare-fun m!445451 () Bool)

(assert (=> start!41426 m!445451))

(declare-fun m!445453 () Bool)

(assert (=> start!41426 m!445453))

(check-sat (not mapNonEmpty!20461) (not b_next!11097) b_and!19451 tp_is_empty!12525 (not start!41426) (not b!462599) (not b!462598) (not b!462597))
(check-sat b_and!19451 (not b_next!11097))
