; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70788 () Bool)

(assert start!70788)

(declare-fun b_free!13021 () Bool)

(declare-fun b_next!13021 () Bool)

(assert (=> start!70788 (= b_free!13021 (not b_next!13021))))

(declare-fun tp!45808 () Bool)

(declare-fun b_and!21911 () Bool)

(assert (=> start!70788 (= tp!45808 b_and!21911)))

(declare-fun mapIsEmpty!23707 () Bool)

(declare-fun mapRes!23707 () Bool)

(assert (=> mapIsEmpty!23707 mapRes!23707))

(declare-fun b!821760 () Bool)

(declare-fun res!560635 () Bool)

(declare-fun e!456810 () Bool)

(assert (=> b!821760 (=> (not res!560635) (not e!456810))))

(declare-datatypes ((array!45616 0))(
  ( (array!45617 (arr!21854 (Array (_ BitVec 32) (_ BitVec 64))) (size!22275 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45616)

(declare-datatypes ((List!15638 0))(
  ( (Nil!15635) (Cons!15634 (h!16763 (_ BitVec 64)) (t!21983 List!15638)) )
))
(declare-fun arrayNoDuplicates!0 (array!45616 (_ BitVec 32) List!15638) Bool)

(assert (=> b!821760 (= res!560635 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15635))))

(declare-fun b!821761 () Bool)

(declare-fun res!560636 () Bool)

(assert (=> b!821761 (=> (not res!560636) (not e!456810))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!24643 0))(
  ( (V!24644 (val!7413 Int)) )
))
(declare-datatypes ((ValueCell!6950 0))(
  ( (ValueCellFull!6950 (v!9840 V!24643)) (EmptyCell!6950) )
))
(declare-datatypes ((array!45618 0))(
  ( (array!45619 (arr!21855 (Array (_ BitVec 32) ValueCell!6950)) (size!22276 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45618)

(assert (=> b!821761 (= res!560636 (and (= (size!22276 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22275 _keys!976) (size!22276 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23707 () Bool)

(declare-fun tp!45807 () Bool)

(declare-fun e!456813 () Bool)

(assert (=> mapNonEmpty!23707 (= mapRes!23707 (and tp!45807 e!456813))))

(declare-fun mapKey!23707 () (_ BitVec 32))

(declare-fun mapRest!23707 () (Array (_ BitVec 32) ValueCell!6950))

(declare-fun mapValue!23707 () ValueCell!6950)

(assert (=> mapNonEmpty!23707 (= (arr!21855 _values!788) (store mapRest!23707 mapKey!23707 mapValue!23707))))

(declare-fun b!821762 () Bool)

(declare-fun tp_is_empty!14731 () Bool)

(assert (=> b!821762 (= e!456813 tp_is_empty!14731)))

(declare-fun b!821763 () Bool)

(declare-fun e!456811 () Bool)

(assert (=> b!821763 (= e!456811 true)))

(declare-fun e!456809 () Bool)

(assert (=> b!821763 e!456809))

(declare-fun res!560638 () Bool)

(assert (=> b!821763 (=> (not res!560638) (not e!456809))))

(declare-datatypes ((tuple2!9778 0))(
  ( (tuple2!9779 (_1!4899 (_ BitVec 64)) (_2!4899 V!24643)) )
))
(declare-fun lt!369443 () tuple2!9778)

(declare-datatypes ((List!15639 0))(
  ( (Nil!15636) (Cons!15635 (h!16764 tuple2!9778) (t!21984 List!15639)) )
))
(declare-datatypes ((ListLongMap!8615 0))(
  ( (ListLongMap!8616 (toList!4323 List!15639)) )
))
(declare-fun lt!369441 () ListLongMap!8615)

(declare-fun lt!369444 () ListLongMap!8615)

(declare-fun +!1828 (ListLongMap!8615 tuple2!9778) ListLongMap!8615)

(assert (=> b!821763 (= res!560638 (= lt!369441 (+!1828 lt!369444 lt!369443)))))

(declare-fun minValue!754 () V!24643)

(assert (=> b!821763 (= lt!369443 (tuple2!9779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369446 () ListLongMap!8615)

(declare-fun zeroValueAfter!34 () V!24643)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2458 (array!45616 array!45618 (_ BitVec 32) (_ BitVec 32) V!24643 V!24643 (_ BitVec 32) Int) ListLongMap!8615)

(assert (=> b!821763 (= lt!369446 (getCurrentListMap!2458 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24643)

(assert (=> b!821763 (= lt!369441 (getCurrentListMap!2458 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821764 () Bool)

(assert (=> b!821764 (= e!456810 (not e!456811))))

(declare-fun res!560637 () Bool)

(assert (=> b!821764 (=> res!560637 e!456811)))

(assert (=> b!821764 (= res!560637 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369445 () ListLongMap!8615)

(assert (=> b!821764 (= lt!369444 lt!369445)))

(declare-datatypes ((Unit!28090 0))(
  ( (Unit!28091) )
))
(declare-fun lt!369442 () Unit!28090)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!468 (array!45616 array!45618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24643 V!24643 V!24643 V!24643 (_ BitVec 32) Int) Unit!28090)

(assert (=> b!821764 (= lt!369442 (lemmaNoChangeToArrayThenSameMapNoExtras!468 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2352 (array!45616 array!45618 (_ BitVec 32) (_ BitVec 32) V!24643 V!24643 (_ BitVec 32) Int) ListLongMap!8615)

(assert (=> b!821764 (= lt!369445 (getCurrentListMapNoExtraKeys!2352 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821764 (= lt!369444 (getCurrentListMapNoExtraKeys!2352 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821765 () Bool)

(assert (=> b!821765 (= e!456809 (= lt!369446 (+!1828 (+!1828 lt!369444 (tuple2!9779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!369443)))))

(declare-fun b!821766 () Bool)

(declare-fun e!456812 () Bool)

(declare-fun e!456814 () Bool)

(assert (=> b!821766 (= e!456812 (and e!456814 mapRes!23707))))

(declare-fun condMapEmpty!23707 () Bool)

(declare-fun mapDefault!23707 () ValueCell!6950)

