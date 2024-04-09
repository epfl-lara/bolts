; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33894 () Bool)

(assert start!33894)

(declare-fun b_free!7065 () Bool)

(declare-fun b_next!7065 () Bool)

(assert (=> start!33894 (= b_free!7065 (not b_next!7065))))

(declare-fun tp!24707 () Bool)

(declare-fun b_and!14269 () Bool)

(assert (=> start!33894 (= tp!24707 b_and!14269)))

(declare-fun mapIsEmpty!11931 () Bool)

(declare-fun mapRes!11931 () Bool)

(assert (=> mapIsEmpty!11931 mapRes!11931))

(declare-fun b!337190 () Bool)

(declare-fun res!186322 () Bool)

(declare-fun e!206927 () Bool)

(assert (=> b!337190 (=> (not res!186322) (not e!206927))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10333 0))(
  ( (V!10334 (val!3553 Int)) )
))
(declare-fun zeroValue!1467 () V!10333)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3165 0))(
  ( (ValueCellFull!3165 (v!5714 V!10333)) (EmptyCell!3165) )
))
(declare-datatypes ((array!17607 0))(
  ( (array!17608 (arr!8328 (Array (_ BitVec 32) ValueCell!3165)) (size!8680 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17607)

(declare-datatypes ((array!17609 0))(
  ( (array!17610 (arr!8329 (Array (_ BitVec 32) (_ BitVec 64))) (size!8681 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17609)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10333)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((tuple2!5162 0))(
  ( (tuple2!5163 (_1!2591 (_ BitVec 64)) (_2!2591 V!10333)) )
))
(declare-datatypes ((List!4801 0))(
  ( (Nil!4798) (Cons!4797 (h!5653 tuple2!5162) (t!9903 List!4801)) )
))
(declare-datatypes ((ListLongMap!4089 0))(
  ( (ListLongMap!4090 (toList!2060 List!4801)) )
))
(declare-fun contains!2103 (ListLongMap!4089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1580 (array!17609 array!17607 (_ BitVec 32) (_ BitVec 32) V!10333 V!10333 (_ BitVec 32) Int) ListLongMap!4089)

(assert (=> b!337190 (= res!186322 (not (contains!2103 (getCurrentListMap!1580 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337191 () Bool)

(declare-fun e!206929 () Bool)

(declare-fun e!206926 () Bool)

(assert (=> b!337191 (= e!206929 (and e!206926 mapRes!11931))))

(declare-fun condMapEmpty!11931 () Bool)

(declare-fun mapDefault!11931 () ValueCell!3165)

(assert (=> b!337191 (= condMapEmpty!11931 (= (arr!8328 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3165)) mapDefault!11931)))))

(declare-fun b!337192 () Bool)

(declare-fun res!186320 () Bool)

(declare-fun e!206931 () Bool)

(assert (=> b!337192 (=> (not res!186320) (not e!206931))))

(declare-fun arrayContainsKey!0 (array!17609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337192 (= res!186320 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337193 () Bool)

(declare-fun res!186323 () Bool)

(assert (=> b!337193 (=> (not res!186323) (not e!206927))))

(assert (=> b!337193 (= res!186323 (and (= (size!8680 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8681 _keys!1895) (size!8680 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11931 () Bool)

(declare-fun tp!24708 () Bool)

(declare-fun e!206930 () Bool)

(assert (=> mapNonEmpty!11931 (= mapRes!11931 (and tp!24708 e!206930))))

(declare-fun mapKey!11931 () (_ BitVec 32))

(declare-fun mapValue!11931 () ValueCell!3165)

(declare-fun mapRest!11931 () (Array (_ BitVec 32) ValueCell!3165))

(assert (=> mapNonEmpty!11931 (= (arr!8328 _values!1525) (store mapRest!11931 mapKey!11931 mapValue!11931))))

(declare-fun b!337194 () Bool)

(declare-fun tp_is_empty!7017 () Bool)

(assert (=> b!337194 (= e!206926 tp_is_empty!7017)))

(declare-fun b!337195 () Bool)

(declare-fun res!186321 () Bool)

(assert (=> b!337195 (=> (not res!186321) (not e!206927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17609 (_ BitVec 32)) Bool)

(assert (=> b!337195 (= res!186321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337196 () Bool)

(declare-fun res!186316 () Bool)

(assert (=> b!337196 (=> (not res!186316) (not e!206927))))

(declare-datatypes ((List!4802 0))(
  ( (Nil!4799) (Cons!4798 (h!5654 (_ BitVec 64)) (t!9904 List!4802)) )
))
(declare-fun arrayNoDuplicates!0 (array!17609 (_ BitVec 32) List!4802) Bool)

(assert (=> b!337196 (= res!186316 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4799))))

(declare-fun b!337197 () Bool)

(assert (=> b!337197 (= e!206930 tp_is_empty!7017)))

(declare-fun b!337189 () Bool)

(assert (=> b!337189 (= e!206931 false)))

(declare-fun lt!160386 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17609 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337189 (= lt!160386 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!186318 () Bool)

(assert (=> start!33894 (=> (not res!186318) (not e!206927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33894 (= res!186318 (validMask!0 mask!2385))))

(assert (=> start!33894 e!206927))

(assert (=> start!33894 true))

(assert (=> start!33894 tp_is_empty!7017))

(assert (=> start!33894 tp!24707))

(declare-fun array_inv!6170 (array!17607) Bool)

(assert (=> start!33894 (and (array_inv!6170 _values!1525) e!206929)))

(declare-fun array_inv!6171 (array!17609) Bool)

(assert (=> start!33894 (array_inv!6171 _keys!1895)))

(declare-fun b!337198 () Bool)

(assert (=> b!337198 (= e!206927 e!206931)))

(declare-fun res!186319 () Bool)

(assert (=> b!337198 (=> (not res!186319) (not e!206931))))

(declare-datatypes ((SeekEntryResult!3225 0))(
  ( (MissingZero!3225 (index!15079 (_ BitVec 32))) (Found!3225 (index!15080 (_ BitVec 32))) (Intermediate!3225 (undefined!4037 Bool) (index!15081 (_ BitVec 32)) (x!33624 (_ BitVec 32))) (Undefined!3225) (MissingVacant!3225 (index!15082 (_ BitVec 32))) )
))
(declare-fun lt!160385 () SeekEntryResult!3225)

(get-info :version)

(assert (=> b!337198 (= res!186319 (and (not ((_ is Found!3225) lt!160385)) ((_ is MissingZero!3225) lt!160385)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17609 (_ BitVec 32)) SeekEntryResult!3225)

(assert (=> b!337198 (= lt!160385 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337199 () Bool)

(declare-fun res!186317 () Bool)

(assert (=> b!337199 (=> (not res!186317) (not e!206927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337199 (= res!186317 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33894 res!186318) b!337193))

(assert (= (and b!337193 res!186323) b!337195))

(assert (= (and b!337195 res!186321) b!337196))

(assert (= (and b!337196 res!186316) b!337199))

(assert (= (and b!337199 res!186317) b!337190))

(assert (= (and b!337190 res!186322) b!337198))

(assert (= (and b!337198 res!186319) b!337192))

(assert (= (and b!337192 res!186320) b!337189))

(assert (= (and b!337191 condMapEmpty!11931) mapIsEmpty!11931))

(assert (= (and b!337191 (not condMapEmpty!11931)) mapNonEmpty!11931))

(assert (= (and mapNonEmpty!11931 ((_ is ValueCellFull!3165) mapValue!11931)) b!337197))

(assert (= (and b!337191 ((_ is ValueCellFull!3165) mapDefault!11931)) b!337194))

(assert (= start!33894 b!337191))

(declare-fun m!340771 () Bool)

(assert (=> b!337195 m!340771))

(declare-fun m!340773 () Bool)

(assert (=> mapNonEmpty!11931 m!340773))

(declare-fun m!340775 () Bool)

(assert (=> b!337199 m!340775))

(declare-fun m!340777 () Bool)

(assert (=> b!337192 m!340777))

(declare-fun m!340779 () Bool)

(assert (=> b!337189 m!340779))

(declare-fun m!340781 () Bool)

(assert (=> start!33894 m!340781))

(declare-fun m!340783 () Bool)

(assert (=> start!33894 m!340783))

(declare-fun m!340785 () Bool)

(assert (=> start!33894 m!340785))

(declare-fun m!340787 () Bool)

(assert (=> b!337198 m!340787))

(declare-fun m!340789 () Bool)

(assert (=> b!337196 m!340789))

(declare-fun m!340791 () Bool)

(assert (=> b!337190 m!340791))

(assert (=> b!337190 m!340791))

(declare-fun m!340793 () Bool)

(assert (=> b!337190 m!340793))

(check-sat (not b!337199) (not b!337192) (not b!337198) b_and!14269 tp_is_empty!7017 (not b!337196) (not b_next!7065) (not start!33894) (not b!337195) (not b!337189) (not b!337190) (not mapNonEmpty!11931))
(check-sat b_and!14269 (not b_next!7065))
