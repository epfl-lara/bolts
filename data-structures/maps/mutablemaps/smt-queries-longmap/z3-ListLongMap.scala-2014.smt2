; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35118 () Bool)

(assert start!35118)

(declare-fun b_free!7755 () Bool)

(declare-fun b_next!7755 () Bool)

(assert (=> start!35118 (= b_free!7755 (not b_next!7755))))

(declare-fun tp!26849 () Bool)

(declare-fun b_and!15007 () Bool)

(assert (=> start!35118 (= tp!26849 b_and!15007)))

(declare-fun b!351801 () Bool)

(declare-fun e!215448 () Bool)

(declare-fun tp_is_empty!7707 () Bool)

(assert (=> b!351801 (= e!215448 tp_is_empty!7707)))

(declare-fun b!351802 () Bool)

(declare-fun res!195173 () Bool)

(declare-fun e!215447 () Bool)

(assert (=> b!351802 (=> (not res!195173) (not e!215447))))

(declare-datatypes ((array!18959 0))(
  ( (array!18960 (arr!8980 (Array (_ BitVec 32) (_ BitVec 64))) (size!9332 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18959)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18959 (_ BitVec 32)) Bool)

(assert (=> b!351802 (= res!195173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351803 () Bool)

(declare-fun res!195170 () Bool)

(assert (=> b!351803 (=> (not res!195170) (not e!215447))))

(declare-datatypes ((V!11253 0))(
  ( (V!11254 (val!3898 Int)) )
))
(declare-datatypes ((ValueCell!3510 0))(
  ( (ValueCellFull!3510 (v!6083 V!11253)) (EmptyCell!3510) )
))
(declare-datatypes ((array!18961 0))(
  ( (array!18962 (arr!8981 (Array (_ BitVec 32) ValueCell!3510)) (size!9333 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18961)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351803 (= res!195170 (and (= (size!9333 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9332 _keys!1895) (size!9333 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351804 () Bool)

(declare-fun e!215445 () Bool)

(assert (=> b!351804 (= e!215445 false)))

(declare-datatypes ((Unit!10874 0))(
  ( (Unit!10875) )
))
(declare-fun lt!164992 () Unit!10874)

(declare-fun e!215444 () Unit!10874)

(assert (=> b!351804 (= lt!164992 e!215444)))

(declare-fun c!53432 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351804 (= c!53432 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!13038 () Bool)

(declare-fun mapRes!13038 () Bool)

(declare-fun tp!26850 () Bool)

(assert (=> mapNonEmpty!13038 (= mapRes!13038 (and tp!26850 e!215448))))

(declare-fun mapRest!13038 () (Array (_ BitVec 32) ValueCell!3510))

(declare-fun mapValue!13038 () ValueCell!3510)

(declare-fun mapKey!13038 () (_ BitVec 32))

(assert (=> mapNonEmpty!13038 (= (arr!8981 _values!1525) (store mapRest!13038 mapKey!13038 mapValue!13038))))

(declare-fun b!351805 () Bool)

(assert (=> b!351805 (= e!215447 e!215445)))

(declare-fun res!195169 () Bool)

(assert (=> b!351805 (=> (not res!195169) (not e!215445))))

(declare-datatypes ((SeekEntryResult!3452 0))(
  ( (MissingZero!3452 (index!15987 (_ BitVec 32))) (Found!3452 (index!15988 (_ BitVec 32))) (Intermediate!3452 (undefined!4264 Bool) (index!15989 (_ BitVec 32)) (x!35011 (_ BitVec 32))) (Undefined!3452) (MissingVacant!3452 (index!15990 (_ BitVec 32))) )
))
(declare-fun lt!164994 () SeekEntryResult!3452)

(get-info :version)

(assert (=> b!351805 (= res!195169 (and (not ((_ is Found!3452) lt!164994)) (not ((_ is MissingZero!3452) lt!164994)) ((_ is MissingVacant!3452) lt!164994)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18959 (_ BitVec 32)) SeekEntryResult!3452)

(assert (=> b!351805 (= lt!164994 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351806 () Bool)

(declare-fun res!195171 () Bool)

(assert (=> b!351806 (=> (not res!195171) (not e!215447))))

(declare-fun zeroValue!1467 () V!11253)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11253)

(declare-datatypes ((tuple2!5618 0))(
  ( (tuple2!5619 (_1!2819 (_ BitVec 64)) (_2!2819 V!11253)) )
))
(declare-datatypes ((List!5255 0))(
  ( (Nil!5252) (Cons!5251 (h!6107 tuple2!5618) (t!10405 List!5255)) )
))
(declare-datatypes ((ListLongMap!4545 0))(
  ( (ListLongMap!4546 (toList!2288 List!5255)) )
))
(declare-fun contains!2355 (ListLongMap!4545 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1805 (array!18959 array!18961 (_ BitVec 32) (_ BitVec 32) V!11253 V!11253 (_ BitVec 32) Int) ListLongMap!4545)

(assert (=> b!351806 (= res!195171 (not (contains!2355 (getCurrentListMap!1805 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!351807 () Bool)

(declare-fun e!215443 () Bool)

(declare-fun e!215442 () Bool)

(assert (=> b!351807 (= e!215443 (and e!215442 mapRes!13038))))

(declare-fun condMapEmpty!13038 () Bool)

(declare-fun mapDefault!13038 () ValueCell!3510)

(assert (=> b!351807 (= condMapEmpty!13038 (= (arr!8981 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3510)) mapDefault!13038)))))

(declare-fun b!351808 () Bool)

(declare-fun Unit!10876 () Unit!10874)

(assert (=> b!351808 (= e!215444 Unit!10876)))

(declare-fun b!351809 () Bool)

(declare-fun res!195168 () Bool)

(assert (=> b!351809 (=> (not res!195168) (not e!215447))))

(declare-datatypes ((List!5256 0))(
  ( (Nil!5253) (Cons!5252 (h!6108 (_ BitVec 64)) (t!10406 List!5256)) )
))
(declare-fun arrayNoDuplicates!0 (array!18959 (_ BitVec 32) List!5256) Bool)

(assert (=> b!351809 (= res!195168 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5253))))

(declare-fun res!195167 () Bool)

(assert (=> start!35118 (=> (not res!195167) (not e!215447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35118 (= res!195167 (validMask!0 mask!2385))))

(assert (=> start!35118 e!215447))

(assert (=> start!35118 true))

(assert (=> start!35118 tp_is_empty!7707))

(assert (=> start!35118 tp!26849))

(declare-fun array_inv!6618 (array!18961) Bool)

(assert (=> start!35118 (and (array_inv!6618 _values!1525) e!215443)))

(declare-fun array_inv!6619 (array!18959) Bool)

(assert (=> start!35118 (array_inv!6619 _keys!1895)))

(declare-fun b!351810 () Bool)

(assert (=> b!351810 (= e!215442 tp_is_empty!7707)))

(declare-fun b!351811 () Bool)

(declare-fun Unit!10877 () Unit!10874)

(assert (=> b!351811 (= e!215444 Unit!10877)))

(declare-fun lt!164993 () Unit!10874)

(declare-fun lemmaArrayContainsKeyThenInListMap!329 (array!18959 array!18961 (_ BitVec 32) (_ BitVec 32) V!11253 V!11253 (_ BitVec 64) (_ BitVec 32) Int) Unit!10874)

(declare-fun arrayScanForKey!0 (array!18959 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351811 (= lt!164993 (lemmaArrayContainsKeyThenInListMap!329 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351811 false))

(declare-fun b!351812 () Bool)

(declare-fun res!195172 () Bool)

(assert (=> b!351812 (=> (not res!195172) (not e!215447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351812 (= res!195172 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!13038 () Bool)

(assert (=> mapIsEmpty!13038 mapRes!13038))

(assert (= (and start!35118 res!195167) b!351803))

(assert (= (and b!351803 res!195170) b!351802))

(assert (= (and b!351802 res!195173) b!351809))

(assert (= (and b!351809 res!195168) b!351812))

(assert (= (and b!351812 res!195172) b!351806))

(assert (= (and b!351806 res!195171) b!351805))

(assert (= (and b!351805 res!195169) b!351804))

(assert (= (and b!351804 c!53432) b!351811))

(assert (= (and b!351804 (not c!53432)) b!351808))

(assert (= (and b!351807 condMapEmpty!13038) mapIsEmpty!13038))

(assert (= (and b!351807 (not condMapEmpty!13038)) mapNonEmpty!13038))

(assert (= (and mapNonEmpty!13038 ((_ is ValueCellFull!3510) mapValue!13038)) b!351801))

(assert (= (and b!351807 ((_ is ValueCellFull!3510) mapDefault!13038)) b!351810))

(assert (= start!35118 b!351807))

(declare-fun m!351617 () Bool)

(assert (=> b!351804 m!351617))

(declare-fun m!351619 () Bool)

(assert (=> b!351806 m!351619))

(assert (=> b!351806 m!351619))

(declare-fun m!351621 () Bool)

(assert (=> b!351806 m!351621))

(declare-fun m!351623 () Bool)

(assert (=> mapNonEmpty!13038 m!351623))

(declare-fun m!351625 () Bool)

(assert (=> b!351809 m!351625))

(declare-fun m!351627 () Bool)

(assert (=> b!351805 m!351627))

(declare-fun m!351629 () Bool)

(assert (=> b!351812 m!351629))

(declare-fun m!351631 () Bool)

(assert (=> b!351811 m!351631))

(assert (=> b!351811 m!351631))

(declare-fun m!351633 () Bool)

(assert (=> b!351811 m!351633))

(declare-fun m!351635 () Bool)

(assert (=> start!35118 m!351635))

(declare-fun m!351637 () Bool)

(assert (=> start!35118 m!351637))

(declare-fun m!351639 () Bool)

(assert (=> start!35118 m!351639))

(declare-fun m!351641 () Bool)

(assert (=> b!351802 m!351641))

(check-sat (not b!351811) (not b!351802) (not b!351804) (not b!351806) b_and!15007 tp_is_empty!7707 (not b_next!7755) (not mapNonEmpty!13038) (not b!351805) (not start!35118) (not b!351809) (not b!351812))
(check-sat b_and!15007 (not b_next!7755))
