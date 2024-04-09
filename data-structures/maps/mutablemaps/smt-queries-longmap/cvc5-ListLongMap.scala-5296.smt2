; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70990 () Bool)

(assert start!70990)

(declare-fun b_free!13183 () Bool)

(declare-fun b_next!13183 () Bool)

(assert (=> start!70990 (= b_free!13183 (not b_next!13183))))

(declare-fun tp!46299 () Bool)

(declare-fun b_and!22097 () Bool)

(assert (=> start!70990 (= tp!46299 b_and!22097)))

(declare-fun res!561940 () Bool)

(declare-fun e!458426 () Bool)

(assert (=> start!70990 (=> (not res!561940) (not e!458426))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70990 (= res!561940 (validMask!0 mask!1312))))

(assert (=> start!70990 e!458426))

(declare-fun tp_is_empty!14893 () Bool)

(assert (=> start!70990 tp_is_empty!14893))

(declare-datatypes ((array!45932 0))(
  ( (array!45933 (arr!22010 (Array (_ BitVec 32) (_ BitVec 64))) (size!22431 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45932)

(declare-fun array_inv!17539 (array!45932) Bool)

(assert (=> start!70990 (array_inv!17539 _keys!976)))

(assert (=> start!70990 true))

(declare-datatypes ((V!24859 0))(
  ( (V!24860 (val!7494 Int)) )
))
(declare-datatypes ((ValueCell!7031 0))(
  ( (ValueCellFull!7031 (v!9923 V!24859)) (EmptyCell!7031) )
))
(declare-datatypes ((array!45934 0))(
  ( (array!45935 (arr!22011 (Array (_ BitVec 32) ValueCell!7031)) (size!22432 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45934)

(declare-fun e!458428 () Bool)

(declare-fun array_inv!17540 (array!45934) Bool)

(assert (=> start!70990 (and (array_inv!17540 _values!788) e!458428)))

(assert (=> start!70990 tp!46299))

(declare-fun mapNonEmpty!23956 () Bool)

(declare-fun mapRes!23956 () Bool)

(declare-fun tp!46300 () Bool)

(declare-fun e!458429 () Bool)

(assert (=> mapNonEmpty!23956 (= mapRes!23956 (and tp!46300 e!458429))))

(declare-fun mapValue!23956 () ValueCell!7031)

(declare-fun mapRest!23956 () (Array (_ BitVec 32) ValueCell!7031))

(declare-fun mapKey!23956 () (_ BitVec 32))

(assert (=> mapNonEmpty!23956 (= (arr!22011 _values!788) (store mapRest!23956 mapKey!23956 mapValue!23956))))

(declare-fun b!823999 () Bool)

(declare-fun res!561942 () Bool)

(assert (=> b!823999 (=> (not res!561942) (not e!458426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45932 (_ BitVec 32)) Bool)

(assert (=> b!823999 (= res!561942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23956 () Bool)

(assert (=> mapIsEmpty!23956 mapRes!23956))

(declare-fun b!824000 () Bool)

(declare-fun res!561941 () Bool)

(assert (=> b!824000 (=> (not res!561941) (not e!458426))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824000 (= res!561941 (and (= (size!22432 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22431 _keys!976) (size!22432 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824001 () Bool)

(declare-fun e!458430 () Bool)

(assert (=> b!824001 (= e!458428 (and e!458430 mapRes!23956))))

(declare-fun condMapEmpty!23956 () Bool)

(declare-fun mapDefault!23956 () ValueCell!7031)

