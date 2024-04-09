; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94434 () Bool)

(assert start!94434)

(declare-fun b_free!21739 () Bool)

(declare-fun b_next!21739 () Bool)

(assert (=> start!94434 (= b_free!21739 (not b_next!21739))))

(declare-fun tp!76662 () Bool)

(declare-fun b_and!34541 () Bool)

(assert (=> start!94434 (= tp!76662 b_and!34541)))

(declare-fun mapIsEmpty!40015 () Bool)

(declare-fun mapRes!40015 () Bool)

(assert (=> mapIsEmpty!40015 mapRes!40015))

(declare-fun b!1067365 () Bool)

(declare-fun e!608825 () Bool)

(declare-fun tp_is_empty!25549 () Bool)

(assert (=> b!1067365 (= e!608825 tp_is_empty!25549)))

(declare-fun b!1067366 () Bool)

(declare-fun res!712385 () Bool)

(declare-fun e!608827 () Bool)

(assert (=> b!1067366 (=> (not res!712385) (not e!608827))))

(declare-datatypes ((array!68052 0))(
  ( (array!68053 (arr!32723 (Array (_ BitVec 32) (_ BitVec 64))) (size!33260 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68052)

(declare-datatypes ((List!22948 0))(
  ( (Nil!22945) (Cons!22944 (h!24153 (_ BitVec 64)) (t!32278 List!22948)) )
))
(declare-fun arrayNoDuplicates!0 (array!68052 (_ BitVec 32) List!22948) Bool)

(assert (=> b!1067366 (= res!712385 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22945))))

(declare-fun b!1067367 () Bool)

(declare-fun res!712384 () Bool)

(assert (=> b!1067367 (=> (not res!712384) (not e!608827))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39201 0))(
  ( (V!39202 (val!12825 Int)) )
))
(declare-datatypes ((ValueCell!12071 0))(
  ( (ValueCellFull!12071 (v!15440 V!39201)) (EmptyCell!12071) )
))
(declare-datatypes ((array!68054 0))(
  ( (array!68055 (arr!32724 (Array (_ BitVec 32) ValueCell!12071)) (size!33261 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68054)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067367 (= res!712384 (and (= (size!33261 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33260 _keys!1163) (size!33261 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067368 () Bool)

(declare-fun res!712387 () Bool)

(assert (=> b!1067368 (=> (not res!712387) (not e!608827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68052 (_ BitVec 32)) Bool)

(assert (=> b!1067368 (= res!712387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067369 () Bool)

(declare-fun e!608824 () Bool)

(assert (=> b!1067369 (= e!608824 (and e!608825 mapRes!40015))))

(declare-fun condMapEmpty!40015 () Bool)

(declare-fun mapDefault!40015 () ValueCell!12071)

