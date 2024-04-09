; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110646 () Bool)

(assert start!110646)

(declare-fun b_free!29445 () Bool)

(declare-fun b_next!29445 () Bool)

(assert (=> start!110646 (= b_free!29445 (not b_next!29445))))

(declare-fun tp!103657 () Bool)

(declare-fun b_and!47663 () Bool)

(assert (=> start!110646 (= tp!103657 b_and!47663)))

(declare-fun b!1308686 () Bool)

(declare-fun res!868854 () Bool)

(declare-fun e!746674 () Bool)

(assert (=> b!1308686 (=> (not res!868854) (not e!746674))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308686 (= res!868854 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308687 () Bool)

(declare-fun res!868855 () Bool)

(assert (=> b!1308687 (=> (not res!868855) (not e!746674))))

(declare-datatypes ((array!87315 0))(
  ( (array!87316 (arr!42133 (Array (_ BitVec 32) (_ BitVec 64))) (size!42684 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87315)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308687 (= res!868855 (not (= (select (arr!42133 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1308688 () Bool)

(declare-fun res!868851 () Bool)

(assert (=> b!1308688 (=> (not res!868851) (not e!746674))))

(declare-datatypes ((List!30079 0))(
  ( (Nil!30076) (Cons!30075 (h!31284 (_ BitVec 64)) (t!43692 List!30079)) )
))
(declare-fun arrayNoDuplicates!0 (array!87315 (_ BitVec 32) List!30079) Bool)

(assert (=> b!1308688 (= res!868851 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30076))))

(declare-fun b!1308689 () Bool)

(declare-fun res!868850 () Bool)

(assert (=> b!1308689 (=> (not res!868850) (not e!746674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308689 (= res!868850 (validKeyInArray!0 (select (arr!42133 _keys!1628) from!2020)))))

(declare-fun res!868848 () Bool)

(assert (=> start!110646 (=> (not res!868848) (not e!746674))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110646 (= res!868848 (validMask!0 mask!2040))))

(assert (=> start!110646 e!746674))

(assert (=> start!110646 tp!103657))

(declare-fun array_inv!31847 (array!87315) Bool)

(assert (=> start!110646 (array_inv!31847 _keys!1628)))

(assert (=> start!110646 true))

(declare-fun tp_is_empty!35175 () Bool)

(assert (=> start!110646 tp_is_empty!35175))

(declare-datatypes ((V!52003 0))(
  ( (V!52004 (val!17662 Int)) )
))
(declare-datatypes ((ValueCell!16689 0))(
  ( (ValueCellFull!16689 (v!20287 V!52003)) (EmptyCell!16689) )
))
(declare-datatypes ((array!87317 0))(
  ( (array!87318 (arr!42134 (Array (_ BitVec 32) ValueCell!16689)) (size!42685 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87317)

(declare-fun e!746675 () Bool)

(declare-fun array_inv!31848 (array!87317) Bool)

(assert (=> start!110646 (and (array_inv!31848 _values!1354) e!746675)))

(declare-fun b!1308690 () Bool)

(declare-fun res!868852 () Bool)

(assert (=> b!1308690 (=> (not res!868852) (not e!746674))))

(assert (=> b!1308690 (= res!868852 (and (= (size!42685 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42684 _keys!1628) (size!42685 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54391 () Bool)

(declare-fun mapRes!54391 () Bool)

(declare-fun tp!103658 () Bool)

(declare-fun e!746672 () Bool)

(assert (=> mapNonEmpty!54391 (= mapRes!54391 (and tp!103658 e!746672))))

(declare-fun mapValue!54391 () ValueCell!16689)

(declare-fun mapRest!54391 () (Array (_ BitVec 32) ValueCell!16689))

(declare-fun mapKey!54391 () (_ BitVec 32))

(assert (=> mapNonEmpty!54391 (= (arr!42134 _values!1354) (store mapRest!54391 mapKey!54391 mapValue!54391))))

(declare-fun b!1308691 () Bool)

(assert (=> b!1308691 (= e!746672 tp_is_empty!35175)))

(declare-fun b!1308692 () Bool)

(declare-fun res!868849 () Bool)

(assert (=> b!1308692 (=> (not res!868849) (not e!746674))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52003)

(declare-fun zeroValue!1296 () V!52003)

(declare-datatypes ((tuple2!22906 0))(
  ( (tuple2!22907 (_1!11463 (_ BitVec 64)) (_2!11463 V!52003)) )
))
(declare-datatypes ((List!30080 0))(
  ( (Nil!30077) (Cons!30076 (h!31285 tuple2!22906) (t!43693 List!30080)) )
))
(declare-datatypes ((ListLongMap!20575 0))(
  ( (ListLongMap!20576 (toList!10303 List!30080)) )
))
(declare-fun contains!8389 (ListLongMap!20575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5259 (array!87315 array!87317 (_ BitVec 32) (_ BitVec 32) V!52003 V!52003 (_ BitVec 32) Int) ListLongMap!20575)

(assert (=> b!1308692 (= res!868849 (contains!8389 (getCurrentListMap!5259 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54391 () Bool)

(assert (=> mapIsEmpty!54391 mapRes!54391))

(declare-fun b!1308693 () Bool)

(declare-fun e!746673 () Bool)

(assert (=> b!1308693 (= e!746675 (and e!746673 mapRes!54391))))

(declare-fun condMapEmpty!54391 () Bool)

(declare-fun mapDefault!54391 () ValueCell!16689)

(assert (=> b!1308693 (= condMapEmpty!54391 (= (arr!42134 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16689)) mapDefault!54391)))))

(declare-fun b!1308694 () Bool)

(assert (=> b!1308694 (= e!746673 tp_is_empty!35175)))

(declare-fun b!1308695 () Bool)

(declare-fun res!868853 () Bool)

(assert (=> b!1308695 (=> (not res!868853) (not e!746674))))

(assert (=> b!1308695 (= res!868853 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42684 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308696 () Bool)

(declare-fun res!868856 () Bool)

(assert (=> b!1308696 (=> (not res!868856) (not e!746674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87315 (_ BitVec 32)) Bool)

(assert (=> b!1308696 (= res!868856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308697 () Bool)

(assert (=> b!1308697 (= e!746674 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(assert (=> b!1308697 (contains!8389 (getCurrentListMap!5259 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43252 0))(
  ( (Unit!43253) )
))
(declare-fun lt!585118 () Unit!43252)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!16 (array!87315 array!87317 (_ BitVec 32) (_ BitVec 32) V!52003 V!52003 (_ BitVec 64) (_ BitVec 32) Int) Unit!43252)

(assert (=> b!1308697 (= lt!585118 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!16 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(assert (= (and start!110646 res!868848) b!1308690))

(assert (= (and b!1308690 res!868852) b!1308696))

(assert (= (and b!1308696 res!868856) b!1308688))

(assert (= (and b!1308688 res!868851) b!1308695))

(assert (= (and b!1308695 res!868853) b!1308692))

(assert (= (and b!1308692 res!868849) b!1308687))

(assert (= (and b!1308687 res!868855) b!1308689))

(assert (= (and b!1308689 res!868850) b!1308686))

(assert (= (and b!1308686 res!868854) b!1308697))

(assert (= (and b!1308693 condMapEmpty!54391) mapIsEmpty!54391))

(assert (= (and b!1308693 (not condMapEmpty!54391)) mapNonEmpty!54391))

(get-info :version)

(assert (= (and mapNonEmpty!54391 ((_ is ValueCellFull!16689) mapValue!54391)) b!1308691))

(assert (= (and b!1308693 ((_ is ValueCellFull!16689) mapDefault!54391)) b!1308694))

(assert (= start!110646 b!1308693))

(declare-fun m!1199015 () Bool)

(assert (=> start!110646 m!1199015))

(declare-fun m!1199017 () Bool)

(assert (=> start!110646 m!1199017))

(declare-fun m!1199019 () Bool)

(assert (=> start!110646 m!1199019))

(declare-fun m!1199021 () Bool)

(assert (=> mapNonEmpty!54391 m!1199021))

(declare-fun m!1199023 () Bool)

(assert (=> b!1308692 m!1199023))

(assert (=> b!1308692 m!1199023))

(declare-fun m!1199025 () Bool)

(assert (=> b!1308692 m!1199025))

(declare-fun m!1199027 () Bool)

(assert (=> b!1308687 m!1199027))

(declare-fun m!1199029 () Bool)

(assert (=> b!1308696 m!1199029))

(assert (=> b!1308689 m!1199027))

(assert (=> b!1308689 m!1199027))

(declare-fun m!1199031 () Bool)

(assert (=> b!1308689 m!1199031))

(declare-fun m!1199033 () Bool)

(assert (=> b!1308697 m!1199033))

(assert (=> b!1308697 m!1199033))

(declare-fun m!1199035 () Bool)

(assert (=> b!1308697 m!1199035))

(declare-fun m!1199037 () Bool)

(assert (=> b!1308697 m!1199037))

(declare-fun m!1199039 () Bool)

(assert (=> b!1308688 m!1199039))

(check-sat b_and!47663 (not start!110646) (not b!1308689) (not b!1308688) tp_is_empty!35175 (not b!1308692) (not b_next!29445) (not mapNonEmpty!54391) (not b!1308697) (not b!1308696))
(check-sat b_and!47663 (not b_next!29445))
