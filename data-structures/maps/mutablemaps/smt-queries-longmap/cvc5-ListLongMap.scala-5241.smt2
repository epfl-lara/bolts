; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70550 () Bool)

(assert start!70550)

(declare-fun b_free!12853 () Bool)

(declare-fun b_next!12853 () Bool)

(assert (=> start!70550 (= b_free!12853 (not b_next!12853))))

(declare-fun tp!45292 () Bool)

(declare-fun b_and!21701 () Bool)

(assert (=> start!70550 (= tp!45292 b_and!21701)))

(declare-fun mapIsEmpty!23443 () Bool)

(declare-fun mapRes!23443 () Bool)

(assert (=> mapIsEmpty!23443 mapRes!23443))

(declare-fun b!819116 () Bool)

(declare-fun res!559100 () Bool)

(declare-fun e!454898 () Bool)

(assert (=> b!819116 (=> (not res!559100) (not e!454898))))

(declare-datatypes ((array!45294 0))(
  ( (array!45295 (arr!21697 (Array (_ BitVec 32) (_ BitVec 64))) (size!22118 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45294)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45294 (_ BitVec 32)) Bool)

(assert (=> b!819116 (= res!559100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819117 () Bool)

(declare-fun e!454900 () Bool)

(declare-fun tp_is_empty!14563 () Bool)

(assert (=> b!819117 (= e!454900 tp_is_empty!14563)))

(declare-fun b!819118 () Bool)

(declare-fun e!454894 () Bool)

(assert (=> b!819118 (= e!454898 (not e!454894))))

(declare-fun res!559094 () Bool)

(assert (=> b!819118 (=> res!559094 e!454894)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819118 (= res!559094 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24419 0))(
  ( (V!24420 (val!7329 Int)) )
))
(declare-datatypes ((tuple2!9656 0))(
  ( (tuple2!9657 (_1!4838 (_ BitVec 64)) (_2!4838 V!24419)) )
))
(declare-datatypes ((List!15516 0))(
  ( (Nil!15513) (Cons!15512 (h!16641 tuple2!9656) (t!21853 List!15516)) )
))
(declare-datatypes ((ListLongMap!8493 0))(
  ( (ListLongMap!8494 (toList!4262 List!15516)) )
))
(declare-fun lt!367526 () ListLongMap!8493)

(declare-fun lt!367534 () ListLongMap!8493)

(assert (=> b!819118 (= lt!367526 lt!367534)))

(declare-datatypes ((Unit!27973 0))(
  ( (Unit!27974) )
))
(declare-fun lt!367531 () Unit!27973)

(declare-fun zeroValueBefore!34 () V!24419)

(declare-fun zeroValueAfter!34 () V!24419)

(declare-fun minValue!754 () V!24419)

(declare-datatypes ((ValueCell!6866 0))(
  ( (ValueCellFull!6866 (v!9754 V!24419)) (EmptyCell!6866) )
))
(declare-datatypes ((array!45296 0))(
  ( (array!45297 (arr!21698 (Array (_ BitVec 32) ValueCell!6866)) (size!22119 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45296)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!417 (array!45294 array!45296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24419 V!24419 V!24419 V!24419 (_ BitVec 32) Int) Unit!27973)

(assert (=> b!819118 (= lt!367531 (lemmaNoChangeToArrayThenSameMapNoExtras!417 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2301 (array!45294 array!45296 (_ BitVec 32) (_ BitVec 32) V!24419 V!24419 (_ BitVec 32) Int) ListLongMap!8493)

(assert (=> b!819118 (= lt!367534 (getCurrentListMapNoExtraKeys!2301 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819118 (= lt!367526 (getCurrentListMapNoExtraKeys!2301 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23443 () Bool)

(declare-fun tp!45291 () Bool)

(declare-fun e!454899 () Bool)

(assert (=> mapNonEmpty!23443 (= mapRes!23443 (and tp!45291 e!454899))))

(declare-fun mapRest!23443 () (Array (_ BitVec 32) ValueCell!6866))

(declare-fun mapValue!23443 () ValueCell!6866)

(declare-fun mapKey!23443 () (_ BitVec 32))

(assert (=> mapNonEmpty!23443 (= (arr!21698 _values!788) (store mapRest!23443 mapKey!23443 mapValue!23443))))

(declare-fun e!454897 () Bool)

(declare-fun b!819119 () Bool)

(declare-fun lt!367530 () ListLongMap!8493)

(declare-fun +!1805 (ListLongMap!8493 tuple2!9656) ListLongMap!8493)

(assert (=> b!819119 (= e!454897 (= lt!367530 (+!1805 lt!367534 (tuple2!9657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819120 () Bool)

(declare-fun res!559097 () Bool)

(assert (=> b!819120 (=> (not res!559097) (not e!454898))))

(declare-datatypes ((List!15517 0))(
  ( (Nil!15514) (Cons!15513 (h!16642 (_ BitVec 64)) (t!21854 List!15517)) )
))
(declare-fun arrayNoDuplicates!0 (array!45294 (_ BitVec 32) List!15517) Bool)

(assert (=> b!819120 (= res!559097 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15514))))

(declare-fun b!819121 () Bool)

(declare-fun e!454893 () Bool)

(assert (=> b!819121 (= e!454893 (bvsle #b00000000000000000000000000000000 (size!22118 _keys!976)))))

(declare-fun b!819122 () Bool)

(assert (=> b!819122 (= e!454899 tp_is_empty!14563)))

(declare-fun res!559099 () Bool)

(assert (=> start!70550 (=> (not res!559099) (not e!454898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70550 (= res!559099 (validMask!0 mask!1312))))

(assert (=> start!70550 e!454898))

(assert (=> start!70550 tp_is_empty!14563))

(declare-fun array_inv!17315 (array!45294) Bool)

(assert (=> start!70550 (array_inv!17315 _keys!976)))

(assert (=> start!70550 true))

(declare-fun e!454895 () Bool)

(declare-fun array_inv!17316 (array!45296) Bool)

(assert (=> start!70550 (and (array_inv!17316 _values!788) e!454895)))

(assert (=> start!70550 tp!45292))

(declare-fun b!819123 () Bool)

(assert (=> b!819123 (= e!454895 (and e!454900 mapRes!23443))))

(declare-fun condMapEmpty!23443 () Bool)

(declare-fun mapDefault!23443 () ValueCell!6866)

