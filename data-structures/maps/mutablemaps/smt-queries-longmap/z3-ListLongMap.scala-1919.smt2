; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34170 () Bool)

(assert start!34170)

(declare-fun b_free!7185 () Bool)

(declare-fun b_next!7185 () Bool)

(assert (=> start!34170 (= b_free!7185 (not b_next!7185))))

(declare-fun tp!25089 () Bool)

(declare-fun b_and!14403 () Bool)

(assert (=> start!34170 (= tp!25089 b_and!14403)))

(declare-fun b!340201 () Bool)

(declare-fun e!208718 () Bool)

(declare-fun e!208721 () Bool)

(declare-fun mapRes!12132 () Bool)

(assert (=> b!340201 (= e!208718 (and e!208721 mapRes!12132))))

(declare-fun condMapEmpty!12132 () Bool)

(declare-datatypes ((V!10493 0))(
  ( (V!10494 (val!3613 Int)) )
))
(declare-datatypes ((ValueCell!3225 0))(
  ( (ValueCellFull!3225 (v!5781 V!10493)) (EmptyCell!3225) )
))
(declare-datatypes ((array!17845 0))(
  ( (array!17846 (arr!8440 (Array (_ BitVec 32) ValueCell!3225)) (size!8792 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17845)

(declare-fun mapDefault!12132 () ValueCell!3225)

(assert (=> b!340201 (= condMapEmpty!12132 (= (arr!8440 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3225)) mapDefault!12132)))))

(declare-fun b!340202 () Bool)

(declare-fun res!187956 () Bool)

(declare-fun e!208722 () Bool)

(assert (=> b!340202 (=> (not res!187956) (not e!208722))))

(declare-datatypes ((array!17847 0))(
  ( (array!17848 (arr!8441 (Array (_ BitVec 32) (_ BitVec 64))) (size!8793 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17847)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17847 (_ BitVec 32)) Bool)

(assert (=> b!340202 (= res!187956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12132 () Bool)

(declare-fun tp!25088 () Bool)

(declare-fun e!208719 () Bool)

(assert (=> mapNonEmpty!12132 (= mapRes!12132 (and tp!25088 e!208719))))

(declare-fun mapRest!12132 () (Array (_ BitVec 32) ValueCell!3225))

(declare-fun mapKey!12132 () (_ BitVec 32))

(declare-fun mapValue!12132 () ValueCell!3225)

(assert (=> mapNonEmpty!12132 (= (arr!8440 _values!1525) (store mapRest!12132 mapKey!12132 mapValue!12132))))

(declare-fun mapIsEmpty!12132 () Bool)

(assert (=> mapIsEmpty!12132 mapRes!12132))

(declare-fun b!340203 () Bool)

(assert (=> b!340203 (= e!208722 false)))

(declare-datatypes ((SeekEntryResult!3263 0))(
  ( (MissingZero!3263 (index!15231 (_ BitVec 32))) (Found!3263 (index!15232 (_ BitVec 32))) (Intermediate!3263 (undefined!4075 Bool) (index!15233 (_ BitVec 32)) (x!33892 (_ BitVec 32))) (Undefined!3263) (MissingVacant!3263 (index!15234 (_ BitVec 32))) )
))
(declare-fun lt!161544 () SeekEntryResult!3263)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17847 (_ BitVec 32)) SeekEntryResult!3263)

(assert (=> b!340203 (= lt!161544 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!187959 () Bool)

(assert (=> start!34170 (=> (not res!187959) (not e!208722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34170 (= res!187959 (validMask!0 mask!2385))))

(assert (=> start!34170 e!208722))

(assert (=> start!34170 true))

(declare-fun tp_is_empty!7137 () Bool)

(assert (=> start!34170 tp_is_empty!7137))

(assert (=> start!34170 tp!25089))

(declare-fun array_inv!6246 (array!17845) Bool)

(assert (=> start!34170 (and (array_inv!6246 _values!1525) e!208718)))

(declare-fun array_inv!6247 (array!17847) Bool)

(assert (=> start!34170 (array_inv!6247 _keys!1895)))

(declare-fun b!340204 () Bool)

(assert (=> b!340204 (= e!208719 tp_is_empty!7137)))

(declare-fun b!340205 () Bool)

(assert (=> b!340205 (= e!208721 tp_is_empty!7137)))

(declare-fun b!340206 () Bool)

(declare-fun res!187960 () Bool)

(assert (=> b!340206 (=> (not res!187960) (not e!208722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340206 (= res!187960 (validKeyInArray!0 k0!1348))))

(declare-fun b!340207 () Bool)

(declare-fun res!187961 () Bool)

(assert (=> b!340207 (=> (not res!187961) (not e!208722))))

(declare-datatypes ((List!4875 0))(
  ( (Nil!4872) (Cons!4871 (h!5727 (_ BitVec 64)) (t!9991 List!4875)) )
))
(declare-fun arrayNoDuplicates!0 (array!17847 (_ BitVec 32) List!4875) Bool)

(assert (=> b!340207 (= res!187961 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4872))))

(declare-fun b!340208 () Bool)

(declare-fun res!187958 () Bool)

(assert (=> b!340208 (=> (not res!187958) (not e!208722))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340208 (= res!187958 (and (= (size!8792 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8793 _keys!1895) (size!8792 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340209 () Bool)

(declare-fun res!187957 () Bool)

(assert (=> b!340209 (=> (not res!187957) (not e!208722))))

(declare-fun zeroValue!1467 () V!10493)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10493)

(declare-datatypes ((tuple2!5230 0))(
  ( (tuple2!5231 (_1!2625 (_ BitVec 64)) (_2!2625 V!10493)) )
))
(declare-datatypes ((List!4876 0))(
  ( (Nil!4873) (Cons!4872 (h!5728 tuple2!5230) (t!9992 List!4876)) )
))
(declare-datatypes ((ListLongMap!4157 0))(
  ( (ListLongMap!4158 (toList!2094 List!4876)) )
))
(declare-fun contains!2144 (ListLongMap!4157 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1614 (array!17847 array!17845 (_ BitVec 32) (_ BitVec 32) V!10493 V!10493 (_ BitVec 32) Int) ListLongMap!4157)

(assert (=> b!340209 (= res!187957 (not (contains!2144 (getCurrentListMap!1614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34170 res!187959) b!340208))

(assert (= (and b!340208 res!187958) b!340202))

(assert (= (and b!340202 res!187956) b!340207))

(assert (= (and b!340207 res!187961) b!340206))

(assert (= (and b!340206 res!187960) b!340209))

(assert (= (and b!340209 res!187957) b!340203))

(assert (= (and b!340201 condMapEmpty!12132) mapIsEmpty!12132))

(assert (= (and b!340201 (not condMapEmpty!12132)) mapNonEmpty!12132))

(get-info :version)

(assert (= (and mapNonEmpty!12132 ((_ is ValueCellFull!3225) mapValue!12132)) b!340204))

(assert (= (and b!340201 ((_ is ValueCellFull!3225) mapDefault!12132)) b!340205))

(assert (= start!34170 b!340201))

(declare-fun m!342959 () Bool)

(assert (=> b!340209 m!342959))

(assert (=> b!340209 m!342959))

(declare-fun m!342961 () Bool)

(assert (=> b!340209 m!342961))

(declare-fun m!342963 () Bool)

(assert (=> b!340207 m!342963))

(declare-fun m!342965 () Bool)

(assert (=> b!340203 m!342965))

(declare-fun m!342967 () Bool)

(assert (=> b!340202 m!342967))

(declare-fun m!342969 () Bool)

(assert (=> mapNonEmpty!12132 m!342969))

(declare-fun m!342971 () Bool)

(assert (=> start!34170 m!342971))

(declare-fun m!342973 () Bool)

(assert (=> start!34170 m!342973))

(declare-fun m!342975 () Bool)

(assert (=> start!34170 m!342975))

(declare-fun m!342977 () Bool)

(assert (=> b!340206 m!342977))

(check-sat (not b!340209) (not b!340207) (not b!340202) tp_is_empty!7137 (not start!34170) b_and!14403 (not b!340203) (not b!340206) (not b_next!7185) (not mapNonEmpty!12132))
(check-sat b_and!14403 (not b_next!7185))
