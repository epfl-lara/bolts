; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82354 () Bool)

(assert start!82354)

(declare-fun b_free!18593 () Bool)

(declare-fun b_next!18593 () Bool)

(assert (=> start!82354 (= b_free!18593 (not b_next!18593))))

(declare-fun tp!64750 () Bool)

(declare-fun b_and!30099 () Bool)

(assert (=> start!82354 (= tp!64750 b_and!30099)))

(declare-fun b!959678 () Bool)

(declare-fun res!642506 () Bool)

(declare-fun e!541009 () Bool)

(assert (=> b!959678 (=> (not res!642506) (not e!541009))))

(declare-datatypes ((array!58717 0))(
  ( (array!58718 (arr!28228 (Array (_ BitVec 32) (_ BitVec 64))) (size!28708 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58717)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959678 (= res!642506 (validKeyInArray!0 (select (arr!28228 _keys!1668) i!793)))))

(declare-fun b!959679 () Bool)

(declare-fun res!642505 () Bool)

(assert (=> b!959679 (=> (not res!642505) (not e!541009))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58717 (_ BitVec 32)) Bool)

(assert (=> b!959679 (= res!642505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959680 () Bool)

(declare-fun e!541013 () Bool)

(declare-fun e!541011 () Bool)

(declare-fun mapRes!33937 () Bool)

(assert (=> b!959680 (= e!541013 (and e!541011 mapRes!33937))))

(declare-fun condMapEmpty!33937 () Bool)

(declare-datatypes ((V!33389 0))(
  ( (V!33390 (val!10703 Int)) )
))
(declare-datatypes ((ValueCell!10171 0))(
  ( (ValueCellFull!10171 (v!13260 V!33389)) (EmptyCell!10171) )
))
(declare-datatypes ((array!58719 0))(
  ( (array!58720 (arr!28229 (Array (_ BitVec 32) ValueCell!10171)) (size!28709 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58719)

(declare-fun mapDefault!33937 () ValueCell!10171)

