; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36826 () Bool)

(assert start!36826)

(declare-fun b_free!7945 () Bool)

(declare-fun b_next!7945 () Bool)

(assert (=> start!36826 (= b_free!7945 (not b_next!7945))))

(declare-fun tp!28550 () Bool)

(declare-fun b_and!15205 () Bool)

(assert (=> start!36826 (= tp!28550 b_and!15205)))

(declare-fun b!367772 () Bool)

(declare-fun e!225012 () Bool)

(declare-fun tp_is_empty!8593 () Bool)

(assert (=> b!367772 (= e!225012 tp_is_empty!8593)))

(declare-fun b!367773 () Bool)

(declare-fun res!206075 () Bool)

(declare-fun e!225010 () Bool)

(assert (=> b!367773 (=> (not res!206075) (not e!225010))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12563 0))(
  ( (V!12564 (val!4341 Int)) )
))
(declare-datatypes ((ValueCell!3953 0))(
  ( (ValueCellFull!3953 (v!6534 V!12563)) (EmptyCell!3953) )
))
(declare-datatypes ((array!21111 0))(
  ( (array!21112 (arr!10021 (Array (_ BitVec 32) ValueCell!3953)) (size!10373 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21111)

(declare-datatypes ((array!21113 0))(
  ( (array!21114 (arr!10022 (Array (_ BitVec 32) (_ BitVec 64))) (size!10374 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21113)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!367773 (= res!206075 (and (= (size!10373 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10374 _keys!658) (size!10373 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367775 () Bool)

(declare-fun res!206083 () Bool)

(assert (=> b!367775 (=> (not res!206083) (not e!225010))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367775 (= res!206083 (or (= (select (arr!10022 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10022 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367776 () Bool)

(declare-fun res!206076 () Bool)

(assert (=> b!367776 (=> (not res!206076) (not e!225010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21113 (_ BitVec 32)) Bool)

(assert (=> b!367776 (= res!206076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367777 () Bool)

(declare-fun res!206082 () Bool)

(declare-fun e!225009 () Bool)

(assert (=> b!367777 (=> (not res!206082) (not e!225009))))

(declare-fun lt!169419 () array!21113)

(declare-datatypes ((List!5605 0))(
  ( (Nil!5602) (Cons!5601 (h!6457 (_ BitVec 64)) (t!10763 List!5605)) )
))
(declare-fun arrayNoDuplicates!0 (array!21113 (_ BitVec 32) List!5605) Bool)

(assert (=> b!367777 (= res!206082 (arrayNoDuplicates!0 lt!169419 #b00000000000000000000000000000000 Nil!5602))))

(declare-fun b!367778 () Bool)

(declare-fun res!206080 () Bool)

(assert (=> b!367778 (=> (not res!206080) (not e!225010))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367778 (= res!206080 (validKeyInArray!0 k!778))))

(declare-fun b!367779 () Bool)

(declare-fun res!206081 () Bool)

(assert (=> b!367779 (=> (not res!206081) (not e!225010))))

(assert (=> b!367779 (= res!206081 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10374 _keys!658))))))

(declare-fun mapIsEmpty!14454 () Bool)

(declare-fun mapRes!14454 () Bool)

(assert (=> mapIsEmpty!14454 mapRes!14454))

(declare-fun b!367780 () Bool)

(declare-fun e!225011 () Bool)

(assert (=> b!367780 (= e!225011 tp_is_empty!8593)))

(declare-fun b!367781 () Bool)

(declare-fun res!206077 () Bool)

(assert (=> b!367781 (=> (not res!206077) (not e!225010))))

(assert (=> b!367781 (= res!206077 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5602))))

(declare-fun b!367782 () Bool)

(declare-fun e!225008 () Bool)

(assert (=> b!367782 (= e!225008 (and e!225012 mapRes!14454))))

(declare-fun condMapEmpty!14454 () Bool)

(declare-fun mapDefault!14454 () ValueCell!3953)

