; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41844 () Bool)

(assert start!41844)

(declare-fun b_free!11439 () Bool)

(declare-fun b_next!11439 () Bool)

(assert (=> start!41844 (= b_free!11439 (not b_next!11439))))

(declare-fun tp!40326 () Bool)

(declare-fun b_and!19837 () Bool)

(assert (=> start!41844 (= tp!40326 b_and!19837)))

(declare-fun b!466961 () Bool)

(declare-fun e!273124 () Bool)

(declare-fun e!273125 () Bool)

(declare-fun mapRes!20989 () Bool)

(assert (=> b!466961 (= e!273124 (and e!273125 mapRes!20989))))

(declare-fun condMapEmpty!20989 () Bool)

(declare-datatypes ((V!18261 0))(
  ( (V!18262 (val!6478 Int)) )
))
(declare-datatypes ((ValueCell!6090 0))(
  ( (ValueCellFull!6090 (v!8763 V!18261)) (EmptyCell!6090) )
))
(declare-datatypes ((array!29471 0))(
  ( (array!29472 (arr!14160 (Array (_ BitVec 32) ValueCell!6090)) (size!14512 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29471)

(declare-fun mapDefault!20989 () ValueCell!6090)

(assert (=> b!466961 (= condMapEmpty!20989 (= (arr!14160 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6090)) mapDefault!20989)))))

(declare-fun b!466962 () Bool)

(declare-fun tp_is_empty!12867 () Bool)

(assert (=> b!466962 (= e!273125 tp_is_empty!12867)))

(declare-fun mapIsEmpty!20989 () Bool)

(assert (=> mapIsEmpty!20989 mapRes!20989))

(declare-fun b!466963 () Bool)

(declare-fun e!273126 () Bool)

(assert (=> b!466963 (= e!273126 (not true))))

(declare-datatypes ((tuple2!8490 0))(
  ( (tuple2!8491 (_1!4255 (_ BitVec 64)) (_2!4255 V!18261)) )
))
(declare-datatypes ((List!8607 0))(
  ( (Nil!8604) (Cons!8603 (h!9459 tuple2!8490) (t!14569 List!8607)) )
))
(declare-datatypes ((ListLongMap!7417 0))(
  ( (ListLongMap!7418 (toList!3724 List!8607)) )
))
(declare-fun lt!211190 () ListLongMap!7417)

(declare-fun lt!211189 () ListLongMap!7417)

(assert (=> b!466963 (= lt!211190 lt!211189)))

(declare-fun minValueBefore!38 () V!18261)

(declare-fun zeroValue!794 () V!18261)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29473 0))(
  ( (array!29474 (arr!14161 (Array (_ BitVec 32) (_ BitVec 64))) (size!14513 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29473)

(declare-fun minValueAfter!38 () V!18261)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((Unit!13569 0))(
  ( (Unit!13570) )
))
(declare-fun lt!211191 () Unit!13569)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!85 (array!29473 array!29471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18261 V!18261 V!18261 V!18261 (_ BitVec 32) Int) Unit!13569)

(assert (=> b!466963 (= lt!211191 (lemmaNoChangeToArrayThenSameMapNoExtras!85 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1890 (array!29473 array!29471 (_ BitVec 32) (_ BitVec 32) V!18261 V!18261 (_ BitVec 32) Int) ListLongMap!7417)

(assert (=> b!466963 (= lt!211189 (getCurrentListMapNoExtraKeys!1890 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466963 (= lt!211190 (getCurrentListMapNoExtraKeys!1890 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466964 () Bool)

(declare-fun e!273127 () Bool)

(assert (=> b!466964 (= e!273127 tp_is_empty!12867)))

(declare-fun b!466965 () Bool)

(declare-fun res!279169 () Bool)

(assert (=> b!466965 (=> (not res!279169) (not e!273126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29473 (_ BitVec 32)) Bool)

(assert (=> b!466965 (= res!279169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20989 () Bool)

(declare-fun tp!40327 () Bool)

(assert (=> mapNonEmpty!20989 (= mapRes!20989 (and tp!40327 e!273127))))

(declare-fun mapValue!20989 () ValueCell!6090)

(declare-fun mapRest!20989 () (Array (_ BitVec 32) ValueCell!6090))

(declare-fun mapKey!20989 () (_ BitVec 32))

(assert (=> mapNonEmpty!20989 (= (arr!14160 _values!833) (store mapRest!20989 mapKey!20989 mapValue!20989))))

(declare-fun b!466967 () Bool)

(declare-fun res!279168 () Bool)

(assert (=> b!466967 (=> (not res!279168) (not e!273126))))

(assert (=> b!466967 (= res!279168 (and (= (size!14512 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14513 _keys!1025) (size!14512 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279170 () Bool)

(assert (=> start!41844 (=> (not res!279170) (not e!273126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41844 (= res!279170 (validMask!0 mask!1365))))

(assert (=> start!41844 e!273126))

(assert (=> start!41844 tp_is_empty!12867))

(assert (=> start!41844 tp!40326))

(assert (=> start!41844 true))

(declare-fun array_inv!10208 (array!29473) Bool)

(assert (=> start!41844 (array_inv!10208 _keys!1025)))

(declare-fun array_inv!10209 (array!29471) Bool)

(assert (=> start!41844 (and (array_inv!10209 _values!833) e!273124)))

(declare-fun b!466966 () Bool)

(declare-fun res!279171 () Bool)

(assert (=> b!466966 (=> (not res!279171) (not e!273126))))

(declare-datatypes ((List!8608 0))(
  ( (Nil!8605) (Cons!8604 (h!9460 (_ BitVec 64)) (t!14570 List!8608)) )
))
(declare-fun arrayNoDuplicates!0 (array!29473 (_ BitVec 32) List!8608) Bool)

(assert (=> b!466966 (= res!279171 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8605))))

(assert (= (and start!41844 res!279170) b!466967))

(assert (= (and b!466967 res!279168) b!466965))

(assert (= (and b!466965 res!279169) b!466966))

(assert (= (and b!466966 res!279171) b!466963))

(assert (= (and b!466961 condMapEmpty!20989) mapIsEmpty!20989))

(assert (= (and b!466961 (not condMapEmpty!20989)) mapNonEmpty!20989))

(get-info :version)

(assert (= (and mapNonEmpty!20989 ((_ is ValueCellFull!6090) mapValue!20989)) b!466964))

(assert (= (and b!466961 ((_ is ValueCellFull!6090) mapDefault!20989)) b!466962))

(assert (= start!41844 b!466961))

(declare-fun m!449189 () Bool)

(assert (=> b!466966 m!449189))

(declare-fun m!449191 () Bool)

(assert (=> b!466963 m!449191))

(declare-fun m!449193 () Bool)

(assert (=> b!466963 m!449193))

(declare-fun m!449195 () Bool)

(assert (=> b!466963 m!449195))

(declare-fun m!449197 () Bool)

(assert (=> start!41844 m!449197))

(declare-fun m!449199 () Bool)

(assert (=> start!41844 m!449199))

(declare-fun m!449201 () Bool)

(assert (=> start!41844 m!449201))

(declare-fun m!449203 () Bool)

(assert (=> b!466965 m!449203))

(declare-fun m!449205 () Bool)

(assert (=> mapNonEmpty!20989 m!449205))

(check-sat (not start!41844) (not b_next!11439) tp_is_empty!12867 (not b!466963) (not mapNonEmpty!20989) (not b!466965) b_and!19837 (not b!466966))
(check-sat b_and!19837 (not b_next!11439))
