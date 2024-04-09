; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!534 () Bool)

(assert start!534)

(declare-fun mapIsEmpty!98 () Bool)

(declare-fun mapRes!98 () Bool)

(assert (=> mapIsEmpty!98 mapRes!98))

(declare-fun b!3141 () Bool)

(declare-fun e!1401 () Bool)

(declare-fun tp_is_empty!95 () Bool)

(assert (=> b!3141 (= e!1401 tp_is_empty!95)))

(declare-fun b!3142 () Bool)

(declare-fun e!1400 () Bool)

(assert (=> b!3142 (= e!1400 tp_is_empty!95)))

(declare-fun b!3143 () Bool)

(declare-fun res!5030 () Bool)

(declare-fun e!1403 () Bool)

(assert (=> b!3143 (=> (not res!5030) (not e!1403))))

(declare-datatypes ((array!125 0))(
  ( (array!126 (arr!56 (Array (_ BitVec 32) (_ BitVec 64))) (size!118 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!125)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!125 (_ BitVec 32)) Bool)

(assert (=> b!3143 (= res!5030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!5031 () Bool)

(assert (=> start!534 (=> (not res!5031) (not e!1403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!534 (= res!5031 (validMask!0 mask!2250))))

(assert (=> start!534 e!1403))

(assert (=> start!534 true))

(declare-datatypes ((V!303 0))(
  ( (V!304 (val!53 Int)) )
))
(declare-datatypes ((ValueCell!31 0))(
  ( (ValueCellFull!31 (v!1140 V!303)) (EmptyCell!31) )
))
(declare-datatypes ((array!127 0))(
  ( (array!128 (arr!57 (Array (_ BitVec 32) ValueCell!31)) (size!119 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!127)

(declare-fun e!1399 () Bool)

(declare-fun array_inv!37 (array!127) Bool)

(assert (=> start!534 (and (array_inv!37 _values!1492) e!1399)))

(declare-fun array_inv!38 (array!125) Bool)

(assert (=> start!534 (array_inv!38 _keys!1806)))

(declare-fun b!3144 () Bool)

(declare-fun res!5032 () Bool)

(assert (=> b!3144 (=> (not res!5032) (not e!1403))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3144 (= res!5032 (and (= (size!119 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!118 _keys!1806) (size!119 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3145 () Bool)

(assert (=> b!3145 (= e!1399 (and e!1401 mapRes!98))))

(declare-fun condMapEmpty!98 () Bool)

(declare-fun mapDefault!98 () ValueCell!31)

