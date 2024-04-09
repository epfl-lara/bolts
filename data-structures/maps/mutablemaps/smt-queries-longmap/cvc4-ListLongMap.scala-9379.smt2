; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111750 () Bool)

(assert start!111750)

(declare-fun b_free!30371 () Bool)

(declare-fun b_next!30371 () Bool)

(assert (=> start!111750 (= b_free!30371 (not b_next!30371))))

(declare-fun tp!106590 () Bool)

(declare-fun b_and!48911 () Bool)

(assert (=> start!111750 (= tp!106590 b_and!48911)))

(declare-fun mapIsEmpty!55934 () Bool)

(declare-fun mapRes!55934 () Bool)

(assert (=> mapIsEmpty!55934 mapRes!55934))

(declare-fun b!1323609 () Bool)

(declare-fun e!754597 () Bool)

(declare-fun tp_is_empty!36191 () Bool)

(assert (=> b!1323609 (= e!754597 tp_is_empty!36191)))

(declare-fun b!1323610 () Bool)

(declare-fun res!878653 () Bool)

(declare-fun e!754596 () Bool)

(assert (=> b!1323610 (=> (not res!878653) (not e!754596))))

(declare-datatypes ((array!89257 0))(
  ( (array!89258 (arr!43098 (Array (_ BitVec 32) (_ BitVec 64))) (size!43649 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89257)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323610 (= res!878653 (validKeyInArray!0 (select (arr!43098 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55934 () Bool)

(declare-fun tp!106589 () Bool)

(assert (=> mapNonEmpty!55934 (= mapRes!55934 (and tp!106589 e!754597))))

(declare-datatypes ((V!53357 0))(
  ( (V!53358 (val!18170 Int)) )
))
(declare-datatypes ((ValueCell!17197 0))(
  ( (ValueCellFull!17197 (v!20798 V!53357)) (EmptyCell!17197) )
))
(declare-fun mapRest!55934 () (Array (_ BitVec 32) ValueCell!17197))

(declare-datatypes ((array!89259 0))(
  ( (array!89260 (arr!43099 (Array (_ BitVec 32) ValueCell!17197)) (size!43650 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89259)

(declare-fun mapKey!55934 () (_ BitVec 32))

(declare-fun mapValue!55934 () ValueCell!17197)

(assert (=> mapNonEmpty!55934 (= (arr!43099 _values!1337) (store mapRest!55934 mapKey!55934 mapValue!55934))))

(declare-fun res!878649 () Bool)

(assert (=> start!111750 (=> (not res!878649) (not e!754596))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111750 (= res!878649 (validMask!0 mask!2019))))

(assert (=> start!111750 e!754596))

(declare-fun array_inv!32491 (array!89257) Bool)

(assert (=> start!111750 (array_inv!32491 _keys!1609)))

(assert (=> start!111750 true))

(assert (=> start!111750 tp_is_empty!36191))

(declare-fun e!754594 () Bool)

(declare-fun array_inv!32492 (array!89259) Bool)

(assert (=> start!111750 (and (array_inv!32492 _values!1337) e!754594)))

(assert (=> start!111750 tp!106590))

(declare-fun b!1323611 () Bool)

(declare-fun res!878656 () Bool)

(assert (=> b!1323611 (=> (not res!878656) (not e!754596))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53357)

(declare-fun minValue!1279 () V!53357)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23576 0))(
  ( (tuple2!23577 (_1!11798 (_ BitVec 64)) (_2!11798 V!53357)) )
))
(declare-datatypes ((List!30749 0))(
  ( (Nil!30746) (Cons!30745 (h!31954 tuple2!23576) (t!44676 List!30749)) )
))
(declare-datatypes ((ListLongMap!21245 0))(
  ( (ListLongMap!21246 (toList!10638 List!30749)) )
))
(declare-fun contains!8729 (ListLongMap!21245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5575 (array!89257 array!89259 (_ BitVec 32) (_ BitVec 32) V!53357 V!53357 (_ BitVec 32) Int) ListLongMap!21245)

(assert (=> b!1323611 (= res!878656 (contains!8729 (getCurrentListMap!5575 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1323612 () Bool)

(declare-fun res!878650 () Bool)

(assert (=> b!1323612 (=> (not res!878650) (not e!754596))))

(assert (=> b!1323612 (= res!878650 (not (= (select (arr!43098 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323613 () Bool)

(declare-fun res!878654 () Bool)

(assert (=> b!1323613 (=> (not res!878654) (not e!754596))))

(declare-datatypes ((List!30750 0))(
  ( (Nil!30747) (Cons!30746 (h!31955 (_ BitVec 64)) (t!44677 List!30750)) )
))
(declare-fun arrayNoDuplicates!0 (array!89257 (_ BitVec 32) List!30750) Bool)

(assert (=> b!1323613 (= res!878654 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30747))))

(declare-fun b!1323614 () Bool)

(declare-fun e!754595 () Bool)

(assert (=> b!1323614 (= e!754595 tp_is_empty!36191)))

(declare-fun b!1323615 () Bool)

(assert (=> b!1323615 (= e!754594 (and e!754595 mapRes!55934))))

(declare-fun condMapEmpty!55934 () Bool)

(declare-fun mapDefault!55934 () ValueCell!17197)

