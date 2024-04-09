; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98792 () Bool)

(assert start!98792)

(declare-fun b_free!24361 () Bool)

(declare-fun b_next!24361 () Bool)

(assert (=> start!98792 (= b_free!24361 (not b_next!24361))))

(declare-fun tp!85794 () Bool)

(declare-fun b_and!39585 () Bool)

(assert (=> start!98792 (= tp!85794 b_and!39585)))

(declare-fun b!1151554 () Bool)

(declare-fun res!765834 () Bool)

(declare-fun e!654994 () Bool)

(assert (=> b!1151554 (=> (not res!765834) (not e!654994))))

(declare-datatypes ((array!74584 0))(
  ( (array!74585 (arr!35939 (Array (_ BitVec 32) (_ BitVec 64))) (size!36476 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74584)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43649 0))(
  ( (V!43650 (val!14502 Int)) )
))
(declare-datatypes ((ValueCell!13736 0))(
  ( (ValueCellFull!13736 (v!17140 V!43649)) (EmptyCell!13736) )
))
(declare-datatypes ((array!74586 0))(
  ( (array!74587 (arr!35940 (Array (_ BitVec 32) ValueCell!13736)) (size!36477 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74586)

(assert (=> b!1151554 (= res!765834 (and (= (size!36477 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36476 _keys!1208) (size!36477 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1151555 () Bool)

(declare-datatypes ((Unit!37796 0))(
  ( (Unit!37797) )
))
(declare-fun e!655008 () Unit!37796)

(declare-fun Unit!37798 () Unit!37796)

(assert (=> b!1151555 (= e!655008 Unit!37798)))

(declare-fun lt!515613 () Bool)

(assert (=> b!1151555 (= lt!515613 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114056 () Bool)

(assert (=> b!1151555 (= c!114056 (and (not lt!515613) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515607 () Unit!37796)

(declare-fun e!655001 () Unit!37796)

(assert (=> b!1151555 (= lt!515607 e!655001)))

(declare-fun zeroValue!944 () V!43649)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43649)

(declare-fun lt!515595 () Unit!37796)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!471 (array!74584 array!74586 (_ BitVec 32) (_ BitVec 32) V!43649 V!43649 (_ BitVec 64) (_ BitVec 32) Int) Unit!37796)

(assert (=> b!1151555 (= lt!515595 (lemmaListMapContainsThenArrayContainsFrom!471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114057 () Bool)

(assert (=> b!1151555 (= c!114057 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765848 () Bool)

(declare-fun e!655000 () Bool)

(assert (=> b!1151555 (= res!765848 e!655000)))

(declare-fun e!655002 () Bool)

(assert (=> b!1151555 (=> (not res!765848) (not e!655002))))

(assert (=> b!1151555 e!655002))

(declare-fun lt!515606 () Unit!37796)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74584 (_ BitVec 32) (_ BitVec 32)) Unit!37796)

(assert (=> b!1151555 (= lt!515606 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25281 0))(
  ( (Nil!25278) (Cons!25277 (h!26486 (_ BitVec 64)) (t!36641 List!25281)) )
))
(declare-fun arrayNoDuplicates!0 (array!74584 (_ BitVec 32) List!25281) Bool)

(assert (=> b!1151555 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25278)))

(declare-fun lt!515594 () Unit!37796)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74584 (_ BitVec 64) (_ BitVec 32) List!25281) Unit!37796)

(assert (=> b!1151555 (= lt!515594 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25278))))

(assert (=> b!1151555 false))

(declare-fun b!1151556 () Bool)

(declare-fun e!654992 () Bool)

(declare-fun e!654999 () Bool)

(declare-fun mapRes!45161 () Bool)

(assert (=> b!1151556 (= e!654992 (and e!654999 mapRes!45161))))

(declare-fun condMapEmpty!45161 () Bool)

(declare-fun mapDefault!45161 () ValueCell!13736)

