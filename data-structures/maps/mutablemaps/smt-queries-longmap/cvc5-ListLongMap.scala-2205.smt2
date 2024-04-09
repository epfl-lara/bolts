; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36640 () Bool)

(assert start!36640)

(declare-fun b!365423 () Bool)

(declare-fun res!204382 () Bool)

(declare-fun e!223799 () Bool)

(assert (=> b!365423 (=> (not res!204382) (not e!223799))))

(declare-datatypes ((V!12395 0))(
  ( (V!12396 (val!4278 Int)) )
))
(declare-datatypes ((ValueCell!3890 0))(
  ( (ValueCellFull!3890 (v!6470 V!12395)) (EmptyCell!3890) )
))
(declare-datatypes ((array!20865 0))(
  ( (array!20866 (arr!9902 (Array (_ BitVec 32) ValueCell!3890)) (size!10254 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20865)

(declare-datatypes ((array!20867 0))(
  ( (array!20868 (arr!9903 (Array (_ BitVec 32) (_ BitVec 64))) (size!10255 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20867)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365423 (= res!204382 (and (= (size!10254 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10255 _keys!658) (size!10254 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365424 () Bool)

(declare-fun res!204379 () Bool)

(assert (=> b!365424 (=> (not res!204379) (not e!223799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20867 (_ BitVec 32)) Bool)

(assert (=> b!365424 (= res!204379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14253 () Bool)

(declare-fun mapRes!14253 () Bool)

(declare-fun tp!28329 () Bool)

(declare-fun e!223797 () Bool)

(assert (=> mapNonEmpty!14253 (= mapRes!14253 (and tp!28329 e!223797))))

(declare-fun mapValue!14253 () ValueCell!3890)

(declare-fun mapRest!14253 () (Array (_ BitVec 32) ValueCell!3890))

(declare-fun mapKey!14253 () (_ BitVec 32))

(assert (=> mapNonEmpty!14253 (= (arr!9902 _values!506) (store mapRest!14253 mapKey!14253 mapValue!14253))))

(declare-fun b!365425 () Bool)

(declare-fun res!204383 () Bool)

(assert (=> b!365425 (=> (not res!204383) (not e!223799))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365425 (= res!204383 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10255 _keys!658))))))

(declare-fun b!365426 () Bool)

(declare-fun e!223801 () Bool)

(declare-fun tp_is_empty!8467 () Bool)

(assert (=> b!365426 (= e!223801 tp_is_empty!8467)))

(declare-fun b!365427 () Bool)

(assert (=> b!365427 (= e!223797 tp_is_empty!8467)))

(declare-fun res!204384 () Bool)

(assert (=> start!36640 (=> (not res!204384) (not e!223799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36640 (= res!204384 (validMask!0 mask!970))))

(assert (=> start!36640 e!223799))

(assert (=> start!36640 true))

(declare-fun e!223798 () Bool)

(declare-fun array_inv!7324 (array!20865) Bool)

(assert (=> start!36640 (and (array_inv!7324 _values!506) e!223798)))

(declare-fun array_inv!7325 (array!20867) Bool)

(assert (=> start!36640 (array_inv!7325 _keys!658)))

(declare-fun b!365428 () Bool)

(assert (=> b!365428 (= e!223798 (and e!223801 mapRes!14253))))

(declare-fun condMapEmpty!14253 () Bool)

(declare-fun mapDefault!14253 () ValueCell!3890)

