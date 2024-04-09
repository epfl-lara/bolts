; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37688 () Bool)

(assert start!37688)

(declare-fun b_free!8783 () Bool)

(declare-fun b_next!8783 () Bool)

(assert (=> start!37688 (= b_free!8783 (not b_next!8783))))

(declare-fun tp!31101 () Bool)

(declare-fun b_and!16043 () Bool)

(assert (=> start!37688 (= tp!31101 b_and!16043)))

(declare-fun b!385778 () Bool)

(declare-fun res!220207 () Bool)

(declare-fun e!234110 () Bool)

(assert (=> b!385778 (=> (not res!220207) (not e!234110))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22785 0))(
  ( (array!22786 (arr!10858 (Array (_ BitVec 32) (_ BitVec 64))) (size!11210 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22785)

(assert (=> b!385778 (= res!220207 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11210 _keys!658))))))

(declare-fun b!385779 () Bool)

(declare-fun res!220208 () Bool)

(assert (=> b!385779 (=> (not res!220208) (not e!234110))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22785 (_ BitVec 32)) Bool)

(assert (=> b!385779 (= res!220208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385780 () Bool)

(declare-fun res!220210 () Bool)

(assert (=> b!385780 (=> (not res!220210) (not e!234110))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385780 (= res!220210 (validKeyInArray!0 k!778))))

(declare-fun b!385781 () Bool)

(declare-fun res!220209 () Bool)

(assert (=> b!385781 (=> (not res!220209) (not e!234110))))

(assert (=> b!385781 (= res!220209 (or (= (select (arr!10858 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10858 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385782 () Bool)

(declare-fun res!220204 () Bool)

(assert (=> b!385782 (=> (not res!220204) (not e!234110))))

(declare-fun arrayContainsKey!0 (array!22785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385782 (= res!220204 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385784 () Bool)

(declare-fun e!234107 () Bool)

(declare-fun tp_is_empty!9455 () Bool)

(assert (=> b!385784 (= e!234107 tp_is_empty!9455)))

(declare-fun b!385785 () Bool)

(declare-fun res!220205 () Bool)

(assert (=> b!385785 (=> (not res!220205) (not e!234110))))

(declare-datatypes ((List!6239 0))(
  ( (Nil!6236) (Cons!6235 (h!7091 (_ BitVec 64)) (t!11397 List!6239)) )
))
(declare-fun arrayNoDuplicates!0 (array!22785 (_ BitVec 32) List!6239) Bool)

(assert (=> b!385785 (= res!220205 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6236))))

(declare-fun b!385786 () Bool)

(declare-fun res!220202 () Bool)

(declare-fun e!234111 () Bool)

(assert (=> b!385786 (=> (not res!220202) (not e!234111))))

(declare-fun lt!181663 () array!22785)

(assert (=> b!385786 (= res!220202 (arrayNoDuplicates!0 lt!181663 #b00000000000000000000000000000000 Nil!6236))))

(declare-fun b!385787 () Bool)

(declare-fun res!220203 () Bool)

(assert (=> b!385787 (=> (not res!220203) (not e!234110))))

(declare-datatypes ((V!13711 0))(
  ( (V!13712 (val!4772 Int)) )
))
(declare-datatypes ((ValueCell!4384 0))(
  ( (ValueCellFull!4384 (v!6965 V!13711)) (EmptyCell!4384) )
))
(declare-datatypes ((array!22787 0))(
  ( (array!22788 (arr!10859 (Array (_ BitVec 32) ValueCell!4384)) (size!11211 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22787)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385787 (= res!220203 (and (= (size!11211 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11210 _keys!658) (size!11211 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385788 () Bool)

(assert (=> b!385788 (= e!234110 e!234111)))

(declare-fun res!220211 () Bool)

(assert (=> b!385788 (=> (not res!220211) (not e!234111))))

(assert (=> b!385788 (= res!220211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181663 mask!970))))

(assert (=> b!385788 (= lt!181663 (array!22786 (store (arr!10858 _keys!658) i!548 k!778) (size!11210 _keys!658)))))

(declare-fun mapNonEmpty!15747 () Bool)

(declare-fun mapRes!15747 () Bool)

(declare-fun tp!31100 () Bool)

(declare-fun e!234108 () Bool)

(assert (=> mapNonEmpty!15747 (= mapRes!15747 (and tp!31100 e!234108))))

(declare-fun mapKey!15747 () (_ BitVec 32))

(declare-fun mapRest!15747 () (Array (_ BitVec 32) ValueCell!4384))

(declare-fun mapValue!15747 () ValueCell!4384)

(assert (=> mapNonEmpty!15747 (= (arr!10859 _values!506) (store mapRest!15747 mapKey!15747 mapValue!15747))))

(declare-fun mapIsEmpty!15747 () Bool)

(assert (=> mapIsEmpty!15747 mapRes!15747))

(declare-fun b!385789 () Bool)

(declare-fun e!234109 () Bool)

(assert (=> b!385789 (= e!234109 (and e!234107 mapRes!15747))))

(declare-fun condMapEmpty!15747 () Bool)

(declare-fun mapDefault!15747 () ValueCell!4384)

