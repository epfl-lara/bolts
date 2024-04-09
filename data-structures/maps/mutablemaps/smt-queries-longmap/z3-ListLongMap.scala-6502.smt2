; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82882 () Bool)

(assert start!82882)

(declare-fun b_free!18981 () Bool)

(declare-fun b_next!18981 () Bool)

(assert (=> start!82882 (= b_free!18981 (not b_next!18981))))

(declare-fun tp!66073 () Bool)

(declare-fun b_and!30487 () Bool)

(assert (=> start!82882 (= tp!66073 b_and!30487)))

(declare-fun b!966415 () Bool)

(declare-fun res!647004 () Bool)

(declare-fun e!544818 () Bool)

(assert (=> b!966415 (=> (not res!647004) (not e!544818))))

(declare-datatypes ((array!59641 0))(
  ( (array!59642 (arr!28685 (Array (_ BitVec 32) (_ BitVec 64))) (size!29165 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59641)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966415 (= res!647004 (validKeyInArray!0 (select (arr!28685 _keys!1686) i!803)))))

(declare-fun b!966416 () Bool)

(declare-fun res!647000 () Bool)

(assert (=> b!966416 (=> (not res!647000) (not e!544818))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34035 0))(
  ( (V!34036 (val!10945 Int)) )
))
(declare-datatypes ((ValueCell!10413 0))(
  ( (ValueCellFull!10413 (v!13503 V!34035)) (EmptyCell!10413) )
))
(declare-datatypes ((array!59643 0))(
  ( (array!59644 (arr!28686 (Array (_ BitVec 32) ValueCell!10413)) (size!29166 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59643)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966416 (= res!647000 (and (= (size!29166 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29165 _keys!1686) (size!29166 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966417 () Bool)

(declare-fun res!647001 () Bool)

(assert (=> b!966417 (=> (not res!647001) (not e!544818))))

(declare-datatypes ((List!20035 0))(
  ( (Nil!20032) (Cons!20031 (h!21193 (_ BitVec 64)) (t!28406 List!20035)) )
))
(declare-fun arrayNoDuplicates!0 (array!59641 (_ BitVec 32) List!20035) Bool)

(assert (=> b!966417 (= res!647001 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20032))))

(declare-fun b!966418 () Bool)

(declare-fun res!647002 () Bool)

(assert (=> b!966418 (=> (not res!647002) (not e!544818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59641 (_ BitVec 32)) Bool)

(assert (=> b!966418 (= res!647002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966419 () Bool)

(declare-fun e!544816 () Bool)

(declare-fun tp_is_empty!21789 () Bool)

(assert (=> b!966419 (= e!544816 tp_is_empty!21789)))

(declare-fun mapIsEmpty!34678 () Bool)

(declare-fun mapRes!34678 () Bool)

(assert (=> mapIsEmpty!34678 mapRes!34678))

(declare-fun b!966420 () Bool)

(declare-fun res!647006 () Bool)

(assert (=> b!966420 (=> (not res!647006) (not e!544818))))

(declare-fun minValue!1342 () V!34035)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34035)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14160 0))(
  ( (tuple2!14161 (_1!7090 (_ BitVec 64)) (_2!7090 V!34035)) )
))
(declare-datatypes ((List!20036 0))(
  ( (Nil!20033) (Cons!20032 (h!21194 tuple2!14160) (t!28407 List!20036)) )
))
(declare-datatypes ((ListLongMap!12871 0))(
  ( (ListLongMap!12872 (toList!6451 List!20036)) )
))
(declare-fun contains!5502 (ListLongMap!12871 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3636 (array!59641 array!59643 (_ BitVec 32) (_ BitVec 32) V!34035 V!34035 (_ BitVec 32) Int) ListLongMap!12871)

(assert (=> b!966420 (= res!647006 (contains!5502 (getCurrentListMap!3636 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28685 _keys!1686) i!803)))))

(declare-fun b!966421 () Bool)

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966421 (= e!544818 (and (bvsgt from!2084 newFrom!159) (bvsle from!2084 #b00000000000000000000000000000000)))))

(declare-fun res!647005 () Bool)

(assert (=> start!82882 (=> (not res!647005) (not e!544818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82882 (= res!647005 (validMask!0 mask!2110))))

(assert (=> start!82882 e!544818))

(assert (=> start!82882 true))

(declare-fun e!544817 () Bool)

(declare-fun array_inv!22115 (array!59643) Bool)

(assert (=> start!82882 (and (array_inv!22115 _values!1400) e!544817)))

(declare-fun array_inv!22116 (array!59641) Bool)

(assert (=> start!82882 (array_inv!22116 _keys!1686)))

(assert (=> start!82882 tp!66073))

(assert (=> start!82882 tp_is_empty!21789))

(declare-fun mapNonEmpty!34678 () Bool)

(declare-fun tp!66072 () Bool)

(assert (=> mapNonEmpty!34678 (= mapRes!34678 (and tp!66072 e!544816))))

(declare-fun mapRest!34678 () (Array (_ BitVec 32) ValueCell!10413))

(declare-fun mapKey!34678 () (_ BitVec 32))

(declare-fun mapValue!34678 () ValueCell!10413)

(assert (=> mapNonEmpty!34678 (= (arr!28686 _values!1400) (store mapRest!34678 mapKey!34678 mapValue!34678))))

(declare-fun b!966422 () Bool)

(declare-fun e!544815 () Bool)

(assert (=> b!966422 (= e!544817 (and e!544815 mapRes!34678))))

(declare-fun condMapEmpty!34678 () Bool)

(declare-fun mapDefault!34678 () ValueCell!10413)

(assert (=> b!966422 (= condMapEmpty!34678 (= (arr!28686 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10413)) mapDefault!34678)))))

(declare-fun b!966423 () Bool)

(assert (=> b!966423 (= e!544815 tp_is_empty!21789)))

(declare-fun b!966424 () Bool)

(declare-fun res!647003 () Bool)

(assert (=> b!966424 (=> (not res!647003) (not e!544818))))

(assert (=> b!966424 (= res!647003 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29165 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29165 _keys!1686))))))

(assert (= (and start!82882 res!647005) b!966416))

(assert (= (and b!966416 res!647000) b!966418))

(assert (= (and b!966418 res!647002) b!966417))

(assert (= (and b!966417 res!647001) b!966424))

(assert (= (and b!966424 res!647003) b!966415))

(assert (= (and b!966415 res!647004) b!966420))

(assert (= (and b!966420 res!647006) b!966421))

(assert (= (and b!966422 condMapEmpty!34678) mapIsEmpty!34678))

(assert (= (and b!966422 (not condMapEmpty!34678)) mapNonEmpty!34678))

(get-info :version)

(assert (= (and mapNonEmpty!34678 ((_ is ValueCellFull!10413) mapValue!34678)) b!966419))

(assert (= (and b!966422 ((_ is ValueCellFull!10413) mapDefault!34678)) b!966423))

(assert (= start!82882 b!966422))

(declare-fun m!895275 () Bool)

(assert (=> mapNonEmpty!34678 m!895275))

(declare-fun m!895277 () Bool)

(assert (=> b!966415 m!895277))

(assert (=> b!966415 m!895277))

(declare-fun m!895279 () Bool)

(assert (=> b!966415 m!895279))

(declare-fun m!895281 () Bool)

(assert (=> b!966418 m!895281))

(declare-fun m!895283 () Bool)

(assert (=> b!966417 m!895283))

(declare-fun m!895285 () Bool)

(assert (=> start!82882 m!895285))

(declare-fun m!895287 () Bool)

(assert (=> start!82882 m!895287))

(declare-fun m!895289 () Bool)

(assert (=> start!82882 m!895289))

(declare-fun m!895291 () Bool)

(assert (=> b!966420 m!895291))

(assert (=> b!966420 m!895277))

(assert (=> b!966420 m!895291))

(assert (=> b!966420 m!895277))

(declare-fun m!895293 () Bool)

(assert (=> b!966420 m!895293))

(check-sat tp_is_empty!21789 (not mapNonEmpty!34678) b_and!30487 (not b!966418) (not b!966420) (not b_next!18981) (not b!966417) (not b!966415) (not start!82882))
(check-sat b_and!30487 (not b_next!18981))
