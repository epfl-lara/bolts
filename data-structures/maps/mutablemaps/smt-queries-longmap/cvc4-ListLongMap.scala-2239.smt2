; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36908 () Bool)

(assert start!36908)

(declare-fun b_free!8027 () Bool)

(declare-fun b_next!8027 () Bool)

(assert (=> start!36908 (= b_free!8027 (not b_next!8027))))

(declare-fun tp!28796 () Bool)

(declare-fun b_and!15287 () Bool)

(assert (=> start!36908 (= tp!28796 b_and!15287)))

(declare-fun b!369371 () Bool)

(declare-fun e!225747 () Bool)

(declare-fun tp_is_empty!8675 () Bool)

(assert (=> b!369371 (= e!225747 tp_is_empty!8675)))

(declare-fun b!369372 () Bool)

(declare-fun res!207311 () Bool)

(declare-fun e!225749 () Bool)

(assert (=> b!369372 (=> (not res!207311) (not e!225749))))

(declare-datatypes ((array!21273 0))(
  ( (array!21274 (arr!10102 (Array (_ BitVec 32) (_ BitVec 64))) (size!10454 (_ BitVec 32))) )
))
(declare-fun lt!169728 () array!21273)

(declare-datatypes ((List!5666 0))(
  ( (Nil!5663) (Cons!5662 (h!6518 (_ BitVec 64)) (t!10824 List!5666)) )
))
(declare-fun arrayNoDuplicates!0 (array!21273 (_ BitVec 32) List!5666) Bool)

(assert (=> b!369372 (= res!207311 (arrayNoDuplicates!0 lt!169728 #b00000000000000000000000000000000 Nil!5663))))

(declare-fun b!369373 () Bool)

(declare-fun e!225748 () Bool)

(assert (=> b!369373 (= e!225748 e!225749)))

(declare-fun res!207314 () Bool)

(assert (=> b!369373 (=> (not res!207314) (not e!225749))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21273 (_ BitVec 32)) Bool)

(assert (=> b!369373 (= res!207314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169728 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21273)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369373 (= lt!169728 (array!21274 (store (arr!10102 _keys!658) i!548 k!778) (size!10454 _keys!658)))))

(declare-fun mapIsEmpty!14577 () Bool)

(declare-fun mapRes!14577 () Bool)

(assert (=> mapIsEmpty!14577 mapRes!14577))

(declare-fun b!369374 () Bool)

(declare-fun res!207312 () Bool)

(assert (=> b!369374 (=> (not res!207312) (not e!225748))))

(assert (=> b!369374 (= res!207312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369375 () Bool)

(declare-fun e!225745 () Bool)

(assert (=> b!369375 (= e!225745 (and e!225747 mapRes!14577))))

(declare-fun condMapEmpty!14577 () Bool)

(declare-datatypes ((V!12671 0))(
  ( (V!12672 (val!4382 Int)) )
))
(declare-datatypes ((ValueCell!3994 0))(
  ( (ValueCellFull!3994 (v!6575 V!12671)) (EmptyCell!3994) )
))
(declare-datatypes ((array!21275 0))(
  ( (array!21276 (arr!10103 (Array (_ BitVec 32) ValueCell!3994)) (size!10455 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21275)

(declare-fun mapDefault!14577 () ValueCell!3994)

