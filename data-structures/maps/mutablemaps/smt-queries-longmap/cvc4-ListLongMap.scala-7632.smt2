; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96152 () Bool)

(assert start!96152)

(declare-fun b_free!22769 () Bool)

(declare-fun b_next!22769 () Bool)

(assert (=> start!96152 (= b_free!22769 (not b_next!22769))))

(declare-fun tp!80156 () Bool)

(declare-fun b_and!36231 () Bool)

(assert (=> start!96152 (= tp!80156 b_and!36231)))

(declare-fun b!1090617 () Bool)

(declare-fun res!727682 () Bool)

(declare-fun e!622936 () Bool)

(assert (=> b!1090617 (=> (not res!727682) (not e!622936))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090617 (= res!727682 (validKeyInArray!0 k!904))))

(declare-fun b!1090618 () Bool)

(declare-fun e!622929 () Bool)

(declare-fun e!622933 () Bool)

(assert (=> b!1090618 (= e!622929 e!622933)))

(declare-fun res!727689 () Bool)

(assert (=> b!1090618 (=> res!727689 e!622933)))

(assert (=> b!1090618 (= res!727689 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40821 0))(
  ( (V!40822 (val!13442 Int)) )
))
(declare-datatypes ((tuple2!17160 0))(
  ( (tuple2!17161 (_1!8590 (_ BitVec 64)) (_2!8590 V!40821)) )
))
(declare-datatypes ((List!23799 0))(
  ( (Nil!23796) (Cons!23795 (h!25004 tuple2!17160) (t!33633 List!23799)) )
))
(declare-datatypes ((ListLongMap!15141 0))(
  ( (ListLongMap!15142 (toList!7586 List!23799)) )
))
(declare-fun lt!486713 () ListLongMap!15141)

(declare-fun lt!486720 () ListLongMap!15141)

(assert (=> b!1090618 (= lt!486713 lt!486720)))

(declare-fun lt!486721 () ListLongMap!15141)

(declare-fun lt!486715 () tuple2!17160)

(declare-fun +!3295 (ListLongMap!15141 tuple2!17160) ListLongMap!15141)

(assert (=> b!1090618 (= lt!486720 (+!3295 lt!486721 lt!486715))))

(declare-fun lt!486717 () ListLongMap!15141)

(declare-fun lt!486725 () ListLongMap!15141)

(assert (=> b!1090618 (= lt!486717 lt!486725)))

(declare-fun lt!486723 () ListLongMap!15141)

(assert (=> b!1090618 (= lt!486725 (+!3295 lt!486723 lt!486715))))

(declare-fun lt!486718 () ListLongMap!15141)

(assert (=> b!1090618 (= lt!486717 (+!3295 lt!486718 lt!486715))))

(declare-fun minValue!831 () V!40821)

