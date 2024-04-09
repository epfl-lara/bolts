; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33622 () Bool)

(assert start!33622)

(declare-fun b_free!6849 () Bool)

(declare-fun b_next!6849 () Bool)

(assert (=> start!33622 (= b_free!6849 (not b_next!6849))))

(declare-fun tp!24050 () Bool)

(declare-fun b_and!14047 () Bool)

(assert (=> start!33622 (= tp!24050 b_and!14047)))

(declare-fun b!333354 () Bool)

(declare-fun res!183702 () Bool)

(declare-fun e!204705 () Bool)

(assert (=> b!333354 (=> (not res!183702) (not e!204705))))

(declare-datatypes ((array!17199 0))(
  ( (array!17200 (arr!8127 (Array (_ BitVec 32) (_ BitVec 64))) (size!8479 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17199)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17199 (_ BitVec 32)) Bool)

(assert (=> b!333354 (= res!183702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333355 () Bool)

(assert (=> b!333355 (= e!204705 false)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3154 0))(
  ( (MissingZero!3154 (index!14795 (_ BitVec 32))) (Found!3154 (index!14796 (_ BitVec 32))) (Intermediate!3154 (undefined!3966 Bool) (index!14797 (_ BitVec 32)) (x!33235 (_ BitVec 32))) (Undefined!3154) (MissingVacant!3154 (index!14798 (_ BitVec 32))) )
))
(declare-fun lt!159336 () SeekEntryResult!3154)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17199 (_ BitVec 32)) SeekEntryResult!3154)

(assert (=> b!333355 (= lt!159336 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333356 () Bool)

(declare-fun res!183704 () Bool)

(assert (=> b!333356 (=> (not res!183704) (not e!204705))))

(declare-datatypes ((V!10045 0))(
  ( (V!10046 (val!3445 Int)) )
))
(declare-datatypes ((ValueCell!3057 0))(
  ( (ValueCellFull!3057 (v!5603 V!10045)) (EmptyCell!3057) )
))
(declare-datatypes ((array!17201 0))(
  ( (array!17202 (arr!8128 (Array (_ BitVec 32) ValueCell!3057)) (size!8480 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17201)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333356 (= res!183704 (and (= (size!8480 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8479 _keys!1895) (size!8480 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11598 () Bool)

(declare-fun mapRes!11598 () Bool)

(assert (=> mapIsEmpty!11598 mapRes!11598))

(declare-fun b!333357 () Bool)

(declare-fun e!204702 () Bool)

(declare-fun tp_is_empty!6801 () Bool)

(assert (=> b!333357 (= e!204702 tp_is_empty!6801)))

(declare-fun b!333358 () Bool)

(declare-fun res!183703 () Bool)

(assert (=> b!333358 (=> (not res!183703) (not e!204705))))

(declare-fun zeroValue!1467 () V!10045)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10045)

(declare-datatypes ((tuple2!5010 0))(
  ( (tuple2!5011 (_1!2515 (_ BitVec 64)) (_2!2515 V!10045)) )
))
(declare-datatypes ((List!4652 0))(
  ( (Nil!4649) (Cons!4648 (h!5504 tuple2!5010) (t!9748 List!4652)) )
))
(declare-datatypes ((ListLongMap!3937 0))(
  ( (ListLongMap!3938 (toList!1984 List!4652)) )
))
(declare-fun contains!2024 (ListLongMap!3937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1507 (array!17199 array!17201 (_ BitVec 32) (_ BitVec 32) V!10045 V!10045 (_ BitVec 32) Int) ListLongMap!3937)

(assert (=> b!333358 (= res!183703 (not (contains!2024 (getCurrentListMap!1507 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!333359 () Bool)

(declare-fun res!183701 () Bool)

(assert (=> b!333359 (=> (not res!183701) (not e!204705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333359 (= res!183701 (validKeyInArray!0 k0!1348))))

(declare-fun b!333360 () Bool)

(declare-fun res!183699 () Bool)

(assert (=> b!333360 (=> (not res!183699) (not e!204705))))

(declare-datatypes ((List!4653 0))(
  ( (Nil!4650) (Cons!4649 (h!5505 (_ BitVec 64)) (t!9749 List!4653)) )
))
(declare-fun arrayNoDuplicates!0 (array!17199 (_ BitVec 32) List!4653) Bool)

(assert (=> b!333360 (= res!183699 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4650))))

(declare-fun b!333361 () Bool)

(declare-fun e!204703 () Bool)

(assert (=> b!333361 (= e!204703 tp_is_empty!6801)))

(declare-fun b!333362 () Bool)

(declare-fun e!204704 () Bool)

(assert (=> b!333362 (= e!204704 (and e!204703 mapRes!11598))))

(declare-fun condMapEmpty!11598 () Bool)

(declare-fun mapDefault!11598 () ValueCell!3057)

(assert (=> b!333362 (= condMapEmpty!11598 (= (arr!8128 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3057)) mapDefault!11598)))))

(declare-fun mapNonEmpty!11598 () Bool)

(declare-fun tp!24051 () Bool)

(assert (=> mapNonEmpty!11598 (= mapRes!11598 (and tp!24051 e!204702))))

(declare-fun mapValue!11598 () ValueCell!3057)

(declare-fun mapKey!11598 () (_ BitVec 32))

(declare-fun mapRest!11598 () (Array (_ BitVec 32) ValueCell!3057))

(assert (=> mapNonEmpty!11598 (= (arr!8128 _values!1525) (store mapRest!11598 mapKey!11598 mapValue!11598))))

(declare-fun res!183700 () Bool)

(assert (=> start!33622 (=> (not res!183700) (not e!204705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33622 (= res!183700 (validMask!0 mask!2385))))

(assert (=> start!33622 e!204705))

(assert (=> start!33622 true))

(assert (=> start!33622 tp_is_empty!6801))

(assert (=> start!33622 tp!24050))

(declare-fun array_inv!6042 (array!17201) Bool)

(assert (=> start!33622 (and (array_inv!6042 _values!1525) e!204704)))

(declare-fun array_inv!6043 (array!17199) Bool)

(assert (=> start!33622 (array_inv!6043 _keys!1895)))

(assert (= (and start!33622 res!183700) b!333356))

(assert (= (and b!333356 res!183704) b!333354))

(assert (= (and b!333354 res!183702) b!333360))

(assert (= (and b!333360 res!183699) b!333359))

(assert (= (and b!333359 res!183701) b!333358))

(assert (= (and b!333358 res!183703) b!333355))

(assert (= (and b!333362 condMapEmpty!11598) mapIsEmpty!11598))

(assert (= (and b!333362 (not condMapEmpty!11598)) mapNonEmpty!11598))

(get-info :version)

(assert (= (and mapNonEmpty!11598 ((_ is ValueCellFull!3057) mapValue!11598)) b!333357))

(assert (= (and b!333362 ((_ is ValueCellFull!3057) mapDefault!11598)) b!333361))

(assert (= start!33622 b!333362))

(declare-fun m!337621 () Bool)

(assert (=> b!333359 m!337621))

(declare-fun m!337623 () Bool)

(assert (=> b!333358 m!337623))

(assert (=> b!333358 m!337623))

(declare-fun m!337625 () Bool)

(assert (=> b!333358 m!337625))

(declare-fun m!337627 () Bool)

(assert (=> b!333355 m!337627))

(declare-fun m!337629 () Bool)

(assert (=> b!333354 m!337629))

(declare-fun m!337631 () Bool)

(assert (=> mapNonEmpty!11598 m!337631))

(declare-fun m!337633 () Bool)

(assert (=> start!33622 m!337633))

(declare-fun m!337635 () Bool)

(assert (=> start!33622 m!337635))

(declare-fun m!337637 () Bool)

(assert (=> start!33622 m!337637))

(declare-fun m!337639 () Bool)

(assert (=> b!333360 m!337639))

(check-sat (not b!333358) (not mapNonEmpty!11598) b_and!14047 tp_is_empty!6801 (not b_next!6849) (not start!33622) (not b!333354) (not b!333355) (not b!333360) (not b!333359))
(check-sat b_and!14047 (not b_next!6849))
