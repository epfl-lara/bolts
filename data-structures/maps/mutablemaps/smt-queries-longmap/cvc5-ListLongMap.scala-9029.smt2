; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108994 () Bool)

(assert start!108994)

(declare-fun b_free!28447 () Bool)

(declare-fun b_next!28447 () Bool)

(assert (=> start!108994 (= b_free!28447 (not b_next!28447))))

(declare-fun tp!100461 () Bool)

(declare-fun b_and!46547 () Bool)

(assert (=> start!108994 (= tp!100461 b_and!46547)))

(declare-fun mapNonEmpty!52691 () Bool)

(declare-fun mapRes!52691 () Bool)

(declare-fun tp!100460 () Bool)

(declare-fun e!735205 () Bool)

(assert (=> mapNonEmpty!52691 (= mapRes!52691 (and tp!100460 e!735205))))

(declare-datatypes ((V!50553 0))(
  ( (V!50554 (val!17118 Int)) )
))
(declare-datatypes ((ValueCell!16145 0))(
  ( (ValueCellFull!16145 (v!19719 V!50553)) (EmptyCell!16145) )
))
(declare-fun mapRest!52691 () (Array (_ BitVec 32) ValueCell!16145))

(declare-fun mapKey!52691 () (_ BitVec 32))

(declare-datatypes ((array!85179 0))(
  ( (array!85180 (arr!41086 (Array (_ BitVec 32) ValueCell!16145)) (size!41637 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85179)

(declare-fun mapValue!52691 () ValueCell!16145)

(assert (=> mapNonEmpty!52691 (= (arr!41086 _values!1445) (store mapRest!52691 mapKey!52691 mapValue!52691))))

(declare-fun b!1287301 () Bool)

(declare-fun tp_is_empty!34087 () Bool)

(assert (=> b!1287301 (= e!735205 tp_is_empty!34087)))

(declare-fun b!1287302 () Bool)

(declare-fun res!855033 () Bool)

(declare-fun e!735207 () Bool)

(assert (=> b!1287302 (=> (not res!855033) (not e!735207))))

(declare-datatypes ((array!85181 0))(
  ( (array!85182 (arr!41087 (Array (_ BitVec 32) (_ BitVec 64))) (size!41638 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85181)

(declare-datatypes ((List!29297 0))(
  ( (Nil!29294) (Cons!29293 (h!30502 (_ BitVec 64)) (t!42868 List!29297)) )
))
(declare-fun arrayNoDuplicates!0 (array!85181 (_ BitVec 32) List!29297) Bool)

(assert (=> b!1287302 (= res!855033 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29294))))

(declare-fun b!1287303 () Bool)

(declare-fun res!855032 () Bool)

(assert (=> b!1287303 (=> (not res!855032) (not e!735207))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1287303 (= res!855032 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41638 _keys!1741))))))

(declare-fun b!1287304 () Bool)

(declare-fun res!855026 () Bool)

(assert (=> b!1287304 (=> (not res!855026) (not e!735207))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85181 (_ BitVec 32)) Bool)

(assert (=> b!1287304 (= res!855026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287305 () Bool)

(declare-fun e!735208 () Bool)

(declare-fun e!735204 () Bool)

(assert (=> b!1287305 (= e!735208 (and e!735204 mapRes!52691))))

(declare-fun condMapEmpty!52691 () Bool)

(declare-fun mapDefault!52691 () ValueCell!16145)

