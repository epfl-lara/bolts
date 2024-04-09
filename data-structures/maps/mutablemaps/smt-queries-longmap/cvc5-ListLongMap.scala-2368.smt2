; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37678 () Bool)

(assert start!37678)

(declare-fun b_free!8773 () Bool)

(declare-fun b_next!8773 () Bool)

(assert (=> start!37678 (= b_free!8773 (not b_next!8773))))

(declare-fun tp!31071 () Bool)

(declare-fun b_and!16033 () Bool)

(assert (=> start!37678 (= tp!31071 b_and!16033)))

(declare-fun b!385583 () Bool)

(declare-fun res!220058 () Bool)

(declare-fun e!234019 () Bool)

(assert (=> b!385583 (=> (not res!220058) (not e!234019))))

(declare-datatypes ((array!22767 0))(
  ( (array!22768 (arr!10849 (Array (_ BitVec 32) (_ BitVec 64))) (size!11201 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22767)

(declare-datatypes ((List!6233 0))(
  ( (Nil!6230) (Cons!6229 (h!7085 (_ BitVec 64)) (t!11391 List!6233)) )
))
(declare-fun arrayNoDuplicates!0 (array!22767 (_ BitVec 32) List!6233) Bool)

(assert (=> b!385583 (= res!220058 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6230))))

(declare-fun b!385584 () Bool)

(declare-fun res!220054 () Bool)

(declare-fun e!234016 () Bool)

(assert (=> b!385584 (=> (not res!220054) (not e!234016))))

(declare-fun lt!181623 () array!22767)

(assert (=> b!385584 (= res!220054 (arrayNoDuplicates!0 lt!181623 #b00000000000000000000000000000000 Nil!6230))))

(declare-fun b!385585 () Bool)

(declare-fun res!220057 () Bool)

(assert (=> b!385585 (=> (not res!220057) (not e!234019))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385585 (= res!220057 (validKeyInArray!0 k!778))))

(declare-fun b!385586 () Bool)

(declare-fun res!220060 () Bool)

(assert (=> b!385586 (=> (not res!220060) (not e!234019))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22767 (_ BitVec 32)) Bool)

(assert (=> b!385586 (= res!220060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15732 () Bool)

(declare-fun mapRes!15732 () Bool)

(assert (=> mapIsEmpty!15732 mapRes!15732))

(declare-fun res!220052 () Bool)

(assert (=> start!37678 (=> (not res!220052) (not e!234019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37678 (= res!220052 (validMask!0 mask!970))))

(assert (=> start!37678 e!234019))

(assert (=> start!37678 true))

(declare-datatypes ((V!13699 0))(
  ( (V!13700 (val!4767 Int)) )
))
(declare-datatypes ((ValueCell!4379 0))(
  ( (ValueCellFull!4379 (v!6960 V!13699)) (EmptyCell!4379) )
))
(declare-datatypes ((array!22769 0))(
  ( (array!22770 (arr!10850 (Array (_ BitVec 32) ValueCell!4379)) (size!11202 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22769)

(declare-fun e!234017 () Bool)

(declare-fun array_inv!7962 (array!22769) Bool)

(assert (=> start!37678 (and (array_inv!7962 _values!506) e!234017)))

(assert (=> start!37678 tp!31071))

(declare-fun tp_is_empty!9445 () Bool)

(assert (=> start!37678 tp_is_empty!9445))

(declare-fun array_inv!7963 (array!22767) Bool)

(assert (=> start!37678 (array_inv!7963 _keys!658)))

(declare-fun b!385587 () Bool)

(declare-fun res!220059 () Bool)

(assert (=> b!385587 (=> (not res!220059) (not e!234019))))

(declare-fun arrayContainsKey!0 (array!22767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385587 (= res!220059 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385588 () Bool)

(declare-fun e!234021 () Bool)

(assert (=> b!385588 (= e!234017 (and e!234021 mapRes!15732))))

(declare-fun condMapEmpty!15732 () Bool)

(declare-fun mapDefault!15732 () ValueCell!4379)

