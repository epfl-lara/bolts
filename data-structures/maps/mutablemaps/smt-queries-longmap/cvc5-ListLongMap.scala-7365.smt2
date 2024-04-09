; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93944 () Bool)

(assert start!93944)

(declare-fun b_free!21367 () Bool)

(declare-fun b_next!21367 () Bool)

(assert (=> start!93944 (= b_free!21367 (not b_next!21367))))

(declare-fun tp!75528 () Bool)

(declare-fun b_and!34107 () Bool)

(assert (=> start!93944 (= tp!75528 b_and!34107)))

(declare-fun mapIsEmpty!39439 () Bool)

(declare-fun mapRes!39439 () Bool)

(assert (=> mapIsEmpty!39439 mapRes!39439))

(declare-fun b!1061981 () Bool)

(declare-fun e!604888 () Bool)

(declare-fun e!604884 () Bool)

(assert (=> b!1061981 (= e!604888 e!604884)))

(declare-fun res!709217 () Bool)

(assert (=> b!1061981 (=> res!709217 e!604884)))

(declare-datatypes ((V!38705 0))(
  ( (V!38706 (val!12639 Int)) )
))
(declare-datatypes ((tuple2!16072 0))(
  ( (tuple2!16073 (_1!8046 (_ BitVec 64)) (_2!8046 V!38705)) )
))
(declare-datatypes ((List!22685 0))(
  ( (Nil!22682) (Cons!22681 (h!23890 tuple2!16072) (t!32003 List!22685)) )
))
(declare-datatypes ((ListLongMap!14053 0))(
  ( (ListLongMap!14054 (toList!7042 List!22685)) )
))
(declare-fun lt!467849 () ListLongMap!14053)

(declare-fun contains!6238 (ListLongMap!14053 (_ BitVec 64)) Bool)

(assert (=> b!1061981 (= res!709217 (contains!6238 lt!467849 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38705)

(declare-datatypes ((ValueCell!11885 0))(
  ( (ValueCellFull!11885 (v!15250 V!38705)) (EmptyCell!11885) )
))
(declare-datatypes ((array!67334 0))(
  ( (array!67335 (arr!32370 (Array (_ BitVec 32) ValueCell!11885)) (size!32907 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67334)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38705)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67336 0))(
  ( (array!67337 (arr!32371 (Array (_ BitVec 32) (_ BitVec 64))) (size!32908 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67336)

(declare-fun getCurrentListMap!3988 (array!67336 array!67334 (_ BitVec 32) (_ BitVec 32) V!38705 V!38705 (_ BitVec 32) Int) ListLongMap!14053)

(assert (=> b!1061981 (= lt!467849 (getCurrentListMap!3988 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!709216 () Bool)

(declare-fun e!604889 () Bool)

(assert (=> start!93944 (=> (not res!709216) (not e!604889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93944 (= res!709216 (validMask!0 mask!1515))))

(assert (=> start!93944 e!604889))

(assert (=> start!93944 true))

(declare-fun tp_is_empty!25177 () Bool)

(assert (=> start!93944 tp_is_empty!25177))

(declare-fun e!604886 () Bool)

(declare-fun array_inv!24914 (array!67334) Bool)

(assert (=> start!93944 (and (array_inv!24914 _values!955) e!604886)))

(assert (=> start!93944 tp!75528))

(declare-fun array_inv!24915 (array!67336) Bool)

(assert (=> start!93944 (array_inv!24915 _keys!1163)))

(declare-fun b!1061982 () Bool)

(declare-fun res!709215 () Bool)

(assert (=> b!1061982 (=> (not res!709215) (not e!604889))))

(declare-datatypes ((List!22686 0))(
  ( (Nil!22683) (Cons!22682 (h!23891 (_ BitVec 64)) (t!32004 List!22686)) )
))
(declare-fun arrayNoDuplicates!0 (array!67336 (_ BitVec 32) List!22686) Bool)

(assert (=> b!1061982 (= res!709215 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22683))))

(declare-fun b!1061983 () Bool)

(declare-fun e!604887 () Bool)

(assert (=> b!1061983 (= e!604887 tp_is_empty!25177)))

(declare-fun b!1061984 () Bool)

(assert (=> b!1061984 (= e!604884 true)))

(declare-fun -!557 (ListLongMap!14053 (_ BitVec 64)) ListLongMap!14053)

(assert (=> b!1061984 (= (-!557 lt!467849 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467849)))

(declare-datatypes ((Unit!34757 0))(
  ( (Unit!34758) )
))
(declare-fun lt!467850 () Unit!34757)

(declare-fun removeNotPresentStillSame!3 (ListLongMap!14053 (_ BitVec 64)) Unit!34757)

(assert (=> b!1061984 (= lt!467850 (removeNotPresentStillSame!3 lt!467849 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1061985 () Bool)

(assert (=> b!1061985 (= e!604889 (not e!604888))))

(declare-fun res!709218 () Bool)

(assert (=> b!1061985 (=> res!709218 e!604888)))

(assert (=> b!1061985 (= res!709218 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467851 () ListLongMap!14053)

(declare-fun lt!467852 () ListLongMap!14053)

(assert (=> b!1061985 (= lt!467851 lt!467852)))

(declare-fun lt!467853 () Unit!34757)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38705)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!644 (array!67336 array!67334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38705 V!38705 V!38705 V!38705 (_ BitVec 32) Int) Unit!34757)

(assert (=> b!1061985 (= lt!467853 (lemmaNoChangeToArrayThenSameMapNoExtras!644 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3605 (array!67336 array!67334 (_ BitVec 32) (_ BitVec 32) V!38705 V!38705 (_ BitVec 32) Int) ListLongMap!14053)

(assert (=> b!1061985 (= lt!467852 (getCurrentListMapNoExtraKeys!3605 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061985 (= lt!467851 (getCurrentListMapNoExtraKeys!3605 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061986 () Bool)

(declare-fun res!709219 () Bool)

(assert (=> b!1061986 (=> (not res!709219) (not e!604889))))

(assert (=> b!1061986 (= res!709219 (and (= (size!32907 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32908 _keys!1163) (size!32907 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061987 () Bool)

(declare-fun e!604890 () Bool)

(assert (=> b!1061987 (= e!604886 (and e!604890 mapRes!39439))))

(declare-fun condMapEmpty!39439 () Bool)

(declare-fun mapDefault!39439 () ValueCell!11885)

