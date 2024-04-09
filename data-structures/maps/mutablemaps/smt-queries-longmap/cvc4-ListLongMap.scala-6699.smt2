; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84198 () Bool)

(assert start!84198)

(declare-fun b_free!19871 () Bool)

(declare-fun b_next!19871 () Bool)

(assert (=> start!84198 (= b_free!19871 (not b_next!19871))))

(declare-fun tp!69218 () Bool)

(declare-fun b_and!31837 () Bool)

(assert (=> start!84198 (= tp!69218 b_and!31837)))

(declare-fun b!984132 () Bool)

(declare-fun res!658641 () Bool)

(declare-fun e!554829 () Bool)

(assert (=> b!984132 (=> (not res!658641) (not e!554829))))

(declare-datatypes ((array!61915 0))(
  ( (array!61916 (arr!29811 (Array (_ BitVec 32) (_ BitVec 64))) (size!30291 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61915)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984132 (= res!658641 (validKeyInArray!0 (select (arr!29811 _keys!1544) from!1932)))))

(declare-fun b!984133 () Bool)

(declare-fun res!658644 () Bool)

(assert (=> b!984133 (=> (not res!658644) (not e!554829))))

(declare-datatypes ((List!20776 0))(
  ( (Nil!20773) (Cons!20772 (h!21934 (_ BitVec 64)) (t!29599 List!20776)) )
))
(declare-fun arrayNoDuplicates!0 (array!61915 (_ BitVec 32) List!20776) Bool)

(assert (=> b!984133 (= res!658644 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20773))))

(declare-fun b!984134 () Bool)

(declare-fun e!554834 () Bool)

(declare-fun tp_is_empty!22973 () Bool)

(assert (=> b!984134 (= e!554834 tp_is_empty!22973)))

(declare-fun mapIsEmpty!36488 () Bool)

(declare-fun mapRes!36488 () Bool)

(assert (=> mapIsEmpty!36488 mapRes!36488))

(declare-fun b!984135 () Bool)

(declare-fun e!554833 () Bool)

(assert (=> b!984135 (= e!554833 (and e!554834 mapRes!36488))))

(declare-fun condMapEmpty!36488 () Bool)

(declare-datatypes ((V!35613 0))(
  ( (V!35614 (val!11537 Int)) )
))
(declare-datatypes ((ValueCell!11005 0))(
  ( (ValueCellFull!11005 (v!14099 V!35613)) (EmptyCell!11005) )
))
(declare-datatypes ((array!61917 0))(
  ( (array!61918 (arr!29812 (Array (_ BitVec 32) ValueCell!11005)) (size!30292 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61917)

(declare-fun mapDefault!36488 () ValueCell!11005)

