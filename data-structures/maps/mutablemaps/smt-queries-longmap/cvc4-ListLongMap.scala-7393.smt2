; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94174 () Bool)

(assert start!94174)

(declare-fun b_free!21539 () Bool)

(declare-fun b_next!21539 () Bool)

(assert (=> start!94174 (= b_free!21539 (not b_next!21539))))

(declare-fun tp!76053 () Bool)

(declare-fun b_and!34307 () Bool)

(assert (=> start!94174 (= tp!76053 b_and!34307)))

(declare-fun mapIsEmpty!39706 () Bool)

(declare-fun mapRes!39706 () Bool)

(assert (=> mapIsEmpty!39706 mapRes!39706))

(declare-fun b!1064514 () Bool)

(declare-fun e!606758 () Bool)

(assert (=> b!1064514 (= e!606758 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38933 0))(
  ( (V!38934 (val!12725 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38933)

(declare-datatypes ((tuple2!16202 0))(
  ( (tuple2!16203 (_1!8111 (_ BitVec 64)) (_2!8111 V!38933)) )
))
(declare-datatypes ((List!22803 0))(
  ( (Nil!22800) (Cons!22799 (h!24008 tuple2!16202) (t!32127 List!22803)) )
))
(declare-datatypes ((ListLongMap!14183 0))(
  ( (ListLongMap!14184 (toList!7107 List!22803)) )
))
(declare-fun lt!469242 () ListLongMap!14183)

(declare-datatypes ((ValueCell!11971 0))(
  ( (ValueCellFull!11971 (v!15338 V!38933)) (EmptyCell!11971) )
))
(declare-datatypes ((array!67662 0))(
  ( (array!67663 (arr!32531 (Array (_ BitVec 32) ValueCell!11971)) (size!33068 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67662)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38933)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67664 0))(
  ( (array!67665 (arr!32532 (Array (_ BitVec 32) (_ BitVec 64))) (size!33069 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67664)

(declare-fun getCurrentListMap!4031 (array!67664 array!67662 (_ BitVec 32) (_ BitVec 32) V!38933 V!38933 (_ BitVec 32) Int) ListLongMap!14183)

(assert (=> b!1064514 (= lt!469242 (getCurrentListMap!4031 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064515 () Bool)

(declare-fun e!606759 () Bool)

(declare-fun tp_is_empty!25349 () Bool)

(assert (=> b!1064515 (= e!606759 tp_is_empty!25349)))

(declare-fun b!1064516 () Bool)

(declare-fun e!606761 () Bool)

(assert (=> b!1064516 (= e!606761 (and e!606759 mapRes!39706))))

(declare-fun condMapEmpty!39706 () Bool)

(declare-fun mapDefault!39706 () ValueCell!11971)

