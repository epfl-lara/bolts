; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37704 () Bool)

(assert start!37704)

(declare-fun b_free!8799 () Bool)

(declare-fun b_next!8799 () Bool)

(assert (=> start!37704 (= b_free!8799 (not b_next!8799))))

(declare-fun tp!31148 () Bool)

(declare-fun b_and!16059 () Bool)

(assert (=> start!37704 (= tp!31148 b_and!16059)))

(declare-fun b!386090 () Bool)

(declare-fun e!234254 () Bool)

(declare-fun e!234252 () Bool)

(declare-fun mapRes!15771 () Bool)

(assert (=> b!386090 (= e!234254 (and e!234252 mapRes!15771))))

(declare-fun condMapEmpty!15771 () Bool)

(declare-datatypes ((V!13733 0))(
  ( (V!13734 (val!4780 Int)) )
))
(declare-datatypes ((ValueCell!4392 0))(
  ( (ValueCellFull!4392 (v!6973 V!13733)) (EmptyCell!4392) )
))
(declare-datatypes ((array!22815 0))(
  ( (array!22816 (arr!10873 (Array (_ BitVec 32) ValueCell!4392)) (size!11225 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22815)

(declare-fun mapDefault!15771 () ValueCell!4392)

(assert (=> b!386090 (= condMapEmpty!15771 (= (arr!10873 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4392)) mapDefault!15771)))))

(declare-fun mapNonEmpty!15771 () Bool)

(declare-fun tp!31149 () Bool)

(declare-fun e!234255 () Bool)

(assert (=> mapNonEmpty!15771 (= mapRes!15771 (and tp!31149 e!234255))))

(declare-fun mapKey!15771 () (_ BitVec 32))

(declare-fun mapRest!15771 () (Array (_ BitVec 32) ValueCell!4392))

(declare-fun mapValue!15771 () ValueCell!4392)

(assert (=> mapNonEmpty!15771 (= (arr!10873 _values!506) (store mapRest!15771 mapKey!15771 mapValue!15771))))

(declare-fun mapIsEmpty!15771 () Bool)

(assert (=> mapIsEmpty!15771 mapRes!15771))

(declare-fun b!386091 () Bool)

(declare-fun res!220442 () Bool)

(declare-fun e!234251 () Bool)

(assert (=> b!386091 (=> (not res!220442) (not e!234251))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22817 0))(
  ( (array!22818 (arr!10874 (Array (_ BitVec 32) (_ BitVec 64))) (size!11226 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22817)

(assert (=> b!386091 (= res!220442 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11226 _keys!658))))))

(declare-fun b!386092 () Bool)

(declare-fun res!220446 () Bool)

(assert (=> b!386092 (=> (not res!220446) (not e!234251))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386092 (= res!220446 (validKeyInArray!0 k0!778))))

(declare-fun b!386093 () Bool)

(declare-fun e!234250 () Bool)

(assert (=> b!386093 (= e!234251 e!234250)))

(declare-fun res!220443 () Bool)

(assert (=> b!386093 (=> (not res!220443) (not e!234250))))

(declare-fun lt!181733 () array!22817)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22817 (_ BitVec 32)) Bool)

(assert (=> b!386093 (= res!220443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181733 mask!970))))

(assert (=> b!386093 (= lt!181733 (array!22818 (store (arr!10874 _keys!658) i!548 k0!778) (size!11226 _keys!658)))))

(declare-fun b!386094 () Bool)

(declare-fun res!220448 () Bool)

(assert (=> b!386094 (=> (not res!220448) (not e!234250))))

(declare-datatypes ((List!6250 0))(
  ( (Nil!6247) (Cons!6246 (h!7102 (_ BitVec 64)) (t!11408 List!6250)) )
))
(declare-fun arrayNoDuplicates!0 (array!22817 (_ BitVec 32) List!6250) Bool)

