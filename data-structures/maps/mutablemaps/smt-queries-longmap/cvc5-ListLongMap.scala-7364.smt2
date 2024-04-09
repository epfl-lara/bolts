; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93938 () Bool)

(assert start!93938)

(declare-fun b_free!21361 () Bool)

(declare-fun b_next!21361 () Bool)

(assert (=> start!93938 (= b_free!21361 (not b_next!21361))))

(declare-fun tp!75510 () Bool)

(declare-fun b_and!34101 () Bool)

(assert (=> start!93938 (= tp!75510 b_and!34101)))

(declare-fun b!1061900 () Bool)

(declare-fun e!604825 () Bool)

(declare-fun tp_is_empty!25171 () Bool)

(assert (=> b!1061900 (= e!604825 tp_is_empty!25171)))

(declare-fun mapIsEmpty!39430 () Bool)

(declare-fun mapRes!39430 () Bool)

(assert (=> mapIsEmpty!39430 mapRes!39430))

(declare-fun b!1061901 () Bool)

(declare-fun e!604822 () Bool)

(declare-fun e!604823 () Bool)

(assert (=> b!1061901 (= e!604822 e!604823)))

(declare-fun res!709162 () Bool)

(assert (=> b!1061901 (=> res!709162 e!604823)))

(declare-datatypes ((V!38697 0))(
  ( (V!38698 (val!12636 Int)) )
))
(declare-datatypes ((tuple2!16066 0))(
  ( (tuple2!16067 (_1!8043 (_ BitVec 64)) (_2!8043 V!38697)) )
))
(declare-datatypes ((List!22680 0))(
  ( (Nil!22677) (Cons!22676 (h!23885 tuple2!16066) (t!31998 List!22680)) )
))
(declare-datatypes ((ListLongMap!14047 0))(
  ( (ListLongMap!14048 (toList!7039 List!22680)) )
))
(declare-fun lt!467804 () ListLongMap!14047)

(declare-fun contains!6235 (ListLongMap!14047 (_ BitVec 64)) Bool)

(assert (=> b!1061901 (= res!709162 (contains!6235 lt!467804 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38697)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38697)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11882 0))(
  ( (ValueCellFull!11882 (v!15247 V!38697)) (EmptyCell!11882) )
))
(declare-datatypes ((array!67322 0))(
  ( (array!67323 (arr!32364 (Array (_ BitVec 32) ValueCell!11882)) (size!32901 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67322)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67324 0))(
  ( (array!67325 (arr!32365 (Array (_ BitVec 32) (_ BitVec 64))) (size!32902 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67324)

(declare-fun getCurrentListMap!3985 (array!67324 array!67322 (_ BitVec 32) (_ BitVec 32) V!38697 V!38697 (_ BitVec 32) Int) ListLongMap!14047)

(assert (=> b!1061901 (= lt!467804 (getCurrentListMap!3985 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061903 () Bool)

(declare-fun res!709165 () Bool)

(declare-fun e!604824 () Bool)

(assert (=> b!1061903 (=> (not res!709165) (not e!604824))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1061903 (= res!709165 (and (= (size!32901 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32902 _keys!1163) (size!32901 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061904 () Bool)

(declare-fun res!709161 () Bool)

(assert (=> b!1061904 (=> (not res!709161) (not e!604824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67324 (_ BitVec 32)) Bool)

(assert (=> b!1061904 (= res!709161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39430 () Bool)

(declare-fun tp!75509 () Bool)

(declare-fun e!604827 () Bool)

(assert (=> mapNonEmpty!39430 (= mapRes!39430 (and tp!75509 e!604827))))

(declare-fun mapRest!39430 () (Array (_ BitVec 32) ValueCell!11882))

(declare-fun mapValue!39430 () ValueCell!11882)

(declare-fun mapKey!39430 () (_ BitVec 32))

(assert (=> mapNonEmpty!39430 (= (arr!32364 _values!955) (store mapRest!39430 mapKey!39430 mapValue!39430))))

(declare-fun b!1061905 () Bool)

(assert (=> b!1061905 (= e!604827 tp_is_empty!25171)))

(declare-fun b!1061906 () Bool)

(declare-fun e!604826 () Bool)

(assert (=> b!1061906 (= e!604826 (and e!604825 mapRes!39430))))

(declare-fun condMapEmpty!39430 () Bool)

(declare-fun mapDefault!39430 () ValueCell!11882)

