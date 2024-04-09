; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82912 () Bool)

(assert start!82912)

(declare-fun b_free!19011 () Bool)

(declare-fun b_next!19011 () Bool)

(assert (=> start!82912 (= b_free!19011 (not b_next!19011))))

(declare-fun tp!66163 () Bool)

(declare-fun b_and!30517 () Bool)

(assert (=> start!82912 (= tp!66163 b_and!30517)))

(declare-fun b!966870 () Bool)

(declare-fun e!545043 () Bool)

(declare-fun e!545041 () Bool)

(declare-fun mapRes!34723 () Bool)

(assert (=> b!966870 (= e!545043 (and e!545041 mapRes!34723))))

(declare-fun condMapEmpty!34723 () Bool)

(declare-datatypes ((V!34075 0))(
  ( (V!34076 (val!10960 Int)) )
))
(declare-datatypes ((ValueCell!10428 0))(
  ( (ValueCellFull!10428 (v!13518 V!34075)) (EmptyCell!10428) )
))
(declare-datatypes ((array!59701 0))(
  ( (array!59702 (arr!28715 (Array (_ BitVec 32) ValueCell!10428)) (size!29195 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59701)

(declare-fun mapDefault!34723 () ValueCell!10428)

(assert (=> b!966870 (= condMapEmpty!34723 (= (arr!28715 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10428)) mapDefault!34723)))))

(declare-fun b!966871 () Bool)

(declare-fun tp_is_empty!21819 () Bool)

(assert (=> b!966871 (= e!545041 tp_is_empty!21819)))

(declare-fun b!966872 () Bool)

(declare-fun res!647324 () Bool)

(declare-fun e!545044 () Bool)

(assert (=> b!966872 (=> (not res!647324) (not e!545044))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966872 (= res!647324 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966873 () Bool)

(declare-fun res!647322 () Bool)

(assert (=> b!966873 (=> (not res!647322) (not e!545044))))

(declare-datatypes ((array!59703 0))(
  ( (array!59704 (arr!28716 (Array (_ BitVec 32) (_ BitVec 64))) (size!29196 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59703)

(declare-datatypes ((List!20061 0))(
  ( (Nil!20058) (Cons!20057 (h!21219 (_ BitVec 64)) (t!28432 List!20061)) )
))
(declare-fun arrayNoDuplicates!0 (array!59703 (_ BitVec 32) List!20061) Bool)

(assert (=> b!966873 (= res!647322 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20058))))

(declare-fun res!647326 () Bool)

(assert (=> start!82912 (=> (not res!647326) (not e!545044))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82912 (= res!647326 (validMask!0 mask!2110))))

(assert (=> start!82912 e!545044))

(assert (=> start!82912 true))

(declare-fun array_inv!22131 (array!59701) Bool)

(assert (=> start!82912 (and (array_inv!22131 _values!1400) e!545043)))

(declare-fun array_inv!22132 (array!59703) Bool)

(assert (=> start!82912 (array_inv!22132 _keys!1686)))

(assert (=> start!82912 tp!66163))

(assert (=> start!82912 tp_is_empty!21819))

(declare-fun b!966874 () Bool)

(declare-fun res!647327 () Bool)

(assert (=> b!966874 (=> (not res!647327) (not e!545044))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34075)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34075)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14186 0))(
  ( (tuple2!14187 (_1!7103 (_ BitVec 64)) (_2!7103 V!34075)) )
))
(declare-datatypes ((List!20062 0))(
  ( (Nil!20059) (Cons!20058 (h!21220 tuple2!14186) (t!28433 List!20062)) )
))
(declare-datatypes ((ListLongMap!12897 0))(
  ( (ListLongMap!12898 (toList!6464 List!20062)) )
))
(declare-fun contains!5515 (ListLongMap!12897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3649 (array!59703 array!59701 (_ BitVec 32) (_ BitVec 32) V!34075 V!34075 (_ BitVec 32) Int) ListLongMap!12897)

(assert (=> b!966874 (= res!647327 (contains!5515 (getCurrentListMap!3649 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28716 _keys!1686) i!803)))))

(declare-fun b!966875 () Bool)

(assert (=> b!966875 (= e!545044 (not true))))

(assert (=> b!966875 (contains!5515 (getCurrentListMap!3649 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28716 _keys!1686) i!803))))

(declare-datatypes ((Unit!32281 0))(
  ( (Unit!32282) )
))
(declare-fun lt!431328 () Unit!32281)

(declare-fun lemmaInListMapFromThenInFromMinusOne!47 (array!59703 array!59701 (_ BitVec 32) (_ BitVec 32) V!34075 V!34075 (_ BitVec 32) (_ BitVec 32) Int) Unit!32281)

(assert (=> b!966875 (= lt!431328 (lemmaInListMapFromThenInFromMinusOne!47 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966876 () Bool)

(declare-fun res!647321 () Bool)

(assert (=> b!966876 (=> (not res!647321) (not e!545044))))

(assert (=> b!966876 (= res!647321 (and (= (size!29195 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29196 _keys!1686) (size!29195 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966877 () Bool)

(declare-fun res!647323 () Bool)

(assert (=> b!966877 (=> (not res!647323) (not e!545044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966877 (= res!647323 (validKeyInArray!0 (select (arr!28716 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34723 () Bool)

(assert (=> mapIsEmpty!34723 mapRes!34723))

(declare-fun b!966878 () Bool)

(declare-fun res!647320 () Bool)

(assert (=> b!966878 (=> (not res!647320) (not e!545044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59703 (_ BitVec 32)) Bool)

(assert (=> b!966878 (= res!647320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966879 () Bool)

(declare-fun res!647325 () Bool)

(assert (=> b!966879 (=> (not res!647325) (not e!545044))))

(assert (=> b!966879 (= res!647325 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29196 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29196 _keys!1686))))))

(declare-fun b!966880 () Bool)

(declare-fun e!545040 () Bool)

(assert (=> b!966880 (= e!545040 tp_is_empty!21819)))

(declare-fun mapNonEmpty!34723 () Bool)

(declare-fun tp!66162 () Bool)

(assert (=> mapNonEmpty!34723 (= mapRes!34723 (and tp!66162 e!545040))))

(declare-fun mapRest!34723 () (Array (_ BitVec 32) ValueCell!10428))

(declare-fun mapKey!34723 () (_ BitVec 32))

(declare-fun mapValue!34723 () ValueCell!10428)

(assert (=> mapNonEmpty!34723 (= (arr!28715 _values!1400) (store mapRest!34723 mapKey!34723 mapValue!34723))))

(assert (= (and start!82912 res!647326) b!966876))

(assert (= (and b!966876 res!647321) b!966878))

(assert (= (and b!966878 res!647320) b!966873))

(assert (= (and b!966873 res!647322) b!966879))

(assert (= (and b!966879 res!647325) b!966877))

(assert (= (and b!966877 res!647323) b!966874))

(assert (= (and b!966874 res!647327) b!966872))

(assert (= (and b!966872 res!647324) b!966875))

(assert (= (and b!966870 condMapEmpty!34723) mapIsEmpty!34723))

(assert (= (and b!966870 (not condMapEmpty!34723)) mapNonEmpty!34723))

(get-info :version)

(assert (= (and mapNonEmpty!34723 ((_ is ValueCellFull!10428) mapValue!34723)) b!966880))

(assert (= (and b!966870 ((_ is ValueCellFull!10428) mapDefault!34723)) b!966871))

(assert (= start!82912 b!966870))

(declare-fun m!895617 () Bool)

(assert (=> b!966873 m!895617))

(declare-fun m!895619 () Bool)

(assert (=> b!966875 m!895619))

(declare-fun m!895621 () Bool)

(assert (=> b!966875 m!895621))

(assert (=> b!966875 m!895619))

(assert (=> b!966875 m!895621))

(declare-fun m!895623 () Bool)

(assert (=> b!966875 m!895623))

(declare-fun m!895625 () Bool)

(assert (=> b!966875 m!895625))

(declare-fun m!895627 () Bool)

(assert (=> b!966874 m!895627))

(assert (=> b!966874 m!895621))

(assert (=> b!966874 m!895627))

(assert (=> b!966874 m!895621))

(declare-fun m!895629 () Bool)

(assert (=> b!966874 m!895629))

(assert (=> b!966877 m!895621))

(assert (=> b!966877 m!895621))

(declare-fun m!895631 () Bool)

(assert (=> b!966877 m!895631))

(declare-fun m!895633 () Bool)

(assert (=> mapNonEmpty!34723 m!895633))

(declare-fun m!895635 () Bool)

(assert (=> start!82912 m!895635))

(declare-fun m!895637 () Bool)

(assert (=> start!82912 m!895637))

(declare-fun m!895639 () Bool)

(assert (=> start!82912 m!895639))

(declare-fun m!895641 () Bool)

(assert (=> b!966878 m!895641))

(check-sat (not mapNonEmpty!34723) (not b!966877) (not b!966873) b_and!30517 tp_is_empty!21819 (not b_next!19011) (not b!966875) (not b!966878) (not b!966874) (not start!82912))
(check-sat b_and!30517 (not b_next!19011))
