; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36800 () Bool)

(assert start!36800)

(declare-fun b!367275 () Bool)

(declare-fun e!224778 () Bool)

(assert (=> b!367275 (= e!224778 false)))

(declare-fun lt!169351 () Bool)

(declare-datatypes ((array!21059 0))(
  ( (array!21060 (arr!9995 (Array (_ BitVec 32) (_ BitVec 64))) (size!10347 (_ BitVec 32))) )
))
(declare-fun lt!169350 () array!21059)

(declare-datatypes ((List!5589 0))(
  ( (Nil!5586) (Cons!5585 (h!6441 (_ BitVec 64)) (t!10747 List!5589)) )
))
(declare-fun arrayNoDuplicates!0 (array!21059 (_ BitVec 32) List!5589) Bool)

(assert (=> b!367275 (= lt!169351 (arrayNoDuplicates!0 lt!169350 #b00000000000000000000000000000000 Nil!5586))))

(declare-fun mapNonEmpty!14415 () Bool)

(declare-fun mapRes!14415 () Bool)

(declare-fun tp!28491 () Bool)

(declare-fun e!224776 () Bool)

(assert (=> mapNonEmpty!14415 (= mapRes!14415 (and tp!28491 e!224776))))

(declare-datatypes ((V!12527 0))(
  ( (V!12528 (val!4328 Int)) )
))
(declare-datatypes ((ValueCell!3940 0))(
  ( (ValueCellFull!3940 (v!6521 V!12527)) (EmptyCell!3940) )
))
(declare-datatypes ((array!21061 0))(
  ( (array!21062 (arr!9996 (Array (_ BitVec 32) ValueCell!3940)) (size!10348 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21061)

(declare-fun mapKey!14415 () (_ BitVec 32))

(declare-fun mapValue!14415 () ValueCell!3940)

(declare-fun mapRest!14415 () (Array (_ BitVec 32) ValueCell!3940))

(assert (=> mapNonEmpty!14415 (= (arr!9996 _values!506) (store mapRest!14415 mapKey!14415 mapValue!14415))))

(declare-fun b!367276 () Bool)

(declare-fun res!205703 () Bool)

(declare-fun e!224775 () Bool)

(assert (=> b!367276 (=> (not res!205703) (not e!224775))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21059)

(assert (=> b!367276 (= res!205703 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10347 _keys!658))))))

(declare-fun mapIsEmpty!14415 () Bool)

(assert (=> mapIsEmpty!14415 mapRes!14415))

(declare-fun b!367277 () Bool)

(declare-fun res!205695 () Bool)

(assert (=> b!367277 (=> (not res!205695) (not e!224775))))

(assert (=> b!367277 (= res!205695 (or (= (select (arr!9995 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9995 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367278 () Bool)

(declare-fun e!224777 () Bool)

(declare-fun tp_is_empty!8567 () Bool)

(assert (=> b!367278 (= e!224777 tp_is_empty!8567)))

(declare-fun b!367279 () Bool)

(assert (=> b!367279 (= e!224775 e!224778)))

(declare-fun res!205702 () Bool)

(assert (=> b!367279 (=> (not res!205702) (not e!224778))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21059 (_ BitVec 32)) Bool)

(assert (=> b!367279 (= res!205702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169350 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!367279 (= lt!169350 (array!21060 (store (arr!9995 _keys!658) i!548 k!778) (size!10347 _keys!658)))))

(declare-fun b!367280 () Bool)

(declare-fun res!205696 () Bool)

(assert (=> b!367280 (=> (not res!205696) (not e!224775))))

(declare-fun arrayContainsKey!0 (array!21059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367280 (= res!205696 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!367281 () Bool)

(declare-fun res!205699 () Bool)

(assert (=> b!367281 (=> (not res!205699) (not e!224775))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367281 (= res!205699 (and (= (size!10348 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10347 _keys!658) (size!10348 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367282 () Bool)

(declare-fun res!205698 () Bool)

(assert (=> b!367282 (=> (not res!205698) (not e!224775))))

(assert (=> b!367282 (= res!205698 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5586))))

(declare-fun b!367284 () Bool)

(declare-fun e!224773 () Bool)

(assert (=> b!367284 (= e!224773 (and e!224777 mapRes!14415))))

(declare-fun condMapEmpty!14415 () Bool)

(declare-fun mapDefault!14415 () ValueCell!3940)

