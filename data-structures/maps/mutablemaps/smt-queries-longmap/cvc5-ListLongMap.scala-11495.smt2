; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133810 () Bool)

(assert start!133810)

(declare-fun b!1564114 () Bool)

(declare-fun res!1069403 () Bool)

(declare-fun e!871792 () Bool)

(assert (=> b!1564114 (=> (not res!1069403) (not e!871792))))

(declare-datatypes ((V!60009 0))(
  ( (V!60010 (val!19509 Int)) )
))
(declare-datatypes ((tuple2!25330 0))(
  ( (tuple2!25331 (_1!12675 (_ BitVec 64)) (_2!12675 V!60009)) )
))
(declare-datatypes ((List!36718 0))(
  ( (Nil!36715) (Cons!36714 (h!38161 tuple2!25330) (t!51572 List!36718)) )
))
(declare-datatypes ((ListLongMap!22777 0))(
  ( (ListLongMap!22778 (toList!11404 List!36718)) )
))
(declare-fun contains!10325 (ListLongMap!22777 (_ BitVec 64)) Bool)

(assert (=> b!1564114 (= res!1069403 (not (contains!10325 (ListLongMap!22778 Nil!36715) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564115 () Bool)

(declare-fun e!871789 () Bool)

(declare-fun e!871790 () Bool)

(declare-fun mapRes!59655 () Bool)

(assert (=> b!1564115 (= e!871789 (and e!871790 mapRes!59655))))

(declare-fun condMapEmpty!59655 () Bool)

(declare-datatypes ((ValueCell!18395 0))(
  ( (ValueCellFull!18395 (v!22258 V!60009)) (EmptyCell!18395) )
))
(declare-datatypes ((array!104363 0))(
  ( (array!104364 (arr!50368 (Array (_ BitVec 32) ValueCell!18395)) (size!50919 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104363)

(declare-fun mapDefault!59655 () ValueCell!18395)

