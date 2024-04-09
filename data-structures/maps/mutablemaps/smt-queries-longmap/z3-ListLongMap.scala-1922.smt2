; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34188 () Bool)

(assert start!34188)

(declare-fun b_free!7203 () Bool)

(declare-fun b_next!7203 () Bool)

(assert (=> start!34188 (= b_free!7203 (not b_next!7203))))

(declare-fun tp!25143 () Bool)

(declare-fun b_and!14421 () Bool)

(assert (=> start!34188 (= tp!25143 b_and!14421)))

(declare-fun b!340491 () Bool)

(declare-fun e!208876 () Bool)

(declare-fun tp_is_empty!7155 () Bool)

(assert (=> b!340491 (= e!208876 tp_is_empty!7155)))

(declare-fun b!340492 () Bool)

(declare-fun e!208880 () Bool)

(assert (=> b!340492 (= e!208880 false)))

(declare-fun lt!161595 () (_ BitVec 32))

(declare-datatypes ((array!17879 0))(
  ( (array!17880 (arr!8457 (Array (_ BitVec 32) (_ BitVec 64))) (size!8809 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17879)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17879 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340492 (= lt!161595 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340493 () Bool)

(declare-fun res!188170 () Bool)

(declare-fun e!208879 () Bool)

(assert (=> b!340493 (=> (not res!188170) (not e!208879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340493 (= res!188170 (validKeyInArray!0 k0!1348))))

(declare-fun b!340494 () Bool)

(declare-fun e!208878 () Bool)

(assert (=> b!340494 (= e!208878 tp_is_empty!7155)))

(declare-fun mapNonEmpty!12159 () Bool)

(declare-fun mapRes!12159 () Bool)

(declare-fun tp!25142 () Bool)

(assert (=> mapNonEmpty!12159 (= mapRes!12159 (and tp!25142 e!208878))))

(declare-datatypes ((V!10517 0))(
  ( (V!10518 (val!3622 Int)) )
))
(declare-datatypes ((ValueCell!3234 0))(
  ( (ValueCellFull!3234 (v!5790 V!10517)) (EmptyCell!3234) )
))
(declare-fun mapRest!12159 () (Array (_ BitVec 32) ValueCell!3234))

(declare-fun mapKey!12159 () (_ BitVec 32))

(declare-datatypes ((array!17881 0))(
  ( (array!17882 (arr!8458 (Array (_ BitVec 32) ValueCell!3234)) (size!8810 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17881)

(declare-fun mapValue!12159 () ValueCell!3234)

(assert (=> mapNonEmpty!12159 (= (arr!8458 _values!1525) (store mapRest!12159 mapKey!12159 mapValue!12159))))

(declare-fun b!340495 () Bool)

(declare-fun res!188166 () Bool)

(assert (=> b!340495 (=> (not res!188166) (not e!208879))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10517)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10517)

(declare-datatypes ((tuple2!5242 0))(
  ( (tuple2!5243 (_1!2631 (_ BitVec 64)) (_2!2631 V!10517)) )
))
(declare-datatypes ((List!4887 0))(
  ( (Nil!4884) (Cons!4883 (h!5739 tuple2!5242) (t!10003 List!4887)) )
))
(declare-datatypes ((ListLongMap!4169 0))(
  ( (ListLongMap!4170 (toList!2100 List!4887)) )
))
(declare-fun contains!2150 (ListLongMap!4169 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1620 (array!17879 array!17881 (_ BitVec 32) (_ BitVec 32) V!10517 V!10517 (_ BitVec 32) Int) ListLongMap!4169)

(assert (=> b!340495 (= res!188166 (not (contains!2150 (getCurrentListMap!1620 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340496 () Bool)

(declare-fun e!208877 () Bool)

(assert (=> b!340496 (= e!208877 (and e!208876 mapRes!12159))))

(declare-fun condMapEmpty!12159 () Bool)

(declare-fun mapDefault!12159 () ValueCell!3234)

(assert (=> b!340496 (= condMapEmpty!12159 (= (arr!8458 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3234)) mapDefault!12159)))))

(declare-fun b!340497 () Bool)

(declare-fun res!188171 () Bool)

(assert (=> b!340497 (=> (not res!188171) (not e!208879))))

(declare-datatypes ((List!4888 0))(
  ( (Nil!4885) (Cons!4884 (h!5740 (_ BitVec 64)) (t!10004 List!4888)) )
))
(declare-fun arrayNoDuplicates!0 (array!17879 (_ BitVec 32) List!4888) Bool)

(assert (=> b!340497 (= res!188171 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4885))))

(declare-fun res!188164 () Bool)

(assert (=> start!34188 (=> (not res!188164) (not e!208879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34188 (= res!188164 (validMask!0 mask!2385))))

(assert (=> start!34188 e!208879))

(assert (=> start!34188 true))

(assert (=> start!34188 tp_is_empty!7155))

(assert (=> start!34188 tp!25143))

(declare-fun array_inv!6258 (array!17881) Bool)

(assert (=> start!34188 (and (array_inv!6258 _values!1525) e!208877)))

(declare-fun array_inv!6259 (array!17879) Bool)

(assert (=> start!34188 (array_inv!6259 _keys!1895)))

(declare-fun b!340490 () Bool)

(assert (=> b!340490 (= e!208879 e!208880)))

(declare-fun res!188167 () Bool)

(assert (=> b!340490 (=> (not res!188167) (not e!208880))))

(declare-datatypes ((SeekEntryResult!3268 0))(
  ( (MissingZero!3268 (index!15251 (_ BitVec 32))) (Found!3268 (index!15252 (_ BitVec 32))) (Intermediate!3268 (undefined!4080 Bool) (index!15253 (_ BitVec 32)) (x!33921 (_ BitVec 32))) (Undefined!3268) (MissingVacant!3268 (index!15254 (_ BitVec 32))) )
))
(declare-fun lt!161594 () SeekEntryResult!3268)

(get-info :version)

(assert (=> b!340490 (= res!188167 (and (not ((_ is Found!3268) lt!161594)) (not ((_ is MissingZero!3268) lt!161594)) ((_ is MissingVacant!3268) lt!161594)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17879 (_ BitVec 32)) SeekEntryResult!3268)

(assert (=> b!340490 (= lt!161594 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340498 () Bool)

(declare-fun res!188169 () Bool)

(assert (=> b!340498 (=> (not res!188169) (not e!208879))))

(assert (=> b!340498 (= res!188169 (and (= (size!8810 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8809 _keys!1895) (size!8810 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12159 () Bool)

(assert (=> mapIsEmpty!12159 mapRes!12159))

(declare-fun b!340499 () Bool)

(declare-fun res!188165 () Bool)

(assert (=> b!340499 (=> (not res!188165) (not e!208879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17879 (_ BitVec 32)) Bool)

(assert (=> b!340499 (= res!188165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340500 () Bool)

(declare-fun res!188168 () Bool)

(assert (=> b!340500 (=> (not res!188168) (not e!208880))))

(declare-fun arrayContainsKey!0 (array!17879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340500 (= res!188168 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34188 res!188164) b!340498))

(assert (= (and b!340498 res!188169) b!340499))

(assert (= (and b!340499 res!188165) b!340497))

(assert (= (and b!340497 res!188171) b!340493))

(assert (= (and b!340493 res!188170) b!340495))

(assert (= (and b!340495 res!188166) b!340490))

(assert (= (and b!340490 res!188167) b!340500))

(assert (= (and b!340500 res!188168) b!340492))

(assert (= (and b!340496 condMapEmpty!12159) mapIsEmpty!12159))

(assert (= (and b!340496 (not condMapEmpty!12159)) mapNonEmpty!12159))

(assert (= (and mapNonEmpty!12159 ((_ is ValueCellFull!3234) mapValue!12159)) b!340494))

(assert (= (and b!340496 ((_ is ValueCellFull!3234) mapDefault!12159)) b!340491))

(assert (= start!34188 b!340496))

(declare-fun m!343167 () Bool)

(assert (=> b!340495 m!343167))

(assert (=> b!340495 m!343167))

(declare-fun m!343169 () Bool)

(assert (=> b!340495 m!343169))

(declare-fun m!343171 () Bool)

(assert (=> start!34188 m!343171))

(declare-fun m!343173 () Bool)

(assert (=> start!34188 m!343173))

(declare-fun m!343175 () Bool)

(assert (=> start!34188 m!343175))

(declare-fun m!343177 () Bool)

(assert (=> b!340490 m!343177))

(declare-fun m!343179 () Bool)

(assert (=> b!340493 m!343179))

(declare-fun m!343181 () Bool)

(assert (=> mapNonEmpty!12159 m!343181))

(declare-fun m!343183 () Bool)

(assert (=> b!340500 m!343183))

(declare-fun m!343185 () Bool)

(assert (=> b!340492 m!343185))

(declare-fun m!343187 () Bool)

(assert (=> b!340499 m!343187))

(declare-fun m!343189 () Bool)

(assert (=> b!340497 m!343189))

(check-sat (not start!34188) tp_is_empty!7155 (not b_next!7203) (not b!340500) (not b!340493) b_and!14421 (not b!340499) (not b!340497) (not b!340490) (not b!340495) (not mapNonEmpty!12159) (not b!340492))
(check-sat b_and!14421 (not b_next!7203))
