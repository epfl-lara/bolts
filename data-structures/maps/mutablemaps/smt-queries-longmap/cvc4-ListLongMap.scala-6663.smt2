; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83982 () Bool)

(assert start!83982)

(declare-fun b!980947 () Bool)

(declare-fun res!656555 () Bool)

(declare-fun e!553016 () Bool)

(assert (=> b!980947 (=> (not res!656555) (not e!553016))))

(declare-datatypes ((array!61511 0))(
  ( (array!61512 (arr!29609 (Array (_ BitVec 32) (_ BitVec 64))) (size!30089 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61511)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61511 (_ BitVec 32)) Bool)

(assert (=> b!980947 (= res!656555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36164 () Bool)

(declare-fun mapRes!36164 () Bool)

(assert (=> mapIsEmpty!36164 mapRes!36164))

(declare-fun b!980948 () Bool)

(declare-fun e!553013 () Bool)

(declare-fun tp_is_empty!22757 () Bool)

(assert (=> b!980948 (= e!553013 tp_is_empty!22757)))

(declare-fun b!980949 () Bool)

(declare-fun e!553014 () Bool)

(assert (=> b!980949 (= e!553014 tp_is_empty!22757)))

(declare-fun b!980951 () Bool)

(declare-fun e!553012 () Bool)

(assert (=> b!980951 (= e!553012 (and e!553013 mapRes!36164))))

(declare-fun condMapEmpty!36164 () Bool)

(declare-datatypes ((V!35325 0))(
  ( (V!35326 (val!11429 Int)) )
))
(declare-datatypes ((ValueCell!10897 0))(
  ( (ValueCellFull!10897 (v!13991 V!35325)) (EmptyCell!10897) )
))
(declare-datatypes ((array!61513 0))(
  ( (array!61514 (arr!29610 (Array (_ BitVec 32) ValueCell!10897)) (size!30090 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61513)

(declare-fun mapDefault!36164 () ValueCell!10897)

