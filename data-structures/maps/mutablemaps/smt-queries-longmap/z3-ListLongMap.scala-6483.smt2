; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82768 () Bool)

(assert start!82768)

(declare-fun b_free!18873 () Bool)

(declare-fun b_next!18873 () Bool)

(assert (=> start!82768 (= b_free!18873 (not b_next!18873))))

(declare-fun tp!65739 () Bool)

(declare-fun b_and!30379 () Bool)

(assert (=> start!82768 (= tp!65739 b_and!30379)))

(declare-fun b!964880 () Bool)

(declare-fun e!543962 () Bool)

(assert (=> b!964880 (= e!543962 false)))

(declare-fun lt!431139 () Bool)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33883 0))(
  ( (V!33884 (val!10888 Int)) )
))
(declare-datatypes ((ValueCell!10356 0))(
  ( (ValueCellFull!10356 (v!13446 V!33883)) (EmptyCell!10356) )
))
(declare-datatypes ((array!59419 0))(
  ( (array!59420 (arr!28574 (Array (_ BitVec 32) ValueCell!10356)) (size!29054 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59419)

(declare-datatypes ((array!59421 0))(
  ( (array!59422 (arr!28575 (Array (_ BitVec 32) (_ BitVec 64))) (size!29055 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59421)

(declare-fun minValue!1342 () V!33883)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33883)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14076 0))(
  ( (tuple2!14077 (_1!7048 (_ BitVec 64)) (_2!7048 V!33883)) )
))
(declare-datatypes ((List!19952 0))(
  ( (Nil!19949) (Cons!19948 (h!21110 tuple2!14076) (t!28323 List!19952)) )
))
(declare-datatypes ((ListLongMap!12787 0))(
  ( (ListLongMap!12788 (toList!6409 List!19952)) )
))
(declare-fun contains!5463 (ListLongMap!12787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3594 (array!59421 array!59419 (_ BitVec 32) (_ BitVec 32) V!33883 V!33883 (_ BitVec 32) Int) ListLongMap!12787)

(assert (=> b!964880 (= lt!431139 (contains!5463 (getCurrentListMap!3594 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28575 _keys!1686) i!803)))))

(declare-fun b!964881 () Bool)

(declare-fun e!543961 () Bool)

(declare-fun tp_is_empty!21675 () Bool)

(assert (=> b!964881 (= e!543961 tp_is_empty!21675)))

(declare-fun mapNonEmpty!34507 () Bool)

(declare-fun mapRes!34507 () Bool)

(declare-fun tp!65740 () Bool)

(assert (=> mapNonEmpty!34507 (= mapRes!34507 (and tp!65740 e!543961))))

(declare-fun mapKey!34507 () (_ BitVec 32))

(declare-fun mapValue!34507 () ValueCell!10356)

(declare-fun mapRest!34507 () (Array (_ BitVec 32) ValueCell!10356))

(assert (=> mapNonEmpty!34507 (= (arr!28574 _values!1400) (store mapRest!34507 mapKey!34507 mapValue!34507))))

(declare-fun res!645981 () Bool)

(assert (=> start!82768 (=> (not res!645981) (not e!543962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82768 (= res!645981 (validMask!0 mask!2110))))

(assert (=> start!82768 e!543962))

(assert (=> start!82768 true))

(declare-fun e!543960 () Bool)

(declare-fun array_inv!22037 (array!59419) Bool)

(assert (=> start!82768 (and (array_inv!22037 _values!1400) e!543960)))

(declare-fun array_inv!22038 (array!59421) Bool)

(assert (=> start!82768 (array_inv!22038 _keys!1686)))

(assert (=> start!82768 tp!65739))

(assert (=> start!82768 tp_is_empty!21675))

(declare-fun b!964882 () Bool)

(declare-fun e!543964 () Bool)

(assert (=> b!964882 (= e!543964 tp_is_empty!21675)))

(declare-fun b!964883 () Bool)

(declare-fun res!645983 () Bool)

(assert (=> b!964883 (=> (not res!645983) (not e!543962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59421 (_ BitVec 32)) Bool)

(assert (=> b!964883 (= res!645983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964884 () Bool)

(declare-fun res!645979 () Bool)

(assert (=> b!964884 (=> (not res!645979) (not e!543962))))

(declare-datatypes ((List!19953 0))(
  ( (Nil!19950) (Cons!19949 (h!21111 (_ BitVec 64)) (t!28324 List!19953)) )
))
(declare-fun arrayNoDuplicates!0 (array!59421 (_ BitVec 32) List!19953) Bool)

(assert (=> b!964884 (= res!645979 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19950))))

(declare-fun b!964885 () Bool)

(declare-fun res!645982 () Bool)

(assert (=> b!964885 (=> (not res!645982) (not e!543962))))

(assert (=> b!964885 (= res!645982 (and (= (size!29054 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29055 _keys!1686) (size!29054 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964886 () Bool)

(declare-fun res!645978 () Bool)

(assert (=> b!964886 (=> (not res!645978) (not e!543962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964886 (= res!645978 (validKeyInArray!0 (select (arr!28575 _keys!1686) i!803)))))

(declare-fun b!964887 () Bool)

(declare-fun res!645980 () Bool)

(assert (=> b!964887 (=> (not res!645980) (not e!543962))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964887 (= res!645980 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29055 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29055 _keys!1686))))))

(declare-fun b!964888 () Bool)

(assert (=> b!964888 (= e!543960 (and e!543964 mapRes!34507))))

(declare-fun condMapEmpty!34507 () Bool)

(declare-fun mapDefault!34507 () ValueCell!10356)

(assert (=> b!964888 (= condMapEmpty!34507 (= (arr!28574 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10356)) mapDefault!34507)))))

(declare-fun mapIsEmpty!34507 () Bool)

(assert (=> mapIsEmpty!34507 mapRes!34507))

(assert (= (and start!82768 res!645981) b!964885))

(assert (= (and b!964885 res!645982) b!964883))

(assert (= (and b!964883 res!645983) b!964884))

(assert (= (and b!964884 res!645979) b!964887))

(assert (= (and b!964887 res!645980) b!964886))

(assert (= (and b!964886 res!645978) b!964880))

(assert (= (and b!964888 condMapEmpty!34507) mapIsEmpty!34507))

(assert (= (and b!964888 (not condMapEmpty!34507)) mapNonEmpty!34507))

(get-info :version)

(assert (= (and mapNonEmpty!34507 ((_ is ValueCellFull!10356) mapValue!34507)) b!964881))

(assert (= (and b!964888 ((_ is ValueCellFull!10356) mapDefault!34507)) b!964882))

(assert (= start!82768 b!964888))

(declare-fun m!894165 () Bool)

(assert (=> b!964886 m!894165))

(assert (=> b!964886 m!894165))

(declare-fun m!894167 () Bool)

(assert (=> b!964886 m!894167))

(declare-fun m!894169 () Bool)

(assert (=> b!964880 m!894169))

(assert (=> b!964880 m!894165))

(assert (=> b!964880 m!894169))

(assert (=> b!964880 m!894165))

(declare-fun m!894171 () Bool)

(assert (=> b!964880 m!894171))

(declare-fun m!894173 () Bool)

(assert (=> b!964883 m!894173))

(declare-fun m!894175 () Bool)

(assert (=> start!82768 m!894175))

(declare-fun m!894177 () Bool)

(assert (=> start!82768 m!894177))

(declare-fun m!894179 () Bool)

(assert (=> start!82768 m!894179))

(declare-fun m!894181 () Bool)

(assert (=> b!964884 m!894181))

(declare-fun m!894183 () Bool)

(assert (=> mapNonEmpty!34507 m!894183))

(check-sat (not b_next!18873) (not b!964884) (not b!964883) (not b!964880) b_and!30379 (not start!82768) (not b!964886) (not mapNonEmpty!34507) tp_is_empty!21675)
(check-sat b_and!30379 (not b_next!18873))