(assert (=> b!1090618 (= lt!486715 (tuple2!17161 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090619 () Bool)

(declare-fun e!622934 () Bool)

(declare-fun tp_is_empty!26771 () Bool)

(assert (=> b!1090619 (= e!622934 tp_is_empty!26771)))

(declare-fun b!1090620 () Bool)

(declare-fun e!622931 () Bool)

(assert (=> b!1090620 (= e!622931 tp_is_empty!26771)))

(declare-fun res!727681 () Bool)

(assert (=> start!96152 (=> (not res!727681) (not e!622936))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96152 (= res!727681 (validMask!0 mask!1414))))

(assert (=> start!96152 e!622936))

(assert (=> start!96152 tp!80156))

(assert (=> start!96152 true))

(assert (=> start!96152 tp_is_empty!26771))

(declare-datatypes ((array!70430 0))(
  ( (array!70431 (arr!33885 (Array (_ BitVec 32) (_ BitVec 64))) (size!34422 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70430)

(declare-fun array_inv!25984 (array!70430) Bool)

(assert (=> start!96152 (array_inv!25984 _keys!1070)))

(declare-datatypes ((ValueCell!12676 0))(
  ( (ValueCellFull!12676 (v!16064 V!40821)) (EmptyCell!12676) )
))
(declare-datatypes ((array!70432 0))(
  ( (array!70433 (arr!33886 (Array (_ BitVec 32) ValueCell!12676)) (size!34423 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70432)

(declare-fun e!622932 () Bool)

(declare-fun array_inv!25985 (array!70432) Bool)

(assert (=> start!96152 (and (array_inv!25985 _values!874) e!622932)))

(declare-fun b!1090621 () Bool)

(declare-fun e!622930 () Bool)

(assert (=> b!1090621 (= e!622930 (not e!622929))))

(declare-fun res!727688 () Bool)

(assert (=> b!1090621 (=> res!727688 e!622929)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090621 (= res!727688 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40821)

(declare-fun getCurrentListMap!4327 (array!70430 array!70432 (_ BitVec 32) (_ BitVec 32) V!40821 V!40821 (_ BitVec 32) Int) ListLongMap!15141)

(assert (=> b!1090621 (= lt!486713 (getCurrentListMap!4327 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486722 () array!70430)

(declare-fun lt!486719 () array!70432)

(assert (=> b!1090621 (= lt!486717 (getCurrentListMap!4327 lt!486722 lt!486719 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090621 (and (= lt!486718 lt!486723) (= lt!486723 lt!486718))))

(declare-fun -!864 (ListLongMap!15141 (_ BitVec 64)) ListLongMap!15141)

(assert (=> b!1090621 (= lt!486723 (-!864 lt!486721 k!904))))

(declare-datatypes ((Unit!35843 0))(
  ( (Unit!35844) )
))
(declare-fun lt!486714 () Unit!35843)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!133 (array!70430 array!70432 (_ BitVec 32) (_ BitVec 32) V!40821 V!40821 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35843)

(assert (=> b!1090621 (= lt!486714 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!133 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4079 (array!70430 array!70432 (_ BitVec 32) (_ BitVec 32) V!40821 V!40821 (_ BitVec 32) Int) ListLongMap!15141)

(assert (=> b!1090621 (= lt!486718 (getCurrentListMapNoExtraKeys!4079 lt!486722 lt!486719 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2215 (Int (_ BitVec 64)) V!40821)

(assert (=> b!1090621 (= lt!486719 (array!70433 (store (arr!33886 _values!874) i!650 (ValueCellFull!12676 (dynLambda!2215 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34423 _values!874)))))

(assert (=> b!1090621 (= lt!486721 (getCurrentListMapNoExtraKeys!4079 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090621 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486724 () Unit!35843)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70430 (_ BitVec 64) (_ BitVec 32)) Unit!35843)

(assert (=> b!1090621 (= lt!486724 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090622 () Bool)

(assert (=> b!1090622 (= e!622936 e!622930)))

(declare-fun res!727685 () Bool)

(assert (=> b!1090622 (=> (not res!727685) (not e!622930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70430 (_ BitVec 32)) Bool)

(assert (=> b!1090622 (= res!727685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486722 mask!1414))))

(assert (=> b!1090622 (= lt!486722 (array!70431 (store (arr!33885 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34422 _keys!1070)))))

(declare-fun mapIsEmpty!41911 () Bool)

(declare-fun mapRes!41911 () Bool)

(assert (=> mapIsEmpty!41911 mapRes!41911))

(declare-fun b!1090623 () Bool)

(declare-fun res!727687 () Bool)

(assert (=> b!1090623 (=> (not res!727687) (not e!622936))))

(assert (=> b!1090623 (= res!727687 (and (= (size!34423 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34422 _keys!1070) (size!34423 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090624 () Bool)

(declare-fun res!727691 () Bool)

(assert (=> b!1090624 (=> (not res!727691) (not e!622936))))

(assert (=> b!1090624 (= res!727691 (= (select (arr!33885 _keys!1070) i!650) k!904))))

(declare-fun b!1090625 () Bool)

(declare-fun res!727690 () Bool)

(assert (=> b!1090625 (=> (not res!727690) (not e!622936))))

(declare-datatypes ((List!23800 0))(
  ( (Nil!23797) (Cons!23796 (h!25005 (_ BitVec 64)) (t!33634 List!23800)) )
))
(declare-fun arrayNoDuplicates!0 (array!70430 (_ BitVec 32) List!23800) Bool)

(assert (=> b!1090625 (= res!727690 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23797))))

(declare-fun b!1090626 () Bool)

(declare-fun res!727683 () Bool)

(assert (=> b!1090626 (=> (not res!727683) (not e!622936))))

(assert (=> b!1090626 (= res!727683 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34422 _keys!1070))))))

(declare-fun b!1090627 () Bool)

(assert (=> b!1090627 (= e!622933 true)))

(assert (=> b!1090627 (= (-!864 lt!486720 k!904) lt!486725)))

(declare-fun lt!486716 () Unit!35843)

(declare-fun addRemoveCommutativeForDiffKeys!92 (ListLongMap!15141 (_ BitVec 64) V!40821 (_ BitVec 64)) Unit!35843)

(assert (=> b!1090627 (= lt!486716 (addRemoveCommutativeForDiffKeys!92 lt!486721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090628 () Bool)

(assert (=> b!1090628 (= e!622932 (and e!622934 mapRes!41911))))

(declare-fun condMapEmpty!41911 () Bool)

(declare-fun mapDefault!41911 () ValueCell!12676)

