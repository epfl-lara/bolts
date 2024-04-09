; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71450 () Bool)

(assert start!71450)

(declare-fun b_free!13471 () Bool)

(declare-fun b_next!13471 () Bool)

(assert (=> start!71450 (= b_free!13471 (not b_next!13471))))

(declare-fun tp!47194 () Bool)

(declare-fun b_and!22495 () Bool)

(assert (=> start!71450 (= tp!47194 b_and!22495)))

(declare-fun b!829340 () Bool)

(declare-fun res!565075 () Bool)

(declare-fun e!462310 () Bool)

(assert (=> b!829340 (=> (not res!565075) (not e!462310))))

(declare-datatypes ((array!46506 0))(
  ( (array!46507 (arr!22287 (Array (_ BitVec 32) (_ BitVec 64))) (size!22708 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46506)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25243 0))(
  ( (V!25244 (val!7638 Int)) )
))
(declare-datatypes ((ValueCell!7175 0))(
  ( (ValueCellFull!7175 (v!10074 V!25243)) (EmptyCell!7175) )
))
(declare-datatypes ((array!46508 0))(
  ( (array!46509 (arr!22288 (Array (_ BitVec 32) ValueCell!7175)) (size!22709 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46508)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829340 (= res!565075 (and (= (size!22709 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22708 _keys!976) (size!22709 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829341 () Bool)

(declare-fun res!565078 () Bool)

(assert (=> b!829341 (=> (not res!565078) (not e!462310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46506 (_ BitVec 32)) Bool)

(assert (=> b!829341 (= res!565078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-datatypes ((tuple2!10154 0))(
  ( (tuple2!10155 (_1!5087 (_ BitVec 64)) (_2!5087 V!25243)) )
))
(declare-fun lt!376098 () tuple2!10154)

(declare-datatypes ((List!15985 0))(
  ( (Nil!15982) (Cons!15981 (h!17110 tuple2!10154) (t!22354 List!15985)) )
))
(declare-datatypes ((ListLongMap!8991 0))(
  ( (ListLongMap!8992 (toList!4511 List!15985)) )
))
(declare-fun lt!376097 () ListLongMap!8991)

(declare-fun e!462313 () Bool)

(declare-fun lt!376096 () ListLongMap!8991)

(declare-fun b!829342 () Bool)

(declare-fun zeroValueAfter!34 () V!25243)

(declare-fun +!1942 (ListLongMap!8991 tuple2!10154) ListLongMap!8991)

(assert (=> b!829342 (= e!462313 (= lt!376096 (+!1942 (+!1942 lt!376097 (tuple2!10155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376098)))))

(declare-fun res!565076 () Bool)

(assert (=> start!71450 (=> (not res!565076) (not e!462310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71450 (= res!565076 (validMask!0 mask!1312))))

(assert (=> start!71450 e!462310))

(declare-fun tp_is_empty!15181 () Bool)

(assert (=> start!71450 tp_is_empty!15181))

(declare-fun array_inv!17729 (array!46506) Bool)

(assert (=> start!71450 (array_inv!17729 _keys!976)))

(assert (=> start!71450 true))

(declare-fun e!462315 () Bool)

(declare-fun array_inv!17730 (array!46508) Bool)

(assert (=> start!71450 (and (array_inv!17730 _values!788) e!462315)))

(assert (=> start!71450 tp!47194))

(declare-fun mapNonEmpty!24418 () Bool)

(declare-fun mapRes!24418 () Bool)

(declare-fun tp!47193 () Bool)

(declare-fun e!462314 () Bool)

(assert (=> mapNonEmpty!24418 (= mapRes!24418 (and tp!47193 e!462314))))

(declare-fun mapValue!24418 () ValueCell!7175)

(declare-fun mapKey!24418 () (_ BitVec 32))

(declare-fun mapRest!24418 () (Array (_ BitVec 32) ValueCell!7175))

(assert (=> mapNonEmpty!24418 (= (arr!22288 _values!788) (store mapRest!24418 mapKey!24418 mapValue!24418))))

(declare-fun b!829343 () Bool)

(declare-fun e!462311 () Bool)

(assert (=> b!829343 (= e!462311 true)))

(assert (=> b!829343 e!462313))

(declare-fun res!565074 () Bool)

(assert (=> b!829343 (=> (not res!565074) (not e!462313))))

(declare-fun lt!376099 () ListLongMap!8991)

(assert (=> b!829343 (= res!565074 (= lt!376099 (+!1942 lt!376097 lt!376098)))))

(declare-fun minValue!754 () V!25243)

(assert (=> b!829343 (= lt!376098 (tuple2!10155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2584 (array!46506 array!46508 (_ BitVec 32) (_ BitVec 32) V!25243 V!25243 (_ BitVec 32) Int) ListLongMap!8991)

(assert (=> b!829343 (= lt!376096 (getCurrentListMap!2584 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25243)

(assert (=> b!829343 (= lt!376099 (getCurrentListMap!2584 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24418 () Bool)

(assert (=> mapIsEmpty!24418 mapRes!24418))

(declare-fun b!829344 () Bool)

(assert (=> b!829344 (= e!462314 tp_is_empty!15181)))

(declare-fun b!829345 () Bool)

(declare-fun res!565073 () Bool)

(assert (=> b!829345 (=> (not res!565073) (not e!462310))))

(declare-datatypes ((List!15986 0))(
  ( (Nil!15983) (Cons!15982 (h!17111 (_ BitVec 64)) (t!22355 List!15986)) )
))
(declare-fun arrayNoDuplicates!0 (array!46506 (_ BitVec 32) List!15986) Bool)

(assert (=> b!829345 (= res!565073 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15983))))

(declare-fun b!829346 () Bool)

(declare-fun e!462312 () Bool)

(assert (=> b!829346 (= e!462312 tp_is_empty!15181)))

(declare-fun b!829347 () Bool)

(assert (=> b!829347 (= e!462315 (and e!462312 mapRes!24418))))

(declare-fun condMapEmpty!24418 () Bool)

(declare-fun mapDefault!24418 () ValueCell!7175)

