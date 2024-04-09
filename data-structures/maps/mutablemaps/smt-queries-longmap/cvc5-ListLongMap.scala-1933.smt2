; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34276 () Bool)

(assert start!34276)

(declare-fun b_free!7267 () Bool)

(declare-fun b_next!7267 () Bool)

(assert (=> start!34276 (= b_free!7267 (not b_next!7267))))

(declare-fun tp!25338 () Bool)

(declare-fun b_and!14487 () Bool)

(assert (=> start!34276 (= tp!25338 b_and!14487)))

(declare-fun mapNonEmpty!12258 () Bool)

(declare-fun mapRes!12258 () Bool)

(declare-fun tp!25337 () Bool)

(declare-fun e!209565 () Bool)

(assert (=> mapNonEmpty!12258 (= mapRes!12258 (and tp!25337 e!209565))))

(declare-fun mapKey!12258 () (_ BitVec 32))

(declare-datatypes ((V!10603 0))(
  ( (V!10604 (val!3654 Int)) )
))
(declare-datatypes ((ValueCell!3266 0))(
  ( (ValueCellFull!3266 (v!5823 V!10603)) (EmptyCell!3266) )
))
(declare-fun mapRest!12258 () (Array (_ BitVec 32) ValueCell!3266))

(declare-fun mapValue!12258 () ValueCell!3266)

