; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83942 () Bool)

(assert start!83942)

(declare-fun b_free!19723 () Bool)

(declare-fun b_next!19723 () Bool)

(assert (=> start!83942 (= b_free!19723 (not b_next!19723))))

(declare-fun tp!68611 () Bool)

(declare-fun b_and!31553 () Bool)

(assert (=> start!83942 (= tp!68611 b_and!31553)))

(declare-fun mapNonEmpty!36104 () Bool)

(declare-fun mapRes!36104 () Bool)

(declare-fun tp!68612 () Bool)

(declare-fun e!552705 () Bool)

(assert (=> mapNonEmpty!36104 (= mapRes!36104 (and tp!68612 e!552705))))

(declare-datatypes ((V!35273 0))(
  ( (V!35274 (val!11409 Int)) )
))
(declare-datatypes ((ValueCell!10877 0))(
  ( (ValueCellFull!10877 (v!13971 V!35273)) (EmptyCell!10877) )
))
(declare-fun mapRest!36104 () (Array (_ BitVec 32) ValueCell!10877))

(declare-datatypes ((array!61441 0))(
  ( (array!61442 (arr!29574 (Array (_ BitVec 32) ValueCell!10877)) (size!30054 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61441)

(declare-fun mapKey!36104 () (_ BitVec 32))

(declare-fun mapValue!36104 () ValueCell!10877)

(assert (=> mapNonEmpty!36104 (= (arr!29574 _values!1278) (store mapRest!36104 mapKey!36104 mapValue!36104))))

(declare-fun b!980546 () Bool)

(declare-fun res!656340 () Bool)

(declare-fun e!552710 () Bool)

(assert (=> b!980546 (=> (not res!656340) (not e!552710))))

(declare-datatypes ((array!61443 0))(
  ( (array!61444 (arr!29575 (Array (_ BitVec 32) (_ BitVec 64))) (size!30055 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61443)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980546 (= res!656340 (validKeyInArray!0 (select (arr!29575 _keys!1544) from!1932)))))

(declare-fun b!980547 () Bool)

(declare-fun tp_is_empty!22717 () Bool)

(assert (=> b!980547 (= e!552705 tp_is_empty!22717)))

(declare-fun b!980548 () Bool)

(declare-fun res!656341 () Bool)

(assert (=> b!980548 (=> (not res!656341) (not e!552710))))

(assert (=> b!980548 (= res!656341 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30055 _keys!1544))))))

(declare-fun b!980549 () Bool)

(declare-fun res!656346 () Bool)

(assert (=> b!980549 (=> (not res!656346) (not e!552710))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!980549 (= res!656346 (and (= (size!30054 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30055 _keys!1544) (size!30054 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980550 () Bool)

(declare-fun res!656342 () Bool)

(assert (=> b!980550 (=> (not res!656342) (not e!552710))))

(declare-datatypes ((List!20638 0))(
  ( (Nil!20635) (Cons!20634 (h!21796 (_ BitVec 64)) (t!29325 List!20638)) )
))
(declare-fun arrayNoDuplicates!0 (array!61443 (_ BitVec 32) List!20638) Bool)

(assert (=> b!980550 (= res!656342 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20635))))

(declare-fun b!980551 () Bool)

(declare-fun e!552708 () Bool)

(declare-fun e!552709 () Bool)

(assert (=> b!980551 (= e!552708 (and e!552709 mapRes!36104))))

(declare-fun condMapEmpty!36104 () Bool)

(declare-fun mapDefault!36104 () ValueCell!10877)

