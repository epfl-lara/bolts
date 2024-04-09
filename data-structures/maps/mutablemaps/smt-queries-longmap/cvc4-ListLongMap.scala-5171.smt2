; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70040 () Bool)

(assert start!70040)

(declare-fun b_free!12437 () Bool)

(declare-fun b_next!12437 () Bool)

(assert (=> start!70040 (= b_free!12437 (not b_next!12437))))

(declare-fun tp!44026 () Bool)

(declare-fun b_and!21227 () Bool)

(assert (=> start!70040 (= tp!44026 b_and!21227)))

(declare-fun b!813584 () Bool)

(declare-fun e!450901 () Bool)

(declare-fun tp_is_empty!14147 () Bool)

(assert (=> b!813584 (= e!450901 tp_is_empty!14147)))

(declare-fun b!813585 () Bool)

(declare-fun e!450903 () Bool)

(assert (=> b!813585 (= e!450903 false)))

(declare-datatypes ((V!23863 0))(
  ( (V!23864 (val!7121 Int)) )
))
(declare-datatypes ((tuple2!9334 0))(
  ( (tuple2!9335 (_1!4677 (_ BitVec 64)) (_2!4677 V!23863)) )
))
(declare-datatypes ((List!15208 0))(
  ( (Nil!15205) (Cons!15204 (h!16333 tuple2!9334) (t!21533 List!15208)) )
))
(declare-datatypes ((ListLongMap!8171 0))(
  ( (ListLongMap!8172 (toList!4101 List!15208)) )
))
(declare-fun lt!364328 () ListLongMap!8171)

(declare-datatypes ((array!44484 0))(
  ( (array!44485 (arr!21298 (Array (_ BitVec 32) (_ BitVec 64))) (size!21719 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44484)

(declare-fun zeroValueAfter!34 () V!23863)

(declare-fun minValue!754 () V!23863)

(declare-datatypes ((ValueCell!6658 0))(
  ( (ValueCellFull!6658 (v!9544 V!23863)) (EmptyCell!6658) )
))
(declare-datatypes ((array!44486 0))(
  ( (array!44487 (arr!21299 (Array (_ BitVec 32) ValueCell!6658)) (size!21720 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44486)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2150 (array!44484 array!44486 (_ BitVec 32) (_ BitVec 32) V!23863 V!23863 (_ BitVec 32) Int) ListLongMap!8171)

(assert (=> b!813585 (= lt!364328 (getCurrentListMapNoExtraKeys!2150 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23863)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364327 () ListLongMap!8171)

(assert (=> b!813585 (= lt!364327 (getCurrentListMapNoExtraKeys!2150 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813586 () Bool)

(declare-fun res!555891 () Bool)

(assert (=> b!813586 (=> (not res!555891) (not e!450903))))

(declare-datatypes ((List!15209 0))(
  ( (Nil!15206) (Cons!15205 (h!16334 (_ BitVec 64)) (t!21534 List!15209)) )
))
(declare-fun arrayNoDuplicates!0 (array!44484 (_ BitVec 32) List!15209) Bool)

(assert (=> b!813586 (= res!555891 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15206))))

(declare-fun b!813587 () Bool)

(declare-fun res!555890 () Bool)

(assert (=> b!813587 (=> (not res!555890) (not e!450903))))

(assert (=> b!813587 (= res!555890 (and (= (size!21720 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21719 _keys!976) (size!21720 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813588 () Bool)

(declare-fun res!555892 () Bool)

(assert (=> b!813588 (=> (not res!555892) (not e!450903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44484 (_ BitVec 32)) Bool)

(assert (=> b!813588 (= res!555892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22801 () Bool)

(declare-fun mapRes!22801 () Bool)

(assert (=> mapIsEmpty!22801 mapRes!22801))

(declare-fun res!555893 () Bool)

(assert (=> start!70040 (=> (not res!555893) (not e!450903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70040 (= res!555893 (validMask!0 mask!1312))))

(assert (=> start!70040 e!450903))

(assert (=> start!70040 tp_is_empty!14147))

(declare-fun array_inv!17035 (array!44484) Bool)

(assert (=> start!70040 (array_inv!17035 _keys!976)))

(assert (=> start!70040 true))

(declare-fun e!450904 () Bool)

(declare-fun array_inv!17036 (array!44486) Bool)

(assert (=> start!70040 (and (array_inv!17036 _values!788) e!450904)))

(assert (=> start!70040 tp!44026))

(declare-fun mapNonEmpty!22801 () Bool)

(declare-fun tp!44025 () Bool)

(declare-fun e!450902 () Bool)

(assert (=> mapNonEmpty!22801 (= mapRes!22801 (and tp!44025 e!450902))))

(declare-fun mapRest!22801 () (Array (_ BitVec 32) ValueCell!6658))

(declare-fun mapValue!22801 () ValueCell!6658)

(declare-fun mapKey!22801 () (_ BitVec 32))

(assert (=> mapNonEmpty!22801 (= (arr!21299 _values!788) (store mapRest!22801 mapKey!22801 mapValue!22801))))

(declare-fun b!813589 () Bool)

(assert (=> b!813589 (= e!450902 tp_is_empty!14147)))

(declare-fun b!813590 () Bool)

(assert (=> b!813590 (= e!450904 (and e!450901 mapRes!22801))))

(declare-fun condMapEmpty!22801 () Bool)

(declare-fun mapDefault!22801 () ValueCell!6658)

