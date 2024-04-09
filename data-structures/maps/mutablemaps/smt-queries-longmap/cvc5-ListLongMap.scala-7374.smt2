; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94020 () Bool)

(assert start!94020)

(declare-fun b_free!21421 () Bool)

(declare-fun b_next!21421 () Bool)

(assert (=> start!94020 (= b_free!21421 (not b_next!21421))))

(declare-fun tp!75692 () Bool)

(declare-fun b_and!34171 () Bool)

(assert (=> start!94020 (= tp!75692 b_and!34171)))

(declare-fun b!1062867 () Bool)

(declare-fun e!605554 () Bool)

(declare-fun tp_is_empty!25231 () Bool)

(assert (=> b!1062867 (= e!605554 tp_is_empty!25231)))

(declare-fun b!1062868 () Bool)

(declare-fun e!605553 () Bool)

(declare-fun e!605551 () Bool)

(assert (=> b!1062868 (= e!605553 e!605551)))

(declare-fun res!709766 () Bool)

(assert (=> b!1062868 (=> res!709766 e!605551)))

(declare-datatypes ((V!38777 0))(
  ( (V!38778 (val!12666 Int)) )
))
(declare-datatypes ((tuple2!16118 0))(
  ( (tuple2!16119 (_1!8069 (_ BitVec 64)) (_2!8069 V!38777)) )
))
(declare-datatypes ((List!22728 0))(
  ( (Nil!22725) (Cons!22724 (h!23933 tuple2!16118) (t!32048 List!22728)) )
))
(declare-datatypes ((ListLongMap!14099 0))(
  ( (ListLongMap!14100 (toList!7065 List!22728)) )
))
(declare-fun lt!468379 () ListLongMap!14099)

(declare-fun contains!6261 (ListLongMap!14099 (_ BitVec 64)) Bool)

(assert (=> b!1062868 (= res!709766 (contains!6261 lt!468379 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38777)

(declare-datatypes ((ValueCell!11912 0))(
  ( (ValueCellFull!11912 (v!15278 V!38777)) (EmptyCell!11912) )
))
(declare-datatypes ((array!67438 0))(
  ( (array!67439 (arr!32421 (Array (_ BitVec 32) ValueCell!11912)) (size!32958 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67438)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38777)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67440 0))(
  ( (array!67441 (arr!32422 (Array (_ BitVec 32) (_ BitVec 64))) (size!32959 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67440)

(declare-fun getCurrentListMap!4010 (array!67440 array!67438 (_ BitVec 32) (_ BitVec 32) V!38777 V!38777 (_ BitVec 32) Int) ListLongMap!14099)

(assert (=> b!1062868 (= lt!468379 (getCurrentListMap!4010 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39523 () Bool)

(declare-fun mapRes!39523 () Bool)

(assert (=> mapIsEmpty!39523 mapRes!39523))

(declare-fun b!1062869 () Bool)

(declare-fun e!605557 () Bool)

(assert (=> b!1062869 (= e!605557 tp_is_empty!25231)))

(declare-fun mapNonEmpty!39523 () Bool)

(declare-fun tp!75693 () Bool)

(assert (=> mapNonEmpty!39523 (= mapRes!39523 (and tp!75693 e!605554))))

(declare-fun mapValue!39523 () ValueCell!11912)

(declare-fun mapRest!39523 () (Array (_ BitVec 32) ValueCell!11912))

(declare-fun mapKey!39523 () (_ BitVec 32))

(assert (=> mapNonEmpty!39523 (= (arr!32421 _values!955) (store mapRest!39523 mapKey!39523 mapValue!39523))))

(declare-fun b!1062870 () Bool)

(declare-fun e!605552 () Bool)

(assert (=> b!1062870 (= e!605552 (and e!605557 mapRes!39523))))

(declare-fun condMapEmpty!39523 () Bool)

(declare-fun mapDefault!39523 () ValueCell!11912)

