; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82026 () Bool)

(assert start!82026)

(declare-fun b!956215 () Bool)

(declare-fun e!538833 () Bool)

(assert (=> b!956215 (= e!538833 false)))

(declare-fun lt!430078 () Bool)

(declare-datatypes ((array!58193 0))(
  ( (array!58194 (arr!27972 (Array (_ BitVec 32) (_ BitVec 64))) (size!28452 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58193)

(declare-datatypes ((List!19623 0))(
  ( (Nil!19620) (Cons!19619 (h!20781 (_ BitVec 64)) (t!27992 List!19623)) )
))
(declare-fun arrayNoDuplicates!0 (array!58193 (_ BitVec 32) List!19623) Bool)

(assert (=> b!956215 (= lt!430078 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19620))))

(declare-fun mapIsEmpty!33517 () Bool)

(declare-fun mapRes!33517 () Bool)

(assert (=> mapIsEmpty!33517 mapRes!33517))

(declare-fun b!956216 () Bool)

(declare-fun res!640378 () Bool)

(assert (=> b!956216 (=> (not res!640378) (not e!538833))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58193 (_ BitVec 32)) Bool)

(assert (=> b!956216 (= res!640378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956217 () Bool)

(declare-fun e!538836 () Bool)

(declare-fun tp_is_empty!21037 () Bool)

(assert (=> b!956217 (= e!538836 tp_is_empty!21037)))

(declare-fun b!956218 () Bool)

(declare-fun e!538835 () Bool)

(assert (=> b!956218 (= e!538835 (and e!538836 mapRes!33517))))

(declare-fun condMapEmpty!33517 () Bool)

(declare-datatypes ((V!33033 0))(
  ( (V!33034 (val!10569 Int)) )
))
(declare-datatypes ((ValueCell!10037 0))(
  ( (ValueCellFull!10037 (v!13124 V!33033)) (EmptyCell!10037) )
))
(declare-datatypes ((array!58195 0))(
  ( (array!58196 (arr!27973 (Array (_ BitVec 32) ValueCell!10037)) (size!28453 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58195)

(declare-fun mapDefault!33517 () ValueCell!10037)

