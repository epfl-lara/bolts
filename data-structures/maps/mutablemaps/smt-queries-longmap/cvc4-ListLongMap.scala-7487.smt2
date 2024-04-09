; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94934 () Bool)

(assert start!94934)

(declare-fun b_free!22103 () Bool)

(declare-fun b_next!22103 () Bool)

(assert (=> start!94934 (= b_free!22103 (not b_next!22103))))

(declare-fun tp!77775 () Bool)

(declare-fun b_and!34975 () Bool)

(assert (=> start!94934 (= tp!77775 b_and!34975)))

(declare-fun mapNonEmpty!40582 () Bool)

(declare-fun mapRes!40582 () Bool)

(declare-fun tp!77774 () Bool)

(declare-fun e!612981 () Bool)

(assert (=> mapNonEmpty!40582 (= mapRes!40582 (and tp!77774 e!612981))))

(declare-datatypes ((V!39685 0))(
  ( (V!39686 (val!13007 Int)) )
))
(declare-datatypes ((ValueCell!12253 0))(
  ( (ValueCellFull!12253 (v!15626 V!39685)) (EmptyCell!12253) )
))
(declare-fun mapRest!40582 () (Array (_ BitVec 32) ValueCell!12253))

(declare-datatypes ((array!68754 0))(
  ( (array!68755 (arr!33067 (Array (_ BitVec 32) ValueCell!12253)) (size!33604 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68754)

(declare-fun mapValue!40582 () ValueCell!12253)

(declare-fun mapKey!40582 () (_ BitVec 32))

(assert (=> mapNonEmpty!40582 (= (arr!33067 _values!955) (store mapRest!40582 mapKey!40582 mapValue!40582))))

(declare-fun mapIsEmpty!40582 () Bool)

(assert (=> mapIsEmpty!40582 mapRes!40582))

(declare-fun b!1072977 () Bool)

(declare-fun res!715764 () Bool)

(declare-fun e!612982 () Bool)

(assert (=> b!1072977 (=> (not res!715764) (not e!612982))))

(declare-datatypes ((array!68756 0))(
  ( (array!68757 (arr!33068 (Array (_ BitVec 32) (_ BitVec 64))) (size!33605 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68756)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68756 (_ BitVec 32)) Bool)

(assert (=> b!1072977 (= res!715764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072978 () Bool)

(declare-fun res!715765 () Bool)

(assert (=> b!1072978 (=> (not res!715765) (not e!612982))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072978 (= res!715765 (and (= (size!33604 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33605 _keys!1163) (size!33604 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072979 () Bool)

(declare-fun e!612980 () Bool)

(declare-fun tp_is_empty!25913 () Bool)

(assert (=> b!1072979 (= e!612980 tp_is_empty!25913)))

(declare-fun b!1072980 () Bool)

(declare-fun e!612978 () Bool)

(assert (=> b!1072980 (= e!612978 (and e!612980 mapRes!40582))))

(declare-fun condMapEmpty!40582 () Bool)

(declare-fun mapDefault!40582 () ValueCell!12253)

