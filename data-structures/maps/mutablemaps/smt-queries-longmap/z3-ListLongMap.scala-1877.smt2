; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33706 () Bool)

(assert start!33706)

(declare-fun b_free!6933 () Bool)

(declare-fun b_next!6933 () Bool)

(assert (=> start!33706 (= b_free!6933 (not b_next!6933))))

(declare-fun tp!24302 () Bool)

(declare-fun b_and!14131 () Bool)

(assert (=> start!33706 (= tp!24302 b_and!14131)))

(declare-fun b!334696 () Bool)

(declare-fun e!205453 () Bool)

(declare-fun e!205452 () Bool)

(declare-fun mapRes!11724 () Bool)

(assert (=> b!334696 (= e!205453 (and e!205452 mapRes!11724))))

(declare-fun condMapEmpty!11724 () Bool)

(declare-datatypes ((V!10157 0))(
  ( (V!10158 (val!3487 Int)) )
))
(declare-datatypes ((ValueCell!3099 0))(
  ( (ValueCellFull!3099 (v!5645 V!10157)) (EmptyCell!3099) )
))
(declare-datatypes ((array!17355 0))(
  ( (array!17356 (arr!8205 (Array (_ BitVec 32) ValueCell!3099)) (size!8557 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17355)

(declare-fun mapDefault!11724 () ValueCell!3099)

(assert (=> b!334696 (= condMapEmpty!11724 (= (arr!8205 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3099)) mapDefault!11724)))))

(declare-fun b!334697 () Bool)

(declare-fun res!184665 () Bool)

(declare-fun e!205450 () Bool)

(assert (=> b!334697 (=> (not res!184665) (not e!205450))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334697 (= res!184665 (validKeyInArray!0 k0!1348))))

(declare-fun b!334698 () Bool)

(declare-fun res!184668 () Bool)

(assert (=> b!334698 (=> (not res!184668) (not e!205450))))

(declare-datatypes ((array!17357 0))(
  ( (array!17358 (arr!8206 (Array (_ BitVec 32) (_ BitVec 64))) (size!8558 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17357)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17357 (_ BitVec 32)) Bool)

(assert (=> b!334698 (= res!184668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334699 () Bool)

(declare-fun e!205454 () Bool)

(assert (=> b!334699 (= e!205450 e!205454)))

(declare-fun res!184666 () Bool)

(assert (=> b!334699 (=> (not res!184666) (not e!205454))))

(declare-datatypes ((tuple2!5066 0))(
  ( (tuple2!5067 (_1!2543 (_ BitVec 64)) (_2!2543 V!10157)) )
))
(declare-datatypes ((List!4707 0))(
  ( (Nil!4704) (Cons!4703 (h!5559 tuple2!5066) (t!9803 List!4707)) )
))
(declare-datatypes ((ListLongMap!3993 0))(
  ( (ListLongMap!3994 (toList!2012 List!4707)) )
))
(declare-fun lt!159595 () ListLongMap!3993)

(declare-fun contains!2052 (ListLongMap!3993 (_ BitVec 64)) Bool)

(assert (=> b!334699 (= res!184666 (not (contains!2052 lt!159595 k0!1348)))))

(declare-fun zeroValue!1467 () V!10157)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10157)

(declare-fun getCurrentListMap!1535 (array!17357 array!17355 (_ BitVec 32) (_ BitVec 32) V!10157 V!10157 (_ BitVec 32) Int) ListLongMap!3993)

(assert (=> b!334699 (= lt!159595 (getCurrentListMap!1535 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun mapIsEmpty!11724 () Bool)

(assert (=> mapIsEmpty!11724 mapRes!11724))

(declare-fun b!334700 () Bool)

(declare-fun e!205449 () Bool)

(assert (=> b!334700 (= e!205454 e!205449)))

(declare-fun res!184670 () Bool)

(assert (=> b!334700 (=> (not res!184670) (not e!205449))))

(declare-datatypes ((SeekEntryResult!3181 0))(
  ( (MissingZero!3181 (index!14903 (_ BitVec 32))) (Found!3181 (index!14904 (_ BitVec 32))) (Intermediate!3181 (undefined!3993 Bool) (index!14905 (_ BitVec 32)) (x!33374 (_ BitVec 32))) (Undefined!3181) (MissingVacant!3181 (index!14906 (_ BitVec 32))) )
))
(declare-fun lt!159594 () SeekEntryResult!3181)

(get-info :version)

(assert (=> b!334700 (= res!184670 (and ((_ is Found!3181) lt!159594) (= (select (arr!8206 _keys!1895) (index!14904 lt!159594)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17357 (_ BitVec 32)) SeekEntryResult!3181)

(assert (=> b!334700 (= lt!159594 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334701 () Bool)

(declare-fun e!205451 () Bool)

(declare-fun tp_is_empty!6885 () Bool)

(assert (=> b!334701 (= e!205451 tp_is_empty!6885)))

(declare-fun b!334702 () Bool)

(assert (=> b!334702 (= e!205449 (not true))))

(assert (=> b!334702 (contains!2052 lt!159595 (select (arr!8206 _keys!1895) (index!14904 lt!159594)))))

(declare-datatypes ((Unit!10410 0))(
  ( (Unit!10411) )
))
(declare-fun lt!159596 () Unit!10410)

(declare-fun lemmaValidKeyInArrayIsInListMap!151 (array!17357 array!17355 (_ BitVec 32) (_ BitVec 32) V!10157 V!10157 (_ BitVec 32) Int) Unit!10410)

(assert (=> b!334702 (= lt!159596 (lemmaValidKeyInArrayIsInListMap!151 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14904 lt!159594) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334702 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159597 () Unit!10410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17357 (_ BitVec 64) (_ BitVec 32)) Unit!10410)

(assert (=> b!334702 (= lt!159597 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14904 lt!159594)))))

(declare-fun b!334703 () Bool)

(declare-fun res!184663 () Bool)

(assert (=> b!334703 (=> (not res!184663) (not e!205450))))

(assert (=> b!334703 (= res!184663 (and (= (size!8557 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8558 _keys!1895) (size!8557 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11724 () Bool)

(declare-fun tp!24303 () Bool)

(assert (=> mapNonEmpty!11724 (= mapRes!11724 (and tp!24303 e!205451))))

(declare-fun mapValue!11724 () ValueCell!3099)

(declare-fun mapKey!11724 () (_ BitVec 32))

(declare-fun mapRest!11724 () (Array (_ BitVec 32) ValueCell!3099))

(assert (=> mapNonEmpty!11724 (= (arr!8205 _values!1525) (store mapRest!11724 mapKey!11724 mapValue!11724))))

(declare-fun b!334704 () Bool)

(declare-fun res!184667 () Bool)

(assert (=> b!334704 (=> (not res!184667) (not e!205450))))

(declare-datatypes ((List!4708 0))(
  ( (Nil!4705) (Cons!4704 (h!5560 (_ BitVec 64)) (t!9804 List!4708)) )
))
(declare-fun arrayNoDuplicates!0 (array!17357 (_ BitVec 32) List!4708) Bool)

(assert (=> b!334704 (= res!184667 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4705))))

(declare-fun b!334705 () Bool)

(assert (=> b!334705 (= e!205452 tp_is_empty!6885)))

(declare-fun res!184669 () Bool)

(assert (=> start!33706 (=> (not res!184669) (not e!205450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33706 (= res!184669 (validMask!0 mask!2385))))

(assert (=> start!33706 e!205450))

(assert (=> start!33706 true))

(assert (=> start!33706 tp_is_empty!6885))

(assert (=> start!33706 tp!24302))

(declare-fun array_inv!6086 (array!17355) Bool)

(assert (=> start!33706 (and (array_inv!6086 _values!1525) e!205453)))

(declare-fun array_inv!6087 (array!17357) Bool)

(assert (=> start!33706 (array_inv!6087 _keys!1895)))

(declare-fun b!334706 () Bool)

(declare-fun res!184664 () Bool)

(assert (=> b!334706 (=> (not res!184664) (not e!205449))))

(assert (=> b!334706 (= res!184664 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14904 lt!159594)))))

(assert (= (and start!33706 res!184669) b!334703))

(assert (= (and b!334703 res!184663) b!334698))

(assert (= (and b!334698 res!184668) b!334704))

(assert (= (and b!334704 res!184667) b!334697))

(assert (= (and b!334697 res!184665) b!334699))

(assert (= (and b!334699 res!184666) b!334700))

(assert (= (and b!334700 res!184670) b!334706))

(assert (= (and b!334706 res!184664) b!334702))

(assert (= (and b!334696 condMapEmpty!11724) mapIsEmpty!11724))

(assert (= (and b!334696 (not condMapEmpty!11724)) mapNonEmpty!11724))

(assert (= (and mapNonEmpty!11724 ((_ is ValueCellFull!3099) mapValue!11724)) b!334701))

(assert (= (and b!334696 ((_ is ValueCellFull!3099) mapDefault!11724)) b!334705))

(assert (= start!33706 b!334696))

(declare-fun m!338749 () Bool)

(assert (=> b!334698 m!338749))

(declare-fun m!338751 () Bool)

(assert (=> b!334702 m!338751))

(declare-fun m!338753 () Bool)

(assert (=> b!334702 m!338753))

(declare-fun m!338755 () Bool)

(assert (=> b!334702 m!338755))

(declare-fun m!338757 () Bool)

(assert (=> b!334702 m!338757))

(assert (=> b!334702 m!338757))

(declare-fun m!338759 () Bool)

(assert (=> b!334702 m!338759))

(declare-fun m!338761 () Bool)

(assert (=> b!334706 m!338761))

(assert (=> b!334700 m!338757))

(declare-fun m!338763 () Bool)

(assert (=> b!334700 m!338763))

(declare-fun m!338765 () Bool)

(assert (=> mapNonEmpty!11724 m!338765))

(declare-fun m!338767 () Bool)

(assert (=> b!334697 m!338767))

(declare-fun m!338769 () Bool)

(assert (=> b!334704 m!338769))

(declare-fun m!338771 () Bool)

(assert (=> b!334699 m!338771))

(declare-fun m!338773 () Bool)

(assert (=> b!334699 m!338773))

(declare-fun m!338775 () Bool)

(assert (=> start!33706 m!338775))

(declare-fun m!338777 () Bool)

(assert (=> start!33706 m!338777))

(declare-fun m!338779 () Bool)

(assert (=> start!33706 m!338779))

(check-sat b_and!14131 (not b_next!6933) (not b!334699) (not start!33706) (not b!334700) (not b!334702) (not mapNonEmpty!11724) (not b!334704) (not b!334706) tp_is_empty!6885 (not b!334698) (not b!334697))
(check-sat b_and!14131 (not b_next!6933))