(declare-datatypes ((array!18005 0))(
  ( (array!18006 (arr!8519 (Array (_ BitVec 32) ValueCell!3266)) (size!8871 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18005)

(assert (=> mapNonEmpty!12258 (= (arr!8519 _values!1525) (store mapRest!12258 mapKey!12258 mapValue!12258))))

(declare-fun b!341705 () Bool)

(declare-fun res!188965 () Bool)

(declare-fun e!209562 () Bool)

(assert (=> b!341705 (=> (not res!188965) (not e!209562))))

(declare-datatypes ((array!18007 0))(
  ( (array!18008 (arr!8520 (Array (_ BitVec 32) (_ BitVec 64))) (size!8872 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18007)

(declare-datatypes ((List!4925 0))(
  ( (Nil!4922) (Cons!4921 (h!5777 (_ BitVec 64)) (t!10043 List!4925)) )
))
(declare-fun arrayNoDuplicates!0 (array!18007 (_ BitVec 32) List!4925) Bool)

(assert (=> b!341705 (= res!188965 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4922))))

(declare-fun b!341706 () Bool)

(declare-fun e!209563 () Bool)

(declare-fun tp_is_empty!7219 () Bool)

(assert (=> b!341706 (= e!209563 tp_is_empty!7219)))

(declare-fun b!341707 () Bool)

(declare-datatypes ((Unit!10619 0))(
  ( (Unit!10620) )
))
(declare-fun e!209564 () Unit!10619)

(declare-fun Unit!10621 () Unit!10619)

(assert (=> b!341707 (= e!209564 Unit!10621)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10603)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!161909 () Unit!10619)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10603)

(declare-fun lemmaArrayContainsKeyThenInListMap!293 (array!18007 array!18005 (_ BitVec 32) (_ BitVec 32) V!10603 V!10603 (_ BitVec 64) (_ BitVec 32) Int) Unit!10619)

(declare-fun arrayScanForKey!0 (array!18007 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341707 (= lt!161909 (lemmaArrayContainsKeyThenInListMap!293 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341707 false))

(declare-fun b!341709 () Bool)

(declare-fun e!209568 () Bool)

(assert (=> b!341709 (= e!209562 e!209568)))

(declare-fun res!188963 () Bool)

(assert (=> b!341709 (=> (not res!188963) (not e!209568))))

(declare-datatypes ((SeekEntryResult!3288 0))(
  ( (MissingZero!3288 (index!15331 (_ BitVec 32))) (Found!3288 (index!15332 (_ BitVec 32))) (Intermediate!3288 (undefined!4100 Bool) (index!15333 (_ BitVec 32)) (x!34039 (_ BitVec 32))) (Undefined!3288) (MissingVacant!3288 (index!15334 (_ BitVec 32))) )
))
(declare-fun lt!161908 () SeekEntryResult!3288)

(assert (=> b!341709 (= res!188963 (and (not (is-Found!3288 lt!161908)) (not (is-MissingZero!3288 lt!161908)) (is-MissingVacant!3288 lt!161908)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18007 (_ BitVec 32)) SeekEntryResult!3288)

(assert (=> b!341709 (= lt!161908 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341710 () Bool)

(declare-fun res!188966 () Bool)

(assert (=> b!341710 (=> (not res!188966) (not e!209562))))

(declare-datatypes ((tuple2!5282 0))(
  ( (tuple2!5283 (_1!2651 (_ BitVec 64)) (_2!2651 V!10603)) )
))
(declare-datatypes ((List!4926 0))(
  ( (Nil!4923) (Cons!4922 (h!5778 tuple2!5282) (t!10044 List!4926)) )
))
(declare-datatypes ((ListLongMap!4209 0))(
  ( (ListLongMap!4210 (toList!2120 List!4926)) )
))
(declare-fun contains!2171 (ListLongMap!4209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1640 (array!18007 array!18005 (_ BitVec 32) (_ BitVec 32) V!10603 V!10603 (_ BitVec 32) Int) ListLongMap!4209)

(assert (=> b!341710 (= res!188966 (not (contains!2171 (getCurrentListMap!1640 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12258 () Bool)

(assert (=> mapIsEmpty!12258 mapRes!12258))

(declare-fun b!341711 () Bool)

(declare-fun res!188964 () Bool)

(assert (=> b!341711 (=> (not res!188964) (not e!209562))))

(assert (=> b!341711 (= res!188964 (and (= (size!8871 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8872 _keys!1895) (size!8871 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341712 () Bool)

(assert (=> b!341712 (= e!209568 (and (bvslt #b00000000000000000000000000000000 (size!8872 _keys!1895)) (bvsge (size!8872 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun lt!161910 () Unit!10619)

(assert (=> b!341712 (= lt!161910 e!209564)))

(declare-fun c!52664 () Bool)

(declare-fun arrayContainsKey!0 (array!18007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341712 (= c!52664 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341713 () Bool)

(declare-fun res!188968 () Bool)

(assert (=> b!341713 (=> (not res!188968) (not e!209562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341713 (= res!188968 (validKeyInArray!0 k!1348))))

(declare-fun res!188967 () Bool)

(assert (=> start!34276 (=> (not res!188967) (not e!209562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34276 (= res!188967 (validMask!0 mask!2385))))

(assert (=> start!34276 e!209562))

(assert (=> start!34276 true))

(assert (=> start!34276 tp_is_empty!7219))

(assert (=> start!34276 tp!25338))

(declare-fun e!209566 () Bool)

(declare-fun array_inv!6302 (array!18005) Bool)

(assert (=> start!34276 (and (array_inv!6302 _values!1525) e!209566)))

(declare-fun array_inv!6303 (array!18007) Bool)

(assert (=> start!34276 (array_inv!6303 _keys!1895)))

(declare-fun b!341708 () Bool)

(declare-fun Unit!10622 () Unit!10619)

(assert (=> b!341708 (= e!209564 Unit!10622)))

(declare-fun b!341714 () Bool)

(assert (=> b!341714 (= e!209565 tp_is_empty!7219)))

(declare-fun b!341715 () Bool)

(declare-fun res!188969 () Bool)

(assert (=> b!341715 (=> (not res!188969) (not e!209562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18007 (_ BitVec 32)) Bool)

(assert (=> b!341715 (= res!188969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341716 () Bool)

(assert (=> b!341716 (= e!209566 (and e!209563 mapRes!12258))))

(declare-fun condMapEmpty!12258 () Bool)

(declare-fun mapDefault!12258 () ValueCell!3266)

