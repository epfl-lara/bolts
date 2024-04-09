; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84096 () Bool)

(assert start!84096)

(declare-fun b_free!19823 () Bool)

(declare-fun b_next!19823 () Bool)

(assert (=> start!84096 (= b_free!19823 (not b_next!19823))))

(declare-fun tp!68993 () Bool)

(declare-fun b_and!31747 () Bool)

(assert (=> start!84096 (= tp!68993 b_and!31747)))

(declare-fun b!982794 () Bool)

(declare-fun res!657806 () Bool)

(declare-fun e!554003 () Bool)

(assert (=> b!982794 (=> (not res!657806) (not e!554003))))

(declare-datatypes ((array!61727 0))(
  ( (array!61728 (arr!29717 (Array (_ BitVec 32) (_ BitVec 64))) (size!30197 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61727)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982794 (= res!657806 (validKeyInArray!0 (select (arr!29717 _keys!1544) from!1932)))))

(declare-fun b!982795 () Bool)

(declare-fun res!657802 () Bool)

(assert (=> b!982795 (=> (not res!657802) (not e!554003))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61727 (_ BitVec 32)) Bool)

(assert (=> b!982795 (= res!657802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982796 () Bool)

(declare-fun e!554001 () Bool)

(declare-fun tp_is_empty!22871 () Bool)

(assert (=> b!982796 (= e!554001 tp_is_empty!22871)))

(declare-fun b!982797 () Bool)

(declare-fun e!554002 () Bool)

(declare-fun e!554006 () Bool)

(declare-fun mapRes!36335 () Bool)

(assert (=> b!982797 (= e!554002 (and e!554006 mapRes!36335))))

(declare-fun condMapEmpty!36335 () Bool)

(declare-datatypes ((V!35477 0))(
  ( (V!35478 (val!11486 Int)) )
))
(declare-datatypes ((ValueCell!10954 0))(
  ( (ValueCellFull!10954 (v!14048 V!35477)) (EmptyCell!10954) )
))
(declare-datatypes ((array!61729 0))(
  ( (array!61730 (arr!29718 (Array (_ BitVec 32) ValueCell!10954)) (size!30198 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61729)

(declare-fun mapDefault!36335 () ValueCell!10954)

