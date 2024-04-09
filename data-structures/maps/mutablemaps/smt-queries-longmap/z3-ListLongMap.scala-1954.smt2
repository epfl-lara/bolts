; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34480 () Bool)

(assert start!34480)

(declare-fun b_free!7395 () Bool)

(declare-fun b_next!7395 () Bool)

(assert (=> start!34480 (= b_free!7395 (not b_next!7395))))

(declare-fun tp!25731 () Bool)

(declare-fun b_and!14621 () Bool)

(assert (=> start!34480 (= tp!25731 b_and!14621)))

(declare-fun b!344177 () Bool)

(declare-fun res!190402 () Bool)

(declare-fun e!211005 () Bool)

(assert (=> b!344177 (=> (not res!190402) (not e!211005))))

(declare-datatypes ((array!18251 0))(
  ( (array!18252 (arr!8639 (Array (_ BitVec 32) (_ BitVec 64))) (size!8991 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18251)

(declare-datatypes ((List!5015 0))(
  ( (Nil!5012) (Cons!5011 (h!5867 (_ BitVec 64)) (t!10139 List!5015)) )
))
(declare-fun arrayNoDuplicates!0 (array!18251 (_ BitVec 32) List!5015) Bool)

(assert (=> b!344177 (= res!190402 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5012))))

(declare-fun b!344178 () Bool)

(declare-fun e!211008 () Bool)

(declare-fun tp_is_empty!7347 () Bool)

(assert (=> b!344178 (= e!211008 tp_is_empty!7347)))

(declare-fun b!344179 () Bool)

(declare-fun res!190404 () Bool)

(assert (=> b!344179 (=> (not res!190404) (not e!211005))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18251 (_ BitVec 32)) Bool)

(assert (=> b!344179 (= res!190404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12459 () Bool)

(declare-fun mapRes!12459 () Bool)

(declare-fun tp!25730 () Bool)

(declare-fun e!211004 () Bool)

(assert (=> mapNonEmpty!12459 (= mapRes!12459 (and tp!25730 e!211004))))

(declare-datatypes ((V!10773 0))(
  ( (V!10774 (val!3718 Int)) )
))
(declare-datatypes ((ValueCell!3330 0))(
  ( (ValueCellFull!3330 (v!5890 V!10773)) (EmptyCell!3330) )
))
(declare-fun mapValue!12459 () ValueCell!3330)

(declare-fun mapKey!12459 () (_ BitVec 32))

(declare-fun mapRest!12459 () (Array (_ BitVec 32) ValueCell!3330))

(declare-datatypes ((array!18253 0))(
  ( (array!18254 (arr!8640 (Array (_ BitVec 32) ValueCell!3330)) (size!8992 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18253)

(assert (=> mapNonEmpty!12459 (= (arr!8640 _values!1525) (store mapRest!12459 mapKey!12459 mapValue!12459))))

(declare-fun b!344180 () Bool)

(declare-fun res!190405 () Bool)

(assert (=> b!344180 (=> (not res!190405) (not e!211005))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344180 (= res!190405 (validKeyInArray!0 k0!1348))))

(declare-fun b!344181 () Bool)

(declare-fun res!190401 () Bool)

(assert (=> b!344181 (=> (not res!190401) (not e!211005))))

(declare-fun zeroValue!1467 () V!10773)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10773)

(declare-datatypes ((tuple2!5370 0))(
  ( (tuple2!5371 (_1!2695 (_ BitVec 64)) (_2!2695 V!10773)) )
))
(declare-datatypes ((List!5016 0))(
  ( (Nil!5013) (Cons!5012 (h!5868 tuple2!5370) (t!10140 List!5016)) )
))
(declare-datatypes ((ListLongMap!4297 0))(
  ( (ListLongMap!4298 (toList!2164 List!5016)) )
))
(declare-fun contains!2218 (ListLongMap!4297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1684 (array!18251 array!18253 (_ BitVec 32) (_ BitVec 32) V!10773 V!10773 (_ BitVec 32) Int) ListLongMap!4297)

(assert (=> b!344181 (= res!190401 (not (contains!2218 (getCurrentListMap!1684 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!190403 () Bool)

(assert (=> start!34480 (=> (not res!190403) (not e!211005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34480 (= res!190403 (validMask!0 mask!2385))))

(assert (=> start!34480 e!211005))

(assert (=> start!34480 true))

(assert (=> start!34480 tp_is_empty!7347))

(assert (=> start!34480 tp!25731))

(declare-fun e!211007 () Bool)

(declare-fun array_inv!6390 (array!18253) Bool)

(assert (=> start!34480 (and (array_inv!6390 _values!1525) e!211007)))

(declare-fun array_inv!6391 (array!18251) Bool)

(assert (=> start!34480 (array_inv!6391 _keys!1895)))

(declare-fun b!344182 () Bool)

(assert (=> b!344182 (= e!211004 tp_is_empty!7347)))

(declare-fun mapIsEmpty!12459 () Bool)

(assert (=> mapIsEmpty!12459 mapRes!12459))

(declare-fun b!344183 () Bool)

(declare-fun res!190406 () Bool)

(assert (=> b!344183 (=> (not res!190406) (not e!211005))))

(assert (=> b!344183 (= res!190406 (and (= (size!8992 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8991 _keys!1895) (size!8992 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344184 () Bool)

(assert (=> b!344184 (= e!211005 false)))

(declare-datatypes ((SeekEntryResult!3332 0))(
  ( (MissingZero!3332 (index!15507 (_ BitVec 32))) (Found!3332 (index!15508 (_ BitVec 32))) (Intermediate!3332 (undefined!4144 Bool) (index!15509 (_ BitVec 32)) (x!34281 (_ BitVec 32))) (Undefined!3332) (MissingVacant!3332 (index!15510 (_ BitVec 32))) )
))
(declare-fun lt!162627 () SeekEntryResult!3332)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18251 (_ BitVec 32)) SeekEntryResult!3332)

(assert (=> b!344184 (= lt!162627 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!344185 () Bool)

(assert (=> b!344185 (= e!211007 (and e!211008 mapRes!12459))))

(declare-fun condMapEmpty!12459 () Bool)

(declare-fun mapDefault!12459 () ValueCell!3330)

(assert (=> b!344185 (= condMapEmpty!12459 (= (arr!8640 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3330)) mapDefault!12459)))))

(assert (= (and start!34480 res!190403) b!344183))

(assert (= (and b!344183 res!190406) b!344179))

(assert (= (and b!344179 res!190404) b!344177))

(assert (= (and b!344177 res!190402) b!344180))

(assert (= (and b!344180 res!190405) b!344181))

(assert (= (and b!344181 res!190401) b!344184))

(assert (= (and b!344185 condMapEmpty!12459) mapIsEmpty!12459))

(assert (= (and b!344185 (not condMapEmpty!12459)) mapNonEmpty!12459))

(get-info :version)

(assert (= (and mapNonEmpty!12459 ((_ is ValueCellFull!3330) mapValue!12459)) b!344182))

(assert (= (and b!344185 ((_ is ValueCellFull!3330) mapDefault!12459)) b!344178))

(assert (= start!34480 b!344185))

(declare-fun m!345857 () Bool)

(assert (=> mapNonEmpty!12459 m!345857))

(declare-fun m!345859 () Bool)

(assert (=> start!34480 m!345859))

(declare-fun m!345861 () Bool)

(assert (=> start!34480 m!345861))

(declare-fun m!345863 () Bool)

(assert (=> start!34480 m!345863))

(declare-fun m!345865 () Bool)

(assert (=> b!344181 m!345865))

(assert (=> b!344181 m!345865))

(declare-fun m!345867 () Bool)

(assert (=> b!344181 m!345867))

(declare-fun m!345869 () Bool)

(assert (=> b!344177 m!345869))

(declare-fun m!345871 () Bool)

(assert (=> b!344179 m!345871))

(declare-fun m!345873 () Bool)

(assert (=> b!344184 m!345873))

(declare-fun m!345875 () Bool)

(assert (=> b!344180 m!345875))

(check-sat (not start!34480) (not b!344179) tp_is_empty!7347 (not b!344180) (not b!344181) (not b_next!7395) (not mapNonEmpty!12459) b_and!14621 (not b!344177) (not b!344184))
(check-sat b_and!14621 (not b_next!7395))
