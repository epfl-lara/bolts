; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36824 () Bool)

(assert start!36824)

(declare-fun b_free!7943 () Bool)

(declare-fun b_next!7943 () Bool)

(assert (=> start!36824 (= b_free!7943 (not b_next!7943))))

(declare-fun tp!28544 () Bool)

(declare-fun b_and!15203 () Bool)

(assert (=> start!36824 (= tp!28544 b_and!15203)))

(declare-fun mapNonEmpty!14451 () Bool)

(declare-fun mapRes!14451 () Bool)

(declare-fun tp!28545 () Bool)

(declare-fun e!224990 () Bool)

(assert (=> mapNonEmpty!14451 (= mapRes!14451 (and tp!28545 e!224990))))

(declare-datatypes ((V!12559 0))(
  ( (V!12560 (val!4340 Int)) )
))
(declare-datatypes ((ValueCell!3952 0))(
  ( (ValueCellFull!3952 (v!6533 V!12559)) (EmptyCell!3952) )
))
(declare-fun mapValue!14451 () ValueCell!3952)

(declare-datatypes ((array!21107 0))(
  ( (array!21108 (arr!10019 (Array (_ BitVec 32) ValueCell!3952)) (size!10371 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21107)

(declare-fun mapKey!14451 () (_ BitVec 32))

(declare-fun mapRest!14451 () (Array (_ BitVec 32) ValueCell!3952))

(assert (=> mapNonEmpty!14451 (= (arr!10019 _values!506) (store mapRest!14451 mapKey!14451 mapValue!14451))))

(declare-fun res!206045 () Bool)

(declare-fun e!224992 () Bool)

(assert (=> start!36824 (=> (not res!206045) (not e!224992))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36824 (= res!206045 (validMask!0 mask!970))))

(assert (=> start!36824 e!224992))

(assert (=> start!36824 true))

(declare-fun e!224993 () Bool)

(declare-fun array_inv!7404 (array!21107) Bool)

(assert (=> start!36824 (and (array_inv!7404 _values!506) e!224993)))

(assert (=> start!36824 tp!28544))

(declare-fun tp_is_empty!8591 () Bool)

(assert (=> start!36824 tp_is_empty!8591))

(declare-datatypes ((array!21109 0))(
  ( (array!21110 (arr!10020 (Array (_ BitVec 32) (_ BitVec 64))) (size!10372 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21109)

(declare-fun array_inv!7405 (array!21109) Bool)

(assert (=> start!36824 (array_inv!7405 _keys!658)))

(declare-fun b!367733 () Bool)

(declare-fun res!206046 () Bool)

(assert (=> b!367733 (=> (not res!206046) (not e!224992))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367733 (= res!206046 (or (= (select (arr!10020 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10020 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367734 () Bool)

(declare-fun res!206049 () Bool)

(declare-fun e!224989 () Bool)

(assert (=> b!367734 (=> (not res!206049) (not e!224989))))

(declare-fun lt!169414 () array!21109)

(declare-datatypes ((List!5604 0))(
  ( (Nil!5601) (Cons!5600 (h!6456 (_ BitVec 64)) (t!10762 List!5604)) )
))
(declare-fun arrayNoDuplicates!0 (array!21109 (_ BitVec 32) List!5604) Bool)

(assert (=> b!367734 (= res!206049 (arrayNoDuplicates!0 lt!169414 #b00000000000000000000000000000000 Nil!5601))))

(declare-fun b!367735 () Bool)

(assert (=> b!367735 (= e!224992 e!224989)))

(declare-fun res!206051 () Bool)

(assert (=> b!367735 (=> (not res!206051) (not e!224989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21109 (_ BitVec 32)) Bool)

(assert (=> b!367735 (= res!206051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169414 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!367735 (= lt!169414 (array!21110 (store (arr!10020 _keys!658) i!548 k!778) (size!10372 _keys!658)))))

(declare-fun b!367736 () Bool)

(declare-fun res!206048 () Bool)

(assert (=> b!367736 (=> (not res!206048) (not e!224992))))

(declare-fun arrayContainsKey!0 (array!21109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367736 (= res!206048 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!367737 () Bool)

(declare-fun res!206052 () Bool)

(assert (=> b!367737 (=> (not res!206052) (not e!224992))))

(assert (=> b!367737 (= res!206052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367738 () Bool)

(declare-fun res!206053 () Bool)

(assert (=> b!367738 (=> (not res!206053) (not e!224992))))

(assert (=> b!367738 (= res!206053 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10372 _keys!658))))))

(declare-fun b!367739 () Bool)

(declare-fun res!206054 () Bool)

(assert (=> b!367739 (=> (not res!206054) (not e!224992))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367739 (= res!206054 (and (= (size!10371 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10372 _keys!658) (size!10371 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367740 () Bool)

(declare-fun e!224991 () Bool)

(assert (=> b!367740 (= e!224993 (and e!224991 mapRes!14451))))

(declare-fun condMapEmpty!14451 () Bool)

(declare-fun mapDefault!14451 () ValueCell!3952)

