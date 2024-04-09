; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36718 () Bool)

(assert start!36718)

(declare-fun b!366273 () Bool)

(declare-fun res!204953 () Bool)

(declare-fun e!224254 () Bool)

(assert (=> b!366273 (=> (not res!204953) (not e!224254))))

(declare-datatypes ((array!20963 0))(
  ( (array!20964 (arr!9949 (Array (_ BitVec 32) (_ BitVec 64))) (size!10301 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20963)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366273 (= res!204953 (or (= (select (arr!9949 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9949 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366274 () Bool)

(declare-fun res!204955 () Bool)

(assert (=> b!366274 (=> (not res!204955) (not e!224254))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12463 0))(
  ( (V!12464 (val!4304 Int)) )
))
(declare-datatypes ((ValueCell!3916 0))(
  ( (ValueCellFull!3916 (v!6496 V!12463)) (EmptyCell!3916) )
))
(declare-datatypes ((array!20965 0))(
  ( (array!20966 (arr!9950 (Array (_ BitVec 32) ValueCell!3916)) (size!10302 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20965)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!366274 (= res!204955 (and (= (size!10302 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10301 _keys!658) (size!10302 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!204954 () Bool)

(assert (=> start!36718 (=> (not res!204954) (not e!224254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36718 (= res!204954 (validMask!0 mask!970))))

(assert (=> start!36718 e!224254))

(assert (=> start!36718 true))

(declare-fun e!224251 () Bool)

(declare-fun array_inv!7358 (array!20965) Bool)

(assert (=> start!36718 (and (array_inv!7358 _values!506) e!224251)))

(declare-fun array_inv!7359 (array!20963) Bool)

(assert (=> start!36718 (array_inv!7359 _keys!658)))

(declare-fun b!366275 () Bool)

(declare-fun res!204962 () Bool)

(assert (=> b!366275 (=> (not res!204962) (not e!224254))))

(assert (=> b!366275 (= res!204962 (and (bvsle #b00000000000000000000000000000000 (size!10301 _keys!658)) (bvslt (size!10301 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366276 () Bool)

(declare-fun res!204956 () Bool)

(assert (=> b!366276 (=> (not res!204956) (not e!224254))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20963 (_ BitVec 32)) Bool)

(assert (=> b!366276 (= res!204956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20964 (store (arr!9949 _keys!658) i!548 k!778) (size!10301 _keys!658)) mask!970))))

(declare-fun b!366277 () Bool)

(declare-fun res!204960 () Bool)

(assert (=> b!366277 (=> (not res!204960) (not e!224254))))

(declare-fun arrayContainsKey!0 (array!20963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366277 (= res!204960 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366278 () Bool)

(declare-datatypes ((List!5567 0))(
  ( (Nil!5564) (Cons!5563 (h!6419 (_ BitVec 64)) (t!10725 List!5567)) )
))
(declare-fun noDuplicate!189 (List!5567) Bool)

(assert (=> b!366278 (= e!224254 (not (noDuplicate!189 Nil!5564)))))

(declare-fun b!366279 () Bool)

(declare-fun e!224250 () Bool)

(declare-fun mapRes!14337 () Bool)

(assert (=> b!366279 (= e!224251 (and e!224250 mapRes!14337))))

(declare-fun condMapEmpty!14337 () Bool)

(declare-fun mapDefault!14337 () ValueCell!3916)

