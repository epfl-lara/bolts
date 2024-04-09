; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82000 () Bool)

(assert start!82000)

(declare-fun b!955981 () Bool)

(declare-fun res!640261 () Bool)

(declare-fun e!538640 () Bool)

(assert (=> b!955981 (=> (not res!640261) (not e!538640))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58143 0))(
  ( (array!58144 (arr!27947 (Array (_ BitVec 32) (_ BitVec 64))) (size!28427 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58143)

(declare-datatypes ((V!32997 0))(
  ( (V!32998 (val!10556 Int)) )
))
(declare-datatypes ((ValueCell!10024 0))(
  ( (ValueCellFull!10024 (v!13111 V!32997)) (EmptyCell!10024) )
))
(declare-datatypes ((array!58145 0))(
  ( (array!58146 (arr!27948 (Array (_ BitVec 32) ValueCell!10024)) (size!28428 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58145)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955981 (= res!640261 (and (= (size!28428 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28427 _keys!1441) (size!28428 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955982 () Bool)

(declare-fun e!538638 () Bool)

(declare-fun tp_is_empty!21011 () Bool)

(assert (=> b!955982 (= e!538638 tp_is_empty!21011)))

(declare-fun b!955983 () Bool)

(assert (=> b!955983 (= e!538640 false)))

(declare-fun lt!430039 () Bool)

(declare-datatypes ((List!19613 0))(
  ( (Nil!19610) (Cons!19609 (h!20771 (_ BitVec 64)) (t!27982 List!19613)) )
))
(declare-fun arrayNoDuplicates!0 (array!58143 (_ BitVec 32) List!19613) Bool)

(assert (=> b!955983 (= lt!430039 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19610))))

(declare-fun b!955984 () Bool)

(declare-fun e!538637 () Bool)

(declare-fun e!538641 () Bool)

(declare-fun mapRes!33478 () Bool)

(assert (=> b!955984 (= e!538637 (and e!538641 mapRes!33478))))

(declare-fun condMapEmpty!33478 () Bool)

(declare-fun mapDefault!33478 () ValueCell!10024)

