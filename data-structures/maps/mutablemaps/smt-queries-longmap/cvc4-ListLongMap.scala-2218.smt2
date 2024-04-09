; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36782 () Bool)

(assert start!36782)

(declare-fun b!366951 () Bool)

(declare-fun res!205459 () Bool)

(declare-fun e!224614 () Bool)

(assert (=> b!366951 (=> (not res!205459) (not e!224614))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366951 (= res!205459 (validKeyInArray!0 k!778))))

(declare-fun b!366953 () Bool)

(declare-fun res!205457 () Bool)

(assert (=> b!366953 (=> (not res!205457) (not e!224614))))

(declare-datatypes ((array!21023 0))(
  ( (array!21024 (arr!9977 (Array (_ BitVec 32) (_ BitVec 64))) (size!10329 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21023)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21023 (_ BitVec 32)) Bool)

(assert (=> b!366953 (= res!205457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14388 () Bool)

(declare-fun mapRes!14388 () Bool)

(declare-fun tp!28464 () Bool)

(declare-fun e!224612 () Bool)

(assert (=> mapNonEmpty!14388 (= mapRes!14388 (and tp!28464 e!224612))))

(declare-fun mapKey!14388 () (_ BitVec 32))

(declare-datatypes ((V!12503 0))(
  ( (V!12504 (val!4319 Int)) )
))
(declare-datatypes ((ValueCell!3931 0))(
  ( (ValueCellFull!3931 (v!6512 V!12503)) (EmptyCell!3931) )
))
(declare-datatypes ((array!21025 0))(
  ( (array!21026 (arr!9978 (Array (_ BitVec 32) ValueCell!3931)) (size!10330 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21025)

(declare-fun mapValue!14388 () ValueCell!3931)

(declare-fun mapRest!14388 () (Array (_ BitVec 32) ValueCell!3931))

(assert (=> mapNonEmpty!14388 (= (arr!9978 _values!506) (store mapRest!14388 mapKey!14388 mapValue!14388))))

(declare-fun b!366954 () Bool)

(declare-fun tp_is_empty!8549 () Bool)

(assert (=> b!366954 (= e!224612 tp_is_empty!8549)))

(declare-fun b!366955 () Bool)

(declare-fun e!224611 () Bool)

(assert (=> b!366955 (= e!224611 false)))

(declare-fun lt!169297 () Bool)

(declare-fun lt!169296 () array!21023)

(declare-datatypes ((List!5580 0))(
  ( (Nil!5577) (Cons!5576 (h!6432 (_ BitVec 64)) (t!10738 List!5580)) )
))
(declare-fun arrayNoDuplicates!0 (array!21023 (_ BitVec 32) List!5580) Bool)

(assert (=> b!366955 (= lt!169297 (arrayNoDuplicates!0 lt!169296 #b00000000000000000000000000000000 Nil!5577))))

(declare-fun b!366956 () Bool)

(declare-fun res!205455 () Bool)

(assert (=> b!366956 (=> (not res!205455) (not e!224614))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366956 (= res!205455 (and (= (size!10330 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10329 _keys!658) (size!10330 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366957 () Bool)

(assert (=> b!366957 (= e!224614 e!224611)))

(declare-fun res!205460 () Bool)

(assert (=> b!366957 (=> (not res!205460) (not e!224611))))

(assert (=> b!366957 (= res!205460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169296 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366957 (= lt!169296 (array!21024 (store (arr!9977 _keys!658) i!548 k!778) (size!10329 _keys!658)))))

(declare-fun b!366958 () Bool)

(declare-fun res!205454 () Bool)

(assert (=> b!366958 (=> (not res!205454) (not e!224614))))

(assert (=> b!366958 (= res!205454 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5577))))

(declare-fun mapIsEmpty!14388 () Bool)

(assert (=> mapIsEmpty!14388 mapRes!14388))

(declare-fun b!366959 () Bool)

(declare-fun res!205456 () Bool)

(assert (=> b!366959 (=> (not res!205456) (not e!224614))))

(declare-fun arrayContainsKey!0 (array!21023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366959 (= res!205456 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366960 () Bool)

(declare-fun e!224615 () Bool)

(declare-fun e!224613 () Bool)

(assert (=> b!366960 (= e!224615 (and e!224613 mapRes!14388))))

(declare-fun condMapEmpty!14388 () Bool)

(declare-fun mapDefault!14388 () ValueCell!3931)

