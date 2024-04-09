; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37206 () Bool)

(assert start!37206)

(declare-fun b_free!8325 () Bool)

(declare-fun b_next!8325 () Bool)

(assert (=> start!37206 (= b_free!8325 (not b_next!8325))))

(declare-fun tp!29690 () Bool)

(declare-fun b_and!15585 () Bool)

(assert (=> start!37206 (= tp!29690 b_and!15585)))

(declare-fun b!375557 () Bool)

(declare-fun res!212162 () Bool)

(declare-fun e!228793 () Bool)

(assert (=> b!375557 (=> (not res!212162) (not e!228793))))

(declare-datatypes ((array!21845 0))(
  ( (array!21846 (arr!10388 (Array (_ BitVec 32) (_ BitVec 64))) (size!10740 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21845)

(declare-datatypes ((List!5875 0))(
  ( (Nil!5872) (Cons!5871 (h!6727 (_ BitVec 64)) (t!11033 List!5875)) )
))
(declare-fun arrayNoDuplicates!0 (array!21845 (_ BitVec 32) List!5875) Bool)

(assert (=> b!375557 (= res!212162 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5872))))

(declare-fun b!375558 () Bool)

(declare-fun res!212151 () Bool)

(assert (=> b!375558 (=> (not res!212151) (not e!228793))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375558 (= res!212151 (or (= (select (arr!10388 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10388 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375559 () Bool)

(declare-fun res!212158 () Bool)

(assert (=> b!375559 (=> (not res!212158) (not e!228793))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375559 (= res!212158 (validKeyInArray!0 k0!778))))

(declare-fun b!375560 () Bool)

(declare-fun res!212155 () Bool)

(assert (=> b!375560 (=> (not res!212155) (not e!228793))))

(assert (=> b!375560 (= res!212155 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10740 _keys!658))))))

(declare-fun b!375561 () Bool)

(declare-datatypes ((V!13069 0))(
  ( (V!13070 (val!4531 Int)) )
))
(declare-datatypes ((tuple2!6004 0))(
  ( (tuple2!6005 (_1!3012 (_ BitVec 64)) (_2!3012 V!13069)) )
))
(declare-fun lt!174018 () tuple2!6004)

(declare-datatypes ((List!5876 0))(
  ( (Nil!5873) (Cons!5872 (h!6728 tuple2!6004) (t!11034 List!5876)) )
))
(declare-datatypes ((ListLongMap!4931 0))(
  ( (ListLongMap!4932 (toList!2481 List!5876)) )
))
(declare-fun lt!174022 () ListLongMap!4931)

(declare-fun lt!174014 () ListLongMap!4931)

(declare-fun e!228792 () Bool)

(declare-fun +!822 (ListLongMap!4931 tuple2!6004) ListLongMap!4931)

(assert (=> b!375561 (= e!228792 (= lt!174022 (+!822 lt!174014 lt!174018)))))

(declare-fun b!375562 () Bool)

(declare-fun e!228789 () Bool)

(declare-fun tp_is_empty!8973 () Bool)

(assert (=> b!375562 (= e!228789 tp_is_empty!8973)))

(declare-fun b!375563 () Bool)

(declare-fun e!228791 () Bool)

(assert (=> b!375563 (= e!228793 e!228791)))

(declare-fun res!212153 () Bool)

(assert (=> b!375563 (=> (not res!212153) (not e!228791))))

(declare-fun lt!174020 () array!21845)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21845 (_ BitVec 32)) Bool)

(assert (=> b!375563 (= res!212153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174020 mask!970))))

(assert (=> b!375563 (= lt!174020 (array!21846 (store (arr!10388 _keys!658) i!548 k0!778) (size!10740 _keys!658)))))

(declare-fun b!375564 () Bool)

(declare-fun e!228794 () Bool)

(assert (=> b!375564 (= e!228794 tp_is_empty!8973)))

(declare-fun mapNonEmpty!15024 () Bool)

(declare-fun mapRes!15024 () Bool)

(declare-fun tp!29691 () Bool)

(assert (=> mapNonEmpty!15024 (= mapRes!15024 (and tp!29691 e!228789))))

(declare-fun mapKey!15024 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4143 0))(
  ( (ValueCellFull!4143 (v!6724 V!13069)) (EmptyCell!4143) )
))
(declare-fun mapRest!15024 () (Array (_ BitVec 32) ValueCell!4143))

(declare-datatypes ((array!21847 0))(
  ( (array!21848 (arr!10389 (Array (_ BitVec 32) ValueCell!4143)) (size!10741 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21847)

(declare-fun mapValue!15024 () ValueCell!4143)

(assert (=> mapNonEmpty!15024 (= (arr!10389 _values!506) (store mapRest!15024 mapKey!15024 mapValue!15024))))

(declare-fun b!375565 () Bool)

(declare-fun e!228795 () Bool)

(assert (=> b!375565 (= e!228795 true)))

(assert (=> b!375565 e!228792))

(declare-fun res!212159 () Bool)

(assert (=> b!375565 (=> (not res!212159) (not e!228792))))

(declare-fun lt!174021 () ListLongMap!4931)

(assert (=> b!375565 (= res!212159 (= lt!174022 (+!822 lt!174021 lt!174018)))))

(declare-fun zeroValue!472 () V!13069)

(assert (=> b!375565 (= lt!174018 (tuple2!6005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!212157 () Bool)

(assert (=> start!37206 (=> (not res!212157) (not e!228793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37206 (= res!212157 (validMask!0 mask!970))))

(assert (=> start!37206 e!228793))

(declare-fun e!228790 () Bool)

(declare-fun array_inv!7652 (array!21847) Bool)

(assert (=> start!37206 (and (array_inv!7652 _values!506) e!228790)))

(assert (=> start!37206 tp!29690))

(assert (=> start!37206 true))

(assert (=> start!37206 tp_is_empty!8973))

(declare-fun array_inv!7653 (array!21845) Bool)

(assert (=> start!37206 (array_inv!7653 _keys!658)))

(declare-fun b!375566 () Bool)

(assert (=> b!375566 (= e!228791 (not e!228795))))

(declare-fun res!212154 () Bool)

(assert (=> b!375566 (=> res!212154 e!228795)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375566 (= res!212154 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!174017 () ListLongMap!4931)

(declare-fun minValue!472 () V!13069)

(declare-fun getCurrentListMap!1923 (array!21845 array!21847 (_ BitVec 32) (_ BitVec 32) V!13069 V!13069 (_ BitVec 32) Int) ListLongMap!4931)

(assert (=> b!375566 (= lt!174017 (getCurrentListMap!1923 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174016 () array!21847)

(assert (=> b!375566 (= lt!174022 (getCurrentListMap!1923 lt!174020 lt!174016 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375566 (and (= lt!174021 lt!174014) (= lt!174014 lt!174021))))

(declare-fun v!373 () V!13069)

(declare-fun lt!174015 () ListLongMap!4931)

(assert (=> b!375566 (= lt!174014 (+!822 lt!174015 (tuple2!6005 k0!778 v!373)))))

(declare-datatypes ((Unit!11547 0))(
  ( (Unit!11548) )
))
(declare-fun lt!174019 () Unit!11547)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!74 (array!21845 array!21847 (_ BitVec 32) (_ BitVec 32) V!13069 V!13069 (_ BitVec 32) (_ BitVec 64) V!13069 (_ BitVec 32) Int) Unit!11547)

(assert (=> b!375566 (= lt!174019 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!74 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!741 (array!21845 array!21847 (_ BitVec 32) (_ BitVec 32) V!13069 V!13069 (_ BitVec 32) Int) ListLongMap!4931)

(assert (=> b!375566 (= lt!174021 (getCurrentListMapNoExtraKeys!741 lt!174020 lt!174016 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375566 (= lt!174016 (array!21848 (store (arr!10389 _values!506) i!548 (ValueCellFull!4143 v!373)) (size!10741 _values!506)))))

(assert (=> b!375566 (= lt!174015 (getCurrentListMapNoExtraKeys!741 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375567 () Bool)

(declare-fun res!212150 () Bool)

(assert (=> b!375567 (=> (not res!212150) (not e!228793))))

(declare-fun arrayContainsKey!0 (array!21845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375567 (= res!212150 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375568 () Bool)

(declare-fun res!212161 () Bool)

(assert (=> b!375568 (=> (not res!212161) (not e!228793))))

(assert (=> b!375568 (= res!212161 (and (= (size!10741 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10740 _keys!658) (size!10741 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15024 () Bool)

(assert (=> mapIsEmpty!15024 mapRes!15024))

(declare-fun b!375569 () Bool)

(declare-fun res!212160 () Bool)

(assert (=> b!375569 (=> (not res!212160) (not e!228792))))

(assert (=> b!375569 (= res!212160 (= lt!174017 (+!822 lt!174015 lt!174018)))))

(declare-fun b!375570 () Bool)

(assert (=> b!375570 (= e!228790 (and e!228794 mapRes!15024))))

(declare-fun condMapEmpty!15024 () Bool)

(declare-fun mapDefault!15024 () ValueCell!4143)

(assert (=> b!375570 (= condMapEmpty!15024 (= (arr!10389 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4143)) mapDefault!15024)))))

(declare-fun b!375571 () Bool)

(declare-fun res!212152 () Bool)

(assert (=> b!375571 (=> (not res!212152) (not e!228793))))

(assert (=> b!375571 (= res!212152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375572 () Bool)

(declare-fun res!212156 () Bool)

(assert (=> b!375572 (=> (not res!212156) (not e!228791))))

(assert (=> b!375572 (= res!212156 (arrayNoDuplicates!0 lt!174020 #b00000000000000000000000000000000 Nil!5872))))

(assert (= (and start!37206 res!212157) b!375568))

(assert (= (and b!375568 res!212161) b!375571))

(assert (= (and b!375571 res!212152) b!375557))

(assert (= (and b!375557 res!212162) b!375560))

(assert (= (and b!375560 res!212155) b!375559))

(assert (= (and b!375559 res!212158) b!375558))

(assert (= (and b!375558 res!212151) b!375567))

(assert (= (and b!375567 res!212150) b!375563))

(assert (= (and b!375563 res!212153) b!375572))

(assert (= (and b!375572 res!212156) b!375566))

(assert (= (and b!375566 (not res!212154)) b!375565))

(assert (= (and b!375565 res!212159) b!375569))

(assert (= (and b!375569 res!212160) b!375561))

(assert (= (and b!375570 condMapEmpty!15024) mapIsEmpty!15024))

(assert (= (and b!375570 (not condMapEmpty!15024)) mapNonEmpty!15024))

(get-info :version)

(assert (= (and mapNonEmpty!15024 ((_ is ValueCellFull!4143) mapValue!15024)) b!375562))

(assert (= (and b!375570 ((_ is ValueCellFull!4143) mapDefault!15024)) b!375564))

(assert (= start!37206 b!375570))

(declare-fun m!372265 () Bool)

(assert (=> b!375566 m!372265))

(declare-fun m!372267 () Bool)

(assert (=> b!375566 m!372267))

(declare-fun m!372269 () Bool)

(assert (=> b!375566 m!372269))

(declare-fun m!372271 () Bool)

(assert (=> b!375566 m!372271))

(declare-fun m!372273 () Bool)

(assert (=> b!375566 m!372273))

(declare-fun m!372275 () Bool)

(assert (=> b!375566 m!372275))

(declare-fun m!372277 () Bool)

(assert (=> b!375566 m!372277))

(declare-fun m!372279 () Bool)

(assert (=> mapNonEmpty!15024 m!372279))

(declare-fun m!372281 () Bool)

(assert (=> b!375565 m!372281))

(declare-fun m!372283 () Bool)

(assert (=> b!375569 m!372283))

(declare-fun m!372285 () Bool)

(assert (=> b!375559 m!372285))

(declare-fun m!372287 () Bool)

(assert (=> b!375561 m!372287))

(declare-fun m!372289 () Bool)

(assert (=> b!375557 m!372289))

(declare-fun m!372291 () Bool)

(assert (=> b!375571 m!372291))

(declare-fun m!372293 () Bool)

(assert (=> start!37206 m!372293))

(declare-fun m!372295 () Bool)

(assert (=> start!37206 m!372295))

(declare-fun m!372297 () Bool)

(assert (=> start!37206 m!372297))

(declare-fun m!372299 () Bool)

(assert (=> b!375563 m!372299))

(declare-fun m!372301 () Bool)

(assert (=> b!375563 m!372301))

(declare-fun m!372303 () Bool)

(assert (=> b!375558 m!372303))

(declare-fun m!372305 () Bool)

(assert (=> b!375567 m!372305))

(declare-fun m!372307 () Bool)

(assert (=> b!375572 m!372307))

(check-sat (not b!375572) (not b!375565) (not b!375563) (not b_next!8325) (not b!375561) (not b!375569) (not b!375566) (not start!37206) (not mapNonEmpty!15024) (not b!375559) (not b!375567) (not b!375557) tp_is_empty!8973 b_and!15585 (not b!375571))
(check-sat b_and!15585 (not b_next!8325))
