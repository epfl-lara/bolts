; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113346 () Bool)

(assert start!113346)

(declare-fun b_free!31361 () Bool)

(declare-fun b_next!31361 () Bool)

(assert (=> start!113346 (= b_free!31361 (not b_next!31361))))

(declare-fun tp!109889 () Bool)

(declare-fun b_and!50593 () Bool)

(assert (=> start!113346 (= tp!109889 b_and!50593)))

(declare-fun b!1344322 () Bool)

(declare-fun res!892008 () Bool)

(declare-fun e!765161 () Bool)

(assert (=> b!1344322 (=> (not res!892008) (not e!765161))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91519 0))(
  ( (array!91520 (arr!44211 (Array (_ BitVec 32) (_ BitVec 64))) (size!44762 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91519)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344322 (= res!892008 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44762 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344323 () Bool)

(declare-fun e!765157 () Bool)

(declare-fun e!765158 () Bool)

(declare-fun mapRes!57748 () Bool)

(assert (=> b!1344323 (= e!765157 (and e!765158 mapRes!57748))))

(declare-fun condMapEmpty!57748 () Bool)

(declare-datatypes ((V!54917 0))(
  ( (V!54918 (val!18755 Int)) )
))
(declare-datatypes ((ValueCell!17782 0))(
  ( (ValueCellFull!17782 (v!21401 V!54917)) (EmptyCell!17782) )
))
(declare-datatypes ((array!91521 0))(
  ( (array!91522 (arr!44212 (Array (_ BitVec 32) ValueCell!17782)) (size!44763 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91521)

(declare-fun mapDefault!57748 () ValueCell!17782)

