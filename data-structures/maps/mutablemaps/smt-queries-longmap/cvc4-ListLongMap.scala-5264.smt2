; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70746 () Bool)

(assert start!70746)

(declare-fun b_free!12995 () Bool)

(declare-fun b_next!12995 () Bool)

(assert (=> start!70746 (= b_free!12995 (not b_next!12995))))

(declare-fun tp!45726 () Bool)

(declare-fun b_and!21875 () Bool)

(assert (=> start!70746 (= tp!45726 b_and!21875)))

(declare-fun b!821298 () Bool)

(declare-fun e!456484 () Bool)

(declare-fun tp_is_empty!14705 () Bool)

(assert (=> b!821298 (= e!456484 tp_is_empty!14705)))

(declare-fun b!821299 () Bool)

(declare-fun res!560382 () Bool)

(declare-fun e!456482 () Bool)

(assert (=> b!821299 (=> (not res!560382) (not e!456482))))

(declare-datatypes ((array!45566 0))(
  ( (array!45567 (arr!21830 (Array (_ BitVec 32) (_ BitVec 64))) (size!22251 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45566)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45566 (_ BitVec 32)) Bool)

(assert (=> b!821299 (= res!560382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23665 () Bool)

(declare-fun mapRes!23665 () Bool)

(assert (=> mapIsEmpty!23665 mapRes!23665))

(declare-fun b!821300 () Bool)

(declare-fun e!456479 () Bool)

(assert (=> b!821300 (= e!456479 true)))

(declare-datatypes ((V!24607 0))(
  ( (V!24608 (val!7400 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24607)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24607)

(declare-datatypes ((tuple2!9756 0))(
  ( (tuple2!9757 (_1!4888 (_ BitVec 64)) (_2!4888 V!24607)) )
))
(declare-datatypes ((List!15616 0))(
  ( (Nil!15613) (Cons!15612 (h!16741 tuple2!9756) (t!21959 List!15616)) )
))
(declare-datatypes ((ListLongMap!8593 0))(
  ( (ListLongMap!8594 (toList!4312 List!15616)) )
))
(declare-fun lt!369176 () ListLongMap!8593)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6937 0))(
  ( (ValueCellFull!6937 (v!9827 V!24607)) (EmptyCell!6937) )
))
(declare-datatypes ((array!45568 0))(
  ( (array!45569 (arr!21831 (Array (_ BitVec 32) ValueCell!6937)) (size!22252 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45568)

(declare-fun getCurrentListMap!2447 (array!45566 array!45568 (_ BitVec 32) (_ BitVec 32) V!24607 V!24607 (_ BitVec 32) Int) ListLongMap!8593)

(assert (=> b!821300 (= lt!369176 (getCurrentListMap!2447 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821301 () Bool)

(declare-fun res!560379 () Bool)

(assert (=> b!821301 (=> (not res!560379) (not e!456482))))

(declare-datatypes ((List!15617 0))(
  ( (Nil!15614) (Cons!15613 (h!16742 (_ BitVec 64)) (t!21960 List!15617)) )
))
(declare-fun arrayNoDuplicates!0 (array!45566 (_ BitVec 32) List!15617) Bool)

(assert (=> b!821301 (= res!560379 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15614))))

(declare-fun res!560380 () Bool)

(assert (=> start!70746 (=> (not res!560380) (not e!456482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70746 (= res!560380 (validMask!0 mask!1312))))

(assert (=> start!70746 e!456482))

(assert (=> start!70746 tp_is_empty!14705))

(declare-fun array_inv!17413 (array!45566) Bool)

(assert (=> start!70746 (array_inv!17413 _keys!976)))

(assert (=> start!70746 true))

(declare-fun e!456483 () Bool)

(declare-fun array_inv!17414 (array!45568) Bool)

(assert (=> start!70746 (and (array_inv!17414 _values!788) e!456483)))

(assert (=> start!70746 tp!45726))

(declare-fun b!821302 () Bool)

(declare-fun res!560383 () Bool)

(assert (=> b!821302 (=> (not res!560383) (not e!456482))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821302 (= res!560383 (and (= (size!22252 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22251 _keys!976) (size!22252 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23665 () Bool)

(declare-fun tp!45727 () Bool)

(assert (=> mapNonEmpty!23665 (= mapRes!23665 (and tp!45727 e!456484))))

(declare-fun mapValue!23665 () ValueCell!6937)

(declare-fun mapRest!23665 () (Array (_ BitVec 32) ValueCell!6937))

(declare-fun mapKey!23665 () (_ BitVec 32))

(assert (=> mapNonEmpty!23665 (= (arr!21831 _values!788) (store mapRest!23665 mapKey!23665 mapValue!23665))))

(declare-fun b!821303 () Bool)

(assert (=> b!821303 (= e!456482 (not e!456479))))

(declare-fun res!560381 () Bool)

(assert (=> b!821303 (=> res!560381 e!456479)))

(assert (=> b!821303 (= res!560381 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369175 () ListLongMap!8593)

(declare-fun lt!369178 () ListLongMap!8593)

(assert (=> b!821303 (= lt!369175 lt!369178)))

(declare-fun zeroValueAfter!34 () V!24607)

(declare-datatypes ((Unit!28073 0))(
  ( (Unit!28074) )
))
(declare-fun lt!369177 () Unit!28073)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!460 (array!45566 array!45568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24607 V!24607 V!24607 V!24607 (_ BitVec 32) Int) Unit!28073)

(assert (=> b!821303 (= lt!369177 (lemmaNoChangeToArrayThenSameMapNoExtras!460 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2344 (array!45566 array!45568 (_ BitVec 32) (_ BitVec 32) V!24607 V!24607 (_ BitVec 32) Int) ListLongMap!8593)

(assert (=> b!821303 (= lt!369178 (getCurrentListMapNoExtraKeys!2344 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821303 (= lt!369175 (getCurrentListMapNoExtraKeys!2344 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821304 () Bool)

(declare-fun e!456481 () Bool)

(assert (=> b!821304 (= e!456483 (and e!456481 mapRes!23665))))

(declare-fun condMapEmpty!23665 () Bool)

(declare-fun mapDefault!23665 () ValueCell!6937)

