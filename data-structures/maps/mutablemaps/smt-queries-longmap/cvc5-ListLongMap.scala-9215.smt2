; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110674 () Bool)

(assert start!110674)

(declare-fun b_free!29473 () Bool)

(declare-fun b_next!29473 () Bool)

(assert (=> start!110674 (= b_free!29473 (not b_next!29473))))

(declare-fun tp!103741 () Bool)

(declare-fun b_and!47691 () Bool)

(assert (=> start!110674 (= tp!103741 b_and!47691)))

(declare-fun b!1309038 () Bool)

(declare-fun e!746881 () Bool)

(assert (=> b!1309038 (= e!746881 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87369 0))(
  ( (array!87370 (arr!42160 (Array (_ BitVec 32) (_ BitVec 64))) (size!42711 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87369)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52041 0))(
  ( (V!52042 (val!17676 Int)) )
))
(declare-fun minValue!1296 () V!52041)

(declare-datatypes ((ValueCell!16703 0))(
  ( (ValueCellFull!16703 (v!20301 V!52041)) (EmptyCell!16703) )
))
(declare-datatypes ((array!87371 0))(
  ( (array!87372 (arr!42161 (Array (_ BitVec 32) ValueCell!16703)) (size!42712 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87371)

(declare-fun zeroValue!1296 () V!52041)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585160 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22926 0))(
  ( (tuple2!22927 (_1!11473 (_ BitVec 64)) (_2!11473 V!52041)) )
))
(declare-datatypes ((List!30098 0))(
  ( (Nil!30095) (Cons!30094 (h!31303 tuple2!22926) (t!43711 List!30098)) )
))
(declare-datatypes ((ListLongMap!20595 0))(
  ( (ListLongMap!20596 (toList!10313 List!30098)) )
))
(declare-fun contains!8399 (ListLongMap!20595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5269 (array!87369 array!87371 (_ BitVec 32) (_ BitVec 32) V!52041 V!52041 (_ BitVec 32) Int) ListLongMap!20595)

(assert (=> b!1309038 (= lt!585160 (contains!8399 (getCurrentListMap!5269 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309039 () Bool)

(declare-fun res!869075 () Bool)

(assert (=> b!1309039 (=> (not res!869075) (not e!746881))))

(assert (=> b!1309039 (= res!869075 (and (= (size!42712 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42711 _keys!1628) (size!42712 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309040 () Bool)

(declare-fun e!746885 () Bool)

(declare-fun tp_is_empty!35203 () Bool)

(assert (=> b!1309040 (= e!746885 tp_is_empty!35203)))

(declare-fun b!1309041 () Bool)

(declare-fun e!746882 () Bool)

(declare-fun e!746883 () Bool)

(declare-fun mapRes!54433 () Bool)

(assert (=> b!1309041 (= e!746882 (and e!746883 mapRes!54433))))

(declare-fun condMapEmpty!54433 () Bool)

(declare-fun mapDefault!54433 () ValueCell!16703)

