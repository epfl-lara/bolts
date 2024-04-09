; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70438 () Bool)

(assert start!70438)

(declare-fun b_free!12757 () Bool)

(declare-fun b_next!12757 () Bool)

(assert (=> start!70438 (= b_free!12757 (not b_next!12757))))

(declare-fun tp!45001 () Bool)

(declare-fun b_and!21595 () Bool)

(assert (=> start!70438 (= tp!45001 b_and!21595)))

(declare-fun b!817740 () Bool)

(declare-fun e!453863 () Bool)

(declare-fun e!453860 () Bool)

(assert (=> b!817740 (= e!453863 (not e!453860))))

(declare-fun res!558244 () Bool)

(assert (=> b!817740 (=> res!558244 e!453860)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817740 (= res!558244 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24291 0))(
  ( (V!24292 (val!7281 Int)) )
))
(declare-datatypes ((tuple2!9578 0))(
  ( (tuple2!9579 (_1!4799 (_ BitVec 64)) (_2!4799 V!24291)) )
))
(declare-datatypes ((List!15446 0))(
  ( (Nil!15443) (Cons!15442 (h!16571 tuple2!9578) (t!21781 List!15446)) )
))
(declare-datatypes ((ListLongMap!8415 0))(
  ( (ListLongMap!8416 (toList!4223 List!15446)) )
))
(declare-fun lt!366403 () ListLongMap!8415)

(declare-fun lt!366402 () ListLongMap!8415)

(assert (=> b!817740 (= lt!366403 lt!366402)))

(declare-fun zeroValueBefore!34 () V!24291)

(declare-datatypes ((array!45110 0))(
  ( (array!45111 (arr!21606 (Array (_ BitVec 32) (_ BitVec 64))) (size!22027 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45110)

(declare-fun zeroValueAfter!34 () V!24291)

(declare-fun minValue!754 () V!24291)

(declare-datatypes ((ValueCell!6818 0))(
  ( (ValueCellFull!6818 (v!9706 V!24291)) (EmptyCell!6818) )
))
(declare-datatypes ((array!45112 0))(
  ( (array!45113 (arr!21607 (Array (_ BitVec 32) ValueCell!6818)) (size!22028 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45112)

(declare-datatypes ((Unit!27898 0))(
  ( (Unit!27899) )
))
(declare-fun lt!366404 () Unit!27898)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!384 (array!45110 array!45112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24291 V!24291 V!24291 V!24291 (_ BitVec 32) Int) Unit!27898)

(assert (=> b!817740 (= lt!366404 (lemmaNoChangeToArrayThenSameMapNoExtras!384 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2268 (array!45110 array!45112 (_ BitVec 32) (_ BitVec 32) V!24291 V!24291 (_ BitVec 32) Int) ListLongMap!8415)

(assert (=> b!817740 (= lt!366402 (getCurrentListMapNoExtraKeys!2268 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817740 (= lt!366403 (getCurrentListMapNoExtraKeys!2268 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23296 () Bool)

(declare-fun mapRes!23296 () Bool)

(assert (=> mapIsEmpty!23296 mapRes!23296))

(declare-fun b!817741 () Bool)

(declare-fun e!453862 () Bool)

(declare-fun tp_is_empty!14467 () Bool)

(assert (=> b!817741 (= e!453862 tp_is_empty!14467)))

(declare-fun b!817742 () Bool)

(declare-fun res!558243 () Bool)

(assert (=> b!817742 (=> (not res!558243) (not e!453863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45110 (_ BitVec 32)) Bool)

(assert (=> b!817742 (= res!558243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817743 () Bool)

(declare-fun e!453861 () Bool)

(assert (=> b!817743 (= e!453861 (and e!453862 mapRes!23296))))

(declare-fun condMapEmpty!23296 () Bool)

(declare-fun mapDefault!23296 () ValueCell!6818)

