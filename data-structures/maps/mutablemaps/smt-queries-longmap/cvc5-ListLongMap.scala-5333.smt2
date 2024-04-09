; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71282 () Bool)

(assert start!71282)

(declare-fun b_free!13405 () Bool)

(declare-fun b_next!13405 () Bool)

(assert (=> start!71282 (= b_free!13405 (not b_next!13405))))

(declare-fun tp!46977 () Bool)

(declare-fun b_and!22361 () Bool)

(assert (=> start!71282 (= tp!46977 b_and!22361)))

(declare-fun mapNonEmpty!24301 () Bool)

(declare-fun mapRes!24301 () Bool)

(declare-fun tp!46978 () Bool)

(declare-fun e!461068 () Bool)

(assert (=> mapNonEmpty!24301 (= mapRes!24301 (and tp!46978 e!461068))))

(declare-datatypes ((V!25155 0))(
  ( (V!25156 (val!7605 Int)) )
))
(declare-datatypes ((ValueCell!7142 0))(
  ( (ValueCellFull!7142 (v!10036 V!25155)) (EmptyCell!7142) )
))
(declare-fun mapRest!24301 () (Array (_ BitVec 32) ValueCell!7142))

(declare-fun mapKey!24301 () (_ BitVec 32))

(declare-datatypes ((array!46364 0))(
  ( (array!46365 (arr!22222 (Array (_ BitVec 32) ValueCell!7142)) (size!22643 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46364)

(declare-fun mapValue!24301 () ValueCell!7142)

(assert (=> mapNonEmpty!24301 (= (arr!22222 _values!788) (store mapRest!24301 mapKey!24301 mapValue!24301))))

(declare-fun b!827542 () Bool)

(declare-fun e!461067 () Bool)

(assert (=> b!827542 (= e!461067 false)))

(declare-datatypes ((array!46366 0))(
  ( (array!46367 (arr!22223 (Array (_ BitVec 32) (_ BitVec 64))) (size!22644 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46366)

(declare-fun minValue!754 () V!25155)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!10094 0))(
  ( (tuple2!10095 (_1!5057 (_ BitVec 64)) (_2!5057 V!25155)) )
))
(declare-datatypes ((List!15931 0))(
  ( (Nil!15928) (Cons!15927 (h!17056 tuple2!10094) (t!22288 List!15931)) )
))
(declare-datatypes ((ListLongMap!8931 0))(
  ( (ListLongMap!8932 (toList!4481 List!15931)) )
))
(declare-fun lt!374925 () ListLongMap!8931)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!25155)

(declare-fun getCurrentListMapNoExtraKeys!2488 (array!46366 array!46364 (_ BitVec 32) (_ BitVec 32) V!25155 V!25155 (_ BitVec 32) Int) ListLongMap!8931)

(assert (=> b!827542 (= lt!374925 (getCurrentListMapNoExtraKeys!2488 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374926 () ListLongMap!8931)

(declare-fun zeroValueBefore!34 () V!25155)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827542 (= lt!374926 (getCurrentListMapNoExtraKeys!2488 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!564136 () Bool)

(assert (=> start!71282 (=> (not res!564136) (not e!461067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71282 (= res!564136 (validMask!0 mask!1312))))

(assert (=> start!71282 e!461067))

(declare-fun tp_is_empty!15115 () Bool)

(assert (=> start!71282 tp_is_empty!15115))

(declare-fun array_inv!17689 (array!46366) Bool)

(assert (=> start!71282 (array_inv!17689 _keys!976)))

(assert (=> start!71282 true))

(declare-fun e!461070 () Bool)

(declare-fun array_inv!17690 (array!46364) Bool)

(assert (=> start!71282 (and (array_inv!17690 _values!788) e!461070)))

(assert (=> start!71282 tp!46977))

(declare-fun mapIsEmpty!24301 () Bool)

(assert (=> mapIsEmpty!24301 mapRes!24301))

(declare-fun b!827543 () Bool)

(declare-fun res!564139 () Bool)

(assert (=> b!827543 (=> (not res!564139) (not e!461067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46366 (_ BitVec 32)) Bool)

(assert (=> b!827543 (= res!564139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827544 () Bool)

(declare-fun res!564138 () Bool)

(assert (=> b!827544 (=> (not res!564138) (not e!461067))))

(declare-datatypes ((List!15932 0))(
  ( (Nil!15929) (Cons!15928 (h!17057 (_ BitVec 64)) (t!22289 List!15932)) )
))
(declare-fun arrayNoDuplicates!0 (array!46366 (_ BitVec 32) List!15932) Bool)

(assert (=> b!827544 (= res!564138 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15929))))

(declare-fun b!827545 () Bool)

(declare-fun e!461069 () Bool)

(assert (=> b!827545 (= e!461069 tp_is_empty!15115)))

(declare-fun b!827546 () Bool)

(assert (=> b!827546 (= e!461068 tp_is_empty!15115)))

(declare-fun b!827547 () Bool)

(assert (=> b!827547 (= e!461070 (and e!461069 mapRes!24301))))

(declare-fun condMapEmpty!24301 () Bool)

(declare-fun mapDefault!24301 () ValueCell!7142)

