; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37484 () Bool)

(assert start!37484)

(declare-fun b_free!8603 () Bool)

(declare-fun b_next!8603 () Bool)

(assert (=> start!37484 (= b_free!8603 (not b_next!8603))))

(declare-fun tp!30525 () Bool)

(declare-fun b_and!15863 () Bool)

(assert (=> start!37484 (= tp!30525 b_and!15863)))

(declare-fun b!381745 () Bool)

(declare-fun e!232045 () Bool)

(declare-fun tp_is_empty!9251 () Bool)

(assert (=> b!381745 (= e!232045 tp_is_empty!9251)))

(declare-fun b!381746 () Bool)

(declare-fun res!217087 () Bool)

(declare-fun e!232046 () Bool)

(assert (=> b!381746 (=> (not res!217087) (not e!232046))))

(declare-datatypes ((array!22393 0))(
  ( (array!22394 (arr!10662 (Array (_ BitVec 32) (_ BitVec 64))) (size!11014 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22393)

(declare-datatypes ((List!6096 0))(
  ( (Nil!6093) (Cons!6092 (h!6948 (_ BitVec 64)) (t!11254 List!6096)) )
))
(declare-fun arrayNoDuplicates!0 (array!22393 (_ BitVec 32) List!6096) Bool)

(assert (=> b!381746 (= res!217087 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6093))))

(declare-fun b!381747 () Bool)

(declare-fun e!232047 () Bool)

(assert (=> b!381747 (= e!232046 e!232047)))

(declare-fun res!217090 () Bool)

(assert (=> b!381747 (=> (not res!217090) (not e!232047))))

(declare-fun lt!179065 () array!22393)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22393 (_ BitVec 32)) Bool)

(assert (=> b!381747 (= res!217090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179065 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381747 (= lt!179065 (array!22394 (store (arr!10662 _keys!658) i!548 k!778) (size!11014 _keys!658)))))

(declare-fun b!381748 () Bool)

(declare-fun res!217088 () Bool)

(assert (=> b!381748 (=> (not res!217088) (not e!232046))))

(assert (=> b!381748 (= res!217088 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11014 _keys!658))))))

(declare-fun b!381749 () Bool)

(declare-fun e!232044 () Bool)

(declare-fun e!232049 () Bool)

(declare-fun mapRes!15441 () Bool)

(assert (=> b!381749 (= e!232044 (and e!232049 mapRes!15441))))

(declare-fun condMapEmpty!15441 () Bool)

(declare-datatypes ((V!13439 0))(
  ( (V!13440 (val!4670 Int)) )
))
(declare-datatypes ((ValueCell!4282 0))(
  ( (ValueCellFull!4282 (v!6863 V!13439)) (EmptyCell!4282) )
))
(declare-datatypes ((array!22395 0))(
  ( (array!22396 (arr!10663 (Array (_ BitVec 32) ValueCell!4282)) (size!11015 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22395)

(declare-fun mapDefault!15441 () ValueCell!4282)

