; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82738 () Bool)

(assert start!82738)

(declare-fun b_free!18843 () Bool)

(declare-fun b_next!18843 () Bool)

(assert (=> start!82738 (= b_free!18843 (not b_next!18843))))

(declare-fun tp!65649 () Bool)

(declare-fun b_and!30349 () Bool)

(assert (=> start!82738 (= tp!65649 b_and!30349)))

(declare-fun mapNonEmpty!34462 () Bool)

(declare-fun mapRes!34462 () Bool)

(declare-fun tp!65650 () Bool)

(declare-fun e!543706 () Bool)

(assert (=> mapNonEmpty!34462 (= mapRes!34462 (and tp!65650 e!543706))))

(declare-datatypes ((V!33843 0))(
  ( (V!33844 (val!10873 Int)) )
))
(declare-datatypes ((ValueCell!10341 0))(
  ( (ValueCellFull!10341 (v!13431 V!33843)) (EmptyCell!10341) )
))
(declare-datatypes ((array!59363 0))(
  ( (array!59364 (arr!28546 (Array (_ BitVec 32) ValueCell!10341)) (size!29026 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59363)

(declare-fun mapKey!34462 () (_ BitVec 32))

(declare-fun mapRest!34462 () (Array (_ BitVec 32) ValueCell!10341))

(declare-fun mapValue!34462 () ValueCell!10341)

(assert (=> mapNonEmpty!34462 (= (arr!28546 _values!1400) (store mapRest!34462 mapKey!34462 mapValue!34462))))

(declare-fun b!964382 () Bool)

(declare-fun res!645618 () Bool)

(declare-fun e!543704 () Bool)

(assert (=> b!964382 (=> (not res!645618) (not e!543704))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-datatypes ((array!59365 0))(
  ( (array!59366 (arr!28547 (Array (_ BitVec 32) (_ BitVec 64))) (size!29027 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59365)

(assert (=> b!964382 (= res!645618 (and (= (size!29026 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29027 _keys!1686) (size!29026 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964383 () Bool)

(declare-fun e!543705 () Bool)

(assert (=> b!964383 (= e!543704 (not e!543705))))

(declare-fun res!645621 () Bool)

(assert (=> b!964383 (=> res!645621 e!543705)))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964383 (= res!645621 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29027 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun minValue!1342 () V!33843)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33843)

(declare-datatypes ((tuple2!14058 0))(
  ( (tuple2!14059 (_1!7039 (_ BitVec 64)) (_2!7039 V!33843)) )
))
(declare-datatypes ((List!19935 0))(
  ( (Nil!19932) (Cons!19931 (h!21093 tuple2!14058) (t!28306 List!19935)) )
))
(declare-datatypes ((ListLongMap!12769 0))(
  ( (ListLongMap!12770 (toList!6400 List!19935)) )
))
(declare-fun contains!5454 (ListLongMap!12769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3585 (array!59365 array!59363 (_ BitVec 32) (_ BitVec 32) V!33843 V!33843 (_ BitVec 32) Int) ListLongMap!12769)

(assert (=> b!964383 (contains!5454 (getCurrentListMap!3585 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28547 _keys!1686) i!803))))

(declare-datatypes ((Unit!32255 0))(
  ( (Unit!32256) )
))
(declare-fun lt!431063 () Unit!32255)

(declare-fun lemmaInListMapFromThenInFromMinusOne!35 (array!59365 array!59363 (_ BitVec 32) (_ BitVec 32) V!33843 V!33843 (_ BitVec 32) (_ BitVec 32) Int) Unit!32255)

(assert (=> b!964383 (= lt!431063 (lemmaInListMapFromThenInFromMinusOne!35 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964384 () Bool)

(declare-fun e!543707 () Bool)

(declare-fun tp_is_empty!21645 () Bool)

(assert (=> b!964384 (= e!543707 tp_is_empty!21645)))

(declare-fun mapIsEmpty!34462 () Bool)

(assert (=> mapIsEmpty!34462 mapRes!34462))

(declare-fun res!645619 () Bool)

(assert (=> start!82738 (=> (not res!645619) (not e!543704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82738 (= res!645619 (validMask!0 mask!2110))))

(assert (=> start!82738 e!543704))

(assert (=> start!82738 true))

(declare-fun e!543709 () Bool)

(declare-fun array_inv!22019 (array!59363) Bool)

(assert (=> start!82738 (and (array_inv!22019 _values!1400) e!543709)))

(declare-fun array_inv!22020 (array!59365) Bool)

(assert (=> start!82738 (array_inv!22020 _keys!1686)))

(assert (=> start!82738 tp!65649))

(assert (=> start!82738 tp_is_empty!21645))

(declare-fun b!964385 () Bool)

(declare-fun res!645616 () Bool)

(assert (=> b!964385 (=> (not res!645616) (not e!543704))))

(assert (=> b!964385 (= res!645616 (contains!5454 (getCurrentListMap!3585 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28547 _keys!1686) i!803)))))

(declare-fun b!964386 () Bool)

(declare-fun res!645623 () Bool)

(assert (=> b!964386 (=> (not res!645623) (not e!543704))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964386 (= res!645623 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29027 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29027 _keys!1686))))))

(declare-fun b!964387 () Bool)

(assert (=> b!964387 (= e!543709 (and e!543707 mapRes!34462))))

(declare-fun condMapEmpty!34462 () Bool)

(declare-fun mapDefault!34462 () ValueCell!10341)

(assert (=> b!964387 (= condMapEmpty!34462 (= (arr!28546 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10341)) mapDefault!34462)))))

(declare-fun b!964388 () Bool)

(assert (=> b!964388 (= e!543705 true)))

(assert (=> b!964388 (contains!5454 (getCurrentListMap!3585 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28547 _keys!1686) i!803))))

(declare-fun lt!431064 () Unit!32255)

(declare-fun lemmaInListMapFromThenInFromSmaller!27 (array!59365 array!59363 (_ BitVec 32) (_ BitVec 32) V!33843 V!33843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32255)

(assert (=> b!964388 (= lt!431064 (lemmaInListMapFromThenInFromSmaller!27 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964389 () Bool)

(declare-fun res!645615 () Bool)

(assert (=> b!964389 (=> (not res!645615) (not e!543704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59365 (_ BitVec 32)) Bool)

(assert (=> b!964389 (= res!645615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964390 () Bool)

(declare-fun res!645622 () Bool)

(assert (=> b!964390 (=> (not res!645622) (not e!543704))))

(assert (=> b!964390 (= res!645622 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964391 () Bool)

(declare-fun res!645617 () Bool)

(assert (=> b!964391 (=> (not res!645617) (not e!543704))))

(declare-datatypes ((List!19936 0))(
  ( (Nil!19933) (Cons!19932 (h!21094 (_ BitVec 64)) (t!28307 List!19936)) )
))
(declare-fun arrayNoDuplicates!0 (array!59365 (_ BitVec 32) List!19936) Bool)

(assert (=> b!964391 (= res!645617 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19933))))

(declare-fun b!964392 () Bool)

(declare-fun res!645620 () Bool)

(assert (=> b!964392 (=> (not res!645620) (not e!543704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964392 (= res!645620 (validKeyInArray!0 (select (arr!28547 _keys!1686) i!803)))))

(declare-fun b!964393 () Bool)

(assert (=> b!964393 (= e!543706 tp_is_empty!21645)))

(assert (= (and start!82738 res!645619) b!964382))

(assert (= (and b!964382 res!645618) b!964389))

(assert (= (and b!964389 res!645615) b!964391))

(assert (= (and b!964391 res!645617) b!964386))

(assert (= (and b!964386 res!645623) b!964392))

(assert (= (and b!964392 res!645620) b!964385))

(assert (= (and b!964385 res!645616) b!964390))

(assert (= (and b!964390 res!645622) b!964383))

(assert (= (and b!964383 (not res!645621)) b!964388))

(assert (= (and b!964387 condMapEmpty!34462) mapIsEmpty!34462))

(assert (= (and b!964387 (not condMapEmpty!34462)) mapNonEmpty!34462))

(get-info :version)

(assert (= (and mapNonEmpty!34462 ((_ is ValueCellFull!10341) mapValue!34462)) b!964393))

(assert (= (and b!964387 ((_ is ValueCellFull!10341) mapDefault!34462)) b!964384))

(assert (= start!82738 b!964387))

(declare-fun m!893733 () Bool)

(assert (=> b!964389 m!893733))

(declare-fun m!893735 () Bool)

(assert (=> b!964392 m!893735))

(assert (=> b!964392 m!893735))

(declare-fun m!893737 () Bool)

(assert (=> b!964392 m!893737))

(declare-fun m!893739 () Bool)

(assert (=> start!82738 m!893739))

(declare-fun m!893741 () Bool)

(assert (=> start!82738 m!893741))

(declare-fun m!893743 () Bool)

(assert (=> start!82738 m!893743))

(declare-fun m!893745 () Bool)

(assert (=> mapNonEmpty!34462 m!893745))

(declare-fun m!893747 () Bool)

(assert (=> b!964391 m!893747))

(declare-fun m!893749 () Bool)

(assert (=> b!964383 m!893749))

(assert (=> b!964383 m!893735))

(assert (=> b!964383 m!893749))

(assert (=> b!964383 m!893735))

(declare-fun m!893751 () Bool)

(assert (=> b!964383 m!893751))

(declare-fun m!893753 () Bool)

(assert (=> b!964383 m!893753))

(declare-fun m!893755 () Bool)

(assert (=> b!964385 m!893755))

(assert (=> b!964385 m!893735))

(assert (=> b!964385 m!893755))

(assert (=> b!964385 m!893735))

(declare-fun m!893757 () Bool)

(assert (=> b!964385 m!893757))

(declare-fun m!893759 () Bool)

(assert (=> b!964388 m!893759))

(assert (=> b!964388 m!893735))

(assert (=> b!964388 m!893759))

(assert (=> b!964388 m!893735))

(declare-fun m!893761 () Bool)

(assert (=> b!964388 m!893761))

(declare-fun m!893763 () Bool)

(assert (=> b!964388 m!893763))

(check-sat (not b!964388) (not b!964385) (not b!964392) (not b_next!18843) (not mapNonEmpty!34462) (not b!964391) b_and!30349 (not b!964389) (not start!82738) (not b!964383) tp_is_empty!21645)
(check-sat b_and!30349 (not b_next!18843))
