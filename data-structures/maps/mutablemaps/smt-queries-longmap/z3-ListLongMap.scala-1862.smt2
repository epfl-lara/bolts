; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33616 () Bool)

(assert start!33616)

(declare-fun b_free!6843 () Bool)

(declare-fun b_next!6843 () Bool)

(assert (=> start!33616 (= b_free!6843 (not b_next!6843))))

(declare-fun tp!24032 () Bool)

(declare-fun b_and!14041 () Bool)

(assert (=> start!33616 (= tp!24032 b_and!14041)))

(declare-fun mapNonEmpty!11589 () Bool)

(declare-fun mapRes!11589 () Bool)

(declare-fun tp!24033 () Bool)

(declare-fun e!204660 () Bool)

(assert (=> mapNonEmpty!11589 (= mapRes!11589 (and tp!24033 e!204660))))

(declare-fun mapKey!11589 () (_ BitVec 32))

(declare-datatypes ((V!10037 0))(
  ( (V!10038 (val!3442 Int)) )
))
(declare-datatypes ((ValueCell!3054 0))(
  ( (ValueCellFull!3054 (v!5600 V!10037)) (EmptyCell!3054) )
))
(declare-fun mapRest!11589 () (Array (_ BitVec 32) ValueCell!3054))

(declare-fun mapValue!11589 () ValueCell!3054)

