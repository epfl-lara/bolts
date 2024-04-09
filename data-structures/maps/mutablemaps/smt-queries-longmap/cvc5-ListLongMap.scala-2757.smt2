; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40402 () Bool)

(assert start!40402)

(declare-fun b!443834 () Bool)

(declare-fun res!263185 () Bool)

(declare-fun e!261080 () Bool)

(assert (=> b!443834 (=> (not res!263185) (not e!261080))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27333 0))(
  ( (array!27334 (arr!13111 (Array (_ BitVec 32) (_ BitVec 64))) (size!13463 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27333)

(assert (=> b!443834 (= res!263185 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13463 _keys!709))))))

(declare-fun b!443835 () Bool)

(declare-fun e!261077 () Bool)

(assert (=> b!443835 (= e!261077 false)))

(declare-fun lt!203390 () Bool)

(declare-fun lt!203391 () array!27333)

(declare-datatypes ((List!7832 0))(
  ( (Nil!7829) (Cons!7828 (h!8684 (_ BitVec 64)) (t!13598 List!7832)) )
))
(declare-fun arrayNoDuplicates!0 (array!27333 (_ BitVec 32) List!7832) Bool)

(assert (=> b!443835 (= lt!203390 (arrayNoDuplicates!0 lt!203391 #b00000000000000000000000000000000 Nil!7829))))

(declare-fun b!443836 () Bool)

(declare-fun res!263182 () Bool)

(assert (=> b!443836 (=> (not res!263182) (not e!261080))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443836 (= res!263182 (validMask!0 mask!1025))))

(declare-fun b!443837 () Bool)

(declare-fun res!263180 () Bool)

(assert (=> b!443837 (=> (not res!263180) (not e!261080))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443837 (= res!263180 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!443838 () Bool)

(declare-fun e!261081 () Bool)

(declare-fun tp_is_empty!11779 () Bool)

(assert (=> b!443838 (= e!261081 tp_is_empty!11779)))

(declare-fun b!443839 () Bool)

(declare-fun res!263183 () Bool)

(assert (=> b!443839 (=> (not res!263183) (not e!261080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27333 (_ BitVec 32)) Bool)

(assert (=> b!443839 (= res!263183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443840 () Bool)

(declare-fun res!263184 () Bool)

(assert (=> b!443840 (=> (not res!263184) (not e!261080))))

(assert (=> b!443840 (= res!263184 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7829))))

(declare-fun b!443841 () Bool)

(declare-fun res!263176 () Bool)

(assert (=> b!443841 (=> (not res!263176) (not e!261080))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16811 0))(
  ( (V!16812 (val!5934 Int)) )
))
(declare-datatypes ((ValueCell!5546 0))(
  ( (ValueCellFull!5546 (v!8181 V!16811)) (EmptyCell!5546) )
))
(declare-datatypes ((array!27335 0))(
  ( (array!27336 (arr!13112 (Array (_ BitVec 32) ValueCell!5546)) (size!13464 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27335)

(assert (=> b!443841 (= res!263176 (and (= (size!13464 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13463 _keys!709) (size!13464 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443842 () Bool)

(declare-fun res!263179 () Bool)

(assert (=> b!443842 (=> (not res!263179) (not e!261080))))

(assert (=> b!443842 (= res!263179 (or (= (select (arr!13111 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13111 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443843 () Bool)

(declare-fun e!261078 () Bool)

(assert (=> b!443843 (= e!261078 tp_is_empty!11779)))

(declare-fun mapNonEmpty!19296 () Bool)

(declare-fun mapRes!19296 () Bool)

(declare-fun tp!37278 () Bool)

(assert (=> mapNonEmpty!19296 (= mapRes!19296 (and tp!37278 e!261081))))

(declare-fun mapRest!19296 () (Array (_ BitVec 32) ValueCell!5546))

(declare-fun mapKey!19296 () (_ BitVec 32))

(declare-fun mapValue!19296 () ValueCell!5546)

(assert (=> mapNonEmpty!19296 (= (arr!13112 _values!549) (store mapRest!19296 mapKey!19296 mapValue!19296))))

(declare-fun b!443844 () Bool)

(declare-fun e!261076 () Bool)

(assert (=> b!443844 (= e!261076 (and e!261078 mapRes!19296))))

(declare-fun condMapEmpty!19296 () Bool)

(declare-fun mapDefault!19296 () ValueCell!5546)

