; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37016 () Bool)

(assert start!37016)

(declare-fun b_free!8135 () Bool)

(declare-fun b_next!8135 () Bool)

(assert (=> start!37016 (= b_free!8135 (not b_next!8135))))

(declare-fun tp!29120 () Bool)

(declare-fun b_and!15395 () Bool)

(assert (=> start!37016 (= tp!29120 b_and!15395)))

(declare-fun b!371477 () Bool)

(declare-fun e!226719 () Bool)

(declare-fun tp_is_empty!8783 () Bool)

(assert (=> b!371477 (= e!226719 tp_is_empty!8783)))

(declare-fun b!371478 () Bool)

(declare-fun res!208934 () Bool)

(declare-fun e!226718 () Bool)

(assert (=> b!371478 (=> (not res!208934) (not e!226718))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371478 (= res!208934 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!14739 () Bool)

(declare-fun mapRes!14739 () Bool)

(declare-fun tp!29121 () Bool)

(assert (=> mapNonEmpty!14739 (= mapRes!14739 (and tp!29121 e!226719))))

(declare-datatypes ((V!12815 0))(
  ( (V!12816 (val!4436 Int)) )
))
(declare-datatypes ((ValueCell!4048 0))(
  ( (ValueCellFull!4048 (v!6629 V!12815)) (EmptyCell!4048) )
))
(declare-fun mapValue!14739 () ValueCell!4048)

(declare-datatypes ((array!21477 0))(
  ( (array!21478 (arr!10204 (Array (_ BitVec 32) ValueCell!4048)) (size!10556 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21477)

(declare-fun mapKey!14739 () (_ BitVec 32))

(declare-fun mapRest!14739 () (Array (_ BitVec 32) ValueCell!4048))

(assert (=> mapNonEmpty!14739 (= (arr!10204 _values!506) (store mapRest!14739 mapKey!14739 mapValue!14739))))

(declare-fun b!371479 () Bool)

(declare-fun res!208930 () Bool)

(assert (=> b!371479 (=> (not res!208930) (not e!226718))))

(declare-datatypes ((array!21479 0))(
  ( (array!21480 (arr!10205 (Array (_ BitVec 32) (_ BitVec 64))) (size!10557 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21479)

(declare-datatypes ((List!5731 0))(
  ( (Nil!5728) (Cons!5727 (h!6583 (_ BitVec 64)) (t!10889 List!5731)) )
))
(declare-fun arrayNoDuplicates!0 (array!21479 (_ BitVec 32) List!5731) Bool)

(assert (=> b!371479 (= res!208930 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5728))))

(declare-fun b!371480 () Bool)

(declare-fun res!208928 () Bool)

(assert (=> b!371480 (=> (not res!208928) (not e!226718))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21479 (_ BitVec 32)) Bool)

(assert (=> b!371480 (= res!208928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371481 () Bool)

(declare-fun res!208931 () Bool)

(assert (=> b!371481 (=> (not res!208931) (not e!226718))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371481 (= res!208931 (and (= (size!10556 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10557 _keys!658) (size!10556 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371482 () Bool)

(declare-fun e!226722 () Bool)

(assert (=> b!371482 (= e!226718 e!226722)))

(declare-fun res!208932 () Bool)

(assert (=> b!371482 (=> (not res!208932) (not e!226722))))

(declare-fun lt!170339 () array!21479)

(assert (=> b!371482 (= res!208932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170339 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371482 (= lt!170339 (array!21480 (store (arr!10205 _keys!658) i!548 k!778) (size!10557 _keys!658)))))

(declare-fun b!371483 () Bool)

(declare-fun res!208925 () Bool)

(assert (=> b!371483 (=> (not res!208925) (not e!226718))))

(assert (=> b!371483 (= res!208925 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10557 _keys!658))))))

(declare-fun res!208933 () Bool)

(assert (=> start!37016 (=> (not res!208933) (not e!226718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37016 (= res!208933 (validMask!0 mask!970))))

(assert (=> start!37016 e!226718))

(declare-fun e!226720 () Bool)

(declare-fun array_inv!7536 (array!21477) Bool)

(assert (=> start!37016 (and (array_inv!7536 _values!506) e!226720)))

(assert (=> start!37016 tp!29120))

(assert (=> start!37016 true))

(assert (=> start!37016 tp_is_empty!8783))

(declare-fun array_inv!7537 (array!21479) Bool)

(assert (=> start!37016 (array_inv!7537 _keys!658)))

(declare-fun b!371484 () Bool)

(declare-fun e!226717 () Bool)

(assert (=> b!371484 (= e!226717 tp_is_empty!8783)))

(declare-fun mapIsEmpty!14739 () Bool)

(assert (=> mapIsEmpty!14739 mapRes!14739))

(declare-fun b!371485 () Bool)

(declare-fun res!208929 () Bool)

(assert (=> b!371485 (=> (not res!208929) (not e!226722))))

(assert (=> b!371485 (= res!208929 (arrayNoDuplicates!0 lt!170339 #b00000000000000000000000000000000 Nil!5728))))

(declare-fun b!371486 () Bool)

(assert (=> b!371486 (= e!226720 (and e!226717 mapRes!14739))))

(declare-fun condMapEmpty!14739 () Bool)

(declare-fun mapDefault!14739 () ValueCell!4048)

