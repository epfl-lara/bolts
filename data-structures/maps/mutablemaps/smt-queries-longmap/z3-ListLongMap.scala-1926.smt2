; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34212 () Bool)

(assert start!34212)

(declare-fun b_free!7227 () Bool)

(declare-fun b_next!7227 () Bool)

(assert (=> start!34212 (= b_free!7227 (not b_next!7227))))

(declare-fun tp!25214 () Bool)

(declare-fun b_and!14445 () Bool)

(assert (=> start!34212 (= tp!25214 b_and!14445)))

(declare-fun b!340886 () Bool)

(declare-fun res!188458 () Bool)

(declare-fun e!209092 () Bool)

(assert (=> b!340886 (=> (not res!188458) (not e!209092))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340886 (= res!188458 (validKeyInArray!0 k0!1348))))

(declare-fun b!340887 () Bool)

(declare-fun e!209097 () Bool)

(declare-fun e!209093 () Bool)

(declare-fun mapRes!12195 () Bool)

(assert (=> b!340887 (= e!209097 (and e!209093 mapRes!12195))))

(declare-fun condMapEmpty!12195 () Bool)

(declare-datatypes ((V!10549 0))(
  ( (V!10550 (val!3634 Int)) )
))
(declare-datatypes ((ValueCell!3246 0))(
  ( (ValueCellFull!3246 (v!5802 V!10549)) (EmptyCell!3246) )
))
(declare-datatypes ((array!17923 0))(
  ( (array!17924 (arr!8479 (Array (_ BitVec 32) ValueCell!3246)) (size!8831 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17923)

(declare-fun mapDefault!12195 () ValueCell!3246)

(assert (=> b!340887 (= condMapEmpty!12195 (= (arr!8479 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3246)) mapDefault!12195)))))

(declare-fun b!340888 () Bool)

(declare-fun res!188457 () Bool)

(assert (=> b!340888 (=> (not res!188457) (not e!209092))))

(declare-datatypes ((array!17925 0))(
  ( (array!17926 (arr!8480 (Array (_ BitVec 32) (_ BitVec 64))) (size!8832 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17925)

(declare-datatypes ((List!4899 0))(
  ( (Nil!4896) (Cons!4895 (h!5751 (_ BitVec 64)) (t!10015 List!4899)) )
))
(declare-fun arrayNoDuplicates!0 (array!17925 (_ BitVec 32) List!4899) Bool)

(assert (=> b!340888 (= res!188457 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4896))))

(declare-fun b!340889 () Bool)

(declare-fun e!209095 () Bool)

(assert (=> b!340889 (= e!209095 false)))

(declare-fun lt!161667 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17925 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340889 (= lt!161667 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12195 () Bool)

(assert (=> mapIsEmpty!12195 mapRes!12195))

(declare-fun b!340890 () Bool)

(declare-fun res!188454 () Bool)

(assert (=> b!340890 (=> (not res!188454) (not e!209092))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17925 (_ BitVec 32)) Bool)

(assert (=> b!340890 (= res!188454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12195 () Bool)

(declare-fun tp!25215 () Bool)

(declare-fun e!209096 () Bool)

(assert (=> mapNonEmpty!12195 (= mapRes!12195 (and tp!25215 e!209096))))

(declare-fun mapValue!12195 () ValueCell!3246)

(declare-fun mapRest!12195 () (Array (_ BitVec 32) ValueCell!3246))

(declare-fun mapKey!12195 () (_ BitVec 32))

(assert (=> mapNonEmpty!12195 (= (arr!8479 _values!1525) (store mapRest!12195 mapKey!12195 mapValue!12195))))

(declare-fun b!340891 () Bool)

(declare-fun tp_is_empty!7179 () Bool)

(assert (=> b!340891 (= e!209093 tp_is_empty!7179)))

(declare-fun b!340892 () Bool)

(assert (=> b!340892 (= e!209092 e!209095)))

(declare-fun res!188453 () Bool)

(assert (=> b!340892 (=> (not res!188453) (not e!209095))))

(declare-datatypes ((SeekEntryResult!3273 0))(
  ( (MissingZero!3273 (index!15271 (_ BitVec 32))) (Found!3273 (index!15272 (_ BitVec 32))) (Intermediate!3273 (undefined!4085 Bool) (index!15273 (_ BitVec 32)) (x!33958 (_ BitVec 32))) (Undefined!3273) (MissingVacant!3273 (index!15274 (_ BitVec 32))) )
))
(declare-fun lt!161666 () SeekEntryResult!3273)

(get-info :version)

(assert (=> b!340892 (= res!188453 (and (not ((_ is Found!3273) lt!161666)) (not ((_ is MissingZero!3273) lt!161666)) ((_ is MissingVacant!3273) lt!161666)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17925 (_ BitVec 32)) SeekEntryResult!3273)

(assert (=> b!340892 (= lt!161666 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340893 () Bool)

(declare-fun res!188452 () Bool)

(assert (=> b!340893 (=> (not res!188452) (not e!209092))))

(declare-fun zeroValue!1467 () V!10549)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10549)

(declare-datatypes ((tuple2!5254 0))(
  ( (tuple2!5255 (_1!2637 (_ BitVec 64)) (_2!2637 V!10549)) )
))
(declare-datatypes ((List!4900 0))(
  ( (Nil!4897) (Cons!4896 (h!5752 tuple2!5254) (t!10016 List!4900)) )
))
(declare-datatypes ((ListLongMap!4181 0))(
  ( (ListLongMap!4182 (toList!2106 List!4900)) )
))
(declare-fun contains!2156 (ListLongMap!4181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1626 (array!17925 array!17923 (_ BitVec 32) (_ BitVec 32) V!10549 V!10549 (_ BitVec 32) Int) ListLongMap!4181)

(assert (=> b!340893 (= res!188452 (not (contains!2156 (getCurrentListMap!1626 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340894 () Bool)

(declare-fun res!188455 () Bool)

(assert (=> b!340894 (=> (not res!188455) (not e!209095))))

(declare-fun arrayContainsKey!0 (array!17925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340894 (= res!188455 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!188459 () Bool)

(assert (=> start!34212 (=> (not res!188459) (not e!209092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34212 (= res!188459 (validMask!0 mask!2385))))

(assert (=> start!34212 e!209092))

(assert (=> start!34212 true))

(assert (=> start!34212 tp_is_empty!7179))

(assert (=> start!34212 tp!25214))

(declare-fun array_inv!6272 (array!17923) Bool)

(assert (=> start!34212 (and (array_inv!6272 _values!1525) e!209097)))

(declare-fun array_inv!6273 (array!17925) Bool)

(assert (=> start!34212 (array_inv!6273 _keys!1895)))

(declare-fun b!340895 () Bool)

(declare-fun res!188456 () Bool)

(assert (=> b!340895 (=> (not res!188456) (not e!209092))))

(assert (=> b!340895 (= res!188456 (and (= (size!8831 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8832 _keys!1895) (size!8831 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340896 () Bool)

(assert (=> b!340896 (= e!209096 tp_is_empty!7179)))

(assert (= (and start!34212 res!188459) b!340895))

(assert (= (and b!340895 res!188456) b!340890))

(assert (= (and b!340890 res!188454) b!340888))

(assert (= (and b!340888 res!188457) b!340886))

(assert (= (and b!340886 res!188458) b!340893))

(assert (= (and b!340893 res!188452) b!340892))

(assert (= (and b!340892 res!188453) b!340894))

(assert (= (and b!340894 res!188455) b!340889))

(assert (= (and b!340887 condMapEmpty!12195) mapIsEmpty!12195))

(assert (= (and b!340887 (not condMapEmpty!12195)) mapNonEmpty!12195))

(assert (= (and mapNonEmpty!12195 ((_ is ValueCellFull!3246) mapValue!12195)) b!340896))

(assert (= (and b!340887 ((_ is ValueCellFull!3246) mapDefault!12195)) b!340891))

(assert (= start!34212 b!340887))

(declare-fun m!343455 () Bool)

(assert (=> b!340889 m!343455))

(declare-fun m!343457 () Bool)

(assert (=> b!340888 m!343457))

(declare-fun m!343459 () Bool)

(assert (=> b!340892 m!343459))

(declare-fun m!343461 () Bool)

(assert (=> mapNonEmpty!12195 m!343461))

(declare-fun m!343463 () Bool)

(assert (=> b!340890 m!343463))

(declare-fun m!343465 () Bool)

(assert (=> b!340886 m!343465))

(declare-fun m!343467 () Bool)

(assert (=> start!34212 m!343467))

(declare-fun m!343469 () Bool)

(assert (=> start!34212 m!343469))

(declare-fun m!343471 () Bool)

(assert (=> start!34212 m!343471))

(declare-fun m!343473 () Bool)

(assert (=> b!340894 m!343473))

(declare-fun m!343475 () Bool)

(assert (=> b!340893 m!343475))

(assert (=> b!340893 m!343475))

(declare-fun m!343477 () Bool)

(assert (=> b!340893 m!343477))

(check-sat (not b!340894) (not start!34212) tp_is_empty!7179 (not b!340892) (not b!340889) (not mapNonEmpty!12195) (not b!340890) (not b_next!7227) (not b!340886) (not b!340888) b_and!14445 (not b!340893))
(check-sat b_and!14445 (not b_next!7227))
