; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70542 () Bool)

(assert start!70542)

(declare-fun b_free!12845 () Bool)

(declare-fun b_next!12845 () Bool)

(assert (=> start!70542 (= b_free!12845 (not b_next!12845))))

(declare-fun tp!45268 () Bool)

(declare-fun b_and!21693 () Bool)

(assert (=> start!70542 (= tp!45268 b_and!21693)))

(declare-fun b!819006 () Bool)

(declare-fun res!559023 () Bool)

(declare-fun e!454810 () Bool)

(assert (=> b!819006 (=> (not res!559023) (not e!454810))))

(declare-datatypes ((array!45280 0))(
  ( (array!45281 (arr!21690 (Array (_ BitVec 32) (_ BitVec 64))) (size!22111 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45280)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24407 0))(
  ( (V!24408 (val!7325 Int)) )
))
(declare-datatypes ((ValueCell!6862 0))(
  ( (ValueCellFull!6862 (v!9750 V!24407)) (EmptyCell!6862) )
))
(declare-datatypes ((array!45282 0))(
  ( (array!45283 (arr!21691 (Array (_ BitVec 32) ValueCell!6862)) (size!22112 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45282)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!819006 (= res!559023 (and (= (size!22112 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22111 _keys!976) (size!22112 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819007 () Bool)

(declare-fun res!559022 () Bool)

(assert (=> b!819007 (=> (not res!559022) (not e!454810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45280 (_ BitVec 32)) Bool)

(assert (=> b!819007 (= res!559022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23431 () Bool)

(declare-fun mapRes!23431 () Bool)

(declare-fun tp!45267 () Bool)

(declare-fun e!454811 () Bool)

(assert (=> mapNonEmpty!23431 (= mapRes!23431 (and tp!45267 e!454811))))

(declare-fun mapValue!23431 () ValueCell!6862)

(declare-fun mapRest!23431 () (Array (_ BitVec 32) ValueCell!6862))

(declare-fun mapKey!23431 () (_ BitVec 32))

(assert (=> mapNonEmpty!23431 (= (arr!21691 _values!788) (store mapRest!23431 mapKey!23431 mapValue!23431))))

(declare-fun mapIsEmpty!23431 () Bool)

(assert (=> mapIsEmpty!23431 mapRes!23431))

(declare-fun b!819008 () Bool)

(declare-fun e!454809 () Bool)

(assert (=> b!819008 (= e!454810 (not e!454809))))

(declare-fun res!559025 () Bool)

(assert (=> b!819008 (=> res!559025 e!454809)))

(assert (=> b!819008 (= res!559025 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9650 0))(
  ( (tuple2!9651 (_1!4835 (_ BitVec 64)) (_2!4835 V!24407)) )
))
(declare-datatypes ((List!15511 0))(
  ( (Nil!15508) (Cons!15507 (h!16636 tuple2!9650) (t!21848 List!15511)) )
))
(declare-datatypes ((ListLongMap!8487 0))(
  ( (ListLongMap!8488 (toList!4259 List!15511)) )
))
(declare-fun lt!367416 () ListLongMap!8487)

(declare-fun lt!367410 () ListLongMap!8487)

(assert (=> b!819008 (= lt!367416 lt!367410)))

(declare-fun zeroValueBefore!34 () V!24407)

(declare-fun zeroValueAfter!34 () V!24407)

(declare-fun minValue!754 () V!24407)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27967 0))(
  ( (Unit!27968) )
))
(declare-fun lt!367414 () Unit!27967)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!414 (array!45280 array!45282 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24407 V!24407 V!24407 V!24407 (_ BitVec 32) Int) Unit!27967)

(assert (=> b!819008 (= lt!367414 (lemmaNoChangeToArrayThenSameMapNoExtras!414 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2298 (array!45280 array!45282 (_ BitVec 32) (_ BitVec 32) V!24407 V!24407 (_ BitVec 32) Int) ListLongMap!8487)

(assert (=> b!819008 (= lt!367410 (getCurrentListMapNoExtraKeys!2298 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819008 (= lt!367416 (getCurrentListMapNoExtraKeys!2298 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!559020 () Bool)

(assert (=> start!70542 (=> (not res!559020) (not e!454810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70542 (= res!559020 (validMask!0 mask!1312))))

(assert (=> start!70542 e!454810))

(declare-fun tp_is_empty!14555 () Bool)

(assert (=> start!70542 tp_is_empty!14555))

(declare-fun array_inv!17309 (array!45280) Bool)

(assert (=> start!70542 (array_inv!17309 _keys!976)))

(assert (=> start!70542 true))

(declare-fun e!454808 () Bool)

(declare-fun array_inv!17310 (array!45282) Bool)

(assert (=> start!70542 (and (array_inv!17310 _values!788) e!454808)))

(assert (=> start!70542 tp!45268))

(declare-fun b!819009 () Bool)

(assert (=> b!819009 (= e!454811 tp_is_empty!14555)))

(declare-fun b!819010 () Bool)

(declare-fun e!454807 () Bool)

(assert (=> b!819010 (= e!454808 (and e!454807 mapRes!23431))))

(declare-fun condMapEmpty!23431 () Bool)

(declare-fun mapDefault!23431 () ValueCell!6862)

