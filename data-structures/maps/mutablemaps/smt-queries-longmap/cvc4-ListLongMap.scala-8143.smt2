; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99764 () Bool)

(assert start!99764)

(declare-fun b_free!25307 () Bool)

(declare-fun b_next!25307 () Bool)

(assert (=> start!99764 (= b_free!25307 (not b_next!25307))))

(declare-fun tp!88635 () Bool)

(declare-fun b_and!41495 () Bool)

(assert (=> start!99764 (= tp!88635 b_and!41495)))

(declare-fun res!786861 () Bool)

(declare-fun e!673066 () Bool)

(assert (=> start!99764 (=> (not res!786861) (not e!673066))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76442 0))(
  ( (array!76443 (arr!36867 (Array (_ BitVec 32) (_ BitVec 64))) (size!37404 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76442)

(assert (=> start!99764 (= res!786861 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37404 _keys!1208))))))

(assert (=> start!99764 e!673066))

(declare-fun tp_is_empty!29837 () Bool)

(assert (=> start!99764 tp_is_empty!29837))

(declare-fun array_inv!28020 (array!76442) Bool)

(assert (=> start!99764 (array_inv!28020 _keys!1208)))

(assert (=> start!99764 true))

(assert (=> start!99764 tp!88635))

(declare-datatypes ((V!44909 0))(
  ( (V!44910 (val!14975 Int)) )
))
(declare-datatypes ((ValueCell!14209 0))(
  ( (ValueCellFull!14209 (v!17614 V!44909)) (EmptyCell!14209) )
))
(declare-datatypes ((array!76444 0))(
  ( (array!76445 (arr!36868 (Array (_ BitVec 32) ValueCell!14209)) (size!37405 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76444)

(declare-fun e!673059 () Bool)

(declare-fun array_inv!28021 (array!76444) Bool)

(assert (=> start!99764 (and (array_inv!28021 _values!996) e!673059)))

(declare-fun mapNonEmpty!46583 () Bool)

(declare-fun mapRes!46583 () Bool)

(declare-fun tp!88636 () Bool)

(declare-fun e!673064 () Bool)

(assert (=> mapNonEmpty!46583 (= mapRes!46583 (and tp!88636 e!673064))))

(declare-fun mapValue!46583 () ValueCell!14209)

(declare-fun mapKey!46583 () (_ BitVec 32))

(declare-fun mapRest!46583 () (Array (_ BitVec 32) ValueCell!14209))

(assert (=> mapNonEmpty!46583 (= (arr!36868 _values!996) (store mapRest!46583 mapKey!46583 mapValue!46583))))

(declare-fun b!1183739 () Bool)

(declare-fun res!786864 () Bool)

(assert (=> b!1183739 (=> (not res!786864) (not e!673066))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183739 (= res!786864 (validMask!0 mask!1564))))

(declare-fun b!1183740 () Bool)

(declare-fun e!673062 () Bool)

(declare-fun e!673065 () Bool)

(assert (=> b!1183740 (= e!673062 e!673065)))

(declare-fun res!786865 () Bool)

(assert (=> b!1183740 (=> res!786865 e!673065)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1183740 (= res!786865 (not (= (select (arr!36867 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183741 () Bool)

(declare-fun e!673068 () Bool)

(declare-fun e!673060 () Bool)

(assert (=> b!1183741 (= e!673068 (not e!673060))))

(declare-fun res!786866 () Bool)

(assert (=> b!1183741 (=> res!786866 e!673060)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183741 (= res!786866 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183741 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39109 0))(
  ( (Unit!39110) )
))
(declare-fun lt!536458 () Unit!39109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76442 (_ BitVec 64) (_ BitVec 32)) Unit!39109)

(assert (=> b!1183741 (= lt!536458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46583 () Bool)

(assert (=> mapIsEmpty!46583 mapRes!46583))

(declare-fun b!1183742 () Bool)

(declare-fun e!673061 () Unit!39109)

(declare-fun Unit!39111 () Unit!39109)

(assert (=> b!1183742 (= e!673061 Unit!39111)))

(declare-fun lt!536454 () Unit!39109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76442 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39109)

(assert (=> b!1183742 (= lt!536454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183742 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536463 () Unit!39109)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76442 (_ BitVec 32) (_ BitVec 32)) Unit!39109)

(assert (=> b!1183742 (= lt!536463 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26081 0))(
  ( (Nil!26078) (Cons!26077 (h!27286 (_ BitVec 64)) (t!38387 List!26081)) )
))
(declare-fun arrayNoDuplicates!0 (array!76442 (_ BitVec 32) List!26081) Bool)

(assert (=> b!1183742 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26078)))

(declare-fun lt!536461 () Unit!39109)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76442 (_ BitVec 64) (_ BitVec 32) List!26081) Unit!39109)

(assert (=> b!1183742 (= lt!536461 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26078))))

(assert (=> b!1183742 false))

(declare-fun b!1183743 () Bool)

(declare-fun e!673058 () Bool)

(assert (=> b!1183743 (= e!673058 true)))

(declare-datatypes ((tuple2!19318 0))(
  ( (tuple2!19319 (_1!9669 (_ BitVec 64)) (_2!9669 V!44909)) )
))
(declare-datatypes ((List!26082 0))(
  ( (Nil!26079) (Cons!26078 (h!27287 tuple2!19318) (t!38388 List!26082)) )
))
(declare-datatypes ((ListLongMap!17299 0))(
  ( (ListLongMap!17300 (toList!8665 List!26082)) )
))
(declare-fun lt!536452 () ListLongMap!17299)

(declare-fun lt!536466 () ListLongMap!17299)

(declare-fun -!1653 (ListLongMap!17299 (_ BitVec 64)) ListLongMap!17299)

(assert (=> b!1183743 (= (-!1653 lt!536452 k!934) lt!536466)))

(declare-fun lt!536448 () ListLongMap!17299)

(declare-fun lt!536464 () Unit!39109)

(declare-fun lt!536451 () V!44909)

(declare-fun addRemoveCommutativeForDiffKeys!170 (ListLongMap!17299 (_ BitVec 64) V!44909 (_ BitVec 64)) Unit!39109)

(assert (=> b!1183743 (= lt!536464 (addRemoveCommutativeForDiffKeys!170 lt!536448 (select (arr!36867 _keys!1208) from!1455) lt!536451 k!934))))

(declare-fun lt!536465 () ListLongMap!17299)

(declare-fun lt!536456 () ListLongMap!17299)

(declare-fun lt!536462 () ListLongMap!17299)

(assert (=> b!1183743 (and (= lt!536462 lt!536452) (= lt!536465 lt!536456))))

(declare-fun lt!536453 () tuple2!19318)

(declare-fun +!3880 (ListLongMap!17299 tuple2!19318) ListLongMap!17299)

(assert (=> b!1183743 (= lt!536452 (+!3880 lt!536448 lt!536453))))

(assert (=> b!1183743 (not (= (select (arr!36867 _keys!1208) from!1455) k!934))))

(declare-fun lt!536457 () Unit!39109)

(assert (=> b!1183743 (= lt!536457 e!673061)))

(declare-fun c!117032 () Bool)

(assert (=> b!1183743 (= c!117032 (= (select (arr!36867 _keys!1208) from!1455) k!934))))

(assert (=> b!1183743 e!673062))

(declare-fun res!786867 () Bool)

(assert (=> b!1183743 (=> (not res!786867) (not e!673062))))

(declare-fun lt!536459 () ListLongMap!17299)

(assert (=> b!1183743 (= res!786867 (= lt!536459 lt!536466))))

(assert (=> b!1183743 (= lt!536466 (+!3880 lt!536465 lt!536453))))

(assert (=> b!1183743 (= lt!536453 (tuple2!19319 (select (arr!36867 _keys!1208) from!1455) lt!536451))))

(declare-fun lt!536449 () V!44909)

(declare-fun get!18904 (ValueCell!14209 V!44909) V!44909)

(assert (=> b!1183743 (= lt!536451 (get!18904 (select (arr!36868 _values!996) from!1455) lt!536449))))

(declare-fun b!1183744 () Bool)

(declare-fun e!673069 () Bool)

(assert (=> b!1183744 (= e!673059 (and e!673069 mapRes!46583))))

(declare-fun condMapEmpty!46583 () Bool)

(declare-fun mapDefault!46583 () ValueCell!14209)

