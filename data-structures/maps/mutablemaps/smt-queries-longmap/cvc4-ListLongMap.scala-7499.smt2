; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95058 () Bool)

(assert start!95058)

(declare-fun b_free!22175 () Bool)

(declare-fun b_next!22175 () Bool)

(assert (=> start!95058 (= b_free!22175 (not b_next!22175))))

(declare-fun tp!77999 () Bool)

(declare-fun b_and!35077 () Bool)

(assert (=> start!95058 (= tp!77999 b_and!35077)))

(declare-fun b!1074188 () Bool)

(declare-fun res!716393 () Bool)

(declare-fun e!613822 () Bool)

(assert (=> b!1074188 (=> (not res!716393) (not e!613822))))

(declare-datatypes ((array!68898 0))(
  ( (array!68899 (arr!33136 (Array (_ BitVec 32) (_ BitVec 64))) (size!33673 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68898)

(declare-datatypes ((List!23255 0))(
  ( (Nil!23252) (Cons!23251 (h!24460 (_ BitVec 64)) (t!32605 List!23255)) )
))
(declare-fun arrayNoDuplicates!0 (array!68898 (_ BitVec 32) List!23255) Bool)

(assert (=> b!1074188 (= res!716393 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23252))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39781 0))(
  ( (V!39782 (val!13043 Int)) )
))
(declare-fun zeroValueBefore!47 () V!39781)

(declare-datatypes ((tuple2!16680 0))(
  ( (tuple2!16681 (_1!8350 (_ BitVec 64)) (_2!8350 V!39781)) )
))
(declare-datatypes ((List!23256 0))(
  ( (Nil!23253) (Cons!23252 (h!24461 tuple2!16680) (t!32606 List!23256)) )
))
(declare-datatypes ((ListLongMap!14661 0))(
  ( (ListLongMap!14662 (toList!7346 List!23256)) )
))
(declare-fun lt!476484 () ListLongMap!14661)

(declare-fun b!1074189 () Bool)

(declare-datatypes ((ValueCell!12289 0))(
  ( (ValueCellFull!12289 (v!15664 V!39781)) (EmptyCell!12289) )
))
(declare-datatypes ((array!68900 0))(
  ( (array!68901 (arr!33137 (Array (_ BitVec 32) ValueCell!12289)) (size!33674 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68900)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39781)

(declare-fun e!613826 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4184 (array!68898 array!68900 (_ BitVec 32) (_ BitVec 32) V!39781 V!39781 (_ BitVec 32) Int) ListLongMap!14661)

(declare-fun +!3175 (ListLongMap!14661 tuple2!16680) ListLongMap!14661)

(assert (=> b!1074189 (= e!613826 (= (getCurrentListMap!4184 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3175 lt!476484 (tuple2!16681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lt!476485 () ListLongMap!14661)

(declare-fun zeroValueAfter!47 () V!39781)

(assert (=> b!1074189 (= lt!476485 (getCurrentListMap!4184 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40699 () Bool)

(declare-fun mapRes!40699 () Bool)

(declare-fun tp!78000 () Bool)

(declare-fun e!613824 () Bool)

(assert (=> mapNonEmpty!40699 (= mapRes!40699 (and tp!78000 e!613824))))

(declare-fun mapRest!40699 () (Array (_ BitVec 32) ValueCell!12289))

(declare-fun mapKey!40699 () (_ BitVec 32))

(declare-fun mapValue!40699 () ValueCell!12289)

(assert (=> mapNonEmpty!40699 (= (arr!33137 _values!955) (store mapRest!40699 mapKey!40699 mapValue!40699))))

(declare-fun b!1074190 () Bool)

(declare-fun res!716395 () Bool)

(assert (=> b!1074190 (=> (not res!716395) (not e!613822))))

(assert (=> b!1074190 (= res!716395 (and (= (size!33674 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33673 _keys!1163) (size!33674 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40699 () Bool)

(assert (=> mapIsEmpty!40699 mapRes!40699))

(declare-fun b!1074192 () Bool)

(declare-fun e!613825 () Bool)

(declare-fun e!613821 () Bool)

(assert (=> b!1074192 (= e!613825 (and e!613821 mapRes!40699))))

(declare-fun condMapEmpty!40699 () Bool)

(declare-fun mapDefault!40699 () ValueCell!12289)