(assert (=> b!386094 (= res!220448 (arrayNoDuplicates!0 lt!181733 #b00000000000000000000000000000000 Nil!6247))))

(declare-fun res!220449 () Bool)

(assert (=> start!37704 (=> (not res!220449) (not e!234251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37704 (= res!220449 (validMask!0 mask!970))))

(assert (=> start!37704 e!234251))

(declare-fun array_inv!7976 (array!22815) Bool)

(assert (=> start!37704 (and (array_inv!7976 _values!506) e!234254)))

(assert (=> start!37704 tp!31148))

(assert (=> start!37704 true))

(declare-fun tp_is_empty!9471 () Bool)

(assert (=> start!37704 tp_is_empty!9471))

(declare-fun array_inv!7977 (array!22817) Bool)

(assert (=> start!37704 (array_inv!7977 _keys!658)))

(declare-fun b!386095 () Bool)

(declare-fun res!220445 () Bool)

(assert (=> b!386095 (=> (not res!220445) (not e!234251))))

(assert (=> b!386095 (= res!220445 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6247))))

(declare-fun b!386096 () Bool)

(declare-fun res!220450 () Bool)

(assert (=> b!386096 (=> (not res!220450) (not e!234251))))

(assert (=> b!386096 (= res!220450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386097 () Bool)

(assert (=> b!386097 (= e!234255 tp_is_empty!9471)))

(declare-fun b!386098 () Bool)

(assert (=> b!386098 (= e!234252 tp_is_empty!9471)))

(declare-fun b!386099 () Bool)

(declare-fun res!220444 () Bool)

(assert (=> b!386099 (=> (not res!220444) (not e!234251))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386099 (= res!220444 (and (= (size!11225 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11226 _keys!658) (size!11225 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386100 () Bool)

(declare-fun res!220447 () Bool)

(assert (=> b!386100 (=> (not res!220447) (not e!234251))))

(assert (=> b!386100 (= res!220447 (or (= (select (arr!10874 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10874 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386101 () Bool)

(assert (=> b!386101 (= e!234250 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13733)

(declare-datatypes ((tuple2!6372 0))(
  ( (tuple2!6373 (_1!3196 (_ BitVec 64)) (_2!3196 V!13733)) )
))
(declare-datatypes ((List!6251 0))(
  ( (Nil!6248) (Cons!6247 (h!7103 tuple2!6372) (t!11409 List!6251)) )
))
(declare-datatypes ((ListLongMap!5299 0))(
  ( (ListLongMap!5300 (toList!2665 List!6251)) )
))
(declare-fun lt!181734 () ListLongMap!5299)

(declare-fun v!373 () V!13733)

(declare-fun minValue!472 () V!13733)

(declare-fun getCurrentListMapNoExtraKeys!899 (array!22817 array!22815 (_ BitVec 32) (_ BitVec 32) V!13733 V!13733 (_ BitVec 32) Int) ListLongMap!5299)

(assert (=> b!386101 (= lt!181734 (getCurrentListMapNoExtraKeys!899 lt!181733 (array!22816 (store (arr!10873 _values!506) i!548 (ValueCellFull!4392 v!373)) (size!11225 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181735 () ListLongMap!5299)

(assert (=> b!386101 (= lt!181735 (getCurrentListMapNoExtraKeys!899 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386102 () Bool)

(declare-fun res!220451 () Bool)

(assert (=> b!386102 (=> (not res!220451) (not e!234251))))

(declare-fun arrayContainsKey!0 (array!22817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386102 (= res!220451 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37704 res!220449) b!386099))

(assert (= (and b!386099 res!220444) b!386096))

(assert (= (and b!386096 res!220450) b!386095))

(assert (= (and b!386095 res!220445) b!386091))

(assert (= (and b!386091 res!220442) b!386092))

(assert (= (and b!386092 res!220446) b!386100))

(assert (= (and b!386100 res!220447) b!386102))

(assert (= (and b!386102 res!220451) b!386093))

(assert (= (and b!386093 res!220443) b!386094))

(assert (= (and b!386094 res!220448) b!386101))

(assert (= (and b!386090 condMapEmpty!15771) mapIsEmpty!15771))

(assert (= (and b!386090 (not condMapEmpty!15771)) mapNonEmpty!15771))

(get-info :version)

(assert (= (and mapNonEmpty!15771 ((_ is ValueCellFull!4392) mapValue!15771)) b!386097))

(assert (= (and b!386090 ((_ is ValueCellFull!4392) mapDefault!15771)) b!386098))

(assert (= start!37704 b!386090))

(declare-fun m!382511 () Bool)

(assert (=> b!386093 m!382511))

(declare-fun m!382513 () Bool)

(assert (=> b!386093 m!382513))

(declare-fun m!382515 () Bool)

(assert (=> b!386096 m!382515))

(declare-fun m!382517 () Bool)

(assert (=> b!386102 m!382517))

(declare-fun m!382519 () Bool)

(assert (=> start!37704 m!382519))

(declare-fun m!382521 () Bool)

(assert (=> start!37704 m!382521))

(declare-fun m!382523 () Bool)

(assert (=> start!37704 m!382523))

(declare-fun m!382525 () Bool)

(assert (=> b!386100 m!382525))

(declare-fun m!382527 () Bool)

(assert (=> b!386095 m!382527))

(declare-fun m!382529 () Bool)

(assert (=> b!386092 m!382529))

(declare-fun m!382531 () Bool)

(assert (=> b!386094 m!382531))

(declare-fun m!382533 () Bool)

(assert (=> mapNonEmpty!15771 m!382533))

(declare-fun m!382535 () Bool)

(assert (=> b!386101 m!382535))

(declare-fun m!382537 () Bool)

(assert (=> b!386101 m!382537))

(declare-fun m!382539 () Bool)

(assert (=> b!386101 m!382539))

(check-sat (not b!386094) tp_is_empty!9471 (not b!386093) b_and!16059 (not start!37704) (not b_next!8799) (not b!386092) (not b!386101) (not b!386102) (not b!386095) (not mapNonEmpty!15771) (not b!386096))
(check-sat b_and!16059 (not b_next!8799))
