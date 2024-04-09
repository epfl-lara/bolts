; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70388 () Bool)

(assert start!70388)

(declare-fun b_free!12721 () Bool)

(declare-fun b_next!12721 () Bool)

(assert (=> start!70388 (= b_free!12721 (not b_next!12721))))

(declare-fun tp!44890 () Bool)

(declare-fun b_and!21551 () Bool)

(assert (=> start!70388 (= tp!44890 b_and!21551)))

(declare-fun b!817266 () Bool)

(declare-fun res!557982 () Bool)

(declare-fun e!453527 () Bool)

(assert (=> b!817266 (=> (not res!557982) (not e!453527))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24243 0))(
  ( (V!24244 (val!7263 Int)) )
))
(declare-datatypes ((ValueCell!6800 0))(
  ( (ValueCellFull!6800 (v!9688 V!24243)) (EmptyCell!6800) )
))
(declare-datatypes ((array!45036 0))(
  ( (array!45037 (arr!21570 (Array (_ BitVec 32) ValueCell!6800)) (size!21991 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45036)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((array!45038 0))(
  ( (array!45039 (arr!21571 (Array (_ BitVec 32) (_ BitVec 64))) (size!21992 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45038)

(assert (=> b!817266 (= res!557982 (and (= (size!21991 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21992 _keys!976) (size!21991 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817267 () Bool)

(declare-fun e!453526 () Bool)

(declare-fun tp_is_empty!14431 () Bool)

(assert (=> b!817267 (= e!453526 tp_is_empty!14431)))

(declare-fun b!817268 () Bool)

(declare-fun res!557983 () Bool)

(assert (=> b!817268 (=> (not res!557983) (not e!453527))))

(declare-datatypes ((List!15418 0))(
  ( (Nil!15415) (Cons!15414 (h!16543 (_ BitVec 64)) (t!21751 List!15418)) )
))
(declare-fun arrayNoDuplicates!0 (array!45038 (_ BitVec 32) List!15418) Bool)

(assert (=> b!817268 (= res!557983 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15415))))

(declare-fun b!817269 () Bool)

(assert (=> b!817269 (= e!453527 (not true))))

(declare-datatypes ((tuple2!9550 0))(
  ( (tuple2!9551 (_1!4785 (_ BitVec 64)) (_2!4785 V!24243)) )
))
(declare-datatypes ((List!15419 0))(
  ( (Nil!15416) (Cons!15415 (h!16544 tuple2!9550) (t!21752 List!15419)) )
))
(declare-datatypes ((ListLongMap!8387 0))(
  ( (ListLongMap!8388 (toList!4209 List!15419)) )
))
(declare-fun lt!366189 () ListLongMap!8387)

(declare-fun lt!366191 () ListLongMap!8387)

(assert (=> b!817269 (= lt!366189 lt!366191)))

(declare-fun zeroValueBefore!34 () V!24243)

(declare-fun zeroValueAfter!34 () V!24243)

(declare-fun minValue!754 () V!24243)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27872 0))(
  ( (Unit!27873) )
))
(declare-fun lt!366190 () Unit!27872)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!371 (array!45038 array!45036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24243 V!24243 V!24243 V!24243 (_ BitVec 32) Int) Unit!27872)

(assert (=> b!817269 (= lt!366190 (lemmaNoChangeToArrayThenSameMapNoExtras!371 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2255 (array!45038 array!45036 (_ BitVec 32) (_ BitVec 32) V!24243 V!24243 (_ BitVec 32) Int) ListLongMap!8387)

(assert (=> b!817269 (= lt!366191 (getCurrentListMapNoExtraKeys!2255 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817269 (= lt!366189 (getCurrentListMapNoExtraKeys!2255 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!557984 () Bool)

(assert (=> start!70388 (=> (not res!557984) (not e!453527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70388 (= res!557984 (validMask!0 mask!1312))))

(assert (=> start!70388 e!453527))

(assert (=> start!70388 tp_is_empty!14431))

(declare-fun array_inv!17229 (array!45038) Bool)

(assert (=> start!70388 (array_inv!17229 _keys!976)))

(assert (=> start!70388 true))

(declare-fun e!453525 () Bool)

(declare-fun array_inv!17230 (array!45036) Bool)

(assert (=> start!70388 (and (array_inv!17230 _values!788) e!453525)))

(assert (=> start!70388 tp!44890))

(declare-fun b!817270 () Bool)

(declare-fun e!453524 () Bool)

(declare-fun mapRes!23239 () Bool)

(assert (=> b!817270 (= e!453525 (and e!453524 mapRes!23239))))

(declare-fun condMapEmpty!23239 () Bool)

(declare-fun mapDefault!23239 () ValueCell!6800)

