; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69984 () Bool)

(assert start!69984)

(declare-fun b_free!12393 () Bool)

(declare-fun b_next!12393 () Bool)

(assert (=> start!69984 (= b_free!12393 (not b_next!12393))))

(declare-fun tp!43891 () Bool)

(declare-fun b_and!21179 () Bool)

(assert (=> start!69984 (= tp!43891 b_and!21179)))

(declare-fun b!813049 () Bool)

(declare-fun e!450523 () Bool)

(declare-fun e!450527 () Bool)

(declare-fun mapRes!22732 () Bool)

(assert (=> b!813049 (= e!450523 (and e!450527 mapRes!22732))))

(declare-fun condMapEmpty!22732 () Bool)

(declare-datatypes ((V!23805 0))(
  ( (V!23806 (val!7099 Int)) )
))
(declare-datatypes ((ValueCell!6636 0))(
  ( (ValueCellFull!6636 (v!9522 V!23805)) (EmptyCell!6636) )
))
(declare-datatypes ((array!44394 0))(
  ( (array!44395 (arr!21254 (Array (_ BitVec 32) ValueCell!6636)) (size!21675 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44394)

(declare-fun mapDefault!22732 () ValueCell!6636)

(assert (=> b!813049 (= condMapEmpty!22732 (= (arr!21254 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6636)) mapDefault!22732)))))

(declare-fun b!813050 () Bool)

(declare-fun tp_is_empty!14103 () Bool)

(assert (=> b!813050 (= e!450527 tp_is_empty!14103)))

(declare-fun res!555601 () Bool)

(declare-fun e!450524 () Bool)

(assert (=> start!69984 (=> (not res!555601) (not e!450524))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69984 (= res!555601 (validMask!0 mask!1312))))

(assert (=> start!69984 e!450524))

(assert (=> start!69984 tp_is_empty!14103))

(declare-datatypes ((array!44396 0))(
  ( (array!44397 (arr!21255 (Array (_ BitVec 32) (_ BitVec 64))) (size!21676 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44396)

(declare-fun array_inv!16997 (array!44396) Bool)

(assert (=> start!69984 (array_inv!16997 _keys!976)))

(assert (=> start!69984 true))

(declare-fun array_inv!16998 (array!44394) Bool)

(assert (=> start!69984 (and (array_inv!16998 _values!788) e!450523)))

(assert (=> start!69984 tp!43891))

(declare-fun b!813051 () Bool)

(declare-fun e!450525 () Bool)

(assert (=> b!813051 (= e!450525 tp_is_empty!14103)))

(declare-fun b!813052 () Bool)

(declare-fun res!555600 () Bool)

(assert (=> b!813052 (=> (not res!555600) (not e!450524))))

(declare-datatypes ((List!15171 0))(
  ( (Nil!15168) (Cons!15167 (h!16296 (_ BitVec 64)) (t!21494 List!15171)) )
))
(declare-fun arrayNoDuplicates!0 (array!44396 (_ BitVec 32) List!15171) Bool)

(assert (=> b!813052 (= res!555600 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15168))))

(declare-fun b!813053 () Bool)

(declare-fun res!555599 () Bool)

(assert (=> b!813053 (=> (not res!555599) (not e!450524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44396 (_ BitVec 32)) Bool)

(assert (=> b!813053 (= res!555599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22732 () Bool)

(assert (=> mapIsEmpty!22732 mapRes!22732))

(declare-fun mapNonEmpty!22732 () Bool)

(declare-fun tp!43890 () Bool)

(assert (=> mapNonEmpty!22732 (= mapRes!22732 (and tp!43890 e!450525))))

(declare-fun mapRest!22732 () (Array (_ BitVec 32) ValueCell!6636))

(declare-fun mapValue!22732 () ValueCell!6636)

(declare-fun mapKey!22732 () (_ BitVec 32))

(assert (=> mapNonEmpty!22732 (= (arr!21254 _values!788) (store mapRest!22732 mapKey!22732 mapValue!22732))))

(declare-fun b!813054 () Bool)

(declare-fun res!555602 () Bool)

(assert (=> b!813054 (=> (not res!555602) (not e!450524))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813054 (= res!555602 (and (= (size!21675 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21676 _keys!976) (size!21675 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813055 () Bool)

(assert (=> b!813055 (= e!450524 false)))

(declare-fun zeroValueBefore!34 () V!23805)

(declare-fun minValue!754 () V!23805)

(declare-datatypes ((tuple2!9300 0))(
  ( (tuple2!9301 (_1!4660 (_ BitVec 64)) (_2!4660 V!23805)) )
))
(declare-datatypes ((List!15172 0))(
  ( (Nil!15169) (Cons!15168 (h!16297 tuple2!9300) (t!21495 List!15172)) )
))
(declare-datatypes ((ListLongMap!8137 0))(
  ( (ListLongMap!8138 (toList!4084 List!15172)) )
))
(declare-fun lt!364196 () ListLongMap!8137)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2133 (array!44396 array!44394 (_ BitVec 32) (_ BitVec 32) V!23805 V!23805 (_ BitVec 32) Int) ListLongMap!8137)

(assert (=> b!813055 (= lt!364196 (getCurrentListMapNoExtraKeys!2133 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!69984 res!555601) b!813054))

(assert (= (and b!813054 res!555602) b!813053))

(assert (= (and b!813053 res!555599) b!813052))

(assert (= (and b!813052 res!555600) b!813055))

(assert (= (and b!813049 condMapEmpty!22732) mapIsEmpty!22732))

(assert (= (and b!813049 (not condMapEmpty!22732)) mapNonEmpty!22732))

(get-info :version)

(assert (= (and mapNonEmpty!22732 ((_ is ValueCellFull!6636) mapValue!22732)) b!813051))

(assert (= (and b!813049 ((_ is ValueCellFull!6636) mapDefault!22732)) b!813050))

(assert (= start!69984 b!813049))

(declare-fun m!755261 () Bool)

(assert (=> mapNonEmpty!22732 m!755261))

(declare-fun m!755263 () Bool)

(assert (=> b!813052 m!755263))

(declare-fun m!755265 () Bool)

(assert (=> b!813053 m!755265))

(declare-fun m!755267 () Bool)

(assert (=> b!813055 m!755267))

(declare-fun m!755269 () Bool)

(assert (=> start!69984 m!755269))

(declare-fun m!755271 () Bool)

(assert (=> start!69984 m!755271))

(declare-fun m!755273 () Bool)

(assert (=> start!69984 m!755273))

(check-sat (not b!813052) (not b_next!12393) b_and!21179 (not start!69984) (not mapNonEmpty!22732) (not b!813053) tp_is_empty!14103 (not b!813055))
(check-sat b_and!21179 (not b_next!12393))
