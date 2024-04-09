; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34206 () Bool)

(assert start!34206)

(declare-fun b_free!7221 () Bool)

(declare-fun b_next!7221 () Bool)

(assert (=> start!34206 (= b_free!7221 (not b_next!7221))))

(declare-fun tp!25197 () Bool)

(declare-fun b_and!14439 () Bool)

(assert (=> start!34206 (= tp!25197 b_and!14439)))

(declare-fun b!340787 () Bool)

(declare-fun res!188385 () Bool)

(declare-fun e!209041 () Bool)

(assert (=> b!340787 (=> (not res!188385) (not e!209041))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10541 0))(
  ( (V!10542 (val!3631 Int)) )
))
(declare-fun zeroValue!1467 () V!10541)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3243 0))(
  ( (ValueCellFull!3243 (v!5799 V!10541)) (EmptyCell!3243) )
))
(declare-datatypes ((array!17911 0))(
  ( (array!17912 (arr!8473 (Array (_ BitVec 32) ValueCell!3243)) (size!8825 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17911)

(declare-datatypes ((array!17913 0))(
  ( (array!17914 (arr!8474 (Array (_ BitVec 32) (_ BitVec 64))) (size!8826 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17913)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10541)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((tuple2!5250 0))(
  ( (tuple2!5251 (_1!2635 (_ BitVec 64)) (_2!2635 V!10541)) )
))
(declare-datatypes ((List!4894 0))(
  ( (Nil!4891) (Cons!4890 (h!5746 tuple2!5250) (t!10010 List!4894)) )
))
(declare-datatypes ((ListLongMap!4177 0))(
  ( (ListLongMap!4178 (toList!2104 List!4894)) )
))
(declare-fun contains!2154 (ListLongMap!4177 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1624 (array!17913 array!17911 (_ BitVec 32) (_ BitVec 32) V!10541 V!10541 (_ BitVec 32) Int) ListLongMap!4177)

(assert (=> b!340787 (= res!188385 (not (contains!2154 (getCurrentListMap!1624 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340788 () Bool)

(declare-fun res!188380 () Bool)

(assert (=> b!340788 (=> (not res!188380) (not e!209041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340788 (= res!188380 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12186 () Bool)

(declare-fun mapRes!12186 () Bool)

(declare-fun tp!25196 () Bool)

(declare-fun e!209038 () Bool)

(assert (=> mapNonEmpty!12186 (= mapRes!12186 (and tp!25196 e!209038))))

(declare-fun mapRest!12186 () (Array (_ BitVec 32) ValueCell!3243))

(declare-fun mapValue!12186 () ValueCell!3243)

(declare-fun mapKey!12186 () (_ BitVec 32))

(assert (=> mapNonEmpty!12186 (= (arr!8473 _values!1525) (store mapRest!12186 mapKey!12186 mapValue!12186))))

(declare-fun b!340789 () Bool)

(declare-fun res!188387 () Bool)

(assert (=> b!340789 (=> (not res!188387) (not e!209041))))

(declare-datatypes ((List!4895 0))(
  ( (Nil!4892) (Cons!4891 (h!5747 (_ BitVec 64)) (t!10011 List!4895)) )
))
(declare-fun arrayNoDuplicates!0 (array!17913 (_ BitVec 32) List!4895) Bool)

(assert (=> b!340789 (= res!188387 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4892))))

(declare-fun b!340790 () Bool)

(declare-fun res!188386 () Bool)

(declare-fun e!209043 () Bool)

(assert (=> b!340790 (=> (not res!188386) (not e!209043))))

(declare-fun arrayContainsKey!0 (array!17913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340790 (= res!188386 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12186 () Bool)

(assert (=> mapIsEmpty!12186 mapRes!12186))

(declare-fun b!340791 () Bool)

(declare-fun res!188381 () Bool)

(assert (=> b!340791 (=> (not res!188381) (not e!209041))))

(assert (=> b!340791 (= res!188381 (and (= (size!8825 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8826 _keys!1895) (size!8825 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!188382 () Bool)

(assert (=> start!34206 (=> (not res!188382) (not e!209041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34206 (= res!188382 (validMask!0 mask!2385))))

(assert (=> start!34206 e!209041))

(assert (=> start!34206 true))

(declare-fun tp_is_empty!7173 () Bool)

(assert (=> start!34206 tp_is_empty!7173))

(assert (=> start!34206 tp!25197))

(declare-fun e!209042 () Bool)

(declare-fun array_inv!6266 (array!17911) Bool)

(assert (=> start!34206 (and (array_inv!6266 _values!1525) e!209042)))

(declare-fun array_inv!6267 (array!17913) Bool)

(assert (=> start!34206 (array_inv!6267 _keys!1895)))

(declare-fun b!340792 () Bool)

(assert (=> b!340792 (= e!209043 false)))

(declare-fun lt!161649 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17913 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340792 (= lt!161649 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340793 () Bool)

(declare-fun e!209039 () Bool)

(assert (=> b!340793 (= e!209042 (and e!209039 mapRes!12186))))

(declare-fun condMapEmpty!12186 () Bool)

(declare-fun mapDefault!12186 () ValueCell!3243)

(assert (=> b!340793 (= condMapEmpty!12186 (= (arr!8473 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3243)) mapDefault!12186)))))

(declare-fun b!340794 () Bool)

(assert (=> b!340794 (= e!209039 tp_is_empty!7173)))

(declare-fun b!340795 () Bool)

(assert (=> b!340795 (= e!209038 tp_is_empty!7173)))

(declare-fun b!340796 () Bool)

(assert (=> b!340796 (= e!209041 e!209043)))

(declare-fun res!188383 () Bool)

(assert (=> b!340796 (=> (not res!188383) (not e!209043))))

(declare-datatypes ((SeekEntryResult!3271 0))(
  ( (MissingZero!3271 (index!15263 (_ BitVec 32))) (Found!3271 (index!15264 (_ BitVec 32))) (Intermediate!3271 (undefined!4083 Bool) (index!15265 (_ BitVec 32)) (x!33948 (_ BitVec 32))) (Undefined!3271) (MissingVacant!3271 (index!15266 (_ BitVec 32))) )
))
(declare-fun lt!161648 () SeekEntryResult!3271)

(get-info :version)

(assert (=> b!340796 (= res!188383 (and (not ((_ is Found!3271) lt!161648)) (not ((_ is MissingZero!3271) lt!161648)) ((_ is MissingVacant!3271) lt!161648)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17913 (_ BitVec 32)) SeekEntryResult!3271)

(assert (=> b!340796 (= lt!161648 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340797 () Bool)

(declare-fun res!188384 () Bool)

(assert (=> b!340797 (=> (not res!188384) (not e!209041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17913 (_ BitVec 32)) Bool)

(assert (=> b!340797 (= res!188384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34206 res!188382) b!340791))

(assert (= (and b!340791 res!188381) b!340797))

(assert (= (and b!340797 res!188384) b!340789))

(assert (= (and b!340789 res!188387) b!340788))

(assert (= (and b!340788 res!188380) b!340787))

(assert (= (and b!340787 res!188385) b!340796))

(assert (= (and b!340796 res!188383) b!340790))

(assert (= (and b!340790 res!188386) b!340792))

(assert (= (and b!340793 condMapEmpty!12186) mapIsEmpty!12186))

(assert (= (and b!340793 (not condMapEmpty!12186)) mapNonEmpty!12186))

(assert (= (and mapNonEmpty!12186 ((_ is ValueCellFull!3243) mapValue!12186)) b!340795))

(assert (= (and b!340793 ((_ is ValueCellFull!3243) mapDefault!12186)) b!340794))

(assert (= start!34206 b!340793))

(declare-fun m!343383 () Bool)

(assert (=> b!340787 m!343383))

(assert (=> b!340787 m!343383))

(declare-fun m!343385 () Bool)

(assert (=> b!340787 m!343385))

(declare-fun m!343387 () Bool)

(assert (=> start!34206 m!343387))

(declare-fun m!343389 () Bool)

(assert (=> start!34206 m!343389))

(declare-fun m!343391 () Bool)

(assert (=> start!34206 m!343391))

(declare-fun m!343393 () Bool)

(assert (=> mapNonEmpty!12186 m!343393))

(declare-fun m!343395 () Bool)

(assert (=> b!340797 m!343395))

(declare-fun m!343397 () Bool)

(assert (=> b!340788 m!343397))

(declare-fun m!343399 () Bool)

(assert (=> b!340796 m!343399))

(declare-fun m!343401 () Bool)

(assert (=> b!340790 m!343401))

(declare-fun m!343403 () Bool)

(assert (=> b!340789 m!343403))

(declare-fun m!343405 () Bool)

(assert (=> b!340792 m!343405))

(check-sat (not b_next!7221) (not b!340788) (not b!340796) (not mapNonEmpty!12186) (not b!340790) b_and!14439 (not b!340789) (not start!34206) (not b!340792) (not b!340787) tp_is_empty!7173 (not b!340797))
(check-sat b_and!14439 (not b_next!7221))
