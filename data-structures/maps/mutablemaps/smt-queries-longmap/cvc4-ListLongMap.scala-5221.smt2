; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70404 () Bool)

(assert start!70404)

(declare-fun b_free!12737 () Bool)

(declare-fun b_next!12737 () Bool)

(assert (=> start!70404 (= b_free!12737 (not b_next!12737))))

(declare-fun tp!44938 () Bool)

(declare-fun b_and!21567 () Bool)

(assert (=> start!70404 (= tp!44938 b_and!21567)))

(declare-fun b!817434 () Bool)

(declare-fun e!453645 () Bool)

(declare-fun tp_is_empty!14447 () Bool)

(assert (=> b!817434 (= e!453645 tp_is_empty!14447)))

(declare-fun res!558080 () Bool)

(declare-fun e!453647 () Bool)

(assert (=> start!70404 (=> (not res!558080) (not e!453647))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70404 (= res!558080 (validMask!0 mask!1312))))

(assert (=> start!70404 e!453647))

(assert (=> start!70404 tp_is_empty!14447))

(declare-datatypes ((array!45068 0))(
  ( (array!45069 (arr!21586 (Array (_ BitVec 32) (_ BitVec 64))) (size!22007 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45068)

(declare-fun array_inv!17241 (array!45068) Bool)

(assert (=> start!70404 (array_inv!17241 _keys!976)))

(assert (=> start!70404 true))

(declare-datatypes ((V!24263 0))(
  ( (V!24264 (val!7271 Int)) )
))
(declare-datatypes ((ValueCell!6808 0))(
  ( (ValueCellFull!6808 (v!9696 V!24263)) (EmptyCell!6808) )
))
(declare-datatypes ((array!45070 0))(
  ( (array!45071 (arr!21587 (Array (_ BitVec 32) ValueCell!6808)) (size!22008 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45070)

(declare-fun e!453643 () Bool)

(declare-fun array_inv!17242 (array!45070) Bool)

(assert (=> start!70404 (and (array_inv!17242 _values!788) e!453643)))

(assert (=> start!70404 tp!44938))

(declare-fun b!817435 () Bool)

(assert (=> b!817435 (= e!453647 (not true))))

(declare-datatypes ((tuple2!9558 0))(
  ( (tuple2!9559 (_1!4789 (_ BitVec 64)) (_2!4789 V!24263)) )
))
(declare-datatypes ((List!15427 0))(
  ( (Nil!15424) (Cons!15423 (h!16552 tuple2!9558) (t!21760 List!15427)) )
))
(declare-datatypes ((ListLongMap!8395 0))(
  ( (ListLongMap!8396 (toList!4213 List!15427)) )
))
(declare-fun lt!366263 () ListLongMap!8395)

(declare-fun lt!366262 () ListLongMap!8395)

(assert (=> b!817435 (= lt!366263 lt!366262)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24263)

(declare-fun minValue!754 () V!24263)

(declare-datatypes ((Unit!27880 0))(
  ( (Unit!27881) )
))
(declare-fun lt!366261 () Unit!27880)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!24263)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!375 (array!45068 array!45070 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24263 V!24263 V!24263 V!24263 (_ BitVec 32) Int) Unit!27880)

(assert (=> b!817435 (= lt!366261 (lemmaNoChangeToArrayThenSameMapNoExtras!375 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2259 (array!45068 array!45070 (_ BitVec 32) (_ BitVec 32) V!24263 V!24263 (_ BitVec 32) Int) ListLongMap!8395)

(assert (=> b!817435 (= lt!366262 (getCurrentListMapNoExtraKeys!2259 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817435 (= lt!366263 (getCurrentListMapNoExtraKeys!2259 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817436 () Bool)

(declare-fun e!453646 () Bool)

(assert (=> b!817436 (= e!453646 tp_is_empty!14447)))

(declare-fun b!817437 () Bool)

(declare-fun res!558081 () Bool)

(assert (=> b!817437 (=> (not res!558081) (not e!453647))))

(declare-datatypes ((List!15428 0))(
  ( (Nil!15425) (Cons!15424 (h!16553 (_ BitVec 64)) (t!21761 List!15428)) )
))
(declare-fun arrayNoDuplicates!0 (array!45068 (_ BitVec 32) List!15428) Bool)

(assert (=> b!817437 (= res!558081 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15425))))

(declare-fun mapNonEmpty!23263 () Bool)

(declare-fun mapRes!23263 () Bool)

(declare-fun tp!44937 () Bool)

(assert (=> mapNonEmpty!23263 (= mapRes!23263 (and tp!44937 e!453646))))

(declare-fun mapRest!23263 () (Array (_ BitVec 32) ValueCell!6808))

(declare-fun mapValue!23263 () ValueCell!6808)

(declare-fun mapKey!23263 () (_ BitVec 32))

(assert (=> mapNonEmpty!23263 (= (arr!21587 _values!788) (store mapRest!23263 mapKey!23263 mapValue!23263))))

(declare-fun b!817438 () Bool)

(declare-fun res!558079 () Bool)

(assert (=> b!817438 (=> (not res!558079) (not e!453647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45068 (_ BitVec 32)) Bool)

(assert (=> b!817438 (= res!558079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23263 () Bool)

(assert (=> mapIsEmpty!23263 mapRes!23263))

(declare-fun b!817439 () Bool)

(declare-fun res!558078 () Bool)

(assert (=> b!817439 (=> (not res!558078) (not e!453647))))

(assert (=> b!817439 (= res!558078 (and (= (size!22008 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22007 _keys!976) (size!22008 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817440 () Bool)

(assert (=> b!817440 (= e!453643 (and e!453645 mapRes!23263))))

(declare-fun condMapEmpty!23263 () Bool)

(declare-fun mapDefault!23263 () ValueCell!6808)

