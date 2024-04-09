; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34486 () Bool)

(assert start!34486)

(declare-fun b_free!7401 () Bool)

(declare-fun b_next!7401 () Bool)

(assert (=> start!34486 (= b_free!7401 (not b_next!7401))))

(declare-fun tp!25748 () Bool)

(declare-fun b_and!14627 () Bool)

(assert (=> start!34486 (= tp!25748 b_and!14627)))

(declare-fun b!344258 () Bool)

(declare-fun e!211053 () Bool)

(declare-fun tp_is_empty!7353 () Bool)

(assert (=> b!344258 (= e!211053 tp_is_empty!7353)))

(declare-fun b!344259 () Bool)

(declare-fun e!211052 () Bool)

(assert (=> b!344259 (= e!211052 tp_is_empty!7353)))

(declare-fun res!190456 () Bool)

(declare-fun e!211049 () Bool)

(assert (=> start!34486 (=> (not res!190456) (not e!211049))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34486 (= res!190456 (validMask!0 mask!2385))))

(assert (=> start!34486 e!211049))

(assert (=> start!34486 true))

(assert (=> start!34486 tp_is_empty!7353))

(assert (=> start!34486 tp!25748))

(declare-datatypes ((V!10781 0))(
  ( (V!10782 (val!3721 Int)) )
))
(declare-datatypes ((ValueCell!3333 0))(
  ( (ValueCellFull!3333 (v!5893 V!10781)) (EmptyCell!3333) )
))
(declare-datatypes ((array!18263 0))(
  ( (array!18264 (arr!8645 (Array (_ BitVec 32) ValueCell!3333)) (size!8997 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18263)

(declare-fun e!211050 () Bool)

(declare-fun array_inv!6396 (array!18263) Bool)

(assert (=> start!34486 (and (array_inv!6396 _values!1525) e!211050)))

(declare-datatypes ((array!18265 0))(
  ( (array!18266 (arr!8646 (Array (_ BitVec 32) (_ BitVec 64))) (size!8998 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18265)

(declare-fun array_inv!6397 (array!18265) Bool)

(assert (=> start!34486 (array_inv!6397 _keys!1895)))

(declare-fun mapIsEmpty!12468 () Bool)

(declare-fun mapRes!12468 () Bool)

(assert (=> mapIsEmpty!12468 mapRes!12468))

(declare-fun mapNonEmpty!12468 () Bool)

(declare-fun tp!25749 () Bool)

(assert (=> mapNonEmpty!12468 (= mapRes!12468 (and tp!25749 e!211053))))

(declare-fun mapKey!12468 () (_ BitVec 32))

(declare-fun mapValue!12468 () ValueCell!3333)

(declare-fun mapRest!12468 () (Array (_ BitVec 32) ValueCell!3333))

(assert (=> mapNonEmpty!12468 (= (arr!8645 _values!1525) (store mapRest!12468 mapKey!12468 mapValue!12468))))

(declare-fun b!344260 () Bool)

(declare-fun res!190458 () Bool)

(assert (=> b!344260 (=> (not res!190458) (not e!211049))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10781)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10781)

(declare-datatypes ((tuple2!5376 0))(
  ( (tuple2!5377 (_1!2698 (_ BitVec 64)) (_2!2698 V!10781)) )
))
(declare-datatypes ((List!5021 0))(
  ( (Nil!5018) (Cons!5017 (h!5873 tuple2!5376) (t!10145 List!5021)) )
))
(declare-datatypes ((ListLongMap!4303 0))(
  ( (ListLongMap!4304 (toList!2167 List!5021)) )
))
(declare-fun contains!2221 (ListLongMap!4303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1687 (array!18265 array!18263 (_ BitVec 32) (_ BitVec 32) V!10781 V!10781 (_ BitVec 32) Int) ListLongMap!4303)

(assert (=> b!344260 (= res!190458 (not (contains!2221 (getCurrentListMap!1687 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344261 () Bool)

(declare-fun res!190457 () Bool)

(assert (=> b!344261 (=> (not res!190457) (not e!211049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344261 (= res!190457 (validKeyInArray!0 k0!1348))))

(declare-fun b!344262 () Bool)

(declare-fun res!190459 () Bool)

(assert (=> b!344262 (=> (not res!190459) (not e!211049))))

(declare-datatypes ((List!5022 0))(
  ( (Nil!5019) (Cons!5018 (h!5874 (_ BitVec 64)) (t!10146 List!5022)) )
))
(declare-fun arrayNoDuplicates!0 (array!18265 (_ BitVec 32) List!5022) Bool)

(assert (=> b!344262 (= res!190459 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5019))))

(declare-fun b!344263 () Bool)

(assert (=> b!344263 (= e!211049 false)))

(declare-datatypes ((SeekEntryResult!3334 0))(
  ( (MissingZero!3334 (index!15515 (_ BitVec 32))) (Found!3334 (index!15516 (_ BitVec 32))) (Intermediate!3334 (undefined!4146 Bool) (index!15517 (_ BitVec 32)) (x!34291 (_ BitVec 32))) (Undefined!3334) (MissingVacant!3334 (index!15518 (_ BitVec 32))) )
))
(declare-fun lt!162636 () SeekEntryResult!3334)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18265 (_ BitVec 32)) SeekEntryResult!3334)

(assert (=> b!344263 (= lt!162636 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!344264 () Bool)

(declare-fun res!190460 () Bool)

(assert (=> b!344264 (=> (not res!190460) (not e!211049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18265 (_ BitVec 32)) Bool)

(assert (=> b!344264 (= res!190460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344265 () Bool)

(assert (=> b!344265 (= e!211050 (and e!211052 mapRes!12468))))

(declare-fun condMapEmpty!12468 () Bool)

(declare-fun mapDefault!12468 () ValueCell!3333)

(assert (=> b!344265 (= condMapEmpty!12468 (= (arr!8645 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3333)) mapDefault!12468)))))

(declare-fun b!344266 () Bool)

(declare-fun res!190455 () Bool)

(assert (=> b!344266 (=> (not res!190455) (not e!211049))))

(assert (=> b!344266 (= res!190455 (and (= (size!8997 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8998 _keys!1895) (size!8997 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34486 res!190456) b!344266))

(assert (= (and b!344266 res!190455) b!344264))

(assert (= (and b!344264 res!190460) b!344262))

(assert (= (and b!344262 res!190459) b!344261))

(assert (= (and b!344261 res!190457) b!344260))

(assert (= (and b!344260 res!190458) b!344263))

(assert (= (and b!344265 condMapEmpty!12468) mapIsEmpty!12468))

(assert (= (and b!344265 (not condMapEmpty!12468)) mapNonEmpty!12468))

(get-info :version)

(assert (= (and mapNonEmpty!12468 ((_ is ValueCellFull!3333) mapValue!12468)) b!344258))

(assert (= (and b!344265 ((_ is ValueCellFull!3333) mapDefault!12468)) b!344259))

(assert (= start!34486 b!344265))

(declare-fun m!345917 () Bool)

(assert (=> start!34486 m!345917))

(declare-fun m!345919 () Bool)

(assert (=> start!34486 m!345919))

(declare-fun m!345921 () Bool)

(assert (=> start!34486 m!345921))

(declare-fun m!345923 () Bool)

(assert (=> b!344262 m!345923))

(declare-fun m!345925 () Bool)

(assert (=> mapNonEmpty!12468 m!345925))

(declare-fun m!345927 () Bool)

(assert (=> b!344261 m!345927))

(declare-fun m!345929 () Bool)

(assert (=> b!344260 m!345929))

(assert (=> b!344260 m!345929))

(declare-fun m!345931 () Bool)

(assert (=> b!344260 m!345931))

(declare-fun m!345933 () Bool)

(assert (=> b!344264 m!345933))

(declare-fun m!345935 () Bool)

(assert (=> b!344263 m!345935))

(check-sat (not b!344261) tp_is_empty!7353 b_and!14627 (not start!34486) (not mapNonEmpty!12468) (not b!344263) (not b!344262) (not b!344264) (not b_next!7401) (not b!344260))
(check-sat b_and!14627 (not b_next!7401))
