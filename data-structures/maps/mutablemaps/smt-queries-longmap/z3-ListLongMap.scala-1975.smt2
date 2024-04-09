; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34722 () Bool)

(assert start!34722)

(declare-fun b_free!7521 () Bool)

(declare-fun b_next!7521 () Bool)

(assert (=> start!34722 (= b_free!7521 (not b_next!7521))))

(declare-fun tp!26127 () Bool)

(declare-fun b_and!14759 () Bool)

(assert (=> start!34722 (= tp!26127 b_and!14759)))

(declare-fun b!346809 () Bool)

(declare-fun e!212539 () Bool)

(declare-fun tp_is_empty!7473 () Bool)

(assert (=> b!346809 (= e!212539 tp_is_empty!7473)))

(declare-fun b!346810 () Bool)

(declare-fun e!212538 () Bool)

(declare-fun mapRes!12666 () Bool)

(assert (=> b!346810 (= e!212538 (and e!212539 mapRes!12666))))

(declare-fun condMapEmpty!12666 () Bool)

(declare-datatypes ((V!10941 0))(
  ( (V!10942 (val!3781 Int)) )
))
(declare-datatypes ((ValueCell!3393 0))(
  ( (ValueCellFull!3393 (v!5959 V!10941)) (EmptyCell!3393) )
))
(declare-datatypes ((array!18503 0))(
  ( (array!18504 (arr!8759 (Array (_ BitVec 32) ValueCell!3393)) (size!9111 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18503)

(declare-fun mapDefault!12666 () ValueCell!3393)

(assert (=> b!346810 (= condMapEmpty!12666 (= (arr!8759 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3393)) mapDefault!12666)))))

(declare-fun b!346811 () Bool)

(declare-fun res!191975 () Bool)

(declare-fun e!212536 () Bool)

(assert (=> b!346811 (=> (not res!191975) (not e!212536))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10941)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18505 0))(
  ( (array!18506 (arr!8760 (Array (_ BitVec 32) (_ BitVec 64))) (size!9112 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18505)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10941)

(declare-datatypes ((tuple2!5454 0))(
  ( (tuple2!5455 (_1!2737 (_ BitVec 64)) (_2!2737 V!10941)) )
))
(declare-datatypes ((List!5101 0))(
  ( (Nil!5098) (Cons!5097 (h!5953 tuple2!5454) (t!10237 List!5101)) )
))
(declare-datatypes ((ListLongMap!4381 0))(
  ( (ListLongMap!4382 (toList!2206 List!5101)) )
))
(declare-fun contains!2266 (ListLongMap!4381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1726 (array!18505 array!18503 (_ BitVec 32) (_ BitVec 32) V!10941 V!10941 (_ BitVec 32) Int) ListLongMap!4381)

(assert (=> b!346811 (= res!191975 (not (contains!2266 (getCurrentListMap!1726 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!346812 () Bool)

(declare-fun res!191978 () Bool)

(assert (=> b!346812 (=> (not res!191978) (not e!212536))))

(declare-datatypes ((List!5102 0))(
  ( (Nil!5099) (Cons!5098 (h!5954 (_ BitVec 64)) (t!10238 List!5102)) )
))
(declare-fun arrayNoDuplicates!0 (array!18505 (_ BitVec 32) List!5102) Bool)

(assert (=> b!346812 (= res!191978 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5099))))

(declare-fun mapNonEmpty!12666 () Bool)

(declare-fun tp!26126 () Bool)

(declare-fun e!212540 () Bool)

(assert (=> mapNonEmpty!12666 (= mapRes!12666 (and tp!26126 e!212540))))

(declare-fun mapRest!12666 () (Array (_ BitVec 32) ValueCell!3393))

(declare-fun mapKey!12666 () (_ BitVec 32))

(declare-fun mapValue!12666 () ValueCell!3393)

(assert (=> mapNonEmpty!12666 (= (arr!8759 _values!1525) (store mapRest!12666 mapKey!12666 mapValue!12666))))

(declare-fun b!346813 () Bool)

(declare-fun res!191977 () Bool)

(declare-fun e!212541 () Bool)

(assert (=> b!346813 (=> (not res!191977) (not e!212541))))

(declare-datatypes ((SeekEntryResult!3372 0))(
  ( (MissingZero!3372 (index!15667 (_ BitVec 32))) (Found!3372 (index!15668 (_ BitVec 32))) (Intermediate!3372 (undefined!4184 Bool) (index!15669 (_ BitVec 32)) (x!34549 (_ BitVec 32))) (Undefined!3372) (MissingVacant!3372 (index!15670 (_ BitVec 32))) )
))
(declare-fun lt!163433 () SeekEntryResult!3372)

(declare-fun arrayContainsKey!0 (array!18505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346813 (= res!191977 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15668 lt!163433)))))

(declare-fun b!346814 () Bool)

(declare-fun res!191980 () Bool)

(assert (=> b!346814 (=> (not res!191980) (not e!212536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18505 (_ BitVec 32)) Bool)

(assert (=> b!346814 (= res!191980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346815 () Bool)

(declare-fun res!191976 () Bool)

(assert (=> b!346815 (=> (not res!191976) (not e!212536))))

(assert (=> b!346815 (= res!191976 (and (= (size!9111 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9112 _keys!1895) (size!9111 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!191974 () Bool)

(assert (=> start!34722 (=> (not res!191974) (not e!212536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34722 (= res!191974 (validMask!0 mask!2385))))

(assert (=> start!34722 e!212536))

(assert (=> start!34722 true))

(assert (=> start!34722 tp_is_empty!7473))

(assert (=> start!34722 tp!26127))

(declare-fun array_inv!6474 (array!18503) Bool)

(assert (=> start!34722 (and (array_inv!6474 _values!1525) e!212538)))

(declare-fun array_inv!6475 (array!18505) Bool)

(assert (=> start!34722 (array_inv!6475 _keys!1895)))

(declare-fun b!346816 () Bool)

(assert (=> b!346816 (= e!212540 tp_is_empty!7473)))

(declare-fun b!346817 () Bool)

(declare-fun res!191981 () Bool)

(assert (=> b!346817 (=> (not res!191981) (not e!212536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346817 (= res!191981 (validKeyInArray!0 k0!1348))))

(declare-fun b!346818 () Bool)

(assert (=> b!346818 (= e!212536 e!212541)))

(declare-fun res!191979 () Bool)

(assert (=> b!346818 (=> (not res!191979) (not e!212541))))

(get-info :version)

(assert (=> b!346818 (= res!191979 (and ((_ is Found!3372) lt!163433) (= (select (arr!8760 _keys!1895) (index!15668 lt!163433)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18505 (_ BitVec 32)) SeekEntryResult!3372)

(assert (=> b!346818 (= lt!163433 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346819 () Bool)

(assert (=> b!346819 (= e!212541 (not true))))

(assert (=> b!346819 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10762 0))(
  ( (Unit!10763) )
))
(declare-fun lt!163434 () Unit!10762)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18505 (_ BitVec 64) (_ BitVec 32)) Unit!10762)

(assert (=> b!346819 (= lt!163434 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15668 lt!163433)))))

(declare-fun mapIsEmpty!12666 () Bool)

(assert (=> mapIsEmpty!12666 mapRes!12666))

(assert (= (and start!34722 res!191974) b!346815))

(assert (= (and b!346815 res!191976) b!346814))

(assert (= (and b!346814 res!191980) b!346812))

(assert (= (and b!346812 res!191978) b!346817))

(assert (= (and b!346817 res!191981) b!346811))

(assert (= (and b!346811 res!191975) b!346818))

(assert (= (and b!346818 res!191979) b!346813))

(assert (= (and b!346813 res!191977) b!346819))

(assert (= (and b!346810 condMapEmpty!12666) mapIsEmpty!12666))

(assert (= (and b!346810 (not condMapEmpty!12666)) mapNonEmpty!12666))

(assert (= (and mapNonEmpty!12666 ((_ is ValueCellFull!3393) mapValue!12666)) b!346816))

(assert (= (and b!346810 ((_ is ValueCellFull!3393) mapDefault!12666)) b!346809))

(assert (= start!34722 b!346810))

(declare-fun m!347847 () Bool)

(assert (=> b!346814 m!347847))

(declare-fun m!347849 () Bool)

(assert (=> mapNonEmpty!12666 m!347849))

(declare-fun m!347851 () Bool)

(assert (=> b!346819 m!347851))

(declare-fun m!347853 () Bool)

(assert (=> b!346819 m!347853))

(declare-fun m!347855 () Bool)

(assert (=> b!346811 m!347855))

(assert (=> b!346811 m!347855))

(declare-fun m!347857 () Bool)

(assert (=> b!346811 m!347857))

(declare-fun m!347859 () Bool)

(assert (=> b!346818 m!347859))

(declare-fun m!347861 () Bool)

(assert (=> b!346818 m!347861))

(declare-fun m!347863 () Bool)

(assert (=> b!346813 m!347863))

(declare-fun m!347865 () Bool)

(assert (=> start!34722 m!347865))

(declare-fun m!347867 () Bool)

(assert (=> start!34722 m!347867))

(declare-fun m!347869 () Bool)

(assert (=> start!34722 m!347869))

(declare-fun m!347871 () Bool)

(assert (=> b!346812 m!347871))

(declare-fun m!347873 () Bool)

(assert (=> b!346817 m!347873))

(check-sat b_and!14759 (not b!346819) (not b!346811) (not b_next!7521) tp_is_empty!7473 (not start!34722) (not mapNonEmpty!12666) (not b!346812) (not b!346817) (not b!346818) (not b!346814) (not b!346813))
(check-sat b_and!14759 (not b_next!7521))
