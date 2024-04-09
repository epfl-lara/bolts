; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36802 () Bool)

(assert start!36802)

(declare-fun b!367311 () Bool)

(declare-fun res!205723 () Bool)

(declare-fun e!224791 () Bool)

(assert (=> b!367311 (=> (not res!205723) (not e!224791))))

(declare-datatypes ((array!21063 0))(
  ( (array!21064 (arr!9997 (Array (_ BitVec 32) (_ BitVec 64))) (size!10349 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21063)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21063 (_ BitVec 32)) Bool)

(assert (=> b!367311 (= res!205723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367312 () Bool)

(declare-fun res!205727 () Bool)

(assert (=> b!367312 (=> (not res!205727) (not e!224791))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367312 (= res!205727 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10349 _keys!658))))))

(declare-fun b!367313 () Bool)

(declare-fun res!205730 () Bool)

(assert (=> b!367313 (=> (not res!205730) (not e!224791))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367313 (= res!205730 (validKeyInArray!0 k!778))))

(declare-fun b!367314 () Bool)

(declare-fun res!205725 () Bool)

(assert (=> b!367314 (=> (not res!205725) (not e!224791))))

(assert (=> b!367314 (= res!205725 (or (= (select (arr!9997 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9997 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367315 () Bool)

(declare-fun e!224795 () Bool)

(declare-fun tp_is_empty!8569 () Bool)

(assert (=> b!367315 (= e!224795 tp_is_empty!8569)))

(declare-fun b!367316 () Bool)

(declare-fun e!224792 () Bool)

(assert (=> b!367316 (= e!224791 e!224792)))

(declare-fun res!205729 () Bool)

(assert (=> b!367316 (=> (not res!205729) (not e!224792))))

(declare-fun lt!169357 () array!21063)

(assert (=> b!367316 (= res!205729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169357 mask!970))))

(assert (=> b!367316 (= lt!169357 (array!21064 (store (arr!9997 _keys!658) i!548 k!778) (size!10349 _keys!658)))))

(declare-fun b!367317 () Bool)

(assert (=> b!367317 (= e!224792 false)))

(declare-fun lt!169356 () Bool)

(declare-datatypes ((List!5590 0))(
  ( (Nil!5587) (Cons!5586 (h!6442 (_ BitVec 64)) (t!10748 List!5590)) )
))
(declare-fun arrayNoDuplicates!0 (array!21063 (_ BitVec 32) List!5590) Bool)

(assert (=> b!367317 (= lt!169356 (arrayNoDuplicates!0 lt!169357 #b00000000000000000000000000000000 Nil!5587))))

(declare-fun b!367318 () Bool)

(declare-fun e!224794 () Bool)

(assert (=> b!367318 (= e!224794 tp_is_empty!8569)))

(declare-fun b!367319 () Bool)

(declare-fun res!205726 () Bool)

(assert (=> b!367319 (=> (not res!205726) (not e!224791))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12531 0))(
  ( (V!12532 (val!4329 Int)) )
))
(declare-datatypes ((ValueCell!3941 0))(
  ( (ValueCellFull!3941 (v!6522 V!12531)) (EmptyCell!3941) )
))
(declare-datatypes ((array!21065 0))(
  ( (array!21066 (arr!9998 (Array (_ BitVec 32) ValueCell!3941)) (size!10350 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21065)

(assert (=> b!367319 (= res!205726 (and (= (size!10350 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10349 _keys!658) (size!10350 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!205724 () Bool)

(assert (=> start!36802 (=> (not res!205724) (not e!224791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36802 (= res!205724 (validMask!0 mask!970))))

(assert (=> start!36802 e!224791))

(assert (=> start!36802 true))

(declare-fun e!224796 () Bool)

(declare-fun array_inv!7388 (array!21065) Bool)

(assert (=> start!36802 (and (array_inv!7388 _values!506) e!224796)))

(declare-fun array_inv!7389 (array!21063) Bool)

(assert (=> start!36802 (array_inv!7389 _keys!658)))

(declare-fun mapNonEmpty!14418 () Bool)

(declare-fun mapRes!14418 () Bool)

(declare-fun tp!28494 () Bool)

(assert (=> mapNonEmpty!14418 (= mapRes!14418 (and tp!28494 e!224794))))

(declare-fun mapValue!14418 () ValueCell!3941)

(declare-fun mapKey!14418 () (_ BitVec 32))

(declare-fun mapRest!14418 () (Array (_ BitVec 32) ValueCell!3941))

(assert (=> mapNonEmpty!14418 (= (arr!9998 _values!506) (store mapRest!14418 mapKey!14418 mapValue!14418))))

(declare-fun b!367320 () Bool)

(declare-fun res!205722 () Bool)

(assert (=> b!367320 (=> (not res!205722) (not e!224791))))

(declare-fun arrayContainsKey!0 (array!21063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367320 (= res!205722 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14418 () Bool)

(assert (=> mapIsEmpty!14418 mapRes!14418))

(declare-fun b!367321 () Bool)

(declare-fun res!205728 () Bool)

(assert (=> b!367321 (=> (not res!205728) (not e!224791))))

(assert (=> b!367321 (= res!205728 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5587))))

(declare-fun b!367322 () Bool)

(assert (=> b!367322 (= e!224796 (and e!224795 mapRes!14418))))

(declare-fun condMapEmpty!14418 () Bool)

(declare-fun mapDefault!14418 () ValueCell!3941)

