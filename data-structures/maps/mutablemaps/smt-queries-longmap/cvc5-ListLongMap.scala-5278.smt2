; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70842 () Bool)

(assert start!70842)

(declare-fun b_free!13075 () Bool)

(declare-fun b_next!13075 () Bool)

(assert (=> start!70842 (= b_free!13075 (not b_next!13075))))

(declare-fun tp!45969 () Bool)

(declare-fun b_and!21965 () Bool)

(assert (=> start!70842 (= tp!45969 b_and!21965)))

(declare-fun mapIsEmpty!23788 () Bool)

(declare-fun mapRes!23788 () Bool)

(assert (=> mapIsEmpty!23788 mapRes!23788))

(declare-fun b!822415 () Bool)

(declare-fun e!457304 () Bool)

(declare-fun tp_is_empty!14785 () Bool)

(assert (=> b!822415 (= e!457304 tp_is_empty!14785)))

(declare-fun b!822416 () Bool)

(declare-fun e!457305 () Bool)

(declare-fun e!457307 () Bool)

(assert (=> b!822416 (= e!457305 (not e!457307))))

(declare-fun res!561047 () Bool)

(assert (=> b!822416 (=> res!561047 e!457307)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822416 (= res!561047 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24715 0))(
  ( (V!24716 (val!7440 Int)) )
))
(declare-datatypes ((tuple2!9822 0))(
  ( (tuple2!9823 (_1!4921 (_ BitVec 64)) (_2!4921 V!24715)) )
))
(declare-datatypes ((List!15681 0))(
  ( (Nil!15678) (Cons!15677 (h!16806 tuple2!9822) (t!22026 List!15681)) )
))
(declare-datatypes ((ListLongMap!8659 0))(
  ( (ListLongMap!8660 (toList!4345 List!15681)) )
))
(declare-fun lt!370224 () ListLongMap!8659)

(declare-fun lt!370231 () ListLongMap!8659)

(assert (=> b!822416 (= lt!370224 lt!370231)))

(declare-fun zeroValueBefore!34 () V!24715)

