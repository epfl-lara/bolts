; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70368 () Bool)

(assert start!70368)

(declare-fun b_free!12701 () Bool)

(declare-fun b_next!12701 () Bool)

(assert (=> start!70368 (= b_free!12701 (not b_next!12701))))

(declare-fun tp!44829 () Bool)

(declare-fun b_and!21531 () Bool)

(assert (=> start!70368 (= tp!44829 b_and!21531)))

(declare-fun b!817056 () Bool)

(declare-fun e!453376 () Bool)

(declare-fun tp_is_empty!14411 () Bool)

(assert (=> b!817056 (= e!453376 tp_is_empty!14411)))

(declare-fun b!817057 () Bool)

(declare-fun res!557862 () Bool)

(declare-fun e!453377 () Bool)

(assert (=> b!817057 (=> (not res!557862) (not e!453377))))

(declare-datatypes ((array!44998 0))(
  ( (array!44999 (arr!21551 (Array (_ BitVec 32) (_ BitVec 64))) (size!21972 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44998)

(declare-datatypes ((List!15403 0))(
  ( (Nil!15400) (Cons!15399 (h!16528 (_ BitVec 64)) (t!21736 List!15403)) )
))
(declare-fun arrayNoDuplicates!0 (array!44998 (_ BitVec 32) List!15403) Bool)

(assert (=> b!817057 (= res!557862 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15400))))

(declare-fun res!557863 () Bool)

(assert (=> start!70368 (=> (not res!557863) (not e!453377))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70368 (= res!557863 (validMask!0 mask!1312))))

(assert (=> start!70368 e!453377))

(assert (=> start!70368 tp_is_empty!14411))

(declare-fun array_inv!17215 (array!44998) Bool)

(assert (=> start!70368 (array_inv!17215 _keys!976)))

(assert (=> start!70368 true))

(declare-datatypes ((V!24215 0))(
  ( (V!24216 (val!7253 Int)) )
))
(declare-datatypes ((ValueCell!6790 0))(
  ( (ValueCellFull!6790 (v!9678 V!24215)) (EmptyCell!6790) )
))
(declare-datatypes ((array!45000 0))(
  ( (array!45001 (arr!21552 (Array (_ BitVec 32) ValueCell!6790)) (size!21973 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45000)

(declare-fun e!453374 () Bool)

(declare-fun array_inv!17216 (array!45000) Bool)

(assert (=> start!70368 (and (array_inv!17216 _values!788) e!453374)))

(assert (=> start!70368 tp!44829))

(declare-fun b!817058 () Bool)

(assert (=> b!817058 (= e!453377 (not true))))

(declare-datatypes ((tuple2!9534 0))(
  ( (tuple2!9535 (_1!4777 (_ BitVec 64)) (_2!4777 V!24215)) )
))
(declare-datatypes ((List!15404 0))(
  ( (Nil!15401) (Cons!15400 (h!16529 tuple2!9534) (t!21737 List!15404)) )
))
(declare-datatypes ((ListLongMap!8371 0))(
  ( (ListLongMap!8372 (toList!4201 List!15404)) )
))
(declare-fun lt!366099 () ListLongMap!8371)

(declare-fun lt!366100 () ListLongMap!8371)

(assert (=> b!817058 (= lt!366099 lt!366100)))

(declare-fun zeroValueBefore!34 () V!24215)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24215)

(declare-fun minValue!754 () V!24215)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27856 0))(
  ( (Unit!27857) )
))
(declare-fun lt!366101 () Unit!27856)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!363 (array!44998 array!45000 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24215 V!24215 V!24215 V!24215 (_ BitVec 32) Int) Unit!27856)

(assert (=> b!817058 (= lt!366101 (lemmaNoChangeToArrayThenSameMapNoExtras!363 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2247 (array!44998 array!45000 (_ BitVec 32) (_ BitVec 32) V!24215 V!24215 (_ BitVec 32) Int) ListLongMap!8371)

(assert (=> b!817058 (= lt!366100 (getCurrentListMapNoExtraKeys!2247 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817058 (= lt!366099 (getCurrentListMapNoExtraKeys!2247 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817059 () Bool)

(declare-fun e!453375 () Bool)

(assert (=> b!817059 (= e!453375 tp_is_empty!14411)))

(declare-fun b!817060 () Bool)

(declare-fun res!557865 () Bool)

(assert (=> b!817060 (=> (not res!557865) (not e!453377))))

(assert (=> b!817060 (= res!557865 (and (= (size!21973 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21972 _keys!976) (size!21973 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817061 () Bool)

(declare-fun res!557864 () Bool)

(assert (=> b!817061 (=> (not res!557864) (not e!453377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44998 (_ BitVec 32)) Bool)

(assert (=> b!817061 (= res!557864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23209 () Bool)

(declare-fun mapRes!23209 () Bool)

(declare-fun tp!44830 () Bool)

(assert (=> mapNonEmpty!23209 (= mapRes!23209 (and tp!44830 e!453376))))

(declare-fun mapRest!23209 () (Array (_ BitVec 32) ValueCell!6790))

(declare-fun mapValue!23209 () ValueCell!6790)

(declare-fun mapKey!23209 () (_ BitVec 32))

(assert (=> mapNonEmpty!23209 (= (arr!21552 _values!788) (store mapRest!23209 mapKey!23209 mapValue!23209))))

(declare-fun b!817062 () Bool)

(assert (=> b!817062 (= e!453374 (and e!453375 mapRes!23209))))

(declare-fun condMapEmpty!23209 () Bool)

(declare-fun mapDefault!23209 () ValueCell!6790)

