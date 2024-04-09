; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36796 () Bool)

(assert start!36796)

(declare-fun b!367203 () Bool)

(declare-fun res!205644 () Bool)

(declare-fun e!224737 () Bool)

(assert (=> b!367203 (=> (not res!205644) (not e!224737))))

(declare-datatypes ((array!21051 0))(
  ( (array!21052 (arr!9991 (Array (_ BitVec 32) (_ BitVec 64))) (size!10343 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21051)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367203 (= res!205644 (or (= (select (arr!9991 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9991 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367204 () Bool)

(declare-fun res!205649 () Bool)

(assert (=> b!367204 (=> (not res!205649) (not e!224737))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21051 (_ BitVec 32)) Bool)

(assert (=> b!367204 (= res!205649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367205 () Bool)

(declare-fun res!205641 () Bool)

(assert (=> b!367205 (=> (not res!205641) (not e!224737))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367205 (= res!205641 (validKeyInArray!0 k!778))))

(declare-fun b!367206 () Bool)

(declare-fun res!205647 () Bool)

(assert (=> b!367206 (=> (not res!205647) (not e!224737))))

(declare-datatypes ((List!5587 0))(
  ( (Nil!5584) (Cons!5583 (h!6439 (_ BitVec 64)) (t!10745 List!5587)) )
))
(declare-fun arrayNoDuplicates!0 (array!21051 (_ BitVec 32) List!5587) Bool)

(assert (=> b!367206 (= res!205647 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5584))))

(declare-fun res!205645 () Bool)

(assert (=> start!36796 (=> (not res!205645) (not e!224737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36796 (= res!205645 (validMask!0 mask!970))))

(assert (=> start!36796 e!224737))

(assert (=> start!36796 true))

(declare-datatypes ((V!12523 0))(
  ( (V!12524 (val!4326 Int)) )
))
(declare-datatypes ((ValueCell!3938 0))(
  ( (ValueCellFull!3938 (v!6519 V!12523)) (EmptyCell!3938) )
))
(declare-datatypes ((array!21053 0))(
  ( (array!21054 (arr!9992 (Array (_ BitVec 32) ValueCell!3938)) (size!10344 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21053)

(declare-fun e!224739 () Bool)

(declare-fun array_inv!7384 (array!21053) Bool)

(assert (=> start!36796 (and (array_inv!7384 _values!506) e!224739)))

(declare-fun array_inv!7385 (array!21051) Bool)

(assert (=> start!36796 (array_inv!7385 _keys!658)))

(declare-fun b!367207 () Bool)

(declare-fun e!224742 () Bool)

(declare-fun mapRes!14409 () Bool)

(assert (=> b!367207 (= e!224739 (and e!224742 mapRes!14409))))

(declare-fun condMapEmpty!14409 () Bool)

(declare-fun mapDefault!14409 () ValueCell!3938)

