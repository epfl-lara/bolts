; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34510 () Bool)

(assert start!34510)

(declare-fun b_free!7425 () Bool)

(declare-fun b_next!7425 () Bool)

(assert (=> start!34510 (= b_free!7425 (not b_next!7425))))

(declare-fun tp!25820 () Bool)

(declare-fun b_and!14651 () Bool)

(assert (=> start!34510 (= tp!25820 b_and!14651)))

(declare-fun b!344582 () Bool)

(declare-fun e!211230 () Bool)

(assert (=> b!344582 (= e!211230 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18309 0))(
  ( (array!18310 (arr!8668 (Array (_ BitVec 32) (_ BitVec 64))) (size!9020 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18309)

(declare-datatypes ((SeekEntryResult!3339 0))(
  ( (MissingZero!3339 (index!15535 (_ BitVec 32))) (Found!3339 (index!15536 (_ BitVec 32))) (Intermediate!3339 (undefined!4151 Bool) (index!15537 (_ BitVec 32)) (x!34328 (_ BitVec 32))) (Undefined!3339) (MissingVacant!3339 (index!15538 (_ BitVec 32))) )
))
(declare-fun lt!162672 () SeekEntryResult!3339)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18309 (_ BitVec 32)) SeekEntryResult!3339)

(assert (=> b!344582 (= lt!162672 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12504 () Bool)

(declare-fun mapRes!12504 () Bool)

(declare-fun tp!25821 () Bool)

(declare-fun e!211232 () Bool)

(assert (=> mapNonEmpty!12504 (= mapRes!12504 (and tp!25821 e!211232))))

(declare-datatypes ((V!10813 0))(
  ( (V!10814 (val!3733 Int)) )
))
(declare-datatypes ((ValueCell!3345 0))(
  ( (ValueCellFull!3345 (v!5905 V!10813)) (EmptyCell!3345) )
))
(declare-fun mapValue!12504 () ValueCell!3345)

(declare-datatypes ((array!18311 0))(
  ( (array!18312 (arr!8669 (Array (_ BitVec 32) ValueCell!3345)) (size!9021 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18311)

(declare-fun mapRest!12504 () (Array (_ BitVec 32) ValueCell!3345))

(declare-fun mapKey!12504 () (_ BitVec 32))

(assert (=> mapNonEmpty!12504 (= (arr!8669 _values!1525) (store mapRest!12504 mapKey!12504 mapValue!12504))))

(declare-fun b!344583 () Bool)

(declare-fun res!190674 () Bool)

(assert (=> b!344583 (=> (not res!190674) (not e!211230))))

(declare-fun zeroValue!1467 () V!10813)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10813)

(declare-datatypes ((tuple2!5390 0))(
  ( (tuple2!5391 (_1!2705 (_ BitVec 64)) (_2!2705 V!10813)) )
))
(declare-datatypes ((List!5036 0))(
  ( (Nil!5033) (Cons!5032 (h!5888 tuple2!5390) (t!10160 List!5036)) )
))
(declare-datatypes ((ListLongMap!4317 0))(
  ( (ListLongMap!4318 (toList!2174 List!5036)) )
))
(declare-fun contains!2228 (ListLongMap!4317 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1694 (array!18309 array!18311 (_ BitVec 32) (_ BitVec 32) V!10813 V!10813 (_ BitVec 32) Int) ListLongMap!4317)

(assert (=> b!344583 (= res!190674 (not (contains!2228 (getCurrentListMap!1694 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12504 () Bool)

(assert (=> mapIsEmpty!12504 mapRes!12504))

(declare-fun res!190673 () Bool)

(assert (=> start!34510 (=> (not res!190673) (not e!211230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34510 (= res!190673 (validMask!0 mask!2385))))

(assert (=> start!34510 e!211230))

(assert (=> start!34510 true))

(declare-fun tp_is_empty!7377 () Bool)

(assert (=> start!34510 tp_is_empty!7377))

(assert (=> start!34510 tp!25820))

(declare-fun e!211229 () Bool)

(declare-fun array_inv!6410 (array!18311) Bool)

(assert (=> start!34510 (and (array_inv!6410 _values!1525) e!211229)))

(declare-fun array_inv!6411 (array!18309) Bool)

(assert (=> start!34510 (array_inv!6411 _keys!1895)))

(declare-fun b!344584 () Bool)

(declare-fun res!190671 () Bool)

(assert (=> b!344584 (=> (not res!190671) (not e!211230))))

(assert (=> b!344584 (= res!190671 (and (= (size!9021 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9020 _keys!1895) (size!9021 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344585 () Bool)

(declare-fun res!190676 () Bool)

(assert (=> b!344585 (=> (not res!190676) (not e!211230))))

(declare-datatypes ((List!5037 0))(
  ( (Nil!5034) (Cons!5033 (h!5889 (_ BitVec 64)) (t!10161 List!5037)) )
))
(declare-fun arrayNoDuplicates!0 (array!18309 (_ BitVec 32) List!5037) Bool)

(assert (=> b!344585 (= res!190676 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5034))))

(declare-fun b!344586 () Bool)

(assert (=> b!344586 (= e!211232 tp_is_empty!7377)))

(declare-fun b!344587 () Bool)

(declare-fun res!190675 () Bool)

(assert (=> b!344587 (=> (not res!190675) (not e!211230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344587 (= res!190675 (validKeyInArray!0 k0!1348))))

(declare-fun b!344588 () Bool)

(declare-fun res!190672 () Bool)

(assert (=> b!344588 (=> (not res!190672) (not e!211230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18309 (_ BitVec 32)) Bool)

(assert (=> b!344588 (= res!190672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344589 () Bool)

(declare-fun e!211233 () Bool)

(assert (=> b!344589 (= e!211233 tp_is_empty!7377)))

(declare-fun b!344590 () Bool)

(assert (=> b!344590 (= e!211229 (and e!211233 mapRes!12504))))

(declare-fun condMapEmpty!12504 () Bool)

(declare-fun mapDefault!12504 () ValueCell!3345)

(assert (=> b!344590 (= condMapEmpty!12504 (= (arr!8669 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3345)) mapDefault!12504)))))

(assert (= (and start!34510 res!190673) b!344584))

(assert (= (and b!344584 res!190671) b!344588))

(assert (= (and b!344588 res!190672) b!344585))

(assert (= (and b!344585 res!190676) b!344587))

(assert (= (and b!344587 res!190675) b!344583))

(assert (= (and b!344583 res!190674) b!344582))

(assert (= (and b!344590 condMapEmpty!12504) mapIsEmpty!12504))

(assert (= (and b!344590 (not condMapEmpty!12504)) mapNonEmpty!12504))

(get-info :version)

(assert (= (and mapNonEmpty!12504 ((_ is ValueCellFull!3345) mapValue!12504)) b!344586))

(assert (= (and b!344590 ((_ is ValueCellFull!3345) mapDefault!12504)) b!344589))

(assert (= start!34510 b!344590))

(declare-fun m!346157 () Bool)

(assert (=> b!344583 m!346157))

(assert (=> b!344583 m!346157))

(declare-fun m!346159 () Bool)

(assert (=> b!344583 m!346159))

(declare-fun m!346161 () Bool)

(assert (=> start!34510 m!346161))

(declare-fun m!346163 () Bool)

(assert (=> start!34510 m!346163))

(declare-fun m!346165 () Bool)

(assert (=> start!34510 m!346165))

(declare-fun m!346167 () Bool)

(assert (=> b!344585 m!346167))

(declare-fun m!346169 () Bool)

(assert (=> b!344588 m!346169))

(declare-fun m!346171 () Bool)

(assert (=> mapNonEmpty!12504 m!346171))

(declare-fun m!346173 () Bool)

(assert (=> b!344587 m!346173))

(declare-fun m!346175 () Bool)

(assert (=> b!344582 m!346175))

(check-sat (not mapNonEmpty!12504) (not b!344588) b_and!14651 (not b!344587) (not b!344582) (not start!34510) (not b_next!7425) (not b!344583) (not b!344585) tp_is_empty!7377)
(check-sat b_and!14651 (not b_next!7425))
