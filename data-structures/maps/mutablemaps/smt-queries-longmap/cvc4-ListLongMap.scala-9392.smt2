; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111828 () Bool)

(assert start!111828)

(declare-fun b_free!30449 () Bool)

(declare-fun b_next!30449 () Bool)

(assert (=> start!111828 (= b_free!30449 (not b_next!30449))))

(declare-fun tp!106823 () Bool)

(declare-fun b_and!48997 () Bool)

(assert (=> start!111828 (= tp!106823 b_and!48997)))

(declare-fun mapNonEmpty!56051 () Bool)

(declare-fun mapRes!56051 () Bool)

(declare-fun tp!106824 () Bool)

(declare-fun e!755180 () Bool)

(assert (=> mapNonEmpty!56051 (= mapRes!56051 (and tp!106824 e!755180))))

(declare-datatypes ((V!53461 0))(
  ( (V!53462 (val!18209 Int)) )
))
(declare-datatypes ((ValueCell!17236 0))(
  ( (ValueCellFull!17236 (v!20837 V!53461)) (EmptyCell!17236) )
))
(declare-fun mapValue!56051 () ValueCell!17236)

(declare-datatypes ((array!89407 0))(
  ( (array!89408 (arr!43173 (Array (_ BitVec 32) ValueCell!17236)) (size!43724 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89407)

(declare-fun mapKey!56051 () (_ BitVec 32))

(declare-fun mapRest!56051 () (Array (_ BitVec 32) ValueCell!17236))

(assert (=> mapNonEmpty!56051 (= (arr!43173 _values!1337) (store mapRest!56051 mapKey!56051 mapValue!56051))))

(declare-fun b!1324634 () Bool)

(declare-fun res!879315 () Bool)

(declare-fun e!755179 () Bool)

(assert (=> b!1324634 (=> (not res!879315) (not e!755179))))

(declare-datatypes ((array!89409 0))(
  ( (array!89410 (arr!43174 (Array (_ BitVec 32) (_ BitVec 64))) (size!43725 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89409)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324634 (= res!879315 (validKeyInArray!0 (select (arr!43174 _keys!1609) from!2000)))))

(declare-fun b!1324635 () Bool)

(declare-fun res!879319 () Bool)

(assert (=> b!1324635 (=> (not res!879319) (not e!755179))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324635 (= res!879319 (and (= (size!43724 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43725 _keys!1609) (size!43724 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324636 () Bool)

(declare-fun res!879316 () Bool)

(assert (=> b!1324636 (=> (not res!879316) (not e!755179))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1324636 (= res!879316 (not (= (select (arr!43174 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1324637 () Bool)

(declare-fun res!879317 () Bool)

(assert (=> b!1324637 (=> (not res!879317) (not e!755179))))

(declare-datatypes ((List!30804 0))(
  ( (Nil!30801) (Cons!30800 (h!32009 (_ BitVec 64)) (t!44737 List!30804)) )
))
(declare-fun arrayNoDuplicates!0 (array!89409 (_ BitVec 32) List!30804) Bool)

(assert (=> b!1324637 (= res!879317 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30801))))

(declare-fun res!879321 () Bool)

(assert (=> start!111828 (=> (not res!879321) (not e!755179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111828 (= res!879321 (validMask!0 mask!2019))))

(assert (=> start!111828 e!755179))

(declare-fun array_inv!32533 (array!89409) Bool)

(assert (=> start!111828 (array_inv!32533 _keys!1609)))

(assert (=> start!111828 true))

(declare-fun tp_is_empty!36269 () Bool)

(assert (=> start!111828 tp_is_empty!36269))

(declare-fun e!755181 () Bool)

(declare-fun array_inv!32534 (array!89407) Bool)

(assert (=> start!111828 (and (array_inv!32534 _values!1337) e!755181)))

(assert (=> start!111828 tp!106823))

(declare-fun b!1324638 () Bool)

(assert (=> b!1324638 (= e!755179 false)))

(declare-fun zeroValue!1279 () V!53461)

(declare-fun minValue!1279 () V!53461)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23634 0))(
  ( (tuple2!23635 (_1!11827 (_ BitVec 64)) (_2!11827 V!53461)) )
))
(declare-datatypes ((List!30805 0))(
  ( (Nil!30802) (Cons!30801 (h!32010 tuple2!23634) (t!44738 List!30805)) )
))
(declare-datatypes ((ListLongMap!21303 0))(
  ( (ListLongMap!21304 (toList!10667 List!30805)) )
))
(declare-fun lt!589429 () ListLongMap!21303)

(declare-fun getCurrentListMapNoExtraKeys!6302 (array!89409 array!89407 (_ BitVec 32) (_ BitVec 32) V!53461 V!53461 (_ BitVec 32) Int) ListLongMap!21303)

(assert (=> b!1324638 (= lt!589429 (getCurrentListMapNoExtraKeys!6302 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1324639 () Bool)

(declare-fun res!879318 () Bool)

(assert (=> b!1324639 (=> (not res!879318) (not e!755179))))

(assert (=> b!1324639 (= res!879318 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43725 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324640 () Bool)

(declare-fun res!879320 () Bool)

(assert (=> b!1324640 (=> (not res!879320) (not e!755179))))

(declare-fun contains!8758 (ListLongMap!21303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5604 (array!89409 array!89407 (_ BitVec 32) (_ BitVec 32) V!53461 V!53461 (_ BitVec 32) Int) ListLongMap!21303)

(assert (=> b!1324640 (= res!879320 (contains!8758 (getCurrentListMap!5604 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324641 () Bool)

(declare-fun e!755182 () Bool)

(assert (=> b!1324641 (= e!755181 (and e!755182 mapRes!56051))))

(declare-fun condMapEmpty!56051 () Bool)

(declare-fun mapDefault!56051 () ValueCell!17236)

