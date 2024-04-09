; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70580 () Bool)

(assert start!70580)

(declare-fun b_free!12863 () Bool)

(declare-fun b_next!12863 () Bool)

(assert (=> start!70580 (= b_free!12863 (not b_next!12863))))

(declare-fun tp!45325 () Bool)

(declare-fun b_and!21723 () Bool)

(assert (=> start!70580 (= tp!45325 b_and!21723)))

(declare-fun res!559275 () Bool)

(declare-fun e!455121 () Bool)

(assert (=> start!70580 (=> (not res!559275) (not e!455121))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70580 (= res!559275 (validMask!0 mask!1312))))

(assert (=> start!70580 e!455121))

(declare-fun tp_is_empty!14573 () Bool)

(assert (=> start!70580 tp_is_empty!14573))

(declare-datatypes ((array!45316 0))(
  ( (array!45317 (arr!21707 (Array (_ BitVec 32) (_ BitVec 64))) (size!22128 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45316)

(declare-fun array_inv!17323 (array!45316) Bool)

(assert (=> start!70580 (array_inv!17323 _keys!976)))

(assert (=> start!70580 true))

(declare-datatypes ((V!24431 0))(
  ( (V!24432 (val!7334 Int)) )
))
(declare-datatypes ((ValueCell!6871 0))(
  ( (ValueCellFull!6871 (v!9760 V!24431)) (EmptyCell!6871) )
))
(declare-datatypes ((array!45318 0))(
  ( (array!45319 (arr!21708 (Array (_ BitVec 32) ValueCell!6871)) (size!22129 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45318)

(declare-fun e!455123 () Bool)

(declare-fun array_inv!17324 (array!45318) Bool)

(assert (=> start!70580 (and (array_inv!17324 _values!788) e!455123)))

(assert (=> start!70580 tp!45325))

(declare-fun b!819443 () Bool)

(declare-fun e!455126 () Bool)

(assert (=> b!819443 (= e!455121 (not e!455126))))

(declare-fun res!559276 () Bool)

(assert (=> b!819443 (=> res!559276 e!455126)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819443 (= res!559276 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9664 0))(
  ( (tuple2!9665 (_1!4842 (_ BitVec 64)) (_2!4842 V!24431)) )
))
(declare-datatypes ((List!15525 0))(
  ( (Nil!15522) (Cons!15521 (h!16650 tuple2!9664) (t!21864 List!15525)) )
))
(declare-datatypes ((ListLongMap!8501 0))(
  ( (ListLongMap!8502 (toList!4266 List!15525)) )
))
(declare-fun lt!367833 () ListLongMap!8501)

(declare-fun lt!367839 () ListLongMap!8501)

(assert (=> b!819443 (= lt!367833 lt!367839)))

(declare-fun zeroValueAfter!34 () V!24431)

(declare-fun minValue!754 () V!24431)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27983 0))(
  ( (Unit!27984) )
))
(declare-fun lt!367841 () Unit!27983)

(declare-fun zeroValueBefore!34 () V!24431)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!420 (array!45316 array!45318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24431 V!24431 V!24431 V!24431 (_ BitVec 32) Int) Unit!27983)

(assert (=> b!819443 (= lt!367841 (lemmaNoChangeToArrayThenSameMapNoExtras!420 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2304 (array!45316 array!45318 (_ BitVec 32) (_ BitVec 32) V!24431 V!24431 (_ BitVec 32) Int) ListLongMap!8501)

(assert (=> b!819443 (= lt!367839 (getCurrentListMapNoExtraKeys!2304 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819443 (= lt!367833 (getCurrentListMapNoExtraKeys!2304 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819444 () Bool)

(declare-fun res!559274 () Bool)

(assert (=> b!819444 (=> (not res!559274) (not e!455121))))

(assert (=> b!819444 (= res!559274 (and (= (size!22129 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22128 _keys!976) (size!22129 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!367832 () ListLongMap!8501)

(declare-fun b!819445 () Bool)

(declare-fun e!455125 () Bool)

(declare-fun +!1809 (ListLongMap!8501 tuple2!9664) ListLongMap!8501)

(assert (=> b!819445 (= e!455125 (= lt!367832 (+!1809 lt!367839 (tuple2!9665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819446 () Bool)

(declare-fun e!455120 () Bool)

(assert (=> b!819446 (= e!455120 tp_is_empty!14573)))

(declare-fun mapNonEmpty!23461 () Bool)

(declare-fun mapRes!23461 () Bool)

(declare-fun tp!45324 () Bool)

(assert (=> mapNonEmpty!23461 (= mapRes!23461 (and tp!45324 e!455120))))

(declare-fun mapKey!23461 () (_ BitVec 32))

(declare-fun mapValue!23461 () ValueCell!6871)

(declare-fun mapRest!23461 () (Array (_ BitVec 32) ValueCell!6871))

(assert (=> mapNonEmpty!23461 (= (arr!21708 _values!788) (store mapRest!23461 mapKey!23461 mapValue!23461))))

(declare-fun b!819447 () Bool)

(declare-fun e!455122 () Bool)

(assert (=> b!819447 (= e!455123 (and e!455122 mapRes!23461))))

(declare-fun condMapEmpty!23461 () Bool)

(declare-fun mapDefault!23461 () ValueCell!6871)

