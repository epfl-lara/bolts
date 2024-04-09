; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38242 () Bool)

(assert start!38242)

(declare-fun b_free!9071 () Bool)

(declare-fun b_next!9071 () Bool)

(assert (=> start!38242 (= b_free!9071 (not b_next!9071))))

(declare-fun tp!32001 () Bool)

(declare-fun b_and!16475 () Bool)

(assert (=> start!38242 (= tp!32001 b_and!16475)))

(declare-fun b!394260 () Bool)

(declare-fun res!226051 () Bool)

(declare-fun e!238669 () Bool)

(assert (=> b!394260 (=> (not res!226051) (not e!238669))))

(declare-datatypes ((array!23371 0))(
  ( (array!23372 (arr!11139 (Array (_ BitVec 32) (_ BitVec 64))) (size!11491 (_ BitVec 32))) )
))
(declare-fun lt!186885 () array!23371)

(declare-datatypes ((List!6451 0))(
  ( (Nil!6448) (Cons!6447 (h!7303 (_ BitVec 64)) (t!11633 List!6451)) )
))
(declare-fun arrayNoDuplicates!0 (array!23371 (_ BitVec 32) List!6451) Bool)

(assert (=> b!394260 (= res!226051 (arrayNoDuplicates!0 lt!186885 #b00000000000000000000000000000000 Nil!6448))))

(declare-fun b!394261 () Bool)

(declare-fun res!226050 () Bool)

(declare-fun e!238671 () Bool)

(assert (=> b!394261 (=> (not res!226050) (not e!238671))))

(declare-fun _keys!658 () array!23371)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394261 (= res!226050 (or (= (select (arr!11139 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11139 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!394262 () Bool)

(declare-fun e!238670 () Bool)

(declare-fun e!238666 () Bool)

(declare-fun mapRes!16215 () Bool)

(assert (=> b!394262 (= e!238670 (and e!238666 mapRes!16215))))

(declare-fun condMapEmpty!16215 () Bool)

(declare-datatypes ((V!14095 0))(
  ( (V!14096 (val!4916 Int)) )
))
(declare-datatypes ((ValueCell!4528 0))(
  ( (ValueCellFull!4528 (v!7157 V!14095)) (EmptyCell!4528) )
))
(declare-datatypes ((array!23373 0))(
  ( (array!23374 (arr!11140 (Array (_ BitVec 32) ValueCell!4528)) (size!11492 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23373)

(declare-fun mapDefault!16215 () ValueCell!4528)

