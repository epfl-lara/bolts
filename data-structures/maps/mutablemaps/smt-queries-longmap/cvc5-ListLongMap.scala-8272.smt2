; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100678 () Bool)

(assert start!100678)

(declare-fun b_free!25903 () Bool)

(declare-fun b_next!25903 () Bool)

(assert (=> start!100678 (= b_free!25903 (not b_next!25903))))

(declare-fun tp!90703 () Bool)

(declare-fun b_and!42747 () Bool)

(assert (=> start!100678 (= tp!90703 b_and!42747)))

(declare-fun b!1203815 () Bool)

(declare-datatypes ((Unit!39842 0))(
  ( (Unit!39843) )
))
(declare-fun e!683649 () Unit!39842)

(declare-fun lt!545769 () Unit!39842)

(assert (=> b!1203815 (= e!683649 lt!545769)))

(declare-fun call!58082 () Unit!39842)

(assert (=> b!1203815 (= lt!545769 call!58082)))

(declare-fun call!58089 () Bool)

(assert (=> b!1203815 call!58089))

(declare-datatypes ((V!45937 0))(
  ( (V!45938 (val!15360 Int)) )
))
(declare-fun zeroValue!944 () V!45937)

(declare-datatypes ((tuple2!19828 0))(
  ( (tuple2!19829 (_1!9924 (_ BitVec 64)) (_2!9924 V!45937)) )
))
(declare-datatypes ((List!26655 0))(
  ( (Nil!26652) (Cons!26651 (h!27860 tuple2!19828) (t!39545 List!26655)) )
))
(declare-datatypes ((ListLongMap!17809 0))(
  ( (ListLongMap!17810 (toList!8920 List!26655)) )
))
(declare-fun lt!545778 () ListLongMap!17809)

(declare-fun c!117913 () Bool)

(declare-fun minValue!944 () V!45937)

(declare-fun bm!58079 () Bool)

(declare-fun c!117911 () Bool)

(declare-fun call!58085 () ListLongMap!17809)

(declare-fun +!3954 (ListLongMap!17809 tuple2!19828) ListLongMap!17809)

