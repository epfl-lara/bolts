; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69988 () Bool)

(assert start!69988)

(declare-fun b_free!12397 () Bool)

(declare-fun b_next!12397 () Bool)

(assert (=> start!69988 (= b_free!12397 (not b_next!12397))))

(declare-fun tp!43903 () Bool)

(declare-fun b_and!21183 () Bool)

(assert (=> start!69988 (= tp!43903 b_and!21183)))

(declare-fun b!813091 () Bool)

(declare-fun res!555626 () Bool)

(declare-fun e!450553 () Bool)

(assert (=> b!813091 (=> (not res!555626) (not e!450553))))

(declare-datatypes ((array!44402 0))(
  ( (array!44403 (arr!21258 (Array (_ BitVec 32) (_ BitVec 64))) (size!21679 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44402)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23811 0))(
  ( (V!23812 (val!7101 Int)) )
))
(declare-datatypes ((ValueCell!6638 0))(
  ( (ValueCellFull!6638 (v!9524 V!23811)) (EmptyCell!6638) )
))
(declare-datatypes ((array!44404 0))(
  ( (array!44405 (arr!21259 (Array (_ BitVec 32) ValueCell!6638)) (size!21680 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44404)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813091 (= res!555626 (and (= (size!21680 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21679 _keys!976) (size!21680 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22738 () Bool)

(declare-fun mapRes!22738 () Bool)

(declare-fun tp!43902 () Bool)

(declare-fun e!450554 () Bool)

(assert (=> mapNonEmpty!22738 (= mapRes!22738 (and tp!43902 e!450554))))

(declare-fun mapKey!22738 () (_ BitVec 32))

(declare-fun mapValue!22738 () ValueCell!6638)

(declare-fun mapRest!22738 () (Array (_ BitVec 32) ValueCell!6638))

(assert (=> mapNonEmpty!22738 (= (arr!21259 _values!788) (store mapRest!22738 mapKey!22738 mapValue!22738))))

(declare-fun b!813093 () Bool)

(declare-fun tp_is_empty!14107 () Bool)

(assert (=> b!813093 (= e!450554 tp_is_empty!14107)))

(declare-fun mapIsEmpty!22738 () Bool)

(assert (=> mapIsEmpty!22738 mapRes!22738))

(declare-fun b!813094 () Bool)

(declare-fun res!555624 () Bool)

(assert (=> b!813094 (=> (not res!555624) (not e!450553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44402 (_ BitVec 32)) Bool)

(assert (=> b!813094 (= res!555624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813095 () Bool)

(declare-fun e!450557 () Bool)

(assert (=> b!813095 (= e!450557 tp_is_empty!14107)))

(declare-fun res!555623 () Bool)

(assert (=> start!69988 (=> (not res!555623) (not e!450553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69988 (= res!555623 (validMask!0 mask!1312))))

(assert (=> start!69988 e!450553))

(assert (=> start!69988 tp_is_empty!14107))

(declare-fun array_inv!17001 (array!44402) Bool)

(assert (=> start!69988 (array_inv!17001 _keys!976)))

(assert (=> start!69988 true))

(declare-fun e!450556 () Bool)

(declare-fun array_inv!17002 (array!44404) Bool)

(assert (=> start!69988 (and (array_inv!17002 _values!788) e!450556)))

(assert (=> start!69988 tp!43903))

(declare-fun b!813092 () Bool)

(assert (=> b!813092 (= e!450553 false)))

(declare-fun zeroValueBefore!34 () V!23811)

(declare-datatypes ((tuple2!9302 0))(
  ( (tuple2!9303 (_1!4661 (_ BitVec 64)) (_2!4661 V!23811)) )
))
(declare-datatypes ((List!15174 0))(
  ( (Nil!15171) (Cons!15170 (h!16299 tuple2!9302) (t!21497 List!15174)) )
))
(declare-datatypes ((ListLongMap!8139 0))(
  ( (ListLongMap!8140 (toList!4085 List!15174)) )
))
(declare-fun lt!364202 () ListLongMap!8139)

(declare-fun minValue!754 () V!23811)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2134 (array!44402 array!44404 (_ BitVec 32) (_ BitVec 32) V!23811 V!23811 (_ BitVec 32) Int) ListLongMap!8139)

(assert (=> b!813092 (= lt!364202 (getCurrentListMapNoExtraKeys!2134 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813096 () Bool)

(declare-fun res!555625 () Bool)

(assert (=> b!813096 (=> (not res!555625) (not e!450553))))

(declare-datatypes ((List!15175 0))(
  ( (Nil!15172) (Cons!15171 (h!16300 (_ BitVec 64)) (t!21498 List!15175)) )
))
(declare-fun arrayNoDuplicates!0 (array!44402 (_ BitVec 32) List!15175) Bool)

(assert (=> b!813096 (= res!555625 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15172))))

(declare-fun b!813097 () Bool)

(assert (=> b!813097 (= e!450556 (and e!450557 mapRes!22738))))

(declare-fun condMapEmpty!22738 () Bool)

(declare-fun mapDefault!22738 () ValueCell!6638)

