; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36848 () Bool)

(assert start!36848)

(declare-fun b_free!7967 () Bool)

(declare-fun b_next!7967 () Bool)

(assert (=> start!36848 (= b_free!7967 (not b_next!7967))))

(declare-fun tp!28617 () Bool)

(declare-fun b_and!15227 () Bool)

(assert (=> start!36848 (= tp!28617 b_and!15227)))

(declare-fun b!368201 () Bool)

(declare-fun res!206410 () Bool)

(declare-fun e!225208 () Bool)

(assert (=> b!368201 (=> (not res!206410) (not e!225208))))

(declare-datatypes ((array!21155 0))(
  ( (array!21156 (arr!10043 (Array (_ BitVec 32) (_ BitVec 64))) (size!10395 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21155)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368201 (= res!206410 (or (= (select (arr!10043 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10043 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368202 () Bool)

(declare-fun e!225210 () Bool)

(declare-fun e!225209 () Bool)

(declare-fun mapRes!14487 () Bool)

(assert (=> b!368202 (= e!225210 (and e!225209 mapRes!14487))))

(declare-fun condMapEmpty!14487 () Bool)

(declare-datatypes ((V!12591 0))(
  ( (V!12592 (val!4352 Int)) )
))
(declare-datatypes ((ValueCell!3964 0))(
  ( (ValueCellFull!3964 (v!6545 V!12591)) (EmptyCell!3964) )
))
(declare-datatypes ((array!21157 0))(
  ( (array!21158 (arr!10044 (Array (_ BitVec 32) ValueCell!3964)) (size!10396 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21157)

(declare-fun mapDefault!14487 () ValueCell!3964)

