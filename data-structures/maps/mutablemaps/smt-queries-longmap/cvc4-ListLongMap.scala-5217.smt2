; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70380 () Bool)

(assert start!70380)

(declare-fun b_free!12713 () Bool)

(declare-fun b_next!12713 () Bool)

(assert (=> start!70380 (= b_free!12713 (not b_next!12713))))

(declare-fun tp!44865 () Bool)

(declare-fun b_and!21543 () Bool)

(assert (=> start!70380 (= tp!44865 b_and!21543)))

(declare-fun b!817182 () Bool)

(declare-fun e!453466 () Bool)

(assert (=> b!817182 (= e!453466 (not true))))

(declare-datatypes ((V!24231 0))(
  ( (V!24232 (val!7259 Int)) )
))
(declare-datatypes ((tuple2!9544 0))(
  ( (tuple2!9545 (_1!4782 (_ BitVec 64)) (_2!4782 V!24231)) )
))
(declare-datatypes ((List!15413 0))(
  ( (Nil!15410) (Cons!15409 (h!16538 tuple2!9544) (t!21746 List!15413)) )
))
(declare-datatypes ((ListLongMap!8381 0))(
  ( (ListLongMap!8382 (toList!4206 List!15413)) )
))
(declare-fun lt!366153 () ListLongMap!8381)

(declare-fun lt!366154 () ListLongMap!8381)

(assert (=> b!817182 (= lt!366153 lt!366154)))

(declare-datatypes ((Unit!27866 0))(
  ( (Unit!27867) )
))
(declare-fun lt!366155 () Unit!27866)

(declare-fun zeroValueBefore!34 () V!24231)

(declare-datatypes ((array!45020 0))(
  ( (array!45021 (arr!21562 (Array (_ BitVec 32) (_ BitVec 64))) (size!21983 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45020)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24231)

(declare-fun minValue!754 () V!24231)

(declare-datatypes ((ValueCell!6796 0))(
  ( (ValueCellFull!6796 (v!9684 V!24231)) (EmptyCell!6796) )
))
(declare-datatypes ((array!45022 0))(
  ( (array!45023 (arr!21563 (Array (_ BitVec 32) ValueCell!6796)) (size!21984 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45022)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!368 (array!45020 array!45022 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24231 V!24231 V!24231 V!24231 (_ BitVec 32) Int) Unit!27866)

(assert (=> b!817182 (= lt!366155 (lemmaNoChangeToArrayThenSameMapNoExtras!368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2252 (array!45020 array!45022 (_ BitVec 32) (_ BitVec 32) V!24231 V!24231 (_ BitVec 32) Int) ListLongMap!8381)

(assert (=> b!817182 (= lt!366154 (getCurrentListMapNoExtraKeys!2252 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817182 (= lt!366153 (getCurrentListMapNoExtraKeys!2252 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23227 () Bool)

(declare-fun mapRes!23227 () Bool)

(declare-fun tp!44866 () Bool)

(declare-fun e!453467 () Bool)

(assert (=> mapNonEmpty!23227 (= mapRes!23227 (and tp!44866 e!453467))))

(declare-fun mapValue!23227 () ValueCell!6796)

(declare-fun mapRest!23227 () (Array (_ BitVec 32) ValueCell!6796))

(declare-fun mapKey!23227 () (_ BitVec 32))

(assert (=> mapNonEmpty!23227 (= (arr!21563 _values!788) (store mapRest!23227 mapKey!23227 mapValue!23227))))

(declare-fun b!817183 () Bool)

(declare-fun res!557936 () Bool)

(assert (=> b!817183 (=> (not res!557936) (not e!453466))))

(declare-datatypes ((List!15414 0))(
  ( (Nil!15411) (Cons!15410 (h!16539 (_ BitVec 64)) (t!21747 List!15414)) )
))
(declare-fun arrayNoDuplicates!0 (array!45020 (_ BitVec 32) List!15414) Bool)

(assert (=> b!817183 (= res!557936 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15411))))

(declare-fun res!557937 () Bool)

(assert (=> start!70380 (=> (not res!557937) (not e!453466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70380 (= res!557937 (validMask!0 mask!1312))))

(assert (=> start!70380 e!453466))

(declare-fun tp_is_empty!14423 () Bool)

(assert (=> start!70380 tp_is_empty!14423))

(declare-fun array_inv!17223 (array!45020) Bool)

(assert (=> start!70380 (array_inv!17223 _keys!976)))

(assert (=> start!70380 true))

(declare-fun e!453464 () Bool)

(declare-fun array_inv!17224 (array!45022) Bool)

(assert (=> start!70380 (and (array_inv!17224 _values!788) e!453464)))

(assert (=> start!70380 tp!44865))

(declare-fun b!817184 () Bool)

(declare-fun res!557935 () Bool)

(assert (=> b!817184 (=> (not res!557935) (not e!453466))))

(assert (=> b!817184 (= res!557935 (and (= (size!21984 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21983 _keys!976) (size!21984 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817185 () Bool)

(declare-fun e!453463 () Bool)

(assert (=> b!817185 (= e!453464 (and e!453463 mapRes!23227))))

(declare-fun condMapEmpty!23227 () Bool)

(declare-fun mapDefault!23227 () ValueCell!6796)

