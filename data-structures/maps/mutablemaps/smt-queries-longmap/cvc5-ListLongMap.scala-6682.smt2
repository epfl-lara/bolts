; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84092 () Bool)

(assert start!84092)

(declare-fun b_free!19819 () Bool)

(declare-fun b_next!19819 () Bool)

(assert (=> start!84092 (= b_free!19819 (not b_next!19819))))

(declare-fun tp!68980 () Bool)

(declare-fun b_and!31739 () Bool)

(assert (=> start!84092 (= tp!68980 b_and!31739)))

(declare-fun res!657757 () Bool)

(declare-fun e!553970 () Bool)

(assert (=> start!84092 (=> (not res!657757) (not e!553970))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84092 (= res!657757 (validMask!0 mask!1948))))

(assert (=> start!84092 e!553970))

(assert (=> start!84092 true))

(declare-fun tp_is_empty!22867 () Bool)

(assert (=> start!84092 tp_is_empty!22867))

(declare-datatypes ((V!35473 0))(
  ( (V!35474 (val!11484 Int)) )
))
(declare-datatypes ((ValueCell!10952 0))(
  ( (ValueCellFull!10952 (v!14046 V!35473)) (EmptyCell!10952) )
))
(declare-datatypes ((array!61719 0))(
  ( (array!61720 (arr!29713 (Array (_ BitVec 32) ValueCell!10952)) (size!30193 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61719)

(declare-fun e!553966 () Bool)

(declare-fun array_inv!22847 (array!61719) Bool)

(assert (=> start!84092 (and (array_inv!22847 _values!1278) e!553966)))

(assert (=> start!84092 tp!68980))

(declare-datatypes ((array!61721 0))(
  ( (array!61722 (arr!29714 (Array (_ BitVec 32) (_ BitVec 64))) (size!30194 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61721)

(declare-fun array_inv!22848 (array!61721) Bool)

(assert (=> start!84092 (array_inv!22848 _keys!1544)))

(declare-fun b!982724 () Bool)

(declare-fun res!657755 () Bool)

(assert (=> b!982724 (=> (not res!657755) (not e!553970))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982724 (= res!657755 (validKeyInArray!0 (select (arr!29714 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36329 () Bool)

(declare-fun mapRes!36329 () Bool)

(assert (=> mapIsEmpty!36329 mapRes!36329))

(declare-fun b!982725 () Bool)

(declare-fun e!553968 () Bool)

(assert (=> b!982725 (= e!553966 (and e!553968 mapRes!36329))))

(declare-fun condMapEmpty!36329 () Bool)

(declare-fun mapDefault!36329 () ValueCell!10952)

