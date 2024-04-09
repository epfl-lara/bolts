; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70406 () Bool)

(assert start!70406)

(declare-fun b_free!12739 () Bool)

(declare-fun b_next!12739 () Bool)

(assert (=> start!70406 (= b_free!12739 (not b_next!12739))))

(declare-fun tp!44944 () Bool)

(declare-fun b_and!21569 () Bool)

(assert (=> start!70406 (= tp!44944 b_and!21569)))

(declare-fun b!817455 () Bool)

(declare-fun e!453661 () Bool)

(declare-fun tp_is_empty!14449 () Bool)

(assert (=> b!817455 (= e!453661 tp_is_empty!14449)))

(declare-fun b!817456 () Bool)

(declare-fun res!558093 () Bool)

(declare-fun e!453662 () Bool)

(assert (=> b!817456 (=> (not res!558093) (not e!453662))))

(declare-datatypes ((array!45072 0))(
  ( (array!45073 (arr!21588 (Array (_ BitVec 32) (_ BitVec 64))) (size!22009 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45072)

(declare-datatypes ((List!15429 0))(
  ( (Nil!15426) (Cons!15425 (h!16554 (_ BitVec 64)) (t!21762 List!15429)) )
))
(declare-fun arrayNoDuplicates!0 (array!45072 (_ BitVec 32) List!15429) Bool)

(assert (=> b!817456 (= res!558093 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15426))))

(declare-fun b!817457 () Bool)

(declare-fun res!558092 () Bool)

(assert (=> b!817457 (=> (not res!558092) (not e!453662))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24267 0))(
  ( (V!24268 (val!7272 Int)) )
))
(declare-datatypes ((ValueCell!6809 0))(
  ( (ValueCellFull!6809 (v!9697 V!24267)) (EmptyCell!6809) )
))
(declare-datatypes ((array!45074 0))(
  ( (array!45075 (arr!21589 (Array (_ BitVec 32) ValueCell!6809)) (size!22010 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45074)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817457 (= res!558092 (and (= (size!22010 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22009 _keys!976) (size!22010 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23266 () Bool)

(declare-fun mapRes!23266 () Bool)

(assert (=> mapIsEmpty!23266 mapRes!23266))

(declare-fun res!558090 () Bool)

(assert (=> start!70406 (=> (not res!558090) (not e!453662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70406 (= res!558090 (validMask!0 mask!1312))))

(assert (=> start!70406 e!453662))

(assert (=> start!70406 tp_is_empty!14449))

(declare-fun array_inv!17243 (array!45072) Bool)

(assert (=> start!70406 (array_inv!17243 _keys!976)))

(assert (=> start!70406 true))

(declare-fun e!453659 () Bool)

(declare-fun array_inv!17244 (array!45074) Bool)

(assert (=> start!70406 (and (array_inv!17244 _values!788) e!453659)))

(assert (=> start!70406 tp!44944))

(declare-fun mapNonEmpty!23266 () Bool)

(declare-fun tp!44943 () Bool)

(assert (=> mapNonEmpty!23266 (= mapRes!23266 (and tp!44943 e!453661))))

(declare-fun mapValue!23266 () ValueCell!6809)

(declare-fun mapRest!23266 () (Array (_ BitVec 32) ValueCell!6809))

(declare-fun mapKey!23266 () (_ BitVec 32))

(assert (=> mapNonEmpty!23266 (= (arr!21589 _values!788) (store mapRest!23266 mapKey!23266 mapValue!23266))))

(declare-fun b!817458 () Bool)

(assert (=> b!817458 (= e!453662 (not true))))

(declare-datatypes ((tuple2!9560 0))(
  ( (tuple2!9561 (_1!4790 (_ BitVec 64)) (_2!4790 V!24267)) )
))
(declare-datatypes ((List!15430 0))(
  ( (Nil!15427) (Cons!15426 (h!16555 tuple2!9560) (t!21763 List!15430)) )
))
(declare-datatypes ((ListLongMap!8397 0))(
  ( (ListLongMap!8398 (toList!4214 List!15430)) )
))
(declare-fun lt!366272 () ListLongMap!8397)

(declare-fun lt!366271 () ListLongMap!8397)

(assert (=> b!817458 (= lt!366272 lt!366271)))

(declare-fun zeroValueBefore!34 () V!24267)

(declare-fun zeroValueAfter!34 () V!24267)

(declare-fun minValue!754 () V!24267)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27882 0))(
  ( (Unit!27883) )
))
(declare-fun lt!366270 () Unit!27882)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!376 (array!45072 array!45074 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24267 V!24267 V!24267 V!24267 (_ BitVec 32) Int) Unit!27882)

(assert (=> b!817458 (= lt!366270 (lemmaNoChangeToArrayThenSameMapNoExtras!376 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2260 (array!45072 array!45074 (_ BitVec 32) (_ BitVec 32) V!24267 V!24267 (_ BitVec 32) Int) ListLongMap!8397)

(assert (=> b!817458 (= lt!366271 (getCurrentListMapNoExtraKeys!2260 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817458 (= lt!366272 (getCurrentListMapNoExtraKeys!2260 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817459 () Bool)

(declare-fun e!453658 () Bool)

(assert (=> b!817459 (= e!453658 tp_is_empty!14449)))

(declare-fun b!817460 () Bool)

(declare-fun res!558091 () Bool)

(assert (=> b!817460 (=> (not res!558091) (not e!453662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45072 (_ BitVec 32)) Bool)

(assert (=> b!817460 (= res!558091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817461 () Bool)

(assert (=> b!817461 (= e!453659 (and e!453658 mapRes!23266))))

(declare-fun condMapEmpty!23266 () Bool)

(declare-fun mapDefault!23266 () ValueCell!6809)

