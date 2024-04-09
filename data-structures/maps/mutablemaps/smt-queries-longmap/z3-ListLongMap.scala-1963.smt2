; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34534 () Bool)

(assert start!34534)

(declare-fun b_free!7449 () Bool)

(declare-fun b_next!7449 () Bool)

(assert (=> start!34534 (= b_free!7449 (not b_next!7449))))

(declare-fun tp!25893 () Bool)

(declare-fun b_and!14675 () Bool)

(assert (=> start!34534 (= tp!25893 b_and!14675)))

(declare-fun mapNonEmpty!12540 () Bool)

(declare-fun mapRes!12540 () Bool)

(declare-fun tp!25892 () Bool)

(declare-fun e!211412 () Bool)

(assert (=> mapNonEmpty!12540 (= mapRes!12540 (and tp!25892 e!211412))))

(declare-datatypes ((V!10845 0))(
  ( (V!10846 (val!3745 Int)) )
))
(declare-datatypes ((ValueCell!3357 0))(
  ( (ValueCellFull!3357 (v!5917 V!10845)) (EmptyCell!3357) )
))
(declare-fun mapRest!12540 () (Array (_ BitVec 32) ValueCell!3357))

(declare-fun mapKey!12540 () (_ BitVec 32))

(declare-datatypes ((array!18357 0))(
  ( (array!18358 (arr!8692 (Array (_ BitVec 32) ValueCell!3357)) (size!9044 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18357)

(declare-fun mapValue!12540 () ValueCell!3357)

(assert (=> mapNonEmpty!12540 (= (arr!8692 _values!1525) (store mapRest!12540 mapKey!12540 mapValue!12540))))

(declare-fun b!344906 () Bool)

(declare-fun res!190891 () Bool)

(declare-fun e!211413 () Bool)

(assert (=> b!344906 (=> (not res!190891) (not e!211413))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344906 (= res!190891 (validKeyInArray!0 k0!1348))))

(declare-fun b!344907 () Bool)

(declare-fun res!190888 () Bool)

(assert (=> b!344907 (=> (not res!190888) (not e!211413))))

(declare-datatypes ((array!18359 0))(
  ( (array!18360 (arr!8693 (Array (_ BitVec 32) (_ BitVec 64))) (size!9045 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18359)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18359 (_ BitVec 32)) Bool)

(assert (=> b!344907 (= res!190888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344908 () Bool)

(declare-fun e!211411 () Bool)

(declare-fun e!211409 () Bool)

(assert (=> b!344908 (= e!211411 (and e!211409 mapRes!12540))))

(declare-fun condMapEmpty!12540 () Bool)

(declare-fun mapDefault!12540 () ValueCell!3357)

(assert (=> b!344908 (= condMapEmpty!12540 (= (arr!8692 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3357)) mapDefault!12540)))))

(declare-fun b!344909 () Bool)

(declare-fun res!190890 () Bool)

(assert (=> b!344909 (=> (not res!190890) (not e!211413))))

(declare-datatypes ((List!5055 0))(
  ( (Nil!5052) (Cons!5051 (h!5907 (_ BitVec 64)) (t!10179 List!5055)) )
))
(declare-fun arrayNoDuplicates!0 (array!18359 (_ BitVec 32) List!5055) Bool)

(assert (=> b!344909 (= res!190890 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5052))))

(declare-fun b!344910 () Bool)

(declare-fun res!190889 () Bool)

(assert (=> b!344910 (=> (not res!190889) (not e!211413))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344910 (= res!190889 (and (= (size!9044 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9045 _keys!1895) (size!9044 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344911 () Bool)

(assert (=> b!344911 (= e!211413 false)))

(declare-datatypes ((SeekEntryResult!3348 0))(
  ( (MissingZero!3348 (index!15571 (_ BitVec 32))) (Found!3348 (index!15572 (_ BitVec 32))) (Intermediate!3348 (undefined!4160 Bool) (index!15573 (_ BitVec 32)) (x!34369 (_ BitVec 32))) (Undefined!3348) (MissingVacant!3348 (index!15574 (_ BitVec 32))) )
))
(declare-fun lt!162708 () SeekEntryResult!3348)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18359 (_ BitVec 32)) SeekEntryResult!3348)

(assert (=> b!344911 (= lt!162708 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!190892 () Bool)

(assert (=> start!34534 (=> (not res!190892) (not e!211413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34534 (= res!190892 (validMask!0 mask!2385))))

(assert (=> start!34534 e!211413))

(assert (=> start!34534 true))

(declare-fun tp_is_empty!7401 () Bool)

(assert (=> start!34534 tp_is_empty!7401))

(assert (=> start!34534 tp!25893))

(declare-fun array_inv!6428 (array!18357) Bool)

(assert (=> start!34534 (and (array_inv!6428 _values!1525) e!211411)))

(declare-fun array_inv!6429 (array!18359) Bool)

(assert (=> start!34534 (array_inv!6429 _keys!1895)))

(declare-fun b!344912 () Bool)

(assert (=> b!344912 (= e!211409 tp_is_empty!7401)))

(declare-fun mapIsEmpty!12540 () Bool)

(assert (=> mapIsEmpty!12540 mapRes!12540))

(declare-fun b!344913 () Bool)

(declare-fun res!190887 () Bool)

(assert (=> b!344913 (=> (not res!190887) (not e!211413))))

(declare-fun zeroValue!1467 () V!10845)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10845)

(declare-datatypes ((tuple2!5408 0))(
  ( (tuple2!5409 (_1!2714 (_ BitVec 64)) (_2!2714 V!10845)) )
))
(declare-datatypes ((List!5056 0))(
  ( (Nil!5053) (Cons!5052 (h!5908 tuple2!5408) (t!10180 List!5056)) )
))
(declare-datatypes ((ListLongMap!4335 0))(
  ( (ListLongMap!4336 (toList!2183 List!5056)) )
))
(declare-fun contains!2237 (ListLongMap!4335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1703 (array!18359 array!18357 (_ BitVec 32) (_ BitVec 32) V!10845 V!10845 (_ BitVec 32) Int) ListLongMap!4335)

(assert (=> b!344913 (= res!190887 (not (contains!2237 (getCurrentListMap!1703 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344914 () Bool)

(assert (=> b!344914 (= e!211412 tp_is_empty!7401)))

(assert (= (and start!34534 res!190892) b!344910))

(assert (= (and b!344910 res!190889) b!344907))

(assert (= (and b!344907 res!190888) b!344909))

(assert (= (and b!344909 res!190890) b!344906))

(assert (= (and b!344906 res!190891) b!344913))

(assert (= (and b!344913 res!190887) b!344911))

(assert (= (and b!344908 condMapEmpty!12540) mapIsEmpty!12540))

(assert (= (and b!344908 (not condMapEmpty!12540)) mapNonEmpty!12540))

(get-info :version)

(assert (= (and mapNonEmpty!12540 ((_ is ValueCellFull!3357) mapValue!12540)) b!344914))

(assert (= (and b!344908 ((_ is ValueCellFull!3357) mapDefault!12540)) b!344912))

(assert (= start!34534 b!344908))

(declare-fun m!346397 () Bool)

(assert (=> b!344913 m!346397))

(assert (=> b!344913 m!346397))

(declare-fun m!346399 () Bool)

(assert (=> b!344913 m!346399))

(declare-fun m!346401 () Bool)

(assert (=> b!344909 m!346401))

(declare-fun m!346403 () Bool)

(assert (=> b!344906 m!346403))

(declare-fun m!346405 () Bool)

(assert (=> b!344907 m!346405))

(declare-fun m!346407 () Bool)

(assert (=> b!344911 m!346407))

(declare-fun m!346409 () Bool)

(assert (=> mapNonEmpty!12540 m!346409))

(declare-fun m!346411 () Bool)

(assert (=> start!34534 m!346411))

(declare-fun m!346413 () Bool)

(assert (=> start!34534 m!346413))

(declare-fun m!346415 () Bool)

(assert (=> start!34534 m!346415))

(check-sat (not mapNonEmpty!12540) (not b_next!7449) (not b!344909) (not b!344913) (not b!344911) b_and!14675 (not start!34534) (not b!344906) (not b!344907) tp_is_empty!7401)
(check-sat b_and!14675 (not b_next!7449))
