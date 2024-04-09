; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95054 () Bool)

(assert start!95054)

(declare-fun b_free!22171 () Bool)

(declare-fun b_next!22171 () Bool)

(assert (=> start!95054 (= b_free!22171 (not b_next!22171))))

(declare-fun tp!77988 () Bool)

(declare-fun b_and!35073 () Bool)

(assert (=> start!95054 (= tp!77988 b_and!35073)))

(declare-fun b!1074140 () Bool)

(declare-fun e!613789 () Bool)

(declare-fun e!613787 () Bool)

(assert (=> b!1074140 (= e!613789 (not e!613787))))

(declare-fun res!716364 () Bool)

(assert (=> b!1074140 (=> res!716364 e!613787)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074140 (= res!716364 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39777 0))(
  ( (V!39778 (val!13041 Int)) )
))
(declare-datatypes ((tuple2!16676 0))(
  ( (tuple2!16677 (_1!8348 (_ BitVec 64)) (_2!8348 V!39777)) )
))
(declare-datatypes ((List!23251 0))(
  ( (Nil!23248) (Cons!23247 (h!24456 tuple2!16676) (t!32601 List!23251)) )
))
(declare-datatypes ((ListLongMap!14657 0))(
  ( (ListLongMap!14658 (toList!7344 List!23251)) )
))
(declare-fun lt!476460 () ListLongMap!14657)

(declare-fun lt!476463 () ListLongMap!14657)

(assert (=> b!1074140 (= lt!476460 lt!476463)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12287 0))(
  ( (ValueCellFull!12287 (v!15662 V!39777)) (EmptyCell!12287) )
))
(declare-datatypes ((array!68890 0))(
  ( (array!68891 (arr!33132 (Array (_ BitVec 32) ValueCell!12287)) (size!33669 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68890)

(declare-fun minValue!907 () V!39777)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!35314 0))(
  ( (Unit!35315) )
))
(declare-fun lt!476462 () Unit!35314)

(declare-fun zeroValueBefore!47 () V!39777)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39777)

(declare-datatypes ((array!68892 0))(
  ( (array!68893 (arr!33133 (Array (_ BitVec 32) (_ BitVec 64))) (size!33670 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68892)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!891 (array!68892 array!68890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39777 V!39777 V!39777 V!39777 (_ BitVec 32) Int) Unit!35314)

(assert (=> b!1074140 (= lt!476462 (lemmaNoChangeToArrayThenSameMapNoExtras!891 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3872 (array!68892 array!68890 (_ BitVec 32) (_ BitVec 32) V!39777 V!39777 (_ BitVec 32) Int) ListLongMap!14657)

(assert (=> b!1074140 (= lt!476463 (getCurrentListMapNoExtraKeys!3872 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074140 (= lt!476460 (getCurrentListMapNoExtraKeys!3872 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40693 () Bool)

(declare-fun mapRes!40693 () Bool)

(declare-fun tp!77987 () Bool)

(declare-fun e!613786 () Bool)

(assert (=> mapNonEmpty!40693 (= mapRes!40693 (and tp!77987 e!613786))))

(declare-fun mapValue!40693 () ValueCell!12287)

(declare-fun mapRest!40693 () (Array (_ BitVec 32) ValueCell!12287))

(declare-fun mapKey!40693 () (_ BitVec 32))

(assert (=> mapNonEmpty!40693 (= (arr!33132 _values!955) (store mapRest!40693 mapKey!40693 mapValue!40693))))

(declare-fun b!1074141 () Bool)

(declare-fun tp_is_empty!25981 () Bool)

(assert (=> b!1074141 (= e!613786 tp_is_empty!25981)))

(declare-fun mapIsEmpty!40693 () Bool)

(assert (=> mapIsEmpty!40693 mapRes!40693))

(declare-fun b!1074142 () Bool)

(declare-fun e!613785 () Bool)

(assert (=> b!1074142 (= e!613785 tp_is_empty!25981)))

(declare-fun res!716365 () Bool)

(assert (=> start!95054 (=> (not res!716365) (not e!613789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95054 (= res!716365 (validMask!0 mask!1515))))

(assert (=> start!95054 e!613789))

(assert (=> start!95054 true))

(assert (=> start!95054 tp_is_empty!25981))

(declare-fun e!613788 () Bool)

(declare-fun array_inv!25460 (array!68890) Bool)

(assert (=> start!95054 (and (array_inv!25460 _values!955) e!613788)))

(assert (=> start!95054 tp!77988))

(declare-fun array_inv!25461 (array!68892) Bool)

(assert (=> start!95054 (array_inv!25461 _keys!1163)))

(declare-fun b!1074143 () Bool)

(declare-fun getCurrentListMap!4182 (array!68892 array!68890 (_ BitVec 32) (_ BitVec 32) V!39777 V!39777 (_ BitVec 32) Int) ListLongMap!14657)

(declare-fun +!3173 (ListLongMap!14657 tuple2!16676) ListLongMap!14657)

(assert (=> b!1074143 (= e!613787 (= (getCurrentListMap!4182 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3173 lt!476460 (tuple2!16677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476461 () ListLongMap!14657)

(assert (=> b!1074143 (= lt!476461 (getCurrentListMap!4182 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074144 () Bool)

(declare-fun res!716367 () Bool)

(assert (=> b!1074144 (=> (not res!716367) (not e!613789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68892 (_ BitVec 32)) Bool)

(assert (=> b!1074144 (= res!716367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074145 () Bool)

(declare-fun res!716363 () Bool)

(assert (=> b!1074145 (=> (not res!716363) (not e!613789))))

(declare-datatypes ((List!23252 0))(
  ( (Nil!23249) (Cons!23248 (h!24457 (_ BitVec 64)) (t!32602 List!23252)) )
))
(declare-fun arrayNoDuplicates!0 (array!68892 (_ BitVec 32) List!23252) Bool)

(assert (=> b!1074145 (= res!716363 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23249))))

(declare-fun b!1074146 () Bool)

(declare-fun res!716366 () Bool)

(assert (=> b!1074146 (=> (not res!716366) (not e!613789))))

(assert (=> b!1074146 (= res!716366 (and (= (size!33669 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33670 _keys!1163) (size!33669 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074147 () Bool)

(assert (=> b!1074147 (= e!613788 (and e!613785 mapRes!40693))))

(declare-fun condMapEmpty!40693 () Bool)

(declare-fun mapDefault!40693 () ValueCell!12287)

