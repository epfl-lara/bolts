; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82810 () Bool)

(assert start!82810)

(declare-fun b_free!18915 () Bool)

(declare-fun b_next!18915 () Bool)

(assert (=> start!82810 (= b_free!18915 (not b_next!18915))))

(declare-fun tp!65866 () Bool)

(declare-fun b_and!30421 () Bool)

(assert (=> start!82810 (= tp!65866 b_and!30421)))

(declare-fun b!965452 () Bool)

(declare-fun e!544275 () Bool)

(declare-fun tp_is_empty!21717 () Bool)

(assert (=> b!965452 (= e!544275 tp_is_empty!21717)))

(declare-fun b!965453 () Bool)

(declare-fun res!646361 () Bool)

(declare-fun e!544277 () Bool)

(assert (=> b!965453 (=> (not res!646361) (not e!544277))))

(declare-datatypes ((array!59499 0))(
  ( (array!59500 (arr!28614 (Array (_ BitVec 32) (_ BitVec 64))) (size!29094 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59499)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59499 (_ BitVec 32)) Bool)

(assert (=> b!965453 (= res!646361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965454 () Bool)

(declare-fun e!544276 () Bool)

(assert (=> b!965454 (= e!544276 tp_is_empty!21717)))

(declare-fun b!965455 () Bool)

(declare-fun res!646364 () Bool)

(assert (=> b!965455 (=> (not res!646364) (not e!544277))))

(declare-datatypes ((List!19985 0))(
  ( (Nil!19982) (Cons!19981 (h!21143 (_ BitVec 64)) (t!28356 List!19985)) )
))
(declare-fun arrayNoDuplicates!0 (array!59499 (_ BitVec 32) List!19985) Bool)

(assert (=> b!965455 (= res!646364 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19982))))

(declare-fun b!965456 () Bool)

(declare-fun res!646362 () Bool)

(assert (=> b!965456 (=> (not res!646362) (not e!544277))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33939 0))(
  ( (V!33940 (val!10909 Int)) )
))
(declare-datatypes ((ValueCell!10377 0))(
  ( (ValueCellFull!10377 (v!13467 V!33939)) (EmptyCell!10377) )
))
(declare-datatypes ((array!59501 0))(
  ( (array!59502 (arr!28615 (Array (_ BitVec 32) ValueCell!10377)) (size!29095 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59501)

(declare-fun minValue!1342 () V!33939)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33939)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14106 0))(
  ( (tuple2!14107 (_1!7063 (_ BitVec 64)) (_2!7063 V!33939)) )
))
(declare-datatypes ((List!19986 0))(
  ( (Nil!19983) (Cons!19982 (h!21144 tuple2!14106) (t!28357 List!19986)) )
))
(declare-datatypes ((ListLongMap!12817 0))(
  ( (ListLongMap!12818 (toList!6424 List!19986)) )
))
(declare-fun contains!5478 (ListLongMap!12817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3609 (array!59499 array!59501 (_ BitVec 32) (_ BitVec 32) V!33939 V!33939 (_ BitVec 32) Int) ListLongMap!12817)

(assert (=> b!965456 (= res!646362 (contains!5478 (getCurrentListMap!3609 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28614 _keys!1686) i!803)))))

(declare-fun b!965457 () Bool)

(declare-fun res!646367 () Bool)

(assert (=> b!965457 (=> (not res!646367) (not e!544277))))

(assert (=> b!965457 (= res!646367 (and (= (size!29095 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29094 _keys!1686) (size!29095 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34570 () Bool)

(declare-fun mapRes!34570 () Bool)

(assert (=> mapIsEmpty!34570 mapRes!34570))

(declare-fun res!646363 () Bool)

(assert (=> start!82810 (=> (not res!646363) (not e!544277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82810 (= res!646363 (validMask!0 mask!2110))))

(assert (=> start!82810 e!544277))

(assert (=> start!82810 true))

(declare-fun e!544278 () Bool)

(declare-fun array_inv!22069 (array!59501) Bool)

(assert (=> start!82810 (and (array_inv!22069 _values!1400) e!544278)))

(declare-fun array_inv!22070 (array!59499) Bool)

(assert (=> start!82810 (array_inv!22070 _keys!1686)))

(assert (=> start!82810 tp!65866))

(assert (=> start!82810 tp_is_empty!21717))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun b!965458 () Bool)

(assert (=> b!965458 (= e!544277 (and (bvsle from!2084 newFrom!159) (bvsgt newFrom!159 (size!29094 _keys!1686))))))

(declare-fun b!965459 () Bool)

(declare-fun res!646365 () Bool)

(assert (=> b!965459 (=> (not res!646365) (not e!544277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965459 (= res!646365 (validKeyInArray!0 (select (arr!28614 _keys!1686) i!803)))))

(declare-fun b!965460 () Bool)

(assert (=> b!965460 (= e!544278 (and e!544276 mapRes!34570))))

(declare-fun condMapEmpty!34570 () Bool)

(declare-fun mapDefault!34570 () ValueCell!10377)

(assert (=> b!965460 (= condMapEmpty!34570 (= (arr!28615 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10377)) mapDefault!34570)))))

(declare-fun b!965461 () Bool)

(declare-fun res!646366 () Bool)

(assert (=> b!965461 (=> (not res!646366) (not e!544277))))

(assert (=> b!965461 (= res!646366 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29094 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29094 _keys!1686))))))

(declare-fun mapNonEmpty!34570 () Bool)

(declare-fun tp!65865 () Bool)

(assert (=> mapNonEmpty!34570 (= mapRes!34570 (and tp!65865 e!544275))))

(declare-fun mapValue!34570 () ValueCell!10377)

(declare-fun mapRest!34570 () (Array (_ BitVec 32) ValueCell!10377))

(declare-fun mapKey!34570 () (_ BitVec 32))

(assert (=> mapNonEmpty!34570 (= (arr!28615 _values!1400) (store mapRest!34570 mapKey!34570 mapValue!34570))))

(assert (= (and start!82810 res!646363) b!965457))

(assert (= (and b!965457 res!646367) b!965453))

(assert (= (and b!965453 res!646361) b!965455))

(assert (= (and b!965455 res!646364) b!965461))

(assert (= (and b!965461 res!646366) b!965459))

(assert (= (and b!965459 res!646365) b!965456))

(assert (= (and b!965456 res!646362) b!965458))

(assert (= (and b!965460 condMapEmpty!34570) mapIsEmpty!34570))

(assert (= (and b!965460 (not condMapEmpty!34570)) mapNonEmpty!34570))

(get-info :version)

(assert (= (and mapNonEmpty!34570 ((_ is ValueCellFull!10377) mapValue!34570)) b!965452))

(assert (= (and b!965460 ((_ is ValueCellFull!10377) mapDefault!34570)) b!965454))

(assert (= start!82810 b!965460))

(declare-fun m!894585 () Bool)

(assert (=> b!965453 m!894585))

(declare-fun m!894587 () Bool)

(assert (=> b!965456 m!894587))

(declare-fun m!894589 () Bool)

(assert (=> b!965456 m!894589))

(assert (=> b!965456 m!894587))

(assert (=> b!965456 m!894589))

(declare-fun m!894591 () Bool)

(assert (=> b!965456 m!894591))

(declare-fun m!894593 () Bool)

(assert (=> b!965455 m!894593))

(declare-fun m!894595 () Bool)

(assert (=> mapNonEmpty!34570 m!894595))

(declare-fun m!894597 () Bool)

(assert (=> start!82810 m!894597))

(declare-fun m!894599 () Bool)

(assert (=> start!82810 m!894599))

(declare-fun m!894601 () Bool)

(assert (=> start!82810 m!894601))

(assert (=> b!965459 m!894589))

(assert (=> b!965459 m!894589))

(declare-fun m!894603 () Bool)

(assert (=> b!965459 m!894603))

(check-sat (not b_next!18915) (not b!965456) (not start!82810) tp_is_empty!21717 (not mapNonEmpty!34570) b_and!30421 (not b!965459) (not b!965453) (not b!965455))
(check-sat b_and!30421 (not b_next!18915))
