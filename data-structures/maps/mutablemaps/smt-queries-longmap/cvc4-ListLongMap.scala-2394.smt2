; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37904 () Bool)

(assert start!37904)

(declare-fun b_free!8933 () Bool)

(declare-fun b_next!8933 () Bool)

(assert (=> start!37904 (= b_free!8933 (not b_next!8933))))

(declare-fun tp!31559 () Bool)

(declare-fun b_and!16229 () Bool)

(assert (=> start!37904 (= tp!31559 b_and!16229)))

(declare-fun b!389395 () Bool)

(declare-fun res!222808 () Bool)

(declare-fun e!235919 () Bool)

(assert (=> b!389395 (=> (not res!222808) (not e!235919))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13911 0))(
  ( (V!13912 (val!4847 Int)) )
))
(declare-datatypes ((ValueCell!4459 0))(
  ( (ValueCellFull!4459 (v!7052 V!13911)) (EmptyCell!4459) )
))
(declare-datatypes ((array!23083 0))(
  ( (array!23084 (arr!11004 (Array (_ BitVec 32) ValueCell!4459)) (size!11356 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23083)

(declare-datatypes ((array!23085 0))(
  ( (array!23086 (arr!11005 (Array (_ BitVec 32) (_ BitVec 64))) (size!11357 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23085)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389395 (= res!222808 (and (= (size!11356 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11357 _keys!658) (size!11356 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389396 () Bool)

(declare-fun res!222811 () Bool)

(assert (=> b!389396 (=> (not res!222811) (not e!235919))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389396 (= res!222811 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11357 _keys!658))))))

(declare-fun mapIsEmpty!15981 () Bool)

(declare-fun mapRes!15981 () Bool)

(assert (=> mapIsEmpty!15981 mapRes!15981))

(declare-fun b!389397 () Bool)

(declare-fun res!222818 () Bool)

(assert (=> b!389397 (=> (not res!222818) (not e!235919))))

(declare-datatypes ((List!6348 0))(
  ( (Nil!6345) (Cons!6344 (h!7200 (_ BitVec 64)) (t!11512 List!6348)) )
))
(declare-fun arrayNoDuplicates!0 (array!23085 (_ BitVec 32) List!6348) Bool)

(assert (=> b!389397 (= res!222818 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6345))))

(declare-fun b!389398 () Bool)

(declare-fun e!235918 () Bool)

(assert (=> b!389398 (= e!235919 e!235918)))

(declare-fun res!222809 () Bool)

(assert (=> b!389398 (=> (not res!222809) (not e!235918))))

(declare-fun lt!183195 () array!23085)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23085 (_ BitVec 32)) Bool)

(assert (=> b!389398 (= res!222809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183195 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!389398 (= lt!183195 (array!23086 (store (arr!11005 _keys!658) i!548 k!778) (size!11357 _keys!658)))))

(declare-fun b!389399 () Bool)

(declare-fun res!222813 () Bool)

(assert (=> b!389399 (=> (not res!222813) (not e!235919))))

(declare-fun arrayContainsKey!0 (array!23085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389399 (= res!222813 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!389400 () Bool)

(declare-fun e!235923 () Bool)

(declare-fun tp_is_empty!9605 () Bool)

(assert (=> b!389400 (= e!235923 tp_is_empty!9605)))

(declare-fun b!389401 () Bool)

(declare-fun res!222814 () Bool)

(assert (=> b!389401 (=> (not res!222814) (not e!235919))))

(assert (=> b!389401 (= res!222814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389402 () Bool)

(declare-fun e!235920 () Bool)

(declare-fun e!235921 () Bool)

(assert (=> b!389402 (= e!235920 (and e!235921 mapRes!15981))))

(declare-fun condMapEmpty!15981 () Bool)

(declare-fun mapDefault!15981 () ValueCell!4459)

