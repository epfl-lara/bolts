; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82726 () Bool)

(assert start!82726)

(declare-fun b_free!18831 () Bool)

(declare-fun b_next!18831 () Bool)

(assert (=> start!82726 (= b_free!18831 (not b_next!18831))))

(declare-fun tp!65614 () Bool)

(declare-fun b_and!30337 () Bool)

(assert (=> start!82726 (= tp!65614 b_and!30337)))

(declare-fun b!964167 () Bool)

(declare-fun res!645458 () Bool)

(declare-fun e!543597 () Bool)

(assert (=> b!964167 (=> (not res!645458) (not e!543597))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33827 0))(
  ( (V!33828 (val!10867 Int)) )
))
(declare-datatypes ((ValueCell!10335 0))(
  ( (ValueCellFull!10335 (v!13425 V!33827)) (EmptyCell!10335) )
))
(declare-datatypes ((array!59339 0))(
  ( (array!59340 (arr!28534 (Array (_ BitVec 32) ValueCell!10335)) (size!29014 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59339)

(declare-datatypes ((array!59341 0))(
  ( (array!59342 (arr!28535 (Array (_ BitVec 32) (_ BitVec 64))) (size!29015 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59341)

(declare-fun minValue!1342 () V!33827)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33827)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14048 0))(
  ( (tuple2!14049 (_1!7034 (_ BitVec 64)) (_2!7034 V!33827)) )
))
(declare-datatypes ((List!19926 0))(
  ( (Nil!19923) (Cons!19922 (h!21084 tuple2!14048) (t!28297 List!19926)) )
))
(declare-datatypes ((ListLongMap!12759 0))(
  ( (ListLongMap!12760 (toList!6395 List!19926)) )
))
(declare-fun contains!5449 (ListLongMap!12759 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3580 (array!59341 array!59339 (_ BitVec 32) (_ BitVec 32) V!33827 V!33827 (_ BitVec 32) Int) ListLongMap!12759)

(assert (=> b!964167 (= res!645458 (contains!5449 (getCurrentListMap!3580 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28535 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34444 () Bool)

(declare-fun mapRes!34444 () Bool)

(declare-fun tp!65613 () Bool)

(declare-fun e!543599 () Bool)

(assert (=> mapNonEmpty!34444 (= mapRes!34444 (and tp!65613 e!543599))))

(declare-fun mapValue!34444 () ValueCell!10335)

(declare-fun mapKey!34444 () (_ BitVec 32))

(declare-fun mapRest!34444 () (Array (_ BitVec 32) ValueCell!10335))

(assert (=> mapNonEmpty!34444 (= (arr!28534 _values!1400) (store mapRest!34444 mapKey!34444 mapValue!34444))))

(declare-fun b!964168 () Bool)

(declare-fun res!645454 () Bool)

(assert (=> b!964168 (=> (not res!645454) (not e!543597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964168 (= res!645454 (validKeyInArray!0 (select (arr!28535 _keys!1686) i!803)))))

(declare-fun b!964169 () Bool)

(declare-fun e!543601 () Bool)

(declare-fun e!543598 () Bool)

(assert (=> b!964169 (= e!543601 (and e!543598 mapRes!34444))))

(declare-fun condMapEmpty!34444 () Bool)

(declare-fun mapDefault!34444 () ValueCell!10335)

(assert (=> b!964169 (= condMapEmpty!34444 (= (arr!28534 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10335)) mapDefault!34444)))))

(declare-fun mapIsEmpty!34444 () Bool)

(assert (=> mapIsEmpty!34444 mapRes!34444))

(declare-fun b!964170 () Bool)

(declare-fun e!543596 () Bool)

(assert (=> b!964170 (= e!543597 (not e!543596))))

(declare-fun res!645461 () Bool)

(assert (=> b!964170 (=> res!645461 e!543596)))

(assert (=> b!964170 (= res!645461 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29015 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964170 (contains!5449 (getCurrentListMap!3580 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28535 _keys!1686) i!803))))

(declare-datatypes ((Unit!32245 0))(
  ( (Unit!32246) )
))
(declare-fun lt!431027 () Unit!32245)

(declare-fun lemmaInListMapFromThenInFromMinusOne!31 (array!59341 array!59339 (_ BitVec 32) (_ BitVec 32) V!33827 V!33827 (_ BitVec 32) (_ BitVec 32) Int) Unit!32245)

(assert (=> b!964170 (= lt!431027 (lemmaInListMapFromThenInFromMinusOne!31 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964171 () Bool)

(declare-fun res!645453 () Bool)

(assert (=> b!964171 (=> (not res!645453) (not e!543597))))

(assert (=> b!964171 (= res!645453 (and (= (size!29014 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29015 _keys!1686) (size!29014 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964172 () Bool)

(declare-fun res!645455 () Bool)

(assert (=> b!964172 (=> (not res!645455) (not e!543597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59341 (_ BitVec 32)) Bool)

(assert (=> b!964172 (= res!645455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964173 () Bool)

(declare-fun res!645460 () Bool)

(assert (=> b!964173 (=> (not res!645460) (not e!543597))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964173 (= res!645460 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29015 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29015 _keys!1686))))))

(declare-fun b!964174 () Bool)

(declare-fun res!645456 () Bool)

(assert (=> b!964174 (=> (not res!645456) (not e!543597))))

(assert (=> b!964174 (= res!645456 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964175 () Bool)

(assert (=> b!964175 (= e!543596 true)))

(assert (=> b!964175 (contains!5449 (getCurrentListMap!3580 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28535 _keys!1686) i!803))))

(declare-fun lt!431028 () Unit!32245)

(declare-fun lemmaInListMapFromThenInFromSmaller!23 (array!59341 array!59339 (_ BitVec 32) (_ BitVec 32) V!33827 V!33827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32245)

(assert (=> b!964175 (= lt!431028 (lemmaInListMapFromThenInFromSmaller!23 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964166 () Bool)

(declare-fun tp_is_empty!21633 () Bool)

(assert (=> b!964166 (= e!543598 tp_is_empty!21633)))

(declare-fun res!645459 () Bool)

(assert (=> start!82726 (=> (not res!645459) (not e!543597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82726 (= res!645459 (validMask!0 mask!2110))))

(assert (=> start!82726 e!543597))

(assert (=> start!82726 true))

(declare-fun array_inv!22013 (array!59339) Bool)

(assert (=> start!82726 (and (array_inv!22013 _values!1400) e!543601)))

(declare-fun array_inv!22014 (array!59341) Bool)

(assert (=> start!82726 (array_inv!22014 _keys!1686)))

(assert (=> start!82726 tp!65614))

(assert (=> start!82726 tp_is_empty!21633))

(declare-fun b!964176 () Bool)

(declare-fun res!645457 () Bool)

(assert (=> b!964176 (=> (not res!645457) (not e!543597))))

(declare-datatypes ((List!19927 0))(
  ( (Nil!19924) (Cons!19923 (h!21085 (_ BitVec 64)) (t!28298 List!19927)) )
))
(declare-fun arrayNoDuplicates!0 (array!59341 (_ BitVec 32) List!19927) Bool)

(assert (=> b!964176 (= res!645457 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19924))))

(declare-fun b!964177 () Bool)

(assert (=> b!964177 (= e!543599 tp_is_empty!21633)))

(assert (= (and start!82726 res!645459) b!964171))

(assert (= (and b!964171 res!645453) b!964172))

(assert (= (and b!964172 res!645455) b!964176))

(assert (= (and b!964176 res!645457) b!964173))

(assert (= (and b!964173 res!645460) b!964168))

(assert (= (and b!964168 res!645454) b!964167))

(assert (= (and b!964167 res!645458) b!964174))

(assert (= (and b!964174 res!645456) b!964170))

(assert (= (and b!964170 (not res!645461)) b!964175))

(assert (= (and b!964169 condMapEmpty!34444) mapIsEmpty!34444))

(assert (= (and b!964169 (not condMapEmpty!34444)) mapNonEmpty!34444))

(get-info :version)

(assert (= (and mapNonEmpty!34444 ((_ is ValueCellFull!10335) mapValue!34444)) b!964177))

(assert (= (and b!964169 ((_ is ValueCellFull!10335) mapDefault!34444)) b!964166))

(assert (= start!82726 b!964169))

(declare-fun m!893541 () Bool)

(assert (=> b!964168 m!893541))

(assert (=> b!964168 m!893541))

(declare-fun m!893543 () Bool)

(assert (=> b!964168 m!893543))

(declare-fun m!893545 () Bool)

(assert (=> b!964176 m!893545))

(declare-fun m!893547 () Bool)

(assert (=> start!82726 m!893547))

(declare-fun m!893549 () Bool)

(assert (=> start!82726 m!893549))

(declare-fun m!893551 () Bool)

(assert (=> start!82726 m!893551))

(declare-fun m!893553 () Bool)

(assert (=> b!964172 m!893553))

(declare-fun m!893555 () Bool)

(assert (=> b!964170 m!893555))

(assert (=> b!964170 m!893541))

(assert (=> b!964170 m!893555))

(assert (=> b!964170 m!893541))

(declare-fun m!893557 () Bool)

(assert (=> b!964170 m!893557))

(declare-fun m!893559 () Bool)

(assert (=> b!964170 m!893559))

(declare-fun m!893561 () Bool)

(assert (=> b!964175 m!893561))

(assert (=> b!964175 m!893541))

(assert (=> b!964175 m!893561))

(assert (=> b!964175 m!893541))

(declare-fun m!893563 () Bool)

(assert (=> b!964175 m!893563))

(declare-fun m!893565 () Bool)

(assert (=> b!964175 m!893565))

(declare-fun m!893567 () Bool)

(assert (=> mapNonEmpty!34444 m!893567))

(declare-fun m!893569 () Bool)

(assert (=> b!964167 m!893569))

(assert (=> b!964167 m!893541))

(assert (=> b!964167 m!893569))

(assert (=> b!964167 m!893541))

(declare-fun m!893571 () Bool)

(assert (=> b!964167 m!893571))

(check-sat tp_is_empty!21633 (not b_next!18831) (not b!964172) (not mapNonEmpty!34444) (not b!964175) (not b!964167) (not b!964176) (not start!82726) (not b!964170) b_and!30337 (not b!964168))
(check-sat b_and!30337 (not b_next!18831))
