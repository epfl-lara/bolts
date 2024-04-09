; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96210 () Bool)

(assert start!96210)

(declare-fun b_free!22827 () Bool)

(declare-fun b_next!22827 () Bool)

(assert (=> start!96210 (= b_free!22827 (not b_next!22827))))

(declare-fun tp!80330 () Bool)

(declare-fun b_and!36347 () Bool)

(assert (=> start!96210 (= tp!80330 b_and!36347)))

(declare-fun b!1091893 () Bool)

(declare-fun res!728642 () Bool)

(declare-fun e!623632 () Bool)

(assert (=> b!1091893 (=> (not res!728642) (not e!623632))))

(declare-datatypes ((array!70542 0))(
  ( (array!70543 (arr!33941 (Array (_ BitVec 32) (_ BitVec 64))) (size!34478 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70542)

(declare-datatypes ((List!23849 0))(
  ( (Nil!23846) (Cons!23845 (h!25054 (_ BitVec 64)) (t!33741 List!23849)) )
))
(declare-fun arrayNoDuplicates!0 (array!70542 (_ BitVec 32) List!23849) Bool)

(assert (=> b!1091893 (= res!728642 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23846))))

(declare-fun b!1091894 () Bool)

(declare-fun res!728648 () Bool)

(assert (=> b!1091894 (=> (not res!728648) (not e!623632))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70542 (_ BitVec 32)) Bool)

(assert (=> b!1091894 (= res!728648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091895 () Bool)

(declare-fun res!728644 () Bool)

(declare-fun e!623629 () Bool)

(assert (=> b!1091895 (=> (not res!728644) (not e!623629))))

(declare-fun lt!487847 () array!70542)

(assert (=> b!1091895 (= res!728644 (arrayNoDuplicates!0 lt!487847 #b00000000000000000000000000000000 Nil!23846))))

(declare-fun b!1091896 () Bool)

(declare-fun e!623625 () Bool)

(declare-fun e!623626 () Bool)

(declare-fun mapRes!41998 () Bool)

(assert (=> b!1091896 (= e!623625 (and e!623626 mapRes!41998))))

(declare-fun condMapEmpty!41998 () Bool)

(declare-datatypes ((V!40899 0))(
  ( (V!40900 (val!13471 Int)) )
))
(declare-datatypes ((ValueCell!12705 0))(
  ( (ValueCellFull!12705 (v!16093 V!40899)) (EmptyCell!12705) )
))
(declare-datatypes ((array!70544 0))(
  ( (array!70545 (arr!33942 (Array (_ BitVec 32) ValueCell!12705)) (size!34479 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70544)

(declare-fun mapDefault!41998 () ValueCell!12705)

(assert (=> b!1091896 (= condMapEmpty!41998 (= (arr!33942 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12705)) mapDefault!41998)))))

(declare-fun b!1091897 () Bool)

(assert (=> b!1091897 (= e!623632 e!623629)))

(declare-fun res!728640 () Bool)

(assert (=> b!1091897 (=> (not res!728640) (not e!623629))))

(assert (=> b!1091897 (= res!728640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487847 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091897 (= lt!487847 (array!70543 (store (arr!33941 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34478 _keys!1070)))))

(declare-fun b!1091898 () Bool)

(declare-fun res!728643 () Bool)

(assert (=> b!1091898 (=> (not res!728643) (not e!623632))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091898 (= res!728643 (validKeyInArray!0 k0!904))))

(declare-fun b!1091899 () Bool)

(declare-fun e!623630 () Bool)

(declare-fun tp_is_empty!26829 () Bool)

(assert (=> b!1091899 (= e!623630 tp_is_empty!26829)))

(declare-fun mapIsEmpty!41998 () Bool)

(assert (=> mapIsEmpty!41998 mapRes!41998))

(declare-fun b!1091900 () Bool)

(declare-fun e!623628 () Bool)

(assert (=> b!1091900 (= e!623628 true)))

(declare-datatypes ((tuple2!17210 0))(
  ( (tuple2!17211 (_1!8615 (_ BitVec 64)) (_2!8615 V!40899)) )
))
(declare-datatypes ((List!23850 0))(
  ( (Nil!23847) (Cons!23846 (h!25055 tuple2!17210) (t!33742 List!23850)) )
))
(declare-datatypes ((ListLongMap!15191 0))(
  ( (ListLongMap!15192 (toList!7611 List!23850)) )
))
(declare-fun lt!487844 () ListLongMap!15191)

(declare-fun lt!487854 () ListLongMap!15191)

(declare-fun -!888 (ListLongMap!15191 (_ BitVec 64)) ListLongMap!15191)

(assert (=> b!1091900 (= (-!888 lt!487844 k0!904) lt!487854)))

(declare-fun minValue!831 () V!40899)

(declare-datatypes ((Unit!35891 0))(
  ( (Unit!35892) )
))
(declare-fun lt!487848 () Unit!35891)

(declare-fun lt!487852 () ListLongMap!15191)

(declare-fun addRemoveCommutativeForDiffKeys!116 (ListLongMap!15191 (_ BitVec 64) V!40899 (_ BitVec 64)) Unit!35891)

(assert (=> b!1091900 (= lt!487848 (addRemoveCommutativeForDiffKeys!116 lt!487852 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1091901 () Bool)

(declare-fun res!728638 () Bool)

(assert (=> b!1091901 (=> (not res!728638) (not e!623632))))

(assert (=> b!1091901 (= res!728638 (= (select (arr!33941 _keys!1070) i!650) k0!904))))

(declare-fun b!1091902 () Bool)

(declare-fun e!623631 () Bool)

(assert (=> b!1091902 (= e!623629 (not e!623631))))

(declare-fun res!728639 () Bool)

(assert (=> b!1091902 (=> res!728639 e!623631)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091902 (= res!728639 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!487850 () ListLongMap!15191)

(declare-fun zeroValue!831 () V!40899)

(declare-fun getCurrentListMap!4347 (array!70542 array!70544 (_ BitVec 32) (_ BitVec 32) V!40899 V!40899 (_ BitVec 32) Int) ListLongMap!15191)

(assert (=> b!1091902 (= lt!487850 (getCurrentListMap!4347 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487846 () ListLongMap!15191)

(declare-fun lt!487856 () array!70544)

(assert (=> b!1091902 (= lt!487846 (getCurrentListMap!4347 lt!487847 lt!487856 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487853 () ListLongMap!15191)

(declare-fun lt!487849 () ListLongMap!15191)

(assert (=> b!1091902 (and (= lt!487853 lt!487849) (= lt!487849 lt!487853))))

(assert (=> b!1091902 (= lt!487849 (-!888 lt!487852 k0!904))))

(declare-fun lt!487855 () Unit!35891)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!153 (array!70542 array!70544 (_ BitVec 32) (_ BitVec 32) V!40899 V!40899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35891)

(assert (=> b!1091902 (= lt!487855 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!153 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4099 (array!70542 array!70544 (_ BitVec 32) (_ BitVec 32) V!40899 V!40899 (_ BitVec 32) Int) ListLongMap!15191)

(assert (=> b!1091902 (= lt!487853 (getCurrentListMapNoExtraKeys!4099 lt!487847 lt!487856 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2235 (Int (_ BitVec 64)) V!40899)

(assert (=> b!1091902 (= lt!487856 (array!70545 (store (arr!33942 _values!874) i!650 (ValueCellFull!12705 (dynLambda!2235 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34479 _values!874)))))

(assert (=> b!1091902 (= lt!487852 (getCurrentListMapNoExtraKeys!4099 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091902 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487851 () Unit!35891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70542 (_ BitVec 64) (_ BitVec 32)) Unit!35891)

(assert (=> b!1091902 (= lt!487851 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!728645 () Bool)

(assert (=> start!96210 (=> (not res!728645) (not e!623632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96210 (= res!728645 (validMask!0 mask!1414))))

(assert (=> start!96210 e!623632))

(assert (=> start!96210 tp!80330))

(assert (=> start!96210 true))

(assert (=> start!96210 tp_is_empty!26829))

(declare-fun array_inv!26026 (array!70542) Bool)

(assert (=> start!96210 (array_inv!26026 _keys!1070)))

(declare-fun array_inv!26027 (array!70544) Bool)

(assert (=> start!96210 (and (array_inv!26027 _values!874) e!623625)))

(declare-fun mapNonEmpty!41998 () Bool)

(declare-fun tp!80331 () Bool)

(assert (=> mapNonEmpty!41998 (= mapRes!41998 (and tp!80331 e!623630))))

(declare-fun mapRest!41998 () (Array (_ BitVec 32) ValueCell!12705))

(declare-fun mapValue!41998 () ValueCell!12705)

(declare-fun mapKey!41998 () (_ BitVec 32))

(assert (=> mapNonEmpty!41998 (= (arr!33942 _values!874) (store mapRest!41998 mapKey!41998 mapValue!41998))))

(declare-fun b!1091903 () Bool)

(declare-fun res!728646 () Bool)

(assert (=> b!1091903 (=> (not res!728646) (not e!623632))))

(assert (=> b!1091903 (= res!728646 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34478 _keys!1070))))))

(declare-fun b!1091904 () Bool)

(assert (=> b!1091904 (= e!623626 tp_is_empty!26829)))

(declare-fun b!1091905 () Bool)

(declare-fun res!728647 () Bool)

(assert (=> b!1091905 (=> (not res!728647) (not e!623632))))

(assert (=> b!1091905 (= res!728647 (and (= (size!34479 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34478 _keys!1070) (size!34479 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091906 () Bool)

(assert (=> b!1091906 (= e!623631 e!623628)))

(declare-fun res!728641 () Bool)

(assert (=> b!1091906 (=> res!728641 e!623628)))

(assert (=> b!1091906 (= res!728641 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1091906 (= lt!487850 lt!487844)))

(declare-fun lt!487845 () tuple2!17210)

(declare-fun +!3313 (ListLongMap!15191 tuple2!17210) ListLongMap!15191)

(assert (=> b!1091906 (= lt!487844 (+!3313 lt!487852 lt!487845))))

(assert (=> b!1091906 (= lt!487846 lt!487854)))

(assert (=> b!1091906 (= lt!487854 (+!3313 lt!487849 lt!487845))))

(assert (=> b!1091906 (= lt!487846 (+!3313 lt!487853 lt!487845))))

(assert (=> b!1091906 (= lt!487845 (tuple2!17211 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (= (and start!96210 res!728645) b!1091905))

(assert (= (and b!1091905 res!728647) b!1091894))

(assert (= (and b!1091894 res!728648) b!1091893))

(assert (= (and b!1091893 res!728642) b!1091903))

(assert (= (and b!1091903 res!728646) b!1091898))

(assert (= (and b!1091898 res!728643) b!1091901))

(assert (= (and b!1091901 res!728638) b!1091897))

(assert (= (and b!1091897 res!728640) b!1091895))

(assert (= (and b!1091895 res!728644) b!1091902))

(assert (= (and b!1091902 (not res!728639)) b!1091906))

(assert (= (and b!1091906 (not res!728641)) b!1091900))

(assert (= (and b!1091896 condMapEmpty!41998) mapIsEmpty!41998))

(assert (= (and b!1091896 (not condMapEmpty!41998)) mapNonEmpty!41998))

(get-info :version)

(assert (= (and mapNonEmpty!41998 ((_ is ValueCellFull!12705) mapValue!41998)) b!1091899))

(assert (= (and b!1091896 ((_ is ValueCellFull!12705) mapDefault!41998)) b!1091904))

(assert (= start!96210 b!1091896))

(declare-fun b_lambda!17527 () Bool)

(assert (=> (not b_lambda!17527) (not b!1091902)))

(declare-fun t!33740 () Bool)

(declare-fun tb!7713 () Bool)

(assert (=> (and start!96210 (= defaultEntry!882 defaultEntry!882) t!33740) tb!7713))

(declare-fun result!15937 () Bool)

(assert (=> tb!7713 (= result!15937 tp_is_empty!26829)))

(assert (=> b!1091902 t!33740))

(declare-fun b_and!36349 () Bool)

(assert (= b_and!36347 (and (=> t!33740 result!15937) b_and!36349)))

(declare-fun m!1011709 () Bool)

(assert (=> b!1091901 m!1011709))

(declare-fun m!1011711 () Bool)

(assert (=> b!1091902 m!1011711))

(declare-fun m!1011713 () Bool)

(assert (=> b!1091902 m!1011713))

(declare-fun m!1011715 () Bool)

(assert (=> b!1091902 m!1011715))

(declare-fun m!1011717 () Bool)

(assert (=> b!1091902 m!1011717))

(declare-fun m!1011719 () Bool)

(assert (=> b!1091902 m!1011719))

(declare-fun m!1011721 () Bool)

(assert (=> b!1091902 m!1011721))

(declare-fun m!1011723 () Bool)

(assert (=> b!1091902 m!1011723))

(declare-fun m!1011725 () Bool)

(assert (=> b!1091902 m!1011725))

(declare-fun m!1011727 () Bool)

(assert (=> b!1091902 m!1011727))

(declare-fun m!1011729 () Bool)

(assert (=> b!1091902 m!1011729))

(declare-fun m!1011731 () Bool)

(assert (=> b!1091898 m!1011731))

(declare-fun m!1011733 () Bool)

(assert (=> mapNonEmpty!41998 m!1011733))

(declare-fun m!1011735 () Bool)

(assert (=> b!1091906 m!1011735))

(declare-fun m!1011737 () Bool)

(assert (=> b!1091906 m!1011737))

(declare-fun m!1011739 () Bool)

(assert (=> b!1091906 m!1011739))

(declare-fun m!1011741 () Bool)

(assert (=> start!96210 m!1011741))

(declare-fun m!1011743 () Bool)

(assert (=> start!96210 m!1011743))

(declare-fun m!1011745 () Bool)

(assert (=> start!96210 m!1011745))

(declare-fun m!1011747 () Bool)

(assert (=> b!1091897 m!1011747))

(declare-fun m!1011749 () Bool)

(assert (=> b!1091897 m!1011749))

(declare-fun m!1011751 () Bool)

(assert (=> b!1091900 m!1011751))

(declare-fun m!1011753 () Bool)

(assert (=> b!1091900 m!1011753))

(declare-fun m!1011755 () Bool)

(assert (=> b!1091895 m!1011755))

(declare-fun m!1011757 () Bool)

(assert (=> b!1091893 m!1011757))

(declare-fun m!1011759 () Bool)

(assert (=> b!1091894 m!1011759))

(check-sat (not mapNonEmpty!41998) (not b!1091893) tp_is_empty!26829 (not start!96210) b_and!36349 (not b!1091894) (not b!1091897) (not b!1091895) (not b_next!22827) (not b!1091900) (not b!1091906) (not b!1091898) (not b!1091902) (not b_lambda!17527))
(check-sat b_and!36349 (not b_next!22827))
