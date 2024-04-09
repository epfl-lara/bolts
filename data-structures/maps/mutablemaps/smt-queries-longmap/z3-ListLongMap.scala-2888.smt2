; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41468 () Bool)

(assert start!41468)

(declare-fun b_free!11139 () Bool)

(declare-fun b_next!11139 () Bool)

(assert (=> start!41468 (= b_free!11139 (not b_next!11139))))

(declare-fun tp!39411 () Bool)

(declare-fun b_and!19493 () Bool)

(assert (=> start!41468 (= tp!39411 b_and!19493)))

(declare-fun b!463038 () Bool)

(declare-fun res!276955 () Bool)

(declare-fun e!270337 () Bool)

(assert (=> b!463038 (=> (not res!276955) (not e!270337))))

(declare-datatypes ((array!28893 0))(
  ( (array!28894 (arr!13876 (Array (_ BitVec 32) (_ BitVec 64))) (size!14228 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28893)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28893 (_ BitVec 32)) Bool)

(assert (=> b!463038 (= res!276955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463039 () Bool)

(declare-fun e!270334 () Bool)

(declare-fun tp_is_empty!12567 () Bool)

(assert (=> b!463039 (= e!270334 tp_is_empty!12567)))

(declare-fun res!276956 () Bool)

(assert (=> start!41468 (=> (not res!276956) (not e!270337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41468 (= res!276956 (validMask!0 mask!1365))))

(assert (=> start!41468 e!270337))

(assert (=> start!41468 tp_is_empty!12567))

(assert (=> start!41468 tp!39411))

(assert (=> start!41468 true))

(declare-fun array_inv!10008 (array!28893) Bool)

(assert (=> start!41468 (array_inv!10008 _keys!1025)))

(declare-datatypes ((V!17861 0))(
  ( (V!17862 (val!6328 Int)) )
))
(declare-datatypes ((ValueCell!5940 0))(
  ( (ValueCellFull!5940 (v!8611 V!17861)) (EmptyCell!5940) )
))
(declare-datatypes ((array!28895 0))(
  ( (array!28896 (arr!13877 (Array (_ BitVec 32) ValueCell!5940)) (size!14229 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28895)

(declare-fun e!270336 () Bool)

(declare-fun array_inv!10009 (array!28895) Bool)

(assert (=> start!41468 (and (array_inv!10009 _values!833) e!270336)))

(declare-fun b!463040 () Bool)

(declare-fun res!276954 () Bool)

(assert (=> b!463040 (=> (not res!276954) (not e!270337))))

(declare-datatypes ((List!8389 0))(
  ( (Nil!8386) (Cons!8385 (h!9241 (_ BitVec 64)) (t!14341 List!8389)) )
))
(declare-fun arrayNoDuplicates!0 (array!28893 (_ BitVec 32) List!8389) Bool)

(assert (=> b!463040 (= res!276954 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8386))))

(declare-fun mapNonEmpty!20524 () Bool)

(declare-fun mapRes!20524 () Bool)

(declare-fun tp!39412 () Bool)

(declare-fun e!270335 () Bool)

(assert (=> mapNonEmpty!20524 (= mapRes!20524 (and tp!39412 e!270335))))

(declare-fun mapKey!20524 () (_ BitVec 32))

(declare-fun mapValue!20524 () ValueCell!5940)

(declare-fun mapRest!20524 () (Array (_ BitVec 32) ValueCell!5940))

(assert (=> mapNonEmpty!20524 (= (arr!13877 _values!833) (store mapRest!20524 mapKey!20524 mapValue!20524))))

(declare-fun b!463041 () Bool)

(assert (=> b!463041 (= e!270336 (and e!270334 mapRes!20524))))

(declare-fun condMapEmpty!20524 () Bool)

(declare-fun mapDefault!20524 () ValueCell!5940)

(assert (=> b!463041 (= condMapEmpty!20524 (= (arr!13877 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5940)) mapDefault!20524)))))

(declare-fun b!463042 () Bool)

(assert (=> b!463042 (= e!270337 false)))

(declare-fun minValueBefore!38 () V!17861)

(declare-fun zeroValue!794 () V!17861)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8262 0))(
  ( (tuple2!8263 (_1!4141 (_ BitVec 64)) (_2!4141 V!17861)) )
))
(declare-datatypes ((List!8390 0))(
  ( (Nil!8387) (Cons!8386 (h!9242 tuple2!8262) (t!14342 List!8390)) )
))
(declare-datatypes ((ListLongMap!7189 0))(
  ( (ListLongMap!7190 (toList!3610 List!8390)) )
))
(declare-fun lt!209286 () ListLongMap!7189)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1778 (array!28893 array!28895 (_ BitVec 32) (_ BitVec 32) V!17861 V!17861 (_ BitVec 32) Int) ListLongMap!7189)

(assert (=> b!463042 (= lt!209286 (getCurrentListMapNoExtraKeys!1778 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463043 () Bool)

(declare-fun res!276953 () Bool)

(assert (=> b!463043 (=> (not res!276953) (not e!270337))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463043 (= res!276953 (and (= (size!14229 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14228 _keys!1025) (size!14229 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20524 () Bool)

(assert (=> mapIsEmpty!20524 mapRes!20524))

(declare-fun b!463044 () Bool)

(assert (=> b!463044 (= e!270335 tp_is_empty!12567)))

(assert (= (and start!41468 res!276956) b!463043))

(assert (= (and b!463043 res!276953) b!463038))

(assert (= (and b!463038 res!276955) b!463040))

(assert (= (and b!463040 res!276954) b!463042))

(assert (= (and b!463041 condMapEmpty!20524) mapIsEmpty!20524))

(assert (= (and b!463041 (not condMapEmpty!20524)) mapNonEmpty!20524))

(get-info :version)

(assert (= (and mapNonEmpty!20524 ((_ is ValueCellFull!5940) mapValue!20524)) b!463044))

(assert (= (and b!463041 ((_ is ValueCellFull!5940) mapDefault!20524)) b!463039))

(assert (= start!41468 b!463041))

(declare-fun m!445735 () Bool)

(assert (=> b!463042 m!445735))

(declare-fun m!445737 () Bool)

(assert (=> b!463040 m!445737))

(declare-fun m!445739 () Bool)

(assert (=> start!41468 m!445739))

(declare-fun m!445741 () Bool)

(assert (=> start!41468 m!445741))

(declare-fun m!445743 () Bool)

(assert (=> start!41468 m!445743))

(declare-fun m!445745 () Bool)

(assert (=> b!463038 m!445745))

(declare-fun m!445747 () Bool)

(assert (=> mapNonEmpty!20524 m!445747))

(check-sat (not b_next!11139) (not mapNonEmpty!20524) (not b!463038) (not start!41468) (not b!463042) tp_is_empty!12567 b_and!19493 (not b!463040))
(check-sat b_and!19493 (not b_next!11139))
