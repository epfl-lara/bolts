; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82954 () Bool)

(assert start!82954)

(declare-fun b_free!19053 () Bool)

(declare-fun b_next!19053 () Bool)

(assert (=> start!82954 (= b_free!19053 (not b_next!19053))))

(declare-fun tp!66289 () Bool)

(declare-fun b_and!30559 () Bool)

(assert (=> start!82954 (= tp!66289 b_and!30559)))

(declare-fun mapNonEmpty!34786 () Bool)

(declare-fun mapRes!34786 () Bool)

(declare-fun tp!66288 () Bool)

(declare-fun e!545358 () Bool)

(assert (=> mapNonEmpty!34786 (= mapRes!34786 (and tp!66288 e!545358))))

(declare-datatypes ((V!34131 0))(
  ( (V!34132 (val!10981 Int)) )
))
(declare-datatypes ((ValueCell!10449 0))(
  ( (ValueCellFull!10449 (v!13539 V!34131)) (EmptyCell!10449) )
))
(declare-fun mapValue!34786 () ValueCell!10449)

(declare-datatypes ((array!59777 0))(
  ( (array!59778 (arr!28753 (Array (_ BitVec 32) ValueCell!10449)) (size!29233 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59777)

(declare-fun mapKey!34786 () (_ BitVec 32))

(declare-fun mapRest!34786 () (Array (_ BitVec 32) ValueCell!10449))

(assert (=> mapNonEmpty!34786 (= (arr!28753 _values!1400) (store mapRest!34786 mapKey!34786 mapValue!34786))))

(declare-fun b!967563 () Bool)

(declare-fun e!545355 () Bool)

(assert (=> b!967563 (= e!545355 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59779 0))(
  ( (array!59780 (arr!28754 (Array (_ BitVec 32) (_ BitVec 64))) (size!29234 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59779)

(declare-fun minValue!1342 () V!34131)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34131)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14216 0))(
  ( (tuple2!14217 (_1!7118 (_ BitVec 64)) (_2!7118 V!34131)) )
))
(declare-datatypes ((List!20089 0))(
  ( (Nil!20086) (Cons!20085 (h!21247 tuple2!14216) (t!28460 List!20089)) )
))
(declare-datatypes ((ListLongMap!12927 0))(
  ( (ListLongMap!12928 (toList!6479 List!20089)) )
))
(declare-fun contains!5530 (ListLongMap!12927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3664 (array!59779 array!59777 (_ BitVec 32) (_ BitVec 32) V!34131 V!34131 (_ BitVec 32) Int) ListLongMap!12927)

(assert (=> b!967563 (contains!5530 (getCurrentListMap!3664 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28754 _keys!1686) i!803))))

(declare-datatypes ((Unit!32309 0))(
  ( (Unit!32310) )
))
(declare-fun lt!431391 () Unit!32309)

(declare-fun lemmaInListMapFromThenInFromMinusOne!61 (array!59779 array!59777 (_ BitVec 32) (_ BitVec 32) V!34131 V!34131 (_ BitVec 32) (_ BitVec 32) Int) Unit!32309)

(assert (=> b!967563 (= lt!431391 (lemmaInListMapFromThenInFromMinusOne!61 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967564 () Bool)

(declare-fun e!545359 () Bool)

(declare-fun e!545356 () Bool)

(assert (=> b!967564 (= e!545359 (and e!545356 mapRes!34786))))

(declare-fun condMapEmpty!34786 () Bool)

(declare-fun mapDefault!34786 () ValueCell!10449)

(assert (=> b!967564 (= condMapEmpty!34786 (= (arr!28753 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10449)) mapDefault!34786)))))

(declare-fun b!967565 () Bool)

(declare-fun res!647827 () Bool)

(assert (=> b!967565 (=> (not res!647827) (not e!545355))))

(assert (=> b!967565 (= res!647827 (and (= (size!29233 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29234 _keys!1686) (size!29233 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967566 () Bool)

(declare-fun res!647829 () Bool)

(assert (=> b!967566 (=> (not res!647829) (not e!545355))))

(assert (=> b!967566 (= res!647829 (contains!5530 (getCurrentListMap!3664 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28754 _keys!1686) i!803)))))

(declare-fun b!967567 () Bool)

(declare-fun res!647831 () Bool)

(assert (=> b!967567 (=> (not res!647831) (not e!545355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967567 (= res!647831 (validKeyInArray!0 (select (arr!28754 _keys!1686) i!803)))))

(declare-fun b!967568 () Bool)

(declare-fun tp_is_empty!21861 () Bool)

(assert (=> b!967568 (= e!545358 tp_is_empty!21861)))

(declare-fun b!967569 () Bool)

(declare-fun res!647825 () Bool)

(assert (=> b!967569 (=> (not res!647825) (not e!545355))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967569 (= res!647825 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29234 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29234 _keys!1686))))))

(declare-fun b!967570 () Bool)

(declare-fun res!647826 () Bool)

(assert (=> b!967570 (=> (not res!647826) (not e!545355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59779 (_ BitVec 32)) Bool)

(assert (=> b!967570 (= res!647826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967571 () Bool)

(declare-fun res!647824 () Bool)

(assert (=> b!967571 (=> (not res!647824) (not e!545355))))

(declare-datatypes ((List!20090 0))(
  ( (Nil!20087) (Cons!20086 (h!21248 (_ BitVec 64)) (t!28461 List!20090)) )
))
(declare-fun arrayNoDuplicates!0 (array!59779 (_ BitVec 32) List!20090) Bool)

(assert (=> b!967571 (= res!647824 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20087))))

(declare-fun b!967572 () Bool)

(declare-fun res!647828 () Bool)

(assert (=> b!967572 (=> (not res!647828) (not e!545355))))

(assert (=> b!967572 (= res!647828 (bvsgt from!2084 newFrom!159))))

(declare-fun res!647830 () Bool)

(assert (=> start!82954 (=> (not res!647830) (not e!545355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82954 (= res!647830 (validMask!0 mask!2110))))

(assert (=> start!82954 e!545355))

(assert (=> start!82954 true))

(declare-fun array_inv!22155 (array!59777) Bool)

(assert (=> start!82954 (and (array_inv!22155 _values!1400) e!545359)))

(declare-fun array_inv!22156 (array!59779) Bool)

(assert (=> start!82954 (array_inv!22156 _keys!1686)))

(assert (=> start!82954 tp!66289))

(assert (=> start!82954 tp_is_empty!21861))

(declare-fun mapIsEmpty!34786 () Bool)

(assert (=> mapIsEmpty!34786 mapRes!34786))

(declare-fun b!967573 () Bool)

(assert (=> b!967573 (= e!545356 tp_is_empty!21861)))

(assert (= (and start!82954 res!647830) b!967565))

(assert (= (and b!967565 res!647827) b!967570))

(assert (= (and b!967570 res!647826) b!967571))

(assert (= (and b!967571 res!647824) b!967569))

(assert (= (and b!967569 res!647825) b!967567))

(assert (= (and b!967567 res!647831) b!967566))

(assert (= (and b!967566 res!647829) b!967572))

(assert (= (and b!967572 res!647828) b!967563))

(assert (= (and b!967564 condMapEmpty!34786) mapIsEmpty!34786))

(assert (= (and b!967564 (not condMapEmpty!34786)) mapNonEmpty!34786))

(get-info :version)

(assert (= (and mapNonEmpty!34786 ((_ is ValueCellFull!10449) mapValue!34786)) b!967568))

(assert (= (and b!967564 ((_ is ValueCellFull!10449) mapDefault!34786)) b!967573))

(assert (= start!82954 b!967564))

(declare-fun m!896163 () Bool)

(assert (=> start!82954 m!896163))

(declare-fun m!896165 () Bool)

(assert (=> start!82954 m!896165))

(declare-fun m!896167 () Bool)

(assert (=> start!82954 m!896167))

(declare-fun m!896169 () Bool)

(assert (=> b!967567 m!896169))

(assert (=> b!967567 m!896169))

(declare-fun m!896171 () Bool)

(assert (=> b!967567 m!896171))

(declare-fun m!896173 () Bool)

(assert (=> b!967570 m!896173))

(declare-fun m!896175 () Bool)

(assert (=> mapNonEmpty!34786 m!896175))

(declare-fun m!896177 () Bool)

(assert (=> b!967566 m!896177))

(assert (=> b!967566 m!896169))

(assert (=> b!967566 m!896177))

(assert (=> b!967566 m!896169))

(declare-fun m!896179 () Bool)

(assert (=> b!967566 m!896179))

(declare-fun m!896181 () Bool)

(assert (=> b!967571 m!896181))

(declare-fun m!896183 () Bool)

(assert (=> b!967563 m!896183))

(assert (=> b!967563 m!896169))

(assert (=> b!967563 m!896183))

(assert (=> b!967563 m!896169))

(declare-fun m!896185 () Bool)

(assert (=> b!967563 m!896185))

(declare-fun m!896187 () Bool)

(assert (=> b!967563 m!896187))

(check-sat (not b_next!19053) b_and!30559 (not b!967567) (not b!967563) (not b!967570) (not start!82954) tp_is_empty!21861 (not mapNonEmpty!34786) (not b!967566) (not b!967571))
(check-sat b_and!30559 (not b_next!19053))
