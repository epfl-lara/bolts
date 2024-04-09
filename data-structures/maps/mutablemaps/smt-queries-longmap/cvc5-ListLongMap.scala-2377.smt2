; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37732 () Bool)

(assert start!37732)

(declare-fun b_free!8827 () Bool)

(declare-fun b_next!8827 () Bool)

(assert (=> start!37732 (= b_free!8827 (not b_next!8827))))

(declare-fun tp!31233 () Bool)

(declare-fun b_and!16087 () Bool)

(assert (=> start!37732 (= tp!31233 b_and!16087)))

(declare-fun b!386636 () Bool)

(declare-fun res!220870 () Bool)

(declare-fun e!234503 () Bool)

(assert (=> b!386636 (=> (not res!220870) (not e!234503))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22869 0))(
  ( (array!22870 (arr!10900 (Array (_ BitVec 32) (_ BitVec 64))) (size!11252 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22869)

(assert (=> b!386636 (= res!220870 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11252 _keys!658))))))

(declare-fun b!386637 () Bool)

(declare-fun e!234502 () Bool)

(declare-fun tp_is_empty!9499 () Bool)

(assert (=> b!386637 (= e!234502 tp_is_empty!9499)))

(declare-fun b!386638 () Bool)

(declare-fun res!220871 () Bool)

(assert (=> b!386638 (=> (not res!220871) (not e!234503))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386638 (= res!220871 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!220869 () Bool)

(assert (=> start!37732 (=> (not res!220869) (not e!234503))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37732 (= res!220869 (validMask!0 mask!970))))

(assert (=> start!37732 e!234503))

(declare-datatypes ((V!13771 0))(
  ( (V!13772 (val!4794 Int)) )
))
(declare-datatypes ((ValueCell!4406 0))(
  ( (ValueCellFull!4406 (v!6987 V!13771)) (EmptyCell!4406) )
))
(declare-datatypes ((array!22871 0))(
  ( (array!22872 (arr!10901 (Array (_ BitVec 32) ValueCell!4406)) (size!11253 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22871)

(declare-fun e!234504 () Bool)

(declare-fun array_inv!7992 (array!22871) Bool)

(assert (=> start!37732 (and (array_inv!7992 _values!506) e!234504)))

(assert (=> start!37732 tp!31233))

(assert (=> start!37732 true))

(assert (=> start!37732 tp_is_empty!9499))

(declare-fun array_inv!7993 (array!22869) Bool)

(assert (=> start!37732 (array_inv!7993 _keys!658)))

(declare-fun b!386639 () Bool)

(declare-fun e!234505 () Bool)

(assert (=> b!386639 (= e!234505 tp_is_empty!9499)))

(declare-fun b!386640 () Bool)

(declare-fun res!220868 () Bool)

(assert (=> b!386640 (=> (not res!220868) (not e!234503))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386640 (= res!220868 (and (= (size!11253 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11252 _keys!658) (size!11253 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15813 () Bool)

(declare-fun mapRes!15813 () Bool)

(assert (=> mapIsEmpty!15813 mapRes!15813))

(declare-fun b!386641 () Bool)

(declare-fun res!220863 () Bool)

(assert (=> b!386641 (=> (not res!220863) (not e!234503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22869 (_ BitVec 32)) Bool)

(assert (=> b!386641 (= res!220863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386642 () Bool)

(declare-fun res!220862 () Bool)

(assert (=> b!386642 (=> (not res!220862) (not e!234503))))

(declare-datatypes ((List!6269 0))(
  ( (Nil!6266) (Cons!6265 (h!7121 (_ BitVec 64)) (t!11427 List!6269)) )
))
(declare-fun arrayNoDuplicates!0 (array!22869 (_ BitVec 32) List!6269) Bool)

(assert (=> b!386642 (= res!220862 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6266))))

(declare-fun b!386643 () Bool)

(assert (=> b!386643 (= e!234504 (and e!234505 mapRes!15813))))

(declare-fun condMapEmpty!15813 () Bool)

(declare-fun mapDefault!15813 () ValueCell!4406)

