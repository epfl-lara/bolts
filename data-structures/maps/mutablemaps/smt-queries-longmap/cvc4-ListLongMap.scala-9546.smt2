; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113178 () Bool)

(assert start!113178)

(declare-fun b_free!31193 () Bool)

(declare-fun b_next!31193 () Bool)

(assert (=> start!113178 (= b_free!31193 (not b_next!31193))))

(declare-fun tp!109384 () Bool)

(declare-fun b_and!50303 () Bool)

(assert (=> start!113178 (= tp!109384 b_and!50303)))

(declare-fun b!1341460 () Bool)

(declare-fun res!890025 () Bool)

(declare-fun e!763901 () Bool)

(assert (=> b!1341460 (=> (not res!890025) (not e!763901))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341460 (= res!890025 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341461 () Bool)

(declare-fun res!890023 () Bool)

(assert (=> b!1341461 (=> (not res!890023) (not e!763901))))

(declare-datatypes ((array!91195 0))(
  ( (array!91196 (arr!44049 (Array (_ BitVec 32) (_ BitVec 64))) (size!44600 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91195)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91195 (_ BitVec 32)) Bool)

(assert (=> b!1341461 (= res!890023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341462 () Bool)

(declare-fun res!890028 () Bool)

(assert (=> b!1341462 (=> (not res!890028) (not e!763901))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341462 (= res!890028 (not (= (select (arr!44049 _keys!1571) from!1960) k!1142)))))

(declare-fun res!890022 () Bool)

(assert (=> start!113178 (=> (not res!890022) (not e!763901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113178 (= res!890022 (validMask!0 mask!1977))))

(assert (=> start!113178 e!763901))

(declare-fun tp_is_empty!37193 () Bool)

(assert (=> start!113178 tp_is_empty!37193))

(assert (=> start!113178 true))

(declare-fun array_inv!33123 (array!91195) Bool)

(assert (=> start!113178 (array_inv!33123 _keys!1571)))

(declare-datatypes ((V!54693 0))(
  ( (V!54694 (val!18671 Int)) )
))
(declare-datatypes ((ValueCell!17698 0))(
  ( (ValueCellFull!17698 (v!21317 V!54693)) (EmptyCell!17698) )
))
(declare-datatypes ((array!91197 0))(
  ( (array!91198 (arr!44050 (Array (_ BitVec 32) ValueCell!17698)) (size!44601 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91197)

(declare-fun e!763900 () Bool)

(declare-fun array_inv!33124 (array!91197) Bool)

(assert (=> start!113178 (and (array_inv!33124 _values!1303) e!763900)))

(assert (=> start!113178 tp!109384))

(declare-fun b!1341463 () Bool)

(declare-fun res!890030 () Bool)

(assert (=> b!1341463 (=> (not res!890030) (not e!763901))))

(assert (=> b!1341463 (= res!890030 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44600 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341464 () Bool)

(declare-fun res!890026 () Bool)

(assert (=> b!1341464 (=> (not res!890026) (not e!763901))))

(declare-datatypes ((List!31371 0))(
  ( (Nil!31368) (Cons!31367 (h!32576 (_ BitVec 64)) (t!45782 List!31371)) )
))
(declare-fun arrayNoDuplicates!0 (array!91195 (_ BitVec 32) List!31371) Bool)

(assert (=> b!1341464 (= res!890026 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31368))))

(declare-fun mapNonEmpty!57496 () Bool)

(declare-fun mapRes!57496 () Bool)

(declare-fun tp!109385 () Bool)

(declare-fun e!763899 () Bool)

(assert (=> mapNonEmpty!57496 (= mapRes!57496 (and tp!109385 e!763899))))

(declare-fun mapValue!57496 () ValueCell!17698)

(declare-fun mapRest!57496 () (Array (_ BitVec 32) ValueCell!17698))

(declare-fun mapKey!57496 () (_ BitVec 32))

(assert (=> mapNonEmpty!57496 (= (arr!44050 _values!1303) (store mapRest!57496 mapKey!57496 mapValue!57496))))

(declare-fun b!1341465 () Bool)

(declare-fun res!890027 () Bool)

(assert (=> b!1341465 (=> (not res!890027) (not e!763901))))

(declare-fun minValue!1245 () V!54693)

(declare-fun zeroValue!1245 () V!54693)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24190 0))(
  ( (tuple2!24191 (_1!12105 (_ BitVec 64)) (_2!12105 V!54693)) )
))
(declare-datatypes ((List!31372 0))(
  ( (Nil!31369) (Cons!31368 (h!32577 tuple2!24190) (t!45783 List!31372)) )
))
(declare-datatypes ((ListLongMap!21859 0))(
  ( (ListLongMap!21860 (toList!10945 List!31372)) )
))
(declare-fun contains!9057 (ListLongMap!21859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5846 (array!91195 array!91197 (_ BitVec 32) (_ BitVec 32) V!54693 V!54693 (_ BitVec 32) Int) ListLongMap!21859)

(assert (=> b!1341465 (= res!890027 (contains!9057 (getCurrentListMap!5846 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341466 () Bool)

(declare-fun e!763898 () Bool)

(assert (=> b!1341466 (= e!763900 (and e!763898 mapRes!57496))))

(declare-fun condMapEmpty!57496 () Bool)

(declare-fun mapDefault!57496 () ValueCell!17698)

