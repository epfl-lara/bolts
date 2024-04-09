; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36998 () Bool)

(assert start!36998)

(declare-fun b_free!8117 () Bool)

(declare-fun b_next!8117 () Bool)

(assert (=> start!36998 (= b_free!8117 (not b_next!8117))))

(declare-fun tp!29067 () Bool)

(declare-fun b_and!15377 () Bool)

(assert (=> start!36998 (= tp!29067 b_and!15377)))

(declare-fun mapIsEmpty!14712 () Bool)

(declare-fun mapRes!14712 () Bool)

(assert (=> mapIsEmpty!14712 mapRes!14712))

(declare-fun mapNonEmpty!14712 () Bool)

(declare-fun tp!29066 () Bool)

(declare-fun e!226555 () Bool)

(assert (=> mapNonEmpty!14712 (= mapRes!14712 (and tp!29066 e!226555))))

(declare-datatypes ((V!12791 0))(
  ( (V!12792 (val!4427 Int)) )
))
(declare-datatypes ((ValueCell!4039 0))(
  ( (ValueCellFull!4039 (v!6620 V!12791)) (EmptyCell!4039) )
))
(declare-datatypes ((array!21443 0))(
  ( (array!21444 (arr!10187 (Array (_ BitVec 32) ValueCell!4039)) (size!10539 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21443)

(declare-fun mapValue!14712 () ValueCell!4039)

(declare-fun mapKey!14712 () (_ BitVec 32))

(declare-fun mapRest!14712 () (Array (_ BitVec 32) ValueCell!4039))

(assert (=> mapNonEmpty!14712 (= (arr!10187 _values!506) (store mapRest!14712 mapKey!14712 mapValue!14712))))

(declare-fun b!371126 () Bool)

(declare-fun res!208659 () Bool)

(declare-fun e!226558 () Bool)

(assert (=> b!371126 (=> (not res!208659) (not e!226558))))

(declare-datatypes ((array!21445 0))(
  ( (array!21446 (arr!10188 (Array (_ BitVec 32) (_ BitVec 64))) (size!10540 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21445)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371126 (= res!208659 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371127 () Bool)

(declare-fun res!208663 () Bool)

(assert (=> b!371127 (=> (not res!208663) (not e!226558))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371127 (= res!208663 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10540 _keys!658))))))

(declare-fun b!371128 () Bool)

(declare-fun e!226556 () Bool)

(assert (=> b!371128 (= e!226558 e!226556)))

(declare-fun res!208656 () Bool)

(assert (=> b!371128 (=> (not res!208656) (not e!226556))))

(declare-fun lt!170203 () array!21445)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21445 (_ BitVec 32)) Bool)

(assert (=> b!371128 (= res!208656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170203 mask!970))))

(assert (=> b!371128 (= lt!170203 (array!21446 (store (arr!10188 _keys!658) i!548 k!778) (size!10540 _keys!658)))))

(declare-fun b!371129 () Bool)

(declare-fun res!208657 () Bool)

(assert (=> b!371129 (=> (not res!208657) (not e!226558))))

(assert (=> b!371129 (= res!208657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371130 () Bool)

(declare-fun res!208661 () Bool)

(assert (=> b!371130 (=> (not res!208661) (not e!226556))))

(declare-datatypes ((List!5721 0))(
  ( (Nil!5718) (Cons!5717 (h!6573 (_ BitVec 64)) (t!10879 List!5721)) )
))
(declare-fun arrayNoDuplicates!0 (array!21445 (_ BitVec 32) List!5721) Bool)

(assert (=> b!371130 (= res!208661 (arrayNoDuplicates!0 lt!170203 #b00000000000000000000000000000000 Nil!5718))))

(declare-fun b!371131 () Bool)

(declare-fun res!208660 () Bool)

(assert (=> b!371131 (=> (not res!208660) (not e!226558))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371131 (= res!208660 (and (= (size!10539 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10540 _keys!658) (size!10539 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371132 () Bool)

(declare-fun res!208662 () Bool)

(assert (=> b!371132 (=> (not res!208662) (not e!226558))))

(assert (=> b!371132 (= res!208662 (or (= (select (arr!10188 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10188 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371133 () Bool)

(declare-fun res!208655 () Bool)

(assert (=> b!371133 (=> (not res!208655) (not e!226558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371133 (= res!208655 (validKeyInArray!0 k!778))))

(declare-fun res!208664 () Bool)

(assert (=> start!36998 (=> (not res!208664) (not e!226558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36998 (= res!208664 (validMask!0 mask!970))))

(assert (=> start!36998 e!226558))

(declare-fun e!226557 () Bool)

(declare-fun array_inv!7522 (array!21443) Bool)

(assert (=> start!36998 (and (array_inv!7522 _values!506) e!226557)))

(assert (=> start!36998 tp!29067))

(assert (=> start!36998 true))

(declare-fun tp_is_empty!8765 () Bool)

(assert (=> start!36998 tp_is_empty!8765))

(declare-fun array_inv!7523 (array!21445) Bool)

(assert (=> start!36998 (array_inv!7523 _keys!658)))

(declare-fun b!371134 () Bool)

(declare-fun e!226560 () Bool)

(assert (=> b!371134 (= e!226557 (and e!226560 mapRes!14712))))

(declare-fun condMapEmpty!14712 () Bool)

(declare-fun mapDefault!14712 () ValueCell!4039)

