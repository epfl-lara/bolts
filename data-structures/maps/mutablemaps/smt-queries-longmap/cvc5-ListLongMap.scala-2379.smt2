; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37744 () Bool)

(assert start!37744)

(declare-fun b_free!8839 () Bool)

(declare-fun b_next!8839 () Bool)

(assert (=> start!37744 (= b_free!8839 (not b_next!8839))))

(declare-fun tp!31269 () Bool)

(declare-fun b_and!16099 () Bool)

(assert (=> start!37744 (= tp!31269 b_and!16099)))

(declare-fun b!386870 () Bool)

(declare-fun e!234613 () Bool)

(declare-fun e!234614 () Bool)

(assert (=> b!386870 (= e!234613 e!234614)))

(declare-fun res!221051 () Bool)

(assert (=> b!386870 (=> (not res!221051) (not e!234614))))

(declare-datatypes ((array!22891 0))(
  ( (array!22892 (arr!10911 (Array (_ BitVec 32) (_ BitVec 64))) (size!11263 (_ BitVec 32))) )
))
(declare-fun lt!181914 () array!22891)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22891 (_ BitVec 32)) Bool)

(assert (=> b!386870 (= res!221051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181914 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22891)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386870 (= lt!181914 (array!22892 (store (arr!10911 _keys!658) i!548 k!778) (size!11263 _keys!658)))))

(declare-fun b!386871 () Bool)

(declare-fun res!221049 () Bool)

(assert (=> b!386871 (=> (not res!221049) (not e!234614))))

(declare-datatypes ((List!6278 0))(
  ( (Nil!6275) (Cons!6274 (h!7130 (_ BitVec 64)) (t!11436 List!6278)) )
))
(declare-fun arrayNoDuplicates!0 (array!22891 (_ BitVec 32) List!6278) Bool)

(assert (=> b!386871 (= res!221049 (arrayNoDuplicates!0 lt!181914 #b00000000000000000000000000000000 Nil!6275))))

(declare-fun b!386872 () Bool)

(declare-fun e!234611 () Bool)

(declare-fun tp_is_empty!9511 () Bool)

(assert (=> b!386872 (= e!234611 tp_is_empty!9511)))

(declare-fun b!386873 () Bool)

(declare-fun res!221042 () Bool)

(assert (=> b!386873 (=> (not res!221042) (not e!234613))))

(assert (=> b!386873 (= res!221042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!221047 () Bool)

(assert (=> start!37744 (=> (not res!221047) (not e!234613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37744 (= res!221047 (validMask!0 mask!970))))

(assert (=> start!37744 e!234613))

(declare-datatypes ((V!13787 0))(
  ( (V!13788 (val!4800 Int)) )
))
(declare-datatypes ((ValueCell!4412 0))(
  ( (ValueCellFull!4412 (v!6993 V!13787)) (EmptyCell!4412) )
))
(declare-datatypes ((array!22893 0))(
  ( (array!22894 (arr!10912 (Array (_ BitVec 32) ValueCell!4412)) (size!11264 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22893)

(declare-fun e!234612 () Bool)

(declare-fun array_inv!8002 (array!22893) Bool)

(assert (=> start!37744 (and (array_inv!8002 _values!506) e!234612)))

(assert (=> start!37744 tp!31269))

(assert (=> start!37744 true))

(assert (=> start!37744 tp_is_empty!9511))

(declare-fun array_inv!8003 (array!22891) Bool)

(assert (=> start!37744 (array_inv!8003 _keys!658)))

(declare-fun mapNonEmpty!15831 () Bool)

(declare-fun mapRes!15831 () Bool)

(declare-fun tp!31268 () Bool)

(declare-fun e!234610 () Bool)

(assert (=> mapNonEmpty!15831 (= mapRes!15831 (and tp!31268 e!234610))))

(declare-fun mapKey!15831 () (_ BitVec 32))

(declare-fun mapRest!15831 () (Array (_ BitVec 32) ValueCell!4412))

(declare-fun mapValue!15831 () ValueCell!4412)

(assert (=> mapNonEmpty!15831 (= (arr!10912 _values!506) (store mapRest!15831 mapKey!15831 mapValue!15831))))

(declare-fun b!386874 () Bool)

(assert (=> b!386874 (= e!234612 (and e!234611 mapRes!15831))))

(declare-fun condMapEmpty!15831 () Bool)

(declare-fun mapDefault!15831 () ValueCell!4412)

