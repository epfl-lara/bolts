; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37686 () Bool)

(assert start!37686)

(declare-fun b_free!8781 () Bool)

(declare-fun b_next!8781 () Bool)

(assert (=> start!37686 (= b_free!8781 (not b_next!8781))))

(declare-fun tp!31094 () Bool)

(declare-fun b_and!16041 () Bool)

(assert (=> start!37686 (= tp!31094 b_and!16041)))

(declare-fun b!385739 () Bool)

(declare-fun res!220174 () Bool)

(declare-fun e!234090 () Bool)

(assert (=> b!385739 (=> (not res!220174) (not e!234090))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13709 0))(
  ( (V!13710 (val!4771 Int)) )
))
(declare-datatypes ((ValueCell!4383 0))(
  ( (ValueCellFull!4383 (v!6964 V!13709)) (EmptyCell!4383) )
))
(declare-datatypes ((array!22781 0))(
  ( (array!22782 (arr!10856 (Array (_ BitVec 32) ValueCell!4383)) (size!11208 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22781)

(declare-datatypes ((array!22783 0))(
  ( (array!22784 (arr!10857 (Array (_ BitVec 32) (_ BitVec 64))) (size!11209 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22783)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!385739 (= res!220174 (and (= (size!11208 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11209 _keys!658) (size!11208 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15744 () Bool)

(declare-fun mapRes!15744 () Bool)

(declare-fun tp!31095 () Bool)

(declare-fun e!234091 () Bool)

(assert (=> mapNonEmpty!15744 (= mapRes!15744 (and tp!31095 e!234091))))

(declare-fun mapKey!15744 () (_ BitVec 32))

(declare-fun mapRest!15744 () (Array (_ BitVec 32) ValueCell!4383))

(declare-fun mapValue!15744 () ValueCell!4383)

(assert (=> mapNonEmpty!15744 (= (arr!10856 _values!506) (store mapRest!15744 mapKey!15744 mapValue!15744))))

(declare-fun b!385740 () Bool)

(declare-fun e!234088 () Bool)

(assert (=> b!385740 (= e!234090 e!234088)))

(declare-fun res!220173 () Bool)

(assert (=> b!385740 (=> (not res!220173) (not e!234088))))

(declare-fun lt!181654 () array!22783)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22783 (_ BitVec 32)) Bool)

(assert (=> b!385740 (= res!220173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181654 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385740 (= lt!181654 (array!22784 (store (arr!10857 _keys!658) i!548 k0!778) (size!11209 _keys!658)))))

(declare-fun b!385741 () Bool)

(declare-fun res!220176 () Bool)

(assert (=> b!385741 (=> (not res!220176) (not e!234090))))

(assert (=> b!385741 (= res!220176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385742 () Bool)

(declare-fun res!220180 () Bool)

(assert (=> b!385742 (=> (not res!220180) (not e!234090))))

(declare-fun arrayContainsKey!0 (array!22783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385742 (= res!220180 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!385743 () Bool)

(declare-fun res!220178 () Bool)

(assert (=> b!385743 (=> (not res!220178) (not e!234090))))

(assert (=> b!385743 (= res!220178 (or (= (select (arr!10857 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10857 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15744 () Bool)

(assert (=> mapIsEmpty!15744 mapRes!15744))

(declare-fun b!385745 () Bool)

(declare-fun tp_is_empty!9453 () Bool)

(assert (=> b!385745 (= e!234091 tp_is_empty!9453)))

(declare-fun b!385746 () Bool)

(declare-fun res!220181 () Bool)

(assert (=> b!385746 (=> (not res!220181) (not e!234088))))

(declare-datatypes ((List!6237 0))(
  ( (Nil!6234) (Cons!6233 (h!7089 (_ BitVec 64)) (t!11395 List!6237)) )
))
(declare-fun arrayNoDuplicates!0 (array!22783 (_ BitVec 32) List!6237) Bool)

(assert (=> b!385746 (= res!220181 (arrayNoDuplicates!0 lt!181654 #b00000000000000000000000000000000 Nil!6234))))

(declare-fun b!385747 () Bool)

(assert (=> b!385747 (= e!234088 (bvsgt #b00000000000000000000000000000000 (size!11209 _keys!658)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6360 0))(
  ( (tuple2!6361 (_1!3190 (_ BitVec 64)) (_2!3190 V!13709)) )
))
(declare-datatypes ((List!6238 0))(
  ( (Nil!6235) (Cons!6234 (h!7090 tuple2!6360) (t!11396 List!6238)) )
))
(declare-datatypes ((ListLongMap!5287 0))(
  ( (ListLongMap!5288 (toList!2659 List!6238)) )
))
(declare-fun lt!181653 () ListLongMap!5287)

(declare-fun zeroValue!472 () V!13709)

(declare-fun v!373 () V!13709)

(declare-fun minValue!472 () V!13709)

(declare-fun getCurrentListMapNoExtraKeys!893 (array!22783 array!22781 (_ BitVec 32) (_ BitVec 32) V!13709 V!13709 (_ BitVec 32) Int) ListLongMap!5287)

(assert (=> b!385747 (= lt!181653 (getCurrentListMapNoExtraKeys!893 lt!181654 (array!22782 (store (arr!10856 _values!506) i!548 (ValueCellFull!4383 v!373)) (size!11208 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181652 () ListLongMap!5287)

(assert (=> b!385747 (= lt!181652 (getCurrentListMapNoExtraKeys!893 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385748 () Bool)

(declare-fun res!220175 () Bool)

(assert (=> b!385748 (=> (not res!220175) (not e!234090))))

(assert (=> b!385748 (= res!220175 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11209 _keys!658))))))

(declare-fun b!385749 () Bool)

(declare-fun res!220172 () Bool)

(assert (=> b!385749 (=> (not res!220172) (not e!234090))))

(assert (=> b!385749 (= res!220172 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6234))))

(declare-fun b!385744 () Bool)

(declare-fun res!220179 () Bool)

(assert (=> b!385744 (=> (not res!220179) (not e!234090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385744 (= res!220179 (validKeyInArray!0 k0!778))))

(declare-fun res!220177 () Bool)

(assert (=> start!37686 (=> (not res!220177) (not e!234090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37686 (= res!220177 (validMask!0 mask!970))))

(assert (=> start!37686 e!234090))

(declare-fun e!234092 () Bool)

(declare-fun array_inv!7966 (array!22781) Bool)

(assert (=> start!37686 (and (array_inv!7966 _values!506) e!234092)))

(assert (=> start!37686 tp!31094))

(assert (=> start!37686 true))

(assert (=> start!37686 tp_is_empty!9453))

(declare-fun array_inv!7967 (array!22783) Bool)

(assert (=> start!37686 (array_inv!7967 _keys!658)))

(declare-fun b!385750 () Bool)

(declare-fun e!234089 () Bool)

(assert (=> b!385750 (= e!234092 (and e!234089 mapRes!15744))))

(declare-fun condMapEmpty!15744 () Bool)

(declare-fun mapDefault!15744 () ValueCell!4383)

(assert (=> b!385750 (= condMapEmpty!15744 (= (arr!10856 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4383)) mapDefault!15744)))))

(declare-fun b!385751 () Bool)

(assert (=> b!385751 (= e!234089 tp_is_empty!9453)))

(assert (= (and start!37686 res!220177) b!385739))

(assert (= (and b!385739 res!220174) b!385741))

(assert (= (and b!385741 res!220176) b!385749))

(assert (= (and b!385749 res!220172) b!385748))

(assert (= (and b!385748 res!220175) b!385744))

(assert (= (and b!385744 res!220179) b!385743))

(assert (= (and b!385743 res!220178) b!385742))

(assert (= (and b!385742 res!220180) b!385740))

(assert (= (and b!385740 res!220173) b!385746))

(assert (= (and b!385746 res!220181) b!385747))

(assert (= (and b!385750 condMapEmpty!15744) mapIsEmpty!15744))

(assert (= (and b!385750 (not condMapEmpty!15744)) mapNonEmpty!15744))

(get-info :version)

(assert (= (and mapNonEmpty!15744 ((_ is ValueCellFull!4383) mapValue!15744)) b!385745))

(assert (= (and b!385750 ((_ is ValueCellFull!4383) mapDefault!15744)) b!385751))

(assert (= start!37686 b!385750))

(declare-fun m!382241 () Bool)

(assert (=> b!385743 m!382241))

(declare-fun m!382243 () Bool)

(assert (=> b!385740 m!382243))

(declare-fun m!382245 () Bool)

(assert (=> b!385740 m!382245))

(declare-fun m!382247 () Bool)

(assert (=> b!385747 m!382247))

(declare-fun m!382249 () Bool)

(assert (=> b!385747 m!382249))

(declare-fun m!382251 () Bool)

(assert (=> b!385747 m!382251))

(declare-fun m!382253 () Bool)

(assert (=> b!385741 m!382253))

(declare-fun m!382255 () Bool)

(assert (=> b!385749 m!382255))

(declare-fun m!382257 () Bool)

(assert (=> start!37686 m!382257))

(declare-fun m!382259 () Bool)

(assert (=> start!37686 m!382259))

(declare-fun m!382261 () Bool)

(assert (=> start!37686 m!382261))

(declare-fun m!382263 () Bool)

(assert (=> b!385744 m!382263))

(declare-fun m!382265 () Bool)

(assert (=> mapNonEmpty!15744 m!382265))

(declare-fun m!382267 () Bool)

(assert (=> b!385746 m!382267))

(declare-fun m!382269 () Bool)

(assert (=> b!385742 m!382269))

(check-sat (not b!385747) (not b!385741) (not b!385746) (not mapNonEmpty!15744) tp_is_empty!9453 b_and!16041 (not b!385744) (not b!385742) (not b_next!8781) (not start!37686) (not b!385749) (not b!385740))
(check-sat b_and!16041 (not b_next!8781))
