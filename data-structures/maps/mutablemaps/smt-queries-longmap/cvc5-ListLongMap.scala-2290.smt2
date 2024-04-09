; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37210 () Bool)

(assert start!37210)

(declare-fun b_free!8329 () Bool)

(declare-fun b_next!8329 () Bool)

(assert (=> start!37210 (= b_free!8329 (not b_next!8329))))

(declare-fun tp!29703 () Bool)

(declare-fun b_and!15589 () Bool)

(assert (=> start!37210 (= tp!29703 b_and!15589)))

(declare-fun b!375651 () Bool)

(declare-fun res!212231 () Bool)

(declare-fun e!228842 () Bool)

(assert (=> b!375651 (=> (not res!212231) (not e!228842))))

(declare-datatypes ((array!21853 0))(
  ( (array!21854 (arr!10392 (Array (_ BitVec 32) (_ BitVec 64))) (size!10744 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21853)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375651 (= res!212231 (or (= (select (arr!10392 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10392 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375653 () Bool)

(declare-fun e!228839 () Bool)

(declare-fun tp_is_empty!8977 () Bool)

(assert (=> b!375653 (= e!228839 tp_is_empty!8977)))

(declare-fun b!375654 () Bool)

(declare-fun res!212235 () Bool)

(assert (=> b!375654 (=> (not res!212235) (not e!228842))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375654 (= res!212235 (validKeyInArray!0 k!778))))

(declare-fun b!375655 () Bool)

(declare-fun e!228840 () Bool)

(declare-fun e!228838 () Bool)

(assert (=> b!375655 (= e!228840 e!228838)))

(declare-fun res!212232 () Bool)

(assert (=> b!375655 (=> res!212232 e!228838)))

(assert (=> b!375655 (= res!212232 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13075 0))(
  ( (V!13076 (val!4533 Int)) )
))
(declare-datatypes ((tuple2!6006 0))(
  ( (tuple2!6007 (_1!3013 (_ BitVec 64)) (_2!3013 V!13075)) )
))
(declare-datatypes ((List!5877 0))(
  ( (Nil!5874) (Cons!5873 (h!6729 tuple2!6006) (t!11035 List!5877)) )
))
(declare-datatypes ((ListLongMap!4933 0))(
  ( (ListLongMap!4934 (toList!2482 List!5877)) )
))
(declare-fun lt!174081 () ListLongMap!4933)

(declare-fun lt!174076 () ListLongMap!4933)

(assert (=> b!375655 (= lt!174081 lt!174076)))

(declare-fun lt!174083 () ListLongMap!4933)

(declare-fun lt!174086 () tuple2!6006)

(declare-fun +!823 (ListLongMap!4933 tuple2!6006) ListLongMap!4933)

(assert (=> b!375655 (= lt!174076 (+!823 lt!174083 lt!174086))))

(declare-fun lt!174084 () ListLongMap!4933)

(declare-fun lt!174079 () ListLongMap!4933)

(assert (=> b!375655 (= lt!174084 lt!174079)))

(declare-fun lt!174088 () ListLongMap!4933)

(assert (=> b!375655 (= lt!174079 (+!823 lt!174088 lt!174086))))

(declare-fun lt!174087 () ListLongMap!4933)

(assert (=> b!375655 (= lt!174081 (+!823 lt!174087 lt!174086))))

(declare-fun zeroValue!472 () V!13075)

(assert (=> b!375655 (= lt!174086 (tuple2!6007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375656 () Bool)

(declare-fun e!228841 () Bool)

(assert (=> b!375656 (= e!228842 e!228841)))

(declare-fun res!212228 () Bool)

(assert (=> b!375656 (=> (not res!212228) (not e!228841))))

(declare-fun lt!174077 () array!21853)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21853 (_ BitVec 32)) Bool)

(assert (=> b!375656 (= res!212228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174077 mask!970))))

(assert (=> b!375656 (= lt!174077 (array!21854 (store (arr!10392 _keys!658) i!548 k!778) (size!10744 _keys!658)))))

(declare-fun b!375657 () Bool)

(declare-fun res!212229 () Bool)

(assert (=> b!375657 (=> (not res!212229) (not e!228842))))

(declare-fun arrayContainsKey!0 (array!21853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375657 (= res!212229 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!375658 () Bool)

(declare-fun res!212227 () Bool)

(assert (=> b!375658 (=> (not res!212227) (not e!228841))))

(declare-datatypes ((List!5878 0))(
  ( (Nil!5875) (Cons!5874 (h!6730 (_ BitVec 64)) (t!11036 List!5878)) )
))
(declare-fun arrayNoDuplicates!0 (array!21853 (_ BitVec 32) List!5878) Bool)

(assert (=> b!375658 (= res!212227 (arrayNoDuplicates!0 lt!174077 #b00000000000000000000000000000000 Nil!5875))))

(declare-fun b!375659 () Bool)

(assert (=> b!375659 (= e!228838 true)))

(declare-fun lt!174082 () tuple2!6006)

(assert (=> b!375659 (= lt!174076 (+!823 lt!174079 lt!174082))))

(declare-datatypes ((Unit!11549 0))(
  ( (Unit!11550) )
))
(declare-fun lt!174078 () Unit!11549)

(declare-fun v!373 () V!13075)

(declare-fun addCommutativeForDiffKeys!249 (ListLongMap!4933 (_ BitVec 64) V!13075 (_ BitVec 64) V!13075) Unit!11549)

(assert (=> b!375659 (= lt!174078 (addCommutativeForDiffKeys!249 lt!174088 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375660 () Bool)

(declare-fun res!212230 () Bool)

(assert (=> b!375660 (=> (not res!212230) (not e!228842))))

(assert (=> b!375660 (= res!212230 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10744 _keys!658))))))

(declare-fun mapIsEmpty!15030 () Bool)

(declare-fun mapRes!15030 () Bool)

(assert (=> mapIsEmpty!15030 mapRes!15030))

(declare-fun b!375652 () Bool)

(declare-fun res!212237 () Bool)

(assert (=> b!375652 (=> (not res!212237) (not e!228842))))

(assert (=> b!375652 (= res!212237 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5875))))

(declare-fun res!212226 () Bool)

(assert (=> start!37210 (=> (not res!212226) (not e!228842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37210 (= res!212226 (validMask!0 mask!970))))

(assert (=> start!37210 e!228842))

(declare-datatypes ((ValueCell!4145 0))(
  ( (ValueCellFull!4145 (v!6726 V!13075)) (EmptyCell!4145) )
))
(declare-datatypes ((array!21855 0))(
  ( (array!21856 (arr!10393 (Array (_ BitVec 32) ValueCell!4145)) (size!10745 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21855)

(declare-fun e!228843 () Bool)

(declare-fun array_inv!7654 (array!21855) Bool)

(assert (=> start!37210 (and (array_inv!7654 _values!506) e!228843)))

(assert (=> start!37210 tp!29703))

(assert (=> start!37210 true))

(assert (=> start!37210 tp_is_empty!8977))

(declare-fun array_inv!7655 (array!21853) Bool)

(assert (=> start!37210 (array_inv!7655 _keys!658)))

(declare-fun b!375661 () Bool)

(declare-fun e!228836 () Bool)

(assert (=> b!375661 (= e!228836 tp_is_empty!8977)))

(declare-fun mapNonEmpty!15030 () Bool)

(declare-fun tp!29702 () Bool)

(assert (=> mapNonEmpty!15030 (= mapRes!15030 (and tp!29702 e!228836))))

(declare-fun mapValue!15030 () ValueCell!4145)

(declare-fun mapRest!15030 () (Array (_ BitVec 32) ValueCell!4145))

(declare-fun mapKey!15030 () (_ BitVec 32))

(assert (=> mapNonEmpty!15030 (= (arr!10393 _values!506) (store mapRest!15030 mapKey!15030 mapValue!15030))))

(declare-fun b!375662 () Bool)

(declare-fun res!212236 () Bool)

(assert (=> b!375662 (=> (not res!212236) (not e!228842))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375662 (= res!212236 (and (= (size!10745 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10744 _keys!658) (size!10745 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375663 () Bool)

(assert (=> b!375663 (= e!228843 (and e!228839 mapRes!15030))))

(declare-fun condMapEmpty!15030 () Bool)

(declare-fun mapDefault!15030 () ValueCell!4145)

