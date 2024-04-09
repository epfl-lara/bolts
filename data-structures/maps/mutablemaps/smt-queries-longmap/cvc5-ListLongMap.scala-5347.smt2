; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71486 () Bool)

(assert start!71486)

(declare-fun b_free!13489 () Bool)

(declare-fun b_next!13489 () Bool)

(assert (=> start!71486 (= b_free!13489 (not b_next!13489))))

(declare-fun tp!47251 () Bool)

(declare-fun b_and!22525 () Bool)

(assert (=> start!71486 (= tp!47251 b_and!22525)))

(declare-fun b!829744 () Bool)

(declare-fun e!462593 () Bool)

(declare-fun e!462595 () Bool)

(assert (=> b!829744 (= e!462593 (not e!462595))))

(declare-fun res!565300 () Bool)

(assert (=> b!829744 (=> res!565300 e!462595)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!829744 (= res!565300 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462594 () Bool)

(assert (=> b!829744 e!462594))

(declare-fun res!565298 () Bool)

(assert (=> b!829744 (=> (not res!565298) (not e!462594))))

(declare-datatypes ((V!25267 0))(
  ( (V!25268 (val!7647 Int)) )
))
(declare-datatypes ((tuple2!10168 0))(
  ( (tuple2!10169 (_1!5094 (_ BitVec 64)) (_2!5094 V!25267)) )
))
(declare-datatypes ((List!15999 0))(
  ( (Nil!15996) (Cons!15995 (h!17124 tuple2!10168) (t!22370 List!15999)) )
))
(declare-datatypes ((ListLongMap!9005 0))(
  ( (ListLongMap!9006 (toList!4518 List!15999)) )
))
(declare-fun lt!376415 () ListLongMap!9005)

(declare-fun lt!376416 () ListLongMap!9005)

(assert (=> b!829744 (= res!565298 (= lt!376415 lt!376416))))

(declare-fun zeroValueBefore!34 () V!25267)

(declare-datatypes ((array!46542 0))(
  ( (array!46543 (arr!22304 (Array (_ BitVec 32) (_ BitVec 64))) (size!22725 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46542)

(declare-fun zeroValueAfter!34 () V!25267)

(declare-fun minValue!754 () V!25267)

(declare-datatypes ((ValueCell!7184 0))(
  ( (ValueCellFull!7184 (v!10084 V!25267)) (EmptyCell!7184) )
))
(declare-datatypes ((array!46544 0))(
  ( (array!46545 (arr!22305 (Array (_ BitVec 32) ValueCell!7184)) (size!22726 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46544)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28427 0))(
  ( (Unit!28428) )
))
(declare-fun lt!376414 () Unit!28427)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!608 (array!46542 array!46544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25267 V!25267 V!25267 V!25267 (_ BitVec 32) Int) Unit!28427)

(assert (=> b!829744 (= lt!376414 (lemmaNoChangeToArrayThenSameMapNoExtras!608 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2518 (array!46542 array!46544 (_ BitVec 32) (_ BitVec 32) V!25267 V!25267 (_ BitVec 32) Int) ListLongMap!9005)

(assert (=> b!829744 (= lt!376416 (getCurrentListMapNoExtraKeys!2518 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829744 (= lt!376415 (getCurrentListMapNoExtraKeys!2518 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829745 () Bool)

(declare-fun getCurrentListMap!2589 (array!46542 array!46544 (_ BitVec 32) (_ BitVec 32) V!25267 V!25267 (_ BitVec 32) Int) ListLongMap!9005)

(declare-fun +!1947 (ListLongMap!9005 tuple2!10168) ListLongMap!9005)

(assert (=> b!829745 (= e!462595 (= (getCurrentListMap!2589 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1947 (+!1947 lt!376416 (tuple2!10169 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!10169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829746 () Bool)

(declare-fun e!462599 () Bool)

(declare-fun e!462597 () Bool)

(declare-fun mapRes!24448 () Bool)

(assert (=> b!829746 (= e!462599 (and e!462597 mapRes!24448))))

(declare-fun condMapEmpty!24448 () Bool)

(declare-fun mapDefault!24448 () ValueCell!7184)

