; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94960 () Bool)

(assert start!94960)

(declare-fun b_free!22129 () Bool)

(declare-fun b_next!22129 () Bool)

(assert (=> start!94960 (= b_free!22129 (not b_next!22129))))

(declare-fun tp!77852 () Bool)

(declare-fun b_and!35001 () Bool)

(assert (=> start!94960 (= tp!77852 b_and!35001)))

(declare-fun res!715920 () Bool)

(declare-fun e!613173 () Bool)

(assert (=> start!94960 (=> (not res!715920) (not e!613173))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94960 (= res!715920 (validMask!0 mask!1515))))

(assert (=> start!94960 e!613173))

(assert (=> start!94960 true))

(declare-fun tp_is_empty!25939 () Bool)

(assert (=> start!94960 tp_is_empty!25939))

(declare-datatypes ((V!39721 0))(
  ( (V!39722 (val!13020 Int)) )
))
(declare-datatypes ((ValueCell!12266 0))(
  ( (ValueCellFull!12266 (v!15639 V!39721)) (EmptyCell!12266) )
))
(declare-datatypes ((array!68804 0))(
  ( (array!68805 (arr!33092 (Array (_ BitVec 32) ValueCell!12266)) (size!33629 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68804)

(declare-fun e!613174 () Bool)

(declare-fun array_inv!25434 (array!68804) Bool)

(assert (=> start!94960 (and (array_inv!25434 _values!955) e!613174)))

(assert (=> start!94960 tp!77852))

(declare-datatypes ((array!68806 0))(
  ( (array!68807 (arr!33093 (Array (_ BitVec 32) (_ BitVec 64))) (size!33630 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68806)

(declare-fun array_inv!25435 (array!68806) Bool)

(assert (=> start!94960 (array_inv!25435 _keys!1163)))

(declare-fun b!1073250 () Bool)

(declare-fun res!715923 () Bool)

(assert (=> b!1073250 (=> (not res!715923) (not e!613173))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073250 (= res!715923 (and (= (size!33629 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33630 _keys!1163) (size!33629 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073251 () Bool)

(assert (=> b!1073251 (= e!613173 false)))

(declare-fun minValue!907 () V!39721)

(declare-datatypes ((tuple2!16648 0))(
  ( (tuple2!16649 (_1!8334 (_ BitVec 64)) (_2!8334 V!39721)) )
))
(declare-datatypes ((List!23226 0))(
  ( (Nil!23223) (Cons!23222 (h!24431 tuple2!16648) (t!32570 List!23226)) )
))
(declare-datatypes ((ListLongMap!14629 0))(
  ( (ListLongMap!14630 (toList!7330 List!23226)) )
))
(declare-fun lt!475985 () ListLongMap!14629)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39721)

(declare-fun getCurrentListMapNoExtraKeys!3860 (array!68806 array!68804 (_ BitVec 32) (_ BitVec 32) V!39721 V!39721 (_ BitVec 32) Int) ListLongMap!14629)

(assert (=> b!1073251 (= lt!475985 (getCurrentListMapNoExtraKeys!3860 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39721)

(declare-fun lt!475984 () ListLongMap!14629)

(assert (=> b!1073251 (= lt!475984 (getCurrentListMapNoExtraKeys!3860 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073252 () Bool)

(declare-fun res!715921 () Bool)

(assert (=> b!1073252 (=> (not res!715921) (not e!613173))))

(declare-datatypes ((List!23227 0))(
  ( (Nil!23224) (Cons!23223 (h!24432 (_ BitVec 64)) (t!32571 List!23227)) )
))
(declare-fun arrayNoDuplicates!0 (array!68806 (_ BitVec 32) List!23227) Bool)

(assert (=> b!1073252 (= res!715921 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23224))))

(declare-fun mapIsEmpty!40621 () Bool)

(declare-fun mapRes!40621 () Bool)

(assert (=> mapIsEmpty!40621 mapRes!40621))

(declare-fun b!1073253 () Bool)

(declare-fun e!613175 () Bool)

(assert (=> b!1073253 (= e!613174 (and e!613175 mapRes!40621))))

(declare-fun condMapEmpty!40621 () Bool)

(declare-fun mapDefault!40621 () ValueCell!12266)

