; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82816 () Bool)

(assert start!82816)

(declare-fun mapIsEmpty!34579 () Bool)

(declare-fun mapRes!34579 () Bool)

(assert (=> mapIsEmpty!34579 mapRes!34579))

(declare-fun res!646410 () Bool)

(declare-fun e!544323 () Bool)

(assert (=> start!82816 (=> (not res!646410) (not e!544323))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82816 (= res!646410 (validMask!0 mask!2110))))

(assert (=> start!82816 e!544323))

(assert (=> start!82816 true))

(declare-datatypes ((V!33947 0))(
  ( (V!33948 (val!10912 Int)) )
))
(declare-datatypes ((ValueCell!10380 0))(
  ( (ValueCellFull!10380 (v!13470 V!33947)) (EmptyCell!10380) )
))
(declare-datatypes ((array!59511 0))(
  ( (array!59512 (arr!28620 (Array (_ BitVec 32) ValueCell!10380)) (size!29100 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59511)

(declare-fun e!544324 () Bool)

(declare-fun array_inv!22071 (array!59511) Bool)

(assert (=> start!82816 (and (array_inv!22071 _values!1400) e!544324)))

(declare-datatypes ((array!59513 0))(
  ( (array!59514 (arr!28621 (Array (_ BitVec 32) (_ BitVec 64))) (size!29101 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59513)

(declare-fun array_inv!22072 (array!59513) Bool)

(assert (=> start!82816 (array_inv!22072 _keys!1686)))

(declare-fun b!965527 () Bool)

(declare-fun res!646412 () Bool)

(assert (=> b!965527 (=> (not res!646412) (not e!544323))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965527 (= res!646412 (and (= (size!29100 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29101 _keys!1686) (size!29100 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965528 () Bool)

(declare-fun res!646411 () Bool)

(assert (=> b!965528 (=> (not res!646411) (not e!544323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59513 (_ BitVec 32)) Bool)

(assert (=> b!965528 (= res!646411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965529 () Bool)

(declare-fun e!544320 () Bool)

(declare-fun tp_is_empty!21723 () Bool)

(assert (=> b!965529 (= e!544320 tp_is_empty!21723)))

(declare-fun b!965530 () Bool)

(declare-fun res!646409 () Bool)

(assert (=> b!965530 (=> (not res!646409) (not e!544323))))

(declare-datatypes ((List!19990 0))(
  ( (Nil!19987) (Cons!19986 (h!21148 (_ BitVec 64)) (t!28361 List!19990)) )
))
(declare-fun arrayNoDuplicates!0 (array!59513 (_ BitVec 32) List!19990) Bool)

(assert (=> b!965530 (= res!646409 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19987))))

(declare-fun b!965531 () Bool)

(declare-fun e!544322 () Bool)

(assert (=> b!965531 (= e!544324 (and e!544322 mapRes!34579))))

(declare-fun condMapEmpty!34579 () Bool)

(declare-fun mapDefault!34579 () ValueCell!10380)

(assert (=> b!965531 (= condMapEmpty!34579 (= (arr!28620 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10380)) mapDefault!34579)))))

(declare-fun mapNonEmpty!34579 () Bool)

(declare-fun tp!65878 () Bool)

(assert (=> mapNonEmpty!34579 (= mapRes!34579 (and tp!65878 e!544320))))

(declare-fun mapValue!34579 () ValueCell!10380)

(declare-fun mapRest!34579 () (Array (_ BitVec 32) ValueCell!10380))

(declare-fun mapKey!34579 () (_ BitVec 32))

(assert (=> mapNonEmpty!34579 (= (arr!28620 _values!1400) (store mapRest!34579 mapKey!34579 mapValue!34579))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun b!965532 () Bool)

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965532 (= e!544323 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29101 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29101 _keys!1686)) (bvslt i!803 #b00000000000000000000000000000000)))))

(declare-fun b!965533 () Bool)

(assert (=> b!965533 (= e!544322 tp_is_empty!21723)))

(assert (= (and start!82816 res!646410) b!965527))

(assert (= (and b!965527 res!646412) b!965528))

(assert (= (and b!965528 res!646411) b!965530))

(assert (= (and b!965530 res!646409) b!965532))

(assert (= (and b!965531 condMapEmpty!34579) mapIsEmpty!34579))

(assert (= (and b!965531 (not condMapEmpty!34579)) mapNonEmpty!34579))

(get-info :version)

(assert (= (and mapNonEmpty!34579 ((_ is ValueCellFull!10380) mapValue!34579)) b!965529))

(assert (= (and b!965531 ((_ is ValueCellFull!10380) mapDefault!34579)) b!965533))

(assert (= start!82816 b!965531))

(declare-fun m!894637 () Bool)

(assert (=> start!82816 m!894637))

(declare-fun m!894639 () Bool)

(assert (=> start!82816 m!894639))

(declare-fun m!894641 () Bool)

(assert (=> start!82816 m!894641))

(declare-fun m!894643 () Bool)

(assert (=> b!965528 m!894643))

(declare-fun m!894645 () Bool)

(assert (=> b!965530 m!894645))

(declare-fun m!894647 () Bool)

(assert (=> mapNonEmpty!34579 m!894647))

(check-sat tp_is_empty!21723 (not mapNonEmpty!34579) (not b!965528) (not start!82816) (not b!965530))
(check-sat)
