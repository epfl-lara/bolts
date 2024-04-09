; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94476 () Bool)

(assert start!94476)

(declare-fun b_free!21767 () Bool)

(declare-fun b_next!21767 () Bool)

(assert (=> start!94476 (= b_free!21767 (not b_next!21767))))

(declare-fun tp!76749 () Bool)

(declare-fun b_and!34577 () Bool)

(assert (=> start!94476 (= tp!76749 b_and!34577)))

(declare-fun b!1067805 () Bool)

(declare-fun e!609150 () Bool)

(declare-fun tp_is_empty!25577 () Bool)

(assert (=> b!1067805 (= e!609150 tp_is_empty!25577)))

(declare-fun b!1067806 () Bool)

(declare-fun res!712646 () Bool)

(declare-fun e!609156 () Bool)

(assert (=> b!1067806 (=> (not res!712646) (not e!609156))))

(declare-datatypes ((array!68108 0))(
  ( (array!68109 (arr!32750 (Array (_ BitVec 32) (_ BitVec 64))) (size!33287 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68108)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68108 (_ BitVec 32)) Bool)

(assert (=> b!1067806 (= res!712646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!712649 () Bool)

(assert (=> start!94476 (=> (not res!712649) (not e!609156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94476 (= res!712649 (validMask!0 mask!1515))))

(assert (=> start!94476 e!609156))

(assert (=> start!94476 true))

(assert (=> start!94476 tp_is_empty!25577))

(declare-datatypes ((V!39237 0))(
  ( (V!39238 (val!12839 Int)) )
))
(declare-datatypes ((ValueCell!12085 0))(
  ( (ValueCellFull!12085 (v!15454 V!39237)) (EmptyCell!12085) )
))
(declare-datatypes ((array!68110 0))(
  ( (array!68111 (arr!32751 (Array (_ BitVec 32) ValueCell!12085)) (size!33288 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68110)

(declare-fun e!609154 () Bool)

(declare-fun array_inv!25188 (array!68110) Bool)

(assert (=> start!94476 (and (array_inv!25188 _values!955) e!609154)))

(assert (=> start!94476 tp!76749))

(declare-fun array_inv!25189 (array!68108) Bool)

(assert (=> start!94476 (array_inv!25189 _keys!1163)))

(declare-fun b!1067807 () Bool)

(declare-fun res!712647 () Bool)

(assert (=> b!1067807 (=> (not res!712647) (not e!609156))))

(declare-datatypes ((List!22968 0))(
  ( (Nil!22965) (Cons!22964 (h!24173 (_ BitVec 64)) (t!32300 List!22968)) )
))
(declare-fun arrayNoDuplicates!0 (array!68108 (_ BitVec 32) List!22968) Bool)

(assert (=> b!1067807 (= res!712647 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22965))))

(declare-fun mapNonEmpty!40060 () Bool)

(declare-fun mapRes!40060 () Bool)

(declare-fun tp!76748 () Bool)

(assert (=> mapNonEmpty!40060 (= mapRes!40060 (and tp!76748 e!609150))))

(declare-fun mapKey!40060 () (_ BitVec 32))

(declare-fun mapValue!40060 () ValueCell!12085)

(declare-fun mapRest!40060 () (Array (_ BitVec 32) ValueCell!12085))

(assert (=> mapNonEmpty!40060 (= (arr!32751 _values!955) (store mapRest!40060 mapKey!40060 mapValue!40060))))

(declare-fun b!1067808 () Bool)

(declare-fun res!712644 () Bool)

(assert (=> b!1067808 (=> (not res!712644) (not e!609156))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067808 (= res!712644 (and (= (size!33288 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33287 _keys!1163) (size!33288 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067809 () Bool)

(declare-fun e!609152 () Bool)

(assert (=> b!1067809 (= e!609154 (and e!609152 mapRes!40060))))

(declare-fun condMapEmpty!40060 () Bool)

(declare-fun mapDefault!40060 () ValueCell!12085)

