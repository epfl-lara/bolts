; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110888 () Bool)

(assert start!110888)

(declare-fun b_free!29687 () Bool)

(declare-fun b_next!29687 () Bool)

(assert (=> start!110888 (= b_free!29687 (not b_next!29687))))

(declare-fun tp!104384 () Bool)

(declare-fun b_and!47905 () Bool)

(assert (=> start!110888 (= tp!104384 b_and!47905)))

(declare-fun b!1312178 () Bool)

(declare-fun res!871257 () Bool)

(declare-fun e!748489 () Bool)

(assert (=> b!1312178 (=> (not res!871257) (not e!748489))))

(declare-datatypes ((array!87785 0))(
  ( (array!87786 (arr!42368 (Array (_ BitVec 32) (_ BitVec 64))) (size!42919 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87785)

(declare-datatypes ((List!30257 0))(
  ( (Nil!30254) (Cons!30253 (h!31462 (_ BitVec 64)) (t!43870 List!30257)) )
))
(declare-fun arrayNoDuplicates!0 (array!87785 (_ BitVec 32) List!30257) Bool)

(assert (=> b!1312178 (= res!871257 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30254))))

(declare-fun b!1312179 () Bool)

(declare-fun e!748486 () Bool)

(declare-fun tp_is_empty!35417 () Bool)

(assert (=> b!1312179 (= e!748486 tp_is_empty!35417)))

(declare-fun b!1312180 () Bool)

(declare-fun res!871256 () Bool)

(assert (=> b!1312180 (=> (not res!871256) (not e!748489))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312180 (= res!871256 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312181 () Bool)

(declare-fun e!748488 () Bool)

(assert (=> b!1312181 (= e!748488 tp_is_empty!35417)))

(declare-fun b!1312182 () Bool)

(declare-fun res!871254 () Bool)

(assert (=> b!1312182 (=> (not res!871254) (not e!748489))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312182 (= res!871254 (not (= (select (arr!42368 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1312183 () Bool)

(declare-fun e!748487 () Bool)

(declare-fun mapRes!54754 () Bool)

(assert (=> b!1312183 (= e!748487 (and e!748486 mapRes!54754))))

(declare-fun condMapEmpty!54754 () Bool)

(declare-datatypes ((V!52325 0))(
  ( (V!52326 (val!17783 Int)) )
))
(declare-datatypes ((ValueCell!16810 0))(
  ( (ValueCellFull!16810 (v!20408 V!52325)) (EmptyCell!16810) )
))
(declare-datatypes ((array!87787 0))(
  ( (array!87788 (arr!42369 (Array (_ BitVec 32) ValueCell!16810)) (size!42920 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87787)

(declare-fun mapDefault!54754 () ValueCell!16810)

