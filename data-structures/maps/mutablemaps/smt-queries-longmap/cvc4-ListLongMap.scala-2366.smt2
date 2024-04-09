; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37670 () Bool)

(assert start!37670)

(declare-fun b!385429 () Bool)

(declare-fun e!233949 () Bool)

(assert (=> b!385429 (= e!233949 false)))

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((array!22751 0))(
  ( (array!22752 (arr!10841 (Array (_ BitVec 32) (_ BitVec 64))) (size!11193 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22751)

(declare-fun lt!181600 () Bool)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22751 (_ BitVec 32)) Bool)

(assert (=> b!385429 (= lt!181600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!22752 (store (arr!10841 _keys!658) i!548 k!778) (size!11193 _keys!658)) mask!970))))

(declare-fun res!219936 () Bool)

(assert (=> start!37670 (=> (not res!219936) (not e!233949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37670 (= res!219936 (validMask!0 mask!970))))

(assert (=> start!37670 e!233949))

(assert (=> start!37670 true))

(declare-datatypes ((V!13687 0))(
  ( (V!13688 (val!4763 Int)) )
))
(declare-datatypes ((ValueCell!4375 0))(
  ( (ValueCellFull!4375 (v!6956 V!13687)) (EmptyCell!4375) )
))
(declare-datatypes ((array!22753 0))(
  ( (array!22754 (arr!10842 (Array (_ BitVec 32) ValueCell!4375)) (size!11194 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22753)

(declare-fun e!233948 () Bool)

(declare-fun array_inv!7956 (array!22753) Bool)

(assert (=> start!37670 (and (array_inv!7956 _values!506) e!233948)))

(declare-fun array_inv!7957 (array!22751) Bool)

(assert (=> start!37670 (array_inv!7957 _keys!658)))

(declare-fun mapNonEmpty!15720 () Bool)

(declare-fun mapRes!15720 () Bool)

(declare-fun tp!31047 () Bool)

(declare-fun e!233945 () Bool)

(assert (=> mapNonEmpty!15720 (= mapRes!15720 (and tp!31047 e!233945))))

(declare-fun mapRest!15720 () (Array (_ BitVec 32) ValueCell!4375))

(declare-fun mapKey!15720 () (_ BitVec 32))

(declare-fun mapValue!15720 () ValueCell!4375)

(assert (=> mapNonEmpty!15720 (= (arr!10842 _values!506) (store mapRest!15720 mapKey!15720 mapValue!15720))))

(declare-fun b!385430 () Bool)

(declare-fun res!219934 () Bool)

(assert (=> b!385430 (=> (not res!219934) (not e!233949))))

(declare-datatypes ((List!6226 0))(
  ( (Nil!6223) (Cons!6222 (h!7078 (_ BitVec 64)) (t!11384 List!6226)) )
))
(declare-fun arrayNoDuplicates!0 (array!22751 (_ BitVec 32) List!6226) Bool)

(assert (=> b!385430 (= res!219934 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6223))))

(declare-fun b!385431 () Bool)

(declare-fun res!219935 () Bool)

(assert (=> b!385431 (=> (not res!219935) (not e!233949))))

(assert (=> b!385431 (= res!219935 (or (= (select (arr!10841 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10841 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385432 () Bool)

(declare-fun res!219941 () Bool)

(assert (=> b!385432 (=> (not res!219941) (not e!233949))))

(assert (=> b!385432 (= res!219941 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11193 _keys!658))))))

(declare-fun b!385433 () Bool)

(declare-fun e!233946 () Bool)

(declare-fun tp_is_empty!9437 () Bool)

(assert (=> b!385433 (= e!233946 tp_is_empty!9437)))

(declare-fun b!385434 () Bool)

(declare-fun res!219940 () Bool)

(assert (=> b!385434 (=> (not res!219940) (not e!233949))))

(assert (=> b!385434 (= res!219940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15720 () Bool)

(assert (=> mapIsEmpty!15720 mapRes!15720))

(declare-fun b!385435 () Bool)

(assert (=> b!385435 (= e!233945 tp_is_empty!9437)))

(declare-fun b!385436 () Bool)

(assert (=> b!385436 (= e!233948 (and e!233946 mapRes!15720))))

(declare-fun condMapEmpty!15720 () Bool)

(declare-fun mapDefault!15720 () ValueCell!4375)

