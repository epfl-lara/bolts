; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111816 () Bool)

(assert start!111816)

(declare-fun b_free!30437 () Bool)

(declare-fun b_next!30437 () Bool)

(assert (=> start!111816 (= b_free!30437 (not b_next!30437))))

(declare-fun tp!106787 () Bool)

(declare-fun b_and!48985 () Bool)

(assert (=> start!111816 (= tp!106787 b_and!48985)))

(declare-fun b!1324466 () Bool)

(declare-fun e!755091 () Bool)

(declare-fun tp_is_empty!36257 () Bool)

(assert (=> b!1324466 (= e!755091 tp_is_empty!36257)))

(declare-fun mapIsEmpty!56033 () Bool)

(declare-fun mapRes!56033 () Bool)

(assert (=> mapIsEmpty!56033 mapRes!56033))

(declare-fun b!1324467 () Bool)

(declare-fun res!879205 () Bool)

(declare-fun e!755089 () Bool)

(assert (=> b!1324467 (=> (not res!879205) (not e!755089))))

(declare-datatypes ((array!89383 0))(
  ( (array!89384 (arr!43161 (Array (_ BitVec 32) (_ BitVec 64))) (size!43712 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89383)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89383 (_ BitVec 32)) Bool)

(assert (=> b!1324467 (= res!879205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!879203 () Bool)

(assert (=> start!111816 (=> (not res!879203) (not e!755089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111816 (= res!879203 (validMask!0 mask!2019))))

(assert (=> start!111816 e!755089))

(declare-fun array_inv!32523 (array!89383) Bool)

(assert (=> start!111816 (array_inv!32523 _keys!1609)))

(assert (=> start!111816 true))

(assert (=> start!111816 tp_is_empty!36257))

(declare-datatypes ((V!53445 0))(
  ( (V!53446 (val!18203 Int)) )
))
(declare-datatypes ((ValueCell!17230 0))(
  ( (ValueCellFull!17230 (v!20831 V!53445)) (EmptyCell!17230) )
))
(declare-datatypes ((array!89385 0))(
  ( (array!89386 (arr!43162 (Array (_ BitVec 32) ValueCell!17230)) (size!43713 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89385)

(declare-fun e!755092 () Bool)

(declare-fun array_inv!32524 (array!89385) Bool)

(assert (=> start!111816 (and (array_inv!32524 _values!1337) e!755092)))

(assert (=> start!111816 tp!106787))

(declare-fun b!1324468 () Bool)

(assert (=> b!1324468 (= e!755089 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53445)

(declare-fun minValue!1279 () V!53445)

(declare-fun lt!589411 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23624 0))(
  ( (tuple2!23625 (_1!11822 (_ BitVec 64)) (_2!11822 V!53445)) )
))
(declare-datatypes ((List!30796 0))(
  ( (Nil!30793) (Cons!30792 (h!32001 tuple2!23624) (t!44729 List!30796)) )
))
(declare-datatypes ((ListLongMap!21293 0))(
  ( (ListLongMap!21294 (toList!10662 List!30796)) )
))
(declare-fun contains!8753 (ListLongMap!21293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5599 (array!89383 array!89385 (_ BitVec 32) (_ BitVec 32) V!53445 V!53445 (_ BitVec 32) Int) ListLongMap!21293)

(assert (=> b!1324468 (= lt!589411 (contains!8753 (getCurrentListMap!5599 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324469 () Bool)

(declare-fun res!879204 () Bool)

(assert (=> b!1324469 (=> (not res!879204) (not e!755089))))

(assert (=> b!1324469 (= res!879204 (and (= (size!43713 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43712 _keys!1609) (size!43713 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324470 () Bool)

(declare-fun e!755090 () Bool)

(assert (=> b!1324470 (= e!755092 (and e!755090 mapRes!56033))))

(declare-fun condMapEmpty!56033 () Bool)

(declare-fun mapDefault!56033 () ValueCell!17230)

