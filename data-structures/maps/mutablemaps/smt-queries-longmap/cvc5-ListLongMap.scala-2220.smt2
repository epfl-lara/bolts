; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36790 () Bool)

(assert start!36790)

(declare-fun b!367095 () Bool)

(declare-fun res!205564 () Bool)

(declare-fun e!224686 () Bool)

(assert (=> b!367095 (=> (not res!205564) (not e!224686))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21039 0))(
  ( (array!21040 (arr!9985 (Array (_ BitVec 32) (_ BitVec 64))) (size!10337 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21039)

(assert (=> b!367095 (= res!205564 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10337 _keys!658))))))

(declare-fun b!367096 () Bool)

(declare-fun res!205563 () Bool)

(assert (=> b!367096 (=> (not res!205563) (not e!224686))))

(declare-datatypes ((List!5584 0))(
  ( (Nil!5581) (Cons!5580 (h!6436 (_ BitVec 64)) (t!10742 List!5584)) )
))
(declare-fun arrayNoDuplicates!0 (array!21039 (_ BitVec 32) List!5584) Bool)

(assert (=> b!367096 (= res!205563 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5581))))

(declare-fun mapIsEmpty!14400 () Bool)

(declare-fun mapRes!14400 () Bool)

(assert (=> mapIsEmpty!14400 mapRes!14400))

(declare-fun b!367097 () Bool)

(declare-fun e!224685 () Bool)

(declare-fun tp_is_empty!8557 () Bool)

(assert (=> b!367097 (= e!224685 tp_is_empty!8557)))

(declare-fun b!367098 () Bool)

(declare-fun res!205567 () Bool)

(assert (=> b!367098 (=> (not res!205567) (not e!224686))))

(assert (=> b!367098 (= res!205567 (or (= (select (arr!9985 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9985 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14400 () Bool)

(declare-fun tp!28476 () Bool)

(declare-fun e!224688 () Bool)

(assert (=> mapNonEmpty!14400 (= mapRes!14400 (and tp!28476 e!224688))))

(declare-datatypes ((V!12515 0))(
  ( (V!12516 (val!4323 Int)) )
))
(declare-datatypes ((ValueCell!3935 0))(
  ( (ValueCellFull!3935 (v!6516 V!12515)) (EmptyCell!3935) )
))
(declare-fun mapValue!14400 () ValueCell!3935)

(declare-datatypes ((array!21041 0))(
  ( (array!21042 (arr!9986 (Array (_ BitVec 32) ValueCell!3935)) (size!10338 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21041)

(declare-fun mapRest!14400 () (Array (_ BitVec 32) ValueCell!3935))

(declare-fun mapKey!14400 () (_ BitVec 32))

(assert (=> mapNonEmpty!14400 (= (arr!9986 _values!506) (store mapRest!14400 mapKey!14400 mapValue!14400))))

(declare-fun res!205560 () Bool)

(assert (=> start!36790 (=> (not res!205560) (not e!224686))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36790 (= res!205560 (validMask!0 mask!970))))

(assert (=> start!36790 e!224686))

(assert (=> start!36790 true))

(declare-fun e!224684 () Bool)

(declare-fun array_inv!7380 (array!21041) Bool)

(assert (=> start!36790 (and (array_inv!7380 _values!506) e!224684)))

(declare-fun array_inv!7381 (array!21039) Bool)

(assert (=> start!36790 (array_inv!7381 _keys!658)))

(declare-fun b!367099 () Bool)

(declare-fun res!205562 () Bool)

(assert (=> b!367099 (=> (not res!205562) (not e!224686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21039 (_ BitVec 32)) Bool)

(assert (=> b!367099 (= res!205562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367100 () Bool)

(declare-fun e!224687 () Bool)

(assert (=> b!367100 (= e!224686 e!224687)))

(declare-fun res!205565 () Bool)

(assert (=> b!367100 (=> (not res!205565) (not e!224687))))

(declare-fun lt!169321 () array!21039)

(assert (=> b!367100 (= res!205565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169321 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!367100 (= lt!169321 (array!21040 (store (arr!9985 _keys!658) i!548 k!778) (size!10337 _keys!658)))))

(declare-fun b!367101 () Bool)

(assert (=> b!367101 (= e!224687 false)))

(declare-fun lt!169320 () Bool)

(assert (=> b!367101 (= lt!169320 (arrayNoDuplicates!0 lt!169321 #b00000000000000000000000000000000 Nil!5581))))

(declare-fun b!367102 () Bool)

(declare-fun res!205566 () Bool)

(assert (=> b!367102 (=> (not res!205566) (not e!224686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367102 (= res!205566 (validKeyInArray!0 k!778))))

(declare-fun b!367103 () Bool)

(assert (=> b!367103 (= e!224684 (and e!224685 mapRes!14400))))

(declare-fun condMapEmpty!14400 () Bool)

(declare-fun mapDefault!14400 () ValueCell!3935)

