; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36820 () Bool)

(assert start!36820)

(declare-fun b_free!7939 () Bool)

(declare-fun b_next!7939 () Bool)

(assert (=> start!36820 (= b_free!7939 (not b_next!7939))))

(declare-fun tp!28532 () Bool)

(declare-fun b_and!15199 () Bool)

(assert (=> start!36820 (= tp!28532 b_and!15199)))

(declare-fun b!367655 () Bool)

(declare-fun res!205994 () Bool)

(declare-fun e!224953 () Bool)

(assert (=> b!367655 (=> (not res!205994) (not e!224953))))

(declare-datatypes ((array!21099 0))(
  ( (array!21100 (arr!10015 (Array (_ BitVec 32) (_ BitVec 64))) (size!10367 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21099)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21099 (_ BitVec 32)) Bool)

(assert (=> b!367655 (= res!205994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367656 () Bool)

(declare-fun res!205990 () Bool)

(assert (=> b!367656 (=> (not res!205990) (not e!224953))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367656 (= res!205990 (or (= (select (arr!10015 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10015 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367657 () Bool)

(declare-fun res!205991 () Bool)

(assert (=> b!367657 (=> (not res!205991) (not e!224953))))

(declare-datatypes ((List!5600 0))(
  ( (Nil!5597) (Cons!5596 (h!6452 (_ BitVec 64)) (t!10758 List!5600)) )
))
(declare-fun arrayNoDuplicates!0 (array!21099 (_ BitVec 32) List!5600) Bool)

(assert (=> b!367657 (= res!205991 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5597))))

(declare-fun b!367658 () Bool)

(declare-fun res!205992 () Bool)

(assert (=> b!367658 (=> (not res!205992) (not e!224953))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12555 0))(
  ( (V!12556 (val!4338 Int)) )
))
(declare-datatypes ((ValueCell!3950 0))(
  ( (ValueCellFull!3950 (v!6531 V!12555)) (EmptyCell!3950) )
))
(declare-datatypes ((array!21101 0))(
  ( (array!21102 (arr!10016 (Array (_ BitVec 32) ValueCell!3950)) (size!10368 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21101)

(assert (=> b!367658 (= res!205992 (and (= (size!10368 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10367 _keys!658) (size!10368 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367659 () Bool)

(declare-fun res!205989 () Bool)

(assert (=> b!367659 (=> (not res!205989) (not e!224953))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367659 (= res!205989 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14445 () Bool)

(declare-fun mapRes!14445 () Bool)

(declare-fun tp!28533 () Bool)

(declare-fun e!224955 () Bool)

(assert (=> mapNonEmpty!14445 (= mapRes!14445 (and tp!28533 e!224955))))

(declare-fun mapRest!14445 () (Array (_ BitVec 32) ValueCell!3950))

(declare-fun mapValue!14445 () ValueCell!3950)

(declare-fun mapKey!14445 () (_ BitVec 32))

(assert (=> mapNonEmpty!14445 (= (arr!10016 _values!506) (store mapRest!14445 mapKey!14445 mapValue!14445))))

(declare-fun b!367660 () Bool)

(declare-fun res!205993 () Bool)

(declare-fun e!224957 () Bool)

(assert (=> b!367660 (=> (not res!205993) (not e!224957))))

(declare-fun lt!169401 () array!21099)

(assert (=> b!367660 (= res!205993 (arrayNoDuplicates!0 lt!169401 #b00000000000000000000000000000000 Nil!5597))))

(declare-fun b!367661 () Bool)

(assert (=> b!367661 (= e!224957 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5742 0))(
  ( (tuple2!5743 (_1!2881 (_ BitVec 64)) (_2!2881 V!12555)) )
))
(declare-datatypes ((List!5601 0))(
  ( (Nil!5598) (Cons!5597 (h!6453 tuple2!5742) (t!10759 List!5601)) )
))
(declare-datatypes ((ListLongMap!4669 0))(
  ( (ListLongMap!4670 (toList!2350 List!5601)) )
))
(declare-fun lt!169402 () ListLongMap!4669)

(declare-fun zeroValue!472 () V!12555)

(declare-fun minValue!472 () V!12555)

(declare-fun getCurrentListMapNoExtraKeys!618 (array!21099 array!21101 (_ BitVec 32) (_ BitVec 32) V!12555 V!12555 (_ BitVec 32) Int) ListLongMap!4669)

(assert (=> b!367661 (= lt!169402 (getCurrentListMapNoExtraKeys!618 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!205988 () Bool)

(assert (=> start!36820 (=> (not res!205988) (not e!224953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36820 (= res!205988 (validMask!0 mask!970))))

(assert (=> start!36820 e!224953))

(assert (=> start!36820 true))

(declare-fun e!224956 () Bool)

(declare-fun array_inv!7400 (array!21101) Bool)

(assert (=> start!36820 (and (array_inv!7400 _values!506) e!224956)))

(assert (=> start!36820 tp!28532))

(declare-fun tp_is_empty!8587 () Bool)

(assert (=> start!36820 tp_is_empty!8587))

(declare-fun array_inv!7401 (array!21099) Bool)

(assert (=> start!36820 (array_inv!7401 _keys!658)))

(declare-fun b!367662 () Bool)

(assert (=> b!367662 (= e!224953 e!224957)))

(declare-fun res!205986 () Bool)

(assert (=> b!367662 (=> (not res!205986) (not e!224957))))

(assert (=> b!367662 (= res!205986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169401 mask!970))))

(assert (=> b!367662 (= lt!169401 (array!21100 (store (arr!10015 _keys!658) i!548 k!778) (size!10367 _keys!658)))))

(declare-fun b!367663 () Bool)

(declare-fun e!224958 () Bool)

(assert (=> b!367663 (= e!224958 tp_is_empty!8587)))

(declare-fun b!367664 () Bool)

(declare-fun res!205985 () Bool)

(assert (=> b!367664 (=> (not res!205985) (not e!224953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367664 (= res!205985 (validKeyInArray!0 k!778))))

(declare-fun b!367665 () Bool)

(assert (=> b!367665 (= e!224956 (and e!224958 mapRes!14445))))

(declare-fun condMapEmpty!14445 () Bool)

(declare-fun mapDefault!14445 () ValueCell!3950)

