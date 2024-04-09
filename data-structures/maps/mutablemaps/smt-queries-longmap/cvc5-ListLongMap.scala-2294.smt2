; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37234 () Bool)

(assert start!37234)

(declare-fun b_free!8353 () Bool)

(declare-fun b_next!8353 () Bool)

(assert (=> start!37234 (= b_free!8353 (not b_next!8353))))

(declare-fun tp!29774 () Bool)

(declare-fun b_and!15613 () Bool)

(assert (=> start!37234 (= tp!29774 b_and!15613)))

(declare-fun b!376191 () Bool)

(declare-fun e!229129 () Bool)

(declare-fun e!229127 () Bool)

(assert (=> b!376191 (= e!229129 e!229127)))

(declare-fun res!212663 () Bool)

(assert (=> b!376191 (=> (not res!212663) (not e!229127))))

(declare-datatypes ((array!21901 0))(
  ( (array!21902 (arr!10416 (Array (_ BitVec 32) (_ BitVec 64))) (size!10768 (_ BitVec 32))) )
))
(declare-fun lt!174546 () array!21901)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21901 (_ BitVec 32)) Bool)

(assert (=> b!376191 (= res!212663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174546 mask!970))))

(declare-fun _keys!658 () array!21901)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!376191 (= lt!174546 (array!21902 (store (arr!10416 _keys!658) i!548 k!778) (size!10768 _keys!658)))))

(declare-fun b!376192 () Bool)

(declare-fun res!212668 () Bool)

(assert (=> b!376192 (=> (not res!212668) (not e!229129))))

(assert (=> b!376192 (= res!212668 (or (= (select (arr!10416 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10416 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376193 () Bool)

(declare-fun e!229131 () Bool)

(declare-fun e!229124 () Bool)

(declare-fun mapRes!15066 () Bool)

(assert (=> b!376193 (= e!229131 (and e!229124 mapRes!15066))))

(declare-fun condMapEmpty!15066 () Bool)

(declare-datatypes ((V!13107 0))(
  ( (V!13108 (val!4545 Int)) )
))
(declare-datatypes ((ValueCell!4157 0))(
  ( (ValueCellFull!4157 (v!6738 V!13107)) (EmptyCell!4157) )
))
(declare-datatypes ((array!21903 0))(
  ( (array!21904 (arr!10417 (Array (_ BitVec 32) ValueCell!4157)) (size!10769 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21903)

(declare-fun mapDefault!15066 () ValueCell!4157)

