; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70972 () Bool)

(assert start!70972)

(declare-fun b_free!13165 () Bool)

(declare-fun b_next!13165 () Bool)

(assert (=> start!70972 (= b_free!13165 (not b_next!13165))))

(declare-fun tp!46246 () Bool)

(declare-fun b_and!22079 () Bool)

(assert (=> start!70972 (= tp!46246 b_and!22079)))

(declare-fun b!823810 () Bool)

(declare-fun e!458295 () Bool)

(declare-fun tp_is_empty!14875 () Bool)

(assert (=> b!823810 (= e!458295 tp_is_empty!14875)))

(declare-fun b!823811 () Bool)

(declare-fun res!561834 () Bool)

(declare-fun e!458293 () Bool)

(assert (=> b!823811 (=> (not res!561834) (not e!458293))))

(declare-datatypes ((array!45898 0))(
  ( (array!45899 (arr!21993 (Array (_ BitVec 32) (_ BitVec 64))) (size!22414 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45898)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45898 (_ BitVec 32)) Bool)

(assert (=> b!823811 (= res!561834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23929 () Bool)

(declare-fun mapRes!23929 () Bool)

(declare-fun tp!46245 () Bool)

(assert (=> mapNonEmpty!23929 (= mapRes!23929 (and tp!46245 e!458295))))

(declare-datatypes ((V!24835 0))(
  ( (V!24836 (val!7485 Int)) )
))
(declare-datatypes ((ValueCell!7022 0))(
  ( (ValueCellFull!7022 (v!9914 V!24835)) (EmptyCell!7022) )
))
(declare-datatypes ((array!45900 0))(
  ( (array!45901 (arr!21994 (Array (_ BitVec 32) ValueCell!7022)) (size!22415 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45900)

(declare-fun mapRest!23929 () (Array (_ BitVec 32) ValueCell!7022))

(declare-fun mapValue!23929 () ValueCell!7022)

(declare-fun mapKey!23929 () (_ BitVec 32))

(assert (=> mapNonEmpty!23929 (= (arr!21994 _values!788) (store mapRest!23929 mapKey!23929 mapValue!23929))))

(declare-fun b!823812 () Bool)

(declare-fun res!561835 () Bool)

(assert (=> b!823812 (=> (not res!561835) (not e!458293))))

(declare-datatypes ((List!15750 0))(
  ( (Nil!15747) (Cons!15746 (h!16875 (_ BitVec 64)) (t!22099 List!15750)) )
))
(declare-fun arrayNoDuplicates!0 (array!45898 (_ BitVec 32) List!15750) Bool)

(assert (=> b!823812 (= res!561835 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15747))))

(declare-fun b!823813 () Bool)

(declare-fun res!561832 () Bool)

(assert (=> b!823813 (=> (not res!561832) (not e!458293))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823813 (= res!561832 (and (= (size!22415 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22414 _keys!976) (size!22415 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23929 () Bool)

(assert (=> mapIsEmpty!23929 mapRes!23929))

(declare-fun res!561833 () Bool)

(assert (=> start!70972 (=> (not res!561833) (not e!458293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70972 (= res!561833 (validMask!0 mask!1312))))

(assert (=> start!70972 e!458293))

(assert (=> start!70972 tp_is_empty!14875))

(declare-fun array_inv!17527 (array!45898) Bool)

(assert (=> start!70972 (array_inv!17527 _keys!976)))

(assert (=> start!70972 true))

(declare-fun e!458292 () Bool)

(declare-fun array_inv!17528 (array!45900) Bool)

(assert (=> start!70972 (and (array_inv!17528 _values!788) e!458292)))

(assert (=> start!70972 tp!46246))

(declare-fun b!823814 () Bool)

(declare-fun e!458291 () Bool)

(assert (=> b!823814 (= e!458292 (and e!458291 mapRes!23929))))

(declare-fun condMapEmpty!23929 () Bool)

(declare-fun mapDefault!23929 () ValueCell!7022)