(assert (=> bm!58079 (= call!58085 (+!3954 lt!545778 (ite (or c!117913 c!117911) (tuple2!19829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203816 () Bool)

(declare-fun res!801076 () Bool)

(declare-fun e!683641 () Bool)

(assert (=> b!1203816 (=> (not res!801076) (not e!683641))))

(declare-datatypes ((array!77966 0))(
  ( (array!77967 (arr!37623 (Array (_ BitVec 32) (_ BitVec 64))) (size!38160 (_ BitVec 32))) )
))
(declare-fun lt!545773 () array!77966)

(declare-datatypes ((List!26656 0))(
  ( (Nil!26653) (Cons!26652 (h!27861 (_ BitVec 64)) (t!39546 List!26656)) )
))
(declare-fun arrayNoDuplicates!0 (array!77966 (_ BitVec 32) List!26656) Bool)

(assert (=> b!1203816 (= res!801076 (arrayNoDuplicates!0 lt!545773 #b00000000000000000000000000000000 Nil!26653))))

(declare-fun b!1203817 () Bool)

(declare-fun e!683640 () Bool)

(declare-fun tp_is_empty!30607 () Bool)

(assert (=> b!1203817 (= e!683640 tp_is_empty!30607)))

(declare-fun b!1203818 () Bool)

(declare-fun res!801084 () Bool)

(declare-fun e!683645 () Bool)

(assert (=> b!1203818 (=> (not res!801084) (not e!683645))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203818 (= res!801084 (validKeyInArray!0 k!934))))

(declare-fun b!1203819 () Bool)

(declare-fun e!683638 () Unit!39842)

(declare-fun lt!545777 () Unit!39842)

(assert (=> b!1203819 (= e!683638 lt!545777)))

(declare-fun lt!545780 () Unit!39842)

(declare-fun call!58088 () Unit!39842)

(assert (=> b!1203819 (= lt!545780 call!58088)))

(declare-fun lt!545770 () ListLongMap!17809)

(assert (=> b!1203819 (= lt!545770 call!58085)))

(declare-fun call!58086 () Bool)

(assert (=> b!1203819 call!58086))

(declare-fun addStillContains!1018 (ListLongMap!17809 (_ BitVec 64) V!45937 (_ BitVec 64)) Unit!39842)

(assert (=> b!1203819 (= lt!545777 (addStillContains!1018 lt!545770 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6920 (ListLongMap!17809 (_ BitVec 64)) Bool)

(assert (=> b!1203819 (contains!6920 (+!3954 lt!545770 (tuple2!19829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1203820 () Bool)

(declare-fun res!801085 () Bool)

(assert (=> b!1203820 (=> (not res!801085) (not e!683645))))

(declare-fun _keys!1208 () array!77966)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77966 (_ BitVec 32)) Bool)

(assert (=> b!1203820 (= res!801085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!801073 () Bool)

(assert (=> start!100678 (=> (not res!801073) (not e!683645))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100678 (= res!801073 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38160 _keys!1208))))))

(assert (=> start!100678 e!683645))

(assert (=> start!100678 tp_is_empty!30607))

(declare-fun array_inv!28564 (array!77966) Bool)

(assert (=> start!100678 (array_inv!28564 _keys!1208)))

(assert (=> start!100678 true))

(assert (=> start!100678 tp!90703))

(declare-datatypes ((ValueCell!14594 0))(
  ( (ValueCellFull!14594 (v!18002 V!45937)) (EmptyCell!14594) )
))
(declare-datatypes ((array!77968 0))(
  ( (array!77969 (arr!37624 (Array (_ BitVec 32) ValueCell!14594)) (size!38161 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77968)

(declare-fun e!683647 () Bool)

(declare-fun array_inv!28565 (array!77968) Bool)

(assert (=> start!100678 (and (array_inv!28565 _values!996) e!683647)))

(declare-fun bm!58080 () Bool)

(declare-fun call!58083 () ListLongMap!17809)

(assert (=> bm!58080 (= call!58086 (contains!6920 (ite c!117913 lt!545770 call!58083) k!934))))

(declare-fun b!1203821 () Bool)

(declare-fun e!683643 () Bool)

(declare-fun e!683642 () Bool)

(assert (=> b!1203821 (= e!683643 e!683642)))

(declare-fun res!801075 () Bool)

(assert (=> b!1203821 (=> res!801075 e!683642)))

(assert (=> b!1203821 (= res!801075 (not (contains!6920 lt!545778 k!934)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5330 (array!77966 array!77968 (_ BitVec 32) (_ BitVec 32) V!45937 V!45937 (_ BitVec 32) Int) ListLongMap!17809)

(assert (=> b!1203821 (= lt!545778 (getCurrentListMapNoExtraKeys!5330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58087 () ListLongMap!17809)

(declare-fun bm!58081 () Bool)

(assert (=> bm!58081 (= call!58087 (getCurrentListMapNoExtraKeys!5330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203822 () Bool)

(declare-fun res!801082 () Bool)

(assert (=> b!1203822 (=> (not res!801082) (not e!683645))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203822 (= res!801082 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38160 _keys!1208))))))

(declare-fun b!1203823 () Bool)

(declare-fun e!683644 () Bool)

(assert (=> b!1203823 (= e!683644 e!683643)))

(declare-fun res!801083 () Bool)

(assert (=> b!1203823 (=> res!801083 e!683643)))

(assert (=> b!1203823 (= res!801083 (not (= (select (arr!37623 _keys!1208) from!1455) k!934)))))

(declare-fun e!683646 () Bool)

(assert (=> b!1203823 e!683646))

(declare-fun c!117912 () Bool)

(assert (=> b!1203823 (= c!117912 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545771 () Unit!39842)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1040 (array!77966 array!77968 (_ BitVec 32) (_ BitVec 32) V!45937 V!45937 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39842)

(assert (=> b!1203823 (= lt!545771 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1040 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203824 () Bool)

(declare-fun call!58084 () ListLongMap!17809)

(declare-fun -!1836 (ListLongMap!17809 (_ BitVec 64)) ListLongMap!17809)

(assert (=> b!1203824 (= e!683646 (= call!58084 (-!1836 call!58087 k!934)))))

(declare-fun b!1203825 () Bool)

(declare-fun res!801078 () Bool)

(assert (=> b!1203825 (=> (not res!801078) (not e!683645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203825 (= res!801078 (validMask!0 mask!1564))))

(declare-fun b!1203826 () Bool)

(assert (=> b!1203826 (= e!683646 (= call!58084 call!58087))))

(declare-fun mapNonEmpty!47757 () Bool)

(declare-fun mapRes!47757 () Bool)

(declare-fun tp!90704 () Bool)

(assert (=> mapNonEmpty!47757 (= mapRes!47757 (and tp!90704 e!683640))))

(declare-fun mapRest!47757 () (Array (_ BitVec 32) ValueCell!14594))

(declare-fun mapValue!47757 () ValueCell!14594)

(declare-fun mapKey!47757 () (_ BitVec 32))

(assert (=> mapNonEmpty!47757 (= (arr!37624 _values!996) (store mapRest!47757 mapKey!47757 mapValue!47757))))

(declare-fun bm!58082 () Bool)

(assert (=> bm!58082 (= call!58088 (addStillContains!1018 lt!545778 (ite (or c!117913 c!117911) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117913 c!117911) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1203827 () Bool)

(declare-fun res!801074 () Bool)

(assert (=> b!1203827 (=> (not res!801074) (not e!683645))))

(assert (=> b!1203827 (= res!801074 (and (= (size!38161 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38160 _keys!1208) (size!38161 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203828 () Bool)

(declare-fun e!683637 () Bool)

(assert (=> b!1203828 (= e!683637 tp_is_empty!30607)))

(declare-fun b!1203829 () Bool)

(declare-fun c!117910 () Bool)

(declare-fun lt!545779 () Bool)

(assert (=> b!1203829 (= c!117910 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545779))))

(declare-fun e!683639 () Unit!39842)

(assert (=> b!1203829 (= e!683639 e!683649)))

(declare-fun b!1203830 () Bool)

(declare-fun e!683650 () Bool)

(declare-fun getCurrentListMap!4453 (array!77966 array!77968 (_ BitVec 32) (_ BitVec 32) V!45937 V!45937 (_ BitVec 32) Int) ListLongMap!17809)

(assert (=> b!1203830 (= e!683650 (contains!6920 (getCurrentListMap!4453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1203831 () Bool)

(declare-fun res!801080 () Bool)

(assert (=> b!1203831 (=> (not res!801080) (not e!683645))))

(assert (=> b!1203831 (= res!801080 (= (select (arr!37623 _keys!1208) i!673) k!934))))

(declare-fun bm!58083 () Bool)

(assert (=> bm!58083 (= call!58082 call!58088)))

(declare-fun b!1203832 () Bool)

(declare-fun e!683648 () Bool)

(assert (=> b!1203832 (= e!683648 e!683644)))

(declare-fun res!801072 () Bool)

(assert (=> b!1203832 (=> res!801072 e!683644)))

(assert (=> b!1203832 (= res!801072 (not (= from!1455 i!673)))))

(declare-fun lt!545776 () ListLongMap!17809)

(declare-fun lt!545772 () array!77968)

(assert (=> b!1203832 (= lt!545776 (getCurrentListMapNoExtraKeys!5330 lt!545773 lt!545772 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3252 (Int (_ BitVec 64)) V!45937)

(assert (=> b!1203832 (= lt!545772 (array!77969 (store (arr!37624 _values!996) i!673 (ValueCellFull!14594 (dynLambda!3252 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38161 _values!996)))))

(declare-fun lt!545775 () ListLongMap!17809)

(assert (=> b!1203832 (= lt!545775 (getCurrentListMapNoExtraKeys!5330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1203833 () Bool)

(assert (=> b!1203833 call!58089))

(declare-fun lt!545768 () Unit!39842)

(assert (=> b!1203833 (= lt!545768 call!58082)))

(assert (=> b!1203833 (= e!683639 lt!545768)))

(declare-fun b!1203834 () Bool)

(assert (=> b!1203834 (= e!683645 e!683641)))

(declare-fun res!801081 () Bool)

(assert (=> b!1203834 (=> (not res!801081) (not e!683641))))

(assert (=> b!1203834 (= res!801081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545773 mask!1564))))

(assert (=> b!1203834 (= lt!545773 (array!77967 (store (arr!37623 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38160 _keys!1208)))))

(declare-fun b!1203835 () Bool)

(assert (=> b!1203835 (= e!683642 e!683650)))

(declare-fun res!801086 () Bool)

(assert (=> b!1203835 (=> res!801086 e!683650)))

(assert (=> b!1203835 (= res!801086 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38160 _keys!1208))))))

(declare-fun lt!545774 () Unit!39842)

(assert (=> b!1203835 (= lt!545774 e!683638)))

(assert (=> b!1203835 (= c!117913 (and (not lt!545779) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1203835 (= lt!545779 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1203836 () Bool)

(assert (=> b!1203836 (= e!683647 (and e!683637 mapRes!47757))))

(declare-fun condMapEmpty!47757 () Bool)

(declare-fun mapDefault!47757 () ValueCell!14594)

