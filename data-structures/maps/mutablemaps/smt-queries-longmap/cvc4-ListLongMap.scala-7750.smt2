; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97284 () Bool)

(assert start!97284)

(declare-fun b!1106800 () Bool)

(declare-fun res!738739 () Bool)

(declare-fun e!631583 () Bool)

(assert (=> b!1106800 (=> (not res!738739) (not e!631583))))

(declare-datatypes ((array!71828 0))(
  ( (array!71829 (arr!34563 (Array (_ BitVec 32) (_ BitVec 64))) (size!35100 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71828)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1106800 (= res!738739 (= (select (arr!34563 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43036 () Bool)

(declare-fun mapRes!43036 () Bool)

(assert (=> mapIsEmpty!43036 mapRes!43036))

(declare-fun b!1106801 () Bool)

(declare-fun res!738747 () Bool)

(assert (=> b!1106801 (=> (not res!738747) (not e!631583))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106801 (= res!738747 (validMask!0 mask!1564))))

(declare-fun b!1106802 () Bool)

(declare-fun res!738744 () Bool)

(assert (=> b!1106802 (=> (not res!738744) (not e!631583))))

(assert (=> b!1106802 (= res!738744 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35100 _keys!1208))))))

(declare-fun b!1106803 () Bool)

(declare-fun e!631582 () Bool)

(declare-fun e!631579 () Bool)

(assert (=> b!1106803 (= e!631582 (and e!631579 mapRes!43036))))

(declare-fun condMapEmpty!43036 () Bool)

(declare-datatypes ((V!41765 0))(
  ( (V!41766 (val!13796 Int)) )
))
(declare-datatypes ((ValueCell!13030 0))(
  ( (ValueCellFull!13030 (v!16430 V!41765)) (EmptyCell!13030) )
))
(declare-datatypes ((array!71830 0))(
  ( (array!71831 (arr!34564 (Array (_ BitVec 32) ValueCell!13030)) (size!35101 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71830)

(declare-fun mapDefault!43036 () ValueCell!13030)

