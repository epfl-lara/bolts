; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111798 () Bool)

(assert start!111798)

(declare-fun b_free!30419 () Bool)

(declare-fun b_next!30419 () Bool)

(assert (=> start!111798 (= b_free!30419 (not b_next!30419))))

(declare-fun tp!106733 () Bool)

(declare-fun b_and!48967 () Bool)

(assert (=> start!111798 (= tp!106733 b_and!48967)))

(declare-fun b!1324223 () Bool)

(declare-fun res!879042 () Bool)

(declare-fun e!754957 () Bool)

(assert (=> b!1324223 (=> (not res!879042) (not e!754957))))

(declare-datatypes ((array!89347 0))(
  ( (array!89348 (arr!43143 (Array (_ BitVec 32) (_ BitVec 64))) (size!43694 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89347)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53421 0))(
  ( (V!53422 (val!18194 Int)) )
))
(declare-datatypes ((ValueCell!17221 0))(
  ( (ValueCellFull!17221 (v!20822 V!53421)) (EmptyCell!17221) )
))
(declare-datatypes ((array!89349 0))(
  ( (array!89350 (arr!43144 (Array (_ BitVec 32) ValueCell!17221)) (size!43695 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89349)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324223 (= res!879042 (and (= (size!43695 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43694 _keys!1609) (size!43695 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324224 () Bool)

(declare-fun e!754954 () Bool)

(declare-fun tp_is_empty!36239 () Bool)

(assert (=> b!1324224 (= e!754954 tp_is_empty!36239)))

(declare-fun b!1324225 () Bool)

(declare-fun res!879039 () Bool)

(assert (=> b!1324225 (=> (not res!879039) (not e!754957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89347 (_ BitVec 32)) Bool)

(assert (=> b!1324225 (= res!879039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324226 () Bool)

(assert (=> b!1324226 (= e!754957 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53421)

(declare-fun minValue!1279 () V!53421)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589393 () Bool)

(declare-datatypes ((tuple2!23606 0))(
  ( (tuple2!23607 (_1!11813 (_ BitVec 64)) (_2!11813 V!53421)) )
))
(declare-datatypes ((List!30780 0))(
  ( (Nil!30777) (Cons!30776 (h!31985 tuple2!23606) (t!44713 List!30780)) )
))
(declare-datatypes ((ListLongMap!21275 0))(
  ( (ListLongMap!21276 (toList!10653 List!30780)) )
))
(declare-fun contains!8744 (ListLongMap!21275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5590 (array!89347 array!89349 (_ BitVec 32) (_ BitVec 32) V!53421 V!53421 (_ BitVec 32) Int) ListLongMap!21275)

(assert (=> b!1324226 (= lt!589393 (contains!8744 (getCurrentListMap!5590 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324227 () Bool)

(declare-fun e!754956 () Bool)

(assert (=> b!1324227 (= e!754956 tp_is_empty!36239)))

(declare-fun b!1324228 () Bool)

(declare-fun res!879043 () Bool)

(assert (=> b!1324228 (=> (not res!879043) (not e!754957))))

(declare-datatypes ((List!30781 0))(
  ( (Nil!30778) (Cons!30777 (h!31986 (_ BitVec 64)) (t!44714 List!30781)) )
))
(declare-fun arrayNoDuplicates!0 (array!89347 (_ BitVec 32) List!30781) Bool)

(assert (=> b!1324228 (= res!879043 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30778))))

(declare-fun mapIsEmpty!56006 () Bool)

(declare-fun mapRes!56006 () Bool)

(assert (=> mapIsEmpty!56006 mapRes!56006))

(declare-fun res!879041 () Bool)

(assert (=> start!111798 (=> (not res!879041) (not e!754957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111798 (= res!879041 (validMask!0 mask!2019))))

(assert (=> start!111798 e!754957))

(declare-fun array_inv!32513 (array!89347) Bool)

(assert (=> start!111798 (array_inv!32513 _keys!1609)))

(assert (=> start!111798 true))

(assert (=> start!111798 tp_is_empty!36239))

(declare-fun e!754955 () Bool)

(declare-fun array_inv!32514 (array!89349) Bool)

(assert (=> start!111798 (and (array_inv!32514 _values!1337) e!754955)))

(assert (=> start!111798 tp!106733))

(declare-fun mapNonEmpty!56006 () Bool)

(declare-fun tp!106734 () Bool)

(assert (=> mapNonEmpty!56006 (= mapRes!56006 (and tp!106734 e!754956))))

(declare-fun mapKey!56006 () (_ BitVec 32))

(declare-fun mapRest!56006 () (Array (_ BitVec 32) ValueCell!17221))

(declare-fun mapValue!56006 () ValueCell!17221)

(assert (=> mapNonEmpty!56006 (= (arr!43144 _values!1337) (store mapRest!56006 mapKey!56006 mapValue!56006))))

(declare-fun b!1324229 () Bool)

(assert (=> b!1324229 (= e!754955 (and e!754954 mapRes!56006))))

(declare-fun condMapEmpty!56006 () Bool)

(declare-fun mapDefault!56006 () ValueCell!17221)

