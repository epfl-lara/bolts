; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34194 () Bool)

(assert start!34194)

(declare-fun b_free!7209 () Bool)

(declare-fun b_next!7209 () Bool)

(assert (=> start!34194 (= b_free!7209 (not b_next!7209))))

(declare-fun tp!25160 () Bool)

(declare-fun b_and!14427 () Bool)

(assert (=> start!34194 (= tp!25160 b_and!14427)))

(declare-fun mapNonEmpty!12168 () Bool)

(declare-fun mapRes!12168 () Bool)

(declare-fun tp!25161 () Bool)

(declare-fun e!208931 () Bool)

(assert (=> mapNonEmpty!12168 (= mapRes!12168 (and tp!25161 e!208931))))

(declare-datatypes ((V!10525 0))(
  ( (V!10526 (val!3625 Int)) )
))
(declare-datatypes ((ValueCell!3237 0))(
  ( (ValueCellFull!3237 (v!5793 V!10525)) (EmptyCell!3237) )
))
(declare-fun mapValue!12168 () ValueCell!3237)

(declare-fun mapRest!12168 () (Array (_ BitVec 32) ValueCell!3237))

(declare-fun mapKey!12168 () (_ BitVec 32))

(declare-datatypes ((array!17889 0))(
  ( (array!17890 (arr!8462 (Array (_ BitVec 32) ValueCell!3237)) (size!8814 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17889)

(assert (=> mapNonEmpty!12168 (= (arr!8462 _values!1525) (store mapRest!12168 mapKey!12168 mapValue!12168))))

(declare-fun b!340589 () Bool)

(declare-fun res!188239 () Bool)

(declare-fun e!208933 () Bool)

(assert (=> b!340589 (=> (not res!188239) (not e!208933))))

(declare-datatypes ((array!17891 0))(
  ( (array!17892 (arr!8463 (Array (_ BitVec 32) (_ BitVec 64))) (size!8815 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17891)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17891 (_ BitVec 32)) Bool)

(assert (=> b!340589 (= res!188239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340590 () Bool)

(declare-fun res!188242 () Bool)

(declare-fun e!208932 () Bool)

(assert (=> b!340590 (=> (not res!188242) (not e!208932))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340590 (= res!188242 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340591 () Bool)

(assert (=> b!340591 (= e!208933 e!208932)))

(declare-fun res!188240 () Bool)

(assert (=> b!340591 (=> (not res!188240) (not e!208932))))

(declare-datatypes ((SeekEntryResult!3269 0))(
  ( (MissingZero!3269 (index!15255 (_ BitVec 32))) (Found!3269 (index!15256 (_ BitVec 32))) (Intermediate!3269 (undefined!4081 Bool) (index!15257 (_ BitVec 32)) (x!33930 (_ BitVec 32))) (Undefined!3269) (MissingVacant!3269 (index!15258 (_ BitVec 32))) )
))
(declare-fun lt!161613 () SeekEntryResult!3269)

(get-info :version)

(assert (=> b!340591 (= res!188240 (and (not ((_ is Found!3269) lt!161613)) (not ((_ is MissingZero!3269) lt!161613)) ((_ is MissingVacant!3269) lt!161613)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17891 (_ BitVec 32)) SeekEntryResult!3269)

(assert (=> b!340591 (= lt!161613 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12168 () Bool)

(assert (=> mapIsEmpty!12168 mapRes!12168))

(declare-fun b!340592 () Bool)

(assert (=> b!340592 (= e!208932 false)))

(declare-fun lt!161612 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17891 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340592 (= lt!161612 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340593 () Bool)

(declare-fun e!208930 () Bool)

(declare-fun tp_is_empty!7161 () Bool)

(assert (=> b!340593 (= e!208930 tp_is_empty!7161)))

(declare-fun b!340594 () Bool)

(declare-fun e!208934 () Bool)

(assert (=> b!340594 (= e!208934 (and e!208930 mapRes!12168))))

(declare-fun condMapEmpty!12168 () Bool)

(declare-fun mapDefault!12168 () ValueCell!3237)

(assert (=> b!340594 (= condMapEmpty!12168 (= (arr!8462 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3237)) mapDefault!12168)))))

(declare-fun res!188238 () Bool)

(assert (=> start!34194 (=> (not res!188238) (not e!208933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34194 (= res!188238 (validMask!0 mask!2385))))

(assert (=> start!34194 e!208933))

(assert (=> start!34194 true))

(assert (=> start!34194 tp_is_empty!7161))

(assert (=> start!34194 tp!25160))

(declare-fun array_inv!6262 (array!17889) Bool)

(assert (=> start!34194 (and (array_inv!6262 _values!1525) e!208934)))

(declare-fun array_inv!6263 (array!17891) Bool)

(assert (=> start!34194 (array_inv!6263 _keys!1895)))

(declare-fun b!340595 () Bool)

(declare-fun res!188243 () Bool)

(assert (=> b!340595 (=> (not res!188243) (not e!208933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340595 (= res!188243 (validKeyInArray!0 k0!1348))))

(declare-fun b!340596 () Bool)

(assert (=> b!340596 (= e!208931 tp_is_empty!7161)))

(declare-fun b!340597 () Bool)

(declare-fun res!188241 () Bool)

(assert (=> b!340597 (=> (not res!188241) (not e!208933))))

(declare-datatypes ((List!4889 0))(
  ( (Nil!4886) (Cons!4885 (h!5741 (_ BitVec 64)) (t!10005 List!4889)) )
))
(declare-fun arrayNoDuplicates!0 (array!17891 (_ BitVec 32) List!4889) Bool)

(assert (=> b!340597 (= res!188241 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4886))))

(declare-fun b!340598 () Bool)

(declare-fun res!188236 () Bool)

(assert (=> b!340598 (=> (not res!188236) (not e!208933))))

(declare-fun zeroValue!1467 () V!10525)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10525)

(declare-datatypes ((tuple2!5244 0))(
  ( (tuple2!5245 (_1!2632 (_ BitVec 64)) (_2!2632 V!10525)) )
))
(declare-datatypes ((List!4890 0))(
  ( (Nil!4887) (Cons!4886 (h!5742 tuple2!5244) (t!10006 List!4890)) )
))
(declare-datatypes ((ListLongMap!4171 0))(
  ( (ListLongMap!4172 (toList!2101 List!4890)) )
))
(declare-fun contains!2151 (ListLongMap!4171 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1621 (array!17891 array!17889 (_ BitVec 32) (_ BitVec 32) V!10525 V!10525 (_ BitVec 32) Int) ListLongMap!4171)

(assert (=> b!340598 (= res!188236 (not (contains!2151 (getCurrentListMap!1621 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340599 () Bool)

(declare-fun res!188237 () Bool)

(assert (=> b!340599 (=> (not res!188237) (not e!208933))))

(assert (=> b!340599 (= res!188237 (and (= (size!8814 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8815 _keys!1895) (size!8814 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34194 res!188238) b!340599))

(assert (= (and b!340599 res!188237) b!340589))

(assert (= (and b!340589 res!188239) b!340597))

(assert (= (and b!340597 res!188241) b!340595))

(assert (= (and b!340595 res!188243) b!340598))

(assert (= (and b!340598 res!188236) b!340591))

(assert (= (and b!340591 res!188240) b!340590))

(assert (= (and b!340590 res!188242) b!340592))

(assert (= (and b!340594 condMapEmpty!12168) mapIsEmpty!12168))

(assert (= (and b!340594 (not condMapEmpty!12168)) mapNonEmpty!12168))

(assert (= (and mapNonEmpty!12168 ((_ is ValueCellFull!3237) mapValue!12168)) b!340596))

(assert (= (and b!340594 ((_ is ValueCellFull!3237) mapDefault!12168)) b!340593))

(assert (= start!34194 b!340594))

(declare-fun m!343239 () Bool)

(assert (=> mapNonEmpty!12168 m!343239))

(declare-fun m!343241 () Bool)

(assert (=> b!340589 m!343241))

(declare-fun m!343243 () Bool)

(assert (=> b!340595 m!343243))

(declare-fun m!343245 () Bool)

(assert (=> start!34194 m!343245))

(declare-fun m!343247 () Bool)

(assert (=> start!34194 m!343247))

(declare-fun m!343249 () Bool)

(assert (=> start!34194 m!343249))

(declare-fun m!343251 () Bool)

(assert (=> b!340590 m!343251))

(declare-fun m!343253 () Bool)

(assert (=> b!340592 m!343253))

(declare-fun m!343255 () Bool)

(assert (=> b!340598 m!343255))

(assert (=> b!340598 m!343255))

(declare-fun m!343257 () Bool)

(assert (=> b!340598 m!343257))

(declare-fun m!343259 () Bool)

(assert (=> b!340597 m!343259))

(declare-fun m!343261 () Bool)

(assert (=> b!340591 m!343261))

(check-sat (not b!340592) (not start!34194) b_and!14427 tp_is_empty!7161 (not b!340590) (not b!340589) (not b!340595) (not mapNonEmpty!12168) (not b!340598) (not b_next!7209) (not b!340597) (not b!340591))
(check-sat b_and!14427 (not b_next!7209))
