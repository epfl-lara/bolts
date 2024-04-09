; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70412 () Bool)

(assert start!70412)

(declare-fun b_free!12745 () Bool)

(declare-fun b_next!12745 () Bool)

(assert (=> start!70412 (= b_free!12745 (not b_next!12745))))

(declare-fun tp!44961 () Bool)

(declare-fun b_and!21575 () Bool)

(assert (=> start!70412 (= tp!44961 b_and!21575)))

(declare-fun b!817518 () Bool)

(declare-fun res!558126 () Bool)

(declare-fun e!453705 () Bool)

(assert (=> b!817518 (=> (not res!558126) (not e!453705))))

(declare-datatypes ((array!45084 0))(
  ( (array!45085 (arr!21594 (Array (_ BitVec 32) (_ BitVec 64))) (size!22015 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45084)

(declare-datatypes ((List!15435 0))(
  ( (Nil!15432) (Cons!15431 (h!16560 (_ BitVec 64)) (t!21768 List!15435)) )
))
(declare-fun arrayNoDuplicates!0 (array!45084 (_ BitVec 32) List!15435) Bool)

(assert (=> b!817518 (= res!558126 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15432))))

(declare-fun b!817519 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817519 (= e!453705 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!22015 _keys!976)))))))

(declare-datatypes ((V!24275 0))(
  ( (V!24276 (val!7275 Int)) )
))
(declare-datatypes ((tuple2!9566 0))(
  ( (tuple2!9567 (_1!4793 (_ BitVec 64)) (_2!4793 V!24275)) )
))
(declare-datatypes ((List!15436 0))(
  ( (Nil!15433) (Cons!15432 (h!16561 tuple2!9566) (t!21769 List!15436)) )
))
(declare-datatypes ((ListLongMap!8403 0))(
  ( (ListLongMap!8404 (toList!4217 List!15436)) )
))
(declare-fun lt!366298 () ListLongMap!8403)

(declare-fun lt!366297 () ListLongMap!8403)

(assert (=> b!817519 (= lt!366298 lt!366297)))

(declare-fun zeroValueBefore!34 () V!24275)

(declare-fun zeroValueAfter!34 () V!24275)

(declare-fun minValue!754 () V!24275)

(declare-datatypes ((ValueCell!6812 0))(
  ( (ValueCellFull!6812 (v!9700 V!24275)) (EmptyCell!6812) )
))
(declare-datatypes ((array!45086 0))(
  ( (array!45087 (arr!21595 (Array (_ BitVec 32) ValueCell!6812)) (size!22016 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45086)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27888 0))(
  ( (Unit!27889) )
))
(declare-fun lt!366299 () Unit!27888)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!379 (array!45084 array!45086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24275 V!24275 V!24275 V!24275 (_ BitVec 32) Int) Unit!27888)

(assert (=> b!817519 (= lt!366299 (lemmaNoChangeToArrayThenSameMapNoExtras!379 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2263 (array!45084 array!45086 (_ BitVec 32) (_ BitVec 32) V!24275 V!24275 (_ BitVec 32) Int) ListLongMap!8403)

(assert (=> b!817519 (= lt!366297 (getCurrentListMapNoExtraKeys!2263 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817519 (= lt!366298 (getCurrentListMapNoExtraKeys!2263 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817520 () Bool)

(declare-fun e!453703 () Bool)

(declare-fun e!453706 () Bool)

(declare-fun mapRes!23275 () Bool)

(assert (=> b!817520 (= e!453703 (and e!453706 mapRes!23275))))

(declare-fun condMapEmpty!23275 () Bool)

(declare-fun mapDefault!23275 () ValueCell!6812)