(declare-datatypes ((array!17187 0))(
  ( (array!17188 (arr!8121 (Array (_ BitVec 32) ValueCell!3054)) (size!8473 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17187)

(assert (=> mapNonEmpty!11589 (= (arr!8121 _values!1525) (store mapRest!11589 mapKey!11589 mapValue!11589))))

(declare-fun b!333273 () Bool)

(declare-fun res!183649 () Bool)

(declare-fun e!204657 () Bool)

(assert (=> b!333273 (=> (not res!183649) (not e!204657))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17189 0))(
  ( (array!17190 (arr!8122 (Array (_ BitVec 32) (_ BitVec 64))) (size!8474 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17189)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333273 (= res!183649 (and (= (size!8473 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8474 _keys!1895) (size!8473 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333274 () Bool)

(assert (=> b!333274 (= e!204657 false)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3152 0))(
  ( (MissingZero!3152 (index!14787 (_ BitVec 32))) (Found!3152 (index!14788 (_ BitVec 32))) (Intermediate!3152 (undefined!3964 Bool) (index!14789 (_ BitVec 32)) (x!33225 (_ BitVec 32))) (Undefined!3152) (MissingVacant!3152 (index!14790 (_ BitVec 32))) )
))
(declare-fun lt!159327 () SeekEntryResult!3152)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17189 (_ BitVec 32)) SeekEntryResult!3152)

(assert (=> b!333274 (= lt!159327 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333275 () Bool)

(declare-fun tp_is_empty!6795 () Bool)

(assert (=> b!333275 (= e!204660 tp_is_empty!6795)))

(declare-fun b!333276 () Bool)

(declare-fun res!183650 () Bool)

(assert (=> b!333276 (=> (not res!183650) (not e!204657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333276 (= res!183650 (validKeyInArray!0 k0!1348))))

(declare-fun b!333277 () Bool)

(declare-fun res!183648 () Bool)

(assert (=> b!333277 (=> (not res!183648) (not e!204657))))

(declare-datatypes ((List!4649 0))(
  ( (Nil!4646) (Cons!4645 (h!5501 (_ BitVec 64)) (t!9745 List!4649)) )
))
(declare-fun arrayNoDuplicates!0 (array!17189 (_ BitVec 32) List!4649) Bool)

(assert (=> b!333277 (= res!183648 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4646))))

(declare-fun b!333278 () Bool)

(declare-fun e!204656 () Bool)

(declare-fun e!204658 () Bool)

(assert (=> b!333278 (= e!204656 (and e!204658 mapRes!11589))))

(declare-fun condMapEmpty!11589 () Bool)

(declare-fun mapDefault!11589 () ValueCell!3054)

(assert (=> b!333278 (= condMapEmpty!11589 (= (arr!8121 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3054)) mapDefault!11589)))))

(declare-fun mapIsEmpty!11589 () Bool)

(assert (=> mapIsEmpty!11589 mapRes!11589))

(declare-fun b!333279 () Bool)

(declare-fun res!183646 () Bool)

(assert (=> b!333279 (=> (not res!183646) (not e!204657))))

(declare-fun zeroValue!1467 () V!10037)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10037)

(declare-datatypes ((tuple2!5008 0))(
  ( (tuple2!5009 (_1!2514 (_ BitVec 64)) (_2!2514 V!10037)) )
))
(declare-datatypes ((List!4650 0))(
  ( (Nil!4647) (Cons!4646 (h!5502 tuple2!5008) (t!9746 List!4650)) )
))
(declare-datatypes ((ListLongMap!3935 0))(
  ( (ListLongMap!3936 (toList!1983 List!4650)) )
))
(declare-fun contains!2023 (ListLongMap!3935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1506 (array!17189 array!17187 (_ BitVec 32) (_ BitVec 32) V!10037 V!10037 (_ BitVec 32) Int) ListLongMap!3935)

(assert (=> b!333279 (= res!183646 (not (contains!2023 (getCurrentListMap!1506 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!183645 () Bool)

(assert (=> start!33616 (=> (not res!183645) (not e!204657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33616 (= res!183645 (validMask!0 mask!2385))))

(assert (=> start!33616 e!204657))

(assert (=> start!33616 true))

(assert (=> start!33616 tp_is_empty!6795))

(assert (=> start!33616 tp!24032))

(declare-fun array_inv!6038 (array!17187) Bool)

(assert (=> start!33616 (and (array_inv!6038 _values!1525) e!204656)))

(declare-fun array_inv!6039 (array!17189) Bool)

(assert (=> start!33616 (array_inv!6039 _keys!1895)))

(declare-fun b!333280 () Bool)

(declare-fun res!183647 () Bool)

(assert (=> b!333280 (=> (not res!183647) (not e!204657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17189 (_ BitVec 32)) Bool)

(assert (=> b!333280 (= res!183647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333281 () Bool)

(assert (=> b!333281 (= e!204658 tp_is_empty!6795)))

(assert (= (and start!33616 res!183645) b!333273))

(assert (= (and b!333273 res!183649) b!333280))

(assert (= (and b!333280 res!183647) b!333277))

(assert (= (and b!333277 res!183648) b!333276))

(assert (= (and b!333276 res!183650) b!333279))

(assert (= (and b!333279 res!183646) b!333274))

(assert (= (and b!333278 condMapEmpty!11589) mapIsEmpty!11589))

(assert (= (and b!333278 (not condMapEmpty!11589)) mapNonEmpty!11589))

(get-info :version)

(assert (= (and mapNonEmpty!11589 ((_ is ValueCellFull!3054) mapValue!11589)) b!333275))

(assert (= (and b!333278 ((_ is ValueCellFull!3054) mapDefault!11589)) b!333281))

(assert (= start!33616 b!333278))

(declare-fun m!337561 () Bool)

(assert (=> b!333274 m!337561))

(declare-fun m!337563 () Bool)

(assert (=> b!333279 m!337563))

(assert (=> b!333279 m!337563))

(declare-fun m!337565 () Bool)

(assert (=> b!333279 m!337565))

(declare-fun m!337567 () Bool)

(assert (=> b!333276 m!337567))

(declare-fun m!337569 () Bool)

(assert (=> mapNonEmpty!11589 m!337569))

(declare-fun m!337571 () Bool)

(assert (=> b!333277 m!337571))

(declare-fun m!337573 () Bool)

(assert (=> start!33616 m!337573))

(declare-fun m!337575 () Bool)

(assert (=> start!33616 m!337575))

(declare-fun m!337577 () Bool)

(assert (=> start!33616 m!337577))

(declare-fun m!337579 () Bool)

(assert (=> b!333280 m!337579))

(check-sat (not b!333280) (not b!333279) (not b_next!6843) (not b!333277) (not b!333276) (not start!33616) (not b!333274) b_and!14041 (not mapNonEmpty!11589) tp_is_empty!6795)
(check-sat b_and!14041 (not b_next!6843))
