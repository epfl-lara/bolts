; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113262 () Bool)

(assert start!113262)

(declare-fun b_free!31277 () Bool)

(declare-fun b_next!31277 () Bool)

(assert (=> start!113262 (= b_free!31277 (not b_next!31277))))

(declare-fun tp!109636 () Bool)

(declare-fun b_and!50471 () Bool)

(assert (=> start!113262 (= tp!109636 b_and!50471)))

(declare-fun b!1343056 () Bool)

(declare-fun res!891162 () Bool)

(declare-fun e!764528 () Bool)

(assert (=> b!1343056 (=> (not res!891162) (not e!764528))))

(declare-datatypes ((array!91355 0))(
  ( (array!91356 (arr!44129 (Array (_ BitVec 32) (_ BitVec 64))) (size!44680 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91355)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91355 (_ BitVec 32)) Bool)

(assert (=> b!1343056 (= res!891162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343057 () Bool)

(declare-fun res!891156 () Bool)

(assert (=> b!1343057 (=> (not res!891156) (not e!764528))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343057 (= res!891156 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44680 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343058 () Bool)

(declare-fun res!891161 () Bool)

(assert (=> b!1343058 (=> (not res!891161) (not e!764528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343058 (= res!891161 (validKeyInArray!0 (select (arr!44129 _keys!1571) from!1960)))))

(declare-fun b!1343059 () Bool)

(declare-fun e!764529 () Bool)

(declare-fun e!764527 () Bool)

(declare-fun mapRes!57622 () Bool)

(assert (=> b!1343059 (= e!764529 (and e!764527 mapRes!57622))))

(declare-fun condMapEmpty!57622 () Bool)

(declare-datatypes ((V!54805 0))(
  ( (V!54806 (val!18713 Int)) )
))
(declare-datatypes ((ValueCell!17740 0))(
  ( (ValueCellFull!17740 (v!21359 V!54805)) (EmptyCell!17740) )
))
(declare-datatypes ((array!91357 0))(
  ( (array!91358 (arr!44130 (Array (_ BitVec 32) ValueCell!17740)) (size!44681 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91357)

(declare-fun mapDefault!57622 () ValueCell!17740)

