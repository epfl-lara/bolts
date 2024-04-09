; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37198 () Bool)

(assert start!37198)

(declare-fun b_free!8317 () Bool)

(declare-fun b_next!8317 () Bool)

(assert (=> start!37198 (= b_free!8317 (not b_next!8317))))

(declare-fun tp!29666 () Bool)

(declare-fun b_and!15577 () Bool)

(assert (=> start!37198 (= tp!29666 b_and!15577)))

(declare-fun mapNonEmpty!15012 () Bool)

(declare-fun mapRes!15012 () Bool)

(declare-fun tp!29667 () Bool)

(declare-fun e!228692 () Bool)

(assert (=> mapNonEmpty!15012 (= mapRes!15012 (and tp!29667 e!228692))))

(declare-datatypes ((V!13059 0))(
  ( (V!13060 (val!4527 Int)) )
))
(declare-datatypes ((ValueCell!4139 0))(
  ( (ValueCellFull!4139 (v!6720 V!13059)) (EmptyCell!4139) )
))
(declare-datatypes ((array!21829 0))(
  ( (array!21830 (arr!10380 (Array (_ BitVec 32) ValueCell!4139)) (size!10732 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21829)

(declare-fun mapRest!15012 () (Array (_ BitVec 32) ValueCell!4139))

(declare-fun mapKey!15012 () (_ BitVec 32))

(declare-fun mapValue!15012 () ValueCell!4139)

(assert (=> mapNonEmpty!15012 (= (arr!10380 _values!506) (store mapRest!15012 mapKey!15012 mapValue!15012))))

(declare-fun b!375372 () Bool)

(declare-fun e!228696 () Bool)

(declare-fun e!228693 () Bool)

(assert (=> b!375372 (= e!228696 (not e!228693))))

(declare-fun res!212007 () Bool)

(assert (=> b!375372 (=> res!212007 e!228693)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375372 (= res!212007 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5998 0))(
  ( (tuple2!5999 (_1!3009 (_ BitVec 64)) (_2!3009 V!13059)) )
))
(declare-datatypes ((List!5870 0))(
  ( (Nil!5867) (Cons!5866 (h!6722 tuple2!5998) (t!11028 List!5870)) )
))
(declare-datatypes ((ListLongMap!4925 0))(
  ( (ListLongMap!4926 (toList!2478 List!5870)) )
))
(declare-fun lt!173861 () ListLongMap!4925)

(declare-fun zeroValue!472 () V!13059)

(declare-datatypes ((array!21831 0))(
  ( (array!21832 (arr!10381 (Array (_ BitVec 32) (_ BitVec 64))) (size!10733 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21831)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13059)

(declare-fun getCurrentListMap!1920 (array!21831 array!21829 (_ BitVec 32) (_ BitVec 32) V!13059 V!13059 (_ BitVec 32) Int) ListLongMap!4925)

(assert (=> b!375372 (= lt!173861 (getCurrentListMap!1920 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173862 () array!21829)

(declare-fun lt!173852 () ListLongMap!4925)

(declare-fun lt!173860 () array!21831)

(assert (=> b!375372 (= lt!173852 (getCurrentListMap!1920 lt!173860 lt!173862 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173858 () ListLongMap!4925)

(declare-fun lt!173854 () ListLongMap!4925)

(assert (=> b!375372 (and (= lt!173858 lt!173854) (= lt!173854 lt!173858))))

(declare-fun lt!173851 () ListLongMap!4925)

(declare-fun lt!173856 () tuple2!5998)

(declare-fun +!819 (ListLongMap!4925 tuple2!5998) ListLongMap!4925)

(assert (=> b!375372 (= lt!173854 (+!819 lt!173851 lt!173856))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13059)

(assert (=> b!375372 (= lt!173856 (tuple2!5999 k!778 v!373))))

(declare-datatypes ((Unit!11541 0))(
  ( (Unit!11542) )
))
(declare-fun lt!173865 () Unit!11541)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!71 (array!21831 array!21829 (_ BitVec 32) (_ BitVec 32) V!13059 V!13059 (_ BitVec 32) (_ BitVec 64) V!13059 (_ BitVec 32) Int) Unit!11541)

(assert (=> b!375372 (= lt!173865 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!71 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!738 (array!21831 array!21829 (_ BitVec 32) (_ BitVec 32) V!13059 V!13059 (_ BitVec 32) Int) ListLongMap!4925)

(assert (=> b!375372 (= lt!173858 (getCurrentListMapNoExtraKeys!738 lt!173860 lt!173862 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375372 (= lt!173862 (array!21830 (store (arr!10380 _values!506) i!548 (ValueCellFull!4139 v!373)) (size!10732 _values!506)))))

(assert (=> b!375372 (= lt!173851 (getCurrentListMapNoExtraKeys!738 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375373 () Bool)

(declare-fun res!212009 () Bool)

(declare-fun e!228697 () Bool)

(assert (=> b!375373 (=> (not res!212009) (not e!228697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375373 (= res!212009 (validKeyInArray!0 k!778))))

(declare-fun b!375374 () Bool)

(declare-fun res!212008 () Bool)

(assert (=> b!375374 (=> (not res!212008) (not e!228697))))

(assert (=> b!375374 (= res!212008 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10733 _keys!658))))))

(declare-fun b!375375 () Bool)

(declare-fun e!228698 () Bool)

(assert (=> b!375375 (= e!228693 e!228698)))

(declare-fun res!212010 () Bool)

(assert (=> b!375375 (=> res!212010 e!228698)))

(assert (=> b!375375 (= res!212010 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173864 () ListLongMap!4925)

(declare-fun lt!173855 () ListLongMap!4925)

(assert (=> b!375375 (= lt!173864 lt!173855)))

(declare-fun lt!173863 () ListLongMap!4925)

(assert (=> b!375375 (= lt!173855 (+!819 lt!173863 lt!173856))))

(declare-fun lt!173853 () Unit!11541)

(declare-fun addCommutativeForDiffKeys!247 (ListLongMap!4925 (_ BitVec 64) V!13059 (_ BitVec 64) V!13059) Unit!11541)

(assert (=> b!375375 (= lt!173853 (addCommutativeForDiffKeys!247 lt!173851 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173859 () tuple2!5998)

(assert (=> b!375375 (= lt!173852 (+!819 lt!173864 lt!173859))))

(declare-fun lt!173850 () tuple2!5998)

(assert (=> b!375375 (= lt!173864 (+!819 lt!173854 lt!173850))))

(declare-fun lt!173857 () ListLongMap!4925)

(assert (=> b!375375 (= lt!173861 lt!173857)))

(assert (=> b!375375 (= lt!173857 (+!819 lt!173863 lt!173859))))

(assert (=> b!375375 (= lt!173863 (+!819 lt!173851 lt!173850))))

(assert (=> b!375375 (= lt!173852 (+!819 (+!819 lt!173858 lt!173850) lt!173859))))

(assert (=> b!375375 (= lt!173859 (tuple2!5999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375375 (= lt!173850 (tuple2!5999 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375376 () Bool)

(declare-fun res!212011 () Bool)

(assert (=> b!375376 (=> (not res!212011) (not e!228697))))

(assert (=> b!375376 (= res!212011 (and (= (size!10732 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10733 _keys!658) (size!10732 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375377 () Bool)

(declare-fun res!212001 () Bool)

(assert (=> b!375377 (=> (not res!212001) (not e!228697))))

(assert (=> b!375377 (= res!212001 (or (= (select (arr!10381 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10381 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375378 () Bool)

(declare-fun e!228694 () Bool)

(declare-fun tp_is_empty!8965 () Bool)

(assert (=> b!375378 (= e!228694 tp_is_empty!8965)))

(declare-fun b!375379 () Bool)

(assert (=> b!375379 (= e!228698 (bvsle #b00000000000000000000000000000000 (size!10733 _keys!658)))))

(assert (=> b!375379 (= (+!819 lt!173855 lt!173859) (+!819 lt!173857 lt!173856))))

(declare-fun lt!173866 () Unit!11541)

(assert (=> b!375379 (= lt!173866 (addCommutativeForDiffKeys!247 lt!173863 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!375381 () Bool)

(declare-fun res!212005 () Bool)

(assert (=> b!375381 (=> (not res!212005) (not e!228697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21831 (_ BitVec 32)) Bool)

(assert (=> b!375381 (= res!212005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375382 () Bool)

(declare-fun e!228695 () Bool)

(assert (=> b!375382 (= e!228695 (and e!228694 mapRes!15012))))

(declare-fun condMapEmpty!15012 () Bool)

(declare-fun mapDefault!15012 () ValueCell!4139)

