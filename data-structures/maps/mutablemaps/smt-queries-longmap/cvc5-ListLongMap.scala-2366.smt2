; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37666 () Bool)

(assert start!37666)

(declare-fun b!385363 () Bool)

(declare-fun e!233915 () Bool)

(assert (=> b!385363 (= e!233915 false)))

(declare-fun lt!181594 () Bool)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((array!22743 0))(
  ( (array!22744 (arr!10837 (Array (_ BitVec 32) (_ BitVec 64))) (size!11189 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22743)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22743 (_ BitVec 32)) Bool)

(assert (=> b!385363 (= lt!181594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!22744 (store (arr!10837 _keys!658) i!548 k!778) (size!11189 _keys!658)) mask!970))))

(declare-fun b!385364 () Bool)

(declare-fun res!219887 () Bool)

(assert (=> b!385364 (=> (not res!219887) (not e!233915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385364 (= res!219887 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15714 () Bool)

(declare-fun mapRes!15714 () Bool)

(assert (=> mapIsEmpty!15714 mapRes!15714))

(declare-fun b!385365 () Bool)

(declare-fun res!219893 () Bool)

(assert (=> b!385365 (=> (not res!219893) (not e!233915))))

(declare-datatypes ((List!6224 0))(
  ( (Nil!6221) (Cons!6220 (h!7076 (_ BitVec 64)) (t!11382 List!6224)) )
))
(declare-fun arrayNoDuplicates!0 (array!22743 (_ BitVec 32) List!6224) Bool)

(assert (=> b!385365 (= res!219893 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6221))))

(declare-fun b!385366 () Bool)

(declare-fun e!233917 () Bool)

(declare-fun e!233919 () Bool)

(assert (=> b!385366 (= e!233917 (and e!233919 mapRes!15714))))

(declare-fun condMapEmpty!15714 () Bool)

(declare-datatypes ((V!13683 0))(
  ( (V!13684 (val!4761 Int)) )
))
(declare-datatypes ((ValueCell!4373 0))(
  ( (ValueCellFull!4373 (v!6954 V!13683)) (EmptyCell!4373) )
))
(declare-datatypes ((array!22745 0))(
  ( (array!22746 (arr!10838 (Array (_ BitVec 32) ValueCell!4373)) (size!11190 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22745)

(declare-fun mapDefault!15714 () ValueCell!4373)

