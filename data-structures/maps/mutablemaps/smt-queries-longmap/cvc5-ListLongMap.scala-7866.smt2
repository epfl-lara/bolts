; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97976 () Bool)

(assert start!97976)

(declare-fun b_free!23641 () Bool)

(declare-fun b_next!23641 () Bool)

(assert (=> start!97976 (= b_free!23641 (not b_next!23641))))

(declare-fun tp!83628 () Bool)

(declare-fun b_and!38087 () Bool)

(assert (=> start!97976 (= tp!83628 b_and!38087)))

(declare-fun mapNonEmpty!44074 () Bool)

(declare-fun mapRes!44074 () Bool)

(declare-fun tp!83627 () Bool)

(declare-fun e!639020 () Bool)

(assert (=> mapNonEmpty!44074 (= mapRes!44074 (and tp!83627 e!639020))))

(declare-datatypes ((V!42689 0))(
  ( (V!42690 (val!14142 Int)) )
))
(declare-datatypes ((ValueCell!13376 0))(
  ( (ValueCellFull!13376 (v!16776 V!42689)) (EmptyCell!13376) )
))
(declare-fun mapRest!44074 () (Array (_ BitVec 32) ValueCell!13376))

(declare-datatypes ((array!73168 0))(
  ( (array!73169 (arr!35233 (Array (_ BitVec 32) ValueCell!13376)) (size!35770 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73168)

(declare-fun mapKey!44074 () (_ BitVec 32))

(declare-fun mapValue!44074 () ValueCell!13376)

(assert (=> mapNonEmpty!44074 (= (arr!35233 _values!996) (store mapRest!44074 mapKey!44074 mapValue!44074))))

(declare-fun b!1122323 () Bool)

(declare-fun res!749880 () Bool)

(declare-fun e!639021 () Bool)

(assert (=> b!1122323 (=> (not res!749880) (not e!639021))))

(declare-datatypes ((array!73170 0))(
  ( (array!73171 (arr!35234 (Array (_ BitVec 32) (_ BitVec 64))) (size!35771 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73170)

(declare-datatypes ((List!24661 0))(
  ( (Nil!24658) (Cons!24657 (h!25866 (_ BitVec 64)) (t!35301 List!24661)) )
))
(declare-fun arrayNoDuplicates!0 (array!73170 (_ BitVec 32) List!24661) Bool)

(assert (=> b!1122323 (= res!749880 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24658))))

(declare-fun res!749873 () Bool)

(assert (=> start!97976 (=> (not res!749873) (not e!639021))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97976 (= res!749873 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35771 _keys!1208))))))

(assert (=> start!97976 e!639021))

(declare-fun tp_is_empty!28171 () Bool)

(assert (=> start!97976 tp_is_empty!28171))

(declare-fun array_inv!26926 (array!73170) Bool)

(assert (=> start!97976 (array_inv!26926 _keys!1208)))

(assert (=> start!97976 true))

(assert (=> start!97976 tp!83628))

(declare-fun e!639018 () Bool)

(declare-fun array_inv!26927 (array!73168) Bool)

(assert (=> start!97976 (and (array_inv!26927 _values!996) e!639018)))

(declare-fun mapIsEmpty!44074 () Bool)

(assert (=> mapIsEmpty!44074 mapRes!44074))

(declare-fun b!1122324 () Bool)

(declare-fun res!749871 () Bool)

(assert (=> b!1122324 (=> (not res!749871) (not e!639021))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1122324 (= res!749871 (= (select (arr!35234 _keys!1208) i!673) k!934))))

(declare-fun b!1122325 () Bool)

(declare-fun e!639023 () Bool)

(declare-datatypes ((tuple2!17824 0))(
  ( (tuple2!17825 (_1!8922 (_ BitVec 64)) (_2!8922 V!42689)) )
))
(declare-datatypes ((List!24662 0))(
  ( (Nil!24659) (Cons!24658 (h!25867 tuple2!17824) (t!35302 List!24662)) )
))
(declare-datatypes ((ListLongMap!15805 0))(
  ( (ListLongMap!15806 (toList!7918 List!24662)) )
))
(declare-fun call!47206 () ListLongMap!15805)

(declare-fun call!47207 () ListLongMap!15805)

(assert (=> b!1122325 (= e!639023 (= call!47206 call!47207))))

(declare-fun b!1122326 () Bool)

(declare-fun res!749877 () Bool)

(assert (=> b!1122326 (=> (not res!749877) (not e!639021))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73170 (_ BitVec 32)) Bool)

(assert (=> b!1122326 (= res!749877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122327 () Bool)

(declare-fun e!639019 () Bool)

(declare-fun e!639015 () Bool)

(assert (=> b!1122327 (= e!639019 e!639015)))

(declare-fun res!749876 () Bool)

(assert (=> b!1122327 (=> res!749876 e!639015)))

(assert (=> b!1122327 (= res!749876 (not (= (select (arr!35234 _keys!1208) from!1455) k!934)))))

(assert (=> b!1122327 e!639023))

(declare-fun c!109412 () Bool)

(assert (=> b!1122327 (= c!109412 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42689)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42689)

(declare-datatypes ((Unit!36745 0))(
  ( (Unit!36746) )
))
(declare-fun lt!498658 () Unit!36745)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!332 (array!73170 array!73168 (_ BitVec 32) (_ BitVec 32) V!42689 V!42689 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36745)

(assert (=> b!1122327 (= lt!498658 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!332 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122328 () Bool)

(declare-fun -!1081 (ListLongMap!15805 (_ BitVec 64)) ListLongMap!15805)

(assert (=> b!1122328 (= e!639023 (= call!47206 (-!1081 call!47207 k!934)))))

(declare-fun b!1122329 () Bool)

(declare-fun res!749872 () Bool)

(assert (=> b!1122329 (=> (not res!749872) (not e!639021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122329 (= res!749872 (validMask!0 mask!1564))))

(declare-fun b!1122330 () Bool)

(declare-fun res!749883 () Bool)

(assert (=> b!1122330 (=> (not res!749883) (not e!639021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122330 (= res!749883 (validKeyInArray!0 k!934))))

(declare-fun b!1122331 () Bool)

(declare-fun e!639014 () Bool)

(assert (=> b!1122331 (= e!639018 (and e!639014 mapRes!44074))))

(declare-fun condMapEmpty!44074 () Bool)

(declare-fun mapDefault!44074 () ValueCell!13376)

