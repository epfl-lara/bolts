; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82972 () Bool)

(assert start!82972)

(declare-fun b_free!19071 () Bool)

(declare-fun b_next!19071 () Bool)

(assert (=> start!82972 (= b_free!19071 (not b_next!19071))))

(declare-fun tp!66343 () Bool)

(declare-fun b_and!30577 () Bool)

(assert (=> start!82972 (= tp!66343 b_and!30577)))

(declare-fun b!967861 () Bool)

(declare-datatypes ((array!59809 0))(
  ( (array!59810 (arr!28769 (Array (_ BitVec 32) (_ BitVec 64))) (size!29249 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59809)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun e!545491 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967861 (= e!545491 (not (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29249 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001)) (bvslt (bvsub (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159) (bvsub from!2084 newFrom!159)))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34155 0))(
  ( (V!34156 (val!10990 Int)) )
))
(declare-datatypes ((ValueCell!10458 0))(
  ( (ValueCellFull!10458 (v!13548 V!34155)) (EmptyCell!10458) )
))
(declare-datatypes ((array!59811 0))(
  ( (array!59812 (arr!28770 (Array (_ BitVec 32) ValueCell!10458)) (size!29250 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59811)

(declare-fun minValue!1342 () V!34155)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34155)

(declare-datatypes ((tuple2!14226 0))(
  ( (tuple2!14227 (_1!7123 (_ BitVec 64)) (_2!7123 V!34155)) )
))
(declare-datatypes ((List!20099 0))(
  ( (Nil!20096) (Cons!20095 (h!21257 tuple2!14226) (t!28470 List!20099)) )
))
(declare-datatypes ((ListLongMap!12937 0))(
  ( (ListLongMap!12938 (toList!6484 List!20099)) )
))
(declare-fun contains!5535 (ListLongMap!12937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3669 (array!59809 array!59811 (_ BitVec 32) (_ BitVec 32) V!34155 V!34155 (_ BitVec 32) Int) ListLongMap!12937)

(assert (=> b!967861 (contains!5535 (getCurrentListMap!3669 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28769 _keys!1686) i!803))))

(declare-datatypes ((Unit!32317 0))(
  ( (Unit!32318) )
))
(declare-fun lt!431418 () Unit!32317)

(declare-fun lemmaInListMapFromThenInFromMinusOne!65 (array!59809 array!59811 (_ BitVec 32) (_ BitVec 32) V!34155 V!34155 (_ BitVec 32) (_ BitVec 32) Int) Unit!32317)

(assert (=> b!967861 (= lt!431418 (lemmaInListMapFromThenInFromMinusOne!65 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967862 () Bool)

(declare-fun e!545492 () Bool)

(declare-fun tp_is_empty!21879 () Bool)

(assert (=> b!967862 (= e!545492 tp_is_empty!21879)))

(declare-fun b!967863 () Bool)

(declare-fun res!648042 () Bool)

(assert (=> b!967863 (=> (not res!648042) (not e!545491))))

(assert (=> b!967863 (= res!648042 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29249 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29249 _keys!1686))))))

(declare-fun mapIsEmpty!34813 () Bool)

(declare-fun mapRes!34813 () Bool)

(assert (=> mapIsEmpty!34813 mapRes!34813))

(declare-fun b!967864 () Bool)

(declare-fun res!648041 () Bool)

(assert (=> b!967864 (=> (not res!648041) (not e!545491))))

(assert (=> b!967864 (= res!648041 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967865 () Bool)

(declare-fun res!648045 () Bool)

(assert (=> b!967865 (=> (not res!648045) (not e!545491))))

(declare-datatypes ((List!20100 0))(
  ( (Nil!20097) (Cons!20096 (h!21258 (_ BitVec 64)) (t!28471 List!20100)) )
))
(declare-fun arrayNoDuplicates!0 (array!59809 (_ BitVec 32) List!20100) Bool)

(assert (=> b!967865 (= res!648045 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20097))))

(declare-fun b!967866 () Bool)

(declare-fun e!545493 () Bool)

(declare-fun e!545490 () Bool)

(assert (=> b!967866 (= e!545493 (and e!545490 mapRes!34813))))

(declare-fun condMapEmpty!34813 () Bool)

(declare-fun mapDefault!34813 () ValueCell!10458)

(assert (=> b!967866 (= condMapEmpty!34813 (= (arr!28770 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10458)) mapDefault!34813)))))

(declare-fun b!967860 () Bool)

(declare-fun res!648040 () Bool)

(assert (=> b!967860 (=> (not res!648040) (not e!545491))))

(assert (=> b!967860 (= res!648040 (contains!5535 (getCurrentListMap!3669 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28769 _keys!1686) i!803)))))

(declare-fun res!648044 () Bool)

(assert (=> start!82972 (=> (not res!648044) (not e!545491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82972 (= res!648044 (validMask!0 mask!2110))))

(assert (=> start!82972 e!545491))

(assert (=> start!82972 true))

(declare-fun array_inv!22167 (array!59811) Bool)

(assert (=> start!82972 (and (array_inv!22167 _values!1400) e!545493)))

(declare-fun array_inv!22168 (array!59809) Bool)

(assert (=> start!82972 (array_inv!22168 _keys!1686)))

(assert (=> start!82972 tp!66343))

(assert (=> start!82972 tp_is_empty!21879))

(declare-fun b!967867 () Bool)

(declare-fun res!648043 () Bool)

(assert (=> b!967867 (=> (not res!648043) (not e!545491))))

(assert (=> b!967867 (= res!648043 (and (= (size!29250 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29249 _keys!1686) (size!29250 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967868 () Bool)

(declare-fun res!648046 () Bool)

(assert (=> b!967868 (=> (not res!648046) (not e!545491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967868 (= res!648046 (validKeyInArray!0 (select (arr!28769 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34813 () Bool)

(declare-fun tp!66342 () Bool)

(assert (=> mapNonEmpty!34813 (= mapRes!34813 (and tp!66342 e!545492))))

(declare-fun mapKey!34813 () (_ BitVec 32))

(declare-fun mapRest!34813 () (Array (_ BitVec 32) ValueCell!10458))

(declare-fun mapValue!34813 () ValueCell!10458)

(assert (=> mapNonEmpty!34813 (= (arr!28770 _values!1400) (store mapRest!34813 mapKey!34813 mapValue!34813))))

(declare-fun b!967869 () Bool)

(declare-fun res!648047 () Bool)

(assert (=> b!967869 (=> (not res!648047) (not e!545491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59809 (_ BitVec 32)) Bool)

(assert (=> b!967869 (= res!648047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967870 () Bool)

(assert (=> b!967870 (= e!545490 tp_is_empty!21879)))

(assert (= (and start!82972 res!648044) b!967867))

(assert (= (and b!967867 res!648043) b!967869))

(assert (= (and b!967869 res!648047) b!967865))

(assert (= (and b!967865 res!648045) b!967863))

(assert (= (and b!967863 res!648042) b!967868))

(assert (= (and b!967868 res!648046) b!967860))

(assert (= (and b!967860 res!648040) b!967864))

(assert (= (and b!967864 res!648041) b!967861))

(assert (= (and b!967866 condMapEmpty!34813) mapIsEmpty!34813))

(assert (= (and b!967866 (not condMapEmpty!34813)) mapNonEmpty!34813))

(get-info :version)

(assert (= (and mapNonEmpty!34813 ((_ is ValueCellFull!10458) mapValue!34813)) b!967862))

(assert (= (and b!967866 ((_ is ValueCellFull!10458) mapDefault!34813)) b!967870))

(assert (= start!82972 b!967866))

(declare-fun m!896397 () Bool)

(assert (=> mapNonEmpty!34813 m!896397))

(declare-fun m!896399 () Bool)

(assert (=> b!967865 m!896399))

(declare-fun m!896401 () Bool)

(assert (=> b!967869 m!896401))

(declare-fun m!896403 () Bool)

(assert (=> b!967861 m!896403))

(declare-fun m!896405 () Bool)

(assert (=> b!967861 m!896405))

(assert (=> b!967861 m!896403))

(assert (=> b!967861 m!896405))

(declare-fun m!896407 () Bool)

(assert (=> b!967861 m!896407))

(declare-fun m!896409 () Bool)

(assert (=> b!967861 m!896409))

(declare-fun m!896411 () Bool)

(assert (=> b!967860 m!896411))

(assert (=> b!967860 m!896405))

(assert (=> b!967860 m!896411))

(assert (=> b!967860 m!896405))

(declare-fun m!896413 () Bool)

(assert (=> b!967860 m!896413))

(assert (=> b!967868 m!896405))

(assert (=> b!967868 m!896405))

(declare-fun m!896415 () Bool)

(assert (=> b!967868 m!896415))

(declare-fun m!896417 () Bool)

(assert (=> start!82972 m!896417))

(declare-fun m!896419 () Bool)

(assert (=> start!82972 m!896419))

(declare-fun m!896421 () Bool)

(assert (=> start!82972 m!896421))

(check-sat (not b!967868) b_and!30577 (not b!967861) (not b!967865) (not b_next!19071) (not start!82972) (not b!967869) (not b!967860) (not mapNonEmpty!34813) tp_is_empty!21879)
(check-sat b_and!30577 (not b_next!19071))
