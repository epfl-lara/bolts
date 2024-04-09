; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94032 () Bool)

(assert start!94032)

(declare-fun b_free!21433 () Bool)

(declare-fun b_next!21433 () Bool)

(assert (=> start!94032 (= b_free!21433 (not b_next!21433))))

(declare-fun tp!75728 () Bool)

(declare-fun b_and!34183 () Bool)

(assert (=> start!94032 (= tp!75728 b_and!34183)))

(declare-fun b!1063029 () Bool)

(declare-fun e!605680 () Bool)

(declare-fun e!605679 () Bool)

(assert (=> b!1063029 (= e!605680 e!605679)))

(declare-fun res!709873 () Bool)

(assert (=> b!1063029 (=> res!709873 e!605679)))

(declare-datatypes ((V!38793 0))(
  ( (V!38794 (val!12672 Int)) )
))
(declare-datatypes ((tuple2!16128 0))(
  ( (tuple2!16129 (_1!8074 (_ BitVec 64)) (_2!8074 V!38793)) )
))
(declare-datatypes ((List!22736 0))(
  ( (Nil!22733) (Cons!22732 (h!23941 tuple2!16128) (t!32056 List!22736)) )
))
(declare-datatypes ((ListLongMap!14109 0))(
  ( (ListLongMap!14110 (toList!7070 List!22736)) )
))
(declare-fun lt!468471 () ListLongMap!14109)

(declare-fun contains!6266 (ListLongMap!14109 (_ BitVec 64)) Bool)

(assert (=> b!1063029 (= res!709873 (contains!6266 lt!468471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38793)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38793)

(declare-datatypes ((ValueCell!11918 0))(
  ( (ValueCellFull!11918 (v!15284 V!38793)) (EmptyCell!11918) )
))
(declare-datatypes ((array!67462 0))(
  ( (array!67463 (arr!32433 (Array (_ BitVec 32) ValueCell!11918)) (size!32970 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67462)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67464 0))(
  ( (array!67465 (arr!32434 (Array (_ BitVec 32) (_ BitVec 64))) (size!32971 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67464)

(declare-fun getCurrentListMap!4015 (array!67464 array!67462 (_ BitVec 32) (_ BitVec 32) V!38793 V!38793 (_ BitVec 32) Int) ListLongMap!14109)

(assert (=> b!1063029 (= lt!468471 (getCurrentListMap!4015 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063030 () Bool)

(declare-fun res!709874 () Bool)

(declare-fun e!605683 () Bool)

(assert (=> b!1063030 (=> (not res!709874) (not e!605683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67464 (_ BitVec 32)) Bool)

(assert (=> b!1063030 (= res!709874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39541 () Bool)

(declare-fun mapRes!39541 () Bool)

(declare-fun tp!75729 () Bool)

(declare-fun e!605677 () Bool)

(assert (=> mapNonEmpty!39541 (= mapRes!39541 (and tp!75729 e!605677))))

(declare-fun mapRest!39541 () (Array (_ BitVec 32) ValueCell!11918))

(declare-fun mapKey!39541 () (_ BitVec 32))

(declare-fun mapValue!39541 () ValueCell!11918)

(assert (=> mapNonEmpty!39541 (= (arr!32433 _values!955) (store mapRest!39541 mapKey!39541 mapValue!39541))))

(declare-fun b!1063031 () Bool)

(declare-fun e!605681 () Bool)

(declare-fun e!605682 () Bool)

(assert (=> b!1063031 (= e!605681 (and e!605682 mapRes!39541))))

(declare-fun condMapEmpty!39541 () Bool)

(declare-fun mapDefault!39541 () ValueCell!11918)

