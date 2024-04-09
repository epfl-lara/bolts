; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71032 () Bool)

(assert start!71032)

(declare-fun b_free!13211 () Bool)

(declare-fun b_next!13211 () Bool)

(assert (=> start!71032 (= b_free!13211 (not b_next!13211))))

(declare-fun tp!46386 () Bool)

(declare-fun b_and!22133 () Bool)

(assert (=> start!71032 (= tp!46386 b_and!22133)))

(declare-fun b!824413 () Bool)

(declare-fun res!562178 () Bool)

(declare-fun e!458726 () Bool)

(assert (=> b!824413 (=> (not res!562178) (not e!458726))))

(declare-datatypes ((array!45988 0))(
  ( (array!45989 (arr!22037 (Array (_ BitVec 32) (_ BitVec 64))) (size!22458 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45988)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45988 (_ BitVec 32)) Bool)

(assert (=> b!824413 (= res!562178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!562175 () Bool)

(assert (=> start!71032 (=> (not res!562175) (not e!458726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71032 (= res!562175 (validMask!0 mask!1312))))

(assert (=> start!71032 e!458726))

(declare-fun tp_is_empty!14921 () Bool)

(assert (=> start!71032 tp_is_empty!14921))

(declare-fun array_inv!17561 (array!45988) Bool)

(assert (=> start!71032 (array_inv!17561 _keys!976)))

(assert (=> start!71032 true))

(declare-datatypes ((V!24895 0))(
  ( (V!24896 (val!7508 Int)) )
))
(declare-datatypes ((ValueCell!7045 0))(
  ( (ValueCellFull!7045 (v!9937 V!24895)) (EmptyCell!7045) )
))
(declare-datatypes ((array!45990 0))(
  ( (array!45991 (arr!22038 (Array (_ BitVec 32) ValueCell!7045)) (size!22459 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45990)

(declare-fun e!458730 () Bool)

(declare-fun array_inv!17562 (array!45990) Bool)

(assert (=> start!71032 (and (array_inv!17562 _values!788) e!458730)))

(assert (=> start!71032 tp!46386))

(declare-fun b!824414 () Bool)

(declare-fun e!458728 () Bool)

(assert (=> b!824414 (= e!458728 tp_is_empty!14921)))

(declare-fun mapNonEmpty!24001 () Bool)

(declare-fun mapRes!24001 () Bool)

(declare-fun tp!46387 () Bool)

(declare-fun e!458731 () Bool)

(assert (=> mapNonEmpty!24001 (= mapRes!24001 (and tp!46387 e!458731))))

(declare-fun mapValue!24001 () ValueCell!7045)

(declare-fun mapKey!24001 () (_ BitVec 32))

(declare-fun mapRest!24001 () (Array (_ BitVec 32) ValueCell!7045))

(assert (=> mapNonEmpty!24001 (= (arr!22038 _values!788) (store mapRest!24001 mapKey!24001 mapValue!24001))))

(declare-fun b!824415 () Bool)

(declare-fun e!458727 () Bool)

(assert (=> b!824415 (= e!458727 true)))

(declare-fun zeroValueBefore!34 () V!24895)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24895)

(declare-datatypes ((tuple2!9924 0))(
  ( (tuple2!9925 (_1!4972 (_ BitVec 64)) (_2!4972 V!24895)) )
))
(declare-datatypes ((List!15778 0))(
  ( (Nil!15775) (Cons!15774 (h!16903 tuple2!9924) (t!22129 List!15778)) )
))
(declare-datatypes ((ListLongMap!8761 0))(
  ( (ListLongMap!8762 (toList!4396 List!15778)) )
))
(declare-fun lt!371836 () ListLongMap!8761)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2509 (array!45988 array!45990 (_ BitVec 32) (_ BitVec 32) V!24895 V!24895 (_ BitVec 32) Int) ListLongMap!8761)

(assert (=> b!824415 (= lt!371836 (getCurrentListMap!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824416 () Bool)

(declare-fun res!562177 () Bool)

(assert (=> b!824416 (=> (not res!562177) (not e!458726))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824416 (= res!562177 (and (= (size!22459 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22458 _keys!976) (size!22459 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!24001 () Bool)

(assert (=> mapIsEmpty!24001 mapRes!24001))

(declare-fun b!824417 () Bool)

(assert (=> b!824417 (= e!458730 (and e!458728 mapRes!24001))))

(declare-fun condMapEmpty!24001 () Bool)

(declare-fun mapDefault!24001 () ValueCell!7045)

