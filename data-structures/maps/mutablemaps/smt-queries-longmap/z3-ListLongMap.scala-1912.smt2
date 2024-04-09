; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34072 () Bool)

(assert start!34072)

(declare-fun b_free!7143 () Bool)

(declare-fun b_next!7143 () Bool)

(assert (=> start!34072 (= b_free!7143 (not b_next!7143))))

(declare-fun tp!24954 () Bool)

(declare-fun b_and!14355 () Bool)

(assert (=> start!34072 (= tp!24954 b_and!14355)))

(declare-fun mapNonEmpty!12060 () Bool)

(declare-fun mapRes!12060 () Bool)

(declare-fun tp!24953 () Bool)

(declare-fun e!208106 () Bool)

(assert (=> mapNonEmpty!12060 (= mapRes!12060 (and tp!24953 e!208106))))

(declare-datatypes ((V!10437 0))(
  ( (V!10438 (val!3592 Int)) )
))
(declare-datatypes ((ValueCell!3204 0))(
  ( (ValueCellFull!3204 (v!5757 V!10437)) (EmptyCell!3204) )
))
(declare-fun mapRest!12060 () (Array (_ BitVec 32) ValueCell!3204))

(declare-fun mapKey!12060 () (_ BitVec 32))

(declare-datatypes ((array!17761 0))(
  ( (array!17762 (arr!8401 (Array (_ BitVec 32) ValueCell!3204)) (size!8753 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17761)

(declare-fun mapValue!12060 () ValueCell!3204)

(assert (=> mapNonEmpty!12060 (= (arr!8401 _values!1525) (store mapRest!12060 mapKey!12060 mapValue!12060))))

(declare-fun b!339163 () Bool)

(declare-fun e!208107 () Bool)

(declare-fun e!208105 () Bool)

(assert (=> b!339163 (= e!208107 e!208105)))

(declare-fun res!187399 () Bool)

(assert (=> b!339163 (=> (not res!187399) (not e!208105))))

(declare-datatypes ((SeekEntryResult!3251 0))(
  ( (MissingZero!3251 (index!15183 (_ BitVec 32))) (Found!3251 (index!15184 (_ BitVec 32))) (Intermediate!3251 (undefined!4063 Bool) (index!15185 (_ BitVec 32)) (x!33794 (_ BitVec 32))) (Undefined!3251) (MissingVacant!3251 (index!15186 (_ BitVec 32))) )
))
(declare-fun lt!161150 () SeekEntryResult!3251)

(get-info :version)

(assert (=> b!339163 (= res!187399 (and (not ((_ is Found!3251) lt!161150)) ((_ is MissingZero!3251) lt!161150)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17763 0))(
  ( (array!17764 (arr!8402 (Array (_ BitVec 32) (_ BitVec 64))) (size!8754 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17763)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17763 (_ BitVec 32)) SeekEntryResult!3251)

(assert (=> b!339163 (= lt!161150 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339164 () Bool)

(declare-datatypes ((Unit!10559 0))(
  ( (Unit!10560) )
))
(declare-fun e!208104 () Unit!10559)

(declare-fun Unit!10561 () Unit!10559)

(assert (=> b!339164 (= e!208104 Unit!10561)))

(declare-fun b!339165 () Bool)

(declare-fun res!187401 () Bool)

(assert (=> b!339165 (=> (not res!187401) (not e!208107))))

(declare-datatypes ((List!4847 0))(
  ( (Nil!4844) (Cons!4843 (h!5699 (_ BitVec 64)) (t!9957 List!4847)) )
))
(declare-fun arrayNoDuplicates!0 (array!17763 (_ BitVec 32) List!4847) Bool)

(assert (=> b!339165 (= res!187401 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4844))))

(declare-fun b!339167 () Bool)

(declare-fun e!208103 () Bool)

(declare-fun e!208102 () Bool)

(assert (=> b!339167 (= e!208103 (and e!208102 mapRes!12060))))

(declare-fun condMapEmpty!12060 () Bool)

(declare-fun mapDefault!12060 () ValueCell!3204)

(assert (=> b!339167 (= condMapEmpty!12060 (= (arr!8401 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3204)) mapDefault!12060)))))

(declare-fun b!339168 () Bool)

(assert (=> b!339168 (= e!208105 false)))

(declare-fun lt!161151 () Unit!10559)

(assert (=> b!339168 (= lt!161151 e!208104)))

(declare-fun c!52475 () Bool)

(declare-fun arrayContainsKey!0 (array!17763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339168 (= c!52475 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!339169 () Bool)

(declare-fun tp_is_empty!7095 () Bool)

(assert (=> b!339169 (= e!208106 tp_is_empty!7095)))

(declare-fun b!339170 () Bool)

(declare-fun Unit!10562 () Unit!10559)

(assert (=> b!339170 (= e!208104 Unit!10562)))

(declare-fun zeroValue!1467 () V!10437)

(declare-fun lt!161149 () Unit!10559)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10437)

(declare-fun lemmaArrayContainsKeyThenInListMap!282 (array!17763 array!17761 (_ BitVec 32) (_ BitVec 32) V!10437 V!10437 (_ BitVec 64) (_ BitVec 32) Int) Unit!10559)

(declare-fun arrayScanForKey!0 (array!17763 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339170 (= lt!161149 (lemmaArrayContainsKeyThenInListMap!282 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339170 false))

(declare-fun b!339171 () Bool)

(assert (=> b!339171 (= e!208102 tp_is_empty!7095)))

(declare-fun b!339166 () Bool)

(declare-fun res!187398 () Bool)

(assert (=> b!339166 (=> (not res!187398) (not e!208107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339166 (= res!187398 (validKeyInArray!0 k0!1348))))

(declare-fun res!187397 () Bool)

(assert (=> start!34072 (=> (not res!187397) (not e!208107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34072 (= res!187397 (validMask!0 mask!2385))))

(assert (=> start!34072 e!208107))

(assert (=> start!34072 true))

(assert (=> start!34072 tp_is_empty!7095))

(assert (=> start!34072 tp!24954))

(declare-fun array_inv!6220 (array!17761) Bool)

(assert (=> start!34072 (and (array_inv!6220 _values!1525) e!208103)))

(declare-fun array_inv!6221 (array!17763) Bool)

(assert (=> start!34072 (array_inv!6221 _keys!1895)))

(declare-fun b!339172 () Bool)

(declare-fun res!187403 () Bool)

(assert (=> b!339172 (=> (not res!187403) (not e!208107))))

(assert (=> b!339172 (= res!187403 (and (= (size!8753 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8754 _keys!1895) (size!8753 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339173 () Bool)

(declare-fun res!187400 () Bool)

(assert (=> b!339173 (=> (not res!187400) (not e!208107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17763 (_ BitVec 32)) Bool)

(assert (=> b!339173 (= res!187400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339174 () Bool)

(declare-fun res!187402 () Bool)

(assert (=> b!339174 (=> (not res!187402) (not e!208107))))

(declare-datatypes ((tuple2!5204 0))(
  ( (tuple2!5205 (_1!2612 (_ BitVec 64)) (_2!2612 V!10437)) )
))
(declare-datatypes ((List!4848 0))(
  ( (Nil!4845) (Cons!4844 (h!5700 tuple2!5204) (t!9958 List!4848)) )
))
(declare-datatypes ((ListLongMap!4131 0))(
  ( (ListLongMap!4132 (toList!2081 List!4848)) )
))
(declare-fun contains!2128 (ListLongMap!4131 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1601 (array!17763 array!17761 (_ BitVec 32) (_ BitVec 32) V!10437 V!10437 (_ BitVec 32) Int) ListLongMap!4131)

(assert (=> b!339174 (= res!187402 (not (contains!2128 (getCurrentListMap!1601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12060 () Bool)

(assert (=> mapIsEmpty!12060 mapRes!12060))

(assert (= (and start!34072 res!187397) b!339172))

(assert (= (and b!339172 res!187403) b!339173))

(assert (= (and b!339173 res!187400) b!339165))

(assert (= (and b!339165 res!187401) b!339166))

(assert (= (and b!339166 res!187398) b!339174))

(assert (= (and b!339174 res!187402) b!339163))

(assert (= (and b!339163 res!187399) b!339168))

(assert (= (and b!339168 c!52475) b!339170))

(assert (= (and b!339168 (not c!52475)) b!339164))

(assert (= (and b!339167 condMapEmpty!12060) mapIsEmpty!12060))

(assert (= (and b!339167 (not condMapEmpty!12060)) mapNonEmpty!12060))

(assert (= (and mapNonEmpty!12060 ((_ is ValueCellFull!3204) mapValue!12060)) b!339169))

(assert (= (and b!339167 ((_ is ValueCellFull!3204) mapDefault!12060)) b!339171))

(assert (= start!34072 b!339167))

(declare-fun m!342201 () Bool)

(assert (=> b!339168 m!342201))

(declare-fun m!342203 () Bool)

(assert (=> b!339163 m!342203))

(declare-fun m!342205 () Bool)

(assert (=> b!339165 m!342205))

(declare-fun m!342207 () Bool)

(assert (=> b!339173 m!342207))

(declare-fun m!342209 () Bool)

(assert (=> b!339174 m!342209))

(assert (=> b!339174 m!342209))

(declare-fun m!342211 () Bool)

(assert (=> b!339174 m!342211))

(declare-fun m!342213 () Bool)

(assert (=> b!339170 m!342213))

(assert (=> b!339170 m!342213))

(declare-fun m!342215 () Bool)

(assert (=> b!339170 m!342215))

(declare-fun m!342217 () Bool)

(assert (=> start!34072 m!342217))

(declare-fun m!342219 () Bool)

(assert (=> start!34072 m!342219))

(declare-fun m!342221 () Bool)

(assert (=> start!34072 m!342221))

(declare-fun m!342223 () Bool)

(assert (=> b!339166 m!342223))

(declare-fun m!342225 () Bool)

(assert (=> mapNonEmpty!12060 m!342225))

(check-sat (not b!339166) (not start!34072) (not b!339163) (not b!339173) (not b!339165) tp_is_empty!7095 (not b!339174) (not b!339170) (not mapNonEmpty!12060) (not b!339168) b_and!14355 (not b_next!7143))
(check-sat b_and!14355 (not b_next!7143))
