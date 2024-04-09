; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71278 () Bool)

(assert start!71278)

(declare-fun b_free!13401 () Bool)

(declare-fun b_next!13401 () Bool)

(assert (=> start!71278 (= b_free!13401 (not b_next!13401))))

(declare-fun tp!46965 () Bool)

(declare-fun b_and!22357 () Bool)

(assert (=> start!71278 (= tp!46965 b_and!22357)))

(declare-fun mapNonEmpty!24295 () Bool)

(declare-fun mapRes!24295 () Bool)

(declare-fun tp!46966 () Bool)

(declare-fun e!461040 () Bool)

(assert (=> mapNonEmpty!24295 (= mapRes!24295 (and tp!46966 e!461040))))

(declare-datatypes ((V!25149 0))(
  ( (V!25150 (val!7603 Int)) )
))
(declare-datatypes ((ValueCell!7140 0))(
  ( (ValueCellFull!7140 (v!10034 V!25149)) (EmptyCell!7140) )
))
(declare-fun mapValue!24295 () ValueCell!7140)

(declare-fun mapKey!24295 () (_ BitVec 32))

(declare-datatypes ((array!46356 0))(
  ( (array!46357 (arr!22218 (Array (_ BitVec 32) ValueCell!7140)) (size!22639 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46356)

(declare-fun mapRest!24295 () (Array (_ BitVec 32) ValueCell!7140))

(assert (=> mapNonEmpty!24295 (= (arr!22218 _values!788) (store mapRest!24295 mapKey!24295 mapValue!24295))))

(declare-fun b!827500 () Bool)

(declare-fun e!461038 () Bool)

(assert (=> b!827500 (= e!461038 false)))

(declare-datatypes ((array!46358 0))(
  ( (array!46359 (arr!22219 (Array (_ BitVec 32) (_ BitVec 64))) (size!22640 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46358)

(declare-fun zeroValueAfter!34 () V!25149)

(declare-fun minValue!754 () V!25149)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10090 0))(
  ( (tuple2!10091 (_1!5055 (_ BitVec 64)) (_2!5055 V!25149)) )
))
(declare-datatypes ((List!15928 0))(
  ( (Nil!15925) (Cons!15924 (h!17053 tuple2!10090) (t!22285 List!15928)) )
))
(declare-datatypes ((ListLongMap!8927 0))(
  ( (ListLongMap!8928 (toList!4479 List!15928)) )
))
(declare-fun lt!374914 () ListLongMap!8927)

(declare-fun getCurrentListMapNoExtraKeys!2486 (array!46358 array!46356 (_ BitVec 32) (_ BitVec 32) V!25149 V!25149 (_ BitVec 32) Int) ListLongMap!8927)

(assert (=> b!827500 (= lt!374914 (getCurrentListMapNoExtraKeys!2486 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25149)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374913 () ListLongMap!8927)

(assert (=> b!827500 (= lt!374913 (getCurrentListMapNoExtraKeys!2486 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827501 () Bool)

(declare-fun res!564114 () Bool)

(assert (=> b!827501 (=> (not res!564114) (not e!461038))))

(assert (=> b!827501 (= res!564114 (and (= (size!22639 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22640 _keys!976) (size!22639 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827502 () Bool)

(declare-fun e!461039 () Bool)

(declare-fun e!461041 () Bool)

(assert (=> b!827502 (= e!461039 (and e!461041 mapRes!24295))))

(declare-fun condMapEmpty!24295 () Bool)

(declare-fun mapDefault!24295 () ValueCell!7140)

(assert (=> b!827502 (= condMapEmpty!24295 (= (arr!22218 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7140)) mapDefault!24295)))))

(declare-fun mapIsEmpty!24295 () Bool)

(assert (=> mapIsEmpty!24295 mapRes!24295))

(declare-fun b!827503 () Bool)

(declare-fun res!564113 () Bool)

(assert (=> b!827503 (=> (not res!564113) (not e!461038))))

(declare-datatypes ((List!15929 0))(
  ( (Nil!15926) (Cons!15925 (h!17054 (_ BitVec 64)) (t!22286 List!15929)) )
))
(declare-fun arrayNoDuplicates!0 (array!46358 (_ BitVec 32) List!15929) Bool)

(assert (=> b!827503 (= res!564113 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15926))))

(declare-fun res!564115 () Bool)

(assert (=> start!71278 (=> (not res!564115) (not e!461038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71278 (= res!564115 (validMask!0 mask!1312))))

(assert (=> start!71278 e!461038))

(declare-fun tp_is_empty!15111 () Bool)

(assert (=> start!71278 tp_is_empty!15111))

(declare-fun array_inv!17687 (array!46358) Bool)

(assert (=> start!71278 (array_inv!17687 _keys!976)))

(assert (=> start!71278 true))

(declare-fun array_inv!17688 (array!46356) Bool)

(assert (=> start!71278 (and (array_inv!17688 _values!788) e!461039)))

(assert (=> start!71278 tp!46965))

(declare-fun b!827504 () Bool)

(assert (=> b!827504 (= e!461040 tp_is_empty!15111)))

(declare-fun b!827505 () Bool)

(assert (=> b!827505 (= e!461041 tp_is_empty!15111)))

(declare-fun b!827506 () Bool)

(declare-fun res!564112 () Bool)

(assert (=> b!827506 (=> (not res!564112) (not e!461038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46358 (_ BitVec 32)) Bool)

(assert (=> b!827506 (= res!564112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71278 res!564115) b!827501))

(assert (= (and b!827501 res!564114) b!827506))

(assert (= (and b!827506 res!564112) b!827503))

(assert (= (and b!827503 res!564113) b!827500))

(assert (= (and b!827502 condMapEmpty!24295) mapIsEmpty!24295))

(assert (= (and b!827502 (not condMapEmpty!24295)) mapNonEmpty!24295))

(get-info :version)

(assert (= (and mapNonEmpty!24295 ((_ is ValueCellFull!7140) mapValue!24295)) b!827504))

(assert (= (and b!827502 ((_ is ValueCellFull!7140) mapDefault!24295)) b!827505))

(assert (= start!71278 b!827502))

(declare-fun m!770621 () Bool)

(assert (=> b!827506 m!770621))

(declare-fun m!770623 () Bool)

(assert (=> b!827503 m!770623))

(declare-fun m!770625 () Bool)

(assert (=> start!71278 m!770625))

(declare-fun m!770627 () Bool)

(assert (=> start!71278 m!770627))

(declare-fun m!770629 () Bool)

(assert (=> start!71278 m!770629))

(declare-fun m!770631 () Bool)

(assert (=> b!827500 m!770631))

(declare-fun m!770633 () Bool)

(assert (=> b!827500 m!770633))

(declare-fun m!770635 () Bool)

(assert (=> mapNonEmpty!24295 m!770635))

(check-sat (not start!71278) (not mapNonEmpty!24295) b_and!22357 (not b!827500) (not b!827503) tp_is_empty!15111 (not b_next!13401) (not b!827506))
(check-sat b_and!22357 (not b_next!13401))
