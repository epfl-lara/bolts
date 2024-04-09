; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71256 () Bool)

(assert start!71256)

(declare-fun b_free!13379 () Bool)

(declare-fun b_next!13379 () Bool)

(assert (=> start!71256 (= b_free!13379 (not b_next!13379))))

(declare-fun tp!46900 () Bool)

(declare-fun b_and!22335 () Bool)

(assert (=> start!71256 (= tp!46900 b_and!22335)))

(declare-fun b!827269 () Bool)

(declare-fun res!563982 () Bool)

(declare-fun e!460876 () Bool)

(assert (=> b!827269 (=> (not res!563982) (not e!460876))))

(declare-datatypes ((array!46312 0))(
  ( (array!46313 (arr!22196 (Array (_ BitVec 32) (_ BitVec 64))) (size!22617 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46312)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46312 (_ BitVec 32)) Bool)

(assert (=> b!827269 (= res!563982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827270 () Bool)

(declare-fun res!563980 () Bool)

(assert (=> b!827270 (=> (not res!563980) (not e!460876))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25119 0))(
  ( (V!25120 (val!7592 Int)) )
))
(declare-datatypes ((ValueCell!7129 0))(
  ( (ValueCellFull!7129 (v!10023 V!25119)) (EmptyCell!7129) )
))
(declare-datatypes ((array!46314 0))(
  ( (array!46315 (arr!22197 (Array (_ BitVec 32) ValueCell!7129)) (size!22618 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46314)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827270 (= res!563980 (and (= (size!22618 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22617 _keys!976) (size!22618 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24262 () Bool)

(declare-fun mapRes!24262 () Bool)

(declare-fun tp!46899 () Bool)

(declare-fun e!460874 () Bool)

(assert (=> mapNonEmpty!24262 (= mapRes!24262 (and tp!46899 e!460874))))

(declare-fun mapRest!24262 () (Array (_ BitVec 32) ValueCell!7129))

(declare-fun mapKey!24262 () (_ BitVec 32))

(declare-fun mapValue!24262 () ValueCell!7129)

(assert (=> mapNonEmpty!24262 (= (arr!22197 _values!788) (store mapRest!24262 mapKey!24262 mapValue!24262))))

(declare-fun b!827272 () Bool)

(assert (=> b!827272 (= e!460876 false)))

(declare-datatypes ((tuple2!10072 0))(
  ( (tuple2!10073 (_1!5046 (_ BitVec 64)) (_2!5046 V!25119)) )
))
(declare-datatypes ((List!15909 0))(
  ( (Nil!15906) (Cons!15905 (h!17034 tuple2!10072) (t!22266 List!15909)) )
))
(declare-datatypes ((ListLongMap!8909 0))(
  ( (ListLongMap!8910 (toList!4470 List!15909)) )
))
(declare-fun lt!374848 () ListLongMap!8909)

(declare-fun zeroValueAfter!34 () V!25119)

(declare-fun minValue!754 () V!25119)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2477 (array!46312 array!46314 (_ BitVec 32) (_ BitVec 32) V!25119 V!25119 (_ BitVec 32) Int) ListLongMap!8909)

(assert (=> b!827272 (= lt!374848 (getCurrentListMapNoExtraKeys!2477 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374847 () ListLongMap!8909)

(declare-fun zeroValueBefore!34 () V!25119)

(assert (=> b!827272 (= lt!374847 (getCurrentListMapNoExtraKeys!2477 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24262 () Bool)

(assert (=> mapIsEmpty!24262 mapRes!24262))

(declare-fun b!827273 () Bool)

(declare-fun tp_is_empty!15089 () Bool)

(assert (=> b!827273 (= e!460874 tp_is_empty!15089)))

(declare-fun b!827274 () Bool)

(declare-fun res!563983 () Bool)

(assert (=> b!827274 (=> (not res!563983) (not e!460876))))

(declare-datatypes ((List!15910 0))(
  ( (Nil!15907) (Cons!15906 (h!17035 (_ BitVec 64)) (t!22267 List!15910)) )
))
(declare-fun arrayNoDuplicates!0 (array!46312 (_ BitVec 32) List!15910) Bool)

(assert (=> b!827274 (= res!563983 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15907))))

(declare-fun b!827275 () Bool)

(declare-fun e!460872 () Bool)

(declare-fun e!460873 () Bool)

(assert (=> b!827275 (= e!460872 (and e!460873 mapRes!24262))))

(declare-fun condMapEmpty!24262 () Bool)

(declare-fun mapDefault!24262 () ValueCell!7129)

