; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98454 () Bool)

(assert start!98454)

(declare-fun b_free!24023 () Bool)

(declare-fun b_next!24023 () Bool)

(assert (=> start!98454 (= b_free!24023 (not b_next!24023))))

(declare-fun tp!84780 () Bool)

(declare-fun b_and!38909 () Bool)

(assert (=> start!98454 (= tp!84780 b_and!38909)))

(declare-fun b!1136248 () Bool)

(declare-fun res!758466 () Bool)

(declare-fun e!646637 () Bool)

(assert (=> b!1136248 (=> (not res!758466) (not e!646637))))

(declare-datatypes ((array!73928 0))(
  ( (array!73929 (arr!35611 (Array (_ BitVec 32) (_ BitVec 64))) (size!36148 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73928)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1136248 (= res!758466 (= (select (arr!35611 _keys!1208) i!673) k!934))))

(declare-fun b!1136249 () Bool)

(declare-fun e!646636 () Bool)

(declare-fun e!646631 () Bool)

(assert (=> b!1136249 (= e!646636 e!646631)))

(declare-fun res!758465 () Bool)

(assert (=> b!1136249 (=> res!758465 e!646631)))

(declare-datatypes ((V!43197 0))(
  ( (V!43198 (val!14333 Int)) )
))
(declare-datatypes ((tuple2!18188 0))(
  ( (tuple2!18189 (_1!9104 (_ BitVec 64)) (_2!9104 V!43197)) )
))
(declare-datatypes ((List!24998 0))(
  ( (Nil!24995) (Cons!24994 (h!26203 tuple2!18188) (t!36020 List!24998)) )
))
(declare-datatypes ((ListLongMap!16169 0))(
  ( (ListLongMap!16170 (toList!8100 List!24998)) )
))
(declare-fun lt!505177 () ListLongMap!16169)

(declare-fun contains!6609 (ListLongMap!16169 (_ BitVec 64)) Bool)

(assert (=> b!1136249 (= res!758465 (not (contains!6609 lt!505177 k!934)))))

(declare-fun zeroValue!944 () V!43197)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13567 0))(
  ( (ValueCellFull!13567 (v!16971 V!43197)) (EmptyCell!13567) )
))
(declare-datatypes ((array!73930 0))(
  ( (array!73931 (arr!35612 (Array (_ BitVec 32) ValueCell!13567)) (size!36149 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73930)

(declare-fun minValue!944 () V!43197)

(declare-fun getCurrentListMapNoExtraKeys!4548 (array!73928 array!73930 (_ BitVec 32) (_ BitVec 32) V!43197 V!43197 (_ BitVec 32) Int) ListLongMap!16169)

(assert (=> b!1136249 (= lt!505177 (getCurrentListMapNoExtraKeys!4548 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136250 () Bool)

(declare-datatypes ((Unit!37162 0))(
  ( (Unit!37163) )
))
(declare-fun e!646638 () Unit!37162)

(declare-fun Unit!37164 () Unit!37162)

(assert (=> b!1136250 (= e!646638 Unit!37164)))

(declare-fun b!1136251 () Bool)

(declare-fun res!758459 () Bool)

(assert (=> b!1136251 (=> (not res!758459) (not e!646637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73928 (_ BitVec 32)) Bool)

(assert (=> b!1136251 (= res!758459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1136252 () Bool)

(declare-fun e!646629 () Bool)

(assert (=> b!1136252 (= e!646637 e!646629)))

(declare-fun res!758462 () Bool)

(assert (=> b!1136252 (=> (not res!758462) (not e!646629))))

(declare-fun lt!505163 () array!73928)

(assert (=> b!1136252 (= res!758462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505163 mask!1564))))

(assert (=> b!1136252 (= lt!505163 (array!73929 (store (arr!35611 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36148 _keys!1208)))))

(declare-fun b!1136253 () Bool)

(declare-fun e!646634 () Bool)

(declare-fun call!49820 () ListLongMap!16169)

(declare-fun call!49821 () ListLongMap!16169)

(assert (=> b!1136253 (= e!646634 (= call!49820 call!49821))))

(declare-fun b!1136254 () Bool)

(declare-fun e!646627 () Bool)

(declare-fun arrayContainsKey!0 (array!73928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136254 (= e!646627 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136255 () Bool)

(declare-fun call!49822 () Bool)

(assert (=> b!1136255 call!49822))

(declare-fun lt!505165 () Unit!37162)

(declare-fun call!49818 () Unit!37162)

(assert (=> b!1136255 (= lt!505165 call!49818)))

(declare-fun e!646625 () Unit!37162)

(assert (=> b!1136255 (= e!646625 lt!505165)))

(declare-fun mapIsEmpty!44654 () Bool)

(declare-fun mapRes!44654 () Bool)

(assert (=> mapIsEmpty!44654 mapRes!44654))

(declare-fun b!1136256 () Bool)

(declare-fun res!758453 () Bool)

(assert (=> b!1136256 (=> (not res!758453) (not e!646637))))

(assert (=> b!1136256 (= res!758453 (and (= (size!36149 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36148 _keys!1208) (size!36149 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136257 () Bool)

(declare-fun res!758452 () Bool)

(assert (=> b!1136257 (=> (not res!758452) (not e!646637))))

(assert (=> b!1136257 (= res!758452 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36148 _keys!1208))))))

(declare-fun b!1136258 () Bool)

(declare-fun lt!505172 () Unit!37162)

(assert (=> b!1136258 (= e!646638 lt!505172)))

(assert (=> b!1136258 (= lt!505172 call!49818)))

(assert (=> b!1136258 call!49822))

(declare-fun c!111023 () Bool)

(declare-fun bm!49814 () Bool)

(declare-fun call!49823 () Unit!37162)

(declare-fun c!111024 () Bool)

(declare-fun addStillContains!755 (ListLongMap!16169 (_ BitVec 64) V!43197 (_ BitVec 64)) Unit!37162)

(assert (=> bm!49814 (= call!49823 (addStillContains!755 lt!505177 (ite (or c!111024 c!111023) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111024 c!111023) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1136260 () Bool)

(declare-fun lt!505170 () Bool)

(declare-fun e!646626 () Bool)

(assert (=> b!1136260 (= e!646626 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505170) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136261 () Bool)

(declare-fun res!758454 () Bool)

(assert (=> b!1136261 (=> (not res!758454) (not e!646629))))

(declare-datatypes ((List!24999 0))(
  ( (Nil!24996) (Cons!24995 (h!26204 (_ BitVec 64)) (t!36021 List!24999)) )
))
(declare-fun arrayNoDuplicates!0 (array!73928 (_ BitVec 32) List!24999) Bool)

(assert (=> b!1136261 (= res!758454 (arrayNoDuplicates!0 lt!505163 #b00000000000000000000000000000000 Nil!24996))))

(declare-fun b!1136262 () Bool)

(declare-fun e!646640 () Bool)

(declare-fun e!646639 () Bool)

(assert (=> b!1136262 (= e!646640 (and e!646639 mapRes!44654))))

(declare-fun condMapEmpty!44654 () Bool)

(declare-fun mapDefault!44654 () ValueCell!13567)

