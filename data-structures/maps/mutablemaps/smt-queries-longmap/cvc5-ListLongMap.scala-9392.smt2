; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111824 () Bool)

(assert start!111824)

(declare-fun b_free!30445 () Bool)

(declare-fun b_next!30445 () Bool)

(assert (=> start!111824 (= b_free!30445 (not b_next!30445))))

(declare-fun tp!106811 () Bool)

(declare-fun b_and!48993 () Bool)

(assert (=> start!111824 (= tp!106811 b_and!48993)))

(declare-fun b!1324568 () Bool)

(declare-fun res!879270 () Bool)

(declare-fun e!755152 () Bool)

(assert (=> b!1324568 (=> (not res!879270) (not e!755152))))

(declare-datatypes ((array!89399 0))(
  ( (array!89400 (arr!43169 (Array (_ BitVec 32) (_ BitVec 64))) (size!43720 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89399)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89399 (_ BitVec 32)) Bool)

(assert (=> b!1324568 (= res!879270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324569 () Bool)

(declare-fun res!879273 () Bool)

(assert (=> b!1324569 (=> (not res!879273) (not e!755152))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324569 (= res!879273 (validKeyInArray!0 (select (arr!43169 _keys!1609) from!2000)))))

(declare-fun b!1324570 () Bool)

(declare-fun res!879269 () Bool)

(assert (=> b!1324570 (=> (not res!879269) (not e!755152))))

(declare-datatypes ((V!53457 0))(
  ( (V!53458 (val!18207 Int)) )
))
(declare-fun zeroValue!1279 () V!53457)

(declare-datatypes ((ValueCell!17234 0))(
  ( (ValueCellFull!17234 (v!20835 V!53457)) (EmptyCell!17234) )
))
(declare-datatypes ((array!89401 0))(
  ( (array!89402 (arr!43170 (Array (_ BitVec 32) ValueCell!17234)) (size!43721 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89401)

(declare-fun minValue!1279 () V!53457)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((tuple2!23630 0))(
  ( (tuple2!23631 (_1!11825 (_ BitVec 64)) (_2!11825 V!53457)) )
))
(declare-datatypes ((List!30801 0))(
  ( (Nil!30798) (Cons!30797 (h!32006 tuple2!23630) (t!44734 List!30801)) )
))
(declare-datatypes ((ListLongMap!21299 0))(
  ( (ListLongMap!21300 (toList!10665 List!30801)) )
))
(declare-fun contains!8756 (ListLongMap!21299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5602 (array!89399 array!89401 (_ BitVec 32) (_ BitVec 32) V!53457 V!53457 (_ BitVec 32) Int) ListLongMap!21299)

(assert (=> b!1324570 (= res!879269 (contains!8756 (getCurrentListMap!5602 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324571 () Bool)

(declare-fun e!755148 () Bool)

(declare-fun tp_is_empty!36265 () Bool)

(assert (=> b!1324571 (= e!755148 tp_is_empty!36265)))

(declare-fun mapNonEmpty!56045 () Bool)

(declare-fun mapRes!56045 () Bool)

(declare-fun tp!106812 () Bool)

(assert (=> mapNonEmpty!56045 (= mapRes!56045 (and tp!106812 e!755148))))

(declare-fun mapRest!56045 () (Array (_ BitVec 32) ValueCell!17234))

(declare-fun mapKey!56045 () (_ BitVec 32))

(declare-fun mapValue!56045 () ValueCell!17234)

(assert (=> mapNonEmpty!56045 (= (arr!43170 _values!1337) (store mapRest!56045 mapKey!56045 mapValue!56045))))

(declare-fun res!879268 () Bool)

(assert (=> start!111824 (=> (not res!879268) (not e!755152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111824 (= res!879268 (validMask!0 mask!2019))))

(assert (=> start!111824 e!755152))

(declare-fun array_inv!32529 (array!89399) Bool)

(assert (=> start!111824 (array_inv!32529 _keys!1609)))

(assert (=> start!111824 true))

(assert (=> start!111824 tp_is_empty!36265))

(declare-fun e!755151 () Bool)

(declare-fun array_inv!32530 (array!89401) Bool)

(assert (=> start!111824 (and (array_inv!32530 _values!1337) e!755151)))

(assert (=> start!111824 tp!106811))

(declare-fun mapIsEmpty!56045 () Bool)

(assert (=> mapIsEmpty!56045 mapRes!56045))

(declare-fun b!1324572 () Bool)

(declare-fun res!879274 () Bool)

(assert (=> b!1324572 (=> (not res!879274) (not e!755152))))

(assert (=> b!1324572 (= res!879274 (not (= (select (arr!43169 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1324573 () Bool)

(declare-fun e!755150 () Bool)

(assert (=> b!1324573 (= e!755151 (and e!755150 mapRes!56045))))

(declare-fun condMapEmpty!56045 () Bool)

(declare-fun mapDefault!56045 () ValueCell!17234)

