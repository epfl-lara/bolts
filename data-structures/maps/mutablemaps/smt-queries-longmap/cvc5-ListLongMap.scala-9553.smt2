; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113216 () Bool)

(assert start!113216)

(declare-fun b_free!31231 () Bool)

(declare-fun b_next!31231 () Bool)

(assert (=> start!113216 (= b_free!31231 (not b_next!31231))))

(declare-fun tp!109498 () Bool)

(declare-fun b_and!50379 () Bool)

(assert (=> start!113216 (= tp!109498 b_and!50379)))

(declare-fun b!1342182 () Bool)

(declare-fun res!890538 () Bool)

(declare-fun e!764185 () Bool)

(assert (=> b!1342182 (=> (not res!890538) (not e!764185))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342182 (= res!890538 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342183 () Bool)

(declare-fun res!890536 () Bool)

(assert (=> b!1342183 (=> (not res!890536) (not e!764185))))

(declare-datatypes ((array!91271 0))(
  ( (array!91272 (arr!44087 (Array (_ BitVec 32) (_ BitVec 64))) (size!44638 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91271)

(declare-datatypes ((List!31402 0))(
  ( (Nil!31399) (Cons!31398 (h!32607 (_ BitVec 64)) (t!45851 List!31402)) )
))
(declare-fun arrayNoDuplicates!0 (array!91271 (_ BitVec 32) List!31402) Bool)

(assert (=> b!1342183 (= res!890536 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31399))))

(declare-fun b!1342184 () Bool)

(declare-fun e!764182 () Bool)

(declare-fun e!764186 () Bool)

(declare-fun mapRes!57553 () Bool)

(assert (=> b!1342184 (= e!764182 (and e!764186 mapRes!57553))))

(declare-fun condMapEmpty!57553 () Bool)

(declare-datatypes ((V!54745 0))(
  ( (V!54746 (val!18690 Int)) )
))
(declare-datatypes ((ValueCell!17717 0))(
  ( (ValueCellFull!17717 (v!21336 V!54745)) (EmptyCell!17717) )
))
(declare-datatypes ((array!91273 0))(
  ( (array!91274 (arr!44088 (Array (_ BitVec 32) ValueCell!17717)) (size!44639 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91273)

(declare-fun mapDefault!57553 () ValueCell!17717)

