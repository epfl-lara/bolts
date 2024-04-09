; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95006 () Bool)

(assert start!95006)

(declare-fun b_free!22163 () Bool)

(declare-fun b_next!22163 () Bool)

(assert (=> start!95006 (= b_free!22163 (not b_next!22163))))

(declare-fun tp!77957 () Bool)

(declare-fun b_and!35043 () Bool)

(assert (=> start!95006 (= tp!77957 b_and!35043)))

(declare-fun mapNonEmpty!40675 () Bool)

(declare-fun mapRes!40675 () Bool)

(declare-fun tp!77958 () Bool)

(declare-fun e!613492 () Bool)

(assert (=> mapNonEmpty!40675 (= mapRes!40675 (and tp!77958 e!613492))))

(declare-datatypes ((V!39765 0))(
  ( (V!39766 (val!13037 Int)) )
))
(declare-datatypes ((ValueCell!12283 0))(
  ( (ValueCellFull!12283 (v!15656 V!39765)) (EmptyCell!12283) )
))
(declare-fun mapRest!40675 () (Array (_ BitVec 32) ValueCell!12283))

(declare-fun mapKey!40675 () (_ BitVec 32))

(declare-datatypes ((array!68870 0))(
  ( (array!68871 (arr!33124 (Array (_ BitVec 32) ValueCell!12283)) (size!33661 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68870)

(declare-fun mapValue!40675 () ValueCell!12283)

(assert (=> mapNonEmpty!40675 (= (arr!33124 _values!955) (store mapRest!40675 mapKey!40675 mapValue!40675))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39765)

(declare-fun e!613491 () Bool)

(declare-fun b!1073700 () Bool)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39765)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68872 0))(
  ( (array!68873 (arr!33125 (Array (_ BitVec 32) (_ BitVec 64))) (size!33662 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68872)

(declare-datatypes ((tuple2!16670 0))(
  ( (tuple2!16671 (_1!8345 (_ BitVec 64)) (_2!8345 V!39765)) )
))
(declare-datatypes ((List!23247 0))(
  ( (Nil!23244) (Cons!23243 (h!24452 tuple2!16670) (t!32593 List!23247)) )
))
(declare-datatypes ((ListLongMap!14651 0))(
  ( (ListLongMap!14652 (toList!7341 List!23247)) )
))
(declare-fun contains!6344 (ListLongMap!14651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4179 (array!68872 array!68870 (_ BitVec 32) (_ BitVec 32) V!39765 V!39765 (_ BitVec 32) Int) ListLongMap!14651)

(assert (=> b!1073700 (= e!613491 (not (contains!6344 (getCurrentListMap!4179 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1073701 () Bool)

(declare-fun e!613493 () Bool)

(declare-fun tp_is_empty!25973 () Bool)

(assert (=> b!1073701 (= e!613493 tp_is_empty!25973)))

(declare-fun b!1073702 () Bool)

(declare-fun e!613496 () Bool)

(assert (=> b!1073702 (= e!613496 (and e!613493 mapRes!40675))))

(declare-fun condMapEmpty!40675 () Bool)

(declare-fun mapDefault!40675 () ValueCell!12283)

