; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36698 () Bool)

(assert start!36698)

(declare-fun b!366112 () Bool)

(declare-fun e!224169 () Bool)

(declare-datatypes ((array!20951 0))(
  ( (array!20952 (arr!9944 (Array (_ BitVec 32) (_ BitVec 64))) (size!10296 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20951)

(assert (=> b!366112 (= e!224169 (and (bvsle #b00000000000000000000000000000000 (size!10296 _keys!658)) (bvsge (size!10296 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun res!204848 () Bool)

(assert (=> start!36698 (=> (not res!204848) (not e!224169))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36698 (= res!204848 (validMask!0 mask!970))))

(assert (=> start!36698 e!224169))

(assert (=> start!36698 true))

(declare-datatypes ((V!12455 0))(
  ( (V!12456 (val!4301 Int)) )
))
(declare-datatypes ((ValueCell!3913 0))(
  ( (ValueCellFull!3913 (v!6493 V!12455)) (EmptyCell!3913) )
))
(declare-datatypes ((array!20953 0))(
  ( (array!20954 (arr!9945 (Array (_ BitVec 32) ValueCell!3913)) (size!10297 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20953)

(declare-fun e!224171 () Bool)

(declare-fun array_inv!7354 (array!20953) Bool)

(assert (=> start!36698 (and (array_inv!7354 _values!506) e!224171)))

(declare-fun array_inv!7355 (array!20951) Bool)

(assert (=> start!36698 (array_inv!7355 _keys!658)))

(declare-fun b!366113 () Bool)

(declare-fun res!204844 () Bool)

(assert (=> b!366113 (=> (not res!204844) (not e!224169))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366113 (= res!204844 (and (= (size!10297 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10296 _keys!658) (size!10297 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366114 () Bool)

(declare-fun res!204846 () Bool)

(assert (=> b!366114 (=> (not res!204846) (not e!224169))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366114 (= res!204846 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366115 () Bool)

(declare-fun res!204847 () Bool)

(assert (=> b!366115 (=> (not res!204847) (not e!224169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366115 (= res!204847 (validKeyInArray!0 k!778))))

(declare-fun b!366116 () Bool)

(declare-fun e!224172 () Bool)

(declare-fun tp_is_empty!8513 () Bool)

(assert (=> b!366116 (= e!224172 tp_is_empty!8513)))

(declare-fun mapIsEmpty!14325 () Bool)

(declare-fun mapRes!14325 () Bool)

(assert (=> mapIsEmpty!14325 mapRes!14325))

(declare-fun mapNonEmpty!14325 () Bool)

(declare-fun tp!28401 () Bool)

(assert (=> mapNonEmpty!14325 (= mapRes!14325 (and tp!28401 e!224172))))

(declare-fun mapRest!14325 () (Array (_ BitVec 32) ValueCell!3913))

(declare-fun mapKey!14325 () (_ BitVec 32))

(declare-fun mapValue!14325 () ValueCell!3913)

(assert (=> mapNonEmpty!14325 (= (arr!9945 _values!506) (store mapRest!14325 mapKey!14325 mapValue!14325))))

(declare-fun b!366117 () Bool)

(declare-fun e!224170 () Bool)

(assert (=> b!366117 (= e!224171 (and e!224170 mapRes!14325))))

(declare-fun condMapEmpty!14325 () Bool)

(declare-fun mapDefault!14325 () ValueCell!3913)

