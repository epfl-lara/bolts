; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36914 () Bool)

(assert start!36914)

(declare-fun b_free!8033 () Bool)

(declare-fun b_next!8033 () Bool)

(assert (=> start!36914 (= b_free!8033 (not b_next!8033))))

(declare-fun tp!28814 () Bool)

(declare-fun b_and!15293 () Bool)

(assert (=> start!36914 (= tp!28814 b_and!15293)))

(declare-fun b!369488 () Bool)

(declare-fun res!207403 () Bool)

(declare-fun e!225803 () Bool)

(assert (=> b!369488 (=> (not res!207403) (not e!225803))))

(declare-datatypes ((array!21285 0))(
  ( (array!21286 (arr!10108 (Array (_ BitVec 32) (_ BitVec 64))) (size!10460 (_ BitVec 32))) )
))
(declare-fun lt!169755 () array!21285)

(declare-datatypes ((List!5671 0))(
  ( (Nil!5668) (Cons!5667 (h!6523 (_ BitVec 64)) (t!10829 List!5671)) )
))
(declare-fun arrayNoDuplicates!0 (array!21285 (_ BitVec 32) List!5671) Bool)

(assert (=> b!369488 (= res!207403 (arrayNoDuplicates!0 lt!169755 #b00000000000000000000000000000000 Nil!5668))))

(declare-fun b!369489 () Bool)

(assert (=> b!369489 (= e!225803 false)))

(declare-datatypes ((V!12679 0))(
  ( (V!12680 (val!4385 Int)) )
))
(declare-datatypes ((tuple2!5810 0))(
  ( (tuple2!5811 (_1!2915 (_ BitVec 64)) (_2!2915 V!12679)) )
))
(declare-datatypes ((List!5672 0))(
  ( (Nil!5669) (Cons!5668 (h!6524 tuple2!5810) (t!10830 List!5672)) )
))
(declare-datatypes ((ListLongMap!4737 0))(
  ( (ListLongMap!4738 (toList!2384 List!5672)) )
))
(declare-fun lt!169756 () ListLongMap!4737)

(declare-datatypes ((ValueCell!3997 0))(
  ( (ValueCellFull!3997 (v!6578 V!12679)) (EmptyCell!3997) )
))
(declare-datatypes ((array!21287 0))(
  ( (array!21288 (arr!10109 (Array (_ BitVec 32) ValueCell!3997)) (size!10461 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21287)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12679)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12679)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12679)

(declare-fun getCurrentListMapNoExtraKeys!652 (array!21285 array!21287 (_ BitVec 32) (_ BitVec 32) V!12679 V!12679 (_ BitVec 32) Int) ListLongMap!4737)

(assert (=> b!369489 (= lt!169756 (getCurrentListMapNoExtraKeys!652 lt!169755 (array!21288 (store (arr!10109 _values!506) i!548 (ValueCellFull!3997 v!373)) (size!10461 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169754 () ListLongMap!4737)

(declare-fun _keys!658 () array!21285)

(assert (=> b!369489 (= lt!169754 (getCurrentListMapNoExtraKeys!652 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369490 () Bool)

(declare-fun e!225804 () Bool)

(declare-fun tp_is_empty!8681 () Bool)

(assert (=> b!369490 (= e!225804 tp_is_empty!8681)))

(declare-fun res!207395 () Bool)

(declare-fun e!225800 () Bool)

(assert (=> start!36914 (=> (not res!207395) (not e!225800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36914 (= res!207395 (validMask!0 mask!970))))

(assert (=> start!36914 e!225800))

(declare-fun e!225801 () Bool)

(declare-fun array_inv!7470 (array!21287) Bool)

(assert (=> start!36914 (and (array_inv!7470 _values!506) e!225801)))

(assert (=> start!36914 tp!28814))

(assert (=> start!36914 true))

(assert (=> start!36914 tp_is_empty!8681))

(declare-fun array_inv!7471 (array!21285) Bool)

(assert (=> start!36914 (array_inv!7471 _keys!658)))

(declare-fun b!369491 () Bool)

(declare-fun res!207401 () Bool)

(assert (=> b!369491 (=> (not res!207401) (not e!225800))))

(assert (=> b!369491 (= res!207401 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10460 _keys!658))))))

(declare-fun b!369492 () Bool)

(declare-fun e!225799 () Bool)

(assert (=> b!369492 (= e!225799 tp_is_empty!8681)))

(declare-fun b!369493 () Bool)

(assert (=> b!369493 (= e!225800 e!225803)))

(declare-fun res!207404 () Bool)

(assert (=> b!369493 (=> (not res!207404) (not e!225803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21285 (_ BitVec 32)) Bool)

(assert (=> b!369493 (= res!207404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169755 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!369493 (= lt!169755 (array!21286 (store (arr!10108 _keys!658) i!548 k!778) (size!10460 _keys!658)))))

(declare-fun mapNonEmpty!14586 () Bool)

(declare-fun mapRes!14586 () Bool)

(declare-fun tp!28815 () Bool)

(assert (=> mapNonEmpty!14586 (= mapRes!14586 (and tp!28815 e!225804))))

(declare-fun mapRest!14586 () (Array (_ BitVec 32) ValueCell!3997))

(declare-fun mapValue!14586 () ValueCell!3997)

(declare-fun mapKey!14586 () (_ BitVec 32))

(assert (=> mapNonEmpty!14586 (= (arr!10109 _values!506) (store mapRest!14586 mapKey!14586 mapValue!14586))))

(declare-fun mapIsEmpty!14586 () Bool)

(assert (=> mapIsEmpty!14586 mapRes!14586))

(declare-fun b!369494 () Bool)

(declare-fun res!207402 () Bool)

(assert (=> b!369494 (=> (not res!207402) (not e!225800))))

(assert (=> b!369494 (= res!207402 (and (= (size!10461 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10460 _keys!658) (size!10461 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369495 () Bool)

(declare-fun res!207396 () Bool)

(assert (=> b!369495 (=> (not res!207396) (not e!225800))))

(declare-fun arrayContainsKey!0 (array!21285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369495 (= res!207396 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!369496 () Bool)

(declare-fun res!207398 () Bool)

(assert (=> b!369496 (=> (not res!207398) (not e!225800))))

(assert (=> b!369496 (= res!207398 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5668))))

(declare-fun b!369497 () Bool)

(declare-fun res!207399 () Bool)

(assert (=> b!369497 (=> (not res!207399) (not e!225800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369497 (= res!207399 (validKeyInArray!0 k!778))))

(declare-fun b!369498 () Bool)

(assert (=> b!369498 (= e!225801 (and e!225799 mapRes!14586))))

(declare-fun condMapEmpty!14586 () Bool)

(declare-fun mapDefault!14586 () ValueCell!3997)

