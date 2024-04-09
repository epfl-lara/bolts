; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106126 () Bool)

(assert start!106126)

(declare-fun b_free!27505 () Bool)

(declare-fun b_next!27505 () Bool)

(assert (=> start!106126 (= b_free!27505 (not b_next!27505))))

(declare-fun tp!96068 () Bool)

(declare-fun b_and!45499 () Bool)

(assert (=> start!106126 (= tp!96068 b_and!45499)))

(declare-fun b!1263175 () Bool)

(declare-fun e!719177 () Bool)

(declare-fun e!719178 () Bool)

(assert (=> b!1263175 (= e!719177 (not e!719178))))

(declare-fun res!841500 () Bool)

(assert (=> b!1263175 (=> res!841500 e!719178)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1263175 (= res!841500 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48575 0))(
  ( (V!48576 (val!16266 Int)) )
))
(declare-datatypes ((tuple2!21202 0))(
  ( (tuple2!21203 (_1!10611 (_ BitVec 64)) (_2!10611 V!48575)) )
))
(declare-datatypes ((List!28422 0))(
  ( (Nil!28419) (Cons!28418 (h!29627 tuple2!21202) (t!41942 List!28422)) )
))
(declare-datatypes ((ListLongMap!19087 0))(
  ( (ListLongMap!19088 (toList!9559 List!28422)) )
))
(declare-fun lt!572808 () ListLongMap!19087)

(declare-fun lt!572805 () ListLongMap!19087)

(assert (=> b!1263175 (= lt!572808 lt!572805)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48575)

(declare-datatypes ((array!82421 0))(
  ( (array!82422 (arr!39752 (Array (_ BitVec 32) (_ BitVec 64))) (size!40289 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82421)

(declare-datatypes ((ValueCell!15440 0))(
  ( (ValueCellFull!15440 (v!18976 V!48575)) (EmptyCell!15440) )
))
(declare-datatypes ((array!82423 0))(
  ( (array!82424 (arr!39753 (Array (_ BitVec 32) ValueCell!15440)) (size!40290 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82423)

(declare-fun minValueBefore!43 () V!48575)

(declare-datatypes ((Unit!42057 0))(
  ( (Unit!42058) )
))
(declare-fun lt!572809 () Unit!42057)

(declare-fun minValueAfter!43 () V!48575)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1195 (array!82421 array!82423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48575 V!48575 V!48575 V!48575 (_ BitVec 32) Int) Unit!42057)

(assert (=> b!1263175 (= lt!572809 (lemmaNoChangeToArrayThenSameMapNoExtras!1195 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5899 (array!82421 array!82423 (_ BitVec 32) (_ BitVec 32) V!48575 V!48575 (_ BitVec 32) Int) ListLongMap!19087)

(assert (=> b!1263175 (= lt!572805 (getCurrentListMapNoExtraKeys!5899 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263175 (= lt!572808 (getCurrentListMapNoExtraKeys!5899 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun e!719174 () Bool)

(declare-fun b!1263176 () Bool)

(declare-fun lt!572804 () ListLongMap!19087)

(declare-fun getCurrentListMap!4662 (array!82421 array!82423 (_ BitVec 32) (_ BitVec 32) V!48575 V!48575 (_ BitVec 32) Int) ListLongMap!19087)

(assert (=> b!1263176 (= e!719174 (= lt!572804 (getCurrentListMap!4662 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922)))))

(declare-fun lt!572806 () ListLongMap!19087)

(assert (=> b!1263176 (= lt!572804 lt!572806)))

(declare-fun -!2148 (ListLongMap!19087 (_ BitVec 64)) ListLongMap!19087)

(assert (=> b!1263176 (= lt!572804 (-!2148 lt!572806 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!572807 () Unit!42057)

(declare-fun removeNotPresentStillSame!144 (ListLongMap!19087 (_ BitVec 64)) Unit!42057)

(assert (=> b!1263176 (= lt!572807 (removeNotPresentStillSame!144 lt!572806 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263177 () Bool)

(declare-fun res!841504 () Bool)

(assert (=> b!1263177 (=> (not res!841504) (not e!719177))))

(declare-datatypes ((List!28423 0))(
  ( (Nil!28420) (Cons!28419 (h!29628 (_ BitVec 64)) (t!41943 List!28423)) )
))
(declare-fun arrayNoDuplicates!0 (array!82421 (_ BitVec 32) List!28423) Bool)

(assert (=> b!1263177 (= res!841504 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28420))))

(declare-fun mapNonEmpty!50434 () Bool)

(declare-fun mapRes!50434 () Bool)

(declare-fun tp!96069 () Bool)

(declare-fun e!719175 () Bool)

(assert (=> mapNonEmpty!50434 (= mapRes!50434 (and tp!96069 e!719175))))

(declare-fun mapValue!50434 () ValueCell!15440)

(declare-fun mapRest!50434 () (Array (_ BitVec 32) ValueCell!15440))

(declare-fun mapKey!50434 () (_ BitVec 32))

(assert (=> mapNonEmpty!50434 (= (arr!39753 _values!914) (store mapRest!50434 mapKey!50434 mapValue!50434))))

(declare-fun b!1263178 () Bool)

(declare-fun e!719172 () Bool)

(declare-fun e!719173 () Bool)

(assert (=> b!1263178 (= e!719172 (and e!719173 mapRes!50434))))

(declare-fun condMapEmpty!50434 () Bool)

(declare-fun mapDefault!50434 () ValueCell!15440)

