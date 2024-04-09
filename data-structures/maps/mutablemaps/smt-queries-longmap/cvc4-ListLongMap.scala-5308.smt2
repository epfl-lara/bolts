; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71096 () Bool)

(assert start!71096)

(declare-fun b_free!13259 () Bool)

(declare-fun b_next!13259 () Bool)

(assert (=> start!71096 (= b_free!13259 (not b_next!13259))))

(declare-fun tp!46534 () Bool)

(declare-fun b_and!22191 () Bool)

(assert (=> start!71096 (= tp!46534 b_and!22191)))

(declare-fun b!825189 () Bool)

(declare-fun e!459305 () Bool)

(assert (=> b!825189 (= e!459305 true)))

(declare-datatypes ((V!24959 0))(
  ( (V!24960 (val!7532 Int)) )
))
(declare-datatypes ((tuple2!9968 0))(
  ( (tuple2!9969 (_1!4994 (_ BitVec 64)) (_2!4994 V!24959)) )
))
(declare-datatypes ((List!15814 0))(
  ( (Nil!15811) (Cons!15810 (h!16939 tuple2!9968) (t!22167 List!15814)) )
))
(declare-datatypes ((ListLongMap!8805 0))(
  ( (ListLongMap!8806 (toList!4418 List!15814)) )
))
(declare-fun lt!372497 () ListLongMap!8805)

(declare-fun lt!372493 () tuple2!9968)

(declare-fun lt!372499 () tuple2!9968)

(declare-fun lt!372501 () ListLongMap!8805)

(declare-fun +!1880 (ListLongMap!8805 tuple2!9968) ListLongMap!8805)

(assert (=> b!825189 (= lt!372497 (+!1880 (+!1880 lt!372501 lt!372493) lt!372499))))

(declare-fun lt!372490 () ListLongMap!8805)

(declare-fun lt!372491 () ListLongMap!8805)

(declare-fun lt!372496 () ListLongMap!8805)

(assert (=> b!825189 (and (= lt!372490 lt!372491) (= lt!372496 lt!372491) (= lt!372496 lt!372490))))

(declare-fun lt!372492 () ListLongMap!8805)

(assert (=> b!825189 (= lt!372491 (+!1880 lt!372492 lt!372493))))

(declare-fun lt!372500 () ListLongMap!8805)

(assert (=> b!825189 (= lt!372490 (+!1880 lt!372500 lt!372493))))

(declare-fun zeroValueBefore!34 () V!24959)

(declare-fun zeroValueAfter!34 () V!24959)

(declare-datatypes ((Unit!28277 0))(
  ( (Unit!28278) )
))
(declare-fun lt!372494 () Unit!28277)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!208 (ListLongMap!8805 (_ BitVec 64) V!24959 V!24959) Unit!28277)

(assert (=> b!825189 (= lt!372494 (addSameAsAddTwiceSameKeyDiffValues!208 lt!372500 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459311 () Bool)

(assert (=> b!825189 e!459311))

(declare-fun res!562644 () Bool)

(assert (=> b!825189 (=> (not res!562644) (not e!459311))))

(declare-fun lt!372502 () ListLongMap!8805)

(assert (=> b!825189 (= res!562644 (= lt!372502 lt!372492))))

(declare-fun lt!372498 () tuple2!9968)

(assert (=> b!825189 (= lt!372492 (+!1880 lt!372500 lt!372498))))

(assert (=> b!825189 (= lt!372500 (+!1880 lt!372501 lt!372499))))

(assert (=> b!825189 (= lt!372493 (tuple2!9969 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459310 () Bool)

(assert (=> b!825189 e!459310))

(declare-fun res!562650 () Bool)

(assert (=> b!825189 (=> (not res!562650) (not e!459310))))

(assert (=> b!825189 (= res!562650 (= lt!372502 (+!1880 (+!1880 lt!372501 lt!372498) lt!372499)))))

(declare-fun minValue!754 () V!24959)

(assert (=> b!825189 (= lt!372499 (tuple2!9969 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825189 (= lt!372498 (tuple2!9969 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46082 0))(
  ( (array!46083 (arr!22083 (Array (_ BitVec 32) (_ BitVec 64))) (size!22504 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46082)

(declare-datatypes ((ValueCell!7069 0))(
  ( (ValueCellFull!7069 (v!9961 V!24959)) (EmptyCell!7069) )
))
(declare-datatypes ((array!46084 0))(
  ( (array!46085 (arr!22084 (Array (_ BitVec 32) ValueCell!7069)) (size!22505 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46084)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2530 (array!46082 array!46084 (_ BitVec 32) (_ BitVec 32) V!24959 V!24959 (_ BitVec 32) Int) ListLongMap!8805)

(assert (=> b!825189 (= lt!372496 (getCurrentListMap!2530 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825189 (= lt!372502 (getCurrentListMap!2530 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372495 () ListLongMap!8805)

(declare-fun b!825190 () Bool)

(assert (=> b!825190 (= e!459310 (= lt!372496 (+!1880 (+!1880 lt!372495 (tuple2!9969 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372499)))))

(declare-fun res!562645 () Bool)

(declare-fun e!459304 () Bool)

(assert (=> start!71096 (=> (not res!562645) (not e!459304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71096 (= res!562645 (validMask!0 mask!1312))))

(assert (=> start!71096 e!459304))

(declare-fun tp_is_empty!14969 () Bool)

(assert (=> start!71096 tp_is_empty!14969))

(declare-fun array_inv!17593 (array!46082) Bool)

(assert (=> start!71096 (array_inv!17593 _keys!976)))

(assert (=> start!71096 true))

(declare-fun e!459308 () Bool)

(declare-fun array_inv!17594 (array!46084) Bool)

(assert (=> start!71096 (and (array_inv!17594 _values!788) e!459308)))

(assert (=> start!71096 tp!46534))

(declare-fun b!825191 () Bool)

(declare-fun e!459309 () Bool)

(assert (=> b!825191 (= e!459309 tp_is_empty!14969)))

(declare-fun mapNonEmpty!24076 () Bool)

(declare-fun mapRes!24076 () Bool)

(declare-fun tp!46533 () Bool)

(declare-fun e!459306 () Bool)

(assert (=> mapNonEmpty!24076 (= mapRes!24076 (and tp!46533 e!459306))))

(declare-fun mapRest!24076 () (Array (_ BitVec 32) ValueCell!7069))

(declare-fun mapKey!24076 () (_ BitVec 32))

(declare-fun mapValue!24076 () ValueCell!7069)

(assert (=> mapNonEmpty!24076 (= (arr!22084 _values!788) (store mapRest!24076 mapKey!24076 mapValue!24076))))

(declare-fun b!825192 () Bool)

(declare-fun res!562647 () Bool)

(assert (=> b!825192 (=> (not res!562647) (not e!459304))))

(assert (=> b!825192 (= res!562647 (and (= (size!22505 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22504 _keys!976) (size!22505 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825193 () Bool)

(assert (=> b!825193 (= e!459306 tp_is_empty!14969)))

(declare-fun b!825194 () Bool)

(assert (=> b!825194 (= e!459308 (and e!459309 mapRes!24076))))

(declare-fun condMapEmpty!24076 () Bool)

(declare-fun mapDefault!24076 () ValueCell!7069)

