; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70244 () Bool)

(assert start!70244)

(declare-fun b_free!12613 () Bool)

(declare-fun b_next!12613 () Bool)

(assert (=> start!70244 (= b_free!12613 (not b_next!12613))))

(declare-fun tp!44560 () Bool)

(declare-fun b_and!21419 () Bool)

(assert (=> start!70244 (= tp!44560 b_and!21419)))

(declare-fun b!815640 () Bool)

(declare-fun res!557046 () Bool)

(declare-fun e!452369 () Bool)

(assert (=> b!815640 (=> (not res!557046) (not e!452369))))

(declare-datatypes ((array!44832 0))(
  ( (array!44833 (arr!21470 (Array (_ BitVec 32) (_ BitVec 64))) (size!21891 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44832)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24099 0))(
  ( (V!24100 (val!7209 Int)) )
))
(declare-datatypes ((ValueCell!6746 0))(
  ( (ValueCellFull!6746 (v!9632 V!24099)) (EmptyCell!6746) )
))
(declare-datatypes ((array!44834 0))(
  ( (array!44835 (arr!21471 (Array (_ BitVec 32) ValueCell!6746)) (size!21892 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44834)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(assert (=> b!815640 (= res!557046 (and (= (size!21892 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21891 _keys!976) (size!21892 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815641 () Bool)

(declare-fun e!452374 () Bool)

(declare-fun tp_is_empty!14323 () Bool)

(assert (=> b!815641 (= e!452374 tp_is_empty!14323)))

(declare-fun b!815642 () Bool)

(declare-fun e!452370 () Bool)

(assert (=> b!815642 (= e!452369 (not e!452370))))

(declare-fun res!557049 () Bool)

(assert (=> b!815642 (=> res!557049 e!452370)))

(assert (=> b!815642 (= res!557049 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9472 0))(
  ( (tuple2!9473 (_1!4746 (_ BitVec 64)) (_2!4746 V!24099)) )
))
(declare-datatypes ((List!15343 0))(
  ( (Nil!15340) (Cons!15339 (h!16468 tuple2!9472) (t!21672 List!15343)) )
))
(declare-datatypes ((ListLongMap!8309 0))(
  ( (ListLongMap!8310 (toList!4170 List!15343)) )
))
(declare-fun lt!365213 () ListLongMap!8309)

(declare-fun lt!365211 () ListLongMap!8309)

(assert (=> b!815642 (= lt!365213 lt!365211)))

(declare-fun zeroValueBefore!34 () V!24099)

(declare-fun zeroValueAfter!34 () V!24099)

(declare-fun minValue!754 () V!24099)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27796 0))(
  ( (Unit!27797) )
))
(declare-fun lt!365214 () Unit!27796)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!335 (array!44832 array!44834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24099 V!24099 V!24099 V!24099 (_ BitVec 32) Int) Unit!27796)

(assert (=> b!815642 (= lt!365214 (lemmaNoChangeToArrayThenSameMapNoExtras!335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2219 (array!44832 array!44834 (_ BitVec 32) (_ BitVec 32) V!24099 V!24099 (_ BitVec 32) Int) ListLongMap!8309)

(assert (=> b!815642 (= lt!365211 (getCurrentListMapNoExtraKeys!2219 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815642 (= lt!365213 (getCurrentListMapNoExtraKeys!2219 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23071 () Bool)

(declare-fun mapRes!23071 () Bool)

(assert (=> mapIsEmpty!23071 mapRes!23071))

(declare-fun b!815643 () Bool)

(declare-fun e!452372 () Bool)

(assert (=> b!815643 (= e!452372 (and e!452374 mapRes!23071))))

(declare-fun condMapEmpty!23071 () Bool)

(declare-fun mapDefault!23071 () ValueCell!6746)