(declare-datatypes ((array!45722 0))(
  ( (array!45723 (arr!21907 (Array (_ BitVec 32) (_ BitVec 64))) (size!22328 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45722)

(declare-fun zeroValueAfter!34 () V!24715)

(declare-fun minValue!754 () V!24715)

(declare-datatypes ((ValueCell!6977 0))(
  ( (ValueCellFull!6977 (v!9867 V!24715)) (EmptyCell!6977) )
))
(declare-datatypes ((array!45724 0))(
  ( (array!45725 (arr!21908 (Array (_ BitVec 32) ValueCell!6977)) (size!22329 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45724)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28132 0))(
  ( (Unit!28133) )
))
(declare-fun lt!370227 () Unit!28132)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!487 (array!45722 array!45724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24715 V!24715 V!24715 V!24715 (_ BitVec 32) Int) Unit!28132)

(assert (=> b!822416 (= lt!370227 (lemmaNoChangeToArrayThenSameMapNoExtras!487 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2371 (array!45722 array!45724 (_ BitVec 32) (_ BitVec 32) V!24715 V!24715 (_ BitVec 32) Int) ListLongMap!8659)

(assert (=> b!822416 (= lt!370231 (getCurrentListMapNoExtraKeys!2371 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822416 (= lt!370224 (getCurrentListMapNoExtraKeys!2371 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23788 () Bool)

(declare-fun tp!45970 () Bool)

(declare-fun e!457302 () Bool)

(assert (=> mapNonEmpty!23788 (= mapRes!23788 (and tp!45970 e!457302))))

(declare-fun mapValue!23788 () ValueCell!6977)

(declare-fun mapRest!23788 () (Array (_ BitVec 32) ValueCell!6977))

(declare-fun mapKey!23788 () (_ BitVec 32))

(assert (=> mapNonEmpty!23788 (= (arr!21908 _values!788) (store mapRest!23788 mapKey!23788 mapValue!23788))))

(declare-fun res!561050 () Bool)

(assert (=> start!70842 (=> (not res!561050) (not e!457305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70842 (= res!561050 (validMask!0 mask!1312))))

(assert (=> start!70842 e!457305))

(assert (=> start!70842 tp_is_empty!14785))

(declare-fun array_inv!17465 (array!45722) Bool)

(assert (=> start!70842 (array_inv!17465 _keys!976)))

(assert (=> start!70842 true))

(declare-fun e!457306 () Bool)

(declare-fun array_inv!17466 (array!45724) Bool)

(assert (=> start!70842 (and (array_inv!17466 _values!788) e!457306)))

(assert (=> start!70842 tp!45969))

(declare-fun b!822417 () Bool)

(assert (=> b!822417 (= e!457307 (bvsle #b00000000000000000000000000000000 (size!22328 _keys!976)))))

(declare-fun lt!370225 () ListLongMap!8659)

(declare-fun lt!370226 () ListLongMap!8659)

(declare-fun lt!370223 () tuple2!9822)

(declare-fun +!1848 (ListLongMap!8659 tuple2!9822) ListLongMap!8659)

(assert (=> b!822417 (= lt!370225 (+!1848 lt!370226 lt!370223))))

(declare-fun lt!370228 () Unit!28132)

(declare-fun addCommutativeForDiffKeys!443 (ListLongMap!8659 (_ BitVec 64) V!24715 (_ BitVec 64) V!24715) Unit!28132)

(assert (=> b!822417 (= lt!370228 (addCommutativeForDiffKeys!443 lt!370224 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370229 () ListLongMap!8659)

(assert (=> b!822417 (= lt!370229 lt!370225)))

(declare-fun lt!370232 () tuple2!9822)

(assert (=> b!822417 (= lt!370225 (+!1848 (+!1848 lt!370224 lt!370223) lt!370232))))

(assert (=> b!822417 (= lt!370223 (tuple2!9823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370230 () ListLongMap!8659)

(assert (=> b!822417 (= lt!370230 lt!370226)))

(assert (=> b!822417 (= lt!370226 (+!1848 lt!370224 lt!370232))))

(assert (=> b!822417 (= lt!370232 (tuple2!9823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2478 (array!45722 array!45724 (_ BitVec 32) (_ BitVec 32) V!24715 V!24715 (_ BitVec 32) Int) ListLongMap!8659)

(assert (=> b!822417 (= lt!370229 (getCurrentListMap!2478 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822417 (= lt!370230 (getCurrentListMap!2478 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822418 () Bool)

(declare-fun res!561046 () Bool)

(assert (=> b!822418 (=> (not res!561046) (not e!457305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45722 (_ BitVec 32)) Bool)

(assert (=> b!822418 (= res!561046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822419 () Bool)

(assert (=> b!822419 (= e!457302 tp_is_empty!14785)))

(declare-fun b!822420 () Bool)

(declare-fun res!561048 () Bool)

(assert (=> b!822420 (=> (not res!561048) (not e!457305))))

(assert (=> b!822420 (= res!561048 (and (= (size!22329 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22328 _keys!976) (size!22329 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822421 () Bool)

(declare-fun res!561049 () Bool)

(assert (=> b!822421 (=> (not res!561049) (not e!457305))))

(declare-datatypes ((List!15682 0))(
  ( (Nil!15679) (Cons!15678 (h!16807 (_ BitVec 64)) (t!22027 List!15682)) )
))
(declare-fun arrayNoDuplicates!0 (array!45722 (_ BitVec 32) List!15682) Bool)

(assert (=> b!822421 (= res!561049 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15679))))

(declare-fun b!822422 () Bool)

(assert (=> b!822422 (= e!457306 (and e!457304 mapRes!23788))))

(declare-fun condMapEmpty!23788 () Bool)

(declare-fun mapDefault!23788 () ValueCell!6977)

