; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37196 () Bool)

(assert start!37196)

(declare-fun b_free!8315 () Bool)

(declare-fun b_next!8315 () Bool)

(assert (=> start!37196 (= b_free!8315 (not b_next!8315))))

(declare-fun tp!29660 () Bool)

(declare-fun b_and!15575 () Bool)

(assert (=> start!37196 (= tp!29660 b_and!15575)))

(declare-fun b!375327 () Bool)

(declare-fun e!228675 () Bool)

(declare-fun e!228671 () Bool)

(assert (=> b!375327 (= e!228675 e!228671)))

(declare-fun res!211971 () Bool)

(assert (=> b!375327 (=> (not res!211971) (not e!228671))))

(declare-datatypes ((array!21825 0))(
  ( (array!21826 (arr!10378 (Array (_ BitVec 32) (_ BitVec 64))) (size!10730 (_ BitVec 32))) )
))
(declare-fun lt!173808 () array!21825)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21825 (_ BitVec 32)) Bool)

(assert (=> b!375327 (= res!211971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173808 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21825)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375327 (= lt!173808 (array!21826 (store (arr!10378 _keys!658) i!548 k!778) (size!10730 _keys!658)))))

(declare-fun b!375328 () Bool)

(declare-fun res!211973 () Bool)

(assert (=> b!375328 (=> (not res!211973) (not e!228675))))

(declare-datatypes ((List!5869 0))(
  ( (Nil!5866) (Cons!5865 (h!6721 (_ BitVec 64)) (t!11027 List!5869)) )
))
(declare-fun arrayNoDuplicates!0 (array!21825 (_ BitVec 32) List!5869) Bool)

(assert (=> b!375328 (= res!211973 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5866))))

(declare-fun b!375329 () Bool)

(declare-fun e!228673 () Bool)

(declare-fun e!228674 () Bool)

(declare-fun mapRes!15009 () Bool)

(assert (=> b!375329 (= e!228673 (and e!228674 mapRes!15009))))

(declare-fun condMapEmpty!15009 () Bool)

(declare-datatypes ((V!13055 0))(
  ( (V!13056 (val!4526 Int)) )
))
(declare-datatypes ((ValueCell!4138 0))(
  ( (ValueCellFull!4138 (v!6719 V!13055)) (EmptyCell!4138) )
))
(declare-datatypes ((array!21827 0))(
  ( (array!21828 (arr!10379 (Array (_ BitVec 32) ValueCell!4138)) (size!10731 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21827)

(declare-fun mapDefault!15009 () ValueCell!4138)

